-- ============================================================
-- Algo-Rythmn Contact Graph — PostgreSQL Schema
-- ============================================================

-- Extensions
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- ============================================================
-- ENUMS
-- ============================================================

CREATE TYPE priority_level AS ENUM (
  'highest', 'high', 'medium', 'low', 'on_hold', 'dead'
);

CREATE TYPE engagement_status AS ENUM (
  'active', 'in_progress', 'on_hold', 'declined', 'defunct'
);

CREATE TYPE contact_type AS ENUM (
  'end_user', 'investor', 'connector', 'both'
);

CREATE TYPE resource_type AS ENUM (
  'deck', 'demo', 'proposal', 'document', 'web_app', 'other'
);

CREATE TYPE relationship_type AS ENUM (
  'introduced_by',   -- person A introduced us to company B
  'works_with',      -- person A works with company B
  'referred_to'      -- person A referred us to person B
);

-- ============================================================
-- COMPANIES
-- Central node in the graph. Each row in your sheet is one company.
-- ============================================================

CREATE TABLE companies (
  id              UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  name            TEXT NOT NULL,
  sector          TEXT,                      -- e.g. 'Agriculture', 'Hockey', 'Energy'
  priority        priority_level,
  status          engagement_status,
  contact_type    contact_type,              -- End User / Investor / Connector / Both
  notes           TEXT,                      -- Free-text STATUS + NOTES merged
  from_product_team TEXT,                    -- "From Product Team" column
  since           DATE,                      -- "SINCE" column
  created_at      TIMESTAMPTZ DEFAULT now(),
  updated_at      TIMESTAMPTZ DEFAULT now()
);

CREATE INDEX idx_companies_sector   ON companies(sector);
CREATE INDEX idx_companies_priority ON companies(priority);
CREATE INDEX idx_companies_status   ON companies(status);

-- ============================================================
-- CONTACTS
-- Individual people under each company.
-- ============================================================

CREATE TABLE contacts (
  id          UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  company_id  UUID REFERENCES companies(id) ON DELETE CASCADE,
  full_name   TEXT NOT NULL,
  role        TEXT,
  email       TEXT,
  notes       TEXT,
  status      engagement_status,
  created_at  TIMESTAMPTZ DEFAULT now()
);

CREATE INDEX idx_contacts_company ON contacts(company_id);
CREATE INDEX idx_contacts_email   ON contacts(email);

-- ============================================================
-- RELATIONSHIPS
-- Tracks who introduced whom — the referral chain edges.
-- e.g. "Todd Ormann introduced us to Olds College"
--      "Prashant Pandey connected us to SVG Ventures"
-- ============================================================

CREATE TABLE relationships (
  id                UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  from_contact_id   UUID REFERENCES contacts(id) ON DELETE SET NULL,
  to_company_id     UUID REFERENCES companies(id) ON DELETE CASCADE,
  relationship_type relationship_type NOT NULL DEFAULT 'introduced_by',
  note              TEXT,
  created_at        TIMESTAMPTZ DEFAULT now()
);

CREATE INDEX idx_rel_from_contact ON relationships(from_contact_id);
CREATE INDEX idx_rel_to_company   ON relationships(to_company_id);

-- ============================================================
-- MEETINGS
-- Each "Meeting recs" / Gemini note entry.
-- ============================================================

CREATE TABLE meetings (
  id            UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  company_id    UUID REFERENCES companies(id) ON DELETE CASCADE,
  contact_id    UUID REFERENCES contacts(id) ON DELETE SET NULL,
  title         TEXT,                        -- e.g. "Algo Rythmn x Olds College"
  summary_url   TEXT,                        -- Google Meet / Gemini notes link
  notes         TEXT,                        -- DEMOS SEEN / additional context
  meeting_date  TIMESTAMPTZ,
  created_at    TIMESTAMPTZ DEFAULT now()
);

CREATE INDEX idx_meetings_company ON meetings(company_id);
CREATE INDEX idx_meetings_contact ON meetings(contact_id);
CREATE INDEX idx_meetings_date    ON meetings(meeting_date);

-- ============================================================
-- RESOURCES
-- Decks, demos, proposals, web apps, documents per company.
-- ============================================================

CREATE TABLE resources (
  id            UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  company_id    UUID REFERENCES companies(id) ON DELETE CASCADE,
  label         TEXT NOT NULL,               -- e.g. "AlgoMind deck", "Precision AI proposal"
  resource_type resource_type NOT NULL,
  url           TEXT,
  created_at    TIMESTAMPTZ DEFAULT now()
);

CREATE INDEX idx_resources_company ON resources(company_id);
CREATE INDEX idx_resources_type    ON resources(resource_type);

-- ============================================================
-- GRAPH VIEW
-- Denormalised view that Cytoscape.js queries to build the graph.
-- Returns all nodes (companies + contacts) and edges in one shot.
-- ============================================================

CREATE OR REPLACE VIEW graph_edges AS
  -- company → contact edges
  SELECT
    'company_' || c.id::text   AS source_id,
    'contact_' || p.id::text   AS target_id,
    'has_contact'              AS edge_type,
    NULL::text                 AS label
  FROM companies c
  JOIN contacts p ON p.company_id = c.id

  UNION ALL

  -- contact → company (introduced_by) edges
  SELECT
    'contact_' || r.from_contact_id::text  AS source_id,
    'company_' || r.to_company_id::text    AS target_id,
    r.relationship_type::text              AS edge_type,
    r.note                                 AS label
  FROM relationships r
  WHERE r.from_contact_id IS NOT NULL

  UNION ALL

  -- company → meeting edges
  SELECT
    'company_' || m.company_id::text  AS source_id,
    'meeting_' || m.id::text          AS target_id,
    'has_meeting'                     AS edge_type,
    m.title                           AS label
  FROM meetings m

  UNION ALL

  -- company → resource edges
  SELECT
    'company_' || res.company_id::text  AS source_id,
    'resource_' || res.id::text         AS target_id,
    'has_resource'                      AS edge_type,
    res.label                           AS label
  FROM resources res;


-- ============================================================
-- UPDATED_AT TRIGGER (for companies)
-- ============================================================

CREATE OR REPLACE FUNCTION set_updated_at()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = now();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_companies_updated_at
  BEFORE UPDATE ON companies
  FOR EACH ROW EXECUTE FUNCTION set_updated_at();
