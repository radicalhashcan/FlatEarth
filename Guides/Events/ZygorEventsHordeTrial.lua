local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("EventsH") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZGV.BETASTART()
ZGV.BETAEND()
ZygorGuidesViewer:RegisterGuide("Events Guides\\Battle for Azeroth\\The Burning of Teldrassil",{
author="support@zygorguides.com",
description="This guide will help you assault Teldrassil on behalf of the Horde.",
condition_suggested=function() return level == 110 and not completedq(52981) end,
},[[
step
accept The Warchief Awaits##50476
|tip You will automatically accept this quest.
step
Follow the path |goto Undercity/0 52.05,64.52 < 5 |walk
Continue following the path |goto Undercity/0 46.32,72.88 < 5 |walk
Continue following the path |goto Undercity/0 45.29,78.11 < 5 |walk
Continue following the path |goto Undercity/0 46.20,83.81 < 5 |walk
Continue following the path |goto Undercity/0 48.81,87.79 < 5 |walk
Continue following the path |goto Undercity/0 52.44,89.43 < 5 |walk
Run up the stairs |goto 53.97,90.40 |goto Undercity/0 53.97,90.40 |only if walking
Follow the path |goto Undercity/0 54.76,94.39 < 5 |only if walking
Run up the stairs |goto Undercity/0 56.19,95.51 < 5 |only if walking
Run up the stairs |goto Undercity/0 57.19,93.29 < 5 |only if walking
talk Lady Sylvanas Windrunner##134554
turnin The Warchief Awaits##50476 |goto Undercity/0 58.14,91.88
accept The Warchief Commands##50642 |goto Undercity/0 58.10,91.88
step
talk High Overlord Saurfang##134574
turnin The Warchief Commands##50642 |goto Northern Barrens/0 50.88,46.00
accept A Quick Diversion##50646 |goto Northern Barrens/0 50.88,46.00
step
talk Lorash##134573
turnin A Quick Diversion##50646 |goto Ashenvale/0 38.91,55.30
accept Everybody Has a Price##50647 |goto Ashenvale/0 38.91,55.30
step
Eliminate #10# Guards |q 50647/1 |goto 36.15,50.64
|tip Use the "Marked!" ability on guards around this area.
|tip It appears as a button on the screen.
|tip You will be stealthed, so enemies won't attack you.
|tip You must not be mounted to do this.
step
Watch the dialogue
Return to the Outskirts of Astranaar |goto 38.92,55.35 < 7 |noway |c |q 50647
step
talk Lorash##134573
turnin Everybody Has a Price##50647 |goto 38.91,55.29
accept A Timely Arrival##50738 |goto 38.91,55.29
step
talk Lady Sylvanas Windrunner##135003
|tip She walks to this location.
turnin A Timely Arrival##50738 |goto 37.83,56.30
accept Zoram'gar Outpost##50740 |goto 37.83,56.30
step
Enter the building |goto 11.67,35.00 < 5 |walk
talk Dagrun Ragehammer##34303
|tip He walks around this area inside the building.
Tell him _"Warchief Sylvanas Windrunner requires your aid repairing her soldiers' weapons."_
Speak with the Weaponsmith |q 50740/3 |goto 11.56,35.36
step
Leave the building |goto 11.67,35.00 < 5 |walk
talk Commander Grimfang##34122
Tell him _"Commander, the warchief asks that you prepare your outpost for an incoming army."_
Speak with Commander Grimfang |q 50740/1 |goto 12.11,33.86
step
Enter the building |goto 12.86,34.12 < 3 |walk
talk Innkeeper Duras##43606
|tip Inside the building.
Tell her _"The warchief needs rations and lodging for an incoming army."_
Speak with the Innkeeper |q 50740/2 |goto 12.99,34.16
step
talk High Overlord Saurfang##134574
turnin Zoram'gar Outpost##50740 |goto 35.17,49.44
accept On The Prowl##50772 |goto 35.17,49.44
step
Meet Sylvanas Near the Entrance to Darkshore |q 50772/1 |goto Darkshore/0 44.07,90.46
step
Watch the dialogue
talk Lady Sylvanas Windrunner##134554
turnin On The Prowl##50772 |goto 44.08,90.50
accept Into the Woods##50800 |goto 44.08,90.50
step
Kill the enemies that attack in waves
Defeat #6# Ashenvale Huntresses |q 50800/1 |goto 44.08,90.50
step
talk Lady Sylvanas Windrunner##134554
turnin Into the Woods##50800 |goto 44.07,90.49
accept Ripe for the Picking##50823 |goto 44.07,90.49
step
talk High Overlord Saurfang##135443
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
stickystart "Destroy_Wisps"
step
kill Marked Tree##140924+
|tip Use the ability on your action bar.
|tip Aim near the bottom of them.
Fell #3# Marked Trees |q 50837/2 |goto Darkshore/0 41.60,90.63
step
label "Destroy_Wisps"
kill Wisp##141268+
|tip Use the ability on your action bar.
Destroy #30# Wisps |q 50837/3 |goto 41.60,90.63
step
Return to Zoram'gar Outpost |goto Ashenvale/0  12.23,33.21 < 7 |c |q 50837 |notravel
step
talk Lady Sylvanas Windrunner##134554
turnin A Quick Flyover##50837 |goto 12.02,33.78
accept An Unstoppable Force##50880 |goto 12.02,33.78
step
Meet Sylvanas at the Wall |q 50880/1 |goto Darkshore/0 44.00,90.18
step
Pass Through the Wall |q 50880/2 |goto 43.81,89.77
step
Watch the dialogue
talk Lady Sylvanas Windrunner##134554
turnin An Unstoppable Force##50880 |goto 42.84,87.43
accept Clearing Them Out##53604 |goto 42.84,87.43
accept A Glaive Misunderstanding##53605 |goto 42.84,87.43
stickystart "Kill_Darnassian_Archers"
step
use the Everburning Torch##158937
|tip Use it on Glaive Throwers around this area.
|tip They look like wooden artillery machines with purple wings on the ground around this area.
Burn #4# Glaive Throwers |q 53605/1 |goto 40.40,83.39
step
label "Kill_Darnassian_Archers"
Kill enemies around this area
Defeat #7# Night Elf Forces |q 53604/1 |goto 40.40,83.39
step
talk Lady Sylvanas Windrunner##134554
turnin Clearing Them Out##53604 |goto 42.43,82.06
turnin A Glaive Misunderstanding##53605 |goto 42.43,82.06
accept Blurred Vision##50878 |goto 42.43,82.06
stickystart "Kill_Frenzied_Blackwood_Furbolgs"
step
kill 8 Sentry Owl##141359 |q 50878/1 |goto 42.36,78.18
step
label "Kill_Frenzied_Blackwood_Furbolgs"
kill 10 Frenzied Blackwood Furbolg##140686 |q 50878/2 |goto 42.36,78.18
step
talk Lady Sylvanas Windrunner##135003
turnin Blurred Vision##50878 |goto 43.30,75.67
accept The Trees Have Ears##50879 |goto 43.30,75.67
step
kill Burning Ancient##141365 |q 50879/1 |goto 44.40,75.11
|tip You may need help with this.
step
talk Lady Sylvanas Windrunner##135003
turnin The Trees Have Ears##50879 |goto 43.30,75.67
step
Watch the dialogue
talk Lady Sylvanas Windrunner##135003
accept The Blackwood Den##52436 |goto 43.30,75.67
accept Aggressive Inspiration##53606 |goto 43.30,75.67
stickystart "Slay_Blackwood_Furbolgs"
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
label "Slay_Blackwood_Furbolgs"
Kill enemies around this area
Slay #10# Blackwood Furbolgs |q 52436/1 |goto 44.74,84.01
step
talk Lady Sylvanas Windrunner##134554
turnin The Blackwood Den##52436 |goto 43.32,84.71
turnin Aggressive Inspiration##53606 |goto 43.32,84.71
accept The Start of Something Good##52437 |goto 43.32,84.71
step
Meet Sylvanas at Nazj'vel |q 52437/1 |goto 35.78,84.79
step
talk Jux Burstkix##144346
turnin The Start of Something Good##52437 |goto 35.82,84.84
accept Fueling the Horde War Machine##53608 |goto 35.82,84.84
accept A Very Clear Message##53609 |goto 35.82,84.84
stickystart "Slay_Night_Elves"
step
click Azerite Deposit##297790+
|tip They look like black and silver rock clusters on the ground around this area.
Collect #6# Azerite |q 53608/1 |goto 32.63,84.08
step
label "Slay_Night_Elves"
Kill enemies around this area
Slay #10# Night Elves |q 53609/1 |goto 32.63,84.08
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
Use the Goblin Hellion |q 52438/1 |goto 44.76,86.42
step
Ride the Goblin Hellion to Wildbend River |q 52438/2 |goto 41.15,69.32 |notravel
stickystart "Slay_Kaldorei_Forces"
step
kill 5 Awakened Ancient##140741 |q 52438/3 |goto 41.86,66.77
|tip Use the abilities on your action bar.
step
label "Slay_Kaldorei_Forces"
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #20# Kaldorei Forces |q 52438/4 |goto 41.86,66.77
step
Return to Lady Sylvanas Windrunner |goto 42.74,67.95 < 7 |c |q 52438 |notravel
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
step
talk Lady Sylvanas Windrunner##134554
accept Saurfang Returns##52967 |goto 44.70,86.78
step
talk High Overlord Saurfang##142310
turnin Saurfang Returns##52967 |goto 52.16,22.46
accept No Small Mercy##52970 |goto 52.16,22.46
accept Driving Them Out##53610 |goto 52.16,22.46
accept Seaside Rendezvous##52971 |goto 52.16,22.46
stickystart "Secure_Civilians"
stickystart "Slay_Lordanel_Defenders"
step
kill Ariel Stagguard##144345 |q 52971/2 |goto 51.73,17.76
|tip She walks around this area.
step
kill Caranne Briarbow##142749 |q 52971/1 |goto 46.73,18.79
step
label "Secure_Civilians"
talk Lor'danel Citizen##142408+
|tip They look like neutral NPCs cowering in fear on the ground around this area.
Tell them _"Come with us to safety. We will not harm you."_
Secure #8# Civilians |q 52970/1 |goto 50.80,19.30
step
label "Slay_Lordanel_Defenders"
Kill enemies around this area
Slay #15# Lor'danel Defenders |q 53610/1 |goto 49.00,19.56
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
Assist the Warchief |q 52981/2 |goto 46.07,24.31
step
Watch the dialogue
Follow Saurfang |q 52981/3 |goto 46.07,24.31
step
talk Lady Sylvanas Windrunner##144466
Tell her _"I am ready."_
Watch the dialogue
Speak with Sylvanas |q 52981/4 |goto 45.52,18.25
step
talk Lady Sylvanas Windrunner##144466
turnin Killer Queen##52981 |goto 45.51,18.24
step
_Lordaeron is under attack!_
Click Here to Load the "Battle for Lordaeron" Leveling Guide |confirm |next "Events Guides\\World Events\\Battle for Azeroth (110-120)\\The Battle for Lordaeron"
|only if not completedq(51796)
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Quests\\Pilgrim's Bounty Quests",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
description="This guide section will walk you through completing the quests for the Pilgrim's Bounty event, as well as getting your Cooking skill from 1-300.",
},[[
step
talk Troll Commoner##19177
accept Pilgrim's Bounty##14036 |goto Orgrimmar/1 49.08,61.49
step
talk Zidormi##141488
Ask her _"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?"_
Travel to the Past |condition ZGV.InPhase('Old Undercity') |goto Tirisfal Glades/0 69.46,62.80 |q 14036
step
talk Miles Standish##34677
turnin Pilgrim's Bounty##14036 |goto 61.39,67.48
step
talk Bountiful Feast Hostess##34654
accept Sharing a Bountiful Feast##14065 |goto 61.72,66.78
step
clicknpc The Pie Chair##34822
|tip Use the "Feast On Pie" ability on your action bar five times.
Eat Five Pie Helpings |condition hasbuff(250623,5) |goto 61.52,66.80 |or |q 14065
'|q 14065/1 |next "Leave_The_Table" |or
step
Leave the Table |outvehicle |or |q 14065
|tip Click the "Exit" button on your action bar.
'|q 14065/1 |next "Leave_The_Table" |or
step
clicknpc The Turkey Chair##34812
|tip Use the "Feast On Turky" ability on your action bar five times.
Eat Five Turkey Helpings |condition hasbuff(250626,5) |goto 61.44,66.81 |or |q 14065
'|q 14065/1 |next "Leave_The_Table" |or
step
Leave the Table |outvehicle |or |q 14065
|tip Click the "Exit" button on your action bar.
'|q 14065/1 |next "Leave_The_Table" |or
step
clicknpc The Cranberry Chair##34823
|tip Use the "Feast On Cranberries" ability on your action bar five times.
Eat Five Cranberry Helpings |condition hasbuff(250622,5) |goto 61.41,66.70 |or |q 14065
'|q 14065/1 |next "Leave_The_Table" |or
step
Leave the Table |outvehicle |or |q 14065
|tip Click the "Exit" button on your action bar.
'|q 14065/1 |next "Leave_The_Table" |or
step
clicknpc The Sweet Potato Chair##34824
|tip Use the "Feast On Sweet Potatoes" ability on your action bar five times.
Eat Five Sweet Potato Helpings |condition hasbuff(250625,5) |goto 61.47,66.60 |or |q 14065
'|q 14065/1 |next "Leave_The_Table" |or
step
Leave the Table |outvehicle |or |q 14065
|tip Click the "Exit" button on your action bar.
'|q 14065/1 |next "Leave_The_Table" |or
step
clicknpc The Stuffing Chair##34819
|tip Use the "Feast On Stuffing" ability on your action bar five times.
Eat Five Stuffing Helpings |condition hasbuff(250624,5) |goto 61.54,66.67 |or |q 14065
'|q 14065/1 |next "Leave_The_Table" |or
step
Gain the Spirit of Sharing |q 14065/1 |goto 61.43,66.81
step
label "Leave_The_Table"
Leave the Table |outvehicle |q 14065
|tip Click the "Exit" button on your action bar.
step
talk Bountiful Feast Hostess##34654
turnin Sharing a Bountiful Feast##14065 |goto 61.72,66.78
step
talk Roberta Carter##34712
Train Cooking |skillmax Cooking,300 |goto 61.23,66.94
step
talk Roberta Carter##34712
learn Spice Bread##37836 |goto 61.23,66.94
step
talk Rose Standish##34683
buy 1 Bountiful Cookbook##46810 |goto 61.37,67.40 |q 14037 |future
step
use the Bountiful Cookbook##46810
collect Recipe: Spice Bread Stuffing##46803 |q 14037 |future
step
use the Bountiful Cookbook##46810
collect Recipe: Pumpkin Pie##46804 |q 14040 |future
step
use the Bountiful Cookbook##46810
collect Recipe: Cranberry Chutney##46805 |q 14041 |future
step
use the Bountiful Cookbook##46810
collect Recipe: Candied Sweet Potato##46806 |q 14043 |future
step
use the Bountiful Cookbook##46810
collect Recipe: Slow-Roasted Turkey##46807 |q 14047 |future
step
use the Recipe: Spice Bread Stuffing##46803
learn Spice Bread Stuffing##66038
step
talk Miles Standish##34677
accept Spice Bread Stuffing##14037 |goto 61.37,67.48
step
talk Rose Standish##34683
buy 5 Simple Flour##30817 |goto 61.37,67.40 |q 14037
buy 5 Mild Spices##2678 |goto 61.37,67.40 |q 14037
buy 5 Autumnal Herbs##44835 |goto 61.37,67.40 |q 14037
step
Open Your Cooking Crafting Panel:
_<Create 5 Spice Bread>_
collect 5 Spice Bread##30816 |goto 61.24,66.81 |q 14037
step
Open Your Cooking Crafting Panel:
_<Create 5 Spice Bread Stuffing>_
Prepare #5# Spice Bread Stuffing |q 14037/1 |goto 61.24,66.81
|tip Save these for later.
step
collect 5 Spice Bread Stuffing##44837 |q 14037/2
step
Reach Cooking Level 100 |skill Cooking,100 |goto 61.24,66.81
|tip Continue making Spice Bread Stuffing to reach 100 Cooking.
|tip Each one requires 1 Spice Bread and 1 Autumnal Herbs.
|tip Each Spice Bread requires 1 Simple Flour and 1 Mild Spices.
step
talk William Mullins##34768
turnin Spice Bread Stuffing##14037 |goto 61.65,68.07
accept Pumpkin Pie##14040 |goto 61.65,68.07
step
use the Recipe: Pumpkin Pie##46804
learn Pumpkin Pie##66036
step
talk Rose Standish##34683
buy 5 Ripe Tirisfal Pumpkin##46796 |goto 61.37,67.40 |q 14040
buy 5 Honey##44853 |goto 61.37,67.40 |q 14040
step
Open Your Cooking Crafting Panel:
_<Create 5 Pumpkin Pie>_
Prepare #5# Pumpkin Pie |q 14040/1 |goto 61.24,66.81
step
collect 5 Pumpkin Pie##44836 |q 14040/2
step
Reach Cooking Level 160 |skill Cooking,160
|tip Continue making Pumpkin Pie to reach 160 Cooking.
|tip Each one requires 1 Ripe Tirisfal Pumpkin and 1 Honey.
step
talk Francis Eaton##34679
turnin Pumpkin Pie##14040 |goto Durotar/0 46.59,13.79
accept Cranberry Chutney##14041 |goto 46.59,13.79
step
use the Recipe: Cranberry Chutney##46805
learn Cranberry Chutney##66035
step
talk Dalni Tallgrass##34685
buy 5 Tangy Southfury Cranberries##46793 |goto 46.62,13.79 |q 14041
buy 5 Honey##44853 |goto 46.62,13.79 |q 14041
step
Open Your Cooking Crafting Panel:
_<Create 5 Cranberry Chutney>_
Prepare #5# Cranberry Chutney |q 14041/1 |goto 46.43,13.86
|tip Save these for later.
step
collect 5 Cranberry Chutney##44840 |q 14041/2
step
Reach Cooking Level 220 |skill Cooking,220 |goto 46.43,13.86
|tip Continue making Cranberry Chutneys to reach 220 Cooking.
|tip Each one requires 1 Tangy Southfury Cranberries and 1 Honey.
step
talk Dokin Farplain##34678
turnin Cranberry Chutney##14041 |goto Thunder Bluff/0 30.85,63.71
accept Candied Sweet Potatoes##14043 |goto 30.85,63.71
step
use the Recipe: Candied Sweet Potato##46806
learn Candied Sweet Potato##66034
step
talk Laha Farplain##34684
buy 5 Mulgore Sweet Potato##46797 |goto 31.03,63.32 |q 14043
buy 5 Honey##44853 |goto 31.03,63.32 |q 14043
buy 5 Autumnal Herbs##44835 |goto 31.03,63.32 |q 14043
step
Open Your Cooking Crafting Panel:
_<Create 5 Candied Sweet Potato>_
Prepare #5# Candied Sweet Potatoes |q 14043/1 |goto 30.57,69.91
step
collect 5 Candied Sweet Potatoes##44839 |q 14043/2
step
Reach Cooking Level 280 |skill Cooking,280
|tip Continue making Candied Sweet Potatoes to reach 280 Cooking.
|tip Each one requires 1 Mulgore Sweet Potato, 1 Autumnal Herbs, and 1 Honey.
step
talk Francis Eaton##34679
turnin Candied Sweet Potatoes##14043 |goto Durotar/0 46.58,13.80
accept Undersupplied in the Undercity##14044 |goto 46.58,13.80
step
collect 5 Spice Bread Stuffing##44837 |q 14044/1
|tip You should have these from a previous step.
step
collect 5 Cranberry Chutney##44840 |q 14044/2
|tip You should have these from a previous step.
step
talk Miles Standish##34677
turnin Undersupplied in the Undercity##14044 |goto Tirisfal Glades/0 61.38,67.48
accept Slow-Roasted Turkey##14047 |goto 61.38,67.48
step
use the Recipe: Slow-Roasted Turkey##46807
learn Slow-Roasted Turkey##66037
step
kill Wild Turkey##32820+
|tip You can find these all over Tirisfal Glades.
collect 5 Wild Turkey##44834 |goto Tirisfal Glades/0 62.2,56.4 |q 14047
step
talk Rose Standish##34683
buy 10 Honey##44853 |goto 61.37,67.41 |q 14047
buy 5 Autumnal Herbs##44835 |goto 61.37,67.41 |q 14047
step
Open Your Cooking Crafting Panel:
_<Create 5 Slow-Roasted Turkeys>_
Prepare #5# Slow-Roasted Turkeys |q 14047/1 |goto 61.24,66.81
step
collect 5 Slow-Roasted Turkey##44838 |q 14047/2
step
talk Francis Eaton##34679
turnin Slow-roasted Turkey##14047 |goto Durotar/0 46.58,13.80
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Quests\\Pilgrim's Bounty Daily Quests",{
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
},[[
step
label "Guide_Start"
Complete the "Pilgrim's Bounty Quests" Event Guide |condition completedq(14047)
step
talk Zidormi##141488
Ask her _"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?"_
Travel to the Past |condition ZGV.InPhase('Old Undercity') |goto Tirisfal Glades/0 69.46,62.80 |q 14058 |future
step
talk William Mullins##34768
accept She Says Potato##14058 |goto 61.65,68.08
step
talk Roberta Carter##34712
accept We're Out of Cranberry Chutney Again?##14059 |goto 61.22,66.95
step
talk Rose Standish##34683
buy 20 Ripe Tirisfal Pumpkin##46796 |goto 61.37,67.42 |q 14060 |future
buy 20 Simple Flour##30817 |goto 61.37,67.42 |q 14062 |future
buy 20 Mild Spices##2678 |goto 61.37,67.42 |q 14062 |future
buy 60 Autumnal Herbs##44835 |goto 61.37,67.42 |q 14062 |future
buy 100 Honey##44853 |goto 61.37,67.42 |q 14060 |future
step
kill Wild Turkey##32820+
|tip You can find these all over Tirisfal Glades.
collect 20 Wild Turkey##44834 |goto 62.25,56.43 |q 14061 |future
step
talk Ondani Greatmill##34713
accept Don't Forget The Stuffing!##14062 |goto Durotar/0 46.36,13.85
accept Can't Get Enough Turkey##14061 |goto 46.36,13.85
step
talk Dalni Tallgrass##34685
buy 20 Tangy Southfury Cranberries##46793 |goto 46.61,13.78 |q 14059
step
talk Laha Farplain##34684
buy 20 Mulgore Sweet Potato##46797 |q 14058 |goto Thunder Bluff/0 31.02,63.31
step
talk Mahara Goldwheat##34714
accept Easy As Pie##14060 |goto 30.97,69.84
step
Open Your Cooking Crafting Panel:
_<Create 20 Pumpkin Pie>_
collect 20 Pumpkin Pie##44836 |q 14060/1 |goto 30.42,69.97
step
Open Your Cooking Crafting Panel:
_<Create 20 Spice Bread>_
collect 20 Spice Bread##30816 |q 14062 |goto 30.42,69.97
step
Open Your Cooking Crafting Panel:
_<Create 20 Spice Bread Stuffing>_
collect 20 Spice Bread Stuffing##44837 |q 14062/1 |goto 30.42,69.97
step
Open Your Cooking Crafting Panel:
_<Create 20 Slow-Roasted Turkey>_
collect 20 Slow-Roasted Turkey##44838 |q 14061/1 |goto 30.42,69.97
step
Open Your Cooking Crafting Panel:
_<Create 20 Candied Sweet Potato>_
collect 20 Candied Sweet Potato##44839 |q 14058/1 |goto 30.42,69.97
step
Open Your Cooking Crafting Panel:
_<Create 20 Cranberry Chutney>_
collect 20 Cranberry Chutney##44840 |q 14059/1 |goto 30.42,69.97
step
talk Mahara Goldwheat##34714
turnin Easy As Pie##14060 |goto 30.97,69.84
step
talk Ondani Greatmill##34713
turnin Can't Get Enough Turkey##14061 |goto Durotar/0 46.36,13.87
turnin Don't Forget The Stuffing!##14062 |goto 46.36,13.87
step
talk Roberta Carter##34712
turnin We're Out of Cranberry Chutney Again?##14059 |goto Tirisfal Glades/0 61.21,66.94
step
talk William Mullins##34768
turnin She Says Potato##14058 |goto 61.66,68.08
step
Click Here to Repeat the Daily Quests |confirm |next "Guide_Start"
]])
