local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("PetBattleHBFA") then return end
ZygorGuidesViewer.GuideMenuTier = "BFA"
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Battle Pet Dungeons\\Gnomeregan",{
author="support@zygorguides.com",
description="This guide will assist you in completing the Gnomeregan pet battle dungeon.",
keywords={"Pet", "Battle", "DM", "Dun", "Morogh", "Eastern", "Kingdoms"},
condition_suggested=function() return level >= 120 and completedq(46291) end,
condition_valid=function() return level >= 120 and completedq(46291) end,
condition_valid_msg="You have not unlocked the Gnomeregan pet battle dungeon!\n"..
"Complete the quest \"The Deadmines Strike Back\" in the "..
"\"Deadmines\" pet battle guide.",
startlevel=120.0,
},[[
step
Enter the building |goto Dazar'alor/0 56.80,31.16 < 10 |walk
talk Radek Fuselock##147641
accept Trouble in Gnomeregan##54276 |goto 56.26,30.82
step
Enter the tunnel |goto New Tinkertown/0 32.54,36.95 < 10 |walk
Follow the path |goto Dun Morogh/10 53.73,81.03 < 20 |walk
talk Micro Zoox##147070
turnin Trouble in Gnomeregan##54276 |goto 31.06,71.44
accept Gnomeregan's New Guardians##54185 |goto 31.06,71.44
step
label "Enter_Gnomeregan_Scenario"
talk Micro Zoox##147070 |goto 31.06,71.44
Tell him _"I'm ready, send me into Gnomeregan!"_
Ask Micro Zoox to Teleport You Inside of Gnomeregan |goto Gnomeregan Scenario/0 0.00,0.00 |c |noway |or
'|q 54185/2 |next "Defeat_Pulverizer_Bot" |or
step
label "Begin_Gnomeregan_Scenario"
clicknpc Prototype Annoy-O-Tron##146001
|tip In front of you.
Defeat the Annoy-O-Tron Prototype |scenariogoal 1/43493 |or |q 54185
'|scenarioend |next "Enter_Gnomeregan_Scenario" |or
step
clicknpc Living Sludge##146182
|tip Click the Gnomeregan Teleporter to the left to take you below.
Defeat the Living Sludge |scenariogoal 2/43521 |or |q 54185
'|scenarioend |next "Enter_Gnomeregan_Scenario" |or
step
clicknpc Living Napalm##146183
|tip To the right.
Living Napalm Defeated |scenariogoal 2/43522 |or |q 54185
'|scenarioend |next "Enter_Gnomeregan_Scenario" |or
step
clicknpc Living Permafrost##146181
|tip To the left.
Defeat the Living Permafrost |scenariogoal 2/43523 |or |q 54185
'|scenarioend |next "Enter_Gnomeregan_Scenario" |or
step
clicknpc Door Control Console##146932
|tip To the right.
Choose _<Pull Random Levers>_
Defeat the Door Control Console's Defenses |scenariogoal 3/43524 |or |q 54185
'|scenarioend |next "Enter_Gnomeregan_Scenario" |or
step
clicknpc Bomb Crusher 5000##147316
|tip Through the door.
|tip Use the "Nitro Boosters" ability for a brief speed burst.
|tip Use the "Defensive Force Field" for a six second damage immunity.
|tip use the Force Field first, then the Boosters.
|tip Repeat this process to reach the end.
Make it to the End of the Hallway Full of Bomb Bots |scenariogoal 4/43542 |or |q 54185
'|scenarioend |next "Enter_Gnomeregan_Scenario" |or
step
clicknpc Cockroach##145971
|tip In front of you.
Defeat the Cockroach |scenariogoal 5/43526 |or |q 54185
'|scenarioend |next "Enter_Gnomeregan_Scenario" |or
step
clicknpc Leper Rat##145968
|tip To the right.
Defeat the Leper Rat |scenariogoal 5/43527 |or |q 54185
'|scenarioend |next "Enter_Gnomeregan_Scenario" |or
step
Watch the dialogue
clicknpc Bloated Leper Rat##146005
|tip In front of you.
Defeat the Bloated Leper Rat |scenariogoal 6/43528 |or |q 54185
'|scenarioend |next "Enter_Gnomeregan_Scenario" |or
step
clicknpc Gnomeregan Guard Wolf##146002
|tip On the left.
Defeat the Gnomeregan Guard Wolf |scenariogoal 7/43531 |or |q 54185
'|scenarioend |next "Enter_Gnomeregan_Scenario" |or
step
clicknpc Gnomeregan Guard Mechanostrider##146004
|tip In the middle.
Defeat the Gnomeregan Guard Mechanostrider |scenariogoal 7/43529 |or |q 54185
'|scenarioend |next "Enter_Gnomeregan_Scenario" |or
step
clicknpc Gnomeregan Guard Tiger##146003
|tip On the right.
Defeat the Gnomeregan Guard Tiger |scenariogoal 7/43530 |or |q 54185
'|scenarioend |next "Enter_Gnomeregan_Scenario" |or
step
Watch the dialogue
|tip Walk up to the shadowy elf in front of you.
Confront the Shadowy Figure |scenariogoal 8/43558 |or |q 54185
'|scenarioend |next "Enter_Gnomeregan_Scenario" |or
step
clicknpc Pulverizer Bot Mk 6001##145988
|tip In the middle of the room.
Defeat the Pulverizer Bot Mk 6001 |scenariogoal 9/43532 |or |q 54185
'|scenarioend |next "Enter_Gnomeregan_Scenario" |or
step
label "Defeat_Pulverizer_Bot"
Defeat the Pulverizer Bot Mk 6001 |q 54185/2 |goto 31.06,71.44
step
talk Micro Zoox##147485
Tell him _"This place is crazy, get me out of here!"_
Leave Gnomeregan |goto Gnomeregan Scenario/2 0.00,0.00 > 10 |c |noway |q 54185
step
talk Micro Zoox##147070
turnin Gnomeregan's New Guardians##54185 |goto Dun Morogh/10 31.06,71.44
]])
