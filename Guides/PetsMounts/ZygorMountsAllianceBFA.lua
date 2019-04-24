local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("PetsMountsABFA") then return end
ZygorGuidesViewer.GuideMenuTier = "BFA"
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Bloodgorged Crawg",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"ground, mount, battle, for, azeroth, bloodgorged, crawg"},
mounts={250735},
model={78858},
description="This mount is acquired earning the \"Glory of the Uldir Raider\" achievement.",
},[[
step
Earn the "Elevator Music" Achievement |achieve 12937 |learnmount Bloodgorged Crawg##250735
|tip Use the "Elevator Music" achievement guide to accomplish this.
step
Earn the "Parental Controls" Achievement |achieve 12938 |learnmount Bloodgorged Crawg##250735
|tip Use the "Parental Controls" achievement guide to accomplish this.
step
Earn the "Thrash Mouth - All Stars" Achievement |achieve 12823 |learnmount Bloodgorged Crawg##250735
|tip Use the "Thrash Mouth - All Stars" achievement guide to accomplish this.
step
Earn the "What's in the Box?" Achievement |achieve 12828 |learnmount Bloodgorged Crawg##250735
|tip Use the "What's in the Box?" achievement guide to accomplish this.
step
Earn the "Now We Got Bad Blood" Achievement |achieve 12772 |learnmount Bloodgorged Crawg##250735
|tip Use the "Now We Got Bad Blood" achievement guide to accomplish this.
step
Earn the "Edgelords" Achievement |achieve 12830 |learnmount Bloodgorged Crawg##250735
|tip Use the "Edgelords" achievement guide to accomplish this.
step
Earn the "Existential Crisis" Achievement |achieve 12836 |learnmount Bloodgorged Crawg##250735
|tip Use the "Existential Crisis" achievement guide to accomplish this.
step
Earn the "Double Dribble" Achievement |achieve 12551 |learnmount Bloodgorged Crawg##250735
|tip Use the "Double Dribble" achievement guide to accomplish this.
step
collect Bloodgorged Crawg##163216 |learnmount Bloodgorged Crawg##250735
|tip You can find it in your mailbox.
step
use the Bloodgorged Crawg##163216
Learn the "Bloodgorged Crawg" Mount |learnmount Bloodgorged Crawg##250735
step
_Congratulations!_
You Collected the "Bloodgorged Crawg" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Dark Iron Core Hound",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={271646},
model={85691},
description="This mount is acquired by completing the War Campaign as well as becoming exalted with the 7th Legion.",
},[[
step
Earn the "Ready for War" Achievement |achieve 12510
|tip Progress through the "War Campaign" leveling guide until you earn this acheivement.
step
Reach Exalted Reputation with the 7th Legion |condition rep('7th Legion') == Exalted
|tip Use the "7th Legion" reputation guide to accomplish this.
step
Earn the "Allied Races: Dark Iron Dwarf" Achievement |achieve 12515
|tip Use the "Dark Iron Dwarf Race Unlock" leveling guide to accomplish this.
step
collect Dark Iron Core Hound##161331
|tip It will be in your bags after earning the "Allied Races: Dark Iron Dwarf" achievement.
step
use the Dark Iron Core Hound##161331
Learn the "Dark Iron Corehound" Mount |learnmount Dark Iron Core Hound##271646
step
_Congratulations!_
You Collected the "Dark Iron Core Hound" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Frenzied Feltalon",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={280729},
description="This mount is acquired by earning the achievement \"A Horde of Hoofbeats\" which requires you to \n"..
"collect 400 mounts.",
},[[
step
Collect 400 different mounts
|tip Use our various mount guides to accomplish this.
Earn the "A Horde of Hoofbeats" Achievement |achieve 12933
step
use the Frenzied Feltalon##163981
|tip It will be in your mailbox.
Learn the "Frenzied Feltalon" Mount |learnmount Frenzied Feltalon##280729
step
_Congratulations!_
You Collected the "Frenzied Feltalon" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Lightforged Felcrusher",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"ground, mount, battle, of, azeroth, alliance, achievement"},
mounts={258022},
model={81114},
condition_end=function() return hasmount(258022) end,
description="This mount is acquired by completing the \"Allied Races: Lightforged Draenei\" achievement.",
},[[
step
accept The Call for Allies##49929 |goto Dalaran L/10 72.46,45.94
|tip You will accept this quest automatically.
step
Enter the building |goto Stormwind City/0 52.82,14.59 < 7 |walk
talk Anduin Wrynn##126301
turnin The Call for Allies##49929 |goto 52.07,13.42
step
Load the "Argus Campaign" Leveling Guide |confirm |next "Leveling Guides\\Legion (100-110)\\Argus Campaign"
|tip Click the line above to load the guide.
|tip You must progress through the Argus Campaign guide until you earn the You Are Now Prepared! achievement.
Earn the _You Are Now Prepared!_ Achievement |achieve 12066
step
Load the "Argus Campaign" Leveling Guide |confirm |next "Leveling Guides\\Legion (100-110)\\Argus Campaign"
|tip Click the line above to load the guide.
|tip Completing certain quests in Argus reward reputation with the Army of the Light.
Load the "World Quests" Daily Guide |confirm |next "Dailies Guides\\Legion\\World Quests"
|tip Click the line above to load the guide.
|tip Completing world quests that indicate Army of the Light award reputation with them.
Use Army of the Light reputation insignias
|tip These are awarded from Order Hall missions, Army of the Light emissary quests, and world quests.
|tip These can also be chosen from "The Kirin Tor of Dalaran" emissary quest.
Use your Army of the Light Insignia |use Army of the Light Insignia##152957 |only if itemcount(152957) >= 1
Use your Army of the Light Insignia |use Army of the Light Insignia##152958 |only if itemcount(152958) >= 1
Use your Greater Army of the Light Insignia |use Greater Army of the Light Insignia##152956 |only if itemcount(152956) >= 1
Use your Greater Army of the Light Insignia |use Greater Army of the Light Insignia##152955 |only if itemcount(152955) >= 1
Load the "Argus Invasions" Scenario Guide |confirm |next "Dungeon Guides\\Legion Scenarios\\Argus Invasions"
|tip Click the line above to load the guide.
|tip The weekly quests "Invasion Point Offensive," "Commander's Downfall," "Invasion Onslaught," and "Supplying the Antoran Campaign" reward reputation as well.
Gain Exalted Reputation with the Army of the Light |achieve 12081
step
talk Anduin Wrynn##126301
accept A Choice of Allies##50239 |goto 52.07,13.42
step
talk Alleria Windrunner##126321
Ask her _"What do we know about the void elves?"_
Speak with Alleria About the Void Elves |q 50239/2 |goto 52.24,13.51
step
talk High Exarch Turalyon##126319
Ask him _"What can you tell me about the Lightforged draenei?"_
Speak with Turalyon About the Lightforged Draenei |q 50239/1 |goto 52.12,13.71
step
talk Anduin Wrynn##126301
Tell him _"I am ready to pursue our next ally."_
|tip Select Lightforged Draenei.
Choose an Ally to Pursue |q 50239/3 |goto 52.07,13.42
step
talk Anduin Wrynn##126301
turnin A Choice of Allies##50239 |goto 52.07,13.42
step
talk Anduin Wrynn##126301
accept A Second Ally For the Cause##50248 |goto Stormwind City/0 52.08,13.42
|only if completedq(48962)
step
talk Anduin Wrynn##126301
Tell him _"I am ready to pursue our next ally."_
|tip Select Lightforged Draenei.
Choose an Ally to Pursue |q 50248/1 |goto 52.07,13.42
|only if completedq(48962)
step
talk Anduin Wrynn##126301
turnin A Second Ally For the Cause##50248 |goto 52.08,13.42
|only if completedq(48962)
step
talk High Exarch Turalyon##126319
accept The Lightforged##49698 |goto Stormwind City/0 52.12,13.70
step
Leave the building |goto 52.83,14.62 < 7 |walk
clicknpc Lightforged Beacon##130758 |goto 54.41,14.46
Board the Vindicaar |goto Vindicaar Scenario/1 49.97,46.22 |noway |c |q 49698 |future
step
talk Captain Fareeya##130549
turnin The Lightforged##49698 |goto 443.83,27.05
accept Forge of Aeons##49266 |goto 43.83,27.05
step
clicknpc Lightforged Beacon##130511
Enter the Scenario |scenariostart |goto 49.90,46.22 |q 49266 |future
step
Meet with T'paartos |scenariogoal Meet with T'paartos##1/37571 |goto Draenei Scenario/0 88.01,44.45 |q 49266 |future
step
Follow the path |goto 89.02,37.72 < 7 |walk
Enter the building |goto 87.71,29.59 < 7 |walk
Follow T'paartos |scenariogoal Follow T'paartos##2/37710 |goto 88.76,28.34 |q 49266 |future
step
See the Past |scenariogoal See the past##3/37711 |goto 88.76,28.34 |q 49266 |future
|tip Wait for the dialogue to complete.
step
Leave the building |goto 87.59,29.64 < 7 |walk
Enter the Swamp |scenariogoal Swamp entered##4/37712 |goto 83.67,32.38 |q 49266 |future
step
Go down the hill |goto Draenei Scenario/0 79.50,33.54 < 10 |walk
Follow the path |goto 72.26,22.78 < 7 |walk
Cross the bridge |goto 69.52,26.08 < 7 |walk
Find the Child |scenariogoal Child found##5/37718 |goto 66.79,29.70 |q 49266 |future
step
kill Swamp Serpent##128115 |scenariogoal Swamp Serpent slain##6/37717 |goto 66.79,29.70 |q 49266 |future
step
Cross the bridge |goto Draenei Scenario/0 61.85,31.98 < 7 |walk
Find the Refuge |scenariogoal Refuge found##7/37931 |goto 57.10,23.78 |q 49266 |future
step
Enter the tunnel |goto Draenei Scenario/0 52.98,26.33 < 7 |walk
clicknpc Crystal##128036
Collect the Crystal |scenariogoal Crystal collected##8/37932 |goto 47.01,27.36 |q 49266 |future
step
kill Crystal Fury##128038 |scenariogoal Crystal Fury slain##9/37968 |goto 47.55,27.88 |q 49266 |future
step
Follow the path |goto Draenei Scenario/0 51.85,27.05 < 7 |walk
Leave the tunnel |goto 56.98,23.63 < 7 |walk
Kill Doubt and Fear enemies around this area
Conquer #7# Doubts and Fears |scenariogoal Doubts and Fears conquered##10/37933 |goto 45.59,41.87 |q 49266 |future
step
Follow the path |goto 39.25,43.77 < 10 |walk
Follow the path |goto 22.67,37.22 < 10 |walk
Find the Cave |scenariogoal Cave found##11/38069 |goto 16.63,46.71 |q 49266 |future
step
Enter the tunnel |goto 13.36,49.96 < 7 |walk
kill Terror##128427 |scenariogoal Terror defeated##12/38070 |goto 8.61,50.26 |q 49266 |future
step
Follow the path |goto Draenei Scenario/0 12.77,50.31 < 7 |walk
Leave the cave |goto 17.01,46.38 < 7 |walk
Follow the path |goto 23.41,36.61 < 10 |walk
Follow the path |goto 39.32,44.45 < 10 |walk
Follow T'paartos |scenariogoal Follow T'paartos##13/38071 |goto 45.67,59.90 |q 49266 |future
step
clicknpc T'paartos##128424
Free T'paartos |scenariogoal T'paartos freed##14/38072 |goto 46.80,65.95 |q 49266 |future
step
Follow the path |goto 49.44,64.93 < 15 |walk
Follow the path |goto 57.56,71.50 < 15 |walk
Follow T'paartos |scenariogoal Follow T'paartos##15/38103 |goto 66.64,77.57 |q 49266 |future
step
clicknpc T'paartos##128550
|tip At the bottom of the ramp.
Free Kind |scenariogoal Kind##16/38082 |goto 68.44,77.13 |q 49266 |future
step
Follow the path |goto 67.03,73.01 < 7 |walk
Follow the path |goto 64.87,71.63 < 7 |walk
Follow the path |goto 61.21,72.99 < 7 |walk
Follow the path |goto 62.17,77.99 < 7 |walk
clicknpc T'paartos##128550
Free Brave |scenariogoal Brave##16/38084 |goto 65.72,73.60 |q 49266 |future
step
Follow the path |goto 65.44,81.63 < 7 |walk
clicknpc T'paartos##128550
Free Strong |scenariogoal Strong##16/38083 |goto 72.31,86.51 |q 49266 |future
step
Follow the path |goto 75.72,79.21 < 10 |walk
clicknpc T'paartos##128550
Free Boastful |scenariogoal Boastful##16/38085 |goto 69.63,68.26 |q 49266 |future
step
Follow the path |goto 66.43,71.90 < 7 |walk
Follow the path |goto 63.47,72.46 < 7 |walk
clicknpc T'paartos##128550
Free Frightened |scenariogoal Frightened##16/38086 |goto 63.02,74.48 |q 49266 |future
step
Follow the path |goto 62.05,78.82 < 7 |walk
Follow the path |goto 63.47,81.43 < 7 |walk
clicknpc T'paartos##128550
Free Inadequate |scenariogoal Inadequate##16/38087 |goto 69.57,77.86 |q 49266 |future
step
Follow the path |goto Draenei Scenario/0 67.85,87.10 < 10 |walk
kill T'paartos the Fallen##127924
|tip Wait for the dialogue to complete.
Help T'paartos |scenariogoal Help T'paartos##17/38088 |goto 73.72,94.30 |q 49266 |future
step
clicknpc Lightforged Beacon##127964 |goto 71.67,95.43
Leave the Forge of Aeons |goto Vindicaar Scenario/1 49.97,46.22 < 1000 |noway |c |q 49266 |future
step
talk Captain Fareeya##130549
turnin Forge of Aeons##49266 |goto 48.41,39.51
step
talk High Exarch Turalyon##130810
accept For the Light!##50071 |goto 47.53,40.22
step
Follow the path |goto 40.24,44.39 < 7 |walk
Go down the stairs |goto Vindicaar Scenario/2 49.59,60.56 < 7 |walk
Follow the path |goto 43.93,67.53 < 7 |walk
Follow the path |goto 35.22,52.53 < 7 |walk
click Portal to Stormwind |goto 43.29,24.97
Return to Stormwind |goto Stormwind City/0 53.62,15.77 < 1000 |noway |c |q 50071 |future
step
Enter the building |goto Stormwind City/0 52.79,14.53 < 7 |walk
talk Anduin Wrynn##126301
turnin For the Light!##50071 |goto 52.07,13.41
step
learnmount Lightforged Felcrusher##258022 |use Lightforged Felcrusher##155656 |future
step
_Congratulations!_
You Collected the "Lightforged Felcrusher" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Obsidian Krolusk",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={239049},
model={75600},
description="This mount is acquired by earning the \"Glory of the Wartorn Hero\" achievement.",
},[[
step
Earn the "Pecking Order" Achievement |achieve 12550
|tip Use the "Pecking Order" achievement guide to accomplish this.
step
Earn the "I'm in Charge Now!" Achievement |achieve 12548
|tip Use the "I'm in Charge Now!" achievement guide to accomplish this.
step
Earn the "That Sweete Booty" Achievement |achieve 12998
|tip Use the "That Sweete Booty" achievement guide to accomplish this.
step
Earn the "Losing My Profession" Achievement |achieve 12489
|tip Use the "Losing My Profession" achievement guide to accomplish this.
step
Earn the "Run Wild Like a Man On Fire" Achievement |achieve 12495
|tip Use the "Run Wild Like a Man On Fire" achievement guide to accomplish this.
step
Earn the "Alchemical Romance" Achievement |achieve 12490
|tip Use the "Alchemical Romance" achievement guide to accomplish this.
step
Earn the "Breath of the Shrine" Achievement |achieve 12600
|tip Use the "Breath of the Shrine" achievement guide to accomplish this.
step
Earn the "The Void Lies Sleeping" Achievement |achieve 12601
|tip Use the "The Void Lies Sleeping" achievement guide to accomplish this.
step
Earn the "Trust No One" Achievement |achieve 12602
|tip Use the "Trust No One" achievement guide to accomplish this.
step
Earn the "Bringing Hexy Back" Achievement |achieve 12270
|tip Use the "Bringing Hexy Back" achievement guide to accomplish this.
step
Earn the "Gold Fever" Achievement |achieve 12272
|tip Use the "Gold Fever" achievement guide to accomplish this.
step
Earn the "It's Lit!" Achievement |achieve 12273
|tip Use the "It's Lit!" achievement guide to accomplish this.
step
Earn the "Not a Fun Guy" Achievement |achieve 12549
|tip Use the "Not a Fun Guy" achievement guide to accomplish this.
step
Earn the "Taint Nobody Got Time For That" Achievement |achieve 12498
|tip Use the "Taint Nobody Got Time For That" achievement guide to accomplish this.
step
Earn the "Sporely Alive" Achievement |achieve 12499
|tip Use the "Sporely Alive" achievement guide to accomplish this.
step
Earn the "Snake Eyes" Achievement |achieve 12503
|tip Use the "Snake Eyes" achievement guide to accomplish this.
step
Earn the "Snake Eater" Achievement |achieve 12507
|tip Use the "Snake Eater" achievement guide to accomplish this.
step
Earn the "Good Night, Sweet Prince" Achievement |achieve 12508
|tip Use the "Good Night, Sweet Prince" achievement guide to accomplish this.
step
Earn the "Remix to Ignition" Achievement |achieve 12457
|tip Use the "Remix to Ignition" achievement guide to accomplish this.
step
Earn the "Shot Through the Heart" Achievement |achieve 12462
|tip Use the "Shot Through the Heart" achievement guide to accomplish this.
step
Earn the "Pitch Invasion" Achievement |achieve 12855
|tip Use the "Pitch Invasion" achievement guide to accomplish this.
step
Earn the "Ready for Raiding VI" Achievement |achieve 12854
|tip Use the "Ready for Raiding VI" achievement guide to accomplish this.
step
Earn the "Stand by Me" Achievement |achieve 12727
|tip Use the "Stand by Me" achievement guide to accomplish this.
step
Earn the "A Fish Out of Water" Achievement |achieve 12726
|tip Use the "A Fish Out of Water" achievement guide to accomplish this.
step
Earn the "It Belongs In a Mausoleum!" Achievement |achieve 12722
|tip Use the "It Belongs In a Mausoleum!" achievement guide to accomplish this.
step
Earn the "How to Keep a Mummy" Achievement |achieve 12723
|tip Use the "How to Keep a Mummy" achievement guide to accomplish this.
step
Earn the "Wrap God" Achievement |achieve 12721
|tip Use the "Wrap God" achievement guide to accomplish this.
step
collect Reins of the Obsidian Krolusk##161215 |condition hasmount(239049)
step
use the Reins of the Obsidian Krolusk##161215
Learn the "Obsidian Krolusk" Mount |learnmount Obsidian Krolusk##239049
step
_Congratulations!_
You Collected the "Obsidian Krolusk" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Pureheart Courser",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={280730},
model={83664},
description="This mount is acquired by collect 400 mounts.",
},[[
step
Raise 100 different reputations to Exalted
|tip Use our various Reputation guides to accomplish this.
Earn the "100 Exalted Reputations" Achievement |achieve 12866 |learnmount Pureheart Courser##280730
step
use the Pureheart Courser##163982
|tip You can find it in your mailbox
Learn the "Pureheart Courser" Mount |learnmount Pureheart Courser##280730
step
_Congratulations!_
You Collected the "Pureheart Courser" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Starcursed Voidstrider",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"ground, mount, battle, of, azeroth, alliance, achievement"},
mounts={259202},
model={81648},
condition_end=function() return hasmount(259202) end,
description="This mount is acquired by completing the \"Allied Races: Void Elf\" achievement.",
},[[
step
accept The Call for Allies##49929 |goto Dalaran L/10 72.46,45.94
|tip You will accept this quest automatically.
step
Enter the building |goto Stormwind City/0 52.82,14.59 < 7 |walk
talk Anduin Wrynn##126301
turnin The Call for Allies##49929 |goto 52.07,13.42
step
Load the "Argus Campaign" Leveling Guide |confirm |next "Leveling Guides\\Legion (100-110)\\Argus Campaign"
|tip Click the line above to load the guide.
|tip You must progress through the Argus Campaign guide until you earn the You Are Now Prepared! achievement.
Earn the "You Are Now Prepared!" Achievement |achieve 12066
step
Load the "Argus Campaign" Leveling Guide |confirm |next "Leveling Guides\\Legion (100-110)\\Argus Campaign"
|tip Click the line above to load the guide.
|tip Completing certain quests in Argus reward reputation with the Argussian Reach.
Load the "World Quests" Daily Guide |confirm |next "Dailies Guides\\Legion\\World Quests"
|tip Click the line above to load the guide.
|tip Completing world quests that indicate Argussian Reach award reputation with them.
Use Argussian Reach Reputation Insignias
|tip These are awarded from Order Hall missions, Argussian Reach emissary quests, and world quests.
|tip These can also be chosen from "The Kirin Tor of Dalaran" emissary quest.
Use Your Argussian Reach Insignia |use Argussian Reach Insignia##152959 |only if itemcount(152959) >= 1
Use Your Argussian Reach Insignia |use Argussian Reach Insignia##152960 |only if itemcount(152960) >= 1
Use Your Greater Argussian Reach Insignia |use Greater Argussian Reach##152961 |only if itemcount(152961) >= 1
Use Your Greater Argussian Reach Insignia |use Greater Argussian Reach##152954 |only if itemcount(152954) >= 1
Load the "Argus Invasions" Scenario Guide |confirm |next "Dungeon Guides\\Legion Scenarios\\Argus Invasions"
|tip Click the line above to load the guide.
|tip The weekly quest for the Argussian Reach is "Fuel of a Doomed World."
Gain Exalted Reputation with the Argussian Reach |achieve 12076
step
talk Anduin Wrynn##126301
accept A Choice of Allies##50239 |goto 52.07,13.42
step
talk Alleria Windrunner##126321
Ask her _"What do we know about the void elves?"_
Speak with Alleria About the Void Elves |q 50239/2 |goto 52.24,13.51
step
talk High Exarch Turalyon##126319
Ask him _"What can you tell me about the Lightforged draenei?"_
Speak with Turalyon About the Lightforged Draenei |q 50239/1 |goto 52.12,13.71
step
talk Anduin Wrynn##126301
Tell him _"I am ready to pursue our next ally."_
|tip Select Void Elf.
Choose an Ally to Pursue |q 50239/3 |goto 52.07,13.42
step
talk Anduin Wrynn##126301
turnin A Choice of Allies##50239 |goto 52.07,13.42
step
talk Anduin Wrynn##126301
accept A Second Ally For the Cause##50248 |goto Stormwind City/0 52.08,13.42
|only if completedq(50071)
step
talk Anduin Wrynn##126301
Tell him _"I am ready to pursue our next ally."_
|tip Select Void Elf.
Choose an Ally to Pursue |q 50248/1 |goto 52.07,13.42
|only if completedq(50071)
step
talk Anduin Wrynn##126301
turnin A Second Ally For the Cause##50248 |goto 52.08,13.42
|only if completedq(50071)
step
talk Alleria Windrunner##126321
accept The Ghostlands##49787 |goto 52.24,13.51
step
click Rift to Ghostlands
|tip Wait a moment for Alleria to open the rift.
Travel to the Ghostlands with Alleria |q 49787/1 |goto 52.33,13.34
step
Follow the path |goto Ghostlands/0 37.95,17.96 < 15 |only if walking
Follow the path |goto 38.05,21.59 < 15 |only if walking
Follow the path |goto 36.47,26.24 < 10 |only if walking
Follow the path |goto 34.57,31.64 < 10 |only if walking
Cross the water |goto 34.42,32.63 < 7 |only if walking
Enter the building |goto 33.70,33.59 < 7 |walk
click Umbric's Notes - Sanctum of the Moon
Locate Umbric's Notes - Sanctum of the Moon |q 49787/2 |goto 33.63,34.46
step
Leave the building |goto 33.81,33.43 < 7 |walk
Follow the path |goto 34.99,33.77 < 10 |only if walking
Follow the path |goto 37.08,38.28 < 10 |only if walking
Follow the path |goto 40.28,41.20 < 15 |only if walking
Go up the hill |goto 42.90,43.93 < 15 |only if walking
Follow the path |goto 43.89,45.62 < 10 |only if walking
Follow the path |goto 43.32,48.01 < 10 |only if walking
Follow the path |goto 43.41,50.28 < 10 |only if walking
Follow the path |goto 44.72,54.71 < 10 |only if walking
Follow the path |goto 46.49,56.57 < 10 |only if walking
Enter the building |goto 46.68,55.98 < 7 |walk
click Umbric's Notes - Andilien Estate
Locate Umbric's Notes - Andilien Estate |q 49787/3 |goto 46.87,54.97
step
Leave the building |goto 46.65,56.12 < 7 |walk
Follow the path |goto 47.62,58.41 < 15 |only if walking
Follow the path |goto 51.09,57.04 < 10 |only if walking
Follow the path |goto 57.84,58.56 < 10 |only if walking
Follow the path |goto 60.64,52.81 < 15 |only if walking
Follow the path |goto 66.26,45.04 < 15 |only if walking
Follow the path |goto 67.69,35.64 < 15 |only if walking
Follow the path |goto 70.52,33.79 < 10 |only if walking
|tip Avoid the Horde NPCs.
Follow the path |goto 73.82,34.20 < 10 |only if walking
Follow the path |goto 75.77,31.44 < 15 |only if walking
Follow the path |goto 76.96,27.30 < 15 |only if walking
Follow the path |goto 78.05,20.38 < 10 |only if walking
Enter the building |goto 78.81,19.83 < 7 |walk
click Teleportation Console |goto 79.65,17.57
click Umbric's Notes - Dawnstar Spire
|tip They're all the way at the top, up the spiral ramp.
Locate Umbric's Notes - Dawnstar Spire |q 49787/4
step
talk Alleria Windrunner##126321
turnin The Ghostlands##49787 |goto 79.69,19.62
accept Telogrus Rift##48962 |goto 79.69,19.62
step
click Rift to Telogrus
Enter the Rift to Telogrus |scenariostart |goto 79.64,19.86 |q 48962 |future
step
talk Magister Umbric##126646
Ask him _"What is this place?"_
Speak with Umbric |scenariogoal Speak with Umbric##1/37328 |goto Void Elf Scenario/0 47.83,73.88 |q 48962 |future
step
Follow the path |goto Void Elf Scenario/0 49.59,73.87 < 10 |walk
Follow the path |goto 49.91,75.43 < 7 |walk
Walk with Umbric and Alleria |scenariogoal Walk with Umbric and Alleria.##2/37282 |goto 49.33,76.66 |q 48962 |future
step
Follow the path |goto Void Elf Scenario/0 50.15,74.91 < 7 |walk
click Void Rift
Use the Void Portal |scenariogoal Use the void portal.##3/38503 |goto 48.97,72.91 |q 48962 |future
step
Follow the path |goto Void Elf Scenario/0 41.30,60.12 < 10 |walk
Kill enemies around this area
|tip Avoid dark colored orbs.
Repel the Void |scenariogoal Void repelled##4/37283 |goto 39.30,54.49 |q 48962 |future
step
click Void Rift
Use the Void Portal |scenariogoal Use the void portal.##5/38971 |goto 37.32,49.26 |q 48962 |future
step
kill Dark Manifestation##126559+
Close the rift |scenariogoal Rift sealed##6/37295 |goto 28.92,40.34 |q 48962 |future
step
kill Nhr'ghesh##126589 |scenariogoal Nhr'ghesh defeated##7/37296 |goto 28.92,40.34 |q 48962 |future
step
click Void Rift
Use the Void Portal |scenariogoal Use the void portal.##8/38972 |goto 28.89,38.30 |q 48962 |future
step
click Voidforge
Shut Down the First Voidforge |scenariogoal Voidforges shut down##9/37329 |goto 29.00,27.81 |count 1 |q 48962 |future
step
click Voidforge
Shut Down the Second Voidforge |scenariogoal Voidforges shut down##9/37329 |goto 28.49,21.70 |count 2 |q 48962 |future
step
click Voidforge
Shut Down the Third Voidforge |scenariogoal Voidforges shut down##9/37329 |goto 26.21,24.46 |count 3 |q 48962 |future
step
kill Nether-Prince Durzaan##126470 |scenariogoal Nether-Walker defeated##10/37284 |goto 27.90,24.09 |q 48962 |future
step
click Rift to Stormwind |goto 27.95,24.50
Leave the Telogrus Rift |goto Stormwind City/0 53.62,15.77 < 1000 |noway |c |q 48962 |future
step
Enter the building |goto 52.76,14.45 < 7 |walk
talk Anduin Wrynn##126301
turnin Telogrus Rift##48962 |goto 52.07,13.41
step
learnmount Starcursed Voidstrider##259202 |use Starcursed Voidstrider##156486 |future
step
_Congratulations!_
You Collected the "Starcursed Voidstrider" Mount.
]])
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Kul Tiran Charger",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={282682},
model={88974},
description="This mount is acquired from completing the Allied Races: Kul Tiran achievement.",
},[[
step
Earn the "Allied Races: Kul Tiran" Achievement |achieve 13157
|tip Refer to our Kul Tiran Race Unlock guide to accomplish this.
step
use the Kul Tiran Charger##164762
|tip It should be on the character that you unlocked the Kul Tiran Race with.
Learn the "Kul Tiran Charger" Mount |learnmount Kul Tiran Charger##282682
step
_Congratulations!_
You Collected the "Kul Tiran Charger" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Dazar'alor Windreaver",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={289101},
model={90194},
description="This mount is acquired from completing the No Stable Big Enough achievement.",
},[[
step
Earn the "Glory of the Dazar'alor Raider" Achievement |achieve 13315
|tip Refer to our Achievement Guide to accomplish this.
step
use the Dazar'alor Windreaver##166539
Learn the "Dazar'alor Windreaver" Mount |learnmount Dazar'alor Windreaver##289101
step
_Congratulations!_
You Collected the "Dazar'alor Windreaver" Mount.
]])
ZGV.BETAEND()
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Class Mounts\\Darkforge Ram",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"ground, mount, battle, for, azeroth, paladin"},
mounts={270562},
description="This mount is acquired from completing the Allied Races: Dark Iron Dwarf achievement.",
},[[
step
Earn the "Allied Races: Dark Iron Dwarf" Achievement |achieve 12515
|tip Refer to our Dark Iron Dwarf Race Unlock guide to accomplish this.
step
Create a Dark Iron Dwarf Paladin
|tip You will automatically learn this mount upon logging into the game.
Learn the "Darkforge Ram" Mount |learnmount Darkforge Ram##270562
step
_Congratulations!_
You Collected the "Darkforge Ram" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Class Mounts\\Dawnforge Ram",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"ground, mount, battle, for, azeroth, paladin"},
mounts={270564},
description="This mount is acquired from reaching level 20 on a Dwarf Paladin.",
},[[
step
Raise a Dwarf Paladin to Level 20
|tip The mount will automatically be learned once you reach level 20.
Learn the "Dawnforge Ram" Mount |learnmount Dawnforge Ram##270564
step
_Congratulations!_
You Collected the "Dawnforge Ram" Mount.
]])
ZGV.BETAEND()
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\Vulpine Familiar",{
author="support@zygorguides.com",
keywords={"Blizzard, Store, Mounts, Vulpine, Familiar"},
mounts={},
model={90397},
description="This mount is purchased from the Blizzard Shop for $25 USD.",
},[[
step
This mount can be purchased for $25.00 from the official _Blizzard Store_
|tip After purchasing, check your in-game mailbox.
collect Vulpine Familiar##166775 |n
use the Vulpine Familiar##166775
Learn the "Vulpine Familiar" Mount |learnmount Vulpine Familiar##290133
step
_Congratulations!_
You Collected the "Vulpine Familiar" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Blizzard Store Mounts\\Meat Wagon",{
author="support@zygorguides.com",
keywords={"Blizzard, Store, Mounts, Meat, Wagon"},
mounts={},
model={88646},
description="This mount is attained by purchasing the Warcraft III: Reforged Spoils of War Edition from the Blizzard Store.",
},[[
step
This mount is attained by purchasing the "Warcraft III: Reforged Spoil of War Edition" from the official _Blizzard Store_
|tip After purchasing, check your in-game mailbox.
collect Meat Wagon##164571 |n
use the Meat Wagon##164571
Learn the "Meat Wagon" Mount |learnmount Meat Wagon##281554
step
_Congratulations!_
You Collected the "Meat Wagon" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\The Dreadwake",{
author="support@zygorguides.com",
keywords={"Blizzard, Store, Mounts, The, Dreadwake"},
mounts={},
model={85970},
description="This mount is attained by purchasing the 180 Days of World of Warcraft game time.",
},[[
step
This mount is attained by purchasing the 180 Days of World of Warcraft game time from the official _Blizzard Store_
|tip After purchasing, check your in-game mailbox.
collect The Dreadwake##160589 |n
use the The Dreadwake##160589
Learn the "The Dreadwake" Mount |learnmount Meat Wagon##272770
step
_Congratulations!_
You Collected the "The Dreadwake" Mount.
]])
ZGV.BETAEND()
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Leaping Veinseeker",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"flying, mount, battle, for, azeroth"},
mounts={243795},
model={76706},
description="This mount is acquired by a random world drop.",
},[[
step
Kill Loa-Gutter enemies around this area
collect Reins of a Tamed Bloodfeaster##163575 |n
|tip This is a rare drop.
|tip It drops from any Blood Trolls found in Nazmir.
use the Reins of a Tamed Bloodfeaster##163575
Learn the "Leaping Veinseeker" Mount |learnmount Leaping Veinseeker##243795 |goto Nazmir/0 60.67,20.67
step
_Congratulations!_
You Collected the "Leaping Veinseeker" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Sharkbait",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"flying, mount, battle, of, azeroth, dungeon, drop"},
mounts={254813},
model={80449},
condition_end=function() return hasmount(254813) end,
description="This mount is acquired by obtaining a random drop from Harlan Sweete in the Freehold dungeon on Mythic difficulty.",
},[[
step
Enter the Freehold Dungeon |goto Freehold/0 0.00,0.00 < 1000
step
kill Harlan Sweete##129440
collect 1 Sharkbait's Favorite Crackers##159842 |n
|tip This is a rare drop.
|tip This only can drop in Mythic difficulty.
use Sharkbait's Favorite Crackers##159842
Learn the Sharkbait Mount |learnmount Sharkbait##254813
step
_Congratulations!_
You Earned the "Sharkbait" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Dune Scavenger",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={237286},
model={75324},
description="This mount is acquired by a random world drop.",
},[[
step
Kill enemies around this area
collect Captured Dune Scavenger##163576 |n
|tip This will drop randomly from the Snake enemies in the zone.
You can find more around [63.4,31.6]
You can find more around [55.6,41.2]
use the Captured Dun Scavenger##163576
Learn the "Dune Scavenger" Mount |learnmount Dune Scavenger##237286 |goto Vol'dun/0 49.4,75.8
step
_Congratulations!_
You Collected the "Dune Scavenger" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Goldenmane Horse",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={260175},
model={81690},
description="This mount is dropped randomly by mobs in Stormsong Valley.",
},[[
step
collect Goldenmane's Reins##163573 |goto Stormsong Valley/0 69.51,51.53 |learnmount Goldmane##260175
|tip This can drop from any mob in Stormsong Valley.
step
use the Goldenmane's Reins##163573
Learn the "Goldenmane Horse" Mount |learnmount Goldmane##260175
step
_Congratulations!_
You Collected the "Goldenmane Horse" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Highland Mustang",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={279456},
model={87774},
description="This mount is acquired from Doomrider Helgrim while the Alliance controls the Stromgarde War Front.",
},[[
step
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |condition not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |or
'|learnmount Highland Mustang##279456 |or
step
kill Doomrider Helgrim##142741
|tip He only appears when the Alliance controls Stromgarde.
|tip This mount has a small chance to drop.
collect Highland Mustang##163579 |goto 53.97,56.96 |condition hasmount(279456)
step
use the Highland Mustang##163579
Learn the "Highland Mustang" Mount |learnmount Highland Mustang##279456
step
_Congratulations!_
You Collected the "Highland Mustang" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Lil' Donkey",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={279608},
model={87773},
description="This mount is acquired from Knight-Captain Aldrin while the Horde controls the Stromgarde War Front.",
},[[
step
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |condition not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |or
'|learnmount learnmount Lil'Donkey##279608 |or
step
Enter the mine |goto 33.68,36.79 < 10 |walk
kill Overseer Krix##142423
|tip Inside the mine.
|tip He will appear after the Horde take control of Stromgarde.
collect Lil' Donkey##163646 |goto 33.27,38.28 |condition hasmount(279608)
step
use the Lil' Donkey##163646
Learn the "Lil' Donkey" Mount |learnmount Lil'Donkey##279608
step
_Congratulations!_
You Collected the "Lil' Donkey" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Skullripper",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={279611},
model={87848},
description="This mount is acquired from Skullripper in Arathi Highlands.",
},[[
step
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |condition not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |or
'|learnmount Skullripper##279611 |or
step
kill Skullripper##142437
|tip It will appear when the Alliance take control of Stromgarde.
collect Skullripper##163645 |goto 38.24,90.09 |condition hasmount(279611)
step
use Skullripper##163645
Learn the "Skullripper" Mount |learnmount Skullripper##279611
step
_Congratulations!_
You Collected the "Skullripper" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Swift Albino Raptor",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={279569},
model={14345},
description="This mount is dropped by Beastrider Kama in Arathi Highlands when under Horde control.",
},[[
step
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |condition not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |or
'|learnmount Swift Albino Raptor##279569 |or
step
kill Beastrider Kama##142709
|tip He's on a spawn timer.
|tip He will appear when Alliance take control of Stromgarde.
collect Swift Albino Raptor##163644 |goto 65.64,70.41 |condition hasmount(279569)
step
use Swift Albino Raptor##163644
Learn the "Swift Albino Raptor" Mount |learnmount Swift Albino Raptor##279569
step
_Congratulations!_
You Collected the "Swift Albino Raptor" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Terrified Pack Mule",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={260174},
model={81694},
description="This mount is acquired by a random world drop.",
},[[
step
Kill enemies around this area
|tip Hexthralled Guardsman have a higher chance at the drop.
collect Chewed-On Reins of the Terrified Pack Mule##163574 |n
|tip This is a rare drop.
use the Chewed-On Reins of the Terrified Pack Mule##163574
Learn the "Terrified Pack Mule" Mount |learnmount Terrified Pack Mule##260174 |goto Drustvar/0 31,20
You can find more around [34.03,17.24]
step
_Congratulations!_
You Collected the "Terrified Pack Mule" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Tomb Stalker",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"ground, mount, battle, of, azeroth, dungeon, drop"},
mounts={266058},
model={84274},
condition_end=function() return hasmount(266058) end,
description="This mount is acquired by obtaining a random drop from Dazar, The First King in the King's Rest dungeon.",
},[[
step
Enter the King's Rest Dungeon |goto King's Rest/0 0.00,0.00 < 1000
step
kill King Dazar##136160
collect 1 Mummified Raptor Skull##159921 |n
|tip This is a rare drop.
|tip This only drops on Mythic difficulty.
use the Mummified Raptor Skull##159921
Learn the Tomb Stalker Mount |learnmount Mummified Raptor Skull##266058
step
_Congratulations!_
You Earned the "Tomb Stalker" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Underrot Crawg",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"ground, mount, battle, of, azeroth, dungeon, drop"},
mounts={273541},
model={78860},
condition_end=function() return hasmount(273541) end,
description="This mount is acquired by obtaining a random drop from the Unbound Abomination in The Underrot dungeon.",
},[[
step
Enter The Underrot Dungeon |goto The Underrot/0 0.00,0.00 < 1000
step
kill Unbound Abomination##133007
collect 1 Underrot Crawg Harness##160829 |n
|tip This is a rare drop.
use the Underrot Crawg Harness##160829
Learn the Underrot Crawg Mount |learnmount Underrot Crawg##273541
step
_Congratulations!_
You Earned the "Underrot Crawg" Mount.
]])
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\G.M.O.D.",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"flying, mount, battle, for, azeroth"},
mounts={289083},
model={90189},
description="This mount is acquired from the Battle for Dazar'alor Raid.",
},[[
step
kill High Tinker Mekkatorque##144838
|tip He is a boss in the Battle for Dazar'alor raid.
|tip If you are in LFR, Jaina will have a chance to drop the mount instead.
collect G.M.O.D.##166518 |n
use the G.M.O.D.##166518
Learn the "G.M.O.D." Mount |learnmount G.M.O.D.##289083
step
_Congratulations!_
You Collected the "G.M.O.D." Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Glacial Tidestorm",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"flying, mount, battle, for, azeroth"},
mounts={289555},
model={90414},
description="This mount is acquired from the Mythic Battle for Dazar'alor Raid.",
},[[
step
kill Lady Jaina Proudmoore##151866
|tip She is a boss in the Battle for Dazar'alor raid.
|tip You will need to complete this on Mythic difficulty for a chance at the drop.
collect Glacial Tidestorm##166705 |n
use the Glacial Tidestorm##166705
Learn the "Glacial Tidestorm" Mount |learnmount Glacial Tidestorm##289555
step
_Congratulations!_
You Collected the "Glacial Tidestorm" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Blackpaw",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"flying, mount, battle, for, azeroth"},
mounts={288438},
model={706},
description="This mount is acquired from the Rarespawn Blackpaw in Darkshore.",
},[[
step
kill Blackpaw##149660
|tip You will be flagged for PVP if your faction does not control Darkshore.
collect Blackpaw##166428 |n
use Blackpaw##166428
Learn the "Blackpaw" Mount |learnmount Blackpaw##288438 |goto Darkshore/0 49.65,24.96
step
_Congratulations!_
You Collected the "Blackpaw" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Ashenvale Chimaera",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"flying, mount, battle, for, azeroth"},
mounts={288495},
model={89750},
description="This mount is acquired from the Rarespawn Alash'anir in Darkshore.",
},[[
step
kill Alash'anir##148787
|tip You will be flagged for PVP if your faction does not control Darkshore.
collect Ashenvale Chimaera##166432 |n
use Ashenvale Chimaera##166432
Learn the "Ashenvale Chimaera" Mount |learnmount Ashenvale Chimaera##288495 |goto Darkshore/0 56.45,30.76
step
_Congratulations!_
You Collected the "Ashenvale Chimaera" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Kaldorei Nightsaber",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"flying, mount, battle, for, azeroth"},
mounts={288505},
model={89247},
description="This mount is acquired from the Rarespawn Croz Bloodrage in Darkshore.",
},[[
step
kill Croz Bloodrage##149655
|tip You will be flagged for PVP if your faction does not control Darkshore.
collect Captured Kaldorei Nightsaber##166437 |n
use the Captured Kaldorei Nightsaber##166437
Learn the "Kaldorei Nightsaber" Mount |learnmount Kaldorei Nightsaber##288505 |goto Darkshore/0 50.75,32.32
step
_Congratulations!_
You Collected the "Kaldorei Nightsaber" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Umber Nightsaber",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"flying, mount, battle, for, azeroth"},
mounts={288503},
model={89246},
description="This mount is acquired from the Rarespawn Shadowclaw in Darkshore.",
},[[
step
kill Moxo the Beheader##147701
|tip He walks around this area.
|tip You will be flagged for PVP if your faction does not control Darkshore.
collect Captured Umber Nightsaber##166434 |n
use the Captured Umber Nightsaber##166434
Learn the "Umber Nightsaber" Mount |learnmount Umber Nightsaber##288503 |goto Darkshore/0 65.08,20.13
step
_Congratulations!_
You Collected the "Umber Nightsaber" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Witherbark Direwing",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"flying, mount, battle, for, azeroth"},
mounts={279868},
model={86091},
description="This mount is acquired from the Rarespawn Shadowclaw in Arathi Highlands.",
},[[
step
kill Nimar the Slayer##142692
|tip He walks around this area.
|tip You will be flagged for PVP if your faction does not control Arathi Highlands.
collect Witherbark Direwing##163706 |n
use the Witherbark Direwing##163706
Learn the "Witherbark Direwing" Mount |learnmount Witherbark Direwing##279868 |goto Arathi Highlands/0 67.63,60.86
step
_Congratulations!_
You Collected the "Witherbark Direwing" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Frightened Kodo",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"flying, mount, battle, for, azeroth"},
mounts={288499},
model={12247},
description="This mount is acquired from locating a Frightened Kodo in Darkshore.",
},[[
step
map Darkshore/0
path	41.36,53.99	39.35,56.43	38.05,65.54	41.08,65.48	43.91,67.34
path	44.18,65.33	42.71,61.94	41.36,59.31	42.00,57.08
Follow the path
|tip Make a macro for /target Frightened Kodo while flying around.
|tip The Frightened Kodo will be running around on the ground.
|tip There won't always be a Frightened Kodo spawned, so you may need to check later.
|tip You will be flagged for PVP if your faction doesn't control Darkshore.
click Frightened Kodo
collect Frightened Kodo##166433 |n
use the Frightened Kodo##166433
Learn the "Frightened Kodo" Mount |learnmount Frightened Kodo##288499
step
_Congratulations!_
You Collected the "Frightened Kodo" Mount.
]])
ZGV.BETAEND()
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Aquatic Mounts\\Island Expedition Mounts\\Surf Jelly",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"aquatic, mount, battle, of, azeroth, island, expeditions, drop, Surf, Jelly"},
mounts={278979},
model={87747},
condition_end=function() return hasmount(278979) end,
description="This mount is acquired by completing an Island Expeditions.",
},[[
step
click Expedition Map
|tip Queue for an Island Expeditions.
|tip You need to complete the Island Expedition for a chance at the mount.
collect Surf Jelly##163585 |n
|tip This can come from any Island Expedition.
|tip The drop is completely random.
|tip It shares a drop table with 8 other mounts.
use the Surf Jelly##163585
Learn the Surf Jelly Mount |learnmount Surf Jelly##278979 |goto Boralus/0 66.75,33.24
step
_Congratulations!_
You Earned the "Surf Jelly" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Island Expedition Mounts\\Qinsho's Eternal Hound",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"flying, mount, battle, of, azeroth, island, expeditions, dungeon, drop, Qinsho's, Eternal, Hound"},
mounts={279469},
model={45836},
condition_end=function() return hasmount(279469) end,
description="This mount is acquired by completing an Island Expeditions.",
},[[
step
click Expedition Map
|tip Queue for an Island Expeditions.
|tip You need to complete the Island Expedition for a chance at the mount.
collect Qinsho's Eternal Hound##163582 |n
|tip This can come from any Island Expedition.
|tip The drop is completely random.
|tip It shares a drop table with 8 other mounts.
use Qinsho's Eternal Hound##163582
Learn the Qinsho's Eternal Hound Mount |learnmount Qinsho's Eternal Hound##279469 |goto Boralus/0 66.75,33.24
step
_Congratulations!_
You Earned the "Qinsho's Eternal Hound" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Island Expedition Mounts\\Squawks",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"flying, mount, battle, of, azeroth, island, expeditions, dungeon, drop, Squawks"},
mounts={254811},
model={79916},
condition_end=function() return hasmount(254811) end,
description="This mount is acquired by completing an Island Expeditions.",
},[[
step
click Expedition Map
|tip Queue for an Island Expeditions.
|tip You need to complete the Island Expedition for a chance at the mount.
collect Squawks##163586 |n
|tip This can come from any Island Expedition.
|tip The drop is completely random.
|tip It shares a drop table with 8 other mounts.
use Squawks##163586
Learn the Squawks Mount |learnmount Squawks##254811 |goto Boralus/0 66.75,33.24
step
_Congratulations!_
You Earned the "Squawks" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Island Expedition Mounts\\Twilight Avenger",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"flying, mount, battle, of, azeroth, island, expeditions, drop, Twilight, Avenger"},
mounts={279466},
model={87775},
condition_end=function() return hasmount(279466) end,
description="This mount is acquired by completing an Island Expeditions.",
},[[
step
click Expedition Map
|tip Queue for an Island Expeditions.
|tip You need to complete the Island Expedition for a chance at the mount.
collect Twilight Avenger##163584 |n
|tip This can come from any Island Expedition.
|tip The drop is completely random.
|tip It shares a drop table with 8 other mounts.
use the Twilight Avenger##163584
Learn the Twilight Avenger Mount |learnmount Twilight Avenger##279466 |goto Boralus/0 66.75,33.24
step
_Congratulations!_
You Earned the "Twilight Avenger" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Island Expedition Mounts\\Craghorn Chasm-Leaper",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"ground, mount, battle, of, azeroth, island, expeditions, dungeon, drop, Craghorn, Chasm-Leaper"},
mounts={279467},
model={87776},
condition_end=function() return hasmount(279467) end,
description="This mount is acquired by completing an Island Expeditions.",
},[[
step
click Expedition Map
|tip Queue for an Island Expeditions.
|tip You need to complete the Island Expedition for a chance at the mount.
collect Craghorn Chasm-Leaper##163583 |n
|tip This can come from any Island Expedition.
|tip The drop is completely random.
|tip It shares a drop table with 8 other mounts.
use the Craghorn Chasm-Leaper##163583
Learn the Craghorn Chasm-Leaper Mount |learnmount Craghorn Chasm-Leaper##279467 |goto Boralus/0 66.75,33.24
step
_Congratulations!_
You Earned the "Craghorn Chasm-Leaper" Mount.
]])
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Island Expedition Mounts\\Bloodgorged Hunter",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"flying, mount, battle, of, azeroth, island, expeditions, dungeon, drop, Bloodgorged, Hunter"},
mounts={288720},
model={55151},
condition_end=function() return hasmount(288720) end,
description="This mount is acquired by completing an Island Expeditions.",
},[[
step
click Expedition Map
|tip Queue for an Island Expeditions.
|tip You need to complete the Island Expedition for a chance at the mount.
collect Bloodgorged Hunter##166468 |n
|tip The drop is completely random.
|tip It shares a drop table with 8 other mounts.
use the Bloodgorged Hunter##166468
Learn the "Bloodgorged Hunter" Mount |learnmount Bloodgorged Hunter##288720 |goto Boralus/0 66.75,33.24
step
_Congratulations!_
You Earned the "Bloodgorged Hunter" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Island Expedition Mounts\\Island Thunderscale",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"flying, mount, battle, of, azeroth, island, expeditions, dungeon, drop, Island, Thunderscale"},
mounts={288721},
model={90158},
condition_end=function() return hasmount(288721) end,
description="This mount is acquired by completing an Island Expeditions.",
},[[
step
click Expedition Map
|tip Queue for an Island Expeditions.
|tip You need to complete the Island Expedition for a chance at the mount.
collect Island Thunderscale##166467 |n
|tip The drop is completely random.
|tip It shares a drop table with 8 other mounts.
use the Island Thunderscale##166467
Learn the "Island Thunderscale" Mount |learnmount Island Thunderscale##288721 |goto Boralus/0 66.75,33.24
step
_Congratulations!_
You Earned the "Island Thunderscale" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Island Expedition Mounts\\Siltwing Albatross",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"flying, mount, battle, of, azeroth, island, expeditions, dungeon, drop, Siltwing, Albatross"},
mounts={266925},
model={84359},
condition_end=function() return hasmount(266925) end,
description="This mount is acquired by completing an Island Expeditions.",
},[[
step
click Expedition Map
|tip Queue for an Island Expeditions.
Collect #1000# Seafarer's Dubloon |condition curcount(1710)>=1000 |goto Boralus/0 66.75,33.24
|tip These drop upon completing Island Expeditions.
step
talk Captain Klarisa##148922
buy Siltwing Albatross##166745 |n
use the Siltwing Albatross##166745
Learn the Siltwing Albatross Mount |learnmount Siltwing Albatross##266925 |goto 66.05,32.34
step
_Congratulations!_
You Earned the "Siltwing Albatross" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Island Expedition Mounts\\Stonehide Elderhorn",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"ground, mount, battle, of, azeroth, island, expeditions, dungeon, drop, Stonehide, Elderhorn"},
mounts={288712},
model={87776},
condition_end=function() return hasmount(288712) end,
description="This mount is acquired by completing an Island Expeditions.",
},[[
step
click Expedition Map
|tip Queue for an Island Expeditions.
|tip You need to complete the Island Expedition for a chance at the mount.
collect Stonehide Elderhorn##166470 |n
|tip This can come from any Island Expedition.
|tip The drop is completely random.
|tip It shares a drop table with 8 other mounts.
use the Stonehide Elderhorn
Learn the Stonehide Elderhorn Mount |learnmount Stonehide Elderhorn##288712 |goto Boralus/0 66.75,33.24
step
_Congratulations!_
You Earned the "Stonehide Elderhorn" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Island Expedition Mounts\\Risen Mare",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"ground, mount, battle, of, azeroth, island, expeditions, dungeon, drop, Risen, Mare"},
mounts={288722},
model={5050},
condition_end=function() return hasmount(288722) end,
description="This mount is acquired by completing an Island Expeditions.",
},[[
step
click Expedition Map
|tip Queue for an Island Expeditions.
|tip You need to complete the Island Expedition for a chance at the mount.
collect Risen Mare##166466 |n
|tip This can come from any Island Expedition.
|tip The drop is completely random.
|tip It shares a drop table with 8 other mounts.
use the Risen Mare##166466
Learn the Risen Mare Mount |learnmount Risen Mare##288722 |goto Boralus/0 66.75,33.24
step
_Congratulations!_
You Earned the "Risen Mare" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Aquatic Mounts\\Island Expedition Mounts\\Saltwater Seahorse",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"aquatic, mount, battle, of, azeroth, island, expeditions, drop, Saltwater, Seahorse"},
mounts={288711},
model={34958},
condition_end=function() return hasmount(288711) end,
description="This mount is acquired by completing an Island Expeditions.",
},[[
step
click Expedition Map
|tip Queue for an Island Expeditions.
Collect #500# Seafarer's Dubloon |condition curcount(1710)>=1000 |goto Boralus/0 66.75,33.24
|tip These drop upon completing Island Expeditions.
step
talk Captain Klarisa##148922
buy Saltwater Seahorse##166471 |n
use the Saltwater Seahorse##166471
Learn the Saltwater Seahorse Mount |learnmount Saltwater Seahorse##288711 |learnmount Siltwing Albatross##266925 |goto 66.05,32.34
step
_Congratulations!_
You Earned the "Saltwater Seahorse" Mount.
]])
ZGV.BETAEND()
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\The Hivemind",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"secret, mount, battle, for, azeroth, hivemind"},
mounts={261395},
model={88835},
condition_end=function() return hasmount(261395) end,
description="This mount is acquired by completing varius puzzles and secrets, including:\n\n"..
"_Red, Yellow, Green, and Blue Colored Monocles_\n"..
"_Suramar Beams (Requires Group)_\n"..
"_Lost Cat Toy (Requires Group)_\n"..
"_Jumping Puzzle (Requires Group)_\n"..
"_Arcane Lava (Requires Group)_\n"..
"_Claiming The Hivemind (Requires Group)_",
},[[
step
talk Griftah##19227
buy 1 Talisman of True Treasure Tracking##27944 |condition hasmount(261395) |goto Shattrath City/0 65.64,69.26
step
Use the Talisman of True Treasure Tracking##27944
|tip Right-click it in your bags.
Equip the Talisman of True Treasure Tracking |equipped Talisman of True Treasure Tracking##27944 |condition hasmount(261395)
step
_You must have the Talisman of True Treasure Tracking equipped in order to interact with the vendors and objects throughout this guide_
|tip The following section requires lots of running around to buy/exchange different items between vendors.
|tip The items will only last for a certain amount of time, so go from vendor to vendor as fast as possible.
|tip You do not personally need to collect all four of the monocles.
|tip Your group must have all four monocles on unique characters between the five players.
confirm |condition hasmount(261395)
step
click Letter from Ms. Graham##280815
|tip It looks like a small sealed letter laying on the corner of the table behind Griftah.
Read the First Letter |q 40397 |future |goto 65.53,69.48
step
talk Sir Finley Mrrgglton##132583
|tip It looks like a green Murloc on land at the top of a tower.
buy 500 Seashell##156791 |condition itemcount(156725) >= 1 or hasmount(261395) |goto Shimmering Expanse/0 44.57,20.20
step
talk Volatile Violetscale##132568
|tip It looks like a purple eel that swims around this area.
buy 100 Cavity-Free Great Shark Tooth##156780 |condition itemcount(156725) >= 1 or hasmount(261395) |goto Abyssal Depths/0 39.70,80.15
step
talk Manta Stargazer##132570
|tip It looks like a blue manta ray that swims around this area near the surface.
buy 50 Razoreel Larva##156786 |condition itemcount(156725) >= 1 or hasmount(261395) |goto Shimmering Expanse/0 54.26,23.23
step
talk Lil' Whaley##132569
|tip It looks like a large blue whale that swims around this area.
buy 250 Well-Fed Doctor Fish##156783 |condition itemcount(156725) >= 1 or hasmount(261395) |goto Shimmering Expanse/0 70.16,49.40
step
talk Gloomy Bluefin##132572
|tip It looks like a large blue fish that swims around this area near the sea floor.
buy 10 Freshly Molted Crab Skin##156782 |condition itemcount(156725) >= 1 or hasmount(261395) |goto Abyssal Depths/0 65.44,42.41
step
talk Ol' Fishbreath##132562
|tip It looks like a small blue shark that swims around this area.
buy 50 Glittergill Glitter##156790 |condition itemcount(156725) >= 1 or hasmount(261395) |goto Kelp'thar Forest/0 60.86,60.32
step
talk Sir Finley Mrrgglton##132583
|tip It looks like a green Murloc on land at the top of a tower.
buy 80 Seashell##156791 |condition itemcount(156725) >= 1 or hasmount(261395) |goto Shimmering Expanse/0 44.57,20.20
step
talk Gloomy Bluefin##132572
|tip It looks like a large blue fish that swims around this area near the sea floor.
buy 2 Giant Giant Toenail Clipping##156775 |condition itemcount(156725) >= 1 or hasmount(261395) |goto Abyssal Depths/0 65.44,42.41
step
talk Little Carp##132571
|tip It looks like a brown and purple fish with a large head that swims around this area.
buy 4 Makrura Eye##156776 |condition itemcount(156725) >= 1 or hasmount(261395) |goto Abyssal Depths/0 45.47,17.47
step
talk Volatile Violetscale##132568
|tip It looks like a purple eel that swims around this area.
buy 1 Accidentally-Severed Seahorse Fin##156773 |condition itemcount(156725) >= 1 or hasmount(261395) |goto Abyssal Depths/0 39.70,80.15
step
talk Crimson Angerfish##132565
|tip It looks like a red pufferfish that swims around this area.
buy 3 Shiny Sea Serpent Scale##156774 |condition itemcount(156725) >= 1 or hasmount(261395) |goto Shimmering Expanse/0 54.62,90.04
step
talk Manta Stargazer##132570
|tip It looks like a blue manta ray that swims around this area near the surface.
buy 40 Symbiotic Plankton##156789 |condition itemcount(156725) >= 1 or hasmount(261395) |goto Shimmering Expanse/0 54.26,23.23
step
talk Sir Finley Mrrgglton##132583
|tip It looks like a green Murloc on land at the top of a tower.
buy 5 Scintillating Murloc Skin Lotion##156793 |condition itemcount(156725) >= 1 or hasmount(261395) |goto Shimmering Expanse/0 44.57,20.20
step
talk Sir Finley Mrrgglton##132583
|tip It looks like a green Murloc on land at the top of a tower.
buy 300 Seashell##156791 |condition itemcount(156725) >= 1 or hasmount(261395) |goto Shimmering Expanse/0 44.57,20.20
step
talk Ol' Fishbreath##132562
|tip It looks like a small blue shark that swims around this area.
buy 30 Vantus Black Squid Ink##156771 |condition itemcount(156725) >= 1 or hasmount(261395) |goto Kelp'thar Forest/0 60.86,60.32
step
talk The Blackfish##132566
|tip It looks like a black and white orca that swims around this area.
buy 30 Super Slick Eel Slime##156770 |condition itemcount(156725) >= 1 or hasmount(261395) |goto Abyssal Depths/0 15.85,84.84 |notravel
step
talk Volatile Violetscale##132568
|tip It looks like a purple eel that swims around this area.
buy 3 Rock-Encrusted Whelk Shell##156767 |condition itemcount(156725) >= 1 or hasmount(261395) |goto Abyssal Depths/0 39.70,80.15
step
talk Little Carp##132571
|tip It looks like a brown and purple fish with a large head that swims around this area.
buy 5 Potent Gastropod Gloop##156788 |condition itemcount(156725) >= 1 or hasmount(261395) |goto Abyssal Depths/0 45.47,17.47
step
talk Sir Finley Mrrgglton##132583
|tip It looks like a green Murloc on land at the top of a tower.
buy 1500 Seashell##156791 |condition itemcount(156725) >= 1 or hasmount(261395) |goto Shimmering Expanse/0 44.57,20.20
step
talk Lil' Whaley##132569
|tip It looks like a large blue whale that swims around this area.
buy 300 Very Pretty Coral##156761 |condition itemcount(156725) >= 1 or hasmount(261395) |goto Shimmering Expanse/0 70.16,49.40
step
talk Ol' Fishbreath##132562
|tip It looks like a small blue shark that swims around this area.
buy 100 Iridescent Shimmerray Skin##156758 |condition itemcount(156725) >= 1 or hasmount(261395) |goto Kelp'thar Forest/0 60.86,60.32
step
talk Crimson Angerfish##132565
|tip It looks like a red pufferfish that swims around this area.
buy 20 Luxurous Luxscale Scale##156764 |condition itemcount(156725) >= 1 or hasmount(261395) |goto Shimmering Expanse/0 54.62,90.04
step
talk The Blackfish##132566
|tip It looks like a black and white orca that swims around this area.
buy 5 Captured Cavitation Bubble##156787 |condition itemcount(156725) >= 1 or hasmount(261395) |goto Abyssal Depths/0 15.85,84.84 |notravel
step
talk Sir Finley Mrrgglton##132583
|tip It looks like a green Murloc on land at the top of a tower.
buy 1 Red Crystal Monocle##156725 |condition itemcount(156725) >= 1 or hasmount(261395) |goto Shimmering Expanse/0 44.57,20.20
step
Enter The Halls of Origination Dungeon |goto Halls of Origination/1 49.35,93.54 < 1000 |c |condition itemcount(156726) >= 1 or hasmount(261395)
step
map Halls of Origination/1
path follow smart; loop off; ants curved
path	48.06,74.89	49.99,73.21	50.22,62.98	61.41,62.98	67.35,62.73
path	67.49,49.60
click Stellar Refraction Device##280885
|tip It looks like a bright yellow light underneath the elevator in The Maker's Rise.
|tip On the north end of the room you will find the stairs leading down.
|tip Opening your map will show an ant trail that marks the location.
confirm |condition itemcount(156726) >= 1 or hasmount(261395)
step
The goal in this room is to change the color of all the constellations to the same color
|tip Clicking the Stellar Refractors will cycle the color of nearby constellations, depending on the type of Refractor.
|tip Some of the constellations around the outside of the room will remain the same color no matter what, so try to change all other constellations to this color.
|tip Start with Refractors on the outside of the room and work your way inwards.
clicknpc Angular Stellar Refractor##132553+
|tip Refractor with a cross formation, cycles the colors of constellations to the north, south, east and west.
clicknpc Jagged Stellar Refractor##132554+
|tip Refractor with an X formation, cycles the colors of constellations to the northwest, northeast, southwest and southeast.
clicknpc Round Stellar Refractor##132552+
|tip Refractor with a round formation, cycles the colors of constellations around the refractor.
click Star-touched Chest##280886
|tip Once all constellations are the same, a chest will spawn in the middle of the room.
collect 1 Yellow Crystal Monocle##156726 |condition itemcount(156726) >= 1 or hasmount(261395)
step
Enter the Skyreach Dungeon |goto Skyreach/1 59.14,24.49 < 1000 |c |condition itemcount(156727) >= 1 or hasmount(261395)
step
map Skyreach/2
path follow smart; loop off; ants curved
path	45.10,14.18	 45.57,14.08
kill High Sage Viryx##76266
|tip She is the last boss of the dungeon.
|tip Use the "Skyreach" dungeon guide to accomplish this.
click "Basic" Instructions##280861 |goto Skyreach/2 42.02,86.05
|tip It looks like an open scroll hanging to the left of the Glowing Orb console.
|tip Opening your map will show an ant trail that marks the location.
|tip You must have the Talisman of True Treasure Tracking equipped to interact with it.
confirm |condition itemcount(156727) >= 1 or hasmount(261395)
step
Click the Glowing Orbs on the console next to the "Basic Instructions" scroll
click Small Glowing Orb##280856
|tip Click the center orb to activate the console.
click Glowing Orb##280857+
Click order: Right, up, down, up, right, right, up, left, down, up, left, down
|tip Don't click the Small Glowing Orb in the center again, it will reset the console.
click Sun-Worn Chest##280883
collect 1 Green Crystal Monocle##156727 |condition itemcount(156727) >= 1 or hasmount(261395)
step
use the Talisman of True Treasure Tracking##27944
Equip the Talisman of True Treasure Tracking |equipped Talisman of True Treasure Tracking##27944 |condition itemcount(156724) >= 1 or hasmount(261395)
step
Enter the building |goto Highmountain/0 57.77,27.79 < 5 |walk
click Letter from Ms. Graham##280836
|tip Inside the building.
Read the Second Letter |q 40314 |future |goto 57.41,27.91
step
Enter the Karazhan Raid |goto Karazhan/1 60.11,79.34 < 1000 |c |condition itemcount(156724) >= 1 or hasmount(261395)
step
click Letter from Ms. Graham##280837
|tip It looks like a small sealed letter sitting on a chair in Medivh's Chambers between the Chess Event and Prince Malchezaar.
|tip It's the first room as you go up the spiraling staircase.
Read the Third Letter |q 40404 |future |goto Karazhan/15 46.05,26.45
step
Enter the Razorfen Downs Dungeon |goto Razorfen Downs/1 26.11,18.22 < 1000 |c |condition itemcount(156724) >= 1 or hasmount(261395)
step
map Razorfen Downs/1
path follow smart; loop off; ants curved
path	33.43,18.28	38.02,24.09	43.04,18.28	46.34,21.08	42.47,29.25
path	50.22,34.62	53.23,28.60	63.71,41.51	78.48,34.19	85.80,46.02
path	77.76,42.37	72.02,46.45	65.85,51.18	51.79,44.73	38.45,44.73
path	33.00,55.91	36.30,70.97	45.05,76.34	53.23,59.14	49.50,51.18
path	39.45,49.25	36.15,55.05	38.16,66.02	46.48,68.39	50.07,58.92
path	46.34,54.41	40.75,53.98	40.17,63.23	45.62,62.37
click Letter from Ms. Graham##280838
|tip It looks like a small sealed letter sitting on a crude crate behind Death Speaker Blackthorn.
|tip Use the "Razorfen Downs" dungeon guide to complete the dungeon.
|tip Opening your map will show an ant trail that marks the location.
Read the Fourth Letter |q 40252 |future
step
Enter the building |goto Mount Hyjal/0 44.33,47.27 < 5 |walk
click Letter from Ms. Graham##280842
|tip Inside the building.
|tip It looks like a small sealed letter sitting on a table at the top of the Shrine of Aviana.
Read the Fifth Letter |q 40293 |future |goto 44.42,46.62
step
click Letter from Ms. Graham##280843
|tip It looks like a small sealed letter sitting on the edge of the stone bridge.
Read the Sixth Letter |q 40288 |future |goto Icecrown/0 70.76,73.37
step
click Letter from Ms. Graham##280844
|tip It is at the base on the right side of the monument.
Read the Seventh Letter |q 50187 |future |goto Townlong Steppes/0 37.81,62.99
step
click Gift from Ms. Graham##280845
|tip It looks like a small glowing purple box all the way up on the highest ring of The Nexus.
collect 1 Blue Crystal Monocle##156724 |q 50181 |future |goto Borean Tundra/0 27.54,27.08
step
The rest of this guide requires a group of 5 to complete
|tip The group must have one person with each monocle, as all four monocles are required to progress.
|tip Four different group members, each with a different colored monocle.
confirm |condition hasmount(261395)
step
Send a group member to each location below:
|tip Click on the name of the NPC or the Blocked Drawer to change coordinates.
|tip The first four members must kill an NPC while wearing a specific monocle.
_These NPCs need to be killed at the same time!_
|tip The last member must run into a room once the 4 NPCs have been killed and have used Draw Energy to unblock the doorway.
|tip Draw Energy will cause the beams blocking the Blocked Drawer to disappear.
kill Yorilan##132598 |goto Suramar/0 43.63,81.67
|tip The Yellow Crystal Monocle must be worn to damage Yorilan.
kill Giluzui##132597 |goto 20.56,46.03
|tip Inside the building.
|tip The Green Crystal Monocle must be worn to damage Giluzui.
kill Blom'an##132596 |goto 46.96,28.41
|tip The Blue Crystal Monocle must be worn to damage Blom'an.
kill Rikei##132595 |goto 71.97,62.81
|tip The Red Crystal Monocle must be worn to damage Rikei.
Blocked Drawer Room |goto 41.16,69.83
|tip Upstairs inside the building.
|tip Run into the room once it has been unblocked.
confirm |condition hasmount(261395)
step
Once inside the Drawer room:
_Remove any gear or buffs that give absorption shields_
|tip Absorption shields will reduce the amount of damage you take in this step, which will give you an incorrect code.
|tip Clicking the next object will cause you to take damage and be teleported.
|tip The amount of damage you take will be the code for your group.
|tip Use the "What happened to me?" section of the combat log to get an exact number.
|tip For example, if you take 12,345 damage, the code for your group is 12345.
|tip Write this number down, it will be used to determine the amount of times you pet cats in the next section.
click Lost Cat Toy##280903 |goto 41.17,69.93
|tip It looks like a small circular object underneath the pillows on the floor inside the building.
confirm |condition hasmount(261395)
step
Once your group has your code:
Enter the Court of Stars dungeon |goto Court of Stars/1 8.11,69.15 < 1000 |c |condition hasmount(261395)
step
kill Patrol Captain Gerdo##104215
|tip He walks around this area.
|tip Use the dungeon guides to accomplish this.
Defeat Patrol Captain Gerdo |scenariogoal 1/29612 |condition hasmount(261395) |goto 34.28,28.10
step
map Court of Stars/1
path follow smart; loop off; ants curved
path	49.29,68.10	49.29,68.24
The cats that your group must pet based on your code are in a small house to the southwest of Talixae Flamewreath
|tip Opening your map will show an ant trail that marks their location.
_The pet order is: Mrs. Fluffymuffins, Shadow, Mew, Ash, then Bella_
|tip One group member per cat.
|tip Use your group's code to pet the cats.
|tip For example, if your code was 13645 you would pet Mrs. Fluffymuffins once, Shadow three times, Mew six times, Ash four times and Bella 5 times.
|tip If there is a 0 in your code, skip petting that cat.
|tip If your code is only 4 digits, (for example you only took 1,132 damage), add a 0 to the front so it's 5 digits, making your code 01132 (so you'd skip petting the first cat).
|tip When a cat is pet the cat will receive one stack of "Purring."
|tip This stacking buff is how you keep track of the number of pets for each cat.
|tip When done correctly an Ominous Orb will spawn; click it to continue to the next area.
confirm |condition hasmount(261395)
step
Assign each member of the group a number from 1 to 5
|tip This number will be each member's number for a jumping puzzle.
Follow the jumping pattern below:
|tip The number represents the player assigned to that number.
|tip F means jump forward, L means jump left, R means jump right, and B means jump backwards.
|tip The first F for each player is them jumping onto the first platform.
1FF
2FLF
1F
3FFRR
4FL
5F
2L
4F
confirm |condition hasmount(261395)
step
Jumping Puzzle Continued:
2L
4LF
2FL
3B
4FRRR
3F
5F
1RF
3BFR
1FL
confirm |condition hasmount(261395)
step
Jumping Puzzle Continued:
4F
2BF
5F
2BF
5R
3F
1FR
2FR
4F
2LF
confirm |condition hasmount(261395)
step
Jumping Puzzle Continued:
4F
1RF
3L
4F
3FF
5F
1L
4R
5L
2F
confirm |condition hasmount(261395)
step
Jumping Puzzle Continued:
4F
5FF
1F
3L
5RF
4F
1R
5L
1F
2F
confirm |condition hasmount(261395)
step
Jumping Puzzle Continued:
3 Jump off (Click "Exit Vehicle")
3 Go to far left platform
3F
2F
3FFF
2B
4R
5F
2FRF
3FFFF
All group members should now be across
confirm |condition hasmount(261395)
step
The last puzzle is solved through a lot of trial and error
|tip You will be using a black floating disc to shuttle players over a pool of arcane lava, but not everyone can ride together.
Use trial and error to find out who in the group is who:
|tip Start by sending groups of two across.
|tip If someone gets knocked off the disc those two people aren't compatible together.
Person A: can go across with anyone
|tip Person A should remain on the disc until the very end.
Person B: can cross with Person A or in a trio
Person C, D, and E: can cross in a duo along with Person A
Proceed across as follows:
1. Person A, B, and C go across
2. C gets off, A and B go back to beginning
3. B gets off at beginning, A and D go across
4. D gets off and A and C go back to beginning
5. B gets on with A and C and goes across
6. C gets off, A and B go back to beginning
7. B gets off at beginning, A and E go across
8. E gets off, A and C go back to beginning
9. B gets on and goes across with A and C
confirm |condition hasmount(261395)
step
Enter the room to the northwest
|tip After all group members have crossed the arcane lava.
|tip Each group member must stand on a purple arcane pad.
clicknpc The Hivemind##132609
|tip Click The Hivemind at the same time and channel the spell.
collect 1 The Hivemind##156798 |condition hasmount(261395)
step
use The Hivemind##156798
learnmount The Hivemind##261395
step
_Congratulations!_
You Collected "The Hivemind" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Teldrassil Hippogryph",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"flying, mount, battle, for, azeroth, quest, alliance"},
mounts={274610},
model={86527},
condition_end=function() return hasmount(274610) end,
description="This mount is acquired by completing the \"Burning of Teldrassil\" event.",
},[[
step
accept A Short-Lived Peace##52058
|tip You will accept this quest automatically.
step
Enter the building |goto Stormwind City/0 80.69,37.80 < 5 |walk
talk Anduin Wrynn##107574
|tip Inside the building.
turnin A Short-Lived Peace##52058 |goto 85.90,31.57
accept The Horde Uprising##52060 |goto 85.90,31.57
step
talk Master Mathias Shaw##139798
|tip Inside the building.
turnin The Horde Uprising##52060 |goto 85.15,32.35
accept A Disturbance in Ashenvale##52062 |goto 85.15,32.35
step
Follow the path |goto 83.88,30.57 < 5 |only if walking
Run up the stairs |goto 83.25,29.36 < 5 |only if walking
click Portal to Astranaar##297575
Take the Portal to Astranaar |q 52062/1 |goto 82.68,26.84
step
Find Delaryn Summermoon |q 52062/2 |goto Ashenvale/0 35.79,49.99
step
talk Captain Delaryn Summermoon##134578
turnin A Disturbance in Ashenvale##52062 |goto 35.86,50.43
accept The Light of Elune##52072 |goto 35.86,50.43
accept Knives of the Forsaken##53616 |goto 35.86,50.43
stickystart "Slay_Forsaken_Assassins"
step
clicknpc Astranaar Sentinel##144282+
|tip They look like Night Elf corpses on the ground around this area.
Honor #6# Fallen Soldiers |q 52072/1 |goto 35.88,50.20
step
label "Slay_Forsaken_Assassins"
kill Forsaken Assassin##140801+
|tip They are stealthed around this area.
Slay #8# Forsaken Assassins |q 53616/1 |goto 36.06,50.26
step
talk Captain Delaryn Summermoon##134578
turnin The Light of Elune##52072 |goto 35.86,50.43
turnin Knives of the Forsaken##53616 |goto 35.86,50.43
accept A Soft Glow##52116 |goto 35.86,50.43
step
Meet Malfurion at the Entrance to Darkshore |q 52116/1 |goto Darkshore/0 43.82,89.82
step
Watch the dialogue
talk Malfurion Stormrage##133693
turnin A Soft Glow##52116 |goto 43.58,89.25
accept Hidden Amongst the Leaves##52234 |goto 43.58,89.25
accept Mercy for the Mad##53617 |goto 43.58,89.25
stickystart "Slay_Frenzied_Blackwood_Furbolgs"
step
talk Druid of the Claw##140633+
|tip They look like friendly druids on the ground around this area.
|tip Some are shapeshifted in animal form and some aren't.
Tell them _"You must defend the Grove of the Ancients!"_
Dispatch #8# Druids |q 52234/1 |goto 42.07,77.29
step
label "Slay_Frenzied_Blackwood_Furbolgs"
kill 10 Frenzied Blackwood Furbolg##140686 |q 53617/1 |goto 41.72,76.89
step
talk Captain Delaryn Summermoon##134578
turnin Hidden Amongst the Leaves##52234 |goto 43.41,75.56
turnin Mercy for the Mad##53617 |goto 43.41,75.56
accept Garden Grove##52240 |goto 43.41,75.56
step
kill Monstrous Shredder##143562 |q 52240/1 |goto 43.98,75.34
|tip You may need help with this.
step
talk Captain Delaryn Summermoon##134578
turnin Garden Grove##52240 |goto 45.20,74.96
step
talk Onu##33072
accept Enraged Furbolgs##52245 |goto 45.41,74.85
step
talk Elder Brolg##140719
Tell him _"Come with us to safety. We will not harm you."_
Rescue Elder Brolg |q 52245/1 |goto 43.54,81.08
step
_Next to you:_
talk Captain Delaryn Summermoon##140728
accept Elves in the Machine##53551
stickystart "Sabotage_Horde_Demolishers"
step
talk Elder Brownpaw##140721
Tell him _"Come with us to safety. We will not harm you."_
Rescue Elder Brownpaw |q 52245/3 |goto 46.47,85.73
step
Enter the cave |goto 46.43,83.73 < 5 |walk
talk Gren Tornfur##140720
|tip Inside the cave.
Tell him _"Come with us to safety. We will not harm you."_
Rescue Gren Tornfur |q 52245/2 |goto 46.63,83.90
step
label "Sabotage_Horde_Demolishers"
clicknpc Horde Demolisher##144103+
|tip They look like large siege vehicles on the ground around this area.
|tip Use the "Sleeping Powder" ability onscreen to put enemies to sleep.
Sabotage #5# Horde Demolishers |q 53551/1 |goto 45.07,85.52
step
_Next to you:_
talk Captain Delaryn Summermoon##140728
turnin Elves in the Machine##53551
step
talk Onu##33072
turnin Enraged Furbolgs##52245 |goto 45.41,74.85
accept The Wake of Something New##52242 |goto 45.41,74.85
step
click Azerite Deposit##292886
Discover the Source of Onu's Pain |q 52242/1 |goto 34.66,85.17
step
talk Captain Delaryn Summermoon##134578
turnin The Wake of Something New##52242 |goto 34.73,85.11
accept Azerite Denial##53619 |goto 34.73,85.11
accept No Horde Allowed##53621 |goto 34.73,85.11
stickystart "Collect_Azerite"
step
Kill enemies around this area
Slay #10# Horde Combatants |q 53621/1 |goto 32.48,84.42
step
label "Collect_Azerite"
click Azerite Deposit##292886+
|tip They look like small blue crystals sticking out of the ground around this area.
Collect #6# Azerite |q 53619/1 |goto 32.50,84.24
step
talk Captain Delaryn Summermoon##134578
turnin Azerite Denial##53619 |goto 34.73,85.11
turnin No Horde Allowed##53621 |goto 34.73,85.11
accept Malfurion Returns##52256 |goto 34.73,85.11
step
talk Malfurion Stormrage##133693
turnin Malfurion Returns##52256 |goto 42.30,66.80
accept "Rock" The World##52257 |goto 42.30,66.80
step
clicknpc Tree of Life##143861
Speak with Tree of Life |q 52257/1 |goto 42.07,66.84
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #50# Horde Enemies |q 52257/2 |goto 42.17,69.08
step
talk Malfurion Stormrage##133693
turnin "Rock" The World##52257 |goto 42.30,66.80
accept Long Away##52197 |goto 42.30,66.80
step
talk Captain Delaryn Summermoon##134578
turnin Long Away##52197 |goto Darnassus/0 40.00,50.42
accept A Looming Threat##52279 |goto 40.00,50.42
step
talk Janthes Shadeleaf##144146
Tell him _"The Horde have halted their advance at the Wildbend River! We must push them back at once!"_
Rally the Druids of the Claw |q 52279/2 |goto 45.61,35.93
step
talk Myara Sunsong##140498
Tell her _"Captain, the Horde have reached the Wildbend River! We cannot hold them for long!"_
Rally the Kaldorei Forces |q 52279/3 |goto 61.00,49.41
step
talk Astarii Starseeker##4090
Tell her _"Priestess, we require your aid to hold the Horde at Wildbend River."_
Rally the Priestesses of the Moon |q 52279/1 |goto 42.99,73.06
step
talk Malfurion Stormrage##140877
turnin A Looming Threat##52279 |goto Teldrassil/0 58.47,89.49
step
talk Captain Delaryn Summermoon##134578
accept A Threat from the North##52973 |goto 58.48,89.41
|tip You will accept this quest automatically.
step
talk Malfurion Stormrage##140877
turnin A Threat from the North##52973 |goto Darkshore/0 50.42,20.01
accept Rescue Effort##52974 |goto 50.42,20.01
accept Defending Lor'danel##53622 |goto 50.42,20.01
step
talk Captain Delaryn Summermoon##134578
accept Action This Day##52975 |goto 50.43,19.68
stickystart "Slay_Horde_Attackers"
step
talk Lor'danel Citizen##142408+
|tip They look like friendly NPCs cowering in fear on the ground around this area.
Tell them _"I have cleared a path - - you must escape now!"_
Rescue #8# Lor'danel Citizens |q 52974/1 |goto 50.75,19.24
step
label "Slay_Horde_Attackers"
Kill enemies around this area
Slay #15# Horde Attackers |q 53622/1 |goto 50.81,19.16
step
kill Gormok Axefall##144364 |q 52975/1 |goto 47.67,20.42
step
kill Ragash Bloodwish##144365 |q 52975/2 |goto 46.82,18.82
step
talk Captain Delaryn Summermoon##134578
turnin Rescue Effort##52974 |goto 50.43,19.68
turnin Action This Day##52975 |goto 50.43,19.68
turnin Defending Lor'danel##53622 |goto 50.43,19.68
accept The Guidance of Our Shan'do##52977 |goto 50.43,19.68
step
Find Malfurion in Darkshore |q 52977/1 |goto 46.24,24.23
step
Watch the dialogue
Assist Malfurion |q 52977/2 |goto 45.94,24.47
step
clicknpc Tamed Hippogryph##142110
Use Tyrande's Mount |q 52977/3 |goto 45.96,24.96
step
Return to Darnassus |goto Darnassus/0 43.01,73.09 < 5 |c |notravel |q 52977
step
Enter the building |goto 43.01,74.83 < 5 |walk
talk Mia Greymane##142978
|tip Inside the building.
turnin The Guidance of Our Shan'do##52977 |goto 43.09,78.62
accept A Flicker of Hope##53095 |goto 43.09,78.62 |only if not completedq(53310)
step
Leave the building |goto 43.01,74.80 < 3 |walk
Put out fires
|tip Use the "Douse" ability on your screen.
|tip Use it to put out fires around this area.
talk Darnassian Citizen##143409+
Tell them _"The flames are clear! Get to the Temple of the Moon!"_
Evacuate #982# Darnassian Citizens |q 53095/1 |goto 58.76,68.28 |only if not completedq(53310)
|tip You will fail this quest.
step
Watch the dialogue
accept From the Ashes...##53310 |goto 43.38,78.28
|tip You will accept this quest automatically.
step
click Portal to Stormwind##303144 |goto 43.91,78.68
Teleport to Stormwind |goto Stormwind City/0 49.59,86.53 < 5 |c |noway |q 53310
step
Enter the building |goto 80.69,37.80 < 5 |walk
talk Anduin Wrynn##107574
|tip Inside the building.
turnin From the Ashes...##53310 |goto 85.90,31.57
step
use the Smoldering Reins of the Teldrassil Hippogryph##163127
learnmount Teldrassil Hippogryph##274610
step
_Congratulations!_
You Collected the "Teldrassil Hippogryph" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Aquatic Mounts\\Profession Mounts\\Great Sea Ray",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"aquatic, mount, battle, for, azeroth"},
mounts={278803},
model={73253},
description="This mount is acquired by a random world drop.",
},[[
step
Fish in any water on Kul Tiras or Zandalar
collect Great Sea Ray##163131 |n
|tip This comes from fishing in any water in BFA zones.
use the Great Sea Ray##163131
Learn the "Great Sea Ray" Mount |learnmount Great Sea Ray##278803 |goto Nazmir/0 60.67,20.67
step
_Congratulations!_
You Collected the "Great Sea Ray" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Profession Mounts\\Engineering\\Mecha-Mogul Mk2",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"flying, mount, battle, for, azeroth"},
mounts={274621},
model={},
description="This mount is acquired by crafting it with the Engineering profession.",
},[[
step
Reach Level 150 Kul Tiran Engineering |skill Kul Tiran Engineering,150 |or
|tip Use the "Kul Tiran Engineering" profession guide to accomplish this.
'|learnmount Mecha-Mogul Mk2##274621 |or
step
Equip a "AZ3-R1-T3" Headgear
|tip This is a crafted item.
|tip You will need to have the 3 levels of Azerite Upgrades available.
|tip For the first slot, choose the upgrade that grants +25 Zandalari Engineering.
|tip For the third slot, choose the upgrade that grants +30 Zandalari Engineering.
|tip The higher your Zandalari Engineering skill, the higher the chance for drops later.
Click here to continue |confirm |condition hasmount(274621)
step
collect 50 Platinum Ore##152513 |condition hasmount(274621)
|tip Use the "Platinum" profession farming guide if you have Mining.
|tip You can also purchase them from the Auction House.
step
collect 100 Storm Silver Ore##152579 |condition hasmount(274621)
|tip Use the "Storm Silver" profession farming guide if you have Mining.
|tip You can also purchase them from the Auction House.
step
kill Mogul Razdunk##131227
|tip You will need to kill Mogul Razdunk on "Mythic difficulty"
|tip You need a premade group in order to do Mythic dungeons.
Enter The MOTHERLODE!! |goto The MOTHERLODE!!/0 0.00,0.00 < 1000 |c |condition hasmount(274621)
step
Kill trash mobs inside of The MOTHERLODE!!
collect Azerite Inspir-A-Geneering Elixir##161138 |condition hasmount(274621)
|tip You can also buy this from the Auction House.
step
use the Azerite Inspir-A-Geneering Elixir##161138
Gain the Azerite Inspir-A-Geneering buff |havebuff Time Travelling##133214 |condition hasmount(274621)
stickystart "Collect_Blast-Fired_Electric_Servomotor"
stickystart "Collect_Crush_Resistant_Stabilizer"
stickystart "Collect_Barely_Stable_Azerite_Reactor"
stickystart "Collect_Mecha-Mogul_Mk1_Remote_Activation_Device"
step
collect 20 Azerite Forged Protection Plating##161136 |condition hasmount(274621)
|tip These come from Shredders between the last two bosses.
|tip You must have the "Kul Turan Skinning" skill in order to collect these.
step
label "Collect_Blast-Fired_Electric_Servomotor"
collect 20 Blast-Fired Electric Servomotor##161137 |condition hasmount(274621)
|tip These come from Venture Co. War Machines while having the Azerite Inspir-A-Geneering buff.
step
label "Collect_Crush_Resistant_Stabilizer"
collect 20 Crush Resistant Stabilizer##161132 |condition hasmount(274621)
|tip These come from mechanical enemies in the MOTHERLODE!! on Mythic difficulty.
step
label "Collect_Barely_Stable_Azerite_Reactor"
collect 1 Barely Stable Azerite Reactor##161131 |condition hasmount(274621)
|tip This comes from Dr Boom in the MOTHERLODE!! on Mythic difficulty.
|tip He is found before the first boss.
step
label "Collect_Mecha-Mogul_Mk1_Remote_Activation_Device"
collect 1 Mecha-Mogul Mk1 Remote Activation Device##161129 |condition hasmount(274621)
|tip This comes from Mogul Razdunk, the last boss of The MOTHERLODE!! on Mythic difficulty.
step
kill Mogul Razdunk##132713
|tip He's the last boss of the instance.
collect Schematic: Mecha-Mogul Mk2##161135 |condition hasmount(274621)
step
use the Schematic: Mecha-Mogul Mk2##161135
Learn the "Mecha-Mogul Mk2" Recipe |learn Mecha-Mogul Mk2##274621 |condition hasmount(274621)
step
collect 20 Expulsom##152668 |condition hasmount(274621)
|tip They are obtained from World Quests, Salvaging Gear, Milling Herbs and scrapping magical items.
You can find the Shred-Master Mk1 here [Boralus/0 77.13,16.34]
step
Open Your Kul Tiran Engineering Crafting Panel:
_<Create a Mecha-Mogul Mk2>_
collect Mecha-Mogul Mk2##161134 |condition hasmount(274621)
step
use the Mecha-Mogul Mk2##161134
Learn the "Mecha-Mogul Mk2" Mount |learnmount Mecha-Mogul Mk2##274621
step
_Congratulations!_
You Collected the "Mecha-Mogul Mk2" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Order of Embers\\Smoky Charger",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={260173},
model={82161},
description="This mount is acquired by becoming Exalted with the Order of Embers then buying the mount for 10,000 gold.",
},[[
step
Load the "Order of Embers" Reputation Guide |confirm |next "Reputations Guides\\Battle for Azeroth\\Order of Embers"
|tip Click the line above to load the guide.
Reach Exalted Reputation with the Order of Embers |condition rep('Order of Embers')==Exalted
step
talk Quartermaster Alcorn##135815
buy Reins of the Smoky Charger##161910 |n
use the Reins of the Smoky Charger##161910
Learn the "Smoky Charger" Mount |learnmount Smoky Charger##260173 |goto Drustvar/0 37.89,49.00
step
_Congratulations!_
You Collected the "Smoky Charger" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Proudmoore Admiralty\\Admiralty Stallion",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={237287},
model={82148},
description="This mount is acquired by becoming Exalted with the Proudmoore Admiralty then buying the mount for 10,000 gold.",
},[[
step
Load the "Proudmoore Admiralty" Reputation Guide |confirm |next "Reputations Guides\\Battle for Azeroth\\Proudmoore Admiralty"
|tip Click the line above to load the guide.
Reach Exalted Reputation with the Proudmoore Admiralty |condition rep('Order of Embers')==Exalted
step
Enter the building |goto Boralus/0 68.74,21.09 < 5 |walk
talk Provisioner Fray##135808
|tip Inside the building.
buy Reins of the Admiralty Stallion##161911 |n
use the Reins of the Admiralty Stallion##161911
Learn the "Admiralty Stallion" Mount |learnmount Admiralty Stallion##237287 |goto 67.51,21.56
step
_Congratulations!_
You Collected the "Admiralty Stallion" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Storm's Wake\\Dapple Gray Horse",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={260172},
model={81693},
description="This mount is acquired by becoming Exalted with the Storm's Wake then buying the mount for 10,000 gold.",
},[[
step
Load the "Storm's Wake" Reputation Guide |confirm |next "Reputations Guides\\Battle for Azeroth\\Storm's Wake"
|tip Click the line above to load the guide.
Reach Exalted Reputation with the Storm's Wake |condition rep('Storm\'s Wake')==Exalted
step
talk Sister Lilyana##135800
buy Reins of the Dapple Gray##161912 |n
use the Reins of the Dapple Gray##161912
Learn the "Dapple Gray Horse" Mount |learnmount Dapple Gray##260172 |goto Stormsong Valley/0 59.29,69.34
step
_Congratulations!_
You Collected the "Dapple Gray Horse" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Vendor Mounts\\Mighty Caravan Brutosaur",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={264058},
model={83632},
description="This mount is acquired by purchasing the mount for 5,000,000 gold.",
},[[
step
talk Tricky Nick##142691
buy Reins of the Mighty Caravan Brutosaur##163042 |n
|tip You will need 5,000,000 gold.
use the Reins of the Mighty Caravan Brutosaur##163042
Learn the "Mighty Caravan Brutosaur" Mount |learnmount Mighty Caravan Brutosaur##264058 |goto Boralus/0 56.77,47.08
step
_Congratulations!_
You Collected the "Mighty Caravan Brutosaur" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Vendor Mounts\\Palehide Direhorn",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={279474},
model={87779},
description="This mount is acquired by purchasing the mount for 500,000 gold.",
},[[
step
talk Tricky Nick##142691
buy Reins of the Palehide Direhorn##163589 |n
|tip You will need 500,000 gold.
use the Reins of the Palehide Direhorn##163589
Learn the "Palehide Direhorn" Mount |learnmount Palehide Direhorn##279474 |goto Boralus/0 56.77,47.08
step
_Congratulations!_
You Collected the "Palehide Direhorn" Mount.
]])
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Vendor Mounts\\Priestess' Moonsaber",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"Flying, mount, battle, for, azeroth, Priestess', Moonsaber"},
mounts={288740},
model={90159},
description="This mount is acquired by purchasing the mount for 750 7th Legion Service Medals.",
},[[
step
Collect 750 7th Legion Service Medals |condition curcount(1717)>=750
|tip These come from completing world quests in Zandalar.
|tip You can also get them from completing world quests in Warfronts when your faction controls them.
step
talk Provisioner Stoutforge##148927
buy Priestess' Moonsaber##166463 |n
use the Priestess' Moonsaber##166463
Learn the "Priestess' Moonsaber" Mount |learnmount Priestess' Moonsaber##288740 |goto Boralus/0 66.89,25.77
step
_Congratulations!_
You Collected the "Priestess' Moonsaber" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Vendor Mounts\\Azureshell Krolusk",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"Ground, Mount, Battle, For, Azeroth, Azureshell, Krolusk"},
mounts={288736},
model={90393},
description="This mount is acquired by purchasing the mount for 200 7th Legion Service Medals.",
},[[
step
Collect 200 7th Legion Service Medals |condition curcount(1717)>=200
|tip These come from completing world quests in Zandalar.
|tip You can also get them from completing world quests in Warfronts when your faction controls them.
step
talk Provisioner Stoutforge##148927
buy Azureshell Krolusk##166465 |n
use the Azureshell Krolusk##166465
Learn the "Azureshell Krolusk" Mount |learnmount Azureshell Krolusk##288736 |goto Boralus/0 66.89,25.77
step
_Congratulations!_
You Collected the "Azureshell Krolusk" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Vendor Mounts\\Blue Marsh Hopper",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"Ground, Mount, Battle, For, Azeroth, Blue, Marsh, Hopper"},
mounts={288587},
model={81959},
description="This mount is acquired by purchasing the mount for 333,333 gold.",
},[[
step
Enter the cave |goto Nazmir/0 71.22,55.80
talk Gottum##148810
buy Blue Marsh Hopper##166442 |n
use the Blue Marsh Hopper##166442
Learn the "Blue Marsh Hopper" Mount |learnmount Blue Marsh Hopper##288587 |goto 70.85,56.49
step
_Congratulations!_
You Collected the "Blue Marsh Hopper" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Vendor Mounts\\Green Marsh Hopper",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"Ground, Mount, Battle, For, Azeroth, Green, Marsh, Hopper"},
mounts={259740},
model={81952},
description="This mount is acquired by purchasing the mount for 333,333 gold.",
},[[
step
Enter the cave |goto Nazmir/0 71.22,55.80
talk Gottum##148810
buy Green Marsh Hopper##163183 |n
use the Green Marsh Hopper##163183
Learn the "Green Marsh Hopper" Mount |learnmount Green Marsh Hopper##259740 |goto 70.85,56.49
step
_Congratulations!_
You Collected the "Green Marsh Hopper" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Vendor Mounts\\Yellow Marsh Hopper",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"Ground, Mount, Battle, For, Azeroth, Yellow, Marsh, Hopper"},
mounts={288589},
model={81958},
description="This mount is acquired by purchasing the mount for 333,333 gold.",
},[[
step
Enter the cave |goto Nazmir/0 71.22,55.80
talk Gottum##148810
buy Yellow Marsh Hopper##166443 |n
use the Yellow Marsh Hopper##166443
Learn the "Yellow Marsh Hopper" Mount |learnmount Yellow Marsh Hopper##288589 |goto 70.85,56.49
step
_Congratulations!_
You Collected the "Yellow Marsh Hopper" Mount.
]])
ZGV.BETAEND()
