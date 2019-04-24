local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("PetsABFA") then return end
ZGV.CommonPets=true
ZygorGuidesViewer.GuideMenuTier = "BFA"
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Abyssal Eel",{
author="support@zygorguides.com",
description="This pet can be purchased from Madeline Netley in Stormsong Valley for 75 Polished Pet Charms.",
model={78239},
pet=2403,
},[[
step
collect 75 Polished Pet Charm##163036
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
only if not haspet(2403)
step
Enter the building |goto Stormsong Valley/0 31.45,67.08 < 5 |walk
talk Madeline Netley##136674
|tip Inside the building.
buy 1 Abyssal Eel##163489 |goto 31.58,67.34
only if not haspet(2403)
step
use the Abyssal Eel##163489
Collect the "Abyssal Eel" Battle Pet |learnpet Abyssal Eel##143175
step
_Congratulations!_
You Collected an "Abyssal Eel" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Barnacled Hermit Crab",{
author="support@zygorguides.com",
description="This pet can be purchased from Madeline Netley in Stormsong Valley for 50 Polished Pet Charms.",
model={75381},
pet=2425,
},[[
step
collect 50 Polished Pet Charm##163036
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
only if not haspet(2425)
step
Enter the building |goto Stormsong Valley/0 31.45,67.08 < 5 |walk
talk Madeline Netley##136674
|tip Inside the building.
buy 1 Barnacled Hermit Crab##163511 |goto 31.58,67.34
only if not haspet(2425)
step
use the Barnacled Hermit Crab##163511
Collect the "Barnacled Hermit Crab" Battle Pet |learnpet Barnacled Hermit Crab##143206
step
_Congratulations!_
You Collected a "Barnacled Hermit Crab" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Barrier Hermit",{
author="support@zygorguides.com",
description="This pet can be captured in the wild from the Isle of Fangs or Tusk Isle in Southern Zuldazar",
model={87603},
pet=2385,
},[[
step
clicknpc Barrier Hermit##143044
Weaken and capture the Barrier Hermit in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Barrier Hermit" Battle Pet |learnpet Barrier Hermit##143044 |goto Zuldazar/0 66.83,71.92
step
_Congratulations!_
You Collected a "Barrier Hermit" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Boghopper",{
author="support@zygorguides.com",
description="This pet can be captured in the wild from bog-type areas found in eastern and western Nazmir.",
model={1924},
pet=2398,
},[[
step
clicknpc Boghopper##143055
Weaken and capture the Boghopper in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Boghopper" Battle Pet |learnpet Boghopper##143055 |goto Nazmir/0 77.36,45.67
step
_Congratulations!_
You Collected a "Boghopper" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Bucketshell",{
author="support@zygorguides.com",
description="This pet can be collected by reaching Honor Level 400 in PvP activities.",
condition_valid=function() return Horde end,
condition_valid_msg="This pet must be collected on a Horde character.",
model={87998},
pet=2479,
},[[
step
talk Auctioneer Fitch##8719
|tip Inside the building.
buy Bucketshell##163974 |goto Stormwind City/0 61.12,70.61 |condition haspet(2479)
|tip This pet can only be purchased from an Horde NPC.
|tip If you are Alliance you can purchase it from the Auction House.
step
use Bucketshell##163974
Collect the "Bucketshell" Battle Pet |learnpet Bucketshell##144004
step
_Congratulations!_
You Collected a "Bucketshell" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Coastal Bounder",{
author="support@zygorguides.com",
description="This pet can be captured in the wild from northwestern Nazmir or around Boralus Harbor.",
model={1924},
pet=2400,
},[[
step
clicknpc Coastal Bounder##143057
Weaken and capture the Coastal Bounder in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Coastal Bounder" Battle Pet |learnpet Coastal Bounder##143057 |goto Tiragarde Sound/0 80.83,23.46
step
_Congratulations!_
You Collected a "Coastal Bounder" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Coastal Scuttler",{
author="support@zygorguides.com",
description="This pet can be captured in the wild along the coast of Falconhurst in Drustvar.",
model={32791},
pet=2386,
},[[
step
clicknpc Coastal Scuttler##143045
Weaken and capture the Coastal Scuttler in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Coastal Scuttler" Battle Pet |learnpet Coastal Scuttler##143045 |goto Drustvar/0 27.02,73.26
step
_Congratulations!_
You Collected a "Coastal Scuttler" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Cou'pa",{
author="support@zygorguides.com",
description="This pet can be purchased from Collector Kojo in Stormsong Valley for 200 Polished Pet Charms.\n\n"..
"_Requires Tortollan Seekers - Revered_",
model={81099},
pet=2427,
},[[
step
collect 200 Polished Pet Charm##163036
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
only if not haspet(2427)
step
talk Collector Kojo##135793
buy 1 Cou'pa##163513 |goto Stormsong Valley/0 40.54,36.41
only if not haspet(2427)
step
use Cou'pa##163513
Collect the "Cou'pa" Battle Pet |learnpet Cou'pa##143209
step
_Congratulations!_
You Collected a "Cou'pa" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Crimson Frog",{
author="support@zygorguides.com",
description="This pet can be purchased from Nigel Rifthold in Drustvar for 100 Polished Pet Charms.",
model={81058},
pet=2424,
},[[
step
collect 100 Polished Pet Charm##163036
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
only if not haspet(2424)
step
label "Purchse_Crimson_Frog"
talk Nigel Rifthold##142197
|tip On the top of the hill in front of the treehouse.
If Nigel isn't here, click here |confirm |or |next "Unlock_Nigel_NPC"
buy 1 Crimson Frog##163510 |or |goto Drustvar/0 52.32,31.68
only if not haspet(2424)
step
use the Crimson Frog##163510
Collect the "Crimson Frog" Battle Pet |learnpet Crimson Frog##143205 |next "Unlocked_Crimson_Frog"
step
label "Unlock_Nigel_NPC"
talk Xun Xun Sweetflower##136269
buy 10 Tirasreli Gourmet Chocolate##155810 |goto 20.67,45.59
only if not haspet(2424)
step
Follow the path |goto 51.98,32.79 < 10 |only if walking
Enter the building |goto 52.40,31.57 < 5 |walk
click Adventurer's Society Loot Stash##278516 |goto 52.45,31.42
|tip Inside the building.
|tip Click it twice.
This will unlock Nigel Rifthold as a pet vendor
Click here to buy the Crimson Frog |confirm |next "Purchse_Crimson_Frog"
only if not haspet(2424)
step
label "Unlocked_Crimson_Frog"
_Congratulations!_
You Collected a "Crimson Frog" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Crimson Octopode",{
author="support@zygorguides.com",
description="This pet is purchased from Captain Zen'taga in Dazar'alor for 100 Seafarer's Dubloon.",
model={88023},
pet=2562,
},[[
step
earn 100 Seafarer's Dubloon##1710
|tip These are collected from Island Expeditions.
step
talk Captain Klarisa##148922
buy Crimson Octopode##166500 |goto Boralus/0 66.05,32.32 |condition haspet(2562)
step
use the Crimson Octopode##166500
Collect the "Crimson Octopode" Battle Pet |learnpet Crimson Octopode##148997
step
_Congratulations!_
You Collected the "Crimson Octopode" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Elusive Skimmer",{
author="support@zygorguides.com",
description="This pet can be captured in the wild around water along the southern bank of Nazmir.",
model={44656},
pet=2389,
},[[
step
clicknpc Elusive Skimmer##143048
Weaken and capture the Elusive Skimmer in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Elusive Skimmer" Battle Pet |learnpet Elusive Skimmer##143048 |goto Nazmir/0 37.85,82.25
step
_Congratulations!_
You Collected an "Elusive Skimmer" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Freshwater Crawler",{
author="support@zygorguides.com",
description="This pet can be captured in the wild along the river east of Brennadam in Stormsong Valley.",
model={79014},
pet=2374,
},[[
step
clicknpc Freshwater Crawler##143033
Weaken and capture the Freshwater Crawler in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Freshwater Crawler" Battle Pet |learnpet Freshwater Crawler##143033 |goto Stormsong Valley/0 64.56,67.13
step
_Congratulations!_
You Collected a "Freshwater Crawler" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Freshwater Pincher",{
author="support@zygorguides.com",
description="This pet can be purchased from Madeline Netley in Stormsong Valley for 250 Polished Pet Charms.",
model={76624},
pet=2423,
},[[
step
collect 250 Polished Pet Charm##163036
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
only if not haspet(2423)
step
Enter the building |goto Stormsong Valley/0 31.45,67.07 < 5 |walk
talk Madeline Netley##136674
|tip Inside the building.
buy 1 Freshwater Pincher##163509 |goto 31.58,67.34
only if not haspet(2423)
step
use the Freshwater Pincher##163509
Collect the "Freshwater Pincher" Battle Pet |learnpet Freshwater Pincher##143204
step
_Congratulations!_
You Collected a "Freshwater Pincher" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Hermit Crab",{
author="support@zygorguides.com",
description="This pet can be captured in the wild along the coast of Vol'dun, Tiragarde Sound, and certain areas of Stormsong Valley.",
model={79014},
pet=2399,
},[[
step
clicknpc Hermit Crab##143056
Weaken and capture the Hermit Crab in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Hermit Crab" Battle Pet |learnpet Hermit Crab##143056 |goto Vol'dun/0 39.37,27.03
step
_Congratulations!_
You Collected a "Hermit Crab" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Inky",{
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
model={88034},
pet=2461,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143968
|tip Queue for Island Expeditions and complete them until you get Inky as a reward.
collect 1 Inky##163802 |goto Boralus/0 66.76,33.23
only if not haspet(2461)
step
use Inky##163802
Collect the "Inky" Battle Pet |learnpet Inky##143799
step
_Congratulations!_
You Collected an "Inky" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Inland Croaker",{
author="support@zygorguides.com",
description="This pet can be captured in the wild around inland waterways in Tiragarde Sound.",
model={78835},
pet=2382,
},[[
step
clicknpc Inland Croaker##143041
Weaken and capture the Inland Croaker in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Inland Croaker" Battle Pet |learnpet Inland Croaker##143041 |goto Tiragarde Sound/0 61.88,17.48
step
_Congratulations!_
You Collected an "Inland Croaker" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Juvenile Brineshell",{
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
model={88007},
pet=2453,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143968
|tip Queue for Island Expeditions and complete them until you get a Juvenile Brineshell as a reward.
collect 1 Juvenile Brineshell##163821 |goto Boralus/0 66.76,33.23
only if not haspet(2453)
step
use the Juvenile Brineshell##163821
Collect the "Juvenile Brineshell" Battle Pet |learnpet Juvenile Brineshell##143819
step
_Congratulations!_
You Collected a "Juvenile Brineshell" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Lost Platysaur",{
author="support@zygorguides.com",
description="This pet can be purchased from Tricky Nick in Tiragarde Sound for 100,000 gold.",
model={83685},
pet=2430,
},[[
step
Follow the path |goto Boralus/0 54.68,49.49 < 7 |only if walking
Run down the stairs |goto 54.81,47.84 < 7 |only if walking
talk Tricky Nick##142691
buy 1 Lost Platysaur##163568 |goto 56.77,47.07
|tip It costs 100,000 Gold.
only if not haspet(2430)
step
use the Lost Platysaur##163568
Collect the "Lost Platysaur" Battle Pet |learnpet Lost Platysaur##143360
step
_Congratulations!_
You Collected a "Lost Platysaur" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Octopode Fry",{
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
model={88017},
pet=2462,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143968
|tip Queue for Island Expeditions and complete them until you get an Octopode Fry as a reward.
collect 1 Octopode Fry##163801 |goto Boralus/0 66.76,33.23
only if not haspet(2462)
step
use the Octopode Fry##163801
Collect the "Octopode Fry" Battle Pet |learnpet Octopode Fry##143798
step
_Congratulations!_
You Collected an "Octopode Fry" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\River Frog",{
author="support@zygorguides.com",
description="This pet can be captured in the wild around areas of water in northern Stormsong Valley.",
model={87594},
pet=2373,
},[[
step
clicknpc River Frog##143032
Weaken and capture the River Frog in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "River Frog" Battle Pet |learnpet River Frog##143032 |goto Stormsong Valley/0 64.80,43.86
step
_Congratulations!_
You Collected a "River Frog" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\River Otter",{
author="support@zygorguides.com",
description="This pet can be captured in the wild around areas of water in northern Stormsong Valley "..
"and just northwest of Arom's Stand in Drustvar.",
model={41326},
pet=2378,
},[[
step
clicknpc River Otter##143037
Weaken and capture the River Otter in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "River Otter" Battle Pet |learnpet River Otter##143037 |goto Stormsong Valley/0 60.87,36.26
step
_Congratulations!_
You Collected a "River Otter" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Sandyback Crawler",{
author="support@zygorguides.com",
description="This pet can be captured in the wild around the channel of water in eastern Stormsong Valley "..
"or along the coast east of Bridgeport in Tiragarde Sound.",
model={85797},
pet=2377,
},[[
step
clicknpc Sandyback Crawler##143036
Weaken and capture the Sandyback Crawler in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Sandyback Crawler" Battle Pet |learnpet Sandyback Crawler##143036 |goto Stormsong Valley/0 64.83,51.97
step
_Congratulations!_
You Collected a "Sandyback Crawler" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Scuttle",{
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
model={87999},
pet=2445,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143968
|tip Queue for Island Expeditions and complete them until you get Scuttle as a reward.
collect 1 Scuttle##163797 |goto Boralus/0 66.76,33.23
only if not haspet(2445)
step
use Scuttle##163797
Collect the "Scuttle" Battle Pet |learnpet Scuttle##143794
step
_Congratulations!_
You Collected a "Scuttle" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Shack Crab",{
author="support@zygorguides.com",
description="This pet can be captured in the wild along certain coastal areas of Tiragarde Sound.",
model={79014},
pet=2381,
},[[
step
clicknpc Shack Crab##143040
Weaken and capture the Shack Crab in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Shack Crab" Battle Pet |learnpet Shack Crab##143040 |goto Tiragarde Sound/0 67.73,48.93
step
_Congratulations!_
You Collected a "Shack Crab" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Shadowback Crawler",{
author="support@zygorguides.com",
description="This pet can be captured in the wild along the coast southwest of Shrine of the Storm in Stormsong Valley.",
model={32791},
pet=2372,
},[[
step
clicknpc Shadowback Crawler##143031
Weaken and capture the Shadowback Crawler in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Shadowback Crawler" Battle Pet |learnpet Shadowback Crawler##143031 |goto Stormsong Valley/0 70.13,31.00
step
_Congratulations!_
You Collected a "Shadowback Crawler" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Sir Snips",{
author="support@zygorguides.com",
description="This pet can be collected by reaching Honor Level 400 in PvP activities.",
model={87997},
pet=2478,
},[[
step
Run down the stairs |goto Boralus/0 67.35,16.29 < 10 |only if walking
Continue down the stairs |goto 66.37,19.90 < 10 |only if walking
Follow the road |goto 65.16,20.89 < 15 |only if walking
Run down the stairs |goto 63.05,20.40 < 10 |only if walking
Run down the stairs |goto 58.74,23.36 < 5 |only if walking
Enter the building |goto 56.89,26.88 < 5 |only if walking
talk Marshal Frazer##145838
|tip Inside the building.
buy Sir Snips##163975 |goto 56.43,27.25 |condition haspet(2478)
|tip You will need Honor Level 400 in order to purchase this.
step
use Sir Snips##163975
Collect the "Sir Snips" Battle Pet |learnpet Sir Snips##144005
step
_Congratulations!_
You Collected a "Sir Snips" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Slippy",{
author="support@zygorguides.com",
description="This pet can be crafted with the Alchemy profession.",
model={88024},
pet=2475,
},[[
step
This pet is created with the Alchemy Profession, with the _"Transmute: Meat to Pet"_ ability
|tip You will need level 50 Battle for Azeroth Alchemy to create this.
|tip You'll need 10 Meaty Haunch, 10 Stringy Loins and 5 Blood-Stained Bone to create this.
|tip After crafting a Grumbling Sac, it will turn into a Quivering Sac after 7 days.
collect Quivering Sac##160325 |condition haspet(2475)
step
use the Quivering Sac##160325
collect Ball of Tentacles##163858 |condition haspet(2475)
step
use the Ball of Tentacles##163858
Collect the "Slippy" Battle Pet |learnpet Slippy##143959
step
_Congratulations!_
You Collected a "Slippy" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Snapper",{
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
model={81098},
pet=2472,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143968
|tip Queue for Island Expeditions and complete them until you get Snapper as a reward.
collect 1 Snapper##163816 |goto Boralus/0 66.76,33.23
only if not haspet(2472)
step
use Snapper##163816
Collect the "Snapper" Battle Pet |learnpet Snapper##143814
step
_Congratulations!_
You Collected a "Snapper" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Sparkleshell Sandcrawler",{
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
model={88000},
pet=2446,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143968
|tip Queue for Island Expeditions and complete them until you get a Sparkleshell Sandcrawler as a reward.
collect 1 Sparkleshell Sandcrawler##163803 |goto Boralus/0 66.76,33.23
only if not haspet(2446)
step
use the Sparkleshell Sandcrawler##163803
Collect the "Sparkleshell Sandcrawler" Battle Pet |learnpet Sparkleshell Sandcrawler##143801
step
_Congratulations!_
You Collected a "Sparkleshell Sandcrawler" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Spawn of Krag'wa",{
author="support@zygorguides.com",
description="This pet is collected from the Conclave of the Chosen encounter in the Battle for Dazar'alor raid."..
"It is available to Mythic difficulty only.",
model={77989},
pet=2528,
},[[
step
Kill the Conclave of the Chosen
collect Spawn of Krag'wa##165848 |condition haspet(2528)
|tip If it didn't drop, you will need to wait until the raid resets or with another character.
step
use the Spawn of Krag'wa##165848
Collect the "Spawn of Krag'wa" Battle Pet |learnpet Spawn of Krag'wa##147585
step
_Congratulations!_
You Collected the "Spawn of Krag'wa" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Swamp Toad",{
author="support@zygorguides.com",
description="This pet can be purchased from Shoak in Nazmir for 200 Polished Pet Charms.",
model={76761},
pet=2419,
},[[
step
collect 200 Polished Pet Charm##163036
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
only if not haspet(2419)
step
talk Shoak##132011
buy 1 Toad in a Box##163505 |goto Nazmir/0 66.91,42.06
only if not haspet(2419)
step
use the Toad in a Box##163505
Collect the "Swamp Toad" Battle Pet |learnpet Swamp Toad##143199
step
_Congratulations!_
You Collected a "Swamp Toad" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Tonguelasher",{
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
model={76763},
pet=2559,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get a Tonguelasher as a reward.
collect Tonguelasher##166495 |condition haspet(2559)
step
use the Tonguelasher##166495
Collect the "Tonguelasher" Battle pet |learnpet Tonguelasher##148990
step
_Congratulations!_
You Collected the "Tonguelasher" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Tottle",{
author="support@zygorguides.com",
description="This pet is awarded upon purchase of the Battle for Azeroth Collector's Edition.",
model={87401},
pet=2143,
},[[
step
This is an award from buying the Collector's Edition of Battle for Azeroth
collect 1 Tottle##153541
|tip It will arrive in your mail.
only if not haspet(2143)
step
use Tottle##153541
Collect the "Tottle" Battle Pet |learnpet Tottle##129049
step
_Congratulations!_
You Collected a "Tottle" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Tragg the Curious",{
author="support@zygorguides.com",
description="This pet can be purchased from Provisioner Lija in Nazmir for 75 Polished Pet Charms."..
"_Requires Talanji's Expedition - Revered_",
condition_valid=function() return Horde end,
condition_valid_msg="This pet must be purchased on a Horde character or from the Auction House.",
model={88468},
pet=2415,
},[[
step
This pet can only be purchased from a Horde NPC
If you are Alliance you can purchase it from the Auction House
talk Auctioneer Fitch##8719
|tip Inside the building.
collect 1 Tragg the Curious##163501 |goto Stormwind City/0 61.12,70.62
only if not haspet(2415)
step
use Tragg the Curious##163501
Collect the "Tragg the Curious" Battle Pet |learnpet Tragg the Curious##143195
step
_Congratulations!_
You Collected a "Tragg the Curious" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Violet Abyssal Eel",{
author="support@zygorguides.com",
description="This pet can be collected through Storm's Wake Paragon reputation boxes."..
"You cannot obtain this by normal means as a horde character.",
model={78243},
pet=2569,
},[[
step
Reach Exalted Reputation with the Storm's Wake |condition rep('Storm\'s Wake')>=Exalted
|tip Use the Battle for Azeroth "World Quests" guides to complete "Storm's Wake" world quests.
|tip Complete Missions at your mission table that reward reputation with the Storm's Wake.
step
talk Provisioner Fray##135808
accept Supplies from Storm's Wake##54457
|tip This will appear once you reach 10000 reputation past exalted with the "Proudmoore Admiralty".
collect Storm's Wake Supplies##166294 |goto Stormsong Valley/0 59.2,69.4 |condition haspet(2569)
step
use the Storm's Wake Supplies##166294
collect Violet Abyssal Eel##149376 |condition haspet(2569)
|tip This is a random drop.
step
use the Violet Abyssal Eel##149376
Collect the "Violet Abyssal Eel" Battle Pet |learnpet Violet Abyssal Eel##149376
step
_Congratulations!_
You Collected the "Violet Abyssal Eel" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Young Sand Sifter",{
author="support@zygorguides.com",
description="This pet can be captured in the wild along coastal areas of Nazmir.",
model={79015},
pet=2392,
},[[
step
clicknpc Young Sand Sifter##143050
Weaken and capture the Young Sand Sifter in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Young Sand Sifter" Battle Pet |learnpet Young Sand Sifter##143050 |goto Nazmir/0 31.03,28.15
step
_Congratulations!_
You Collected a "Young Sand Sifter" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Baby Crawg",{
author="support@zygorguides.com",
description="This pet can be crafted with the Alchemy profession.",
model={83653},
pet=2477,
},[[
step
This pet is created with the Alchemy Profession, with the _"Transmute: Meat to Pet"_ ability
|tip You will need level 50 Battle for Azeroth Alchemy to create this.
|tip You'll need 10 Meaty Haunch, 10 Stringy Loins and 5 Blood-Stained Bone to create this.
collect Quivering Sac##160325 |n
use the Quivering Sac##160325
collect Baby Crawg##163859 |condition haspet(2477)
step
use the Baby Crawg##163859
Collect the "Baby Crawg" Battle Pet |learnpet Baby Crawg##143374
step
_Congratulations!_
You Collected a "Baby Crawg" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Baby Stonehide",{
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
model={66487},
pet=2551,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get Baby Stonehide as a reward.
collect Baby Stonehide##166486 |condition haspet(2551)
step
use Baby Stonehide##166486
Collect the "Baby Stonehide" Battle Pet |learnpet Baby Stonehide##148976
step
_Congratulations!_
You Collected a "Baby Stonehide" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Baby Zandalari Raptor",{
author="support@zygorguides.com",
description="This pet is obtained via pet battle.",
model={90027},
pet=2537,
},[[
step
clicknpc Baby Zandalari Raptor##148517
Weaken and capture the Baby Zandalari Raptor in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Baby Zandalari Raptor" Battle Pet |learnpet Spectral Raven##148517 |goto Zuldazar/0 70.93,40.79
step
_Congratulations!_
You Collected a "Baby Zandalari Raptor" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Bloodfever Tarantula",{
author="support@zygorguides.com",
description="This pet can be captured in the wild in the western portion of Nazmir.",
model={45908},
pet=2388,
},[[
step
clicknpc Bloodfever Tarantula##143047
Weaken and capture the Bloodfever Tarantula in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Bloodfever Tarantula" Battle Pet |learnpet Bloodfever Tarantula##143047 |goto Nazmir/0 36.47,53.81
step
_Congratulations!_
You Collected a "Bloodfever Tarantula" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Bloodstone Tunneler",{
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
model={88005},
pet=2451,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143968
|tip Queue for Island Expeditions and complete them until you get a Bloodstone Tunneler as a reward.
collect 1 Bloodstone Tunneler##163818 |goto Boralus/0 66.76,33.23
only if not haspet(2451)
step
use the Bloodstone Tunneler##163818
Collect the "Bloodstone Tunneler" Battle Pet |learnpet Bloodstone Tunneler##143816
step
_Congratulations!_
You Collected a "Bloodstone Tunneler" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Child of Jani",{
author="support@zygorguides.com",
description="This pet must be purchased on a Horde character or from the Auction House.",
model={78161},
pet=2418,
},[[
step
This pet can only be purchased from a Horde NPC
If you are Alliance you can purchase it from the Auction House
talk Auctioneer Fitch##8719
|tip Inside the building.
collect 1 Child of Jani##163504 |goto Stormwind City/0 61.12,70.62
only if not haspet(2418)
step
use the Child of Jani##163504
Collect the "Child of Jani" Battle Pet |learnpet Child of Jani##143198
step
_Congratulations!_
You Collected a "Child of Jani" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Craghoof Kid",{
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
model={88002},
pet=2448,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143968
|tip Queue for Island Expeditions and complete them until you get a Craghoof Kid as a reward.
collect 1 Craghoof Kid##163805 |goto Boralus/0 66.76,33.23
only if not haspet(2448)
step
use the Craghoof Kid##163805
Collect the "Craghoof Kid" Battle Pet |learnpet Craghoof Kid##143803
step
_Congratulations!_
You Collected a "Craghoof Kid" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Dart",{
author="support@zygorguides.com",
description="This pet is awarded from the quest \"It seems You've Made a Friend\" in Nazmir.",
condition_valid=function() return Horde end,
condition_valid_msg="This pet must be collected on a Horde character or purchased from the Auction House.",
model={81984},
pet=2157,
},[[
step
talk Auctioneer Fitch##8719
|tip Inside the building.
collect 1 Dart##156566 |goto Stormwind City/0 61.12,70.62 |condition haspet(2157)
|tip This pet must be collected on a Horde character.
|tip If you are Alliance you can purchase it from the Auction House.
step
use Dart##156566
Collect the "Dart" Battle Pet |learnpet Dart##131644
step
_Congratulations!_
You Collected a "Dart" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Dasher",{
author="support@zygorguides.com",
description="This pet is dropped by N'chala the Egg Thief in Zuldazar.",
model={90028},
pet=2538,
},[[
step
kill N'chala the Egg Thief##149147
|tip N'chala is a rare that walks around this area.
|tip You may have to wait for it to respawn.
collect 1 Zandalari Raptor Egg##166345 |goto Zuldazar/0 69.64,36.91
only if not haspet(2538)
step
use the Zandalari Raptor Egg##166345
Collect the "Dasher" Battle Pet |learnpet Dasher##148520
step
_Congratulations!_
You Collected a "Dasher" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Deathsting Scorpid",{
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
model={88040},
pet=2464,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143968
|tip Queue for Island Expeditions and complete them until you get a Deathsting Scorpid as a reward.
collect 1 Deathsting Scorpid##163809 |goto Boralus/0 66.76,33.23
only if not haspet(2464)
step
use the Deathsting Scorpid##163809
Collect the "Deathsting Scorpid" Battle Pet |learnpet Deathsting Scorpid##143807
step
_Congratulations!_
You Collected a "Deathsting Scorpid" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Direhorn Hatchling",{
author="support@zygorguides.com",
description="This pet is a reward from a rare Kul Tiran Archaeology solve.",
model={86484},
pet=2197,
},[[
step
collect Intact Direhorn Egg##161080 |condition haspet(2197)
|tip This is gathered with Kul Tiran Archaeology.
|tip It will be a rare solve, requiring 185 Zandalari Fragments.
|tip You can also buy this from the Auction House.
step
use the Intact Direhorn Egg##161080
Collect the "Direhorn Hatchling" Battle Pet |learnpet Direhorn Hatchling##139744
step
_Congratulations!_
You Collected a "Direhorn Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Drustvar Piglet",{
author="support@zygorguides.com",
description="This pet can be purchased from Nigel Rifthold in Drustvar for 75 Polished Pet Charms.",
model={27682},
pet=2406,
},[[
step
collect 75 Polished Pet Charm##163036
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
only if not haspet(2406)
step
label "Purchse_Drustvar_Piglet"
talk Nigel Rifthold##142197
|tip On the top of the hill in front of the treehouse.
If Nigel isn't here, click here |confirm |or |next "Unlock_Nigel_NPC"
buy 1 Drustvar Piglet##163492 |or |goto Drustvar/0 52.32,31.68
only if not haspet(2406)
step
use the Drustvar Piglet##163492
Collect the "Drustvar Piglet" Battle Pet |learnpet Drustvar Piglet##143178 |next "Unlocked_Drustvar_Piglet"
step
label "Unlock_Nigel_NPC"
talk Xun Xun Sweetflower##136269
buy 10 Tirasreli Gourmet Chocolate##155810 |goto 20.67,45.59
only if not haspet(2406)
step
Follow the path |goto 51.98,32.79 < 10 |only if walking
Enter the building |goto 52.40,31.57 < 5 |walk
click Adventurer's Society Loot Stash##278516 |goto 52.45,31.42
|tip Inside the building.
|tip Click it twice.
This will unlock Nigel Rifthold as a pet vendor
Click here to buy the Drustvar Piglet |confirm |next "Purchse_Drustvar_Piglet"
only if not haspet(2406)
step
label "Unlocked_Drustvar_Piglet"
_Congratulations!_
You Collected a "Drustvar Piglet" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Fuzzy Creepling",{
author="support@zygorguides.com",
description="This pet is dropped by Venomarus in the Arathi Highlands Warfront.",
model={87862},
pet=2432,
},[[
step
click Portal to Arathi Highlands |goto Boralus/0 66.19,24.73
|tip This portal will only be active while the Battle for Stromgarde Warfront is active.
Teleport to Arathi Highlands |goto Arathi Highlands/0 21.58,65.14 < 10 |c |noway
only if not haspet(2432)
step
kill Venomarus##142438
|tip It walks around this area.
collect 1 Fuzzy Creepling##163648 |goto 57.15,53.67
only if not haspet(2432)
step
use the Fuzzy Creepling##163648
Collect the "Fuzzy Creepling" Battle Pet |learnpet Fuzzy Creepling##143499
step
_Congratulations!_
You Collected a "Fuzzy Creepling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Guardian Cobra Hatchling",{
author="support@zygorguides.com",
description="This pet is awarded from the quest \"My Hungry Neighbor\" in Vol'dun.",
condition_valid=function() return Horde end,
condition_valid_msg="This pet must be collected on a Horde character or purchased from the Auction House.",
model={86229},
pet=2190,
},[[
step
talk Auctioneer Fitch##8719
|tip Inside the building.
collect 1 Snake Charmer's Flute##160847 |goto Stormwind City/0 61.12,70.62 |condition haspet(2190)
|tip This pet must be collected on a Horde character.
|tip If you are Alliance you can purchase it from the Auction House.
step
use the Snake Charmer's Flute##160847
Collect the "Guardian Cobra Hatchling" Battle Pet |learnpet Guardian Cobra Hatchling##139252
step
_Congratulations!_
You Collected a "Guardian Cobra Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Kunchong Hatchling",{
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
model={88008},
pet=2454,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143968
|tip Queue for Island Expeditions and complete them until you get a Kunchong Hatchling as a reward.
collect 1 Kunchong Hatchling##163822 |goto Boralus/0 66.76,33.23
only if not haspet(2454)
step
use the Kunchong Hatchling##163822
Collect the "Kunchong Hatchling" Battle Pet |learnpet Kunchong Hatchling##143820
step
_Congratulations!_
You Collected a "Kunchong Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Lil' Ben'fon",{
author="support@zygorguides.com",
description="This pet must be purchased on a Horde character or from the Auction House.",
model={83641},
pet=2416,
},[[
step
This pet can only be purchased from a Horde NPC
If you are Alliance you can purchase it from the Auction House
talk Auctioneer Fitch##8719
|tip Inside the building.
collect 1 Lil' Ben'fon##163502 |goto Stormwind City/0 61.12,70.62
only if not haspet(2416)
step
use Lil' Ben'fon##163502
Collect the "Lil' Ben'fon" Battle Pet |learnpet Lil' Ben'fon##143196
step
_Congratulations!_
You Collected a "Lil' Ben'fon" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Lil' Tika",{
author="support@zygorguides.com",
description="This pet must be purchased on a Horde character or from the Auction House.",
model={86445},
pet=2196,
},[[
step
This pet can only be purchased from a Horde NPC
If you are Alliance you can purchase it from the Auction House
talk Auctioneer Fitch##8719
|tip Inside the building.
collect 1 Lil' Tika##161016 |goto Stormwind City/0 61.12,70.62
only if not haspet(2196)
step
use Lil' Tika##161016
Collect the "Lil' Tika" Battle Pet |learnpet Lil' Tika##139622
step
_Congratulations!_
You Collected a "Lil' Tika" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Lord Woofington",{
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
model={90182},
pet=2558,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get Lord Woofington as a reward.
collect Lord Woofington##166494 |condition haspet(2558)
step
use Lord Woofington##166494
Collect the "Lord Woofington" Battle Pet |learnpet Leatherwing Screecher##148989
step
_Congratulations!_
You Collected the "Lord Woofington" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Muskflank Calfling",{
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
model={88036},
pet=2458,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143968
|tip Queue for Island Expeditions and complete them until you get a Muskflank Calfling as a reward.
collect 1 Muskflank Calfling##163820 |goto Boralus/0 66.76,33.23
only if not haspet(2458)
step
use the Muskflank Calfling##163820
Collect the "Muskflank Calfling" Battle Pet |learnpet Muskflank Calfling##143818
step
_Congratulations!_
You Collected a "Muskflank Calfling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Poda",{
author="support@zygorguides.com",
description="This pet is awarded from the quest \"Missing Business\" in Vol'dun.",
condition_valid=function() return Horde end,
condition_valid_msg="This pet must be collected on a Horde character or purchased from the Auction House.",
model={86136},
pet=2188,
},[[
step
This pet can only be collected on a Horde character
If you are Alliance you can purchase it from the Auction House
talk Auctioneer Fitch##8719
|tip Inside the building.
collect 1 Poda##158464 |goto Stormwind City/0 61.12,70.62
only if not haspet(2188)
step
use Poda##158464
Collect the "Poda" Battle Pet |learnpet Poda##139073
step
_Congratulations!_
You Collected a "Poda" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Ragepeep",{
author="support@zygorguides.com",
description="This pet is dropped by Ragebeak in the Arathi Highlands Warfront.",
model={87903},
pet=2437,
},[[
step
click Portal to Arathi Highlands |goto Boralus/0 66.19,24.73
|tip This portal will only be active while the Battle for Stromgarde Warfront is active.
Teleport to Arathi Highlands |goto Arathi Highlands/0 21.58,65.14 < 10 |c |noway
only if not haspet(2437)
step
kill Ragebeak##142436
|tip It walks around this area.
collect 1 Angry Egg##163689 |goto 19.04,28.81
only if not haspet(2437)
step
use the Angry Egg##163689
Collect the "Ragepeep" Battle Pet |learnpet Ragepeep##143563
step
_Congratulations!_
You Collected a "Ragepeep" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Redridge Tarantula",{
author="support@zygorguides.com",
description="This pet comes from a the rarespawn Gnollfeaster in Redridge Mountains.",
model={89609},
pet=2525,
},[[
step
kill Gnollfeaster##147222
collect Redridge Tarantula Egg##165722 |goto Redridge Mountains/0 24.57,70.56 |condition haspet(2525)
step
use the Redridge Tarantula Egg##165722
Collect the "Redridge Tarantula" Battle Pet |learnpet Redridge Tarantula##147221
step
_Congratulations!_
You Collected a "Nightwreathed Watcher" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Scabby",{
author="support@zygorguides.com",
description="This pet is dropped by Yogursa in the Arathi Highlands Warfront.",
model={87895},
pet=2436,
},[[
step
click Portal to Arathi Highlands |goto Boralus/0 66.19,24.73
|tip This portal will only be active while the Battle for Stromgarde Warfront is active.
Teleport to Arathi Highlands |goto Arathi Highlands/0 21.58,65.14 < 10 |c |noway
only if not haspet(2436)
step
kill Yogursa##142440
|tip It walks around this area.
collect 1 Scabby##163684 |goto 14.55,37.60
only if not haspet(2436)
step
use Scabby##163684
Collect the "Scabby" Battle Pet |learnpet Scabby##143533
step
_Congratulations!_
You Collected a "Scabby" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Scritches",{
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
model={90183},
pet=2560,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get a Scritches as a reward.
collect Scritches##166498 |condition haspet(2560)
step
use Scritches##166498
Collect the "Scritches" Battle Pet |learnpet Scritches##148991
step
_Congratulations!_
You Collected the "Scritches" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Snort",{
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
model={88035},
pet=2459,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143968
|tip Queue for Island Expeditions and complete them until you get Snort as a reward.
collect 1 Snort##163819 |goto Boralus/0 66.76,33.23
only if not haspet(2459)
step
use Snort##163819
Collect the "Snort" Battle Pet |learnpet Snort##143817
step
_Congratulations!_
You Collected a "Snort" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Spawn of Merektha",{
author="support@zygorguides.com",
description="This pet is dropped by Merektha in the Temple of Sethraliss on Mythic difficulty.",
model={86088},
pet=2186,
},[[
step
Enter the Temple of Sethraliss on Mythic difficulty |goto Temple of Sethraliss/0 67.98,94.97 < 1000 |c
only if not haspet(2186)
step
kill Merektha##133384
|tip Use the "Temple of Sethraliss" dungeon guide to accomplish this.
collect 1 Viable Cobra Egg##160832
only if not haspet(2186)
step
You must wait 3 days for the egg to hatch:
use Viable Cobra Egg##160832
collect 1 Spawn of Merektha##160702
only if not haspet(2186)
step
use the Spawn of Merektha##160702
Collect the "Spawn of Merektha" Battle Pet |learnpet Spawn of Merektha##138964
step
_Congratulations!_
You Collected a "Spawn of Merektha" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Tanzil",{
author="support@zygorguides.com",
description="This pet must be purchased on a Horde character or from the Auction House.",
model={90030},
pet=2540,
},[[
step
This pet can only be purchased from a Horde NPC
If you are Alliance you can purchase it from the Auction House
talk Auctioneer Fitch##8719
|tip Inside the building.
collect 1 Tanzil##166347 |goto Stormwind City/0 61.12,70.62
only if not haspet(2540)
step
use Tanzil##166347
Collect the "Tanzil" Battle Pet |learnpet Tanzil##148525
step
_Congratulations!_
You Collected a "Tanzil" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Taptaf",{
author="support@zygorguides.com",
description="This pet is awarded from the quest \"Taptaf the Pig!\" in Drustvar.",
model={86488},
pet=2198,
},[[
step
Follow the path |goto Drustvar/0 73.04,61.21 < 10 |only if walking
Follow the path up |goto 73.71,62.61 < 10 |only if walking
Continue up the path |goto 74.37,64.19 < 15 |only if walking
kill Idej the Wise##131735
talk Taptaf##139380
|tip It will walk up to you after defeating Idej the Wise.
accept Taptaf the Pig!##52061 |goto 64.96,83.30
step
use Taptaf##161081
Collect the "Taptaf" Battle Pet |learnpet Taptaf##139770
step
_Congratulations!_
You Collected a "Taptaf" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Thunder Lizard Runt",{
author="support@zygorguides.com",
description="This pet is collected from the Conclave of the Chosen encounter in the Battle for Dazar'alor raid."..
"It is available to Mythic difficulty only.",
model={89742},
pet=2529,
},[[
step
Kill the Conclave of the Chosen
collect Thundering Scale of Akunda##165847 |condition haspet(2528)
|tip If it didn't drop, you will need to wait until the raid resets or with another character.
step
use the Thundering Scale of Akunda##165847
Collect the "Thunder Lizard Runt" Battle Pet |learnpet Thunder Lizard Runt##147587
step
_Congratulations!_
You Collected the "Thunder Lizard Runt" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Tiny Direhorn",{
author="support@zygorguides.com",
description="This pet can be purchased from Happy Holaua in Zuldazar for 100 Polished Pet Charms.",
model={84857},
pet=2412,
},[[
step
collect 100 Polished Pet Charm##163036
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
only if not haspet(2412)
step
Enter the building |goto Dazar'alor/0 56.95,32.06 < 5 |walk
talk Happy Holaua##132097
|tip Inside the building.
buy 1 Tiny Direhorn##163498 |goto 55.93,32.35
only if not haspet(2412)
step
use the Tiny Direhorn##163498
Collect the "Tiny Direhorn" Battle Pet |learnpet Tiny Direhorn##143191
step
_Congratulations!_
You Collected a "Tiny Direhorn" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Trecker",{
author="support@zygorguides.com",
description="This pet can be purchased from Provisioner Stoutforge in Boralus for 100 7th Legion Service Medals.",
model={90029},
pet=2539,
},[[
step
earn 100 7th Legion Service Medals##1717
|tip These are earned from Warfronts and Faction Assaults.
only if not haspet(2539)
step
talk Provisioner Stoutforge##148927
buy 1 Trecker's Cage##166346 |goto Boralus/0 66.90,25.77
only if not haspet(2539)
step
use Trecker's Cage##166346
Collect the "Trecker" Battle Pet |learnpet Trecker##148524
step
_Congratulations!_
You Collected a "Trecker" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Vale Marmot",{
author="support@zygorguides.com",
description="This pet can be captured in the wild from various areas in Stormsong Valley.",
model={1072},
pet=2375,
},[[
step
clicknpc Vale Marmot##143034
Weaken and capture the Vale Marmot in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Vale Marmot" Battle Pet |learnpet Vale Marmot##143034 |goto Stormsong Valley/0 65.54,65.00
step
_Congratulations!_
You Collected a "Vale Marmot" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Zandalari Shinchomper",{
author="support@zygorguides.com",
description="This pet can be purchased from Happy Holaua in Zuldazar for 50 Polished Pet Charms.",
model={84863},
pet=2413,
},[[
step
collect 50 Polished Pet Charm##163036
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
only if not haspet(2413)
step
Enter the building |goto Dazar'alor/0 56.95,32.06 < 5 |walk
talk Happy Holaua##132097
|tip Inside the building.
buy 1 Raptor Containment Crate##163499 |goto 55.93,32.35
only if not haspet(2413)
step
use the Raptor Containment Crate##163499
Collect the "Zandalari Shinchomper" Battle Pet |learnpet Zandalari Shinchomper##143193
step
_Congratulations!_
You Collected a "Zandalari Shinchomper" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Bloated Bloodfeaster",{
author="support@zygorguides.com",
description="This pet is obtained through the Alchemy profession.",
model={80458},
pet=2476,
},[[
step
This pet is created with the Alchemy Profession, with the _"Transmute: Meat to Pet"_ ability
|tip You will need level 50 Battle for Azeroth Alchemy to create this.
|tip You'll need 10 Meaty Haunch, 10 Stringy Loins and 5 Blood-Stained Bone to create this.
|tip After crafting a Grumbling Sac, it will turn into a Quivering Sac after 7 days.
collect Quivering Sac##160325 |condition haspet(2476)
step
use the Quivering Sac##160325
collect Undulating Blue Sac##163861 |condition haspet(2476)
step
use the Undulating Blue Sac##163861
Collect the "Bloated Bloodfeaster" Battle Pet |learnpet Bloated Bloodfeaster##143958
step
_Congratulations!_
You Collected a "Bloated Bloodfeaster" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Bloodfeaster Larva",{
author="support@zygorguides.com",
description="This pet can be purchased from Shoak in Nazmir for 200 Polished Pet Charms.",
model={80460},
pet=2414,
},[[
step
You will need to kill the rare spawn Aiji the Accursed to gain access to the vendor Shoak
Click Here to Continue |confirm |condition haspet(2414)
step
click Ancient Tablet
accept An Ancient Curse##50976 |goto Nazmir/0 52.92,75.96
step
click Runed Brazier
Light the Runed Brazer |goto 52.48,73.87
Click here to continue |confirm |condition haspet(2414)
step
click Runed Brazier
Light the Runed Brazer |goto 51.73,71.80
Click here to continue |confirm |condition haspet(2414)
step
click Runed Brazier
|tip Inside the building.
Light the Runed Brazer |goto 54.01,72.17
Click here to continue |confirm |condition haspet(2414)
step
click Runed Brazier
Light the Runed Brazer |goto 54.44,70.72
Click here to continue |confirm |condition haspet(2414)
step
click Runed Brazier
|tip Inside the building.
Light the Runed Brazer |q 50976/1 |goto 54.59,69.24
step
kill Aiji the Accursed##133505 |q 50976/2 |goto 52.95,72.05
step
Click the Quest Complete Box:
turnin An Ancient Curse##50976 |goto 52.96,72.04
step
collect 200 Polished Pet Charm##163036
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
only if not haspet(2414)
step
talk Shoak##132011
|tip After finishing the quest "An Ancient Curse", you should receive a letter from Shoak inviting you to buy stuff from him.
|tip He will be in hostile territory, so try avoiding the Horde guards.
buy 1 Bloodfeaster Larva##163500 |goto Nazmir/0 66.92,42.06 |condition haspet(2414)
step
use the Bloodfeaster Larva##163500
Collect the "Bloodfeaster Larva" Battle Pet |learnpet Bloodfeaster Larva##143194
step
_Congratulations!_
You Collected a "Bloodfeaster Larva" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Frenzied Cottontail",{
author="support@zygorguides.com",
description="This pet can be purchased from Nigel Rifthold in Drustvar for 300 Polished Pet Charms.",
model={80951},
pet=2407,
},[[
step
collect 300 Polished Pet Charm##163036
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
only if not haspet(2407)
step
label "Purchse_Frenzied_Cottontail"
talk Nigel Rifthold##142197
|tip On the top of the hill in front of the treehouse.
If Nigel isn't here, click here |confirm |or |next "Unlock_Nigel_NPC"
buy 1 Bloody Rabbit Fang##163493 |or |goto Drustvar/0 52.32,31.68
only if not haspet(2407)
step
use the Bloody Rabbit Fang##163493
Collect the "Frenzied Cottontail" Battle Pet |learnpet Frenzied Cottontail##143179 |next "Unlocked_Frenzied_Cottontail"
step
label "Unlock_Nigel_NPC"
talk Xun Xun Sweetflower##136269
buy 10 Tirasreli Gourmet Chocolate##155810 |goto 20.67,45.59
only if not haspet(2407)
step
Follow the path |goto 51.98,32.79 < 10 |only if walking
Enter the building |goto 52.40,31.57 < 5 |walk
click Adventurer's Society Loot Stash##278516 |goto 52.45,31.42
|tip Inside the building.
|tip Click it twice.
This will unlock Nigel Rifthold as a pet vendor
Click here to buy the Frenzied Cottontail |confirm |next "Purchse_Frenzied_Cottontail"
only if not haspet(2407)
step
label "Unlocked_Frenzied_Cottontail"
_Congratulations!_
You Collected a "Frenzied Cottontail" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Giant Woodworm",{
author="support@zygorguides.com",
description="This pet can be captured in the wild from northern and southern Tiragarde Sound.",
model={36595},
pet=2383,
},[[
step
clicknpc Giant Woodworm##143042
Weaken and capture the Giant Woodworm in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Giant Woodworm" Battle Pet |learnpet Giant Woodworm##143042 |goto Tiragarde Sound/0 57.91,15.77
step
_Congratulations!_
You Collected a "Giant Woodworm" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Glutted Bleeder",{
author="support@zygorguides.com",
description="This pet can be captured in the wild around the Heart of Darkness and Terrace of Shadows "..
"in Nazmir.",
model={80457},
pet=2395,
},[[
step
Follow the road |goto Nazmir/0 38.48,46.59 < 15 |only if walking
Continue following the road |goto 36.85,47.62 < 15 |only if walking
Continue following the road |goto 33.53,47.71 < 15 |only if walking
Continue following the road |goto 31.33,48.73 < 15 |only if walking
Continue following the road |goto 30.62,47.36 < 15 |only if walking
clicknpc Glutted Bleeder##130297
|tip They are found around this area.
|tip If you don't see any, you may need to defeat other battle pets to get it to spawn.
Weaken and capture the Glutted Bleeder in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Glutted Bleeder" Battle Pet |learnpet Glutted Bleeder##143053 |goto 30.61,46.17
step
_Congratulations!_
You Collected a "Glutted Bleeder" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Golden Beetle",{
author="support@zygorguides.com",
description="This pet can be captured in the wild around Atal'dazar in western Zuldazar.",
model={33088},
pet=2387,
},[[
step
Run up the stairs |goto Zuldazar/0 49.43,38.71 < 10 |only if walking
Continue up the stairs |goto 48.87,38.76 < 10 |only if walking
Continue up the stairs |goto 48.80,39.68 < 10 |only if walking
Follow the road up |goto 48.20,39.65 < 15 |only if walking
Continue following the road |goto 48.58,37.47 < 15 |only if walking
Continue following the road |goto 48.19,36.08 < 15 |only if walking
Continue following the road |goto 47.00,35.61 < 15 |only if walking
Continue following the road |goto 46.46,34.50 < 15 |only if walking
Continue following the road |goto 45.60,33.98 < 15 |only if walking
Continue following the road |goto 45.45,35.05 < 15 |only if walking
Cross the bridge |goto 45.97,36.15 < 15 |only if walking
Follow the road up |goto 45.85,38.63 < 15 |only if walking
Continue following the road |goto 45.03,37.76 < 15 |c |only if walking
only if not haspet(2387)
step
Follow the road up |goto Zuldazar/0 45.67,38.44 < 15 |only if walking
Continue following the road |goto 45.10,37.78 < 15 |only if walking
Continue following the road |goto 43.97,38.53 < 15 |only if walking
Continue following the road |goto 43.99,37.72 < 15 |only if walking
Continue following the road |goto 43.98,37.16 < 15 |only if walking
Continue following the road |goto 44.06,35.86 < 15 |only if walking
Continue following the road |goto 43.47,36.77 < 15 |only if walking
Continue following the road |goto 42.59,35.92 < 15 |only if walking
Run down the stairs |goto 42.38,36.47 < 15 |only if walking
Continue down the stairs |goto 42.69,37.05 < 15 |only if walking
Continue down the stairs |goto 42.56,37.59 < 15 |only if walking
Follow the path |goto 42.07,37.79 < 15 |only if walking
Run down the stairs |goto 42.10,38.37 < 15 |only if walking
Continue down the stairs |goto 41.91,39.44 < 15 |only if walking
clicknpc Golden Beetle##135434
|tip They are found around this area.
|tip If you don't see any, you may need to defeat other battle pets to get it to spawn.
Weaken and capture the Golden Beetle in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Golden Beetle" Battle Pet |learnpet Golden Beetle##143046 |goto 41.33,39.44
step
_Congratulations!_
You Collected a "Golden Beetle" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Littlehoof",{
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
model={88061},
pet=2471,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get Littlehoof as a reward.
collect Littlehoof##163815 |condition haspet(2471)
step
use Littlehoof##163815
Collect the "Littlehoof" Battle Pet |learnpet Littlehoof##143813
step
_Congratulations!_
You Collected a "Littlehoof" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Needleback Pup",{
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
model={90177},
pet=2554,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get a Needleback Pup as a reward.
collect Needleback Pup##166489 |condition haspet(2554)
step
use the Needleback Pup##166489
Collect the "Needleback Pup" Battle Pet |learnpet Needleback Pup##148982
step
_Congratulations!_
You Collected a "Needleback Pup" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Sandshell Chitterer",{
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
model={88038},
pet=2463,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get Sandshell Chitterer as a reward.
collect Sandshell Chitterer##163808 |condition haspet(2463)
step
use the Sandshell Chitterer##163808
Collect the "Sandshell Chitterer" Battle Pet |learnpet Sandshell Chitterer##143806
step
_Congratulations!_
You Collected a "Sandshell Chitterer" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Saurolisk Hatchling",{
author="support@zygorguides.com",
description="This pet can be purchased from Madeline Netley in Stormsong Valley for 200 Polished Pet Charms.",
model={81219},
pet=2421,
},[[
step
collect 200 Polished Pet Charm##163036 |condition haspet(2421)
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
step
talk Madeline Netley##136674
|tip Inside the building.
buy Saurolisk Hatchling##163560 |goto Stormsong Valley/0 31.58,67.34 |condition haspet(2421)
step
use the Saurolisk Hatchling##163560
Collect the "Saurolisk Hatchling" Battle Pet |learnpet Saurolisk Hatchling##143202
step
_Congratulations!_
You Collected a "Saurolisk Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Thunderscale Whelpling",{
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
model={90184},
pet=2561,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get a Thunderscale Whelpling as a reward.
collect Thunderscale Whelpling##166499 |condition haspet(2561)
step
use the Thunderscale Whelpling##166499
Collect the "Thunderscale Whelpling" Battle Pet |learnpet Thunderscale Whelpling##148995
step
_Congratulations!_
You Collected the "Thunderscale Whelpling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Aldrusian Sproutling",{
author="support@zygorguides.com",
description="This pet is dropped by Venomarus in the Arathi Highlands Warfront.",
model={87870},
pet=2433,
},[[
step
kill Branchlord Aldrus##142508
|tip He walks around the area.
|tip Note that if your faction doesn't control Arathi, you will be flagged for pvp.
|tip You may need help with this.
collect Aldrusian Sproutling##163650 |goto Arathi Highlands/0 21.67,21.77 |condition haspet(2433)
step
use the Aldrusian Sproutling##163650
Collect the "Aldrusian Sproutling" Battle Pet |learnpet Aldrusian Sproutling##143503
step
_Congratulations!_
You Collected a "Aldrusian Sproutling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Azeriti",{
author="support@zygorguides.com",
description="This pet can be purchased from Magni Bronzebeard in Silithus for 100 Polished Pet Charms.\n\n"..
"_Requires Champions of Azeroth - Revered_",
model={83052},
pet=2429,
},[[
step
Reach Revered Reputation with the Champions of Azeroth |condition rep('Champions of Azeroth')>=Revered
|tip Use the Battle for Azeroth "World Quests" guides to complete "Champions of Azeroth" world quests.
|tip Complete Missions at your mission table that reward reputation with the Champions of Azeroth.
step
collect 100 Polished Pet Charm##163036 |condition haspet(2429)
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
step
talk Magni Bronzebeard##130216
buy Shard of Azerite##163515 |goto Silithus/0 42.22,44.27 |condition haspet(2429)
step
use the Shard of Azerite##163515
Collect the "Azeriti" Battle Pet |learnpet Azeriti##143214
step
_Congratulations!_
You Collected a "Azeriti" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Carnivorous Lasher",{
author="support@zygorguides.com",
description="This pet can be purchased from Madeline Netley in Stormsong Valley for 100 Polished Pet Charms.",
model={80467},
pet=2428,
},[[
step
collect 100 Polished Pet Charm##163036 |condition haspet(2428)
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
step
talk Madeline Netley##136674
|tip Inside the building.
buy Violent Looking Flower Pot##163514 |goto Stormsong Valley/0 31.58,67.34 |condition haspet(2428)
step
use the Violent Looking Flower Pot##163514
Collect the "Carnivorous Lasher" Battle Pet |learn Carnivorous Lasher##143211
step
_Congratulations!_
You Collected a "Carnivorous Lasher" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Everburning Treant",{
author="support@zygorguides.com",
description="This pet is dropped by MobName in the Battle for Darkshore Warfront.",
model={90140},
pet=2548,
},[[
step
kill Zim'kaga##147664
|tip You may need help with this.
collect Everburning Treant##166453 |goto Darkshore/0 62.4,9.8
step
use the Everburning Treant##166453
Collect the "Everburning Treant" Battle Pet |learnpet Everburning Treant##148843
step
_Congratulations!_
You Collected a "Everburning Treant" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Fozling",{
author="support@zygorguides.com",
description="This pet is dropped by Fozruk in the Arathi Highlands Warfront.",
model={87945},
pet=2440,
},[[
step
kill Fozruk##142433
collect Shard of Fozruk##163711 |goto Arathi Highlands/0 59.48,27.53 |condition haspet(2440)
step
use the Shard of Fozruk##163711
Collect the "Fozling" Battle Pet |learnpet Fozling##143627
step
_Congratulations!_
You Collected a "Fozling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Giggling Flame",{
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
model={88058},
pet=2466,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get Giggling Flame as a reward.
collect Giggling Flame##163811 |condition haspet(2466)
step
use the Giggling Flame##163811
Collect the "Giggling Flame" Battle Pet |learnpet Giggling Flame##143809
step
_Congratulations!_
You Collected a "Giggling Flame" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Gust of Cyclarus",{
author="support@zygorguides.com",
description="This pet is dropped by MobName in the Battle for Darkshore Warfront.",
model={5187},
pet=2545,
},[[
step
kill Cyclarus##147241
|tip You may need a group to accomplish this.
collect Binding of Cyclarus##166448 |goto Darkshore/0 43.8,53.6 |condition haspet(2545)
step
use the Binding of Cyclarus##166448
Collect the "Gust of Cyclarus" Battle Pet |learnpet Gust of Cyclarus##148784
step
_Congratulations!_
You Collected a "Gust of Cyclarus" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Hearthy",{
author="support@zygorguides.com",
description="This pet can be collected by completing the \"Master of Minions\" achievement, "..
"which requires you to collect 1,000 unique battle pets.",
model={74515},
pet=2003,
},[[
step
Earn the "Master of Minions" Achievement |achieve 12958
|tip Refer to our various pet guides to accomplish this.
step
collect Hearthy##163218 |condition haspet(2003)
|tip It will appear in any Mailbox once you complete the achievement.
step
use Hearthy##163218
Collect the "Hearthy" Battle Pet |learnpet Hearthy##117343
step
_Congratulations!_
You Collected a "Hearthy" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Hydrath Droplet",{
author="support@zygorguides.com",
description="This pet is dropped by MobName in the Battle for Darkshore Warfront.",
model={23000},
pet=2547,
},[[
step
kill Hydrath##147240
|tip You may need a group to accomplish this.
collect Bottled Essence of Hydrath##166452 |goto Darkshore/0 52.8,31.8 |condition haspet(2547)
step
use the Bottled Essence of Hydrath##166452
Collect the "Hydrath Droplet" Battle Pet |learnpet Hydrath Droplet##148841
step
_Congratulations!_
You Collected a "Hydrath Droplet" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Kindleweb Spiderling",{
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
model={88001},
pet=2447,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get Kindleweb Spiderling as a reward.
collect the Kindleweb Spiderling##163804 |condition haspet(2447)
step
use the Kindleweb Spiderling##163804
Collect the "Kindleweb Spiderling" Battle Pet |learnpet Kindleweb Spiderling##143802
step
_Congratulations!_
You Collected a "Kindleweb Spiderling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Laughing Stonekin",{
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
model={88060},
pet=2468,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get Laughing Stonekin as a reward.
collect Laughing Stonekin##163812 |condition haspet(2468)
step
use the Laughing Stonekin##163812
Collect the "Laughing Stonekin" Battle Pet |learnpet Laughing Stonekin##143810
step
_Congratulations!_
You Collected a "Laughing Stonekin" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Mischievous Zephyr",{
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
model={88059},
pet=2467,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get Mischievous Zephyr as a reward.
collect Mischievous Zephyr##163814 |condition haspet(2467)
step
use the Mischievous Zephyr##163814
Collect the "Mischievous Zephyr" Battle Pet |learnpet Mischievous Zephyr##143812
step
_Congratulations!_
You Collected a "Mischievous Zephyr" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Playful Frostkin",{
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
model={88057},
pet=2465,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get Playful Frostkin as a reward.
collect Playful Frostkin##163813 |condition haspet(2465)
step
use the Playful Frostkin##163813
Collect the "Playful Frostkin" Battle Pet |learnpet Playful Frostkin##143811
step
_Congratulations!_
You Collected a "Playful Frostkin" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Tinder Pup",{
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
model={88004},
pet=2450,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get Tinder Pup as a reward.
collect Tinder Pup##163807 |condition haspet(2450)
step
use the Tinder Pup##163807
Collect the "Tinder Pup" Battle Pet |learnpet Tinder Pup##143805
step
_Congratulations!_
You Collected a "Tinder Pup" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Albino Duskwatcher",{
author="support@zygorguides.com",
description="This pet is purchased from Micro Zoox in Boralus for 200 Seafarer's Dubloon.",
model={80967},
pet=2555,
},[[
step
earn 200 Seafarer's Dubloon##1710
|tip These are earned by completing Island Expeditions.
step
talk Captain Klarisa##148922
buy Albino Duskwatcher##166491 |goto Boralus/0 66.05,32.32 |condition haspet(2555)
step
use the Albino Duskwatcher##166491
Collect the "Albino Duskwatcher" Battle Pet |learnpart Albino Duskwatcher##148985
step
_Congratulations!_
You Collected a "Albino Duskwatcher" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Albatross Hatchling",{
author="support@zygorguides.com",
description="This pet can be collected through Proudmoore Admiralty Paragon reputation boxes."..
"You cannot obtain this by normal means as a horde character.",
model={77901},
pet=2566,
},[[
step
Reach Exalted Reputation with the Proudmoore Admiralty |condition rep('Proudmoore Admiralty')==Exalted
|tip Use the Battle for Azeroth "World Quests" guides to complete "Proudmoore Admiralty" world quests.
|tip Complete Missions at your mission table that reward reputation with the Proudmoore Admiralty.
step
talk Provisioner Fray##135808
accept Supplies from the Proudmoore Admiralty##54458
|tip This will appear once you reach 10000 reputation past exalted with the "Proudmoore Admiralty".
collect Proudmoore Admiralty Supplies##166295 |condition haspet(2566)
step
use the Proudmoore Admiralty Supplies##166295
collect Albatross Feather##166714 |condition haspet(2566)
|tip This is a random drop.
step
use the Albatross Feather##166714
Collect the "Albatross Hatchling" Battle Pet |learnpet Albatross Hatchling##149363
step
_Congratulations!_
You Collected a "Albatross Hatcling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Blue Flitter",{
author="support@zygorguides.com",
description="This pet can be purchased from Madeline Netley in Stormsong Valley for 100 Polished Pet Charms.",
model={86529},
pet=2422,
},[[
step
collect 100 Polished Pet Charm##163036
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
only if not haspet(2422)
step
talk Madeline Netley##136674
|tip Inside the building.
buy Butterfly in a Jar##163508 |goto Stormsong Valley/0 31.58,67.34 |condition haspet(2422)
step
use the Butterfly in a Jar##163508
Collect the "Blue Flitter" Battle Pet |learnpet Blue Flitter##143203
step
_Congratulations!_
You Collected a "Blue Flitter" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Bumbles",{
author="support@zygorguides.com",
description="This pet can be collected by completing the \"Let's Bee Friends\" achievement.",
model={81972},
pet=2442,
},[[
step
talk Ancel Mildenhall##131793
accept Mayhem at Mildenhall Meadery##50343 |goto Stormsong Valley/0 68.88,65.16
step
Investigate the Meadery |q 50343/1 |goto 68.50,67.61
step
_Next to you:_
talk Ancel Mildenhall
turnin Mayhem at Mildenhall Meadery##50343
accept Detective Mildenhall##50070
accept Cleanup Duty##50359
stickystart "Kill_Flowing_Honey"
stickystart "Kill_Bubbling_Mead"
step
click Honey Soaked Boot
Find the Clue |q 50070/1 |goto 68.52,69.00 |count 1
step
click Brewmaster's Treatise Vol. 1
Find the Clue |q 50070/1 |goto 69.16,69.34 |count 2
step
click Misplaced Flask
Find the Clue |q 50070/1 |goto 67.92,70.94 |count 3
step
click Rough Map
Find the Clue |q 50070/1 |goto 69.24,70.77 |count 4
step
click Crystalized Honey Fragment
|tip Inside the building.
Find the Clue |q 50070/1 |goto 70.83,69.67 |count 5
step
label "Kill_Flowing_Honey"
kill 4 Flowing Honey##131663 |q 50359/1 |goto 70.34,69.46
step
label "Kill_Bubbling_Mead"
kill 4 Bubbling Mead##133429 |q 50359/2 |goto 70.34,69.46
step
_Next to you:_
talk Ancel Mildenhall
turnin Detective Mildenhall##50070
turnin Cleanup Duty##50359
accept Don't Go in the Basement##50064
step
Run down the stairs |goto 70.75,69.13 < 5 |walk
click Mead Barrel
|tip Downstairs inside the building.
Examine Mead Barrel |q 50064/1 |goto 70.82,69.07
step
kill The Brue##131861 |q 50064/2 |goto 70.82,69.07
|tip Downstairs inside the building.
step
talk Ancel Mildenhall##132647
|tip Downstairs inside the building.
turnin Don't Go in the Basement##50064 |goto 71.05,69.24
accept Recovering Raimond##50161 |goto 71.05,69.24
step
Leave the building |goto 70.75,69.15 < 5 |walk
click Honey Soaked Boot
collect Sticky Boot##156717 |q 50161/1 |goto 71.63,67.98 |count 2
step
click Discarded Pages
collect Journal Pages##156808 |q 50161/2 |goto 72.42,68.64 |count 1
step
click Discarded Pages
collect Journal Pages##156808 |q 50161/2 |goto 72.32,70.56 |count 2
step
click Discarded Pages
collect Journal Pages##156808 |q 50161/2 |goto 73.37,72.27 |count 3
step
Enter the cave |goto 73.83,72.44 < 10 |walk
talk Raimond Mildenhall##132292
|tip Inside the cave.
turnin Recovering Raimond##50161 |goto 74.13,72.74
accept Royal Succession##50168 |goto 74.13,72.74
accept Sticky Situation##50162 |goto 74.13,72.74
stickystart "Collect_Royal_Jelly"
step
Leave the cave |goto 73.79,72.42 < 10 |walk
Enter the cave |goto 74.62,71.07 < 10 |walk
kill Hive Mother##132341
|tip Inside the cave.
collect Hive Mother's Stinger##157839 |q 50168/1 |goto 74.81,71.51
step
label "Collect_Royal_Jelly"
Kill enemies around this area
click Bee Hive+
|tip They look like small rope huts wih handles on top of them sitting on wooden boxes on the ground around this area.
collect 60 Royal Jelly##156709 |q 50162/1 |goto 73.52,69.77
step
Enter the cave |goto 73.81,72.44 < 10 |walk
talk Raimond Mildenhall##132292
|tip Inside the cave.
turnin Royal Succession##50168 |goto 74.13,72.74
turnin Sticky Situation##50162 |goto 74.13,72.74
accept Honey Glazed Sam##50504 |goto 74.13,72.74
step
clicknpc Sam Robinson##134013
Rescue Sam Robinson |q 50504/1 |goto 72.80,72.25
step
talk Sam Robinson##134028
turnin Honey Glazed Sam##50504 |goto 72.80,72.25
accept Free the Farmhands##50264 |goto 72.80,72.25
accept Fetching Wrex##50493 |goto 72.80,72.25
step
_Next to you:_
talk Raimond Mildenhall
accept The Bee Team##50165
accept Wendigo Away##50534
stickystart "Rescue_Wrex"
stickystart "Rescue_Honey_Encased_Farmhands"
stickystart "Slay_Highlands_Maulers"
step
Enter the cave |goto 66.91,77.82 < 10 |walk
use the Bee Pheromones##157851
|tip Use it on Bonerender inside the cave.
kill Bonerender##131537 |q 50534/1 |goto 65.87,79.43
step
_Next to you:_
talk Raimond Mildenhall
turnin Wendigo Away##50534
step
label "Rescue_Wrex"
Leave the cave |goto 66.94,77.83 < 10 |walk
click Crystallized Honey+
|tip They look like big yellow rocks on the ground inside the caves around this area.
|tip He will eventually be in one of them, it's random.
|tip They will appear on your minimap as yellow dots.
Rescue Wrex |q 50493/1 |goto 68.44,74.73
step
label "Rescue_Honey_Encased_Farmhands"
clicknpc Honey Encased Farmhand##133154+
|tip They look like people frozen in yellow globs on the ground around this area.
Rescue #8# Honey Encased Farmhands |q 50264/1 |goto 68.44,74.73
step
label "Slay_Highlands_Maulers"
use the Bee Pheromones##157851
|tip Use it on Honey-Crazed Maulers around this area.
Kill Mauler enemies around this area
Slay #12# Highlands Maulers |q 50165/1 |goto 68.44,74.73
step
_Next to you:_
talk Raimond Mildenhall
turnin Free the Farmhands##50264
turnin Fetching Wrex##50493
turnin The Bee Team##50165
accept Back to the Lab##50553
step
Run down the stairs |goto 70.75,69.13 < 5 |walk
talk Raimond Mildenhall##133204
|tip Downstairs inside the building.
turnin Back to the Lab##50553 |goto 71.00,69.23
step
Kill enemies around this area
collect Annealed Honey Amulet##163699 |goto Stormsong Valley/0 69.55,68.58 |condition haspet(2442)
|tip This has an extremely low drop rate.
You can find more around [68.79,70.75]
You can find more around [70.69,72.09]
step
label "Rosaline_Loop"
talk Rosaline Mildenhall##143128
|tip Inside the building.
Ask her _"I found this amulet, does it belong to you?"_|goto Boralus/0 52.71,48.00
|tip Give Rosaline the Annealed Honey Amulet.
collect Rosaline's Letter##163702 |next "Meadery"  |condition haspet(2442)
Click Here to Continue |confirm
|tip Click the line above if she isn't here.
step
talk Rosaline Mildenhall##143128
|tip Upstairs inside the building.
Ask her _"I found this amulet, does it belong to you?"_ |goto 55.5,62.9
|tip Give Rosaline the Annealed Honey Amulet.
collect Rosaline's Letter##163702 |next "Meadery" |condition haspet(2442)
Click Here to Continue |confirm
|tip Click the line above if she isn't here.
step
talk Rosaline Mildenhall##143128
Ask her _"I found this amulet, does it belong to you?"_ |goto 58.1,55.3
|tip Give Rosaline the Annealed Honey Amulet.
collect Rosaline's Letter##163702 |next "Meadery" |condition haspet(2442)
Click Here to Continue |confirm
|tip Click the line above if she isn't here.
step
talk Rosaline Mildenhall##143128
Ask her _"I found this amulet, does it belong to you?"_ |goto 72.4,73.3
|tip Give Rosaline the Annealed Honey Amulet.
Click Here to Continue |confirm |next "Rosaline_Loop" |condition haspet(2442)
|tip Click the line above if she isn't here.
step
label "Meadery"
talk Ancel Mildenhall##131793
Tell him _"I met your mom. She Says hello!"_
|tip Give Ancel the Letter.
accept Bumbles the Bee##53347 |goto Stormsong Valley/0 68.88,65.16
step
Enter the cave |goto 73.87,72.47 < 5 |walk
click Raimond's Secret Ingredient##298774
|tip Inside the cave.
collect Raimond's Secret Ingredient##163780 |q 53347/1 |goto 74.15,72.77
step
Enter the building |goto 70.75,69.13 < 5 |walk
talk Ancel Mildenhall##132647
|tip Inside the building.
turnin Bumbles the Bee##53347 |goto 71.11,69.18
step
label "daily"
Enter the building |goto 70.75,69.13 < 5 |walk
talk Ancel Mildenhall##132647
accept Let's Bee Friends##53371 |goto 71.11,69.17
step
Kill enemies around this area
collect 8 Vial of Honey Slime##156825 |q 53371 |goto 69.22,68.90
step
Enter the building |goto 70.75,69.13 < 5 |walk
click Mildenhall Growth Formula
|tip Inside the building.
collect Mildenhall Growth Formula##163720 |q 53371/1 |goto 71.12,69.19
step
clicknpc Bumbles##143658
|tip Inside the building.
use the Mildenhall Growth Formula##163720
Feed the Formula to Bumbles |q 53371/2 |goto 71.11,69.20
step
talk Ancel Mildenhall##132647
|tip Inside the building.
turnin Let's Bee Friends##53371 |goto 71.11,69.17
step
You Will Need to Complete This Daily 7 Times to Earn Bumbles
Click Here to Continue |confirm |next "daily"
|tip Click the line above to do the daily again.
Earn the "Let's Bee Friends" Achievement |achieve 13062
step
use the Large Honeycomb Cluster##163776
Collect the "Bumbles" Battle Pet |learnpet Bumbles##143730
step
_Congratulations!_
You Collected a "Bumbles" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Cap'n Crackers",{
author="support@zygorguides.com",
description="This pet can be purchased from the Blizzard store for $10 USD.",
model={86021},
pet=2185,
},[[
step
This Pet is Bought from the Blizzard Store
collect Cap'n Crackers##160588 |condition haspet(2185)
|tip Once you've bought it from the Blizzard store, it should appear in your mailbox.
step
use Cap'n Crackers##160588
Collect the "Cap'n Crackers" Battle Pet |learnpet Cap'n Crackers##138741
step
_Congratulations!_
You Collected a "Cap'n Crackers" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Child of Pa'ku",{
author="support@zygorguides.com",
description="This pet is collected from the Conclave of the Chosen encounter in the Battle for Dazar'alor raid."..
"It is available to all difficulties except LFR.",
model={30298},
pet=2527,
},[[
step
Kill the Conclave of the Chosen
collect Enchanted Talon of Pa'ku##165846 |condition haspet(2527)
|tip This pet has a chance to drop from Pa'ku's Aspect.
|tip If it didn't drop, you will need to wait until the raid resets or with another character.
step
use the Enchanted Talon of Pa'ku##165846
Collect the "Child of Pa'ku" Battle Pet |learnpet Child of Pa'ku##147586
step
_Congratulations!_
You Collected a "Child of Pa'ku" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Cobalt Raven",{
author="support@zygorguides.com",
description="This pet can be collected through Order of Embers Paragon reputation boxes."..
"You cannot obtain this by normal means as a horde character.",
model={36743},
pet=2568,
},[[
step
Reach Exalted Reputation with the Order of Embers |condition rep('Order of Embers')==Exalted
|tip Use the Battle for Azeroth "World Quests" guides to complete "Order of Embers" world quests.
|tip Complete Missions at your mission table that reward reputation with the Order of Embers.
step
talk Quartermaster Alcorn##135815
accept Supplies from the Proudmoore Admiralty##54456
|tip This will appear once you reach 10000 reputation past exalted with the "Order of Embers".
collect Order of Embers Supplies##166297 |goto Drustvar/0 37.90,49.00 |condition haspet(2568)
step
use the Order of Embers Supplies##166297
collect Cobalt Raven Hatchling##166718 |condition haspet(2568)
step
use the Cobalt Raven Hatchling##166718
Collect the "Cobalt Raven" Battle Pet |learnpet Cobalt Raven##149375
step
_Congratulations!_
You Collected the "Cobalt Raven" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Corlain Falcon",{
author="support@zygorguides.com",
description="This pet can be purchased from Quartermaster Alcorn in Drustvar for 200 Polished Pet Charms."..
"_Requires Order of Embers - Revered_",
model={81079},
pet=2405,
},[[
step
collect 200 Polished Pet Charm##163036 |condition haspet(2405)
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
step
talk Quartermaster Alcorn##135815
buy Pristine Falcon Feather##163491 |goto Drustvar/0 37.89,49.00 |condition haspet(2405)
step
use the Pristine Falcon Feather##163491
Collect the "Corlain Falcon" Battle Pet |learnpet Corlain Falcon##143177
step
_Congratulations!_
You Collected a "Corlain Falcon" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Crimson Bat Pup",{
author="support@zygorguides.com",
description="This pet can be collected through Talanji's Expedition Paragon reputation boxes."..
"You cannot obtain this by normal means as a alliance character.",
model={80954},
pet=2567,
},[[
step
This Pet is Available for the Horde Faction Only
|tip You will need to purchase this from the Auction House or use an Horde character to attain this pet.
talk Auctioneer Fitch##8719
|tip Inside the building.
collect Pair of Tiny Bat Wings##166716 |goto Stormwind City/0 61.12,70.62 |condition haspet(2567)
step
use the Pair of Tiny Bat Wings##166716
Collect the "Crimson Bat Pup" Battle Pet |learnpet Crimson Bat Pup##149372
step
_Congratulations!_
You Collected the "Cobalt Raven" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Darkshore Sentinel",{
author="support@zygorguides.com",
description="This pet is dropped by MobName in the Battle for Darkshore Warfront.",
model={64331},
pet=2544,
},[[
step
kill Burninator Mark V##149141
|tip He patrols around the area.
|tip He will only appear when Alliance controls Darkshore.
buy Darkshore Sentinel##166449 |goto Darkshore/0 41.64,76.65 |condition haspet(2405)
step
use the Darkshore Sentinel##166449
Collect the "Darkshore Sentinel" Battle Pet |learnpet Darkshore Sentinel##148781
step
_Congratulations!_
You Collected a "Darkshore Sentinel" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Dreadtick Leecher",{
author="support@zygorguides.com",
description="This pet can be collected by completing the \"Battle Safari\" achievement, "..
"which requires you to catch every battle pet on Kul Tiras and Zandalar.",
model={79567},
pet=2431,
},[[
step
Earn the "Battle Safari" Achievement |achieve 12930
|tip Refer to the Battle Safari and battle pet guides to accomplish this.
step
collect Dreadtick Leecher##163634 |condition haspet(2431)
|tip It will appear in any Mailbox once you complete the achievement.
step
use the Dreadtick Leecher##163634
Collect the "Dreadtick Leecher" Battle Pet |learnpet Dreadtick Leecher##143464
step
_Congratulations!_
You Collected a "Dreadtick Leecher" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Firesting Buzzer",{
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
model={90181},
pet=2557,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get Firesting Buzzer as a reward.
collect Firesting Buzzer##166493 |condition haspet(2557)
step
use the Firesting Buzzer##166493
Collect the "Firesting Buzzer" Battle Pet |learnpet Firesting Buzzer##148988
step
_Congratulations!_
You Collected the "Firesting Buzzer" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Foulfeather",{
author="support@zygorguides.com",
description="This pet is dropped by Plaguefeather in the Arathi Highlands Warfront.",
model={74038},
pet=2438,
},[[
step
kill Plaguefeather##142435
|tip You may need a group to accomplish this.
collect Plagued Egg##163690 |goto Arathi Highlands/0 37.6,64.6 |condition haspet(2438)
step
use the Plagued Egg##163690
Collect the "Foulfeather" Battle Pet |learnpet Foulfeather##143564
step
_Congratulations!_
You Collected a "Foulfeather" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Francois",{
author="support@zygorguides.com",
description="This pet can be collected by locating Francois in Tiragarde Sound."..
"_You must have 1,000,000 gold on your character to collect this pet, even though it's free._",
model={75339},
pet=2165,
},[[
step
talk Francois
|tip In order to speak with Francois, you will need to have 1,000,000 gold in your inventory.
Choose _<Jingle your purse a little bit.>_
talk Francois
|tip Speak with Francois once more after choosing that option.
collect Faberge Egg##158077 |goto Tiragarde Sound/0 52.8,31.1 |condition haspet(2165)
step
use the Faberge Egg##158077
Collect the "Francois" Battle Pet |learnpet Francois##134406
step
_Congratulations!_
You Collected a "Francois" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Greatwing Macaw",{
author="support@zygorguides.com",
description="This pet can be purchased from Dana Pull in Tiragarde Sound for 50 Polished Pet Charms.",
model={80414},
pet=2409,
},[[
step
collect 200 Polished Pet Charm##163036 |condition haspet(2409)
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
step
Run down the stairs |goto Boralus/0 67.39,16.18 < 10 |only if walking
Continue down the stairs |goto 66.42,19.90 < 10 |only if walking
Run down the stairs |goto 63.76,20.35 < 10 |only if walking
Follow the path |goto 60.78,21.61 < 10 |only if walking
Continue following the path |goto 58.76,23.41 < 10 |only if walking
Continue following the path |goto 57.65,26.50 < 10 |only if walking
Run up the stairs |goto 57.82,30.11 < 10 |only if walking
Follow the road |goto 57.25,31.20 < 10 |only if walking
Continue following the road |goto 58.48,35.73 < 10 |only if walking
Run up the stairs |goto 57.29,38.15 < 10 |only if walking
Follow the path |goto 53.29,40.81 < 10 |only if walking
Continue following the path |goto 50.10,43.05 < 10
Run up the stairs |goto 50.68,44.66 < 10 |only if walking
Follow the road |goto 49.60,46.73 < 10 |only if walking
Enter the building |goto 50.43,46.74 < 5 |walk
talk Dana Pull##142065
|tip Inside the building.
buy Greatwing Macaw Feather##163495 |goto 50.92,45.92 |condition haspet(2409)
step
use the Greatwing Macaw Feather##163495
Collect the "Greatwing Macaw" Battle Pet |learnpet Greatwing Macaw##143184
step
_Congratulations!_
You Collected a "Greatwing Macaw" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Honey Bee",{
author="support@zygorguides.com",
description="This pet can be captured in the wild from central and eastern Stormsong Valley.",
model={82001},
pet=2379,
},[[
step
clicknpc Honey Bee##143038
|tip They are found around this area.
Weaken and capture the Honey Bee in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Honey Bee" Battle Pet |learnpet Honey Bee##143038 |goto Stormsong Valley/0 71.96,66.22
step
_Congratulations!_
You Collected a "Honey Bee" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Horse Balloon",{
author="support@zygorguides.com",
description="This pet can be purchased from Carl Goodup on Darkmoon Island during the Darkmoon Faire.",
model={89260},
},[[
step
collect 90 Darkmoon Prize Tickets##81055 |goto Darkmoon Island/0 54.33,53.15
|tip Collect them by completing quests using our guides.
step
talk Carl Goodup##55305
|tip He walks up and down the road.
buy 1 Horse Balloon##164969 |goto 49.68,79.68
step
use the Horse Balloon##164969
|learnpet Horse Balloon##145946
step
_Congratulations!_
You Collected a "Horse Baloon" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Leafy Flutterwing",{
author="support@zygorguides.com",
description="This pet can be captured in the wild from eastern and southwestern Zuldazar.",
model={86533},
pet=2390,
},[[
step
clicknpc Leafy Futterwing##143049
|tip They are found around this area.
Weaken and capture the Leafy Flutterwing in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Leafy Flutterwing" Battle Pet |learnpet Leafy Flutterwing##143049 |goto Zuldazar/0 72.08,30.14
You can find more around [72.08,28.08]
step
_Congratulations!_
You Collected a "Leafy Flutterwing" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Leatherwing Screecher",{
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
model={90173},
pet=2552,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get Leatherwing Screecher as a reward.
collect Leatherwing Screecher##166487 |condition haspet(2552)
step
use the Leatherwing Screecher##166487
Collect the "Leatherwing Screecher" Battle Pet |learnpet Leatherwing Screecher##148979
step
_Congratulations!_
You Collected the "Leatherwing Screecher" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Murloc Balloon",{
author="support@zygorguides.com",
description="This pet can be purchased from Carl Goodup on Darkmoon Island during the Darkmoon Faire.",
model={89262},
},[[
step
collect 90 Darkmoon Prize Tickets##81055 |goto Darkmoon Island/0 54.33,53.15
|tip Collect them by completing quests using our guides.
step
talk Carl Goodup##55305
|tip He walks up and down the road.
buy 1 Murloc Balloon##164971 |goto 49.68,79.68
step
use the Murloc Balloon##164971
|learnpet Murloc Balloon##145947
step
_Congratulations!_
You Collected a "Murloc Balloon" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Nightwreathed Watcher",{
author="support@zygorguides.com",
description="This pet is a drop from the rarespawn Croz Bloodrage in the Darkshore Warfront.",
model={90230},
pet=2563,
},[[
step
kill Croz Bloodrage##149655
collect Nightwreathed Egg##166525 |goto Darkshore/0 50.65,32.41 |condition haspet(2563)
step
use the Nightwreathed Egg##166525
|tip It will be ready to loot 5 days (real time) after you loot it.
collect Nightwreathed Watcher##166528 |condition haspet(2563)
step
use the Nightwreathed Watcher##166528
Collect the "Nightwreathed Watcher" Battle Pet |learnpet Nightwreathed Watcher##149205
step
_Congratulations!_
You Collected a "Nightwreathed Watcher" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Parasitic Boarfly",{
author="support@zygorguides.com",
description="This pet can be captured in the wild from northern Tiragarde Sound.",
model={60901},
pet=2380,
},[[
step
clicknpc Parasitic Boarfly##143039
|tip They are found around this area.
|tip They share a spawn with Giant Woodworm, so if there aren't any around you may need to kill them.
Weaken and capture the Parasitic Boarfly in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Parasitic Boarfly" Battle Pet |learnpet Parasitic Boarfly##143039 |goto Tiragarde Sound/0 56.24,15.26
step
_Congratulations!_
You Collected a "Parasitic Boarfly" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Poro",{
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
model={88003},
pet=2452,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get Poro as a reward.
collect Poro##163800 |condition haspet(2452)
step
use Poro##163800
Collect the "Poro" Battle Pet |learnpet Poro##143797
step
_Congratulations!_
You Collected a "Poro" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Sandstinger Wasp",{
author="support@zygorguides.com",
description="This pet can be purchased from Madeline Netley in Stormsong Valley for 50 Polished Pet Charms.",
model={80029},
pet=2426,
},[[
step
collect 50 Polished Pet Charm##163036
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
only if not haspet(2426)
step
Follow the path down |goto Vol'dun/0 27.62,54.81 < 15 |only if walking
Continue down the path |goto 27.33,55.22 < 15 |only if walking
Continue following the path |goto 27.33,55.96 < 15 |only if walking
Continue following the path |goto 29.15,58.08 < 15 |only if walking
Continue up the path |goto 29.70,58.62 < 15 |only if walking
talk Jenoh##135400
buy Sandstinger Wasp##163512 |goto 29.52,59.35 |condition haspet(2426)
step
use the Sandstinger Wasp##163512
Collect the "Sandstinger Wasp" Battle Pet |learnpet Sandstinger Wasp##143207
step
_Congratulations!_
You Collected a "Sandstinger Wasp" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Seabreeze Bumblebee",{
author="support@zygorguides.com",
description="This pet can be purchased from Sister Lilyana in Stormsong Valley for 250 Polished Pet Charms.\n\n"..
"_Requires Storm's Wake - Revered_",
model={81966},
pet=2404,
},[[
step
Reach Revered Reputation with the Storm's Wake |condition rep('Storm\'s Wake')>=Revered
|tip Use the Battle for Azeroth "World Quests" guides to complete "Storm's Wake" world quests.
|tip Complete Missions at your mission table that reward reputation with the Storm's Wake.
step
collect 250 Polished Pet Charm##163036
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
only if not haspet(2404)
step
talk Sister Lilyana##135800
buy Pair of Bee Wings##163490 |goto Stormsong Valley/0 59.29,69.33 |condition haspet(2404)
step
use the Pair of Bee Wings##163490
Collect the "Seabreeze Bumblebee" Battle Pet |learnpet Seabreeze Bumblebee##143176
step
_Congratulations!_
You Collected a "Seabreeze Bumblebee" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Shadefeather Hatchling",{
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
model={80966},
pet=2556,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get a Shadefeather Hatchling as a reward.
collect Shadefeather Hatchling##166492 |condition haspet(2556)
step
use the Shadefeather Hatchling##166492
Collect the "Shadefeather Hatchling" Battle Pet |learnpet Shadefeather Hatchling##148984
step
_Congratulations!_
You Collected the "Shadefeather Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Shore Butterfly",{
author="support@zygorguides.com",
description="This pet can be captured in the wild from the Isle of Fangs or Tusk Isle in Southern Zuldazar",
model={86529},
pet=2384,
},[[
step
clicknpc Shore Butterfly##143043
|tip They are found around this area.
|tip They share a spawn with Shore Butterfly, so if there aren't any around you may need to kill them.
Weaken and capture the Shore Butterfly in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Shore Butterfly" Battle Pet |learnpet Shore Butterfly##143043 |goto Zuldazar/0 60.28,75.99
You can find more around [59.97,79.19]
step
_Congratulations!_
You Collected a "Shore Butterfly" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Squawkling",{
author="support@zygorguides.com",
description="This pet is dropped by Man-Hunter Rog in the Arathi Highlands Warfront.",
model={16880},
pet=2441,
},[[
step
kill Man-Hunter Rog##142716
collect Mana-Warped Egg##163712 |goto Arathi Highlands/0 52.11,73.22 |condition haspet(2441)
step
use the Mana-Warped Egg##163712
Collect the "Squawkling" Battle Pet |learnpet Squawkling##143628
step
_Congratulations!_
You Collected a "Squawkling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Sunscale Hatchling",{
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
model={88064},
pet=2473,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get the Sunscale Hatchling as a reward.
collect Sunscale Hatchling##163817 |condition haspet(2473)
step
use the Sunscale Hatchling##163817
Collect the "Sunscale Hatchling" Battle Pet |learnpet Sunscale Hatchling##143815
step
_Congratulations!_
You Collected a "Sunscale Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Valley Chicken",{
author="support@zygorguides.com",
description="This pet can be captured in the wild south of Deadwash in Stormsong Valley.",
model={88469},
pet=2376,
},[[
step
clicknpc Valley Chicken##141586
|tip They are found around this area.
|tip They share a spawn with Valley Chicken, so if there aren't any around you may need to kill them.
Weaken and capture the Valley Chicken in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Valley Chicken" Battle Pet |learnpet Valley Chicken##143035
step
_Congratulations!_
You Collected a "Valley Chicken" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Voru'kar Leecher",{
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
model={88037},
pet=2460,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get the Voru'kar Leecher as a reward.
collect Voru'kar Leecher##163824 |condition haspet(2460)
step
use the Voru'kar Leecher##163824
Collect the "Voru'kar Leecher" Battle Pet |learnpet Voru'kar Leecher##143822
step
_Congratulations!_
You Collected a "Voru'kar Leecher" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Wolf Balloon",{
author="support@zygorguides.com",
description="This pet can be purchased from Carl Goodup on Darkmoon Island during the Darkmoon Faire.",
model={89261},
},[[
step
collect 90 Darkmoon Prize Tickets##81055 |goto Darkmoon Island/0 54.33,53.15
|tip Collect them by completing quests using our guides.
step
talk Carl Goodup##55305
|tip He walks up and down the road.
buy 1 Wolf Balloon##164970 |goto 49.68,79.68
step
use the Wolf Balloon##164970
|learnpet Wolf Balloon##145948
step
_Congratulations!_
You Collected a "Wolf Balloon" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Coldlight Surfrunner",{
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
model={86463},
pet=2457,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get the Coldlight Surfrunner as a reward.
collect Coldlight Surfrunner##163823 |condition haspet(2457)
step
use the Coldlight Surfrunner##163823
Collect the "Coldlight Surfrunner" Battle Pet |learnpet Coldlight Surfrunner##143821
step
_Congratulations!_
You Collected a "Coldlight Surfrunner" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Ranishu Runt",{
author="support@zygorguides.com",
description="This pet can be purchased from Jenoh in Vol'dun for 250 Polished Pet Charms.",
model={76383},
pet=2417,
},[[
step
collect 250 Polished Pet Charm##163036
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
only if not haspet(2417)
step
Follow the path down |goto Vol'dun/0 27.62,54.81 < 15 |only if walking
Continue down the path |goto 27.33,55.22 < 15 |only if walking
Continue following the path |goto 27.33,55.96 < 15 |only if walking
Continue following the path |goto 29.15,58.08 < 15 |only if walking
Continue up the path |goto 29.70,58.62 < 15 |only if walking
talk Jenoh##135400
buy Ranishu Runt##163503 |goto 29.52,59.35 |condition haspet(2417)
step
use the Ranishu Runt##163503
Collect the "Ranishu Runt" Battle Pet |learnpet Ranishu Runt##143197
step
_Congratulations!_
You Collected a "Ranishu Runt" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Thistlebrush Bud",{
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
model={45190},
pet=2469,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get the Thistlebrush Bud as a reward.
collect Thistlebrush Bud##163810 |condition haspet(2469)
step
use the Thistlebrush Bud##163810
Collect the "Thistlebrush Bud" Battle Pet |learnpet Thistlebrush Bud##143808
step
_Congratulations!_
You Collected a "Thistlebrush Bud" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Whomper",{
author="support@zygorguides.com",
description="This pet can be purchased from the Blizzard Store for $10 USD.",
model={86020},
pet=2184,
},[[
step
This Pet is Bought from the Blizzard Store
collect Whomper##160587 |condition haspet(2184)
|tip Once you've bought it from the Blizzard store, it should appear in your mailbox.
step
use Whomper##160587
Collect the "Whomper" Battle Pet |learnpet Whomper##138742
step
_Congratulations!_
You Collected a "Whomper" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Accursed Hexxer",{
author="support@zygorguides.com",
description="This pet can be purchased from Shoak in Nazmir for 500 Polished Pet Charms.",
model={80852},
pet=2420,
},[[
step
You will need to kill the rare spawn Aiji the Accursed to gain access to the vendor Shoak
Click Here to Continue |confirm |condition haspet(2420)
step
click Ancient Tablet
accept An Ancient Curse##50976 |goto Nazmir/0 52.92,75.96
step
click Runed Brazier
Light the Runed Brazer |goto 52.48,73.87
Click here to continue |confirm |condition haspet(2420)
step
click Runed Brazier
Light the Runed Brazer |goto 51.73,71.80
Click here to continue |confirm |condition haspet(2420)
step
click Runed Brazier
|tip Inside the building.
Light the Runed Brazer |goto 54.01,72.17
Click here to continue |confirm |condition haspet(2420)
step
click Runed Brazier
Light the Runed Brazer |goto 54.44,70.72
Click here to continue |confirm |condition haspet(2420)
step
click Runed Brazier
|tip Inside the building.
Light the Runed Brazer |q 50976/1 |goto 54.59,69.24
step
kill Aiji the Accursed##133505 |q 50976/2 |goto 52.95,72.05
step
Click the Quest Complete Box:
turnin An Ancient Curse##50976 |goto 52.96,72.04
step
collect 500 Polished Pet Charm##163036
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
only if not haspet(2420)
step
talk Shoak##132011
|tip It will be dangerous speaking to him.
|tip Avoid Horde guards as best you can.
buy Accursed Hexxer##163506 |goto 66.91,42.06 |condition haspet(2420)
step
use the Accursed Hexxer##163506
Collect the "Accursed Hexxer" Battle Pet |learnpet Accursed Hexxer##143200
step
_Congratulations!_
You Collected a "Accursed Hexxer" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Azerite Puddle",{
author="support@zygorguides.com",
description="This pet can be purchased from Magni Bronzebeard in Silithus for 200 Polished Pet Charms.\n\n"..
"_Requires Champions of Azeroth - Revered_",
model={84157},
pet=2439,
},[[
step
Reach Revered Reputation with the Champions of Azeroth |condition rep('Champions of Azeroth')>=Revered
|tip Use the Battle for Azeroth "World Quests" guides to complete "Champions of Azeroth" world quests.
|tip Complete Missions at your mission table that reward reputation with the Champions of Azeroth.
step
collect 200 Polished Pet Charm##163036
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
only if not haspet(2439)
step
talk Magni Bronzebeard##130216
buy Drop of Azerite##163555 |goto Silithus/0 42.22,44.27 |condition haspet(2439)
step
use the Drop of Azerite##163555
Collect the "Azerite Puddle" Battle Pet |learnpet Azerite Puddle##143611
step
_Congratulations!_
You Collected a "Azerite Puddle" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Baa'l",{
author="support@zygorguides.com",
description="This pet can be captured after a BFA treasure hunt."..
"_You will need a fully-completed Uuna pet for this.",
model={80456},
pet=2352,
},[[
step
In order to collect Baa'l, you will also need to collect _Uuna pet_
|tip Refer to the Uuna pet guide to accomplish this.
Click Here to Continue |confirm |condition haspet(2352)
step
Once you've collected Uuna, you will need to complete Uuna's questline
|tip Refer to the Uuna Scenario guide to accomplish this.
Click Here to continue |confirm |condition haspet(2352)
step
Once you've completed Uuna's questline, you will need to take Uuna on a World Tour
|tip Refer to the Uuna World Tour guide to accomplish this.
Click Here to Continue |confirm |condition haspet(2352)
step
Cross the bridge |goto Nazmir/0 44.40,53.95 < 15 |only if walking
Cross the bridge |goto 46.39,54.03 < 10 |only if walking
Follow the path |goto 50.26,58.08 < 15 |only if walking
Carefully jump down here |goto 51.42,58.29 < 5 |only if walking
|tip You will need a "Goblin Glider" in order to reach the note.
click Conspicious Note
|tip It's on the side of the golden symbol.
Read the Conspicious Note |goto 51.77,59.05
|tip Purple smoke will rise from the scroll once you have read it.
Click Here to Continue |confirm |condition haspet(2352)
step
click Ordinary Pebble
|tip It's a tiny rock sitting on a table to the left of a purple orb.
Read the description of an Ordinary Pebble |goto Broken Shore/0 37.47,71.61
|tip You won't be able to interact with it again once you've read it.
Click Here to Continue |confirm |condition haspet(2352)
step
Walk through the net |goto Boralus/0 49.63,40.00
|tip Once you do, a path will be hidden under the rubbish on the ground.
click Ordinary Pebble
|tip Inside the cave.
Find an Ordinary Pebble |goto Boralus/0 44.71,38.50
|tip You won't be able to interact with it again once you've clicked it.
Click Here to Continue |confirm |condition haspet(2352)
step
_Be sure to have a Goblin Glider or something similar available before starting this step_
Follow the road up |goto Zuldazar/0 44.03,38.16 < 15 |only if walking
Continue following the road |goto 44.00,37.17 < 15 |only if walking
Continue following the road |goto 44.03,35.77 < 15 |only if walking
Continue following the road |goto 43.63,36.79 < 15 |only if walking
Continue following the road |goto 42.62,35.91 < 15 |only if walking
Run up the stairs |goto 41.99,35.71 < 15 |only if walking
Follow the path |goto 41.06,33.42 < 10 |only if walking
Continue following the path |goto 40.59,32.68 < 5 |only if walking
Continue following the path |goto 39.96,32.69 < 5 |only if walking
Continue following the path |goto 39.21,33.97 < 10 |only if walking
Run up the ramp |goto 38.72,33.93 < 15 |only if walking
Jump down here |goto 38.28,34.63 < 15 |only if walking
Run down the ramp |goto 37.98,35.26 < 10 |only if walking
Jump down here |goto 38.02,35.86 < 10 |only if walking
Click Here to Continue |confirm |condition haspet(2352)
step
Jump up the wedge |goto Zuldazar/0 37.60,36.24
|tip Keep jumping and moving forward until you make your way up.
Continue up the wedge  |goto 37.24,36.20
Follow the path up |goto 36.39,35.49 < 15 |only if walking
Continue up the path |goto 35.51,34.31 < 15 |only if walking
use the Goblin Glider Kit##109076
Use your Goblin Glider Kit once you reach this spot |goto 34.57,34.15 < 10 |only if walking
Enter the cave |goto 31.55,35.98 < 5 |only if walking
click Ordinary Pebble
|tip It's a tiny rock next to a vine inside the cave.
Find an Ordinary Pebble |goto 31.93,35.30
|tip You won't be able to interact with it again once you've clicked it.
Click Here to Continue |confirm |condition haspet(2352)
step
Follow the path up |goto Drustvar/0 34.88,67.70 < 15 |only if walking
Continue up the path |goto 37.33,68.69 < 10 |only if walking
Continue up the path |goto 38.10,67.94 < 10 |only if walking
Continue following the path |goto 37.64,63.04 < 15 |only if walking
Continue following the path |goto 36.50,60.66 < 15 |only if walking
Jump down carefully here |goto 35.23,57.40 < 5 |only if walking
Enter the cave |goto 35.03,54.86 < 10 |only if walking
|tip Jump on the right side of the rock to climb up.
click Ordinary Pebble
|tip It's in the eye of the effigy inside of the cave.
Find an Ordinary Pebble |goto Drustvar/0 36.31,53.83
|tip You won't be able to interact with it again once you've clicked it.
Click Here to Continue |confirm |condition haspet(2352)
step
Jump down here |goto Vol'dun/0 62.22,21.98 < 10 |only if walking
Jump down here |goto 62.85,21.83 < 5 |only if walking
Enter the cave |goto 63.21,21.26 < 5 |only if walking
click Ordinary Pebble
|tip It's on the left wall, on the floor between two larger rocks inside the cave.
|tip Bring some sort of Invisibility potion to avoid aggroing Clatterback.
Find an Ordinary Pebble |goto 63.04,21.59
|tip You won't be able to interact with it again once you've clicked it.
Click Here to Continue |confirm |condition haspet(2352)
step
Follow the path |goto Stormsong Valley/0 69.00,9.46 < 5 |only if walking
Continue up the path |goto 68.27,9.64 < 5 |only if walking
Continue up the path |goto 68.33,10.19 < 5 |only if walking
Enter the cave |goto 68.38,10.86 < 5 |only if walking
Follow the path down |goto 68.67,11.89 < 10 |only if walking
click Ordinary Pebble
|tip It's in the cart next to the water.
Find an Ordinary Pebble |goto Stormsong Valley/0 67.93,12.97
|tip You won't be able to interact with it again once you've clicked it.
Click Here to Continue |confirm |condition haspet(2352)
step
click Ordinary Pebble
|tip It will be on a ship deep underwater.
|tip You will take fatigue damage and eventually die when trying to reach this stone.
|tip You NEED an item that will increase your swimspeed in order to reach this in time.
|tip As soon as you see the fatigue bar, use whatever swim speed item you have to reach the boat.
Find an Ordinary Pebble |goto Zandalar/0 54.54,7.3
|tip There will be a skull decoration with five notches underneath it.
|tip The Ordinary Pebble will be the second from the left.
Click Here to Continue |confirm |condition haspet(2352)
step
Cross the water |goto Tiragarde Sound/0 69.57,46.02 < 20 |only if walking
Follow the path up |goto Boralus/0 40.25,88.32 < 10 |only if walking
Run up the ramp |goto 42.75,84.09 < 10 |only if walking
Run up the stairs |goto 42.70,80.88 < 5 |only if walking
Follow the path |goto 41.39,78.54 < 5 |only if walking
|tip Use an invisibility ability to avoid aggroing the town guards.
Continue following the path |goto 37.47,79.53 < 5 |only if walking
Run down the stairs |goto 37.46,80.34 < 5 |walk
click Ordinary Pebble
|tip It's between a barrel and a crate in the basement.
Find an Ordinary Pebble |goto 37.20,79.80
|tip You won't be able to interact with it again once you've clicked it.
Click Here to Continue |confirm |condition haspet(2352)
step
Follow the path down |goto Drustvar/0 22.47,15.08 < 15 |only if walking
Jump down here |goto 22.03,14.58 10 |only if walking
Follow the path down |goto 21.50,14.09 < 10 |only if walking
Continue down the path |goto 21.47,13.45 < 10 |only if walking
Cross the water |goto 20.46,13.95 < 15 |only if walking
Follow the path up |goto 18.86,10.39 < 15
Continue following the path |goto 17.57,10.42 < 15 |only if walking
Continue following the path |goto 17.16,10.25 < 15 |only if walking
Follow the path up |goto 16.71,8.66 < 15 |only if walking
Continue following the path |goto 16.67,7.20 < 15 |only if walking
Jump off the ledge here, using a _Goblin Glider Kit_ |goto 16.43,6.56
click Ordinary Pebble
|tip It is on a rock at the entrance to the cave.
Find an Ordinary Pebble |goto 17.23,6.45
|tip You need a Goblin Glider Kit to access the platform if you aren't a Demon Hunter.
|tip You won't be able to interact with it again once you've clicked it.
Click Here to Continue |confirm |condition haspet(2352)
step
Follow the path up |goto Tiragarde Sound/0 78.33,70.99 < 15 |only if walking
Continue up the path |goto 77.92,70.52 < 15 |only if walking
Continue up the path |goto 77.45,71.03 < 15 |only if walking
Continue following the path |goto 76.47,70.45 < 15 |only if walking
Enter the cave |goto 75.45,70.64 < 10 |walk
click Ordinary Pebble
|tip It's on the ground with an icy boulder to the left and a slab of meat to the right.
|tip There will be 3 Clatterbacks that burrow up inside the cave.
Find an Ordinary Pebble |goto 74.29,70.87
|tip You won't be able to interact with it again once you've clicked it.
Click Here to Continue |confirm |condition haspet(2352)
step
Follow the path up |goto 81.47,21.93 < 15 |only if walking
Continue following the path |goto 81.15,21.13 < 15 |only if walking
Continue following the path |goto 80.45,21.04 < 15 |only if walking
Jump up the rocks  |goto 80.34,19.62 < 10 |only if walking
|tip Jump between the wedges to make your way up.
Enter the cave |goto 80.18,19.32 < 10 |walk
click Ordinary Pebble
|tip It's underneath a long scroll that is hanging on the wall and covering some of the ground.
Find an Ordinary Pebble |goto 79.66,17.99
|tip You won't be able to interact with it again once you've clicked it.
Click Here to Continue |confirm |condition haspet(2352)
step
Cross the water |goto 68.61,46.83 < 15 |only if walking
Enter the underwater cave |goto Boralus/0 9.99,82.49 < 10 |only if walking
|tip It's covered by foliage.
click Ordinary Pebble
Find an Ordinary Pebble |goto Tiragarde Sound/0 59.70,41.84
|tip It's underneath some foliage, close to the water.
Click Here to Continue |confirm |condition haspet(2352)
step
Follow the path |goto Zandalar/0 45.87,3.78
Continue following the path |goto 47.7,-3
|tip Once you reach this spot, the fatigue will reset.
|tip On your way to the next coordinate, if you enter fatigue zone again correct your path so that it goes away.
Enter the Underwater Cave |goto 55.72,-10.21
|tip On your way to the cave, the fatigue bar will appear again.
|tip Prepare Swim Speed Potions.
click Ordinary Pebble
|tip It will be inside the cave, just underneath the entrance.
Find an Ordinary Pebble
Click Here to Continue |confirm |condition haspet(2352)
step
Summon Uuna
|tip This fight will be impossible without her assistance.
Watch the dialogue
kill Baa'l##141909
|tip If Uuna isn't weakening Baa'l, you may need to realm hop until you find a server where she can.
|tip You can also try toggling War Mode.
collect Baa'ls Darksign##162578 |goto Frostfire Ridge/0 62.27,22.86 |condition haspet(2352)
step
use Baa'ls Darksign##162578
Collect the "Baa'l" Battle Pet |learnpet Baa'l##141941
step
_Congratulations!_
You Collected a "Baa'l" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Enchanted Tiki Mask",{
author="support@zygorguides.com",
description="This pet can be crafted with the Enchanting profession.",
model={86482},
pet=2201,
},[[
step
This pet requires the Enchanting profession to create
|tip You will also need to kill King Rastakhan in Battle for Azeroth Raid.
Click here to continue |confirm
only if not haspet(2201)
step
kill King Rastakhan##145616
|tip He's a boss in the Battle for Azeroth raid.
collect Formula: Enchanted Tiki Mask##165696 |n
learn Enchanted Tiki Mask##285644
Click here to continue |confirm
only if not haspet(2201)
step
collect 20 Gloom Dust##152875
|tip You can get these by disenchanting Battle for Azeroth level Uncommon (green) armor and weapons.
|tip You can also purchase them from the Auction House.
only if not haspet(2201)
step
collect 10 Umbra Shard##152876
|tip You can get these by disenchanting Battle for Azeroth level Rare (blue) armor and weapons.
|tip You can also purchase them from the Auction House.
only if not haspet(2201)
step
Open Your Enchanting Crafting Panel:
_<Create 1 Enchanted Tiki Mask>_
collect Enchanted Tiki Mask##152878 |condition haspet(2201)
|tip You can also buy this from the Auction House.
step
use the Enchanted Tiki Mask##152878
Collect the "Enchanted Tiki Mask" Battle Pet |learnpet Enchanted Tiki Mask##139743
step
_Congratulations!_
You Collected a "Enchanted Tiki Mask" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Filthy Slime",{
author="support@zygorguides.com",
description="This pet is dropped by Gol'than the Malodorous in the Tol Dagor on Mythic difficulty.",
model={86101},
pet=2187,
},[[
step
This pet is earned by killing the secret boss "Gol'than the Malodorous"
|tip The dungeon NEEDS to be on Mythic difficulty or higher.
Click here to Continue |confirm |condition haspet(2187)
step
Kill enemies around this area
click Discarded Cell Key
|tip It can spawn in 6 different locations in "The Drain".
Check here for the first location |goto Tol Dagor/1 54,25
Check here for the second location |goto 67,36
Check here for the third location |goto 64,45
Check here for the fourth location |goto 39,46
Check here for the fifth location |goto 49,44
Check here for the sixth location |goto 52,29
collect Discarded Cell Key##158698 |condition haspet(2187)
Click Here to Continue |confirm
|tip You can skip this part if you have a Rogue in the group.
step
In the Brig:
click Prison Bars |goto Tol Dagor/2 37,54
|tip A Rogue can also open this.
Travel Down the Hidden Tunnel on the Left Wall of the Cell
click Filthy Bucket
|tip It's near the wall at the back of the room.
kill Gol'than the Malodorous##135448
collect Filthy Bucket##160704 |condition haspet(2187)
step
use the Filthy Bucket##160704
Collect the "Filthy Slime" Battle Pet |learnpet Filthy Slime##139049
step
_Congratulations!_
You Collected a "Filthy Slime" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Sticky Oozeling",{
author="support@zygorguides.com",
description="This pet can be captured in the wild on the western side of Nazmir.",
model={42781},
pet=2393,
},[[
step
Run up the ramp |goto Nazmir/0 27.75,44.90 < 20 |only if walking
Follow the path |goto 25.96,46.01 < 15 |only if walking
Continue following the path |goto 25.09,47.76 < 15 |only if walking
Continue following the path |goto 23.69,46.78 < 15 |only if walking
Enter the cave |goto 23.32,44.42 < 10 |only if walking
clicknpc Sticky Oozeling##130469
|tip They are found around this area.
|tip They share a spawn with Sticky Oozeling, so if there aren't any around you may need to kill them.
Weaken and capture the Sticky Oozeling in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Sticky Oozeling" Battle Pet |learnpet Sticky Oozeling##143051 |goto 22.70,44.28
step
_Congratulations!_
You Collected a "Sticky Oozeling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Teeny Titan Orb",{
author="support@zygorguides.com",
description="This pet is dropped by Echo of Myzrael in the Arathi Highlands Warfront.",
model={87890},
pet=2435,
},[[
step
kill Echo of Myzrael##141668
|tip If your faction doesn't control the Arathi Highlands Warfront, you will be flagged for PVP.
collect Teeny Titan Orb##163677 |goto Arathi Highlands/0 57.08,34.73 |condition haspet(2435)
step
use the Teeny Titan Orb##163677
Collect the "Teeny Titan Orb" Battle Pet |learnpet Teeny Titan Orb##143515
step
_Congratulations!_
You Collected a "Teeny Titan Orb" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Void Jelly",{
author="support@zygorguides.com",
description="This pet is dropped by MobName in the Battle for Darkshore Warfront.",
model={90141},
pet=2549,
},[[
step
kill Soggoth the Slitherer##147897
|tip You might need a group to accomplish this.
|tip If your faction doesn't control the Darkshore Warfront, you will be flagged for PVP.
collect Squishy Purple Goo##166454 |goto Darkshore/0 40.57,85.11 |condition haspet(2549)
step
use the Squishy Purple Goo##166454
Collect the "Void Jelly" Battle Pet |learnpet Void Jelly##148844
step
_Congratulations!_
You Collected a "Void Jelly" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Voidwiggler",{
author="support@zygorguides.com",
description="This pet is dropped by Darbel Montrose in the Arathi Highlands Warfront.",
model={87871},
pet=2434,
},[[
step
kill Darbel Montrose##142688
|tip Inside the building.
|tip If your faction doesn't control the Arathi Highlands Warfront, you will be flagged for PVP.
collect Tiny Grimoire##163652 |goto Arathi Highlands/0 50.6,61.2 |condition haspet(2434)
She Can Also Spawn Inside the House Here [50.6,36.8]
step
use the Tiny Grimoire##163652
Collect the "Voidwiggler" Battle Pet |learnpet Voidwiggler##143507
step
_Congratulations!_
You Collected a "Voidwiggler" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Zur'aj the Depleted",{
author="support@zygorguides.com",
description="This pet is dropped by MobName in the Battle for Darkshore Warfront.",
model={90142},
pet=2550,
},[[
step
kill Twilight Prophet Graeme##147942
|tip If your faction doesn't control the Darkshore Warfront, you will be flagged for PVP.
collect Zur'aj the Depleted##166455 |goto Darkshore/0 40.60,82.68 |condition haspet(2550)
step
use Zur'aj the Depleted##166455
Collect the "Zur'aj the Depleted" Battle Pet |learnpet Zur'aj the Depleted##148846
step
_Congratulations!_
You Collected a "Zur'aj the Depleted" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Alarm-O-Dog",{
author="support@zygorguides.com",
description="This pet is purchased from Micro Zoox in Dun Morogh for 3 Pristine Gizmos.",
model={89767},
pet=2533,
},[[
step
collect 3 Pristine Gizmos##165835
|tip These are collected through weekly Pet Battle Challenges.
|tip Refer to our Pet Challenge guides to accomplish this.
step
talk Micro Zoox##147070
buy Rechargeable Alarm-O-Dog Battery##165857 |goto Dun Morogh/10 31.13,71.53 |condition haspet(2533)
step
use the Rechargeable Alarm-O-Dog Battery##165857
collect the "Alarm-O-Dog" Battle Pet |learnpet Alarm-O-Dog##147692
step
_Congratulations!_
You Collected a "Alarm-O-Dog" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\False Knucklebump",{
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
model={26524},
pet=2449,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get False Knucklebump as a reward.
collect False Knucklebump##163806 |condition haspet(2449)
step
use False Knucklebump##163806
Collect the "False Knucklebump" Battle Pet |learnpet False Knucklebump##143804
step
_Congratulations!_
You Collected a "False Knucklebump" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Gearspring Hopper",{
author="support@zygorguides.com",
description="This pet can be crafted with the Alchemy profession.",
model={78837},
pet=2474,
},[[
step
This pet is created with the Alchemy Profession, with the _"Transmute: Meat to Pet"_ ability
|tip You will need level 50 Battle for Azeroth Alchemy to create this.
|tip You'll need 10 Meaty Haunch, 10 Stringy Loins and 5 Blood-Stained Bone to create this.
|tip After crafting a Grumbling Sac, it will turn into a Quivering Sac after 7 days.
collect Quivering Sac##160325 |condition haspet(2474)
step
use the Quivering Sac##160325
|tip This drops random pets, so you may need to craft more.
collect Wind-Up Frog##163860 |condition haspet(2474)
step
use the Wind-Up Frog##163860
Collect the "Gearspring Hopper" Battle Pet |learnpet Gearspring Hopper##143957
step
_Congratulations!_
You Collected a "Gearspring Hopper" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Lil' Siege Tower",{
author="support@zygorguides.com",
description="This pet can be purchased from Vindicator Jaelaana in Boralus for 200 Polished Pet Charms."..
"_Requires 7th Legion - Revered_",
model={87976},
pet=2443,
},[[
step
Reach Revered Reputation with the 7th Legion |condition rep('7th Legion')<=Revered
|tip Use the Battle for Azeroth "World Quests" guides to complete "7th Legion" world quests.
|tip Complete the weekly Island Expeditions quest "Azerite for the Alliance".
|tip Complete Missions at your mission table that reward reputation with the 7th Legion.
step
collect 200 Polished Pet Charm##163036 |condition haspet(2443)
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
step
talk Vindicator Jaelaana##135446
|tip Standing on the dock leading to the ship.
buy Lil' Siege Tower##163778 |goto Boralus/0 68.96,24.72 |condition haspet(2443)
step
use the Lil' Siege Tower##163778
Collect the "Lil' Siege Tower" Battle Pet |learnpet Lil' Siege Tower##143738
step
_Congratulations!_
You Collected a "Lil' Siege Tower" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Lil' War Machine",{
author="support@zygorguides.com",
description="This pet can be purchased from Vindicator Jaelaana in Boralus for 200 Polished Pet Charms."..
"_Requires The Honorbound - Revered_",
condition_valid=function() return Horde end,
condition_valid_msg="This pet must be purchased on a Horde character or from the Auction House.",
model={87977},
pet=2444,
},[[
step
Reach Revered Reputation with the 7th Legion |condition rep('7th Legion')<=Revered
|tip Use the Battle for Azeroth "World Quests" guides to complete "7th Legion" world quests.
|tip Complete the weekly Island Expeditions quest "Azerite for the Alliance".
|tip Complete Missions at your mission table that reward reputation with the 7th Legion.
step
collect 200 Polished Pet Charm##163036 |condition haspet(2444)
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
step
talk Vindicator Jaelaana##135446
|tip Standing on the dock leading to the ship.
buy Lil' War Machine##163779 |goto Boralus/0 68.96,24.72 |condition haspet(2444)
step
use the Lil' War Machine##163779
Collect the "Lil' War Machine" Battle Pet |learnpet Lil' War Machine##143739
step
_Congratulations!_
You Collected a "Lil' War Machine" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Mechanical Cockroach",{
author="support@zygorguides.com",
description="This pet is purchased from Micro Zoox in Dun Morogh for 1 Pristine Gizmos.",
model={88790},
pet=2531,
},[[
step
collect 1 Pristine Gizmos##165835
|tip These are collected through weekly Pet Battle Challenges.
|tip Refer to our Pet Challenge guides to accomplish this.
step
talk Micro Zoox##147070
buy Mechanical Cockroach##165854 |goto Dun Morogh/10 31.13,71.53 |condition haspet(2485)
step
use the Mechanical Cockroach##165854
Collect the "Mechanical Cockroach" Battle Pet |learnpet Mechanical Cockroach##147671
step
_Congratulations!_
You Collected a "Mechanical Cockroach" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Mechanical Prairie Dog",{
author="support@zygorguides.com",
description="This pet can be purchased from Dana Pull in Tiragarde Sound for 75 Polished Pet Charms.",
model={75353},
pet=2410,
},[[
step
collect 75 Polished Pet Charm##163036 |condition haspet(2409)
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
step
Run down the stairs |goto Boralus/0 67.39,16.18 < 10 |only if walking
Continue down the stairs |goto 66.42,19.90 < 10 |only if walking
Run down the stairs |goto 63.76,20.35 < 10 |only if walking
Follow the path |goto 60.78,21.61 < 10 |only if walking
Continue following the path |goto 58.76,23.41 < 10 |only if walking
Continue following the path |goto 57.65,26.50 < 10 |only if walking
Run up the stairs |goto 57.82,30.11 < 10 |only if walking
Follow the road |goto 57.25,31.20 < 10 |only if walking
Continue following the road |goto 58.48,35.73 < 10 |only if walking
Run up the stairs |goto 57.29,38.15 < 10 |only if walking
Follow the path |goto 53.29,40.81 < 10 |only if walking
Continue following the path |goto 50.10,43.05 < 10
Run up the stairs |goto 50.68,44.66 < 10 |only if walking
Follow the road |goto 49.60,46.73 < 10 |only if walking
Enter the building |goto 50.43,46.74 < 5 |walk
talk Dana Pull##142065
|tip Inside the building.
buy Strange Looking Mechanical Squirrel##163496 |goto 50.92,45.92 |condition haspet(2410)
step
use the Strange Looking Mechanical Squirrel##163496
Collect the "Mechanical Prairie Dog" Battle Pet |learnpet Mechanical Prairie Dog##143188
step
_Congratulations!_
You Collected a "Mechanical Prairie Dog" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Rebuilt Gorilla Bot",{
author="support@zygorguides.com",
description="This pet can be collected from the Faction Assault on Vol'dun.",
model={90279},
pet=2564,
},[[
step
You must gather 3 material that only appear during a Faction Assault on Vol'dun
|tip You will only be able to collect one of the 3 items needed per Assault.
|tip This means that you will not be able to gather these in a single day.
kill Dookthar the Destroyer##147563
|tip Make sure that before you engage, it is at least fighting with Arachni.
click Loose Parts##311902
|tip This will spawn when Dookthar the Destroyer is killed and Arachni is still alive.
collect Banana-Shaped Power Cell##166734 |goto Vol'dun/0 41.84,42.32 |or |condition haspet(2564)
collect Steel-Plated Primate Exoskeleton##166733 |goto 41.84,42.32 |or |condition haspet(2564)
collect Bludgeoning-Resistant Chest Reinforcer##166732 |goto 41.84,42.32 |or |condition haspet(2564)
step
You must gather 3 material that only appear during a Faction Assault on Vol'dun
|tip You will only be able to collect one of the 3 items needed per Assault.
|tip This means that you will not be able to gather these in a single day.
kill Dookthar the Destroyer##147563
|tip Make sure that before you engage, it is at least fighting with Arachni.
click Loose Parts##311902
|tip This will spawn when Dookthar the Destroyer is killed and Arachni is still alive.
collect Banana-Shaped Power Cell##166734 |goto Vol'dun/0 41.84,42.32 |or 2 |condition haspet(2564)
collect Steel-Plated Primate Exoskeleton##166733 |goto 41.84,42.32 |or 2 |condition haspet(2564)
collect Bludgeoning-Resistant Chest Reinforcer##166732 |goto 41.84,42.32 |or 2 |condition haspet(2564)
step
You must gather 3 material that only appear during a Faction Assault on Vol'dun
|tip You will only be able to collect one of the 3 items needed per Assault.
|tip This means that you will not be able to gather these in a single day.
kill Dookthar the Destroyer##147563
|tip Make sure that before you engage, it is at least fighting with Arachni.
click Loose Parts##311902
|tip This will spawn when Dookthar the Destroyer is killed and Arachni is still alive.
collect Banana-Shaped Power Cell##166734 |goto Vol'dun/0 41.84,42.32 |condition haspet(2564)
collect Steel-Plated Primate Exoskeleton##166733 |goto 41.84,42.32|condition haspet(2564)
collect Bludgeoning-Resistant Chest Reinforcer##166732 |goto 41.84,42.32 |condition haspet(2564)
step
use Banana-Shaped Power Cell##166734
collect Rebuilt Gorilla Bot##166715 |condition haspet(2564)
step
use the Rebuilt Gorilla Bot##166715
Collect the "Rebuilt Gorilla Bot" Battle Pet |learnpet Rebuilt Gorilla Bot##149348
step
_Congratulations!_
You Collected the "Rebuilt Gorilla Bot" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Rebuilt Mechanical Spider",{
author="support@zygorguides.com",
description="This pet can be collected by using a Horde Character or buying the pet from the Auction House.",
model={90412},
pet=2565,
},[[
step
talk Auctioneer Fitch##8719
|tip Inside the building.
collect 1 Rebuilt Mechanical Spider##166723 |goto Stormwind City/0 61.12,70.62 |condition haspet(2565)
|tip The materials for this pet can only be gathered by a Horde character.
|tip You will need to buy it from the Auction House or use a Horde character to attain it.
step
use the Rebuilt Mechanical Spider##166723
Collect the "Rebuilt Mechanical Spider" Battle Pet |learnpet Rebuilt Mechanical Spider##149361
step
_Congratulations!_
You Collected the "Rebuilt Mechanical Spider" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Rooter",{
author="support@zygorguides.com",
description="This pet can be collected by completing the \"Pet Emporium\" achievement, "..
"which requires you to collect 800 unique battle pets.",
model={75349},
pet=2401,
},[[
step
Earn the "Pet Emporium" Achievement |achieve 12992
|tip Refer to our various pet guides to accomplish this.
step
collect Rooter##163220 |condition haspet(2401)
|tip It will appear in any Mailbox once you complete the achievement.
step
use Rooter##163220
Collect the "Rooter" Battle Pet |learnpet Rooter##143142
step
_Congratulations!_
You Collected a "Rooter" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Vengeful Chicken",{
author="support@zygorguides.com",
description="This pet is awarded from the quest \"Cutting Edge Poultry Science\" which can be "..
"picked up in the Waycrest Manor dungeon.",
model={86231},
pet=2192,
},[[
step
Enter Waycrest Manor While the World Quest "Warcrest Manor: Witchy Kitchen" is Available
|tip This pet is only available when the world quest "Waycrest Manor: Witchy Kitchen" is up.
|tip Do not kill Roast Chef Rhonda or Sauciere Samuel.
|tip Do low dps to avoid killing these two npcs.
|tip Eventually, Roast Chef Rhonda will "Raw Chicken".
|tip It can be seen on the ground in a green puddle.
|tip Once the Raw Chicken is present, you will then need to wait for Roast Chef Rhonda to cast "Roast Chicken".
|tip Note: Whoever is tanking the boss should stand on top of the Raw Chicken to ensure that it gets cooked.
|tip Finally, you will Sauciere Samuel to cast "Spray Gravy" on top of the Roasted Chicken.
|tip Once the following steps are followed, it will produce "Delicious Chicken".
|tip The Chicken will give the quest "Cutting Edge Poultry Science".
|tip You have 1 minute to accept the quest.
|tip You cannot accept the quest if you kill the chefs.
accept Cutting Edge Poultry Science##50990 |goto Waycrest Manor/0 67,28
step
talk Oglethorpe Obnoticus##7406
|tip Inside the building.
turnin Cutting Edge Poultry Science##50990 |goto The Cape of Stranglethorn/0 43.01,72.22
step
collect Intact Chicken Brain##160940 |condition haspet(2192)
step
use the Intact Chicken Brain##160940
Collect the "Vengeful Chicken" Battle Pet |learnpet Vengeful Chicken##139372
step
_Congratulations!_
You Collected a "Vengeful Chicken" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Mini Spider Tank",{
author="support@zygorguides.com",
description="This pet can be collected from completing the Pet Battle Challenge: Gnomeregan Achievement.",
model={31623},
pet=2534,
},[[
step
Earn the "Pet Battle Challenge: Gnomeregan" Achievement |achieve 13269
|tip Refer to our Pet Battle Challenge: Gnomeregan achievement guide to accomplish this.
step
use the Mini Spider Tank##165894
Collect the "Mini Spider Tank" Battle Pet |learnpet Mini Spider Tank##147838
step
_Congratulations!_
You Collected the "Rebuilt Gorilla Bot" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Barnaby",{
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
model={88012},
pet=2456,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get Barnaby as a reward.
collect Barnaby##163799 |condition haspet(2456)
step
use Barnaby##163799
Collect the "Barnaby" Battle Pet |learnpet Barnaby##143796 |condition haspet(2456)
step
_Congratulations!_
You Collected a "Barnaby" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Bilefang Skitterer",{
author="support@zygorguides.com",
description="This pet can be purchased from Nigel Rifthold in Drustvar for 100 Polished Pet Charms.",
model={69092},
pet=2408,
},[[
step
collect 100 Polished Pet Charm##163036
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
only if not haspet(2408)
step
talk Xun Xun Sweetflower##136269
buy 10 Tirasreli Gourmet Chocolate##155810 |goto Drustvar/0 20.68,45.58 |condition haspet(2408)
step
click Adventurer's Society Loot Stash |goto 52.32,31.73
|tip Inside the building.
|tip Loot the chest twice.
Click Here to Continue |confirm |condition haspet(2408)
step
talk Nigel Rifthold##142197
|tip He will show up after you've looted the chest twice.
buy Wad of Spider Web##163494 |goto 52.32,31.68 |condition haspet(2408)
step
use the Wad of Spider Web##163494
Collect the "Bilefang Skitterer" Battle Pet |learnpet Bilefang Skitterer##143181
step
_Congratulations!_
You Collected a "Bilefang Skitterer" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Captain Nibs",{
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
model={88016},
pet=2455,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get Captain Nibs as a reward.
collect Captain Nibs##163798 |condition haspet(2455)
step
use Captain Nibs##163798
Collect the "Captain Nibs" Battle Pet |learnpet Captain Nibs##143795
step
_Congratulations!_
You Collected a "Captain Nibs" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Detective Ray",{
author="support@zygorguides.com",
description="This pet is dropped from Conflagros in the Battle for Darkshore Warfront.",
model={81665},
pet=2546,
},[[
step
kill Conflagros##166451
|tip You may need help with this.
|tip Note that if your faction doesn't control Darkshore, you will be flagged for pvp.
collect Rattling Bones##166451 |goto Darkshore/0 39.29,61.92 |condition haspet(2546)
step
use the Rattling Bones##166451
Collect the "Detective Ray" Battle Pet |learnpet Detective Ray##148825
step
_Congratulations!_
You Collected a "Detective Ray" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Leper Rat",{
author="support@zygorguides.com",
description="This pet is purchased from Micro Zoox in Dun Morogh for 2 Pristine Gizmos.",
model={88785},
pet=2485,
},[[
step
collect 2 Pristine Gizmos##165835
|tip These are collected through weekly Pet Battle Challenges.
|tip Refer to our Pet Challenge guides to accomplish this.
step
talk Micro Zoox##147070
buy Leper Rat Tail##165855 |goto Dun Morogh/10 31.13,71.53 |condition haspet(2485)
step
use the Leper Rat Tail##165855
Collect the "Leper Rat" Battle Pet |learnpet Leper Rat##147679
step
_Congratulations!_
You Collected a "Leper Rat" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Miimii",{
author="support@zygorguides.com",
description="This pet can be collected by completing the \"How to Keep a Mummy\" achievement, "..
"which requires you to free Miimii the Mummy in King's Rest on Mythic difficulty.",
model={86574},
pet=2202,
},[[
step
This Pet is Earned by Completing the "How to Keep a Mummy" Achievement
|tip Refer to the "How to Keep a Mummy" Achievement guide to accomplish this.
collect Thousand Year Old Mummy Wraps##161214 |condition haspet(2202)
step
use the Thousand Year Old Mummy Wraps##161214
Collect the "Miimii" Battle Pet |learnpet Miimii##140125
step
_Congratulations!_
You Collected a "Miimii" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Restored Revenant",{
author="support@zygorguides.com",
description="This pet is a reward from a Drust Archaeology solve.",
model={86806},
pet=2199,
},[[
step
collect Pile of Bones##161089 |condition haspet(2199)
|tip This is gathered with Kul Tiran Archaeology.
|tip It will be a rare solve for a "Restored Revenant", requiring 185 Drust Fragments.
|tip You can also buy this from the Auction House.
step
use the Pile of Bones##161089
Collect the "Restored Revenant" Battle Pet |learnpet Restored Revenant##139782
step
_Congratulations!_
You Collected a "Restored Revenant" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Returned Hatchling",{
author="support@zygorguides.com",
description="This pet can be captured in the wild around the Terrace of Sorrows in western Nazmir.",
model={34417},
pet=2394,
},[[
step
clicknpc Returned Hatchling##130347
Weaken and capture the Returned Hatchling in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Returned Hatchling" Battle Pet |learnpet Returned Hatchling##143052 |goto Nazmir/0 33.10,57.75
step
_Congratulations!_
You Collected a "Returned Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Rotting Ghoul",{
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
model={90176},
pet=2553,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get a Rotting Ghoul as a reward.
collect Rotting Ghoul##166488 |condition haspet(2553)
step
use the Rotting Ghoul##166488
Collect the "Rotting Ghoul" Battle Pet |learnpet Rotting Ghoul##148981
step
_Congratulations!_
You Collected a "Rotting Ghoul" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Smoochums",{
author="support@zygorguides.com",
description="This pet can be purchased from Nigel Rifthold in Drustvar for 200 Polished Pet Charms.",
model={86135},
pet=2189,
},[[
step
Cross the bridge |goto Drustvar/0 54.56,36.62 < 15 |only if walking
talk Abby Lewis##121603
|tip She walks around this area.
accept Teddies and Tea##47289 |goto 54.35,39.21
step
Enter the building |goto 55.43,39.58 < 10 |walk
click Trunksy
|tip Inside the building.
Find Trunksy |q 47289/2 |goto 55.39,39.75
step
click Mr. Munchykins
Find Mr. Munchykins |q 47289/1 |goto 55.61,38.55
step
click Mayor Striggs
Find Mayor Striggs |q 47289/3 |goto 56.28,38.19
step
_Next to you:_
talk Abby Lewis
turnin Teddies and Tea##47289
accept Kitty?##47428
step
clicknpc Smoochums##121684
turnin Kitty?##47428 |goto 55.60,41.18
step
click Glenbrook Register
accept The Village of Glenbrook##45079 |goto 55.62,41.19
step
Enter the cave |goto 53.54,44.06 < 10 |walk
click Mary's Book
|tip Inside the cave.
Find Mary Hayes |q 45079/1 |goto 53.14,44.44
step
Leave the cave |goto 53.53,44.07 < 10 |walk
click Hawthorne's Hoe
Find Samuel Hawthorne |q 45079/3 |goto 55.49,45.29
step
Enter the cave |goto 56.74,46.64 < 10 |walk
clicknpc Jonathan Hayes##122491
|tip Inside the cave.
Choose _<Investigate the body for identification.>_
Find Jonathan Hayes |q 45079/2 |goto 57.17,46.41
step
Enter the cave |goto 54.86,48.69 < 10 |walk
talk Annie Warren##122493
|tip Inside the cave.
turnin The Village of Glenbrook##45079 |goto 54.74,49.14
accept Tea Party##44785 |goto 54.74,49.14
step
Leave the cave |goto 54.89,48.63 < 10 |walk
Follow Abby Lewis |q 44785/1 |goto 56.40,49.06
step
click Teapot
Pour the Tea |q 44785/2 |goto 58.18,47.91
step
kill Conjured Horror##122673 |q 44785/3 |goto 58.18,47.91
step
talk Annie Warren##123123
turnin Tea Party##44785 |goto 57.71,47.75
step
collect 200 Polished Pet Charm##163036
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
only if not haspet(2189)
step
talk Xun Xun Sweetflower##136269
buy 10 Tirasreli Gourmet Chocolate##155810 |goto Drustvar/0 20.68,45.58 |condition haspet(2189)
Click Here to Continue |confirm |next "buy"
|tip If you have already taken the candy from the Advenurer's Society, click the line above.
step
click Adventurer's Society Loot Stash |goto 52.32,31.73
|tip Inside the building.
|tip Loot the chest twice.
Click Here to Continue |confirm |condition haspet(2189)
step
label "buy"
talk Nigel Rifthold##142197
|tip He will show up after you've looted the chest twice.
buy Smoochums' Bloody Heart##160708 |goto 52.32,31.68 |condition haspet(2189)
step
use Smoochums' Bloody Heart##160708
Collect the "Smoochums" Battle Pet |learnpet Smoochums##139081
step
_Congratulations!_
You Collected a "Smoochums" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Spectral Raven",{
author="support@zygorguides.com",
description="This pet can be captured in the wild around The Necropolis in northern Nazmir.",
model={81076},
pet=2397,
},[[
step
clicknpc Spectral Raven##143054
Weaken and capture the Spectral Raven in battle
|tip Use the "Trap" ability once it is below 35% health.
|tip They are found all around The Necropolis.
Collect the "Spectral Raven" Battle Pet |learnpet Spectral Raven##143054 |goto Nazmir/0 42.73,25.32
step
_Congratulations!_
You Collected a "Spectral Raven" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Wicker Pup",{
author="support@zygorguides.com",
description="This pet can be captured after a BFA treasure hunt in Drustvar.",
model={86805},
pet=2411,
},[[
step
click Hexed Chest##297878
collect Bundle of Wicker Sticks##163789	|goto Drustvar/0 18.5,51.4 |condition haspet(2411)
step
Enter the cave |goto 25.40,23.53 < 10 |walk
click Enchanted Chest##297881 |goto 25.45,24.15
|tip Inside the cave.
collect Wolf Pup Spine##163796 |goto 25.4,24.1 |condition haspet(2411)
step
click Bespelled Chest##297879
collect Spooky Incantation##163790 |goto 55.58,51.83 |condition haspet(2411)
step
Follow the path up |goto 68.48,69.10 < 15 |only if walking
Follow the path |goto 67.59,70.37 < 15 |only if walking
Continue up the path |goto 67.38,71.23 < 15 |only if walking
Continue up the path |goto 67.45,72.41 < 15 |only if walking
click Ensorcelled Chest##297880
collect Miniature Stag Skull##163791 |goto 67.8,73.7 |condition haspet(2411)
step
use the Spooky Incantation##163790
collect Spooky Bundle of Sticks##163497 |condition haspet(2411)
step
use the Spooky Bundle of Sticks##163497
Collect the "Wicker Pup" Battle Pet |learnpet Wicker Pup##143189
step
_Congratulations!_
You Collected a "Wicker Pup" Battle Pet.
]])
ZGV.BETAEND()
