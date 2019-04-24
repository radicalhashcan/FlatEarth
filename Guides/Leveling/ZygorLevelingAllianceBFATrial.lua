local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("LevelingABFA") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (110-120)\\Intro & Quest Zone Choice",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the following:\n"..
"\nBattle for Azeroth \"The Battle for Lordaeron\" introduction scenario\n"..
"\nObtaining the Heart of Azeroth\n"..
"\nChoosing which zones to complete quests in to level your character\n",
condition_suggested=function() return level >= 110 and level <= 120 end,
startlevel=110.0,
endlevel=120.0,
image=ZGV.DIR.."\\Guides\\Images\\BfAIntro",
},[[
step
Starting Guide |next "Fresh_Start_BFA" |only if not completedq(47189)
Starting Guide |next "Choose_Next_Questing_Zone_BFA" |only if completedq(47189)
step
label "Fresh_Start_BFA"
accept Hour of Reckoning##53370
|tip Relog if you do not automatically accept this quest.
step
talk Master Mathias Shaw##139798
turnin Hour of Reckoning##53370 |goto Stormwind City/0 22.37,32.44
accept The Battle for Lordaeron##51795 |goto Stormwind City/0 22.37,32.44
step
talk Captain Angelica##108920
Tell her _"I am ready to sail to Lordaeron."_
Travel to Lordaeron |scenariostart |goto 22.21,32.55 |q 51795 |or |next "Intro_Scenario"
|tip It may take a moment to enter the scenario.
_Or_
Tell her _"I've heard this tale before... <Skip the scenario and begin your next mission.>"_
|tip This will allow you to skip the intro scenario if you've already completed it on another character.
Skip the Battle for Lordaeron |condition readyq(51795) |goto 22.21,32.55 |or |future |next "Intro_Scenario_Completed"
step
label "Intro_Scenario"
Find General Hammond Clay |goto Ruins of Lordaeron/0 51.55,18.80 < 10 |q 51795
step
Watch the dialogue
|tip Follow General Hammond Clay as we walks.
Follow Hammond Clay to Brill |scenariogoal 1/37049 |goto Ruins of Lordaeron/0 47.50,50.40 |q 51795
step
Find Genn Greymane |goto 46.96,51.07 < 10 |q 51795
step
Watch the dialogue
|tip Follow Genn Greymane as he walks.
Charge the Battlefield with Genn |scenariostage 1 |goto 48.13,53.51 |q 51795
step
kill Goblin Shredder##134015 |goto 48.35,57.60 |scenariobonus 2/39783 |q 51795
step
Kill enemies around this area
clicknpc Auchenai Ballista##134016+
|tip They look like wooden artillery vehicles with purple crystals on them on the ground around this area.
|tip You can use them to fight, if you wish.
Defend the Siege Towers |scenariostage 2 |goto 47.89,61.22 |q 51795
step
Watch the dialogue
kill Azerite War Machine##132079
Defeat the Azerite War Machine |scenariostage 3 |goto 48.42,63.71 |q 51795
step
Watch the dialogue
Confront Sylvanas Windrunner |scenariostage 4 |goto 48.42,63.71 |q 51795
step
Kill enemies around this area
talk Wounded Soldier##125622+
|tip They look like Alliance soldiers standing with huge partially filled red bubbles above their heads around this area.
|tip They will appear on your minimap as yellow dots.
|tip Try to avoid the green blight areas on the ground.
|tip You will have to keep moving north, try to stay near Anduin Wrynn as you walk, he will protect you from the blight.
Defend King Anduin and Evacuate the Wounded |scenariostage 5 |goto 48.37,61.80 |q 51795
step
Watch the dialogue
Fall Back with King Anduin Wrynn |scenariostage 6 |q 51795
step
Watch the dialogue
Kill enemies around this area
Assist Jaina |scenariogoal 7/37297 |goto 43.19,73.53 |q 51795
step
Watch the dialogue
Infiltrate the Keep with King Anduin |scenariostage 7 |goto 42.14,74.46 |q 51795
step
Kill enemies around this area
Defeat the Darkspear Trolls |scenariogoal 8/0 |goto 42.15,76.40 |q 51795
step
kill Windseeker Durja##126612
Defeat Durja |scenariostage 8 |goto 42.09,81.08 |q 51795
step
Follow the path |goto 42.11,81.46 < 10 |only if walking
Watch the dialogue
|tip Follow Anduin Wrynn as he walks.
Follow King Anduin |scenariostage 9 |goto 42.63,85.96 |q 51795
step
Watch the dialogue
Kill enemies around this area
|tip You can click the Flametron 5000 vehicles nearby to use them to fight, if you wish.
|tip They look like mechanical spider vehicles on the ground around this area.
Assault Lordaeron City |scenariostage 10 |goto 43.47,87.15 |q 51795
step
Watch the dialogue
Find Sylvanas Windrunner |scenariostage 11 |goto 49.29,89.41 |q 51795
step
Watch the dialogue
clicknpc Gnomish Gyrocopter##126795
|tip They look like metal helicopters hovering low to the ground around this area.
Ride in the Gnomish Gyrocopter |invehicle |goto 49.02,88.72 |q 51795
step
Watch the dialogue
Use the Gyrocopter to Pursue Sylvanas |scenariostage 12 |goto 48.62,72.66 |q 51795
step
Watch the dialogue
kill High Overlord Saurfang##129179
|tip He will eventually surrender.
Watch the dialogue
Confront High Overlord Saurfang |scenariostage 13 |goto 48.11,74.23 |q 51795
step
Watch the dialogue
|tip Inside the building.
|tip Follow Anduin Wrynn as he walks.
Confront Sylvanas Windrunner |scenarioend |goto 48.10,78.26 |q 51795
step
Complete the "The Battle for Lordaeron" Scenario |q 51795/2
step
label "Intro_Scenario_Completed"
talk Halford Wyrmbane##142930
turnin The Battle for Lordaeron##51795 |goto Stormwind City/0 27.64,21.29
accept A Dying World##52946 |goto Stormwind City/0 27.64,21.29
step
click Portal to Uldum
Take the Portal to Uldum to Get Closer to Silithus |q 52946/1 |goto 75.24,20.49
step
Reach Silithus |q 52946/2 |goto Silithus/0 42.22,44.27
step
talk Magni Bronzebeard##142322
turnin A Dying World##52946 |goto 42.22,44.27
accept The Heart of Azeroth##51211 |goto 42.22,44.27
step
click Titan Translocator
Use the Device in Silithus to Travel to the Chamber of the Heart |q 51211/1 |goto 43.20,44.49
step
Travel to the Chamber of Heart |goto Chamber Of Heart/0 50.12,30.35 < 10 |noway |c |q 51211
step
click Titan Console
|tip Inside the building.
Choose _(View events that led to Azeroth's wound)_
Watch the dialogue
Witness Past Events on the Titan Console |q 51211/2 |goto 50.16,55.19
step
Watch the dialogue
talk Magni Bronzebeard##136907
|tip Inside the building.
Ask him _"What does Azeroth want of me, Magni?"_
Watch the dialogue
Speak to Magni Within the Chamber of Heart |q 51211/3 |goto 50.15,53.76
step
talk Magni Bronzebeard##136907
|tip Inside the building.
turnin The Heart of Azeroth##51211 |goto 50.14,53.76
accept Infusing the Heart##52428 |goto 50.14,53.76
step
Use the Heart of Azeroth
|tip Use it next to Azerite Cracks around this area.
|tip They look like blue glowing rock stumps inside the building on the ground around this area.
|tip It appears as a button on the screen.
Absorb the Azerite Wounds |q 52428/1 |goto 50.18,59.01
step
Use the Heart of Azeroth
|tip It appears as a button on the screen.
|tip Inside the building.
Watch the dialogue
Use the Heart of Azeroth to Mend the Seal |q 52428/3 |goto 50.14,63.94
step
talk Magni Bronzebeard##136907
|tip Inside the building.
turnin Infusing the Heart##52428 |goto 50.14,53.75
accept To Matters at Hand##51403 |goto 50.14,53.75
step
click Teleport Pad
|tip Inside the building.
Return to Stormwind |q 51403/1 |goto goto 50.12,30.40
step
talk Halford Wyrmbane##142930
turnin The Speaker's Imperative##51403 |goto Stormwind City/0 27.64,21.29
accept Tides of War##46727 |goto Stormwind City/0 27.64,21.29
step
Enter the building |goto 80.62,37.86 < 10 |walk
Watch the dialogue
|tip Inside the building.
Attend the War Council |q 46727/1 |goto 85.04,32.65
step
clicknpc Vision of Sailor's Memory##139645
|tip Inside the building.
Watch the dialogue
Witness the Vision of the Sailor's Memory |q 46727/2 |goto 85.04,32.65
step
talk Anduin Wrynn##120756
|tip Inside the building.
turnin Tides of War##46727 |goto 85.30,32.28
accept The Nation of Kul Tiras##46728 |goto 85.30,32.28
step
Leave the building |goto 80.66,37.83 < 10 |walk
talk Lady Jaina Proudmoore##120590 |goto 22.80,24.69
Tell her _"I'm ready to set sail!"_
Speak with Lady Jaina Proudmoore |goto Boralus/0 65.57,50.74 < 50 |noway |c |q 46728 |or |next "Kul_Tiras_Intro_Quests"
_Or_
Tell her _"I've heard this tale before... <Skip the Kul Tiras introductory quests and begin your journey in Boralus.>"_
Skip the Kul Tiras Introductory Quests |condition completedq(46728) |or |next "Skip_Kul_Tiras_Intro_Quests"
step
label "Kul_Tiras_Intro_Quests"
talk Lady Jaina Proudmoore##120922
turnin The Nation of Kul Tiras##46728 |goto 65.58,50.73
accept Daughter of the Sea##51341 |goto 65.58,50.73
step
Watch the dialogue
Attend the Audience with Katherine Proudmoore |q 51341/1
step
Travel to Tol Dagor |goto Tol Dagor/7 46.51,47.97 < 10 |noway |c |q 51341
step
talk Flynn Fairwind##121239
|tip Inside the building.
turnin Daughter of the Sea##51341 |goto Tol Dagor/7 47.38,46.26
accept Out Like Flynn##47098 |goto Tol Dagor/7 47.38,46.26
step
Watch the dialogue
clicknpc Flynn Fairwind##121239
|tip Inside the building.
Watch the dialogue
Punch Flynn |q 47098/1 |goto 46.63,45.52
step
click Cell Block Lever
|tip Inside the building.
Watch the dialogue
Pull the Cell Block Lever |q 47098/2 |goto 46.60,41.15
step
click Equipment Locker##213651
|tip Inside the building.
Recover the Equipment |q 47098/3 |goto 46.95,44.47
step
kill Block Warden Carmine##124024 |q 47098/4 |goto 40.28,54.77
|tip Inside the building.
step
click Glittering Gunpowder
|tip Inside the building.
collect Glittering Gunpowder##160326 |q 47098/5 |goto 43.57,54.08
step
click Cell Block Gate
|tip Inside the building.
Watch the dialogue
Open the Cell Block Gate |q 47098/6 |goto 43.09,36.95
step
Run down the stairs |goto 44.58,35.82 < 10 |walk
Follow the path |goto 47.92,43.91 < 10 |walk
Enter the Sewers |q 47098/7 |goto 39.10,51.40
|tip Inside the building.
step
Follow the path |goto 38.00,54.68 < 10
Leave the tunnel |goto 51.12,47.46 < 10 |walk
Follow the path |goto 62.12,48.11 < 15 |only if walking
clicknpc Getaway Boat##124030
Board the Getaway Boat |q 47098/8 |goto 60.98,26.32
step
Watch the dialogue
Travel to Boralus |goto Boralus/0 75.87,23.40 < 50 |noway |q 47098
step
label "Skip_Kul_Tiras_Intro_Quests"
talk Taelia##121235
turnin Out Like Flynn##47098 |goto 75.70,23.59
accept Get Your Bearings##47099 |goto 75.70,23.59
step
Watch the dialogue
Visit the Ferry Dock |q 47099/1 |goto 74.25,24.58
step
Run up the stairs |goto 73.74,21.70 < 10 |only if walking
Run up the stairs |goto 74.97,22.98 < 10 |only if walking
Enter the building |goto 75.57,19.08 < 10 |walk
Watch the dialogue
|tip Inside the building.
Visit the Tradewinds Counting House |q 47099/2 |goto 75.57,17.92
step
Run up the stairs |goto 74.55,18.45 < 10 |only if walking
Enter the building |goto 73.55,13.71 < 10 |walk
Watch the dialogue
|tip Inside the building.
Visit the Snug Harbor Tavern |q 47099/3 |goto 73.63,13.05
step
talk Wesley Rockhold##135153
|tip Inside the building.
home The Snug Harbor |goto 74.12,12.68 |q 47189 |future
step
Watch the dialogue
Visit the Flight Master |q 47099/4 |goto 67.14,15.35
step
talk Joan Weber##124725
fpath Tradewinds Market |goto 66.97,15.01
step
_Next to you:_
talk Taelia
turnin Get Your Bearings##47099
accept The Old Knight##46729
step
Jump down here |goto 70.30,17.54 < 10 |only if walking
Enter the building |goto 68.83,21.11 < 10 |walk
Watch the dialogue
Find Cyrus Crestfall |q 46729/1 |goto 67.08,23.47
step
Watch the dialogue
talk Cyrus Crestfall##122370
|tip Inside the building.
Choose _<Shake his hand.>_
Speak with Cyrus Crestfall |q 46729/2 |goto 68.01,21.89
step
Watch the dialogue
|tip Inside the building.
Hear Cyrus' Tale |q 46729/3 |goto 68.01,21.89
step
talk Taelia##121235
|tip Inside the building.
turnin The Old Knight##46729 |goto 68.17,21.97
accept Sanctum of the Sages##47186 |goto 68.17,21.97
step
Watch the dialogue
talk Cyrus Crestfall##122370
|tip Inside the building.
accept Ferry Pass##52128 |goto 68.01,21.89
step
talk Cyrus Crestfall##122370
|tip Inside the building.
turnin Ferry Pass##52128 |goto 68.01,21.89
step
talk Cyrus Crestfall##122370
|tip Inside the building.
turnin Ferry Pass##52128 |goto 68.01,21.89
step
Leave the building |goto 68.79,21.11 < 10 |walk
Enter the building |goto 70.40,17.68 < 10 |walk
talk 7th Legion Magus##137066
|tip Inside the building.
Tell her _"The local authority has given us permission to open portals here."_
Speak with the 7th Legion Magus |q 47186/1 |goto 70.74,16.31
step
Enter the building |goto 68.83,21.11 < 10 |walk
talk Taelia##121235
|tip Inside the building.
turnin Sanctum of the Sages##47186 |goto  68.17,21.97
accept A Nation Divided##47189 |goto 68.17,21.97
step
Watch the dialogue
click Scouting Map
|tip Inside the building.
Inspect the Scouting Map |q 47189/1 |goto 68.38,22.10
step
talk Taelia##121235
|tip Inside the building.
turnin A Nation Divided##47189 |goto 68.17,21.97
step
label "Choose_Next_Questing_Zone_BFA"
click Scouting Map |goto Boralus/0 68.38,22.06
|tip Inside the building.
|tip You are choosing the zone you wish to do quests in next.
|tip Pick whichever you like, it doesn't matter.
accept Tiragarde Sound##47960 |or |next "Tiragarde_Sound_Start" |only if not completedq(47960)
accept Drustvar##47961 |or |next "Drustvar_Start" |only if not completedq(47961)
accept Stormsong Valley##47962 |or |next "Stormsong_Valley_Start" |only if not completedq(47962)
Completing Guide |next "All_Zones_Completed_BFA" |only if completedq(47960) and completedq(47962) and completedq(47961)
step
label "Tiragarde_Sound_Start"
talk Taelia##121235
|tip Inside the building.
turnin Tiragarde Sound##47960 |goto Boralus/0 68.17,21.97 |next "Leveling Guides\\Battle for Azeroth (110-120)\\Kul Tiras\\Tiragarde Sound"
step
label "Drustvar_Start"
talk Taelia##121235
|tip Inside the building.
turnin Drustvar##47961 |goto Boralus/0 68.17,21.97 |next "Leveling Guides\\Battle for Azeroth (110-120)\\Kul Tiras\\Drustvar"
step
label "Stormsong_Valley_Start"
talk Taelia##121235
|tip Inside the building.
turnin Stormsong Valley##47962 |goto Boralus/0 68.17,21.97 |next "Leveling Guides\\Battle for Azeroth (110-120)\\Kul Tiras\\Stormsong Valley"
step
label "All_Zones_Completed_BFA"
_Congratulations!_
You unlocked all of the questing zones.
]])
ZGV.BETASTART()
ZGV.BETAEND()
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (110-120)\\War Campaign",{
author="support@zygorguides.com",
description="This guide will walk you through the Alliance War Campaign for Battle for Azeroth.",
condition_suggested=function() return level >= 110 and level <= 120 and not completedq(52790) and completedq(47189) end,
image=ZGV.DIR.."\\Guides\\Images\\WarCampaign",
},[[
step
Unlock the War Campaign |condition completedq(47189)
|tip Use the "Intro & Quest Zone Choice" guide to accomplish this.
step
talk Genn Greymane##120788
|tip Inside the building.
accept The War Campaign##52654 |goto Boralus/0 68.05,22.18 |q 52544 |future
step
talk Halford Wyrmbane##135612
|tip On the ship.
turnin The War Campaign##52654 |goto 69.27,27.01 |only if havequest(52654) or completedq(52654)
accept The War Cache##52544 |goto 69.27,27.01
step
Gather #100# War Resources |q 52544/1
|tip Gather these mainly from treasure chests.
|tip You will also occasionally get some from completing quests as you level.
|tip Treasure chests appear in random locations in leveling zones.
|tip As you complete quests, look for silver treasure chest icons on your minimap.
|tip Also look for silver arrows around the edge of your minimap.
|tip These silver arrows point you to nearby treasure chests.
step
Click the Complete Quest Box:
turnin The War Cache##52544
accept Time for War##53332
step
talk Halford Wyrmbane##135612
turnin Time for War##53332 |goto 69.27,27.00
step
talk Falstad Wildhammer##135618
accept Mission from the King##51714 |goto 69.73,27.79
step
talk Master Mathias Shaw##135614
turnin Mission from the King##51714 |goto 70.72,27.08
accept War of Shadows##51715 |goto 70.72,27.08
step
click Mission Command Table
|tip Click the "Missions" tab at the bottom of the window that appears.
Complete the "War of Shadows" Mission |q 51715/1 |goto 70.56,27.19
|tip This mission will take 2 hours to complete.
step
talk Master Mathias Shaw##135614
turnin War of Shadows##51715 |goto 70.72,27.09
accept Reinforcements##53074 |goto 70.72,27.09
step
talk Master Mathias Shaw##135614
Tell him _"I require reinforcements."_
|tip Recruit 1 Alliance Troop.
Order Troops |q 53074/1 |goto 70.72,27.09
step
talk Master Mathias Shaw##135614
turnin Reinforcements##53074 |goto 70.72,27.09
step
Reach Level 112 |ding 112
|tip You must be at least level 112 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
talk Halford Wyrmbane##135612
accept The Zandalar Campaign##51569 |goto 69.27,26.99
step
click Zandalar Campaign
|tip You will only be able to accept one of these quests.
|tip Pick whichever one you like, it doesn't matter.
#include "Choose_Foothold_1"
step
label "Zuldazar_Foothold_1"
#include "Zuldazar_Foothold_Quests"
step
|next "Reach_Level_114"
step
label "Nazmir_Foothold_1"
#include "Nazmir_Foothold_Quests"
step
|next "Reach_Level_114"
step
label "Voldun_Foothold_1"
#include "Voldun_Foothold_Quests"
step
|next "Reach_Level_114"
step
label "Reach_Level_114"
Reach Level 114 |ding 114
|tip You must be at least level 114 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
talk Alleria Windrunner##143846
accept Adapting Our Tactics##53583 |goto Boralus/0 70.64,27.39
step
talk Alleria Windrunner##143846
Tell her _"Show me our research options."_
Choose an Upgrade to Pursue |q 53583/1 |goto 70.64,27.39
step
talk Alleria Windrunner##143846
turnin Adapting Our Tactics##53583 |goto 70.64,27.39
step
talk Halford Wyrmbane##135612
accept The Ongoing Campaign##51961 |goto 69.27,27.00
step
click Zandalar Campaign
|tip You will only be able to accept one of these quests.
|tip Pick whichever one you like, it doesn't matter.
#include "Choose_Foothold_2"
step
label "Zuldazar_Foothold_2"
#include "Zuldazar_Foothold_Quests"
step
|next "Reach_Level_116"
step
label "Nazmir_Foothold_2"
#include "Nazmir_Foothold_Quests"
step
|next "Reach_Level_116"
step
label "Voldun_Foothold_2"
#include "Voldun_Foothold_Quests"
step
|next "Reach_Level_116"
step
label "Reach_Level_116"
Reach Level 116 |ding 116
|tip You must be at least level 116 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
talk Halford Wyrmbane##135612
turnin The Azerite Advantage##53061 |goto Boralus/0 69.28,27.00 |only if havequest(53061) or completedq(53061)
accept Island Expedition##51903 |goto Boralus/0 69.28,27.00 |or |next "Start_Island_Expedition_Intro"
|tip
_NOTE:_
|tip You can only complete the Island Expedition introduction quest on one character.
|tip You may not be able to accept this quest.
Click Here If You Are Unable to Accept the Quest |confirm |q 52443 |future |or |next "Reach_Level_118"
step
label "Start_Island_Expedition_Intro"
talk Flynn Fairwind##131290
turnin Island Expedition##51903 |goto 66.86,33.24
accept Island Expedition##51904 |goto 66.86,33.24
step
talk Flynn Fairwind##131290
Tell him _"Let's go!"_
Speak with Flynn Fairwind |q 51904/1 |goto 66.86,33.24
step
Watch the dialogue
|tip The waypoint arrow does not work on island expedition maps.
|tip Use your world map and minimap to complete the scenario objectives.
|tip The scenario is simple to do, everything is nearby and easy to find.
Explore the Uncharted Island |q 51904/2
step
Return to Boralus |goto Boralus/0 70.73,32.75 < 10 |noway |c |q 51904
step
talk Flynn Fairwind##131290
turnin Island Expedition##51904 |goto Boralus/0 66.87,33.23
step
label "Reach_Level_118"
Reach Level 118 |ding 118
|tip You must be at least level 118 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
talk Halford Wyrmbane##135612
accept The Final Foothold##52443 |goto Boralus/0 69.28,26.99
step
click Zandalar Campaign
|tip Pick the last available quest.
#include "Choose_Foothold_3"
step
label "Zuldazar_Foothold_3"
#include "Zuldazar_Foothold_Quests"
step
|next "Reach_Level_120"
step
label "Nazmir_Foothold_3"
#include "Nazmir_Foothold_Quests"
step
|next "Reach_Level_120"
step
label "Voldun_Foothold_3"
#include "Voldun_Foothold_Quests"
step
|next "Reach_Level_120"
step
label "Reach_Level_120"
Reach Level 120 |ding 120
|tip You must be at least level 120 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
talk Halford Wyrmbane##135612
accept Uniting Kul Tiras##51918 |goto 69.28,27.00
step
Reach Friendly Reputation with the Proudmoore Admiralty in Tiragarde Sound |q 51918/1
|tip Use the "Tiragarde Sound" leveling guide to accomplish this.
step
Reach Friendly Reputation with the Storm's Wake in Stormsong Valley |q 51918/2
|tip Use the "Stormsong Valley" leveling guide to accomplish this.
step
Reach Friendly Reputation with the Order of Embers in Drustvar |q 51918/3
|tip Use the "Drustvar" leveling guide to accomplish this.
step
talk Halford Wyrmbane##135612
turnin Uniting Kul Tiras##51918 |goto 69.28,27.00
]])
