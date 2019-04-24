local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end

ZygorGuidesViewer.GuideMenuTier = "BFA"

-----------------------
-----    CLOTH    -----
-----------------------

--See GatheringCommonBFA file

----------------------
-----  COOKING  ------
----------------------

--See GatheringCommonBFA file

----------------------
-----    FISH    -----
----------------------

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Aromatic Fish Oil",{
	author="support@zygorguides.com",
	description="This guide will walk you through farming Aromatic Fish Oil for various Cooking recipes.",
	meta={goldtype="route",skillreq={fishing=1},levelreq=100},
	items={{152543,200}},
	maps={"Dazar'alor"},
	startlevel=110.0,
	},[[
	step
	label "Start"
		Jump down here |goto Dazar'alor/0 50.73,88.49
		Run down the stairs |goto 50.37,90.91 < 7 |walk
		Follow the path |goto 50.67,93.16 < 7 |walk
		Fish in the open water
		use the Sand Shifter##152543
		use the Slimy Mackerel##152544
		goldcollect 200 Aromatic Fish Oil##160711 |n |goto 49.34,97.57
		goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62 |n |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |n |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Aromatic Fish Oil |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Midnight Salmon",{
	author="support@zygorguides.com",
	description="This guide will walk you through farming Midnight Salmon for various Cooking recipes.",
	meta={goldtype="route",skillreq={fishing=1},levelreq=100},
	items={{162515,8},{152545,140},{152546,120}},
	maps={"Stormsong Valley"},
	startlevel=110.0,
	},[[
	step
	label "Start"
		map Stormsong Valley/0
		path follow smart; loop off; ants curved; dist 20
		path	56.42,19.69	58.70,17.84	61.38,15.17	63.06,14.62	64.28,16.06
		path	66.47,18.99	69.95,34.95	69.56,36.85	69.24,40.52	66.68,48.49
		path	68.08,50.14	70.34,48.58	72.69,48.96	73.83,52.22	73.82,53.81	
		path	72.18,57.68	73.81,59.71	75.43,60.95	77.58,61.04	78.25,61.57
		path	79.24,61.77	80.76,61.45
		Fish in pools found in Stormsong
		|tip You can also fish in one spot for these.
		|tip Midnight Salmon are rare, so it will take a while to collect them.
		goldcollect 8 Midnight Salmon##162515 |n
		|tip They look like small circular swirling spots in the water along the coast.
		|tip These can be found along the coasts of Stormsong Valley.
		goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62 |n |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |n |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Midnight Salmon |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Redtail Loach",{
	author="support@zygorguides.com",
	description="This guide will walk you through farming Redtail Loach for various Cooking recipes.",
	meta={goldtype="route",skillreq={fishing=1},levelreq=100},
	items={{152547,120}},
	maps={"Nazmir"},
	startlevel=110.0,
	},[[
	step
	label "Start"
		map Nazmir/0
		path follow smart; loop off; ants curved; dist 30
		path	39.12,84.85	40.75,87.50	44.45,87.52	46.38,86.58	47.92,82.26
		path	52.34,80.48	55.22,81.01	55.99,77.68	58.95,74.33	60.40,71.18
		path	60.81,70.35	64.07,68.70	65.11,63.06 	65.93,60.32
		Fish in Great Sea Catfish Schools
		|tip They share spawn points with Great Sea Catfish School.
		|tip You will need fishing to gather from this path.
		|tip You may need water walking in order to farm from some of the pools.
		|tip They look like small circular swirling spots in the water along the coast.
		goldcollect 120 Great Sea Catfish##152547 |n
		goldtracker
		'|goto Nazmir/0 65.93,60.32 < 30 |c |noway
		Click here to continue farming |confirm |next "Farming_Path_Two"
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm |next "Sell"
	step
	label "Farming_Path_Two"
		map Nazmir/0
		path follow smart; loop off; ants curved; dist 30			
		path	65.93,60.32	65.11,63.06	64.07,68.70	60.81,70.35	60.40,71.18
		path	58.95,74.33	55.99,77.68	55.22,81.01	52.34,80.48	47.92,82.26
		path	46.38,86.58	44.45,87.52	40.75,87.50	39.12,84.85
		Fish in Great Sea Catfish Schools
		|tip They share spawn points with Great Sea Catfish School.
		|tip You will need fishing to gather from this path.
		|tip You may need water walking in order to farm from some of the pools.
		|tip They look like small circular swirling spots in the water along the coast.
		goldcollect 120 Great Sea Catfish##152547 |n
		goldtracker
		'|goto Nazmir/0 39.12,84.85 < 30 |c |noway |next "Start"
		Click here to continue farming |confirm |next "Start"
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm |next "Sell"
	step
	label "Sell"
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62 |n |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |n |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Redtail Loach |confirm |next "Start"
]])

---------------------------
-----    HERBALISM    -----
---------------------------

--See GatheringCommonBFA file

------------------------
-----    MINING    -----
------------------------

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Monelite Ore",{
	author="support@zygorguides.com",
	description="This guide will walk you through farming Monelite for various Blacksmithing recipes.",
	items={{152512,240}},
	maps={"Stormsong Valley"},
	startlevel=110.0,
	},[[
	step
	label "Start"
		map Stormsong Valley/0
		path follow smart; loop on; ants curved; dist 20
		path	72.75,65.64	73.49,68.74	72.43,73.58	71.16,72.66	70.21,71.78
		path	69.66,72.11	69.75,73.46	68.77,75.11	68.48,76.96	67.36,77.43
		path	66.41,76.44	65.18,76.96	63.64,75.77	61.94,76.88	60.41,76.91
		path	60.24,75.35	58.68,75.55	58.05,76.22	56.49,76.79	55.25,78.18
		path	54.30,77.70	51.72,77.92	51.06,76.57	50.27,75.41	49.45,74.99
		path	48.73,74.57	48.12,72.12	47.90,70.35	47.34,71.31	46.53,72.85
		path	45.84,72.58	44.89,72.13	43.94,72.32	42.48,73.73	41.20,73.06
		path	41.97,72.57	42.36,72.30	42.96,71.84	43.50,71.07	42.74,68.93
		path	42.35,66.92	41.35,66.51	40.15,66.30	39.35,66.18	38.57,66.93
		path	37.42,66.90	35.83,66.96	34.02,67.76	33.28,69.58	32.69,70.87
		path	31.54,71.48	31.43,73.40	30.50,75.11	29.26,75.62	27.97,76.40
		path	26.84,76.46	26.09,75.71	25.83,75.24	25.33,73.64	26.73,73.24
		path	27.07,72.29	26.83,70.19	28.31,68.70	28.87,67.37	29.39,65.53
		path	29.28,63.58	30.37,61.43	32.41,60.80	34.59,60.11	36.20,60.50
		path	38.05,59.37	39.72,60.59	40.73,61.84	42.38,62.04	43.94,62.33
		path	45.05,61.34	46.43,60.93	47.56,61.92	47.66,63.27	47.20,63.94
		path	46.79,64.36	47.42,65.26	48.20,65.35	49.07,65.49	49.76,65.51 
		path	50.85,65.76	51.99,66.56	53.42,69.29	55.17,71.38	56.73,73.48
		path	58.19,72.11	58.93,72.79	60.41,72.63	61.92,73.01	62.80,71.42
		path	63.75,70.57	65.44,69.22	66.17,69.37	67.28,70.41	67.83,70.27
		path	69.27,67.37	70.71,67.08
		click Monelite Seam##276619+
		|tip Track them on your minimap with "Find Minerals".
		|tip Enter caves along the path for additional nodes.
		goldcollect 240 Monelite Ore##152512 |n
		goldtracker
		Click here to continue farming |confirm |next "Farming_Part_Two"
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm |next "Sell"
	step
	label "Farming_Part_Two"
		map Vol'dun/0
		path follow smart; loop on; ants curved; dist 20
		path	56.25,49.67	55.45,48.68	54.62,47.18	52.65,48.00	52.15,52.13
		path	52.59,54.37	53.64,55.26	55.43,57.07	56.00,57.61	56.66,56.82
		path	57.61,56.76	57.88,57.74	58.65,59.68	58.00,61.53	58.28,63.38
		path	58.10,64.24	57.72,64.40	57.87,66.69	58.08,68.09	57.85,69.06
		path	56.69,69.52	55.66,69.51	55.21,71.10	54.55,72.18	55.29,72.74
		path	55.54,74.54	55.93,75.47	55.66,77.08	55.84,78.61	55.29,80.19
		path	55.29,72.74	55.54,74.54	55.93,75.47	55.66,77.08	55.84,78.61
		path	55.29,80.19	54.60,81.50	54.10,82.83	54.26,84.14	52.89,86.15
		path	53.00,87.52	52.53,88.34	50.88,88.24	49.71,87.93	48.79,87.51
		path	46.71,86.03	45.28,83.53	44.66,82.40	43.13,82.28	41.71,82.54
		path	41.47,81.64	40.40,80.16	38.92,79.67	37.86,78.22	35.95,76.00
		path	33.80,73.42	32.06,73.13	31.71,72.62	31.69,71.96	31.01,71.01	
		path	30.20,69.43	29.50,67.63	29.95,66.57	30.15,65.48	30.55,64.80 
		path	31.02,63.68	30.93,62.41	31.50,61.29	32.32,60.55	32.99,59.34 
		path	33.77,58.85	35.19,58.20	35.79,57.37	36.55,56.60  	36.68,55.08
		path	36.44,53.26	36.62,52.48	37.08,51.29	35.99,50.99	36.15,50.44
		path	36.64,50.03	36.50,49.04	36.12,48.62	36.15,48.12	37.15,47.80
		path	37.96,47.67	38.34,46.25	39.33,45.10	40.14,44.87	41.01,43.74 
		path	41.91,42.36	42.52,42.06	43.16,42.79	44.93,41.79	45.23,40.81
		path	45.81,41.67	46.33,42.55	46.51,43.74	47.21,44.09	48.35,43.72
		path	48.91,43.38	48.98,41.67	50.70,41.14	51.50,41.01	52.71,41.53 
		path	54.21,41.08	55.75,43.51 	56.99,46.38	57.87,49.77	57.39,50.38
		click Monelite Seam##276619+
		|tip Track them on your minimap with "Find Minerals".
		|tip Enter caves along the path for additional nodes.
		goldcollect 240 Monelite Ore##152512 |n
		goldtracker
		Click here to continue farming |confirm |next "Start"
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm |confirm |next "Sell"
	step
	label "Sell"
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62 |n |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |n |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Monelite |confirm |next "Start"
]])

--------------
-- SKINNING --
--------------

--See GatheringCommonBFA file