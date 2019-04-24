local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("EventsA") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZGV.BETASTART()
ZGV.BETAEND()
ZygorGuidesViewer:RegisterGuide("Events Guides\\Battle for Azeroth\\The Burning of Teldrassil",{
author="support@zygorguides.com",
description="This guide will help to defend Teldrassil against the incoming Horde attack..",
condition_suggested=function() return level == 110 and not completedq(53310) end,
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
Watch the dialogue
talk Master Mathias Shaw##139798
|tip Inside the building.
turnin The Horde Uprising##52060 |goto 85.15,32.35
accept A Disturbance in Ashenvale##52062 |goto 85.15,32.35
step
Follow the path |goto 83.88,30.57 < 5 |walk
Run up the stairs |goto 83.48,29.81 < 5 |only if walking
Follow the path |goto 83.34,29.54 < 5 |only if walking
click Portal to Astranaar##297575
Take the Portal to Astranaar |q 52062/1 |goto 82.68,26.84
step
Find Delaryn Summermoon |q 52062/2 |goto Ashenvale/0 35.86,50.43
step
talk Captain Delaryn Summermoon##134578
turnin A Disturbance in Ashenvale##52062 |goto 35.86,50.43
accept The Light of Elune##52072 |goto 35.86,50.43
accept Knives of the Forsaken##53616 |goto 35.86,50.43
stickystart "Kill_Forsaken_Assassins"
step
clicknpc Astranaar Sentinel##144282+
|tip They look like Night Elf corpses on the ground around this area.
Honor #6# Fallen Soldiers |q 52072/1 |goto 35.88,50.20
step
label "Kill_Forsaken_Assassins"
kill 8 Forsaken Assassin##140801 |q 53616/1 |goto 36.06,50.26
|tip They are stealthed around this area.
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
stickystart "Kill_Frenzied_Blackwood_Furbolgs"
step
talk Druid of the Claw##140633+
|tip They look like friendly NPC's on the ground around this area.
|tip Some are shapeshifted in animal form and some look like night elves.
Tell them _"You must defend the Grove of the Ancients!"_
Dispatch #8# Druids |q 52234/1 |goto 42.07,77.29
step
label "Kill_Frenzied_Blackwood_Furbolgs"
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
Enter the cave |goto 46.27,83.60 < 5 |walk
talk Gren Tornfur##140720
|tip Inside the cave.
Tell him _"Come with us to safety. We will not harm you."_
Rescue Gren Tornfur |q 52245/2 |goto 46.63,83.90
step
Leave the cave |goto 46.27,83.60 < 5 |walk
talk Elder Brownpaw##140721
Tell him _"Come with us to safety. We will not harm you."_
Rescue Elder Brownpaw |q 52245/3 |goto 46.47,85.73
step
label "Sabotage_Horde_Demolishers"
clicknpc Horde Demolisher##144103+
|tip They look like large siege vehicles on the ground around this area.
|tip Run away from them after you click them.
|tip Use the "Sleeping Powder" ability to put enemies to sleep.
|tip It appears as a button on the screen.
Sabotage #5# Horde Demolishers |q 53551/1 |goto 45.02,84.22
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
stickystart "Slay_Horde_Combatants"
step
click Azerite Deposit##292886+
|tip They look like black and silver rock clusters on the ground around this area.
Collect #6# Azerite |q 53619/1 |goto 32.63,84.08
step
label "Slay_Horde_Combatants"
Kill enemies around this area
Slay #10# Horde Combatants |q 53621/1 |goto 32.63,84.08
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
Speak with Tree of Life |q 52257/1 |goto 42.09,66.86
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #50# Horde Enemies |q 52257/2 |goto 42.17,69.08
step
Return to Malfurion Stormrage |goto 42.07,66.87 < 7 |noway |c |q 52257
step
talk Malfurion Stormrage##133693
turnin "Rock" The World##52257 |goto 42.30,66.80
accept Long Away##52197 |goto 42.30,66.80
step
talk Captain Delaryn Summermoon##134578
turnin Long Away##52197 |goto Darnassus/0 40.00,50.42
accept A Looming Threat##52279 |goto Darnassus/0 40.00,50.42
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
step
talk Malfurion Stormrage##140877
turnin A Threat from the North##52973 |goto Darkshore/0 50.42,20.01
accept Rescue Effort##52974 |goto 50.42,20.01
accept Defending Lor'danel##53622 |goto 50.42,20.01
step
talk Captain Delaryn Summermoon##134578
|tip She sometimes runs around this area fighting.
|tip You may have to search for her.
accept Action This Day##52975 |goto 50.43,19.68
stickystart "Slay_Horde_Attackers"
step
talk Lor'danel Citizen##142408+
|tip They look like friendly NPCs cowering in fear on the ground around this area.
Tell them _"I have cleared a path - - you must escape now!"_
Rescue #8# Lor'danel Citizens |q 52974/1 |goto 50.80,19.30
step
kill Gormok Axefall##144364 |q 52975/1 |goto 47.67,20.42
step
kill Ragash Bloodwish##144365 |q 52975/2 |goto 46.82,18.82
step
label "Slay_Horde_Attackers"
Kill enemies around this area
Slay #15# Horde Attackers |q 53622/1 |goto 49.00,19.56
step
talk Captain Delaryn Summermoon##134578
|tip She sometimes runs around this area fighting.
|tip You may have to search for her.
turnin Rescue Effort##52974 |goto 50.43,19.68
turnin Defending Lor'danel##53622 |goto 50.43,19.68
turnin Action This Day##52975 |goto 50.43,19.68
accept The Guidance of Our Shan'do##52977 |goto 50.43,19.68
step
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Travel to the Present |condition not ZGV.InPhase('Old Darnassus') |goto 48.86,24.46 |q 52977
step
Find Malfurion in Darkshore |q 52977/1 |goto 46.17,24.42
step
Watch the dialogue
Assist Malfurion |q 52977/2 |goto 45.94,24.47
step
clicknpc Tamed Hippogryph##142110
Use Tyrande's Mount |q 52977/3 |goto 45.96,24.96
step
Return to Darnassus |goto Darnassus/0 43.01,73.09 < 7 |c |q 52977 |notravel
step
Enter the building |goto 43.01,74.83 < 5 |walk
talk Mia Greymane##142978
|tip Inside the building.
turnin The Guidance of Our Shan'do##52977 |goto 43.09,78.62
accept A Flicker of Hope##53095 |goto 43.09,78.62 |only if not completedq(53310)
step
Leave the building |goto 43.01,74.80 < 3 |walk
talk Darnassian Citizen##143409+
Tell them _"The flames are clear! Get to the Temple of the Moon!"_
Evacuate #982# Darnassian Citizens |q 53095/1 |goto 58.76,68.28 |only if not completedq(53310)
|tip Use the "Douse" ability on on fires around this area.
|tip It appears as a button on the screen.
|tip It is impossible to complete this objective, you will fail.
step
Return to the Temple of the Moon |goto 43.37,78.31 < 7 |c |q 53095 |notravel
step
Watch the dialogue
turnin A Flicker of Hope##53095 |goto 43.37,78.31
|tip You will turn in this quest automatically.
accept From the Ashes...##53310 |goto 43.37,78.31
|tip You will accept this quest automatically.
step
click Portal to Stormwind##303144 |goto 43.91,78.68
Teleport to Stormwind City |goto Stormwind City/0 49.59,86.53 < 7 |noway |c |q 53310
step
Enter the building |goto 80.69,37.80 < 5 |walk
talk Anduin Wrynn##107574
|tip Inside the building.
turnin From the Ashes...##53310 |goto 85.90,31.57
]])
ZygorGuidesViewer:RegisterGuide("Events\\Warlords of Draenor\\The Iron Horde Invasion",{
description="Take part in the opening event of the Warlords of Draenor!",
},[[
step
accept Iron Horde Invasion##36498 |goto Stormwind City 49.0,87.3
step
talk Vindicator Maraad##82270
turnin Iron Horde Invasion##36498 |goto Blasted Lands 66.6,28.2
accept Attack of the Iron Horde##35460 |goto Blasted Lands 66.6,28.2
accept Under Siege##35462 |goto Blasted Lands 66.6,28.2
step
accept Peeking into the Portal##36379 |goto 66.9,27.9
step
talk Araazi##85731
fpath Shattershore |goto Blasted Lands 67.7,28.0
stickystart "1"
step
click Telescope##237144
Use the telescope |q Peeking into the Portal##36379/1 |goto Blasted Lands 61.7,36.7
step
label "1"
clicknpc Iron Demolisher##82273
Destroy 3 Iron Demolishers |q Under Siege##35462/1
kill Ironmarch Grunt##76556+
Kill 8 Ironmarch Grunts |q Attack of the Iron Horde##35460/1 |goto Blasted Lands 64.7,35.2
step
talk Vindicator Maraad##82270
turnin Attack of the Iron Horde##35460 |goto Blasted Lands 66.6,28.2
turnin Under Siege##35462 |goto Blasted Lands 66.6,28.2
accept Subversive Scouts##35463 |goto Blasted Lands 66.6,28.2
step
talk Bodrick Grey##85213
turnin Peeking into the Portal##36379 |goto 66.9,27.9
accept Ending Execution##35464 |goto 66.9,27.9
stickystart "2"
step
kill Ironmarch Executioner##82774+
Stop 3 Executions |q Ending Execution##35464/1 |goto 59,29
step
label "2"
kill 5 Ironmarch Scout##76886 |q Stop the Executions##35463/1 |goto 68,30
|tip They are surrounding the entire encampment
step
talk Bodrick Grey##85213
turnin Ending Execution##35464 |goto Blasted Lands 66.9,27.9
step
talk Vindicator Maraad##82270
turnin Subversive Scouts##35463 |goto Blasted Lands 66.6,28.3
accept Investigating the Invasion##36307 |goto Blasted Lands 66.6,28
step
talk Vindicator Maraad##84929
turnin Investigating the Invasion##36307 |goto Blasted Lands 51.9,28.6
accept Lunatic Lieutenants##35486 |goto Blasted Lands 51.9,28.6
accept For Nethergarde!##35492 |goto Blasted Lands 51.9,28.6
step
talk Commander Vines##82447
accept Mementos of the Fallen##35494 |goto Blasted Lands 52.0,28.5
step
kill Rukah the Machinist##73458 |tip She walks around the front of Nethergarde Keep
collect Rukah's Battleplan##113400
Get Rukah's Battleplan |q Lunatic Lieutenants##35486/2 |goto Blasted Lands 57.4,16.8
step
click Keri's Mug##232576
collect Keri's Mug##113397 |q Mementos of the Fallen##35494/3 |goto Blasted Lands 59.4,17.9
step
click Krolan's Shield##232575
collect Krolan's Shield##113396 |q Mementos of the Fallen##35494/2 |goto Blasted Lands 60.6,20.0
step
click Strumner's Sword##232573
collect Strumner's Sword##113395 |q Mementos of the Fallen##35494/1 |goto Blasted Lands 61.8,14.9
step
kill Mokrik Blackfingers##73459
Get Mokrik's Battleplan |q Lunatic Lieutenants##35486/1 |goto Blasted Lands 62.9,13.1
step
click Alliance Flag##232532
Plant the Alliance Flag outside of the Main Keep |q For Nethergarde!##35492/3 |goto Blasted Lands 59.9,15.8
step
kill Gar Steelcrush##73446 |tip He's at the upstairs inside this Keep.
Gar's Battleplan  |q Lunatic Lieutenants##35486/3 |goto Blasted Lands 60.2,13.8
step
click Alliance Flag##232532
Plant the Alliance Flag at the Center of Nethergarde |q For Nethergarde!##35492/2 |goto Blasted Lands 61.6,18.5
step
click Alliance Flag##232532
Plant the Alliance Flag at the entrance to Nethergarde |q For Nethergarde!##35492/1 |goto Blasted Lands 63.0,22.5
step
talk Commander Vines##82447
turnin Mementos of the Fallen##35494 |goto Blasted Lands 52.0,28.5
step
talk Vindicator Maraad##82270
turnin Lunatic Lieutenants##35486 |goto Blasted Lands 51.9,28.6
turnin For Nethergarde!##35492 |goto Blasted Lands 51.9,28.6
accept Toothsmash the Annihilator##35495 |goto Blasted Lands 51.9,28.6
accept Death to the Dreadmaul##35488 |goto Blasted Lands 51.9,28.6
step
talk Enohar Thunderbrew##76111
accept Enohar's Revenge##35496 |goto Blasted Lands 51.8,28.7
step
kill Toothsmash the Annihilator##82451 |q Toothsmash the Annihilator##35495/1 |goto Blasted Lands 44.2,35.9
step
click Cooking Pot##232625
Poison the Cooking Pots |q Enohar's Revenge##35496/1 |goto Blasted Lands 44.3,35.6
You can find the _2nd Cooking Pot_ here: |goto Blasted Lands 43.5,37.0
You can find the _3rd Cooking Pot_ here: |goto Blasted Lands 43.9,31.0
step
kill 8 Dreadmaul Crusher##78345+ |q Death to the Dreadmaul##35488/1 |goto Blasted Lands 44.4,32.9
step
talk Enohar Thunderbrew##76111
turnin Enohar's Revenge##35496 |goto Blasted Lands 51.8,28.7
step
talk Vindicator Maraad##82270
turnin Toothsmash the Annihilator##35495 |goto Blasted Lands 51.9,28.6
turnin Death to the Dreadmaul##35488 |goto Blasted Lands 51.9,28.6
accept Gar'mak Bladetwist##35500 |goto Blasted Lands 51.9,28.6
step
kill Gar'mak Bladetwist##82918 |q Gar'mak Bladetwist##35500/1 |goto 40.1,11.3
|tip He's upstairs at the top of the Keep.
step
talk Vindicator Maraad##82270
turnin Gar'mak Bladetwist##35500 |goto Blasted Lands 51.9,28.6
accept Report to the King##36941 |goto Blasted Lands 51.9,28.6
step
talk King Varian Wrynn##29611
turnin Report to the King##36941 |goto Stormwind City 85.8,31.7
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Quests\\Pilgrim's Bounty Quests",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
description="This guide section will walk you through completing the quests for the Pilgrim's Bounty event.",
},[[
step
talk Human Commoner##18927
accept Pilgrim's Bounty##14022 |goto Stormwind City/0 61.68,74.18
step
talk Gregory Tabor##34675
turnin Pilgrim's Bounty##14022 |goto Elwynn Forest/0 34.10,51.45
step
talk Bountiful Table Hostess##34653
accept Sharing a Bountiful Feast##14064 |goto 34.18,51.07
step
clicknpc The Pie Chair##34822
|tip Use the "Feast On Pie" ability on your action bar five times.
Eat Five Pie Helpings |condition hasbuff(250623,5) |goto 34.24,51.23 |or |q 14064
'|q 14064/1 |next "Leave_The_Table" |or
step
Leave the Table |outvehicle |or |q 14064
|tip Click the "Exit" button on your action bar.
'|q 14064/1 |next "Leave_The_Table" |or
step
clicknpc The Turkey Chair##34812
|tip Use the "Feast On Turky" ability on your action bar five times.
Eat Five Turkey Helpings |condition hasbuff(250626,5) |goto 34.29,51.07 |or |q 14064
'|q 14064/1 |next "Leave_The_Table" |or
step
Leave the Table |outvehicle |or |q 14064
|tip Click the "Exit" button on your action bar.
'|q 14064/1 |next "Leave_The_Table" |or
step
clicknpc The Cranberry Chair##34823
|tip Use the "Feast On Cranberries" ability on your action bar five times.
Eat Five Cranberry Helpings |condition hasbuff(250622,5) |goto 34.40,51.06 |or |q 14064
'|q 14064/1 |next "Leave_The_Table" |or
step
Leave the Table |outvehicle |or |q 14064
|tip Click the "Exit" button on your action bar.
'|q 14064/1 |next "Leave_The_Table" |or
step
clicknpc The Sweet Potato Chair##34824
|tip Use the "Feast On Sweet Potatoes" ability on your action bar five times.
Eat Five Sweet Potato Helpings |condition hasbuff(250625,5) |goto 34.43,51.23 |or |q 14064
'|q 14064/1 |next "Leave_The_Table" |or
step
Leave the Table |outvehicle |or |q 14064
|tip Click the "Exit" button on your action bar.
'|q 14064/1 |next "Leave_The_Table" |or
step
clicknpc The Stuffing Chair##34819
|tip Use the "Feast On Stuffing" ability on your action bar five times.
Eat Five Stuffing Helpings |condition hasbuff(250624,5) |goto 34.33,51.33 |or |q 14064
'|q 14064/1 |next "Leave_The_Table" |or
step
Gain the Spirit of Sharing |q 14064/1 |goto 34.29,51.07
step
label "Leave_The_Table"
Leave the Table |outvehicle |q 14064
|tip Click the "Exit" button on your action bar.
step
talk Bountiful Table Hostess##34653
turnin Sharing a Bountiful Feast##14064 |goto 34.18,51.07
step
talk Ellen Moore##34710
Train Cooking |skillmax Cooking,300 |goto 33.71,50.63
step
talk Ellen Moore##34710
learn Spice Bread##37836 |goto 33.71,50.63
step
talk Wilmina Holbeck##34682
buy 1 Bountiful Cookbook##46809 |goto 34.14,51.53 |q 14023 |future
step
use the Bountiful Cookbook##46809
collect Recipe: Spice Bread Stuffing##44860 |q 14023 |future
step
use the Bountiful Cookbook##46809
collect Recipe: Pumpkin Pie##44862 |q 14024 |future
step
use the Bountiful Cookbook##46809
collect Recipe: Cranberry Chutney##44858 |q 14028 |future
step
use the Bountiful Cookbook##46809
collect Recipe: Candied Sweet Potato##44859 |q 14030 |future
step
use the Bountiful Cookbook##46809
collect Recipe: Slow-Roasted Turkey##44861 |q 14035 |future
step
use the Recipe: Spice Bread Stuffing##44860
learn Spice Bread Stuffing##62050
step
talk Gregory Tabor##34675
accept Spice Bread Stuffing##14023 |goto 34.10,51.45
step
talk Wilmina Holbeck##34682
buy 5 Simple Flour##30817 |goto 34.14,51.53 |q 14023
buy 5 Mild Spices##2678 |goto 34.14,51.53 |q 14023
buy 5 Autumnal Herbs##44835 |goto 34.14,51.53 |q 14023
step
Open Your Cooking Crafting Panel:
_<Create 5 Spice Bread>_
collect 5 Spice Bread##30816 |goto 33.82,50.84 |q 14023
step
Open Your Cooking Crafting Panel:
_<Create 5 Spice Bread Stuffing>_
Prepare #5# Spice Bread Stuffing |q 14023/1 |goto 33.82,50.84
|tip Save these for later.
step
collect 5 Spice Bread Stuffing##44837 |q 14023/2
step
Reach Cooking Level 100 |skill Cooking,100 |goto 33.82,50.84
|tip Continue making Spice Bread Stuffing to reach 100 Cooking.
|tip Each one requires 1 Spice Bread and 1 Autumnal Herbs.
|tip Each Spice Bread requires 1 Simple Flour and 1 Mild Spices.
step
talk Jasper Moore##34744
turnin Spice Bread Stuffing##14023 |goto 33.89,50.81
accept Pumpkin Pie##14024 |goto 33.89,50.81
step
use the Recipe: Pumpkin Pie##44862
learn Pumpkin Pie##62044
step
talk Wilmina Holbeck##34682
buy 5 Ripe Elwynn Pumpkin##46784 |goto 34.14,51.53 |q 14024
buy 5 Honey##44853 |goto 34.14,51.53 |q 14024
step
Open Your Cooking Crafting Panel:
_<Create 5 Pumpkin Pie>_
Prepare #5# Pumpkin Pie |q 14024/1 |goto 33.83,50.73
|tip Save these for later.
step
collect 5 Pumpkin Pie##44836 |q 14024/2 |goto 33.83,50.73
step
Reach Cooking Level 160 |skill Cooking,160
|tip Continue making Pumpkin Pie to reach 160 Cooking.
|tip Each one requires 1 Ripe Elwynn Pumpkin and 1 Honey.
step
talk Edward Winslow##34644
turnin Pumpkin Pie##14024 |goto Dun Morogh/0 59.81,34.34
accept Cranberry Chutney##14028 |goto 59.81,34.34
step
use the Recipe: Cranberry Chutney##44858
learn Cranberry Chutney##62049
step
talk Elizabeth Barker Winslow##34645
buy 5 Tangy Southfury Cranberries##44854 |goto 59.77,34.34 |q 14028
buy 5 Honey##44853 |goto 59.77,34.34 |q 14028
step
Open Your Cooking Crafting Panel:
_<Create 5 Cranberry Chutney>_
Prepare #5# Cranberry Chutney |q 14028/1 |goto 60.01,34.39
step
collect 5 Cranberry Chutney##44840 |q 14028/2
step
Reach Cooking Level 220 |skill Cooking,220 |goto 60.01,34.39
|tip Continue making Cranberry Chutneys to reach 220 Cooking.
|tip Each one requires 1 Tangy Southfury Cranberries and 1 Honey.
step
talk Jasper Moore##34744
turnin Cranberry Chutney##14028 |goto Elwynn Forest/0 33.89,50.81
accept They're Ravenous In Darnassus##14030 |goto Elwynn Forest/0 33.89,50.81
step
collect 5 Spice Bread Stuffing##44837 |q 14030/1
|tip You should have these from a previous step.
step
collect 5 Pumpkin Pie##44836 |q 14030/2
|tip You should have these from a previous step.
step
Travel to Darnassus |goto Teldrassil/0 52.38,89.47 < 10000 |c |next "Turnin_They're_Ravenous_In_Darnassus" |or |q 14030
'|goto Darkshore/0 47.43,18.01 < 10000 |c |noway |next "Travel_To_The_Past" |or |q 14030
step
label "Travel_To_The_Past"
talk Zidormi##141489
Ask her _"Can you show me what Darkshore was like before the battle?"_
Travel to the Past |condition ZGV.InPhase('Old Darnassus') |goto Darkshore/0 48.86,24.46 |q 14030
step
label "Turnin_They're_Ravenous_In_Darnassus"
talk Isaac Allerton##34676
turnin They're Ravenous In Darnassus##14030 |goto Darnassus/0 61.47,49.10
accept Candied Sweet Potatoes##14033 |goto 61.47,49.10
step
use the Recipe: Candied Sweet Potato##44859
learn Candied Sweet Potato##62051
step
talk Ikaneba Summerset##34681
buy 5 Teldrassil Sweet Potato##44855 |goto 61.64,49.12 |q 14033
buy 5 Honey##44853 |goto 61.64,49.12 |q 14033
buy 5 Autumnal Herbs##44835 |goto 61.64,49.12 |q 14033
step
Open Your Cooking Crafting Panel:
_<Create 5 Candied Sweet Potato>_
Prepare #5# Candied Sweet Potatoes |q 14033/1 |goto 62.15,46.20
step
collect 5 Candied Sweet Potatoes##44839 |q 14033/2 |goto 62.02,49.16
step
Reach Cooking Level 280 |skill Cooking,280
|tip Continue making Candied Sweet Potatoes to reach 280 Cooking.
|tip Each one requires 1 Teldrassil Sweet Potato, 1 Autumnal Herbs, and 1 Honey.
step
talk Gregory Tabor##34675
turnin Candied Sweet Potatoes##14033 |goto Elwynn Forest/0 34.10,51.45
accept Slow-roasted Turkey##14035 |goto Elwynn Forest/0 34.10,51.45
step
use the Recipe: Slow-Roasted Turkey##44861
learn Slow-Roasted Turkey##62045
step
kill Wild Turkey##32820+
|tip You can find these all over Elwynn Forest.
collect 5 Wild Turkey##44834 |q 14035 |goto 42.32,62.16
step
talk Wilmina Holbeck##34682
buy 10 Honey##44853 |goto 34.15,51.52 |q 14035
buy 5 Autumnal Herbs##44835 |goto 34.15,51.52 |q 14035
step
Open Your Cooking Crafting Panel:
_<Create 5 Slow-Roasted Turkey>_
Prepare #5# Slow-Roasted Turkeys |q 14035/1 |goto 33.83,50.73
step
collect 5 Slow-Roasted Turkey##44838 |q 14035/2 |goto 33.83,50.73
step
talk Isaac Allerton##34676
turnin Slow-roasted Turkey##14035 |goto Darnassus/0 61.47,49.10
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Quests\\Pilgrim's Bounty Daily Quests",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
description="This quide will help run through the Pilgrims Bounty Dailies and Achievements to earn the Title Pilgrim.",
},[[
step
label "Guide_Start"
Complete the "Pilgrim's Bounty Quests" Event Guide |condition completedq(14035)
step
talk Jasper Moore##34744
accept She Says Potato##14055 |goto Elwynn Forest/0 33.88,50.80
step
talk Ellen Moore##34710
accept We're Out of Cranberry Chutney Again?##14053 |goto 33.71,50.63
step
talk Wilmina Holbeck##34682
buy 20 Ripe Elwynn Pumpkin##46784 |goto 34.15,51.52 |q 14054 |future
buy 20 Simple Flour##30817 |goto 34.15,51.52 |q 14051 |future
buy 20 Mild Spices##2678 |goto 34.15,51.52 |q 14051 |future
buy 60 Autumnal Herbs##44835 |goto 34.15,51.52 |q 14055
buy 100 Honey##44853 |goto 34.15,51.52 |q 14054 |future
step
kill Wild Turkey##32820+
|tip You can find these all over Elwynn Forest.
collect 20 Wild Turkey##44834 |goto 42.32,62.16 |q 14048 |future
step
talk Caitrin Ironkettle##34708
accept Don't Forget The Stuffing!##14051 |goto Dun Morogh/0 60.04,34.31
accept Can't Get Enough Turkey##14048 |goto 60.04,34.31
step
talk Elizabeth Barker Winslow##34645
buy 20 Tangy Wetland Cranberries##44854 |goto 59.77,34.34 |q 14051
step
talk Zidormi##141489
Ask her _"Can you show me what Darkshore was like before the battle?"_
Travel to the Past |condition ZGV.InPhase('Old Darnassus') |goto Darkshore/0 48.86,24.46 |q 14055
step
talk Ikaneba Summerset##34681
buy 20 Teldrassil Sweet Potato##44855 |goto Darnassus/0 61.64,49.13 |q 14055
step
talk Mary Allerton##34711
accept Easy As Pie##14054 |goto 61.90,46.17
step
Open Your Cooking Crafting Panel:
_<Create 20 Pumpkin Pie>_
collect 20 Pumpkin Pie##44836 |q 14054/1 |goto 62.19,46.22
step
Open Your Cooking Crafting Panel:
_<Create 20 Spice Bread>_
collect 20 Spice Bread##30816 |goto 62.19,46.22 |q 14051
step
Open Your Cooking Crafting Panel:
_<Create 20 Spice Bread Stuffing>_
collect 20 Spice Bread Stuffing##44837 |q 14051/1 |goto 62.19,46.22
step
Open Your Cooking Crafting Panel:
_<Create 20 Slow-Roasted Turkey>_
collect 20 Slow-Roasted Turkey##44838 |q 14048/1 |goto 62.19,46.22
step
Open Your Cooking Crafting Panel:
_<Create 20 Candied Sweet Potato>_
collect 20 Candied Sweet Potato##44839 |q 14055/1 |goto 62.19,46.22
step
Open Your Cooking Crafting Panel:
_<Create 20 Cranberry Chutney>_
collect 20 Cranberry Chutney##44840 |q 14053/1 |goto 62.19,46.22
step
talk Mary Allerton##34711
turnin Easy As Pie##14054 |goto 61.90,46.17
step
talk Caitrin Ironkettle##34708
turnin Can't Get Enough Turkey##14048 |goto Dun Morogh/0 60.04,34.31
turnin Don't Forget The Stuffing!##14051 |goto 60.04,34.31
step
talk Ellen Moore##34710
turnin We're Out of Cranberry Chutney Again?##14053 |goto Elwynn Forest/0 33.71,50.63
step
talk Jasper Moore##34744
turnin She Says Potato##14055 |goto 33.89,50.81
step
Click Here to Repeat the Daily Quests |confirm |next "Guide_Start"
]])
