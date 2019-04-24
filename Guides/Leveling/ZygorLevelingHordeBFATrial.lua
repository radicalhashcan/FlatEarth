local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("LevelingHBFA") then return end
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
Starting Guide |next "Fresh_Start_BFA" |only if not completedq(52131)
Starting Guide |next "Choose_Next_Questing_Zone_BFA" |only if completedq(52131)
step
label "Fresh_Start_BFA"
accept Hour of Reckoning##53372
|tip Relog if you do not automatically accept this quest.
step
Enter the building |goto Orgrimmar/1 49.88,75.54 < 10 |walk
talk High Overlord Saurfang##14720
|tip Inside the building.
turnin Hour of Reckoning##53372 |goto Orgrimmar/1 48.52,70.73
accept The Battle for Lordaeron##51796 |goto Orgrimmar/1 48.52,70.73
step
talk Isabella##139093
|tip Inside the building.
Tell her _"I am ready to go to the Undercity."_
Travel to Lordaeron |scenariostart |goto 47.79,71.69 |q 51796 |or |next "Intro_Scenario"
|tip It may take a moment to enter the scenario.
_Or_
Tell her _"I've heard this tale before... <Skip the scenario and begin your next mission.>"_
|tip This will allow you to skip the intro scenario if you've already completed it on another character.
Skip the Battle for Lordaeron |condition readyq(51796) |goto 47.79,71.69 |or |future |next "Intro_Scenario_Completed"
step
label "Intro_Scenario"
Watch the dialogue
Report to High Overlord Saurfang |scenariogoal 1/38253 |goto Undercity BFA/0 84.42,25.60 |q 51796
step
talk Friendly NPCs
|tip They have various names, and are highlighted around this area inside the building.
|tip They appear on your minimap as yellow dots.
Tell them "_The Undercity is under attack! Get to the mage portal!"_
kill SI:7 Operative##131137+
Secure the Mage Distrct |scenariostage 2 |goto 75.33,30.32 |q 51796
step
Follow the path |goto 79.69,43.74 < 15 |only if walking
Watch the dialogue
|tip Follow High Overlord Saurfang as he walks.
Follow Saurfang to the Heart of the City |scenariogoal 3/38468 |goto 69.60,49.58 |q 51796
step
talk Friendly NPCs
|tip They have various names, and are highlighted around this area inside the building.
Tell them "_The Undercity is under attack! Get to the mage portal!"_
Evacuate the Remainder of Undercity |scenariostage 4 |goto 67.21,46.18 |q 51796
step
clicknpc Portal to Lordaeron##131087 |goto 67.08,45.95
|tip Inside the building.
Teleport to the Ruins of Lordaeron |goto Ruins of Lordaeron/0 48.08,74.52 < 10 |noway |c |q 51796
step
Watch the dialogue
|tip Follow High Overlord Saurfang as he walks.
Follow Saurfang to Battle |scenariogoal 5/39077 |goto 48.13,68.72 |q 51796
step
Kill enemies around this area
Break Their Front Line |scenariostage 6 |goto 48.27,66.90 |q 51796
step
Watch the dialogue
Kill the enemies that attack in waves
Defeat #3# Waves of Attackers |scenariogoal 7/39562 |goto 47.84,61.98 |q 51796
step
talk Sludge Guard##133115
Tell him _"Gas mask and blight canister, please. I want to see what this thing can do."_
Request a Gas Mask and Blight Canister |havebuff 629984 |goto 48.31,67.58 |q 51796
step
Kill enemies around this area
|tip Use the "Blight Canister" ability.
|tip It appears as a button on the screen.
|tip Try to make them run north.
clicknpc Wounded Horde Soldier##127065+
|tip They look like Alliance soldiers standing with huge partially filled red bubbles above their heads around this area.
|tip They will appear on your minimap as yellow dots.
Use the Blight on Alliance Forces to Drive Them Away |scenariostage 8 |goto 48.34,59.90 |q 51796
step
Run up the stairs |goto 49.01,72.28 < 10 |only if walking
Follow the path |goto 50.27,72.78 < 15 |only if walking
Follow the path |goto 51.94,75.98 < 30 |only if walking
Continue following the path |goto 51.61,86.86 < 30 |only if walking
Watch the dialogue
|tip Follow Nathanos Blightcaller as he runs.
Follow Nathanos to the Keep |scenariostage 9 |goto 46.53,89.24 |q 51796
step
Watch the dialogue
Intercept the Alliance |scenariostage 10 |goto 46.53,89.24 |q 51796
step
Kill enemies around this area
Defeat King Anduin Wrynn and His Allies |scenariostage 11 |goto 46.82,89.35 |q 51796
step
Run up the stairs |goto 51.91,74.60 < 10 |only if walking
Follow the path |goto 50.81,72.81 < 15 |only if walking
Watch the dialogue
|tip Follow Nathanos Blightcaller as he walks.
Follow Nathanos to Safety |scenariostage 12 |goto 48.18,74.28 |q 51796
step
Enter the building |goto 48.71,76.64 < 10 |walk
Watch the dialogue
Follow Sylvanas Windrunner |scenarioend |goto 48.10,78.26 |q 51796
step
Return to Orgrimmar |goto Orgrimmar/1 49.02,91.80 < 10 |c |q 51796 |notravel
step
label "Intro_Scenario_Completed"
talk Nathanos Blightcaller##140176
|tip On top of the building.
turnin The Battle for Lordaeron##51796 |goto 48.90,91.51
step
accept A Dying World##53028 |goto 48.90,91.51
|tip You will automatically accept this quest.
step
click Portal to Uldum
Take the Portal to Uldum to Get Closer to Silithus |q 53028/1 |goto 48.87,38.55
step
Reach Silithus |q 53028/2 |goto Silithus/0 42.22,44.27
step
talk Magni Bronzebeard##142322
turnin A Dying World##53028 |goto 42.22,44.27
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
accept The Speaker's Imperative##53031 |goto 50.14,53.75
step
click Teleport Pad
|tip Inside the building.
Return to Orgrimmar |q 53031/1 |goto 50.12,30.40
step
talk Nathanos Blightcaller##140176
|tip On top of the building.
turnin The Speaker's Imperative##53031 |goto Orgrimmar/1 48.91,91.51
accept Mission Statement##51443 |goto Orgrimmar/1 48.91,91.51
step
Enter the building |goto 49.88,75.54 < 10 |walk
Watch the dialogue
|tip Inside the building.
Speak to Warchief Sylvanas Windrunner |q 51443/1 |goto 49.36,74.06
step
Leave the building |goto 49.87,75.51 < 10 |walk
Enter the building |goto 53.46,78.85 < 10 |walk
Watch the dialogue
|tip Inside the building.
Meet Your Team |q 51443/2 |goto 54.43,78.43
step
Watch the dialogue
talk Nathanos Blightcaller##135205
|tip Inside the building.
turnin Mission Statement##51443 |goto 54.44,78.42
accept The Stormwind Extraction##50769 |goto 54.44,78.42
step
click Blightcaller's Easy Death##289645
|tip Inside the building.
Take a Potion |q 50769/1 |goto 54.58,78.36 |or |next "Stormwind_Jail_Break"
_Or_
Click Here to Skip the Stormwind Extraction Scenario |or |confirm |next "Skip_Stormwind_Jail_Break"
|tip This will allow you to skip the intro scenario if you've already completed it on another character.
step
label "Skip_Stormwind_Jail_Break"
talk Nathanos Blightcaller##135205
|tip Inside the building.
Tell him _"I have heard this story before. (Skip the Scenario and port to Zuldazar Harbor in Zandalar)"_
Skip the Stormwind Extraction |condition readyq(50769) |goto 54.44,78.42 |or |future |next "Stormwind_Jail_Break_Completed"
step
label "Stormwind_Jail_Break"
Leave the building |goto 53.43,78.86 < 10 |walk
clicknpc Skyhorn Eagle##135211
|tip On top of the building.
Begin Flying with the Skyhorn Eagle |invehicle |goto 49.67,93.66 |q 50769
step
Take the Transport from the Ramparts |q 50769/2
step
Begin the "The Stormwind Extraction" Scenario |scenariostart |q 50769
step
Watch the dialogue
Infiltrate Stormwind City |scenariogoal 1/39765 |goto Stormwind City BFA/0 47.22,59.58 |q 50769 |notravel
step
clicknpc Padlock##134070+
|tip They look like dark metal locks on the wooden door on the ground in the water.
Open the Sewer Access Gate |scenariogoal 2/0 |goto 46.24,58.13 |q 50769
step
Enter the Stockades |scenariogoal 2/39766 |goto 46.27,58.09 |q 50769
|tip Jump down into the swirling portal.
step
Enter the Stormwind Stockades |goto Stockcades Scenario/0 25.18,52.52 < 7 |noway |c |q 50769
step
Follow the path |goto 31.80,62.16 < 10 |walk
Run up the stairs |goto 46.51,52.52 < 15 |walk
Meet Up With Rokhan |scenariostage 3 |goto 52.11,40.12 |q 50769
step
talk High Overlord Saurfang##134120
|tip Inside the building.
|tip Click the Cell Door to be able to reach him.
Ask him _"What do you mean?"_
Watch the dialogue
Release Saurfang |scenariostage 4 |goto 48.01,33.48 |q 50769
step
Follow the path |goto 59.80,59.49 < 10 |walk
click Cell Door
|tip Inside the building.
Release the Other Prisoners |scenariogoal 5/39781 |goto 55.98,64.10 |q 50769
step
Run down the stairs |goto 55.83,41.61 < 10 |walk
Watch the dialogue
|tip Follow your allies as they walk.
clicknpc Stormwind Sewer Access##139948
|tip Inside the building.
Escape the Stockades |scenariogoal 5/39786 |goto 87.05,23.22 |q 50769
step
talk Rokhan##134038
Tell him _"Let's go."_
Watch the dialogue
|tip Follow your allies as they walk.
|tip Stay within the circle on the ground beneath Rokhan as you walk.
Begin Following Rokhan |goto Stormwind City BFA/0 71.09,46.71 > 15 |c |q 50769
step
Watch the dialogue
|tip Follow your allies as they walk.
|tip Stay within the circle on the ground beneath Rokhan as you walk.
|tip Jump off the bridge into the water when your allies tell you to.
|tip Talk to Rokhan again when he stops, to get him to continue walking.
Follow Rokhan |scenariostage 6 |goto Stormwind City BFA/0 55.81,56.85 |q 50769
step
Kill the enemies that attack
Defeat the Worgen Ambush |scenariogoal 7/39795 |goto 55.81,56.85 |q 50769
step
Watch the dialogue
|tip Follow your allies as they walk.
talk Nathanos Blightcaller##134039
Tell him _"I'm ready."_
Escape Cathedral Square |scenariostage 7 |goto 45.44,43.18 |q 50769
step
Watch the dialogue
|tip Follow your allies as they walk.
kill Icy Barrier##134881
Escape Jaina's Wrath |scenariostage 8 |goto 39.76,40.63 |q 50769
step
Watch the dialogue
|tip Follow your allies as they walk.
Reach Talanji's Ship |scenariostage 9 |goto 20.60,25.75 |q 50769
step
Watch the dialogue
talk Princess Talanji##134092
|tip At the top of the ship.
Tell her _"Not at all."_
Escape Stormwind Harbor |scenarioend |goto 20.54,28.94 |q 50769
step
Complete the "The Stormwind Extraction" Scenario |q 50769/3 |next "Stormwind_Jail_Break_Completed"
step
label "Stormwind_Jail_Break_Completed"
Travel to Zuldazar |goto Zuldazar/0 57.98,62.80 < 10 |noway |c |q 50769
step
talk Nathanos Blightcaller##121210
turnin The Stormwind Extraction##50769 |goto Zuldazar/0 57.95,62.76
step
talk Princess Talanji##132332
accept Welcome to Zuldazar##46957 |goto 57.95,62.46
step
Watch the dialogue
|tip Follow Princess Talanji as she walks.
Follow Princess Talanji |q 46957/1 |goto Dazar'alor/0 49.98,82.60
step
talk General Jakra'zet##122661
turnin Welcome to Zuldazar##46957 |goto 49.98,82.33
accept Rastakhan##46930 |goto 49.98,82.33
step
Follow the path |goto 51.21,86.29 < 15 |only if walking
talk Ripa the Wind Ripper##121252
fpath Port of Zandalar |goto 52.10,90.12
step
clicknpc Enforcer's Pterrordax##135438
Ride the Enforcer's Pterrordax to the Throne |q 46930/1 |goto 49.98,82.17
step
Watch the dialogue
Ride to the Throne |goto 48.03,44.45 < 7 |c |q 46930 |notravel
step
talk Princess Talanji##135440
|tip On top of the building.
Tell her _"Take me to King Rastakhan."_
Speak with Princess Talanji |q 46930/2 |goto 48.82,44.64
step
Watch the dialogue
talk King Rastakhan##120740
|tip On top of the building.
turnin Rastakhan##46930 |goto 49.91,42.72
accept Speaker of the Horde##46931 |goto 49.91,42.72
step
Enter the building |goto Dazar'alor/2 29.17,59.39 < 10 |walk
Watch the dialogue
|tip Follow Zolani as she walks.
Follow Zolani |q 46931/1 |goto Dazar'alor/2 25.91,73.81
step
click Horde Banner
Summon the Horde |q 46931/2 |goto Dazar'alor/0 49.93,39.49
step
Enter the building |goto 49.94,42.14 < 10 |walk
Follow the path |goto Dazar'alor/1 58.14,35.76 < 10 |walk
Watch the dialogue
|tip Inside the building.
Explore the Hall of Ancient Paths |q 46931/4 |goto Dazar'alor/1 66.92,72.06
step
Watch the dialogue
|tip Inside the building.
Explore the Great Seal |q 46931/3 |goto 49.09,70.79
step
Watch the dialogue
|tip Inside the building.
Explore the Royal Treasury |q 46931/5 |goto Dazar'alor/0 48.76,45.89 |notravel
step
Follow the path |goto Dazar'alor/1 39.43,35.47 < 10 |walk
talk Chronicler To'kini##120168
|tip Inside the building.
turnin Speaker of the Horde##46931 |goto Dazar'alor/1 32.99,43.38
accept To Matters at Hand##52139 |goto Dazar'alor/1 32.99,43.38
step
talk Princess Talanji##133050
|tip Inside the building.
turnin To Matters at Hand##52139 |goto Dazar'alor/2 41.14,66.73
accept We Need Each Other##52131 |goto Dazar'alor/2 41.14,66.73
step
Watch the dialogue
talk Princess Talanji##133050
|tip Inside the building.
turnin We Need Each Other##52131 |goto 41.14,66.73
step
label "Choose_Next_Questing_Zone_BFA"
click Scouting Map |goto Dazar'alor/2 41.71,69.41
|tip Inside the building.
|tip You are choosing the zone you wish to do quests in next.
|tip Pick whichever you like, it doesn't matter.
accept Zuldazar##47514|or |next "Zuldazar_Start" |only if not completedq(47514)
accept Nazmir##47512 |or |next "Nazmir_Start" |only if not completedq(47512)
accept Vol'dun##47513 |or |next "Voldun_Start" |only if not completedq(47513)
Completing Guide |next "All_Zones_Completed_BFA" |only if completedq(47514) and completedq(47512) and completedq(47513)
step
label "Zuldazar_Start"
talk Princess Talanji##133050
|tip Inside the building.
turnin Zuldazar##47514 |goto Dazar'alor/2 41.14,66.73 |next "Leveling Guides\\Battle for Azeroth (110-120)\\Zandalar\\Zuldazar"
step
label "Nazmir_Start"
talk Princess Talanji##133050
|tip Inside the building.
turnin Nazmir##47512 |goto Dazar'alor/2 41.14,66.73 |next "Leveling Guides\\Battle for Azeroth (110-120)\\Zandalar\\Nazmir"
step
label "Voldun_Start"
talk Princess Talanji##133050
|tip Inside the building.
turnin Vol'dun##47513 |goto Dazar'alor/2 41.14,66.73 |next "Leveling Guides\\Battle for Azeroth (110-120)\\Zandalar\\Vol'dun"
step
label "All_Zones_Completed_BFA"
_Congratulations!_
You unlocked all of the questing zones.
]])
ZGV.BETASTART()
ZGV.BETAEND()
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (110-120)\\War Campaign",{
author="support@zygorguides.com",
description="This guide will walk you through the Horde War Campaign for Battle for Azeroth.",
condition_suggested=function() return level >= 110 and level <= 120 and not completedq(53003) and completedq(52131) end,
image=ZGV.DIR.."\\Guides\\Images\\WarCampaign",
},[[
step
Unlock the War Campaign |condition completedq(52131)
|tip Use the "Intro & Quest Zone Choice" guide to accomplish this.
step
talk Nathanos Blightcaller##120170
|tip Inside the building.
accept The War Campaign##52749 |goto Dazar'alor/2 40.18,71.70
step
talk Nathanos Blightcaller##135691
turnin The War Campaign##52749 |goto Zuldazar/0 58.44,62.67
accept The War Cache##52746 |goto Zuldazar/0 58.44,62.67
step
Gather #100# War Resources |q 52746/1
|tip Gather these mainly from treasure chests.
|tip You will also occasionally get some from completing quests as you level.
|tip Treasure chests appear in random locations in leveling zones.
|tip As you complete quests, look for silver treasure chest icons on your minimap.
|tip Also look for silver arrows around the edge of your minimap.
|tip These silver arrows point you to nearby treasure chests.
step
Click the Complete Quest Box:
turnin The War Cache##52746
accept Time for War##53333
step
talk Nathanos Blightcaller##135691
turnin Time for War##53333 |goto 58.44,62.67
step
talk Nathanos Blightcaller##135691
accept Mission from the Warchief##51770 |goto 58.44,62.67
step
Watch the dialogue
talk Garona Halforcen##138708
|tip She walks to this spot on the deck of the ship.
turnin Mission from the Warchief##51770 |goto Dazar'alor/0 51.69,99.68
accept War of Shadows##51771 |goto Dazar'alor/0 51.69,99.68
step
clicknpc Mission Command Table
|tip Click the "Missions" tab at the bottom of the window that appears.
Complete "The Shadow War" Mission |q 51771/1 |goto 51.60,99.55
|tip This mission will take 2 hours to complete.
step
talk Garona Halforcen##138708
turnin War of Shadows##51771 |goto 51.69,99.68
accept Reinforcements##53079 |goto 51.69,99.68
step
talk Garona Halforcen##138708
Tell her _"I require reinforcements."_
|tip Recruit 1 Horde Troop.
Order Troops |q 53079/1 |goto 51.69,99.69
step
talk Garona Halforcen##138708
turnin Reinforcements##53079 |goto 51.69,99.68
step
Reach Level 112 |ding 112
|tip You must be at least level 112 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
talk Nathanos Blightcaller##135691
accept The Kul Tiras Campaign##51803 |goto Zuldazar/0 58.44,62.67
step
click Kul Tiras Campaign
|tip You will only be able to accept one of these quests.
|tip Pick whichever one you like, it doesn't matter.
#include "Choose_Foothold_1"
step
label "Tiragarde_Sound_Foothold_1"
#include "Tiragarde_Sound_Foothold_Quests"
step
|next "Reach_Level_114"
step
label "Drustvar_Foothold_1"
#include "Drustvar_Foothold_Quests"
step
|next "Reach_Level_114"
step
label "Stormsong_Valley_Foothold_1"
#include "Stormsong_Valley_Foothold_Quests"
step
|next "Reach_Level_114"
step
label "Reach_Level_114"
Reach Level 114 |ding 114
|tip You must be at least level 114 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
talk Eitrigg##143913
accept Adapting Our Tactics##53602 |goto Zuldazar/0 58.56,62.72
step
talk Eitrigg##143913
Tell him _"Show me our research options."_
Choose an Upgrade to Pursue |q 53602/1 |goto 58.56,62.72
step
talk Eitrigg##143913
turnin Adapting Our Tactics##53602 |goto 58.56,62.72
step
talk Nathanos Blightcaller##135691
turnin Deeper Into Kul Tiras##53050 |goto 58.44,62.67 |only if havequest(53050) or completedq(53050)
accept The Ongoing Campaign##51979 |goto 58.44,62.67
step
click Kul Tiras Campaign
|tip You will only be able to accept one of these quests.
|tip Pick whichever one you like, it doesn't matter.
#include "Choose_Foothold_2"
step
label "Tiragarde_Sound_Foothold_2"
#include "Tiragarde_Sound_Foothold_Quests"
step
|next "Reach_Level_116"
step
label "Drustvar_Foothold_2"
#include "Drustvar_Foothold_Quests"
step
|next "Reach_Level_116"
step
label "Stormsong_Valley_Foothold_2"
#include "Stormsong_Valley_Foothold_Quests"
step
|next "Reach_Level_116"
step
label "Reach_Level_116"
Reach Level 116 |ding 116
|tip You must be at least level 116 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
talk Nathanos Blightcaller##135691
turnin The Azerite Advantage##53062 |goto Zuldazar/0 58.44,62.67 |only if havequest(53062) or completedq(53062)
accept Island Expedition##51870 |goto Zuldazar/0 58.44,62.67 |or |next "Start_Island_Expedition_Intro"
|tip
_NOTE:_
|tip You can only complete the Island Expedition introduction quest on one character.
|tip You may not be able to accept this quest.
Click Here If You Are Unable to Accept the Quest |confirm |q 52444 |future |future |or |next "Reach_Level_118"
step
label "Start_Island_Expedition_Intro"
talk Captain Rez'okun##123000
turnin Island Expedition##51870 |goto Dazar'alor/0 44.80,95.46
accept Island Expedition##51888 |goto Dazar'alor/0 44.80,95.46
step
talk Captain Rez'okun##123000
Tell him _"Let's go!"_
Use the Expedition Map |q 51888/1 |goto 44.80,95.46
step
Watch the dialogue
|tip The waypoint arrow does not work on island expedition maps.
|tip Use your world map and minimap to complete the scenario objectives.
|tip The scenario is simple to do, everything is nearby and easy to find.
Explore the Uncharted Island |q 51888/2
step
talk Captain Rez'okun##123000
turnin Island Expedition##51888 |goto Dazar'alor/0 44.80,95.45
step
label "Reach_Level_118"
Reach Level 118 |ding 118
|tip You must be at least level 118 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
talk Nathanos Blightcaller##135691
turnin Pushing Our Influence##53056 |goto Zuldazar/0 58.44,62.67 |only if havequest(53056) or completedq(53056)
accept The Final Foothold##52444 |goto Zuldazar/0 58.44,62.67
step
click Kul Tiras Campaign
|tip Pick the last available quest.
#include "Choose_Foothold_3"
step
label "Tiragarde_Sound_Foothold_3"
#include "Tiragarde_Sound_Foothold_Quests"
|next "Reach_Level_120"
step
label "Drustvar_Foothold_3"
#include "Drustvar_Foothold_Quests"
|next "Reach_Level_120"
step
label "Stormsong_Valley_Foothold_3"
#include "Stormsong_Valley_Foothold_Quests"
|next "Reach_Level_120"
step
label "Reach_Level_120"
Reach Level 120 |ding 120
|tip You must be at least level 120 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
talk Nathanos Blightcaller##135691
accept Uniting Zandalar##51916 |goto Zuldazar/0 58.44,62.67
step
Reach Friendly Reputation with the Zandalari Empire in Zuldazar |q 51916/1
|tip Use the "Zuldazar" leveling guide to accomplish this.
step
Reach Friendly Reputation with Talanji's Expedition in Nazmir |q 51916/2
|tip Use the "Nazmir" leveling guide to accomplish this.
step
Reach Friendly Reputation with the Voldunai in Vol'dun |q 51916/3
|tip Use the "Vol'dun" leveling guide to accomplish this.
step
talk Nathanos Blightcaller##135691
turnin Uniting Zandalar##51916 |goto 58.44,62.67
]])
