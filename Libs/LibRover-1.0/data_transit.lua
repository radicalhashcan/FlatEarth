local name,addon = ...

addon.LibRoverData = addon.LibRoverData or {}
local data=addon.LibRoverData

data.basenodes.transit = {

---------------------
---------------------
----   PORTALS   ----
---------------------
---------------------

	--------------
	-- KALIMDOR --
	--------------

	--## ALLIANCE ##--

		-- Bashal'Aran - Darkshore, Kalimdor -to- Boralus Harbor - Boralus, Kul Tiras --
		"Darkshore/0 48.02,36.28 -to- Boralus/0 66.81,25.06 {fac:A} {mode:PORTAL} {title:Click the Portal to Boralus Harbor} "..
			"{cond:PlayerCompletedQuest(54871) and not ZGV.InPhase('Old Darnassus') and ZGV.InPhase('Warfront Darkshore Control')}",

		-- The Exodar - Azuremyst Isle, Kalimdor -to- Temple of the Moon - Darnassus, Kalimdor --
		"Kalimdor/0 29.34,28.25 <subtype:cityportal> -to- Darnassus/0 43.47,78.67 {fac:A} {mode:PORTAL}",

		-- The Exodar - Azuremyst Isle, Kalimdor -to- Hellfire Peninsula, Outland (Portal Usable) --
		"The Exodar/0 48.35,62.91 <subtype:cityportal> -to- Stormwind City/0 46.35,90.23 {fac:A} {mode:PORTAL}",

		-- Magni's Encampment - Silithus, Kalimdor -to- Sanctum of the Sages - Boralus Harbor, Tiragarde Sound --
		"Silithus/0 41.49,44.85 -to- Tiragarde Sound/0 73.78,25.29 {fac:A} {mode:PORTAL} {title:Click the Portal to Tiragarde} "..
			"{cond:ZGV.InPhase('BFA') and not ZGV.InPhase('Old Silithus')}",

		-- Nordrassil - Mount Hyjal, Kalimdor -to- Stormwind - Elwynn Forest, Eastern Kingdoms --
		"Mount Hyjal/0 62.62,23.13 -to- Stormwind City/0 74.46,18.34 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(25316) or UnitLevel('player') >= 80}",

		-- Rut'theran Village - Darnassus, Kalimdor -to- Stormwind - Elwynn Forest, Eastern Kingdoms --
		"Teldrassil/0 55.03,93.71 -to- Stormwind City/0 49.59,86.53 {fac:A} {mode:PORTAL} {cond:ZGV.InPhase('Old Darnassus')}",

		-- Rut'theran Village - Darnassus, Kalimdor -to- The Exodar - Azuremyst Isle, Kalimdor --
		"Teldrassil/0 52.28,89.47 -to- The Exodar/0 47.62,59.82 {fac:A} {mode:PORTAL} {cond:ZGV.InPhase('Old Darnassus')}",

		-- Temple of the Moon - Darnassus, Kalimdor -to- The Exodar - Azuremyst Isle, Kalimdor --
		"Darnassus/0 44.24,78.69 -to- The Exodar/0 47.62,59.82 {fac:A} {mode:PORTAL} {cond:ZGV.InPhase('Old Darnassus')}",

		-- Temple of the Moon - Darnassus, Kalimdor (Old Time) -to- Hellfire Peninsula, Outland (Portal Usable) --
		"Darnassus/0 43.99,78.18 -to- Hellfire Peninsula/0 89.17,50.86 {fac:A} {mode:PORTAL} {cond:UnitLevel('player') >= 58 and ZGV.InPhase('Old Darnassus')}",

		-- Temple of the Moon - Darnassus, Kalimdor (Old Time) -to- Hellfire Peninsula, Outland (Portal Not Usable) --
		"Darnassus 44.1,78.2 <override_text:You must be at least 58 to enter Outland.> <override_icon:error> -to- Hellfire Peninsula/0 89.17,50.86 {fac:A} "..
			"{mode:PORTAL} {cond:UnitLevel('player') < 58} {cost:999}",

	--## HORDE ##--

		-- Bashal'Aran - Darkshore, Kalimdor -to- Port of Zandalar - Zuldazar, Zandalar --
		"Darkshore/0 46.24,35.11 -to- Dazar'alor/0 51.66,93.82 {fac:H} {mode:PORTAL} {title:Click the Portal to Darkshore} "..
			"{cond:PlayerCompletedQuest(54416) and not ZGV.InPhase('Old Darnassus') and ZGV.InPhase('Warfront Darkshore Control')}",

		-- Magni's Encampment - Silithus, Kalimdor -to- Hall of Ancient Paths - Zuldazar, Zandalar --
		"Silithus/0 41.61,45.20 -to- Dazar'alor/1 68.28,64.58 {fac:H} {mode:PORTAL} {title:Click the Portal to Zuldazar} "..
			"{cond:ZGV.InPhase('BFA') and not ZGV.InPhase('Old Silithus')}",

		-- Northern Stranglethorn Vale, Kalimdor -to- Undercity - Tirisfal Glades, Eastern Kingdoms --
		"Northern Stranglethorn/0 37.54,50.99 -to- Undercity/0 84.58,16.33 {fac:H} {mode:PORTAL} {cond:ZGV.InPhase('Old Undercity')}",

		-- Northern Stranglethorn Vale, Kalimdor -to- Tirisfal Glades, Eastern Kingdoms (After Destruction) --
		"Northern Stranglethorn/0 37.54,50.99 -to- Tirisfal Glades/0 69.30,62.75 {fac:H} {mode:PORTAL} {cond:not ZGV.InPhase('Old Undercity')}",

		-- Orgrimmar - Durotar, Kalimdor -to- Kelp'thar Forest - Vashj'ir, Eastern Kingdoms --
		"Orgrimmar/1 49.23,36.52 -to- Kelp'thar Forest/0 45.14,23.33 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(25924) and not PlayerCompletedQuest(25222)}",

		-- Orgrimmar - Durotar, Kalimdor -to- Shimmering Expanse - Vashj'ir, Eastern Kingdoms --
		"Orgrimmar/1 49.23,36.52 -to- Shimmering Expanse 49.50,40.50 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(25222) and not PlayerCompletedQuest(26784)}",

		-- Orgrimmar - Durotar, Kalimdor -to- Abyssal Depths - Vashj'ir, Eastern Kingdoms --
		"Orgrimmar/1 49.23,36.52 -to- Abyssal Depths 51.40,61.01 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(26784) or UnitLevel('player') >= 80}",

		-- Orgrimmar - Durotar, Kalimdor -to- Dalaran - Crystalsong Forest, Northrend --
		"Orgrimmar/1 56.21,91.76 -to- Dalaran/1 55.92,46.79 {fac:H} {mode:PORTAL} {title:Click the Portal to Dalaran, Crystalsong Forest Inside the Building}",

		-- Orgrimmar - Durotar, Kalimdor -to- Warspear - Ashran, Draenor --
		"Orgrimmar/1 58.32,87.83 -to- Warspear/0 44.42,35.53 {fac:H} {mode:PORTAL} {title:Click the Portal to Warspear, Ashran Inside the Building}",

		-- Orgrimmar - Durotar, Kalimdor -to- Ramkaehen - Uldum, Kalimdor --
		"Orgrimmar/1 48.87,38.55 -to- Uldum/0 54.90,34.25 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(28112) or UnitLevel('player') >= 83}",

		-- Orgrimmar - Durotar, Kalimdor -to- Temple of Earth - Deepholm, The Maelstrom --
		"Orgrimmar/1 50.84,36.29 -to- Deepholm/0 50.59,52.94 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(27123) or UnitLevel('player') >= 82}",

		-- Orgrimmar - Durotar, Kalimdor -to- Honeydew Village - The Jade Forest, Pandaria --
		"Orgrimmar/1 57.47,92.31 -to- The Jade Forest/0 28.56,13.98 {fac:H} {mode:PORTAL} {cond:UnitLevel('player') >= 85} "..
			"{title:Click the Portal to Honeydew Village Inside the Building}",

		-- Orgrimmar - Durotar, Kalimdor -to- Temple of Earth - Deepholm, The Maelstrom --
		"Orgrimmar/1 50.84,36.29 -to- Deepholm/0 50.59,52.94 {fac:H} {mode:PORTAL} {cond:not PlayerCompletedQuest(27123) and UnitLevel('player') < 82} "..
			"{title:|cfff0e081You can't get to Deepholm yet!|r\n\nPlease complete the \"Deepholm, Realm of Earth\" quest in the \"Deepholm "..
			"(81-90)\" leveling guide or reach level 82.}",

		-- Orgrimmar - Durotar, Kalimdor -to- Silvermoon City - Everson Woods, Eastern Kingdoms --
		"Orgrimmar/1 56.00,88.24 -to- Silvermoon City/0 58.26,19.24 {fac:H} {mode:PORTAL} {title:Click the Portal to Silvermoon Inside the Building}",

		-- Orgrimmar - Durotar, Kalimdor -to- Nordrassil - Mount Hyjal, Kalimdor --
		"Orgrimmar/1 51.11,38.28 -to- Mount Hyjal/0 63.49,23.37 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(25316) or UnitLevel('player') >= 80}",

			-- Nordrassil - Mount Hyjal, Kalimdor -to- Orgrimmar - Durotar, Kalimdor --
			"Mount Hyjal/0 63.48,24.43 -to- Orgrimmar/1 57.10,89.81 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(25316) or UnitLevel('player') >= 80}",

		-- Orgrimmar - Durotar, Kalimdor -to- Hellscream's Grasp - Tol Barad Peninsula, Eastern Kingdoms --
		"Orgrimmar/1 47.40,39.27 -to- Tol Barad Peninsula/0 55.78,80.06 {fac:H} {mode:PORTAL} {cond:UnitLevel('player') >= 85}",

		-- Orgrimmar - Durotar, Kalimdor -to- Dragonmaw Point - Twilight Highlands, Eastern Kingdoms --
		"Orgrimmar/1 50.22,39.44 -to- Twilight Highlands/0 73.63,53.39 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(26784) or UnitLevel('player') >= 84}",

		-- Orgrimmar - Durotar, Kalimdor -x- Brawl'gar Arena - Orgrimmar, Kalimdor --
		"Orgrimmar/1 70.57,30.92 -x- Brawl'gar Arena/1 55.53,14.28 {fac:H} {mode:PORTAL} {template:pinkportal}",

		-- Orgrimmar - Durotar, Kalimdor -to- Undercity - Tirisfal Glades, Eastern Kingdoms --
		"Orgrimmar/1 50.74,55.57 -to- Undercity/0 84.58,16.33 {fac:H} {mode:PORTAL}",

		-- Orgrimmar - Durotar, Kalimdor -to- Crumbling Palace - Azsuna, Broken Isles --
		"Orgrimmar/1 58.91,89.53 -to- Azsuna/0 47.00,40.89 {fac:H} {mode:PORTAL} {title:Click the Portal to Azsuna Inside the Building} "..
			"{cond:ZGV.IsLegionOn()}",

		-- Orgrimmar - Durotar, Kalimdor -to- Hall of Ancient Paths - Zuldazar, Zandalar --
		"Orgrimmar/1 58.59,91.37 -to- Dazar'alor/1 71.96,82.78 {fac:H} {mode:PORTAL} {title:Click the Portal to Zuldazar Inside the Building} "..
			"{cond:ZGV.InPhase('BFA')}",

		-- Orgrimmar - Durotar, Kalimdor -to- The Dark Portal - Blasted Lands, Eastern Kingdoms --
		"Orgrimmar/1 56.93,88.34 -to- Blasted Lands/0 54.89,50.11 {fac:H} {mode:PORTAL} "..
			"{title:Talk to the Thrallmar Mage and tell him\n\"I must report to the Dark Portal.\"}",

		-- Orgrimmar - Durotar, Kalimdor -to- Shattrath City - Terokkar Forest, Outland (Portal Usable) --
		"Orgrimmar/1 57.11,87.34 -to- Shattrath City/0 53.01,49.21 {fac:H} {mode:PORTAL} {cond:UnitLevel('player') >= 58} "..
			"{title:Click the Portal to Shattrath Inside the Building}",

		-- Orgrimmar - Durotar, Kalimdor -to- Shattrath City - Terokkar Forest, Outland (Portal Not Usable) --
		"Orgrimmar/1 57.11,87.34 <override_text:You must be at least 58 to enter Outland.> <override_icon:error> -to- Shattrath City/0 53.01,49.21 "..
			"{fac:H} {mode:PORTAL} {cond:UnitLevel('player') < 58} {cost:999}",

	--## NEUTRAL ##--

		-- Darnassus - Teldrassil, Kalimdor -x- Rut'theran Village - Teldrassil, Kalimdor --
		"Darnassus/0 36.79,50.44 -x- Teldrassil/0 55.07,88.38 {mode:PORTAL} {template:pinkportal} {cond:ZGV.InPhase('Old Darnassus')",

		-- Magni's Encampment - Silithus, Kalimdor -to- Chamber of the Heart - Silithus, Kalimdor -- ----------PRE 8.2 ONLY
		"Silithus/0 43.19,44.49 -x- Chamber Of Heart/0 50.13,30.35 {mode:PORTAL} {title:Click the Titan Translocator} "..
			"{cond:ZGV.InPhase('BFA') and not ZGV.InPhase('Old Silithus')}",

		-- Magni's Encampment - Silithus, Kalimdor -to- Chamber of the Heart - Silithus, Kalimdor --
		"Silithus/0 43.20,44.50 -to- Chamber of Heart 2/0 50.22,35.92 {mode:PORTAL} {title:Click the Titan Translocator} "..
			"{cond:ZGV.InPhase('BFA') and not ZGV.InPhase('Old Silithus')}",

		-- Chamber of the Heart - Silithus, Kalimdor -to- Magni's Encampment - Silithus, Kalimdor --
		"Chamber of Heart 2/0 50.09,30.45 -to- Silithus/0 41.41,45.19 {mode:PORTAL} {title:Click the Titan Translocator} "..
			"{cond:ZGV.InPhase('BFA') and not ZGV.InPhase('Old Silithus')}",

		-- Nordune Ridge - Mount Hyjal, Kalimdor -to- The Molten Front - Mount Hyjal, Kalimdor --
		"Mount Hyjal/0 27.48,56.37 -to- Molten Front/0 51.74,84.42 {mode:PORTAL} {cond:PlayerCompletedQuest(29200)}",

			-- The Molten Front - Mount Hyjal, Kalimdor -to- Nordune Ridge - Mount Hyjal, Kalimdor --
			"Molten Front/0 52.99,83.74 -to- Mount Hyjal/0 27.46,55.94 {mode:PORTAL}",

		-- Thunder Bluff - Mulgore, Kalimdor -to- Darkmoon Island --
		"Mulgore/0 36.85,35.86 -to- Darkmoon Island/0 51.29,23.86 <title:Darkmoon Faire> {mode:PORTAL} {cond:ZGV:FindEvent('DARKMOON FAIRE')}",

			-- Darkmoon Island -to- Thunder Bluff - Mulgore, Kalimdor --
			"Darkmoon Island/0 51.22,23.09 -to- Mulgore 36.91,35.90 {fac:H} {mode:PORTAL}",

			-- Darkmoon Island -to- Thunder Bluff - Mulgore, Kalimdor --
			"Darkmoon Island/0 50.56,90.77 -to- Mulgore 36.91,35.90 {fac:H} {mode:PORTAL}",

	----------------------
	-- EASTERN KINGDOMS --
	----------------------

	--## ALLIANCE ##--

		-- The Dark Portal - Blasted Lands, Eastern Kingdoms (Portal Usable) -to- Stormshield - Ashran, Draenor --
		"Blasted Lands/0 55.01,54.27 -to- Stormshield/0 31.71,52.48 {fac:A} {mode:PORTAL} {cond:UnitLevel('player') >= 90} {template:darkportal}",

		-- The Dark Portal - Blasted Lands, Eastern Kingdoms (Portal Not Usable) -to- Stormshield - Ashran, Draenor --
		"Blasted Lands/0 55.01,54.27 <override_text:You must be at least 90 to enter Draenor.> <override_icon:error> -to- Stormshield/0 31.71,52.48 {fac:A} "..
			"{mode:PORTAL} {cond:UnitLevel('player') < 90} {template:darkportal} {cost:999}",

		-- Goldshire - Elynn Forest, Eastern Kingdoms -to- Darkmoon Island --
		"Elwynn Forest 41.81,69.50 -to- Darkmoon Island/0 51.29,23.86 <title:Darkmoon Faire> {mode:PORTAL} {cond:ZGV:FindEvent('DARKMOON FAIRE')}",

			-- Darkmoon Island -to- Goldshire - Elynn Forest, Eastern Kingdoms --
			"Darkmoon Island/0 51.22,23.09 -to- Elwynn Forest 41.81,69.50 {fac:A} {mode:PORTAL}",

			-- Darkmoon Island -to- Goldshire - Elynn Forest, Eastern Kingdoms --
			"Darkmoon Island/0 50.56,90.77 -to- Elwynn Forest 41.81,69.50 {fac:A} {mode:PORTAL}",

		-- Highbank - Twilight Highlands, Eastern Kingdoms -to- Stormwind - Elwynn Forest, Eastern Kingdoms --
		"Twilight Highlands/0 79.47,77.80 <subtype:cityportal> -to- Stormwind City/0 75.17,16.81 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(27537)}",

		-- Skyfire Airship - Elwynn Forest, Eastern Kingdoms -to- The Jade Forest, Pandaria --
		"Eastern Kingdoms/0 41.47,70.19 <title:Skyfire Airship> -to- The Jade Forest 46.23,85.17 {fac:A} {mode:PORTAL} "..
			"{cond:UnitLevel('player') >= 85 and not PlayerCompletedQuest(29548)}",

		-- Skyfire Airship - Elwynn Forest, Eastern Kingdoms -to- The Jade Forest, Pandaria --
		"Eastern Kingdoms/0 41.47,70.19 <title:The Skyfire Airship> <override_text:You must be at least 85 to enter Pandaria.> "..
			"<override_icon:error> -to- The Jade Forest 46.23,85.17 {fac:A} {mode:PORTAL} {cond:UnitLevel('player') < 85} {cost:999}",

		-- Stormwind City - Elwynn Forest, Eastern Kingdoms -to- Paw'don Village - The Jade Forest, Pandaria --
		"Stormwind City/0 45.72,87.11 -to- The Jade Forest/0 46.18,85.07 {fac:A} {mode:PORTAL} {cond:UnitLevel('player') >= 85} "..
			"{title:Click the Portal to Paw'don Village Inside the Mage Tower}",

		-- Stormwind City - Elwynn Forest, Eastern Kingdoms -to- Stormshield - Ashran, Draenor --
		"Stormwind City/0 48.12,91.96 -to- Stormshield/0 31.71,52.48 {fac:A} {mode:PORTAL} "..
			"{title:Click the Portal to Shormshield, Ashran Inside the Mage Tower}",

		-- Stormwind - Elwynn Forest, Eastern Kingdoms -to- The Dark Portal - Blasted Lands, Eastern Kingdoms --
		"Stormwind City/0 49.12,87.34 -to- Blasted Lands/0 54.89,50.11 {fac:A} {mode:PORTAL} "..
			"{title:Talk to the Honor Hold Mage and tell him\n\"I must report to the Dark Portal.\"}",

		-- Stormwind City - Elwynn Forest, Eastern Kingdoms -to- Dalaran - Crystalsong Forest, Northrend --
		"Stormwind City/0 44.34,88.74 -to- Dalaran/1 55.92,46.79 {fac:A} {mode:PORTAL} "..
			"{title:Click the Portal to Dalaran, Crystalsong Forest Inside the Mage Tower}",

		-- Stormwind City - Elwynn Forest, Eastern Kingdoms -to- Crumbled Palace - Azsuna, Broken Isles --
		"Stormwind City/0 46.84,93.44 -to- Azsuna/0 47.00,40.89 {fac:A} {mode:PORTAL} {cond:ZGV.IsLegionOn()} "..
			"{title:Click the Portal to Azsuna Inside the Mage Tower}",

		-- Stormwind City - Elwynn Forest, Eastern Kingdoms -to- The Exodar - Azuremyst Isle, Kalimdor --
		"Stormwind City/0 43.61,87.20 -to- The Exodar/0 47.62,59.82 {fac:A} {mode:PORTAL} {title:Click the Portal to The Exodar Inside the Mage Tower}",

		-- Stormwind - Elwynn Forest, Eastern Kingdoms -to- Kelp'thar Forest - Vashj'ir, Eastern Kingdoms --
		"Stormwind City/0 73.30,16.87 -to- Kelp'thar Forest/0 45.14,23.33 {fac:A} {mode:PORTAL} "..
			"{cond:PlayerCompletedQuest(14482) and not PlayerCompletedQuest(25222)}",

		-- Stormwind - Elwynn Forest, Eastern Kingdoms -to- Shimmering Expanse - Vashj'ir, Eastern Kingdoms --
		"Stormwind City/0 73.30,16.87 -to- Shimmering Expanse 47.2,57.5 {fac:A} {mode:PORTAL} "..
			"{cond:PlayerCompletedQuest(25222) and not PlayerCompletedQuest(14482)}",--Check dest

		-- Stormwind - Elwynn Forest, Eastern Kingdoms -to- Abyssal Depths - Vashj'ir, Eastern Kingdoms --
		"Stormwind City/0 73.30,16.87 -to- Abyssal Depths 55.7,72.8 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(14482) or UnitLevel('player') >= 80}",--Check dest

		-- Stormwind - Elwynn Forest, Eastern Kingdoms -to- Ramkaehen - Uldum, Kalimdor --
		"Stormwind City/0 75.24,20.50 -to- Uldum/0 54.90,34.25 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(28112) or UnitLevel('player') >= 82}",

		-- Stormwind - Elwynn Forest, Eastern Kingdoms -to- Temple of Earth - Deepholm, The Maelstrom --
		"Stormwind City/0 73.19,19.65 -to- Deepholm/0 48.73,53.56 @deepholm_tp_dst {fac:A} {mode:PORTAL} "..
			"{cond:PlayerCompletedQuest(27123) or UnitLevel('player') >= 82}",

		-- Stormwind - Elwynn Forest, Eastern Kingdoms -to- Nordrassil - Mount Hyjal, Kalimdor --
		"Stormwind City/0 76.20,18.69 -to- Mount Hyjal/0 63.49,23.37 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(25316) or UnitLevel('player') >= 80}",

		-- Stormwind - Elwynn Forest, Eastern Kingdoms -to- Baradin Base Camp - Tol Barad Peninsula, Eastern Kingdoms --
		"Stormwind City/0 73.20,18.37 -to- Tol Barad Peninsula/0 73.68,60.92 {fac:A} {mode:PORTAL} {cond:UnitLevel('player') >= 85}",

		-- Stormwind - Elwynn Forest, Eastern Kingdoms -to- Highbank - Twilight Highlands, Eastern Kingdoms --
		"Stormwind City/0 75.34,16.43 -to- Twilight Highlands/0 79.48,77.79 <subtype:cityportal> {fac:A} {mode:PORTAL} "..
			"{cond:PlayerCompletedQuest(27537) or UnitLevel('player') >= 84}",

		-- Stormwind - Elwynn Forest, Eastern Kingdoms -to- Boralus Harbor, Tiragarde Sound --
		"Stormwind City/0 48.00,93.73 <subtype:cityportal> -to- Boralus/0 66.81,25.06 {fac:A} {mode:PORTAL} "..
			"{title:Click the Portal to Boralus Inside the Mage Tower} {cond:ZGV.InPhase('BFA')}",

		-- Stormwind - Elwynn Forest, Eastern Kingdoms -to- Temple of the Moon - Darnassus, Kalimdor --
		"Stormwind City/0 23.86,56.10 <subtype:cityportal> -to- Darnassus/0 43.47,78.67 {fac:A} {mode:PORTAL}",

		-- Stormwind - Elwynn Forest, Eastern Kingdoms -to- Shattrath City - Terokkar Forest, Outland (Portal Usable) --
		"Stormwind City/0 44.90,85.74 -to- Shattrath City/0 54.97,40.23 {fac:A} {mode:PORTAL} "..
			"{title:Click the Portal to Shattrath Inside the Mage Tower}",

		-- Stormwind - Elwynn Forest, Eastern Kingdoms -to- Shattrath City - Terokkar Forest, Outland (Portal Not Usable) --
		"Stormwind City/0 44.90,85.74 <override_text:You must be at least 58 to enter Outland.> <override_icon:error> -to- Shattrath City/0 54.97,40.23 "..
			"{fac:A} {mode:PORTAL} {cond:UnitLevel('player') < 58} {cost:999}",

		-- Stromgarde Keep- Arathi Highlands, Eastern Kingdom -to- Boralus Harbor - Boralus, Kul Tiras --
		"Arathi Highlands/0 21.96,65.15 -to- Boralus/0 66.81,25.06 {fac:A} {mode:PORTAL} {title:Click the Portal to Boralus Harbor} "..
			"{cond:PlayerCompletedQuest(53198) and not ZGV.InPhase('Old Arathi') and ZGV.InPhase('Warfront Arathi Control')}",

	--## HORDE ##--

		-- Ar'gorok - Arathi Highlands, Eastern Kingdoms -to- Port of Zandalar - Zuldazar, Zandalar --
		"Arathi Highlands/0 27.44,29.38 -to- Dazar'alor/0 51.66,93.82 {fac:H} {mode:PORTAL} {title:Click the Portal to Port of Zandalar} "..
			"{cond:PlayerCompletedQuest(53212) and not ZGV.InPhase('Old Arathi') and ZGV.InPhase('Warfront Arathi Control')}",

		-- The Dark Portal - Blasted Lands, Eastern Kingdoms (Portal Usable) -to- Warspear - Ashran, Draenor --
		"Blasted Lands/0 55.01,54.27 -to- Warspear/0 44.42,35.53 {fac:H} {mode:PORTAL} {cond:UnitLevel('player') >= 90} {template:darkportal}",

		-- The Dark Portal - Blasted Lands, Eastern Kingdoms (Portal Usable) -to- Warspear - Ashran, Draenor --
		"Blasted Lands/0 55.01,54.27 <override_text:You must be at least 90 to enter Draenor.> <override_icon:error> -to- Warspear/0 44.42,35.53 {fac:H} "..
			"{mode:PORTAL} {cond:UnitLevel('player') < 90} {template:darkportal} {cost:999}",

		-- Dragonmaw Port - Twilight Highlands, Eastern Kingdoms -to- Orgrimmar - Durotar, Kalimdor --
		"Twilight Highlands/0 73.71,53.90 <subtype:cityportal> -to- Orgrimmar/1 57.10,89.81 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(26784)}",

		-- Shattered Landing - Blasted Lands, Eastern Kingdoms (New Time) -to- Orgrimmar - Durotar, Kalimdor --
		"Blasted Lands/0 72.65,49.51 -to- Orgrimmar/2 48.28,64.53 <region:cleftofshadow> {fac:H} {mode:PORTAL} {cond:UnitLevel('player') >= 90 and not ZGV.InPhase('Old Blasted Lands')}",

		-- Silvermoon City - Eversong Woods, Eastern Kingdoms -x- Ruins of Lordaeron - Tirisfal Glades, Eastern Kingdoms (Old Time) --
		"Silvermoon City/0 49.49,14.80 -x- Tirisfal Glades/0 59.45,67.44 <region:undercitycourt> {fac:H} {mode:PORTAL} {title:Click the Orb of Translocation} "..
			"{cond:ZGV.InPhase('Old Undercity')}",

		-- Silvermoon City - Eversong Woods, Eastern Kingdoms -to- Tirisfal Glades, Eastern Kingdoms (New Time) --
		"Silvermoon City/0 49.49,14.80 -to- Tirisfal Glades/0 69.30,62.75 {fac:H} {mode:PORTAL} {title:Click the Orb of Translocation} "..
			"{cond:not ZGV.InPhase('Old Undercity')}",

		-- Tirisfal Glades, Eastern Kingdoms (Old Time) -to- Northern Stranglethorn Vale, Kalimdor --
		"Tirisfal Glades/0 61.88,59.01 -to- Northern Stranglethorn/0 37.23,50.48 {fac:H} {mode:PORTAL} {title:Click the Portal to Grom'gol} "..
			"{cond:ZGV.InPhase('Old Undercity')}",

		-- Tirisfal Glades, Eastern Kingdoms (Old Time) -to- Orgrimmar - Durotar, Kalimdor --
		"Tirisfal Glades/0 60.74,58.67 <subtype:cityportal> -to- Orgrimmar/1 57.10,89.81 {fac:H} {mode:PORTAL} {cond:ZGV.InPhase('Old Undercity')}",

		-- Tirisfal Glades, Eastern Kingdoms (Old Time) -to- Vengeance Landing - Howling Fjord, Northrend --
		"Tirisfal Glades/0 59.09,58.91 -to- Howling Fjord/0 79.00,28.92 {fac:H} {mode:PORTAL} {title:Click the Portal to Howling Fjord} "..
			"{cond:ZGV.InPhase('Old Undercity')}",

		-- Undercity - Tirisfal Glades, Eastern Kingdoms -to- The Stair of Destiny - Hellfire Peninsula, Outland (Portal Usable) --
		"Undercity/0 85.25,17.04 -to- Hellfire Peninsula/0 89.16,49.56 {fac:H} {mode:PORTAL} {cond:UnitLevel('player') >= 58 and ZGV.InPhase('Old Undercity')}",

		-- Undercity - Tirisfal Glades, Eastern Kingdoms -to- The Stair of Destiny - Hellfire Peninsula, Outland (Portal Not Usable) --
		"Undercity/0 85.25,17.04 <override_text:You must be at least 58 to enter Outland.> <override_icon:error> -to- Hellfire Peninsula/0 89.16,49.56 {fac:H} "..
			"{mode:PORTAL} {cond:UnitLevel('player') < 58 and ZGV.InPhase('Old Undercity')} {cost:999}",

	--## NEUTRAL ##--

		-- Eastern Plaguelands, Eastern Kingdoms -x- Ghostlands, Eastern Kingdoms --
		"Eastern Plaguelands/0 54.38,8.77 <subtype:darkportal> -x- Ghostlands/0 52.22,97.43 <subtype:darkportal> {mode:PORTAL}",

	-------------
	-- OUTLAND --
	-------------

	--## ALLIANCE ##--

		-- The Stair of Destiny - Hellfire Peninsula, Outland -to- Stormwind - Elwynn Forest, Eastern Kingdoms --
		"Hellfire Peninsula/0 89.22,51.00 -to- Stormwind City/0 46.35,90.23 {fac:A} {mode:PORTAL} {cond:UnitLevel('player') >= 58}",

		-- The Stair of Destiny - Hellfire Peninsula, Outland -to- Stormwind - Elwynn Forest, Eastern Kingdoms --
		"Hellfire Peninsula/0 89.22,51.00 <override_text:You must be at least 58 to enter Outland.> <override_icon:error> -to- Stormwind City/0 46.35,90.23 "..
			"{fac:A} {mode:PORTAL} {cond:UnitLevel('player') < 58} {cost:999}",

		-- Shattrath City - Terokka Forest, Outland -to- Stormwind - Elwynn Forest, Eastern Kingdoms --
		"Shattrath City/0 57.21,48.27 -to- Stormwind City/0 46.35,90.23 {fac:A} {mode:PORTAL} {cost:15}",

	--## HORDE ##--

		-- The Stair of Destiny - Hellfire Peninsula, Outland -to- Orgrimmar - Durotar, Kalimdor --
		"Hellfire Peninsula/0 89.23,49.45 -to- Orgrimmar/1 57.10,89.81 {fac:H} {mode:PORTAL} {cond:UnitLevel('player') >= 58}",

		-- The Stair of Destiny - Hellfire Peninsula, Outland -to- Orgrimmar - Durotar, Kalimdor --
		"Hellfire Peninsula/0 89.23,49.45 <override_text:You must be at least 58 to enter Outland.> <override_icon:error> -to- Orgrimmar/1 57.10,89.81 "..
			"{fac:H} {mode:PORTAL} {cond:UnitLevel('player') < 58} {cost:999}",

		-- Shattrath City - Terokka Forest, Outland -to- Orgrimmar - Durotar, Kalimdor --
		"Shattrath City/0 56.83,48.86 -to- Orgrimmar/1 57.10,89.81 {fac:H} {mode:PORTAL}",

	--## NEUTRAL ##--

		-- Shattrath City - Terokka Forest, Outland -to- Sung's Reach Sanctum - Isle of Quel'Danas, Eastern Kingdoms --
		"Shattrath City/0 48.58,42.00 -to- Isle of Quel'Danas/0 48.25,34.48 {mode:PORTAL}",

		-- The Stair of Destiny - Hellfire Peninsula, Outland -to- The Dark Portal - Blasted Lands, Eastern Kingdoms --
		"Hellfire Peninsula/0 89.90,50.15 -to- Blasted Lands/0 54.96,53.45 {mode:PORTAL} {template:darkportal} {cost:999} "..
			"{cond:UnitLevel('player') <= 90}",

	---------------
	-- NORTHREND --
	---------------

	--## ALLIANCE ##--

		-- Dalaran - Crystalsong Forest, Northrend -to- Stormwind City - Elwynn Forest, Eastern Kingdoms --
		"Dalaran/1 40.10,62.81 -to- Stormwind City/0 46.35,90.23 {fac:A} {mode:PORTAL} {title:Click the Dalaran Portal to Stormwind}",

		-- Dalaran - Crystalsong Forest, Northrend -to- Wintergrasp Fortress - Wintergrasp, Northrend --
		--"Dalaran 33.6,68.6 -to- Wintergrasp 50.0,16.7 {fac:A} {mode:PORTAL} {cond:LibRover:IsWintergraspControlled()}",

		-- Wintergrasp Fortress - Wintergrasp, Northrend -to- Dalaran - Crystalsong Forest, Northrend --
		--"Wintergrasp/0 49.11,15.31 -to- Dalaran 33.6,68.6 {fac:A} {mode:PORTAL} {cond:LibRover:IsWintergraspControlled()} "..
			--"{title:Click the Portal to The Violet Citadel}",

	--## HORDE ##--

		-- Dalaran - Crystalsong Forest, Northrend -to- Orgrimmar - Durotar, Kalimdor --
		"Dalaran/1 55.33,25.45 -to- Orgrimmar/1 57.10,89.81 {fac:H} {mode:PORTAL} {title:Click the Dalaran Portal to Orgrimmar}",

		-- Dalaran - Crystalsong Forest, Northrend -to- Wintergrasp Fortress - Wintergrasp, Northrend --
		--"Dalaran 33.6,68.6 -to- Wintergrasp 50.0,16.7 {fac:H} {mode:PORTAL} {cond:LibRover:IsWintergraspControlled()}",

		-- Wintergrasp Fortress - Wintergrasp, Northrend -to- Dalaran - Crystalsong Forest, Northrend --
		--"Wintergrasp/0 49.11,15.31 -to- Dalaran/1 26.84,44.71 {fac:H} {mode:PORTAL} {cond:LibRover:IsWintergraspControlled()} "..
			--"{title:Click the Portal to The Violet Citadel}",

	--## NEUTRAL ##--

		-- Dalaran - Crystalsong Forest, Northrend -to- The Violet Stand - Crystalsong Forest, Northrend --
		"Dalaran/1 55.92,46.77 -to- Crystalsong Forest/0 15.81,42.85 {mode:PORTAL} {title:Click the Teleport to Violet Stand Crystal Inside the Building}",

			-- The Violet Stand - Crystalsong Forest, Northrend -to- Dalaran - Crystalsong Forest, Northrend --
			"Crystalsong Forest/0 15.76,42.47 -to- Dalaran/1 55.92,46.79 {mode:PORTAL} {title:Click the Teleport to Dalaran Crystal}",

		-- The Violet Citadel - Dalaran, Northrend -to- The Purple Parlor - Dalaran, Northrend --
		"Dalaran/1 25.96,44.18 -to- Dalaran/1 23.95,39.43 {mode:PORTAL} {title:Click the Portal to The Purple Parlor}",

		-- The Purple Parlor - Dalaran, Northrend -to- The Violet Citadel - Dalaran, Northrend --
		"Dalaran/1 22.31,39.67 -to- Dalaran/1 26.84,44.71 {mode:PORTAL} {title:Click the Portal to The Violet Citadel}",

		-- Hall of Communion - Sholazar Basin, Northrend -to- Dalaran - Crystalsong Forest, Northrend --
		"Hall of Communion/1 49.78,8.80 -to- Dalaran L/10 39.65,50.54 {mode:PORTAL} {title:Click the Teleportation Pad} "..
			"{cond:PlayerIsOnQuest(47330) or PlayerIsOnQuest(46206)}",

		-- Maker's Overlook - Sholazar Basin, Northrend -to- Hall of Communion - Sholazar Basin, Northrend --
		"Sholazar Basin/0 88.43,53.00 -to- Hall of Communion/1 43.69,82.00 {mode:PORTAL} {title:Click the Power Conduit} "..
				"{cond:PlayerIsOnQuest(47330) or PlayerIsOnQuest(46206)}",

	--------------
	-- PANDARIA --
	--------------

	--## ALLIANCE ##--

		-- Lion's Landing - Krasarang Wilds, Pandaria -to- The Skyfire - Krasarang Wilds, Pandaria --
		"Krasarang Wilds/0 94.07,29.75 -to- Krasarang Wilds/0 17.67,78.98 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(32109)}",

			-- The Skyfire - Krasarang Wilds, Pandaria -to- Lion's Landing - Krasarang Wilds, Pandaria --
			"Krasarang Wilds/0 17.85,78.85 -to- Krasarang Wilds/0 92.51,28.40 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(32109)} ",

		-- Paw'don Village - The Jade Forest, Pandaria -to- Stormwind City - Elwynn Forest, Eastern Kingdoms --
		"The Jade Forest/0 46.24,85.17 -to- Stormwind City/0 46.35,90.23 {fac:A} {mode:PORTAL} {title:Click the Portal to Stormwind}",

		-- Shado-Pan Garrison - Townlong Steppes, Pandaria -to- The Seabolt - Isle of Thunder, Pandaria --
		"Townlong Steppes/0 49.74,68.66 -to- Isle of Thunder/0 34.86,89.85 <title:Portal to the Isle of Thunder> {fac:A} {mode:PORTAL} "..
			"{cond:PlayerCompletedQuest(32681) and not PlayerCompletedQuest(32644)}",

			-- The Seabolt - Isle of Thunder, Pandaria -to- Shado-Pan Garrison - Townlong Steppes, Pandaria --
			"Isle of Thunder/0 35.33,90.57 -to- Townlong Steppes/0 49.76,68.89 <title:Portal to Shado-Pan Garrison> {fac:A} {mode:PORTAL} "..
				"{cond:PlayerCompletedQuest(32681) and not PlayerCompletedQuest(32644)}",

		-- The Seabolt - Isle of Thunder, Pandaria -to- Za'Tual - Isle of Thunder, Pandaria --
		"Isle of Thunder/0 34.86,89.41 -to- Isle of Thunder/0 31.63,83.78 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(32681) and not PlayerCompletedQuest(32644)} "..
			"{title:Click Teleport to Za'Tual}",

			-- Za'Tual - Isle of Thunder, Pandaria -to- The Seabolt - Isle of Thunder, Pandaria --
			"Isle of Thunder/0 31.62,83.61 -to- Isle of Thunder/0 34.78,89.26 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(32681) and not PlayerCompletedQuest(32644)} "..
				"{title:Click Teleport to The Seabolt}",

		-- Shado-Pan Garrison - Townlong Steppes, Pandaria -to- The Violet Rise - Isle of Thunder, Pandaria --
		"Townlong Steppes/0 49.74,68.67 -to- Isle of Thunder/0 64.08,72.48 <title:the Isle of Thunder> {fac:A} {mode:PORTAL} "..
			"{cond:PlayerCompletedQuest(32644)} {template:portal}",

			-- The Violet Rise - Isle of Thunder, Pandaria -to- Shado-Pan Garrison - Townlong Steppes, Pandaria --
			"Isle of Thunder/0 64.71,73.48 -to- Townlong Steppes/0 49.76,68.89 <title:Shado-Pan Garrison> {fac:A} {mode:PORTAL} "..
				"{cond:PlayerCompletedQuest(32644)} {template:portal}",

		-- Shrine of Seven Stars - Vale of Eternal Blossoms, Pandaria -to- Stormwind - Elwynn Forest, Eastern Kingdoms --
		"Shrine of Seven Stars/2 71.66,35.94 -to- Stormwind City/0 46.35,90.23 {fac:A} {mode:PORTAL}",

	--## HORDE ##--

		-- Hellscream's Fist Airship - Durotar, Kalimdor -to- The Jade Forest, Pandaria --
		"Durotar 66,1 <title:Hellscream's Fist Airship> -to- The Jade Forest 28.5,14.0 {fac:H} {mode:PORTAL} "..
			"{cond:UnitLevel('player')>=85 and not PlayerCompletedQuest(31769) and not ZGV.IsLegionOn()}",

		-- Hellscream's Fist Airship - Durotar, Kalimdor -to- The Jade Forest, Pandaria --
		"Durotar 66,1 <title:Hellscream's Fist Airship> <override_text:You must be at least 85 to enter Pandaria.> <override_icon:error> -to- The Jade Forest 28.5,14.0 "..
			"{fac:H} {mode:PORTAL} {cond:UnitLevel('player') < 85} {cost:999}",

		-- Honeydew Village - The Jade Forest, Pandaria -to- Orgrimmar - Durotar, Kalimdor --
		"The Jade Forest/0 28.52,14.02 -to- Orgrimmar/1 57.10,89.81 <title:Orgrimmar> {fac:H} {mode:PORTAL}",

		-- Shado-Pan Garrison - Townlong Steppes, Pandaria -to- The Crimson Treader - Isle of Thunder, Pandaria --
		"Townlong Steppes/0 50.65,73.40 <title:the Isle of Thunder> -to- Isle of Thunder/0 28.39,52.90 {fac:H} {mode:PORTAL} "..
			"{cond:PlayerCompletedQuest(32680) and not PlayerCompletedQuest(32212)} {template:portal}",

			-- The Crimson Treader - Isle of Thunder, Pandaria -to- Shado-Pan Garrison - Townlong Steppes, Pandaria --
			"Isle of Thunder/0 28.37,52.98 <title:Shado-Pan Garrison> -to- Townlong Steppes/0 50.70,73.16 {fac:H} {mode:PORTAL} "..
				"{cond:PlayerCompletedQuest(32680) and not PlayerCompletedQuest(32212)} {template:portal}",

		-- Shado-Pan Garrison - Townlong Steppes, Pandaria -to- Dawnseeker's Promontory - Isle of Thunder, Pandaria --
		"Townlong Steppes/0 50.65,73.40 -to- Isle of Thunder/0 33.25,32.43 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(32212)}"..
				"<title:the Isle of Thunder>",

			-- Dawnseeker's Promontory - Townlong Steppes, Pandaria -to- The Violet Rise - Isle of Thunder, Pandaria --
			"Isle of Thunder/0 33.22,32.69 -to- Townlong Steppes/0 50.70,73.16 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(32212)}"..
				"<title:Shado-Pan Garrison upstairs inside the building>",

		-- The Crimson Treader - Isle of Thunder, Pandaria -to- Court of Bones - Isle of Thunder, Pandaria --
		"Isle of Thunder/0 28.60,52.79 -to- Isle of Thunder/0 33.06,52.84 {fac:H} {mode:PORTAL} {title:Click Teleport to Court of Bones} "..
			"{cond:PlayerCompletedQuest(32212) and not PlayerCompletedQuest(32212)}",

			-- Court of Bones - Isle of Thunder, Pandaria -to- The Crimson Treader - Isle of Thunder, Pandaria --
			"Isle of Thunder/0 33.02,52.72 -to- Isle of Thunder/0 28.50,51.55 {fac:H} {mode:PORTAL} {title:Click Teleport to the Crimson Treader} "..
				"{cond:PlayerCompletedQuest(32212) and not PlayerCompletedQuest(32212)}",

		-- Shrine of Two Moons - Vale of Eternal Blossoms, Pandaria -to- Orgrimmar - Durotar, Kalimdor --
		"Shrine of Two Moons/2 73.35,42.69 -to- Orgrimmar/1 57.10,89.81 {fac:H} {mode:PORTAL}",

	--## NEUTRAL ##--

		-- Bleak Hollow - Isle of Thunder, Pandaria -x- The Foot of Lei Shen - Isle of Thunder, Pandaria --
		"Isle of Thunder/0 52.06,45.03 -x- Isle of Thunder/0 62.82,32.29 {mode:PORTAL}",

		-- The Deepwild - Krasarang Wilds, Pandaria -x- Wind's Edge - Valley of the Four Winds, Pandaria
		"Krasarang Wilds/0 50.47,22.42 -x- Valley of the Four Winds/0 51.25,77.50 {mode:PORTAL} {template:pandarope}",

		-- Terrace of Gurthan - Dread Wastes, Pandaria -x- Serpent's Spine - Vale of Eternal Blossoms, Pandaria --
		"Dread Wastes/0 75.09,21.29 -x- Vale of Eternal Blossoms/0 14.20,76.72 <region:topofthewallVEB> {mode:PORTAL} {template:pandarope}",

	-------------
	-- DRAENOR --
	-------------

	--## ALLIANCE ##--

		-- Lion's Watch - Tanaan Jungle, Draenor -to- Throne of Kil'Jaeden - Tanaan Jungle, Draenor --
		"Tanaan Jungle/0 57.67,58.70 <noskip:1> -to- Tanaan Jungle/0 55.51,27.29 {fac:A} {mode:_} {cond:PlayerCompletedQuest(38603)} "..
			"{title:Take the Gnomish Flying Machine\nto Throne of Kil'Jaeden} {cost:30}",

		-- Lunarfall Garrison - Shadowmoon Valley, Draenor -to- Stormshield - Ashran, Draenor
		"Lunarfall/0 70.18,27.49 -to- Stormshield/0 31.71,52.48 {fac:A} {mode:PORTAL} {title:Click the Portal to Ashran} "..
			"{cond:C_Garrison.GetGarrisonInfo("..(LE_GARRISON_TYPE_6_0 or 2)..") == 3}",

		-- Stormshield - Ashran, Draenor -to- Lion's Watch - Tanaan Jungle, Draenor --
		"Stormshield/0 36.38,41.15 -to- Tanaan Jungle/0 57.53,60.32 {fac:A} {mode:PORTAL} {title: Click the Portal to Lion's Watch} {cond:PlayerCompletedQuest(38445)}",

		-- Stormshield - Ashran, Draenor -to- Lion's Watch - Tanaan Jungle, Draenor --
		"Tanaan Jungle/0 57.45,60.48 -to- Stormshield/0 31.71,52.48 {fac:A} {mode:PORTAL} {title: Click the Portal to Ashran} {cond:PlayerCompletedQuest(38445)}",

		-- Stormshield - Ashran, Draenor -to- Stormwind - Elwynn Forest, Eastern Kingdoms --
		"Stormshield/0 60.81,37.87 -to- Stormwind City/0 46.35,90.23 {fac:A} {mode:PORTAL} {title: Click the Portal to Stormwind}",

	--## HORDE ##--

		-- Frostwall Garrison - Frostfire Ridge, Draenor -to- Warspear - Ashran, Draenor --
		"Frostwall/0 75.17,48.57 -to- Warspear/0 44.42,35.53 {fac:H} {mode:PORTAL} {title:Click the Portal to Ashran} "..
			"{cond:C_Garrison.GetGarrisonInfo("..(LE_GARRISON_TYPE_6_0 or 2)..") == 3}",

		-- Vol'mar - Tanaan Jungle, Draenor -to- Warspear - Ashran, Draenor --
		"Tanaan Jungle/0 61.02,47.35 -to- Warspear/0 44.42,35.53 {fac:H} {mode:PORTAL} {title: Click the Portal to Ashran} {cond:PlayerCompletedQuest(37935)}",

		-- Vol'mar - Tanaan Jungle, Draenor -to- Throne of Kil'Jaeden - Tanaan Jungle, Draenor --
		"Tanaan Jungle/0 59.99,47.41 <title:B-2 Personnel Relocator> <noskip:1> -to- Tanaan Jungle/0 55.57,27.19 {fac:H} {mode:_} {cond:PlayerCompletedQuest(38599)} "..
			"{title:Take the B-2 Personnel Relocator\nto Throne of Kil'Jaeden} {cost:23}",

		-- Warspear - Ashran, Draenor -to- Vol'mar - Tanaan Jungle, Draenor --
		"Warspear/0 53.16,43.91 -to- Tanaan Jungle/0 60.9,47.3 {fac:H} {mode:PORTAL} {title: Click the Portal to Vol'mar} {cond:PlayerCompletedQuest(37935)}",

		-- Warspear - Ashran, Draenor -to- Orgrimmar - Durotar, Kalimdor --
		"Warspear/0 60.7,51.6 -to- Orgrimmar/1 57.10,89.81 <subtype:cityportal> {fac:H} {mode:PORTAL}",

	--## NEUTRAL ##--

	-------------------
	-- THE MAELSTROM --
	-------------------

	--## ALLIANCE ##--

		-- Baradin Base Camp - Tol Barad Peninsula, Eastern Kingdoms -x- Stormwind - Elwynn Forest, Eastern Kingdoms --
		"Tol Barad Peninsula/0 75.23,58.86 -to- Stormwind City/0 73.39,18.28 {fac:A} {mode:PORTAL} {cond:UnitLevel('player') >= 85}",

		-- Temple of Earth - Deepholm, The Maelstrom -x- Stormwind - Elwynn Forest, Eastern Kingdoms --
		"Deepholm/0 48.53,53.84 -to- Stormwind City/0 74.46,18.34 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(27123) or UnitLevel('player') >= 82}",

		--## HORDE ##--

		-- Hellscream's Grasp - Tol Barad Peninsula, Eastern Kingdoms -to- Orgrimmar - Durotar, Kalimdor --
		"Tol Barad Peninsula/0 56.30,79.66 -to- Orgrimmar/1 57.10,89.81 {fac:H} {mode:PORTAL} {cond:UnitLevel('player') >= 85}",

		-- Temple of Earth - Deepholm, The Maelstrom -to- Orgrimmar - Durotar, Kalimdor --
		"Deepholm/0 50.93,53.10 -to- Orgrimmar/1 57.10,89.81 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(27123) or UnitLevel('player') >= 82}",

	--## NEUTRAL ##--

	------------------
	-- BROKEN ISLES --
	------------------

	--## ALLIANCE ##--

		-- Crumbled Palace - Azsuna, Broken Isles -to- Stormwind City - Elwynn Forest, Eastern Kingdoms --
		"Azsuna/0 46.66,41.42 -to- Stormwind City/0 46.35,90.23 {fac:A} {mode:PORTAL} {title:Click the Portal to Stormwind}"..
			"{cond:ZGV.IsLegionOn()}",

		-- Dalaran, Broken Isles -to- Stormwind City - Elwynn Forest, Eastern Kingdoms --
		"Dalaran L/10 39.55,63.22 -to- Stormwind City/0 46.35,90.23 {fac:A} {mode:PORTAL} {title:Click the Portal to Stormwind inside Greyfang Enclave} {cond:ZGV.IsLegionOn()}",

		-- Haustvald - Stormheim, Broken Isles -to- Helheim - Stormheim, Broken Isles --
		"Stormheim/0 73.70,39.29 -to- Helheim/0 66.25,47.63 {fac:A} {mode:PORTAL} {title:Enter the Swirling Portal} {cond:PlayerCompletedQuest(39855)}",

		-- Helheim - Stormheim, Broken Isles -to- Haustvald - Stormheim, Broken Isles --
		"Helheim/0 66.83,48.14 -to- Stormheim/0 73.54,39.51 {fac:A} {mode:PORTAL} {title:Enter the Swirling Portal} {cond:PlayerCompletedQuest(39855)}",

		-- Vethir - Stormheim, Broken Isles -to- Top of Galebroken Path - Stormheim, Broken Isles --
		"Stormheim/0 37.48,64.23 -to- Stormheim/0 44.83,77.39 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(38624)} "..
			"{title:Talk to Vethir and tell him\n\"Take me to the top of the Galebroken Path.\"}",

		-- Vethir - Stormheim, Broken Isles -to- Thorim's Peak Outside the Thorignir Refuge - Stormheim, Broken Isles --
		"Stormheim/0 37.48,64.23 -to- Stormheim/0 42.79,82.67 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(38624)} "..
			"{title:Talk to Vethir and tell him\n\"Take me to Thorim's Peak outside the Thorignir Refuge.\"}",

		-- Vethir - Stormheim, Broken Isles -to- Top of Thorim's Peak - Stormheim, Broken Isles --
		"Stormheim/0 37.48,64.23 -to- Stormheim/0 41.30,80.10 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(38624)} "..
			"{title:Talk to Vethir and tell him\n\"Take me to the top of Thorim's Peak.\"}",

	--## HORDE ##--

		-- Crumbled Palace - Azsuna, Broken Isles -to- Orgrimmar - Durotar, Kalimdor --
		"Azsuna/0 46.66,41.30 -to- Stormwind City/0 46.35,90.23 {fac:A} {mode:PORTAL} {title:Click the Portal to Orgrimmar}",

		-- Dalaran, Broken Isles -to- Orgrimmar - Durotar, Kalimdor --
		"Dalaran L/10 55.25,23.93 -to- Orgrimmar/1 57.10,89.81 {fac:H} {mode:PORTAL} {title:Click the Portal to Orgrimmar inside Windrunner's Sanctuary} "..
			"{cond:ZGV.IsLegionOn()}",

		-- Vethir - Stormheim, Broken Isles -to- Top of Galebroken Path - Stormheim, Broken Isles --
		"Stormheim/0 44.66,59.51 -to- Stormheim/0 44.83,77.39 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(38624)} "..
			"{title:Talk to Vethir and tell him\n\"Take me to the top of the Galebroken Path.\"}",

		-- Vethir - Stormheim, Broken Isles -to- Thorim's Peak Outside the Thorignir Refuge - Stormheim, Broken Isles --
		"Stormheim/0 44.66,59.51 -to- Stormheim/0 42.79,82.67 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(38624)} "..
			"{title:Talk to Vethir and tell him\n\"Take me to Thorim's Peak outside the Thorignir Refuge.\"}",

		-- Vethir - Stormheim, Broken Isles -to- Top of Thorim's Peak - Stormheim, Broken Isles --
		"Stormheim/0 44.66,59.51 -to- Stormheim/0 41.30,80.10 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(38624)} "..
			"{title:Talk to Vethir and tell him\n\"Take me to the top of Thorim's Peak.\"}",

	--## NEUTRAL ##--

		-- Chamber of the Guardian Entrance - Dalaran, Broken Isles -to- Chamber of the Guardian Interior - Dalaran, Broken Isles --
		"Dalaran L/10 49.26,47.62 -to- Dalaran L/12 63.38,23.87 {mode:PORTAL} {title:Step on the glowing pad inside the building} {cond:ZGV.IsLegionOn()}",

		-- Chamber of the Guardian Interior - Dalaran, Broken Isles -to- Chamber of the Guardian Entrance - Dalaran, Broken Isles --
		"Dalaran L/12 64.88,21.12 -to- Dalaran L/10 49.04,48.04 {mode:PORTAL} {title:Step on the glowing pad inside the building} {cond:ZGV.IsLegionOn()}",

		-- Krokuun - Argus, Broken Isles -to- Arcatraz Scenario - Netherstorm, Outland --
		"Krokuun/1 43.42,23.19 -to- Arcatraz L/1 41.20,74.29 {mode:PORTAL} {cond:PlayerIsOnQuest(47134)} "..
			"{title:Talk to |cffaaffaaGrand Artificer Romuul|r\n\nTell him |cfff0e081\"I am ready to go\nto the Arcatraz.\"|r}",

			-- Arcatraz Scenario - Netherstorm, Outland -to- Krokuun - Argus, Broken Isles --
			"Arcatraz L/2 22.13,75.91 -to- Krokuun/1 45.36,24.20 {mode:PORTAL} {title:Click the portal} {cond:PlayerIsOnQuest(47134)}",

		-- Margoss's Retreat - Dalran, Broken Isles -to- Dalaran, Broken Isles --
		"Dalaran L/10 23.10,-11.40 <region:dalaran_margosss_retreat> -to- Dalaran L/10 60.92,44.72 {mode:PORTAL} {cond:ZGV.IsLegionOn()} "..
			"{title:Talk to |cffaaffaaConjurer Margoss|r\n\nTell him |cfff0e081\"Please teleport me back to Dalaran.\"|r}",

		-- Suramar, Broken Isles -x- Shal'Aran Cave - Suramar, Broken Isles --
		"Suramar/0 34.93,47.82 -x- Suramar/0 36.19,47.09 <region:suramar_shalaran> {template:atob} {title_atob:Follow the corridor into the cave} {title_btoa:Follow the corridor out of the cave}",

		-- Shal'Aran - Suramar, Broken Isles -to- Felsoul Hold - Suramar, Broken Isles --
		"Suramar/0 36.10,45.75 <region:suramar_shalaran> -to- Suramar/23 52.35,36.75 {mode:PORTAL} {cond:PlayerCompletedQuest(41575)} {cost:13} "..
			"{title:Click the Portal to Felsoul Hold\ninside the Shal'Aran Cave}",

			-- Felsoul Hold - Suramar, Broken Isles -to- Shal'Aran - Suramar, Broken Isles --
			"Suramar/23 53.60,36.80 -to- Suramar/0 36.40,45.09 <region:suramar_shalaran> {mode:PORTAL} {cond:PlayerCompletedQuest(41575)} {cost:13} "..
				"{title:Click the Portal to Shal'Aran}",

		-- Shal'Aran - Suramar, Broken Isles -to- Falanaar - Suramar, Broken Isles --
		"Suramar/0 35.89,45.56 <region:suramar_shalaran> -to- Suramar/32 41.38,15.05 {mode:PORTAL} {cond:PlayerCompletedQuest(42230)} {cost:5} "..
			"{title:Click the Portal to Falanaar\ninside the Shal'Aran Cave}",

			-- Falanaar - Suramar, Broken Isles -to- Shal'Aran - Suramar, Broken Isles --
			"Suramar/32 40.91,13.70 -to- Suramar/0 36.40,45.09 <region:suramar_shalaran> {mode:PORTAL} {cond:PlayerCompletedQuest(42230)} {cost:5} "..
				"{title:Click the Portal to Shal'Aran}",

		-- Shal'Aran - Suramar, Broken Isles -to- Moon Guard Stronghold - Suramar, Broken Isles --
		"Suramar/0 36.01,45.25 <region:suramar_shalaran> -to- Suramar/0 30.79,10.87 {mode:PORTAL} {cond:PlayerCompletedQuest(43808)} "..
			"{title:Click the Portal to Moon Guard Stronghold\ninside the Shal'Aran Cave}",

			-- Moon Guard Stronghold -to- Shal'Aran - Suramar, Broken Isles --
			"Suramar/0 30.83,11.02 -to- Suramar/0 36.40,45.09 <region:suramar_shalaran> {mode:PORTAL} {cond:PlayerCompletedQuest(43808)} "..
				"{title:Click the Portal to Shal'Aran}",

		-- Shal'Aran - Suramar, Broken Isles -to- Lunastre Estate - Suramar, Broken Isles --
		"Suramar/0 36.17,45.02 <region:suramar_shalaran> -to- Suramar/0 43.61,79.10 {mode:PORTAL} {cond:PlayerCompletedQuest(43811)} "..
			"{title:Click the Portal to Lunastre Estate\ninside the Shal'Aran Cave}",

			-- Lunastre Estate -to- Shal'Aran - Suramar, Broken Isles --
			"Suramar/0 43.68,79.25 -to- Suramar/0 36.40,45.09 <region:suramar_shalaran> {mode:PORTAL} {cond:PlayerCompletedQuest(43811)} "..
				"{title:Click the Portal to Shal'Aran}",

		-- Shal'Aran - Suramar, Broken Isles -to- Ruins of Elune'eth - Suramar, Broken Isles --
		"Suramar/0 36.34,44.91 <region:suramar_shalaran> -to- Suramar/0 36.31,46.89 <region:suramar_eluneeth> {mode:PORTAL} {cond:PlayerCompletedQuest(40956)} "..
			"{title:Click the Portal to Ruins of Elune'eth\ninside the Shal'Aran Cave} {cost:2}",

			-- Ruins of Elune'eth - Suramar, Broken Isles -to- Shal'Aran - Suramar, Broken Isles --
			"Suramar/0 36.10,47.23 <region:suramar_eluneeth> -to- Suramar/0 36.40,45.09 <region:suramar_shalaran> {mode:PORTAL} {cond:PlayerCompletedQuest(40956)} "..
				"{title:Click the Portal to Shal'Aran} {cost:2}",

			-- Ruins of Elune'eth - Suramar, Broken Isles -x- Road Connection #1
			"Suramar/0 37.35,46.38 -x- Suramar/0 38.19,47.63 <region:suramar_eluneeth> {title:Follow the road}",

			-- Ruins of Elune'eth - Suramar, Broken Isles -x- Road Connection #2
			"Suramar/0 35.86,44.39 -x- Suramar/0 36.51,45.27 <region:suramar_eluneeth> {title:Follow the road}",

			-- Ruins of Elune'eth - Suramar, Broken Isles -x- Road Connection #3
			"Suramar/0 37.04,45.27 <region:suramar_eluneeth> -x- Suramar/0 37.69,45.22 {template:atob} {title_atob:Follow the path up} {title_btoa:Follow the path down}",

		-- Shal'Aran - Suramar, Broken Isles -to- Sanctum of Order - Suramar, Broken Isles --
		"Suramar/0 36.70,44.64 <region:suramar_shalaran> -to- Suramar/0 43.40,60.72 <region:suramar_sanctum_of_order> {mode:PORTAL} "..
			"{title:Click the Portal to Sanctum of Order\ninside the Shal'Aran Cave} {cond:PlayerCompletedQuest(43813)}",

			-- Sanctum of Order - Suramar, Broken Isles -to- Shal'Aran - Suramar, Broken Isles --
			"Suramar/0 43.41,60.56 <region:suramar_sanctum_of_order> -to- Suramar/0 36.40,45.09 <region:suramar_shalaran> {mode:PORTAL} "..
				"{title:Click the Portal to Shal'Aran\nDownstairs in the Sanctum of Order} {cond:PlayerCompletedQuest(43813)}",

		-- Shal'Aran - Suramar, Broken Isles -to- Tel'anor - Suramar, Broken Isles --
		"Suramar/0 36.92,44.66 <region:suramar_shalaran> -to- Suramar/0 42.17,35.38 {mode:PORTAL} {cond:PlayerCompletedQuest(43809)} "..
			"{title:Click the Portal to Tel'anor\ninside the Shal'Aran Cave}",

			-- Tel'anor - Suramar, Broken Isles -to- Shal'Aran - Suramar, Broken Isles --
			"Suramar/0 42.03,35.24 -to- Suramar/0 36.40,45.09 <region:suramar_shalaran> {mode:PORTAL} {cond:PlayerCompletedQuest(43809)} "..
				"{title:Click the Portal to Shal'Aran}",

		-- Shal'Aran - Suramar, Broken Isles -to- Twilight Vineyards - Suramar, Broken Isles --
		"Suramar/0 36.95,45.00 <region:suramar_shalaran> -to- Suramar/0 64.09,60.80 {mode:PORTAL} {cond:PlayerCompletedQuest(44084)} "..
			"{title:Click the Portal to Twilight Vineyards\ninside the Shal'Aran Cave}",

			-- Twilight Vineyards - Suramar, Broken Isles -to- Shal'Aran - Suramar, Broken Isles --
			"Suramar/0 64.00,60.43 -to- Suramar/0 36.40,45.09 <region:suramar_shalaran> {mode:PORTAL} {cond:PlayerCompletedQuest(44084)} "..
				"{title:Click the Portal to Shal'Aran}",

		-- Shal'Aran - Suramar, Broken Isles -to- The Waning Crescent - Suramar, Broken Isles --
		"Suramar/0 36.48,44.75 <region:suramar_shalaran> -to- Suramar/0 47.45,81.97 {mode:PORTAL} "..
			"{title:Click the Portal to The Waning Crescent\ninside the Shal'Aran Cave} {cond:PlayerCompletedQuest(42487) and not PlayerCompletedQuest(38649)}",

			-- The Waning Crescent - Suramar, Broken Isles -to- Shal'Aran - Suramar, Broken Isles --
			"Suramar/0 47.73,81.38 -to- Suramar/0 36.40,45.09 <region:suramar_shalaran> {mode:PORTAL} "..
				"{title:Click the Portal to Shal'Aran} {cond:PlayerCompletedQuest(42487) and not PlayerCompletedQuest(38649)}",

		-- Shal'Aran - Suramar, Broken Isles -to- Evermoon Terrace - Suramar, Broken Isles --
		"Suramar/0 36.49,44.75 <region:suramar_shalaran> -to- Suramar/0 52.04,78.87 {mode:PORTAL} "..
			"{title:Click the Portal to Evermoon Terrace\ninside the Shal'Aran Cave} {cond:PlayerCompletedQuest(42889)}",

			-- Evermoon Terrace - Suramar, Broken Isles -to- Shal'Aran - Suramar, Broken Isles --
			"Suramar/0 51.98,78.75 -to- Suramar/0 36.40,45.09 <region:suramar_shalaran> {mode:PORTAL} "..
				"{title:Click the Portal to Shal'Aran\nat the Top of the Tower} {cond:PlayerCompletedQuest(42889)}",

		-- Shal'Aran - Suramar, Broken Isles -x- Astravar Harbor - Suramar, Broken Isles --
		"Suramar/0 36.77,45.04 <region:suramar_shalaran> -x- Suramar/0 54.41,69.53 {mode:PORTAL} {cond:PlayerCompletedQuest(44740)} "..
			"{title_atob:Click the Portal to Astravar Harbor\ninside the Shal'Aran Cave} "..
			"{title_btoa:Click the Portal to Shal'Aran\nupstairs outside the building}",

		-- Evermoon Terrace - Suramar, Broken Isles -to- Shal'Aran - Suramar, Broken Isles --
		"Suramar/0 54.48,69.43 -to- Suramar/0 36.40,45.09 <region:suramar_shalaran> {mode:PORTAL}"..
			"{title:Click the Portal to Shal'Aran\nupstairs inside the building} {cond:PlayerCompletedQuest(45317)}",

		-- Sanctum of Order - Suramar, Broken Isles (Region) -x- Sactum Depths - Suramar, Broken Isles (Region)
		"Suramar/0 42.06,60.85 <region:suramar_sanctum_depths> -x- Suramar/0 42.72,61.13 <region:suramar_sanctum_of_order> {title:Follow the path}",

		-- The Vindicaar - Krokuun, Argus -to- Dalaran, Broken Isles --
		"Krokuun/2 43.32,25.27 -to- Dalaran L/10 60.92,44.72 {mode:PORTAL} {title_atob:Click the Portal to Dalaran.} {cond:LibRover:IsVindicaarIn('Krokuun')}",

			-- Dalaran, Broken Isles -to- The Vindicaar - Krokuun, Argus --
			"Dalaran L/10 74.22,49.26 -to- Krokuun/1 61.15,81.36 {mode:PORTAL} {title_atob:Click the Lightforged Beacon.}",

		-- The Vindicaar - Mac'Aree, Argus -to- Dalaran, Broken Isles --
		"Mac'Aree/4 49.33,25.38 -to- Dalaran L/10 60.92,44.72 {mode:PORTAL} {title_atob:Click the Portal to Dalaran.} {cond:LibRover:IsVindicaarIn('Mac\\'Aree')}",

		-- The Vindicaar - Antoran Wastes, Argus -to- Dalaran, Broken Isles --
		"Antoran Wastes/6 33.83,55.94 -to- Dalaran L/10 60.92,44.72 {mode:PORTAL} {title_atob:Click the Portal to Dalaran.} "..
			"{cond:LibRover:IsVindicaarIn('Antoran Wastes')}",

	-----------------
	-- ORDER HALLS --
	-----------------

	--## ALLIANCE ##--

		-- (PALADIN) Dalaran, Broken Isles -to- Sanctum of Light - Eastern Plaguelands, Eastern Kingdoms --
		"Dalaran L/10 32.59,69.96 -to- Eastern Plaguelands/20 39.42,61.46 {fac:A} {mode:PORTAL} {title:Click the Portal to Sanctum of Light inside Greyfang Enclave} "..
			"{cond:PlayerCompletedQuest(38566)}",

		-- (PALADIN) Sanctum of Light - Eastern Plaguelands, Eastern Kingdoms -to- Dalaran, Broken Isles --
		"Eastern Plaguelands/20 37.57,64.10 -to- Dalaran L/10 33.69,68.01 {fac:A} {mode:PORTAL} {title:Click the Portal to Dalaran} {cond:PlayerCompletedQuest(38566)}",

		-- (PRIEST) Dalaran, Broken Isles -to- Netherlight Temple, Twisting Nether --
		"Dalaran L/10 39.61,57.24 -to- Netherlight Temple/1 49.64,75.50 {fac:A} {mode:PORTAL} {title:Click the Portal to Netherlight Temple upstairs inside Greyfang Enclave} "..
			"{cond:PlayerCompletedQuest(40938)}",

		-- (PRIEST) Netherlight Temple, Twisting Nether -to- Dalaran, Broken Isles --
		"Netherlight Temple/1 49.75,80.72 -to- Dalaran L/10 38.73,57.39 {fac:A} {mode:PORTAL} {title:Click the Portal to Dalaran} {cond:PlayerCompletedQuest(40938)}",

	--## HORDE ##--

		-- (PALADIN) Dalaran, Broken Isles -to- Sanctum of Light - Eastern Plaguelands, Eastern Kingdoms --
		"Dalaran L/10 61.92,13.49 -to- Eastern Plaguelands/20 39.42,61.46 {fac:H} {mode:PORTAL} {title:Click the Portal to Sanctum of Light inside Windrunner's Sanctuary} "..
			"{cond:PlayerCompletedQuest(38566)}",

		-- (PALADIN) Sanctum of Light - Eastern Plaguelands, Eastern Kingdoms -to- Dalaran, Broken Isles --
		"Eastern Plaguelands/20 37.57,64.10 -to- Dalaran L/10 61.27,14.82 {fac:H} {mode:PORTAL} {title:Click the Portal to Dalaran} {cond:PlayerCompletedQuest(38566)}",

		-- (PRIEST) Dalaran, Broken Isles -to- Netherlight Temple, Twisting Nether --
		"Dalaran L/10 63.00,17.70 -to- Netherlight Temple/1 49.64,75.50 {fac:H} {mode:PORTAL} {title:Click the Portal to Netherlight Temple inside Windrunner's Sanctuary} "..
			"{cond:PlayerCompletedQuest(40938)}",

		-- (PRIEST) Netherlight Temple (Horde), Twisting Nether -to- Dalaran, Broken Isles --
		"Netherlight Temple/1 49.75,80.72 -to- Dalaran L/10 61.65,17.39 {fac:H} {mode:PORTAL} {title:Click the Portal to Dalaran} {cond:PlayerCompletedQuest(40938)}",

	--## NEUTRAL ##--

		-- (DEATH KNIGHT) Acherus: The Ebon Hold, Broken Isles -to- Dalaran, Broken Isles --
		"Broken Shore/2 24.78,33.70 -to- Dalaran L/10 60.92,44.72 {mode:PORTAL} {title:Click the Portal to Dalaran} {cond:PlayerCompletedQuest(39757)}",

		-- (DEMON HUNTER) Dalaran, Broken Isles -to- Fel Hammer - Mardum, Twisting Nether --
		"Dalaran L/10 98.02,69.27 -to- Mardum, the Shattered Abyss/2 59.18,85.75 {mode:PORTAL} {title:Glide to the Floating Island and Click the Illidari Gateway} "..
			"{cond:PlayerCompletedQuest(42872)}",

		-- (DEMON HUNTER) Fel Hammer - Mardum, Twisting Nether -to- Dalaran, Broken Isles --
		"Mardum, the Shattered Abyss/2 59.23,91.93 -to- Dalaran L/10 77.11,49.61 {mode:PORTAL} {title:Click the Illidari Gateway} {cond:PlayerCompletedQuest(42872)}",

		-- (DRUID) The Dreamgrove - Val'sharah, Broken Isles -to- Dalran, Broken Isles --
		"The Dreamgrove/0 56.51,43.10 -to- Dalaran L/10 67.52,46.47 {mode:PORTAL} {title:Click the Portal to Dalaran} {cond:PlayerCompletedQuest(40645)}",

		-- (DRUID) The Dreamgrove - Val'sharah, Broken Isles -to- Emerald Dreamway, Emerald Dream --
		"The Dreamgrove/0 55.66,22.09 -to- Emerald Dreamway/0 45.10,26.49 {mode:PORTAL} {title:Walk into the Swirling Portal to the Emerald Dreamway} {cond:PlayerCompletedQuest(40645)}",

		-- (DRUID) Duskwood, Eastern Kingdoms -to- Emerald Dreamway, Emerald Dream --
		"Duskwood/0 46.57,35.64 -to- Emerald Dreamway/0 38.85,65.99 {mode:PORTAL} {title:Walk into the Swirling Portal to the Emerald Dreamway} {cond:PlayerCompletedQuest(40645)}",

		-- (DRUID) Emerald Dreamway, Emerald Dream -to- The Dreamgrove - Val'sharah, Broken Isles --
		"Emerald Dreamway/0 45.68,23.52 -to- The Dreamgrove/0 54.30,24.97 {mode:PORTAL} {title:Walk into the Swirling Portal to The Dreamgrove} {cond:PlayerCompletedQuest(40645)}",

		-- (DRUID) Emerald Dreamway, Emerald Dream -to- Mount Hyjal, Kalimdor --
		"Emerald Dreamway/0 53.87,53.17 -to- Mount Hyjal/0 59.29,25.83 {mode:PORTAL} {title:Walk into the Swirling Portal to Mount Hyjal} {cond:PlayerCompletedQuest(40645)}",

		-- (DRUID) Emerald Dreamway, Emerald Dream -to- The Hinterlands, Eastern Kingdoms --
		"Emerald Dreamway/0 50.91,66.51 -to- The Hinterlands/0 62.49,23.50 {mode:PORTAL} {title:Walk into the Swirling Portal to the Hinterlands} {cond:PlayerCompletedQuest(40645)}",

		-- (DRUID) Emerald Dreamway, Emerald Dream -to- Duskwood, Eastern Kingdoms --
		"Emerald Dreamway/0 40.02,70.02 -to- Duskwood/0 46.59,37.06 {mode:PORTAL} {title:Walk into the Swirling Portal to Duskwood} {cond:PlayerCompletedQuest(40645)}",

		-- (DRUID) Emerald Dreamway, Emerald Dream -to- Moonglade, Kalimdor --
		"Emerald Dreamway/0 25.71,80.55 -to- Moonglade/0 67.59,60.19 {mode:PORTAL} {title:Walk into the Swirling Portal to Moonglade} {cond:PlayerCompletedQuest(40645)}",

		-- (DRUID) Emerald Dreamway, Emerald Dream -to- Feralas, Kalimdor --
		"Emerald Dreamway/0 22.73,38.50 -to- Feralas/0 51.20,11.03 {mode:PORTAL} {title:Walk into the Swirling Portal to Feralas} {cond:PlayerCompletedQuest(40645)}",

		-- (DRUID) Emerald Dreamway, Emerald Dream -to- Grizzly Hills, Northrend --
		"Emerald Dreamway/0 31.60,25.91 -to- Grizzly Hills/0 50.43,29.75 {mode:PORTAL} {title:Walk into the Swirling Portal to Grizzly Hills} {cond:PlayerCompletedQuest(40645)}",

		-- (DRUID) Feralas, Kalimdor -to- Emerald Dreamway, Emerald Dream --
		"Feralas/0 51.34,10.59 -to- Emerald Dreamway/0 27.64,40.69 {mode:PORTAL} {title:Walk into the Swirling Portal to the Emerald Dreamway} {cond:PlayerCompletedQuest(40645)}",

		-- (DRUID) Grizzly Hills, Northrend -to- Emerald Dreamway, Emerald Dream --
		"Grizzly Hills/0 50.32,29.18 -to- Emerald Dreamway/0 32.40,29.53 {mode:PORTAL} {title:Walk into the Swirling Portal to the Emerald Dreamway} {cond:PlayerCompletedQuest(40645)}",

		-- (DRUID) The Hinterlands, Eastern Kingdoms -to- Emerald Dreamway, Emerald Dream --
		"The Hinterlands/0 62.30,22.62 -to- Emerald Dreamway/0 49.42,62.50 {mode:PORTAL} {title:Walk into the Swirling Portal to the Emerald Dreamway} {cond:PlayerCompletedQuest(40645)}",

		-- (DRUID) Moonglade, Kalimdor -to- Emerald Dreamway, Emerald Dream --
		"Moonglade/0 68.14,60.28 -to- Emerald Dreamway/0 26.31,77.76 {mode:PORTAL} {title:Walk into the Swirling Portal to the Emerald Dreamway} {cond:PlayerCompletedQuest(40645)}",

		-- (DRUID) Mount Hyjal, Kalimdor -to- Emerald Dreamway, Emerald Dream --
		"Mount Hyjal/0 59.09,26.09 -to- Emerald Dreamway/0 51.59,51.89 {mode:PORTAL} {title:Walk into the Swirling Portal to the Emerald Dreamway} {cond:PlayerCompletedQuest(40645)}",

		-- (HUNTER) Dalaran, Broken Isles -to- Trueshot Lodge - Highmountain, Broken Isles --
		"Dalaran L/10 72.85,41.21 -to- Trueshot Lodge/0 33.25,49.43 {mode:PORTAL} {title:Talk to Talua and Fly to Trueshot Lodge} {cond:PlayerCompletedQuest(40953)}",

		-- (HUNTER) Trueshot Lodge - Highmountain, Broken Isles -to- Dalaran, Broken Isles --
		"Trueshot Lodge/0 48.63,43.50 -to- Dalaran L/10 67.52,46.47 {mode:PORTAL} {title:Click the Portal to Dalaran Upstairs Inside the Building} {cond:PlayerCompletedQuest(40953)}",

		-- (MAGE) Hall of the Guardian - Dalaran, Broken Isles -to- Dalaran, Broken Isles --
		"Hall of the Guardian/1 57.32,90.51 -to- Dalaran L/10 67.52,46.47 {mode:PORTAL} {title:Click the Portal to Dalaran} {cond:PlayerCompletedQuest(41036)}",

		-- (MAGE) Hall of the Guardian - Dalaran, Broken Isles -to- Val'sharah, Broken Isles --
		"Hall of the Guardian/1 66.78,46.52 -x- Val'sharah/0 51.24,56.09 {mode:PORTAL} {title:Click the Portal to Val'sharah} {cond:IsSpellKnown(223413)}",

		-- (MAGE) Hall of the Guardian - Dalaran, Broken Isles -to- Stormheim, Broken Isles --
		"Hall of the Guardian/1 67.12,41.71 -x- Stormheim/0 31.34,60.51 {mode:PORTAL} {title:Click the Portal to Stormheim} {cond:IsSpellKnown(223413)}",

		-- (MAGE) Hall of the Guardian - Dalaran, Broken Isles -to- Suramar, Broken Isles --
		"Hall of the Guardian/1 60.26,51.78 -x- Suramar/0 33.43,50.44 {mode:PORTAL} {title:Click the Portal to Suramar} {cond:IsSpellKnown(223413)}",

		-- (MAGE) Hall of the Guardian - Dalaran, Broken Isles -to- Azsuna, Broken Isles --
		"Hall of the Guardian/1 55.06,39.65 -x- Azsuna/0 57.95,15.15 {mode:PORTAL} {title:Click the Portal to Azsuna} {cond:IsSpellKnown(223413)}",

		-- (MAGE) Hall of the Guardian - Dalaran, Broken Isles -to- Highmountain, Broken Isles --
		"Hall of the Guardian/1 54.75,44.45 -x- Highmountain/0 31.41,63.82 {mode:PORTAL} {title:Click the Portal to Highmountain} {cond:IsSpellKnown(223413)}",

		-- (MONK) Wandering Isle, The Great Sea -to- Peak of Serenity - Kun-Lai Summit, Pandaria --
		"The Wandering Isle L/0 50.05,54.41 -to- Kun-Lai Summit/0 48.69,43.12 {mode:PORTAL} {title:Click the Portal to Peak of Serenity} {cond:PlayerCompletedQuest(40236)}",

		-- (MONK) Wandering Isle, The Great Sea -to- Dalaran, Broken Isles --
		"The Wandering Isle L/0 52.39,57.15 -to- Dalaran L/10 67.52,46.47 {mode:PORTAL} {title:Click the Portal to Dalaran} {cond:PlayerCompletedQuest(40236)}",

		-- (ROGUE) Hall of Shadows - The Underbelly, Dalaran -to- Dalaran, Broken Isles --
		"Dalaran L/4 39.67,21.52 -to- Dalaran L/10 54.20,32.68 {mode:PORTAL} {title:Click the Knocker} {cond:PlayerIsOnQuest(40832) or PlayerCompletedQuest(40832)}",

		-- (ROGUE) Hall of Shadows - The Underbelly, Dalaran -to- Dalaran, Broken Isles --
		"Dalaran L/4 29.48,22.02 -to- Dalaran L/10 46.44,26.01 {mode:PORTAL} {title:Click the Knocker} {cond:PlayerIsOnQuest(40832) or PlayerCompletedQuest(40832)}",

		-- (SHAMAN) Dalaran, Broken Isles -to- The Heart of Azeroth, The Maelstrom --
		"Dalaran L/10 67.03,48.18 -to- The Maelstrom L/0 30.75,53.07 {mode:PORTAL} {title:Click the Portal to the Maelstrom} {cond:PlayerCompletedQuest(39746)}",

		-- (SHAMAN) The Heart of Azeroth, The Maelstrom -to- Dalaran, Broken Isles --
		"The Maelstrom L/0 29.78,51.98 -to- Dalaran L/10 67.52,46.47 {mode:PORTAL} {title:Click the Portal to Dalaran} {cond:PlayerCompletedQuest(39746)}",

		-- (SHAMAN) The Heart of Azeroth, The Maelstrom -to- Vortex Pinnacle - Uldum, Kalimdor --
		"The Maelstrom L/0 26.71,41.32 -to- The Vortex Pinnacle L/1 54.14,16.85 {mode:PORTAL} {title:Click the Vortex Pinnacle Portal} {cond:PlayerCompletedQuest(43002)}",

		-- (SHAMAN) Vortex Pinnacle - Uldum, Kalimdor -to- The Heart of Azeroth, The Maelstrom --
		"The Vortex Pinnacle L/1 53.59,16.00 -to- The Maelstrom L/0 26.79,41.48 {mode:PORTAL} {title:Walk into the Swirling Portal to the Maelstrom} {cond:PlayerCompletedQuest(43002)}",

		-- (SHAMAN) The Heart of Azeroth, The Maelstrom -to- Firelands - Mount Hyjal, Kalimdor --
		"The Maelstrom L/0 31.08,61.02 -to- Firelands L/0 25.79,89.25 {mode:PORTAL} {title:Click the Firelands Portal} {cond:PlayerCompletedQuest(42208)}",

		-- (SHAMAN) Firelands - Mount Hyjal, Kalimdor -to- The Heart of Azeroth, The Maelstrom --
		"Firelands L/0 25.02,92.64 -to- The Maelstrom L/0 30.54,59.78 {mode:PORTAL} {title:Walk into the Swirling Portal to the Maelstrom} {cond:PlayerCompletedQuest(42208)}",

		-- (WARLOCK) Dalaran, Broken Isles -to- Dreadscar Rift, Twisting Nether --
		"Dalaran L/11 27.85,44.50 -to- Dreadscar Rift/0 72.52,37.47 {mode:PORTAL} {title:Click the Portal to Dreadscar Rift} {cond:PlayerCompletedQuest(40729)}",

		-- (WARLOCK) Dreadscar Rift, Twisting Nether -to- Dalaran, Broken Isles --
		"Dreadscar Rift/0 74.16,38.35 -to- Dalaran L/11 29.20,43.97 {mode:PORTAL} {title:Walk into the Portal to Dalaran} {cond:PlayerCompletedQuest(40729)}",

		-- (WARRIOR) Dalaran, Broken Isles -to- Skyhold - Stormheim, Broken Isles --
		"Dalaran L/10 75.23,47.22 -to- Skyhold/1 58.92,36.29 {mode:PORTAL} {title:Use the Jump to Skyhold ability} "..
			"{cond:PlayerCompletedQuest(42815) and select(2,UnitClass('player'))=='WARRIOR'}",

		-- (WARRIOR) Stormheim, Broken Isles -to- Skyhold - Stormheim, Broken Isles --
		"Stormheim/0 60.18,52.23 -to- Skyhold/1 58.92,36.29 {mode:PORTAL} {title:Use the Jump to Skyhold ability} "..
			"{cond:PlayerCompletedQuest(39803) and select(2,UnitClass('player'))=='WARRIOR'}",

		-- (WARRIOR) Azsuna, Broken Isles -to- Skyhold - Stormheim, Broken Isles --
		"Azsuna/0 47.58,28.08 -to- Skyhold/1 58.92,36.29 {mode:PORTAL} {title:Use the Jump to Skyhold ability} "..
			"{cond:PlayerCompletedQuest(38443) and select(2,UnitClass('player'))=='WARRIOR'}",

		-- (WARRIOR) Val'sharah, Broken Isles -to- Skyhold - Stormheim, Broken Isles --
		"Val'sharah/0 54.71,74.89 -to- Skyhold/1 58.92,36.29 {mode:PORTAL} {title:Use the Jump to Skyhold ability} "..
			"{cond:PlayerCompletedQuest(38384) and select(2,UnitClass('player'))=='WARRIOR'}",

		-- (WARRIOR) Highmountain, Broken Isles -to- Skyhold - Stormheim, Broken Isles --
		"Thunder Totem/0 39.73,42.11 -to- Skyhold/1 58.92,36.29 {mode:PORTAL} {title:Use the Jump to Skyhold ability} "..
			"{cond:PlayerCompletedQuest(38907) and select(2,UnitClass('player'))=='WARRIOR'}",

		-- (WARRIOR) Suramar, Broken Isles -to- Skyhold - Stormheim, Broken Isles --
		"Suramar/0 33.08,48.20 -to- Skyhold/1 58.92,36.29 {mode:PORTAL} {title:Use the Jump to Skyhold ability} "..
			"{cond:PlayerCompletedQuest(42229) and select(2,UnitClass('player'))=='WARRIOR'}",

		-- (WARRIOR) Skyhold - Stormheim, Broken Isles -to- Dalaran, Broken Isles --
		"Skyhold/1 58.34,24.98 -to- Dalaran L/10 72.42,46.00 {mode:PORTAL} {title:Talk to Aerylia and Choose Dalaran} "..
			"{cond:PlayerCompletedQuest(42815) and select(2,UnitClass('player'))=='WARRIOR'}",

		-- (WARRIOR) Skyhold - Stormheim, Broken Isles -to- Stormheim, Broken Isles --
		"Skyhold/1 58.34,24.98 -to- Stormheim/0 60.42,51.05 {mode:PORTAL} {title:Talk to Aerylia and Choose Stormheim} "..
			"{cond:PlayerCompletedQuest(39803) and select(2,UnitClass('player'))=='WARRIOR'}",

		-- (WARRIOR) Skyhold - Stormheim, Broken Isles -to- Azsuna, Broken Isles --
		"Skyhold/1 58.34,24.98 -to- Azsuna/0 47.55,27.87 {mode:PORTAL} {title:Talk to Aerylia and Choose Azsuna} "..
			"{cond:PlayerCompletedQuest(38443) and select(2,UnitClass('player'))=='WARRIOR'}",

		-- (WARRIOR) Skyhold - Stormheim, Broken Isles -to- Val'sharah, Broken Isles --
		"Skyhold/1 58.34,24.98 -to- Val'sharah/0 55.01,72.49 {mode:PORTAL} {title:Talk to Aerylia and Choose Val'sharah} "..
			"{cond:PlayerCompletedQuest(38384) and select(2,UnitClass('player'))=='WARRIOR'}",

		-- (WARRIOR) Skyhold - Stormheim, Broken Isles -to- Highmountain, Broken Isles --
		"Skyhold/1 58.34,24.98 -to- Thunder Totem/0 41.57,44.02 {mode:PORTAL} {title:Talk to Aerylia and Choose Highmountain} "..
			"{cond:PlayerCompletedQuest(38907) and select(2,UnitClass('player'))=='WARRIOR'}",

		-- (WARRIOR) Skyhold - Stormheim, Broken Isles -to- Suramar, Broken Isles --
		"Skyhold/1 58.34,24.98 -to- Suramar/0 33.82,49.38 {mode:PORTAL} {title:Talk to Aerylia and Choose Suramar} "..
			"{cond:PlayerCompletedQuest(42229) and select(2,UnitClass('player'))=='WARRIOR'}",

	---------------
	-- KUL TIRAS --
	---------------

	--## ALLIANCE ##--

		-- Boralus - Tiragarde Sound, Kul Tiras -to- Dun Morogh, Eastern Kingdoms (Gnomeregan Pet Battle Dungeon Reward) --
		"Boralus/0 50.04,46.72 -to- Dun Morogh/10 31.94,71.70 {fac:A} {mode:PORTAL} {title:Talk to Manaproof,|nAsk it \"Would you please send me to Gnomeregan?\"} "..
			"{cond:PlayerCompletedQuest(54185)}",

		-- Sanctum of the Sages - Boralus Harbor, Tiragarde Sound -to- The Exodar - Azuremyst Isle, Kalimdor --
		"Tiragarde Sound/0 74.38,23.41 -to- The Exodar/0 47.62,59.82 {fac:A} {mode:PORTAL} {title:Click the Portal to Exodar Inside the Building} {cond:ZGV.InPhase('BFA')}",

		-- Sanctum of the Sages - Boralus Harbor, Tiragarde Sound -to- Ironforge - Dun Morogh, Eastern Kingdoms --
		"Tiragarde Sound/0 74.49,23.50 -to- Ironforge/0 25.51,8.43 {fac:A} {mode:PORTAL} {title:Click the Portal to Ironforge Inside the Building} {cond:ZGV.InPhase('BFA')}",

		-- Sanctum of the Sages - Boralus Harbor, Tiragarde Sound -to- Magni's Encampment - Silithus, Kalimdor --
		"Boralus/0 69.76,15.64 -to- Silithus/0 41.41,45.19 {fac:A} {mode:PORTAL} {title:Click the Portal to Silithus Inside the Building} "..
			"{cond:ZGV.InPhase('BFA') and UnitLevel('player')>=120}",

		-- Sanctum of the Sages - Boralus Harbor, Tiragarde Sound -to- Stormwind City - Elwynn Forest, Eastern Kingdoms --
		"Boralus/0 70.13,16.79 -to- Stormwind City/0 46.35,90.23 {fac:A} {mode:PORTAL} {title:Click the Portal to Stormwind Inside the Building} "..
			"{cond:ZGV.InPhase('BFA')}",

	--## HORDE ##--

	--## NEUTRAL ##--

	--------------
	-- ZANDALAR --
	--------------

	--## ALLIANCE ##--

		-- Boralus Harbor - Boralus, Kul Tiras -to- Stromgarde Keep - Arathi Highlands, Eastern Kingdom --
		"Boralus/0 66.19,24.72 -to- Arathi Highlands/0 21.58,65.14 {fac:A} {mode:PORTAL} {title:Click the Portal to Arathi Highlands} "..
			"{cond:ZGV.InPhase('Warfront Arathi Control')}",

		-- Boralus Harbor - Boralus, Kul Tiras -to- Bashal'Aran - Darkshore, Kalimdor --
		"Boralus/0 66.22,24.42 -to- Darkshore/0 46.72,34.73 {fac:A} {mode:PORTAL} {title:Click the Portal to Darkshore} "..
			"{cond:ZGV.InPhase('Warfront Darkshore Control')}",

		-- Xibala - Zandalar, Zuldazar -to- Zandalari Treasury Scenario --
		"Zuldazar/0 40.60,70.70 -to- Zandalari Treasury/0 22.41,81.16 {fac:A} {mode:PORTAL} {title:Click the Entrance Portal} {cond:PlayerIsOnQuest(54169)}",

			-- Zandalari Treasury Scenario -to- Xibala - Zandalar, Zuldazar --
			"Zandalari Treasury/0 20.72,80.94 -to- Zuldazar/0 40.60,70.76 {fac:A} {mode:PORTAL} {title:Click the Exit Portal} {cond:PlayerIsOnQuest(54169)}",

	--## HORDE ##--

		-- Dazar'alor - Zandalar, Zuldazar -to- Dun Morogh, Eastern Kingdoms (Gnomeregan Pet Battle Dungeon Reward) --
		"Dazar'alor/0 56.32,30.79 -to- Dun Morogh/10 31.94,71.70 {fac:H} {mode:PORTAL} {title:Talk to Manaproof,|nAsk it \"Would you please send me to Gnomeregan?\"} "..
			"{cond:PlayerCompletedQuest(54185)}",

		-- Hall of Ancient Paths - Zuldazar, Zandalar -to- Silvermoon City, Eversong Woods --
		"Dazar'alor/1 73.99,62.22 -to- Silvermoon City/0 58.26,19.24 {fac:H} {mode:PORTAL} {title:Click the Portal to Silvermoon City Inside the Building} {cond:ZGV.InPhase('BFA')}",

		-- Hall of Ancient Paths - Zuldazar, Zandalar -to- Orgrimmar - Durotar, Kalimdor --
		"Dazar'alor/1 74.04,69.94 -to- Orgrimmar/1 57.10,89.81 {fac:H} {mode:PORTAL} {title:Click the Portal to Orgrimmar Inside the Building} {cond:ZGV.InPhase('BFA')}",

		-- Hall of Ancient Paths - Zuldazar, Zandalar -to- Thunder Bluff - Mulgore, Kalimdor --
		"Dazar'alor/1 73.60,77.38 -to- Thunder Bluff/0 22.21,16.87 {fac:H} {mode:PORTAL} {title:Click the Portal to Thunder Bluff Inside the Building} {cond:ZGV.InPhase('BFA')}",

		-- Hall of Ancient Paths - Zuldazar, Zandalar -to- Silithus, Kalimdor --
		"Dazar'alor/1 73.81,85.40 -to- Silithus/0 41.41,45.19 {fac:H} {mode:PORTAL} {title:Click the Portal to Silithus Inside the Building} {cond:ZGV.InPhase('BFA')}",

		-- Port of Zandalar - Zuldazar, Zandalar -to- Ar'gorok - Arathi Highlands, Eastern Kingdoms --
		"Dazar'alor/0 51.92,94.59 -to- Arathi Highlands/0 27.40,29.95 {fac:H} {mode:PORTAL} {title:Click the Portal to Ar'gorok} "..
			"{cond:ZGV.InPhase('Warfront Arathi Control')}",

		-- Port of Zandalar - Zuldazar, Zandalar -to- Bashal'Aran - Darkshore, Kalimdor --
		"Dazar'alor/0 51.99,94.55 -to- Darkshore/0 46.31,35.00 {fac:H} {mode:PORTAL} {title:Click the Portal to Darkshore} "..
			"{cond:ZGV.InPhase('Warfront Darkshore Control')}",

	--## NEUTRAL ##--

	-------------------
	-- BFA WARFRONTS --
	-------------------

	--## ALLIANCE ##--

	--## HORDE ##--

		-- Darkshore Warfront Scenario - Darkshore, Kalimdor -to- Port of Zandalar - Zandalar, Zuldazar --
		"Darkshore Warfront/0 52.70,21.28 -to- Dazar'alor/0 51.66,93.82 {fac:H} {mode:PORTAL} {title:Click the Portal to Port of Zandalar} {cond:PlayerCompletedQuest(54042)}",

	--## NEUTRAL ##--

	----------------------
	---  ALLIED RACES  ---
	----------------------

	--## ALLIANCE ##--

		-- Telogrus Rift, Scenario -to- Stormwind City - Elwynn Forest, Eastern Kingdoms --
		"Telogrus Rift/0 28.00,21.49 -to- Stormwind City/0 54.00,14.75 {mode:PORTAL} {title_atob:Click the Rift to Stormwind.} {cond:ZGV:RaceClassMatch('VOIDELF')}",

			-- Stormwind City - Elwynn Forest, Eastern Kingdoms -to- Telogrus Rift, Scenario --
			"Stormwind City/0 54.50,15.37 -to- Telogrus Rift/0 28.68,23.01 {mode:PORTAL} {title_atob:Click the Rift to Telogrus.} {cond:ZGV:RaceClassMatch('VOIDELF')}",

		-- Vindicaar Scenario, Scenario -to- Stormwind City - Elwynn Forest, Eastern Kingdoms --
		"Vindicaar Scenario/1 43.22,25.02 -to- Stormwind City/0 54.00,14.75 {mode:PORTAL} {title_atob:Click the Portal to Stormwind downstairs.} {cond:ZGV:RaceClassMatch('LFDRAENEI')}",

			-- Stormwind City - Elwynn Forest, Eastern Kingdoms -to- Vindicaar Scenario, Scenario --
			"Stormwind City/0 54.44,14.44 -to- Vindicaar Scenario/1 49.97,46.22 {mode:PORTAL} {title_atob:Click the Lightforged Beacon.} {cond:ZGV:RaceClassMatch('LFDRAENEI')}",

		-- Shadowforge City - Dun Morogh, Eastern Kingdoms -to- Stormwind City - Elwynn Forest, Eastern Kingdoms --
		"Shadowforge City/0 59.30,26.38 -to- Stormwind City/0 54.49,17.25 {fac:A} {mode:PORTAL} {title:Click the Mole Machine to Stormwind City} {cond:ZGV:RaceClassMatch('DARKIRONDWARF')}",

			-- Stormwind City - Elwynn Forest, Eastern Kingdoms -to- Shadowforge City - Dun Morogh, Eastern Kingdoms --
			"Stormwind City/0 52.67,15.97 -to- Shadowforge City/0 61.44,24.35 {fac:A} {mode:PORTAL} {title:Click the Mole Machine to Shadowforge City} "..
				"{cond:ZGV:RaceClassMatch('DARKIRONDWARF')}",

	--## HORDE ##--

		-- Thunder Totem Scenario - Highmountain, Broken Isles -to- Orgrimmar - Durotar, Kalimdor --
		"Thunder Totem/6 46.02,63.74 -to- Orgrimmar/1 39.84,77.25 {mode:PORTAL} {title_atob:Click the Portal to Orgrimmar.} {cond:ZGV:RaceClassMatch('HMTAUREN')}",

			-- Orgrimmar - Durotar, Kalimdor -to- Thunder Totem Scenario - Highmountain, Broken Isles --
			"Orgrimmar/1 40.09,76.83 -to- Thunder Totem/6 44.17,64.06 {mode:PORTAL} {title_atob:Click the Portal to Thunder Totem.} {cond:ZGV:RaceClassMatch('HMTAUREN')}",


		-- Suramar Scenario - Suramar, Broken Isles -to- Orgrimmar - Durotar, Kalimdor --
		"Suramar/0 58.18,87.33 -to- Orgrimmar/1 39.84,77.25 {mode:PORTAL} {title_atob:Click the Portal to Orgrimmar.} {cond:ZGV:RaceClassMatch('NIGHTBORNE')}",

			-- Orgrimmar - Durotar, Kalimdor -to- Suramar Scenario - Suramar, Broken Isles --
			"Orgrimmar/1 40.09,76.84 -to- Suramar/0 59.55,85.29 {mode:PORTAL} {title_atob:Click the Portal to The Nighthold.} {cond:ZGV:RaceClassMatch('NIGHTBORNE')}",

		-- Suramar Scenario - Suramar, Broken Isles -to- Shal'Aran - Suramar, Broken Isles --
		"Suramar/0 57.99,86.60 -to- Suramar/0 36.79,45.21 {mode:PORTAL} {title_atob:Click the Portal to Shal'Aran.} {cond:ZGV:RaceClassMatch('NIGHTBORNE')}",

			-- Shal'Aran - Suramar, Broken Isles -to- Suramar Scenario - Suramar, Broken Isles --
			"Suramar/0 36.77,45.04 -to- Suramar/0 59.55,85.29 {mode:PORTAL} {title_atob:Click the Portal to The Nighthold.} {cond:ZGV:RaceClassMatch('NIGHTBORNE')}",

	--## NEUTRAL ##--

-------------------------
-------------------------
-- BOATS AND ZEPPELINS --
-------------------------
-------------------------

	--------------
	-- KALIMDOR --
	--------------

	--## ALLIANCE ##--

	--## HORDE ##--

		-- Orgrimmar - Durotar, Kalimdor -x- Thunder Bluff - Mulgore, Kalimdor --
		"Orgrimmar/1 43.00,64.99 -x- Thunder Bluff/0 15.28,25.70 {fac:H} {mode:ZEPPELIN}",

		-- Orgrimmar - Durotar, Kalimdor -x- Grom'gol - Northern Stranglethorn, Eastern Kingdoms --
		"Orgrimmar/1 52.52,53.15 -x- Northern Stranglethorn/0 37.17,52.49 {fac:H} {mode:ZEPPELIN}",

		-- Orgrimmar - Durotar, Kalimdor -x- Warsong Hold - Borean Tundra, Northrend --
		"Orgrimmar/1 44.75,62.30 -x- Borean Tundra/0 41.38,53.61 {fac:H} {mode:ZEPPELIN}",

	--## NEUTRAL ##--

	----------------------
	-- EASTERN KINGDOMS --
	----------------------

	--## ALLIANCE ##--

		-- Booty Bay - The Cape of Stranglethorn, Eastern Kingdoms -x- Rachet - Northern Barrens, Kalimdor --
		"The Cape of Stranglethorn/0 39.02,67.01 <port:Booty Bay> -x- Northern Barrens/0 70.16,73.27 <port:Ratchet> {mode:SHIP}",

		-- Menethil Harbor - Wetlands, Eastern Kingdoms -x- Theramore - Dustwallow Marsh, Kalimdor --
		"Wetlands/0 6.37,62.24 <port:Menethil Harbor> -x- Dustwallow Marsh/0 71.51,56.34 {fac:A} {mode:SHIP}",

		-- Menethil Harbor - Wetlands, Eastern Kingdoms -x- Valgarde - Howling Fjord, Northrend --
		"Wetlands/0 5.10,55.72 <port:Menethil Harbor> -x- Howling Fjord/0 61.33,62.60 <port:Valgarde> {fac:A} {mode:SHIP}",

		-- Stormwind - Elwyyn Forest, Eastern Kingdoms -x- Valiance Keep - Borian Tundra, Northrend --
		"Stormwind City/0 18.02,25.84 -x- Borean Tundra/0 59.68,69.41 {fac:A} {mode:SHIP} {cost:177}  {cond:not ZGV.IsLegionBoatLock()}",

	--## HORDE ##--

	--## NEUTRAL ##--

		"@deeprun_sw -x- @deeprun_if {mode:TRAM} {cost:30} {dontsetborder:1}",

		-- Stormwind - Elwyyn Forest, Eastern Kingdoms --
		"Stormwind City/0 69.62,31.11 -x- Deeprun Tram/1 42.53,11.53 @deeprun_sw {mode:PORTAL} {title_atob:Enter Stormwind Deeprun Tram portal\nTake tram to Ironforge} "..
			"{title_btoa:Exit Stormwind Deeprun Tram through portal}",

		-- Ironforge - Dun Morogh, Eastern Kingdoms --
		"Ironforge/0 76.93,51.25 -x- Deeprun Tram/1 45.77,12.47 @deeprun_if {mode:PORTAL} {title_atob:Enter Ironforge Deeprun Tram portal\nTake tram to Stormwind} "..
			"{title_btoa:Take tram to Ironforge\nExit Ironforge Deeprun Tram through portal}",

	-------------
	-- OUTLAND --
	-------------

	--## ALLIANCE ##--

	--## HORDE ##--

	--## NEUTRAL ##--

	---------------
	-- NORTHREND --
	---------------

	--## ALLIANCE ##--

	--## HORDE ##--

	--## NEUTRAL ##--

		-- Unu'pe - Borean Tundra, Northrend -x- Moa'ki Harbor - Dragonblight, Northrend --
		"Borean Tundra/0 78.92,53.65 <port:Unu'pe> -x- Dragonblight/0 47.94,78.76 <port:Moa'ki Harbor> {mode:SHIP} {template:turtle}",

		-- Moa'ki Harbor - Dragonblight, Northrend -x- Kamagua - Howling Fjord, Northrend --
		"Dragonblight/0 49.64,78.43 -x- Howling Fjord/0 23.46,57.75 <port:Kamagua> {mode:SHIP} {template:turtle}",

	--------------
	-- PANDARIA --
	--------------

	--## ALLIANCE ##--

	--## HORDE ##--

	--## NEUTRAL ##--

	-------------
	-- DRAENOR --
	-------------

	--## ALLIANCE ##--

	--## HORDE ##--

	--## NEUTRAL ##--

	-------------------
	-- THE MAELSTROM --
	-------------------

	--## ALLIANCE ##--

	--## HORDE ##--

	--## NEUTRAL ##--

	------------------
	-- BROKEN ISLES --
	------------------

	--## ALLIANCE ##--

	--## HORDE ##--

	--## NEUTRAL ##--

	---------------
	-- KUL TIRAS --
	---------------

	--## ALLIANCE ##--

		-- Boralus Harbor - Boralus, Kul Tiras -to- Zuldazar, Zandalar --
		"Boralus/0 67.95,26.69 -to- Zuldazar/0 40.68,70.86 {fac:A} {mode:SHIP} {cost:30} {title:Talk to Grand Admiral Jes-Tereth,|nTell her \"Set sail for Zuldazar.\"} {cond:PlayerCompletedQuest(51308)}",

		-- Boralus Harbor - Boralus, Kul Tiras -to- Nazmir, Zandalar --
		"Boralus/0 67.95,26.69 -to- Nazmir/0 61.95,39.92 {fac:A} {mode:SHIP} {cost:30} {title:Talk to Grand Admiral Jes-Tereth,|nTell her \"Set sail for Nazmir.\"} {cond:PlayerCompletedQuest(51571)}",

		-- Boralus Harbor - Boralus, Kul Tiras -to- Vol'dun, Zandalar --
		"Boralus/0 67.95,26.69 -to- Vol'dun/0 35.60,33.17 {fac:A} {mode:SHIP} {cost:30} {title:Talk to Grand Admiral Jes-Tereth,|nTell her \"Set sail for Vol'dun.\"} {cond:PlayerCompletedQuest(51572)}",

		-- Prospectus Bay - Mechagon Island, Kul Tiras -to- Boralus Harbor - Tiragarde Sound, Kul Tiras --
		"Mechagon Island/0 77.83,40.92 -to- Boralus/0 70.48,16.64 {fac:A} {mode:SHIP} {cost:20} {title:Talk to Dread Cap'n Placeholder,|nTell him \"Yes, teleport me!\"} "..
			"{cond:PlayerCompletedQuest(54992)}",

		-- Boralus Harbor - Tiragarde Sound, Kul Tiras -to- Prospectus Bay - Mechagon Island, Kul Tiras --
		"Boralus/0 70.24,17.19 -to- Mechagon Island/0 78.36,40.54 {fac:A} {mode:SHIP} {cost:20} {title:Talk to Dread Cap'n Placeholder,|nTell him \"Yes, teleport me!\"} "..
			"{cond:PlayerCompletedQuest(54992)}",

		-- Tradewinds Market - Tiragarde Sound, Kul Tiras -x- Stormwind - Elwyyn Forest, Eastern Kingdoms --
		"Boralus/0 77.62,26.15 -x- Stormwind City/0 22.43,55.93 {fac:A} {mode:SHIP} {cond:ZGV.InPhase('BFA')}",

	--## HORDE ##--

		-- Anyport - Drustvar, Kul Tiras -to- Port of Zuldazar - Zuldazar, Zandalar --
		"Drustvar/0 20.60,43.34 -to- Zuldazar/0 58.40,62.50 {fac:H} {mode:SHIP} {cost:30} {title:Talk to Swellthrasher,|nTell him \"Take us back to Zuldazar.\"} {cond:PlayerCompletedQuest(51340)}",

		-- Stormsong Valley, Kul Tiras -to- Port of Zuldazar - Zuldazar, Zandalar --
		"Stormsong Valley/0 51.95,24.46 -to- Zuldazar/0 58.40,62.50 {fac:H} {mode:SHIP} {cost:30} {title:Talk to Grok Seahandler,|nTell him \"Take me back to Zuldazar.\"} {cond:PlayerCompletedQuest(51532)}",

		-- Stormsong Valley, Kul Tiras -to- Port of Zuldazar - Zuldazar, Zandalar --
		-- FIX LATER SINCE FPATH MISSING DURING STORMSONG VALLEY INCURSION 
		"Stormsong Valley/0 51.43,33.75 -to- Zuldazar/0 58.40,62.50 {fac:H} {mode:SHIP} {cost:30} {title:Talk to Muka Stormbreaker,|nTell her \"Take us back to Zuldazar.\"} {cond:PlayerCompletedQuest(51696)}",

		-- Tiragarde Sound, Kul Tiras -to- Port of Zuldazar - Zuldazar, Zandalar --
		"Tiragarde Sound/0 87.85,51.18 -to- Zuldazar/0 58.40,62.50 {fac:H} {mode:SHIP} {cost:30} {title:Talk to Erul Dawnbrook,|nTell him \"Take us back to Zuldazar.\"} {cond:PlayerCompletedQuest(51421)}",

		-- Port of Zandalar - Zuldazar, Zandalar -x- Echo Isles - Durotar, Kalimdor --
		"Zuldazar/0 58.02,65.07 -x- Echo Isles/0 70.90,38.23 {fac:H} {mode:SHIP} {cond:ZGV.InPhase('BFA')}",

		-- Prospectus Bay - Mechagon Island, Kul Tiras -to- Zuldazar Harbor - Zuldazar, Zandalar --
		"Mechagon Island/0 75.49,22.66 -to- Dazar'alor/0 41.75,87.43 {fac:H} {mode:SHIP} {cost:20} {title:Talk to Captain Krooz,|nTell her \"Take me to Zuldazar Harbor.\"} "..
			"{cond:PlayerCompletedQuest(55651)}",

	--## NEUTRAL ##--

	--------------
	-- ZANDALAR --
	--------------

	--## ALLIANCE ##--

		-- Zuldazar, Zandalar -to- Boralus Harbor - Boralus, Kul Tiras --
		"Zuldazar/0 40.46,71.03 -to- Boralus/0 70.22,27.06 {fac:A} {mode:SHIP} {cost:30} {title:Talk to Daria Smithson,|nTell her \"Take us back to Boralus.\"} {cond:PlayerCompletedQuest(51418)}",

		-- Nazmir, Zandalar -to- Boralus Harbor - Boralus, Kul Tiras --
		"Nazmir/0 62.06,40.08 -to- Boralus/0 70.22,27.06 {fac:A} {mode:SHIP} {cost:30} {title:Talk to Desha Stormwallow,|nTell her \"Take us back to Boralus.\"} {cond:PlayerCompletedQuest(51571)}",

		-- Vol'dun, Zandalar -to- Boralus Harbor - Boralus, Kul Tiras --
		"Vol'dun/0 34.91,33.76 -to- Boralus/0 70.22,27.06 {fac:A} {mode:SHIP} {cost:30} {title:Talk to Grand Admiral Jes-Tereth,|nTell her \"Take us back to Boralus.\"} {cond:PlayerCompletedQuest(51229)}",

		-- Vol'dun, Zandalar -to- Boralus Harbor - Boralus, Kul Tiras --
		"Vol'dun/0 36.69,34.28 -to- Boralus/0 70.22,27.06 {fac:A} {mode:SHIP} {cost:30} {title:Talk to Barnard \"The Smasher\" Baysworth,|nTell her \"Take us back to Boralus.\"} {cond:PlayerCompletedQuest(51229)}",

	--## HORDE ##--

		-- Port of Zuldazar - Zuldazar, Zandalar -to- Anyport - Drustvar, Kul Tiras --
		"Zuldazar/0 58.46,62.99 -to- Drustvar/0 20.61,43.69 {fac:H} {mode:SHIP} {cost:30} {title:Talk to Dread-Admiral Tattersail,|nTell her \"Set sail for Drustvar.\"} {cond:PlayerCompletedQuest(51801)}",

		-- Port of Zuldazar - Zuldazar, Zandalar -to- Stormsong Valley, Kul Tiras --
		"Zuldazar/0 58.46,62.99 -to- Stormsong Valley/0 51.98,24.49 {fac:H} {mode:SHIP} {cost:30} {title:Talk to Dread-Admiral Tattersail,|nTell her \"Set sail for Stormsong Valley.\"} {cond:PlayerCompletedQuest(51802)}",

		-- Port of Zuldazar - Zuldazar, Zandalar -to- Tiragarde Sound, Kul Tiras --
		"Zuldazar/0 58.46,62.99 -to- Tiragarde Sound/0 88.20,51.16 {fac:H} {mode:SHIP} {cost:30} {title:Talk to Dread-Admiral Tattersail,|nTell her \"Set sail for Tiragarde Sound.\"} {cond:PlayerCompletedQuest(51800)}",

		-- Port of Zuldazar - Zuldazar, Zandalar -to- Darkshore Warfront Scenario --
		"Zuldazar/0 58.46,62.99 -to- Darkshore Warfront/0 54.48,19.00 {fac:H} {mode:PORTAL} {title:Talk to Dread-Admiral Tattersail,|nTell her \"Send me to Darkshore.\"} {cond:PlayerCompletedQuest(54042)}",

		-- Port of Zuldazar - Zuldazar, Zandalar -to- Atal'Gral - Zuldazar, Zandalar --
		"Zuldazar##862 78.66,12.62 -x- Zuldazar##862 82.43,46.85 {mode:SHIP} {fac:H} {cost:50} {title_atob:Take canoe to Atal'Gral}           {title_btoa:Take canoe to Zeb'Hari}",

		-- Port of Zuldazar - Zuldazar, Zandalar -to- Dreadpearl Shallows - Zuldazar, Zandalar --
		"@+ -x- Zuldazar##862 69.50,67.00           {mode:SHIP} {fac:H} {cost:45} {title_atob:Take the canoe to Dreadpearl Shallows} {title_btoa:Take canoe to Atal'Gral}",

		-- Port of Zuldazar - Zuldazar, Zandalar -to- Zuldazar Harbor - Zuldazar, Zandalar --
		"@+ -x- Dazar'alor##1165 52.83,95.78        {mode:SHIP} {fac:H} {cost:50} {title_atob:Take canoe to Zuldazar Harbor}     {title_btoa:Take canoe to Dreadpearl Shallows}",

		-- Port of Zuldazar - Zuldazar, Zandalar -to- Zuldazar Arena - Zuldazar, Zandalar --
		"@+ -x- Zuldazar##862 53.68,61.56           {mode:SHIP} {fac:H} {cost:30} {title_atob:Take canoe to Zuldazar Arena}      {title_btoa:Take canoe to Zuldazar Harbor}",

		-- Port of Zuldazar - Zuldazar, Zandalar -to- Xibala - Zuldazar, Zandalar --
		"@+ -x- Zuldazar##862 47.93,70.48           {mode:SHIP} {fac:H} {cost:30} {title_atob:Take canoe to Xibala}              {title_btoa:Take canoe to Zuldazar Arena}",

		-- Prospectus Bay - Mechagon Island, Kul Tiras -to- Zuldazar Harbor - Zuldazar, Zandalar --
		"Dazar'alor/0 41.83,87.61 -to- Mechagon Island/0 75.73,21.32 {fac:H} {mode:SHIP} {cost:20} {title:Talk to Captain Krooz,|nTell her \"Take me to Mechagon.\"} "..
			"{cond:PlayerCompletedQuest(55651)}",

	--## NEUTRAL ##--

----------------------
----------------------
-- TELEPORT TARGETS --
----------------------
----------------------

	--------------
	-- ALLIANCE --
	--------------

		-- Stormwind - Elwynn Forest, Eastern Kingdoms --
		"Stormwind City/0 49.59,86.53 @sw_tp_dst",

		-- Ironforge - Dun Morogh, Eastern Kingdoms --
		"Ironforge/0 25.51,8.43 @if_tb_dst",

		-- Darnassus - Teldrassil, Kalimdor --
		"Darnassus/0 43.47,78.68 @darn_tb_dst",

		-- Exodar - Azuremyst Isle, Kalimdor --
		"The Exodar/0 47.62,59.82 @exo_tb_dst",

		-- The Stair of Destiny - Hellfire Peninsula, Outland --
		"Hellfire Peninsula/0 89.16,50.86 @hfpA_tb_dst",

		-- Shrine of Seven Stars - Vale of Eternal Blossoms, Pandaria --
		"Vale of Eternal Blossoms/0 62.50,21.82 @sss_tb_dst",

	-----------
	-- HORDE --
	-----------

		-- Ogrimmar - Durotar, Kalimdor --
		"Orgrimmar/2 48.28,64.53 <region:cleftofshadow> @org_tp_dst",

		-- Undercity - Tirisfal Glades, Kalimdor --
		"Undercity/0 84.59,16.33 @uc_tb_dst",

		-- Thunder Bluff - Mulgore, Kalimdor --
		"Thunder Bluff/0 22.21,16.87 @tb_tb_dst",

		-- Silvermoon City - Eversong Woods, Kalimdor --
		"Silvermoon City/0 58.26,19.24 @smc_tb_dst",

		-- The Stair of Destiny - Hellfire Peninsula, Outland --
		"Hellfire Peninsula/0 89.16,49.56 @hfpH_tb_dst",

		-- Shrine of Two Moons - Vale of Eternal Blossoms, Pandaria --
		"Vale of Eternal Blossoms/0 62.50,21.82 @stm_tb_dst",

	-------------
	-- NEUTRAL --
	-------------

		-- Dalaran - Crystalsong Forest, Northrend --
		"Dalaran/1 55.92,46.78 @dala_tp_dst",

		-- Dalaran - Broken Shore, Broken Isles --
		"Dalaran L/10 60.92,44.72 @dalL_tp_dst",

------------------
-- CLASS SPELLS --
------------------

		--## MAGE ##--

		-- Teleport: Exodar --
		"The Exodar/0 47.62,59.82				<spell:32271>	<faction:A>",
		-- Teleport: Theramore --
		"Dustwallow Marsh/0 66.00,48.99				<spell:49359>	<faction:A>",
		-- Teleport: Shattrath --
		"Shattrath City/0 54.97,40.23				<spell:33690>	<faction:A>",
		-- Teleport: Dalaran - Northrend --
		"Dalaran/1 55.92,46.79					<spell:53140>	<faction:B>",
		-- Teleport: Darnassus --
		"Darkshore/0 45.95,18.74				<spell:3565>	<faction:A>	<cond:not ZGV.InPhase('Old Darnassus')>",
		"Darnassus/0 43.47,78.67				<spell:3565>	<faction:A>	<cond:ZGV.InPhase('Old Darnassus')>",
		-- Teleport: Ironforge --
		"Ironforge/0 25.51,8.43					<spell:3562>	<faction:A>",
		-- Teleport: Stormwind --
		"Stormwind City/0 49.59,86.53				<spell:3561>	<faction:A>",
		-- Teleport: Tol Barad --
		"Tol Barad Peninsula/0 73.67,60.92			<spell:88342>	<faction:A>",
		-- Teleport: Vale of Eternal Blossoms --
		"Vale of Eternal Blossoms/0 86.30,61.05			<spell:132621>	<faction:A>",
		-- Teleport: Stormshield --
		"Stormshield/0 62.67,35.78				<spell:176248>	<faction:A>",
		-- Teleport: Hall of the Guardian --
		"Hall of the Guardian/1 57.63,86.13			<spell:193759>	<faction:B>",
		-- Teleport: Dalaran - Broken Isles --
		"Dalaran L/10 60.92,44.73				<spell:224869>	<faction:B>",
		-- Teleport:  --
		-- Teleport:  --
		-- Teleport:  --
		-- Teleport:  --
		-- Teleport:  --
		-- Teleport:  --
		-- Teleport:  --



		"Orgrimmar/2 48.3,64.7 <region:cleftofshadow>		<spell:3567>   <faction:H>",
		"Silvermoon City 58.3,19.2				<spell:32272>  <faction:H>",
		"Swamp of Sorrows 49.8,55.8				<spell:49358>  <faction:H>", --stonard
		"Thunder Bluff 22.2,16.9				<spell:3566>   <faction:H>",
		"Shattrath City 53.0,49.2				<spell:35715>  <faction:H>",
		"Undercity 84.6,16.3					<spell:3563>   <faction:H>",
		"Tol Barad Peninsula 55.8,80.1				<spell:88344>  <faction:H>",
		"Vale of Eternal Blossoms/0 62.21,21.54			<spell:132627> <faction:H>",
		"Warspear/0 58.8,51.4					<spell:176242>  <faction:H>",
		"Boralus/0 69.80,15.75					<spell:281403>",		-- Alliance
		"Dazar'alor/1 68.28,64.58				<spell:281404>",	-- Horde

		--[[ Note: node cond functions work only for teleport spells --]]
		-- DRUIDS
		"Moonglade  56.3,32.4					<spell:18960>",  --Teleport Moonglade
		-- DK (DEATHGATE)
		"Eastern Plaguelands 83.72,50.03			<spell:50977> <cond:not (PlayerCompletedQuest(38990) or PlayerCompletedQuest(40935) or PlayerCompletedQuest(40740))>", --Class based!
		-- MONKS (Zen Pilgrimage)
		"Kun-Lai Summit 48.64,42.94				<spell:126892> <region:peak_of_serenity> <cond:not PlayerCompletedQuest(40236)>", --Class based!



		-- LEGION:

		-- MAGE

		-- DRUID
			"Emerald Dreamway/0 35.33,53.15 <spell:193753> <cond:ZGV.CurrentMapID~=1048>",

		-- DEATHKNIGHT
			"Broken Shore/2 27.43,30.43 <spell:50977> <cond:(PlayerCompletedQuest(38990) or PlayerCompletedQuest(40935) or PlayerCompletedQuest(40740))> <zone:1021>",

		-- MONK
			"The Wandering Isle L/0 51.45,48.65 <spell:126892> <cond:PlayerCompletedQuest(40236)> <zone:1044>",



















	-- Experiments (disabled)

		-- Ironforge
			--[[
			 "Ironforge 53,82 @if01 <costmod:0.7>",
			 "Ironforge 60,70 @ifmw01 -x- Ironforge 50,58 @ifmw02",
			 "Ironforge 69,59 @iftt01 -x- Ironforge 71,39 @iftt02",
			 "Ironforge 61,27 @ifhe01 -x- Ironforge 56,34 @ifhe02",
			 "Ironforge 58,12 @iffc01 -x- Ironforge 39,11 @iffc02",
			 "Ironforge 33,23 @ifyw01 -x- Ironforge 38,38 @ifyw02",
			 "Ironforge 25,28 @if02 <costmod:0.7>",
			 "Ironforge 28,55 @ift11 -x- Ironforge 39,46 @ift12",
			 "Ironforge 38,72 @ift21 -x- Ironforge 44,58 @ift22",
			 "@ifmw02 -x- @iftt02",
			 "@iftt02 -x- @ifhe02",
			 "@ifhe02 -x- @iffc02",
			 "@iffc02 -x- @ifmw02",
			 "@ifyw02 -x- @ifyw02",
			 "@ifyw02 -x- @ifyw02",
			 "@ifyw02 -x- @ifmw02",
			--]]

	-- WoD ground travel aids
	"Talador 65.4,48.0 -x- Talador 67.6,45.3 {cost:0}",
	"Talador 60.0,41.1 -x- Talador 59.3,44.9 {cost:0}",
	"Talador 64.5,41.1 -x- Talador 66.7,42.0 {cost:0}",
}
