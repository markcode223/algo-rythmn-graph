"""
Migration v4 — links each referral to the specific contact who was introduced.
Same schema, smarter relationship mapping.
"""
import csv, uuid, re
from datetime import datetime

CSV_PATH    = "/mnt/user-data/uploads/Algo-Rythmn_contact_list__-_Sheet1.csv"
OUTPUT_PATH = "/mnt/user-data/outputs/seed_data_v4.sql"

SECTOR_HEADERS = {
    "GOVERNMENT", "FUNDING", "ACADEMIA", "FINANCE", "INSURANCE",
    "AGRICULTURE", "AG WARM LEAD GENERATORS", "DRONES",
    "HOSPITALITY", "HOCKEY", "ENERGY", "MISC", "BRAZIL", "DEFUNCT"
}

def q(text):
    if text is None or str(text).strip() == "": return "NULL"
    return "'" + str(text).replace("'", "''").strip() + "'"

def uid(): return str(uuid.uuid4())

def norm_priority(raw):
    if not raw: return "NULL"
    r = raw.strip().upper()
    return {"HIGHEST":"'highest'","HI":"'highest'","HIGH":"'high'","MEDIUM":"'medium'",
            "LOW":"'low'","ZZZZ":"'dead'","ZZZZZ":"'dead'"}.get(r, "'on_hold'" if "?" in r else "NULL")

def norm_status(raw):
    if not raw: return "NULL"
    r = raw.lower()
    if any(x in r for x in ["not interested","declined","wrong dept","no response","pushed us off","pushed off"]):
        return "'declined'"
    if any(x in r for x in ["on hold","wait","hold"]): return "'on_hold'"
    if any(x in r for x in ["ongoing","met","meeting","sent","talking","checking"]): return "'active'"
    if any(x in r for x in ["finished","signed","connected"]): return "'in_progress'"
    return "NULL"

def norm_ctype(raw):
    if not raw: return "NULL"
    r = raw.lower()
    if "both" in r: return "'both'"
    if "investor" in r and "connector" in r: return "'both'"
    if "investor" in r: return "'investor'"
    if "connector" in r: return "'connector'"
    if "end user" in r: return "'end_user'"
    return "NULL"

def parse_date(raw):
    if not raw: return "NULL"
    s = raw.strip()
    for fmt in ("%b %d %Y", "%b %Y", "%Y-%m-%d", "%B %d %Y", "%B %Y"):
        try: return "'" + datetime.strptime(s, fmt).strftime("%Y-%m-%d") + "'"
        except: pass
    return "NULL"

def extract_email(text):
    if not text: return ""
    m = re.search(r'[\w._%+-]+@[\w.-]+\.[A-Za-z]{2,}', text)
    return m.group(0) if m else ""

def extract_urls(text):
    if not text: return []
    return re.findall(r'(https?://[^\s\)\"\']+)', text)

def classify(label, url):
    s = (label + url).lower()
    if "deck" in s: return "deck"
    if "demo" in s or "project" in s: return "demo"
    if "proposal" in s: return "proposal"
    if "app" in s: return "web_app"
    if "doc" in s: return "document"
    return "other"

rows_companies, rows_contacts, rows_meetings, rows_resources, rows_rels = [], [], [], [], []
current_sector = "Unknown"
pending_block  = None

def flush_block(block):
    if not block: return
    cid = block["cid"]
    rows_companies.append({
        "id": cid, "name": block["name"], "sector": block["sector"],
        "priority": block["priority"], "status": block["status"], "ctype": block["ctype"],
        "notes": block["notes"], "product_team": block["product_team"], "since": block["since"],
    })

    if block["meeting_url"] or block["meeting_title"]:
        rows_meetings.append({
            "id": uid(), "company_id": cid, "title": block["meeting_title"] or "Meeting",
            "url": block["meeting_url"], "notes": block["meeting_notes"],
        })

    seen_urls = set()
    for label, url in block["resources"]:
        if url in seen_urls: continue
        seen_urls.add(url)
        rows_resources.append({
            "id": uid(), "company_id": cid, "label": label,
            "rtype": classify(label, url), "url": url
        })

    # contacts + per-contact referral
    for c in block["contacts"]:
        contact_id = uid()
        rows_contacts.append({
            "id": contact_id, "company_id": cid,
            "name": c["name"], "role": c["role"], "email": c["email"],
            "status": c["status"], "notes": c["notes"],
        })
        # If this contact has a source, create a relationship linked to THIS contact
        if c["source"]:
            # We use a placeholder note that includes the introducer name
            # from_contact_id is NULL (the introducer might not be a tracked contact)
            # The "introduced contact" is captured via the note
            rows_rels.append({
                "id": uid(),
                "to_company_id": cid,
                "introduced_contact_id": contact_id,
                "note": f"Introduced {c['name']} via: {c['source']}",
                "introducer_name": c["source"],
            })


with open(CSV_PATH, encoding="utf-8") as f:
    reader = csv.reader(f)
    next(reader)

    for row in reader:
        while len(row) < 14: row.append("")
        (company_raw, priority_raw, names_raw, roles_raw, status_raw,
         product_raw, email_chain, meeting_recs, notes_raw,
         demos_raw, source_raw, info_raw, since_raw, ctype_raw) = row[:14]
        company_raw = company_raw.strip()
        names_raw   = names_raw.strip()

        if company_raw.upper() in SECTOR_HEADERS:
            current_sector = company_raw.title()
            flush_block(pending_block)
            pending_block = None
            continue

        if not company_raw and not names_raw: continue
        if "GREEN IS" in company_raw.upper(): continue

        if company_raw:
            flush_block(pending_block)
            cid = uid()
            full_notes = "\n\n".join(filter(None, [
                status_raw.strip(), notes_raw.strip(), demos_raw.strip()
            ]))
            meeting_url, meeting_title = "", ""
            if meeting_recs.strip():
                urls = extract_urls(meeting_recs)
                meeting_url = urls[0] if urls else ""
                meeting_title = meeting_recs.strip().split("\n")[0][:200]

            pending_block = {
                "cid": cid, "name": company_raw, "sector": current_sector,
                "priority": norm_priority(priority_raw), "status": norm_status(status_raw),
                "ctype": norm_ctype(ctype_raw), "notes": full_notes,
                "product_team": product_raw.strip(), "since": parse_date(since_raw),
                "meeting_url": meeting_url, "meeting_title": meeting_title,
                "meeting_notes": demos_raw.strip(),
                "resources": [], "contacts": [],
            }
            for url in extract_urls("\n".join([product_raw, notes_raw, demos_raw, info_raw])):
                pending_block["resources"].append((url[:120], url))

        if names_raw and pending_block:
            names = [n.strip() for n in re.split(r'\n|;', names_raw) if n.strip()]
            roles = [r.strip() for r in re.split(r'\n|;', roles_raw) if r.strip()]
            info_emails = re.findall(r'[\w._%+-]+@[\w.-]+\.[A-Za-z]{2,}', info_raw)

            for j, name in enumerate(names):
                role = roles[j] if j < len(roles) else ""
                if j < len(info_emails):       email = info_emails[j]
                elif info_emails and j == 0:   email = info_emails[0]
                else:                          email = ""

                pending_block["contacts"].append({
                    "name": name, "role": role, "email": email,
                    "status": norm_status(status_raw),
                    "notes": notes_raw.strip()[:500] if j == 0 else "",
                    "source": source_raw.strip(),  # per-contact source!
                })

            for url in extract_urls("\n".join([notes_raw, info_raw, email_chain])):
                pending_block["resources"].append((url[:120], url))

flush_block(pending_block)

# ── SQL ──
lines = ["-- Migration v4 — per-contact referrals", "BEGIN;",
         "DELETE FROM relationships; DELETE FROM resources; DELETE FROM meetings;",
         "DELETE FROM contacts; DELETE FROM companies;", ""]

lines.append("-- COMPANIES")
for c in rows_companies:
    lines.append(
        f"INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ("
        f"'{c['id']}', {q(c['name'])}, {q(c['sector'])}, {c['priority']}, {c['status']}, {c['ctype']}, "
        f"{q(c['notes'])}, {q(c['product_team'])}, {c['since']});"
    )

lines.append("\n-- CONTACTS")
for p in rows_contacts:
    lines.append(
        f"INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ("
        f"'{p['id']}', '{p['company_id']}', {q(p['name'])}, {q(p['role'])}, "
        f"{q(p['email'])}, {p['status']}, {q(p['notes'])});"
    )

lines.append("\n-- MEETINGS")
for m in rows_meetings:
    lines.append(
        f"INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ("
        f"'{m['id']}', '{m['company_id']}', {q(m['title'])}, {q(m['url'])}, {q(m['notes'])});"
    )

lines.append("\n-- RESOURCES")
for r in rows_resources:
    lines.append(
        f"INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ("
        f"'{r['id']}', '{r['company_id']}', {q(r['label'])}, '{r['rtype']}', {q(r['url'])});"
    )

lines.append("\n-- RELATIONSHIPS (per-contact referrals)")
# We use from_contact_id to point to the INTRODUCED contact, and the note holds the introducer name.
# (The introducer isn't necessarily a tracked contact in our DB.)
for r in rows_rels:
    lines.append(
        f"INSERT INTO relationships (id, from_contact_id, to_company_id, relationship_type, note) VALUES ("
        f"'{r['id']}', '{r['introduced_contact_id']}', '{r['to_company_id']}', 'introduced_by', {q(r['note'])});"
    )

lines.append("\nCOMMIT;")

with open(OUTPUT_PATH, "w") as f:
    f.write("\n".join(lines))

print(f"Companies : {len(rows_companies)}")
print(f"Contacts  : {len(rows_contacts)}")
print(f"Meetings  : {len(rows_meetings)}")
print(f"Resources : {len(rows_resources)}")
print(f"Referrals : {len(rows_rels)}")
print(f"Written  -> {OUTPUT_PATH}")
