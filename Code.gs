// ═══════════════════════════════════════════════════════════════
// Code.gs — Algo-Rythmn Contact Graph (No-Database rebuild)
// Apps Script reads the sheet directly — real-time, hyperlinks
// preserved, no sync needed.
// ═══════════════════════════════════════════════════════════════

// ── CONFIG ──────────────────────────────────────────────────────
// Replace with your GitHub Pages URL after uploading graph.html
var GRAPH_URL = "https://enfyxksujosbwgguicwy.supabase.co/algo-rythmn-graph/graph.html";

// Column positions (1-indexed) — matches your sheet exactly
var COL = {
  COMPANY:      1,   // A
  PRIORITY:     2,   // B
  NAMES:        3,   // C
  ROLES:        4,   // D
  STATUS:       5,   // E
  PRODUCT_TEAM: 6,   // F
  EMAIL_CHAIN:  7,   // G  ← often a hyperlink
  MEETING_RECS: 8,   // H  ← often a hyperlink
  NOTES:        9,   // I  ← often a hyperlink
  DEMOS:        10,  // J
  SOURCE:       11,  // K
  INFO:         12,  // L
  SINCE:        13,  // M
  CTYPE:        14   // N
};

// Exact sector header rows — explicit list, no guessing
var SECTOR_HEADERS = [
  "GOVERNMENT", "FUNDING", "ACADEMIA", "FINANCE", "INSURANCE",
  "AGRICULTURE", "AG WARM LEAD GENERATORS", "DRONES",
  "HOSPITALITY", "HOCKEY", "ENERGY", "MISC", "BRAZIL", "DEFUNCT",
  "GREEN IS THEIR COURT RED IS OUR COURT"
];

// ── Menu ────────────────────────────────────────────────────────

function onOpen() {
  SpreadsheetApp.getUi()
    .createMenu("📊 Contact Graph")
    .addItem("Open graph for selected row", "openGraphForSelectedRow")
    .addToUi();
}

// ── Main entry point ────────────────────────────────────────────

function openGraphForSelectedRow() {
  var sheet = SpreadsheetApp.getActiveSpreadsheet().getActiveSheet();
  var row   = sheet.getActiveRange().getRow();

  // Skip header
  if (row <= 1) {
    SpreadsheetApp.getUi().alert("Please click a company row first.");
    return;
  }

  // Read the company name for the selected row
  var companyName = sheet.getRange(row, COL.COMPANY).getValue().toString().trim();

  // If column A is empty, scan upward to find the company this contact belongs to
  if (!companyName) {
    companyName = findCompanyAbove(sheet, row);
  }

  if (!companyName) {
    SpreadsheetApp.getUi().alert("No company found. Please click a company or contact row.");
    return;
  }

  if (isSectorHeader(companyName)) {
    SpreadsheetApp.getUi().alert(
      '"' + companyName + '" is a section header.\n\n' +
      'Please click a company row (e.g. Alberta Government, CAAIN, Olds College).'
    );
    return;
  }

  // Read the full company block from the sheet
  var data = readCompanyBlock(sheet, companyName);
  if (!data) {
    SpreadsheetApp.getUi().alert("Could not read data for: " + companyName);
    return;
  }

  // Pass data to graph.html via URL param (JSON encoded)
  var encoded = encodeURIComponent(JSON.stringify(data));
  var iframeUrl = GRAPH_URL + "?data=" + encoded;

  var html = HtmlService
    .createHtmlOutput(
      '<iframe src="' + iframeUrl + '" ' +
      'style="width:100%;height:680px;border:none;display:block;" ' +
      'allow="same-origin"></iframe>'
    )
    .setWidth(1200)
    .setHeight(720);

  SpreadsheetApp.getUi().showModalDialog(html, companyName + " · Relationship Graph");
}

// ── Read company block from sheet ────────────────────────────────
// Finds all rows belonging to a company and builds the full data object

function readCompanyBlock(sheet, targetCompany) {
  var allValues = sheet.getDataRange().getValues();
  var numRows   = allValues.length;

  var result = null;
  var currentSector  = "Unknown";
  var inTargetBlock  = false;
  var targetRowStart = -1;

  for (var i = 1; i < numRows; i++) {
    var rowNum     = i + 1;
    var companyRaw = (allValues[i][COL.COMPANY - 1] || "").toString().trim();
    var namesRaw   = (allValues[i][COL.NAMES   - 1] || "").toString().trim();

    // Track sector
    if (isSectorHeader(companyRaw)) {
      currentSector = toTitleCase(companyRaw);
      inTargetBlock = false;
      continue;
    }

    // Skip blank rows
    if (!companyRaw && !namesRaw) continue;

    // New company row
    if (companyRaw) {
      // If we were in the target block and hit a new company, stop
      if (inTargetBlock) break;

      if (companyRaw.toLowerCase() === targetCompany.toLowerCase()) {
        inTargetBlock  = true;
        targetRowStart = rowNum;

        // Read company-level data including hyperlinks
        if (companyRaw.toLowerCase() === targetCompany.toLowerCase()) {
        inTargetBlock  = true;
        targetRowStart = rowNum;

        // Read company-level data
        result = {
          company: {
            name:             companyRaw,
            sector:           currentSector,
            priority:         (allValues[i][COL.PRIORITY     - 1] || "").toString().trim(),
            status:           (allValues[i][COL.STATUS       - 1] || "").toString().trim(),
            contact_type:     (allValues[i][COL.CTYPE        - 1] || "").toString().trim(),
            since:            (allValues[i][COL.SINCE        - 1] || "").toString().trim(),
            notes:            (allValues[i][COL.NOTES        - 1] || "").toString().trim(),
            demos:            (allValues[i][COL.DEMOS        - 1] || "").toString().trim(),
            product_team:     (allValues[i][COL.PRODUCT_TEAM - 1] || "").toString().trim(),
            product_team_url: getCellUrl(sheet, rowNum, COL.PRODUCT_TEAM),
          },
          contacts:  [],
          meetings:  [],
          resources: []
        };

        // Meeting recs on the company row
        var meetingText = (allValues[i][COL.MEETING_RECS - 1] || "").toString().trim();
        var meetingUrl  = getCellUrl(sheet, rowNum, COL.MEETING_RECS);
        if (!meetingUrl) meetingUrl = extractFirstUrl(meetingText);
        if (meetingText || meetingUrl) {
          result.meetings.push({
            title: meetingText || "Meeting notes",
            url:   meetingUrl,
            notes: (allValues[i][COL.DEMOS - 1] || "").toString().trim()
          });
        }

        // Product team resources
        var ptText = result.company.product_team;
        var ptUrls = extractAllUrls(ptText);
        var ptCellUrl = result.company.product_team_url;
        if (ptCellUrl && ptUrls.indexOf(ptCellUrl) === -1) ptUrls.unshift(ptCellUrl);
        ptUrls.forEach(function(url) {
          result.resources.push({ label: labelForUrl(url, ptText), url: url });
        });

        // ── KEY FIX ──────────────────────────────────────────
        // Row 5 for Alberta Government has BOTH the company name
        // AND Kris Barker as a contact, AND the Email Chain + Notes
        // hyperlinks. We must read hyperlinks on THIS row for the
        // contact that shares it with the company.
        // This runs for every company row — if namesRaw is empty
        // it just adds nothing, so it is safe for all companies.
        var namesOnCompanyRow = (allValues[i][COL.NAMES - 1] || "").toString().trim();
        if (namesOnCompanyRow) {
          var emailChainTextCo = (allValues[i][COL.EMAIL_CHAIN - 1] || "").toString().trim();
          var notesTextCo      = (allValues[i][COL.NOTES       - 1] || "").toString().trim();
          var demosTextCo      = (allValues[i][COL.DEMOS       - 1] || "").toString().trim();
          var infoTextCo       = (allValues[i][COL.INFO        - 1] || "").toString().trim();

          // Read ACTUAL hyperlink URLs from these cells
          var emailChainUrlCo = getCellUrl(sheet, rowNum, COL.EMAIL_CHAIN);
          var notesUrlCo      = getCellUrl(sheet, rowNum, COL.NOTES);
          var demosUrlCo      = getCellUrl(sheet, rowNum, COL.DEMOS);

          // Fallback: try extracting URL from cell text
          if (!emailChainUrlCo) emailChainUrlCo = extractFirstUrl(emailChainTextCo);
          if (!notesUrlCo)      notesUrlCo      = extractFirstUrl(notesTextCo);
          if (!demosUrlCo)      demosUrlCo      = extractFirstUrl(demosTextCo);

          var namesListCo = namesOnCompanyRow.split(/[\n;]/).map(function(n){ return n.trim(); }).filter(Boolean);
          var rolesListCo = (allValues[i][COL.ROLES - 1] || "").toString().split(/[\n;]/).map(function(r){ return r.trim(); });
          var sourceCo    = (allValues[i][COL.SOURCE - 1] || "").toString().trim();

          namesListCo.forEach(function(name, j) {
            var email = isEmailAddress(infoTextCo) ? infoTextCo : "";
            var info  = !isEmailAddress(infoTextCo) ? infoTextCo : "";
            result.contacts.push({
              name:             name,
              role:             rolesListCo[j] || "",
              email:            j === 0 ? email : "",
              info:             j === 0 ? info  : "",
              source:           j === 0 ? sourceCo : "",
              email_chain_text: j === 0 ? emailChainTextCo : "",
              email_chain_url:  j === 0 ? emailChainUrlCo  : "",  // ← real URL
              notes_text:       j === 0 ? notesTextCo      : "",
              notes_url:        j === 0 ? notesUrlCo        : "",  // ← real URL
              demos_text:       j === 0 ? demosTextCo      : "",
              demos_url:        j === 0 ? demosUrlCo        : "",
            });
          });
        }
        // ── END KEY FIX ───────────────────────────────────────
      }

    // Contact rows within target block
    if (inTargetBlock && namesRaw && rowNum !== targetRowStart) {
      var names   = namesRaw.split(/[\n;]/).map(function(n){ return n.trim(); }).filter(Boolean);
      var roles   = (allValues[i][COL.ROLES - 1] || "").toString().split(/[\n;]/).map(function(r){ return r.trim(); });
      var source  = (allValues[i][COL.SOURCE - 1] || "").toString().trim();
      var infoVal = (allValues[i][COL.INFO   - 1] || "").toString().trim();

      // Read hyperlinks from Email Chain, Notes, Meeting Recs for this contact row
      var emailChainText = (allValues[i][COL.EMAIL_CHAIN  - 1] || "").toString().trim();
      var notesText      = (allValues[i][COL.NOTES        - 1] || "").toString().trim();
      var meetingText2   = (allValues[i][COL.MEETING_RECS - 1] || "").toString().trim();
      var demosText      = (allValues[i][COL.DEMOS        - 1] || "").toString().trim();

      var emailChainUrl  = getCellUrl(sheet, rowNum, COL.EMAIL_CHAIN)  || extractFirstUrl(emailChainText);
      var notesUrl       = getCellUrl(sheet, rowNum, COL.NOTES)        || extractFirstUrl(notesText);
      var meetingUrl2    = getCellUrl(sheet, rowNum, COL.MEETING_RECS) || extractFirstUrl(meetingText2);
      var demosUrl       = getCellUrl(sheet, rowNum, COL.DEMOS)        || extractFirstUrl(demosText);

      // Add meeting from contact row if it has content
      if (meetingText2 || meetingUrl2) {
        // Avoid duplicate
        var exists = result.meetings.some(function(m) { return m.url === meetingUrl2 && m.title === meetingText2; });
        if (!exists) {
          result.meetings.push({
            title: meetingText2 || "Meeting notes",
            url:   meetingUrl2,
            notes: demosText
          });
        }
      }

      // Add email chain as resource if it has a link
      if (emailChainUrl) {
        result.resources.push({
          label: emailChainText || "Email chain",
          url:   emailChainUrl
        });
      }

      // Add notes as resource if it has a link
      if (notesUrl) {
        result.resources.push({
          label: notesText || "Notes",
          url:   notesUrl
        });
      }

      // Build each contact
      names.forEach(function(name, j) {
        var role  = roles[j] || "";
        // Detect if INFO column contains an email address or a description
        var email = isEmailAddress(infoVal) ? infoVal : "";
        var info  = !isEmailAddress(infoVal) ? infoVal : "";

        result.contacts.push({
          name:           name,
          role:           role,
          email:          j === 0 ? email : "",
          info:           j === 0 ? info  : "",
          source:         j === 0 ? source : "",
          // Email chain link for this contact
          email_chain_text: j === 0 ? emailChainText : "",
          email_chain_url:  j === 0 ? emailChainUrl  : "",
          // Notes for this contact
          notes_text:     j === 0 ? notesText : "",
          notes_url:      j === 0 ? notesUrl  : "",
          demos_text:     j === 0 ? demosText : "",
          demos_url:      j === 0 ? demosUrl  : "",
        });
      });
    }
  }

  return result;
}

// ── Scan upward to find company for a contact row ────────────────

function findCompanyAbove(sheet, row) {
  var allValues = sheet.getDataRange().getValues();
  for (var i = row - 2; i >= 1; i--) {
    var val = (allValues[i][COL.COMPANY - 1] || "").toString().trim();
    if (isSectorHeader(val)) return null;
    if (val) return val;
  }
  return null;
}

// ── Read actual hyperlink URL from a cell ────────────────────────
// Handles whole-cell links and rich-text partial links

function getCellUrl(sheet, rowNum, colNum) {
  try {
    var range = sheet.getRange(rowNum, colNum);

    // Try whole-cell hyperlink first
    var cellUrl = range.getUrl ? range.getUrl() : null;
    if (cellUrl) return cellUrl;

    // Try rich text runs (partial links within cell)
    var rt = range.getRichTextValue();
    if (rt) {
      var runs = rt.getRuns();
      for (var i = 0; i < runs.length; i++) {
        var link = runs[i].getLinkUrl();
        if (link) return link;
      }
    }
  } catch(e) {
    Logger.log("getCellUrl error row " + rowNum + " col " + colNum + ": " + e.message);
  }
  return "";
}

// ── Helpers ──────────────────────────────────────────────────────

function isSectorHeader(name) {
  return SECTOR_HEADERS.indexOf(name.toUpperCase().trim()) !== -1;
}

function isEmailAddress(s) {
  return /^[\w._%+-]+@[\w.-]+\.[A-Za-z]{2,}$/.test((s || "").trim());
}

function extractFirstUrl(text) {
  if (!text) return "";
  var m = text.match(/(https?:\/\/[^\s\)\"\']+)/);
  return m ? m[1] : "";
}

function extractAllUrls(text) {
  if (!text) return [];
  return text.match(/(https?:\/\/[^\s\)\"\']+)/g) || [];
}

function labelForUrl(url, context) {
  // Try to find surrounding text before the URL to use as label
  if (context) {
    var idx = context.indexOf(url);
    if (idx > 0) {
      var before = context.substring(Math.max(0, idx - 50), idx).trim();
      var label  = before.split(/\n/).pop().trim();
      if (label) return label.substring(0, 60);
    }
  }
  try {
    return new URL(url).hostname.replace("www.", "");
  } catch(e) {
    return url.substring(0, 40);
  }
}

function toTitleCase(str) {
  return str.charAt(0).toUpperCase() + str.slice(1).toLowerCase();
}
