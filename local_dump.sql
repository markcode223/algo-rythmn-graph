--
-- PostgreSQL database dump
--

\restrict NzkC9bB3c2KeBDsGYymDWrELlgdFwBW48dBkMFxzOqczEYxcZ3fy2EK1cCpeGZS

-- Dumped from database version 16.13 (Homebrew)
-- Dumped by pg_dump version 17.9 (Homebrew)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: companies; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.companies (id, name, sector, priority, status, contact_type, notes, from_product_team, since, created_at, updated_at) FROM stdin;
1c112b96-c61d-4212-97d6-e434af1091c5	Alberta Government	Government	\N	declined	investor	They pushed us off to Alberta Innovates\n\nAlberta Gov meeting notes	\N	2025-08-19	2026-05-29 20:04:34.381816+08	2026-05-29 20:04:34.381816+08
8bc38ce0-7f4a-4539-a914-a8ff13935484	Alberta Innovates	Government	\N	\N	investor	\N	\N	\N	2026-05-29 20:04:34.381816+08	2026-05-29 20:04:34.381816+08
fe7aebd2-2658-4a1f-b4da-0f22e7c50055	SVG Ventures	Government	\N	in_progress	investor	connected us to Coleton	\N	\N	2026-05-29 20:04:34.381816+08	2026-05-29 20:04:34.381816+08
538ce5f7-c65a-4958-8a48-4fe4086f8e7a	CAAIN	Government	\N	active	investor	Next step is applying on website here (program guide and application are at bottom of page)\n\nOlds- touch base and see if they're open to CAAIN, they'd need to put name on it and put in token amount, or we can work something out- DroneTeams\n\nAlgoScout/AgroMind for Kevin Pattison?\n\nAlgoImagery for Doug Mackaye?\n\nAgEinstein for Ox and Plow?\n\nReach out to Garson to keep it alive for June/"talking to partners"	Cheatsheets:\nAgroMind-cheatsheet.docx\nAgEinstein-cheatsheet.docx\nAlgoImagery-cheatsheet.docx\nAlgoSwarm-cheatsheet.docx\nAlgoSwarm-cheatsheet-Chris.docx	\N	2026-05-29 20:04:34.381816+08	2026-05-29 20:04:34.381816+08
5a782816-4953-40ed-9f66-52a73eb6f1b8	Tall Grass Ventures	Funding	\N	active	investor	Sent MNP deck Mar 9- he liked it, thinks they need it at MNP, thinks it's politics\n\nLoves to chat, good contacts	Deck: https://deck.algo-rythmn.ai/AgroIntel	\N	2026-05-29 20:04:34.381816+08	2026-05-29 20:04:34.381816+08
0f19e1e7-e536-4860-8c9a-640f44869f0c	Graphite	Funding	\N	\N	investor	\N	\N	\N	2026-05-29 20:04:34.381816+08	2026-05-29 20:04:34.381816+08
7633b5b4-d337-4185-a9f1-8e19669f1546	AFSC	Funding	medium	\N	investor	\N	\N	\N	2026-05-29 20:04:34.381816+08	2026-05-29 20:04:34.381816+08
c0358c7d-5918-4958-ab9c-b3bb2e6c65d6	Red Deer Polytechnic	Academia	low	\N	\N	\N	\N	\N	2026-05-29 20:04:34.381816+08	2026-05-29 20:04:34.381816+08
a2ea2554-0f6e-4dea-8e44-54246d0ac335	Olds College	Academia	\N	active	\N	met, talking to todd before responding back, need to get irap advisor	Data requirement: project_canola_olds\n\nDemo: https://project2604.algo-rythmn.ai/	\N	2026-05-29 20:04:34.381816+08	2026-05-29 20:04:34.381816+08
91cdfbff-d842-4656-8a81-4bf38dba22d4	Bridgewerk	Finance	\N	active	end_user	met, discussed a golf course grass company crossing into ag	\N	\N	2026-05-29 20:04:34.381816+08	2026-05-29 20:04:34.381816+08
5a935643-d108-432d-9d72-7d209e0bc302	ATB Financial	Finance	\N	active	end_user	Sent John Algomind demo,Hockey demo, ageinstein on Mar 18, along with proposal\n\nChecking in during July	\N	\N	2026-05-29 20:04:34.381816+08	2026-05-29 20:04:34.381816+08
fe1b53bb-e941-45ca-a99f-71d18f157f57	Ox and Plow	Finance	low	active	end_user	Met, discussing viability of giving them a market analysis private GPT\n\nMeeting with them again, they didn't bite on 100-200K	\N	\N	2026-05-29 20:04:34.381816+08	2026-05-29 20:04:34.381816+08
ba22fb98-a115-408b-810a-c78cd120f3da	I.C.E.	Finance	medium	active	end_user	Meeting may 27th\n\nSet expectation of making proposal in August to submit to Sept budgeting\n\nIf they need something more firm ask for money for proof of concept\n\nAsking questions \n\nAsk if we can build up a proposal for August\n\nICE Meeting Summary May 2026	Cheatsheet (for internal): https://docs.google.com/document/d/1YJqvs_luxZ8016DZ8ofMRN0OMBIIvhhX/edit\nPitch Deck (for external): https://deck.algo-rythmn.ai/yield-ice	\N	2026-05-29 20:04:34.381816+08	2026-05-29 20:04:34.381816+08
9eaef3fe-af0d-4bfe-ace1-d1839f1249b0	FCC	Insurance	\N	\N	end_user	\N	\N	2025-08-08	2026-05-29 20:04:34.381816+08	2026-05-29 20:04:34.381816+08
0268dd48-8e64-4bca-a592-9b898f02aa29	John Deere	Agriculture	\N	declined	end_user	Messaged Jahmy for intro from Kenny's LinkedIn, Kenny followed up, no response\n\nConnected with a few people, followed up	\N	\N	2026-05-29 20:04:34.381816+08	2026-05-29 20:04:34.381816+08
f83f61d2-8fa5-4afd-930b-b54a697c9c08	IntellinAir	Agriculture	on_hold	\N	end_user	Data Discussion next	\N	\N	2026-05-29 20:04:34.381816+08	2026-05-29 20:04:34.381816+08
3a6cece2-54a7-47da-9d83-c5c02cae7faf	Precision.ai	Agriculture	medium	active	end_user	Meeting May 29th	Deck: https://deck.algo-rythmn.ai/precision-ai-proposal\nProposal: Algo-Rythmn_PrecisionAI_Business Proposal_v1.0.docx	\N	2026-05-29 20:04:34.381816+08	2026-05-29 20:04:34.381816+08
58677a81-1f33-4618-a938-88027703a579	MNP	Agriculture	dead	declined	end_user	Warren was not interested	Demo app: http://algomindpro.algo-rythmn.ai/	2025-09-07	2026-05-29 20:04:34.381816+08	2026-05-29 20:04:34.381816+08
1fcdabef-abb0-401b-8570-fe3a8c688f99	Pattison Technologies Inc.	Agriculture	medium	active	end_user	finished the db, it's ready for AI, schedule in April 2026\n.\nWe met and shared demos, need to see if the small scale works for us somehow LET CAAIN SUBSIDIZE\n\nAlso discussed introing at Trimble	\N	\N	2026-05-29 20:04:34.381816+08	2026-05-29 20:04:34.381816+08
29fccf3d-f22e-4a3a-90ed-bb7c2e89dcbb	Nutrien	Agriculture	low	\N	end_user	Exploring contacts at LinkedIn	\N	\N	2026-05-29 20:04:34.381816+08	2026-05-29 20:04:34.381816+08
5ef5c337-c6ea-4467-b38f-ca6f48deec39	New Era Ag Technologies	Agriculture	medium	\N	end_user	Dennis broke his leg, Kenny had a conversation with Ryan.  Ryan has new idea which we will hear next week.\n\nRyan responded back ambiguously, said they need to have internal talks and will respond in mid-June	Pricing: https://deck.algo-rythmn.ai/new-era-ag-ai-pricing\nWeb app: https://newera.algo-rythmn.ai/\nData upload dashboard: https://new-era-file-upload.algo-rythmn.ai/ (username: ryan password: ryan2026!)\n\nSoil Deck: https://deck.algo-rythmn.ai/soil-intelligence.html\nTriangle Deck: https://deck.algo-rythmn.ai/plant-triangle-framework.html\nSoil demo: https://project2602.algo-rythmn.ai/\n\nFor the data file from New Era Research:\n1. Demo: https://project2503.algo-rythmn.ai/\n2. Deck: https://deck.algo-rythmn.ai/NewEraAg-TrialData.html\n3. Document: 20251204_new_era_ag_kelly_data	\N	2026-05-29 20:04:34.381816+08	2026-05-29 20:04:34.381816+08
1c334aa3-e7af-436c-8cb8-ad58421f3843	AGVISOR PRO	Agriculture	low	active	end_user	met apr 16th	quick questions for agvisorpro	\N	2026-05-29 20:04:34.381816+08	2026-05-29 20:04:34.381816+08
9be515ff-8f99-434d-81c7-dacbed8abe95	Corvian	Agriculture	low	\N	end_user	Manoj responded on May 22nd saying they're doing internal vetting of tools	Demo: supporting_document_2026.02.02\nDeck for v2.0: https://deck.algo-rythmn.ai/AlgoMind.html	2026-01-01	2026-05-29 20:04:34.381816+08	2026-05-29 20:04:34.381816+08
afe70bd0-82ec-4c8b-b202-a43f6f2c9dac	Earth Daily	Agriculture	medium	active	end_user	Met Andrew who was enthusiastic about partnering with us, he's intro-ing to their head of analytics who will be a harder sell\n\nMeeting May 28th. \n\nWe're prepared for the meeting\n\nnot looking for analytics	KW's demo: https://project2612.algo-rythmn.ai/\nNew deck: http://deck.algo-rythmn.ai/earthdaily-ai-proposal\n\nDeck: http://deck.algo-rythmn.ai/earthdaily-ai\nYLex's Demo: https://algomindpro-earthdaily.algo-rythmn.ai/	\N	2026-05-29 20:04:34.381816+08	2026-05-29 20:04:34.381816+08
349e12ef-aea4-41a4-bfb6-21c4c846101f	Digifarm	Agriculture	\N	\N	end_user	Get low res data and include it into our financial portfolio model for corn/soy/canola FOR ICE\n\nApproach them for limited partnership, end user would be their customers.\n\nAlso extend to risk/insurers\n\nRemember global coverage, but high res data not a driver	\N	\N	2026-05-29 20:04:34.381816+08	2026-05-29 20:04:34.381816+08
809c9ff5-10c5-4395-9f22-0b6d54425b7d	TELUS AG/Decisive	Agriculture	medium	active	end_user	Met, asked for the scope of their data so that we can pinpoint pilot proposals	\N	\N	2026-05-29 20:04:34.381816+08	2026-05-29 20:04:34.381816+08
766cc7c9-97a7-49c3-aadf-9bde7c8ea7db	FCL (Federated Co-ops Limited)	Agriculture	low	active	\N	Met May 13th, scheduling followup	\N	\N	2026-05-29 20:04:34.381816+08	2026-05-29 20:04:34.381816+08
53b99e36-06a4-4541-ae40-6c95950b66e6	Tom Mix	Ag Warm Lead Generators	low	\N	connector	Emailed the document intelligence decks	Specific Deck: https://deck.algo-rythmn.ai/doc-ai-mining\n\n\nWeb app: https://opsedge.algo-rythmn.ai/\n\nDeck for Mosaic: https://deck.algo-rythmn.ai/potash-mining-operations.html\n\nDemo: http://testbed.algo-rythmn.ai/	\N	2026-05-29 20:04:34.381816+08	2026-05-29 20:04:34.381816+08
b1885e33-a8e6-4453-82f6-b31abf7de912	Alex Melnitchouck	Ag Warm Lead Generators	medium	active	connector	Met apr 16th. he's going to intro us to Xarvio. We need to come up with a fee structure for him to work with us.\n\nAlex will come back end of week of May12th, Kenny will discuss digifarm also	\N	\N	2026-05-29 20:04:34.381816+08	2026-05-29 20:04:34.381816+08
f589c769-c7e4-4d09-b0cb-5c2b97df9ced	Doug MacKay	Ag Warm Lead Generators	highest	active	connector	Met Apr 20th. He's going to intro us to someone at John Deere, anda few other places. Same structure needed as Alex M.\n\nMeeting May 28th Discuss DroneTeams	AlgoDroneTeams Deck: https://deck.algo-rythmn.ai/drone-team\nKW's report: https://deck.algo-rythmn.ai/drone-report	\N	2026-05-29 20:04:34.381816+08	2026-05-29 20:04:34.381816+08
891d0477-7d6c-433c-9669-eb4831ce3460	Felippe Karp	Ag Warm Lead Generators	highest	active	connector	Met Apr 21st. He's going to intro us to Brazilian AG and is very enthusaistic about collaborating with us. \n\nTry to identify lowest-hanging fruit, ie. no academics, find clients first	Co-op: https://deck.algo-rythmn.ai/coop-member-intelligence\nPotential plays: https://deck.algo-rythmn.ai/Brazil-Plays-Opportunity	\N	2026-05-29 20:04:34.381816+08	2026-05-29 20:04:34.381816+08
5edec360-1dad-428d-a7e4-aecb2b203ed2	Chris Paterson	Ag Warm Lead Generators	\N	\N	both	Talk to Doug Mackaye first about DroneTeams	\N	\N	2026-05-29 20:04:34.381816+08	2026-05-29 20:04:34.381816+08
130fd383-cc62-4be1-84f9-dcd4276132dc	CoStar/STR	Hospitality	dead	active	end_user	Met, he gave us a tour of new STR acqiusition, we are trying to talk to one of his analytics friends at CoStar	\N	\N	2026-05-29 20:04:34.381816+08	2026-05-29 20:04:34.381816+08
e12e3138-d364-4836-b259-052583dd8f5a	Drive Hockey	Hockey	low	\N	end_user	Kenny's lighting a fire underneath them	Document: hockey_drive_20260119\nDeck: https://deck.algo-rythmn.ai/drive-hockey-ai-agent.html	2026-01-01	2026-05-29 20:04:34.381816+08	2026-05-29 20:04:34.381816+08
7573d945-fc82-4de3-bc8f-d0e765870310	Elite Hockey Science	Hockey	low	active	end_user	met, deal went back to drawing board\n\nKenny has been talking to Ron again	Web App2: https://project2606.algo-rythmn.ai/\nWeb App1:  https://project2605.algo-rythmn.ai/	\N	2026-05-29 20:04:34.381816+08	2026-05-29 20:04:34.381816+08
8b990604-4d9b-417b-b2ee-be31e1c986d7	Calgary Flames	Hockey	low	\N	end_user	Connor- it will be a summer project. We can dev with drive hockey in the meantime\n\nMatthias is going to skate with him next week\n\nThey are doing it themselves, Kenny's gonna meet their golden boy in JUNE in person	Web App: https://workbench.algo-rythmn.ai/	\N	2026-05-29 20:04:34.381816+08	2026-05-29 20:04:34.381816+08
0205aa01-eafe-4e32-ab4b-c90a9ad6e378	AESO	Energy	low	declined	end_user	emailed mar 31st with validation layer illustration, no response.\n\nKenny is meeting with Will Bridge.	Transparent Agentic Platform (This is also the latest AgMRI beta from Dev Team)\n\nVideo Demo:\nTransparent Agentic Platform	\N	2026-05-29 20:04:34.381816+08	2026-05-29 20:04:34.381816+08
d6dcd908-1b15-4b2f-a1b6-970388ba4bf6	APEX	Energy	medium	declined	end_user	emailed mar 9, wait until April 2026- Troy had a family issue come up so we're waiting\n\nDeclined Call Center automation job, asking for followup meeting\n\nOnly use one call center for 20K CAD per year.  \n\nNO GO unless we want to scale a model and/or use this as a relationship builder for this client.	Determine whether it’s worth building it based on our ROI.\n\nCheat Sheets: Apex_AI_Call_Response_Cheatsheet.docx\nApex_HSE_Automation_Cheatsheet.docx\n\nDemo: http://testbed.algo-rythmn.ai/ (paused)\nDeck: https://deck.algo-rythmn.ai/potash-mining-operations.html	\N	2026-05-29 20:04:34.381816+08	2026-05-29 20:04:34.381816+08
fcb805cf-ccd1-451a-b2a0-5dfc08681823	Cutting Edge drilling	Energy	low	\N	end_user	Steering towards small project around public data +private walled garden\n\nSchedule right away and show deck/workflow automation. Ask for historical data to vet data quality and to provide backtesting to see how much we would have saved them on projects.\n\nFocus on PASON first	Workflow Deck: https://deck.algo-rythmn.ai/prospecting-ai\nWorkflow Demo: https://project2611.algo-rythmn.ai/\n\nDemo: Use public well data to build a decision support tool on well planning & offset analysis. (Hold on now)\n\nNew deck: https://deck.algo-rythmn.ai/chemical-sourcing\n\nDeck (lite & detailed): https://deck.algo-rythmn.ai/ai-drilling-revolution-lite.html\nhttps://deck.algo-rythmn.ai/ai-drilling-revolution.html	2026-01-01	2026-05-29 20:04:34.381816+08	2026-05-29 20:04:34.381816+08
f0d6a99b-5986-4ac7-9397-59ab3e613278	Pason	Energy	medium	active	end_user	We're meeting with the CEO- don't bring a demo/brochure/anything.\n\nHe's fairly tough to deal with. Pason does not own or look at their data. \n\nWe need to think outside of the box here. Dashboard with LLM?\n\nMeeting JUNE 2nd IN PERSON Kenny- they don't own data, exploratory meet	Deck: https://deck.algo-rythmn.ai/pason-proposal	\N	2026-05-29 20:04:34.381816+08	2026-05-29 20:04:34.381816+08
177ddc8e-817e-487f-9859-e925dceb9c40	Blue Rock Law	Misc	dead	declined	\N	not interested	\N	\N	2026-05-29 20:04:34.381816+08	2026-05-29 20:04:34.381816+08
6a64b624-9cf9-4d9e-b6e4-e96a49b8eca8	Yoshi	Misc	low	\N	\N	I asked him about aquaculture in Japan.\n\nTabiji Kizuna deal outline	Features introduction: https://deck.algo-rythmn.ai/Tabiji-Kizuna-features.html\nWeb Address: https://tabi-1.algo-rythmn.ai/\nDeck: https://deck.algo-rythmn.ai/Tabiji-Kizuna.html\nWeb Demo:               tabi-web-v3.mp4\nMobile Demo:              tabi -mobile.mp4	\N	2026-05-29 20:04:34.381816+08	2026-05-29 20:04:34.381816+08
ad670f71-06f5-426f-9f18-fcf65afac3b0	Pharmacy (multiple)	Misc	high	active	both	ongoing\n\nGuide to CQI+	Pricing: https://deck.algo-rythmn.ai/AlgoPharma-pricing\n\nFeeback:\nAlgoPharma_User Feedback & Requirements_Track_v1.0\n\nProduct Scope (External): https://deck.algo-rythmn.ai/algopharma-features-external\n\nWeb App: https://pharmacy.algo-rythmn.ai/\n\nProduct design: https://deck.algo-rythmn.ai/pharmacy-ai-template.html	\N	2026-05-29 20:04:34.381816+08	2026-05-29 20:04:34.381816+08
8e58b7d3-f196-4dd4-b8b0-4e402e38c0b7	Werklund Family Office	Misc	\N	\N	\N	\N	\N	\N	2026-05-29 20:04:34.381816+08	2026-05-29 20:04:34.381816+08
7daa5352-76e8-49ac-8999-81beec360797	Maxxcann	Defunct	dead	active	\N	Sent email Mar 8\n\nAug 26 2025	\N	2025-08-01	2026-05-29 20:04:34.381816+08	2026-05-29 20:04:34.381816+08
\.


--
-- Data for Name: contacts; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.contacts (id, company_id, full_name, role, email, notes, status, created_at) FROM stdin;
bcd28dd2-33e4-4d63-a526-ac0bac65a279	1c112b96-c61d-4212-97d6-e434af1091c5	Kris Barker	COS to Nate Glubish	Cheif Of Staff to Premiere Danielle Smith	Alberta Gov meeting notes	declined	2026-05-29 20:04:34.381816+08
72ed6126-67b8-44e2-b442-0d43da375a66	1c112b96-c61d-4212-97d6-e434af1091c5	Hillary Faulkner	Executive Director, Privacy, Policy and Governance	\N	\N	\N	2026-05-29 20:04:34.381816+08
c1aa9ee1-3ac2-41d5-a9d3-cb9a9b08d310	1c112b96-c61d-4212-97d6-e434af1091c5	Jutta Rohrschach	Executive Director of Innovation Ecosystem	\N	\N	\N	2026-05-29 20:04:34.381816+08
8dec00ca-2473-4309-a06e-9107f0b36cba	8bc38ce0-7f4a-4539-a914-a8ff13935484	Kelvin Yau	\N	\N	\N	\N	2026-05-29 20:04:34.381816+08
0e8df080-59ba-4816-8397-29edc304548b	8bc38ce0-7f4a-4539-a914-a8ff13935484	Mark Summers	\N	\N	\N	\N	2026-05-29 20:04:34.381816+08
7e178436-59ef-4b81-8497-f36664a86a55	8bc38ce0-7f4a-4539-a914-a8ff13935484	Prashant Pandey	\N	Prashant.Pandey@albertainnovates.ca	\N	\N	2026-05-29 20:04:34.381816+08
918cdaa5-aaf6-401d-b323-7371d16edf43	fe7aebd2-2658-4a1f-b4da-0f22e7c50055	Megan Croft	Liason for tech 2 farm	megan.croft@svgventures.com	\N	in_progress	2026-05-29 20:04:34.381816+08
bc36d6f2-1a25-4cf2-a2b9-a87d51b1fbb7	fe7aebd2-2658-4a1f-b4da-0f22e7c50055	Coleton Fisher	Academy Program Manager	coleton.fisher@svgventures.com	\N	on_hold	2026-05-29 20:04:34.381816+08
97f2e161-bf24-41ca-b7f5-f7a7c77c6bc8	538ce5f7-c65a-4958-8a48-4fe4086f8e7a	Garson Law	\N	\N	\N	active	2026-05-29 20:04:34.381816+08
35dd8e05-a7d8-4a80-8de5-cb35d590bea1	5a782816-4953-40ed-9f66-52a73eb6f1b8	Chris Paterson	Ag-focused	cpaterson@tallgrass.vc	Loves to chat, good contacts	active	2026-05-29 20:04:34.381816+08
7c96c541-efed-4d3a-b7d4-63cf14958b86	5a782816-4953-40ed-9f66-52a73eb6f1b8	Wilson Acton	\N	wacton@tallgrass.vc	\N	\N	2026-05-29 20:04:34.381816+08
159ceda2-9e9e-4233-aed7-2f7068ec587a	c0358c7d-5918-4958-ab9c-b3bb2e6c65d6	Joy Agnew	Instructor	Joy Agnew	\N	\N	2026-05-29 20:04:34.381816+08
311ce59b-eedf-4b00-bde6-e36d6ae1456e	c0358c7d-5918-4958-ab9c-b3bb2e6c65d6	Suby	\N	Suby.Guhathakurta@rdpolytech.ca	Tonya- they cannot use the product, know-how is ok	\N	2026-05-29 20:04:34.381816+08
c47c0fc6-513b-4f2d-b84e-58a8ec9c0d7a	c0358c7d-5918-4958-ab9c-b3bb2e6c65d6	Debjyoti	\N	Debjyoti.Sen@rdpolytech.ca	\N	on_hold	2026-05-29 20:04:34.381816+08
140ffece-12a6-4243-9f2b-2630b7088b33	c0358c7d-5918-4958-ab9c-b3bb2e6c65d6	Lisa Verbinsky	\N	\N	\N	\N	2026-05-29 20:04:34.381816+08
e1a3fd36-c8f8-4d08-ac61-c502ae9cc671	c0358c7d-5918-4958-ab9c-b3bb2e6c65d6	Heather Dirks	health/informatics	\N	\N	\N	2026-05-29 20:04:34.381816+08
68f7f346-fa37-46a8-861c-bcc9f39c05b0	c0358c7d-5918-4958-ab9c-b3bb2e6c65d6	Terri Granigan	health/informatics	\N	\N	\N	2026-05-29 20:04:34.381816+08
84fdc599-f85f-46b0-8982-768c4e698425	c0358c7d-5918-4958-ab9c-b3bb2e6c65d6	Tonya	grants	\N	\N	\N	2026-05-29 20:04:34.381816+08
3ac603d4-7d74-491b-a745-cefb0e5e9235	c0358c7d-5918-4958-ab9c-b3bb2e6c65d6	Sandra MacDougall	\N	\N	\N	\N	2026-05-29 20:04:34.381816+08
faf51568-8d21-4c95-84db-5ba7c23801a3	c0358c7d-5918-4958-ab9c-b3bb2e6c65d6	Annika Dempsey	\N	\N	\N	\N	2026-05-29 20:04:34.381816+08
b75ca2a9-faba-43ef-a9fb-13de5015946d	a2ea2554-0f6e-4dea-8e44-54246d0ac335	Herman Simons	\N	hsimons@oldscollege.ca	\N	active	2026-05-29 20:04:34.381816+08
55a4228c-8117-4e5f-ac0f-16c9e28526ae	a2ea2554-0f6e-4dea-8e44-54246d0ac335	Todd Ormann	\N	\N	\N	in_progress	2026-05-29 20:04:34.381816+08
35f19b38-a892-415b-82a4-a936b30dbb16	a2ea2554-0f6e-4dea-8e44-54246d0ac335	Atul Nayyar	\N	anayyar@oldscollege.ca	\N	active	2026-05-29 20:04:34.381816+08
d0dd7f25-9ecd-419c-ab67-4ce99878d98c	91cdfbff-d842-4656-8a81-4bf38dba22d4	SeeHon Tung	\N	\N	\N	active	2026-05-29 20:04:34.381816+08
4e5f0c8e-3bbe-460f-bd82-956f8820c73e	5a935643-d108-432d-9d72-7d209e0bc302	John Miniaci	Director/Operations	john.louis.miniaci@gmail.com	\N	active	2026-05-29 20:04:34.381816+08
ae5daa25-5951-498e-a7a4-a3976c01f72a	fe1b53bb-e941-45ca-a99f-71d18f157f57	Kevin Frankowski	Founder	\N	\N	active	2026-05-29 20:04:34.381816+08
cf06f1b9-b458-4c64-9c8e-281fd6268b27	ba22fb98-a115-408b-810a-c78cd120f3da	Tina Hoang	Tried to do a simple prediction model and got bogged down	\N	\N	\N	2026-05-29 20:04:34.381816+08
b784188c-978e-464c-94b6-2e2d8fd60d7a	9eaef3fe-af0d-4bfe-ace1-d1839f1249b0	Mohamad Yaghi	Vice President of AgExpert and Innovation Hub	mohamad.yaghi@fcc-fac.ca	\N	\N	2026-05-29 20:04:34.381816+08
552e30d3-ed23-41dc-b002-3aece3e82e68	9eaef3fe-af0d-4bfe-ace1-d1839f1249b0	Darcy Herauf	\N	Darcy.Herauf@fcc-fac.ca	\N	declined	2026-05-29 20:04:34.381816+08
9e4c5bb3-f563-4f91-afb6-6fcda9e242ee	0268dd48-8e64-4bca-a592-9b898f02aa29	Jahmy Hindman	CTO	\N	\N	declined	2026-05-29 20:04:34.381816+08
bcb22baa-6beb-401a-8da8-bab03e143841	0268dd48-8e64-4bca-a592-9b898f02aa29	Dan Leibfried	VP- Product Management Production & Precision Ag	\N	\N	declined	2026-05-29 20:04:34.381816+08
5138681c-9462-483b-a9e2-4210b26b299a	f83f61d2-8fa5-4afd-930b-b54a697c9c08	Tim Hassinger	\N	\N	\N	\N	2026-05-29 20:04:34.381816+08
d5760db5-7b77-4188-a12c-b7a2632e36d9	f83f61d2-8fa5-4afd-930b-b54a697c9c08	Caleb Wieber	\N	\N	\N	\N	2026-05-29 20:04:34.381816+08
54419e75-00c0-4446-b0f6-fdaa7e4c9833	f83f61d2-8fa5-4afd-930b-b54a697c9c08	Conner Schmidt	\N	\N	\N	\N	2026-05-29 20:04:34.381816+08
a57245eb-b797-4ebb-b267-5912fe09fbaf	f83f61d2-8fa5-4afd-930b-b54a697c9c08	David Wilson	\N	\N	\N	\N	2026-05-29 20:04:34.381816+08
94b8c05d-088f-4594-91c6-fa2429c9c3cc	3a6cece2-54a7-47da-9d83-c5c02cae7faf	Daniel McCann	CEO	dan@precision.ai	\N	active	2026-05-29 20:04:34.381816+08
168c835a-8111-4876-b858-34d699f9725b	58677a81-1f33-4618-a938-88027703a579	Warren Bills	National Leader Agronomy Services	https://www.mnp.ca/en/personnel/warren-bills	\N	declined	2026-05-29 20:04:34.381816+08
dbcf9961-1daf-46dc-acbf-e067b1b50a7c	1fcdabef-abb0-401b-8570-fe3a8c688f99	Kevin Pattison	\N	\N	\N	active	2026-05-29 20:04:34.381816+08
0b010845-b492-4a0c-b148-364cec047709	29fccf3d-f22e-4a3a-90ed-bb7c2e89dcbb	Bob Barnhart	CIO	bob.barnhart@nutrien.com	\N	\N	2026-05-29 20:04:34.381816+08
d56e0eed-5919-4618-9097-f5884a7a1e56	29fccf3d-f22e-4a3a-90ed-bb7c2e89dcbb	Russ Girling	CEO	Russ.Girling@nutrien.com	\N	\N	2026-05-29 20:04:34.381816+08
5f60e293-de35-453f-a04a-86d15c43d568	5ef5c337-c6ea-4467-b38f-ca6f48deec39	Ryan Immerkar	Chris Patterson	rsiagricoaching@gmail.com	\N	\N	2026-05-29 20:04:34.381816+08
34e51fb7-722d-42ab-9f9f-7a8681e232e8	1c334aa3-e7af-436c-8cb8-ad58421f3843	Robert Saik	Chris Patterson	rob@robertsaik.com	\N	active	2026-05-29 20:04:34.381816+08
51ed5756-9e2d-428f-b70b-5ce7392729ec	9be515ff-8f99-434d-81c7-dacbed8abe95	Jay Kinnaird	VP of solutions	https://corvian.com/\nJay Kinniard 204.851.1267	\N	\N	2026-05-29 20:04:34.381816+08
60a1d463-e87b-46bd-986b-1b01926da8f4	9be515ff-8f99-434d-81c7-dacbed8abe95	Manoj Regmi	\N	\N	\N	\N	2026-05-29 20:04:34.381816+08
5bcb3bbb-74e7-4361-8edf-92d6876ed6ee	9be515ff-8f99-434d-81c7-dacbed8abe95	Siva Avvaru	\N	\N	\N	\N	2026-05-29 20:04:34.381816+08
674fc6ba-d6e0-43fc-bb65-2f5de4c43673	afe70bd0-82ec-4c8b-b202-a43f6f2c9dac	Andrew Pylypchuk	Biz Dev Director	andrew.pylypchuk@earthdaily.com	not looking for analytics	active	2026-05-29 20:04:34.381816+08
bc97c080-95b2-4875-968f-857e2117eb8c	349e12ef-aea4-41a4-bfb6-21c4c846101f	Bence Rizo	Client Success	\N	\N	\N	2026-05-29 20:04:34.381816+08
3cf5d053-0678-48bb-a22b-3bad4f74e792	809c9ff5-10c5-4395-9f22-0b6d54425b7d	Kolby Nichol	Director	\N	\N	active	2026-05-29 20:04:34.381816+08
ce098df6-e61c-4477-98b7-d04187917f89	766cc7c9-97a7-49c3-aadf-9bde7c8ea7db	Adam Newstead	Dig Ag Manager	\N	\N	active	2026-05-29 20:04:34.381816+08
53bcd152-ca8f-4ef0-886c-fcf793d20dbe	53b99e36-06a4-4541-ae40-6c95950b66e6	Tom Mix	attorney, ex head of counsel for nutrien	tmix@mccarthy.ca	\N	\N	2026-05-29 20:04:34.381816+08
d217f938-e534-4712-8d54-8abdd3d314d7	b1885e33-a8e6-4453-82f6-b31abf7de912	Alex Melnitchouck	Also on the board at DigiFarm	agintelmax@gmail.com	\N	active	2026-05-29 20:04:34.381816+08
da289b99-0747-470e-91cc-7f7bd62486fc	f589c769-c7e4-4d09-b0cb-5c2b97df9ced	Alex M/Warren Bills/Chris Paterson	\N	\N	\N	active	2026-05-29 20:04:34.381816+08
424d0fc8-a5b6-4f7d-932f-c0a9980c14ff	130fd383-cc62-4be1-84f9-dcd4276132dc	Travis Lebouf	Sales Director	\N	\N	active	2026-05-29 20:04:34.381816+08
e441c402-b07c-4588-93ed-1d1d9d04a02b	e12e3138-d364-4836-b259-052583dd8f5a	Mike Dahlstedt	CEO	mike@drivehockey.com	\N	\N	2026-05-29 20:04:34.381816+08
e0a453af-9e3b-4c59-b123-8e553c43230a	7573d945-fc82-4de3-bc8f-d0e765870310	Ron Johnson	Owner	\N	\N	active	2026-05-29 20:04:34.381816+08
870c9ce8-2042-47ff-9710-710ae4b81a95	8b990604-4d9b-417b-b2ee-be31e1c986d7	Connor Rankin	\N	\N	\N	\N	2026-05-29 20:04:34.381816+08
9432aafc-8bb0-4c64-a7b7-d411d06d2494	0205aa01-eafe-4e32-ab4b-c90a9ad6e378	Kevin Dawson	\N	Kevin.Dawson@aeso.ca	\N	declined	2026-05-29 20:04:34.381816+08
392b2d05-a850-4ad0-90cb-4990e6806b54	d6dcd908-1b15-4b2f-a1b6-970388ba4bf6	Troy Noad	\N	\N	Only use one call center for 20K CAD per year.  \n\nNO GO unless we want to scale a model and/or use this as a relationship builder for this client.	declined	2026-05-29 20:04:34.381816+08
f6596d56-d339-4a4e-9677-271957927712	fcb805cf-ccd1-451a-b2a0-5dfc08681823	Al Krawchuk	\N	http://cuttingedge-energy.com/	\N	\N	2026-05-29 20:04:34.381816+08
1df0e01a-ca1d-4980-b478-35438ab6bff6	177ddc8e-817e-487f-9859-e925dceb9c40	Tom O'Leary	\N	\N	\N	declined	2026-05-29 20:04:34.381816+08
273ff161-747b-4802-84ec-a13e281f5923	6a64b624-9cf9-4d9e-b6e4-e96a49b8eca8	Yoshi Tateyama	\N	\N	Tabiji Kizuna deal outline	\N	2026-05-29 20:04:34.381816+08
c4e3713f-b50f-4619-a62b-54260736eb98	ad670f71-06f5-426f-9f18-fcf65afac3b0	Galvin Ding	\N	\N	Guide to CQI+	active	2026-05-29 20:04:34.381816+08
5c36baf2-ec07-4573-9866-2fbc9e3c46a5	ad670f71-06f5-426f-9f18-fcf65afac3b0	Will Leung	\N	\N	\N	active	2026-05-29 20:04:34.381816+08
37e87bbb-a64b-46a2-ac4c-4206e5f4334a	8e58b7d3-f196-4dd4-b8b0-4e402e38c0b7	David Werklund	\N	david@werklund.com	\N	\N	2026-05-29 20:04:34.381816+08
ff84cb92-e998-45c1-b269-45eda8eda102	8e58b7d3-f196-4dd4-b8b0-4e402e38c0b7	Austin Jamieson	\N	\N	\N	\N	2026-05-29 20:04:34.381816+08
018d54f0-ab4d-4b28-aa6e-1eb9c19fc677	7daa5352-76e8-49ac-8999-81beec360797	John Dewar	insurance industry vet	johnd@maxxaminsurance.com	Aug 26 2025	active	2026-05-29 20:04:34.381816+08
\.


--
-- Data for Name: meetings; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.meetings (id, company_id, contact_id, title, summary_url, notes, meeting_date, created_at) FROM stdin;
b2216da6-550a-427d-b994-ea72858071b3	538ce5f7-c65a-4958-8a48-4fe4086f8e7a	\N	Garson/Algo-Rythmn Intro/CAAIN - 2026/04/15 07:52 PDT - Notes by Gemini	\N	\N	\N	2026-05-29 20:04:34.381816+08
69c84b60-0285-43a6-a425-fb2e53703a0d	a2ea2554-0f6e-4dea-8e44-54246d0ac335	\N	Algo Rythmn x Olds College - 2025/10/01 16:17 MDT - Notes by Gemini	\N	\N	\N	2026-05-29 20:04:34.381816+08
ad0658a6-9852-4296-a0b4-8145d864db06	91cdfbff-d842-4656-8a81-4bf38dba22d4	\N	SeeHon/Algo-Rythmn Intro May 2026 - 2026/05/13 08:27 PDT - Notes by Gemini	\N	\N	\N	2026-05-29 20:04:34.381816+08
48d0e687-7f61-47fc-a30a-a65ace456144	5a935643-d108-432d-9d72-7d209e0bc302	\N	John Miniaci/Algo-Ryhtmn Intro - 2026/03/12 08:54 PDT - Notes by Gemini	\N	\N	\N	2026-05-29 20:04:34.381816+08
6268d8ad-02e8-45e1-b86d-2fa6da8918d4	fe1b53bb-e941-45ca-a99f-71d18f157f57	\N	Ox+Plow/Algo-Rythmn Intro - 2026/04/27 15:56 PDT - Notes by Gemini	\N	\N	\N	2026-05-29 20:04:34.381816+08
2dd9f5b7-3fad-4ad6-b549-d33e6c8012ff	9eaef3fe-af0d-4bfe-ace1-d1839f1249b0	\N	FCC/Mohamad Yaghi prep notes	\N	\N	\N	2026-05-29 20:04:34.381816+08
ecaf9f41-feed-439c-9b33-368b33761a48	3a6cece2-54a7-47da-9d83-c5c02cae7faf	\N	PrecisionAI/Algo-Rythmn Feb 2026 - 2026/02/27 09:50 PST - Notes by Gemini	\N	\N	\N	2026-05-29 20:04:34.381816+08
b77d2adf-5c83-4525-b243-f24ec12bb95e	58677a81-1f33-4618-a938-88027703a579	\N	MNP/Warren Bills/Algo-Rythmn introduction - 2026/02/27 11:07 PST - Notes by Gemini	\N	\N	\N	2026-05-29 20:04:34.381816+08
66b0c215-d6fc-4177-9e73-ae941f139e2f	1fcdabef-abb0-401b-8570-fe3a8c688f99	\N	Pattison/Algo-Rythmn May 2026 - 2026/05/26 10:22 PDT - Notes by Gemini	\N	\N	\N	2026-05-29 20:04:34.381816+08
21c61b25-020c-41bd-a5a3-8f2f125ee0c3	5ef5c337-c6ea-4467-b38f-ca6f48deec39	\N	New Era Ag/Algo Mar 2026 - 2026/03/06 08:41 PST - Notes by Gemini	\N	\N	\N	2026-05-29 20:04:34.381816+08
66865a49-e8fa-4ff4-95d4-a5642d041004	1c334aa3-e7af-436c-8cb8-ad58421f3843	\N	Algo-Rythmn /AGvisorPRO Apr 2026 - 2026/04/16 11:55 PDT - Notes by Gemini	\N	\N	\N	2026-05-29 20:04:34.381816+08
349a06eb-3dcb-4807-b158-aef5de01b896	9be515ff-8f99-434d-81c7-dacbed8abe95	\N	Corvian/Algo-Rythmn intro - 2026/02/10 11:20 PST - Notes by Gemini	\N	\N	\N	2026-05-29 20:04:34.381816+08
f0ab955b-bd6b-4406-8e8a-93ba5506fca3	afe70bd0-82ec-4c8b-b202-a43f6f2c9dac	\N	https://docs.google.com/document/d/1qJ05HZMFq4	https://docs.google.com/document/d/1qJ05HZMFq4-bFwIksayeuwr9EAi1BCSqxvAAfT8JB-8/edit?tab=t.ontln9bfn5b	\N	\N	2026-05-29 20:04:34.381816+08
6c13c5cc-c69d-42f7-8768-38093e8a3567	349e12ef-aea4-41a4-bfb6-21c4c846101f	\N	DigiFarm/Algo-Rythmn intro - 2026/04/28 21:50 PDT - Notes by Gemini	\N	\N	\N	2026-05-29 20:04:34.381816+08
8d18a51d-bc29-4cbd-9389-cd246841e461	809c9ff5-10c5-4395-9f22-0b6d54425b7d	\N	Telus/Algo-Rythmn intro  - 2026/04/22 10:47 PDT - Recording	\N	\N	\N	2026-05-29 20:04:34.381816+08
404f8ff4-8167-4721-8929-52fb2cdd6db6	766cc7c9-97a7-49c3-aadf-9bde7c8ea7db	\N	FCL/Algo- Rythmn intro - 2026/05/13 09:58 PDT - Notes by Gemini	\N	\N	\N	2026-05-29 20:04:34.381816+08
d14fae51-0158-4095-af4c-b04230f45fd2	53b99e36-06a4-4541-ae40-6c95950b66e6	\N	Tom Mix/Algo-Rythmn May 1 2026 - 2026/05/04 19:05 PDT - Notes by Gemini	\N	\N	\N	2026-05-29 20:04:34.381816+08
40a7ce2a-5aea-4776-a987-1a670680b8a9	b1885e33-a8e6-4453-82f6-b31abf7de912	\N	Alex/Algo-Rythmn intro  - 2026/04/16 08:50 PDT - Notes by Gemini	\N	\N	\N	2026-05-29 20:04:34.381816+08
382bdda7-8d58-4a05-82de-48d43a6fc9da	f589c769-c7e4-4d09-b0cb-5c2b97df9ced	\N	Doug MacKay/Algo-Rythmn intro - 2026/04/20 09:52 PDT - Notes by Gemini	\N	\N	\N	2026-05-29 20:04:34.381816+08
9042bfa8-4ca4-4339-b58b-6c94de468bef	891d0477-7d6c-433c-9669-eb4831ce3460	\N	Felippe/Algo-Rythmn intro - 2026/04/21 07:50 PDT - Notes by Gemini	\N	\N	\N	2026-05-29 20:04:34.381816+08
a907b5b1-7e70-4186-a276-1e8219b34761	8b990604-4d9b-417b-b2ee-be31e1c986d7	\N	Meeting (Calgary Flames) - 2025/10/03 09:27 HKT - Notes by Gemini	\N	\N	\N	2026-05-29 20:04:34.381816+08
e80b8b18-a857-4695-87ad-a54cc0f831b1	0205aa01-eafe-4e32-ab4b-c90a9ad6e378	\N	AESO/Algo-Rythmn intro - 2025/12/16 06:42 PST - Notes by Gemini	\N	\N	\N	2026-05-29 20:04:34.381816+08
4701af1a-5fb6-4445-a656-21914b07b5c4	d6dcd908-1b15-4b2f-a1b6-970388ba4bf6	\N	Apex/Algo-Rythmn Apr 2026 - 2026/04/30 09:55 PDT - Notes by Gemini	\N	\N	\N	2026-05-29 20:04:34.381816+08
d227c4c0-8921-44f9-b19a-8ff1b6b33e8d	fcb805cf-ccd1-451a-b2a0-5dfc08681823	\N	Cutting Edge/Algo-Rythmn intro - 2026/01/23 08:57 PST - Notes by Gemini	\N	\N	\N	2026-05-29 20:04:34.381816+08
85337048-a40c-410f-972f-7ba4c74694ec	ad670f71-06f5-426f-9f18-fcf65afac3b0	\N	Script Pharmacy - CQI+ Requirement NIDR Submission MEETING NOTES	\N	\N	\N	2026-05-29 20:04:34.381816+08
\.


--
-- Data for Name: relationships; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.relationships (id, from_contact_id, to_company_id, relationship_type, note, created_at) FROM stdin;
596f6167-a3e1-4aba-bb15-7659cd087252	\N	1c112b96-c61d-4212-97d6-e434af1091c5	introduced_by	Source: Rob Anderson	2026-05-29 20:04:34.381816+08
4b2229cc-b54b-42e9-b736-82197197895a	\N	fe7aebd2-2658-4a1f-b4da-0f22e7c50055	introduced_by	Source: Prashant Pandey	2026-05-29 20:04:34.381816+08
dedf5700-4589-4d57-bf2a-31b38c0d573d	\N	fe7aebd2-2658-4a1f-b4da-0f22e7c50055	introduced_by	Source: Megan Croft	2026-05-29 20:04:34.381816+08
2e2565af-634c-41ff-a03f-7ee3ffed442d	\N	5a782816-4953-40ed-9f66-52a73eb6f1b8	introduced_by	Source: David Werklund	2026-05-29 20:04:34.381816+08
d293efd9-f344-4e16-b512-8a29c7ac9aeb	\N	9eaef3fe-af0d-4bfe-ace1-d1839f1249b0	introduced_by	Source: Louis at FCC/cold at linkedin	2026-05-29 20:04:34.381816+08
4d56c69b-d751-4aef-ad5a-410314e25fa7	\N	3a6cece2-54a7-47da-9d83-c5c02cae7faf	introduced_by	Source: Tall Grass VC	2026-05-29 20:04:34.381816+08
0d9b708b-eb48-4617-983c-2877ed3d7fba	\N	58677a81-1f33-4618-a938-88027703a579	introduced_by	Source: Chris Paterson	2026-05-29 20:04:34.381816+08
528db2aa-0172-42b2-9c1f-211a2478a21f	\N	9be515ff-8f99-434d-81c7-dacbed8abe95	introduced_by	Source: Todd Ormann	2026-05-29 20:04:34.381816+08
e3adbe7c-dd8c-4238-b0a9-069d09aff41f	\N	f589c769-c7e4-4d09-b0cb-5c2b97df9ced	introduced_by	Source: Todd Ormann	2026-05-29 20:04:34.381816+08
67d5461c-eb5d-4cb8-b2c2-980569e1193a	\N	e12e3138-d364-4836-b259-052583dd8f5a	introduced_by	Source: ron johnson	2026-05-29 20:04:34.381816+08
3b592fc5-4df1-45c6-b79b-5052c7a75e97	\N	d6dcd908-1b15-4b2f-a1b6-970388ba4bf6	introduced_by	Source: Kenny Cheung	2026-05-29 20:04:34.381816+08
df070467-3a12-487b-8cc8-90d1e5c1d093	\N	7daa5352-76e8-49ac-8999-81beec360797	introduced_by	Source: Kenny	2026-05-29 20:04:34.381816+08
\.


--
-- Data for Name: resources; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.resources (id, company_id, label, resource_type, url, created_at) FROM stdin;
ae44e682-bf23-4c58-b176-74ebc7b44603	5a782816-4953-40ed-9f66-52a73eb6f1b8	Deck	deck	https://deck.algo-rythmn.ai/AgroIntel	2026-05-29 20:04:34.381816+08
b90bd876-b1c9-47b0-a238-3faf4a4decad	a2ea2554-0f6e-4dea-8e44-54246d0ac335	Demo	demo	https://project2604.algo-rythmn.ai/	2026-05-29 20:04:34.381816+08
a2eb13ff-3f93-4f47-a526-481283760608	ba22fb98-a115-408b-810a-c78cd120f3da	Cheatsheet (for internal)	document	https://docs.google.com/document/d/1YJqvs_luxZ8016DZ8ofMRN0OMBIIvhhX/edit	2026-05-29 20:04:34.381816+08
8573aa32-a33c-4473-a0de-677cb8181a6d	ba22fb98-a115-408b-810a-c78cd120f3da	Pitch Deck (for external)	deck	https://deck.algo-rythmn.ai/yield-ice	2026-05-29 20:04:34.381816+08
a1814033-5c64-442e-83c1-34aa759147c7	3a6cece2-54a7-47da-9d83-c5c02cae7faf	Deck	deck	https://deck.algo-rythmn.ai/precision-ai-proposal	2026-05-29 20:04:34.381816+08
4bea9c8f-e4db-4330-a674-20f8f99e9d46	58677a81-1f33-4618-a938-88027703a579	Demo app	demo	http://algomindpro.algo-rythmn.ai/	2026-05-29 20:04:34.381816+08
7301cb95-5e71-4e10-b1c8-ef99efee18d2	58677a81-1f33-4618-a938-88027703a579	p: http://algomindpro.algo-rythmn.ai/	other	https://www.mnp.ca/en/personnel/warren-bills	2026-05-29 20:04:34.381816+08
472b8598-6af9-499a-a0fa-49cfd246ca62	5ef5c337-c6ea-4467-b38f-ca6f48deec39	Pricing	deck	https://deck.algo-rythmn.ai/new-era-ag-ai-pricing	2026-05-29 20:04:34.381816+08
e67e3cef-951b-4779-9ba7-e8eed7371045	5ef5c337-c6ea-4467-b38f-ca6f48deec39	Web app	web_app	https://newera.algo-rythmn.ai/	2026-05-29 20:04:34.381816+08
edb5aadc-3d5f-4f3e-a40e-bef92adeac66	5ef5c337-c6ea-4467-b38f-ca6f48deec39	Data upload dashboard	other	https://new-era-file-upload.algo-rythmn.ai/	2026-05-29 20:04:34.381816+08
280f9e84-6689-435c-81d3-4f1e21d91e74	5ef5c337-c6ea-4467-b38f-ca6f48deec39	Soil Deck	deck	https://deck.algo-rythmn.ai/soil-intelligence.html	2026-05-29 20:04:34.381816+08
b14bf89e-8adc-493f-85b8-c9f3b8c0435f	5ef5c337-c6ea-4467-b38f-ca6f48deec39	Triangle Deck	deck	https://deck.algo-rythmn.ai/plant-triangle-framework.html	2026-05-29 20:04:34.381816+08
a5695965-4bda-4510-987f-90ded790a320	5ef5c337-c6ea-4467-b38f-ca6f48deec39	Soil demo	demo	https://project2602.algo-rythmn.ai/	2026-05-29 20:04:34.381816+08
3aa6a480-edbc-42f5-bf06-4f6c153d18b5	5ef5c337-c6ea-4467-b38f-ca6f48deec39	1. Demo	demo	https://project2503.algo-rythmn.ai/	2026-05-29 20:04:34.381816+08
8f629920-7b50-4606-88fd-22bdb386b2a1	5ef5c337-c6ea-4467-b38f-ca6f48deec39	2. Deck	deck	https://deck.algo-rythmn.ai/NewEraAg-TrialData.html	2026-05-29 20:04:34.381816+08
5d20227a-8345-4b26-8da4-4ad92d52b6f2	9be515ff-8f99-434d-81c7-dacbed8abe95	Deck for v2.0	deck	https://deck.algo-rythmn.ai/AlgoMind.html	2026-05-29 20:04:34.381816+08
cd0043a3-c977-488f-ae77-0af816b0232f	9be515ff-8f99-434d-81c7-dacbed8abe95	s://deck.algo-rythmn.ai/AlgoMind.html	deck	https://corvian.com/	2026-05-29 20:04:34.381816+08
d5c70599-5fa9-447e-9339-3f8b3ab80082	afe70bd0-82ec-4c8b-b202-a43f6f2c9dac	KW's demo	demo	https://project2612.algo-rythmn.ai/	2026-05-29 20:04:34.381816+08
89fa2b0b-6170-4732-96e9-6ac1660d796d	afe70bd0-82ec-4c8b-b202-a43f6f2c9dac	New deck	deck	http://deck.algo-rythmn.ai/earthdaily-ai-proposal	2026-05-29 20:04:34.381816+08
46945809-0da8-498a-83a1-60ac10235767	afe70bd0-82ec-4c8b-b202-a43f6f2c9dac	New deck	deck	http://deck.algo-rythmn.ai/earthdaily-ai	2026-05-29 20:04:34.381816+08
56188ef9-9dce-4b00-bcd8-17972cc45ebf	afe70bd0-82ec-4c8b-b202-a43f6f2c9dac	YLex's Demo	demo	https://algomindpro-earthdaily.algo-rythmn.ai/	2026-05-29 20:04:34.381816+08
aff23a32-2b7b-4bdf-bc9a-73477df14210	53b99e36-06a4-4541-ae40-6c95950b66e6	Specific Deck	deck	https://deck.algo-rythmn.ai/doc-ai-mining	2026-05-29 20:04:34.381816+08
6e6e75da-ca5a-4178-af9d-d815c1682440	53b99e36-06a4-4541-ae40-6c95950b66e6	Web app	web_app	https://opsedge.algo-rythmn.ai/	2026-05-29 20:04:34.381816+08
b3773e8b-602d-40e4-8599-73302b1c6714	53b99e36-06a4-4541-ae40-6c95950b66e6	Deck for Mosaic	deck	https://deck.algo-rythmn.ai/potash-mining-operations.html	2026-05-29 20:04:34.381816+08
49d58b15-f8d0-4602-9f29-e77b814121bf	53b99e36-06a4-4541-ae40-6c95950b66e6	Demo	demo	http://testbed.algo-rythmn.ai/	2026-05-29 20:04:34.381816+08
fee673f9-a480-4a12-9862-9f19eafa2ab9	f589c769-c7e4-4d09-b0cb-5c2b97df9ced	AlgoDroneTeams Deck	deck	https://deck.algo-rythmn.ai/drone-team	2026-05-29 20:04:34.381816+08
c7171e94-e5b3-4e9c-840b-6a2bd66bff50	f589c769-c7e4-4d09-b0cb-5c2b97df9ced	KW's report	deck	https://deck.algo-rythmn.ai/drone-report	2026-05-29 20:04:34.381816+08
1ef31237-d137-4369-ba90-40727b22d26b	891d0477-7d6c-433c-9669-eb4831ce3460	Co-op	deck	https://deck.algo-rythmn.ai/coop-member-intelligence	2026-05-29 20:04:34.381816+08
7d0516a3-4035-4b1d-8f7b-40b2958a00df	891d0477-7d6c-433c-9669-eb4831ce3460	Potential plays	deck	https://deck.algo-rythmn.ai/Brazil-Plays-Opportunity	2026-05-29 20:04:34.381816+08
2ae14f36-55fd-42ad-9eb5-c6a1ffa12eb7	e12e3138-d364-4836-b259-052583dd8f5a	Deck	deck	https://deck.algo-rythmn.ai/drive-hockey-ai-agent.html	2026-05-29 20:04:34.381816+08
1fee8fde-9e4b-4db4-9e44-475b59c2271b	7573d945-fc82-4de3-bc8f-d0e765870310	Web App2	demo	https://project2606.algo-rythmn.ai/	2026-05-29 20:04:34.381816+08
3200483c-65de-4d63-83ca-3d8585e3fb7b	7573d945-fc82-4de3-bc8f-d0e765870310	Web App1	demo	https://project2605.algo-rythmn.ai/	2026-05-29 20:04:34.381816+08
e7c08a96-59c7-43ad-abf9-4980393d779f	8b990604-4d9b-417b-b2ee-be31e1c986d7	Web App	web_app	https://workbench.algo-rythmn.ai/	2026-05-29 20:04:34.381816+08
d3cd85aa-d955-497d-9582-63837ae4c749	d6dcd908-1b15-4b2f-a1b6-970388ba4bf6	Demo	demo	http://testbed.algo-rythmn.ai/	2026-05-29 20:04:34.381816+08
e34a0d13-f820-48a3-aee1-fc4e7603e0b4	d6dcd908-1b15-4b2f-a1b6-970388ba4bf6	Deck	deck	https://deck.algo-rythmn.ai/potash-mining-operations.html	2026-05-29 20:04:34.381816+08
c1e0e7b1-fafa-45f6-9054-a3d2ca706223	fcb805cf-ccd1-451a-b2a0-5dfc08681823	Workflow Deck	deck	https://deck.algo-rythmn.ai/prospecting-ai	2026-05-29 20:04:34.381816+08
8a414ec0-2ed8-440d-b019-de0398d5cf20	fcb805cf-ccd1-451a-b2a0-5dfc08681823	Workflow Demo	demo	https://project2611.algo-rythmn.ai/	2026-05-29 20:04:34.381816+08
4b241902-85fe-4141-bd0a-8e44a00e2a97	fcb805cf-ccd1-451a-b2a0-5dfc08681823	New deck	deck	https://deck.algo-rythmn.ai/chemical-sourcing	2026-05-29 20:04:34.381816+08
2cb0269e-3f2a-4de4-97a3-4dc7897eefb3	fcb805cf-ccd1-451a-b2a0-5dfc08681823	Deck (lite & detailed)	deck	https://deck.algo-rythmn.ai/ai-drilling-revolution-lite.html	2026-05-29 20:04:34.381816+08
56c49bbd-ca1b-4359-b109-f605d54b96e7	fcb805cf-ccd1-451a-b2a0-5dfc08681823	hmn.ai/ai-drilling-revolution-lite.html	deck	https://deck.algo-rythmn.ai/ai-drilling-revolution.html	2026-05-29 20:04:34.381816+08
bc4fce6f-78ae-4b85-b6a1-934905f3c383	fcb805cf-ccd1-451a-b2a0-5dfc08681823	rythmn.ai/ai-drilling-revolution.html	other	http://cuttingedge-energy.com/	2026-05-29 20:04:34.381816+08
733bd9e3-d84d-4b9c-afd4-4102386f1e49	f0d6a99b-5986-4ac7-9397-59ab3e613278	Deck	deck	https://deck.algo-rythmn.ai/pason-proposal	2026-05-29 20:04:34.381816+08
5d4ef223-4a7c-4a90-abfe-0d4e44e6493e	6a64b624-9cf9-4d9e-b6e4-e96a49b8eca8	Features introduction	deck	https://deck.algo-rythmn.ai/Tabiji-Kizuna-features.html	2026-05-29 20:04:34.381816+08
0bb15dc3-15ef-4949-8a3a-9aa74025bb7f	6a64b624-9cf9-4d9e-b6e4-e96a49b8eca8	Web Address	other	https://tabi-1.algo-rythmn.ai/	2026-05-29 20:04:34.381816+08
f8d120b6-40a8-4c3a-98ed-308768e710d9	6a64b624-9cf9-4d9e-b6e4-e96a49b8eca8	Deck	deck	https://deck.algo-rythmn.ai/Tabiji-Kizuna.html	2026-05-29 20:04:34.381816+08
54b5151d-1c5c-4efc-9b18-2f80562e9a03	ad670f71-06f5-426f-9f18-fcf65afac3b0	Pricing	deck	https://deck.algo-rythmn.ai/AlgoPharma-pricing	2026-05-29 20:04:34.381816+08
bcb43c82-80f6-4dc3-a74d-23998a995f19	ad670f71-06f5-426f-9f18-fcf65afac3b0	Product Scope (External)	deck	https://deck.algo-rythmn.ai/algopharma-features-external	2026-05-29 20:04:34.381816+08
e9b3f43b-2c64-4228-931c-bd2ce81af9dc	ad670f71-06f5-426f-9f18-fcf65afac3b0	Web App	web_app	https://pharmacy.algo-rythmn.ai/	2026-05-29 20:04:34.381816+08
b0ac7447-f659-4f26-a4e0-6aaf381679df	ad670f71-06f5-426f-9f18-fcf65afac3b0	Product design	deck	https://deck.algo-rythmn.ai/pharmacy-ai-template.html	2026-05-29 20:04:34.381816+08
\.


--
-- PostgreSQL database dump complete
--

\unrestrict NzkC9bB3c2KeBDsGYymDWrELlgdFwBW48dBkMFxzOqczEYxcZ3fy2EK1cCpeGZS

