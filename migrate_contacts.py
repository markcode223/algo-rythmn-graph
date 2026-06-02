import csv
import uuid
import re
import sys
from datetime import datetime

# ── helpers ──────────────────────────────────────────────────────────────────

def q(text):
    """Escape single quotes for SQL string literals."""
    if not text:
        return "NULL"
    return "'" + str(text).replace("'", "''").strip() + "'"

def uid():
    return str(uuid.uuid4())

def normalize_priority(raw):
    if not raw:
        return "NULL"
    r = raw.strip().upper()
    if r.startswith("HIGHEST") or r == "HI": return "'highest'"
    if r.startswith("HIGH"):                  return "'high'"
    if r.startswith("MEDIUM"):                return "'medium'"
    if r.startswith("LOW"):                   return "'low'"
    if r.startswith("ZZZ"):                   return "'dead'"
    if "?" in r:                              return "'on_hold'"
    return "NULL"

def normalize_status(raw):
    if not raw:
        return "NULL"
    r = raw.lower()
    if any(x in r for x in ["not interested", "declined", "wrong dept", "no response", "pushed us off"]):
        return "'declined'"
    if any(x in r for x in ["on hold", "wait", "hold"]):
        return "'on_hold'"
    if any(x in r for x in ["ongoing", "met", "meeting", "sent", "talking", "checking"]):
        return "'active'"
    if any(x in r for x in ["finished", "signed", "connected"]):
        return "'in_progress'"
    return "NULL"

def normalize_contact_type(raw):
    if not raw:
        return "NULL"
    r = raw.lower()
    if "both" in r:      return "'both'"
    if "investor" in r and "connector" in r: return "'both'"
    if "investor" in r:  return "'investor'"
    if "connector" in r: return "'connector'"
    if "end user" in r:  return "'end_user'"
    return "NULL"

def extract_urls(text):
    """Return list of (label, url) tuples from free text."""
    if not text:
        return []
    pattern = r'(https?://[^\s\)\,\"\']+)'
    urls = re.findall(pattern, text)
    results = []
    for url in urls:
        # Try to guess label from surrounding text
        idx = text.find(url)
        snippet = text[max(0, idx-40):idx].strip().rstrip(':').strip()
        label = snippet.split('\n')[-1].strip() if snippet else url
        results.append((label[:120], url))
    return results

def classify_resource(label, url):
    l = (label + url).lower()
    if "deck" in l:       return "deck"
    if "demo" in l or "project" in l: return "demo"
    if "proposal" in l:   return "proposal"
    if "app" in l or "pharmacy" in l or "workbench" in l: return "web_app"
    if "doc" in l:        return "document"
    return "other"

def parse_date(raw):
    if not raw:
        return "NULL"
    for fmt in ("%b %d %Y", "%b %Y", "%Y-%m-%d"):
        try:
            return "'" + datetime.strptime(raw.strip(), fmt).strftime("%Y-%m-%d") + "'"
        except:
            pass
    return "NULL"

def extract_meeting(text):
    """Pull a Gemini notes URL from meeting recs column."""
    if not text:
        return None, None
    urls = re.findall(r'(https?://[^\s\)\"\']+)', text)
    title_match = re.match(r'^([^\n\-]+)', text.strip())
    title = title_match.group(1).strip()[:200] if title_match else None
    url = urls[0] if urls else None
    if not url and text.strip():
        # treat as plain text note, no URL
        return text.strip()[:200], None
    return title, url

# ── parse CSV ─────────────────────────────────────────────────────────────────

SECTOR_HEADERS = {
    "GOVERNMENT", "FUNDING", "ACADEMIA", "FINANCE", "INSURANCE",
    "AGRICULTURE", "AG WARM LEAD GENERATORS", "DRONES",
    "HOSPITALITY", "HOCKEY", "ENERGY", "MISC", "BRAZIL", "DEFUNCT"
}

rows_companies = []   # (id, name, sector, priority, status, ctype, notes, product_team, since)
rows_contacts  = []   # (id, company_id, name, role, email, notes, status)
rows_meetings  = []   # (id, company_id, contact_id, title, url, notes)
rows_resources = []   # (id, company_id, label, rtype, url)
rows_rels      = []   # (id, from_contact_id, to_company_id, rtype, note)

current_sector  = "Unknown"
current_company = None   # dict
current_company_id = None

def flush_company():
    """Finalise the current company block and append to rows."""
    if current_company:
        rows_companies.append(current_company)

with open("/Users/marklu/Desktop/contacts_knowledge_graph/Algo-Rythmn contact list  - Sheet1.csv", encoding="utf-8") as f:
    reader = csv.reader(f)
    for i, row in enumerate(reader):
        if i == 0:
            continue  # header

        # pad row to 14 columns
        while len(row) < 14:
            row.append("")

        (company_raw, priority_raw, names_raw, roles_raw, status_raw,
         product_raw, email_chain, meeting_recs, notes_raw,
         demos_raw, source_raw, info_raw, since_raw, ctype_raw) = row[:14]

        company_raw = company_raw.strip()
        names_raw   = names_raw.strip()

        # ── sector header ────────────────────────────────────────────────────
        if company_raw.upper() in SECTOR_HEADERS:
            current_sector = company_raw.title()
            flush_company()
            current_company = None
            current_company_id = None
            continue

        # ── colour-code legend row ───────────────────────────────────────────
        if "GREEN IS" in company_raw.upper() or not company_raw and not names_raw:
            continue

        # ── new company row ──────────────────────────────────────────────────
        if company_raw:
            flush_company()
            cid = uid()
            current_company_id = cid

            # Combined notes from STATUS + NOTES + DEMOS SEEN
            full_notes = "\n\n".join(filter(None, [status_raw.strip(), notes_raw.strip(), demos_raw.strip()]))

            current_company = {
                "id":           cid,
                "name":         company_raw,
                "sector":       current_sector,
                "priority":     normalize_priority(priority_raw),
                "status":       normalize_status(status_raw),
                "contact_type": normalize_contact_type(ctype_raw),
                "notes":        full_notes,
                "product_team": product_raw.strip(),
                "since":        parse_date(since_raw),
            }

            # Resources — from product_raw + notes_raw + demos_raw
            all_text = "\n".join([product_raw, notes_raw, demos_raw, info_raw])
            for label, url in extract_urls(all_text):
                rtype = classify_resource(label, url)
                rows_resources.append({
                    "id": uid(), "company_id": cid,
                    "label": label, "rtype": rtype, "url": url
                })

            # Meeting
            if meeting_recs.strip():
                title, murl = extract_meeting(meeting_recs)
                rows_meetings.append({
                    "id": uid(), "company_id": cid, "contact_id": None,
                    "title": title, "url": murl, "notes": demos_raw.strip()
                })

        # ── contact row (company may or may not be set on this line) ─────────
        if names_raw and current_company_id:
            # Handle multi-name cells (e.g. IntellinAir has 4 names)
            names = [n.strip() for n in re.split(r'\n|;', names_raw) if n.strip()]
            roles = [r.strip() for r in re.split(r'\n|;', roles_raw) if r.strip()]

            for j, name in enumerate(names):
                role  = roles[j] if j < len(roles) else ""
                pid   = uid()
                email = info_raw.strip() if j == 0 else ""  # email usually in INFO col

                rows_contacts.append({
                    "id":         pid,
                    "company_id": current_company_id,
                    "name":       name,
                    "role":       role,
                    "email":      email,
                    "notes":      notes_raw.strip() if j == 0 else "",
                    "status":     normalize_status(status_raw),
                })

                # SOURCE column → relationship edge
                if source_raw.strip() and j == 0:
                    rows_rels.append({
                        "id":              uid(),
                        "from_name":       source_raw.strip(),  # resolve to contact_id in SQL
                        "to_company_id":   current_company_id,
                        "rtype":           "introduced_by",
                        "note":            f"Source: {source_raw.strip()}"
                    })

# flush last company
flush_company()

# ── generate SQL ──────────────────────────────────────────────────────────────

lines = []
lines.append("-- Auto-generated migration from Algo-Rythmn contact CSV")
lines.append("-- Run: psql -d algo_rythmn_contacts -f seed_data.sql")
lines.append("BEGIN;\n")

# companies
lines.append("-- COMPANIES")
for c in rows_companies:
    lines.append(
        f"INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ("
        f"'{c['id']}', {q(c['name'])}, {q(c['sector'])}, "
        f"{c['priority']}, {c['status']}, {c['contact_type']}, "
        f"{q(c['notes'])}, {q(c['product_team'])}, {c['since']}"
        f");"
    )

lines.append("\n-- CONTACTS")
for p in rows_contacts:
    lines.append(
        f"INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ("
        f"'{p['id']}', '{p['company_id']}', {q(p['name'])}, {q(p['role'])}, "
        f"{q(p['email'])}, {q(p['notes'])}, {p['status']}"
        f");"
    )

lines.append("\n-- MEETINGS")
for m in rows_meetings:
    cid_sql = f"'{m['contact_id']}'" if m['contact_id'] else "NULL"
    lines.append(
        f"INSERT INTO meetings (id, company_id, contact_id, title, summary_url, notes) VALUES ("
        f"'{m['id']}', '{m['company_id']}', {cid_sql}, "
        f"{q(m['title'])}, {q(m['url'])}, {q(m['notes'])}"
        f");"
    )

lines.append("\n-- RESOURCES")
for r in rows_resources:
    lines.append(
        f"INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ("
        f"'{r['id']}', '{r['company_id']}', {q(r['label'])}, '{r['rtype']}', {q(r['url'])}"
        f");"
    )

lines.append("\n-- RELATIONSHIPS (source name stored as note; manually link contact_id after import)")
for r in rows_rels:
    lines.append(
        f"INSERT INTO relationships (id, to_company_id, relationship_type, note) VALUES ("
        f"'{r['id']}', '{r['to_company_id']}', '{r['rtype']}', {q(r['note'])}"
        f");"
    )

lines.append("\nCOMMIT;")

output = "\n".join(lines)
with open("/Users/marklu/Desktop/contacts_knowledge_graph/seed_data.sql", "w") as out:
    out.write(output)

# ── summary ───────────────────────────────────────────────────────────────────
print(f"Companies : {len(rows_companies)}")
print(f"Contacts  : {len(rows_contacts)}")
print(f"Meetings  : {len(rows_meetings)}")
print(f"Resources : {len(rows_resources)}")
print(f"Relations : {len(rows_rels)}")
print("Written  -> seed_data.sql")
