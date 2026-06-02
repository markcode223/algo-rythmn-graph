-- Migration v3 — fixes per-contact role/email assignment
-- Same schema, better data
BEGIN;

-- Wipe existing data
DELETE FROM relationships;
DELETE FROM resources;
DELETE FROM meetings;
DELETE FROM contacts;
DELETE FROM companies;

-- COMPANIES
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('bbaa18dc-a9c3-4145-b417-2f7de51af6ba', 'Alberta Government', 'Government', NULL, 'declined', 'investor', 'They pushed us off to Alberta Innovates

Alberta Gov meeting notes', NULL, '2025-08-19');
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('cd17a832-4172-4a01-885c-1ce2b8f6ffd5', 'Alberta Innovates', 'Government', NULL, NULL, 'investor', NULL, NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('c695dcaf-f72c-4b88-bcf1-5cc8680c7196', 'SVG Ventures', 'Government', NULL, 'in_progress', 'investor', 'connected us to Coleton', NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('03007514-31c6-4e30-88b6-8d721e598d0c', 'CAAIN', 'Government', NULL, 'active', 'investor', 'Next step is applying on website here (program guide and application are at bottom of page)

Olds- touch base and see if they''re open to CAAIN, they''d need to put name on it and put in token amount, or we can work something out- DroneTeams

AlgoScout/AgroMind for Kevin Pattison?

AlgoImagery for Doug Mackaye?

AgEinstein for Ox and Plow?

Reach out to Garson to keep it alive for June/"talking to partners"', 'Cheatsheets:
AgroMind-cheatsheet.docx
AgEinstein-cheatsheet.docx
AlgoImagery-cheatsheet.docx
AlgoSwarm-cheatsheet.docx
AlgoSwarm-cheatsheet-Chris.docx', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('5865cbd6-8656-4916-9cc9-102ee72226d6', 'Tall Grass Ventures', 'Funding', NULL, 'active', 'investor', 'Sent MNP deck Mar 9- he liked it, thinks they need it at MNP, thinks it''s politics

Loves to chat, good contacts', 'Deck: https://deck.algo-rythmn.ai/AgroIntel', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('341749dd-0b3d-4cfb-87b9-f6da3561646f', 'Graphite', 'Funding', NULL, NULL, 'investor', NULL, NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('7b9b806e-e1d0-4a77-95db-a71ed77fcad8', 'AFSC', 'Funding', 'medium', NULL, 'investor', NULL, NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('0874a874-76af-46c8-9fe9-0d5a097cd4c5', 'Red Deer Polytechnic', 'Academia', 'low', NULL, NULL, NULL, NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('efc04dcd-2393-44d9-b190-acad24128854', 'Olds College', 'Academia', NULL, 'active', NULL, 'met, talking to todd before responding back, need to get irap advisor', 'Data requirement: project_canola_olds

Demo: https://project2604.algo-rythmn.ai/', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('8e5279d3-b449-4205-89c0-d8d6770703fd', 'Bridgewerk', 'Finance', NULL, 'active', 'end_user', 'met, discussed a golf course grass company crossing into ag', NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('fcab0828-7ca1-45ab-a9fc-748d191132d0', 'ATB Financial', 'Finance', NULL, 'active', 'end_user', 'Sent John Algomind demo,Hockey demo, ageinstein on Mar 18, along with proposal

Checking in during July', NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('a6bd6897-3d1f-4d95-9e53-018438ec6945', 'Ox and Plow', 'Finance', 'low', 'active', 'end_user', 'Met, discussing viability of giving them a market analysis private GPT

Meeting with them again, they didn''t bite on 100-200K', NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('82350b53-3015-476d-b74e-678d098e239c', 'I.C.E.', 'Finance', 'medium', 'active', 'end_user', 'Meeting may 27th

Set expectation of making proposal in August to submit to Sept budgeting

If they need something more firm ask for money for proof of concept

Asking questions 

Ask if we can build up a proposal for August

ICE Meeting Summary May 2026', 'Cheatsheet (for internal): https://docs.google.com/document/d/1YJqvs_luxZ8016DZ8ofMRN0OMBIIvhhX/edit
Pitch Deck (for external): https://deck.algo-rythmn.ai/yield-ice', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('af263e70-b79a-463a-872c-a4bb8b692556', 'FCC', 'Insurance', NULL, NULL, 'end_user', NULL, NULL, '2025-08-08');
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('ee830fd2-ca11-479f-b2b6-4c5234653fc5', 'John Deere', 'Agriculture', NULL, 'declined', 'end_user', 'Messaged Jahmy for intro from Kenny''s LinkedIn, Kenny followed up, no response

Connected with a few people, followed up', NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('84f07e26-a21c-4fa1-b8a6-4a29372f8453', 'IntellinAir', 'Agriculture', 'on_hold', NULL, 'end_user', 'Data Discussion next', NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('57d7f765-38d9-4fff-a043-8d938867ea0e', 'Precision.ai', 'Agriculture', 'medium', 'active', 'end_user', 'Meeting May 29th', 'Deck: https://deck.algo-rythmn.ai/precision-ai-proposal
Proposal: Algo-Rythmn_PrecisionAI_Business Proposal_v1.0.docx', '2025-07-02');
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('4f11caea-cda4-41dc-b769-ff73cf423365', 'MNP', 'Agriculture', 'dead', 'declined', 'end_user', 'Warren was not interested', 'Demo app: http://algomindpro.algo-rythmn.ai/', '2025-09-07');
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('384aa5d1-4fca-40e1-abc4-8cfecd5b708a', 'Pattison Technologies Inc.', 'Agriculture', 'medium', 'active', 'end_user', 'finished the db, it''s ready for AI, schedule in April 2026
.
We met and shared demos, need to see if the small scale works for us somehow LET CAAIN SUBSIDIZE

Also discussed introing at Trimble', NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('71cd2123-f498-43d1-a21b-d6f06124b0b4', 'Nutrien', 'Agriculture', 'low', NULL, 'end_user', 'Exploring contacts at LinkedIn', NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('71f12353-2e4d-49eb-b827-a36c00202d6a', 'New Era Ag Technologies', 'Agriculture', 'medium', NULL, 'end_user', 'Dennis broke his leg, Kenny had a conversation with Ryan.  Ryan has new idea which we will hear next week.

Ryan responded back ambiguously, said they need to have internal talks and will respond in mid-June', 'Pricing: https://deck.algo-rythmn.ai/new-era-ag-ai-pricing
Web app: https://newera.algo-rythmn.ai/
Data upload dashboard: https://new-era-file-upload.algo-rythmn.ai/ (username: ryan password: ryan2026!)

Soil Deck: https://deck.algo-rythmn.ai/soil-intelligence.html
Triangle Deck: https://deck.algo-rythmn.ai/plant-triangle-framework.html
Soil demo: https://project2602.algo-rythmn.ai/

For the data file from New Era Research:
1. Demo: https://project2503.algo-rythmn.ai/
2. Deck: https://deck.algo-rythmn.ai/NewEraAg-TrialData.html
3. Document: 20251204_new_era_ag_kelly_data', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('3baca998-9f11-4d23-8d31-a14f750a4da9', 'AGVISOR PRO', 'Agriculture', 'low', 'active', 'end_user', 'met apr 16th', 'quick questions for agvisorpro', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('679c3f7d-209d-40c7-8712-530afdafa23b', 'Corvian', 'Agriculture', 'low', NULL, 'end_user', 'Manoj responded on May 22nd saying they''re doing internal vetting of tools', 'Demo: supporting_document_2026.02.02
Deck for v2.0: https://deck.algo-rythmn.ai/AlgoMind.html', '2026-01-01');
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('a98f9bf5-b676-42ad-9c53-8e29ccd6c319', 'Earth Daily', 'Agriculture', 'medium', 'active', 'end_user', 'Met Andrew who was enthusiastic about partnering with us, he''s intro-ing to their head of analytics who will be a harder sell

Meeting May 28th. 

We''re prepared for the meeting

not looking for analytics', 'KW''s demo: https://project2612.algo-rythmn.ai/
New deck: http://deck.algo-rythmn.ai/earthdaily-ai-proposal

Deck: http://deck.algo-rythmn.ai/earthdaily-ai
YLex''s Demo: https://algomindpro-earthdaily.algo-rythmn.ai/', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('ba53460b-037f-483d-823e-a06ffad9435e', 'Digifarm', 'Agriculture', NULL, NULL, 'end_user', 'Get low res data and include it into our financial portfolio model for corn/soy/canola FOR ICE

Approach them for limited partnership, end user would be their customers.

Also extend to risk/insurers

Remember global coverage, but high res data not a driver', NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('48437f35-73a0-4215-b310-df2f1d7b809a', 'TELUS AG/Decisive', 'Agriculture', 'medium', 'active', 'end_user', 'Met, asked for the scope of their data so that we can pinpoint pilot proposals', NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('39084368-c0f5-4fe6-8f62-99335e3b4b86', 'FCL (Federated Co-ops Limited)', 'Agriculture', 'low', 'active', NULL, 'Met May 13th, scheduling followup', NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('286dd339-93ed-4142-8f32-feec2d35e432', 'Tom Mix', 'Ag Warm Lead Generators', 'low', NULL, 'connector', 'Emailed the document intelligence decks', 'Specific Deck: https://deck.algo-rythmn.ai/doc-ai-mining


Web app: https://opsedge.algo-rythmn.ai/

Deck for Mosaic: https://deck.algo-rythmn.ai/potash-mining-operations.html

Demo: http://testbed.algo-rythmn.ai/', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('b4caa821-1327-4393-b16e-f592fdb57de4', 'Alex Melnitchouck', 'Ag Warm Lead Generators', 'medium', 'active', 'connector', 'Met apr 16th. he''s going to intro us to Xarvio. We need to come up with a fee structure for him to work with us.

Alex will come back end of week of May12th, Kenny will discuss digifarm also', NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('34b78590-8e06-48f3-9c4e-8fbaecaa8449', 'Doug MacKay', 'Ag Warm Lead Generators', 'highest', 'active', 'connector', 'Met Apr 20th. He''s going to intro us to someone at John Deere, anda few other places. Same structure needed as Alex M.

Meeting May 28th Discuss DroneTeams', 'AlgoDroneTeams Deck: https://deck.algo-rythmn.ai/drone-team
KW''s report: https://deck.algo-rythmn.ai/drone-report', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('76994611-9cfe-429c-9157-a24789c7a94f', 'Felippe Karp', 'Ag Warm Lead Generators', 'highest', 'active', 'connector', 'Met Apr 21st. He''s going to intro us to Brazilian AG and is very enthusaistic about collaborating with us. 

Try to identify lowest-hanging fruit, ie. no academics, find clients first', 'Co-op: https://deck.algo-rythmn.ai/coop-member-intelligence
Potential plays: https://deck.algo-rythmn.ai/Brazil-Plays-Opportunity', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('8a11545a-1314-40f1-9faa-4a956a9d9a48', 'Chris Paterson', 'Ag Warm Lead Generators', NULL, NULL, 'both', 'Talk to Doug Mackaye first about DroneTeams', NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('1eeaaf65-055e-44d7-b5a0-b6526f1c6f68', 'CoStar/STR', 'Hospitality', 'dead', 'active', 'end_user', 'Met, he gave us a tour of new STR acqiusition, we are trying to talk to one of his analytics friends at CoStar', NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('d8bbb52e-fbd5-46d4-8563-b6e8789b62f7', 'Drive Hockey', 'Hockey', 'low', NULL, 'end_user', 'Kenny''s lighting a fire underneath them', 'Document: hockey_drive_20260119
Deck: https://deck.algo-rythmn.ai/drive-hockey-ai-agent.html', '2026-01-01');
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('dcf13ade-6277-458d-b45f-6af55ba385a8', 'Elite Hockey Science', 'Hockey', 'low', 'active', 'end_user', 'met, deal went back to drawing board

Kenny has been talking to Ron again', 'Web App2: https://project2606.algo-rythmn.ai/
Web App1:  https://project2605.algo-rythmn.ai/', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('fe67b987-7640-41ee-808d-1f5c6afb74e0', 'Calgary Flames', 'Hockey', 'low', NULL, 'end_user', 'Connor- it will be a summer project. We can dev with drive hockey in the meantime

Matthias is going to skate with him next week

They are doing it themselves, Kenny''s gonna meet their golden boy in JUNE in person', 'Web App: https://workbench.algo-rythmn.ai/', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('0ca4610b-7176-4745-9acf-8367f014f708', 'AESO', 'Energy', 'low', 'declined', 'end_user', 'emailed mar 31st with validation layer illustration, no response.

Kenny is meeting with Will Bridge.', 'Transparent Agentic Platform (This is also the latest AgMRI beta from Dev Team)

Video Demo:
Transparent Agentic Platform', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('4b7db827-7b49-446d-a229-a662d6f4e5ab', 'APEX', 'Energy', 'medium', 'declined', 'end_user', 'emailed mar 9, wait until April 2026- Troy had a family issue come up so we''re waiting

Declined Call Center automation job, asking for followup meeting

Only use one call center for 20K CAD per year.  

NO GO unless we want to scale a model and/or use this as a relationship builder for this client.', 'Determine whether it’s worth building it based on our ROI.

Cheat Sheets: Apex_AI_Call_Response_Cheatsheet.docx
Apex_HSE_Automation_Cheatsheet.docx

Demo: http://testbed.algo-rythmn.ai/ (paused)
Deck: https://deck.algo-rythmn.ai/potash-mining-operations.html', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('4e7b561c-508b-4e6b-8a37-6056e947e77b', 'Cutting Edge drilling', 'Energy', 'low', NULL, 'end_user', 'Steering towards small project around public data +private walled garden

Schedule right away and show deck/workflow automation. Ask for historical data to vet data quality and to provide backtesting to see how much we would have saved them on projects.

Focus on PASON first', 'Workflow Deck: https://deck.algo-rythmn.ai/prospecting-ai
Workflow Demo: https://project2611.algo-rythmn.ai/

Demo: Use public well data to build a decision support tool on well planning & offset analysis. (Hold on now)

New deck: https://deck.algo-rythmn.ai/chemical-sourcing

Deck (lite & detailed): https://deck.algo-rythmn.ai/ai-drilling-revolution-lite.html
https://deck.algo-rythmn.ai/ai-drilling-revolution.html', '2026-01-01');
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('364ce147-9c57-42a7-9b33-b3f986265236', 'Pason', 'Energy', 'medium', 'active', 'end_user', 'We''re meeting with the CEO- don''t bring a demo/brochure/anything.

He''s fairly tough to deal with. Pason does not own or look at their data. 

We need to think outside of the box here. Dashboard with LLM?

Meeting JUNE 2nd IN PERSON Kenny- they don''t own data, exploratory meet', 'Deck: https://deck.algo-rythmn.ai/pason-proposal', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('675f6651-6cb0-4476-945a-f1d7a532eefd', 'Blue Rock Law', 'Misc', 'dead', 'declined', NULL, 'not interested', NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('c3eb8dec-2a2e-4399-b212-6aca142513d8', 'Yoshi', 'Misc', 'low', NULL, NULL, 'I asked him about aquaculture in Japan.

Tabiji Kizuna deal outline', 'Features introduction: https://deck.algo-rythmn.ai/Tabiji-Kizuna-features.html
Web Address: https://tabi-1.algo-rythmn.ai/
Deck: https://deck.algo-rythmn.ai/Tabiji-Kizuna.html
Web Demo:               tabi-web-v3.mp4
Mobile Demo:              tabi -mobile.mp4', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('001d8de2-3bf8-4a94-869e-dc920ed597b3', 'Pharmacy (multiple)', 'Misc', 'high', 'active', 'both', 'ongoing

Guide to CQI+', 'Pricing: https://deck.algo-rythmn.ai/AlgoPharma-pricing

Feeback:
AlgoPharma_User Feedback & Requirements_Track_v1.0

Product Scope (External): https://deck.algo-rythmn.ai/algopharma-features-external

Web App: https://pharmacy.algo-rythmn.ai/

Product design: https://deck.algo-rythmn.ai/pharmacy-ai-template.html', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('22b1a652-07e1-420f-8720-497353e3e14d', 'Werklund Family Office', 'Misc', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('eb2929c4-f41c-4c3c-8fb9-aacf5adc3792', 'Maxxcann', 'Defunct', 'dead', 'active', NULL, 'Sent email Mar 8

Aug 26 2025', NULL, '2025-08-01');

-- CONTACTS (each with their own role and email)
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('8d2f6c67-551e-449f-8f2e-e23958a36f4a', 'bbaa18dc-a9c3-4145-b417-2f7de51af6ba', 'Kris Barker', 'COS to Nate Glubish', NULL, 'declined', 'Alberta Gov meeting notes');
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('aecc3947-b0be-4c72-a377-1b3ec5a250f2', 'bbaa18dc-a9c3-4145-b417-2f7de51af6ba', 'Hillary Faulkner', 'Executive Director, Privacy, Policy and Governance', NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('cead17a8-6b9d-4fff-bb0d-f30b12eb4664', 'bbaa18dc-a9c3-4145-b417-2f7de51af6ba', 'Jutta Rohrschach', 'Executive Director of Innovation Ecosystem', NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('3c608900-93b0-4e8b-818d-bb8774f426a4', 'cd17a832-4172-4a01-885c-1ce2b8f6ffd5', 'Kelvin Yau', NULL, NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('962ba98a-6840-414a-a110-ce3b1e86404e', 'cd17a832-4172-4a01-885c-1ce2b8f6ffd5', 'Mark Summers', NULL, NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('1c5de6a7-7ab5-4f36-90f9-34686019a35f', 'cd17a832-4172-4a01-885c-1ce2b8f6ffd5', 'Prashant Pandey', NULL, 'Prashant.Pandey@albertainnovates.ca', NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('248726fb-aaf1-4019-a71c-f43def448f8e', 'c695dcaf-f72c-4b88-bcf1-5cc8680c7196', 'Megan Croft', 'Liason for tech 2 farm', 'megan.croft@svgventures.com', 'in_progress', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('86cd110e-505b-4621-bc96-1f44236e883c', 'c695dcaf-f72c-4b88-bcf1-5cc8680c7196', 'Coleton Fisher', 'Academy Program Manager', 'coleton.fisher@svgventures.com', 'on_hold', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('cb278e3d-39c9-43db-9195-ed481e2bb508', '03007514-31c6-4e30-88b6-8d721e598d0c', 'Garson Law', NULL, NULL, 'active', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('37d7ebe4-dc23-418d-ba7a-27ef2dd56b1e', '5865cbd6-8656-4916-9cc9-102ee72226d6', 'Chris Paterson', 'Ag-focused', 'cpaterson@tallgrass.vc', 'active', 'Loves to chat, good contacts');
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('19e6dc85-ecc4-4001-8c7d-d7f11f96f262', '5865cbd6-8656-4916-9cc9-102ee72226d6', 'Wilson Acton', NULL, 'wacton@tallgrass.vc', NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('518e5f4f-383c-4e2e-86ea-22d346dc642b', '0874a874-76af-46c8-9fe9-0d5a097cd4c5', 'Joy Agnew', 'Instructor', NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('046eddc7-87d2-402b-b303-bc1fb1e23ccb', '0874a874-76af-46c8-9fe9-0d5a097cd4c5', 'Suby', NULL, 'Suby.Guhathakurta@rdpolytech.ca', NULL, 'Tonya- they cannot use the product, know-how is ok');
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('5e84b62b-d315-4656-9883-4030748dcea0', '0874a874-76af-46c8-9fe9-0d5a097cd4c5', 'Debjyoti', NULL, 'Debjyoti.Sen@rdpolytech.ca', 'on_hold', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('4e463dc3-1a60-4ce7-bb37-6eb1f3a639fa', '0874a874-76af-46c8-9fe9-0d5a097cd4c5', 'Lisa Verbinsky', NULL, NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('56aec21f-df57-4509-a93f-b566f5bba643', '0874a874-76af-46c8-9fe9-0d5a097cd4c5', 'Heather Dirks', 'health/informatics', NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('c4c26c5d-6d24-4c13-b240-39e3761ca66e', '0874a874-76af-46c8-9fe9-0d5a097cd4c5', 'Terri Granigan', 'health/informatics', NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('1825d712-7e02-4118-b88d-bb75c163faa1', '0874a874-76af-46c8-9fe9-0d5a097cd4c5', 'Tonya', 'grants', NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('7b94844f-a6d9-47e6-affd-53081b42281d', '0874a874-76af-46c8-9fe9-0d5a097cd4c5', 'Sandra MacDougall', NULL, NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('5e162e29-2dd3-46e9-ba9b-09e5177a6123', '0874a874-76af-46c8-9fe9-0d5a097cd4c5', 'Annika Dempsey', NULL, NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('7cc89e55-4844-4b71-bcc2-284b834ed59d', 'efc04dcd-2393-44d9-b190-acad24128854', 'Herman Simons', NULL, 'hsimons@oldscollege.ca', 'active', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('b54ee5e2-7d1f-4399-838e-cc995f397140', 'efc04dcd-2393-44d9-b190-acad24128854', 'Todd Ormann', NULL, NULL, 'in_progress', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('1892a272-bce6-435b-b1db-949ab632d236', 'efc04dcd-2393-44d9-b190-acad24128854', 'Atul Nayyar', NULL, 'anayyar@oldscollege.ca', 'active', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('8380c992-e04c-466d-b318-9ba270361525', '8e5279d3-b449-4205-89c0-d8d6770703fd', 'SeeHon Tung', NULL, NULL, 'active', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('26054281-7bff-423c-8a70-4a471922697e', 'fcab0828-7ca1-45ab-a9fc-748d191132d0', 'John Miniaci', 'Director/Operations', 'john.louis.miniaci@gmail.com', 'active', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('2392fcb6-4d61-458d-98c7-9d801079db87', 'a6bd6897-3d1f-4d95-9e53-018438ec6945', 'Kevin Frankowski', 'Founder', NULL, 'active', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('df8c1d69-a4e9-42fe-bb6d-3764ea21ca2c', '82350b53-3015-476d-b74e-678d098e239c', 'Tina Hoang', 'Tried to do a simple prediction model and got bogged down', NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('8f122625-d069-4756-a757-4b92b28c8e8a', 'af263e70-b79a-463a-872c-a4bb8b692556', 'Mohamad Yaghi', 'Vice President of AgExpert and Innovation Hub', 'mohamad.yaghi@fcc-fac.ca', NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('1270e78e-83b5-4438-b662-d23ce5bd736c', 'af263e70-b79a-463a-872c-a4bb8b692556', 'Darcy Herauf', NULL, 'Darcy.Herauf@fcc-fac.ca', 'declined', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('f3cb07fa-2912-4703-84ef-1d33e253a9d9', 'ee830fd2-ca11-479f-b2b6-4c5234653fc5', 'Jahmy Hindman', 'CTO', NULL, 'declined', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('53eec281-721d-4e91-b252-791cc382f763', 'ee830fd2-ca11-479f-b2b6-4c5234653fc5', 'Dan Leibfried', 'VP- Product Management Production & Precision Ag', NULL, 'declined', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('6297a5ae-1b45-404f-96b6-f1562ca22cf2', '84f07e26-a21c-4fa1-b8a6-4a29372f8453', 'Tim Hassinger', NULL, NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('c6834198-0d92-4f1c-a87f-b913b7432294', '84f07e26-a21c-4fa1-b8a6-4a29372f8453', 'Caleb Wieber', NULL, NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('bfddfcf5-830d-49e9-b67e-3449edb4aaa7', '84f07e26-a21c-4fa1-b8a6-4a29372f8453', 'Conner Schmidt', NULL, NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('560fc47c-0379-4861-8641-432350240215', '84f07e26-a21c-4fa1-b8a6-4a29372f8453', 'David Wilson', NULL, NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('069977ae-07fa-4651-aa1b-e91028d82412', '57d7f765-38d9-4fff-a043-8d938867ea0e', 'Daniel McCann', 'CEO', 'dan@precision.ai', 'active', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('c1553d71-7325-4818-87ed-d0fcff1778a5', '4f11caea-cda4-41dc-b769-ff73cf423365', 'Warren Bills', 'National Leader Agronomy Services', NULL, 'declined', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('8f28feba-8609-43fc-9627-ef2de675eca9', '384aa5d1-4fca-40e1-abc4-8cfecd5b708a', 'Kevin Pattison', NULL, NULL, 'active', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('e140a842-ecdd-402f-b181-6b2ec373d7d3', '71cd2123-f498-43d1-a21b-d6f06124b0b4', 'Bob Barnhart', 'CIO', 'bob.barnhart@nutrien.com', NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('d73045f6-9666-497f-9d3d-4cb7a298f396', '71cd2123-f498-43d1-a21b-d6f06124b0b4', 'Russ Girling', 'CEO', 'Russ.Girling@nutrien.com', NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('c10fa1d6-afee-43f0-bb5f-1c50dd2d1d1c', '71f12353-2e4d-49eb-b827-a36c00202d6a', 'Ryan Immerkar', 'Chris Patterson', 'rsiagricoaching@gmail.com', NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('55a72ce0-e38d-4ef8-ab5d-0ff0fa1fde4a', '3baca998-9f11-4d23-8d31-a14f750a4da9', 'Robert Saik', 'Chris Patterson', 'rob@robertsaik.com', 'active', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('06eb3eeb-2439-485f-8c3b-f87e59bd2a67', '679c3f7d-209d-40c7-8712-530afdafa23b', 'Jay Kinnaird', 'VP of solutions', NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('7d8329d4-443c-4a8d-b5a2-e6351835c2fc', '679c3f7d-209d-40c7-8712-530afdafa23b', 'Manoj Regmi', NULL, NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('4acbbe8b-c6b3-4ffa-93bd-1d45c8844167', '679c3f7d-209d-40c7-8712-530afdafa23b', 'Siva Avvaru', NULL, NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('b808e5b1-3e68-435c-9fe3-d88530f50429', 'a98f9bf5-b676-42ad-9c53-8e29ccd6c319', 'Andrew Pylypchuk', 'Biz Dev Director', 'andrew.pylypchuk@earthdaily.com', 'active', 'not looking for analytics');
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('b37f065b-062a-4a1d-a022-0ad6decec208', 'ba53460b-037f-483d-823e-a06ffad9435e', 'Bence Rizo', 'Client Success', NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('e6b93728-0eda-4f09-808a-051af8e58b98', '48437f35-73a0-4215-b310-df2f1d7b809a', 'Kolby Nichol', 'Director', NULL, 'active', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('222f1366-56e1-4a38-87fd-6394be61ae51', '39084368-c0f5-4fe6-8f62-99335e3b4b86', 'Adam Newstead', 'Dig Ag Manager', NULL, 'active', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('135651c2-b63a-48ad-a1c9-b7a584814525', '286dd339-93ed-4142-8f32-feec2d35e432', 'Tom Mix', 'attorney, ex head of counsel for nutrien', 'tmix@mccarthy.ca', NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('52a0f263-e3c8-45ce-80a8-a6e0642a6132', 'b4caa821-1327-4393-b16e-f592fdb57de4', 'Alex Melnitchouck', 'Also on the board at DigiFarm', 'agintelmax@gmail.com', 'active', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('6b4f75c7-eaf6-4093-9e22-7a59ca33c8f2', '34b78590-8e06-48f3-9c4e-8fbaecaa8449', 'Alex M/Warren Bills/Chris Paterson', NULL, NULL, 'active', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('147b8103-eb9d-443c-acca-909f24da0cba', '1eeaaf65-055e-44d7-b5a0-b6526f1c6f68', 'Travis Lebouf', 'Sales Director', NULL, 'active', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('cadd5674-496d-4ca3-8d07-569382b5b3fa', 'd8bbb52e-fbd5-46d4-8563-b6e8789b62f7', 'Mike Dahlstedt', 'CEO', 'mike@drivehockey.com', NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('706c090e-4508-439d-9d82-dd198af465cc', 'dcf13ade-6277-458d-b45f-6af55ba385a8', 'Ron Johnson', 'Owner', NULL, 'active', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('16a003df-6c8c-43d0-a071-ff4da989d4fe', 'fe67b987-7640-41ee-808d-1f5c6afb74e0', 'Connor Rankin', NULL, NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('c6e1660d-0534-4b0a-bc08-1cad2d20ad95', '0ca4610b-7176-4745-9acf-8367f014f708', 'Kevin Dawson', NULL, 'Kevin.Dawson@aeso.ca', 'declined', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('c3eebdbb-1fd7-4aa5-98b9-3ebefdfb9a46', '4b7db827-7b49-446d-a229-a662d6f4e5ab', 'Troy Noad', NULL, NULL, 'declined', 'Only use one call center for 20K CAD per year.  

NO GO unless we want to scale a model and/or use this as a relationship builder for this client.');
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('7107401e-9322-4ede-a629-f12c7842e978', '4e7b561c-508b-4e6b-8a37-6056e947e77b', 'Al Krawchuk', NULL, NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('7609eab7-d10f-4fb8-b141-c26c741da8e0', '675f6651-6cb0-4476-945a-f1d7a532eefd', 'Tom O''Leary', NULL, NULL, 'declined', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('33c89f7b-8c3a-49bc-90fe-5e976bfb4c50', 'c3eb8dec-2a2e-4399-b212-6aca142513d8', 'Yoshi Tateyama', NULL, NULL, NULL, 'Tabiji Kizuna deal outline');
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('140a0ce1-08ed-4a2e-9c80-392fefe1836d', '001d8de2-3bf8-4a94-869e-dc920ed597b3', 'Galvin Ding', NULL, NULL, 'active', 'Guide to CQI+');
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('10a3aca7-bfd8-431d-9549-8242e424dc97', '001d8de2-3bf8-4a94-869e-dc920ed597b3', 'Will Leung', NULL, NULL, 'active', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('81a3adfa-6b96-4a12-9b6a-57e83fcec6c7', '22b1a652-07e1-420f-8720-497353e3e14d', 'David Werklund', NULL, 'david@werklund.com', NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('5acedf2b-05e0-4b2b-9462-fc182ecb79d6', '22b1a652-07e1-420f-8720-497353e3e14d', 'Austin Jamieson', NULL, NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('c9729924-d4d8-43db-8ef1-8e09b75bbddb', 'eb2929c4-f41c-4c3c-8fb9-aacf5adc3792', 'John Dewar', 'insurance industry vet', 'johnd@maxxaminsurance.com', 'active', 'Aug 26 2025');

-- MEETINGS
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('40aedee2-6781-4607-ad39-561403768e2b', '03007514-31c6-4e30-88b6-8d721e598d0c', 'Garson/Algo-Rythmn Intro/CAAIN - 2026/04/15 07:52 PDT - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('6bb84f36-cc75-4e1d-989c-9ce5ac1bf16d', 'efc04dcd-2393-44d9-b190-acad24128854', 'Algo Rythmn x Olds College - 2025/10/01 16:17 MDT - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('364ab36d-4a3a-4fbe-8b0e-a0c8acd209f8', '8e5279d3-b449-4205-89c0-d8d6770703fd', 'SeeHon/Algo-Rythmn Intro May 2026 - 2026/05/13 08:27 PDT - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('3d23658b-cc49-4c35-88ee-e8863eb02b5e', 'fcab0828-7ca1-45ab-a9fc-748d191132d0', 'John Miniaci/Algo-Ryhtmn Intro - 2026/03/12 08:54 PDT - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('af3ec8dc-e01e-49eb-be55-7c884fb24a85', 'a6bd6897-3d1f-4d95-9e53-018438ec6945', 'Ox+Plow/Algo-Rythmn Intro - 2026/04/27 15:56 PDT - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('5f473112-4a0d-48e4-955a-17ab15e0ebec', 'af263e70-b79a-463a-872c-a4bb8b692556', 'FCC/Mohamad Yaghi prep notes', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('f32157ca-c6fc-4eca-9304-5241d127e043', '57d7f765-38d9-4fff-a043-8d938867ea0e', 'PrecisionAI/Algo-Rythmn Feb 2026 - 2026/02/27 09:50 PST - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('572bd520-11b6-4436-9345-a051f48ce70e', '4f11caea-cda4-41dc-b769-ff73cf423365', 'MNP/Warren Bills/Algo-Rythmn introduction - 2026/02/27 11:07 PST - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('6d0bbc2a-0efb-46ee-8e8c-7214f41e595d', '384aa5d1-4fca-40e1-abc4-8cfecd5b708a', 'Pattison/Algo-Rythmn May 2026 - 2026/05/26 10:22 PDT - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('af6d188a-2dad-42e9-9688-f2922afb7744', '71f12353-2e4d-49eb-b827-a36c00202d6a', 'New Era Ag/Algo Mar 2026 - 2026/03/06 08:41 PST - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('e24e9f09-d640-41a7-8f37-847c2179552d', '3baca998-9f11-4d23-8d31-a14f750a4da9', 'Algo-Rythmn /AGvisorPRO Apr 2026 - 2026/04/16 11:55 PDT - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('d04ff19b-4225-4af7-8db4-112135c5d28b', '679c3f7d-209d-40c7-8712-530afdafa23b', 'Corvian/Algo-Rythmn intro - 2026/02/10 11:20 PST - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('6d8b556a-c86d-4adc-be84-f7684a30ee4d', 'a98f9bf5-b676-42ad-9c53-8e29ccd6c319', 'https://docs.google.com/document/d/1qJ05HZMFq4-bFwIksayeuwr9EAi1BCSqxvAAfT8JB-8/edit?tab=t.ontln9bfn5b', 'https://docs.google.com/document/d/1qJ05HZMFq4-bFwIksayeuwr9EAi1BCSqxvAAfT8JB-8/edit?tab=t.ontln9bfn5b', NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('6a2bd28b-3e50-414f-944b-1c712a9c4b88', 'ba53460b-037f-483d-823e-a06ffad9435e', 'DigiFarm/Algo-Rythmn intro - 2026/04/28 21:50 PDT - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('0956b3a1-b040-488b-b770-741267f2c326', '48437f35-73a0-4215-b310-df2f1d7b809a', 'Telus/Algo-Rythmn intro  - 2026/04/22 10:47 PDT - Recording', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('2ae1bef2-87b3-4f64-888a-b3c43bb41f96', '39084368-c0f5-4fe6-8f62-99335e3b4b86', 'FCL/Algo- Rythmn intro - 2026/05/13 09:58 PDT - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('807fdfa9-01a5-4118-833a-5da8c22c9a9d', '286dd339-93ed-4142-8f32-feec2d35e432', 'Tom Mix/Algo-Rythmn May 1 2026 - 2026/05/04 19:05 PDT - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('6c8717d3-84b1-4962-9319-71f32afff973', 'b4caa821-1327-4393-b16e-f592fdb57de4', 'Alex/Algo-Rythmn intro  - 2026/04/16 08:50 PDT - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('f5a32ab1-0d87-4010-8314-6d9498e0dea9', '34b78590-8e06-48f3-9c4e-8fbaecaa8449', 'Doug MacKay/Algo-Rythmn intro - 2026/04/20 09:52 PDT - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('4124f831-399c-4502-baef-b86460d89ec9', '76994611-9cfe-429c-9157-a24789c7a94f', 'Felippe/Algo-Rythmn intro - 2026/04/21 07:50 PDT - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('e4f777df-ef8c-43b1-8ef6-6696d1b1311e', 'fe67b987-7640-41ee-808d-1f5c6afb74e0', 'Meeting (Calgary Flames) - 2025/10/03 09:27 HKT - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('bf8f6deb-5cba-4911-bcff-b0121337e16d', '0ca4610b-7176-4745-9acf-8367f014f708', 'AESO/Algo-Rythmn intro - 2025/12/16 06:42 PST - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('0819df67-f0b1-4cb1-9874-22066ddf47a8', '4b7db827-7b49-446d-a229-a662d6f4e5ab', 'Apex/Algo-Rythmn Apr 2026 - 2026/04/30 09:55 PDT - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('0649527a-da2a-45b6-a2ee-a3085f888ac8', '4e7b561c-508b-4e6b-8a37-6056e947e77b', 'Cutting Edge/Algo-Rythmn intro - 2026/01/23 08:57 PST - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('ac28e169-05de-4495-a2c3-f6329da7be30', '001d8de2-3bf8-4a94-869e-dc920ed597b3', 'Script Pharmacy - CQI+ Requirement NIDR Submission MEETING NOTES', NULL, NULL);

-- RESOURCES
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('719284ae-bad1-4e87-b047-c0be588d4050', '03007514-31c6-4e30-88b6-8d721e598d0c', 'https://mail.google.com/mail/u/0/#sent/QgrcJHshbMKrCcxkVbdGSxfLPcHXXffwrmQ', 'other', 'https://mail.google.com/mail/u/0/#sent/QgrcJHshbMKrCcxkVbdGSxfLPcHXXffwrmQ');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('7c2391f5-0228-43fa-9596-bb8a90c9b770', '5865cbd6-8656-4916-9cc9-102ee72226d6', 'https://deck.algo-rythmn.ai/AgroIntel', 'deck', 'https://deck.algo-rythmn.ai/AgroIntel');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('81174418-88a3-4dba-84e9-e895251a4710', 'efc04dcd-2393-44d9-b190-acad24128854', 'https://project2604.algo-rythmn.ai/', 'demo', 'https://project2604.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('678251cf-0ebd-49ef-807d-c483ddb0f1be', '82350b53-3015-476d-b74e-678d098e239c', 'https://docs.google.com/document/d/1YJqvs_luxZ8016DZ8ofMRN0OMBIIvhhX/edit', 'document', 'https://docs.google.com/document/d/1YJqvs_luxZ8016DZ8ofMRN0OMBIIvhhX/edit');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('f13a5465-5014-4f56-abcf-416342d31c9a', '82350b53-3015-476d-b74e-678d098e239c', 'https://deck.algo-rythmn.ai/yield-ice', 'deck', 'https://deck.algo-rythmn.ai/yield-ice');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('e29caef7-d2b0-4fda-9aa9-32020bc28f8c', '57d7f765-38d9-4fff-a043-8d938867ea0e', 'https://deck.algo-rythmn.ai/precision-ai-proposal', 'deck', 'https://deck.algo-rythmn.ai/precision-ai-proposal');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('ec5518b0-a45b-4903-8919-b0520e92358f', '4f11caea-cda4-41dc-b769-ff73cf423365', 'http://algomindpro.algo-rythmn.ai/', 'other', 'http://algomindpro.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('86a28f00-cba2-4740-82ac-42b087397600', '4f11caea-cda4-41dc-b769-ff73cf423365', 'https://www.mnp.ca/en/personnel/warren-bills', 'other', 'https://www.mnp.ca/en/personnel/warren-bills');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('453f0883-3c53-48ad-8a0c-1ea40ab3b66c', '71f12353-2e4d-49eb-b827-a36c00202d6a', 'https://deck.algo-rythmn.ai/new-era-ag-ai-pricing', 'deck', 'https://deck.algo-rythmn.ai/new-era-ag-ai-pricing');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('1442c0e0-33d6-4f71-bcdd-f7bf5a6c291b', '71f12353-2e4d-49eb-b827-a36c00202d6a', 'https://newera.algo-rythmn.ai/', 'other', 'https://newera.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('0d75d243-7385-487a-90a2-d2c02b38cf81', '71f12353-2e4d-49eb-b827-a36c00202d6a', 'https://new-era-file-upload.algo-rythmn.ai/', 'other', 'https://new-era-file-upload.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('68d32eb4-5064-4c55-933b-43b6d4a4dac5', '71f12353-2e4d-49eb-b827-a36c00202d6a', 'https://deck.algo-rythmn.ai/soil-intelligence.html', 'deck', 'https://deck.algo-rythmn.ai/soil-intelligence.html');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('1e9a5c75-81bd-443f-ba02-fcce0fc4b276', '71f12353-2e4d-49eb-b827-a36c00202d6a', 'https://deck.algo-rythmn.ai/plant-triangle-framework.html', 'deck', 'https://deck.algo-rythmn.ai/plant-triangle-framework.html');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('209ceed5-ae98-4291-ac4f-066ea8bc597c', '71f12353-2e4d-49eb-b827-a36c00202d6a', 'https://project2602.algo-rythmn.ai/', 'demo', 'https://project2602.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('a1688b31-d3ec-4aab-bfbc-ae80b3bbfaf2', '71f12353-2e4d-49eb-b827-a36c00202d6a', 'https://project2503.algo-rythmn.ai/', 'demo', 'https://project2503.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('de4bc8a0-f8df-4353-916c-a6c43051e9b1', '71f12353-2e4d-49eb-b827-a36c00202d6a', 'https://deck.algo-rythmn.ai/NewEraAg-TrialData.html', 'deck', 'https://deck.algo-rythmn.ai/NewEraAg-TrialData.html');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('73377f66-e088-460a-b64a-ea9a38822aa4', '679c3f7d-209d-40c7-8712-530afdafa23b', 'https://deck.algo-rythmn.ai/AlgoMind.html', 'deck', 'https://deck.algo-rythmn.ai/AlgoMind.html');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('ba1d64ee-f0a2-47d3-9cd3-3ceb9f35cb41', '679c3f7d-209d-40c7-8712-530afdafa23b', 'https://corvian.com/', 'other', 'https://corvian.com/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('e813db0e-68fe-4dec-ba38-5f28a241138b', 'a98f9bf5-b676-42ad-9c53-8e29ccd6c319', 'https://project2612.algo-rythmn.ai/', 'demo', 'https://project2612.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('94ee373b-e542-45bb-9028-16d95d02cf98', 'a98f9bf5-b676-42ad-9c53-8e29ccd6c319', 'http://deck.algo-rythmn.ai/earthdaily-ai-proposal', 'deck', 'http://deck.algo-rythmn.ai/earthdaily-ai-proposal');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('4b97641f-c9d8-4766-82d4-8a29d2b799c4', 'a98f9bf5-b676-42ad-9c53-8e29ccd6c319', 'http://deck.algo-rythmn.ai/earthdaily-ai', 'deck', 'http://deck.algo-rythmn.ai/earthdaily-ai');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('c27adf72-df34-40dc-9d75-2facd067a4f7', 'a98f9bf5-b676-42ad-9c53-8e29ccd6c319', 'https://algomindpro-earthdaily.algo-rythmn.ai/', 'other', 'https://algomindpro-earthdaily.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('0cceb1f7-bbe2-41a2-aa41-3b055e5d54d5', '286dd339-93ed-4142-8f32-feec2d35e432', 'https://deck.algo-rythmn.ai/doc-ai-mining', 'deck', 'https://deck.algo-rythmn.ai/doc-ai-mining');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('36d6356a-ac68-42a6-ba10-b567a80e4f14', '286dd339-93ed-4142-8f32-feec2d35e432', 'https://opsedge.algo-rythmn.ai/', 'other', 'https://opsedge.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('a5b0fb0c-ac45-4433-9830-eddad3e82737', '286dd339-93ed-4142-8f32-feec2d35e432', 'https://deck.algo-rythmn.ai/potash-mining-operations.html', 'deck', 'https://deck.algo-rythmn.ai/potash-mining-operations.html');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('13b69d7a-b968-4f55-a371-a13ccd82abca', '286dd339-93ed-4142-8f32-feec2d35e432', 'http://testbed.algo-rythmn.ai/', 'other', 'http://testbed.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('b1beb873-340d-4e2b-a930-d0bbcac73ddc', '34b78590-8e06-48f3-9c4e-8fbaecaa8449', 'https://deck.algo-rythmn.ai/drone-team', 'deck', 'https://deck.algo-rythmn.ai/drone-team');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('7ac0a777-df0e-4f9a-a91c-1ffa77ec6233', '34b78590-8e06-48f3-9c4e-8fbaecaa8449', 'https://deck.algo-rythmn.ai/drone-report', 'deck', 'https://deck.algo-rythmn.ai/drone-report');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('ea0d08b1-8d18-4380-a473-3d8534c0ce0a', '76994611-9cfe-429c-9157-a24789c7a94f', 'https://deck.algo-rythmn.ai/coop-member-intelligence', 'deck', 'https://deck.algo-rythmn.ai/coop-member-intelligence');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('177f12b5-a20b-4ea5-8d2f-5eea8672d98e', '76994611-9cfe-429c-9157-a24789c7a94f', 'https://deck.algo-rythmn.ai/Brazil-Plays-Opportunity', 'deck', 'https://deck.algo-rythmn.ai/Brazil-Plays-Opportunity');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('b3cc7aef-f17f-4587-ad5c-ee48c153f2b8', 'd8bbb52e-fbd5-46d4-8563-b6e8789b62f7', 'https://deck.algo-rythmn.ai/drive-hockey-ai-agent.html', 'deck', 'https://deck.algo-rythmn.ai/drive-hockey-ai-agent.html');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('35487278-38c2-44e2-b7a2-0faa0acdd7e0', 'dcf13ade-6277-458d-b45f-6af55ba385a8', 'https://project2606.algo-rythmn.ai/', 'demo', 'https://project2606.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('973e0ab0-00f2-4552-85c5-b1d1044bfe9b', 'dcf13ade-6277-458d-b45f-6af55ba385a8', 'https://project2605.algo-rythmn.ai/', 'demo', 'https://project2605.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('d677a967-e223-4414-b118-764ea11220c7', 'fe67b987-7640-41ee-808d-1f5c6afb74e0', 'https://workbench.algo-rythmn.ai/', 'other', 'https://workbench.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('2cbca932-0493-49a7-954d-fdcea35b2f49', '4b7db827-7b49-446d-a229-a662d6f4e5ab', 'http://testbed.algo-rythmn.ai/', 'other', 'http://testbed.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('933f8c8e-e02e-402e-9b4e-2ecb8631f179', '4b7db827-7b49-446d-a229-a662d6f4e5ab', 'https://deck.algo-rythmn.ai/potash-mining-operations.html', 'deck', 'https://deck.algo-rythmn.ai/potash-mining-operations.html');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('7b191970-2693-432a-93f5-10e64383ac58', '4e7b561c-508b-4e6b-8a37-6056e947e77b', 'https://deck.algo-rythmn.ai/prospecting-ai', 'deck', 'https://deck.algo-rythmn.ai/prospecting-ai');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('d0dce0eb-9c23-4904-af08-1d53e9750e34', '4e7b561c-508b-4e6b-8a37-6056e947e77b', 'https://project2611.algo-rythmn.ai/', 'demo', 'https://project2611.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('016d3fff-7b54-4190-8b08-df0842753011', '4e7b561c-508b-4e6b-8a37-6056e947e77b', 'https://deck.algo-rythmn.ai/chemical-sourcing', 'deck', 'https://deck.algo-rythmn.ai/chemical-sourcing');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('a2ca2b90-1e90-43ca-8325-400acc94a480', '4e7b561c-508b-4e6b-8a37-6056e947e77b', 'https://deck.algo-rythmn.ai/ai-drilling-revolution-lite.html', 'deck', 'https://deck.algo-rythmn.ai/ai-drilling-revolution-lite.html');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('0a5f9608-109f-432e-a6d8-9d5aea431c4e', '4e7b561c-508b-4e6b-8a37-6056e947e77b', 'https://deck.algo-rythmn.ai/ai-drilling-revolution.html', 'deck', 'https://deck.algo-rythmn.ai/ai-drilling-revolution.html');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('b129eea5-613c-454e-a8e5-bad309ada552', '4e7b561c-508b-4e6b-8a37-6056e947e77b', 'http://cuttingedge-energy.com/', 'other', 'http://cuttingedge-energy.com/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('f972d516-f349-45e0-867f-3a9b4d67eeec', '364ce147-9c57-42a7-9b33-b3f986265236', 'https://deck.algo-rythmn.ai/pason-proposal', 'deck', 'https://deck.algo-rythmn.ai/pason-proposal');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('0b8d7573-ad57-4c5c-872a-e386fdc4ad1f', 'c3eb8dec-2a2e-4399-b212-6aca142513d8', 'https://deck.algo-rythmn.ai/Tabiji-Kizuna-features.html', 'deck', 'https://deck.algo-rythmn.ai/Tabiji-Kizuna-features.html');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('93c4c40b-6c6d-4ab5-b40a-f5b6a0ab5cd3', 'c3eb8dec-2a2e-4399-b212-6aca142513d8', 'https://tabi-1.algo-rythmn.ai/', 'other', 'https://tabi-1.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('45b0938f-e834-4638-91a4-68215a5537b8', 'c3eb8dec-2a2e-4399-b212-6aca142513d8', 'https://deck.algo-rythmn.ai/Tabiji-Kizuna.html', 'deck', 'https://deck.algo-rythmn.ai/Tabiji-Kizuna.html');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('f09e00a5-d6f2-42cd-8e08-1ad83b48ca96', '001d8de2-3bf8-4a94-869e-dc920ed597b3', 'https://deck.algo-rythmn.ai/AlgoPharma-pricing', 'deck', 'https://deck.algo-rythmn.ai/AlgoPharma-pricing');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('d64e4651-0b65-4415-82ed-fed8628da2c6', '001d8de2-3bf8-4a94-869e-dc920ed597b3', 'https://deck.algo-rythmn.ai/algopharma-features-external', 'deck', 'https://deck.algo-rythmn.ai/algopharma-features-external');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('ff9fd32d-b7af-4d91-8fef-111ba2b02f43', '001d8de2-3bf8-4a94-869e-dc920ed597b3', 'https://pharmacy.algo-rythmn.ai/', 'other', 'https://pharmacy.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('b9a420b8-e599-4e42-a8e8-bdedacbf95f1', '001d8de2-3bf8-4a94-869e-dc920ed597b3', 'https://deck.algo-rythmn.ai/pharmacy-ai-template.html', 'deck', 'https://deck.algo-rythmn.ai/pharmacy-ai-template.html');

-- RELATIONSHIPS (referral chain)
INSERT INTO relationships (id, to_company_id, relationship_type, note) VALUES ('b59d5204-c6ea-44a4-af0b-8d78216c4f3c', 'bbaa18dc-a9c3-4145-b417-2f7de51af6ba', 'introduced_by', 'Source: Rob Anderson');
INSERT INTO relationships (id, to_company_id, relationship_type, note) VALUES ('2963d3f0-e60e-443c-9feb-0ff9eaaecb98', 'c695dcaf-f72c-4b88-bcf1-5cc8680c7196', 'introduced_by', 'Source: Prashant Pandey');
INSERT INTO relationships (id, to_company_id, relationship_type, note) VALUES ('77d65fed-a44b-4cac-adb2-c795f79e0abe', '5865cbd6-8656-4916-9cc9-102ee72226d6', 'introduced_by', 'Source: David Werklund');
INSERT INTO relationships (id, to_company_id, relationship_type, note) VALUES ('922f46d5-86bc-42fe-88e2-a412aa5e601c', 'af263e70-b79a-463a-872c-a4bb8b692556', 'introduced_by', 'Source: Louis at FCC/cold at linkedin');
INSERT INTO relationships (id, to_company_id, relationship_type, note) VALUES ('f61edbe8-4fc5-4c5c-b9c8-f837762a275b', '57d7f765-38d9-4fff-a043-8d938867ea0e', 'introduced_by', 'Source: Tall Grass VC');
INSERT INTO relationships (id, to_company_id, relationship_type, note) VALUES ('87dc2ae4-37b4-4bcb-918a-39de253ab9b7', '4f11caea-cda4-41dc-b769-ff73cf423365', 'introduced_by', 'Source: Chris Paterson');
INSERT INTO relationships (id, to_company_id, relationship_type, note) VALUES ('1c0ec904-25f8-4538-8d21-7f144ce46227', '679c3f7d-209d-40c7-8712-530afdafa23b', 'introduced_by', 'Source: Todd Ormann');
INSERT INTO relationships (id, to_company_id, relationship_type, note) VALUES ('983502af-7ce4-44ac-b23f-634b82f1b2c4', '34b78590-8e06-48f3-9c4e-8fbaecaa8449', 'introduced_by', 'Source: Todd Ormann');
INSERT INTO relationships (id, to_company_id, relationship_type, note) VALUES ('5f3f51a4-de02-43ea-9118-fb6dbd276744', '76994611-9cfe-429c-9157-a24789c7a94f', 'introduced_by', 'Source: Todd Ormann');
INSERT INTO relationships (id, to_company_id, relationship_type, note) VALUES ('351cf281-5d43-4744-9569-68529795d4bd', 'd8bbb52e-fbd5-46d4-8563-b6e8789b62f7', 'introduced_by', 'Source: ron johnson');
INSERT INTO relationships (id, to_company_id, relationship_type, note) VALUES ('b658ddaf-2782-4440-81a7-819898c9aa7f', '4b7db827-7b49-446d-a229-a662d6f4e5ab', 'introduced_by', 'Source: Kenny Cheung');
INSERT INTO relationships (id, to_company_id, relationship_type, note) VALUES ('29a694df-1919-4301-aa76-6f428d5018bc', '364ce147-9c57-42a7-9b33-b3f986265236', 'introduced_by', 'Source: See Hon Tung, PE guy, works with Werklund');
INSERT INTO relationships (id, to_company_id, relationship_type, note) VALUES ('55ad64c2-9164-4ee2-99dd-5c321a9275d4', 'eb2929c4-f41c-4c3c-8fb9-aacf5adc3792', 'introduced_by', 'Source: Kenny');

COMMIT;