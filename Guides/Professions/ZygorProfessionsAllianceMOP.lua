local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("ProfessionsAMoP") then return end
ZygorGuidesViewer.GuideMenuTier = "MOP"
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Archaeology\\Leveling Guides\\Mists of Pandaria\\Archaeology 525-600 Leveling Guide",{
author="support@zygorguides.com",
description="This guide will walk you through leveling your Archaeology skill from 525-600.",
condition_end=function() return skill('Archaeology') >= 600 end,
condition_suggested=function() return skill('Archaeology') >= 525 and skill('Archaeology') < 600 and level >= 85 end,
},[[
step
label "arc_525-600"
#include "trainer_Archaeology"
Learn the Zen Master Archaeology skill |skillmax Archaeology,600
|tip You must be at least level 80.
step
Open your world map, find dig sites in Eastern Kingdoms then go to them
|tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
Use your Survey ability inside the dig site area |cast Survey##80451
A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts
|tip Each dig site has 6 artifacts you can find.
Click the Archaeology Fragments that spawn on the ground
Open your Archaeology profession window |cast Archaeology##78670
Click artifacts to open them, then solve them once you have the required amounts of each
skill Archaeology,600
step
label "arc_600"
Congratulations, you are now a Zen Master Archaeologist
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Blacksmithing\\Leveling Guides\\Mists of Pandaria\\Pandaria Blacksmithing 1-75",{
author="support@zygorguides.com",
description="This guide will walk you through leveling your Pandaria Blacksmithing skill from 1-75.",
condition_end=function() return skill('Pandaren Blacksmithing') >= 75 end,
condition_suggested=function() return skill('Blacksmithing') > 0 and skill('Pandaren Blacksmithing') < 75 and level >= 78 end,
},[[
step
talk Cullen Hammerbrow##64085
|tip Downstairs inside the building.
|tip He walks around the area.
Train Pandaria Blacksmithing |skillmax Pandaren Blacksmithing,75 |goto Shrine of Seven Stars/1 71.70,51.58
|tip You must be at least level 78.
step
collect 589 Ghost Iron Bar##72096
|tip It takes 1178 Ghost Iron Ore to make the amount of bars you need.
|tip Farm and smelt them with Mining or purchase them from the Auction House.
|only if skill("Pandaren Blacksmithing") < 75
step
collect 1 Spirit of Harmony##76061
|tip These are created by combining 10 Motes of Harmony.
|tip They drop randomly from mobs and Fishing casts in Pandaria.
|tip You can also purchase them from the Auction House.
|only if skill("Pandaren Blacksmithing") < 75
step
Open Your Blacksmithing Crafting Panel:
_<Create 9 Folded Ghost Iron>_
|tip You will probably need to make more.
Reach Level 10 Pandaria Blacksmithing |skill Pandaren Blacksmithing,10
step
talk Cullen Hammerbrow##64085
|tip Downstairs inside the building.
|tip He walks around the area.
learn Ghost-Forged Gauntlets##122579 |goto 71.70,51.58
step
Open Your Blacksmithing Crafting Panel:
_<Create 5 Ghost-Forged Gauntlets>_
Reach Level 15 Pandaria Blacksmithing |skill Pandaren Blacksmithing,15
step
talk Cullen Hammerbrow##64085
|tip Downstairs inside the building.
|tip He walks around the area.
learn Ghost-Forged Shoulders##122577 |goto 71.70,51.58
step
Open Your Blacksmithing Crafting Panel:
_<Create 15 Ghost-Forged Shoulders>_
Reach Level 30 Pandaria Blacksmithing |skill Pandaren Blacksmithing,30
step
talk Cullen Hammerbrow##64085
|tip Downstairs inside the building.
|tip He walks around the area.
learn Spiritguard Shield##122636 |goto 71.70,51.58
step
Open Your Blacksmithing Crafting Panel:
_<Create 5 Spiritguard Shield>_
Reach Level 35 Pandaria Blacksmithing |skill Pandaren Blacksmithing,35
step
talk Cullen Hammerbrow##64085
|tip Downstairs inside the building.
|tip He walks around the area.
learn Ghost-Forged Helm##122576 |goto 71.70,51.58
step
Open Your Blacksmithing Crafting Panel:
_<Create 20 Ghost-Forged Helm>_
Reach Level 50 Pandaria Blacksmithing |skill Pandaren Blacksmithing,50
step
talk Cullen Hammerbrow##64085
|tip Downstairs inside the building.
|tip He walks around the area.
buy 1 Plans: Contender's Revenant Belt##84158 |goto 71.70,51.58
|only if skill("Pandaren Blacksmithing") < 75
step
use the Plans: Contender's Revenant Belt##84158
learn Contender's Revenant Belt##122623
step
Open Your Blacksmithing Crafting Panel:
_<Create 25 Contender's Revenant Belt>_
Reach Level 75 Pandaria Blacksmithing |skill Pandaren Blacksmithing,75
step
_Congratulations!_
You Reached 75 Pandaria Blacksmithing Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Leveling Guides\\Mists of Pandaria\\Fishing 525-600 Leveling Guide",{
author="support@zygorguides.com",
description="This guide will walk you through leveling your Pandaria Fishing skill from 1-75.",
condition_end=function() return skill('Pandaria Fishing') >= 75 end,
condition_suggested=function() return skill('Pandaria Fishing') > 0 and skill('Pandaria Fishing') < 75 and level >= 85 end,
},[[
step
label "fish_525-600"
#include "trainer_Fishing"
skillmax Fishing,600
step
Equip your Strong Fishing Pole |use Strong Fishing Pole##6365
Use the Aquadynamic Fish Attractor to temporarily increase your Fishing skill, to make it easier to catch fish |use Aquadynamic Fish Attractor##6533
|tip If your Aquadynamic Fish Attractor Fishing skill boost expires, you can buy more Aquadynamic Fish Attractors, Baubles, or Nightcrawlers to help you fish.  If the Aquadynamic Fish Attractors are not available, you can buy Baubles or Nightcrawlers to boost your Fishing skill.
Stand on the end of this wooden dock
Use your Fishing skill to fish in the water |cast Fishing##131474
Get your Fishing skill to level 600 |skill Fishing,600 |goto Stormwind City,55.0,69.7
step
label "fish_600"
Congratulations, you are now a Zen Master Fisherman!
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Leveling Guides\\Mists of Pandaria\\Pandaria Herbalism 1-75",{
author="support@zygorguides.com",
description="This guide will walk you through leveling your Pandaria Herbalism skill from 1-75.",
condition_end=function() return skill('Pandaria Herbalism') >= 75 end,
condition_suggested=function() return skill('Pandaria Herbalism') > 0 and skill('Pandaria Herbalism') < 75 and level >= 78 end,
},[[
step
talk Orchard Keeper Li Mei##67025
Train Pandaria Herbalism |skillmax Pandaria Herbalism,75 |goto The Jade Forest/0 45.51,86.05
|tip You must be at least level 78.
step
map Valley of the Four Winds/0
path follow smart; loop on; ants curved; dist 30
path	84.25,28.72	80.77,35.08	76.82,37.07	72.76,40.45	71.84,47.89
path	70.41,52.47	66.85,59.48	63.12,65.25	59.51,69.39	55.72,70.75
path	52.13,67.94	49.42,67.53	42.68,67.97	37.80,63.45	34.03,64.32
path	31.00,67.56	30.11,71.30	31.37,76.24	25.69,79.32	22.85,70.29
path	23.31,62.97	25.88,57.19	29.20,52.04	31.27,51.51	34.32,47.66
path	34.62,44.76	34.33,39.09	35.99,33.89	37.08,30.85	39.81,33.17
path	43.05,36.81	45.44,39.36	47.69,34.44	47.02,30.50	49.62,27.65
path	52.04,27.52	53.48,27.58	55.12,31.96	55.15,36.80	55.58,40.56
path	58.06,44.14	60.21,44.03	60.26,41.05	60.71,38.10	59.88,33.72
path	62.02,31.97	67.56,26.23	70.66,25.13	73.95,24.19	78.36,22.08
path	82.35,21.48
Collect herbs along the path
|tip Make sure you enable "Find Herbs" in the tracking menu on the minimap.
collect Green Tea Leaf##72234 |n
Reach 75 Pandaria Herbalism |skill Pandaria Herbalism,75
step
_Congratulations!_
You Reached 75 Pandaria Herbalism Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Leveling Guides\\Mists of Pandaria\\Pandaria Mining 1-75",{
author="support@zygorguides.com",
description="This guide will walk you through leveling your Pandaria Mining skill from 1-75.",
condition_end=function() return skill('Pandaria Mining') >= 75 end,
condition_suggested=function() return skill('Pandaria Mining') > 0 and skill('Pandaria Mining') < 75 and level >= 78 end,
},[[
step
talk Rockseeker Guo##67024
Train Pandaria Mining |skillmax Pandaria Mining,75 |goto The Jade Forest/0 44.97,85.91
|tip You must be at least level 78.
step
map Dread Wastes/0
path follow smart; loop on; ants curved; dist 30
path	57.49,14.06	55.81,17.08	54.38,19.53	52.23,20.51	50.71,21.37
path	49.81,24.40	49.49,26.69	46.99,26.44	45.03,25.92	43.76,28.11
path	43.89,30.86	45.60,33.15	48.31,36.52	47.25,38.99	46.27,41.47
path	47.27,43.08	49.19,44.88	50.85,44.37	52.17,43.10	54.43,45.83
path	56.22,47.60	58.85,46.44	60.98,48.04	63.10,48.13	65.50,49.59
path	67.62,48.97	67.26,45.82	67.05,42.57	68.26,39.41	70.14,37.17
path	71.46,33.55	71.77,30.02	70.53,24.75	69.50,21.19	68.67,17.19
path	67.71,13.20	64.79,12.60	62.17,13.69
Mine along the path
|tip Make sure you enable "Find Minerals" in the tracking menu on the minimap.
Reach 75 Pandaria Mining |skill Pandaria Mining,75
step
_Congratulations!_
You Reached 75 Pandaria Mining Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Leveling Guides\\Mists of Pandaria\\Pandaria Tailoring 1-75",{
author="support@zygorguides.com",
description="This guide will walk you through leveling your Pandaria Tailoring skill from 1-75.",
condition_end=function() return skill('Pandaria Tailoring') >= 75 end,
condition_suggested=function() return skill('Tailoring') > 0 and skill('Pandaria Tailoring') < 75 and level >= 78 end,
},[[
step
talk Silkmaster Tsai##57405
Train Pandaria Tailoring |skillmax Pandaria Tailoring,75 |goto Valley of the Four Winds/0 62.67,59.75
|tip You must be at least level 78.
step
collect 390 Windwool Cloth##72988
|tip Farm them from Humanoid mobs in Pandaria or purchase them from the Auction House.
|only if skill("Pandaria Tailoring") < 74
step
talk Silkmaster Tsai##57405
learn Bolt of Windwool Cloth##125551 |goto Valley of the Four Winds/0 62.67,59.75
step
Open Your Tailoring Crafting Panel:
_<Create 225 Bolts of Windwool Cloth>_
|tip Make them all, you will need them later.
Reach Level 10 Pandaria Tailoring |skill Pandaria Tailoring,10
step
talk Healer Nan##64482
|tip Inside the building.
learn Windwool Bandage##125551 |goto Shrine of Seven Stars/1 45.85,63.00
step
Open Your Tailoring Crafting Panel:
_<Create 15 Windwool Bandage>_
|tip You may need to make more.
Reach Level 25 Pandaria Tailoring |skill Pandaria Tailoring,25
step
talk Healer Nan##64482
|tip Inside the building.
learn Heavy Windwool Bandage##102698 |goto 45.85,63.00
step
Open Your Tailoring Crafting Panel:
_<Create 35 Heavy Windwool Bandage>_
|tip You may need to make more.
Reach Level 60 Pandaria Tailoring |skill Pandaria Tailoring,60
step
collect 1 Spirit of Harmony##76061
|tip These are created by combining 10 Motes of Harmony.
|tip They drop randomly from mobs and Fishing casts in Pandaria.
|tip You can also purchase them from the Auction House.
|only if skill("Pandaria Tailoring") < 75
step
talk Raishen the Needle##64052
buy 1 Pattern: Contender's Satin Cuffs##86365 |goto 64.60,44.18
|only if skill("Pandaria Tailoring") < 75
step
use the Pattern: Contender's Satin Cuffs##86365
learn Contender's Satin Cuffs##125544
step
Open Your Tailoring Crafting Panel:
_<Create 15 Contender's Satin Cuffs>_
Reach Level 75 Pandaria Tailoring |skill Pandaria Tailoring,75
step
_Congratulations!_
You Reached 75 Pandaria Tailoring Skill.
]])
