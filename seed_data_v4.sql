-- Migration v4 — per-contact referrals
BEGIN;
DELETE FROM relationships; DELETE FROM resources; DELETE FROM meetings;
DELETE FROM contacts; DELETE FROM companies;

-- COMPANIES
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('b8f6cf0e-e54b-4881-a3fc-9fa5d661869d', 'Alberta Government', 'Government', NULL, 'declined', 'investor', 'They pushed us off to Alberta Innovates

Alberta Gov meeting notes', NULL, '2025-08-19');
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('5c06ca5b-584a-4fbc-90dd-f144b1420689', 'Alberta Innovates', 'Government', NULL, NULL, 'investor', NULL, NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('592aa10a-48f6-4798-94a1-8140df686619', 'SVG Ventures', 'Government', NULL, 'in_progress', 'investor', 'connected us to Coleton', NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('9f63568d-c437-4fc7-ad7c-e472735e8715', 'CAAIN', 'Government', NULL, 'active', 'investor', 'Next step is applying on website here (program guide and application are at bottom of page)

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
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('f759dca9-d0e4-4a9d-9046-2c7b11b9ff53', 'Tall Grass Ventures', 'Funding', NULL, 'active', 'investor', 'Sent MNP deck Mar 9- he liked it, thinks they need it at MNP, thinks it''s politics

Loves to chat, good contacts', 'Deck: https://deck.algo-rythmn.ai/AgroIntel', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('d1debba5-f01a-46c7-86fb-9bc6db5ab7f0', 'Graphite', 'Funding', NULL, NULL, 'investor', NULL, NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('99a067b4-f365-4576-9995-ff1bba32a592', 'AFSC', 'Funding', 'medium', NULL, 'investor', NULL, NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('42ed86f0-ea5a-4fc2-8f47-1406631b0da9', 'Red Deer Polytechnic', 'Academia', 'low', NULL, NULL, NULL, NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('2dbe6394-5c34-4df8-9a7f-6323a56a3734', 'Olds College', 'Academia', NULL, 'active', NULL, 'met, talking to todd before responding back, need to get irap advisor', 'Data requirement: project_canola_olds

Demo: https://project2604.algo-rythmn.ai/', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('27c6e831-cd9a-4d37-944e-0ed2f312e48c', 'Bridgewerk', 'Finance', NULL, 'active', 'end_user', 'met, discussed a golf course grass company crossing into ag', NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('c264e454-67f7-49cc-8c22-a4debc4ab654', 'ATB Financial', 'Finance', NULL, 'active', 'end_user', 'Sent John Algomind demo,Hockey demo, ageinstein on Mar 18, along with proposal

Checking in during July', NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('3fdec6cd-6389-473a-a76a-786e6e2ad3de', 'Ox and Plow', 'Finance', 'low', 'active', 'end_user', 'Met, discussing viability of giving them a market analysis private GPT

Meeting with them again, they didn''t bite on 100-200K', NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('2029a373-1f03-4043-8bfa-d452182229ba', 'I.C.E.', 'Finance', 'medium', 'active', 'end_user', 'Meeting may 27th

Set expectation of making proposal in August to submit to Sept budgeting

If they need something more firm ask for money for proof of concept

Asking questions 

Ask if we can build up a proposal for August

ICE Meeting Summary May 2026', 'Cheatsheet (for internal): https://docs.google.com/document/d/1YJqvs_luxZ8016DZ8ofMRN0OMBIIvhhX/edit
Pitch Deck (for external): https://deck.algo-rythmn.ai/yield-ice', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('b4730d6e-6c64-478f-ac3b-c1b864224489', 'FCC', 'Insurance', NULL, NULL, 'end_user', NULL, NULL, '2025-08-08');
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('c63c8e71-ce5e-4042-9c1c-b6999977b026', 'John Deere', 'Agriculture', NULL, 'declined', 'end_user', 'Messaged Jahmy for intro from Kenny''s LinkedIn, Kenny followed up, no response

Connected with a few people, followed up', NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('2b77ff23-fbc3-4c9b-80fa-926a9bbf9e55', 'IntellinAir', 'Agriculture', 'on_hold', NULL, 'end_user', 'Data Discussion next', NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('42f10097-2b38-4cd8-b17a-faa539a0173e', 'Precision.ai', 'Agriculture', 'medium', 'active', 'end_user', 'Meeting May 29th', 'Deck: https://deck.algo-rythmn.ai/precision-ai-proposal
Proposal: Algo-Rythmn_PrecisionAI_Business Proposal_v1.0.docx', '2025-07-02');
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('2a591147-fa61-42b0-a999-ceae2643ffdf', 'MNP', 'Agriculture', 'dead', 'declined', 'end_user', 'Warren was not interested', 'Demo app: http://algomindpro.algo-rythmn.ai/', '2025-09-07');
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('b259d65d-98a1-4f55-af8c-0827e3d4d1d5', 'Pattison Technologies Inc.', 'Agriculture', 'medium', 'active', 'end_user', 'finished the db, it''s ready for AI, schedule in April 2026
.
We met and shared demos, need to see if the small scale works for us somehow LET CAAIN SUBSIDIZE

Also discussed introing at Trimble', NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('68d2ee6f-1c9b-420c-a6c1-66417fdb6d4e', 'Nutrien', 'Agriculture', 'low', NULL, 'end_user', 'Exploring contacts at LinkedIn', NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('998b926b-27c6-42e8-8f38-bfdbeee2f095', 'New Era Ag Technologies', 'Agriculture', 'medium', NULL, 'end_user', 'Dennis broke his leg, Kenny had a conversation with Ryan.  Ryan has new idea which we will hear next week.

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
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('3eea928e-025a-494f-85d3-21921a170292', 'AGVISOR PRO', 'Agriculture', 'low', 'active', 'end_user', 'met apr 16th', 'quick questions for agvisorpro', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('14552457-b5aa-4389-9822-3031fe9557b2', 'Corvian', 'Agriculture', 'low', NULL, 'end_user', 'Manoj responded on May 22nd saying they''re doing internal vetting of tools', 'Demo: supporting_document_2026.02.02
Deck for v2.0: https://deck.algo-rythmn.ai/AlgoMind.html', '2026-01-01');
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('e482cd4e-804d-4283-aea5-f989bcc5a909', 'Earth Daily', 'Agriculture', 'medium', 'active', 'end_user', 'Met Andrew who was enthusiastic about partnering with us, he''s intro-ing to their head of analytics who will be a harder sell

Meeting May 28th. 

We''re prepared for the meeting

not looking for analytics', 'KW''s demo: https://project2612.algo-rythmn.ai/
New deck: http://deck.algo-rythmn.ai/earthdaily-ai-proposal

Deck: http://deck.algo-rythmn.ai/earthdaily-ai
YLex''s Demo: https://algomindpro-earthdaily.algo-rythmn.ai/', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('3f92c40e-a615-4e18-84da-f3a247be49cf', 'Digifarm', 'Agriculture', NULL, NULL, 'end_user', 'Get low res data and include it into our financial portfolio model for corn/soy/canola FOR ICE

Approach them for limited partnership, end user would be their customers.

Also extend to risk/insurers

Remember global coverage, but high res data not a driver', NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('e2f84cfe-53b7-4018-a185-9803088220e8', 'TELUS AG/Decisive', 'Agriculture', 'medium', 'active', 'end_user', 'Met, asked for the scope of their data so that we can pinpoint pilot proposals', NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('8b6714c3-4b55-4bb9-8686-b983aa55a718', 'FCL (Federated Co-ops Limited)', 'Agriculture', 'low', 'active', NULL, 'Met May 13th, scheduling followup', NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('bb32f2db-83d0-4e6f-84f9-25e4fd6ddc95', 'Tom Mix', 'Ag Warm Lead Generators', 'low', NULL, 'connector', 'Emailed the document intelligence decks', 'Specific Deck: https://deck.algo-rythmn.ai/doc-ai-mining


Web app: https://opsedge.algo-rythmn.ai/

Deck for Mosaic: https://deck.algo-rythmn.ai/potash-mining-operations.html

Demo: http://testbed.algo-rythmn.ai/', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('ad8dd38d-1b14-4de9-beb2-ede01c00c8c4', 'Alex Melnitchouck', 'Ag Warm Lead Generators', 'medium', 'active', 'connector', 'Met apr 16th. he''s going to intro us to Xarvio. We need to come up with a fee structure for him to work with us.

Alex will come back end of week of May12th, Kenny will discuss digifarm also', NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('6bc8af0c-b771-48f3-b5ea-4e92b995d356', 'Doug MacKay', 'Ag Warm Lead Generators', 'highest', 'active', 'connector', 'Met Apr 20th. He''s going to intro us to someone at John Deere, anda few other places. Same structure needed as Alex M.

Meeting May 28th Discuss DroneTeams', 'AlgoDroneTeams Deck: https://deck.algo-rythmn.ai/drone-team
KW''s report: https://deck.algo-rythmn.ai/drone-report', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('862a32cc-b084-4fad-966a-d726471e1725', 'Felippe Karp', 'Ag Warm Lead Generators', 'highest', 'active', 'connector', 'Met Apr 21st. He''s going to intro us to Brazilian AG and is very enthusaistic about collaborating with us. 

Try to identify lowest-hanging fruit, ie. no academics, find clients first', 'Co-op: https://deck.algo-rythmn.ai/coop-member-intelligence
Potential plays: https://deck.algo-rythmn.ai/Brazil-Plays-Opportunity', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('91f1b141-ca15-43dc-b5bf-55edb166de5a', 'Chris Paterson', 'Ag Warm Lead Generators', NULL, NULL, 'both', 'Talk to Doug Mackaye first about DroneTeams', NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('274d1dac-4834-4d35-8b1e-c682d76e82b4', 'CoStar/STR', 'Hospitality', 'dead', 'active', 'end_user', 'Met, he gave us a tour of new STR acqiusition, we are trying to talk to one of his analytics friends at CoStar', NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('e608654f-2e1f-455d-b230-7025ec7c097f', 'Drive Hockey', 'Hockey', 'low', NULL, 'end_user', 'Kenny''s lighting a fire underneath them', 'Document: hockey_drive_20260119
Deck: https://deck.algo-rythmn.ai/drive-hockey-ai-agent.html', '2026-01-01');
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('ceb757ea-4c96-4ff2-b250-911d7aa31d97', 'Elite Hockey Science', 'Hockey', 'low', 'active', 'end_user', 'met, deal went back to drawing board

Kenny has been talking to Ron again', 'Web App2: https://project2606.algo-rythmn.ai/
Web App1:  https://project2605.algo-rythmn.ai/', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('126655fa-c394-4e42-a067-7a6c5423d782', 'Calgary Flames', 'Hockey', 'low', NULL, 'end_user', 'Connor- it will be a summer project. We can dev with drive hockey in the meantime

Matthias is going to skate with him next week

They are doing it themselves, Kenny''s gonna meet their golden boy in JUNE in person', 'Web App: https://workbench.algo-rythmn.ai/', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('35913f8d-0842-421d-b832-ab41a69de98a', 'AESO', 'Energy', 'low', 'declined', 'end_user', 'emailed mar 31st with validation layer illustration, no response.

Kenny is meeting with Will Bridge.', 'Transparent Agentic Platform (This is also the latest AgMRI beta from Dev Team)

Video Demo:
Transparent Agentic Platform', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('c187f6b9-59ca-4cc5-8a3b-737cacd067c1', 'APEX', 'Energy', 'medium', 'declined', 'end_user', 'emailed mar 9, wait until April 2026- Troy had a family issue come up so we''re waiting

Declined Call Center automation job, asking for followup meeting

Only use one call center for 20K CAD per year.  

NO GO unless we want to scale a model and/or use this as a relationship builder for this client.', 'Determine whether it’s worth building it based on our ROI.

Cheat Sheets: Apex_AI_Call_Response_Cheatsheet.docx
Apex_HSE_Automation_Cheatsheet.docx

Demo: http://testbed.algo-rythmn.ai/ (paused)
Deck: https://deck.algo-rythmn.ai/potash-mining-operations.html', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('0e96cdbc-d3cd-45d9-9f07-b04293d91578', 'Cutting Edge drilling', 'Energy', 'low', NULL, 'end_user', 'Steering towards small project around public data +private walled garden

Schedule right away and show deck/workflow automation. Ask for historical data to vet data quality and to provide backtesting to see how much we would have saved them on projects.

Focus on PASON first', 'Workflow Deck: https://deck.algo-rythmn.ai/prospecting-ai
Workflow Demo: https://project2611.algo-rythmn.ai/

Demo: Use public well data to build a decision support tool on well planning & offset analysis. (Hold on now)

New deck: https://deck.algo-rythmn.ai/chemical-sourcing

Deck (lite & detailed): https://deck.algo-rythmn.ai/ai-drilling-revolution-lite.html
https://deck.algo-rythmn.ai/ai-drilling-revolution.html', '2026-01-01');
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('cb716a0d-e61c-4d50-a7aa-61cdd16f8916', 'Pason', 'Energy', 'medium', 'active', 'end_user', 'We''re meeting with the CEO- don''t bring a demo/brochure/anything.

He''s fairly tough to deal with. Pason does not own or look at their data. 

We need to think outside of the box here. Dashboard with LLM?

Meeting JUNE 2nd IN PERSON Kenny- they don''t own data, exploratory meet', 'Deck: https://deck.algo-rythmn.ai/pason-proposal', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('4e37e4b1-b827-4a44-94c7-6bf82d271273', 'Blue Rock Law', 'Misc', 'dead', 'declined', NULL, 'not interested', NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('94c3ef11-8f3a-4331-84d5-a104058255ba', 'Yoshi', 'Misc', 'low', NULL, NULL, 'I asked him about aquaculture in Japan.

Tabiji Kizuna deal outline', 'Features introduction: https://deck.algo-rythmn.ai/Tabiji-Kizuna-features.html
Web Address: https://tabi-1.algo-rythmn.ai/
Deck: https://deck.algo-rythmn.ai/Tabiji-Kizuna.html
Web Demo:               tabi-web-v3.mp4
Mobile Demo:              tabi -mobile.mp4', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('e78388f3-c582-42c6-9518-5c12cd5e3dd8', 'Pharmacy (multiple)', 'Misc', 'high', 'active', 'both', 'ongoing

Guide to CQI+', 'Pricing: https://deck.algo-rythmn.ai/AlgoPharma-pricing

Feeback:
AlgoPharma_User Feedback & Requirements_Track_v1.0

Product Scope (External): https://deck.algo-rythmn.ai/algopharma-features-external

Web App: https://pharmacy.algo-rythmn.ai/

Product design: https://deck.algo-rythmn.ai/pharmacy-ai-template.html', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('48913b8a-5eed-4a28-8d2e-8df6ef66c066', 'Werklund Family Office', 'Misc', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('bdaa3ff2-21a7-4c09-a076-8f85c532f72e', 'Maxxcann', 'Defunct', 'dead', 'active', NULL, 'Sent email Mar 8

Aug 26 2025', NULL, '2025-08-01');

-- CONTACTS
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('e2b7a880-18dc-4157-95b2-0c617abf0901', 'b8f6cf0e-e54b-4881-a3fc-9fa5d661869d', 'Kris Barker', 'COS to Nate Glubish', NULL, 'declined', 'Alberta Gov meeting notes');
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('7e35ae7a-a631-4f8b-b54c-f38ebeccb9f7', 'b8f6cf0e-e54b-4881-a3fc-9fa5d661869d', 'Hillary Faulkner', 'Executive Director, Privacy, Policy and Governance', NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('14d876d9-8460-4079-a8e9-c51c4bc916e8', 'b8f6cf0e-e54b-4881-a3fc-9fa5d661869d', 'Jutta Rohrschach', 'Executive Director of Innovation Ecosystem', NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('883b7c6e-daf4-42cc-9047-1311b6705ce5', '5c06ca5b-584a-4fbc-90dd-f144b1420689', 'Kelvin Yau', NULL, NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('11cc0dbf-7a4c-4131-a535-80c4423be793', '5c06ca5b-584a-4fbc-90dd-f144b1420689', 'Mark Summers', NULL, NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('7e31aa79-cd0a-42a4-a167-f934d777f61b', '5c06ca5b-584a-4fbc-90dd-f144b1420689', 'Prashant Pandey', NULL, 'Prashant.Pandey@albertainnovates.ca', NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('62ec14a8-5e6a-43be-a198-fbe20b55e5c8', '592aa10a-48f6-4798-94a1-8140df686619', 'Megan Croft', 'Liason for tech 2 farm', 'megan.croft@svgventures.com', 'in_progress', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('146e9296-794e-48f4-a3dc-13ff9b6e08ab', '592aa10a-48f6-4798-94a1-8140df686619', 'Coleton Fisher', 'Academy Program Manager', 'coleton.fisher@svgventures.com', 'on_hold', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('327913bd-b9ef-4645-8e26-0c279f24dd92', '9f63568d-c437-4fc7-ad7c-e472735e8715', 'Garson Law', NULL, NULL, 'active', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('39fe2435-a226-462d-8ad3-9fd92174fa22', 'f759dca9-d0e4-4a9d-9046-2c7b11b9ff53', 'Chris Paterson', 'Ag-focused', 'cpaterson@tallgrass.vc', 'active', 'Loves to chat, good contacts');
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('86bee3d2-7c30-4bbc-a18e-8588d0ba5333', 'f759dca9-d0e4-4a9d-9046-2c7b11b9ff53', 'Wilson Acton', NULL, 'wacton@tallgrass.vc', NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('54dbb226-f397-4b16-acbc-86dd232d267e', '42ed86f0-ea5a-4fc2-8f47-1406631b0da9', 'Joy Agnew', 'Instructor', NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('3732e299-7534-4aa2-9420-4f1662cf2f9e', '42ed86f0-ea5a-4fc2-8f47-1406631b0da9', 'Suby', NULL, 'Suby.Guhathakurta@rdpolytech.ca', NULL, 'Tonya- they cannot use the product, know-how is ok');
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('b812522b-d1bf-43f4-b1fa-e340b9285bc1', '42ed86f0-ea5a-4fc2-8f47-1406631b0da9', 'Debjyoti', NULL, 'Debjyoti.Sen@rdpolytech.ca', 'on_hold', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('da28c625-d861-48cf-9b51-5015fa1edf29', '42ed86f0-ea5a-4fc2-8f47-1406631b0da9', 'Lisa Verbinsky', NULL, NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('dcf1b3a7-b44b-47d6-98f1-ef148bf77eec', '42ed86f0-ea5a-4fc2-8f47-1406631b0da9', 'Heather Dirks', 'health/informatics', NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('93dfd354-8833-4f1d-838e-b9482ee54910', '42ed86f0-ea5a-4fc2-8f47-1406631b0da9', 'Terri Granigan', 'health/informatics', NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('617a5fa9-6343-4cff-9d75-6a683ce74ea3', '42ed86f0-ea5a-4fc2-8f47-1406631b0da9', 'Tonya', 'grants', NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('8577dc58-16d6-40a0-9781-65f8697e9034', '42ed86f0-ea5a-4fc2-8f47-1406631b0da9', 'Sandra MacDougall', NULL, NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('ccdb2208-ae42-4a28-8e62-1af525e9e921', '42ed86f0-ea5a-4fc2-8f47-1406631b0da9', 'Annika Dempsey', NULL, NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('24abc6bb-abc9-40bb-979a-bd38206e27e2', '2dbe6394-5c34-4df8-9a7f-6323a56a3734', 'Herman Simons', NULL, 'hsimons@oldscollege.ca', 'active', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('3a0ad3cb-b05d-4225-a9d8-38a6a711a22c', '2dbe6394-5c34-4df8-9a7f-6323a56a3734', 'Todd Ormann', NULL, NULL, 'in_progress', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('27d3ea42-8c06-43ac-82a0-048a272f0e62', '2dbe6394-5c34-4df8-9a7f-6323a56a3734', 'Atul Nayyar', NULL, 'anayyar@oldscollege.ca', 'active', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('0b86f2e0-469d-4f8c-9f9b-1cfad0cd142b', '27c6e831-cd9a-4d37-944e-0ed2f312e48c', 'SeeHon Tung', NULL, NULL, 'active', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('cb607416-0084-41aa-b2d4-49b820a19cb7', 'c264e454-67f7-49cc-8c22-a4debc4ab654', 'John Miniaci', 'Director/Operations', 'john.louis.miniaci@gmail.com', 'active', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('bfaf9e8f-9c8c-4a99-b1c8-786c3cd2a023', '3fdec6cd-6389-473a-a76a-786e6e2ad3de', 'Kevin Frankowski', 'Founder', NULL, 'active', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('3df7ac1a-e998-4146-83db-66d3c3bdd373', '2029a373-1f03-4043-8bfa-d452182229ba', 'Tina Hoang', 'Tried to do a simple prediction model and got bogged down', NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('640b4f86-2205-453d-93c8-f050b8af400c', 'b4730d6e-6c64-478f-ac3b-c1b864224489', 'Mohamad Yaghi', 'Vice President of AgExpert and Innovation Hub', 'mohamad.yaghi@fcc-fac.ca', NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('8e4a68cf-1e11-42c9-b02c-e82a75dc813b', 'b4730d6e-6c64-478f-ac3b-c1b864224489', 'Darcy Herauf', NULL, 'Darcy.Herauf@fcc-fac.ca', 'declined', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('db9916a6-9241-436e-b73e-b5a444ab3943', 'c63c8e71-ce5e-4042-9c1c-b6999977b026', 'Jahmy Hindman', 'CTO', NULL, 'declined', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('c99e2083-8954-4e2f-8702-c0e2380e97ee', 'c63c8e71-ce5e-4042-9c1c-b6999977b026', 'Dan Leibfried', 'VP- Product Management Production & Precision Ag', NULL, 'declined', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('8142a25f-81e7-41cf-b4f9-6f2944ec7f02', '2b77ff23-fbc3-4c9b-80fa-926a9bbf9e55', 'Tim Hassinger', NULL, NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('f0ab3cfd-08ef-49d8-bde2-5d70af6b1311', '2b77ff23-fbc3-4c9b-80fa-926a9bbf9e55', 'Caleb Wieber', NULL, NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('9c49d30b-bcb2-4bd9-b6e8-705dc96f1d61', '2b77ff23-fbc3-4c9b-80fa-926a9bbf9e55', 'Conner Schmidt', NULL, NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('32699fd7-1b99-4e88-9f88-a5501d2d2dee', '2b77ff23-fbc3-4c9b-80fa-926a9bbf9e55', 'David Wilson', NULL, NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('77074e46-443e-4dcb-a9b9-c65f712fc2b2', '42f10097-2b38-4cd8-b17a-faa539a0173e', 'Daniel McCann', 'CEO', 'dan@precision.ai', 'active', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('40c14178-7880-43cd-a70c-a6e3e2dcf3f2', '2a591147-fa61-42b0-a999-ceae2643ffdf', 'Warren Bills', 'National Leader Agronomy Services', NULL, 'declined', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('e7cd5b95-22a7-4f9f-8e72-1341248374c5', 'b259d65d-98a1-4f55-af8c-0827e3d4d1d5', 'Kevin Pattison', NULL, NULL, 'active', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('ff22d171-120f-4ac5-9ad1-67d5b4670569', '68d2ee6f-1c9b-420c-a6c1-66417fdb6d4e', 'Bob Barnhart', 'CIO', 'bob.barnhart@nutrien.com', NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('ebd4c3fb-ee32-4010-b4ef-2135b318397c', '68d2ee6f-1c9b-420c-a6c1-66417fdb6d4e', 'Russ Girling', 'CEO', 'Russ.Girling@nutrien.com', NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('e694a870-88bf-451c-b848-af8306b2c2b6', '998b926b-27c6-42e8-8f38-bfdbeee2f095', 'Ryan Immerkar', 'Chris Patterson', 'rsiagricoaching@gmail.com', NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('cb55b16d-977a-4a57-8e0d-852b868d2625', '3eea928e-025a-494f-85d3-21921a170292', 'Robert Saik', 'Chris Patterson', 'rob@robertsaik.com', 'active', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('d1b26321-160d-4364-81c1-2e61d4de1d0b', '14552457-b5aa-4389-9822-3031fe9557b2', 'Jay Kinnaird', 'VP of solutions', NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('5656f8d0-408d-4759-9bc7-241d95da9992', '14552457-b5aa-4389-9822-3031fe9557b2', 'Manoj Regmi', NULL, NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('9df6e7f6-53aa-4cc5-92ad-4239a35360b5', '14552457-b5aa-4389-9822-3031fe9557b2', 'Siva Avvaru', NULL, NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('926fcaa8-9ec7-437b-984e-8faa301c28ad', 'e482cd4e-804d-4283-aea5-f989bcc5a909', 'Andrew Pylypchuk', 'Biz Dev Director', 'andrew.pylypchuk@earthdaily.com', 'active', 'not looking for analytics');
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('383ef8d1-37c4-4b81-ab74-0111387417bc', '3f92c40e-a615-4e18-84da-f3a247be49cf', 'Bence Rizo', 'Client Success', NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('1b7ac562-9857-4908-9ffc-63ec72b29537', 'e2f84cfe-53b7-4018-a185-9803088220e8', 'Kolby Nichol', 'Director', NULL, 'active', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('fb107d1a-a7ff-4e1c-a459-91816d7c97e9', '8b6714c3-4b55-4bb9-8686-b983aa55a718', 'Adam Newstead', 'Dig Ag Manager', NULL, 'active', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('0be3bb56-0fbf-4944-852d-52fb3f4f8da3', 'bb32f2db-83d0-4e6f-84f9-25e4fd6ddc95', 'Tom Mix', 'attorney, ex head of counsel for nutrien', 'tmix@mccarthy.ca', NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('d63812d7-0a54-4eb8-8b6b-1ca40ad0c9a6', 'ad8dd38d-1b14-4de9-beb2-ede01c00c8c4', 'Alex Melnitchouck', 'Also on the board at DigiFarm', 'agintelmax@gmail.com', 'active', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('4ae1776e-d5b3-4dec-a2ad-e5dad7d72115', '6bc8af0c-b771-48f3-b5ea-4e92b995d356', 'Alex M/Warren Bills/Chris Paterson', NULL, NULL, 'active', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('340756ab-5fee-4eb3-bac3-29437290d683', '274d1dac-4834-4d35-8b1e-c682d76e82b4', 'Travis Lebouf', 'Sales Director', NULL, 'active', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('bb30c8ea-9438-4e0d-865a-80f74d5d7644', 'e608654f-2e1f-455d-b230-7025ec7c097f', 'Mike Dahlstedt', 'CEO', 'mike@drivehockey.com', NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('ab3fc0e6-3e56-443b-aabe-f5372d68fa00', 'ceb757ea-4c96-4ff2-b250-911d7aa31d97', 'Ron Johnson', 'Owner', NULL, 'active', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('850999f4-a780-44b0-8a2d-75dad1f5c96c', '126655fa-c394-4e42-a067-7a6c5423d782', 'Connor Rankin', NULL, NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('d06eec2e-0a81-4445-a073-69522f37112c', '35913f8d-0842-421d-b832-ab41a69de98a', 'Kevin Dawson', NULL, 'Kevin.Dawson@aeso.ca', 'declined', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('4261d835-bc3b-4298-958e-037e95bd44ca', 'c187f6b9-59ca-4cc5-8a3b-737cacd067c1', 'Troy Noad', NULL, NULL, 'declined', 'Only use one call center for 20K CAD per year.  

NO GO unless we want to scale a model and/or use this as a relationship builder for this client.');
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('f9cd4948-0b8f-4eee-8391-21a285439895', '0e96cdbc-d3cd-45d9-9f07-b04293d91578', 'Al Krawchuk', NULL, NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('a72bd400-748e-417b-8dc7-53f85ab04a6b', '4e37e4b1-b827-4a44-94c7-6bf82d271273', 'Tom O''Leary', NULL, NULL, 'declined', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('593117b8-6be4-4afd-bad4-2f21fe6ef258', '94c3ef11-8f3a-4331-84d5-a104058255ba', 'Yoshi Tateyama', NULL, NULL, NULL, 'Tabiji Kizuna deal outline');
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('f936ca50-d1db-4c48-9c9c-8209a1348c28', 'e78388f3-c582-42c6-9518-5c12cd5e3dd8', 'Galvin Ding', NULL, NULL, 'active', 'Guide to CQI+');
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('ff5f2125-1bd1-4dd1-9342-85a0d6e0636c', 'e78388f3-c582-42c6-9518-5c12cd5e3dd8', 'Will Leung', NULL, NULL, 'active', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('5a18f7e4-6684-4df1-990e-7fa36ac5bc4a', '48913b8a-5eed-4a28-8d2e-8df6ef66c066', 'David Werklund', NULL, 'david@werklund.com', NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('653d996c-5b90-4f2e-b7ce-4090f93f405d', '48913b8a-5eed-4a28-8d2e-8df6ef66c066', 'Austin Jamieson', NULL, NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, status, notes) VALUES ('eeb8665b-31a2-4ed3-a0f2-12abae464fa2', 'bdaa3ff2-21a7-4c09-a076-8f85c532f72e', 'John Dewar', 'insurance industry vet', 'johnd@maxxaminsurance.com', 'active', 'Aug 26 2025');

-- MEETINGS
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('d86a8964-7eeb-4912-9eec-8f450a778474', '9f63568d-c437-4fc7-ad7c-e472735e8715', 'Garson/Algo-Rythmn Intro/CAAIN - 2026/04/15 07:52 PDT - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('7e41274e-e24a-47e7-8692-67647b842454', '2dbe6394-5c34-4df8-9a7f-6323a56a3734', 'Algo Rythmn x Olds College - 2025/10/01 16:17 MDT - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('c728c4cd-759d-48a4-809a-8df7f4147e2e', '27c6e831-cd9a-4d37-944e-0ed2f312e48c', 'SeeHon/Algo-Rythmn Intro May 2026 - 2026/05/13 08:27 PDT - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('6df852b5-fce6-4806-a02c-f2566221d60c', 'c264e454-67f7-49cc-8c22-a4debc4ab654', 'John Miniaci/Algo-Ryhtmn Intro - 2026/03/12 08:54 PDT - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('55b128bb-0c1a-4116-95a3-1e914e7c1309', '3fdec6cd-6389-473a-a76a-786e6e2ad3de', 'Ox+Plow/Algo-Rythmn Intro - 2026/04/27 15:56 PDT - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('de2c5ea0-355d-4f2b-a4b2-01e7e7a12fe4', 'b4730d6e-6c64-478f-ac3b-c1b864224489', 'FCC/Mohamad Yaghi prep notes', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('70486478-e908-4a8a-92bb-a61f82240251', '42f10097-2b38-4cd8-b17a-faa539a0173e', 'PrecisionAI/Algo-Rythmn Feb 2026 - 2026/02/27 09:50 PST - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('a30207ee-f892-4e8e-8bba-6788f5b63242', '2a591147-fa61-42b0-a999-ceae2643ffdf', 'MNP/Warren Bills/Algo-Rythmn introduction - 2026/02/27 11:07 PST - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('312dd8f3-b775-43cb-b80e-cc8863500189', 'b259d65d-98a1-4f55-af8c-0827e3d4d1d5', 'Pattison/Algo-Rythmn May 2026 - 2026/05/26 10:22 PDT - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('fde9af08-212c-4ad5-9fa9-ebc0dc72ff67', '998b926b-27c6-42e8-8f38-bfdbeee2f095', 'New Era Ag/Algo Mar 2026 - 2026/03/06 08:41 PST - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('62269ad2-1b8c-46f7-b99a-60ee5239a2ae', '3eea928e-025a-494f-85d3-21921a170292', 'Algo-Rythmn /AGvisorPRO Apr 2026 - 2026/04/16 11:55 PDT - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('ddf87120-53c4-4a7a-bdde-b58bac0e2e1d', '14552457-b5aa-4389-9822-3031fe9557b2', 'Corvian/Algo-Rythmn intro - 2026/02/10 11:20 PST - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('0aa6e0db-de9a-4289-97fa-1fe210e92ab4', 'e482cd4e-804d-4283-aea5-f989bcc5a909', 'https://docs.google.com/document/d/1qJ05HZMFq4-bFwIksayeuwr9EAi1BCSqxvAAfT8JB-8/edit?tab=t.ontln9bfn5b', 'https://docs.google.com/document/d/1qJ05HZMFq4-bFwIksayeuwr9EAi1BCSqxvAAfT8JB-8/edit?tab=t.ontln9bfn5b', NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('ba75d995-b7eb-444e-a7d4-9d786cd7cd9a', '3f92c40e-a615-4e18-84da-f3a247be49cf', 'DigiFarm/Algo-Rythmn intro - 2026/04/28 21:50 PDT - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('39f0eb47-95aa-4af1-851b-0e326401ccbd', 'e2f84cfe-53b7-4018-a185-9803088220e8', 'Telus/Algo-Rythmn intro  - 2026/04/22 10:47 PDT - Recording', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('ba978b8f-e6e8-4a9b-a267-067a4e821862', '8b6714c3-4b55-4bb9-8686-b983aa55a718', 'FCL/Algo- Rythmn intro - 2026/05/13 09:58 PDT - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('bd967436-ac94-47c5-9a2c-2bd1522b4801', 'bb32f2db-83d0-4e6f-84f9-25e4fd6ddc95', 'Tom Mix/Algo-Rythmn May 1 2026 - 2026/05/04 19:05 PDT - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('bb6e7c33-cf84-40e1-8ee4-c2571dceaddd', 'ad8dd38d-1b14-4de9-beb2-ede01c00c8c4', 'Alex/Algo-Rythmn intro  - 2026/04/16 08:50 PDT - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('106d5504-7479-4447-b557-63b63247ee7e', '6bc8af0c-b771-48f3-b5ea-4e92b995d356', 'Doug MacKay/Algo-Rythmn intro - 2026/04/20 09:52 PDT - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('22819bbf-2697-4650-b3d5-2f73ed74ccd6', '862a32cc-b084-4fad-966a-d726471e1725', 'Felippe/Algo-Rythmn intro - 2026/04/21 07:50 PDT - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('3acaedf8-d9cf-4830-aee4-3b6be4587730', '126655fa-c394-4e42-a067-7a6c5423d782', 'Meeting (Calgary Flames) - 2025/10/03 09:27 HKT - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('6cd6098e-f367-4860-bedc-9d3c94c5fb25', '35913f8d-0842-421d-b832-ab41a69de98a', 'AESO/Algo-Rythmn intro - 2025/12/16 06:42 PST - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('069d4d7d-3f64-4025-8cd7-d6367e396b8d', 'c187f6b9-59ca-4cc5-8a3b-737cacd067c1', 'Apex/Algo-Rythmn Apr 2026 - 2026/04/30 09:55 PDT - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('bad8e9ea-db7a-4d81-bc7b-c98f4698bfb6', '0e96cdbc-d3cd-45d9-9f07-b04293d91578', 'Cutting Edge/Algo-Rythmn intro - 2026/01/23 08:57 PST - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, title, summary_url, notes) VALUES ('debae749-a24d-476b-b1bf-8d0550142a97', 'e78388f3-c582-42c6-9518-5c12cd5e3dd8', 'Script Pharmacy - CQI+ Requirement NIDR Submission MEETING NOTES', NULL, NULL);

-- RESOURCES
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('d53ced43-0069-4eeb-9fa2-2839ce7d45a3', '9f63568d-c437-4fc7-ad7c-e472735e8715', 'https://mail.google.com/mail/u/0/#sent/QgrcJHshbMKrCcxkVbdGSxfLPcHXXffwrmQ', 'other', 'https://mail.google.com/mail/u/0/#sent/QgrcJHshbMKrCcxkVbdGSxfLPcHXXffwrmQ');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('bd81555e-a11c-4532-8227-fba0abd4dd34', 'f759dca9-d0e4-4a9d-9046-2c7b11b9ff53', 'https://deck.algo-rythmn.ai/AgroIntel', 'deck', 'https://deck.algo-rythmn.ai/AgroIntel');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('1a895385-f4c1-4c4b-a283-0975e4acc1e4', '2dbe6394-5c34-4df8-9a7f-6323a56a3734', 'https://project2604.algo-rythmn.ai/', 'demo', 'https://project2604.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('14a7e7c6-1129-46bf-adb5-a4fd9b0b858b', '2029a373-1f03-4043-8bfa-d452182229ba', 'https://docs.google.com/document/d/1YJqvs_luxZ8016DZ8ofMRN0OMBIIvhhX/edit', 'document', 'https://docs.google.com/document/d/1YJqvs_luxZ8016DZ8ofMRN0OMBIIvhhX/edit');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('4949dcd4-c010-4fec-b92e-a150f3d9effb', '2029a373-1f03-4043-8bfa-d452182229ba', 'https://deck.algo-rythmn.ai/yield-ice', 'deck', 'https://deck.algo-rythmn.ai/yield-ice');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('06cd24d2-f36a-44f7-8cae-57f767e6c055', '42f10097-2b38-4cd8-b17a-faa539a0173e', 'https://deck.algo-rythmn.ai/precision-ai-proposal', 'deck', 'https://deck.algo-rythmn.ai/precision-ai-proposal');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('805a6f5f-9e90-4a53-960f-61164637a763', '2a591147-fa61-42b0-a999-ceae2643ffdf', 'http://algomindpro.algo-rythmn.ai/', 'other', 'http://algomindpro.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('22d0da55-b600-4881-aa9e-3a1a34df60a8', '2a591147-fa61-42b0-a999-ceae2643ffdf', 'https://www.mnp.ca/en/personnel/warren-bills', 'other', 'https://www.mnp.ca/en/personnel/warren-bills');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('e63ed1e9-aa88-4931-9d49-82c9a6069970', '998b926b-27c6-42e8-8f38-bfdbeee2f095', 'https://deck.algo-rythmn.ai/new-era-ag-ai-pricing', 'deck', 'https://deck.algo-rythmn.ai/new-era-ag-ai-pricing');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('43a5c662-1a5c-47b6-b15c-39ca68fb4cf7', '998b926b-27c6-42e8-8f38-bfdbeee2f095', 'https://newera.algo-rythmn.ai/', 'other', 'https://newera.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('cfcd0862-629e-4702-b995-58624408d0b6', '998b926b-27c6-42e8-8f38-bfdbeee2f095', 'https://new-era-file-upload.algo-rythmn.ai/', 'other', 'https://new-era-file-upload.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('7d006247-3d27-4071-b2a0-455ef5b603be', '998b926b-27c6-42e8-8f38-bfdbeee2f095', 'https://deck.algo-rythmn.ai/soil-intelligence.html', 'deck', 'https://deck.algo-rythmn.ai/soil-intelligence.html');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('1f7c283f-7782-41b3-bfe4-1873f96a5569', '998b926b-27c6-42e8-8f38-bfdbeee2f095', 'https://deck.algo-rythmn.ai/plant-triangle-framework.html', 'deck', 'https://deck.algo-rythmn.ai/plant-triangle-framework.html');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('74d79085-55eb-4ad3-86e8-f787300d8de4', '998b926b-27c6-42e8-8f38-bfdbeee2f095', 'https://project2602.algo-rythmn.ai/', 'demo', 'https://project2602.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('2aff2082-e164-464a-bee2-f982c83ca1b4', '998b926b-27c6-42e8-8f38-bfdbeee2f095', 'https://project2503.algo-rythmn.ai/', 'demo', 'https://project2503.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('bedd6985-94c5-4f84-a4a2-0e327b453f66', '998b926b-27c6-42e8-8f38-bfdbeee2f095', 'https://deck.algo-rythmn.ai/NewEraAg-TrialData.html', 'deck', 'https://deck.algo-rythmn.ai/NewEraAg-TrialData.html');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('aa518202-548b-4fe5-a1d1-ca06ec573ac5', '14552457-b5aa-4389-9822-3031fe9557b2', 'https://deck.algo-rythmn.ai/AlgoMind.html', 'deck', 'https://deck.algo-rythmn.ai/AlgoMind.html');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('fc85b7fb-39e5-498a-81ad-d99a87067d59', '14552457-b5aa-4389-9822-3031fe9557b2', 'https://corvian.com/', 'other', 'https://corvian.com/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('c911044c-7a6c-4ebe-a65d-4ab0821bd314', 'e482cd4e-804d-4283-aea5-f989bcc5a909', 'https://project2612.algo-rythmn.ai/', 'demo', 'https://project2612.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('32b29127-8d4e-477f-8e9e-85a2f0d16893', 'e482cd4e-804d-4283-aea5-f989bcc5a909', 'http://deck.algo-rythmn.ai/earthdaily-ai-proposal', 'deck', 'http://deck.algo-rythmn.ai/earthdaily-ai-proposal');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('510557a8-2972-419a-8994-917f9a3bda2c', 'e482cd4e-804d-4283-aea5-f989bcc5a909', 'http://deck.algo-rythmn.ai/earthdaily-ai', 'deck', 'http://deck.algo-rythmn.ai/earthdaily-ai');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('1fd08659-dd13-4b0d-91bd-74fc76043e93', 'e482cd4e-804d-4283-aea5-f989bcc5a909', 'https://algomindpro-earthdaily.algo-rythmn.ai/', 'other', 'https://algomindpro-earthdaily.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('50064757-4574-455d-b3f9-f4f7d629ab7e', 'bb32f2db-83d0-4e6f-84f9-25e4fd6ddc95', 'https://deck.algo-rythmn.ai/doc-ai-mining', 'deck', 'https://deck.algo-rythmn.ai/doc-ai-mining');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('1c13fd82-915f-4c61-846e-a92437874c6c', 'bb32f2db-83d0-4e6f-84f9-25e4fd6ddc95', 'https://opsedge.algo-rythmn.ai/', 'other', 'https://opsedge.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('16c1c031-5421-414a-a3cb-81bebc1d9402', 'bb32f2db-83d0-4e6f-84f9-25e4fd6ddc95', 'https://deck.algo-rythmn.ai/potash-mining-operations.html', 'deck', 'https://deck.algo-rythmn.ai/potash-mining-operations.html');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('9d2e46f0-d239-4158-82d7-b872d3c22636', 'bb32f2db-83d0-4e6f-84f9-25e4fd6ddc95', 'http://testbed.algo-rythmn.ai/', 'other', 'http://testbed.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('5e146389-11b0-4c2e-b784-d855c307815c', '6bc8af0c-b771-48f3-b5ea-4e92b995d356', 'https://deck.algo-rythmn.ai/drone-team', 'deck', 'https://deck.algo-rythmn.ai/drone-team');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('7e9394db-bb5b-4467-b782-dc125193097a', '6bc8af0c-b771-48f3-b5ea-4e92b995d356', 'https://deck.algo-rythmn.ai/drone-report', 'deck', 'https://deck.algo-rythmn.ai/drone-report');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('5662a02d-b627-4833-b212-d103624bf5cd', '862a32cc-b084-4fad-966a-d726471e1725', 'https://deck.algo-rythmn.ai/coop-member-intelligence', 'deck', 'https://deck.algo-rythmn.ai/coop-member-intelligence');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('b2003ef7-9299-48ee-a2b3-a71b44a52de2', '862a32cc-b084-4fad-966a-d726471e1725', 'https://deck.algo-rythmn.ai/Brazil-Plays-Opportunity', 'deck', 'https://deck.algo-rythmn.ai/Brazil-Plays-Opportunity');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('f9911c90-2616-450a-b6fc-8c4a609e7626', 'e608654f-2e1f-455d-b230-7025ec7c097f', 'https://deck.algo-rythmn.ai/drive-hockey-ai-agent.html', 'deck', 'https://deck.algo-rythmn.ai/drive-hockey-ai-agent.html');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('eb49921d-d6f2-41bb-8cb7-aa3f7b4e5b67', 'ceb757ea-4c96-4ff2-b250-911d7aa31d97', 'https://project2606.algo-rythmn.ai/', 'demo', 'https://project2606.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('c6d049f4-3bd5-4d2b-a561-adcf9f9d0fdb', 'ceb757ea-4c96-4ff2-b250-911d7aa31d97', 'https://project2605.algo-rythmn.ai/', 'demo', 'https://project2605.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('d6cfed04-4d48-4778-b021-bfdfa1b224da', '126655fa-c394-4e42-a067-7a6c5423d782', 'https://workbench.algo-rythmn.ai/', 'other', 'https://workbench.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('70db6306-8fac-43f7-952e-f7cd71b51f0a', 'c187f6b9-59ca-4cc5-8a3b-737cacd067c1', 'http://testbed.algo-rythmn.ai/', 'other', 'http://testbed.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('a4a311b2-0730-4199-a23c-e56b8cd3556e', 'c187f6b9-59ca-4cc5-8a3b-737cacd067c1', 'https://deck.algo-rythmn.ai/potash-mining-operations.html', 'deck', 'https://deck.algo-rythmn.ai/potash-mining-operations.html');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('98aee49f-729a-45a6-8cdd-262d4a0c2ffb', '0e96cdbc-d3cd-45d9-9f07-b04293d91578', 'https://deck.algo-rythmn.ai/prospecting-ai', 'deck', 'https://deck.algo-rythmn.ai/prospecting-ai');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('599b630e-d6b7-44b2-af07-4423cfa0fa66', '0e96cdbc-d3cd-45d9-9f07-b04293d91578', 'https://project2611.algo-rythmn.ai/', 'demo', 'https://project2611.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('814d4423-f357-4035-8eea-e2f9b9c197ab', '0e96cdbc-d3cd-45d9-9f07-b04293d91578', 'https://deck.algo-rythmn.ai/chemical-sourcing', 'deck', 'https://deck.algo-rythmn.ai/chemical-sourcing');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('255e99b4-bc3d-4834-b310-caba3a03f196', '0e96cdbc-d3cd-45d9-9f07-b04293d91578', 'https://deck.algo-rythmn.ai/ai-drilling-revolution-lite.html', 'deck', 'https://deck.algo-rythmn.ai/ai-drilling-revolution-lite.html');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('a44884c1-5da7-49da-a6a9-a927502971fd', '0e96cdbc-d3cd-45d9-9f07-b04293d91578', 'https://deck.algo-rythmn.ai/ai-drilling-revolution.html', 'deck', 'https://deck.algo-rythmn.ai/ai-drilling-revolution.html');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('8d2bf620-fd67-4c8d-b64d-f6be38d98597', '0e96cdbc-d3cd-45d9-9f07-b04293d91578', 'http://cuttingedge-energy.com/', 'other', 'http://cuttingedge-energy.com/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('8201add7-9161-4d25-a9d2-a68e894d06db', 'cb716a0d-e61c-4d50-a7aa-61cdd16f8916', 'https://deck.algo-rythmn.ai/pason-proposal', 'deck', 'https://deck.algo-rythmn.ai/pason-proposal');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('5011df0e-7717-4a8f-bd67-67e3c20aa85b', '94c3ef11-8f3a-4331-84d5-a104058255ba', 'https://deck.algo-rythmn.ai/Tabiji-Kizuna-features.html', 'deck', 'https://deck.algo-rythmn.ai/Tabiji-Kizuna-features.html');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('0086eb47-f9f2-4910-9f34-acfb68d72708', '94c3ef11-8f3a-4331-84d5-a104058255ba', 'https://tabi-1.algo-rythmn.ai/', 'other', 'https://tabi-1.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('91811a4c-c5f5-43e0-abf8-737cff9b4e47', '94c3ef11-8f3a-4331-84d5-a104058255ba', 'https://deck.algo-rythmn.ai/Tabiji-Kizuna.html', 'deck', 'https://deck.algo-rythmn.ai/Tabiji-Kizuna.html');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('a676035d-2d87-4806-8668-45771c3fec4f', 'e78388f3-c582-42c6-9518-5c12cd5e3dd8', 'https://deck.algo-rythmn.ai/AlgoPharma-pricing', 'deck', 'https://deck.algo-rythmn.ai/AlgoPharma-pricing');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('6976bcc9-3d0c-4d0a-a6cf-3c0a73115da5', 'e78388f3-c582-42c6-9518-5c12cd5e3dd8', 'https://deck.algo-rythmn.ai/algopharma-features-external', 'deck', 'https://deck.algo-rythmn.ai/algopharma-features-external');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('8673e000-a0c2-44fb-99f7-b486d4760bc5', 'e78388f3-c582-42c6-9518-5c12cd5e3dd8', 'https://pharmacy.algo-rythmn.ai/', 'other', 'https://pharmacy.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('b7b29a7a-dcfa-460d-a1d0-af8b043bd4c7', 'e78388f3-c582-42c6-9518-5c12cd5e3dd8', 'https://deck.algo-rythmn.ai/pharmacy-ai-template.html', 'deck', 'https://deck.algo-rythmn.ai/pharmacy-ai-template.html');

-- RELATIONSHIPS (per-contact referrals)
INSERT INTO relationships (id, from_contact_id, to_company_id, relationship_type, note) VALUES ('8ffcac6a-f471-4403-852e-859799f39fae', 'e2b7a880-18dc-4157-95b2-0c617abf0901', 'b8f6cf0e-e54b-4881-a3fc-9fa5d661869d', 'introduced_by', 'Introduced Kris Barker via: Rob Anderson');
INSERT INTO relationships (id, from_contact_id, to_company_id, relationship_type, note) VALUES ('a305833f-e73b-4ee8-b431-b4ff18073172', '62ec14a8-5e6a-43be-a198-fbe20b55e5c8', '592aa10a-48f6-4798-94a1-8140df686619', 'introduced_by', 'Introduced Megan Croft via: Prashant Pandey');
INSERT INTO relationships (id, from_contact_id, to_company_id, relationship_type, note) VALUES ('c2424aad-b3d1-497b-ab12-a7cae9b91f3c', '146e9296-794e-48f4-a3dc-13ff9b6e08ab', '592aa10a-48f6-4798-94a1-8140df686619', 'introduced_by', 'Introduced Coleton Fisher via: Megan Croft');
INSERT INTO relationships (id, from_contact_id, to_company_id, relationship_type, note) VALUES ('b7aa770a-7ebb-4b15-9eae-c746ae9b795a', '39fe2435-a226-462d-8ad3-9fd92174fa22', 'f759dca9-d0e4-4a9d-9046-2c7b11b9ff53', 'introduced_by', 'Introduced Chris Paterson via: David Werklund');
INSERT INTO relationships (id, from_contact_id, to_company_id, relationship_type, note) VALUES ('0c61631b-de09-4673-a4f6-bbfcce7de679', '640b4f86-2205-453d-93c8-f050b8af400c', 'b4730d6e-6c64-478f-ac3b-c1b864224489', 'introduced_by', 'Introduced Mohamad Yaghi via: Louis at FCC/cold at linkedin');
INSERT INTO relationships (id, from_contact_id, to_company_id, relationship_type, note) VALUES ('201d7492-beaf-4f24-a405-2df52f2791f5', '77074e46-443e-4dcb-a9b9-c65f712fc2b2', '42f10097-2b38-4cd8-b17a-faa539a0173e', 'introduced_by', 'Introduced Daniel McCann via: Tall Grass VC');
INSERT INTO relationships (id, from_contact_id, to_company_id, relationship_type, note) VALUES ('1e297b39-b65a-47fc-93b2-3dcc57562aaa', '40c14178-7880-43cd-a70c-a6e3e2dcf3f2', '2a591147-fa61-42b0-a999-ceae2643ffdf', 'introduced_by', 'Introduced Warren Bills via: Chris Paterson');
INSERT INTO relationships (id, from_contact_id, to_company_id, relationship_type, note) VALUES ('e84f30e7-f95c-4903-95a7-537cf4924e83', 'd1b26321-160d-4364-81c1-2e61d4de1d0b', '14552457-b5aa-4389-9822-3031fe9557b2', 'introduced_by', 'Introduced Jay Kinnaird via: Todd Ormann');
INSERT INTO relationships (id, from_contact_id, to_company_id, relationship_type, note) VALUES ('39d3b728-aef0-4ecd-8810-0f5d6bb37aa6', '5656f8d0-408d-4759-9bc7-241d95da9992', '14552457-b5aa-4389-9822-3031fe9557b2', 'introduced_by', 'Introduced Manoj Regmi via: Todd Ormann');
INSERT INTO relationships (id, from_contact_id, to_company_id, relationship_type, note) VALUES ('7c10d4c6-d752-4796-8615-c3e77ffaa14b', '9df6e7f6-53aa-4cc5-92ad-4239a35360b5', '14552457-b5aa-4389-9822-3031fe9557b2', 'introduced_by', 'Introduced Siva Avvaru via: Todd Ormann');
INSERT INTO relationships (id, from_contact_id, to_company_id, relationship_type, note) VALUES ('6babb1fd-ceb4-45b5-bdda-95dd9df41bd5', '4ae1776e-d5b3-4dec-a2ad-e5dad7d72115', '6bc8af0c-b771-48f3-b5ea-4e92b995d356', 'introduced_by', 'Introduced Alex M/Warren Bills/Chris Paterson via: Todd Ormann');
INSERT INTO relationships (id, from_contact_id, to_company_id, relationship_type, note) VALUES ('20ccbccf-1307-4656-8c3e-523355bcb75b', 'bb30c8ea-9438-4e0d-865a-80f74d5d7644', 'e608654f-2e1f-455d-b230-7025ec7c097f', 'introduced_by', 'Introduced Mike Dahlstedt via: ron johnson');
INSERT INTO relationships (id, from_contact_id, to_company_id, relationship_type, note) VALUES ('03ef19eb-1fb1-4b94-aa92-e4ab6b8429c5', '4261d835-bc3b-4298-958e-037e95bd44ca', 'c187f6b9-59ca-4cc5-8a3b-737cacd067c1', 'introduced_by', 'Introduced Troy Noad via: Kenny Cheung');
INSERT INTO relationships (id, from_contact_id, to_company_id, relationship_type, note) VALUES ('7e821a5c-74a2-44ff-aff0-77a35f9dff4e', 'eeb8665b-31a2-4ed3-a0f2-12abae464fa2', 'bdaa3ff2-21a7-4c09-a076-8f85c532f72e', 'introduced_by', 'Introduced John Dewar via: Kenny');

COMMIT;