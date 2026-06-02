// ─────────────────────────────────────────────────────────────
// Code.gs — Algo-Rythmn Contact Graph
// Option 4: Apps Script opens a modal iframe → Vercel graph page
// ─────────────────────────────────────────────────────────────

// ── CONFIG ───────────────────────────────────────────────────
// Replace with your deployed Vercel URL after deployment
var GRAPH_URL = "https://markcode223.github.io/algo-rythmn-graph/graph.html";

// Exact sector header rows in the sheet — used to skip non-company rows
var SECTOR_HEADERS = [
  "GOVERNMENT", "FUNDING", "ACADEMIA", "FINANCE", "INSURANCE",
  "AGRICULTURE", "AG WARM LEAD GENERATORS", "DRONES",
  "HOSPITALITY", "HOCKEY", "ENERGY", "MISC", "BRAZIL", "DEFUNCT",
  "GREEN IS THEIR COURT RED IS OUR COURT"
];

// Column positions (1-indexed)
var COL = {
  COMPANY:      1,
  PRIORITY:     2,
  NAMES:        3,
  ROLES:        4,
  STATUS:       5,
  PRODUCT_TEAM: 6,
  EMAIL_CHAIN:  7,
  MEETING_RECS: 8,
  NOTES:        9,
  DEMOS:        10,
  SOURCE:       11,
  INFO:         12,
  SINCE:        13,
  CTYPE:        14
};

// ── Menu ─────────────────────────────────────────────────────

function onOpen() {
  SpreadsheetApp.getUi()
    .createMenu("📊 Contact Graph")
    .addItem("Open graph for selected row", "openGraphForSelectedRow")
    .addSeparator()
    .addItem("🔄 Sync sheet to database", "syncSheetToDatabase")
    .addItem("🔄 Sync selected row only", "syncSelectedRow")
    .addToUi();
}

// ── Graph trigger ─────────────────────────────────────────────

function openGraphForSelectedRow() {
  const sheet       = SpreadsheetApp.getActiveSpreadsheet().getActiveSheet();
  const row         = sheet.getActiveRange().getRow();
  const companyName = sheet.getRange(row, COL.COMPANY).getValue().toString().trim();

  if (!companyName) {
    SpreadsheetApp.getUi().alert(
      "No company found.\n\nPlease click any cell in a row that has a company name in column A."
    );
    return;
  }

  // Use the explicit sector header list — no more guessing from name format
  if (isSectorHeader(companyName)) {
    SpreadsheetApp.getUi().alert(
      "\"" + companyName + "\" is a section header, not a company.\n\n" +
      "Please click a row that has a company name (e.g. Alberta Government, CAAIN, AFSC)."
    );
    return;
  }

  // Open the Vercel-hosted graph page in a modal iframe
  const encodedName = encodeURIComponent(companyName);
  const iframeUrl   = GRAPH_URL + "?company=" + encodedName;

  const html = HtmlService
    .createHtmlOutput(
      "<iframe src='" + iframeUrl + "' " +
      "style='width:100%;height:680px;border:none;display:block;' " +
      "allow='same-origin'></iframe>"
    )
    .setWidth(1200)
    .setHeight(720);

  SpreadsheetApp.getUi().showModalDialog(html, companyName + " · Relationship Graph");
}

function isSectorHeader(name) {
  return SECTOR_HEADERS.indexOf(name.toUpperCase().trim()) !== -1;
}

// ── Sync: full sheet ──────────────────────────────────────────

function syncSheetToDatabase() {
  const ui = SpreadsheetApp.getUi();
  const confirm = ui.alert(
    "Sync entire sheet to database?",
    "This will update all companies, contacts, meetings and resources.\nIt may take 1–2 minutes.",
    ui.ButtonSet.OK_CANCEL
  );
  if (confirm !== ui.Button.OK) return;

  try {
    const conn   = getConnection();
    const sheet  = SpreadsheetApp.getActiveSpreadsheet().getActiveSheet();
    const rows   = sheet.getDataRange().getValues();
    const result = processRows(rows, conn, -1);
    conn.close();
    ui.alert(
      "Sync complete!\n\n" +
      "✅ Companies inserted: " + result.inserted + "\n" +
      "✅ Companies updated: "  + result.updated  + "\n" +
      "✅ Contacts synced: "    + result.contacts  + "\n" +
      "✅ Meetings synced: "    + result.meetings  + "\n" +
      "✅ Resources synced: "   + result.resources + "\n" +
      (result.errors > 0 ? "⚠️ Rows with errors: " + result.errors : "")
    );
  } catch(err) {
    ui.alert("Sync failed: " + err.message);
  }
}

// ── Sync: selected row only ───────────────────────────────────

function syncSelectedRow() {
  const ui    = SpreadsheetApp.getUi();
  const sheet = SpreadsheetApp.getActiveSpreadsheet().getActiveSheet();
  const row   = sheet.getActiveRange().getRow();

  if (row <= 1) {
    ui.alert("Please select a company row first.");
    return;
  }

  const companyName = sheet.getRange(row, COL.COMPANY).getValue().toString().trim();
  if (isSectorHeader(companyName)) {
    ui.alert("\"" + companyName + "\" is a section header. Please select a company row.");
    return;
  }

  try {
    const conn   = getConnection();
    const rows   = sheet.getDataRange().getValues();
    const result = processRows(rows, conn, row);
    conn.close();
    ui.alert(
      "Row synced!\n\n" +
      "✅ Company: "   + (result.inserted ? "inserted" : "updated") + "\n" +
      "✅ Contacts: "  + result.contacts  + "\n" +
      "✅ Meetings: "  + result.meetings  + "\n" +
      "✅ Resources: " + result.resources
    );
  } catch(err) {
    ui.alert("Sync failed: " + err.message);
  }
}

// ── Core row processor ────────────────────────────────────────

function processRows(rows, conn, targetRow) {
  var result = { inserted: 0, updated: 0, contacts: 0, meetings: 0, resources: 0, errors: 0 };
  var currentSector    = "Unknown";
  var currentCompanyId = null;

  for (var i = 1; i < rows.length; i++) {
    var row        = rows[i];
    var rowNum     = i + 1;
    var companyRaw = (row[COL.COMPANY - 1] || "").toString().trim();
    var namesRaw   = (row[COL.NAMES   - 1] || "").toString().trim();

    // Track sector headers
    if (isSectorHeader(companyRaw)) {
      currentSector = toTitleCase(companyRaw);
      continue;
    }

    // Skip blank rows
    if (!companyRaw && !namesRaw) continue;

    try {
      // ── Company row ────────────────────────────────────────
      if (companyRaw) {
        if (targetRow > 0 && rowNum !== targetRow) {
          currentCompanyId = getCompanyIdByName(conn, companyRaw);
          continue;
        }

        var priority    = normalizePriority(row[COL.PRIORITY     - 1]);
        var status      = normalizeStatus  (row[COL.STATUS       - 1]);
        var ctype       = normalizeCtype   (row[COL.CTYPE        - 1]);
        var notes       = [
          (row[COL.STATUS - 1] || "").toString().trim(),
          (row[COL.NOTES  - 1] || "").toString().trim(),
          (row[COL.DEMOS  - 1] || "").toString().trim()
        ].filter(Boolean).join("\n\n");
        var productTeam = (row[COL.PRODUCT_TEAM - 1] || "").toString().trim();
        var since       = parseDateStr(row[COL.SINCE - 1]);
        var existingId  = getCompanyIdByName(conn, companyRaw);

        if (!existingId) {
          currentCompanyId = insertCompany(conn, companyRaw, currentSector, priority, status, ctype, notes, productTeam, since);
          result.inserted++;
        } else {
          currentCompanyId = existingId;
          updateCompany(conn, existingId, companyRaw, currentSector, priority, status, ctype, notes, productTeam, since);
          result.updated++;
        }

        // Meeting
        var meetingRecs = (row[COL.MEETING_RECS - 1] || "").toString().trim();
        if (meetingRecs) {
          var meeting = parseMeeting(meetingRecs, row[COL.DEMOS - 1]);
          if (!meetingExists(conn, currentCompanyId, meeting.title)) {
            insertMeeting(conn, currentCompanyId, meeting.title, meeting.url, meeting.notes);
            result.meetings++;
          }
        }

        // Resources
        var allText = [
          row[COL.PRODUCT_TEAM - 1],
          row[COL.NOTES        - 1],
          row[COL.DEMOS        - 1],
          row[COL.INFO         - 1]
        ].join(" ");
        extractUrls(allText).forEach(function(u) {
          if (!resourceExists(conn, currentCompanyId, u.url)) {
            insertResource(conn, currentCompanyId, u.label, classifyResource(u.label, u.url), u.url);
            result.resources++;
          }
        });
      }

      // ── Contact row ────────────────────────────────────────
      if (namesRaw && currentCompanyId) {
        var names   = namesRaw.split(/\n|;/).map(function(n){ return n.trim(); }).filter(Boolean);
        var roles   = (row[COL.ROLES - 1] || "").toString().split(/\n|;/).map(function(r){ return r.trim(); });
        var email   = (row[COL.INFO  - 1] || "").toString().trim();
        var cnotes  = (row[COL.NOTES - 1] || "").toString().trim();
        var cstatus = normalizeStatus(row[COL.STATUS - 1]);
        var source  = (row[COL.SOURCE - 1] || "").toString().trim();

        names.forEach(function(name, j) {
          var role = roles[j] || "";
          if (!contactExists(conn, currentCompanyId, name)) {
            var contactId = insertContact(conn, currentCompanyId, name, role, j === 0 ? email : "", cnotes, cstatus);
            result.contacts++;
            // Link referral to this specific contact
            if (source && contactId) {
              insertReferral(conn, currentCompanyId, contactId, source);
            }
          }
        });
      }

    } catch(rowErr) {
      Logger.log("Error on row " + rowNum + ": " + rowErr.message);
      result.errors++;
    }
  }

  return result;
}

// ── DB connection ─────────────────────────────────────────────

function getConnection() {
  var props    = PropertiesService.getScriptProperties();
  var host     = props.getProperty("DB_HOST");
  var user     = props.getProperty("DB_USER");
  var password = props.getProperty("DB_PASSWORD");
  return Jdbc.getConnection("jdbc:postgresql://" + host + ":5432/postgres", user, password);
}

// ── DB helpers ────────────────────────────────────────────────

function getCompanyIdByName(conn, name) {
  var stmt = conn.prepareStatement(
    "SELECT id FROM companies WHERE LOWER(name) = LOWER(?) LIMIT 1"
  );
  stmt.setString(1, name);
  var rs = stmt.executeQuery();
  return rs.next() ? rs.getString("id") : null;
}

function insertCompany(conn, name, sector, priority, status, ctype, notes, productTeam, since) {
  var id   = Utilities.getUuid();
  var stmt = conn.prepareStatement(
    "INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) " +
    "VALUES (?, ?, ?, ?::priority_level, ?::engagement_status, ?::contact_type, ?, ?, ?::date)"
  );
  stmt.setString(1, id);
  stmt.setString(2, name);
  stmt.setString(3, sector);
  stmt.setString(4, priority);
  stmt.setString(5, status);
  stmt.setString(6, ctype);
  stmt.setString(7, notes);
  stmt.setString(8, productTeam);
  stmt.setString(9, since);
  stmt.executeUpdate();
  return id;
}

function updateCompany(conn, id, name, sector, priority, status, ctype, notes, productTeam, since) {
  var stmt = conn.prepareStatement(
    "UPDATE companies SET name=?, sector=?, priority=?::priority_level, " +
    "status=?::engagement_status, contact_type=?::contact_type, " +
    "notes=?, from_product_team=?, since=?::date, updated_at=now() " +
    "WHERE id=?"
  );
  stmt.setString(1, name);
  stmt.setString(2, sector);
  stmt.setString(3, priority);
  stmt.setString(4, status);
  stmt.setString(5, ctype);
  stmt.setString(6, notes);
  stmt.setString(7, productTeam);
  stmt.setString(8, since);
  stmt.setString(9, id);
  stmt.executeUpdate();
}

function contactExists(conn, companyId, name) {
  var stmt = conn.prepareStatement(
    "SELECT id FROM contacts WHERE company_id=? AND LOWER(full_name)=LOWER(?)"
  );
  stmt.setString(1, companyId);
  stmt.setString(2, name);
  return stmt.executeQuery().next();
}

function insertContact(conn, companyId, name, role, email, notes, status) {
  var id   = Utilities.getUuid();
  var stmt = conn.prepareStatement(
    "INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) " +
    "VALUES (?, ?, ?, ?, ?, ?, ?::engagement_status)"
  );
  stmt.setString(1, id);
  stmt.setString(2, companyId);
  stmt.setString(3, name);
  stmt.setString(4, role);
  stmt.setString(5, email);
  stmt.setString(6, notes);
  stmt.setString(7, status);
  stmt.executeUpdate();
  return id;
}

function meetingExists(conn, companyId, title) {
  var stmt = conn.prepareStatement(
    "SELECT id FROM meetings WHERE company_id=? AND LOWER(title)=LOWER(?)"
  );
  stmt.setString(1, companyId);
  stmt.setString(2, title || "");
  return stmt.executeQuery().next();
}

function insertMeeting(conn, companyId, title, url, notes) {
  var stmt = conn.prepareStatement(
    "INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES (?,?,?,?,?)"
  );
  stmt.setString(1, Utilities.getUuid());
  stmt.setString(2, companyId);
  stmt.setString(3, title || "Meeting");
  stmt.setString(4, url   || "");
  stmt.setString(5, notes || "");
  stmt.executeUpdate();
}

function resourceExists(conn, companyId, url) {
  var stmt = conn.prepareStatement(
    "SELECT id FROM resources WHERE company_id=? AND url=?"
  );
  stmt.setString(1, companyId);
  stmt.setString(2, url);
  return stmt.executeQuery().next();
}

function insertResource(conn, companyId, label, rtype, url) {
  var stmt = conn.prepareStatement(
    "INSERT INTO resources (id, company_id, label, resource_type, url) VALUES (?,?,?,?::resource_type,?)"
  );
  stmt.setString(1, Utilities.getUuid());
  stmt.setString(2, companyId);
  stmt.setString(3, label || url);
  stmt.setString(4, rtype || "other");
  stmt.setString(5, url);
  stmt.executeUpdate();
}

function referralExists(conn, companyId, source) {
  var stmt = conn.prepareStatement(
    "SELECT id FROM relationships WHERE to_company_id=? AND note=?"
  );
  stmt.setString(1, companyId);
  stmt.setString(2, "Source: " + source);
  return stmt.executeQuery().next();
}

function insertReferral(conn, companyId, contactId, source) {
  var stmt = conn.prepareStatement(
    "INSERT INTO relationships (id, from_contact_id, to_company_id, relationship_type, note) " +
    "VALUES (?,?,?,'introduced_by',?)"
  );
  stmt.setString(1, Utilities.getUuid());
  stmt.setString(2, contactId);
  stmt.setString(3, companyId);
  stmt.setString(4, "Source: " + source);
  stmt.executeUpdate();
}

// ── Normalizers ───────────────────────────────────────────────

function normalizePriority(raw) {
  if (!raw) return null;
  var r = raw.toString().toUpperCase().trim();
  if (r === "HIGHEST" || r === "HI") return "highest";
  if (r === "HIGH")   return "high";
  if (r === "MEDIUM") return "medium";
  if (r === "LOW")    return "low";
  if (r === "ZZZZ" || r === "ZZZZZ") return "dead";
  if (r.indexOf("?") !== -1) return "on_hold";
  return null;
}

function normalizeStatus(raw) {
  if (!raw) return null;
  var r = raw.toString().toLowerCase();
  if (/not interested|declined|wrong dept|no response|pushed us off|pushed off/.test(r)) return "declined";
  if (/on hold|wait|hold/.test(r))                                                        return "on_hold";
  if (/ongoing|met|meeting|sent|talking|checking/.test(r))                                return "active";
  if (/finished|signed|connected/.test(r))                                                return "in_progress";
  return null;
}

function normalizeCtype(raw) {
  if (!raw) return null;
  var r = raw.toString().toLowerCase();
  if (r.indexOf("both") !== -1)      return "both";
  if (r.indexOf("investor") !== -1 && r.indexOf("connector") !== -1) return "both";
  if (r.indexOf("investor") !== -1)  return "investor";
  if (r.indexOf("connector") !== -1) return "connector";
  if (r.indexOf("end user") !== -1)  return "end_user";
  return null;
}

function parseDateStr(raw) {
  if (!raw) return null;
  var s = raw.toString().trim();
  var months = { jan:0,feb:1,mar:2,apr:3,may:4,jun:5,jul:6,aug:7,sep:8,oct:9,nov:10,dec:11 };
  var m = s.match(/([a-z]{3})\s+(\d{4})/i);
  if (m) {
    var d = new Date(parseInt(m[2]), months[m[1].toLowerCase()] || 0, 1);
    return Utilities.formatDate(d, "UTC", "yyyy-MM-dd");
  }
  return null;
}

function parseMeeting(text, demosRaw) {
  var urls  = text.match(/(https?:\/\/[^\s\)"']+)/g) || [];
  var title = text.split("\n")[0].trim().substring(0, 200) || "Meeting";
  return { title: title, url: urls[0] || "", notes: (demosRaw || "").toString().trim() };
}

function extractUrls(text) {
  if (!text) return [];
  var pattern = /(https?:\/\/[^\s\)"']+)/g;
  var results = [], match;
  while ((match = pattern.exec(text)) !== null) {
    var url   = match[1];
    var idx   = text.indexOf(url);
    var label = text.substring(Math.max(0, idx - 40), idx).trim().split("\n").pop().trim() || url;
    results.push({ label: label.substring(0, 120), url: url });
  }
  return results;
}

function classifyResource(label, url) {
  var s = (label + url).toLowerCase();
  if (s.indexOf("deck")     !== -1) return "deck";
  if (s.indexOf("demo")     !== -1 || s.indexOf("project") !== -1) return "demo";
  if (s.indexOf("proposal") !== -1) return "proposal";
  if (s.indexOf("app")      !== -1) return "web_app";
  if (s.indexOf("doc")      !== -1) return "document";
  return "other";
}

function toTitleCase(str) {
  return str.charAt(0).toUpperCase() + str.slice(1).toLowerCase();
}
