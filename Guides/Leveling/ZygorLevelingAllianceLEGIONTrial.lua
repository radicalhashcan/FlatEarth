local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("LevelingALEGION") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Legion (100-110)\\Death Knight\\Death Knight Intro & Artifacts",{
author="support@zygorguides.com",
description="This guide will walk you through completing the introductory Legion quests and unlocking your class artifacts.",
condition_suggested=function() return level >= 100 and level <= 110 and raceclass('DeathKnight') end,
condition_valid=function() return raceclass('DeathKnight') and level >= 98 end,
condition_valid_msg="You must be a Death Knight and at least level 98 to complete this guide!",
image=ZGV.DIR.."\\Guides\\Images\\The_Broken_Shore",
startlevel=98.0,
},[[
step
click Hero's Call Board##250720
accept The Legion Returns##40519 |goto Stormwind City/0 62.89,71.57
|only if not havequest(43806)
step
talk Recruiter Lee##107934
turnin The Legion Returns##40519 |goto 37.1,43.1
accept To Be Prepared##42782 |goto 37.1,43.1
|only if not havequest(43806)
step
click Keg of Armor Polish##251195
Polish your Armor |q 42782/1 |goto 29.8,42.9
|only if not havequest(43806)
step
click Light-Infused Crystals##251235
Empower your Weapon |q 42782/2 |goto 30.0,34.1
|only if not havequest(43806)
step
click Ribs##251255
Eat your Last Meal |q 42782/3 |goto 29.7,29.2
|only if not havequest(43806)
step
talk Eunna Young##108750
|tip Fight her.
Warm Up with a Duel |q 42782/4 |goto 32.8,33.1
|only if not havequest(43806)
step
talk Knight Dameron##108916
turnin To Be Prepared##42782 |goto 19.0,26.5
accept The Battle for Broken Shore##42740 |goto 19.0,26.5
|only if not havequest(43806)
step
talk Captain Angelica##108920
Take the Ship to the Broken Shore |q 42740/1 |goto 19.9,29.4
|only if not havequest(43806)
step
Begin the "Battle for Broken Shore" Scenario |scenariostart |q 42740 |only if havequest(42740) or completedq(42740)
Begin the "Battle for Broken Shore" Scenario |scenariostart |q 43806 |only if havequest(43806) or completedq(43806)
step
Watch the dialogue |only if havequest(42740) or completedq(42740)
|tip Ride the boat to shore. |only if havequest(42740) or completedq(42740)
Travel to the Broken Shore |scenariostage 1 |goto Broken Shore/0 49.36,71.79 |q 42740 |only if havequest(42740) or completedq(42740)
Travel to the Broken Shore |scenariostage 1 |goto Broken Shore/0 49.36,71.79 |q 43806 |only if havequest(43806) or completedq(43806)
stickystart "fel_lords1"
stickystart "spires_of_woe"
step
Kill enemies around this area
|tip Follow the group.
Kill #33# Demons |scenariogoal 2/27653 |goto 48.4,70.5 |q 42740 |only if havequest(42740) or completedq(42740)
Kill #33# Demons |scenariogoal 2/27653 |goto 48.4,70.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
label "fel_lords1"
Kill enemies around this area
|tip Follow the group.
Kill #3# Fel Lords |scenariogoal 2/29377 |goto 48.4,70.5 |q 42740 |only if havequest(42740) or completedq(42740)
Kill #3# Fel Lords |scenariogoal 2/29377 |goto 48.4,70.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
label "spires_of_woe"
kill Anchoring Crystal##91704+
|tip Follow the group.
Destroy #3# Spires of Woe |scenariogoal 2/27619 |goto 48.4,70.5 |q 42740 |only if havequest(42740) or completedq(42740)
Destroy #3# Spires of Woe |scenariogoal 2/27619 |goto 48.4,70.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
kill Dread Commander Arganoth##90705 |goto 48.4,70.5 |scenariogoal 3/30883 |q 42740 |only if havequest(42740) or completedq(42740)
kill Dread Commander Arganoth##90705 |goto 48.4,70.5 |scenariogoal 3/30883 |q 43806 |only if havequest(43806) or completedq(43806)
step
Run up the path |goto 49.40,66.41 < 30
Watch the dialogue
|tip Follow the group.
Find Varian |scenariostage 4 |goto 38.07,47.13 |q 42740 |only if havequest(42740) or completedq(42740)
Find Varian |scenariostage 4 |goto 38.07,47.13 |q 43806 |only if havequest(43806) or completedq(43806)
step
kill Shielded Anchor##101667+
|tip They look like big floating green crystals.
Shatter #4# Shielded Anchors |scenariogoal 5/27940 |goto 39.0,43.7 |q 42740 |only if havequest(42740) or completedq(42740)
Shatter #4# Shielded Anchors |scenariogoal 5/27940 |goto 39.0,43.7 |q 43806 |only if havequest(43806) or completedq(43806)
step
Watch the dialogue
|tip Follow the group.
Kill enemies all around this area
Assault the Demon City |scenariostage 6 |goto 44.7,47.5 |q 42740 |only if havequest(42740) or completedq(42740)
Assault the Demon City |scenariostage 6 |goto 44.7,47.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
Watch the dialogue
|tip Follow the group.
Get to Tirion |scenariostage 7 |goto 55.8,32.2 |q 42740 |only if havequest(42740) or completedq(42740)
Get to Tirion |scenariostage 7 |goto 55.8,32.2 |q 43806 |only if havequest(43806) or completedq(43806)
step
Kill enemies around this area
kill Krosus##90544
Slay Krosus |scenariostage 8 |goto 55.8,32.2 |q 42740 |only if havequest(42740) or completedq(42740)
Slay Krosus |scenariostage 8 |goto 55.8,32.2 |q 43806 |only if havequest(43806) or completedq(43806)
step
Follow the path up |goto 55.98,31.21 < 20
Watch the dialogue
|tip Follow the group
Kill the enemies that attack in waves
Confront Gul'dan |scenarioend |goto 58.3,27.5 |q 42740 |only if havequest(42740) or completedq(42740)
Assault the Broken Shore |q 42740/2 |goto 58.3,27.5 |only if havequest(42740) or completedq(42740)
Confront Gul'dan |scenarioend |goto 58.3,27.5 |q 43806 |only if havequest(43806) or completedq(43806)
Assault the Broken Shore |q 43806/1 |goto 58.3,27.5 |only if havequest(43806) or completedq(43806)
step
talk Genn Greymane##100395
turnin The Battle for Broken Shore##42740 |goto Stormwind City/0 20.1,34.9 |only if havequest(42740) or completedq(42740)
turnin The Battle for Broken Shore##43806 |goto Stormwind City/0 20.1,34.9 |only if havequest(43806) or completedq(43806)
accept The Fallen Lion##40517 |goto Stormwind City/0 20.1,34.9
step
clicknpc Gilnean Gryphon##101819
Ride a Gryphon to Stormwind Keep |q 40517/1 |goto 21.3,33.7
step
talk Anduin Wrynn##100429
Watch the dialogue
Deliver Varian's Letter and Listen to King Anduin |q 40517/2 |goto 85.9,31.6
step
talk Anduin Wrynn##100429
turnin The Fallen Lion##40517 |goto 85.9,31.6
step
talk Jace Darkweaver##100675
accept Demons Among Us##40593 |goto 85.3,32.3
step
talk Jace Darkweaver##100675
Watch the dialogue
Learn what Jace Darkwhisper Knows about Demons |q 40593/1 |goto 85.3,32.3
stickystart "Kill_Infiltrators"
step
click Demon Portal##246707
Destroy the Courtyard Legion Portal |q 40593/3 |goto 82.5,27.9
step
Follow the path |goto 83.94,30.69 < 15
Go through the doorway |goto 81.55,35.60 < 15
click Demon Portal##246707
Destroy the Courtyard Legion Portal |q 40593/4 |goto 80.6,33.1
step
label "Kill_Infiltrators"
Kill enemies around this area
Kill #5# Infiltrators |q 40593/2 |goto 84.8,32.5
step
talk Anduin Wrynn##100973
turnin Demons Among Us##40593 |goto 85.8,31.8
accept Illidari Allies##44120 |goto 85.8,31.8
step
talk Elerion Bladedancer##101004
|tip On the balcony of the building.
turnin Illidari Allies##44120 |goto 40.3,77.7
step
talk Khadgar's Upgraded Servant##114562
|tip It appears next to you.
accept In the Blink of an Eye##44663 |goto 40.3,77.7 |or
accept In the Blink of an Eye##44184 |goto 40.3,77.7 |or
step
Enter the building |goto 80.75,37.75 < 15 |walk
Follow the path |goto 81.56,35.56 < 15 |walk
click Portal to Dalaran##251123
Watch the dialogue
Take the Portal to Dalaran |q 44663/1 |goto 80.31,35.02 |only if havequest(44663) or completedq(44663)
Take the Portal to Dalaran |q 44184/1 |goto 80.31,35.02 |only if havequest(44184) or completedq(44184)
step
Enter the building |goto Deadwind Pass/21 52.83,51.87 < 15 |walk
talk Archmage Khadgar##113986
Witness Dalaran's Teleportation |q 44663/2 |goto Deadwind Pass/21 49.84,48.31 |only if havequest(44663) or completedq(44663)
Witness Dalaran's Teleportation |q 44184/2 |goto Deadwind Pass/21 49.84,48.31 |only if havequest(44184) or completedq(44184)
step
talk Emissary Auldbridge##111109
turnin In the Blink of an Eye##44663 |goto Dalaran L/10 57.57,45.75 |only if havequest(44663) or completedq(44663)
turnin In the Blink of an Eye##44184 |goto Dalaran L/10 57.57,45.75 |only if havequest(44184) or completedq(44184)
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Legion (100-110)\\Demon Hunter\\Demon Hunter Intro & Artifacts",{
author="support@zygorguides.com",
description="This guide will walk you through completing the introductory Demon Hunter quests and unlocking the Havoc and Vengeance artifacts.",
condition_suggested=function() return raceclass('DemonHunter') and level >= 98 and level <= 110 end,
condition_valid=function() return raceclass('DemonHunter') and level >= 98 end,
condition_valid_msg="You must be a Demon Hunter and at least level 98 to complete this guide!",
image=ZGV.DIR.."\\Guides\\Images\\Mardum",
startlevel=98.0,
},[[
step
talk Kayn Sunfury##93011
accept The Invasion Begins##40077 |goto Mardum, the Shattered Abyss C/0 22.08,55.83
step
Kill enemies around this area
Slay #15# Demons |q 40077/1 |goto 28.10,65.30
step
click Legion Banner##250560
Change the Legion Banner |q 40077/2 |goto 28.66,62.92
step
talk Kayn Sunfury##98229
turnin The Invasion Begins##40077 |goto 28.60,63.06
accept Bonus Objective: Assault on Mardum##39279 |goto 28.60,63.06
accept Enter the Illidari: Ashtongue##40378 |goto 28.60,63.06
step
click Legion Gateway Activator##241757
Summon the Ashtongue Forces |q 40378/1 |goto 31.57,61.89
step
Watch the dialogue
clicknpc Felsaber##101518
Accept Illidan's Gift |q 40378/2 |goto 31.53,62.37
stickystart "AssaultOnMardum"
step
Find Allari to the Southeast |q 40378/3 |goto 32.18,69.63
step
talk Allari the Souleater##94410
turnin Enter the Illidari: Ashtongue##40378 |goto 33.94,70.05
accept Set Them Free##38759 |goto 33.94,70.05
accept Eye On the Prize##39049 |goto 33.94,70.05
step
talk Sevis Brightflame##100982
accept Enter the Illidari: Coilskar##40379 |goto 33.94,69.96
step
kill Anguish Jailer##95226+
get Soulwrought Key##128227 |q 38759/1 |goto 38.29,73.76
step
clicknpc Jailer Cage##103381
Free Cyana Nightglaive |q 38759/3 |goto 39.34,71.72
step
clicknpc Jailer Cage##103381
Free Belath Dawnblade |q 38759/2 |goto 41.73,73.22
step
kill Inquisitor Baleful##93105
Slay Inquisitor Baleful & Take His Power |q 39049/1 |goto 42.64,79.34
step
talk Ashtongue Mystic##99914
Sacrifice the Soul |q 40379/1 |goto 43.44,72.69
step
click Legion Gateway Activator##241757
Summon the Coilskar Forces |q 40379/2 |goto 43.79,72.04
step
clicknpc Jailer Cage##103381
Free Mannethrel Darkstar |q 38759/5 |goto 41.57,66.68
step
Enter the cave |goto 39.10,68.55 < 5 |walk
clicknpc Jailer Cage##103381
|tip Inside the small room.
Free Izal Whitemoon |q 38759/4 |goto 38.62,67.90
step
label "AssaultOnMardum"
Kill enemies around this area
click Legion Communicators##244441
click Fel Spreaders##268517
Assault the Legion in the Lowlands |q 39279/1 |goto 42.16,73.96
step
Follow the path |goto 40.09,67.11 < 30
talk Jace Darkweaver##93759
turnin Set Them Free##38759 |goto 38.80,60.64
turnin Eye On the Prize##39049 |goto 38.80,60.64
turnin Enter the Illidari: Coilskar##40379 |goto 38.80,60.64
accept Meeting With the Queen##39050 |goto 38.80,60.64
step
click Nether Crucible##243335
Complete the Ritual |q 39050/1 |goto 38.75,60.52
step
talk Jace Darkweaver##93759
turnin Meeting With the Queen##39050 |goto 38.80,60.64
accept Enter the Illidari: Shivarra##38765 |goto 38.80,60.64
accept Before We're Overrun##38766 |goto 38.80,60.64
step
Follow the path up |goto 39.33,57.01 < 30
clicknpc Spire Stabilizers ##6477+
|tip They look like big green floating crystals nearby.
kill Doom Commander Beliash##93221
Slay Beliash & Take His Power |q 38766/1 |goto 35.16,39.57
step
Follow the path up |goto 37.75,40.17 < 30
talk Sevis Brightflame##99915
Tell him _"Sevis, I need to sacrifice you in order to power the final gateway."_
Tell him_"I'm certain, Sevis. I need to sacrifice you to power the gateway."_
Make the Sacrifice |q 38765/1 |goto 39.69,39.47
step
click Legion Gateway Activator##241757
Summon the Shivarra Forces |q 38765/2 |goto 40.36,38.42
step
Follow the path |goto 45.51,47.30 < 30
talk Kayn Sunfury##93127
turnin Enter the Illidari: Shivarra##38765 |goto 60.51,44.75
turnin Before We're Overrun##38766 |goto 60.51,44.75
accept Orders for Your Captains##38813 |goto 60.51,44.75
step
talk Lady S'theno##93693
Brief Lady Lady S'theno |q 38813/2 |goto 59.24,46.13
step
talk Matron Mother Malevolence##94435
Brief Matron Mother Malevolence |q 38813/3 |goto 60.98,46.97
step
talk Battlelord Gaardoun##90247
Brief Battlelord Gaardoun |q 38813/1 |goto 62.18,46.29
step
talk Kayn Sunfury##93127
turnin Orders for Your Captains##38813 |goto 60.51,44.75
accept Give Me Sight Beyond Sight##39262 |goto 60.51,44.75
step
Follow the path up |goto 62.86,49.52 < 30
talk Jace Darkweaver##96436
Speak with Jace Darkweaver |q 39262/1 |goto 64.05,52.29
step
Use your Spectral Sight ability
|tip Look toward the cave entrance blocked by huge boulders.
Face the Cave & Use Spectral Sight |q 39262/2 |goto 63.86,53.13
step
talk Jace Darkweaver##96436
turnin Give Me Sight Beyond Sight##39262 |goto 64.05,52.29
accept Hidden No More##39495 |goto 64.05,52.29
step
Enter the cave |goto 63.59,53.98 > 1000
Follow the path up |goto Mardum, the Shattered Abyss C/1 33.75,43.35 < 20
Run up the stairs |goto 31.89,61.25 < 20
kill Fel Lord Caza##96441
Slay Caza & Take His Power |q 39495/1 |goto 60.93,62.58
step
Glide down here |goto 55.24,56.71 < 10
Follow the path up |goto 42.54,39.43 < 20
Leave the cave |goto 50.49,13.89 > 1000
talk Kayn Sunfury##93127
turnin Hidden No More##39495 |goto Mardum, the Shattered Abyss C/0 60.51,44.76
accept Stop the Bombardment##38727 |goto Mardum, the Shattered Abyss C/0 60.51,44.76
step
talk Cyana Nightglaive##96420
accept Their Numbers Are Legion##38819 |goto 60.54,44.87
step
talk Allari the Souleater##96655
accept Into the Foul Creche##38725 |goto 60.52,44.67
stickystart "NumbersAreLegion"
step
Follow the path |goto 66.99,52.09 < 30
click Illidari Banner##243968
Watch the dialogue
Destroy the Doom Fortress Devastator |q 38727/1 |goto 69.28,48.78
step
Run up the path |goto 70.79,50.27 < 30
Follow the path |goto 74.21,51.37 < 30
Follow the path |goto 77.74,47.63 < 30
click Illidari Banner##243968
Watch the dialogue
Destroy the Forge of Corruption Devastator |q 38727/2 |goto 75.01,41.09
step
Follow the path up |goto 75.60,40.19 < 30
talk Kor'vas Bloodthorn##98711
turnin Into the Foul Creche##38725 |goto 73.16,33.82
accept The Imp Mother's Tome##40222 |goto 73.16,33.82
stickystop "NumbersAreLegion"
step
Enter the cave |goto 73.72,32.13 < 15
Follow the path |goto 76.26,30.05 < 20
kill Prolifica##98986
get Tome of Fel Secrets##129957 |q 40222/1 |goto 77.12,27.69
stickystart "NumbersAreLegion"
step
Follow the path |goto 76.26,30.05 < 20
Leave the cave |goto 73.72,32.13 < 20
Follow the path |goto 72.57,32.96 < 30
click Illidari Banner##243968
Watch the dialogue
Destroy the Soul Engine Devastator |q 38727/3 |goto 66.40,30.40
step
label "NumbersAreLegion"
Kill enemies around this area
click Doom Fortress Stabilizers, Soul Harvesters
|tip They look like big green floating crystals.
click Demon Hunters, Ashtongue Warriors
|tip They look like bodies laying on the ground with red tear drop icons above them.
Complete the War Progress |q 38819/1 |goto 65.73,28.83
step
Follow the path |goto 62.43,34.94 < 30
Jump across the cracked bridge |goto 59.57,41.00 < 30
talk Kayn Sunfury##93127
turnin Stop the Bombardment##38727 |goto 60.51,44.75
turnin Their Numbers Are Legion##38819 |goto 60.51,44.75
step
talk Kor'vas Bloodthorn##99045
turnin The Imp Mother's Tome##40222 |goto 60.51,44.83
accept Fel Secrets##40051 |goto 60.51,44.83
step
click Tome of Fel Secrets##245112
Choose Your Specialization:
|tip Havoc specialization is a DPS spec.
|tip Vengeance specialization is a Tank spec.
Choose Between Havoc & Vengeance |q 40051/1 |goto 60.54,44.77
step
talk Kayn Sunfury##93127
turnin Fel Secrets##40051 |goto 60.51,44.75 |oncomplete ZGV:QuestRewardConfirm()
step
talk Kayn Sunfury##93127
accept Cry Havoc and Let Slip the Illidari!##39516 |goto 60.51,44.75
|only if selected("DEMONHUNTER_Havoc")
step
talk Kayn Sunfury##93127
accept Vengeance Will Be Mine!##39515 |goto 60.51,44.75
|only if selected("DEMONHUNTER_Vengeance")
step
talk Cyana Nightglaive##96420
Teach Cyana |q 39516/2 |goto 60.55,44.86
|only if havequest(39516) or completedq(39516)
step
talk Kor'vas Bloodthorn##99045
Teach Kor'vas |q 39516/4 |goto 60.51,44.82
|only if havequest(39516) or completedq(39516)
step
talk Kayn Sunfury##93127
Tell him _"Kayn, I will teach you what I've learned of the demonic mysteries."_
Teach Kayn |q 39516/3 |goto 60.51,44.75
|only if havequest(39516) or completedq(39516)
step
talk Allari the Souleater##96655
Teach Allari |q 39516/1 |goto 60.52,44.66
|only if havequest(39516) or completedq(39516)
step
talk Mannethrel Darkstar##96652
Teach Mannethrel |q 39516/5 |goto 60.26,44.59
|only if havequest(39516) or completedq(39516)
step
talk Cyana Nightglaive##96420
Teach Cyana |q 39515/2 |goto 60.55,44.86
|only if havequest(39515) or completedq(39515)
step
talk Kor'vas Bloodthorn##99045
Teach Kor'vas |q 39515/4 |goto 60.51,44.82
|only if havequest(39515) or completedq(39515)
step
talk Kayn Sunfury##93127
Tell him _"Kayn, I will teach you what I've learned of the demonic mysteries."_
Teach Kayn |q 39515/3 |goto 60.51,44.75
|only if havequest(39515) or completedq(39515)
step
talk Allari the Souleater##96655
Teach Allari |q 39515/1 |goto 60.52,44.66
|only if havequest(39515) or completedq(39515)
step
talk Mannethrel Darkstar##96652
Teach Mannethrel |q 39515/5 |goto 60.26,44.59
|only if havequest(39515) or completedq(39515)
step
talk Kayn Sunfury##93127
turnin Cry Havoc and Let Slip the Illidari!##39516 |or |goto 60.51,44.75 |only if havequest(39516) or completedq(39516)
turnin Vengeance Will Be Mine!##39515 |or |goto 60.51,44.75 |only if havequest(39515) or completedq(39515)
accept On Felbat Wings##39663 |goto 60.51,44.75
step
talk Izal Whitemoon##96653
Ride to the Fel Hammer |q 39663/1 |goto 62.52,44.90
step
talk Cyana Nightglaive##97297
turnin On Felbat Wings##39663 |goto 69.93,44.23
accept The Keystone##38728 |goto 69.93,44.23
step
kill Brood Queen Tyranna##95048
get Sargerite Keystone##124672 |q 38728/1 |goto 69.87,40.53
step
Find the Way Downstairs |q 38728/2 |goto 71.02,41.76
step
Follow the path down |goto 71.12,40.49 < 20
talk Kayn Sunfury##97303
turnin The Keystone##38728 |goto 69.86,37.89
accept Return to the Black Temple##38729 |goto 69.86,37.89
step
click Sargerite Keystone##251314
Activate the Sargerite Keystone |q 38729/1 |goto 69.85,37.80
step
click Fel Portal##244466
turnin Return to the Black Temple##38729 |goto 69.85,37.51
step
talk Maiev Shadowsong##92718
accept Breaking Out##38672 |goto Vault of the Wardens/1 80.06,36.57
step
clicknpc Altruis's Cell##103655
Free Altruis |q 38672/1 |goto 78.59,38.29
step
clicknpc Kayn's Cell##103658
Free Kayn |q 38672/2 |goto 78.56,34.93
step
Watch the dialogue
|tip Wait until the dialogue is finished until you proceed.
|confirm |q 38672 |goto 77.93,35.59
step
click Lever##211284
turnin Breaking Out##38672 |goto 77.93,35.59
step
talk Kayn Sunfury##92980
accept Rise of the Illidari##38690 |goto 74.47,35.97
step
talk Altruis the Sufferer##92986
accept Fel Infusion##38689 |goto 74.40,37.16
stickystart "RegainFelEnergy"
stickystart "RepelLegionAttackers"
step
click Warden Cells##244588
|tip They look like green glass cases in the walls around this area.
|tip You will only be able to click some of them.
Free #8# Imprisoned Illidari |q 38690/1 |goto 73.64,32.23
step
label "RegainFelEnergy"
Kill enemies around this area
Regain #100# Fel Energy |q 38689/1 |goto 69.11,36.51
step
label "RepelLegionAttackers"
Kill enemies around this area
click Legion Portal##267226
Repel the Legion Attackers |q 39742/1 |goto 69.11,36.51
step
Follow the path |goto 62.62,36.54 < 30
Follow the path |goto 50.95,38.63 < 30
talk Altruis the Sufferer##92986
turnin Fel Infusion##38689 |goto 49.67,49.34
step
talk Kayn Sunfury##96665
turnin Rise of the Illidari##38690 |goto 49.18,49.44
step
talk Maiev Shadowsong##92718
|tip You will only be able to accept one of these quests.
accept Stop Gul'dan!##40253 |goto 49.46,49.75 |or
accept Stop Gul'dan!##38723 |goto 49.46,49.75 |or
step
kill Crusher##66724
kill Sledge##92990
Slay Crusher & Sledge & Take Their Power |q 40253/2 |goto 49.9,77.6 |only if havequest(40253) or completedq(40253)
Slay Crusher & Sledge & Take Their Power |q 38723/2 |goto 49.9,77.6 |only if havequest(38723) or completedq(38723)
step
talk Kayn Sunfury##96665
turnin Stop Gul'dan!##40253 |goto 50.8,72.8 |only if havequest(40253) or completedq(40253)
turnin Stop Gul'dan!##38723 |goto 50.8,72.8 |only if havequest(38723) or completedq(38723)
accept Grand Theft Felbat##39682 |goto 50.8,72.8
step
Follow the path |goto 49.90,37.30 < 20
Run up the path |goto 42.73,30.02 < 20
Continue up the path |goto 54.24,29.11 < 20
clicknpc Vampiric Felbat##96659
Ride a Vampiric Felbat to the Upper Vault |q 39682/1 |goto 48.47,20.16
step
talk Kor'vas Bloodthorn##97643
turnin Grand Theft Felbat##39682 |goto Vault of the Wardens/2 41.34,47.35
accept Frozen in Time##39685 |goto Vault of the Wardens/2 41.34,47.35
accept Beam Me Up##39684 |goto Vault of the Wardens/2 41.34,47.35
step
talk Allari the Souleater##96675
|tip You will only be able to accept one of these quests.
accept Forged in Fire##40254 |goto 41.12,47.16 |or
accept Forged in Fire##39683 |goto 41.12,47.16 |or
step
Follow the path |goto 46.75,38.72 < 20
kill Immolanth##96682
Slay Immolanth & Take His Power |q 40254/1 |goto 46.79,17.11 |only if havequest(40254) or completedq(40254)
Slay Immolanth & Take His Power |q 39683/1 |goto 46.79,17.11 |only if havequest(39683) or completedq(39683)
step
Follow the path |goto 46.77,36.25 < 20
Go through the doorway |goto 54.51,48.23 < 20
click Reflective Mirror##244449
|tip Avoid the stuff on the ground.
Rotate the Mirror |q 39684/1 |goto 70.62,49.58
step
Follow the path |goto 54.72,48.22 < 20
Go through the doorway |goto 46.79,60.08 < 20
clicknpc Countermeasures##99240
Activate the Eastern Countermeasure |q 39685/1 |goto 50.11,78.10
step
clicknpc Countermeasures##99240
Activate the Southern Countermeasure |q 39685/2 |goto 46.85,84.26
step
clicknpc Countermeasures##99240
Activate the Western Countermeasure |q 39685/3 |goto 43.41,78.25
step
Follow the path |goto 46.78,66.77 < 20
talk Allari the Souleater##96675
turnin Frozen in Time##39685 |goto 41.12,47.17
turnin Beam Me Up##39684 |goto 41.12,47.17
turnin Forged in Fire##40254 |goto 41.12,47.17 |only if havequest(40254) or completedq(40254)
turnin Forged in Fire##39683 |goto 41.12,47.17 |only if havequest(39683) or completedq(39683)
accept All The Way Up##39686 |goto 41.12,47.17
step
Ascend to the Hall of Judgement |q 39686/1 |goto 46.73,48.24
|tip Wait for the elevator to come down, then ride it up.
step
Follow the path |goto Vault of the Wardens/3 24.39,25.22 < 20
talk Kor'vas Bloodthorn##97644
turnin All The Way Up##39686 |goto 24.43,55.82
accept A New Direction##40373 |goto 24.43,55.82
step
click Pool of Judgement
View the Pool of Judgement |q 40373/1 |goto 24.40,53.08
step
talk Kor'vas Bloodthorn##97644
|tip You must now choose who to side with, Kayn Sunfury or Altruis the Sufferer.
|tip Choose whichever you agree with, it doesn't matter.
Choose Between Kayn and Altruis |q 40373/2 |goto 24.43,55.82
step
talk Kor'vas Bloodthorn##97644
turnin A New Direction##40373 |goto 24.43,55.82
|tip You will only be able to accept one of these quests.
accept Between Us and Freedom##39688 |goto 24.43,55.82 |or
accept Between Us and Freedom##39694 |goto 24.43,55.82 |or
accept Between Us and Freedom##40255 |goto 24.43,55.82 |or
accept Between Us and Freedom##40256 |goto 24.43,55.82 |or
step
Follow the path |goto 24.44,71.72 < 20
kill Bastillax##96783
Slay Bastillax & Take His Power |q 39688/1 |goto 50.38,77.52 |only if havequest(39688) or completedq(39688)
Slay Bastillax & Take His Power |q 39694/1 |goto 50.38,77.52 |only if havequest(39694) or completedq(39694)
Slay Bastillax & Take His Power |q 40255/1 |goto 50.38,77.52 |only if havequest(40255) or completedq(40255)
Slay Bastillax & Take His Power |q 40256/1 |goto 50.38,77.52 |only if havequest(40256) or completedq(40256)
step
Follow the path up |goto 67.48,77.59 < 20
Follow the path |goto 80.18,79.97 < 10
talk Kayn Sunfury##93127
|tip Altruis the Sufferer will be here instead, if you chose to side with him earlier.
turnin Between Us and FreedomFreedom##39688 |goto 84.12,82.84 |only if havequest(39688) or completedq(39688)
turnin Between Us and FreedomFreedom##39694 |goto 84.12,82.84 |only if havequest(39694) or completedq(39694)
turnin Between Us and FreedomFreedom##40255 |goto 84.12,82.84 |only if havequest(40255) or completedq(40255)
turnin Between Us and FreedomFreedom##40256 |goto 84.12,82.84 |only if havequest(40256) or completedq(40256)
step
talk Archmage Khadgar##97978
|tip You will only be able to accept one of these quests.
accept Illidari, We Are Leaving##39690 |goto 85.98,84.32 |or
accept Illidari, We Are Leaving##39689 |goto 85.98,84.32 |or
step
talk Archmage Khadgar##97978
turnin Illidari, We Are Leaving##39690 |goto 85.98,84.32 |only if havequest(39690) or completedq(39690)
turnin Illidari, We Are Leaving##39689 |goto 85.98,84.32 |only if havequest(39689) or completedq(39689)
step
talk Archmage Khadgar##97296
accept The Call of War##39691 |goto Stormwind City/0 72.55,47.01
step
Follow the path |goto 80.64,37.87 < 20
Enter the Throne Room |q 39691/1 |goto 84.39,33.74
step
talk Jace Darkweaver##102585
turnin The Call of War##39691 |goto 84.39,33.74
accept Second Sight##44471 |goto 84.39,33.74
step
Use your Spectral Sight ability
Use Spectral Sight |q 44471/1 |goto 84.39,33.74
step
talk Jace Darkweaver##102585
turnin Second Sight##44471 |goto 84.39,33.74
accept Demons Among Them##44463 |goto 84.39,33.74
step
talk Anduin Wrynn##100429
Warn Anduin Wrynn |q 44463/1 |goto 85.87,31.60
step
Kill enemies around this area
Slay #5# Demons |q 44463/2 |goto 84.8,32.5
step
talk Anduin Wrynn##100973
turnin Demons Among Them##44463 |goto 85.77,31.74
accept A Weapon of the Alliance##44473 |goto 85.77,31.74
step
talk Elerion Bladedancer##101004
|tip On the balcony of the building.
turnin A Weapon of the Alliance##44473 |goto 40.26,77.69
step
accept In the Blink of an Eye##44663 |goto 40.3,77.7 |or
accept In the Blink of an Eye##44184 |goto 40.3,77.7 |or
|tip You will accept one of these quests automatically.
step
Enter the building |goto 80.75,37.75 < 15 |walk
Follow the path |goto 81.56,35.56 < 15 |walk
click Portal to Dalaran##251123
Watch the dialogue
Take the Portal to Dalaran |q 44663/1 |goto 80.31,35.02 |only if havequest(44663) or completedq(44663)
Take the Portal to Dalaran |q 44184/1 |goto 80.31,35.02 |only if havequest(44184) or completedq(44184)
step
Enter the building |goto Deadwind Pass/21 52.83,51.87 < 15 |walk
talk Archmage Khadgar##113986
Witness Dalaran's Teleportation |q 44663/2 |goto Deadwind Pass/21 49.84,48.31 |only if havequest(44663) or completedq(44663)
Witness Dalaran's Teleportation |q 44184/2 |goto Deadwind Pass/21 49.84,48.31 |only if havequest(44184) or completedq(44184)
step
talk Emissary Auldbridge##111109
turnin In the Blink of an Eye##44663 |goto Dalaran L/10 57.57,45.75 |only if havequest(44663) or completedq(44663)
turnin In the Blink of an Eye##44184 |goto Dalaran L/10 57.57,45.75 |only if havequest(44184) or completedq(44184)
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Legion (100-110)\\Druid\\Druid Intro & Artifacts",{
author="support@zygorguides.com",
description="This guide will walk you through completing the introductory Legion quests and unlocking your class artifacts.",
condition_suggested=function() return level >= 100 and level <= 110 and raceclass('Druid') end,
condition_valid=function() return raceclass('Druid') and level >= 98 end,
condition_valid_msg="You must be a Druid and at least level 98 to complete this guide!",
image=ZGV.DIR.."\\Guides\\Images\\The_Broken_Shore",
startlevel=98.0,
},[[
step
click Hero's Call Board##250720
accept The Legion Returns##40519 |goto Stormwind City/0 62.89,71.57
|only if not havequest(43806)
step
talk Recruiter Lee##107934
turnin The Legion Returns##40519 |goto 37.1,43.1
accept To Be Prepared##42782 |goto 37.1,43.1
|only if not havequest(43806)
step
click Keg of Armor Polish##251195
Polish your Armor |q 42782/1 |goto 29.8,42.9
|only if not havequest(43806)
step
click Light-Infused Crystals##251235
Empower your Weapon |q 42782/2 |goto 30.0,34.1
|only if not havequest(43806)
step
click Ribs##251255
Eat your Last Meal |q 42782/3 |goto 29.7,29.2
|only if not havequest(43806)
step
talk Eunna Young##108750
|tip Fight her.
Warm Up with a Duel |q 42782/4 |goto 32.8,33.1
|only if not havequest(43806)
step
talk Knight Dameron##108916
turnin To Be Prepared##42782 |goto 19.0,26.5
accept The Battle for Broken Shore##42740 |goto 19.0,26.5
|only if not havequest(43806)
step
talk Captain Angelica##108920
Take the Ship to the Broken Shore |q 42740/1 |goto 19.9,29.4
|only if not havequest(43806)
step
Begin the "Battle for Broken Shore" Scenario |scenariostart |q 42740 |only if havequest(42740) or completedq(42740)
Begin the "Battle for Broken Shore" Scenario |scenariostart |q 43806 |only if havequest(43806) or completedq(43806)
step
Watch the dialogue |only if havequest(42740) or completedq(42740)
|tip Ride the boat to shore. |only if havequest(42740) or completedq(42740)
Travel to the Broken Shore |scenariostage 1 |goto Broken Shore/0 49.36,71.79 |q 42740 |only if havequest(42740) or completedq(42740)
Travel to the Broken Shore |scenariostage 1 |goto Broken Shore/0 49.36,71.79 |q 43806 |only if havequest(43806) or completedq(43806)
stickystart "fel_lords1"
stickystart "spires_of_woe"
step
Kill enemies around this area
|tip Follow the group.
Kill #33# Demons |scenariogoal 2/27653 |goto 48.4,70.5 |q 42740 |only if havequest(42740) or completedq(42740)
Kill #33# Demons |scenariogoal 2/27653 |goto 48.4,70.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
label "fel_lords1"
Kill enemies around this area
|tip Follow the group.
Kill #3# Fel Lords |scenariogoal 2/29377 |goto 48.4,70.5 |q 42740 |only if havequest(42740) or completedq(42740)
Kill #3# Fel Lords |scenariogoal 2/29377 |goto 48.4,70.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
label "spires_of_woe"
kill Anchoring Crystal##91704+
|tip Follow the group.
Destroy #3# Spires of Woe |scenariogoal 2/27619 |goto 48.4,70.5 |q 42740 |only if havequest(42740) or completedq(42740)
Destroy #3# Spires of Woe |scenariogoal 2/27619 |goto 48.4,70.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
kill Dread Commander Arganoth##90705 |goto 48.4,70.5 |scenariogoal 3/30883 |q 42740 |only if havequest(42740) or completedq(42740)
kill Dread Commander Arganoth##90705 |goto 48.4,70.5 |scenariogoal 3/30883 |q 43806 |only if havequest(43806) or completedq(43806)
step
Run up the path |goto 49.40,66.41 < 30
Watch the dialogue
|tip Follow the group.
Find Varian |scenariostage 4 |goto 38.07,47.13 |q 42740 |only if havequest(42740) or completedq(42740)
Find Varian |scenariostage 4 |goto 38.07,47.13 |q 43806 |only if havequest(43806) or completedq(43806)
step
kill Shielded Anchor##101667+
|tip They look like big floating green crystals.
Shatter #4# Shielded Anchors |scenariogoal 5/27940 |goto 39.0,43.7 |q 42740 |only if havequest(42740) or completedq(42740)
Shatter #4# Shielded Anchors |scenariogoal 5/27940 |goto 39.0,43.7 |q 43806 |only if havequest(43806) or completedq(43806)
step
Watch the dialogue
|tip Follow the group.
Kill enemies all around this area
Assault the Demon City |scenariostage 6 |goto 44.7,47.5 |q 42740 |only if havequest(42740) or completedq(42740)
Assault the Demon City |scenariostage 6 |goto 44.7,47.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
Watch the dialogue
|tip Follow the group.
Get to Tirion |scenariostage 7 |goto 55.8,32.2 |q 42740 |only if havequest(42740) or completedq(42740)
Get to Tirion |scenariostage 7 |goto 55.8,32.2 |q 43806 |only if havequest(43806) or completedq(43806)
step
Kill enemies around this area
kill Krosus##90544
Slay Krosus |scenariostage 8 |goto 55.8,32.2 |q 42740 |only if havequest(42740) or completedq(42740)
Slay Krosus |scenariostage 8 |goto 55.8,32.2 |q 43806 |only if havequest(43806) or completedq(43806)
step
Follow the path up |goto 55.98,31.21 < 20
Watch the dialogue
|tip Follow the group
Kill the enemies that attack in waves
Confront Gul'dan |scenarioend |goto 58.3,27.5 |q 42740 |only if havequest(42740) or completedq(42740)
Assault the Broken Shore |q 42740/2 |goto 58.3,27.5 |only if havequest(42740) or completedq(42740)
Confront Gul'dan |scenarioend |goto 58.3,27.5 |q 43806 |only if havequest(43806) or completedq(43806)
Assault the Broken Shore |q 43806/1 |goto 58.3,27.5 |only if havequest(43806) or completedq(43806)
step
talk Genn Greymane##100395
turnin The Battle for Broken Shore##42740 |goto Stormwind City/0 20.1,34.9 |only if havequest(42740) or completedq(42740)
turnin The Battle for Broken Shore##43806 |goto Stormwind City/0 20.1,34.9 |only if havequest(43806) or completedq(43806)
accept The Fallen Lion##40517 |goto Stormwind City/0 20.1,34.9
step
clicknpc Gilnean Gryphon##101819
Ride a Gryphon to Stormwind Keep |q 40517/1 |goto 21.3,33.7
step
talk Anduin Wrynn##100429
Watch the dialogue
Deliver Varian's Letter and Listen to King Anduin |q 40517/2 |goto 85.9,31.6
step
talk Anduin Wrynn##100429
turnin The Fallen Lion##40517 |goto 85.9,31.6
step
talk Jace Darkweaver##100675
accept Demons Among Us##40593 |goto 85.3,32.3
step
talk Jace Darkweaver##100675
Watch the dialogue
Learn what Jace Darkwhisper Knows about Demons |q 40593/1 |goto 85.3,32.3
stickystart "Kill_Infiltrators"
step
click Demon Portal##246707
Destroy the Courtyard Legion Portal |q 40593/3 |goto 82.5,27.9
step
Follow the path |goto 83.94,30.69 < 15
Go through the doorway |goto 81.55,35.60 < 15
click Demon Portal##246707
Destroy the Courtyard Legion Portal |q 40593/4 |goto 80.6,33.1
step
label "Kill_Infiltrators"
Kill enemies around this area
Kill #5# Infiltrators |q 40593/2 |goto 84.8,32.5
step
talk Anduin Wrynn##100973
turnin Demons Among Us##40593 |goto 85.8,31.8
accept Illidari Allies##44120 |goto 85.8,31.8
step
talk Elerion Bladedancer##101004
|tip On the balcony of the building.
turnin Illidari Allies##44120 |goto 40.3,77.7
step
talk Khadgar's Upgraded Servant##114562
|tip It appears next to you.
accept In the Blink of an Eye##44663 |goto 40.3,77.7 |or
accept In the Blink of an Eye##44184 |goto 40.3,77.7 |or
step
Enter the building |goto 80.75,37.75 < 15 |walk
Follow the path |goto 81.56,35.56 < 15 |walk
click Portal to Dalaran##251123
Watch the dialogue
Take the Portal to Dalaran |q 44663/1 |goto 80.31,35.02 |only if havequest(44663) or completedq(44663)
Take the Portal to Dalaran |q 44184/1 |goto 80.31,35.02 |only if havequest(44184) or completedq(44184)
step
Enter the building |goto Deadwind Pass/21 52.83,51.87 < 15 |walk
talk Archmage Khadgar##113986
Witness Dalaran's Teleportation |q 44663/2 |goto Deadwind Pass/21 49.84,48.31 |only if havequest(44663) or completedq(44663)
Witness Dalaran's Teleportation |q 44184/2 |goto Deadwind Pass/21 49.84,48.31 |only if havequest(44184) or completedq(44184)
step
talk Emissary Auldbridge##111109
turnin In the Blink of an Eye##44663 |goto Dalaran L/10 57.57,45.75 |only if havequest(44663) or completedq(44663)
turnin In the Blink of an Eye##44184 |goto Dalaran L/10 57.57,45.75 |only if havequest(44184) or completedq(44184)
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Legion (100-110)\\Hunter\\Hunter Intro & Artifacts",{
author="support@zygorguides.com",
description="This guide will walk you through completing the introductory Legion quests and unlocking your class artifacts.",
condition_suggested=function() return level >= 100 and level <= 110 and raceclass('Hunter') end,
condition_valid=function() return raceclass('Hunter') and level >= 98 end,
condition_valid_msg="You must be a Hunter and at least level 98 to complete this guide!",
image=ZGV.DIR.."\\Guides\\Images\\The_Broken_Shore",
startlevel=98.0,
},[[
step
click Hero's Call Board##250720
accept The Legion Returns##40519 |goto Stormwind City/0 62.89,71.57
|only if not havequest(43806)
step
talk Recruiter Lee##107934
turnin The Legion Returns##40519 |goto 37.1,43.1
accept To Be Prepared##42782 |goto 37.1,43.1
|only if not havequest(43806)
step
click Keg of Armor Polish##251195
Polish your Armor |q 42782/1 |goto 29.8,42.9
|only if not havequest(43806)
step
click Light-Infused Crystals##251235
Empower your Weapon |q 42782/2 |goto 30.0,34.1
|only if not havequest(43806)
step
click Ribs##251255
Eat your Last Meal |q 42782/3 |goto 29.7,29.2
|only if not havequest(43806)
step
talk Eunna Young##108750
|tip Fight her.
Warm Up with a Duel |q 42782/4 |goto 32.8,33.1
|only if not havequest(43806)
step
talk Knight Dameron##108916
turnin To Be Prepared##42782 |goto 19.0,26.5
accept The Battle for Broken Shore##42740 |goto 19.0,26.5
|only if not havequest(43806)
step
talk Captain Angelica##108920
Take the Ship to the Broken Shore |q 42740/1 |goto 19.9,29.4
|only if not havequest(43806)
step
Begin the "Battle for Broken Shore" Scenario |scenariostart |q 42740 |only if havequest(42740) or completedq(42740)
Begin the "Battle for Broken Shore" Scenario |scenariostart |q 43806 |only if havequest(43806) or completedq(43806)
step
Watch the dialogue |only if havequest(42740) or completedq(42740)
|tip Ride the boat to shore. |only if havequest(42740) or completedq(42740)
Travel to the Broken Shore |scenariostage 1 |goto Broken Shore/0 49.36,71.79 |q 42740 |only if havequest(42740) or completedq(42740)
Travel to the Broken Shore |scenariostage 1 |goto Broken Shore/0 49.36,71.79 |q 43806 |only if havequest(43806) or completedq(43806)
stickystart "fel_lords1"
stickystart "spires_of_woe"
step
Kill enemies around this area
|tip Follow the group.
Kill #33# Demons |scenariogoal 2/27653 |goto 48.4,70.5 |q 42740 |only if havequest(42740) or completedq(42740)
Kill #33# Demons |scenariogoal 2/27653 |goto 48.4,70.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
label "fel_lords1"
Kill enemies around this area
|tip Follow the group.
Kill #3# Fel Lords |scenariogoal 2/29377 |goto 48.4,70.5 |q 42740 |only if havequest(42740) or completedq(42740)
Kill #3# Fel Lords |scenariogoal 2/29377 |goto 48.4,70.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
label "spires_of_woe"
kill Anchoring Crystal##91704+
|tip Follow the group.
Destroy #3# Spires of Woe |scenariogoal 2/27619 |goto 48.4,70.5 |q 42740 |only if havequest(42740) or completedq(42740)
Destroy #3# Spires of Woe |scenariogoal 2/27619 |goto 48.4,70.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
kill Dread Commander Arganoth##90705 |goto 48.4,70.5 |scenariogoal 3/30883 |q 42740 |only if havequest(42740) or completedq(42740)
kill Dread Commander Arganoth##90705 |goto 48.4,70.5 |scenariogoal 3/30883 |q 43806 |only if havequest(43806) or completedq(43806)
step
Run up the path |goto 49.40,66.41 < 30
Watch the dialogue
|tip Follow the group.
Find Varian |scenariostage 4 |goto 38.07,47.13 |q 42740 |only if havequest(42740) or completedq(42740)
Find Varian |scenariostage 4 |goto 38.07,47.13 |q 43806 |only if havequest(43806) or completedq(43806)
step
kill Shielded Anchor##101667+
|tip They look like big floating green crystals.
Shatter #4# Shielded Anchors |scenariogoal 5/27940 |goto 39.0,43.7 |q 42740 |only if havequest(42740) or completedq(42740)
Shatter #4# Shielded Anchors |scenariogoal 5/27940 |goto 39.0,43.7 |q 43806 |only if havequest(43806) or completedq(43806)
step
Watch the dialogue
|tip Follow the group.
Kill enemies all around this area
Assault the Demon City |scenariostage 6 |goto 44.7,47.5 |q 42740 |only if havequest(42740) or completedq(42740)
Assault the Demon City |scenariostage 6 |goto 44.7,47.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
Watch the dialogue
|tip Follow the group.
Get to Tirion |scenariostage 7 |goto 55.8,32.2 |q 42740 |only if havequest(42740) or completedq(42740)
Get to Tirion |scenariostage 7 |goto 55.8,32.2 |q 43806 |only if havequest(43806) or completedq(43806)
step
Kill enemies around this area
kill Krosus##90544
Slay Krosus |scenariostage 8 |goto 55.8,32.2 |q 42740 |only if havequest(42740) or completedq(42740)
Slay Krosus |scenariostage 8 |goto 55.8,32.2 |q 43806 |only if havequest(43806) or completedq(43806)
step
Follow the path up |goto 55.98,31.21 < 20
Watch the dialogue
|tip Follow the group
Kill the enemies that attack in waves
Confront Gul'dan |scenarioend |goto 58.3,27.5 |q 42740 |only if havequest(42740) or completedq(42740)
Assault the Broken Shore |q 42740/2 |goto 58.3,27.5 |only if havequest(42740) or completedq(42740)
Confront Gul'dan |scenarioend |goto 58.3,27.5 |q 43806 |only if havequest(43806) or completedq(43806)
Assault the Broken Shore |q 43806/1 |goto 58.3,27.5 |only if havequest(43806) or completedq(43806)
step
talk Genn Greymane##100395
turnin The Battle for Broken Shore##42740 |goto Stormwind City/0 20.1,34.9 |only if havequest(42740) or completedq(42740)
turnin The Battle for Broken Shore##43806 |goto Stormwind City/0 20.1,34.9 |only if havequest(43806) or completedq(43806)
accept The Fallen Lion##40517 |goto Stormwind City/0 20.1,34.9
step
clicknpc Gilnean Gryphon##101819
Ride a Gryphon to Stormwind Keep |q 40517/1 |goto 21.3,33.7
step
talk Anduin Wrynn##100429
Watch the dialogue
Deliver Varian's Letter and Listen to King Anduin |q 40517/2 |goto 85.9,31.6
step
talk Anduin Wrynn##100429
turnin The Fallen Lion##40517 |goto 85.9,31.6
step
talk Jace Darkweaver##100675
accept Demons Among Us##40593 |goto 85.3,32.3
step
talk Jace Darkweaver##100675
Watch the dialogue
Learn what Jace Darkwhisper Knows about Demons |q 40593/1 |goto 85.3,32.3
stickystart "Kill_Infiltrators"
step
click Demon Portal##246707
Destroy the Courtyard Legion Portal |q 40593/3 |goto 82.5,27.9
step
Follow the path |goto 83.94,30.69 < 15
Go through the doorway |goto 81.55,35.60 < 15
click Demon Portal##246707
Destroy the Courtyard Legion Portal |q 40593/4 |goto 80.6,33.1
step
label "Kill_Infiltrators"
Kill enemies around this area
Kill #5# Infiltrators |q 40593/2 |goto 84.8,32.5
step
talk Anduin Wrynn##100973
turnin Demons Among Us##40593 |goto 85.8,31.8
accept Illidari Allies##44120 |goto 85.8,31.8
step
talk Elerion Bladedancer##101004
|tip On the balcony of the building.
turnin Illidari Allies##44120 |goto 40.3,77.7
step
talk Khadgar's Upgraded Servant##114562
|tip It appears next to you.
accept In the Blink of an Eye##44663 |goto 40.3,77.7 |or
accept In the Blink of an Eye##44184 |goto 40.3,77.7 |or
step
Enter the building |goto 80.75,37.75 < 15 |walk
Follow the path |goto 81.56,35.56 < 15 |walk
click Portal to Dalaran##251123
Watch the dialogue
Take the Portal to Dalaran |q 44663/1 |goto 80.31,35.02 |only if havequest(44663) or completedq(44663)
Take the Portal to Dalaran |q 44184/1 |goto 80.31,35.02 |only if havequest(44184) or completedq(44184)
step
Enter the building |goto Deadwind Pass/21 52.83,51.87 < 15 |walk
talk Archmage Khadgar##113986
Witness Dalaran's Teleportation |q 44663/2 |goto Deadwind Pass/21 49.84,48.31 |only if havequest(44663) or completedq(44663)
Witness Dalaran's Teleportation |q 44184/2 |goto Deadwind Pass/21 49.84,48.31 |only if havequest(44184) or completedq(44184)
step
talk Emissary Auldbridge##111109
turnin In the Blink of an Eye##44663 |goto Dalaran L/10 57.57,45.75 |only if havequest(44663) or completedq(44663)
turnin In the Blink of an Eye##44184 |goto Dalaran L/10 57.57,45.75 |only if havequest(44184) or completedq(44184)
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Legion (100-110)\\Mage\\Mage Intro & Artifacts",{
author="support@zygorguides.com",
description="This guide will walk you through completing the introductory Legion quests and unlocking your class artifacts.",
condition_suggested=function() return level >= 100 and level <= 110 and raceclass('Mage') end,
condition_valid=function() return raceclass('Mage') and level >= 98 end,
condition_valid_msg="You must be a Mage and at least level 98 to complete this guide!",
image=ZGV.DIR.."\\Guides\\Images\\The_Broken_Shore",
startlevel=98.0,
},[[
step
click Hero's Call Board##250720
accept The Legion Returns##40519 |goto Stormwind City/0 62.89,71.57
|only if not havequest(43806)
step
talk Recruiter Lee##107934
turnin The Legion Returns##40519 |goto 37.1,43.1
accept To Be Prepared##42782 |goto 37.1,43.1
|only if not havequest(43806)
step
click Keg of Armor Polish##251195
Polish your Armor |q 42782/1 |goto 29.8,42.9
|only if not havequest(43806)
step
click Light-Infused Crystals##251235
Empower your Weapon |q 42782/2 |goto 30.0,34.1
|only if not havequest(43806)
step
click Ribs##251255
Eat your Last Meal |q 42782/3 |goto 29.7,29.2
|only if not havequest(43806)
step
talk Eunna Young##108750
|tip Fight her.
Warm Up with a Duel |q 42782/4 |goto 32.8,33.1
|only if not havequest(43806)
step
talk Knight Dameron##108916
turnin To Be Prepared##42782 |goto 19.0,26.5
accept The Battle for Broken Shore##42740 |goto 19.0,26.5
|only if not havequest(43806)
step
talk Captain Angelica##108920
Take the Ship to the Broken Shore |q 42740/1 |goto 19.9,29.4
|only if not havequest(43806)
step
Begin the "Battle for Broken Shore" Scenario |scenariostart |q 42740 |only if havequest(42740) or completedq(42740)
Begin the "Battle for Broken Shore" Scenario |scenariostart |q 43806 |only if havequest(43806) or completedq(43806)
step
Watch the dialogue |only if havequest(42740) or completedq(42740)
|tip Ride the boat to shore. |only if havequest(42740) or completedq(42740)
Travel to the Broken Shore |scenariostage 1 |goto Broken Shore/0 49.36,71.79 |q 42740 |only if havequest(42740) or completedq(42740)
Travel to the Broken Shore |scenariostage 1 |goto Broken Shore/0 49.36,71.79 |q 43806 |only if havequest(43806) or completedq(43806)
stickystart "fel_lords1"
stickystart "spires_of_woe"
step
Kill enemies around this area
|tip Follow the group.
Kill #33# Demons |scenariogoal 2/27653 |goto 48.4,70.5 |q 42740 |only if havequest(42740) or completedq(42740)
Kill #33# Demons |scenariogoal 2/27653 |goto 48.4,70.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
label "fel_lords1"
Kill enemies around this area
|tip Follow the group.
Kill #3# Fel Lords |scenariogoal 2/29377 |goto 48.4,70.5 |q 42740 |only if havequest(42740) or completedq(42740)
Kill #3# Fel Lords |scenariogoal 2/29377 |goto 48.4,70.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
label "spires_of_woe"
kill Anchoring Crystal##91704+
|tip Follow the group.
Destroy #3# Spires of Woe |scenariogoal 2/27619 |goto 48.4,70.5 |q 42740 |only if havequest(42740) or completedq(42740)
Destroy #3# Spires of Woe |scenariogoal 2/27619 |goto 48.4,70.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
kill Dread Commander Arganoth##90705 |goto 48.4,70.5 |scenariogoal 3/30883 |q 42740 |only if havequest(42740) or completedq(42740)
kill Dread Commander Arganoth##90705 |goto 48.4,70.5 |scenariogoal 3/30883 |q 43806 |only if havequest(43806) or completedq(43806)
step
Run up the path |goto 49.40,66.41 < 30
Watch the dialogue
|tip Follow the group.
Find Varian |scenariostage 4 |goto 38.07,47.13 |q 42740 |only if havequest(42740) or completedq(42740)
Find Varian |scenariostage 4 |goto 38.07,47.13 |q 43806 |only if havequest(43806) or completedq(43806)
step
kill Shielded Anchor##101667+
|tip They look like big floating green crystals.
Shatter #4# Shielded Anchors |scenariogoal 5/27940 |goto 39.0,43.7 |q 42740 |only if havequest(42740) or completedq(42740)
Shatter #4# Shielded Anchors |scenariogoal 5/27940 |goto 39.0,43.7 |q 43806 |only if havequest(43806) or completedq(43806)
step
Watch the dialogue
|tip Follow the group.
Kill enemies all around this area
Assault the Demon City |scenariostage 6 |goto 44.7,47.5 |q 42740 |only if havequest(42740) or completedq(42740)
Assault the Demon City |scenariostage 6 |goto 44.7,47.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
Watch the dialogue
|tip Follow the group.
Get to Tirion |scenariostage 7 |goto 55.8,32.2 |q 42740 |only if havequest(42740) or completedq(42740)
Get to Tirion |scenariostage 7 |goto 55.8,32.2 |q 43806 |only if havequest(43806) or completedq(43806)
step
Kill enemies around this area
kill Krosus##90544
Slay Krosus |scenariostage 8 |goto 55.8,32.2 |q 42740 |only if havequest(42740) or completedq(42740)
Slay Krosus |scenariostage 8 |goto 55.8,32.2 |q 43806 |only if havequest(43806) or completedq(43806)
step
Follow the path up |goto 55.98,31.21 < 20
Watch the dialogue
|tip Follow the group
Kill the enemies that attack in waves
Confront Gul'dan |scenarioend |goto 58.3,27.5 |q 42740 |only if havequest(42740) or completedq(42740)
Assault the Broken Shore |q 42740/2 |goto 58.3,27.5 |only if havequest(42740) or completedq(42740)
Confront Gul'dan |scenarioend |goto 58.3,27.5 |q 43806 |only if havequest(43806) or completedq(43806)
Assault the Broken Shore |q 43806/1 |goto 58.3,27.5 |only if havequest(43806) or completedq(43806)
step
talk Genn Greymane##100395
turnin The Battle for Broken Shore##42740 |goto Stormwind City/0 20.1,34.9 |only if havequest(42740) or completedq(42740)
turnin The Battle for Broken Shore##43806 |goto Stormwind City/0 20.1,34.9 |only if havequest(43806) or completedq(43806)
accept The Fallen Lion##40517 |goto Stormwind City/0 20.1,34.9
step
clicknpc Gilnean Gryphon##101819
Ride a Gryphon to Stormwind Keep |q 40517/1 |goto 21.3,33.7
step
talk Anduin Wrynn##100429
Watch the dialogue
Deliver Varian's Letter and Listen to King Anduin |q 40517/2 |goto 85.9,31.6
step
talk Anduin Wrynn##100429
turnin The Fallen Lion##40517 |goto 85.9,31.6
step
talk Jace Darkweaver##100675
accept Demons Among Us##40593 |goto 85.3,32.3
step
talk Jace Darkweaver##100675
Watch the dialogue
Learn what Jace Darkwhisper Knows about Demons |q 40593/1 |goto 85.3,32.3
stickystart "Kill_Infiltrators"
step
click Demon Portal##246707
Destroy the Courtyard Legion Portal |q 40593/3 |goto 82.5,27.9
step
Follow the path |goto 83.94,30.69 < 15
Go through the doorway |goto 81.55,35.60 < 15
click Demon Portal##246707
Destroy the Courtyard Legion Portal |q 40593/4 |goto 80.6,33.1
step
label "Kill_Infiltrators"
Kill enemies around this area
Kill #5# Infiltrators |q 40593/2 |goto 84.8,32.5
step
talk Anduin Wrynn##100973
turnin Demons Among Us##40593 |goto 85.8,31.8
accept Illidari Allies##44120 |goto 85.8,31.8
step
talk Elerion Bladedancer##101004
|tip On the balcony of the building.
turnin Illidari Allies##44120 |goto 40.3,77.7
step
talk Khadgar's Upgraded Servant##114562
|tip It appears next to you.
accept In the Blink of an Eye##44663 |goto 40.3,77.7 |or
accept In the Blink of an Eye##44184 |goto 40.3,77.7 |or
step
Enter the building |goto 80.75,37.75 < 15 |walk
Follow the path |goto 81.56,35.56 < 15 |walk
click Portal to Dalaran##251123
Watch the dialogue
Take the Portal to Dalaran |q 44663/1 |goto 80.31,35.02 |only if havequest(44663) or completedq(44663)
Take the Portal to Dalaran |q 44184/1 |goto 80.31,35.02 |only if havequest(44184) or completedq(44184)
step
Enter the building |goto Deadwind Pass/21 52.83,51.87 < 15 |walk
talk Archmage Khadgar##113986
Witness Dalaran's Teleportation |q 44663/2 |goto Deadwind Pass/21 49.84,48.31 |only if havequest(44663) or completedq(44663)
Witness Dalaran's Teleportation |q 44184/2 |goto Deadwind Pass/21 49.84,48.31 |only if havequest(44184) or completedq(44184)
step
talk Emissary Auldbridge##111109
turnin In the Blink of an Eye##44663 |goto Dalaran L/10 57.57,45.75 |only if havequest(44663) or completedq(44663)
turnin In the Blink of an Eye##44184 |goto Dalaran L/10 57.57,45.75 |only if havequest(44184) or completedq(44184)
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Legion (100-110)\\Monk\\Monk Intro & Artifacts",{
author="support@zygorguides.com",
description="This guide will walk you through completing the introductory Legion quests and unlocking your class artifacts.",
condition_suggested=function() return level >= 100 and level <= 110 and raceclass('Monk') end,
condition_valid=function() return raceclass('Monk') and level >= 98 end,
condition_valid_msg="You must be a Monk and at least level 98 to complete this guide!",
image=ZGV.DIR.."\\Guides\\Images\\The_Broken_Shore",
startlevel=98.0,
},[[
step
click Hero's Call Board##250720
accept The Legion Returns##40519 |goto Stormwind City/0 62.89,71.57
|only if not havequest(43806)
step
talk Recruiter Lee##107934
turnin The Legion Returns##40519 |goto 37.1,43.1
accept To Be Prepared##42782 |goto 37.1,43.1
|only if not havequest(43806)
step
click Keg of Armor Polish##251195
Polish your Armor |q 42782/1 |goto 29.8,42.9
|only if not havequest(43806)
step
click Light-Infused Crystals##251235
Empower your Weapon |q 42782/2 |goto 30.0,34.1
|only if not havequest(43806)
step
click Ribs##251255
Eat your Last Meal |q 42782/3 |goto 29.7,29.2
|only if not havequest(43806)
step
talk Eunna Young##108750
|tip Fight her.
Warm Up with a Duel |q 42782/4 |goto 32.8,33.1
|only if not havequest(43806)
step
talk Knight Dameron##108916
turnin To Be Prepared##42782 |goto 19.0,26.5
accept The Battle for Broken Shore##42740 |goto 19.0,26.5
|only if not havequest(43806)
step
talk Captain Angelica##108920
Take the Ship to the Broken Shore |q 42740/1 |goto 19.9,29.4
|only if not havequest(43806)
step
Begin the "Battle for Broken Shore" Scenario |scenariostart |q 42740 |only if havequest(42740) or completedq(42740)
Begin the "Battle for Broken Shore" Scenario |scenariostart |q 43806 |only if havequest(43806) or completedq(43806)
step
Watch the dialogue |only if havequest(42740) or completedq(42740)
|tip Ride the boat to shore. |only if havequest(42740) or completedq(42740)
Travel to the Broken Shore |scenariostage 1 |goto Broken Shore/0 49.36,71.79 |q 42740 |only if havequest(42740) or completedq(42740)
Travel to the Broken Shore |scenariostage 1 |goto Broken Shore/0 49.36,71.79 |q 43806 |only if havequest(43806) or completedq(43806)
stickystart "fel_lords1"
stickystart "spires_of_woe"
step
Kill enemies around this area
|tip Follow the group.
Kill #33# Demons |scenariogoal 2/27653 |goto 48.4,70.5 |q 42740 |only if havequest(42740) or completedq(42740)
Kill #33# Demons |scenariogoal 2/27653 |goto 48.4,70.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
label "fel_lords1"
Kill enemies around this area
|tip Follow the group.
Kill #3# Fel Lords |scenariogoal 2/29377 |goto 48.4,70.5 |q 42740 |only if havequest(42740) or completedq(42740)
Kill #3# Fel Lords |scenariogoal 2/29377 |goto 48.4,70.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
label "spires_of_woe"
kill Anchoring Crystal##91704+
|tip Follow the group.
Destroy #3# Spires of Woe |scenariogoal 2/27619 |goto 48.4,70.5 |q 42740 |only if havequest(42740) or completedq(42740)
Destroy #3# Spires of Woe |scenariogoal 2/27619 |goto 48.4,70.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
kill Dread Commander Arganoth##90705 |goto 48.4,70.5 |scenariogoal 3/30883 |q 42740 |only if havequest(42740) or completedq(42740)
kill Dread Commander Arganoth##90705 |goto 48.4,70.5 |scenariogoal 3/30883 |q 43806 |only if havequest(43806) or completedq(43806)
step
Run up the path |goto 49.40,66.41 < 30
Watch the dialogue
|tip Follow the group.
Find Varian |scenariostage 4 |goto 38.07,47.13 |q 42740 |only if havequest(42740) or completedq(42740)
Find Varian |scenariostage 4 |goto 38.07,47.13 |q 43806 |only if havequest(43806) or completedq(43806)
step
kill Shielded Anchor##101667+
|tip They look like big floating green crystals.
Shatter #4# Shielded Anchors |scenariogoal 5/27940 |goto 39.0,43.7 |q 42740 |only if havequest(42740) or completedq(42740)
Shatter #4# Shielded Anchors |scenariogoal 5/27940 |goto 39.0,43.7 |q 43806 |only if havequest(43806) or completedq(43806)
step
Watch the dialogue
|tip Follow the group.
Kill enemies all around this area
Assault the Demon City |scenariostage 6 |goto 44.7,47.5 |q 42740 |only if havequest(42740) or completedq(42740)
Assault the Demon City |scenariostage 6 |goto 44.7,47.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
Watch the dialogue
|tip Follow the group.
Get to Tirion |scenariostage 7 |goto 55.8,32.2 |q 42740 |only if havequest(42740) or completedq(42740)
Get to Tirion |scenariostage 7 |goto 55.8,32.2 |q 43806 |only if havequest(43806) or completedq(43806)
step
Kill enemies around this area
kill Krosus##90544
Slay Krosus |scenariostage 8 |goto 55.8,32.2 |q 42740 |only if havequest(42740) or completedq(42740)
Slay Krosus |scenariostage 8 |goto 55.8,32.2 |q 43806 |only if havequest(43806) or completedq(43806)
step
Follow the path up |goto 55.98,31.21 < 20
Watch the dialogue
|tip Follow the group
Kill the enemies that attack in waves
Confront Gul'dan |scenarioend |goto 58.3,27.5 |q 42740 |only if havequest(42740) or completedq(42740)
Assault the Broken Shore |q 42740/2 |goto 58.3,27.5 |only if havequest(42740) or completedq(42740)
Confront Gul'dan |scenarioend |goto 58.3,27.5 |q 43806 |only if havequest(43806) or completedq(43806)
Assault the Broken Shore |q 43806/1 |goto 58.3,27.5 |only if havequest(43806) or completedq(43806)
step
talk Genn Greymane##100395
turnin The Battle for Broken Shore##42740 |goto Stormwind City/0 20.1,34.9 |only if havequest(42740) or completedq(42740)
turnin The Battle for Broken Shore##43806 |goto Stormwind City/0 20.1,34.9 |only if havequest(43806) or completedq(43806)
accept The Fallen Lion##40517 |goto Stormwind City/0 20.1,34.9
step
clicknpc Gilnean Gryphon##101819
Ride a Gryphon to Stormwind Keep |q 40517/1 |goto 21.3,33.7
step
talk Anduin Wrynn##100429
Watch the dialogue
Deliver Varian's Letter and Listen to King Anduin |q 40517/2 |goto 85.9,31.6
step
talk Anduin Wrynn##100429
turnin The Fallen Lion##40517 |goto 85.9,31.6
step
talk Jace Darkweaver##100675
accept Demons Among Us##40593 |goto 85.3,32.3
step
talk Jace Darkweaver##100675
Watch the dialogue
Learn what Jace Darkwhisper Knows about Demons |q 40593/1 |goto 85.3,32.3
stickystart "Kill_Infiltrators"
step
click Demon Portal##246707
Destroy the Courtyard Legion Portal |q 40593/3 |goto 82.5,27.9
step
Follow the path |goto 83.94,30.69 < 15
Go through the doorway |goto 81.55,35.60 < 15
click Demon Portal##246707
Destroy the Courtyard Legion Portal |q 40593/4 |goto 80.6,33.1
step
label "Kill_Infiltrators"
Kill enemies around this area
Kill #5# Infiltrators |q 40593/2 |goto 84.8,32.5
step
talk Anduin Wrynn##100973
turnin Demons Among Us##40593 |goto 85.8,31.8
accept Illidari Allies##44120 |goto 85.8,31.8
step
talk Elerion Bladedancer##101004
|tip On the balcony of the building.
turnin Illidari Allies##44120 |goto 40.3,77.7
step
talk Khadgar's Upgraded Servant##114562
|tip It appears next to you.
accept In the Blink of an Eye##44663 |goto 40.3,77.7 |or
accept In the Blink of an Eye##44184 |goto 40.3,77.7 |or
step
Enter the building |goto 80.75,37.75 < 15 |walk
Follow the path |goto 81.56,35.56 < 15 |walk
click Portal to Dalaran##251123
Watch the dialogue
Take the Portal to Dalaran |q 44663/1 |goto 80.31,35.02 |only if havequest(44663) or completedq(44663)
Take the Portal to Dalaran |q 44184/1 |goto 80.31,35.02 |only if havequest(44184) or completedq(44184)
step
Enter the building |goto Deadwind Pass/21 52.83,51.87 < 15 |walk
talk Archmage Khadgar##113986
Witness Dalaran's Teleportation |q 44663/2 |goto Deadwind Pass/21 49.84,48.31 |only if havequest(44663) or completedq(44663)
Witness Dalaran's Teleportation |q 44184/2 |goto Deadwind Pass/21 49.84,48.31 |only if havequest(44184) or completedq(44184)
step
talk Emissary Auldbridge##111109
turnin In the Blink of an Eye##44663 |goto Dalaran L/10 57.57,45.75 |only if havequest(44663) or completedq(44663)
turnin In the Blink of an Eye##44184 |goto Dalaran L/10 57.57,45.75 |only if havequest(44184) or completedq(44184)
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Legion (100-110)\\Paladin\\Paladin Intro & Artifacts",{
author="support@zygorguides.com",
description="This guide will walk you through completing the introductory Legion quests and unlocking your class artifacts.",
condition_suggested=function() return level >= 100 and level <= 110 and raceclass('Paladin') end,
condition_valid=function() return raceclass('Paladin') and level >= 98 end,
condition_valid_msg="You must be a Paladin and at least level 98 to complete this guide!",
image=ZGV.DIR.."\\Guides\\Images\\The_Broken_Shore",
startlevel=98.0,
},[[
step
click Hero's Call Board##250720
accept The Legion Returns##40519 |goto Stormwind City/0 62.89,71.57
|only if not havequest(43806)
step
talk Recruiter Lee##107934
turnin The Legion Returns##40519 |goto 37.1,43.1
accept To Be Prepared##42782 |goto 37.1,43.1
|only if not havequest(43806)
step
click Keg of Armor Polish##251195
Polish your Armor |q 42782/1 |goto 29.8,42.9
|only if not havequest(43806)
step
click Light-Infused Crystals##251235
Empower your Weapon |q 42782/2 |goto 30.0,34.1
|only if not havequest(43806)
step
click Ribs##251255
Eat your Last Meal |q 42782/3 |goto 29.7,29.2
|only if not havequest(43806)
step
talk Eunna Young##108750
|tip Fight her.
Warm Up with a Duel |q 42782/4 |goto 32.8,33.1
|only if not havequest(43806)
step
talk Knight Dameron##108916
turnin To Be Prepared##42782 |goto 19.0,26.5
accept The Battle for Broken Shore##42740 |goto 19.0,26.5
|only if not havequest(43806)
step
talk Captain Angelica##108920
Take the Ship to the Broken Shore |q 42740/1 |goto 19.9,29.4
|only if not havequest(43806)
step
Begin the "Battle for Broken Shore" Scenario |scenariostart |q 42740 |only if havequest(42740) or completedq(42740)
Begin the "Battle for Broken Shore" Scenario |scenariostart |q 43806 |only if havequest(43806) or completedq(43806)
step
Watch the dialogue |only if havequest(42740) or completedq(42740)
|tip Ride the boat to shore. |only if havequest(42740) or completedq(42740)
Travel to the Broken Shore |scenariostage 1 |goto Broken Shore/0 49.36,71.79 |q 42740 |only if havequest(42740) or completedq(42740)
Travel to the Broken Shore |scenariostage 1 |goto Broken Shore/0 49.36,71.79 |q 43806 |only if havequest(43806) or completedq(43806)
stickystart "fel_lords1"
stickystart "spires_of_woe"
step
Kill enemies around this area
|tip Follow the group.
Kill #33# Demons |scenariogoal 2/27653 |goto 48.4,70.5 |q 42740 |only if havequest(42740) or completedq(42740)
Kill #33# Demons |scenariogoal 2/27653 |goto 48.4,70.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
label "fel_lords1"
Kill enemies around this area
|tip Follow the group.
Kill #3# Fel Lords |scenariogoal 2/29377 |goto 48.4,70.5 |q 42740 |only if havequest(42740) or completedq(42740)
Kill #3# Fel Lords |scenariogoal 2/29377 |goto 48.4,70.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
label "spires_of_woe"
kill Anchoring Crystal##91704+
|tip Follow the group.
Destroy #3# Spires of Woe |scenariogoal 2/27619 |goto 48.4,70.5 |q 42740 |only if havequest(42740) or completedq(42740)
Destroy #3# Spires of Woe |scenariogoal 2/27619 |goto 48.4,70.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
kill Dread Commander Arganoth##90705 |goto 48.4,70.5 |scenariogoal 3/30883 |q 42740 |only if havequest(42740) or completedq(42740)
kill Dread Commander Arganoth##90705 |goto 48.4,70.5 |scenariogoal 3/30883 |q 43806 |only if havequest(43806) or completedq(43806)
step
Run up the path |goto 49.40,66.41 < 30
Watch the dialogue
|tip Follow the group.
Find Varian |scenariostage 4 |goto 38.07,47.13 |q 42740 |only if havequest(42740) or completedq(42740)
Find Varian |scenariostage 4 |goto 38.07,47.13 |q 43806 |only if havequest(43806) or completedq(43806)
step
kill Shielded Anchor##101667+
|tip They look like big floating green crystals.
Shatter #4# Shielded Anchors |scenariogoal 5/27940 |goto 39.0,43.7 |q 42740 |only if havequest(42740) or completedq(42740)
Shatter #4# Shielded Anchors |scenariogoal 5/27940 |goto 39.0,43.7 |q 43806 |only if havequest(43806) or completedq(43806)
step
Watch the dialogue
|tip Follow the group.
Kill enemies all around this area
Assault the Demon City |scenariostage 6 |goto 44.7,47.5 |q 42740 |only if havequest(42740) or completedq(42740)
Assault the Demon City |scenariostage 6 |goto 44.7,47.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
Watch the dialogue
|tip Follow the group.
Get to Tirion |scenariostage 7 |goto 55.8,32.2 |q 42740 |only if havequest(42740) or completedq(42740)
Get to Tirion |scenariostage 7 |goto 55.8,32.2 |q 43806 |only if havequest(43806) or completedq(43806)
step
Kill enemies around this area
kill Krosus##90544
Slay Krosus |scenariostage 8 |goto 55.8,32.2 |q 42740 |only if havequest(42740) or completedq(42740)
Slay Krosus |scenariostage 8 |goto 55.8,32.2 |q 43806 |only if havequest(43806) or completedq(43806)
step
Follow the path up |goto 55.98,31.21 < 20
Watch the dialogue
|tip Follow the group
Kill the enemies that attack in waves
Confront Gul'dan |scenarioend |goto 58.3,27.5 |q 42740 |only if havequest(42740) or completedq(42740)
Assault the Broken Shore |q 42740/2 |goto 58.3,27.5 |only if havequest(42740) or completedq(42740)
Confront Gul'dan |scenarioend |goto 58.3,27.5 |q 43806 |only if havequest(43806) or completedq(43806)
Assault the Broken Shore |q 43806/1 |goto 58.3,27.5 |only if havequest(43806) or completedq(43806)
step
talk Genn Greymane##100395
turnin The Battle for Broken Shore##42740 |goto Stormwind City/0 20.1,34.9 |only if havequest(42740) or completedq(42740)
turnin The Battle for Broken Shore##43806 |goto Stormwind City/0 20.1,34.9 |only if havequest(43806) or completedq(43806)
accept The Fallen Lion##40517 |goto Stormwind City/0 20.1,34.9
step
clicknpc Gilnean Gryphon##101819
Ride a Gryphon to Stormwind Keep |q 40517/1 |goto 21.3,33.7
step
talk Anduin Wrynn##100429
Watch the dialogue
Deliver Varian's Letter and Listen to King Anduin |q 40517/2 |goto 85.9,31.6
step
talk Anduin Wrynn##100429
turnin The Fallen Lion##40517 |goto 85.9,31.6
step
talk Jace Darkweaver##100675
accept Demons Among Us##40593 |goto 85.3,32.3
step
talk Jace Darkweaver##100675
Watch the dialogue
Learn what Jace Darkwhisper Knows about Demons |q 40593/1 |goto 85.3,32.3
stickystart "Kill_Infiltrators"
step
click Demon Portal##246707
Destroy the Courtyard Legion Portal |q 40593/3 |goto 82.5,27.9
step
Follow the path |goto 83.94,30.69 < 15
Go through the doorway |goto 81.55,35.60 < 15
click Demon Portal##246707
Destroy the Courtyard Legion Portal |q 40593/4 |goto 80.6,33.1
step
label "Kill_Infiltrators"
Kill enemies around this area
Kill #5# Infiltrators |q 40593/2 |goto 84.8,32.5
step
talk Anduin Wrynn##100973
turnin Demons Among Us##40593 |goto 85.8,31.8
accept Illidari Allies##44120 |goto 85.8,31.8
step
talk Elerion Bladedancer##101004
|tip On the balcony of the building.
turnin Illidari Allies##44120 |goto 40.3,77.7
step
talk Khadgar's Upgraded Servant##114562
|tip It appears next to you.
accept In the Blink of an Eye##44663 |goto 40.3,77.7 |or
accept In the Blink of an Eye##44184 |goto 40.3,77.7 |or
step
Enter the building |goto 80.75,37.75 < 15 |walk
Follow the path |goto 81.56,35.56 < 15 |walk
click Portal to Dalaran##251123
Watch the dialogue
Take the Portal to Dalaran |q 44663/1 |goto 80.31,35.02 |only if havequest(44663) or completedq(44663)
Take the Portal to Dalaran |q 44184/1 |goto 80.31,35.02 |only if havequest(44184) or completedq(44184)
step
Enter the building |goto Deadwind Pass/21 52.83,51.87 < 15 |walk
talk Archmage Khadgar##113986
Witness Dalaran's Teleportation |q 44663/2 |goto Deadwind Pass/21 49.84,48.31 |only if havequest(44663) or completedq(44663)
Witness Dalaran's Teleportation |q 44184/2 |goto Deadwind Pass/21 49.84,48.31 |only if havequest(44184) or completedq(44184)
step
talk Emissary Auldbridge##111109
turnin In the Blink of an Eye##44663 |goto Dalaran L/10 57.57,45.75 |only if havequest(44663) or completedq(44663)
turnin In the Blink of an Eye##44184 |goto Dalaran L/10 57.57,45.75 |only if havequest(44184) or completedq(44184)
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Legion (100-110)\\Priest\\Priest Intro & Artifacts",{
author="support@zygorguides.com",
description="This guide will walk you through completing the introductory Legion quests and unlocking your class artifacts.",
condition_suggested=function() return level >= 100 and level <= 110 and raceclass('Priest') end,
condition_valid=function() return raceclass('Priest') and level >= 98 end,
condition_valid_msg="You must be a Priest and at least level 98 to complete this guide!",
image=ZGV.DIR.."\\Guides\\Images\\The_Broken_Shore",
startlevel=98.0,
},[[
step
click Hero's Call Board##250720
accept The Legion Returns##40519 |goto Stormwind City/0 62.89,71.57
|only if not havequest(43806)
step
talk Recruiter Lee##107934
turnin The Legion Returns##40519 |goto 37.1,43.1
accept To Be Prepared##42782 |goto 37.1,43.1
|only if not havequest(43806)
step
click Keg of Armor Polish##251195
Polish your Armor |q 42782/1 |goto 29.8,42.9
|only if not havequest(43806)
step
click Light-Infused Crystals##251235
Empower your Weapon |q 42782/2 |goto 30.0,34.1
|only if not havequest(43806)
step
click Ribs##251255
Eat your Last Meal |q 42782/3 |goto 29.7,29.2
|only if not havequest(43806)
step
talk Eunna Young##108750
|tip Fight her.
Warm Up with a Duel |q 42782/4 |goto 32.8,33.1
|only if not havequest(43806)
step
talk Knight Dameron##108916
turnin To Be Prepared##42782 |goto 19.0,26.5
accept The Battle for Broken Shore##42740 |goto 19.0,26.5
|only if not havequest(43806)
step
talk Captain Angelica##108920
Take the Ship to the Broken Shore |q 42740/1 |goto 19.9,29.4
|only if not havequest(43806)
step
Begin the "Battle for Broken Shore" Scenario |scenariostart |q 42740 |only if havequest(42740) or completedq(42740)
Begin the "Battle for Broken Shore" Scenario |scenariostart |q 43806 |only if havequest(43806) or completedq(43806)
step
Watch the dialogue |only if havequest(42740) or completedq(42740)
|tip Ride the boat to shore. |only if havequest(42740) or completedq(42740)
Travel to the Broken Shore |scenariostage 1 |goto Broken Shore/0 49.36,71.79 |q 42740 |only if havequest(42740) or completedq(42740)
Travel to the Broken Shore |scenariostage 1 |goto Broken Shore/0 49.36,71.79 |q 43806 |only if havequest(43806) or completedq(43806)
stickystart "fel_lords1"
stickystart "spires_of_woe"
step
Kill enemies around this area
|tip Follow the group.
Kill #33# Demons |scenariogoal 2/27653 |goto 48.4,70.5 |q 42740 |only if havequest(42740) or completedq(42740)
Kill #33# Demons |scenariogoal 2/27653 |goto 48.4,70.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
label "fel_lords1"
Kill enemies around this area
|tip Follow the group.
Kill #3# Fel Lords |scenariogoal 2/29377 |goto 48.4,70.5 |q 42740 |only if havequest(42740) or completedq(42740)
Kill #3# Fel Lords |scenariogoal 2/29377 |goto 48.4,70.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
label "spires_of_woe"
kill Anchoring Crystal##91704+
|tip Follow the group.
Destroy #3# Spires of Woe |scenariogoal 2/27619 |goto 48.4,70.5 |q 42740 |only if havequest(42740) or completedq(42740)
Destroy #3# Spires of Woe |scenariogoal 2/27619 |goto 48.4,70.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
kill Dread Commander Arganoth##90705 |goto 48.4,70.5 |scenariogoal 3/30883 |q 42740 |only if havequest(42740) or completedq(42740)
kill Dread Commander Arganoth##90705 |goto 48.4,70.5 |scenariogoal 3/30883 |q 43806 |only if havequest(43806) or completedq(43806)
step
Run up the path |goto 49.40,66.41 < 30
Watch the dialogue
|tip Follow the group.
Find Varian |scenariostage 4 |goto 38.07,47.13 |q 42740 |only if havequest(42740) or completedq(42740)
Find Varian |scenariostage 4 |goto 38.07,47.13 |q 43806 |only if havequest(43806) or completedq(43806)
step
kill Shielded Anchor##101667+
|tip They look like big floating green crystals.
Shatter #4# Shielded Anchors |scenariogoal 5/27940 |goto 39.0,43.7 |q 42740 |only if havequest(42740) or completedq(42740)
Shatter #4# Shielded Anchors |scenariogoal 5/27940 |goto 39.0,43.7 |q 43806 |only if havequest(43806) or completedq(43806)
step
Watch the dialogue
|tip Follow the group.
Kill enemies all around this area
Assault the Demon City |scenariostage 6 |goto 44.7,47.5 |q 42740 |only if havequest(42740) or completedq(42740)
Assault the Demon City |scenariostage 6 |goto 44.7,47.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
Watch the dialogue
|tip Follow the group.
Get to Tirion |scenariostage 7 |goto 55.8,32.2 |q 42740 |only if havequest(42740) or completedq(42740)
Get to Tirion |scenariostage 7 |goto 55.8,32.2 |q 43806 |only if havequest(43806) or completedq(43806)
step
Kill enemies around this area
kill Krosus##90544
Slay Krosus |scenariostage 8 |goto 55.8,32.2 |q 42740 |only if havequest(42740) or completedq(42740)
Slay Krosus |scenariostage 8 |goto 55.8,32.2 |q 43806 |only if havequest(43806) or completedq(43806)
step
Follow the path up |goto 55.98,31.21 < 20
Watch the dialogue
|tip Follow the group
Kill the enemies that attack in waves
Confront Gul'dan |scenarioend |goto 58.3,27.5 |q 42740 |only if havequest(42740) or completedq(42740)
Assault the Broken Shore |q 42740/2 |goto 58.3,27.5 |only if havequest(42740) or completedq(42740)
Confront Gul'dan |scenarioend |goto 58.3,27.5 |q 43806 |only if havequest(43806) or completedq(43806)
Assault the Broken Shore |q 43806/1 |goto 58.3,27.5 |only if havequest(43806) or completedq(43806)
step
talk Genn Greymane##100395
turnin The Battle for Broken Shore##42740 |goto Stormwind City/0 20.1,34.9 |only if havequest(42740) or completedq(42740)
turnin The Battle for Broken Shore##43806 |goto Stormwind City/0 20.1,34.9 |only if havequest(43806) or completedq(43806)
accept The Fallen Lion##40517 |goto Stormwind City/0 20.1,34.9
step
clicknpc Gilnean Gryphon##101819
Ride a Gryphon to Stormwind Keep |q 40517/1 |goto 21.3,33.7
step
talk Anduin Wrynn##100429
Watch the dialogue
Deliver Varian's Letter and Listen to King Anduin |q 40517/2 |goto 85.9,31.6
step
talk Anduin Wrynn##100429
turnin The Fallen Lion##40517 |goto 85.9,31.6
step
talk Jace Darkweaver##100675
accept Demons Among Us##40593 |goto 85.3,32.3
step
talk Jace Darkweaver##100675
Watch the dialogue
Learn what Jace Darkwhisper Knows about Demons |q 40593/1 |goto 85.3,32.3
stickystart "Kill_Infiltrators"
step
click Demon Portal##246707
Destroy the Courtyard Legion Portal |q 40593/3 |goto 82.5,27.9
step
Follow the path |goto 83.94,30.69 < 15
Go through the doorway |goto 81.55,35.60 < 15
click Demon Portal##246707
Destroy the Courtyard Legion Portal |q 40593/4 |goto 80.6,33.1
step
label "Kill_Infiltrators"
Kill enemies around this area
Kill #5# Infiltrators |q 40593/2 |goto 84.8,32.5
step
talk Anduin Wrynn##100973
turnin Demons Among Us##40593 |goto 85.8,31.8
accept Illidari Allies##44120 |goto 85.8,31.8
step
talk Elerion Bladedancer##101004
|tip On the balcony of the building.
turnin Illidari Allies##44120 |goto 40.3,77.7
step
talk Khadgar's Upgraded Servant##114562
|tip It appears next to you.
accept In the Blink of an Eye##44663 |goto 40.3,77.7 |or
accept In the Blink of an Eye##44184 |goto 40.3,77.7 |or
step
Enter the building |goto 80.75,37.75 < 15 |walk
Follow the path |goto 81.56,35.56 < 15 |walk
click Portal to Dalaran##251123
Watch the dialogue
Take the Portal to Dalaran |q 44663/1 |goto 80.31,35.02 |only if havequest(44663) or completedq(44663)
Take the Portal to Dalaran |q 44184/1 |goto 80.31,35.02 |only if havequest(44184) or completedq(44184)
step
Enter the building |goto Deadwind Pass/21 52.83,51.87 < 15 |walk
talk Archmage Khadgar##113986
Witness Dalaran's Teleportation |q 44663/2 |goto Deadwind Pass/21 49.84,48.31 |only if havequest(44663) or completedq(44663)
Witness Dalaran's Teleportation |q 44184/2 |goto Deadwind Pass/21 49.84,48.31 |only if havequest(44184) or completedq(44184)
step
talk Emissary Auldbridge##111109
turnin In the Blink of an Eye##44663 |goto Dalaran L/10 57.57,45.75 |only if havequest(44663) or completedq(44663)
turnin In the Blink of an Eye##44184 |goto Dalaran L/10 57.57,45.75 |only if havequest(44184) or completedq(44184)
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Legion (100-110)\\Rogue\\Rogue Intro & Artifacts",{
author="support@zygorguides.com",
description="This guide will walk you through completing the introductory Legion quests and unlocking your class artifacts.",
condition_suggested=function() return level >= 100 and level <= 110 and raceclass('Rogue') end,
condition_valid=function() return raceclass('Rogue') and level >= 98 end,
condition_valid_msg="You must be a Rogue and at least level 98 to complete this guide!",
image=ZGV.DIR.."\\Guides\\Images\\The_Broken_Shore",
startlevel=98.0,
},[[
step
click Hero's Call Board##250720
accept The Legion Returns##40519 |goto Stormwind City/0 62.89,71.57
|only if not havequest(43806)
step
talk Recruiter Lee##107934
turnin The Legion Returns##40519 |goto 37.1,43.1
accept To Be Prepared##42782 |goto 37.1,43.1
|only if not havequest(43806)
step
click Keg of Armor Polish##251195
Polish your Armor |q 42782/1 |goto 29.8,42.9
|only if not havequest(43806)
step
click Light-Infused Crystals##251235
Empower your Weapon |q 42782/2 |goto 30.0,34.1
|only if not havequest(43806)
step
click Ribs##251255
Eat your Last Meal |q 42782/3 |goto 29.7,29.2
|only if not havequest(43806)
step
talk Eunna Young##108750
|tip Fight her.
Warm Up with a Duel |q 42782/4 |goto 32.8,33.1
|only if not havequest(43806)
step
talk Knight Dameron##108916
turnin To Be Prepared##42782 |goto 19.0,26.5
accept The Battle for Broken Shore##42740 |goto 19.0,26.5
|only if not havequest(43806)
step
talk Captain Angelica##108920
Take the Ship to the Broken Shore |q 42740/1 |goto 19.9,29.4
|only if not havequest(43806)
step
Begin the "Battle for Broken Shore" Scenario |scenariostart |q 42740 |only if havequest(42740) or completedq(42740)
Begin the "Battle for Broken Shore" Scenario |scenariostart |q 43806 |only if havequest(43806) or completedq(43806)
step
Watch the dialogue |only if havequest(42740) or completedq(42740)
|tip Ride the boat to shore. |only if havequest(42740) or completedq(42740)
Travel to the Broken Shore |scenariostage 1 |goto Broken Shore/0 49.36,71.79 |q 42740 |only if havequest(42740) or completedq(42740)
Travel to the Broken Shore |scenariostage 1 |goto Broken Shore/0 49.36,71.79 |q 43806 |only if havequest(43806) or completedq(43806)
stickystart "fel_lords1"
stickystart "spires_of_woe"
step
Kill enemies around this area
|tip Follow the group.
Kill #33# Demons |scenariogoal 2/27653 |goto 48.4,70.5 |q 42740 |only if havequest(42740) or completedq(42740)
Kill #33# Demons |scenariogoal 2/27653 |goto 48.4,70.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
label "fel_lords1"
Kill enemies around this area
|tip Follow the group.
Kill #3# Fel Lords |scenariogoal 2/29377 |goto 48.4,70.5 |q 42740 |only if havequest(42740) or completedq(42740)
Kill #3# Fel Lords |scenariogoal 2/29377 |goto 48.4,70.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
label "spires_of_woe"
kill Anchoring Crystal##91704+
|tip Follow the group.
Destroy #3# Spires of Woe |scenariogoal 2/27619 |goto 48.4,70.5 |q 42740 |only if havequest(42740) or completedq(42740)
Destroy #3# Spires of Woe |scenariogoal 2/27619 |goto 48.4,70.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
kill Dread Commander Arganoth##90705 |goto 48.4,70.5 |scenariogoal 3/30883 |q 42740 |only if havequest(42740) or completedq(42740)
kill Dread Commander Arganoth##90705 |goto 48.4,70.5 |scenariogoal 3/30883 |q 43806 |only if havequest(43806) or completedq(43806)
step
Run up the path |goto 49.40,66.41 < 30
Watch the dialogue
|tip Follow the group.
Find Varian |scenariostage 4 |goto 38.07,47.13 |q 42740 |only if havequest(42740) or completedq(42740)
Find Varian |scenariostage 4 |goto 38.07,47.13 |q 43806 |only if havequest(43806) or completedq(43806)
step
kill Shielded Anchor##101667+
|tip They look like big floating green crystals.
Shatter #4# Shielded Anchors |scenariogoal 5/27940 |goto 39.0,43.7 |q 42740 |only if havequest(42740) or completedq(42740)
Shatter #4# Shielded Anchors |scenariogoal 5/27940 |goto 39.0,43.7 |q 43806 |only if havequest(43806) or completedq(43806)
step
Watch the dialogue
|tip Follow the group.
Kill enemies all around this area
Assault the Demon City |scenariostage 6 |goto 44.7,47.5 |q 42740 |only if havequest(42740) or completedq(42740)
Assault the Demon City |scenariostage 6 |goto 44.7,47.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
Watch the dialogue
|tip Follow the group.
Get to Tirion |scenariostage 7 |goto 55.8,32.2 |q 42740 |only if havequest(42740) or completedq(42740)
Get to Tirion |scenariostage 7 |goto 55.8,32.2 |q 43806 |only if havequest(43806) or completedq(43806)
step
Kill enemies around this area
kill Krosus##90544
Slay Krosus |scenariostage 8 |goto 55.8,32.2 |q 42740 |only if havequest(42740) or completedq(42740)
Slay Krosus |scenariostage 8 |goto 55.8,32.2 |q 43806 |only if havequest(43806) or completedq(43806)
step
Follow the path up |goto 55.98,31.21 < 20
Watch the dialogue
|tip Follow the group
Kill the enemies that attack in waves
Confront Gul'dan |scenarioend |goto 58.3,27.5 |q 42740 |only if havequest(42740) or completedq(42740)
Assault the Broken Shore |q 42740/2 |goto 58.3,27.5 |only if havequest(42740) or completedq(42740)
Confront Gul'dan |scenarioend |goto 58.3,27.5 |q 43806 |only if havequest(43806) or completedq(43806)
Assault the Broken Shore |q 43806/1 |goto 58.3,27.5 |only if havequest(43806) or completedq(43806)
step
talk Genn Greymane##100395
turnin The Battle for Broken Shore##42740 |goto Stormwind City/0 20.1,34.9 |only if havequest(42740) or completedq(42740)
turnin The Battle for Broken Shore##43806 |goto Stormwind City/0 20.1,34.9 |only if havequest(43806) or completedq(43806)
accept The Fallen Lion##40517 |goto Stormwind City/0 20.1,34.9
step
clicknpc Gilnean Gryphon##101819
Ride a Gryphon to Stormwind Keep |q 40517/1 |goto 21.3,33.7
step
talk Anduin Wrynn##100429
Watch the dialogue
Deliver Varian's Letter and Listen to King Anduin |q 40517/2 |goto 85.9,31.6
step
talk Anduin Wrynn##100429
turnin The Fallen Lion##40517 |goto 85.9,31.6
step
talk Jace Darkweaver##100675
accept Demons Among Us##40593 |goto 85.3,32.3
step
talk Jace Darkweaver##100675
Watch the dialogue
Learn what Jace Darkwhisper Knows about Demons |q 40593/1 |goto 85.3,32.3
stickystart "Kill_Infiltrators"
step
click Demon Portal##246707
Destroy the Courtyard Legion Portal |q 40593/3 |goto 82.5,27.9
step
Follow the path |goto 83.94,30.69 < 15
Go through the doorway |goto 81.55,35.60 < 15
click Demon Portal##246707
Destroy the Courtyard Legion Portal |q 40593/4 |goto 80.6,33.1
step
label "Kill_Infiltrators"
Kill enemies around this area
Kill #5# Infiltrators |q 40593/2 |goto 84.8,32.5
step
talk Anduin Wrynn##100973
turnin Demons Among Us##40593 |goto 85.8,31.8
accept Illidari Allies##44120 |goto 85.8,31.8
step
talk Elerion Bladedancer##101004
|tip On the balcony of the building.
turnin Illidari Allies##44120 |goto 40.3,77.7
step
talk Khadgar's Upgraded Servant##114562
|tip It appears next to you.
accept In the Blink of an Eye##44663 |goto 40.3,77.7 |or
accept In the Blink of an Eye##44184 |goto 40.3,77.7 |or
step
Enter the building |goto 80.75,37.75 < 15 |walk
Follow the path |goto 81.56,35.56 < 15 |walk
click Portal to Dalaran##251123
Watch the dialogue
Take the Portal to Dalaran |q 44663/1 |goto 80.31,35.02 |only if havequest(44663) or completedq(44663)
Take the Portal to Dalaran |q 44184/1 |goto 80.31,35.02 |only if havequest(44184) or completedq(44184)
step
Enter the building |goto Deadwind Pass/21 52.83,51.87 < 15 |walk
talk Archmage Khadgar##113986
Witness Dalaran's Teleportation |q 44663/2 |goto Deadwind Pass/21 49.84,48.31 |only if havequest(44663) or completedq(44663)
Witness Dalaran's Teleportation |q 44184/2 |goto Deadwind Pass/21 49.84,48.31 |only if havequest(44184) or completedq(44184)
step
talk Emissary Auldbridge##111109
turnin In the Blink of an Eye##44663 |goto Dalaran L/10 57.57,45.75 |only if havequest(44663) or completedq(44663)
turnin In the Blink of an Eye##44184 |goto Dalaran L/10 57.57,45.75 |only if havequest(44184) or completedq(44184)
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Legion (100-110)\\Shaman\\Shaman Intro & Artifacts",{
author="support@zygorguides.com",
description="This guide will walk you through completing the introductory Legion quests and unlocking your class artifacts.",
condition_suggested=function() return level >= 100 and level <= 110 and raceclass('Shaman') end,
condition_valid=function() return raceclass('Shaman') and level >= 98 end,
condition_valid_msg="You must be a Shaman and at least level 98 to complete this guide!",
image=ZGV.DIR.."\\Guides\\Images\\The_Broken_Shore",
startlevel=98.0,
},[[
step
click Hero's Call Board##250720
accept The Legion Returns##40519 |goto Stormwind City/0 62.89,71.57
|only if not havequest(43806)
step
talk Recruiter Lee##107934
turnin The Legion Returns##40519 |goto 37.1,43.1
accept To Be Prepared##42782 |goto 37.1,43.1
|only if not havequest(43806)
step
click Keg of Armor Polish##251195
Polish your Armor |q 42782/1 |goto 29.8,42.9
|only if not havequest(43806)
step
click Light-Infused Crystals##251235
Empower your Weapon |q 42782/2 |goto 30.0,34.1
|only if not havequest(43806)
step
click Ribs##251255
Eat your Last Meal |q 42782/3 |goto 29.7,29.2
|only if not havequest(43806)
step
talk Eunna Young##108750
|tip Fight her.
Warm Up with a Duel |q 42782/4 |goto 32.8,33.1
|only if not havequest(43806)
step
talk Knight Dameron##108916
turnin To Be Prepared##42782 |goto 19.0,26.5
accept The Battle for Broken Shore##42740 |goto 19.0,26.5
|only if not havequest(43806)
step
talk Captain Angelica##108920
Take the Ship to the Broken Shore |q 42740/1 |goto 19.9,29.4
|only if not havequest(43806)
step
Begin the "Battle for Broken Shore" Scenario |scenariostart |q 42740 |only if havequest(42740) or completedq(42740)
Begin the "Battle for Broken Shore" Scenario |scenariostart |q 43806 |only if havequest(43806) or completedq(43806)
step
Watch the dialogue |only if havequest(42740) or completedq(42740)
|tip Ride the boat to shore. |only if havequest(42740) or completedq(42740)
Travel to the Broken Shore |scenariostage 1 |goto Broken Shore/0 49.36,71.79 |q 42740 |only if havequest(42740) or completedq(42740)
Travel to the Broken Shore |scenariostage 1 |goto Broken Shore/0 49.36,71.79 |q 43806 |only if havequest(43806) or completedq(43806)
stickystart "fel_lords1"
stickystart "spires_of_woe"
step
Kill enemies around this area
|tip Follow the group.
Kill #33# Demons |scenariogoal 2/27653 |goto 48.4,70.5 |q 42740 |only if havequest(42740) or completedq(42740)
Kill #33# Demons |scenariogoal 2/27653 |goto 48.4,70.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
label "fel_lords1"
Kill enemies around this area
|tip Follow the group.
Kill #3# Fel Lords |scenariogoal 2/29377 |goto 48.4,70.5 |q 42740 |only if havequest(42740) or completedq(42740)
Kill #3# Fel Lords |scenariogoal 2/29377 |goto 48.4,70.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
label "spires_of_woe"
kill Anchoring Crystal##91704+
|tip Follow the group.
Destroy #3# Spires of Woe |scenariogoal 2/27619 |goto 48.4,70.5 |q 42740 |only if havequest(42740) or completedq(42740)
Destroy #3# Spires of Woe |scenariogoal 2/27619 |goto 48.4,70.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
kill Dread Commander Arganoth##90705 |goto 48.4,70.5 |scenariogoal 3/30883 |q 42740 |only if havequest(42740) or completedq(42740)
kill Dread Commander Arganoth##90705 |goto 48.4,70.5 |scenariogoal 3/30883 |q 43806 |only if havequest(43806) or completedq(43806)
step
Run up the path |goto 49.40,66.41 < 30
Watch the dialogue
|tip Follow the group.
Find Varian |scenariostage 4 |goto 38.07,47.13 |q 42740 |only if havequest(42740) or completedq(42740)
Find Varian |scenariostage 4 |goto 38.07,47.13 |q 43806 |only if havequest(43806) or completedq(43806)
step
kill Shielded Anchor##101667+
|tip They look like big floating green crystals.
Shatter #4# Shielded Anchors |scenariogoal 5/27940 |goto 39.0,43.7 |q 42740 |only if havequest(42740) or completedq(42740)
Shatter #4# Shielded Anchors |scenariogoal 5/27940 |goto 39.0,43.7 |q 43806 |only if havequest(43806) or completedq(43806)
step
Watch the dialogue
|tip Follow the group.
Kill enemies all around this area
Assault the Demon City |scenariostage 6 |goto 44.7,47.5 |q 42740 |only if havequest(42740) or completedq(42740)
Assault the Demon City |scenariostage 6 |goto 44.7,47.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
Watch the dialogue
|tip Follow the group.
Get to Tirion |scenariostage 7 |goto 55.8,32.2 |q 42740 |only if havequest(42740) or completedq(42740)
Get to Tirion |scenariostage 7 |goto 55.8,32.2 |q 43806 |only if havequest(43806) or completedq(43806)
step
Kill enemies around this area
kill Krosus##90544
Slay Krosus |scenariostage 8 |goto 55.8,32.2 |q 42740 |only if havequest(42740) or completedq(42740)
Slay Krosus |scenariostage 8 |goto 55.8,32.2 |q 43806 |only if havequest(43806) or completedq(43806)
step
Follow the path up |goto 55.98,31.21 < 20
Watch the dialogue
|tip Follow the group
Kill the enemies that attack in waves
Confront Gul'dan |scenarioend |goto 58.3,27.5 |q 42740 |only if havequest(42740) or completedq(42740)
Assault the Broken Shore |q 42740/2 |goto 58.3,27.5 |only if havequest(42740) or completedq(42740)
Confront Gul'dan |scenarioend |goto 58.3,27.5 |q 43806 |only if havequest(43806) or completedq(43806)
Assault the Broken Shore |q 43806/1 |goto 58.3,27.5 |only if havequest(43806) or completedq(43806)
step
talk Genn Greymane##100395
turnin The Battle for Broken Shore##42740 |goto Stormwind City/0 20.1,34.9 |only if havequest(42740) or completedq(42740)
turnin The Battle for Broken Shore##43806 |goto Stormwind City/0 20.1,34.9 |only if havequest(43806) or completedq(43806)
accept The Fallen Lion##40517 |goto Stormwind City/0 20.1,34.9
step
clicknpc Gilnean Gryphon##101819
Ride a Gryphon to Stormwind Keep |q 40517/1 |goto 21.3,33.7
step
talk Anduin Wrynn##100429
Watch the dialogue
Deliver Varian's Letter and Listen to King Anduin |q 40517/2 |goto 85.9,31.6
step
talk Anduin Wrynn##100429
turnin The Fallen Lion##40517 |goto 85.9,31.6
step
talk Jace Darkweaver##100675
accept Demons Among Us##40593 |goto 85.3,32.3
step
talk Jace Darkweaver##100675
Watch the dialogue
Learn what Jace Darkwhisper Knows about Demons |q 40593/1 |goto 85.3,32.3
stickystart "Kill_Infiltrators"
step
click Demon Portal##246707
Destroy the Courtyard Legion Portal |q 40593/3 |goto 82.5,27.9
step
Follow the path |goto 83.94,30.69 < 15
Go through the doorway |goto 81.55,35.60 < 15
click Demon Portal##246707
Destroy the Courtyard Legion Portal |q 40593/4 |goto 80.6,33.1
step
label "Kill_Infiltrators"
Kill enemies around this area
Kill #5# Infiltrators |q 40593/2 |goto 84.8,32.5
step
talk Anduin Wrynn##100973
turnin Demons Among Us##40593 |goto 85.8,31.8
accept Illidari Allies##44120 |goto 85.8,31.8
step
talk Elerion Bladedancer##101004
|tip On the balcony of the building.
turnin Illidari Allies##44120 |goto 40.3,77.7
step
talk Khadgar's Upgraded Servant##114562
|tip It appears next to you.
accept In the Blink of an Eye##44663 |goto 40.3,77.7 |or
accept In the Blink of an Eye##44184 |goto 40.3,77.7 |or
step
Enter the building |goto 80.75,37.75 < 15 |walk
Follow the path |goto 81.56,35.56 < 15 |walk
click Portal to Dalaran##251123
Watch the dialogue
Take the Portal to Dalaran |q 44663/1 |goto 80.31,35.02 |only if havequest(44663) or completedq(44663)
Take the Portal to Dalaran |q 44184/1 |goto 80.31,35.02 |only if havequest(44184) or completedq(44184)
step
Enter the building |goto Deadwind Pass/21 52.83,51.87 < 15 |walk
talk Archmage Khadgar##113986
Witness Dalaran's Teleportation |q 44663/2 |goto Deadwind Pass/21 49.84,48.31 |only if havequest(44663) or completedq(44663)
Witness Dalaran's Teleportation |q 44184/2 |goto Deadwind Pass/21 49.84,48.31 |only if havequest(44184) or completedq(44184)
step
talk Emissary Auldbridge##111109
turnin In the Blink of an Eye##44663 |goto Dalaran L/10 57.57,45.75 |only if havequest(44663) or completedq(44663)
turnin In the Blink of an Eye##44184 |goto Dalaran L/10 57.57,45.75 |only if havequest(44184) or completedq(44184)
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Legion (100-110)\\Warlock\\Warlock Intro & Artifacts",{
author="support@zygorguides.com",
description="This guide will walk you through completing the introductory Legion quests and unlocking your class artifacts.",
condition_suggested=function() return level >= 100 and level <= 110 and raceclass('Warlock') end,
condition_valid=function() return raceclass('Warlock') and level >= 98 end,
condition_valid_msg="You must be a Warlock and at least level 98 to complete this guide!",
image=ZGV.DIR.."\\Guides\\Images\\The_Broken_Shore",
startlevel=98.0,
},[[
step
click Hero's Call Board##250720
accept The Legion Returns##40519 |goto Stormwind City/0 62.89,71.57
|only if not havequest(43806)
step
talk Recruiter Lee##107934
turnin The Legion Returns##40519 |goto 37.1,43.1
accept To Be Prepared##42782 |goto 37.1,43.1
|only if not havequest(43806)
step
click Keg of Armor Polish##251195
Polish your Armor |q 42782/1 |goto 29.8,42.9
|only if not havequest(43806)
step
click Light-Infused Crystals##251235
Empower your Weapon |q 42782/2 |goto 30.0,34.1
|only if not havequest(43806)
step
click Ribs##251255
Eat your Last Meal |q 42782/3 |goto 29.7,29.2
|only if not havequest(43806)
step
talk Eunna Young##108750
|tip Fight her.
Warm Up with a Duel |q 42782/4 |goto 32.8,33.1
|only if not havequest(43806)
step
talk Knight Dameron##108916
turnin To Be Prepared##42782 |goto 19.0,26.5
accept The Battle for Broken Shore##42740 |goto 19.0,26.5
|only if not havequest(43806)
step
talk Captain Angelica##108920
Take the Ship to the Broken Shore |q 42740/1 |goto 19.9,29.4
|only if not havequest(43806)
step
Begin the "Battle for Broken Shore" Scenario |scenariostart |q 42740 |only if havequest(42740) or completedq(42740)
Begin the "Battle for Broken Shore" Scenario |scenariostart |q 43806 |only if havequest(43806) or completedq(43806)
step
Watch the dialogue |only if havequest(42740) or completedq(42740)
|tip Ride the boat to shore. |only if havequest(42740) or completedq(42740)
Travel to the Broken Shore |scenariostage 1 |goto Broken Shore/0 49.36,71.79 |q 42740 |only if havequest(42740) or completedq(42740)
Travel to the Broken Shore |scenariostage 1 |goto Broken Shore/0 49.36,71.79 |q 43806 |only if havequest(43806) or completedq(43806)
stickystart "fel_lords1"
stickystart "spires_of_woe"
step
Kill enemies around this area
|tip Follow the group.
Kill #33# Demons |scenariogoal 2/27653 |goto 48.4,70.5 |q 42740 |only if havequest(42740) or completedq(42740)
Kill #33# Demons |scenariogoal 2/27653 |goto 48.4,70.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
label "fel_lords1"
Kill enemies around this area
|tip Follow the group.
Kill #3# Fel Lords |scenariogoal 2/29377 |goto 48.4,70.5 |q 42740 |only if havequest(42740) or completedq(42740)
Kill #3# Fel Lords |scenariogoal 2/29377 |goto 48.4,70.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
label "spires_of_woe"
kill Anchoring Crystal##91704+
|tip Follow the group.
Destroy #3# Spires of Woe |scenariogoal 2/27619 |goto 48.4,70.5 |q 42740 |only if havequest(42740) or completedq(42740)
Destroy #3# Spires of Woe |scenariogoal 2/27619 |goto 48.4,70.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
kill Dread Commander Arganoth##90705 |goto 48.4,70.5 |scenariogoal 3/30883 |q 42740 |only if havequest(42740) or completedq(42740)
kill Dread Commander Arganoth##90705 |goto 48.4,70.5 |scenariogoal 3/30883 |q 43806 |only if havequest(43806) or completedq(43806)
step
Run up the path |goto 49.40,66.41 < 30
Watch the dialogue
|tip Follow the group.
Find Varian |scenariostage 4 |goto 38.07,47.13 |q 42740 |only if havequest(42740) or completedq(42740)
Find Varian |scenariostage 4 |goto 38.07,47.13 |q 43806 |only if havequest(43806) or completedq(43806)
step
kill Shielded Anchor##101667+
|tip They look like big floating green crystals.
Shatter #4# Shielded Anchors |scenariogoal 5/27940 |goto 39.0,43.7 |q 42740 |only if havequest(42740) or completedq(42740)
Shatter #4# Shielded Anchors |scenariogoal 5/27940 |goto 39.0,43.7 |q 43806 |only if havequest(43806) or completedq(43806)
step
Watch the dialogue
|tip Follow the group.
Kill enemies all around this area
Assault the Demon City |scenariostage 6 |goto 44.7,47.5 |q 42740 |only if havequest(42740) or completedq(42740)
Assault the Demon City |scenariostage 6 |goto 44.7,47.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
Watch the dialogue
|tip Follow the group.
Get to Tirion |scenariostage 7 |goto 55.8,32.2 |q 42740 |only if havequest(42740) or completedq(42740)
Get to Tirion |scenariostage 7 |goto 55.8,32.2 |q 43806 |only if havequest(43806) or completedq(43806)
step
Kill enemies around this area
kill Krosus##90544
Slay Krosus |scenariostage 8 |goto 55.8,32.2 |q 42740 |only if havequest(42740) or completedq(42740)
Slay Krosus |scenariostage 8 |goto 55.8,32.2 |q 43806 |only if havequest(43806) or completedq(43806)
step
Follow the path up |goto 55.98,31.21 < 20
Watch the dialogue
|tip Follow the group
Kill the enemies that attack in waves
Confront Gul'dan |scenarioend |goto 58.3,27.5 |q 42740 |only if havequest(42740) or completedq(42740)
Assault the Broken Shore |q 42740/2 |goto 58.3,27.5 |only if havequest(42740) or completedq(42740)
Confront Gul'dan |scenarioend |goto 58.3,27.5 |q 43806 |only if havequest(43806) or completedq(43806)
Assault the Broken Shore |q 43806/1 |goto 58.3,27.5 |only if havequest(43806) or completedq(43806)
step
talk Genn Greymane##100395
turnin The Battle for Broken Shore##42740 |goto Stormwind City/0 20.1,34.9 |only if havequest(42740) or completedq(42740)
turnin The Battle for Broken Shore##43806 |goto Stormwind City/0 20.1,34.9 |only if havequest(43806) or completedq(43806)
accept The Fallen Lion##40517 |goto Stormwind City/0 20.1,34.9
step
clicknpc Gilnean Gryphon##101819
Ride a Gryphon to Stormwind Keep |q 40517/1 |goto 21.3,33.7
step
talk Anduin Wrynn##100429
Watch the dialogue
Deliver Varian's Letter and Listen to King Anduin |q 40517/2 |goto 85.9,31.6
step
talk Anduin Wrynn##100429
turnin The Fallen Lion##40517 |goto 85.9,31.6
step
talk Jace Darkweaver##100675
accept Demons Among Us##40593 |goto 85.3,32.3
step
talk Jace Darkweaver##100675
Watch the dialogue
Learn what Jace Darkwhisper Knows about Demons |q 40593/1 |goto 85.3,32.3
stickystart "Kill_Infiltrators"
step
click Demon Portal##246707
Destroy the Courtyard Legion Portal |q 40593/3 |goto 82.5,27.9
step
Follow the path |goto 83.94,30.69 < 15
Go through the doorway |goto 81.55,35.60 < 15
click Demon Portal##246707
Destroy the Courtyard Legion Portal |q 40593/4 |goto 80.6,33.1
step
label "Kill_Infiltrators"
Kill enemies around this area
Kill #5# Infiltrators |q 40593/2 |goto 84.8,32.5
step
talk Anduin Wrynn##100973
turnin Demons Among Us##40593 |goto 85.8,31.8
accept Illidari Allies##44120 |goto 85.8,31.8
step
talk Elerion Bladedancer##101004
|tip On the balcony of the building.
turnin Illidari Allies##44120 |goto 40.3,77.7
step
talk Khadgar's Upgraded Servant##114562
|tip It appears next to you.
accept In the Blink of an Eye##44663 |goto 40.3,77.7 |or
accept In the Blink of an Eye##44184 |goto 40.3,77.7 |or
step
Enter the building |goto 80.75,37.75 < 15 |walk
Follow the path |goto 81.56,35.56 < 15 |walk
click Portal to Dalaran##251123
Watch the dialogue
Take the Portal to Dalaran |q 44663/1 |goto 80.31,35.02 |only if havequest(44663) or completedq(44663)
Take the Portal to Dalaran |q 44184/1 |goto 80.31,35.02 |only if havequest(44184) or completedq(44184)
step
Enter the building |goto Deadwind Pass/21 52.83,51.87 < 15 |walk
talk Archmage Khadgar##113986
Witness Dalaran's Teleportation |q 44663/2 |goto Deadwind Pass/21 49.84,48.31 |only if havequest(44663) or completedq(44663)
Witness Dalaran's Teleportation |q 44184/2 |goto Deadwind Pass/21 49.84,48.31 |only if havequest(44184) or completedq(44184)
step
talk Emissary Auldbridge##111109
turnin In the Blink of an Eye##44663 |goto Dalaran L/10 57.57,45.75 |only if havequest(44663) or completedq(44663)
turnin In the Blink of an Eye##44184 |goto Dalaran L/10 57.57,45.75 |only if havequest(44184) or completedq(44184)
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Legion (100-110)\\Warrior\\Warrior Intro & Artifacts",{
author="support@zygorguides.com",
description="This guide will walk you through completing the introductory Legion quests and unlocking your class artifacts.",
condition_suggested=function() return level >= 100 and level <= 110 and raceclass('Warrior') end,
condition_valid=function() return raceclass('Warrior') and level >= 98 end,
condition_valid_msg="You must be a Warrior and at least level 98 to complete this guide!",
image=ZGV.DIR.."\\Guides\\Images\\The_Broken_Shore",
startlevel=98.0,
},[[
step
click Hero's Call Board##250720
accept The Legion Returns##40519 |goto Stormwind City/0 62.89,71.57
|only if not havequest(43806)
step
talk Recruiter Lee##107934
turnin The Legion Returns##40519 |goto 37.1,43.1
accept To Be Prepared##42782 |goto 37.1,43.1
|only if not havequest(43806)
step
click Keg of Armor Polish##251195
Polish your Armor |q 42782/1 |goto 29.8,42.9
|only if not havequest(43806)
step
click Light-Infused Crystals##251235
Empower your Weapon |q 42782/2 |goto 30.0,34.1
|only if not havequest(43806)
step
click Ribs##251255
Eat your Last Meal |q 42782/3 |goto 29.7,29.2
|only if not havequest(43806)
step
talk Eunna Young##108750
|tip Fight her.
Warm Up with a Duel |q 42782/4 |goto 32.8,33.1
|only if not havequest(43806)
step
talk Knight Dameron##108916
turnin To Be Prepared##42782 |goto 19.0,26.5
accept The Battle for Broken Shore##42740 |goto 19.0,26.5
|only if not havequest(43806)
step
talk Captain Angelica##108920
Take the Ship to the Broken Shore |q 42740/1 |goto 19.9,29.4
|only if not havequest(43806)
step
Begin the "Battle for Broken Shore" Scenario |scenariostart |q 42740 |only if havequest(42740) or completedq(42740)
Begin the "Battle for Broken Shore" Scenario |scenariostart |q 43806 |only if havequest(43806) or completedq(43806)
step
Watch the dialogue |only if havequest(42740) or completedq(42740)
|tip Ride the boat to shore. |only if havequest(42740) or completedq(42740)
Travel to the Broken Shore |scenariostage 1 |goto Broken Shore/0 49.36,71.79 |q 42740 |only if havequest(42740) or completedq(42740)
Travel to the Broken Shore |scenariostage 1 |goto Broken Shore/0 49.36,71.79 |q 43806 |only if havequest(43806) or completedq(43806)
stickystart "fel_lords1"
stickystart "spires_of_woe"
step
Kill enemies around this area
|tip Follow the group.
Kill #33# Demons |scenariogoal 2/27653 |goto 48.4,70.5 |q 42740 |only if havequest(42740) or completedq(42740)
Kill #33# Demons |scenariogoal 2/27653 |goto 48.4,70.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
label "fel_lords1"
Kill enemies around this area
|tip Follow the group.
Kill #3# Fel Lords |scenariogoal 2/29377 |goto 48.4,70.5 |q 42740 |only if havequest(42740) or completedq(42740)
Kill #3# Fel Lords |scenariogoal 2/29377 |goto 48.4,70.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
label "spires_of_woe"
kill Anchoring Crystal##91704+
|tip Follow the group.
Destroy #3# Spires of Woe |scenariogoal 2/27619 |goto 48.4,70.5 |q 42740 |only if havequest(42740) or completedq(42740)
Destroy #3# Spires of Woe |scenariogoal 2/27619 |goto 48.4,70.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
kill Dread Commander Arganoth##90705 |goto 48.4,70.5 |scenariogoal 3/30883 |q 42740 |only if havequest(42740) or completedq(42740)
kill Dread Commander Arganoth##90705 |goto 48.4,70.5 |scenariogoal 3/30883 |q 43806 |only if havequest(43806) or completedq(43806)
step
Run up the path |goto 49.40,66.41 < 30
Watch the dialogue
|tip Follow the group.
Find Varian |scenariostage 4 |goto 38.07,47.13 |q 42740 |only if havequest(42740) or completedq(42740)
Find Varian |scenariostage 4 |goto 38.07,47.13 |q 43806 |only if havequest(43806) or completedq(43806)
step
kill Shielded Anchor##101667+
|tip They look like big floating green crystals.
Shatter #4# Shielded Anchors |scenariogoal 5/27940 |goto 39.0,43.7 |q 42740 |only if havequest(42740) or completedq(42740)
Shatter #4# Shielded Anchors |scenariogoal 5/27940 |goto 39.0,43.7 |q 43806 |only if havequest(43806) or completedq(43806)
step
Watch the dialogue
|tip Follow the group.
Kill enemies all around this area
Assault the Demon City |scenariostage 6 |goto 44.7,47.5 |q 42740 |only if havequest(42740) or completedq(42740)
Assault the Demon City |scenariostage 6 |goto 44.7,47.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
Watch the dialogue
|tip Follow the group.
Get to Tirion |scenariostage 7 |goto 55.8,32.2 |q 42740 |only if havequest(42740) or completedq(42740)
Get to Tirion |scenariostage 7 |goto 55.8,32.2 |q 43806 |only if havequest(43806) or completedq(43806)
step
Kill enemies around this area
kill Krosus##90544
Slay Krosus |scenariostage 8 |goto 55.8,32.2 |q 42740 |only if havequest(42740) or completedq(42740)
Slay Krosus |scenariostage 8 |goto 55.8,32.2 |q 43806 |only if havequest(43806) or completedq(43806)
step
Follow the path up |goto 55.98,31.21 < 20
Watch the dialogue
|tip Follow the group
Kill the enemies that attack in waves
Confront Gul'dan |scenarioend |goto 58.3,27.5 |q 42740 |only if havequest(42740) or completedq(42740)
Assault the Broken Shore |q 42740/2 |goto 58.3,27.5 |only if havequest(42740) or completedq(42740)
Confront Gul'dan |scenarioend |goto 58.3,27.5 |q 43806 |only if havequest(43806) or completedq(43806)
Assault the Broken Shore |q 43806/1 |goto 58.3,27.5 |only if havequest(43806) or completedq(43806)
step
talk Genn Greymane##100395
turnin The Battle for Broken Shore##42740 |goto Stormwind City/0 20.1,34.9 |only if havequest(42740) or completedq(42740)
turnin The Battle for Broken Shore##43806 |goto Stormwind City/0 20.1,34.9 |only if havequest(43806) or completedq(43806)
accept The Fallen Lion##40517 |goto Stormwind City/0 20.1,34.9
step
clicknpc Gilnean Gryphon##101819
Ride a Gryphon to Stormwind Keep |q 40517/1 |goto 21.3,33.7
step
talk Anduin Wrynn##100429
Watch the dialogue
Deliver Varian's Letter and Listen to King Anduin |q 40517/2 |goto 85.9,31.6
step
talk Anduin Wrynn##100429
turnin The Fallen Lion##40517 |goto 85.9,31.6
step
talk Jace Darkweaver##100675
accept Demons Among Us##40593 |goto 85.3,32.3
step
talk Jace Darkweaver##100675
Watch the dialogue
Learn what Jace Darkwhisper Knows about Demons |q 40593/1 |goto 85.3,32.3
stickystart "Kill_Infiltrators"
step
click Demon Portal##246707
Destroy the Courtyard Legion Portal |q 40593/3 |goto 82.5,27.9
step
Follow the path |goto 83.94,30.69 < 15
Go through the doorway |goto 81.55,35.60 < 15
click Demon Portal##246707
Destroy the Courtyard Legion Portal |q 40593/4 |goto 80.6,33.1
step
label "Kill_Infiltrators"
Kill enemies around this area
Kill #5# Infiltrators |q 40593/2 |goto 84.8,32.5
step
talk Anduin Wrynn##100973
turnin Demons Among Us##40593 |goto 85.8,31.8
accept Illidari Allies##44120 |goto 85.8,31.8
step
talk Elerion Bladedancer##101004
|tip On the balcony of the building.
turnin Illidari Allies##44120 |goto 40.3,77.7
step
talk Khadgar's Upgraded Servant##114562
|tip It appears next to you.
accept In the Blink of an Eye##44663 |goto 40.3,77.7 |or
accept In the Blink of an Eye##44184 |goto 40.3,77.7 |or
step
Enter the building |goto 80.75,37.75 < 15 |walk
Follow the path |goto 81.56,35.56 < 15 |walk
click Portal to Dalaran##251123
Watch the dialogue
Take the Portal to Dalaran |q 44663/1 |goto 80.31,35.02 |only if havequest(44663) or completedq(44663)
Take the Portal to Dalaran |q 44184/1 |goto 80.31,35.02 |only if havequest(44184) or completedq(44184)
step
Enter the building |goto Deadwind Pass/21 52.83,51.87 < 15 |walk
talk Archmage Khadgar##113986
Witness Dalaran's Teleportation |q 44663/2 |goto Deadwind Pass/21 49.84,48.31 |only if havequest(44663) or completedq(44663)
Witness Dalaran's Teleportation |q 44184/2 |goto Deadwind Pass/21 49.84,48.31 |only if havequest(44184) or completedq(44184)
step
talk Emissary Auldbridge##111109
turnin In the Blink of an Eye##44663 |goto Dalaran L/10 57.57,45.75 |only if havequest(44663) or completedq(44663)
turnin In the Blink of an Eye##44184 |goto Dalaran L/10 57.57,45.75 |only if havequest(44184) or completedq(44184)
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Legion (100-110)\\Broken Shore\\Excavator Karla Quests",{
author="support@zygorguides.com",
description="This guide will walk you through completing the treasure hunting quests offered by Excavator Karla on Broken Shore.",
condition_suggested=function() return level >= 110 and completedq(46734) and not completedq(46666) end,
condition_end=function() return completedq(46666) end,
startlevel=110.0,
},[[
stickystart "Karla"
step
Follow the path |goto Broken Shore/0 44.20,62.29 < 20 |only if walking
Follow the path |goto 40.64,61.76 < 20 |only if walking
Follow the path |goto 40.33,67.42 < 20 |only if walking
talk Excavator Karla##119886
accept Spiders, Huh?##46499 |goto 39.54,71.68
|tip Quests from this NPC appear 24 hours after completing the last one offered.
step
Follow the path |goto 48.38,21.48 < 20 |only if walking
Cross the water |goto 45.30,23.59 < 25 |only if walking
Follow the path |goto 44.57,27.57 < 25 |only if walking
Follow the path |goto 41.83,28.51 < 25 |only if walking
click Spider-Covered Treasure Chest##268472
collect Potentially Precious Gem##146955 |n
Find the Creeping Grotto treasure |q 46499/1 |goto 43.44,31.38
step
Follow the path |goto Broken Shore/0 44.20,62.29 < 20 |only if walking
Follow the path |goto 40.64,61.76 < 20 |only if walking
Follow the path |goto 40.33,67.42 < 20 |only if walking
talk Excavator Karla##119886
turnin Spiders, Huh?##46499 |goto 39.54,71.68
step
Follow the path |goto Broken Shore/0 44.20,62.29 < 20 |only if walking
Follow the path |goto 40.64,61.76 < 20 |only if walking
Follow the path |goto 40.33,67.42 < 20 |only if walking
talk Excavator Karla##119886
accept Grave Robbin'##46501 |goto 39.54,71.68
|tip Quests from this NPC appear 24 hours after completing the last one offered.
step
Follow the path |goto Broken Shore/0 43.89,58.31 < 20 |only if walking
Follow the path |goto 47.00,58.50 < 20 |only if walking
Follow the path |goto 51.56,51.23 < 20 |only if walking
click Dusty Treasure Chest##268510
Retrieve the Soul Ruin treasure |q 46501/1 |goto 49.68,46.76
step
Follow the path |goto Broken Shore/0 44.20,62.29 < 20 |only if walking
Follow the path |goto 40.64,61.76 < 20 |only if walking
Follow the path |goto 40.33,67.42 < 20 |only if walking
talk Excavator Karla##119886
turnin Grave Robbin'##46501 |goto 39.54,71.68
step
Follow the path |goto Broken Shore/0 44.20,62.29 < 20 |only if walking
Follow the path |goto 40.64,61.76 < 20 |only if walking
Follow the path |goto 40.33,67.42 < 20 |only if walking
talk Excavator Karla##119886
accept Tomb Raidering##46509 |goto 39.54,71.68
|tip Quests from this NPC appear 24 hours after completing the last one offered.
step
Cross the water |goto Broken Shore/0 52.04,25.18 < 20 |only if walking
Follow the path up |goto 55.39,27.70 < 25 |only if walking
Follow the path |goto 57.60,28.37 < 25 |only if walking
Follow the path |goto 62.08,23.45 < 20 |only if walking
Follow the path |goto 64.20,23.19 < 15 |only if walking
Follow the path |goto 66.48,22.54 < 15 |only if walking
Follow the path |goto 68.65,19.31 < 15 |only if walking
click Grandiose Treasure Chest##268511
Locate the Tomb of Sargeras treasure |q 46509/1 |goto 67.60,16.17
step
Follow the path |goto Broken Shore/0 44.20,62.29 < 20 |only if walking
Follow the path |goto 40.64,61.76 < 20 |only if walking
Follow the path |goto 40.33,67.42 < 20 |only if walking
talk Excavator Karla##119886
turnin Tomb Raidering##46509 |goto 39.54,71.68
step
Follow the path |goto Broken Shore/0 44.20,62.29 < 20 |only if walking
Follow the path |goto 40.64,61.76 < 20 |only if walking
Follow the path |goto 40.33,67.42 < 20 |only if walking
talk Excavator Karla##119886
accept Ship Graveyard##46510 |goto 39.54,71.68
|tip Quests from this NPC appear 24 hours after completing the last one offered.
step
Follow the path |goto 42.30,72.48 < 20 |only if walking
Follow the path |goto 45.22,73.54 < 25 |only if walking
Swim across the water |goto 47.28,75.09 < 25 |only if walking
Swim under the stones |goto 53.99,77.27 < 20 |only if walking
click Sunken Treasure Chest##268512
|tip Clicking a Damaged Diving Helmet will give you temporary increased swim speed and underwater breathing.
collect 1 Wonderfully-Adorned Cloth##146958 |q 46510/1 |goto 54.70,77.89
step
Follow the path |goto Broken Shore/0 44.20,62.29 < 20 |only if walking
Follow the path |goto 40.64,61.76 < 20 |only if walking
Follow the path |goto 40.33,67.42 < 20 |only if walking
talk Excavator Karla##119886
turnin Ship Graveyard##46510 |goto 39.54,71.68
step
Follow the path |goto Broken Shore/0 44.20,62.29 < 20 |only if walking
Follow the path |goto 40.64,61.76 < 20 |only if walking
Follow the path |goto 40.33,67.42 < 20 |only if walking
talk Excavator Karla##119886
accept We're Treasure Hunters##46511 |goto 39.54,71.68
|tip Quests from this NPC appear 24 hours after completing the last one offered.
step
Follow the path |goto 68.61,46.68 < 20 |only if walking
Follow the path |goto 66.38,41.54 < 25 |only if walking
Follow the path |goto 69.88,35.70 < 25 |only if walking
Follow the path |goto 73.74,29.02 < 20 |only if walking
Follow the path |goto 75.19,23.89 < 20 |only if walking
click Sandy Treasure Chest##268513
Locate the Felrage Strand treasure |q 46511/1 |goto 75.76,21.73
step
Follow the path |goto Broken Shore/0 44.20,62.29 < 20 |only if walking
Follow the path |goto 40.64,61.76 < 20 |only if walking
Follow the path |goto 40.33,67.42 < 20 |only if walking
talk Excavator Karla##119886
turnin We're Treasure Hunters##46511 |goto 39.54,71.68
step
Follow the path |goto Broken Shore/0 44.20,62.29 < 20 |only if walking
Follow the path |goto 40.64,61.76 < 20 |only if walking
Follow the path |goto 40.33,67.42 < 20 |only if walking
talk Excavator Karla##119886
accept The Motherlode##46666 |goto 39.54,71.68
|tip Quests from this NPC appear 24 hours after completing the last one offered.
step
Follow the path |goto 42.15,72.39 < 20 |only if walking
Follow the path |goto 45.34,70.51 < 25 |only if walking
click Peculiar Rope
Investigate Excavator Karla's Cave |q 46666/1 |goto 47.84,67.35
|tip Wait for the dialogue to complete.
step
talk Excavator Karla##119886
turnin The Motherlode##46666 |goto 45.04,52.30
|tip Don't forget to open one of the caches for a reward.
step
label "Karla"
Excavator Karla only offers a quest every 24 hours
step
Congratulations!
You have completed the Excavator Karla questline
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Legion (100-110)\\Dalaran Postmaster Quest Line",{
author="support@zygorguides.com",
description="This guide will walk you through completing the Dalaran Postmaster quests to unlock The Postmaster's Office.",
condition_suggested=function() return level >= 98 and level <= 110 and not completedq(50247) end,
},[[
step
click Lost Mail##247797
|tip Lost Mail is found near mailboxes in Dalaran.
|tip It spawns randomly and periodically.
|tip In your minimap tracking menu, enable Mailbox under the Townsfolk category.
|tip Go from mailbox to mailbox searching for a tiny letter at the base.
|tip You can also purchase it from the Auction House.
collect Lost Mail##134859 |n
Read the Lost Mail |use Lost Mail##135479 |only if itemcount(135479) >= 1
accept Lost Mail##41368 |goto Dalaran L/10 58.98,48.70 |only if itemcount(135479) == 0
accept Lost Mail##41411 |goto Dalaran L/10 58.98,48.70 |only if itemcount(135479) >= 1
|tip Only one of these will be available.
step
Enter the tunnel |goto 60.41,48.57 < 7 |walk
Go down the stairs |goto Dalaran L/11 76.95,67.93 < 7 |walk
Go down the stairs |goto 73.02,64.98 < 7 |walk
Go down the stairs |goto 70.11,62.34 < 7 |walk
Follow the path |goto 64.82,55.80 < 7 |walk
Follow the path |goto 60.23,49.36 < 10 |walk
Enter the tunnel |goto 59.70,39.41 < 7 |walk
Leave the tunnel |goto 67.27,25.33 < 7 |walk
talk Madam Goya##100986
|tip During periods without guards, The Underbelly is a PvP zone.
|tip Along the path as you reach the bottom of the stairs, talk to Raethan to hire a guard if you desire protection.
|tip Guards last for five minutes.
turnin Lost Mail##41368 |goto 71.41,17.92 |only if havequest(41368)
turnin Lost Mail##41411 |goto 71.41,17.92 |only if havequest(41411)
step
Enter the tunnel |goto 67.39,25.13 < 7 |walk
Leave the tunnel |goto 59.70,39.38 < 7 |walk
Enter the tunnel |goto 55.70,46.98 < 7 |walk
Leave the tunnel |goto 52.95,51.95 < 7 |walk
Follow the path |goto 40.99,42.02 < 7 |walk
Enter the tunnel |goto 34.74,43.60 < 7 |walk
Leave the tunnel |goto 31.30,43.23 < 7 |walk |c |q 41397
step
Enter the tunnel |goto 29.42,49.60 < 7 |walk
Go up the ramp |goto 27.36,53.52 < 7 |walk
Go up the ramp |goto 23.52,55.13 < 7 |walk
Go up the stairs |goto 20.26,57.31 < 7 |walk
Go up the stairs |goto 24.84,57.31 < 7 |walk
Leave the tunnel |goto Dalaran L/10 34.61,45.56 < 7 |walk |c |q 41397
step
Follow the path |goto 33.91,39.18 < 7 |walk
Follow the path |goto 32.05,34.54 < 10 |walk
click Mail Tube##280797 |goto 33.46,31.60 < 7 |walk
Enter The Postmaster's Office |goto 39.46,41.83 < 7 |noway |c |q 41397
step
talk The Postmaster##103976
accept Return to Sender##46278 |goto 37.62,40.15
step
Return #9# letters |q 46278/1 |goto 38.98,40.71
|tip Click letters floating in the air around the room.
|tip Each one you click will return one letter.
step
talk The Postmaster##103976
turnin Return to Sender##46278 |goto 37.62,40.15
accept A Huge Package##41397 |goto 37.62,40.15
step
click Sack of Solid Stone
Heft the Solid Stone |q 41397/1 |goto 39.75,39.07
step
click Mail Tube##280797 |goto 37.87,42.14
Leave The Postmaster's Office |goto 32.99,31.62 |noway |c |q 41397
step
Follow the path |goto 32.12,35.47 < 10 |walk
Follow the path |goto 38.93,44.80 < 10 |walk
Follow the path |goto 48.51,26.70 < 10 |walk
Deliver 1,362 pieces of solid stone |q 41397/2 |goto 44.34,17.78
|tip Use the extra action button that appears on-screen.
step
Follow the path |goto 48.53,26.98 < 10 |only if walking
Follow the path |goto 39.21,45.21 < 10 |only if walking
Follow the path |goto 31.91,35.16 < 10 |only if walking
click Mail Tube##280797 |goto 33.47,31.62 < 7
Enter The Postmaster's Office |goto 39.46,41.83 < 7 |noway |c |q 41397
step
talk The Postmaster##103976
turnin A Huge Package##41397 |goto 37.61,40.15
accept Priority Delivery##41367 |goto 37.61,40.15
step
click Portal to the Frozen Throne
Take the portal to the Frozen Throne |q 41367/1 |goto 38.67,40.17
step
clicknpc The Lich King##103996
Retrieve the Forgotten Loot |q 41367/2 |goto Icecrown Citadel L/4 49.35,70.79
step
kill Nexus-Lord Ashaal##132999
Slay Nexus-Lord Ashaal |q 41367/3 |goto 49.35,70.79
step
click Portal to Dalaran##251123 |goto 49.86,38.98
Return to Dalaran |goto Dalaran L/10 60.92,44.72 < 10 |noway |c |q 41367
step
Locate the Stalwart Adventurer |q 41367/4 |goto Feralas/0 68.69,73.06
step
talk Johnny Awesome##52562
turnin Priority Delivery##41367 |goto 68.69,73.06
accept Service with a Smile##41394 |goto 68.69,73.06
step
Follow the path |goto 70.24,72.59 < 10 |only if walking
Follow the path |goto 70.64,72.70 < 7 |only if walking
talk Gott Weedlespan##51735
Tell him _"I.... have to sell this horse to you."_
Invincible's Reins sold |q 41394/1 |goto 70.76,73.08
step
Follow the path |goto 70.58,72.64 < 10 |only if walking
Follow the path |goto 70.11,72.67 < 10 |only if walking
talk Johnny Awesome##52562
turnin Service with a Smile##41394 |goto 68.69,73.07
accept Due Reward##41395 |goto 68.69,73.07
step
clicknpc Wilson##104110
Honor Twinkles' memory |q 41395/1 |goto Hillsbrad Foothills/0 38.72,59.99
step
Click the Quest Complete Box:
turnin Due Reward##41395
step
click Mail Tube##280797 |goto Dalaran L/10 33.47,31.62 < 7
Enter The Postmaster's Office |goto 39.46,41.83 < 7 |noway |c |q 50247
step
talk The Postmaster##103976
accept The Mail Must Flow##50247 |goto 37.61,40.13
step
talk The Postmaster##103976 |goto 37.61,40.13
Tell him _"I want to sort letters!"_
|tip Each letter will have an address.
|tip Click the portal for the zone that corresponds to the address.
Sort at Least 15 Letters |q 50247/1 |goto 37.59,40.53
step
talk The Postmaster##103976
turnin The Mail Must Flow##50247 |goto 37.61,40.13
]])
