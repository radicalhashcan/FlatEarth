local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end

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
	items={{160711,200}},
	maps={"Boralus"},
	startlevel=110.0,
	},[[
	step
	label "Start"
		Follow the path |goto Boralus/0 68.05,15.62 < 5 |only if walking
		Run down the stairs |goto 71.29,16.44 < 5 |only if walking
		Continue down the stairs |goto 71.66,17.04 < 5 |only if walking
		Continue following the path |goto 71.40,18.04 < 5 |only if walking
		Continue following the path |goto 74.58,18.92 < 7 |only if walking
		Continue following the path |goto 75.81,22.01 < 5 |only if walking
		Run down the stairs |goto 75.66,22.97 < 5 |only if walking
		Fish in the open water
		use the Lane Snapper##152546
		use the Frenzied Fangtooth##152545
		goldcollect 200 Aromatic Fish Oil##160711 |n |goto 73.64,23.12
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
		Fish in pools found in Stormsong Valley
		|tip You can also fish in one spot for these.
		|tip Midnight Salmon are rare, so it will take a while to collect them.
		|tip They look like small circular swirling spots in the water along the coast.
		|tip These can be found along the coasts of Stormsong Valley.
		goldcollect 8 Midnight Salmon##162515 |n
		goldtracker
		'|goto Stormsong Valley/0 80.76,61.45 < 20 |c |noway
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm |next "Sell"
	step
		map Stormsong Valley/0
		path follow smart; loop off; ants curved; dist 20
		path	80.76,61.45	79.24,61.77	78.25,61.57	77.58,61.04	75.43,60.95
		path	73.81,59.71	72.18,57.68	73.82,53.81	73.83,52.22	72.69,48.96
		path	70.34,48.58	68.08,50.14	66.68,48.49	69.24,40.52	69.56,36.85
		path	69.95,34.95	66.47,18.99	64.28,16.06	63.06,14.62	61.38,15.17
		path	58.70,17.84	56.42,19.69
		Fish in pools found in Stormsong Valley
		|tip You can also fish in one spot for these.
		|tip Midnight Salmon are rare, so it will take a while to collect them.
		|tip They look like small circular swirling spots in the water along the coast.
		|tip These can be found along the coasts of Stormsong Valley.
		goldcollect 8 Midnight Salmon##162515 |n
		goldtracker
		'|goto Stormsong Valley/0 56.42,19.69 < 20 |c |noway |next "Start"
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
		Click Here to Farm Midnight Salmon |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Redtail Loach",{
	author="support@zygorguides.com",
	description="This guide will walk you through farming Redtail Loach for various Cooking recipes.",
	meta={goldtype="route",skillreq={fishing=1},levelreq=100},
	items={{152549,120}},
	maps={"Nazmir"},
	startlevel=110.0,
	},[[
	step
	label "Start"
		map Nazmir/0
		path follow smart; loop off; ants curved; dist 20
		path	39.12,84.85	40.75,87.50	44.45,87.52	46.38,86.58	47.92,82.26
		path	52.34,80.48	55.22,81.01	55.99,77.68	55.27,75.45	57.93,76.83
		path	57.99,75.50	58.95,74.33	60.40,71.18	60.81,70.35	64.07,68.70
		path	65.11,63.06 	65.93,60.32	67.41,57.61	65.46,55.63
		Fish in Redtail Loach Schools
		|tip They share spawn points with Great Sea Catfish School.
		|tip You will need fishing to gather from this path.
		|tip You may need water walking in order to farm from some of the pools.
		|tip They look like small circular swirling spots in the water along the river.
		goldcollect 120 Redtail Loach##152549 |n
		goldtracker
		Click here to continue farming |confirm |next "Farming_Path_Two"
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm |next "Sell"
	step
	label "Farming_Path_Two"
		map Nazmir/0
		path follow smart; loop off; ants curved; dist 20			
		path	65.46,55.63	67.41,57.61	65.93,60.32	65.11,63.06	64.07,68.70
		path	60.81,70.35	60.40,71.18	58.95,74.33	57.99,75.50	57.93,76.83
		path	55.27,75.45	55.99,77.68	55.22,81.01	52.34,80.48	47.92,82.26
		path	46.38,86.58	44.45,87.52	40.75,87.50	39.12,84.85
		Fish in Redtail Loach Schools
		|tip They share spawn points with Great Sea Catfish School.
		|tip You will need fishing to gather from this path.
		|tip You may need water walking in order to farm from some of the pools.
		|tip They look like small circular swirling spots in the water along the river.
		goldcollect 120 Redtail Loach##152549 |n
		goldtracker
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
		path	60.24,75.35	58.68,75.55	58.05,76.22	56.49,76.79	54.78,74.97
		path	53.32,75.77	52.49,76.26	51.06,76.57	50.27,75.41	49.45,74.99
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
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
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