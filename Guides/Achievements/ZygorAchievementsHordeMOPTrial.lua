local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("AchievementsHMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Mists of Pandaria\\Fish Tales",{
achieveid={6846},
description="This guide will walk you through discovering each of the Jinyu lore objects in Pandaria.",
},[[
step
label "start"
click Watersmithing##215779 |goto The Jade Forest 66.0,87.6
achieve 6846/1
step
click Origins##215782 |goto Krasarang Wilds 30.5,38.5
achieve 6846/3
step
click Waterspeakers##215780 |goto Valley of the Four Winds 61.2,34.7
achieve 6846/2
step
click Role Call##215783 |goto Kun-Lai Summit 74.5,83.5
achieve 6846/4
step
Congratulations, you have earned Fish Tales Achievement! |only if achieved(6846)
Still more exploration required. Routing to the guide start. |next "start" |only if not achieved(6846)
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Cataclysm\\Pandaria Explorer",{
condition_end=function() return achieved(6974) end,
achieveid={6974},
description="Earn the following Pandaria exploration achievements:\n\nExplore Dread Wastes\nExplore Krasarang Wilds\n"..
"Explore Jade Forest\nExplore Kun-Lai Summit\nExplore Townlong Steppes\nExplore Vale of Eternal Blossoms\n"..
"Explore Valley of the Four Winds",
},[[
leechsteps "Achievement Guides\\Exploration\\Cataclysm\\Explore Jade Forest" 1-17
leechsteps "Achievement Guides\\Exploration\\Cataclysm\\Explore Valley of the Four Winds" 1-18
leechsteps "Achievement Guides\\Exploration\\Cataclysm\\Explore Krasarang Wilds" 1-16
leechsteps "Achievement Guides\\Exploration\\Cataclysm\\Explore Kun-Lai Summit" 1-14
leechsteps "Achievement Guides\\Exploration\\Cataclysm\\Explore Townlong Steppes" 1-11
leechsteps "Achievement Guides\\Exploration\\Cataclysm\\Explore Dread Wastes" 1-12
leechsteps "Achievement Guides\\Exploration\\Cataclysm\\Explore Vale of Eternal Blossoms" 1-11
step
_Congratulations!_
You Earned the "Pandaria Explorer" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Cataclysm\\Explore Dread Wastes",{
condition_end=function() return achieved(6978) end,
achieveid={6978},
description="Explore Dread Wastes, revealing the following covered areas of the world map:\n\n Kypari Vor\n"..
"Rikkitun Village\nHeart of Fear\nThe Clutches of Shek'zeer\nTerrace of Gurthan\nZan'vess\n"..
"Writhingwood\nKlaxxi'vess\nKypari Zar\nThe Sunset Brewgarden\nSoggy's Gamble\nThe Briny Muck",
},[[
step
Discover Kypari Vor |achieve 6978/3 |goto Dread Wastes 63.2,18.4
step
Discover The Sunset Brewgarden |achieve 6978/10 |goto 50.5,12.2
step
Discover Rikkitun Village |achieve 6978/5 |goto 34.6,20.0
step
Discover Heart of Fear |achieve 6978/1 |goto 39.6,35.0
step
Discover The Clutches of Shek'zeer |achieve 6978/9 |goto 46.2,34.5
step
Discover Klaxxi'vess |achieve 6978/2 |goto 53.6,34.9
step
Discover The Briny Muck |achieve 6978/8 |goto 38.7,62.2
step
Discover Zan'vess |achieve 6978/12 |goto 30.5,73.6
step
Discover Soggy's Gamble |achieve 6978/6 |goto 55.9,70.3
step
Discover Kypari Zar |achieve 6978/4 |goto 59.2,60.6
step
Discover Writhingwood |achieve 6978/11 |goto 66.0,42.2
step
Discover Terace of Gurthan |achieve 6978/7 |goto 68.3,30.4
step
|achieve 6978
step
_Congratulations!_
You Earned the "Explore Dread Wastes" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Cataclysm\\Explore Jade Forest",{
condition_end=function() return achieved(6351) end,
achieveid={6351},
description="Explore Jade Forest, revealing the following covered areas of the world map:\n\n Tian Monastery\n"..
"Dreamer's Pavillion\nPearl Lake\nGreenstone Quarry\nTemple of the Jade Serpent\nCamp Nooka Nooka\n"..
"Serpent's Heart\nGarrosh'ar Point\nHoneydew Village\nDawn's Blossom\nTerrace of Ten Thunders\n"..
"Emperor's Omen\nNectarbreeze Orchard\nGrookin Hill\nSlingtail Pits\nThe Arboretum\nWindward Isle",
},[[
step
Discover Nectarbreeze Orchard |achieve 6351/8 |goto The Jade Forest 40.0,73.0
step
Discover Garrosh'ar Point |achieve 6351/15 |goto 46.0,90.0
step
Discover Dreamer's Pavillion |achieve 6351/3 |goto 52.1,90.8
step
Discover Slingtail Pits |achieve 6351/12 |goto 52.0,82.0
step
Discover Pearl Lake |achieve 6351/5 |goto 58.0,80.0
step
Discover Temple of the Jade Serpent |achieve 6351/13 |goto 57.0,57.0
step
Discover Serpent's Heart |achieve 6351/11 |goto 47.0,60.0
step
Discover Dawn's Blossom |achieve 6351/2 |goto 48.0,45.0
step
Discover The Arboretum |achieve 6351/14 |goto 57.0,44.0
step
Discover Windward Isle |achieve 6351/16 |goto 65.0,30.0
step
Discover Emperor's Omen |achieve 6351/4 |goto 50.0,26.2
step
Discover Greenstone Quarry |achieve 6351/7 |goto 46.0,29.0
step
Discover Tian Monastery |achieve 6351/1 |goto 41.2,21.5
step
Discover Terrace of Ten Thunders |achieve 6351/10 |goto 40.0,13.0
step
Discover Honeydew Village |achieve 6351/17 |goto 29.0,13.0
step
Discover Camp Nooka Nooka |achieve 6351/9 |goto 25.0,37.0
step
Discover Grookin Hill |achieve 6351/6 |goto 25.0,48.0
step
|achieve 6351
step
_Congratulations!_
You Earned the "Explore Jade Forest" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Cataclysm\\Explore Krasarang Wilds",{
condition_end=function() return achieved(6975) end,
achieveid={6975},
description="Explore Krasarang Wilds, revealing the following covered areas of the world map:\n\n Anglers Wharf\n"..
"Dojani River\nKrasarang Cove\nNayeli Lagoon\nRuins of Dojan\nTemple of the Red Crane\nUnga Ingoo\n"..
"The Forbidden Jungle\nCradle of Chi-Ji\nFallsong Village\nThe Krasari Ruins\nCrane Wing Refuge\n"..
"Ruins of Korja\nThe Deepwild\nThe Southern Isles\nZhu's Watch",
},[[
step
Discover Zhu's Watch |achieve 6975/16 |goto Krasarang Wilds 76.6,8.7
step
Discover Krasarang Cove |achieve 6975/5 |goto 80.6,25.6
step
Discover The Krasari Ruins |achieve 6975/6 |goto 68.5,22.8
step
Discover Dojani River |achieve 6975/3 |goto 65.3,32.9
step
Discover Anglers Wharf |achieve 6975/1 |goto 68.0,44.2
step
Discover Ruins of Dojan |achieve 6975/9 |goto 53.9,37.4
step
Discover The Deepwild |achieve 6975/12 |goto 45.5,31.8
step
Discover Crane Wing Refuge |achieve 6975/8 |goto 40.0,32.5
step
Discover Temple of the Red Crane |achieve 6975/11 |goto 39.1,56.8
step
Discover Unga Ingoo |achieve 6975/15 |goto 43.3,90.2
step
Discover Nayeli Lagoon |achieve 6975/7 |goto 40.7,82.9
step
Discover Cradle of Chi-Ji |achieve 6975/2 |goto 31.2,63.2
step
Discover The Southern Isle |achieve 6975/14 |goto 12.7,59.9
step
Discover Ruins of Korja |achieve 6975/10 |goto 24.0,47.1
step
Discover Fallsong Village |achieve 6975/4 |goto 30.2,38.3
step
Discover The Forbidden Jungle |achieve 6975/13 |goto 14.1,39.0
step
|achieve 6975
step
_Congratulations!_
You Earned the "Explore Krasarang Wilds" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Cataclysm\\Explore Kun-Lai Summit",{
condition_end=function() return achieved(6976) end,
achieveid={6976},
description="Explore , revealing the following covered areas of the world map:\n\n Binan Village\n"..
"Gate of the August Celestials\nKota Peak\nMount Neverest\nPeak of Serenity\nTemple of "..
"the White Tiger\nValley of Emperors\nFirebough Nook\nIsle of Reckoning\nMogujia\nMuskpaw Ranch\n"..
"Shado-Pan Monastery\nThe Burlap Trail\nZouchin Village",
},[[
step
Discover Binan Village |achieve 6976/1 |goto Kun-Lai Summit 71.8,92.2
step
Discover Muskpaw Ranch |achieve 6976/8 |goto 68.1,73.2
step
Discover Temple of the White Tiger |achieve 6976/11 |goto 68.6,46.6
step
Discover Isle of Reckoning |achieve 6976/4 |goto 75.5,11.9
step
Discover Zouchin Village |achieve 6976/14 |goto 62.4,29.4
step
Discover Valley of Emperors |achieve 6976/13 |goto 53.4,48.3
step
Discover Peak of Serenity |achieve 6976/9 |goto 49.3,42.9
step
Discover Shado-Pan Monastery |achieve 6976/10 |goto 36.7,47.9
step
Discover Mount Neverest |achieve 6976/7 |goto 44.5,55.9
step
Discover Burlap Trail |achieve 6976/12 |goto 55.4,65.9
step
Discover Mogujia |achieve 6976/6 |goto 58.0,74.8
step
Discover Gate of the August Celestials |achieve 6976/3 |goto 55.5,92.0
step
Discover Firebough Nook |achieve 6976/2 |goto 45.4,86.2
step
Discover Kota Peak |achieve 6976/5 |goto 38.0,75.1
step
|achieve 6976
step
_Congratulations!_
You Earned the "Explore Kun-Lai Summit" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Cataclysm\\Explore Townlong Steppes",{
condition_end=function() return achieved(6977) end,
achieveid={6977},
description="Explore Townlong Steppes, revealing the following covered areas of the world map:\n\n Gao-Ran Battlefront\n"..
"Rensai's Watchpost\nFire Camp Osul\nShado-Pan Garrison\nSik'vess\nThe Sumprushes\nKri'vess\nNiuzao Temple\n"..
"Hatred's Vice\nShan'ze Dao\nSra'vess",
},[[
step
Discover Fire Camp Osul |achieve 6977/5 |goto Townlong Steppes 67.3,44.9
step
Discover Kri'vess |achieve 6977/2 |goto 56.1,53.5
step
Discover Niuzao Temple |achieve 6977/4 |goto 39.3,62.0
step
Discover Shan'ze Dao |achieve 6977/8 |goto 28.6,25.8
step
Discover Sra'vess |achieve 6977/10 |goto 26.3,39.1
step
Discover Shado-Pan Garrison |achieve 6977/7 |goto 49.2,71.0
step
Discover Sik'vess |achieve 6977/9 |goto 44.6,77.5
step
Discover Rensai's Watchpost |achieve 6977/3 |goto 54.3,79.0
step
Discover The Sumprushes |achieve 6977/11 |goto 71.3,70.5
step
Discover Hatred's Vice |achieve 6977/6 |goto 82.5,72.4
step
Discover Gao-Ran Battlefront |achieve 6977/1 |future |goto 75.5,82.5
step
|achieve 6977
step
_Congratulations!_
You Earned the "Explore Townlong Steppes" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Cataclysm\\Explore Vale of Eternal Blossoms",{
condition_end=function() return achieved(6979) end,
achieveid={6979},
description="Explore Vale of Eternal Blossoms, revealing the following covered areas of the world map:\n\n Ruins of Guo-Lai\n"..
"Mogu'shan Palace\nThe Golden Stair\nThe Golden Pagoda\nShrine of Two Moons\nThe Five Sisters\nMistfall Village\n"..
"Setting Sun Garrison\nShrine of Seven Stars\nTu Shen Burial Ground\nWhitepetal Lake",
},[[
step
Discover Shrine of Seven Stars |achieve 6979/6 |goto Vale of Eternal Blossoms 86.4,62.5
step
Discover Mogu'shan Palace |achieve 6979/3 |goto 79.1,36.1
step
Discover Shrine of Two Moons |achieve 6979/9 |goto 62.0,22.6
step
Discover The Golden Pagoda |achieve 6979/7 |goto 56.7,43.2
step
Discover The Golden Stair |achieve 6979/5 |goto 44.2,15.2
step
Discover Whitepetal Lake |achieve 6979/10 |goto 40.5,47.0
step
Discover Ruins of Guo-Lai |achieve 6979/1 |goto 26.6,37.2
step
Discover The Five Sisters |achieve 6979/11 |goto 17.4,47.9
step
Discover Setting Sun Garrison |achieve 6979/4 |goto 18.5,71.7
step
Discover Mistfall Village |achieve 6979/2 |goto 36.3,72.0
step
Discover Tu Shen Burial Ground |achieve 6979/8 |goto 48.3,69.1
step
|achieve 6979
step
_Congratulations!_
You Earned the "Explore Vale of Eternal Blossoms" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Cataclysm\\Explore Valley of the Four Winds",{
condition_end=function() return achieved(6969) end,
achieveid={6969},
description="Explore Valley of the Four Winds, revealing the following covered areas of the world map:\n\n Nesingwary Safari\n"..
"Winds' Edge\nGilded Fan\nHalfhill\nKunzen Village\nPools of Purity\nSilken Fields\nStormstout Brewery\n"..
"Thunderfoot Ranch\nDustback Gorge\nThe Imperial Granary\nStoneplow\nMudmug's Place\nPaoquan Hollow\nThe Heartland\n"..
"Rumbling Terrace\nSinging Marshes\nZhu's Descent",
},[[
step
Discover Thunderfoot Ranch |achieve 6969/17 |goto Valley of the Four Winds 75.7,24.9
step
Discover Pools of Purity |achieve 6969/11 |goto 60.7,27.6
step
Discover Mudmug's Place |achieve 6969/8 |goto 68.6,43.3
step
Discover Zhu's Descent |achieve 6969/18 |goto 81.53,47.92
step
Discover Rumbling Terrace |achieve 6969/12 |goto 73.2,58.3
step
Discover Silken Fields |achieve 6969/13 |goto 65.2,57.4
step
Discover Halfhill |achieve 6969/5 |goto 56.1,49.8
step
Discover Gilded Fan |achieve 6969/3 |goto 54.2,38.7
step
Discover Heartland |achieve 6969/16 |goto 40.4,43.1
step
Discover Kunzen Village |achieve 6969/7 |goto 33.1,23.5
step
Discover Paoquan Hollow |achieve 6969/10 |goto 16.6,38.7
step
Discover Singing Marshes |achieve 6969/14 |goto 25.0,43.6
step
Discover Stoneplow |achieve 6969/6 |goto 19.0,57.0
step
Discover Dustback Gorge |achieve 6969/2 |goto 13.0,75.5
step
Discover Nesingwary Safari |achieve 6969/9 |goto 16.1,82.7
step
Discover Stormstout Brewery |achieve 6969/15 |goto 35.9,68.0
step
Discover The Imperial Granary |achieve 6969/4 |goto 52.4,63.0
step
Discover Winds' Edge |achieve 6969/1 |goto 50.1,75.1
step
|achieve 6969
step
_Congratulations!_
You Earned the "Explore Valley of the Four Winds" Achievement.
]])
ZGV.BETASTART()
ZGV.BETAEND()
