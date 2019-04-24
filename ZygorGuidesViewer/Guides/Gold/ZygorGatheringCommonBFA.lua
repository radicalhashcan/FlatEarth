ZGV.Gold.guides_loaded=true

ZygorGuidesViewer.GuideMenuTier = "BFA"

-----------------------
-----    CLOTH    -----
-----------------------

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Deep Sea Satin",{
	meta={goldtype="route",levelreq=110},
	items={{152577,10}},
	maps={"Vol'dun"},
	},[[
	step
	label "Start"
		map Vol'dun/0
		path follow smart; loop on; ants curved; dist 20
		path	51.94,29.15	52.47,28.79	52.63,27.89	52.53,26.28	51.49,26.15
		path	51.07,26.49	50.33,26.19	49.64,25.26	49.10,25.05	48.79,26.35
		path	49.21,27.05	49.95,27.53	50.61,28.29
		Kill enemies around this area
		|tip Only humanoid mobs drop cloth.
		|tip These are a rare drop.
		goldcollect 10 Deep Sea Satin##152577 |n
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
		Click Here to Farm Deep Sea Satin |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Tidespray Linen",{
	meta={goldtype="route",levelreq=110},
	items={{152576,220}},
	maps={"Vol'dun"},
	},[[
	step
	label "Start"
		map Vol'dun/0
		path follow smart; loop on; ants curved; dist 20
		path	51.94,29.15	52.47,28.79	52.63,27.89	52.53,26.28	51.49,26.15
		path	51.07,26.49	50.33,26.19	49.64,25.26	49.10,25.05	48.79,26.35
		path	49.21,27.05	49.95,27.53	50.61,28.29
		Kill enemies around this area 
		|tip Only humanoid mobs drop cloth.
		goldcollect 220 Tidespray Linen##152576 |n
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
		Click Here to Farm Tidespray Linen |confirm |next "Start"
]])

--------------------------
-----    COOKING    ------
--------------------------

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Briny Flesh",{
	meta={goldtype="route",levelreq=100},
	items={{152631,120}},
	maps={"Tiragarde Sound"},
	},[[
	step
	label "Start"
		kill Venomous Coilscale##130232
		|tip If you have the "Skinning" skill, you can gather extra meat.
		goldcollect 120 Briny Flesh##152631 |n |goto Tiragarde Sound/0 58.39,32.61
		You can find more around [57.18,33.28]
		goldtracker
		Click here to continue farming |confirm |next "Farming_Path_Two"
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm |next "Sell"
	step
	label "Farming_Path_Two"
		kill Razorjaw Chomper##123083
		map Nazmir/0
		path follow smart; loop off; ants curved; dist 20
		path	55.99,77.68	55.59,76.57	56.96,76.63	57.99,75.50	61.75,71.02
		path	63.96,67.56	65.65,60.20
		goldcollect 120 Briny Flesh##152631 |n
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
		Click Here to Farm Briny Flesh |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Meaty Haunch",{
	meta={goldtype="route",levelreq=100},
	items={{154898,200}},
	maps={"Zuldazar"},
	},[[
	step
	label "Start"
		Kill enemies around this area
		|tip If you have the "Skinning" skill, you can gather extra meat.
		goldcollect 200 Meaty Haunch##154898 |n |goto Zuldazar/0 69.82,26.34
		You can find more around [70.34,23.77]
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
		Click Here to Farm Meaty Haunch |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Stringy Loins",{
	meta={goldtype="route",skillreq={skinning=1},levelreq=100},
	items={{154897,160}},
	maps={"Drustvar"},
	},[[
	step
	label "Start"
		kill Shallows Saurolisk##125452
		|tip You will need the "Skinning" skill in order to gather these.
		goldcollect 160 Stringy Loins##154897 |n |goto Drustvar/0 68.37,40.53
		You can find more around [65.33,40.57]
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
		Click Here to Farm Stringy Loins |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Thick Paleo Steak",{
	meta={goldtype="route",levelreq=100},
	items={{154899,200}},
	maps={"Zuldazar"},
	},[[
	step
	label "Start"
		kill Venomous Diemetradon##123098+
		|tip If you have the "Skinning" skill, you can gather extra meat.
		goldcollect 200 Thick Paleo Steak##154899 |n |goto Zuldazar/0 68.15,25.53
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
		Click Here to Farm Thick Paleo Steak |confirm |next "Start"
]])

----------------------
-----    FISH    -----
----------------------

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Frenzied Fangtooth",{
	meta={goldtype="route",skillreq={fishing=1},levelreq=110},
	items={{152545,140},{152546,120}},
	maps={"Stormsong Valley"},
	},[[
	step
	label "Start"
		Fish in the open water
		|tip You will occassionally catch Lane Snappers as well as Frenzied Fangtooth.
		goldcollect 140 Frenzied Fangtooth##152545 |n |goto Stormsong Valley/0 52.51,25.97
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
		Click Here to Farm Frenzied Fangtooth |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Great Sea Catfish",{
	meta={goldtype="route",skillreq={fishing=1},levelreq=110},
	items={{152547,140}},
	maps={"Nazmir"},
	},[[
	step
	label "Start"
		map Nazmir/0
		path follow smart; loop off; ants curved; dist 30
		path	39.12,84.85	40.75,87.50	44.45,87.52	46.38,86.58	47.92,82.26
		path	52.34,80.48	55.22,81.01	55.99,77.68	58.95,74.33	60.40,71.18
		path	60.81,70.35	64.07,68.70	65.11,63.06 	65.93,60.32
		Fish in Great Sea Catfish Schools
		|tip They share spawn points with Redtail Loach School.
		|tip You will need fishing to gather from this path.
		|tip You may need water walking in order to farm from some of the pools.
		|tip They look like small circular swirling spots in the water along the coast.
		goldcollect 140 Great Sea Catfish##152547 |n
		goldtracker
		'|goto Nazmir/0 65.93,60.32 < 30 |c |noway |next "Farming_Path_Two"
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
		|tip They share spawn points with Redtail Loach School.
		|tip You will need fishing to gather from this path.
		|tip You may need water walking in order to farm from some of the pools.
		|tip They look like small circular swirling spots in the water along the coast.
		goldcollect 140 Great Sea Catfish##152547 |n
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
		Click Here to Farm Great Sea Catfish |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Lane Snapper",{
	meta={goldtype="route",skillreq={fishing=1},levelreq=110},
	items={{152546,120},{152545,140}},
	maps={"Stormsong Valley"},
	},[[
	step
	label "Start"
		Fish in the open water
		|tip You will occassionally catch Lane Snappers as well as Frenzied Fangtooth.
		goldcollect 120 Lane Snapper##152546 |n |goto Stormsong Valley/0 52.51,25.97
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
		Click Here to Farm Lane Snapper |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Sand Shifter",{
	meta={goldtype="route",skillreq={fishing=1},levelreq=110},
	items={{152543,140},{152544,100}},
	maps={"Nazmir"},
	},[[
	step
	label "Start"
		Fish in the open water
		|tip You will occassionally catch Slimy Mackerel as well as Sand Shifters.
		goldcollect 140 Sand Shifter##152543 |n |goto Nazmir/0 40.78,81.97
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
		Click Here to Farm Sand Shifter |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Slimy Mackerel",{
	meta={goldtype="route",skillreq={fishing=1},levelreq=110},
	items={{152544,100},{152543,140}},
	maps={"Nazmir"},
	},[[
	step
	label "Start"
		Fish in the open water
		|tip You will occassionally catch Sand Shifters as well as Sand Shifters.
		goldcollect 100 Slimy Mackerel##152544 |n |goto Nazmir/0 40.78,81.97
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
		Click Here to Farm Slimy Mackerel |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Tiragarde Perch",{
	meta={goldtype="route",skillreq={fishing=1},levelreq=110},
	items={{152548,140},{152547,120}},
	maps={"Tiragarde Sound"},
	},[[
	step
	label "Start"
		Fish in the small pond
		|tip You will occassionally catch Great Sea Catfish as well as Tiragarde Perch.
		goldcollect 140 Tiragarde Perch##152548 |n |goto Tiragarde Sound/0 77.67,67.30
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
		Click Here to Farm Tiragarde Perch |confirm |next "Start"
]])

---------------------------
-----    HERBALISM    -----
---------------------------

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Akunda's Bite",{
	meta={goldtype="route",skillreq={herbalism=1},levelreq=110},
	items={{152507,160}},
	maps={"Vol'dun"},
	},[[
	step
	label "Start"
		map Vol'dun/0
		path follow smart; loop off; ants curved; dist 20
		path	49.82,41.45	48.88,41.67	48.29,41.13	47.67,41.21	48.23,39.70
		path	48.42,38.67	48.15,37.58	48.47,36.49	49.41,35.76	49.67,34.73
		path	48.70,34.35	47.76,34.60	47.19,34.79	46.70,34.51	46.16,33.27
		path	46.45,33.23	47.21,33.88	48.03,33.12	48.41,32.77	48.21,30.92
		path	49.83,32.93	51.34,33.27	52.31,33.74	54.00,33.67	55.22,34.82
		path	56.00,35.16	55.54,37.65	55.22,39.94	54.38,41.84	51.56,41.24
		click Akunda's Bite
		|tip Track them on your minimap with "Find Herbs".
		goldcollect 160 Akunda's Bite##152507 |n
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
		Click Here to Farm Akunda's Bite |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Anchor Weed",{
	meta={goldtype="route",skillreq={herbalism=1},levelreq=110},
	items={{152510,32}},
	maps={"Nazmir"},
	},[[
	step
	label "Start"
		map Nazmir/0
		path follow smart; loop on; ants curved; dist 20
		path	41.31,79.88	42.35,78.69	44.42,78.71	47.60,78.67	48.60,80.32
		path	50.17,82.02	51.84,81.36	53.57,76.46	54.89,74.29	55.29,74.00
		path	57.19,72.89	58.20,71.35	59.37,69.45	60.23,67.62	61.67,63.67
		path	63.04,62.18	64.06,60.53	64.90,59.48	64.39,56.65	63.79,55.18
		path	63.28,54.08	63.15,52.14	64.06,51.01	64.03,48.68	64.45,46.84
		path	64.42,44.37	61.01,42.16	59.45,39.19	57.75,38.05	55.70,36.87
		path	54.24,35.95	54.06,35.01	52.74,34.09	50.38,31.37	49.29,29.24
		path	47.90,25.91	46.44,24.92	45.39,28.74	44.84,31.93	44.00,33.91
		path	43.70,35.47	43.63,37.42	43.59,39.81	42.54,41.42	41.33,42.08
		path	40.15,41.19	37.77,41.65
		click Anchor Weed
		|tip Track them on your minimap with "Find Herbs".
		goldcollect 32 Anchor Weed##152510 |n
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
		Click Here to Farm Anchor Weed |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Riverbud",{
	meta={goldtype="route",skillreq={herbalism=1},levelreq=110},
	items={{152505,360}},
	maps={"Tiragarde Sound"},
	},[[
	step
	label "Start"
		map Tiragarde Sound/0
		path	follow smart; loop off; ants curved; dist 20
		path	51.69,31.84	51.12,31.38	50.21,30.71	49.57,29.61	49.35,28.68
		path	48.77,27.41	48.81,26.17	48.23,23.45	49.07,22.58	50.57,22.86
		path	52.15,23.99	53.14,22.64	55.43,22.49	56.43,21.70	58.85,20.89
		path	60.12,18.40	61.27,18.03	62.73,18.29	64.03,19.48	64.51,20.95 
		path	65.38,21.75
		click Riverbud
		|tip Track them on your minimap with "Find Herbs".
		goldcollect 360 Riverbud##152505+ |n
		goldtracker
		Click here to continue farming |confirm |next "Farming_Part_Two"
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm |next "Sell"
	step
	label "Farming_Part_Two"
		map Tiragarde Sound/0
		path	follow smart; loop off; ants curved; dist 20
		path	63.87,19.66	63.23,17.77	62.39,17.21	61.78,16.40	60.28,17.20
		path	60.43,18.49	60.10,19.18	59.27,19.94	58.35,21.16	57.25,21.04
		path	55.87,22.00	54.73,22.97	53.14,22.66	53.25,24.12	52.35,25.02
		path	53.29,26.07	53.54,26.64	54.02,27.35	54.71,28.75	54.96,29.30
		path	55.40,30.20	55.60,30.76	54.75,31.73	53.65,32.78	52.72,32.47
		click Riverbud
		|tip Track them on your minimap with "Find Herbs".
		goldcollect 360 Riverbud##152505+ |n
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
		Click Here to Farm Riverbud |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Sea Stalk",{
	meta={goldtype="route",skillreq={herbalism=1},levelreq=110},
	items={{152511,340}},
	maps={"Zuldazar"},
	},[[
	step
	label "Start"
		map Zuldazar/0
		path	follow smart; loop on; ants curved; dist 20
		path	70.56,64.15	71.41,65.42	72.20,65.36	73.23,66.61	73.80,65.36
		path	74.88,66.24	76.25,66.34	77.44,66.50	77.35,63.75	75.76,64.34
		path	74.96,63.20	73.08,63.26	72.06,62.91
		click Sea Stalk##
		|tip Track them on your minimap with "Find Herbs".
		goldcollect 340 Sea Stalk##152511 |n
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
		Click Here to Farm Sea Stalk |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Siren's Pollen",{
	meta={goldtype="route",skillreq={herbalism=1},levelreq=110},
	items={{152509,240}},
	maps={"Zuldazar"},
	},[[
	step
	label "Start"
		map Zuldazar/0
		path follow smart; loop on; ants curved; dist 20
		path	53.29,29.09	53.90,28.49	54.76,28.21	55.94,27.53	57.14,26.19
		path	58.55,25.49	59.14,24.60	58.52,23.26	58.62,21.68	58.95,21.21
		path	59.48,20.31	60.41,20.27	61.04,20.56	61.05,21.94	61.03,24.10
		path	61.58,24.56	62.36,24.45	62.99,23.80	63.49,23.68	64.05,23.77	
		path	64.54,24.42	65.70,25.12	66.63,25.18	67.37,23.75	67.83,23.40
		path	68.54,23.34	68.82,21.99	68.24,20.37	68.12,19.31	67.49,18.36
		path	66.46,18.11	65.94,17.30	65.11,18.00	64.25,18.18	63.40,18.49
		path	62.76,18.29	62.50,17.18	62.44,15.74	61.50,16.16	60.83,17.04
		path	60.82,17.52	60.50,18.43	59.90,19.26	58.91,18.81	57.67,19.79
		path	56.80,19.71	56.11,19.16	55.91,19.37	55.51,19.52	55.33,19.92
		path	54.74,20.13	54.36,20.47	54.08,19.83	53.78,19.57	53.53,19.83
		path	52.65,20.71	51.19,21.06	51.25,21.74	51.87,22.12	52.53,22.27
		path	52.89,22.81	53.57,23.70	54.35,25.18	54.43,26.35
		click Siren's Sting
		|tip Track them on your minimap with "Find Herbs".
		|tip They grow on trees.
		goldcollect 240 Siren's Pollen##152509 |n
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
		Click Here to Farm Siren's Pollen |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Star Moss",{
	meta={goldtype="route",skillreq={herbalism=1},levelreq=110},
	items={{152506,200}},
	maps={"Vol'dun"},
	},[[
	step
	label "Start"
		map Vol'dun/0
		path follow smart; loop on; ants curved; dist 20
		path	50.34,43.91	48.49,43.69	47.64,43.44	47.64,42.48	47.20,42.14
		path	46.93,42.62	46.80,43.24	46.41,44.28	45.64,44.84	45.27,45.78
		path	45.13,46.85	46.60,47.72	48.10,47.80	49.58,47.00	50.07,45.22
		click Star Moss
		|tip Track them on your minimap with "Find Herbs".
		goldcollect 200 Star Moss##152506 |n
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
		Click Here to Farm Star Moss |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Winter's Kiss",{
	meta={goldtype="route",skillreq={herbalism=1},levelreq=110},
	items={{152508,320}},
	maps={"Drustvar"},
	},[[
	step
	label "Start"
		map Drustvar/0
		path follow smart; loop on; ants curved; dist 20
		path	60.97,63.86	61.78,65.57	60.96,67.00	60.65,68.53	58.93,67.74
		path	58.69,66.13	58.89,63.16	58.74,62.51	59.45,61.83
		click Winter's Kiss
		|tip Track them on your minimap with "Find Herbs".
		goldcollect 320 Winter's Kiss##152508 |n
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
		Click Here to Farm Winter's Kiss |confirm |next "Start"
]])

------------------------
-----    MINING    -----
------------------------

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Platinum Ore",{
	meta={goldtype="route",skillreq={mining=1},levelreq=110},
	items={{152513,60}},
	maps={"Stormsong Valley"},
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
		click Platinum Deposit##276618
		|tip Track them on your minimap with "Find Minerals".
		|tip Enter caves along the path for additional nodes.
		|tip These are rare spawn nodes, so you likely won't find them in bulk.
		goldcollect 60 Platinum Ore##152513 |n
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
		Click Here to Farm Platinum |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Storm Silver Ore",{
	meta={goldtype="route",skillreq={mining=1},levelreq=110},
	items={{152579,240}},
	maps={"Stormsong Valley"},
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
		click Storm Silver Deposit##276617
		|tip Track them on your minimap with "Find Minerals".
		|tip Enter caves along the path for additional nodes.
		goldcollect 240 Storm Silver Ore##152579 |n
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
		Click Here to Farm Storm Silver |confirm |next "Start"
]])

--------------
-- SKINNING --
--------------

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Blood-Stained Bone",{
	meta={goldtype="route",skillreq={skinning=1},levelreq=110},
	items={{154164,140}},
	maps={"Nazmir"},
	startlevel=110.0,
	},[[
	step
	label "Start"
		map Nazmir/0
		path	follow smart; loop on; ants curved; dist 20
		path	37.83,75.77	38.34,73.13	37.42,70.76	36.12,70.02	34.90,71.78
		path	34.14,74.34	32.61,75.16	32.44,77.12	34.80,79.08	36.71,79.39
		Kill enemies around this area
		|tip Make sure you loot them so you can skin them after.
		goldcollect 140 Blood-Stained Bone##154164 |n
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
		Click Here to Farm Blood-Stained Bone |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Calcified Bone",{
	meta={goldtype="route",skillreq={skinning=1},levelreq=110},
	items={{154165,100}},
	maps={"Nazmir"},
	},[[
	step
	label "Start"
		map Nazmir/0
		path	follow smart; loop on; ants curved; dist 20
		path	37.83,75.77	38.34,73.13	37.42,70.76	36.12,70.02	34.90,71.78
		path	34.14,74.34	32.61,75.16	32.44,77.12	34.80,79.08	36.71,79.39
		Kill enemies around this area
		|tip Make sure you loot them so you can skin them after.
		goldcollect 100 Calcified Bone##154165 |n
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
		Click Here to Farm Calcified Bone |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Coarse Leather",{
	meta={goldtype="route",skillreq={skinning=1},levelreq=110},
	items={{152541,200}},
	maps={"Stormsong Valley"},
	},[[
	step
	label "Start"
		map Stormsong Valley/0
		path	follow smart; loop on; ants curved; dist 20
		path	54.55,52.05	54.53,54.26	55.37,55.61	56.52,55.94	57.73,57.66
		path	58.45,58.57	59.24,56.75	59.23,54.33	59.03,52.62	56.67,51.10
		Kill Coldtooth enemies around this area
		|tip Make sure you loot them so you can skin them after.
		goldcollect 200 Coarse Leather##152541 |n
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
		Click Here to Farm Coarse Leather |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Mistscale",{
	meta={goldtype="route",skillreq={skinning=1},levelreq=110},
	items={{153051,100}},
	maps={"Nazmir"},
	},[[
	step
	label "Start"
		map Nazmir/0
		path	follow smart; loop on; ants curved; dist 20
		path	37.83,75.77	38.34,73.13	37.42,70.76	36.12,70.02	34.90,71.78
		path	34.14,74.34	32.61,75.16	32.44,77.12	34.80,79.08	36.71,79.39
		Kill enemies around this area
		|tip Make sure you loot them so you can skin them after.
		goldcollect 100 Mistscale##153051 |n
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
		Click Here to Farm Mistscale |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Shimmerscale",{
	meta={goldtype="route",skillreq={skinning=1},levelreq=110},
	items={{153050,400}},
	maps={"Nazmir"},
	},[[
	step
	label "Start"
		map Nazmir/0
		path follow smart; loop on; ants curved; dist 20
		path	37.83,75.77	38.34,73.13	37.42,70.76	36.12,70.02	34.90,71.78
		path	34.14,74.34	32.61,75.16	32.44,77.12	34.80,79.08	36.71,79.39
		Kill enemies around this area
		|tip Make sure you loot them so you can skin them after.
		goldcollect 400 Shimmerscale##153050 |n
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
		Click Here to Farm Shimmerscale |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Tempest Hide",{
	meta={goldtype="route",skillreq={skinning=1},levelreq=110},
	items={{154722,0}},
	maps={"Stormsong Valley"},
	},[[
	step
	label "Start"
		map Stormsong Valley/0
		path	follow smart; loop on; ants curved; dist 20
		path	54.55,52.05	54.53,54.26	55.37,55.61	56.52,55.94	57.73,57.66
		path	58.45,58.57	59.24,56.75	59.23,54.33	59.03,52.62	56.67,51.10
		Kill Coldtooth enemies around this area
		|tip Make sure you loot them so you can skin them after.
		goldcollect Tempest Hide##154722 |n
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
		Click Here to Farm Tempest Hide |confirm |next "Start"
]])
