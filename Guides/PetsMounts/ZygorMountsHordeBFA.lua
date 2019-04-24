local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("PetsMountsHBFA") then return end
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
Earn the "Elevator Music" Achievement |achieve 12937
|tip Use the "Elevator Music" achievement guide to accomplish this.
step
Earn the "Parental Controls" Achievement |achieve 12938
|tip Use the "Parental Controls" achievement guide to accomplish this.
step
Earn the "Thrash Mouth - All Stars" Achievement |achieve 12823
|tip Use the "Thrash Mouth - All Stars" achievement guide to accomplish this.
step
Earn the "What's in the Box?" Achievement |achieve 12828
|tip Use the "What's in the Box?" achievement guide to accomplish this.
step
Earn the "Now We Got Bad Blood" Achievement |achieve 12772
|tip Use the "Now We Got Bad Blood" achievement guide to accomplish this.
step
Earn the "Edgelords" Achievement |achieve 12830
|tip Use the "Edgelords" achievement guide to accomplish this.
step
Earn the "Existential Crisis" Achievement |achieve 12836
|tip Use the "Existential Crisis" achievement guide to accomplish this.
step
Earn the "Double Dribble" Achievement |achieve 12551
|tip Use the "Double Dribble" achievement guide to accomplish this.
step
collect Bloodgorged Crawg##163216
|tip You can find it in your mailbox.
step
use the Bloodgorged Crawg##163216
Learn the "Bloodgorged Crawg" Mount |learnmount Bloodgorged Crawg##250735
step
_Congratulations!_
You Collected the "Bloodgorged Crawg" Mount.
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
Earn the "A Horde of Hoofbeats" Achievement |achieve 12934
step
use the Frenzied Feltalon##163981
|tip It will be in your mailbox.
Learn the "Frenzied Feltalon" Mount |learnmount Frenzied Feltalon##280729
step
_Congratulations!_
You Collected the "Frenzied Feltalon" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Highmountain Thunderhoof",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"ground, mount, battle, of, azeroth, achievement, horde"},
mounts={258060},
model={81113},
condition_end=function() return hasmount(258060) end,
description="This mount is acquired by completing the \"Allied Races: Highmountain Tauren\" achievement.",
},[[
step
accept The Call for Allies##49930 |goto Dalaran L/10 72.46,45.94
|tip You will accept this quest automatically.
step
Enter the building |goto Orgrimmar/1 38.59,80.10 < 7 |walk
talk Lady Sylvanas Windrunner##126065
turnin The Call for Allies##49930 |goto 37.77,81.16
step
Load the "Highmountain" Leveling Guide |confirm |next "Leveling Guides\\Legion (100-110)\\Highmountain"
|tip Click the line above to load the guide.
|tip You must progress through the Highmountain guide until you earn the "Ain't No Mountain High Enough" achievement.
Earn the "Ain't No Mountain High Enough" Achievement |achieve 10059
step
Load the "Highmountain" Leveling Guide |confirm |next "Leveling Guides\\Legion (100-110)\\Highmountain"
|tip Click the line above to load the guide.
|tip Completing certain quests in Highmountain award reputation with the Highmountain Tribe.
Load the "World Quests" Daily Guide |confirm |next "Dailies Guides\\Legion\\World Quests"
|tip Click the line above to load the guide.
|tip Completing world quests in Highmountain award reputation with the Highmountain Tribe.
Use Highmountain Tribe Reputation Insignias
|tip These are awarded from Order Hall missions, Highmountain Tribe emissary quests, and world quests in Highmountain.
|tip These can also be chosen from "The Kirin Tor of Dalaran" emissary quest.
Use Your Highmountain Tribe Insignia |use Highmountain Tribe Insignia##141341 |only if itemcount(141341) >= 1
Use Your Highmountain Tribe Insignia |use Highmountain Tribe Insignia##139024 |only if itemcount(139024) >= 1
Use Your Highmountain Tribe Insignia |use Highmountain Tribe Insignia##146944 |only if itemcount(146944) >= 1
Use Your Highmountain Tribe Insignia |use Highmountain Tribe Insignia##146938 |only if itemcount(146938) >= 1
Use Your Greater Highmountain Tribe Insignia |use Greater Highmountain Tribe Insignia##141990 |only if itemcount(141990) >= 1
Use Your Greater Highmountain Tribe Insignia |use Greater Highmountain Tribe Insignia##147412 |only if itemcount(147412) >= 1
Use Your Greater Highmountain Tribe Insignia |use Greater Highmountain Tribe Insignia##150928 |only if itemcount(150928) >= 1
Gain Exalted Reputation with the Highmountain Tribe |achieve 12292
step
talk Lady Sylvanas Windrunner##126065
accept A Choice of Allies##50242 |goto 37.77,81.16
step
talk Lady Liadrin##126062
Ask her _"What do we know about the nightborne?"_
Speak with Liadrin About the Nightborne |q 50242/2 |goto Orgrimmar/1 37.98,80.56
step
talk Baine Bloodhoof##125285
Ask him _"What do we know about the Hightmountain tauren?"_
Speak with Baine About the Highmountain Tauren |q 50242/1 |goto 38.18,81.10
step
talk Lady Sylvanas Windrunner##126065
Tell her _"I am ready to pursue our next ally."_
|tip Select Highmountain Tauren.
Choose an Ally to Pursue |q 50242/3 |goto 37.77,81.16
step
talk Lady Sylvanas Windrunner##126065
turnin A Choice of Allies##50242 |goto 37.77,81.16
step
talk Lady Sylvanas Windrunner##126065
accept A Second Ally For the Cause##50254 |goto Orgrimmar/1 37.77,81.15
|only if completedq(49614)
step
talk Lady Sylvanas Windrunner##126065
Tell her _"I am ready to pursue our next ally."_
|tip Select Highmountain Tauren.
Choose an Ally to Pursue |q 50254/1 |goto 37.77,81.15
|only if completedq(49614)
step
talk Lady Sylvanas Windrunner##126065
turnin A Second Ally For the Cause##50254 |goto 37.77,81.15
|only if completedq(49614)
step
talk Baine Bloodhoof##125285
accept A Feast for Our Kin##48066 |goto 38.17,81.10
step
Enter the building |goto Thunder Bluff/0 59.84,51.69 < 7 |walk
talk Baine Bloodhoof##93844
turnin A Feast for Our Kin##48066 |goto 61.65,52.10
step
talk Baine Bloodhoof##129914
|tip Wait for the dialogue to complete.
accept Shadow Over Thunder Bluff##48067 |goto Thunder Bluff/0 61.52,51.75
step
kill Shadow of Uul##125141+ |q 48067/2 |goto 55.36,51.33
kill Dark Tendril##125136+ |q 48067/1 |goto 55.36,51.33
step
talk Baine Bloodhoof##130773
|tip Next to you.
turnin Shadow Over Thunder Bluff##48067 |goto 55.20,51.05
accept Dark Forces##49756 |goto 55.20,51.05
step
kill Qy'telek##130726
|tip He walks around.
Slay Qy'telek |q 49756/1 |goto 38.17,61.81
step
talk Baine Bloodhoof##130773
|tip Next to you.
turnin Dark Forces##49756 |goto 38.04,60.65
accept Return to Highmountain##48079 |goto 38.04,60.65
step
talk Mayla Highmountain##108434
turnin Return to Highmountain##48079 |goto Thunder Totem/6 68.82,71.21
step
talk Spiritwalker Graysky##105085
accept Dark Tales##41884 |goto 68.38,72.97
step
Follow the path |goto Highmountain/0 36.58,65.92 < 10 |only if walking
Follow the path |goto 37.43,66.55 < 15 |only if walking
Follow the path |goto 38.73,67.99 < 15 |only if walking
Enter the building |goto 38.65,68.66 < 7 |walk
talk Spiritwalker Graysky##125454
turnin Dark Tales##41884 |goto 38.51,69.10
accept Walking in Their Footsteps##41764 |goto 38.51,69.10
step
click Water of Vision##248865
Use the Water of Vision |q 41764/1 |goto 38.53,69.17
step
Leave the building |goto 38.66,68.64 < 7 |walk
Follow the path |goto 39.57,69.43 < 7 |walk
Follow the path |goto 40.28,71.22 < 15 |only if walking
Enter the cave |goto 41.45,72.57 < 10 |walk
Follow the path |goto 42.01,72.77 < 10 |walk
Follow the path |goto 42.34,72.33 < 10 |walk
kill Shadow of Uul##125141+ |q 41764/3 |goto 43.52,73.29
kill Shadow Lurker##105069+ |q 41764/2 |goto 43.52,73.29
step
Follow the path |goto 43.67,74.02 < 10 |walk
Follow the path up |goto 44.19,74.95 < 7 |walk
Follow the path |goto 44.12,75.96 < 7 |walk
Follow the path |goto 44.98,76.40 < 10 |walk
Follow the path |goto 45.64,75.85 < 10 |walk
Follow the path |goto 46.25,74.80 < 10 |walk
click Bitestone Ward
Place the Bitestone Ward |q 41764/4 |goto 46.16,73.66
step
talk Spiritwalker Graysky##125454
turnin Walking in Their Footsteps##41764 |goto 38.51,69.10
accept Shadow of the Sepulcher##48185 |goto 38.51,69.10
step
Follow the path |goto 53.17,45.95 < 10 |only if walking
Follow the path |goto 54.36,46.73 < 10 |only if walking
Follow the path down |goto 54.63,45.69 < 10 |only if walking
Follow the path |goto 56.31,45.61 < 10 |only if walking
Enter the building |goto 56.81,46.05 < 7 |walk
talk Spiritwalker Graysky##125459
turnin Shadow of the Sepulcher##48185 |goto 57.01,46.21
accept Minions of the Darkness##41799 |goto 57.01,46.21
step
click Water of Vision##248865
Use the Water of Vision |q 41799/1 |goto 57.05,46.16
step
kill Dark Spirit##104872+
|tip Use the abilities on your bar.
Slay #12# Dark Spirits |q 41799/2 |goto 55.98,45.52
step
Enter the cave |goto 55.15,44.27 < 7 |walk
Follow the path |goto 54.61,43.62 < 7 |walk
Follow the path |goto 54.46,43.11 < 7 |walk
Follow the path |goto 54.65,42.71 < 7 |walk
Follow the path |goto 55.11,41.88 < 7 |walk
Follow the path |goto 54.53,41.71 < 7 |walk
Follow the path |goto 54.37,42.83 < 7 |walk
Follow the path |goto 54.98,43.34 < 7 |walk
Follow the path |goto 55.31,42.14 < 7 |walk
Follow the path |goto 55.01,41.24 < 7 |walk
kill Shadowy Tendril##130418+ |q 41799/3 |goto 54.74,41.15
step
Enter the cave |goto 55.21,41.84 < 7 |walk
kill Shadow of the Darkness##132090 |q 41799/4 |goto 55.36,40.85
step
click Sepulcher Ward
Place the Sepulcher Ward |q 41799/5 |goto 54.74,40.62
step
talk Spiritwalker Graysky##125459
turnin Minions of the Darkness##41799 |goto 57.01,46.21
accept Huln's Mountain##48190 |goto 57.01,46.21
step
Follow the path |goto 58.56,64.47 < 7 |only if walking
Cross the bridge |goto 57.92,63.60 < 7 |only if walking
Follow the path up |goto 57.22,63.34 < 10 |only if walking
Follow the path up |goto 56.11,63.55 < 10 |only if walking
Follow the path up |goto 54.83,63.69 < 10 |only if walking
Follow the path |goto 53.42,63.46 < 10 |only if walking
talk Spiritwalker Graysky##125466
turnin Huln's Mountain##48190 |goto 53.32,64.01
accept Servants of the Darkness##41800 |goto 53.32,64.01
step
clicknpc Spiritwalker Graysky##125829
Use the Water of Vision |q 41800/1 |goto 53.32,64.01
step
Follow the path |goto 53.97,64.84 < 10 |only if walking
Cross the bridge |goto 53.70,65.84 < 7 |only if walking
kill Necrodark Defiler##104888+ |q 41800/2 |goto 53.16,66.45
step
Follow the path |goto 52.63,66.61 < 10 |walk
kill Necrogg the Darkspeaker##104890
|tip He patrols up and down the hill
Slay Necrogg the Darkspeaker |q 41800/3 |goto 52.46,67.44
step
Follow the path up |goto 52.39,69.08 < 10 |only if walking
Follow the path up |goto 52.98,69.43 < 10 |only if walking
Enter the building |goto 53.23,69.35 < 7 |only if walking
click Snowmane Ward##3365
Place the Snowmane Ward |q 41800/4 |goto 53.33,69.48
step
talk Spiritwalker Graysky##125466
turnin Servants of the Darkness##41800 |goto 53.32,64.01
accept How Fares Ebonhorn?##48434 |goto 53.32,64.01
step
talk Spiritwalker Ebonhorn##124252
turnin How Fares Ebonhorn?##48434 |goto Thunder Totem/6 67.77,71.40
step
talk Mayla Highmountain##108434
accept Curse of the Necrodark##41815 |goto 68.72,71.03
step
Follow the path down |goto Highmountain/0 56.00,85.20 < 7 |only if walking
Cross the water |goto 55.34,84.21 < 15 |only if walking
Follow the path up |goto 56.07,82.00 < 10 |only if walking
Follow the path |goto 56.46,80.99 < 10 |only if walking
Follow the path |goto 56.03,80.03 < 10 |only if walking
Follow the path |goto 54.61,80.33 < 10 |only if walking
Follow the path up |goto 52.38,83.64 < 10 |only if walking
Follow the path up |goto 52.38,85.75 < 10 |only if walking
Follow the path up |goto 53.60,87.50 < 10 |only if walking
Cross the bridge |goto 56.22,89.05 < 7 |only if walking
talk Baine Bloodhoof##130423
turnin Curse of the Necrodark##41815 |goto 56.49,89.23
accept Ice and Shadow##41840 |goto 56.49,89.23
step
talk Jale Rivermane##97662
accept Whispers of the Darkness##41882 |goto 56.46,89.33
stickystart "Collect_Shadowice_Shards"
step
clicknpc Highmountain Protector##132212+
Free #6# Highmountain Protectors |q 41882/1 |goto 57.01,90.90
step
label "Collect_Shadowice_Shards"
Kill Necrodark enemies around this area
collect Shadowice Shard##136400 |q 41840/1 |goto 57.67,92.72
step
talk Spiritwalker Ebonhorn##105213
turnin Whispers of the Darkness##41882 |goto 57.55,92.34
turnin Ice and Shadow##41840 |goto 57.55,92.34
accept The Final Ward##41841 |goto 57.55,92.34
step
Enter the cave |goto 57.40,92.28 < 7 |walk
Follow the path |goto 57.12,92.13 < 7 |walk
click Summit Ward
Place the Summit Ward |q 41841/1 |goto 56.49,91.44
step
talk Spiritwalker Ebonhorn##105213
turnin The Final Ward##41841 |goto 56.81,92.02
accept The Darkness##48403 |goto 56.81,92.02
step
Leave the cave |goto 57.49,92.32 < 7 |walk
kill Uul'gyneth##126001 |q 48403/1 |goto 57.87,91.07
step
Follow the path |goto 57.43,92.71 < 7 |only if walking
Follow the path up |goto 57.10,92.17 < 7 |only if walking
Follow the path up |goto 56.86,92.63 < 7 |only if walking
talk Mayla Highmountain##104997
turnin The Darkness##48403 |goto 56.66,92.71
step
talk Baine Bloodhoof##126134
accept Together We Are the Horde!##48433 |goto 56.71,92.76
step
Enter the building |goto Orgrimmar/1 38.59,80.10 < 7 |walk
talk Lady Sylvanas Windrunner##126065
turnin Together We Are the Horde!##48433 |goto 37.77,81.16
step
learnmount Highmountain Thunderhoof##258060 |use Highmountain Thunderhoof##155662 |future
step
_Congratulations!_
You Collected the "Highmountain Thunderhoof" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Mag'har Direwolf",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"ground, mount, battle, for, azeroth, bloodgorged, crawg"},
mounts={267274},
model={84468},
description="This mount is acquired by unlocking the Mag'har Orc allied race.",
},[[
step
Earn the "Ready for War" Achievement |achieve 12509
|tip Progress through the "War Campaign" leveling guide until you earn this acheivement.
step
Reach Exalted Reputation with The Honorbound |condition rep('The Honorbound') == Exalted
|tip Use "The Honorbound" reputation guide to accomplish this.
step
Earn the "Allied Races: Mag'har Orc" Achievement |achieve 12518
|tip Use the "Mag'har Orc Race Unlock" leveling guide to accomplish this.
step
collect Mag'har Direwolf##161330 |condition hasmount(267274)
|tip It will be in your bags after earning the "Allied Races: Mag'har Orc" achievement.
step
use the Mag'har Direwolf##161330
Learn the "Mag'har Direwolf" Mount |learnmount Mag'har Direwolf##267274
step
_Congratulation!_
You Collected the "Mag'har Direwolf" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Nightborne Manasaber",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"ground, mount, battle, of, azeroth, achievement, horde"},
mounts={258845},
model={74032},
condition_end=function() return hasmount(258845) end,
description="This mount is acquired by completing the \"Allied Races: Nightborne\" achievement.",
},[[
step
accept The Call for Allies##49930 |goto Dalaran L/10 72.46,45.94
|tip You will accept this quest automatically.
step
Enter the building |goto Orgrimmar/1 38.59,80.10 < 7 |walk
talk Lady Sylvanas Windrunner##126065
turnin The Call for Allies##49930 |goto 37.77,81.16
step
Load the "Suramar (110)" Leveling Guide |confirm |next "Leveling Guides\\Legion (100-110)\\Suramar (110)"
|tip Click the line above to load the guide.
|tip You must progress through the Suramar guide until you earn the Insurrection achievement.
Earn the "Insurrection" Achievement |achieve 11340
step
Load the "World Quests" Daily Guide |confirm |next "Dailies Guides\\Legion\\World Quests"
|tip Click the line above to load the guide.
|tip Complete world quests in Suramar to gain reputation.
About Ancient Mana:
|tip Click various objects on the ground all around Suramar to collect Ancient Mana.
|tip You can track the objects on your minimap by using the Mana Divining Stone.
|tip You get the Mana Divining Stone as a quest reward shortly into the Suramar (110) leveling guide.
|tip The best area of Suramar to collect Ancient Mana is Twilight Vineyards.
Feed Ancient Mana to These Nightfallen NPC's:
|tip First Arcanist Thalyssra
|tip Arcanist Valtrois
|tip Chief Telemancer Oculeth
|tip Their locations change as you complete quests in the Suramar (110) leveling guide.
Gain Exalted Reputation with the Nightfallen |goto Suramar/0 36.51,46.80 |region suramar_shalaran |achieve 10778
step
talk Lady Sylvanas Windrunner##126065
accept A Choice of Allies##50242 |goto 37.77,81.16
step
talk Lady Liadrin##126062
Ask her _"What do we know about the nightborne?"_
Speak with Liadrin About the Nightborne |q 50242/2 |goto Orgrimmar/1 37.98,80.56
step
talk Baine Bloodhoof##125285
Ask him _"What do we know about the Hightmountain tauren?"_
Speak with Baine About the Highmountain tauren |q 50242/1 |goto 38.18,81.10
step
talk Lady Sylvanas Windrunner##126065
Tell her _"I am ready to pursue our next ally."_
|tip Select Nightborne Elves.
Choose an Ally to Pursue |q 50242/3 |goto 37.77,81.16
step
talk Lady Sylvanas Windrunner##126065
turnin A Choice of Allies##50242 |goto 37.77,81.16
step
talk Lady Sylvanas Windrunner##126065
accept A Second Ally For the Cause##50254 |goto Orgrimmar/1 37.77,81.15
|only if completedq(48433)
step
talk Lady Sylvanas Windrunner##126065
Tell her _"I am ready to pursue our next ally."_
|tip Select Nightborne Elves.
Choose an Ally to Pursue |q 50254/1 |goto 37.77,81.15
|only if completedq(48433)
step
talk Lady Sylvanas Windrunner##126065
turnin A Second Ally For the Cause##50254 |goto 37.77,81.15
|only if completedq(48433)
step
talk Lady Liadrin##126062
accept Thalyssra's Estate##49973 |goto 37.98,80.56
step
talk Lady Liadrin##131478
turnin Thalyssra's Estate##49973 |goto Suramar/0 65.88,63.72
accept Silvermoon City##49613 |goto 65.88,63.72
step
talk Lady Liadrin##130133
turnin Silvermoon City##49613 |goto Silvermoon City/0 58.12,19.88
accept Remember the Sunwell##49354 |goto 58.12,19.88
step
click Portal to the Sunwell |goto 53.95,19.49
Enter the Scenario |scenariostart |q 49354 |future |q 49354 |future
step
Meet with Liadrin |scenariogoal Meet with Liadrin.##1/38106 |goto Shrine of the Eclipse/1 61.10,71.48 |q 49354 |future
step
Follow the path |goto 56.52,73.29 < 7 |walk
Walk with Thalyssra |scenariogoal Walk with Thalyssra##2/38160 |goto 50.09,66.13 |q 49354 |future
step
Kill enemies around this area
Defeat the Sunwell Guardians |scenariogoal Defeat the Sunwell Guardians##3/38161 |goto 50.09,66.13 |q 49354 |future
step
kill Aruun the Darkener##129659 |scenariogoal Aruun the Darkener slain##4/38162 |goto 48.69,66.06 |q 49354 |future
step
Close the Void Rift |scenariogoal Void rift closed##5/38519 |q 49354 |future
|tip Wait for the dialogue to complete.
step
Follow the path |goto 58.09,65.52 < 7 |walk
click Silvermoon Translocator |goto 62.30,67.03
Leave the Sunwell |scenariogoal Leave the Sunwell##6/38163 |q 49354 |future
step
click Silvermoon Translocator |goto 62.30,67.03
Leave the Sunwell |scenariogoal Leave the Sunwell##6/38163 |goto Silvermoon City/0 58.25,19.35 < 1000 |noway |c |q 49354 |future
step
talk Lady Liadrin##130133
turnin Remember the Sunwell##49354 |goto 58.45,19.09
accept The Nightborne##49614 |goto 58.45,19.09
step
Enter the building |goto Orgrimmar/1 38.59,80.10 < 7 |walk
talk Lady Sylvanas Windrunner##126065
turnin The Nightborne##49614 |goto 37.77,81.16
step
learnmount Nightborne Manasaber##258845 |use Nightborne Manasaber##156487 |future
step
_Congratulations!_
You Collected the "Nightborne Manasaber" Mount.
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
Earn the "100 Exalted Reputations" Achievement |achieve 12866
step
use the Pureheart Courser##163982
|tip You can find it in your mailbox
Learn the "Pureheart Courser" Mount |learnmount Pureheart Courser##280730
step
_Congratulations!_
You Collected the "Pureheart Courser" Mount.
]])
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Zandalari Direhorn",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={263707},
model={83525},
description="This mount is acquired from completing the Allied Races: Zandalari Troll achievement.",
},[[
step
Earn the "Allied Races: Zandalari Troll" Achievement |achieve 13161
|tip Refer to our Zandalari Troll Race Unlock guide to accomplish this.
step
use the Zandalari Direhorn##157870
|tip It should be on the character that you unlocked the Zandalari Troll Race with.
Learn the "Zandalari Direhorn" Mount |learnmount Zandalari Direhorn##263707
step
_Congratulations!_
You Collected the "Zandalari Direhorn" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Frostshard Infernal",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={213350},
model={70126},
description="This mount is acquired from completing the No Stable Big Enough achievement.",
},[[
step
Earn the "No Stable Big Enough" Achievement |achieve 12931
|tip Refer to our Achievement Guide to accomplish this.
step
use the Biting Frostshard Core##137614
Learn the "Frostshard Infernal" Mount |learnmount Frostshard Infernal##213350
step
_Congratulations!_
You Collected the "Frostshard Infernal" Mount.
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
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Kua'fon",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={267270},
model={89375},
description="This mount is acquired from completing the No Stable Big Enough achievement.",
},[[
step
Earn the "How to Ptrain Your Pterrordax" Achievement |achieve 13030
|tip Refer to our Achievement Guide to accomplish this.
step
use Kua'fon's Harness##159146
Learn the "Kua'fon" Mount |learnmount Kua'fon##267270
step
_Congratulations!_
You Collected the "Kua'fon" Mount.
]])
ZGV.BETAEND()
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Class Mounts\\Crusader's Direhorn",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"ground, mount, battle, for, azeroth, paladin"},
mounts={290608},
description="This mount is acquired from completing the Allied Races: Zandalari Troll achievement, then creating a Zandalari Troll Paladin.",
},[[
step
Earn the "Allied Races: Zandalari Troll" Achievement |achieve 13161
|tip Refer to our Zandalari Troll Race Unlock guide to accomplish this.
step
Create a Zandalari Troll Paladin
|tip You will automatically learn this mount upon logging into the game.
Learn the "Crusader's Direhorn" Mount |learnmount Crusader's Direhorn##290608
step
_Congratulations!_
You Collected the "Crusader's Direhorn" Mount.
]])
ZGV.BETAEND()
ZGV.BETASTART()
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
startlevel=120.0,
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
Learn the Sharkbait Mount |learnmount Shark Bait##254813
step
_Congratulations!_
You Earned the "Sharkbait" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Broken Highland Mustang",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={279457},
model={87773},
description="This mount is acquired from Knight-Captain Aldrin while the Horde controls the Stromgarde War Front.",
},[[
step
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |condition not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |or
'|learnmount Broken Highland Mustang##279457 |or
step
kill Knight-Captain Aldrin##142739
|tip He only appears when the Horde controls Stromgarde.
|tip This mount has a small chance to drop.
collect Broken Highland Mustang##163578 |goto 49.27,40.05
step
use the Broken Highland Mustang##163578
Learn the "Broken Highland Mustang" Mount |learnmount Broken Highland Mustang##279457
step
_Congratulations!_
You Collected the "Broken Highland Mustang" Mount.
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
collect Goldenmane's Reins##163573 |goto Stormsong Valley/0 69.51,51.53
|tip This can drop from any mob in Stormsong Valley.
step
use the Goldenmane's Reins##163573
Learn the "Goldenmane Horse" Mount |learnmount Goldmane##260175
step
_Congratulations!_
You Collected the "Goldenmane Horse" Mount.
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
Enter the mine |goto 27.48,55.58 < 10 |walk
kill Overseer Krix##142423
|tip Inside the mine.
|tip He will appear after the Horde take control of Stromgarde.
collect Lil' Donkey##163646 |goto 27.41,57.34
step
use the Lil' Donkey##163646
Learn the "Lil' Donkey" Mount |learnmount Lil'Donkey##279608
step
_Congratulations!_
You Collected the "Lil' Donkey" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Nazjatar Blood Serpent",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={275623},
model={14345},
description="This mount is acquired by collecting Abyssal Fragments in Stormsong Valley and killing the \n"..
"Adherent of the Abyss.",
},[[
step
Kill Zeth'jir enemies around this area
collect 20 Abyssal Fragment##161344 |goto Stormsong Valley/0 31.91,41.50 |condition hasmount(275623)
|tip These have a low drop rate.
|tip You can also buy these from the auction house.
step
use the Abyssal Fragment##161344
collect Abhorrent Essence of the Abyss##161345 |condition hasmount(275623)
step
Enter the cave |goto 73.63,23.35 < 5 |walk
use the Abhorrent Essence of the Abyss##161345 |goto 74.69,21.75
|tip Use it at the Altar of the Abyss inside the cave.
Click here to continue |confirm |condition hasmount(275623)
step
Enter the mine |goto Stormsong Valley/0 46.60,36.14 < 5 |walk
Jump down here |goto Stormsong Valley/4 54.81,51.39 < 10 |walk
click Abyssal Icon
|tip This will summon the Adherent of the Abyss.
kill Adherent of the Abyss##140474
|tip You will likely need a group to kill this.
collect Nazjatar Blood Serpent##161479 |goto 59.82,54.10
step
use Nazjatar Blood Serpent##161479
Learn the "Nazjatar Blood Serpent" Mount |learnmount Nazjatar Blood Serpent##275623
step
_Congratulations!_
You Collected the "Nazjatar Blood Serpent" Mount.
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
|tip It will appear when the Horde take control of Stromgarde.
collect Skullripper##163645 |goto 38.24,90.09
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
|tip He will appear when Horde take control of Stromgarde.
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
description="This mount is acquired from the Rarespawn Shadowclaw in Darkshore.",
},[[
step
kill Shadowclaw##149663
|tip You will be flagged for PVP if your faction does not control Darkshore.
collect Kaldorei Nightsaber##166435 |n
use the Kaldorei Nightsaber##166435
Learn the "Kaldorei Nightsaber" Mount |learnmount Kaldorei Nightsaber##288505 |goto Darkshore/0 39.81,32.80
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
kill Athil Dewfire##148037
|tip He walks around this area.
|tip You will be flagged for PVP if your faction does not control Darkshore.
collect Umber Nightsaber##166803 |n
use the Umber Nightsaber##166803
Learn the "Umber Nightsaber" Mount |learnmount Umber Nightsaber##288503 |goto Darkshore/0 41.66,76.62
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
|tip The drop is completely random.
|tip It shares a drop table with 9 other mounts.
use the Surf Jelly##163585
Learn the Surf Jelly Mount |learnmount Surf Jelly##278979 |goto Dazar'alor/0 44.55,95.27
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
|tip The drop is completely random.
|tip It shares a drop table with 9 other mounts.
use Qinsho's Eternal Hound##163582
Learn the Qinsho's Eternal Hound Mount |learnmount Qinsho's Eternal Hound##279469 |goto Dazar'alor/0 44.55,95.27
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
|tip The drop is completely random.
|tip It shares a drop table with 9 other mounts.
use Squawks##163586
Learn the Squawks Mount |learnmount Squawks##254811 |goto Dazar'alor/0 44.55,95.27
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
|tip The drop is completely random.
|tip It shares a drop table with 9 other mounts.
use the Twilight Avenger##163584
Learn the Twilight Avenger Mount |learnmount Twilight Avenger##279466 |goto Dazar'alor/0 44.55,95.27
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
|tip The drop is completely random.
|tip It shares a drop table with 9 other mounts.
use the Craghorn Chasm-Leaper##163583
Learn the Craghorn Chasm-Leaper Mount |learnmount Craghorn Chasm-Leaper##279467 |goto Dazar'alor/0 44.55,95.27
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
|tip It shares a drop table with 9 other mounts.
use the Bloodgorged Hunter##166468
Learn the "Bloodgorged Hunter" Mount |learnmount Bloodgorged Hunter##288720 |goto Dazar'alor/0 44.55,95.27
step
_Congratulations!_
You Earned the "Bloodgorged Hunter" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Island Expedition Mounts\\Bloodthirsty Dreadwing",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"flying, mount, battle, of, azeroth, island, expeditions, dungeon, drop, Bloodthirsty, Dreadwing"},
mounts={288714},
model={60307},
condition_end=function() return hasmount(288714) end,
description="This mount is acquired by completing an Island Expeditions.",
},[[
step
Collect #750# Honorbound Service Medal |condition curcount(1716)>=750
|tip These come from completing World Quests on Kul Tiras, Arathi Highland when the Horde controls it, as well as Darkshore when the Horde controls it.
step
talk Provisioner Mukra##148924
buy Bloodthirsty Dreadwing##166469 |n
use the Bloodthirsty Dreadwing##166469
Learn the Bloodthirsty Dreadwing Mount |learnmount Bloodthirsty Dreadwing##288714 |goto Dazar'alor/0 51.22,95.08
step
_Congratulations!_
You Earned the "Bloodthirsty Dreadwing" Mount.
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
Learn the "Island Thunderscale" Mount |learnmount Island Thunderscale##288721 |goto Dazar'alor/0 44.55,95.27
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
Collect #1000# Seafarer's Dubloon |condition curcount(1710)>=1000 |goto Dazar'alor/0 44.55,95.27
|tip These drop upon completing Island Expeditions.
step
talk Captain Zen'taga##148923
buy Siltwing Albatross##166745 |n
use the Siltwing Albatross##166745
Learn the Siltwing Albatross Mount |learnmount Siltwing Albatross##266925 |goto 44.46,94.46
step
_Congratulations!_
You Earned the "Siltwing Albatross" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Island Expedition Mounts\\Stonehide Elderhorn",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"ground, mount, battle, of, azeroth, island, expeditions, dungeon, drop, Stonehide, Elderhorn"},
mounts={279467},
model={87776},
condition_end=function() return hasmount(279467) end,
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
Learn the Stonehide Elderhorn Mount |learnmount Stonehide Elderhorn##288712 |goto Dazar'alor/0 44.55,95.27
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
Learn the Risen Mare Mount |learnmount Risen Mare##288722 |goto Dazar'alor/0 44.55,95.27
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
Collect #500# Seafarer's Dubloon |condition curcount(1710)>=1000 |goto Dazar'alor/0 44.55,95.27
|tip These drop upon completing Island Expeditions.
step
talk Captain Zen'taga##148923
buy Saltwater Seahorse##166471 |n
use the Saltwater Seahorse##166471
Learn the Saltwater Seahorse Mount |learnmount Saltwater Seahorse##288711 |goto 44.46,94.46
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
buy 6 Potent Gastropod Gloop##156788 |condition itemcount(156725) >= 1 or hasmount(261395) |goto Abyssal Depths/0 45.47,17.47
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
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Undercity Plaguebat",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"flying, mount, battle, for, azeroth, quest, horde"},
mounts={272472},
model={85886},
condition_end=function() return hasmount(272472) end,
description="This mount is acquired by completing the \"Burning of Teldrassil\" event.",
},[[
step
accept The Warchief Awaits##50476
|tip You will automatically accept this quest.
step
Follow the path |goto Undercity/0 52.05,64.52 < 5 |walk
Continue following the path |goto 46.32,72.88 < 5 |walk
Continue following the path |goto 45.29,78.11 < 5 |walk
Continue following the path |goto 46.20,83.81 < 5 |walk
Continue following the path |goto 48.81,87.79 < 5 |walk
talk Lady Sylvanas Windrunner##134554
turnin The Warchief Awaits##50476 |goto 58.14,91.88
accept The Warchief Commands##50642 |goto 58.10,91.88
step
talk High Overlord Saurfang##134574
turnin The Warchief Commands##50642 |goto Northern Barrens/0 50.88,46.00
accept A Quick Diversion##50646 |goto 50.88,46.00
step
talk Lorash##134573
turnin A Quick Diversion##50646 |goto Ashenvale/0 38.91,55.30
accept Everybody Has a Price##50647 |goto Ashenvale/0 38.91,55.30
step
Cross the bridge |goto 37.45,53.69 |walk
|tip Dismount before crossing.
kill Astranaar Sentinel##134645+
|tip Use the "Marked!" ability on guards around this area.
Eliminate #10# Guards |q 50647/1 |goto 36.62,51.99
step
talk Lorash##134573
turnin Everybody Has a Price##50647 |goto 38.91,55.29
accept A Timely Arrival##50738 |goto 38.91,55.29
step
talk Lady Sylvanas Windrunner##135003
turnin A Timely Arrival##50738 |goto 37.83,56.30
accept Zoram'gar Outpost##50740 |goto 37.83,56.30
step
Enter the building |goto 12.86,34.12 < 3 |walk
talk Innkeeper Duras##43606
|tip Inside the building.
Tell her _"The warchief needs rations and lodging for an incoming army."_
Speak with the Innkeeper |q 50740/2 |goto 12.99,34.16
step
Leave the building |goto 12.86,34.12 < 3 |walk
Enter the building |goto 11.67,35.00 < 5 |walk
talk Dagrun Ragehammer##34303
|tip He walks around inside the building.
Tell him _"Warchief Sylvanas Windrunner requires your aid repairing her soldiers' weapons."_
Speak with the Weaponsmith |q 50740/3 |goto 11.56,35.36
step
Leave the building |goto 11.65,35.07 < 5 |walk
talk Commander Grimfang##34122
Tell him _"Commander, the warchief asks that you prepare your outpost for an incoming army."_
Speak with Commander Grimfang |q 50740/1 |goto 12.11,33.86
step
talk High Overlord Saurfang##134574
turnin Zoram'gar Outpost##50740 |goto 35.17,49.44
accept On The Prowl##50772 |goto 35.17,49.44
step
Meet Sylvanas Near the Entrance to Darkshore |q 50772/1 |goto Darkshore/0 44.07,90.46
step
talk Lady Sylvanas Windrunner##134554
turnin On The Prowl##50772 |goto 44.08,90.50
accept Into the Woods##50800 |goto 44.08,90.50
step
kill 6 Ashenvale Huntress##135350 |q 50800/1 |goto 44.11,90.49
step
talk Lady Sylvanas Windrunner##134554
turnin Into the Woods##50800 |goto 44.07,90.49
accept Ripe for the Picking##50823 |goto 44.07,90.49
step
turnin Ripe for the Picking##50823 |goto Ashenvale/0 12.13,33.75
step
talk Lady Sylvanas Windrunner##134554
accept A Quick Flyover##50837 |goto 12.02,33.77
step
talk Zarvik Blastwix##135501
Speak with Zarvik Blastwix |q 50837/1 |goto 11.82,33.26
step
talk Zarvik Blastwix##135501
Tell him _"Let's Fly."_
Board the Bombardier |invehicle |goto 11.82,33.26 |q 50837
stickystart "Destroy_30_Wisps"
step
kill Marked Tree##140924+
|tip Use the "Anti-Air Canon" ability on your action bar.
Fell #3# Marked Trees |q 50837/2 |goto Darkshore/0 40.83,90.64
step
label "Destroy_30_Wisps"
kill Wisp##141268+
|tip Use the "Anti-Air Canon" ability on your action bar.
Destroy #30# Wisps |q 50837/3 |goto 42.35,90.41
step
talk Lady Sylvanas Windrunner##134554
turnin A Quick Flyover##50837 |goto Ashenvale/0 12.02,33.78
accept An Unstoppable Force##50880 |goto 12.02,33.78
step
Meet Sylvanas at the Wall |q 50880/1 |goto Darkshore/0 44.00,90.18
step
Pass Through the Wall |q 50880/2 |goto 43.81,89.77
step
talk Lady Sylvanas Windrunner##134554
turnin An Unstoppable Force##50880 |goto 42.84,87.43
accept Clearing Them Out##53604 |goto 42.84,87.43
accept A Glaive Misunderstanding##53605 |goto 42.84,87.43
stickystart "Kill_6_Darnassian_Archers"
step
use the Everburning Torch##158937
Burn #4# Glaive Throwers |q 53605/1 |goto 40.67,83.88
step
label "Kill_6_Darnassian_Archers"
Kill enemies around this area
Defeat #7# of the Night Elf Forces |q 53604/1 |goto 40.67,83.88
step
talk Lady Sylvanas Windrunner##134554
turnin Clearing Them Out##53604 |goto 42.43,82.06
turnin A Glaive Misunderstanding##53605 |goto 42.43,82.06
accept Blurred Vision##50878 |goto 42.43,82.06
stickystart "Kill_10_Frenzied_Blackwood_Furbolg"
step
kill 8 Sentry Owl##141359 |q 50878/1 |goto 42.36,78.18
step
label "Kill_10_Frenzied_Blackwood_Furbolg"
kill 10 Frenzied Blackwood Furbolg##140686 |q 50878/2 |goto 42.36,78.18
step
talk Lady Sylvanas Windrunner##135003
turnin Blurred Vision##50878 |goto 43.30,75.67
accept The Trees Have Ears##50879 |goto 43.30,75.67
step
kill Burning Ancient##141365 |q 50879/1 |goto 44.31,75.17
step
talk Lady Sylvanas Windrunner##135003
turnin The Trees Have Ears##50879 |goto 43.30,75.67
step
talk Lady Sylvanas Windrunner##135003
accept The Blackwood Den##52436 |goto 43.30,75.67
accept Aggressive Inspiration##53606 |goto 43.30,75.67
stickystart "Slay_10_Blackwood_Furbolgs"
step
click Horde Banner##289540
Plant the Northern Banner |q 53606/1 |goto 45.10,83.68
step
click Horde Banner##289540
Plant the Center Banner |q 53606/2 |goto 44.61,85.10
step
click Horde Banner##289540
Plant the Southern Banner |q 53606/3 |goto 44.39,86.53
step
label "Slay_10_Blackwood_Furbolgs"
Kill Blackwood enemies around this area
Slay #10# Blackwood Furbolgs |q 52436/1
step
talk Lady Sylvanas Windrunner##134554
turnin The Blackwood Den##52436 |goto 43.32,84.71
turnin Aggressive Inspiration##53606 |goto 43.32,84.71
accept The Start of Something Good##52437 |goto 43.32,84.71
step
Meet Sylvanas at Nazj'vel |q 52437/1 |goto 35.81,84.77
step
talk Jux Burstkix##144346
turnin The Start of Something Good##52437 |goto 35.82,84.84
accept Fueling the Horde War Machine##53608 |goto 35.82,84.84
accept A Very Clear Message##53609 |goto 35.82,84.84
stickystart "Slay_10_Night_Elves"
step
click Azerite Deposit##297790+
|tip They look like small multicolored rocks on the ground around this area.
Collect #6# Azerite |q 53608/1 |goto 32.63,84.08
step
label "Slay_10_Night_Elves"
Kill enemies around this area
Slay #10# Night Elves |q 53609/1 |goto32.63,84.08
step
talk Jux Burstkix##144346
turnin Fueling the Horde War Machine##53608 |goto 35.82,84.84
turnin A Very Clear Message##53609 |goto 35.82,84.84
accept A Gift of Azerite##53627 |goto 35.82,84.84
step
talk Zarvik Blastwix##135501
|tip He walks around this area.
turnin A Gift of Azerite##53627 |goto 44.60,86.54
accept A Wild Ride##52438 |goto 44.60,86.54
step
clicknpc Goblin Hellion##141847
Use the Goblin Hellion |q 52438/1 |goto 44.76,83.45
step
Ride the Goblin Hellion to Wildbend River |q 52438/2 |goto 41.15,69.32
stickystart "Slay_20_Kaldorei_Forces"
step
kill Awakened Ancient##140741+
|tip Use the abilities on your action bar.
Slay #5# Awakened Ancients |q 52438/3 |goto 40.34,68.01
step
label "Slay_20_Kaldorei_Forces"
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #20# Kaldorei forces |q 52438/4 |goto 41.01,67.80
step
talk Lady Sylvanas Windrunner##134554
turnin A Wild Ride##52438 |goto 42.70,67.75
accept A Looming Threat##52806 |goto 42.70,67.75
step
talk Lady Sylvanas Windrunner##134554
Ask her _"Where do we go from here, Warchief?"_
Speak with Sylvanas at the Blackwood Den |q 52806/1 |goto 44.70,86.78
step
talk Lady Sylvanas Windrunner##134554
turnin A Looming Threat##52806 |goto 44.70,86.78
accept Saurfang Returns##52967 |goto 44.70,86.78
step
talk High Overlord Saurfang##142310
turnin Saurfang Returns##52967 |goto 52.16,22.46
accept No Small Mercy##52970 |goto 52.16,22.46
accept Driving Them Out##53610 |goto 52.16,22.46
accept Seaside Rendezvous##52971 |goto 52.16,22.46
stickystart "Secure_8_Civilians"
stickystart "Slay_15_Lor'danel_defenders"
step
kill Ariel Stagguard##144345 |q 52971/2 |goto 51.66,17.80
step
kill Caranne Briarbow##142749 |q 52971/1 |goto 46.73,18.79
step
label "Secure_8_Civilians"
clicknpc Lor'danel Citizen##142408
Tell them _"Come with us to safety. We will not harm you."_
Secure #8# Civilians |q 52970/1 |goto 50.75,20.27
step
label "Slay_15_Lor'danel_defenders"
Kill enemies around this area
Slay #15# Lor'danel Defenders |q 53610/1 |goto 50.23,18.67
step
talk High Overlord Saurfang##142310
turnin No Small Mercy##52970 |goto 52.16,22.45
turnin Driving Them Out##53610 |goto 52.16,22.45
turnin Seaside Rendezvous##52971 |goto 52.16,22.45
accept Killer Queen##52981 |goto 52.16,22.45
step
Find Saurfang in Northern Darkshore |q 52981/1 |goto 45.93,23.55
step
Watch the dialogue
Assist the Warchief |q 52981/2 |goto 46.13,24.40
step
Watch the dialogue
Follow Saurfang |q 52981/3 |goto 46.12,24.28
step
talk Lady Sylvanas Windrunner##144466
Tell her _"I am ready."_ |q 52981/4 |goto 45.52,18.25
step
talk Lady Sylvanas Windrunner##144466
turnin Killer Queen##52981 |goto 45.51,18.24
step
use the War-Torn Reins of the Undercity Plaguebat##163128
learnmount Undercity Plaguebat##272472
step
_Congratulations!_
You Collected the "Undercity Plaguebat" Mount.
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
Reach Level 150 Zandalari Engineering |skill Zandalari Engineering,150 |or
|tip Use the "Zandalari Engineering" profession guide to accomplish this.
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
You can find the Shred-Master Mk1 here [Dazar'alor/0 45.03,39.93]
step
Open Your Zandalari Engineering Crafting Panel:
_<Create a Mecha-Mogul Mk2>_
collect Mecha-Mogul Mk2##161134 |condition hasmount(274621)
step
use the Mecha-Mogul Mk2##161134
Learn the "Mecha-Mogul Mk2" Mount |learnmount Mecha-Mogul Mk2##274621
step
_Congratulations!_
You Collected the "Mecha-Mogul Mk2" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Talanji's Expedition\\Expedition Bloodswarmer",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"flying, mount, battle, for, azeroth"},
mounts={275841},
model={76708},
description="This mount is acquired by becoming Exalted with the Talanji's Expedition then buying the mount for 10,000 gold.",
},[[
step
Load the "Talanji's Expedition" Reputation Guide |confirm |next "Reputations Guides\\Battle for Azeroth\\Talanji's Expedition"
|tip Click the line above to load the guide.
Reach Exalted Reputation with the Talanji's Expedition |condition rep('Talanji\'s Expedition')==Exalted
step
talk Provisioner Lija##135459
buy Reins of the Expedition Bloodswarmer##161774 |n
use the Reins of the Expedition Bloodswarmer##161774
Learn the "Expedition Bloodswarmer" Mount |learnmount Expedition Bloodswarmer##275841 |goto Nazmir/0 39.07,79.51
step
_Congratulations!_
You Collected the "Expedition Bloodswarmer" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Zandalari Empire\\Cobalt Pterrordax",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"flying, mount, battle, for, azeroth"},
mounts={275837},
model={87045},
description="This mount is acquired by becoming Exalted with the Zandalari Empire and purchasing it from Natal'hakata \n"..
"in Dazar'alor for 10,000 gold.",
},[[
step
Reach Exalted Reputation with the Zandalari Empire |condition rep('Zandalari Empire') == Exalted
|tip Use the "Zandalari Empire" reputation guide to accomplish this.
step
Enter the building |goto Dazar'alor/0 49.93,42.16 < 10 |only if walking
Run up the stairs |goto Dazar'alor/1 55.16,45.93 < 10 |only if walking
talk Natal'hakata##131287
|tip Inside the building.
buy 1 Reins of the Cobalt Pterrordax##161665 |goto Dazar'alor/2 67.22,71.68
|tip This costs 10,000 gold.
step
use the Reins of the Cobalt Pterrordax##161665
Learn the "Cobalt Pterrordax" Mount |learnmount Cobalt Pterrordax##275837
step
_Congratulations!_
You Collected the "Cobalt Pterrordax" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Voldunai\\Alabaster Hyena",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={237287},
model={75323},
description="This mount is acquired by becoming Exalted with the Voldunai then buying the mount for 10,000 gold.",
},[[
step
Load the "Voldunai" Reputation Guide |confirm |next "Reputations Guides\\Battle for Azeroth\\Voldunai"
|tip Click the line above to load the guide.
Reach Exalted Reputation with the Voldunai |condition rep('Voldunai')==Exalted
step
talk Hoarder Jena##135804
buy Reins of the Alabaster Hyena##161773 |n
use the Reins of the Alabaster Hyena##161773
Learn the "Alabaster Hyena" Mount |learnmount Alabaster Hyena##237287 |goto Vol'dun/0 56.69,49.74
step
_Congratulations!_
You Collected the "Alabaster Hyena" Mount.
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
talk Talutu##125879
buy Reins of the Mighty Caravan Brutosaur##163042 |n
|tip You will need 5,000,000 gold.
use the Reins of the Mighty Caravan Brutosaur##163042
Learn the "Mighty Caravan Brutosaur" Mount |learnmount Mighty Caravan Brutosaur##264058 |goto Dazar'alor/0 48.58,87.09
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
talk Talutu##125879
buy Reins of the Palehide Direhorn##163589 |n
|tip You will need 500,000 gold.
use the Reins of the Palehide Direhorn##163589
Learn the "Palehide Direhorn" Mount |learnmount Palehide Direhorn##279474 |goto Dazar'alor/0 48.58,87.09
step
_Congratulations!_
You Collected the "Palehide Direhorn" Mount.
]])
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Vendor Mounts\\Rubyshell Krolusk",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"Ground, Mount, Battle, For, Azeroth, Rubyshell, Krolusk"},
mounts={288735},
model={90394},
description="This mount is acquired by purchasing the mount for 200 Honorbound Service Medals.",
},[[
step
Collect 200 Honorbound Service Medals |condition curcount(1716)>=200
|tip These come from completing world quests in Zandalar.
|tip You can also get them from completing world quests in Warfronts when your faction controls them.
step
talk Provisioner Mukra##148924
buy Rubyshell Krolusk##166464 |n
use the Rubyshell Krolusk##166464
Learn the "Rubyshell Krolusk" Mount |learnmount Rubyshell Krolusk##288735 |goto Dazar'alor/0 51.21,95.09
step
_Congratulations!_
You Collected the "Rubyshell Krolusk" Mount.
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
