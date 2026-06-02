-- Auto-generated migration from Algo-Rythmn contact CSV
-- Run: psql -d algo_rythmn_contacts -f seed_data.sql
BEGIN;

-- COMPANIES
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('00aa6e8f-79d0-4839-89ec-b7960483b101', 'Alberta Government', 'Government', NULL, 'declined', 'investor', 'They pushed us off to Alberta Innovates

Alberta Gov meeting notes', NULL, '2025-08-19');
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('827e83d3-5fa8-4891-a2e8-51e50df2944d', 'Alberta Innovates', 'Government', NULL, NULL, 'investor', NULL, NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('bed88e4d-121f-4633-83dc-8b1bf394e148', 'SVG Ventures', 'Government', NULL, 'in_progress', 'investor', 'connected us to Coleton', NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('1206946c-f40b-428a-898a-bdc2e519c838', 'CAAIN', 'Government', 'medium', 'active', 'investor', 'Next step is applying on website here (program guide and application are at bottom of page)

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
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('9db1f04a-9024-4304-bc08-217049f664fe', 'Tall Grass Ventures', 'Funding', NULL, 'active', 'investor', 'Sent MNP deck Mar 9- he liked it, thinks they need it at MNP, thinks it''s politics

Loves to chat, good contacts', 'Deck: https://deck.algo-rythmn.ai/AgroIntel', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('a9a1c34c-8d53-43e5-b502-71e5c76db22b', 'Graphite', 'Funding', NULL, NULL, 'investor', NULL, NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('aa29537f-6ede-49ea-8c34-a61334f873f8', 'AFSC', 'Funding', 'medium', NULL, 'investor', NULL, NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('657edaa3-c11f-426f-bf39-e13e5c61da12', 'Red Deer Polytechnic', 'Academia', 'low', NULL, NULL, NULL, NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('caf6e530-3ee9-4c4f-a63b-9c7e18eed3be', 'Olds College', 'Academia', NULL, 'active', NULL, 'met, talking to todd before responding back, need to get irap advisor', 'Data requirement: project_canola_olds

Demo: https://project2604.algo-rythmn.ai/', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('67281ac5-328d-4cdc-af34-a8993feb2ce9', 'Bridgewerk', 'Finance', NULL, 'active', 'end_user', 'met, discussed a golf course grass company crossing into ag', NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('3458bcde-08ea-48bb-8863-d33eb4da79f4', 'ATB Financial', 'Finance', NULL, 'active', 'end_user', 'Sent John Algomind demo,Hockey demo, ageinstein on Mar 18, along with proposal

Checking in during July', NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('1ab53359-5153-4cdf-b35f-7a2d901b7dfe', 'Ox and Plow', 'Finance', 'low', 'active', 'end_user', 'Met, discussing viability of giving them a market analysis private GPT

Meeting with them again, they didn''t bite on 100-200K', NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('d2b6dfd9-36bd-4054-af59-7b99a2429d5c', 'I.C.E.', 'Finance', 'medium', 'active', 'end_user', 'Meeting may 27th

Set expectation of making proposal in August to submit to Sept budgeting

If they need something more firm ask for money for proof of concept

Asking questions 

Ask if we can build up a proposal for August

ICE Meeting Summary May 2026', 'Cheatsheet (for internal): https://docs.google.com/document/d/1YJqvs_luxZ8016DZ8ofMRN0OMBIIvhhX/edit
Pitch Deck (for external): https://deck.algo-rythmn.ai/yield-ice', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('13a96f16-4bff-40ff-881f-0cc739e82415', 'FCC', 'Insurance', NULL, NULL, 'end_user', NULL, NULL, '2025-08-08');
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('6194dcbd-31bb-4cac-a145-4372e8d6fdce', 'John Deere', 'Agriculture', NULL, 'declined', 'end_user', 'Messaged Jahmy for intro from Kenny''s LinkedIn, Kenny followed up, no response

Connected with a few people, followed up', NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('fc28d720-31c9-44dc-bd11-e2372bcbf265', 'IntellinAir', 'Agriculture', 'on_hold', NULL, 'end_user', 'Data Discussion next', NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('5f686992-a97f-48f1-99af-d05969ec2d01', 'Precision.ai', 'Agriculture', 'medium', 'active', 'end_user', 'Meeting May 29th', 'Deck: https://deck.algo-rythmn.ai/precision-ai-proposal
Proposal: Algo-Rythmn_PrecisionAI_Business Proposal_v1.0.docx', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('23fce675-0a30-42fb-8069-7bbbdf4928b2', 'MNP', 'Agriculture', 'dead', 'declined', 'end_user', 'Warren was not interested', 'Demo app: http://algomindpro.algo-rythmn.ai/', '2025-09-07');
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('2de0b294-b289-4dfb-a2de-09ba9e6ff42b', 'Pattison Technologies Inc.', 'Agriculture', 'medium', 'active', 'end_user', 'finished the db, it''s ready for AI, schedule in April 2026
.
We met and shared demos, need to see if the small scale works for us somehow LET CAAIN SUBSIDIZE

Also discussed introing at Trimble', NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('60c6d1a8-da64-4db2-8ebc-df986d97d397', 'Nutrien', 'Agriculture', 'low', NULL, 'end_user', 'Exploring contacts at LinkedIn', NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('625447a0-2a0d-4f17-86fe-c0197454d4a2', 'New Era Ag Technologies', 'Agriculture', 'medium', NULL, 'end_user', 'Dennis broke his leg, Kenny had a conversation with Ryan.  Ryan has new idea which we will hear next week.

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
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('0c469b76-c597-4093-9856-4a82e49dda8a', 'AGVISOR PRO', 'Agriculture', 'low', 'active', 'end_user', 'met apr 16th', 'quick questions for agvisorpro', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('42ecd201-b196-420e-98dc-944c8929721f', 'Corvian', 'Agriculture', 'low', NULL, 'end_user', 'Manoj responded on May 22nd saying they''re doing internal vetting of tools', 'Demo: supporting_document_2026.02.02
Deck for v2.0: https://deck.algo-rythmn.ai/AlgoMind.html', '2026-01-01');
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('3adc04b9-55c1-494a-a3a0-596d8a285459', 'Earth Daily', 'Agriculture', 'medium', 'active', 'end_user', 'Met Andrew who was enthusiastic about partnering with us, he''s intro-ing to their head of analytics who will be a harder sell

Meeting May 28th. 

We''re prepared for the meeting

not looking for analytics', 'KW''s demo: https://project2612.algo-rythmn.ai/
New deck: http://deck.algo-rythmn.ai/earthdaily-ai-proposal

Deck: http://deck.algo-rythmn.ai/earthdaily-ai
YLex''s Demo: https://algomindpro-earthdaily.algo-rythmn.ai/', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('5611af59-54b4-4659-a9dd-9cedd70f8d9c', 'Digifarm', 'Agriculture', 'low', NULL, 'end_user', 'Get low res data and include it into our financial portfolio model for corn/soy/canola FOR ICE

Approach them for limited partnership, end user would be their customers.

Also extend to risk/insurers

Remember global coverage, but high res data not a driver', NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('215e9a87-a873-47d1-8e63-eded6d12697d', 'TELUS AG/Decisive', 'Agriculture', 'medium', 'active', 'end_user', 'Met, asked for the scope of their data so that we can pinpoint pilot proposals', NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('92f22ad5-0575-4c6a-803b-3faef1cd6f63', 'FCL (Federated Co-ops Limited)', 'Agriculture', 'low', 'active', NULL, 'Met May 13th, scheduling followup', NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('f814bae2-a0d3-4ba0-a2a0-8ba22d7ce1ff', 'Tom Mix', 'Ag Warm Lead Generators', 'low', NULL, 'connector', 'Emailed the document intelligence decks', 'Specific Deck: https://deck.algo-rythmn.ai/doc-ai-mining


Web app: https://opsedge.algo-rythmn.ai/

Deck for Mosaic: https://deck.algo-rythmn.ai/potash-mining-operations.html

Demo: http://testbed.algo-rythmn.ai/', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('64f003ae-79a3-4f90-a391-b3651347a378', 'Alex Melnitchouck', 'Ag Warm Lead Generators', 'medium', 'active', 'connector', 'Met apr 16th. he''s going to intro us to Xarvio. We need to come up with a fee structure for him to work with us.

Alex will come back end of week of May12th, Kenny will discuss digifarm also', NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('44e020ef-9162-4a4b-a305-9e75972826b4', 'Doug MacKay', 'Ag Warm Lead Generators', 'highest', 'active', 'connector', 'Met Apr 20th. He''s going to intro us to someone at John Deere, anda few other places. Same structure needed as Alex M.

Meeting May 28th Discuss DroneTeams', 'AlgoDroneTeams Deck: https://deck.algo-rythmn.ai/drone-team
KW''s report: https://deck.algo-rythmn.ai/drone-report', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('fa973e51-a966-415c-9e4f-588cd35605b1', 'Felippe Karp', 'Ag Warm Lead Generators', 'highest', 'active', 'connector', 'Met Apr 21st. He''s going to intro us to Brazilian AG and is very enthusaistic about collaborating with us. 

Try to identify lowest-hanging fruit, ie. no academics, find clients first', 'Co-op: https://deck.algo-rythmn.ai/coop-member-intelligence
Potential plays: https://deck.algo-rythmn.ai/Brazil-Plays-Opportunity', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('5e94dee8-42a9-4242-ba7a-8d8fdefa21f9', 'Chris Paterson', 'Ag Warm Lead Generators', NULL, NULL, 'both', 'Talk to Doug Mackaye first about DroneTeams', NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('5cb225a3-cc74-4b62-8a30-75d2818b141e', 'CoStar/STR', 'Hospitality', 'dead', 'active', 'end_user', 'Met, he gave us a tour of new STR acqiusition, we are trying to talk to one of his analytics friends at CoStar', NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('03455804-d7d5-401c-b6c4-ee7fe8f4c005', 'Drive Hockey', 'Hockey', 'low', NULL, 'end_user', 'Kenny''s lighting a fire underneath them', 'Document: hockey_drive_20260119
Deck: https://deck.algo-rythmn.ai/drive-hockey-ai-agent.html', '2026-01-01');
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('6e0cfc9a-ece5-4ae7-8c02-6bc6dd601aaf', 'Elite Hockey Science', 'Hockey', 'low', 'active', 'end_user', 'met, deal went back to drawing board

Kenny has been talking to Ron again', 'Web App2: https://project2606.algo-rythmn.ai/
Web App1:  https://project2605.algo-rythmn.ai/', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('a430b22e-4e88-4a3e-81a6-7a217b0d2ac5', 'Calgary Flames', 'Hockey', 'low', NULL, 'end_user', 'Connor- it will be a summer project. We can dev with drive hockey in the meantime

Matthias is going to skate with him next week

They are doing it themselves, Kenny''s gonna meet their golden boy in JUNE in person', 'Web App: https://workbench.algo-rythmn.ai/', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('a322c433-a772-413d-b214-c36f87e9051d', 'AESO', 'Energy', 'low', 'declined', 'end_user', 'emailed mar 31st with validation layer illustration, no response.

Kenny is meeting with Will Bridge.', 'Transparent Agentic Platform (This is also the latest AgMRI beta from Dev Team)

Video Demo:
Transparent Agentic Platform', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('12d9afe8-201e-485d-a99c-5818a94f39f5', 'APEX', 'Energy', 'medium', 'declined', 'end_user', 'emailed mar 9, wait until April 2026- Troy had a family issue come up so we''re waiting

Declined Call Center automation job, asking for followup meeting

Only use one call center for 20K CAD per year.  

NO GO unless we want to scale a model and/or use this as a relationship builder for this client.', 'Determine whether it’s worth building it based on our ROI.

Cheat Sheets: Apex_AI_Call_Response_Cheatsheet.docx
Apex_HSE_Automation_Cheatsheet.docx

Demo: http://testbed.algo-rythmn.ai/ (paused)
Deck: https://deck.algo-rythmn.ai/potash-mining-operations.html', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('bbf66120-327c-4b4f-937b-dd58f46ab7e1', 'Cutting Edge drilling', 'Energy', 'low', NULL, 'end_user', 'Steering towards small project around public data +private walled garden

Schedule right away and show deck/workflow automation. Ask for historical data to vet data quality and to provide backtesting to see how much we would have saved them on projects.

Focus on PASON first', 'Workflow Deck: https://deck.algo-rythmn.ai/prospecting-ai
Workflow Demo: https://project2611.algo-rythmn.ai/

Demo: Use public well data to build a decision support tool on well planning & offset analysis. (Hold on now)

New deck: https://deck.algo-rythmn.ai/chemical-sourcing

Deck (lite & detailed): https://deck.algo-rythmn.ai/ai-drilling-revolution-lite.html
https://deck.algo-rythmn.ai/ai-drilling-revolution.html', '2026-01-01');
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('66ba61b3-ddaa-4d46-86b4-f9b809445d1f', 'Pason', 'Energy', 'medium', 'active', 'end_user', 'We''re meeting with the CEO- don''t bring a demo/brochure/anything.

He''s fairly tough to deal with. Pason does not own or look at their data. 

We need to think outside of the box here. Dashboard with LLM?

Meeting JUNE 2nd IN PERSON Kenny- they don''t own data, exploratory meet', 'Deck: https://deck.algo-rythmn.ai/pason-proposal', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('02690984-e911-44bf-bf0f-74c4ca7c060d', 'Blue Rock Law', 'Misc', 'dead', 'declined', NULL, 'not interested', NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('b0937963-9226-4816-8b9b-b808203c7f7e', 'Yoshi', 'Misc', 'low', NULL, NULL, 'I asked him about aquaculture in Japan.

Tabiji Kizuna deal outline', 'Features introduction: https://deck.algo-rythmn.ai/Tabiji-Kizuna-features.html
Web Address: https://tabi-1.algo-rythmn.ai/
Deck: https://deck.algo-rythmn.ai/Tabiji-Kizuna.html
Web Demo:               tabi-web-v3.mp4
Mobile Demo:              tabi -mobile.mp4', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('ad0f4026-e5ef-46a2-9c5c-7404fdf04c7a', 'Pharmacy (multiple)', 'Misc', 'high', 'active', 'both', 'ongoing

Guide to CQI+', 'Pricing: https://deck.algo-rythmn.ai/AlgoPharma-pricing

Feeback:
AlgoPharma_User Feedback & Requirements_Track_v1.0

Product Scope (External): https://deck.algo-rythmn.ai/algopharma-features-external

Web App: https://pharmacy.algo-rythmn.ai/

Product design: https://deck.algo-rythmn.ai/pharmacy-ai-template.html', NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('2e6025f0-9ca0-4486-b270-83dc39212752', 'Werklund Family Office', 'Misc', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since) VALUES ('d94562d0-6866-40c7-b708-a4bccc84f97e', 'Maxxcann', 'Defunct', 'dead', 'active', NULL, 'Sent email Mar 8

Aug 26 2025', NULL, '2025-08-01');

-- CONTACTS
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('87c638d0-49d5-440d-85e4-0b0b3d22020c', '00aa6e8f-79d0-4839-89ec-b7960483b101', 'Kris Barker', 'COS to Nate Glubish', 'Cheif Of Staff to Premiere Danielle Smith', 'Alberta Gov meeting notes', 'declined');
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('9b7b101b-c428-4cab-b506-59de006ea2eb', '00aa6e8f-79d0-4839-89ec-b7960483b101', 'Hillary Faulkner', 'Executive Director, Privacy, Policy and Governance', NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('019ff768-6e98-417f-9291-3bc61fd577f4', '00aa6e8f-79d0-4839-89ec-b7960483b101', 'Jutta Rohrschach', 'Executive Director of Innovation Ecosystem', NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('deb8728f-c3ad-4b7d-9057-c2af8840efee', '827e83d3-5fa8-4891-a2e8-51e50df2944d', 'Kelvin Yau', NULL, NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('aea957f7-655a-4771-804e-798c33d75342', '827e83d3-5fa8-4891-a2e8-51e50df2944d', 'Mark Summers', NULL, NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('64988d9e-8430-4d7b-9c64-021b77b3a429', '827e83d3-5fa8-4891-a2e8-51e50df2944d', 'Prashant Pandey', NULL, 'Prashant.Pandey@albertainnovates.ca', NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('22e2ed23-d1ac-4627-ac32-945dcead75bf', 'bed88e4d-121f-4633-83dc-8b1bf394e148', 'Megan Croft', 'Liason for tech 2 farm', 'megan.croft@svgventures.com', NULL, 'in_progress');
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('0982785c-7579-4108-8863-987bca08c5bf', 'bed88e4d-121f-4633-83dc-8b1bf394e148', 'Coleton Fisher', 'Academy Program Manager', 'coleton.fisher@svgventures.com', NULL, 'on_hold');
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('a6b631a4-9f78-4049-81b0-b5119778835f', '1206946c-f40b-428a-898a-bdc2e519c838', 'Garson Law', NULL, NULL, NULL, 'active');
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('bed23cdc-1e8b-459a-97f7-f1bbb05c87d6', '9db1f04a-9024-4304-bc08-217049f664fe', 'Chris Paterson', 'Ag-focused', 'cpaterson@tallgrass.vc', 'Loves to chat, good contacts', 'active');
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('4789c644-1fb6-4c60-94db-a05d0a99fe94', '9db1f04a-9024-4304-bc08-217049f664fe', 'Wilson Acton', NULL, 'wacton@tallgrass.vc', NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('a8dea178-55e3-4130-8567-55f5caa4a7f3', '657edaa3-c11f-426f-bf39-e13e5c61da12', 'Joy Agnew', 'Instructor', 'Joy Agnew', NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('a4d0c8a4-2cc5-4ea4-8f8e-5ede5156ff8c', '657edaa3-c11f-426f-bf39-e13e5c61da12', 'Suby', NULL, 'Suby.Guhathakurta@rdpolytech.ca', 'Tonya- they cannot use the product, know-how is ok', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('d507c461-cdf8-4252-965b-46409331f4d0', '657edaa3-c11f-426f-bf39-e13e5c61da12', 'Debjyoti', NULL, 'Debjyoti.Sen@rdpolytech.ca', NULL, 'on_hold');
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('d3936ace-032d-40b9-b505-9beff7aba4ec', '657edaa3-c11f-426f-bf39-e13e5c61da12', 'Lisa Verbinsky', NULL, NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('1056daec-05cd-4675-96d5-c7e1fefb363c', '657edaa3-c11f-426f-bf39-e13e5c61da12', 'Heather Dirks', 'health/informatics', NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('0f8474a2-f966-4be2-9e63-bc1bff67bb2b', '657edaa3-c11f-426f-bf39-e13e5c61da12', 'Terri Granigan', 'health/informatics', NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('e4ca6e9e-af07-464a-8c64-f1e47fedbd1f', '657edaa3-c11f-426f-bf39-e13e5c61da12', 'Tonya', 'grants', NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('7bfe9f83-01ee-4c77-9c86-f6a61d311d5f', '657edaa3-c11f-426f-bf39-e13e5c61da12', 'Sandra MacDougall', NULL, NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('aa78b667-908b-4ca8-97c2-804900385dcb', '657edaa3-c11f-426f-bf39-e13e5c61da12', 'Annika Dempsey', NULL, NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('b6e120db-b13f-41fc-9d05-b3b0cde733b7', 'caf6e530-3ee9-4c4f-a63b-9c7e18eed3be', 'Herman Simons', NULL, 'hsimons@oldscollege.ca', NULL, 'active');
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('6661d262-8ae4-4bca-a947-9f25496c0f00', 'caf6e530-3ee9-4c4f-a63b-9c7e18eed3be', 'Todd Ormann', NULL, NULL, NULL, 'in_progress');
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('07d6a65e-fa0d-4721-9475-032df5215f6a', 'caf6e530-3ee9-4c4f-a63b-9c7e18eed3be', 'Atul Nayyar', NULL, 'anayyar@oldscollege.ca', NULL, 'active');
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('af8bbd7f-52af-4734-a088-903e0c7ab32e', '67281ac5-328d-4cdc-af34-a8993feb2ce9', 'SeeHon Tung', NULL, NULL, NULL, 'active');
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('1f4f17f9-8f5a-43f9-befe-43dfb3c730b1', '3458bcde-08ea-48bb-8863-d33eb4da79f4', 'John Miniaci', 'Director/Operations', 'john.louis.miniaci@gmail.com', NULL, 'active');
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('744da302-1e17-45cb-8271-1a4cc9e0945a', '1ab53359-5153-4cdf-b35f-7a2d901b7dfe', 'Kevin Frankowski', 'Founder', NULL, NULL, 'active');
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('83e715ed-dbef-4a89-8017-718a5303bcb5', 'd2b6dfd9-36bd-4054-af59-7b99a2429d5c', 'Tina Hoang', 'Tried to do a simple prediction model and got bogged down', NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('5d00c674-a44b-4d10-8550-16af45cb3117', '13a96f16-4bff-40ff-881f-0cc739e82415', 'Mohamad Yaghi', 'Vice President of AgExpert and Innovation Hub', 'mohamad.yaghi@fcc-fac.ca', NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('46d925f8-6151-408b-b267-f25f350b4426', '13a96f16-4bff-40ff-881f-0cc739e82415', 'Darcy Herauf', NULL, 'Darcy.Herauf@fcc-fac.ca', NULL, 'declined');
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('f012a809-8876-40a0-a6af-b759ca84bd7e', '6194dcbd-31bb-4cac-a145-4372e8d6fdce', 'Jahmy Hindman', 'CTO', NULL, NULL, 'declined');
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('c6d23c36-556b-42e9-ac77-bb2390c574bf', '6194dcbd-31bb-4cac-a145-4372e8d6fdce', 'Dan Leibfried', 'VP- Product Management Production & Precision Ag', NULL, NULL, 'declined');
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('113ea779-c563-4e88-98e6-d3455ce52d0b', 'fc28d720-31c9-44dc-bd11-e2372bcbf265', 'Tim Hassinger', NULL, NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('408b5e75-36e0-469c-b469-bc380ac6a84d', 'fc28d720-31c9-44dc-bd11-e2372bcbf265', 'Caleb Wieber', NULL, NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('8a496fda-f2d8-4af0-889d-d5b5a42367ee', 'fc28d720-31c9-44dc-bd11-e2372bcbf265', 'Conner Schmidt', NULL, NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('bf86587f-bea9-4584-ac09-5f70b74e0282', 'fc28d720-31c9-44dc-bd11-e2372bcbf265', 'David Wilson', NULL, NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('92f7caee-247f-4a01-9b85-4f652b0c0c17', '5f686992-a97f-48f1-99af-d05969ec2d01', 'Daniel McCann', 'CEO', 'dan@precision.ai', NULL, 'active');
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('fbdcc750-59f0-4632-8880-cc96fae55175', '23fce675-0a30-42fb-8069-7bbbdf4928b2', 'Warren Bills', 'National Leader Agronomy Services', 'https://www.mnp.ca/en/personnel/warren-bills', NULL, 'declined');
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('c292ae91-27cb-459b-b479-240eaf3789a2', '2de0b294-b289-4dfb-a2de-09ba9e6ff42b', 'Kevin Pattison', NULL, NULL, NULL, 'active');
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('264b70d1-b195-403d-b596-9246cb5345e4', '60c6d1a8-da64-4db2-8ebc-df986d97d397', 'Bob Barnhart', 'CIO', 'bob.barnhart@nutrien.com', NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('554f65f7-b403-45d3-b924-28b0a43c88de', '60c6d1a8-da64-4db2-8ebc-df986d97d397', 'Russ Girling', 'CEO', 'Russ.Girling@nutrien.com', NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('8ad96131-24b7-4527-8895-e9f4c6dff266', '625447a0-2a0d-4f17-86fe-c0197454d4a2', 'Ryan Immerkar', 'Chris Patterson', 'rsiagricoaching@gmail.com', NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('209ce524-4ddf-4be2-9531-c2eef8451cc4', '0c469b76-c597-4093-9856-4a82e49dda8a', 'Robert Saik', 'Chris Patterson', 'rob@robertsaik.com', NULL, 'active');
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('e581132f-7ba9-4ac3-b541-bb531352e4c8', '42ecd201-b196-420e-98dc-944c8929721f', 'Jay Kinnaird', 'VP of solutions', 'https://corvian.com/
Jay Kinniard 204.851.1267', NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('a9d56df1-07ae-4c6b-9d8f-bd19284cd34d', '42ecd201-b196-420e-98dc-944c8929721f', 'Manoj Regmi', NULL, NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('513f45fd-6a6b-40bb-82d4-7e86b1753f1d', '42ecd201-b196-420e-98dc-944c8929721f', 'Siva Avvaru', NULL, NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('a677902b-b148-4807-8079-e8f88f7cf762', '3adc04b9-55c1-494a-a3a0-596d8a285459', 'Andrew Pylypchuk', 'Biz Dev Director', 'andrew.pylypchuk@earthdaily.com', 'not looking for analytics', 'active');
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('7643292b-07fe-46e3-b5ed-96d1c53d1d82', '5611af59-54b4-4659-a9dd-9cedd70f8d9c', 'Bence Rizo', 'Client Success', NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('0975b691-75b9-49f4-bbf1-675fe21aa16d', '215e9a87-a873-47d1-8e63-eded6d12697d', 'Kolby Nichol', 'Director', NULL, NULL, 'active');
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('95af2dee-9c27-4e0d-af29-a0df1a828711', '92f22ad5-0575-4c6a-803b-3faef1cd6f63', 'Adam Newstead', 'Dig Ag Manager', NULL, NULL, 'active');
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('148fe400-8b25-4464-a051-c52d6742f901', 'f814bae2-a0d3-4ba0-a2a0-8ba22d7ce1ff', 'Tom Mix', 'attorney, ex head of counsel for nutrien', 'tmix@mccarthy.ca', NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('bc485927-9cc2-4a51-bb2e-13c626f6409f', '64f003ae-79a3-4f90-a391-b3651347a378', 'Alex Melnitchouck', 'Also on the board at DigiFarm', 'agintelmax@gmail.com', NULL, 'active');
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('2b329646-6e58-41ed-8c4b-66ae31a0d140', '44e020ef-9162-4a4b-a305-9e75972826b4', 'Alex M/Warren Bills/Chris Paterson', NULL, NULL, NULL, 'active');
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('a365c6ac-9dc1-478c-83ac-d031ac743cbc', '5cb225a3-cc74-4b62-8a30-75d2818b141e', 'Travis Lebouf', 'Sales Director', NULL, NULL, 'active');
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('656ccba1-b681-45c7-893a-f5c3fac1e217', '03455804-d7d5-401c-b6c4-ee7fe8f4c005', 'Mike Dahlstedt', 'CEO', 'mike@drivehockey.com', NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('a1537ad1-8e10-4d04-a260-82dbbd88dd57', '6e0cfc9a-ece5-4ae7-8c02-6bc6dd601aaf', 'Ron Johnson', 'Owner', NULL, NULL, 'active');
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('6244f4c0-88a7-4997-b815-1ed12f8e4fca', 'a430b22e-4e88-4a3e-81a6-7a217b0d2ac5', 'Connor Rankin', NULL, NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('af7ebbab-03de-495c-89f9-baa99b295bb3', 'a322c433-a772-413d-b214-c36f87e9051d', 'Kevin Dawson', NULL, 'Kevin.Dawson@aeso.ca', NULL, 'declined');
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('165252b1-18da-4e86-8064-184e65c37f55', '12d9afe8-201e-485d-a99c-5818a94f39f5', 'Troy Noad', NULL, NULL, 'Only use one call center for 20K CAD per year.  

NO GO unless we want to scale a model and/or use this as a relationship builder for this client.', 'declined');
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('63f87f05-83ef-4d95-bd11-20c524c154d8', 'bbf66120-327c-4b4f-937b-dd58f46ab7e1', 'Al Krawchuk', NULL, 'http://cuttingedge-energy.com/', NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('f68d97b9-530e-40c3-9816-ef414a38e0b4', '02690984-e911-44bf-bf0f-74c4ca7c060d', 'Tom O''Leary', NULL, NULL, NULL, 'declined');
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('1835c0c0-04b7-4ff6-a86e-dca39d771e80', 'b0937963-9226-4816-8b9b-b808203c7f7e', 'Yoshi Tateyama', NULL, NULL, 'Tabiji Kizuna deal outline', NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('3ef1034d-39be-4bb7-ab81-b8cd2cc7dbc6', 'ad0f4026-e5ef-46a2-9c5c-7404fdf04c7a', 'Galvin Ding', NULL, NULL, 'Guide to CQI+', 'active');
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('943fb6a1-c0e6-4692-84ca-524308effef6', 'ad0f4026-e5ef-46a2-9c5c-7404fdf04c7a', 'Will Leung', NULL, NULL, NULL, 'active');
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('5320ac6b-a5e8-4408-96ba-e30d0d37a98b', '2e6025f0-9ca0-4486-b270-83dc39212752', 'David Werklund', NULL, 'david@werklund.com', NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('1eeb6cb8-74ae-4cbb-99c8-0d611bdd4058', '2e6025f0-9ca0-4486-b270-83dc39212752', 'Austin Jamieson', NULL, NULL, NULL, NULL);
INSERT INTO contacts (id, company_id, full_name, role, email, notes, status) VALUES ('814ee21c-2679-43d3-a183-1f28a4c290e6', 'd94562d0-6866-40c7-b708-a4bccc84f97e', 'John Dewar', 'insurance industry vet', 'johnd@maxxaminsurance.com', 'Aug 26 2025', 'active');

-- MEETINGS
INSERT INTO meetings (id, company_id, contact_id, title, summary_url, notes) VALUES ('87221d55-7f6d-4dee-9051-869cd8c260c4', '1206946c-f40b-428a-898a-bdc2e519c838', NULL, 'Garson/Algo-Rythmn Intro/CAAIN - 2026/04/15 07:52 PDT - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, contact_id, title, summary_url, notes) VALUES ('901a0aff-4901-40a3-a2d9-f78d04950e4f', 'caf6e530-3ee9-4c4f-a63b-9c7e18eed3be', NULL, 'Algo Rythmn x Olds College - 2025/10/01 16:17 MDT - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, contact_id, title, summary_url, notes) VALUES ('ed24c757-c3b3-42a1-884c-eaf09cde3e41', '67281ac5-328d-4cdc-af34-a8993feb2ce9', NULL, 'SeeHon/Algo-Rythmn Intro May 2026 - 2026/05/13 08:27 PDT - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, contact_id, title, summary_url, notes) VALUES ('bb1247a9-369e-43a6-ae6b-671f1559ec8d', '3458bcde-08ea-48bb-8863-d33eb4da79f4', NULL, 'John Miniaci/Algo-Ryhtmn Intro - 2026/03/12 08:54 PDT - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, contact_id, title, summary_url, notes) VALUES ('551e8b90-1065-48f4-bb3c-b062539a736e', '1ab53359-5153-4cdf-b35f-7a2d901b7dfe', NULL, 'Ox+Plow/Algo-Rythmn Intro - 2026/04/27 15:56 PDT - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, contact_id, title, summary_url, notes) VALUES ('f1547ef8-d816-42a6-92d5-eb9a784f7024', '13a96f16-4bff-40ff-881f-0cc739e82415', NULL, 'FCC/Mohamad Yaghi prep notes', NULL, NULL);
INSERT INTO meetings (id, company_id, contact_id, title, summary_url, notes) VALUES ('6d28df0e-cda3-4d5e-920e-e605569a00a7', '5f686992-a97f-48f1-99af-d05969ec2d01', NULL, 'PrecisionAI/Algo-Rythmn Feb 2026 - 2026/02/27 09:50 PST - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, contact_id, title, summary_url, notes) VALUES ('accd691e-cdc4-4b92-97bb-10a72a9c95a2', '23fce675-0a30-42fb-8069-7bbbdf4928b2', NULL, 'MNP/Warren Bills/Algo-Rythmn introduction - 2026/02/27 11:07 PST - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, contact_id, title, summary_url, notes) VALUES ('7e2257d4-1bfe-449d-8ac1-1a52fa4633b0', '2de0b294-b289-4dfb-a2de-09ba9e6ff42b', NULL, 'Pattison/Algo-Rythmn May 2026 - 2026/05/26 10:22 PDT - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, contact_id, title, summary_url, notes) VALUES ('3b8525b4-d71c-4793-a974-21418d49ed8b', '625447a0-2a0d-4f17-86fe-c0197454d4a2', NULL, 'New Era Ag/Algo Mar 2026 - 2026/03/06 08:41 PST - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, contact_id, title, summary_url, notes) VALUES ('15e688c0-6585-4390-b35a-3a9a87120238', '0c469b76-c597-4093-9856-4a82e49dda8a', NULL, 'Algo-Rythmn /AGvisorPRO Apr 2026 - 2026/04/16 11:55 PDT - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, contact_id, title, summary_url, notes) VALUES ('2b16a4e5-8cb4-466b-ad95-c98082575415', '42ecd201-b196-420e-98dc-944c8929721f', NULL, 'Corvian/Algo-Rythmn intro - 2026/02/10 11:20 PST - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, contact_id, title, summary_url, notes) VALUES ('1f84a367-b6b4-448d-980e-83523f5f6b13', '3adc04b9-55c1-494a-a3a0-596d8a285459', NULL, 'https://docs.google.com/document/d/1qJ05HZMFq4', 'https://docs.google.com/document/d/1qJ05HZMFq4-bFwIksayeuwr9EAi1BCSqxvAAfT8JB-8/edit?tab=t.ontln9bfn5b', NULL);
INSERT INTO meetings (id, company_id, contact_id, title, summary_url, notes) VALUES ('8e5f3009-3930-429b-ac2b-60c0ab9d0adf', '5611af59-54b4-4659-a9dd-9cedd70f8d9c', NULL, 'DigiFarm/Algo-Rythmn intro - 2026/04/28 21:50 PDT - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, contact_id, title, summary_url, notes) VALUES ('8c406c59-913d-483b-a270-d104cafc2495', '215e9a87-a873-47d1-8e63-eded6d12697d', NULL, 'Telus/Algo-Rythmn intro  - 2026/04/22 10:47 PDT - Recording', NULL, NULL);
INSERT INTO meetings (id, company_id, contact_id, title, summary_url, notes) VALUES ('8caaa88f-957e-4c13-8c31-bcc420c5b56b', '92f22ad5-0575-4c6a-803b-3faef1cd6f63', NULL, 'FCL/Algo- Rythmn intro - 2026/05/13 09:58 PDT - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, contact_id, title, summary_url, notes) VALUES ('4181ca1e-5c8c-4ee5-821b-2159894c368c', 'f814bae2-a0d3-4ba0-a2a0-8ba22d7ce1ff', NULL, 'Tom Mix/Algo-Rythmn May 1 2026 - 2026/05/04 19:05 PDT - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, contact_id, title, summary_url, notes) VALUES ('818e142a-624c-4760-88ca-fc903fde1a92', '64f003ae-79a3-4f90-a391-b3651347a378', NULL, 'Alex/Algo-Rythmn intro  - 2026/04/16 08:50 PDT - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, contact_id, title, summary_url, notes) VALUES ('a1af6f9e-4465-465f-8783-665f66186576', '44e020ef-9162-4a4b-a305-9e75972826b4', NULL, 'Doug MacKay/Algo-Rythmn intro - 2026/04/20 09:52 PDT - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, contact_id, title, summary_url, notes) VALUES ('1d4df6d5-8f75-4811-a951-f28017522108', 'fa973e51-a966-415c-9e4f-588cd35605b1', NULL, 'Felippe/Algo-Rythmn intro - 2026/04/21 07:50 PDT - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, contact_id, title, summary_url, notes) VALUES ('2b0202e0-168e-4dfc-860a-d22f023341fc', 'a430b22e-4e88-4a3e-81a6-7a217b0d2ac5', NULL, 'Meeting (Calgary Flames) - 2025/10/03 09:27 HKT - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, contact_id, title, summary_url, notes) VALUES ('adc16090-d202-4bbb-a675-9f2c505e7be5', 'a322c433-a772-413d-b214-c36f87e9051d', NULL, 'AESO/Algo-Rythmn intro - 2025/12/16 06:42 PST - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, contact_id, title, summary_url, notes) VALUES ('5444139e-1498-43ca-886a-1a62fa93237c', '12d9afe8-201e-485d-a99c-5818a94f39f5', NULL, 'Apex/Algo-Rythmn Apr 2026 - 2026/04/30 09:55 PDT - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, contact_id, title, summary_url, notes) VALUES ('b48a927b-f1c9-4d35-8fd6-87dc72a18b78', 'bbf66120-327c-4b4f-937b-dd58f46ab7e1', NULL, 'Cutting Edge/Algo-Rythmn intro - 2026/01/23 08:57 PST - Notes by Gemini', NULL, NULL);
INSERT INTO meetings (id, company_id, contact_id, title, summary_url, notes) VALUES ('418adeee-9412-41a5-9b7b-03bc84d53d48', 'ad0f4026-e5ef-46a2-9c5c-7404fdf04c7a', NULL, 'Script Pharmacy - CQI+ Requirement NIDR Submission MEETING NOTES', NULL, NULL);

-- RESOURCES
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('69fe7d1a-847e-4d18-bc8f-d06506cad0a3', '9db1f04a-9024-4304-bc08-217049f664fe', 'Deck', 'deck', 'https://deck.algo-rythmn.ai/AgroIntel');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('89fe532a-8d3c-4b21-a368-9e6a96def513', 'caf6e530-3ee9-4c4f-a63b-9c7e18eed3be', 'Demo', 'demo', 'https://project2604.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('f1b00fd2-3392-4946-ae88-cbbe102e95ef', 'd2b6dfd9-36bd-4054-af59-7b99a2429d5c', 'Cheatsheet (for internal)', 'document', 'https://docs.google.com/document/d/1YJqvs_luxZ8016DZ8ofMRN0OMBIIvhhX/edit');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('73d35a57-2d1b-4c16-9bcb-337c4d7baa7e', 'd2b6dfd9-36bd-4054-af59-7b99a2429d5c', 'Pitch Deck (for external)', 'deck', 'https://deck.algo-rythmn.ai/yield-ice');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('b050d1e2-82fd-478e-8c01-3c5e87ea4f47', '5f686992-a97f-48f1-99af-d05969ec2d01', 'Deck', 'deck', 'https://deck.algo-rythmn.ai/precision-ai-proposal');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('98c3edc6-c2fe-4fde-9a68-83c53b3ee967', '23fce675-0a30-42fb-8069-7bbbdf4928b2', 'Demo app', 'demo', 'http://algomindpro.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('351ec7c1-bb18-46e5-8a8e-e67abd5a5c50', '23fce675-0a30-42fb-8069-7bbbdf4928b2', 'p: http://algomindpro.algo-rythmn.ai/', 'other', 'https://www.mnp.ca/en/personnel/warren-bills');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('ff20afe7-2f59-42f7-89f3-6b632d231bb2', '625447a0-2a0d-4f17-86fe-c0197454d4a2', 'Pricing', 'deck', 'https://deck.algo-rythmn.ai/new-era-ag-ai-pricing');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('cdaa6935-d274-47ed-b6a4-abc6fe08ee6a', '625447a0-2a0d-4f17-86fe-c0197454d4a2', 'Web app', 'web_app', 'https://newera.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('9bb94981-14ac-43b5-b174-90016f37fa1f', '625447a0-2a0d-4f17-86fe-c0197454d4a2', 'Data upload dashboard', 'other', 'https://new-era-file-upload.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('bbf1f927-a433-4550-891a-1659167c96e0', '625447a0-2a0d-4f17-86fe-c0197454d4a2', 'Soil Deck', 'deck', 'https://deck.algo-rythmn.ai/soil-intelligence.html');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('d08bc798-30e6-42d7-bf52-8d8793e20bba', '625447a0-2a0d-4f17-86fe-c0197454d4a2', 'Triangle Deck', 'deck', 'https://deck.algo-rythmn.ai/plant-triangle-framework.html');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('dd57c4f7-dc2f-4fc0-a3b3-4a3f89f75ca5', '625447a0-2a0d-4f17-86fe-c0197454d4a2', 'Soil demo', 'demo', 'https://project2602.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('e3563fe8-714d-4124-aa2b-c3ca3b171f6a', '625447a0-2a0d-4f17-86fe-c0197454d4a2', '1. Demo', 'demo', 'https://project2503.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('56a0c08e-6b02-4d2b-a304-a95bd60265ce', '625447a0-2a0d-4f17-86fe-c0197454d4a2', '2. Deck', 'deck', 'https://deck.algo-rythmn.ai/NewEraAg-TrialData.html');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('015a644b-eec6-4e49-b392-49c1874ec6a3', '42ecd201-b196-420e-98dc-944c8929721f', 'Deck for v2.0', 'deck', 'https://deck.algo-rythmn.ai/AlgoMind.html');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('a2e6d485-1e76-465c-a29f-dd10355bd4ec', '42ecd201-b196-420e-98dc-944c8929721f', 's://deck.algo-rythmn.ai/AlgoMind.html', 'deck', 'https://corvian.com/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('20b1822f-b6c7-42e0-a189-333dc877632e', '3adc04b9-55c1-494a-a3a0-596d8a285459', 'KW''s demo', 'demo', 'https://project2612.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('0fb3193b-d277-487b-8111-8ebf81ca93a6', '3adc04b9-55c1-494a-a3a0-596d8a285459', 'New deck', 'deck', 'http://deck.algo-rythmn.ai/earthdaily-ai-proposal');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('86be9752-33b0-46b0-bc46-43dbb7b84273', '3adc04b9-55c1-494a-a3a0-596d8a285459', 'New deck', 'deck', 'http://deck.algo-rythmn.ai/earthdaily-ai');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('da2c778c-080d-444b-a917-b7f6bc03be9d', '3adc04b9-55c1-494a-a3a0-596d8a285459', 'YLex''s Demo', 'demo', 'https://algomindpro-earthdaily.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('8d490991-84f3-4e03-b1e7-ffd64d5bc934', 'f814bae2-a0d3-4ba0-a2a0-8ba22d7ce1ff', 'Specific Deck', 'deck', 'https://deck.algo-rythmn.ai/doc-ai-mining');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('5ce7e815-dadc-4371-aa63-2e23b134fc54', 'f814bae2-a0d3-4ba0-a2a0-8ba22d7ce1ff', 'Web app', 'web_app', 'https://opsedge.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('9ffdc203-9ec4-4c4a-a56d-9f5adedc809e', 'f814bae2-a0d3-4ba0-a2a0-8ba22d7ce1ff', 'Deck for Mosaic', 'deck', 'https://deck.algo-rythmn.ai/potash-mining-operations.html');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('dbfdae7e-5716-4139-b540-84889cb6ffbd', 'f814bae2-a0d3-4ba0-a2a0-8ba22d7ce1ff', 'Demo', 'demo', 'http://testbed.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('1213d049-f492-4897-adac-4c48f9907df8', '44e020ef-9162-4a4b-a305-9e75972826b4', 'AlgoDroneTeams Deck', 'deck', 'https://deck.algo-rythmn.ai/drone-team');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('9f6524e3-10d5-485e-bd70-7825bc841110', '44e020ef-9162-4a4b-a305-9e75972826b4', 'KW''s report', 'deck', 'https://deck.algo-rythmn.ai/drone-report');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('10630f55-05e3-4192-9280-e2c7737ee162', 'fa973e51-a966-415c-9e4f-588cd35605b1', 'Co-op', 'deck', 'https://deck.algo-rythmn.ai/coop-member-intelligence');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('556ef3bc-3c2c-4502-b808-6472d4c487d5', 'fa973e51-a966-415c-9e4f-588cd35605b1', 'Potential plays', 'deck', 'https://deck.algo-rythmn.ai/Brazil-Plays-Opportunity');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('d5717593-e2af-422e-bd2f-ac2421fcba60', '03455804-d7d5-401c-b6c4-ee7fe8f4c005', 'Deck', 'deck', 'https://deck.algo-rythmn.ai/drive-hockey-ai-agent.html');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('a74a2c76-76a2-4290-8363-51cda8794bf2', '6e0cfc9a-ece5-4ae7-8c02-6bc6dd601aaf', 'Web App2', 'demo', 'https://project2606.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('098d118c-bfd4-40a2-898d-701e95cb9a68', '6e0cfc9a-ece5-4ae7-8c02-6bc6dd601aaf', 'Web App1', 'demo', 'https://project2605.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('3262f90d-5bad-42f7-baa6-b671a2e3e91f', 'a430b22e-4e88-4a3e-81a6-7a217b0d2ac5', 'Web App', 'web_app', 'https://workbench.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('c12d7a9b-0bdf-452d-aff5-5c9b7ab0e164', '12d9afe8-201e-485d-a99c-5818a94f39f5', 'Demo', 'demo', 'http://testbed.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('ac8c365e-f62b-4031-9a48-452be2d7d12c', '12d9afe8-201e-485d-a99c-5818a94f39f5', 'Deck', 'deck', 'https://deck.algo-rythmn.ai/potash-mining-operations.html');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('f897286b-9449-429c-935b-70e9dcd8c63c', 'bbf66120-327c-4b4f-937b-dd58f46ab7e1', 'Workflow Deck', 'deck', 'https://deck.algo-rythmn.ai/prospecting-ai');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('859c73e0-584c-455b-b734-666b6823a014', 'bbf66120-327c-4b4f-937b-dd58f46ab7e1', 'Workflow Demo', 'demo', 'https://project2611.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('187d697f-834c-4640-874e-9301a0216fae', 'bbf66120-327c-4b4f-937b-dd58f46ab7e1', 'New deck', 'deck', 'https://deck.algo-rythmn.ai/chemical-sourcing');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('89848602-1d04-4b25-81fd-caf542a70562', 'bbf66120-327c-4b4f-937b-dd58f46ab7e1', 'Deck (lite & detailed)', 'deck', 'https://deck.algo-rythmn.ai/ai-drilling-revolution-lite.html');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('7aa3563d-830e-41fc-a6e0-05e7562602c7', 'bbf66120-327c-4b4f-937b-dd58f46ab7e1', 'hmn.ai/ai-drilling-revolution-lite.html', 'deck', 'https://deck.algo-rythmn.ai/ai-drilling-revolution.html');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('a11bfcf6-e113-4294-b4ae-de1051742eb8', 'bbf66120-327c-4b4f-937b-dd58f46ab7e1', 'rythmn.ai/ai-drilling-revolution.html', 'other', 'http://cuttingedge-energy.com/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('699b7f20-4593-406a-835b-a047b8bcf20a', '66ba61b3-ddaa-4d46-86b4-f9b809445d1f', 'Deck', 'deck', 'https://deck.algo-rythmn.ai/pason-proposal');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('2a2d5f2f-e676-4092-9f57-3a76a4577713', 'b0937963-9226-4816-8b9b-b808203c7f7e', 'Features introduction', 'deck', 'https://deck.algo-rythmn.ai/Tabiji-Kizuna-features.html');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('d4e09f80-11d8-45d5-bd60-a0f12a00ce3e', 'b0937963-9226-4816-8b9b-b808203c7f7e', 'Web Address', 'other', 'https://tabi-1.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('c8a5f84e-12e8-41c9-ba03-3eeb1347e569', 'b0937963-9226-4816-8b9b-b808203c7f7e', 'Deck', 'deck', 'https://deck.algo-rythmn.ai/Tabiji-Kizuna.html');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('01e38154-f3fe-49b3-81bf-158613dd5785', 'ad0f4026-e5ef-46a2-9c5c-7404fdf04c7a', 'Pricing', 'deck', 'https://deck.algo-rythmn.ai/AlgoPharma-pricing');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('6e43ec5d-c5f5-4d92-bd52-15d535c1bd46', 'ad0f4026-e5ef-46a2-9c5c-7404fdf04c7a', 'Product Scope (External)', 'deck', 'https://deck.algo-rythmn.ai/algopharma-features-external');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('e59ccd6f-df0a-430c-b5e6-145258e9bc19', 'ad0f4026-e5ef-46a2-9c5c-7404fdf04c7a', 'Web App', 'web_app', 'https://pharmacy.algo-rythmn.ai/');
INSERT INTO resources (id, company_id, label, resource_type, url) VALUES ('b81cc137-c4ba-4090-b5a4-944182e176f4', 'ad0f4026-e5ef-46a2-9c5c-7404fdf04c7a', 'Product design', 'deck', 'https://deck.algo-rythmn.ai/pharmacy-ai-template.html');

-- RELATIONSHIPS (source name stored as note; manually link contact_id after import)
INSERT INTO relationships (id, to_company_id, relationship_type, note) VALUES ('4ed6f64f-d98d-42f3-95b0-f68c8cb68e81', '00aa6e8f-79d0-4839-89ec-b7960483b101', 'introduced_by', 'Source: Rob Anderson');
INSERT INTO relationships (id, to_company_id, relationship_type, note) VALUES ('4a8a452e-fa37-4d72-8396-a7264f9e7f36', 'bed88e4d-121f-4633-83dc-8b1bf394e148', 'introduced_by', 'Source: Prashant Pandey');
INSERT INTO relationships (id, to_company_id, relationship_type, note) VALUES ('958dfe77-82d6-49dc-a01d-cae480841446', 'bed88e4d-121f-4633-83dc-8b1bf394e148', 'introduced_by', 'Source: Megan Croft');
INSERT INTO relationships (id, to_company_id, relationship_type, note) VALUES ('d8adaa4d-e2a0-46a3-a90e-4fb7f47cd8dc', '9db1f04a-9024-4304-bc08-217049f664fe', 'introduced_by', 'Source: David Werklund');
INSERT INTO relationships (id, to_company_id, relationship_type, note) VALUES ('be3238de-de66-44fc-bf1f-a9e5ea2c595f', '13a96f16-4bff-40ff-881f-0cc739e82415', 'introduced_by', 'Source: Louis at FCC/cold at linkedin');
INSERT INTO relationships (id, to_company_id, relationship_type, note) VALUES ('dd2c1fd2-87b6-429d-867b-5fab2cef0c77', '5f686992-a97f-48f1-99af-d05969ec2d01', 'introduced_by', 'Source: Tall Grass VC');
INSERT INTO relationships (id, to_company_id, relationship_type, note) VALUES ('0183da99-3710-4139-8835-271a98545820', '23fce675-0a30-42fb-8069-7bbbdf4928b2', 'introduced_by', 'Source: Chris Paterson');
INSERT INTO relationships (id, to_company_id, relationship_type, note) VALUES ('9e693faf-7e0d-47f3-b93f-64027a0e005a', '42ecd201-b196-420e-98dc-944c8929721f', 'introduced_by', 'Source: Todd Ormann');
INSERT INTO relationships (id, to_company_id, relationship_type, note) VALUES ('be552eee-78e8-4611-8a77-f44d0161350c', '44e020ef-9162-4a4b-a305-9e75972826b4', 'introduced_by', 'Source: Todd Ormann');
INSERT INTO relationships (id, to_company_id, relationship_type, note) VALUES ('ff8d3cdb-ed75-4230-9872-201295ce6a37', '03455804-d7d5-401c-b6c4-ee7fe8f4c005', 'introduced_by', 'Source: ron johnson');
INSERT INTO relationships (id, to_company_id, relationship_type, note) VALUES ('239ed34d-9c23-449b-aa1f-1ea222e8cf8e', '12d9afe8-201e-485d-a99c-5818a94f39f5', 'introduced_by', 'Source: Kenny Cheung');
INSERT INTO relationships (id, to_company_id, relationship_type, note) VALUES ('21f47c8f-e694-4769-8a92-d7be5aa5c421', 'd94562d0-6866-40c7-b708-a4bccc84f97e', 'introduced_by', 'Source: Kenny');

COMMIT;