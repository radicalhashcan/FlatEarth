local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("PetBattleHLEGION") then return end
ZygorGuidesViewer.GuideMenuTier = "LEG"
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Battle Pet Dungeons\\Deadmines",{
author="support@zygorguides.com",
description="This guide will assist you in completing the Deadmines pet battle dungeon.",
keywords={"Pet", "Battle", "DM", "Westfall", "Defias", "Eastern", "Kingdoms"},
condition_suggested=function() return level >= 110 and completedq(45423) end,
condition_valid=function() return level >= 110 and completedq(45423) end,
condition_valid_msg="You have not unlocked the Deadmines pet battle dungeon!\n"..
"Complete the quest \"Wailing Critters\" in the "..
"\"Wailing Caverns\" pet battle guide.",
startlevel=110.0,
},[[
step
talk Breanni##96479
accept Deadmines, Part Three?##46293 |goto Dalaran L/10 58.42,39.22
|only if not completedq(46293)
step
talk Marcus "Bagman" Brown##119390
|tip He is behind the barn, outside, before you go into the mines.
turnin Deadmines, Part Three?##46293 |goto Westfall/0 41.56,71.13 |only if not completedq(46291)
accept The Deadmines Strike Back##46291 |goto Westfall/0 41.56,71.13 |only if not completedq(46291)
accept Pet Battle Challenge: Deadmines##46292 |goto Westfall/0 41.56,71.13 |only if completedq(46291)
|tip This is a weekly quest! |only if completedq(46291)
step
This is a weekly account wide quest
|tip There are 9 pet battles in which you need to defeat to complete this dungeon. Get as many level 25 pets as you can before attempting this.
|tip While doing this weekly quest, you will not be able to heal your pets while inside.
confirm
|only if completedq(46291)
step
talk Marcus "Bagman" Brown##119390
Tell him: _"Take me into the Deadmines."_ |goto Westfall/0 41.48,71.13
Ask Marcus Brown to take you into the Deadmines |q 46291/1 |goto Westfall/0 41.48,71.13 |only if not completedq(46291)
|confirm |or
step
Start the scenario |goto Westfall/0 41.48,71.13 |scenariostart
step
Enter the Deadmines |goto Deadmines Scenario/1 62.09,70.82 |walk
Follow the path down |goto Deadmines Scenario/1 66.02,64.19 |walk
Defeat Foe Reaper 50 |goto Deadmines Scenario/2 9.64,81.67 |scenariogoal 1/35577
|tip Foe Reaper 50 is a Mechanical boss pet and its damage taken is reduced by 50 percent.
|tip Strong damaging Elemental pets are good counters to Foe Reaper 50.
step
Defeat Unfortunate Defias |scenariogoal 2/35591 |goto Deadmines Scenario/2 13.23,59.95
|tip This is an Uncommon quality Undead pet with 2 Flying pets after.
|tip Although the first pet is Uncommon quality, it is considered Elite and takes 50 percent reduced damage.
step
Defeat Angry Geode |scenariogoal 2/35594 |goto Deadmines Scenario/2 22.82,59.14
|tip This is an Uncommon quality Elemental pet with 2 Flying pets after.
|tip Although the first pet is Uncommon quality, it is considered Elite and takes 50 percent reduced damage.
step
Defeat Mining Monkey |scenariogoal 3/35587 |goto Deadmines Scenario/2 27.41,50.75
|tip This is a Rare quality Beast pet with 2 Critter pets after.
|tip The first pet is considered Elite and takes 50 percent reduced damage.
|tip Strong damaging Mechanical pets are good counters to Mining Monkey.
step
map Deadmines Scenario/2
path follow smart; loop off; ants curved; dist 15
path	29.31,50.39	41.05,48.35	42.85,36.60
path	46.98,20.86
Follow the path avoiding the cannon shots |goto 46.98,20.86
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Defeat "Captain" Klutz |scenariogoal 4/35612 |goto Deadmines Scenario/2 52.79,20.23
|tip "Captain" Klutz is a Humanoid boss pet and its damage taken is reduced by 50 percent.
|tip Strong damaging Undead pets are good counters to "Captain" Klutz.
step
map Deadmines Scenario/2
path follow smart; loop off; ants curved; dist 15
path	56.01,26.24	53.29,36.24	54.91,50.84
Follow the path |goto 54.91,50.84
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Defeat Klutz's Battle Rat |scenariogoal 5/35613 |goto Deadmines Scenario/2 55.03,57.27
|tip This is an Uncommon quality Critter pet with 2 random pets after.
|tip Although the first pet is Uncommon quality it is considered Elite and takes 50 percent reduced damage.
step
Defeat Klutz's Battle Monkey |scenariogoal 5/35615 |goto Deadmines Scenario/2 52.53,44.54
|tip This is an Uncommon quality Beast pet with 2 random pets after.
|tip Although the first pet is Uncommon quality it is considered Elite and takes 50 percent reduced damage.
step
Defeat Klutz's Battle Bird |scenariogoal 5/35614 |goto Deadmines Scenario/2 54.67,38.02
|tip This is an Uncommon quality Flying pet with 2 random pets after.
|tip Although the first pet is Uncommon quality it is considered Elite and takes 50 percent reduced damage.
step
Get onto the ship |goto Deadmines Scenario/2 58.37,38.89
|tip Wait for the dialogue to complete.
Confront the Shadowy Figure |scenariogoal 6/35617
step
Defeat Cookie's Leftovers |scenariogoal 7/35616 |goto Deadmines Scenario/2 60.38,39.19
|tip Cookie's Leftovers is a Legendary Magic boss pet and its damage taken is reduced by 50 percent.
|tip Strong damaging Dragonkin pets are good counters to Cookie's Leftovers.
step
Right click your portrait and click "Leave Instance Group"
talk Marcus "Bagman" Brown##119390
turnin The Deadmines Strike Back##46291 |goto Westfall/0 41.48,71.13 |only if not completedq(46291)
turnin Pet Battle Challenge: Deadmines##46292 |goto Westfall/0 41.48,71.13 |only if completedq(46291)
step
Congratulations you have compelted the Pet Dungeon Deadmines!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Battle Pet Dungeons\\Wailing Caverns",{
author="support@zygorguides.com",
description="This guide will assist you in completing the Wailing Caverns pet battle dungeon.",
keywords={"Pet", "Battle", "WC", "Barrens", "Deviate", "Kalimdor"},
condition_suggested=function() return level >= 110 and completedq(45423) end,
condition_valid=function() return level >= 110 and completedq(45423) end,
condition_valid_msg="You have not unlocked the Deadmines pet battle dungeon!\n"..
"Complete the quest \"Wailing Critters\" in the "..
"\"Wailing Caverns\" pet battle guide.",
startlevel=110.0,
},[[
step
talk Serr'ah##115287
accept A Call from the Caverns##45540 |goto Dalaran L/10 58.56,37.61
|only if not completedq(45540)
step
talk Muyani##116781
|tip Inside the cave above the entrance to the Wailing Caverns.
turnin A Call from the Caverns##45540 |goto Northern Barrens/20 23.23,81.76 |only if not completedq(45423)
accept Wailing Critters##45423 |goto Northern Barrens/20 23.23,81.76 |only if not completedq(45423)
accept Pet Battle Challenge: Wailing Caverns##45539 |goto Northern Barrens/20 23.28,81.58 |only if completedq(45423)
|tip This is a daily quest. |only if completedq(45423)
step
talk Muyani##116781
|tip Inside the cave above the entrance to the Wailing Caverns.
Tell her "Take me into the Wailing Caverns" |goto Northern Barrens/20 23.23,81.76
Ask Muyani to take you into Wailing Caverns |q 45423/1 |only if not completedq(45423)
|confirm |or
step
This dungeon requires several level 25 pets to complete
There are 11 pet battles in which you need to defeat to complete this dungeon so get as many level 25 pets as you can before attempting this
After completing the first round of this instance and attempting it a second time with the daily you will no longer be able to heal pets while inside.
confirm
|only if completedq(45423)
step
Defeat Deviate Smallclaw |goto 1127/1 61.92,67.89 |scenariogoal 1/34860
These are just common quailty pets
|tip The first pet will be a Beast type and after that there will be 2 others either Beast, Aquatic, or Flying types.
step
Defeat Deviate Chomper |goto 60.88,70.20 |scenariogoal 1/34862
These are just common quailty pets
|tip The first pet will be a Aquatic type and after that there will be 2 others either Beast, Aquatic, or Flying types.
step
Defeat Deviate Flapper |goto 62.13,75.05 |scenariogoal 1/34861
These are just common quailty pets
|tip The first pet will be a Flying type and after that there will be 2 others either Beast, Aquatic, or Flying types.
step
Defeat Son of Skum |goto 61.23,79.15 |scenariogoal 2/34863
Son of Skum will be an epic quailty Beast type pet and after that there will be 2 others either Beast, Aquatic, or Flying types.
|tip Skum is a boss type pet and it's damage taken is reduced by 50 percent.
|tip Strong damaging mechanical type pets are good counters to Skum.
step
Defeat Phyxia |goto 56.55,89.07 |scenariogoal 3/34868
The first pet will be an uncommon quailty Beast type pet and after that there will be 2 others either Beast, Aquatic, or Flying types.
|tip This is an Elite type pet and takes 50 percent reduced damage.
step
Defeat Dreadcoil |goto 56.39,78.53 |scenariogoal 3/34867
|tip He pats around this area.
The first pet will be an uncommon quailty Beast type pet and after that there will be 2 others either Beast, Aquatic, or Flying types.
|tip This is an Elite type pet and takes 50 percent reduced damage.
step
Defeat Vilefang |goto 55.43,72.10 |scenariogoal 3/34866
The first pet will be an uncommon quailty Beast type pet and after that there will be 2 others either Beast, Aquatic, or Flying types.
|tip This is an Elite type pet and takes 50 percent reduced damage.
step
Defeat Hiss |goto 64.07,59.21 |scenariogoal 4/34865
Hiss will be an epic quailty Beast type pet and after that there will be 2 others either Beast, Aquatic, or Flying types.
|tip Hiss is a boss type pet and it's damage taken is reduced by 50 percent.
|tip Strong damaging mechanical type pets are good counters to Hiss.
step
map 1127/1
path follow smart; loop off; ants curved; dist 15
path	68.26,62.06	72.81,67.80	72.44,76.30
path	67.32,84.07	62.16,82.42
Follow the path
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Defeat Growing Ectoplasm |goto 60.82,81.70 |scenariogoal 5/34864 |count 1
The first pet will be a rare quailty Magic type pet and after that there will be 2 others either Beast, Aquatic, or Flying types.
|tip This is an Elite type pet and takes 50 percent reduced damage.
|tip Strong damaging Dragonkin type pets are good counters to Growing Ectoplasm.
step
Jump down here |goto 60.30,80.88
map 1127/1
path follow smart; loop off; ants curved; dist 15
path	59.22,80.03	56.84,77.82	54.10,75.10
path	53.67,69.41	54.14,65.39
Follow the path |goto 54.14,65.39
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Defeat Growing Ectoplasm |goto 54.30,64.62 |scenariogoal 5/34864 |count 2
The first pet will be a rare quailty Magic type pet and after that there will be 2 others either Beast, Aquatic, or Flying types.
|tip This is an Elite type pet and takes 50 percent reduced damage.
|tip Strong damaging Dragonkin type pets are good counters to Growing Ectoplasm.
step
map 1127/1
path follow smart; loop off; ants curved; dist 15
path	53.89,61.50	56.85,58.09	59.35,51.81
Follow the path |goto 59.35,51.81
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Watch the Dialogue
Confront the Shadowy Figure |goto 60.19,50.13 |scenariogoal 6/34939
step
Defeat Budding Everliving Spore |goto 58.17,50.19 |scenariogoal 7/34869
Budding Everliving Spore will be a Legendary quailty Elemental type pet and after that there will be 2 others either Beast, Aquatic, or Flying types.
|tip Budding Everliving Spore is a boss type pet and it's damage taken is reduced by 50 percent.
|tip Strong damaging Aquatic type pets are good counters to Budding Everliving Spore.
step
Right click your portrait and click "Leave Instance Group"
talk Muyani##116781
turnin Wailing Critters##45423 |goto Northern Barrens/20 23.28,81.58 |only if not completedq(45423)
turnin Pet Battle Challenge: Wailing Caverns##45539 |goto Northern Barrens/20 23.28,81.58 |only if completedq(45423)
step
Congratulations you have compelted the Pet Dungeon Wailing Caverns!
]])
