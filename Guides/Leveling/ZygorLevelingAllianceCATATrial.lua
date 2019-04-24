local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("LevelingACATA") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Death Knight (55-58)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Death Knight 55-58",
condition_valid=function() return raceclass('DeathKnight')  end,
condition_valid_msg="Death Knight only.",
condition_suggested=function() return raceclass('DeathKnight') and not completedq(13188) and level < 100 end,
condition_suggested_exclusive=true,
condition_end=function() return completedq(13188) end,
next="Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\Blasted Lands (40-60)",
startlevel=55,
endlevel=58
},[[
step
talk The Lich King##25462
accept In Service Of The Lich King##12593 |goto Plaguelands: The Scarlet Enclave/0 51.34,35.18
step
talk Instructor Razuvious##28357
|tip He walks around this area.
turnin In Service Of The Lich King##12593 |goto 48,28.5
accept The Emblazoned Runeblade##12619 |goto 48,28.5
step
click Battle-worn Sword##190584
collect Battle-worn Sword##38607 |c |goto 47.4,31 |q 12619
step
Use the Battle-worn Sword next to the Runeforge |use Battle-worn Sword##38607
collect Runebladed Sword##38631 |q 12619/1 |goto 47.39,31.24
step
talk Instructor Razuvious##28357
|tip He walks around this area.
turnin The Emblazoned Runeblade##12619 |goto 48,28.5
accept Runeforging: Preparation For Battle##12842 |goto 48,28.5
step
Use the Runeforging ability near the Runeforge |cast Runeforging##53428
|tip Open your character's equipment window and engrave your weapon with a rune.
Emblazon Your Weapon |q 12842/1 |goto 47.39,31.24
step
talk Instructor Razuvious##28357
|tip He walks around this area.
turnin Runeforging: Preparation For Battle##12842 |goto 48,28.5
accept The Endless Hunger##12848 |goto 48,28.5
step
click Acherus Soul Prison##8115
|tip They look like horned skulls on the wall, chaining the prisoners around this area.
Watch the dialogue
kill Unworthy Initiate##29565
Dominate an Unworthy Initiate |q 12848/1 |goto 48.50,28.98
step
talk Instructor Razuvious##28357
|tip He walks around this area.
turnin The Endless Hunger##12848 |goto 48,28.5
accept The Eye Of Acherus##12636 |goto 48,28.5
step
Follow the path |goto 49.81,31.94 < 20 |walk
talk The Lich King##25462
turnin The Eye Of Acherus##12636 |goto 51.34,35.18
accept Death Comes From On High##12641 |goto 51.34,35.18
step
click Eye of Acherus Control Mechanism##191609
Take Control of the Eye of Acherus |havebuff The Eye of Acherus |goto 52.13,35.21 |q 12641
step
_Go Northeast:_
|tip If you stay floating high enough, the soldiers will not attack you.
|tip Go to the blacksmith building with a floating red arrow above it.
Use the Siphon of Acherus ability |petaction 1
|tip Get near the floating red arrow.
Analyze the New Avalon Forge |q 12641/1
step
_Go South:_
|tip If you stay floating high enough, the soldiers will not attack you.
|tip Go to the big fort building with a floating red arrow above it.
Use the Siphon of Acherus ability |petaction 1
|tip Get near the floating red arrow.
Analyze the Scarlet Hold |q 12641/3
step
_Go West:_
|tip If you stay floating high enough, the soldiers will not attack you.
|tip Go to the town hall building with a clock tower, with a floating red arrow above it.
Use the Siphon of Acherus ability |petaction 1
|tip Get near the floating red arrow.
Analyze the New Avalon Town Hall |q 12641/2
step
_Go South:_
|tip If you stay floating high enough, the soldiers will not attack you.
|tip Go to the small church building with a floating red arrow above it.
Use the Siphon of Acherus ability |petaction 1
|tip Get near the floating red arrow.
Analyze the Chapel of the Crimson Flame |q 12641/4
step
Use the Recall Eye of Acherus ability |petaction 5
Click Here After You Return to Ebon Hold |confirm |c |q 12641
step
talk The Lich King##25462
turnin Death Comes From On High##12641 |goto 51.34,35.18
accept The Might Of The Scourge##12657 |goto 51.34,35.18
step
Walk onto the teleport pad |goto 50.49,33.37 |n
Teleport Upstairs |goto 50.13,32.49 < 10 |noway |c |q 12657
step
talk Highlord Darion Mograine##28444
turnin The Might Of The Scourge##12657 |goto 48.88,29.76
accept Report To Scourge Commander Thalanor##12850 |goto 48.88,29.76
step
talk Lord Thorval##28472
accept The Power Of Blood, Frost And Unholy##12849 |goto 47.48,26.56 |instant
step
talk Scourge Commander Thalanor##28510
|tip He walks around this area.
turnin Report To Scourge Commander Thalanor##12850 |goto 50.70,35.09
accept The Scarlet Harvest##12670 |goto 50.70,35.09
step
clicknpc Scourge Gryphon##29488 |goto 50.96,36.15 |n
Arrive at Death's Breach |goto 53.2,31.1 < 20 |noway |c |q 12670
step
talk Prince Valanar##28377
turnin The Scarlet Harvest##12670 |goto 52.28,33.96
accept If Chaos Drives, Let Suffering Hold The Reins##12678 |goto 52.28,33.96
step
talk Salanar the Horseman##28653
|tip He walks back and forth along this path.
accept Grand Theft Palomino##12680 |goto 52.5,34.6
step
talk Olrun the Battlecaller##29047
|tip She flies around this small area.
accept Death's Challenge##12733 |goto 54.63,33.95
step
talk Death Knight Initiate##28406
|tip They are all around this area.
Tell them _"I challenge you, death knight!"_
kill Death Knight Initiate##28392+
Defeat #5# Death Knights in a Duel |q 12733/1 |goto 53.48,33.15
step
talk Olrun the Battlecaller##29047
|tip She flies around this small area.
turnin Death's Challenge##12733 |goto 54.63,33.95
step
talk Orithos the Sky Darkener##28647
|tip He paces around this area.
accept Tonight We Dine In Havenshire##12679 |goto 53.2,36.9
stickystart "Slay_Scarlet_Crusaders"
stickystart "Citizens_Of_Havenshire"
step
Follow the path down |goto 50.66,38.32 < 20 |only if walking
Follow the path down |goto 52.21,43.78 < 15 |only if walking
click Abandoned Mail##190917
|tip It looks like a roll of parchment on top of the mailbox.
accept Abandoned Mail##12711 |goto 55.26,46.15 |instant
step
label "Slay_Scarlet_Crusaders"
Kill Scarlet enemies around this area
Slay #10# Scarlet Crusaders |q 12678/1 |goto 52.2,45.9
stickystart "Saronite_Arrows"
step
label "Citizens_Of_Havenshire"
kill 10 Citizen of Havenshire##28660 |q 12678/2 |goto 56.4,45
step
label "Saronite_Arrows"
click Saronite Arrow##190691
|tip They look like yellow and green arrows stuck in the ground around this area.
collect 15 Saronite Arrow##39160 |q 12679/1 |goto 56.2,49.4
step
click Havenshire Horse
|tip They are all around this area.
|tip Watch out for Stable Master Kitrik, he's elite and will pull you off the horse.
Ride the Havenshire Horse |invehicle |goto 55.74,43.39 |c |q 12680
step
Follow the path up |goto 53.05,43.28 < 20 |only if walking
Continue up the path |goto 50.61,40.72 < 20 |only if walking
Follow the path |goto 50.92,36.79 < 20 |only if walking
Use the Deliver Stolen Horse ability next to Salanar the Horseman
|tip He walks back and forth along this path.
Successfully Steal the Horse |goto 52.8,34.1 |q 12680/1
step
talk Salanar the Horseman##28653
|tip He walks back and forth along this path.
turnin Grand Theft Palomino##12680 |goto 52.5,34.6
accept Into the Realm of Shadows##12687 |goto 52.5,34.6
step
Follow the path down |goto 50.66,38.32 < 20 |only if walking
Follow the path down |goto 52.21,43.78 < 30 |only if walking
kill Dark Rider of Acherus##28768
|tip They ride around on horses around this area.
clicknpc Acherus Deathcharger##28302
|tip It's the horse they were riding on before you killed them.
Click Here After You Steal an Acherus Deathcharger |confirm |c |goto 55.6,43.2 |q 12687
step
Follow the path up |goto 53.05,43.28 < 20 |only if walking
Use the Horseman's Call ability
Watch the dialogue
Complete the Horseman's Challenge |q 12687/1 |goto 50.88,41.74
step
Follow the path up |goto 50.61,40.72 < 20 |only if walking
Follow the path |goto 50.92,36.79 < 20 |only if walking
talk Salanar the Horseman##28653
|tip He walks back and forth along this path.
turnin Into the Realm of Shadows##12687 |goto 52.5,34.6
step
talk Prince Valanar##28377
turnin If Chaos Drives, Let Suffering Hold The Reins##12678 |goto 52.3,34
step
talk Orithos the Sky Darkener##28647
|tip He paces around this area.
turnin Tonight We Dine In Havenshire##12679 |goto 53.2,36.9
step
talk Prince Valanar##28377
accept Gothik the Harvester##12697 |goto 52.3,34
step
talk Gothik the Harvester##28658
turnin Gothik the Harvester##12697 |goto 54.07,35.03
accept The Gift That Keeps On Giving##12698 |goto 54.07,35.03
step
Follow the path down |goto 54.94,31.35 < 20 |only if walking
Use the Gift of the Harvester on Scarlet Miners |use Gift of the Harvester##39253
|tip They appear at the entrance of the mine.
|tip Some will turn into Scarlet Ghosts and attack you.
|tip It has a pretty low success rate, just keep trying.
Click Here When 5 Scarlet Ghouls Are Following You |confirm |c |goto 58.18,31.01 |q 12698
|tip The ghouls that count for the quest are more brown in color and have yellow circles around their feet.
step
Follow the path up |goto 57.03,31.24 < 20 |only if walking
Follow the path |goto 54.69,31.79 < 20 |only if walking
Return #5# Scarlet Ghouls |q 12698/1 |goto 54.07,35.03
step
talk Gothik the Harvester##28658
turnin The Gift That Keeps On Giving##12698 |goto 54.1,35
accept An Attack Of Opportunity##12700 |goto 54.1,35
step
talk Prince Valanar##28377
turnin An Attack Of Opportunity##12700 |goto 52.3,34
accept Massacre At Light's Point##12701 |goto 52.3,34
step
Follow the path down |goto 54.94,31.35 < 20 |only if walking |n
Follow the path |goto 57.13,31.39 < 20 |only if walking |n
Follow the path |goto 58.05,33.31 < 15 |only if walking |n
Find the Inconspicuous Mine Cart |goto 58.50,33.03 < 15 |c |q 12701
step
click Inconspicuous Mine Car##190767
Ride in the Inconspicuous Mine Cart |goto 58.50,33.03 > 30 |c |q 12701
step
Ride to the Scarlet Fleet Ship |goto 67.94,46.09 < 20 |c |q 12701
step
click Scarlet Cannon##176216
kill Scarlet Fleet Defender##28834+
|tip Use the abilities on your action bar to shoot the soldiers on the beach.
Slay #100# Scarlet Defenders |q 12701/1 |goto 67.56,46.07
step
Use the Skeletal Gryphon Escape ability
Escape to Death's Breach |goto 52.6,34.5 < 20 |noway |c |q 12701
step
talk Prince Valanar##28377
turnin Massacre At Light's Point##12701 |goto 52.3,34
accept Victory At Death's Breach!##12706 |goto 52.3,34
step
clicknpc Scourge Gryphon##29501 |goto 53.1,32.5 |n
Fly Up to Archerus |goto 51.1,34.7 < 20 |noway |c |q 12706
step
talk Highlord Darion Mograine##28444
turnin Victory At Death's Breach!##12706 |goto 48.87,29.76
accept The Will Of The Lich King##12714 |goto 48.87,29.76
step
clicknpc Scourge Gryphon##29488 |goto 52.1,35 |n
Arrive at Death's Breach |goto 53.2,31.1 < 20 |noway |c |q 12714
step
talk Prince Valanar##28907
turnin The Will Of The Lich King##12714 |goto 53.47,36.55
accept The Crypt of Remembrance##12715 |goto 53.47,36.55
step
Follow the path down |goto 50.75,38.22 < 20 |only if walking
Continue down the path |goto 50.62,40.87 < 20 |only if walking
Follow the path |goto 52.83,45.08 < 20 |only if walking
talk Noth the Plaguebringer##28919
accept The Plaguebringer's Request##12716 |goto 55.9,52.4
step
Enter the crypt |goto 54.3,58.1 < 10 |walk
Run down the stairs |goto 53.60,58.05 < 7 |walk
Continue down the stairs |goto 53.69,57.41 < 7 |walk
talk Prince Keleseth##28911
|tip Downstairs inside the crypt.
turnin The Crypt of Remembrance##12715 |goto 54.30,57.31
accept Nowhere To Run And Nowhere To Hide##12719 |goto 54.30,57.31
step
talk Baron Rivendare##28910
|tip Downstairs inside the crypt.
accept Lambs To The Slaughter##12722 |goto 54.66,57.43
stickystart "Slay_Scarlet_Crusade_Soldiers"
stickystart "Crusader_Skulls"
stickystart "Citizens_Of_New_Avalaon"
step
Run up the stairs |goto 53.96,57.42 < 7 |walk
Continue up the stairs |goto 53.60,57.57 < 7 |walk
Continue up the stairs |goto 53.71,58.15 < 7 |walk
Leave the crypt |goto 54.36,58.15 < 10 |walk
Follow the path up |goto 55.96,59.90 < 20 |only if walking
Enter the building |goto 57.67,64.41 < 10 |walk
click Empty Cauldron##190937
|tip Downstairs inside the building.
collect Empty Cauldron##39324 |q 12716/1 |goto 57.8,61.8
step
Leave the building |goto 57.67,64.41 < 10 |walk
Follow the path |goto 58.48,64.68 < 15 |only if walking
click Iron Chain##190938
|tip Inside the building.
collect Iron Chain##39326 |q 12716/2 |goto 62.05,60.24
step
Follow the path |goto 59.66,61.13 < 20 |only if walking
Follow the path |goto 58.24,65.68 < 20 |only if walking
Run up the stairs |goto 54.23,70.21 < 15 |only if walking
kill Mayor Quimby##28945 |q 12719/1 |goto 52.24,71.17
|tip Inside the building.
step
click New Avalon Registry##190947
collect New Avalon Registry##39362 |q 12719/2 |goto 52.45,71.00
step
label "Slay_Scarlet_Crusade_Soldiers"
Kill Scarlet enemies around this area
Slay #10# Scarlet Crusade Soldiers |q 12722/1 |goto 54.27,70.15
step
label "Crusader_Skulls"
Kill Scarlet enemies around this area
kill Citizen of New Avalon##28942+
|tip Usually inside the buildings around this area.
collect 10 Crusader Skull##39328 |q 12716/3 |goto 54.27,70.15
step
label "Citizens_Of_New_Avalaon"
kill 15 Citizen of New Avalon##28942 |q 12722/2 |goto 54.27,70.15
|tip Usually inside the buildings around this area.
step
Follow the path down |goto 56.04,61.53 < 20 |only if walking
Enter the crypt |goto 54.3,58.1 < 10 |walk
Run down the stairs |goto 53.60,58.05 < 7 |walk
Continue down the stairs |goto 53.69,57.41 < 7 |walk
talk Prince Keleseth##28911
|tip Downstairs inside the crypt.
turnin Nowhere To Run And Nowhere To Hide##12719 |goto 54.30,57.31
accept How To Win Friends And Influence Enemies##12720 |goto 54.30,57.31
step
talk Baron Rivendare##28910
|tip Downstairs inside the crypt.
turnin Lambs To The Slaughter##12722 |goto 54.66,57.43
step
Run up the stairs |goto 53.96,57.42 < 7 |walk
Continue up the stairs |goto 53.60,57.57 < 7 |walk
Continue up the stairs |goto 53.71,58.15 < 7 |walk
Leave the crypt |goto 54.36,58.15 < 10 |walk
talk Noth the Plaguebringer##28919
turnin The Plaguebringer's Request##12716 |goto 55.9,52.4
accept Noth's Special Brew##12717 |goto 55.9,52.4
step
click Plague Cauldron##190936
turnin Noth's Special Brew##12717 |goto 56.15,51.98
step
Use the Ornate Jeweled Box |use Ornate Jeweled Box##39418
|tip Equip Keleseth's Persuader.
Click Here After You Equip Keleseth's Persuader |confirm |c |q 12720
step
Follow the path up |goto 55.96,59.90 < 20 |only if walking
Kill Scarlet enemies around this area
|tip Try not to kill them too fast, and stop attacking them when they start talking.
|tip Eventually one of the enemies will give you information.
Reveal the "Crimson Dawn" |q 12720/1 |goto 55.8,65.8
step
Equip Your Normal Weapon
Click Here After Equipping Your Normal Weapon |confirm |c |q 12720
step
Follow the path down |goto 56.04,61.53 < 20 |only if walking
Enter the crypt |goto 54.3,58.1 < 10 |walk
Run down the stairs |goto 53.60,58.05 < 7 |walk
Continue down the stairs |goto 53.69,57.41 < 7 |walk
talk Prince Keleseth##28911
|tip Downstairs inside the crypt.
turnin How To Win Friends And Influence Enemies##12720 |goto 54.30,57.31
accept Behind Scarlet Lines##12723 |goto 54.30,57.31
step
Run up the stairs |goto 53.96,57.42 < 7 |walk
Continue up the stairs |goto 53.60,57.57 < 7 |walk
Continue up the stairs |goto 53.71,58.15 < 7 |walk
Leave the crypt |goto 54.36,58.15 < 10 |walk
Follow the path up |goto 55.96,59.90 < 20 |only if walking
Continue following the path |goto 56.29,68.44 < 20 |only if walking
Follow the path |goto 57.12,75.46 < 20 |only if walking
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
turnin Behind Scarlet Lines##12723 |goto 56.26,79.84
accept The Path Of The Righteous Crusader##12724 |goto 56.26,79.84
step
talk Thassarian##28913
|tip Upstairs inside the building.
accept Brothers In Death##12725 |goto 56.27,80.15
step
Follow the path |goto 57.00,77.83 < 20 |only if walking
Enter the building |goto 61.10,68.06 < 15 |walk
Follow the path |goto 62.22,68.69 < 10 |walk
Follow the path |goto 62.40,69.32 < 10 |walk
Run down the stairs |goto 62.77,68.63 < 7 |walk
talk Koltira Deathweaver##28912
|tip Downstairs in the building.
turnin Brothers In Death##12725 |goto 62.96,67.85
accept Bloody Breakout##12727 |goto 62.96,67.85
step
Kill the enemies that attack in waves
kill High Inquisitor Valroth##29001
|tip Stay inside the bubble Koltira Deathweaver forms.
|tip It reduces spell damage done to you, so you'll live.
click High Inquisitor Valroth's Remains##191092
|tip It will be wherever you ended up killing High Inquisitor Valroth.
collect Valroth's Head##39510 |q 12727/1 |goto 62.91,68.10
step
click New Avalon Patrol Schedule##191084
|tip It looks like a thick book sitting on a long table upstairs in a big open room in the fort.
collect New Avalon Patrol Schedule##39504|q 12724/1 |goto 63.0,68.3
step
Leave the building |goto 61.08,68.08 < 15 |walk
Follow the path up |goto 58.70,71.30 < 20 |only if walking
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
turnin The Path Of The Righteous Crusader##12724 |goto 56.26,79.84
step
talk Thassarian##28913
|tip Upstairs inside the building.
turnin Bloody Breakout##12727 |goto 56.27,80.15
accept A Cry For Vengeance!##12738 |goto 56.27,80.15
step
Follow the path |goto 52.66,80.93 < 15 |only if walking
talk Knight Commander Plaguefist##29053
|tip He walks around this area.
turnin A Cry For Vengeance!##12738 |goto 52.9,81.5
accept A Special Surprise##12742 |goto 52.9,81.5 |only Human
accept A Special Surprise##12743 |goto 52.9,81.5 |only NightElf
accept A Special Surprise##12744 |goto 52.9,81.5 |only Dwarf
accept A Special Surprise##12745 |goto 52.9,81.5 |only Gnome
accept A Special Surprise##12746 |goto 52.9,81.5 |only Draenei
accept A Special Surprise##28649 |goto 52.9,81.5 |only Worgen
accept A Special Surprise##12739 |goto 52.9,81.5 |only Tauren
accept A Special Surprise##12747 |goto 52.9,81.5 |only BloodElf
accept A Special Surprise##12748 |goto 52.9,81.5 |only Orc
accept A Special Surprise##12749 |goto 52.9,81.5 |only Troll
accept A Special Surprise##12750 |goto 52.9,81.5 |only Scourge
accept A Special Surprise##28650 |goto 52.9,81.5 |only Goblin
step
Watch the dialogue
kill Valok the Righteous##29070 |q 12746/1 |goto 54.5,83.4
|tip Inside the building.
|only Draenei
step
Watch the dialogue
kill Yazmina Oakenthorn##29065 |q 12743/1 |goto 54.2,83.9
|tip Inside the building.
|only NightElf
step
Watch the dialogue
kill Goby Blastenheimer##29068 |q 12745/1 |goto 53.9,83.8
|tip Inside the building.
|only Gnome
step
Watch the dialogue
kill Ellen Stanbridge##29061 |q 12742/1 |goto 53.5,83.8
|tip Inside the building.
|only Human
step
Watch the dialogue
kill Donovan Pulfrost##29067 |q 12744/1 |goto 54,83.3
|tip Inside the building.
|only Dwarf
step
Watch the dialogue
kill Lord Harford##49355 |q 28649/1 |goto 54.14,83.29
|tip Inside the building.
|only Worgen
step
Watch the dialogue
kill Malar Bravehorn##29032 |q 12739/1 |goto 54.50,83.85
|tip Inside the building.
|only Tauren
step
Watch the dialogue
kill Lady Eonys##29074 |q 12747/1 |goto 54.28,83.31
|tip Inside the building.
|only BloodElf
step
Watch the dialogue
kill Kug Ironjaw##29072 |q 12748/1 |goto 53.77,83.27
|tip Inside the building.
|only Orc
step
Watch the dialogue
kill Iggy Darktusk##29073 |q 12749/1 |goto 53.80,83.75
|tip Inside the building.
|only Troll
step
Watch the dialogue
kill Antoine Brack##29071 |q 12750/1 |goto 53.54,83.30
|tip Inside the building.
|only Scourge
step
Watch the dialogue
kill Gally Lumpstain##49356 |q 28650/1 |goto 54.11,83.77
|tip Inside the building.
|only Goblin
step
talk Knight Commander Plaguefist##29053
|tip He walks around this area.
turnin A Special Surprise##12742 |goto 52.9,81.5 |only Human
turnin A Special Surprise##12743 |goto 52.9,81.5 |only NightElf
turnin A Special Surprise##12744 |goto 52.9,81.5 |only Dwarf
turnin A Special Surprise##12745 |goto 52.9,81.5 |only Gnome
turnin A Special Surprise##12746 |goto 52.9,81.5 |only Draenei
turnin A Special Surprise##28649 |goto 52.9,81.5 |only Worgen
turnin A Special Surprise##12739 |goto 52.9,81.5 |only Tauren
turnin A Special Surprise##12747 |goto 52.9,81.5 |only BloodElf
turnin A Special Surprise##12748 |goto 52.9,81.5 |only Orc
turnin A Special Surprise##12749 |goto 52.9,81.5 |only Troll
turnin A Special Surprise##12750 |goto 52.9,81.5 |only Scourge
turnin A Special Surprise##28650 |goto 52.9,81.5 |only Goblin
accept A Sort Of Homecoming##12751 |goto 52.9,81.5
step
Follow the path |goto 52.72,80.46 < 15 |only if walking
talk Thassarian##28913
|tip Upstairs inside the building.
turnin A Sort Of Homecoming##12751 |goto 56.27,80.15
step
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
accept Ambush At The Overlook##12754 |goto 56.26,79.84
step
Use the Makeshift Cover |use Makeshift Cover##39645
kill Scarlet Courier##29076
collect Scarlet Courier's Belongings##39646 |q 12754/1 |goto 59.97,78.57
collect Scarlet Courier's Message##39647 |q 12754/2 |goto 59.97,78.57
step
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
turnin Ambush At The Overlook##12754 |goto 56.26,79.84
accept A Meeting With Fate##12755 |goto 56.26,79.84
step
Follow the path down |goto 60.13,76.98 < 15 |only if walking
Follow the path down |goto 60.47,80.43 < 20 |only if walking
Follow the path |goto 62.90,85.29 < 20 |only if walking
talk High General Abbendis##29077
turnin A Meeting With Fate##12755 |goto 65.65,83.82
accept The Scarlet Onslaught Emerges##12756 |goto 65.65,83.82
step
Follow the path up |goto 63.40,85.39 < 20 |only if walking
Continue up the path |goto 61.76,83.29 < 20 |only if walking
Continue up the path |goto 60.55,79.94 < 20 |only if walking
Follow the path up |goto 60.30,77.04 < 15 |only if walking
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
turnin The Scarlet Onslaught Emerges##12756 |goto 56.26,79.84
accept Scarlet Armies Approach...##12757 |goto 56.26,79.84
step
click Portal to Acherus##8046 |goto 56.18,80.04 |n
Teleport to Acherus |goto 50.2,32.6 < 20 |noway |c |q 12757
step
talk Highlord Darion Mograine##28444
turnin Scarlet Armies Approach...##12757 |goto 48.89,29.77
accept The Scarlet Apocalypse##12778 |goto 48.89,29.77
step
clicknpc Scourge Gryphon##29488 |goto 52.08,35.03 |n
Arrive at Death's Breach |goto 53.2,31.1 < 20 |noway |c |q 12778
step
Run up the ramp |goto 53.31,36.37 < 10 |only if walking
talk The Lich King##29110
turnin The Scarlet Apocalypse##12778 |goto 53.57,36.85
accept An End To All Things...##12779 |goto 53.57,36.85
step
Use the Horn of the Frostbrood |use Horn of the Frostbrood##39700
Summon a Dragon to Ride |invehicle |c |q 12779
stickystart "Destroy_Scarlet_Ballistas"
step
kill 150 Scarlet Soldier##4286 |q 12779/1 |goto 55.8,61
|tip Use the abilities on your action bar.
step
label "Destroy_Scarlet_Ballistas"
Destroy #10# Scarlet Ballistas |q 12779/2 |goto 55.8,61
|tip They look like big wooden crossbow machines around this area.
|tip Use the abilities on your action bar.
step
Return to Death's Breach |goto 52.47,37.18 < 20 |c |q 12779
|tip Don't click the red arrow to stop controlling the Frostbrood Vanquisher yet.
step
Stop Controlling the Frostbrood Vanquisher |outvehicle |c |goto 52.53,37.39 |q 12779
|tip Click the red arrow on your action bar.
step
Run up the ramp |goto 53.31,36.37 < 10 |only if walking
talk The Lich King##29110
turnin An End To All Things...##12779 |goto 53.57,36.85
accept The Lich King's Command##12800 |goto 53.57,36.85
step
Follow the path |goto 50.16,31.36 < 20 |only if walking
Enter the tunnel |goto 49.13,28.43 < 15 |only if walking
Leave the tunnel |goto 47.35,24.82 < 15 |only if walking
Follow the path |goto 46.77,22.04 < 15 |only if walking
Follow the path down |goto 40.02,19.25 < 15 |only if walking
Follow the path |goto 36.04,24.04 < 20 |only if walking
talk Scourge Commander Thalanor##31082
|tip He paces back and forth.
turnin The Lich King's Command##12800 |goto 33.99,30.36
accept The Light of Dawn##12801 |goto 33.99,30.36
step
talk Highlord Darion Mograine##29173
|tip If he's not here, then the battle has already started.
|tip You may be able to join the battle.  Skip to the next step, try to do it, and see if it works.
|tip If you're unable to join the battle, skip back to this step and wait for Highlord Darion Mograine to respawn.
Tell him _"I am ready, Highlord.  Let the siege of Light's Hope begin!"_
|tip If he's here, but you can't choose this dialogue, that just means someone else already did it.
|tip Now you just need to wait for the battle to start.
|tip The battle starts 5 minutes after someone initiates this dialogue with him.
Click Here When the Battle Begins |confirm |c |goto 34.44,31.10 |q 12801
step
Kill enemies around this area
|tip Follow your allies into battle.
Watch the dialogue
Uncover The Light of Dawn |q 12801/1 |goto 38.79,38.34
step
talk Highlord Darion Mograine##29173
turnin The Light of Dawn##12801 |goto 39.11,39.16
accept Taking Back Acherus##13165 |goto 39.11,39.16
step
Use your Death Gate spell
|tip Click the purple Death Gate portal that appears nearby.
Travel to Ebon Hold |goto Eastern Plaguelands/0 83.7,50.0 < 20 |noway |c |q 13165
step
talk Highlord Darion Mograine##29173
turnin Taking Back Acherus##13165 |goto 83.44,49.46
accept The Battle For The Ebon Hold##13166 |goto 83.44,49.46
step
Walk onto the teleport pad |goto 83.19,48.90 |n
Teleport Downstairs |goto 82.68,47.79 < 10 |noway |c |q 13166
step
Kill enemies around this area
Slay #10# Scourge |q 13166/2 |goto 81.99,46.37
step
kill Patchwerk##31099 |q 13166/1 |goto 81.99,46.37
step
Walk onto the teleport pad |goto 83.28,49.12 |n
Teleport Upstairs |goto 83.28,49.12 < 5 |noway |c |q 13166
step
talk Highlord Darion Mograine##31084
turnin The Battle For The Ebon Hold##13166 |goto 83.44,49.46
accept Where Kings Walk##13188 |goto 83.44,49.46 |only Alliance
accept Saurfang's Blessing##13189 |goto 83.44,49.46 |only Horde
step
clicknpc Portal to Orgrimmar##103191 |goto 84.55,50.46 |n
Teleport to Orgrimmar |goto Durotar/0 45.6,13.5 < 20 |noway |c |q 13189
|only Horde
step
Enter the building |goto Orgrimmar/1 49.90,75.62 < 10 |walk
talk High Overlord Saurfang##14720
|tip Inside the building.
turnin Saurfang's Blessing##13189 |goto Orgrimmar/1 48.27,70.97
|only Horde
step
clicknpc Portal to Stormwind##103186 |goto 83.65,51.34 |n
Teleport to Stormwind City |goto Elwynn Forest/0 33.4,52 < 20 |noway |c |q 13188
|only Alliance
step
Enter the building |goto Stormwind City/0 80.60,37.89 < 15 |walk
talk Anduin Wrynn##107574
|tip Inside the building.
turnin Where Kings Walk##13188 |goto Stormwind City/0 85.8,31.7
|only Alliance
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Draenei (1-5)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Azuremyst",
condition_suggested=function() return raceclass('Draenei') and level <= 5 and not completedq(9312) end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Classic (1-10)\\Kalimdor\\Azuremyst Isle (1-20)",
startlevel=1,
endlevel=5
},[[
step
talk Megelon##16475 |goto Ammen Vale/0 61.2,29.5
accept You Survived!##9279
|only if Draenei
step
talk Proenitus##16477
turnin You Survived!##9279 |only Draenei |goto 52.8,35.9
accept Replenishing the Healing Crystals##9280 |only if Draenei |goto 52.8,35.9
accept Replenishing the Healing Crystals##9369 |only if not Draenei |goto 52.8,35.9
step
kill Vale Moth##16520+
collect 6 Vial of Moth Blood##22889 |q 9280/1 |only if Draenei |goto 50.9,28.8
collect 6 Vial of Moth Blood##22899 |q 9369/1 |only if not Draenei |goto 50.9,28.8
step
talk Proenitus##16477
turnin Replenishing the Healing Crystals##9280 |only if Draenei |goto 52.8,35.9
accept Urgent Delivery!##9409 |only Draenei |goto 52.8,35.9
turnin Replenishing the Healing Crystals##9369 |only if not Draenei |goto 52.8,35.9
accept Urgent Delivery!##9409 |only if not Draenei |goto 52.8,35.9
step
talk Zalduun##16502
|tip He walks around inside the building.
turnin Urgent Delivery!##9409 |only if Draenei |goto 51.71,42.12
accept Rescue the Survivors!##9283 |only if Draenei |goto 51.71,42.12
accept Learning the Word##26970 |only if Draenei Priest |goto 51.71,42.12
turnin Urgent Delivery!##9409 |only if not Draenei |goto 51.71,42.12
step
Leave the building |goto 52.53,37.69 < 10 |walk
talk Proenitus##16477
accept Botanist Taerix##9371 |goto 52.73,35.90
step
talk Botanist Taerix##16514
turnin Botanist Taerix##9371 |goto 49.9,37.4
accept Volatile Mutations##10302 |goto 49.9,37.4
stickystart "Kill_Volatile_Mutations"
step
Cast Gift of the Naaru on a Draenei Survivor |cast Gift of the Naaru##28880
|tip They look like Draenei laying on the ground around this area.
Save a Draenei Survivor |q 9283/1 |goto 48.3,30.4
|only if havequest(9283)
step
label "Kill_Volatile_Mutations"
kill 8 Volatile Mutation##16516 |q 10302/1 |goto 48.3,30.4
step
talk Botanist Taerix##16514
turnin Volatile Mutations##10302 |goto 49.9,37.4
accept What Must Be Done...##9293 |goto 49.9,37.4
step
talk Apprentice Vishael##20233
accept Botanical Legwork##9799 |goto 49.7,37.5
step
talk Zalduun##16502
|tip He walks around inside the building.
turnin Rescue the Survivors!##9283 |goto 51.71,42.12
|only if Draenei
step
talk Technician Zhanaa##17071
|tip Outside the building.
accept Spare Parts##37445 |goto 50.5,47.9
step
talk Vindicator Aldar##16535 |goto 50.6,48.7
accept Inoculation##37444
stickystart "Corrupted_Flowers"
step
kill Mutated Root Lasher##16517+
collect 10 Lasher Sample##22934 |q 9293/1 |goto 36.6,48.5
step
label "Corrupted_Flowers"
click Corrupted Flower##182127
|tip They look like flowers with red petals around this area.
collect 3 Corrupted Flower##24416 |q 9799/1 |goto 36.6,48.5
step
Follow the path up |goto 43.55,40.34 < 20 |only if walking
Follow the path |goto 45.82,42.29 < 20 |only if walking
talk Apprentice Vishael##20233
turnin Botanical Legwork##9799 |goto 49.7,37.5
step
talk Botanist Taerix##16514
turnin What Must Be Done...##9293 |goto 49.9,37.4
accept Healing the Lake##9294 |goto 49.9,37.4
step
Follow the path |goto 47.35,40.79 < 20 |only if walking
Jump down here |goto 47.28,49.40 < 20 |only if walking
Follow the path |goto 45.67,59.65 < 20 |only if walking
Use the Neutralizing Agent |use Neutralizing Agent##22955
|tip Use it next to the giant pink crystal in the water.
Disperse the Neutralizing Agent |q 9294/1 |goto 45.5,64.7
stickystart "Inoculate_Nestlewood_Owlkins"
step
Follow the path |goto 48.85,63.98 < 15 |only if walking
Follow the path up |goto 54.34,65.32 < 15 |only if walking
Continue up the path |goto 56.96,66.83 < 15 |only if walking
Follow the path |goto 58.06,69.60 < 15 |only if walking
Enter the tunnel |goto 58.48,71.19 < 15 |only if walking
Leave the tunnel |goto 61.14,78.24 < 15 |only if walking
click Emitter Spare Part##181283
|tip They look like pink crystals with gold parts spinning around them on the ground around this area.
collect 4 Emitter Spare Part##22978 |q 37445/1 |goto 62.71,80.74
step
label "Inoculate_Nestlewood_Owlkins"
Use the Inoculating Crystal on Nestlewood Owlkins |use Inoculating Crystal##22962
|tip They look like yellow owlkins around this area.
Inoculate #6# Nestlewood Owlkins |q 37444/1 |goto 62.71,80.74
step
Enter the tunnel |goto 61.12,78.22 < 15 |only if walking
Leave the tunnel |goto 58.33,70.90 < 15 |only if walking
Follow the path down |goto 57.97,69.36 < 15 |only if walking
Continue down the path |goto 56.68,66.62 < 15 |only if walking
Follow the path |goto 53.85,64.92 < 20 |only if walking
Follow the path |goto 47.37,59.24 < 20 |only if walking
Continue following the path |goto 45.29,50.84 < 20 |only if walking
Continue following the path |goto 42.63,44.33 < 20 |only if walking
Follow the path up |goto 43.70,40.38 < 20 |only if walking
Follow the path |goto 45.99,42.01 < 20 |c |q 9294
|only if not Draenei
step
talk Botanist Taerix##16514
turnin Healing the Lake##9294 |goto 49.9,37.4
accept Vindicator Aldar##10304 |goto 49.9,37.4
step
Follow the path |goto 47.11,42.00 < 20 |only if walking
Follow the path |goto 48.63,47.38 < 20 |only if walking
talk Technician Zhanaa##17071
turnin Spare Parts##37445 |goto 50.50,47.86
step
talk Vindicator Aldar##16535
turnin Vindicator Aldar##10304 |goto 50.6,48.7
turnin Inoculation##37444 |goto 50.6,48.7
accept The Missing Scout##9309 |goto 50.6,48.7
step
Follow the path |goto 48.30,52.47 < 20 |only if walking
Continue following the path |goto 37.25,60.85 < 20 |only if walking
talk Tolaan##16546
turnin The Missing Scout##9309 |goto 33.9,69.3
accept The Blood Elves##10303 |goto 33.9,69.3
step
Follow the path |goto 31.80,69.89 < 20 |only if walking
Follow the path up |goto 28.41,73.22 < 15 |only if walking
kill 10 Blood Elf Scout##16521 |q 10303/1 |goto 26.79,75.87
step
Follow the path |goto 31.37,70.02 < 20 |only if walking
talk Tolaan##16546
turnin The Blood Elves##10303 |goto 33.9,69.3
accept Blood Elf Spy##9311 |goto 33.9,69.3
step
Follow the path |goto 31.80,69.89 < 20 |only if walking
Follow the path up |goto 28.41,73.22 < 15 |only if walking
Follow the path up |goto 26.51,77.25 < 15 |only if walking
kill Surveyor Candress##16522 |q 9311/1 |goto 27.8,80.4
|tip You will automatically accept a quest after looting her.
accept Blood Elf Plans##9798 |goto 27.8,80.4
step
Follow the path down |goto 26.67,78.47 < 15 |only if walking
Follow the path down |goto 26.96,74.73 < 15 |only if walking
Follow the path |goto 29.77,71.82 < 20 |only if walking
Continue following the path |goto 34.32,64.22 < 20 |only if walking
Continue following the path |goto 42.16,56.27 < 20 |only if walking
Follow the path up |goto 48.71,51.79 < 20 |only if walking
talk Vindicator Aldar##16535
turnin Blood Elf Spy##9311 |goto 50.6,48.7
turnin Blood Elf Plans##9798 |goto 50.6,48.7
accept The Emitter##9312 |goto 50.6,48.7
step
talk Technician Zhanaa##17071
turnin The Emitter##9312 |goto 50.50,47.85
accept Travel to Azure Watch##9313 |goto 50.50,47.85
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Dwarf (1-5)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Dun Morogh",
condition_suggested=function() return raceclass('Dwarf') and level <= 5 and not completedq(24493) end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Classic (1-10)\\Eastern Kingdoms\\Dun Morogh (1-20)",
startlevel=1,
endlevel=5
},[[
step
talk Joren Ironstock##37081
accept Hold the Line!##24469 |goto Coldridge Valley 67.1,41.3
step
kill 6 Rockjaw Invader##37070 |q 24469/1 |goto 63.6,50.7
step
talk Joren Ironstock##37081
turnin Hold the Line!##24469 |goto 67.1,41.3
accept Give 'em What-For##24470 |goto 67.1,41.3
step
talk Sten Stoutarm##658
|tip He paces back and forth.
accept Aid for the Wounded##24471 |goto 65.55,41.99
stickystart "Rockjaw_Goons"
step
Use Sten's First Aid Kit on Wounded Coldridge Mountaineers |use Sten's First Aid Kit##49743
|tip They look like dwarves kneeling in the snow around this area.
Aid #4# Wounded Coldridge Mountaineers |q 24471/1 |goto 69.3,55.2
step
label "Rockjaw_Goons"
kill 3 Rockjaw Goon##37073 |q 24470/1 |goto 63.29,57.04
step
talk Joren Ironstock##37081
turnin Give 'em What-For##24470 |goto 67.1,41.3
step
talk Sten Stoutarm##658
|tip He paces back and forth.
turnin Aid for the Wounded##24471 |goto 65.55,41.99
step
talk Joren Ironstock##37081
accept Lockdown in Anvilmar##24473 |goto 67.1,41.3
step
Follow the path up |goto 64.78,40.19 < 15 |only if walking
Enter the building |goto 61.65,31.22 < 15 |walk
talk Jona Ironstock##37087
|tip She walks around the forge at the center of the room.
turnin Lockdown in Anvilmar##24473 |goto 60.6,21.0
accept First Things First: We're Gonna Need Some Beer##24474
step
talk Grundel Harkin##1104
accept Dwarven Artifacts##24477 |goto 61.7,22.1
step
Follow the path |goto 60.75,24.98 < 10 |walk
Leave the building |goto 61.71,31.13 < 15 |only if walking
click Keg of Gnomenbrau##201611
collect Cask of Gnomenbrau##49746 |q 24474/3 |goto 68.2,27.9
step
Follow the path |goto 63.84,32.68 < 20 |only if walking
click Keg of Stormhammer Stout##201610
collect Cask of Stormhammer Stout##49744 |q 24474/1 |goto 56.7,28.3
step
Follow the path |goto 49.86,31.86 < 20 |only if walking
click Keg of Theramore Pale Ale##201609
collect Cask of Theramore Pale Ale##49745 |q 24474/2 |goto 39.82,29.36
step
click Forgotten Dwarven Artifacts##201608
|tip They look like stone tablet pieces on the ground around this area.
collect 5 Forgotten Dwarven Artifact##49749 |q 24477/1 |goto 32.11,31.98
step
Follow the path |goto 43.92,34.22 < 20 |only if walking
Enter the building |goto 61.65,31.22 < 15 |walk
talk Grundel Harkin##1104
turnin Dwarven Artifacts##24477 |goto 61.7,22.1
accept Make Hay While the Sun Shine##24486 |goto 61.7,22.1
step
talk Jona Ironstock##37087
|tip She walks around the forge at the center of the room.
turnin First Things First: We're Gonna Need Some Beer##24474 |goto 61.8,22.5
accept All the Other Stuff##24475 |goto 61.8,22.5
stickystart "Raggedyoungwolf"
stickystart "Boarhaunch"
step
Follow the path |goto 60.75,24.98 < 10 |walk
Leave the building |goto 61.71,31.13 < 15 |only if walking
kill Rockjaw Scavenger##37105+
collect 5 Priceless Rockjaw Artifact##49751 |q 24486/1 |goto 51.6,47.6
step
label "Raggedyoungwolf"
kill Ragged Young Wolf##705+
collect 4 Ragged Wolf Hide##49748 |q 24475/2 |goto 49.5,57.7
step
label "Boarhaunch"
kill Small Crag Boar##708+
collect 3 Boar Haunch##49747 |q 24475/1 |goto 33.89,65.23
step
Enter the building |goto 61.65,31.22 < 15 |walk
talk Grundel Harkin##1104
turnin Make Hay While the Sun Shine##24486 |goto 61.7,22.1
step
talk Jona Ironstock##37087
|tip She walks around the forge at the center of the room.
turnin All the Other Stuff##24475 |goto 61.8,22.5
accept Whitebeard Needs Ye##24487 |goto 61.8,22.5
step
Follow the path |goto 60.75,24.98 < 10 |walk
Leave the building |goto 61.71,31.13 < 15 |only if walking
talk Grelin Whitebeard##786
turnin Whitebeard Needs Ye##24487 |goto 42.7,62.2
accept The Troll Menace##182 |goto 42.7,62.2
step
talk Apprentice Soren##1354
accept Trolling for Information##24489 |goto 43.2,63.1
step
talk Felix Whindlebolt##8416
accept A Refugee's Quandary##3361 |goto 41.9,63.5
stickystart "Frostmane_Troll_Whelps"
step
click Felix's Box##148499
collect Felix Box##10438 |q 3361/1 |goto 21.4,64.1
step
Watch the dialogue
Scout Soothsayer Mirim'koa |q 24489/3 |goto 21.23,66.03
step
click Felix's Chest##178084
collect Felix Chest##16313 |q 3361/2 |goto 30.97,84.02
step
Watch the dialogue
Scout Soothsayer Rikkari |q 24489/2 |goto 30.61,84.75
step
click Felix's Bucket of Bolt##4991
collect Felix's Bucket of Bolts##16314 |q 3361/3 |goto 49.14,80.37
step
Watch the dialogue
Scout Soothsayer Shi'kala |q 24489/1 |goto 49.14,80.37
step
label "Frostmane_Troll_Whelps"
kill 10 Frostmane Troll Whelp##706+ |q 182/1 |goto 49.14,80.37
step
talk Apprentice Soren##1354
turnin Trolling for Information##24489 |goto 43.2,63.1
step
talk Grelin Whitebeard##786
turnin The Troll Menace##182 |goto 42.7,62.2
accept Ice and Fire##218 |goto 42.7,62.2
step
talk Felix Whindlebolt##8416
turnin A Refugee's Quandary##3361 |goto 41.9,63.5
stickystart "Frostmane_Blades"
stickystart "Frostmane_Novices"
step
Follow the path |goto Coldridge Valley/9 18.18,50.90 < 15 |walk
Follow the path |goto Coldridge Valley/9 34.20,34.63 < 15 |walk
Continue following the path |goto Coldridge Valley/9 50.15,11.84 < 15 |walk
kill Wayward Fire Elemental##37112 |q 218/2 |goto Coldridge Valley/9 66.7,29.2
|tip It paces around on the frozen pond inside the cave.
step
kill Grik'nir the Cold##808 |q 218/1 |goto 76.1,30.8
step
label "Frostmane_Blades"
kill 6 Frostmane Blade##37507 |q 218/4 |goto 76.12,24.16
|tip They are all around this cave.
step
label "Frostmane_Novices"
kill 3 Frostmane Novice##946 |q 218/3 |goto 76.12,24.16
|tip They are all around this cave.
step
Follow the path up |goto 73.60,21.74 < 15 |walk
Continue following the path up |goto 49.29,11.61 < 15 |walk
Follow the path |goto 25.76,46.85 < 15 |walk
talk Grelin Whitebeard##786
turnin Ice and Fire##218 |goto Coldridge Valley/0 42.7,62.2
accept A Trip to Ironforge##24490 |goto Coldridge Valley/0 42.7,62.2
step
Follow the road up |goto 69.27,45.64 < 20 |only if walking
talk Hands Springsprocket##6782
turnin A Trip to Ironforge##24490 |goto 87.53,44.47
accept Follow that Gyro-Copter!##24491 |goto 87.53,44.47
step
talk Milo Geartwinge##37113
turnin Follow that Gyro-Copter##24491 |goto 69.9,44.21
accept Pack Your Bags##24492 |goto 69.9,44.21
step
Follow the path up |goto 64.78,40.19 < 15 |only if walking
Enter the building |goto 61.65,31.22 < 15 |walk
talk Jona Ironstock##37087
|tip She walks around the forge at the center of the room.
accept Don't Forget About Us##24493 |goto 61.8,22.5
step
click Leftover Boar Meat##201704
|tip On the table.
collect Leftover Boar Meat##49756 |q 24492/3 |goto 62.14,23.58
step
click Beer Barrel##201706
collect Coldridge Beer Flagon##49754 |q 24492/1 |goto 62.45,23.47
step
click Wolf-Hide Cloaks##201705
collect Ragged Wolf-Hide Cloak##57541 |q 24492/2 | goto 62.21,23.98
step
Follow the path |goto 60.75,24.98 < 10 |walk
Leave the building |goto 61.71,31.13 < 15 |only if walking
talk Milo Geartwinge##37113
turnin Pack Your Bags##24492 |goto 69.9,44.21
step
Fly to Kharanos |goto Dun Morogh/0 53.3,49.8 < 50 |noway |c |q 24493
step
talk Tharek Blackstone##1872
turnin Don't Forget About Us##24493 |goto Dun Morogh/0 53.1,50.0
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Gnome (1-5)",{
author="support@zygorguides.com",
condition_suggested=function() return raceclass('Gnome') and level <= 5 and not completedq(26364) end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Classic (1-10)\\Eastern Kingdoms\\Dun Morogh (1-20)",
startlevel=1,
endlevel=5
},[[
step
next "normalstart" |only Gnome
next "oddstart" |only if not Gnome
step
label "normalstart"
talk Nevin Twistwrench##45966
accept Pinned Down##27670 |goto Dun Morogh/10 34.0,32.2
step
kill 6 Crazed Leper Gnome##46391+ |q 27670/1 |goto 43.89,32.84
step
talk Nevin Twistwrench##45966
turnin Pinned Down##27670 |goto 34.0,32.2
accept Report to Carvo Blastbolt##28167 |goto 34.0,32.2
step
Run up the ramp |goto 47.32,32.39 < 15 |walk
talk Carvo Blastbolt##47250
turnin Report to Carvo Blastbolt##28167 |goto 50.9,31.9
accept See to the Survivors##27671 |goto 50.9,31.9
step
Use your Teleport Beacon on Survivors |use Teleport Beacon##62057
|tip They look like cowering, unclothed gnomes around this area.
Rescue #6# Survivors |q 27671/1 |goto 61.3,34.8
step
Run up the ramp |goto 58.77,33.89 < 15 |walk
talk Carvo Blastbolt##47250
turnin See to the Survivors##27671 |goto 50.9,31.9
accept Withdraw to the Loading Room!##28169 |goto 50.9,31.9
step
Follow the path |goto 52.63,37.08 < 15 |walk
Run up the stairs |goto 52.14,63.97 < 15 |walk
Follow the path |goto 54.00,74.87 < 15 |walk
talk Gaffer Coilspring##46274
turnin Withdraw to the Loading Room!##28169 |goto 53.1,82.2
accept Decontamination##27635 |goto 53.1,82.2
step
clicknpc Sanitron 500##46185
Start the Decontamination Process |q 27635/1 |goto 58.8,81.7
step
talk Technician Braggle##46255
turnin Decontamination##27635 |goto 66.3,81.6
accept To the Surface##27674 |goto 66.3,81.6
step
talk Torben Zapblast##46293
Tell him _"Send me to the surface, Torben."_
Speak to Torben Zapblast |q 27674/1 |goto 67.2,84.0
step
talk Nevin Twistwrench##42396
turnin To the Surface##27674 |goto New Tinkertown/0 39.50,38.39
accept The Future of Gnomeregan##26202 |goto New Tinkertown/0 39.50,38.39 |only Gnome Warlock
accept The Future of Gnomeregan##26197 |goto New Tinkertown/0 39.50,38.39 |only Gnome Mage
accept The Future of Gnomeregan##26203 |goto New Tinkertown/0 39.50,38.39 |only Gnome Warrior
accept The Future of Gnomeregan##26206 |goto New Tinkertown/0 39.50,38.39 |only Gnome Rogue
accept The Future of Gnomeregan##26199 |goto New Tinkertown/0 39.50,38.39 |only Gnome Priest
accept The Future of Gnomeregan##31135 |goto New Tinkertown/0 39.50,38.39 |only Gnome Monk
accept The Future of Gnomeregan##41217 |goto New Tinkertown/0 39.50,38.39 |only Gnome Hunter
step
talk "Doc" Cogspin##42323
turnin The Future of Gnomeregan##26199 |goto 39.4,28.4
accept Meet the High Tinker##26422 |goto 39.4,28.4
|only Gnome Priest
step
talk Kelsey Steelspark##42366
turnin The Future of Gnomeregan##26206 |goto 38.0,33.6
accept Meet the High Tinker##26423 |goto 38.0,33.6
|only Gnome Rogue
step
talk Drill Sergeant Steamcrank##42324
turnin The Future of Gnomeregan##26203 |goto 40.6,35.4
accept Meet the High Tinker##26425 |goto 40.6,35.4
|only Gnome Warrior
step
talk Bipsi Frostflinger##42331
turnin he Future of Gnomeregan##26197 |goto 41.1,29.1
accept Meet the High Tinker##26421 |goto 41.1,29.1
|only Gnome Mage
step
Leave the building |goto 39.58,37.35 < 10 |only if walking
talk Alamar Grimm##460
turnin The Future of Gnomeregan##26202 |goto 37.7,38.0
accept Meet the High Tinker##26424 |goto 37.7,38.0
|only Gnome Warlock
step
talk Xi, Friend to the Small##63238
turnin The Future of Gnomeregan##31135 |goto 40.1,35.6
accept Meet the High Tinker##31137 |goto 40.1,35.6
|only Gnome Monk
step
talk Muffinus Chromebrew##103614
turnin The Future of Gnomeregan##41217 |goto 41.9,31.6
accept Meet the High Tinker##41218 |goto 41.9,31.6
|only Gnome Hunter
step
talk High Tinker Mekkatorque##42317
turnin Meet the High Tinker##31137 |goto 38.7,32.8 |only Gnome Monk
turnin Meet the High Tinker##26424 |goto 38.7,32.8 |only Gnome Warlock
turnin Meet the High Tinker##26421 |goto 38.7,32.8 |only Gnome Mage
turnin Meet the High Tinker##26425 |goto 38.7,32.8 |only Gnome Warrior
turnin Meet the High Tinker##26423 |goto 38.7,32.8 |only Gnome Rogue
turnin Meet the High Tinker##26422 |goto 38.7,32.8 |only Gnome Priest
turnin Meet the High Tinker##41218 |goto 38.7,32.8 |only Gnome Hunter
accept The Fight Continues##26208 |goto 38.7,32.8
step
Watch the dialogue
Learn about Operation: Gnomeregan |q 26208/1 |goto 38.64,32.90
step
talk High Tinker Mekkatorque##42317
turnin The Fight Continues##26208 |goto 38.64,32.90
accept A Triumph of Gnomish Ingenuity##26566 |goto 38.64,32.90
step
talk Engineer Grindspark##42553
turnin A Triumph of Gnomish Ingenuity##26566 |goto 40.6,28.1
accept Scrounging for Parts##26222 |goto 40.6,28.1
step
click Spare Part##203964
|tip They look like metal machine parts on the ground all around this area, and inside buildings.
collect 7 Spare Part##57764 |q 26222/1 |goto 39.74,30.27
step
talk Engineer Grindspark##42553
turnin Scrounging for Parts##26222 |goto 40.6,28.1
accept A Job for the Multi-Bot##26205 |goto 40.6,28.1
step
talk Tock Sprysprocket##42611
accept What's Left Behind##26264 |goto 39.2,26.6
step
talk Corporal Fizzwhistle##42630
|tip He's outside, behind the building.
accept Dealing with the Fallout##26265 |goto 38.2,40.2
stickystart "Kill_Living_Contaminants"
stickystart "Collect_Recovered_Possessions"
step
Stand Next to Toxic Geysers
|tip They look like green spots that spew up green liquid in the green pools around this area.
Clean Up #5# Toxic Geysers |q 26205/1 |goto 37.1,50.6
step
label "Kill_Living_Contaminants"
kill 6 Living Contamination##42185+ |q 26265/1 |goto 37.1,50.6
step
label "Collect_Recovered_Possessions"
kill Toxic Sludge##42184+
collect 6 Recovered Possession##57987 |q 26264/1 |goto 37.1,50.6
step
talk Corporal Fizzwhistle##42630
turnin Dealing with the Fallout##26265 |goto 38.2,40.2
step
talk Engineer Grindspark##42553
turnin A Job for the Multi-Bot##26205 |goto 40.6,28.1
step
talk Tock Sprysprocket##42611
turnin What's Left Behind##26264 |goto 39.2,26.6
step
talk Captain Tread Sparknozzle##42489
accept What's Keeping Jessup?##26316 |goto 38.4,33.5
step
talk Jessup McCree##42708
turnin What's Keeping Jessup?##26316 |goto 37.3,65.2
accept Get Me Explosives Back!##26285 |goto 37.3,65.2
accept Missing in Action##26284 |goto 37.3,65.2
stickystart "Stolen_Powder_Kegs"
step
click Makeshift Cages
|tip They look like bone cages with brown animal hides laying on them around this area.
Rescue #6# Captured Demolitionists |q 26284/1 |goto 36.8,68.4
step
label "Stolen_Powder_Kegs"
Kill enemies around this area
collect 7 Stolen Powder Keg##58202 |q 26285/1 |goto 36.8,68.4
step
talk Jessup McCree##42708
turnin Get Me Explosives Back!##26285 |goto 37.3,65.2
turnin Missing in Action##26284 |goto 37.3,65.2
accept Finishin' the Job##26318 |goto 37.3,65.2
step
Follow the path |goto New Tinkertown/8 85.64,49.92 < 15 |walk
Follow the path |goto New Tinkertown/8 74.56,37.15 < 15 |walk
Continue following the path |goto New Tinkertown/8 60.62,74.15 < 15 |walk
kill Boss Bruggor##42773 |q 26318/2 |goto New Tinkertown/8 29.6,49.5
|tip He paces in the back of the cave.
step
click Detonator##240525
Detonate the Trogg Tunnel |q 26318/1 |goto 35.4,40.9
step
Follow the path up |goto 33.13,70.69 < 15 |walk
Continue up the path |goto 63.44,71.08 < 15 |walk
Follow the path |goto 77.85,36.62 < 15 |walk
talk Jessup McCree##42708
turnin Finishin' the Job##26318 |goto New Tinkertown/0 37.3,65.2
accept One More Thing##26329 |goto New Tinkertown/0 37.3,65.2
step
talk High Tinker Mekkatorque##42317
turnin One More Thing##26329 |goto 38.8,32.7
accept Crushcog's Minions##26331 |goto 38.8,32.7
step
talk Hinkles Fastblast##42491
accept No Tanks!##26333 |goto 38.2,33.7
stickystart "Kill_Crushcogs_Minions"
step
Follow the road |goto 44.15,32.43 < 20 |only if walking
Use the Techno-Grenade on Repaired Mechano-Tanks |use Techno-Grenade##58200
|tip They look like yellow crab machines around this area.
Destroy #5# Repaired Mechano-Tanks |q 26333/1 |goto 53.2,24.0
step
label "Kill_Crushcogs_Minions"
Kill enemies around this area
Kill #8# Crushcog's Minions |q 26331/1 |goto 53.2,24.0
step
Follow the road |goto 47.22,31.77 < 20 |only if walking
talk High Tinker Mekkatorque##42317
turnin Crushcog's Minions##26331 |goto 38.8,32.7
step
talk Hinkles Fastblast##42491
turnin No Tanks!##26333 |goto 38.2,33.7
step
talk Kelsey Steelspark##42366
accept Staging in Brewnall##26339 |goto 38.0,33.6
step
talk Jarvi Shadowstep##42353
turnin Staging in Brewnall##26339 |goto 48.7,52.9
accept Paint it Black##26342 |goto 48.7,52.9
step
Use the Paintinator on Crushcog Sentry-Bots |use Paintinator##58203
Blind #5# Crushcog's Sentry-Bots |q 26342/1 |goto 53.5,45.8
step
talk Jarvi Shadowstep##42353
turnin Paint it Black##26342 |goto 48.7,52.9
accept Down with Crushcog!##26364 |goto 48.7,52.9
step
talk High Tinker Mekkatorque##42849
Talk to High Tinker Mekkatorque |q 26364/1 |goto 57.2,47.5
step
talk High Tinker Mekkatorque##42849
Tell him _"I'm ready to start the assault."_
|tip Follow your allies into battle.
Use the Orbital Targeting Device on Razlo Crushcog |use Orbital Targeting Device##58253
Defeat Razlo Crushcog |q 26364/2 |goto 57.2,47.5
step
talk Jarvi Shadowstep##42353
turnin Down with Crushcog!##26364 |goto 48.7,52.9
accept On to Kharanos##26373 |goto 48.7,52.9
step
label "oddstart"
Follow the road |goto 52.98,57.95 < 20 |only if walking
Continue following the road |goto 64.55,53.51 < 20 |only if walking
talk Ciara Deepstone##42933
accept Bound for Kharanos##26380 |goto Dun Morogh 49.9,45.0
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Human (1-5)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Elwynn Forest",
condition_suggested=function() return raceclass('Human') and level <= 5 and not completedq(26390) end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Classic (1-10)\\Eastern Kingdoms\\Elwynn Forest (1-20)",
startlevel=1,
endlevel=5,
},[[
step
talk Marshal McBride##197
accept Beating them Back!##28757 |goto Northshire/0 33.6,53.0 |only Human Mage
accept Beating them Back!##28762 |goto Northshire/0 33.6,53.0 |only Human Paladin
accept Beating them Back!##28763 |goto Northshire/0 33.6,53.0 |only Human Priest
accept Beating them Back!##28764 |goto Northshire/0 33.6,53.0 |only Human Rogue
accept Beating them Back!##28765 |goto Northshire/0 33.6,53.0 |only Human Warlock
accept Beating them Back!##28766 |goto Northshire/0 33.6,53.0 |only Human Warrior
accept Beating them Back!##28767 |goto Northshire/0 33.6,53.0 |only Human Hunter
accept Beating Them Back!##31139 |goto Northshire/0 33.6,53.0 |only Human Monk
accept Beating Them Back!##29078 |goto Northshire/0 33.6,53.0 |only if not Human
step
kill 6 Blackrock Battle Worg##49871 |q 28757/1 |goto 29.0,42.9 |only Human Mage
kill 6 Blackrock Battle Worg##49871 |q 28762/1 |goto 29.0,42.9 |only Human Paladin
kill 6 Blackrock Battle Worg##49871 |q 28763/1 |goto 29.0,42.9 |only Human Priest
kill 6 Blackrock Battle Worg##49871 |q 28764/1 |goto 29.0,42.9 |only Human Rogue
kill 6 Blackrock Battle Worg##49871 |q 28765/1 |goto 29.0,42.9 |only Human Warlock
kill 6 Blackrock Battle Worg##49871 |q 28766/1 |goto 29.0,42.9 |only Human Warrior
kill 6 Blackrock Battle Worg##49871 |q 28767/1 |goto 29.0,42.9 |only Human Hunter
kill 6 Blackrock Battle Worg##49871 |q 31139/1 |goto 29.0,42.9 |only Human Monk
kill 6 Blackrock Battle Worg##49871 |q 29078/1 |goto 29.0,42.9 |only if not Human
step
talk Marshal McBride##197
turnin Beating them Back!##28757 |goto 33.6,53.0 |only Human Mage
accept Lions for Lambs##28769 |goto 33.6,53.0 |only Human Mage
turnin Beating them Back!##28762 |goto 33.6,53.0 |only Human Paladin
accept Lions for Lambs##28770 |goto 33.6,53.0 |only Human Paladin
turnin Beating them Back!##28763 |goto 33.6,53.0 |only Human Priest
accept Lions for Lambs##28771 |goto 33.6,53.0 |only Human Priest
turnin Beating them Back!##28764 |goto 33.6,53.0 |only Human Rogue
accept Lions for Lambs##28772 |goto 33.6,53.0 |only Human Rogue
turnin Beating them Back!##28765 |goto 33.6,53.0 |only Human Warlock
accept Lions for Lambs##28773 |goto 33.6,53.0 |only Human Warlock
turnin Beating them Back!##28766 |goto 33.6,53.0 |only Human Warrior
accept Lions for Lambs##28774 |goto 33.6,53.0 |only Human Warrior
turnin Beating them Back!##28767 |goto 33.6,53.0 |only Human Hunter
accept Lions for Lambs##28759 |goto 33.6,53.0 |only Human Hunter
turnin Beating Them Back!##31139 |goto 33.6,53.0 |only Human Monk
accept Lions for Lambs##31140 |goto 33.6,53.0 |only Human Monk
turnin Beating Them Back!##29078 |goto 33.6,53.0 |only if not Human
accept Lions for Lambs##29079 |goto 33.6,53.0 |only if not Human
step
kill 8 Blackrock Spy##49874 |q 28769/1 |goto 25.4,41.1 |only Human Mage
kill 8 Blackrock Spy##49874 |q 28770/1 |goto 25.4,41.1 |only Human Paladin
kill 8 Blackrock Spy##49874 |q 28771/1 |goto 25.4,41.1 |only Human Priest
kill 8 Blackrock Spy##49874 |q 28772/1 |goto 25.4,41.1 |only Human Rogue
kill 8 Blackrock Spy##49874 |q 28773/1 |goto 25.4,41.1 |only Human Warlock
kill 8 Blackrock Spy##49874 |q 28774/1 |goto 25.4,41.1 |only Human Warrior
kill 8 Blackrock Spy##49874 |q 28759/1 |goto 25.4,41.1 |only Human Hunter
kill 8 Blackrock Spy##49874 |q 31140/1 |goto 25.4,41.1 |only Human Monk
kill 8 Blackrock Spy##49874 |q 29079/1 |goto 25.4,41.1 |only if not Human
|tip They creep around near the trees around this area.
step
talk Marshal McBride##197
turnin Lions for Lambs##28769 |goto 33.6,53.0 |only Human Mage
accept Join the Battle!##28784 |only Human Mage
turnin Lions for Lambs##28770 |goto 33.6,53.0 |only Human Paladin
accept Join the Battle!##28785 |only Human Paladin
turnin Lions for Lambs##28771 |goto 33.6,53.0 |only Human Priest
accept Join the Battle!##28786 |only Human Priest
turnin Lions for Lambs##28772 |goto 33.6,53.0 |only Human Rogue
accept Join the Battle!##28787 |only Human Rogue
turnin Lions for Lambs##28773 |goto 33.6,53.0 |only Human Warlock
accept Join the Battle!##28788 |only Human Warlock
turnin Lions for Lambs##28774 |goto 33.6,53.0 |only Human Warrior
accept Join the Battle!##28789 |only Human Warrior
turnin Lions for Lambs##28759 |goto 33.6,53.0 |only Human Hunter
accept Join the Battle!##28780 |only Human Hunter
turnin Lions for Lambs##31140 |goto 33.6,53.0 |only Human Monk
accept Join the Battle!##31143 |only Human Monk
turnin Lions for Lambs##29079 |goto 33.6,53.0 |only if not Human
accept Join the Battle!##29080 |goto 33.6,53.0 |only if not Human
step
talk Sergeant Willem##823
turnin Join the Battle!##28789 |goto 35.7,39.8 |only Human Warrior
accept They Sent Assassins##28797 |goto 35.7,39.8 |only Human Warrior
turnin Join the Battle!##28785 |goto 35.7,39.8 |only Human Paladin
accept They Sent Assassins##28793 |goto 35.7,39.8 |only Human Paladin
turnin Join the Battle!##28780 |goto 35.7,39.8 |only Human Hunter
accept They Sent Assassins##28791 |goto 35.7,39.8 |only Human Hunter
turnin Join the Battle!##28786 |goto 35.7,39.8 |only Human Priest
accept They Sent Assassins##28794 |goto 35.7,39.8 |only Human Priest
turnin Join the Battle!##28788 |goto 35.7,39.8 |only Human Warlock
accept They Sent Assassins##28796 |goto 35.7,39.8 |only Human Warlock
turnin Join the Battle!##28784 |goto 35.7,39.8 |only Human Mage
accept They Sent Assassins##28792 |goto 35.7,39.8 |only Human Mage
turnin Join the Battle!##28787 |goto 35.7,39.8 |only Human Rogue
accept They Sent Assassins##28795 |goto 35.7,39.8 |only Human Rogue
turnin Join the Battle!##31143 |goto 35.7,39.8 |only Human Monk
accept They Sent Assassins##31144 |goto 35.7,39.8 |only Human Monk
turnin Join the Battle!##29080 |goto 35.7,39.8 |only if not Human
accept They Sent Assassins##29081 |goto 35.7,39.8 |only if not Human
step
talk Brother Paxton##951
accept Fear No Evil##28813 |goto 35.01,38.26 |only Human Warrior
accept Fear No Evil##28809 |goto 35.01,38.26 |only Human Paladin
accept Fear No Evil##28806 |goto 35.01,38.26 |only Human Hunter
accept Fear No Evil##28810 |goto 35.01,38.26 |only Human Priest
accept Fear No Evil##28812 |goto 35.01,38.26 |only Human Warlock
accept Fear No Evil##28808 |goto 35.01,38.26 |only Human Mage
accept Fear No Evil##28811 |goto 35.01,38.26 |only Human Rogue
accept Fear No Evil##29082 |goto 35.01,38.26 |only if not Human
|only if not Monk
stickystart "injuredsoldiers"
step
kill 8 Goblin Assassin##50039 |q 28797/1 |goto 30.7,29.1 |only Human Warrior
kill 8 Goblin Assassin##50039 |q 28793/1 |goto 30.7,29.1 |only Human Paladin
kill 8 Goblin Assassin##50039 |q 28791/1 |goto 30.7,29.1 |only Human Hunter
kill 8 Goblin Assassin##50039 |q 28794/1 |goto 30.7,29.1 |only Human Priest
kill 8 Goblin Assassin##50039 |q 28796/1 |goto 30.7,29.1 |only Human Warlock
kill 8 Goblin Assassin##50039 |q 28792/1 |goto 30.7,29.1 |only Human Mage
kill 8 Goblin Assassin##50039 |q 28795/1 |goto 30.7,29.1 |only Human Rogue
kill 8 Goblin Assassin##50039 |q 29081/1 |goto 30.7,29.1 |only if not Human
step
label "injuredsoldiers"
clicknpc Injured Stormwind Infantry##50047+
|tip They look like dead Alliance soldiers laying on the ground around this area.
Revive #4# Injured Soldiers |q 28813/1 |goto 30.7,29.1 |only Human Warrior
Revive #4# Injured Soldiers |q 28809/1 |goto 30.7,29.1 |only Human Paladin
Revive #4# Injured Soldiers |q 28806/1 |goto 30.7,29.1 |only Human Hunter
Revive #4# Injured Soldiers |q 28810/1 |goto 30.7,29.1 |only Human Priest
Revive #4# Injured Soldiers |q 28812/1 |goto 30.7,29.1 |only Human Warlock
Revive #4# Injured Soldiers |q 28808/1 |goto 30.7,29.1 |only Human Mage
Revive #4# Injured Soldiers |q 28811/1 |goto 30.7,29.1 |only Human Rogue
Revive #4# Injured Soldiers |q 29082/1 |goto 30.7,29.1 |only if not Human
|only if not Monk
step
talk Brother Paxton##951
turnin Fear No Evil##28813 |goto 35.01,38.26 |only Human Warrior
turnin Fear No Evil##28809 |goto 35.01,38.26 |only Human Paladin
turnin Fear No Evil##28806 |goto 35.01,38.26 |only Human Hunter
turnin Fear No Evil##28810 |goto 35.01,38.26 |only Human Priest
turnin Fear No Evil##28812 |goto 35.01,38.26 |only Human Warlock
turnin Fear No Evil##28808 |goto 35.01,38.26 |only Human Mage
turnin Fear No Evil##28811 |goto 35.01,38.26 |only Human Rogue
turnin Fear No Evil##29082 |goto 35.01,38.26 |only if not Human
|only if not Monk
step
talk Sergeant Willem##823
turnin They Sent Assassins##28797 |goto 35.7,39.8 |only Human Warrior
accept The Rear is Clear##28823 |goto 35.7,39.8 |only Human Warrior
turnin They Sent Assassins##28793 |goto 35.7,39.8 |only Human Paladin
accept The Rear is Clear##28819 |goto 35.7,39.8 |only Human Paladin
turnin They Sent Assassins##28791 |goto 35.7,39.8 |only Human Hunter
accept The Rear is Clear##28817 |goto 35.7,39.8 |only Human Hunter
turnin They Sent Assassins##28794 |goto 35.7,39.8 |only Human Priest
accept The Rear is Clear##28820 |goto 35.7,39.8 |only Human Priest
turnin They Sent Assassins##28796 |goto 35.7,39.8 |only Human Warlock
accept The Rear is Clear##28822 |goto 35.7,39.8 |only Human Warlock
turnin They Sent Assassins##28792 |goto 35.7,39.8 |only Human Mage
accept The Rear is Clear##28818 |goto 35.7,39.8 |only Human Mage
turnin They Sent Assassins##28795 |goto 35.7,39.8 |only Human Rogue
accept The Rear is Clear##28821 |goto 35.7,39.8 |only Human Rogue
turnin They Sent Assassins##31144 |goto 35.7,39.8 |only Human Monk
accept The Rear is Clear##31145 |goto 35.7,39.8 |only Human Monk
turnin They Sent Assassins##29081 |goto 35.7,39.8 |only if not Human
accept The Rear is Clear##29083 |goto 35.7,39.8 |only if not Human
step
talk Marshal McBride##197
|tip Standing at the entrance of the building.
turnin The Rear is Clear##28823 |goto 33.6,53.0 |only Human Warrior
turnin The Rear is Clear##28819 |goto 33.6,53.0 |only Human Paladin
turnin The Rear is Clear##28817 |goto 33.6,53.0 |only Human Hunter
turnin The Rear is Clear##28820 |goto 33.6,53.0 |only Human Priest
turnin The Rear is Clear##28822 |goto 33.6,53.0 |only Human Warlock
turnin The Rear is Clear##28818 |goto 33.6,53.0 |only Human Mage
turnin The Rear is Clear##28821 |goto 33.6,53.0 |only Human Rogue
turnin The Rear is Clear##31145 |goto 33.6,53.0 |only Human Monk
turnin The Rear is Clear##29083 |goto 33.6,53.0 |only if not Human
accept Blackrock Invasion##26389 |goto 33.6,53.0
step
talk Milly Osworth##9296
accept Extinguishing Hope##26391 |goto 33.4,54.7
stickystart "Collect_Blackrock_Orc_Weapons"
step
Use Milly's Fire Extinguisher on Fires |use Milly's Fire Extinguisher##58362
Extinguish #8# Vineyard Fires |q 26391/1 |goto 54.4,78.6
step
label "Collect_Blackrock_Orc_Weapons"
Kill enemies around this area
collect 8 Blackrock Orc Weapon##58361 |q 26389/1 |goto 54.4,78.6
step
talk Milly Osworth##9296
turnin Extinguishing Hope##26391 |goto 33.4,54.7
step
talk Marshal McBride##197
turnin Blackrock Invasion##26389 |goto 33.6,53.0
accept Ending the Invasion!##26390 |goto 33.6,53.0
step
Follow the path |goto 36.65,58.37 < 20 |only if walking
kill Kurtok the Slayer##42938 |q 26390/1 |goto 65.1,48.1
step
Follow the path |goto 40.35,60.10 < 20 |only if walking
talk Marshal McBride##197
turnin Ending the Invasion!##26390 |goto 33.6,53.0
accept Report to Goldshire##54 |goto 33.6,53.0
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Night Elf (1-10)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\NightElf",
condition_suggested=function() return raceclass('NightElf') and level <= 10 and not completedq(14039) end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Classic (10-60)\\Kalimdor\\Darkshore (10-60)",
startlevel=1,
endlevel=10,
},[[
step
talk Ilthalaine##2079
accept The Balance of Nature##28713 |goto Shadowglen/0 45.6,74.6
step
kill 6 Young Nightsaber##2031 |q 28713/1 |goto 45.2,80.8
step
talk Ilthalaine##2079
turnin The Balance of Nature##28713 |goto 45.6,74.6
accept Fel Moss Corruption##28714 |goto 45.6,74.6
step
talk Melithar Staghelm##2077
accept Demonic Thieves##28715 |goto 46.0,72.9
stickystart "Collect_Melithars_Stolen_Bags"
step
kill Grell##1988+
collect 6 Fel Moss##3297 |q 28714/1 |goto 36.9,78.2
step
label "Collect_Melithars_Stolen_Bags"
click Melithar's Stolen Bag##323+
|tip They look like tan leather sacks on the ground around this area.
collect 5 Melithar's Stolen Bags##46700 |q 28715/1 |goto 36.9,78.2
step
talk Melithar Staghelm##2077
turnin Demonic Thieves##28715 |goto 46.0,72.9
step
talk Ilthalaine##2079
turnin Fel Moss Corruption##28714 |goto 46.3,73.5
accept Priestess of the Moon##28723 |goto 46.3,73.5
step
Follow the path |goto 41.19,62.71 < 20 |only if walking
talk Dentaria Silverglade##49479
turnin Priestess of the Moon##28723 |goto 42.5,50.6
accept Iverron's Antidote##28724 |goto 42.5,50.6
|only NightElf
step
click Moonpetal Lily##207346
|tip They are all around these ponds.
collect 7 Moonpetal Lily##10641 |q 28724/1 |goto 42.49,50.54
|only if havequest(28724)
step
talk Dentaria Silverglade##49479
turnin Iverron's Antidote##28724 |goto 42.5,50.6
accept The Woodland Protector##28725 |goto 42.5,50.6
|only NightElf
step
talk Tarindrella##49480
|tip She will appear next to you when you reach the entrance of the cave.
turnin The Woodland Protector##28725 |goto Teldrassil/2 44.5,82.2
accept Webwood Corruption##28726 |goto Teldrassil/2 44.5,82.2
|only NightElf
step
kill 12 Webwood Spider##1986 |q 28726/1 |goto 46.02,60.91
|tip They are all around inside this cave.
|only if havequest(28726) or completedq(28726)
step
_Next to you:_
talk Tarindrella##49480
turnin Webwood Corruption##28726
accept Vile Touch##28727
|only NightElf
step
Follow the path down |goto 46.12,55.06 < 15 |walk
Follow the path up |goto 39.27,31.34 < 15 |walk
Continue up the path |goto 34.42,16.19 < 15 |walk
kill Githyiss the Vile##1994 |q 28727/1 |goto 44.9,28.1
|only if havequest(28727)
step
_Next to you:_
talk Tarindrella##49480
turnin Vile Touch##28727
accept Signs of Things to Come##28728
|only NightElf
step
talk Dentaria Silverglade##49479
turnin Signs of Things to Come##28728 |goto Shadowglen/0 42.50,50.47
accept Teldrassil: Crown of Azeroth##28729 |goto Shadowglen/0 42.50,50.47
|only NightElf
step
Use the Crystal Phial near the water |use Crystal Phial##5185
collect Filled Crystal Phial##5184 |q 28729/1 |goto 50.3,33.7
|only if havequest(28729)
step
talk Dentaria Silverglade##49479
turnin Teldrassil: Crown of Azeroth##28729 |goto 42.50,50.49
accept Precious Waters##28730 |goto 42.50,50.49
|only NightElf
step
Follow the ramp up |goto 41.90,63.50 < 15 |only if walking
Continue up the ramp |goto 46.05,54.07 < 15 |only if walking
Continue up the ramp |goto 45.65,61.04 < 15 |only if walking
talk Tenaron Stormgrip##3514
|tip In a room at the top of the tree.
turnin Precious Waters##28730 |goto 47.2,55.9
accept Teldrassil: Passing Awareness##28731 |goto 47.2,55.9
|only NightElf
step
Jump onto the roof of the house below |goto 47.96,59.95 < 15 |only if walking
talk Porthannius##6780
accept Dolanaar Delivery##2159 |goto 54.6,84.7
step
Follow the path |goto Teldrassil/0 60.77,45.61 < 15 |only if walking
talk Zenn Foulhoof##2150
accept Zenn's Bidding##488 |goto Teldrassil/0 59.52,49.17
stickystart "Webwood_Spider_Silk"
step
kill Nightsaber##2042+
collect 2 Nightsaber Fang##3409 |q 488/1 |goto 60.5,52.5
There are more around [57.7,52.5]
step
label "Webwood_Spider_Silk"
kill Webwood Lurker##1998+
collect 2 Webwood Spider Silk##3412 |q 488/3 |goto 60.5,52.5
There are more around [57.7,52.5]
step
kill Strigid Owl##1995+
collect 2 Strigid Owl Feather##3411 |q 488/2 |goto 57.7,52.5
step
talk Zenn Foulhoof##2150
turnin Zenn's Bidding##488 |goto 59.55,49.24
step
talk Syral Bladeleaf##2083
accept Seek Redemption!##489 |goto 55.77,50.44
step
talk Tallonkai Swiftroot##3567
accept The Emerald Dreamcatcher##2438 |goto 55.55,49.98
step
talk Fidelio##40553
fpath Dolanaar |goto 55.5,50.4
step
talk Athridas Bearmantle##2078
accept A Troubling Breeze##475 |goto 55.7,52.0
step
talk Innkeeper Keldamyr##6736
turnin Dolanaar Delivery##2159 |goto 55.37,52.23
step
talk Innkeeper Keldamyr##6736
home Dolanaar |goto 55.37,52.23 |future |q 289
step
talk Corithras Moonrage##3515
turnin Teldrassil: Passing Awareness##28731 |goto 55.8,53.9
accept Teldrassil: The Refusal of the Aspects##929 |goto 55.8,53.9
|only NightElf
step
click Fel Cone##1673
|tip They look like big pine cones with green gas floating out of them on the ground around this area.
collect 3 Fel Cone##3418 |q 489/1 |goto 51.8,53.2
step
Follow the road |goto 55.88,50.63 < 20 |only if walking
talk Zenn Foulhoof##2150
turnin Seek Redemption!##489 |goto 59.5,49.2
step
Use the Jade Phial near the water |use Jade Phial##5619
collect Filled Jade Phial##5639 |q 929/1 |goto 62.1,50.8
|only if havequest(929)
step
Follow the path |goto 62.82,50.10 < 20 |only if walking
talk Gaerolas Talvethren##2107
|tip Upstairs in the house.
turnin A Troubling Breeze##475 |goto 64.6,51.2
accept Gnarlpine Corruption##476 |goto 64.6,51.2
step
click Tallonkai's Dresser##126158
|tip Inside the small house.
collect Emerald Dreamcatcher##8048 |q 2438/1 |goto 66.1,52.1
step
Follow the path |goto 65.02,50.87 < 20 |only if walking
Follow the road |goto 60.16,49.29 < 20 |only if walking
talk Syral Bladeleaf##2083
accept Nature's Reprisal##13946 |goto 55.77,50.44
step
talk Tallonkai Swiftroot##3567
turnin The Emerald Dreamcatcher##2438 |goto 55.55,49.98
accept Ferocitas the Dream Eater##2459 |goto 55.55,49.98
accept Twisted Hatred##932 |goto 55.55,49.98
step
talk Athridas Bearmantle##2078
turnin Gnarlpine Corruption##476 |goto 55.7,52.0
accept The Relics of Wakening##483 |goto 55.7,52.0
step
talk Sentinel Kyra Starsong##2081
accept Resident Danger##13945 |goto 55.66,51.98
step
talk Corithras Moonrage##3515
turnin Teldrassil: The Refusal of the Aspects##929 |goto 55.8,53.9
|only NightElf
step
talk Nyoma##4265
accept Reminders of Home##6344 |goto 56.73,53.51
|only NightElf
stickystart "Kill_Gnarlpine_Mystics"
step
Follow the path |goto 63.46,47.40 < 20 |only if walking
kill Ferocitas the Dream Eater##7234
collect Tallonkai's Jewel##8050 |q 2459/2 |goto 67.25,46.87
step
label "Kill_Gnarlpine_Mystics"
kill 7 Gnarlpine Mystic##7235 |q 2459/1 |goto 66.62,46.63
step
Follow the path |goto 65.13,47.47 < 20 |only if walking
Follow the road |goto 61.65,47.39 < 20 |only if walking
Continue following the road |goto 59.08,50.12 < 20 |only if walking
talk Tallonkai Swiftroot##3567
turnin Ferocitas the Dream Eater##2459 |goto 55.55,49.98
stickystart "Seeds"
step
Follow the road |goto 55.25,51.05 < 20 |only if walking
Follow the path |goto 52.81,49.44 < 20 |only if walking
Follow the path |goto 53.77,46.89 < 15 |only if walking
Follow the path |goto Teldrassil/3 75.64,64.97 < 15 |walk
Follow the path |goto Teldrassil/3 62.88,55.85 < 15 |walk
Continue following the path |goto Teldrassil/3 51.47,26.13 < 15 |walk
Continue following the path |goto Teldrassil/3 39.09,28.22 < 15 |walk
Follow the path |goto Teldrassil/3 29.29,19.10 < 15 |walk
kill Lord Melenas##2038
collect Melenas' Head##5221 |q 932/1 |goto Teldrassil/3 21.21,43.19
step
label "Seeds"
Use the Ireroot Seeds on Sprites |use Ireroot Seeds##46716
|tip They're all around inside this cave.
Kill #12# Fel Rock Grellkin with Ireroot Seeds |q 13946/1 |goto 15.8,52.4
step
talk Syral Bladeleaf##2083
turnin Nature's Reprisal##13946 |goto Teldrassil/0 55.76,50.45
step
talk Tallonkai Swiftroot##3567
turnin Twisted Hatred##932 |goto 55.55,49.99
step
Approach Citarre Mapleheart |goto 55.58,51.70 < 10 |c |q 13945
step
talk Citarre Mapleheart##34761 |goto 55.58,51.70 |n
Tell her _"I'm ready to depart for Ban'ethil Barrow Den."_
Begin Riding to the Ban'ethil Barrow Den |goto 55.6,51.7 > 30 |noway |c |q 13945
step
Ride to the Ban'ethil Barrow Den |goto 45.68,50.49 < 15 |c |q 13945
stickystart "Slay_Banethil_Gnarlpine"
stickystart "Shaman_Voodoo_Charm"
step
Follow the spiral path down |goto Teldrassil/4 47.43,17.72 < 10 |walk
Continue following the path down |goto Teldrassil/4 34.65,27.83 < 10 |walk
Cross the bridge |goto Teldrassil/4 39.61,60.69 < 10 |walk
talk Oben Rageclaw##7317
accept The Sleeping Druid##2541 |goto Teldrassil/4 41.17,83.85
step
_Next to you:_
talk Sentinel Huntress##34249
Ask her _"Where is the Rune of Nesting?"_
|tip Follow the green mist trail that appears.
|tip You can ask her as many times as you need to.
click Chest of Nesting##2742
collect Rune of Nesting##3408 |q 483/4
step
_Next to you:_
talk Sentinel Huntress##34249
Ask her _"Where is the Black Feather Quill?"_
|tip Follow the green mist trail that appears.
|tip You can ask her as many times as you need to.
click Chest of the Black Feather##2739
collect Black Feather Quill##3406 |q 483/2
step
_Next to you:_
talk Sentinel Huntress##34249
Ask her _"Where is the Sapphire of Sky?"_
|tip Follow the green mist trail that appears.
|tip You can ask her as many times as you need to.
click Chest of the Sky##2741
collect Sapphire of Sky##3407 |q 483/3
step
_Next to you:_
talk Sentinel Huntress##34249
Ask her _"Where is the Raven Claw Talisman?"_
|tip Follow the green mist trail that appears.
|tip You can ask her as many times as you need to.
click Chest of the Raven Claw##2740
collect Raven Claw Talisman##3405 |q 483/1
step
label "Shaman_Voodoo_Charm"
kill Gnarlpine Shaman##2009+
|tip All throughout the cave.
collect Shaman Voodoo Charm##8363 |q 2541/1
step
_Next to you:_
talk Sentinel Huntress##34249
Ask her _"Can you lead me to the exit?"_
|tip Follow the green mist trail that appears, until you see an area with 2 bridges.
|tip Don't actually leave the cave.
talk Oben Rageclaw##7317
turnin The Sleeping Druid##2541 |goto 41.30,83.78
accept Druid of the Claw##2561 |goto 41.30,83.78
step
Cross the bridge |goto 43.57,74.13 < 10 |walk
Cross the bridge |goto 41.30,57.11 < 10 |walk
kill Rageclaw##7318
|tip The doors will open as you approach them.
|tip You will be attacked immediately, so be ready.
Use the Voodoo Charm on Rageclaw's corpse |use Voodoo Charm##8149
Release Oben Rageclaw's Spirit |q 2561/1 |goto 58.74,66.56
step
Cross the bridge |goto 51.61,62.33 < 10 |walk
Cross the bridge |goto 39.70,60.89 < 10 |walk
talk Oben Rageclaw##7317
turnin Druid of the Claw##2561 |goto 41.35,83.78
step
label "Slay_Banethil_Gnarlpine"
Kill enemies inside the cave
Slay #20# Ban'ethil Gnarlpine |q 13945/1
step
talk Athridas Bearmantle##2078
turnin The Relics of Wakening##483 |goto Teldrassil/0 55.7,52.0
accept Ursal the Mauler##486 |goto Teldrassil/0 55.7,52.0
step
talk Sentinel Kyra Starsong##2081
turnin Resident Danger##13945 |goto 55.66,51.99
step
talk Fidelio##40553
turnin Reminders of Home##6344 |goto 55.47,50.42
accept To Darnassus##6341 |goto 55.47,50.42
|only NightElf
step
talk Sister Aquinne##7316
turnin To Darnassus##6341 |goto Darnassus/0 36.1,53.5
accept An Unexpected Gift##6342 |goto Darnassus/0 36.1,53.5
|only NightElf
step
talk Leora##40552
turnin An Unexpected Gift##6342 |goto 36.6,47.9
accept Return to Nyoma##6343 |goto 36.6,47.9
|only NightElf
step
talk Nyoma##4265
turnin Return to Nyoma##6343 |goto Teldrassil/0 56.73,53.52
|only NightElf
step
Follow the road |goto 55.76,50.83 < 20 |only if walking
Continue following the road |goto 54.23,51.03 < 20 |only if walking
Continue following the road |goto 51.19,49.24 < 20 |only if walking
talk Moon Priestess Amara##2151
accept The Road to Darnassus##487 |goto 49.35,44.67
stickystart "Kill_Gnarlpine_Ambushers"
step
Follow the path up |goto 49.40,42.83 < 15 |only if walking
Continue up the path |goto 50.38,37.98 < 15 |only if walking
Follow the path up |goto 50.63,36.38 < 15 |only if walking
kill Ursal the Mauler##2039 |q 486/1 |goto 51.70,39.29
step
label "Kill_Gnarlpine_Ambushers"
kill 8 Gnarlpine Ambusher##2152 |q 487/1 |goto 51.33,37.36
step
Follow the path down |goto 50.47,36.66 < 15 |only if walking
Continue down the path |goto 49.71,42.02 < 15 |only if walking
talk Moon Priestess Amara##2151
turnin The Road to Darnassus##487 |goto 49.35,44.67
step
Follow the road |goto 49.60,45.62 < 20 |only if walking
Continue following the road |goto 51.07,49.17 < 20 |only if walking
talk Athridas Bearmantle##2078
turnin Ursal the Mauler##486 |goto 55.7,52.0
step
talk Syral Bladeleaf##2083
accept Denalan's Earth##997 |goto 55.76,50.44
step
Follow the path down |goto 56.57,54.97 < 20 |only if walking
Follow the path |goto 59.32,57.73 < 20 |only if walking
talk Denalan##2080
turnin Denalan's Earth##997 |goto 59.93,59.76
Watch the dialogue
accept Timberling Seeds##918 |goto 59.93,59.76
accept Timberling Sprouts##919 |goto 59.93,59.76
stickystart "Collect_Timberling_Sprouts"
stickystart "Collect_Timberling_Seeds"
step
Follow the path |goto 59.17,61.58 < 20 |only if walking
click Strange Fruited Plant##6751
accept The Glowing Fruit##930 |goto 57.6,62.9
step
label "Collect_Timberling_Seeds"
kill Timberling##2022+
collect 6 Timberling Seed##5168 |q 918/1 |goto 57.55,62.45
step
label "Collect_Timberling_Sprouts"
click Timberling Sprout##4608
|tip They look like balls of green vines on the ground around this area.
collect 10 Timberling Sprout##5169 |q 919/1 |goto 57.55,62.45
step
Follow the path |goto 58.64,62.53 < 20 |only if walking
talk Denalan##2080
turnin Timberling Seeds##918 |goto 59.93,59.76
accept Rellian Greenspyre##922 |goto 59.93,59.76
turnin Timberling Sprouts##919 |goto 59.93,59.76
turnin The Glowing Fruit##930 |goto 59.93,59.76
step
Follow the path |goto 59.57,58.10 < 20 |only if walking
Follow the path up |goto 56.89,55.93 < 20 |only if walking
talk Corithras Moonrage##3515
accept Teldrassil: The Burden of the Kaldorei##7383 |goto 55.8,53.9
step
Follow the road |goto 54.37,51.06 < 20 |only if walking
Continue following the road |goto 51.17,49.21 < 20 |only if walking
Continue following the road |goto 48.02,43.36 < 20 |only if walking
Cross the bridge |goto 45.74,44.12 < 20 |only if walking
talk Rellian Greenspyre##3517
turnin Rellian Greenspyre##922 |goto 43.96,44.16
accept Mossy Tumors##923 |goto 43.96,44.16
step
Follow the path |goto 43.08,43.51 < 20 |only if walking
Follow the path |goto 42.18,40.24 < 20 |only if walking
Kill Timberling enemies around this area
|tip Follow the water north.
collect 5 Mossy Tumor##5170 |q 923/1 |goto 44.27,34.55
step
Follow the path up |goto 43.29,29.80 < 30 |only if walking
Follow the path |goto 41.65,30.68 < 20 |only if walking
Use the Amethyst Phial near the water |use Amethyst Phial##18152
collect Filled Amerthyst Phial##18151 |q 7383/1 |goto 40.5,29.9
step
talk Sentinel Arynia Cloudsbreak##3519
accept The Enchanted Glade##937 |goto 39.50,29.86
step
talk Priestess A'moora##7313
|tip She walks around.
accept Tears of the Moon##2518 |goto 39.25,29.73
stickystart "Collect_Bloodfeather_Belts"
step
click Strange Fronded Plant##6752
accept The Shimmering Frond##931 |goto 37.3,25.5
step
label "Collect_Bloodfeather_Belts"
Kill Bloodfeather enemies around this area
collect 6 Bloodfeather Belt##5204 |q 937/1 |goto 37.3,25.5
step
Follow the path |goto 37.34,23.61 < 20 |only if walking
Follow the path |goto 39.16,22.16 < 20 |only if walking
kill Lady Sathrah##7319
|tip She's a gray spider that walks around this small area.
collect Silvery Spinnerets##8344 |q 2518/1 |goto 40.7,22.1
step
Follow the path |goto 40.59,23.09 < 20 |only if walking
Follow the path |goto 39.61,26.36 < 20 |only if walking
talk Priestess A'moora##7313
|tip She walks around.
turnin Tears of the Moon##2518 |goto 39.19,29.88
step
talk Sentinel Arynia Cloudsbreak##3519
turnin The Enchanted Glade##937 |goto 39.50,29.86
step
Follow the path |goto 40.59,36.67 < 20 |only if walking
talk Corithras Moonrage##3515
|tip He paces around.
turnin Teldrassil: The Burden of the Kaldorei##7383 |goto 41.07,45.73
accept Teldrassil: The Coming Dawn##933 |goto 41.07,45.73
step
talk Rellian Greenspyre##3517
turnin Mossy Tumors##923 |goto 44.0,44.2
step
talk Denalan##2080
turnin The Shimmering Frond##931 |goto 43.94,44.20
accept Oakenscowl##2499 |goto 43.94,44.20
step
Follow the path |goto 42.05,47.43 < 20 |only if walking
Follow the path |goto 42.67,50.64 < 20 |only if walking
Continue following the path |goto 42.65,54.71 < 20 |only if walking
Use the Tourmaline Phial near the water |use Tourmaline Phial##5621
collect Filled Tourmaline Phial##5645 |q 933/1 |goto 43.76,58.55
step
talk Tarindrella##1992
turnin Teldrassil: The Coming Dawn##933 |goto 42.51,58.19
accept The Vengeance of Elune##14005 |goto 42.51,58.19
step
Follow the path |goto 42.39,60.15 < 20 |only if walking
Follow the path |goto 43.10,62.21 < 20 |only if walking
Continue following the path |goto 42.74,68.78 < 20 |only if walking
Follow the path |goto 41.91,69.75 < 20 |only if walking
kill Bough of Corruption##34521 |q 14005/1 |goto 40.7,69.3
|tip Use the abilities on your action bar.
step
Follow the path |goto 41.47,69.90 < 20 |only if walking
Continue following the path |goto 42.89,68.30 < 20 |only if walking
Follow the path |goto 43.16,64.59 < 20 |only if walking
talk Tarindrella##1992
turnin The Vengeance of Elune##14005 |goto 42.5,58.2
accept The Waters of Teldrassil##935 |goto 42.5,58.2
step
Follow the path |goto 40.81,51.73 < 20 |only if walking
Follow the road |goto 40.30,47.60 < 20 |only if walking
talk Corithras Moonrage##3515
|tip He paces around.
turnin The Waters of Teldrassil##935 |goto 41.05,45.69
accept Home of the Kaldorei##14039 |goto 41.05,45.69
step
Cross the bridge |goto 45.43,44.61 < 20 |only if walking
Follow the path |goto 46.81,42.29 < 20 |only if walking
Follow the path |goto 47.23,39.41 < 20 |only if walking
kill Oakenscowl##2166
|tip He's a red and green elemental that walks around this area.
collect Gargantuan Tumor##8136 |q 2499/1 |goto 47.4,35.2
step
Follow the path up |goto 47.00,36.94 < 20 |only if walking
Follow the path |goto 47.17,40.43 < 20 |only if walking
Cross the bridge |goto 45.74,44.13 < 20 |only if walking
talk Denalan##2080
turnin Oakenscowl##2499 |goto 43.94,44.20
step
click Hero's Call Board##250720
accept Hero's Call: Darkshore!##28490 |goto Darnassus/0 44.96,49.87
|only Draenei,Dwarf,Gnome,Human
step
talk Sentinel Cordressa Briarbow##42936
|tip Upstairs inside the building.
accept Breaking Waves of Change##26383 |goto 43.9,76.1
|only NightElf
step
talk Genn Greymane##48736
accept Breaking Waves of Change##26385 |goto 48.2,14.7
|only Worgen
step
talk Tyrande Whisperwind##7999
|tip Upstairs inside the building.
turnin Home of the Kaldorei##14039 |goto 43.0,78.1
step
Enter the Pink Portal |goto 36.90,50.40 |n
Reach Rut'theran Village |goto Teldrassil/0 55.10,88.53 |noway |c |q 26383 |only if havequest(26383)
Reach Rut'theran Village |goto Teldrassil/0 55.10,88.53 |noway |c |q 26385 |only if havequest(26385)
Reach Rut'theran Village |goto Teldrassil/0 55.10,88.53 |noway |c |q 28490 |only if havequest(28490)
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Worgen (1-10)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Gilneas",
condition_suggested=function() return raceclass('Worgen') and level <= 13 and not completedq(28517) and not raceclass('DEATHKNIGHT') end,
condition_suggested_exclusive=true,
condition_end=function() return completedq(28517) or raceclass('DEATHKNIGHT') end,
condition_valid=function() return raceclass('Worgen')  end,
condition_valid_msg="Worgen only.",
next="Leveling Guides\\Classic (10-60)\\Kalimdor\\Darkshore (10-60)",
startlevel=1,
endlevel=10
},[[
step
talk Prince Liam Greymane##34850
accept Lockdown!##14078 |goto Gilneas City/0 59.1,24.0
step
Follow the path |goto 57.65,20.44 < 15 |only if walking
talk Lieutenant Walden##34863
turnin Lockdown!##14078 |goto 54.7,16.6
accept Something's Amiss##14091 |goto 54.7,16.6
step
Follow the path |goto 57.32,18.11 < 15 |only if walking
talk Prince Liam Greymane##34913
turnin Something's Amiss##14091 |goto 59.8,22.2
accept All Hell Breaks Loose##14093 |goto 59.8,22.2
accept Evacuate the Merchant Square##14098 |goto 59.8,22.2
step
talk Gwen Armstead##34936
accept Salvage the Supplies##14094 |goto 59.6,26.8
stickystart "Salvaged_Supplies"
stickystart "Evacuate_Market_Homes"
step
kill 8 Rampaging Worgen##34884 |q 14093/1 |goto 56.0,28.6
step
label "Salvaged_Supplies"
click Supply Crate##234563
|tip They look like wooden crates on the ground around this area.
collect 4 Salvaged Supplies##46896 |q 14094/1 |goto 56.0,28.6
step
label "Evacuate_Market_Homes"
click Merchant Square Door##195327
|tip They look like the wooden doors of the buildings around this area.
Evacuate #3# Market Homes |q 14098/1 |goto 56.0,28.6
step
talk Gwen Armstead##34936
turnin Salvage the Supplies##14094 |goto 59.5,26.8
step
talk Prince Liam Greymane##34913
turnin All Hell Breaks Loose##14093 |goto 59.9,22.3
turnin Evacuate the Merchant Square##14098 |goto 59.9,22.3
accept Royal Orders##14099 |goto 59.9,22.3
step
Follow the road |goto 64.42,23.60 < 20 |only if walking
Run down the stairs |goto 69.20,45.48 < 15 |only if walking
talk Gwen Armstead##35840
turnin Royal Orders##14099 |goto 70.8,55.1
accept Your Instructor##14265 |goto 70.8,55.1 |only Worgen Warrior
accept Someone's Looking for You##14269 |goto 70.8,55.1 |only Worgen Rogue
accept Shady Associates##14273 |goto 70.8,55.1 |only Worgen Warlock
accept Someone's Keeping Track of You##14275 |goto 70.8,55.1 |only Worgen Hunter
accept Arcane Inquiries##14277 |goto 70.8,55.1 |only Worgen Mage
accept Seek the Sister##14278 |goto 70.8,55.1 |only Worgen Priest
accept The Winds Know Your Name... Apparently##14280 |goto 70.8,55.1 |only Worgen Druid
step
talk Sergeant Cleese##35839
turnin Your Instructor##14265 |goto 67.1,63.5
accept Safety in Numbers##14286 |goto 67.1,63.5
|only Worgen Warrior
step
talk Loren the Fence##35871
turnin Someone's Looking for You##14269 |goto 71.4,65.8
accept Safety in Numbers##14285 |goto 71.4,65.8
|only Worgen Rogue
step
talk Vitus Darkwalker##35869
turnin Shady Associates##14273 |goto 71.4,64.4
accept Safety in Numbers##14287 |goto 71.4,64.4
|only Worgen Warlock
step
talk Huntsman Blake##35874
turnin Someone's Keeping Track of You##14275 |goto 71.5,61.3
accept Safety in Numbers##14290 |goto 71.5,61.3
|only Worgen Hunter
step
talk Myriam Spellwaker##35872
turnin Arcane Inquiries##14277 |goto 68.0,64.7
accept Safety in Numbers##14288 |goto 68.0,64.7
|only Worgen Mage
step
talk Sister Almyra##35870
turnin Seek the Sister##14278 |goto 70.4,65.5
accept Safety in Numbers##14289 |goto 70.4,65.5
|only Worgen Priest
step
talk Celestine of the Harvest##35873
turnin The Winds Know Your Name... Apparently##14280 |goto 70.2,66.0
accept Safety in Numbers##14291 |goto 70.2,66.0
|only Worgen Druid
step
talk King Genn Greymane##35112
turnin Safety in Numbers##14286 |goto 65.8,77.7 |only Worgen Warrior
turnin Safety in Numbers##14285 |goto 65.8,77.7 |only Worgen Rogue
turnin Safety in Numbers##14287 |goto 65.8,77.7 |only Worgen Warlock
turnin Safety in Numbers##14290 |goto 65.8,77.7 |only Worgen Hunter
turnin Safety in Numbers##14288 |goto 65.8,77.7 |only Worgen Mage
turnin Safety in Numbers##14289 |goto 65.8,77.7 |only Worgen Priest
turnin Safety in Numbers##14291 |goto 65.8,77.7 |only Worgen Druid
accept Old Divisions##14157 |goto 65.8,77.7
step
talk Lord Godfrey##35115
accept While You're At It##24930 |goto 65.4,77.6
step
kill 5 Bloodfang Worgen##35118 |q 24930/1 |goto 62.75,73.66
step
Follow the path |goto 60.71,71.20 < 15 |only if walking
Enter the building |goto 57.75,73.32 < 10 |walk
talk Captain Broderick##50371
|tip Inside the building, in front of the stairs.
turnin Old Divisions##14157 |goto 57.9,75.6
accept The Prison Rooftop##28850 |goto 57.9,75.6
step
Follow the spiral stairs to the top |goto 56.06,73.17 < 10 |walk
Follow the path |goto 53.73,69.62 < 15 |only if walking
talk Lord Darius Crowley##35077
turnin The Prison Rooftop##28850 |goto 55.2,62.9
accept By the Skin of His Teeth##14154 |goto 55.2,62.9
step
Kill the enemies that attack in waves
Survive While Holding Back the Worgen for 2 Minutes |q 14154/1 |goto 55.2,62.9
|tip You will receive a buff that lets you know how much time is remaining.
step
talk Lord Darius Crowley##35077
turnin By the Skin of His Teeth##14154 |goto 55.2,63.0
accept Brothers In Arms##26129 |goto 55.2,63.0
step
Follow the path |goto 53.38,67.43 < 15 |only if walking
Follow the spiral stairs to the bottom |goto 57.56,75.85 < 10 |only if walking
Follow the path |goto 60.64,71.17 < 15 |only if walking
talk King Genn Greymane##35112
turnin Brothers In Arms##26129 |goto 65.8,77.7
step
talk Lord Godfrey##35115
turnin While You're At It##24930 |goto 65.3,77.5
step
talk King Genn Greymane##35112
accept The Rebel Lord's Arsenal##14159 |goto 65.8,77.7 |noobsolete
step
Follow the path |goto 60.32,77.11 < 15 |only if walking
Click the Cellar Door |goto 55.70,81.57 < 5 |walk
Go down the stairs into the cellar |goto 56.93,81.37 < 5 |walk
talk Josiah Avery##35369
turnin The Rebel Lord's Arsenal##14159 |goto 56.8,85.4
step
talk Lorna Crowley##35378
accept From the Shadows##14204 |goto 56.9,81.4
step
Leave the cellar |goto 55.86,81.47 < 5 |walk
Follow the path |goto 53.34,76.79 < 10 |only if walking
kill 6 Bloodfang Lurker##35463+ |q 14204/1 |goto 48.14,76.57
|tip Use your Mastiff's Attack Lurker ability on your pet action bar to help you find the Bloodfang Lurkers.
step
Follow the path |goto 48.09,76.51 < 15 |only if walking
Enter the cellar |goto 55.77,81.47 < 5 |walk
talk Lorna Crowley##35378
turnin From the Shadows##14204 |goto 56.8,81.4
accept Message to Greymane##14214 |goto 56.8,81.4
step
Leave the cellar |goto 55.81,81.44 < 5 |walk
Follow the path |goto 55.93,83.44 < 10 |only if walking
talk King Genn Greymane##35550
turnin Message to Greymane##14214 |goto 59.2,83.8
accept Save Krennan Aranas##14293 |goto 59.2,83.8
step
_While Riding the Horse:_
|tip You will begin riding a horse automatically.
Use the Rescue Krennan ability
|tip Spam the Rescue Krennan ability when your horse takes a big leap.
|tip You should see Krennan Aranas dangling in a tree.
Rescue Krennan Aranas |q 14293/1
step
Return to Lord Godfrey |goto 56.49,78.26 < 15 |c |q 14293
step
talk Lord Godfrey##35906
turnin Save Krennan Aranas##14293 |goto 55.7,80.7
accept Time to Regroup##14294 |goto 55.7,80.7
step
Follow the road |goto 53.30,83.87 < 15 |only if walking
Cross the bridge |goto 44.59,83.19 < 15 |only if walking
talk King Genn Greymane##35911
turnin Time to Regroup##14294 |goto 30.4,73.2
step
talk Lord Darius Crowley##35552
accept Sacrifices##14212 |goto 31.1,72.4
step
clicknpc Click Crowley's Horse##44429
Ride Crowley's Horse |invehicle |c |q 14212 |goto 31.3,72.7
step
_While Riding the Horse:_
|tip You will begin riding a horse automatically.
Use the Throw Torch ability on Bloodfang Stalkers
|tip They will chase you.
Round Up #30# Bloodfang Stalkers |q 14212/1
step
Reach Tobias Mantle |goto 40.25,39.55 < 15 |c |q 14212
step
talk Tobias Mistmantle##35618
turnin Sacrifices##14212 |goto 40.5,39.4
accept By Blood and Ash##14218 |goto 40.5,39.4
step
clicknpc Rebel Cannon##35317
Use the Rebel Cannon ability
|tip Shoot the worgen around this area.
kill 80 Bloodfang Stalker##35229 |q 14218/1 |goto 38.83,37.45
step
talk Tobias Mistmantle##35618
turnin By Blood and Ash##14218 |goto 40.6,39.4
accept Never Surrender, Sometimes Retreat##14221 |goto 40.6,39.4
step
Enter the building |goto 41.12,41.12 < 7 |walk
Follow the path |goto 43.64,44.71 < 10 |walk
talk Lord Darius Crowley##35566
turnin Never Surrender, Sometimes Retreat##14221 |goto 48.9,52.8
accept Last Stand##14222 |goto 48.9,52.8
step
kill 8 Frenzied Stalker##35627+ |q 14222/1 |goto 47.1,49.8
step
talk Lord Darius Crowley##35566
turnin Last Stand##14222 |goto 48.9,52.8
step
talk King Genn Greymane##36332
accept Last Chance at Humanity##14375 |goto Gilneas 2/0 36.41,61.25 |instant
step
talk Lord Godfrey##36170
|tip Inside the building.
accept Among Humans Again##14313 |goto 36.5,62.3
step
talk Krennan Aranas##36132
turnin Among Humans Again##14313 |goto 37.42,63.23
accept In Need of Ingredients##14320 |goto 37.42,63.23
step
Follow the path |goto 35.95,63.08 < 20 |only if walking
click Crate of Mandrake Essence##196394
turnin In Need of Ingredients##14320 |goto 32.8,66.4
step
clicknpc Slain Watchman##36205
accept Invasion##14321 |goto 32.76,66.15
step
Follow the path up |goto 34.38,63.87 < 20 |only if walking
Follow the path |goto 35.96,63.46 < 20 |only if walking
talk Gwen Armstead##34571
|tip Inside the building.
turnin Invasion##14321 |goto 37.41,63.35
accept Kill or Be Killed##14336 |goto 37.41,63.35
step
Follow the path |goto 36.55,65.25 < 15 |only if walking
talk Prince Liam Greymane##36140
|tip He moves around, fighting around this area near the buildings, so you may need to search for him.
turnin Kill or Be Killed##14336 |goto 35.5,66.3
accept Hold the Line##14347 |goto 35.5,66.3
accept You Can't Take 'Em Alone##14348 |goto 35.5,66.3
stickystart "Forsaken_Invaders"
step
click Black Gunpowder Kegs##196403
|tip They look like brown barrels on the ground around this area.
collect Black Gunpowder Keg##49202 |n
Use the Black Gunpowder Kegs on Horrid Abominations |use Black Gunpowder Keg##49202
|tip They look like big flesh monsters around this area.
Throw Gunpowder Kegs at #4# Horrid Abominations |q 14348/1 |goto 34.1,68.0
step
label "Forsaken_Invaders"
kill 10 Forsaken Invader##34511 |q 14347/1 |goto 34.1,68.0
step
talk Prince Liam Greymane##36140
|tip He moves around, fighting around this area near the buildings, so you may need to search for him.
turnin Hold the Line##14347 |goto 35.5,66.2
turnin You Can't Take 'Em Alone##14348 |goto 35.5,66.2
accept Holding Steady##14366 |goto 35.5,66.2
step
Follow the path |goto 36.26,65.71 < 15 |only if walking
talk Gwen Armstead##34571
|tip Inside the building.
turnin Holding Steady##14366 |goto 37.41,63.34
accept The Allens' Storm Cellar##14367 |goto 37.41,63.34
step
Follow the path |goto 35.97,63.43 < 20 |only if walking
Enter the cellar |goto 28.44,64.27 < 7 |walk
Follow the path |goto 28.26,63.86 < 7 |walk
talk Lord Godfrey##36290
|tip In the cellar.
turnin The Allens' Storm Cellar##14367 |goto 29.0,63.9
accept Unleash the Beast##14369 |goto 29.0,63.9
accept Two By Sea##14382 |goto 29.0,63.9
step
talk Melinda Hammond##36291
|tip In the cellar.
accept Save the Children!##14368 |goto 28.93,64.02
stickystart "Forsaken_Combatants"
step
Run up the stairs |goto 28.25,63.92 < 7 |walk
Leave the cellar |goto 28.46,64.35 < 7 |walk
talk James##36289
|tip He walks around this small area.
Rescue James |q 14368/3 |goto 28.5,66.8
step
talk Ashley##36288
|tip Upstairs in the house.
Rescue Ashley |q 14368/2 |goto 27.9,66.7
step
talk Cynthia##36287
Rescue Cynthia |q 14368/1 |goto 29.6,69.3
step
kill Forsaken Machinist##36292 |n
|tip They are riding on big metal catapults around this area.
clicknpc Forsaken Catapult##36283
Take Control of a Forsaken Catapult |invehicle |q 14382 |goto 25.1,72.3
step
_Aim at the Ship:_
|tip Use the Launch ability on your action bar.
Launch Yourself Onto the Deck of the Forsaken Ship |goto 24.68,75.90 < 30 |c |q 14382
step
Run down the stairs |goto 24.77,76.39 < 7 |walk
Continue down the stairs |goto 24.99,76.44 < 7 |walk
kill Captain Anson##36397 |q 14382/1 |goto 23.76,74.70
|tip Downstairs in the ship, on the middle floor.
step
kill Forsaken Machinist##36292 |n
|tip They are riding on big metal catapults around this area.
clicknpc Forsaken Catapult##36283
Take Control of a Forsaken Catapult |invehicle |q 14382 |goto 25.1,72.3
step
_Aim at the Ship:_
|tip Use the Launch ability on your action bar.
Launch Yourself Onto the Deck of the Forsaken Ship |goto 27.81,80.73 < 30 |c |q 14382
step
Run down the stairs |goto 27.88,81.17 < 7 |walk
Continue down the stairs |goto 28.12,81.26 < 7 |walk
kill Captain Morris##36399 |q 14382/2 |goto 26.84,79.31
|tip Downstairs in the ship, on the middle floor.
step
label "Forsaken_Combatants"
Kill Forsaken enemies around this area
Slay #8# Forsaken Combatants |q 14369/1 |goto 25.2,70.3
step
Follow the path |goto 28.52,68.58 < 20 |only if walking
Enter the cellar |goto 28.44,64.27 < 7 |walk
Follow the path |goto 28.26,63.86 < 7 |walk
talk Lord Godfrey##36290
|tip In the cellar.
turnin Unleash the Beast##14369 |goto 29.0,63.9
turnin Two By Sea##14382 |goto 29.0,63.9
step
talk Melinda Hammond##36291
|tip In the cellar.
turnin Save the Children!##14368 |goto 28.93,64.02
step
talk Lord Godfrey##36290
|tip In the cellar.
accept Leader of the Pack##14386 |goto 29.0,63.9
step
Run up the stairs |goto 28.25,63.92 < 7 |walk
Leave the cellar |goto 28.46,64.35 < 7 |walk
Follow the road |goto 25.53,67.11 < 20 |only if walking
Use the Mastiff Whistle near Dark Ranger Thyala |use Mastiff Whistle##49240
kill Dark Ranger Thyala##36312 |q 14386/1 |goto 23.47,67.53
step
Follow the road |goto 25.53,67.11 < 20 |only if walking
Enter the cellar |goto 28.44,64.27 < 7 |walk
Follow the path |goto 28.26,63.86 < 7 |walk
talk Lord Godfrey##36290
turnin Leader of the Pack##14386 |goto 29.0,63.9
accept As the Land Shatters##14396 |goto 29.0,63.9
step
Run up the stairs |goto 28.25,63.92 < 7 |walk
Leave the cellar |goto 28.46,64.35 < 7 |walk
talk Prince Liam Greymane##36451
turnin As the Land Shatters##14396 |goto 29.0,65.0
accept Gasping for Breath##14395 |goto 29.0,65.0
step
clicknpc Drowning Watchman##36440+
|tip They look like humans underwater around this area.
Carry the Drowning Watchmen to [29.0,65.1]
Rescue #4# Drowning Watchmen |q 14395/1 |goto 27.20,68.86
step
talk Prince Liam Greymane##36451
turnin Gasping for Breath##14395 |goto 29.0,65.0
accept Evacuation##14397 |goto 29.0,65.0
step
Follow the road up |goto 31.94,63.04 < 20 |only if walking
Follow the path |goto 35.95,63.45 < 20 |only if walking
talk Gwen Armstead##36452
turnin Evacuation##14397 |goto 37.6,65.2
accept Grandma Wahl##14398 |goto 37.6,65.2
accept The Hayward Brothers##14403 |goto 37.6,65.2
accept The Crowley Orchard##14406 |goto 37.6,65.2
step
Follow the path |goto 38.23,66.20 < 20 |only if walking
talk Lorna Crowley##36457
turnin The Crowley Orchard##14406 |goto 37.7,72.8
accept The Hungry Ettin##14416 |goto 37.7,72.8
step
Cross the bridge |goto 38.24,76.65 < 15 |only if walking
clicknpc Mountain Horse##36540+
Use the Round Up Horse ability on 4 other Mountain Horses
|tip Watch out for the elite Ettin walking around this area.
Rescue #5# Mountain Horses |q 14416/1 |goto 39.6,78.8
Bring the Mountain Horses to Lorna Crowley at [37.7,72.8]
step
talk Lorna Crowley##36457
turnin The Hungry Ettin##14416 |goto 37.7,72.8
step
Follow the path up |goto 33.90,76.42 < 15 |only if walking
talk Grandma Wahl##36458
|tip Inside the building.
turnin Grandma Wahl##14398 |goto 32.5,75.5
accept Grandma's Lost It Alright##14399 |goto 32.5,75.5
step
click Linen-Wrapped Book##196473
|tip It looks like a yellow book sitting on the ground.
collect Linen-Wrapped Book##49280 |q 14399/1 |goto 33.95,77.38
step
talk Grandma Wahl##36458
|tip Inside the building.
turnin Grandma's Lost It Alright##14399 |goto 32.5,75.5
accept I Can't Wear This##14400 |goto 32.5,75.5
step
click Grandma's Good Clothes##196472
|tip They look like clothes hanging on a line outside next to the building.
collect Grandma's Good Clothes##49279 |q 14400/1 |goto 32.0,75.5
step
talk Grandma Wahl##36458
|tip Inside the building.
turnin I Can't Wear This##14400 |goto 32.5,75.5
accept Grandma's Cat##14401 |goto 32.5,75.5
step
Follow the path down |goto 33.78,76.52 < 15 |only if walking
clicknpc Chance##36459
|tip It looks like a tiny orange cat sitting on a rock.
kill Lucius the Cruel##36461
collect Chance the Cat##49281 |q 14401/1 |goto 35.16,74.82
step
Follow the path up |goto 33.90,76.42 < 15 |only if walking
talk Grandma Wahl##36458
|tip Inside the building.
turnin Grandma's Cat##14401 |goto 32.5,75.5
step
Follow the path down |goto 33.02,78.01 < 20 |only if walking
Jump down into the water |goto 36.07,82.38 < 15 |only if walking
talk Sebastian Hayward##36456
turnin The Hayward Brothers##14403 |goto 36.9,84.2
accept Not Quite Shipshape##14404 |goto 36.9,84.2
accept Washed Up##14412 |goto 36.9,84.2
stickystart "Forsaken_Castaways"
step
click Planks of Wood##196809
|tip It looks like wooden boards laying on the ground.
collect Planks of Wood##49338 |q 14404/2 |goto 36.1,86.4
step
click Shipwright's Tools##196810
|tip It looks like a small wooden toolbox sitting on the ground inside the building.
collect Shipwright's Tools##49337 |q 14404/1 |goto 37.45,87.15
step
click Barrel of Coal Tar##196808
|tip It looks like a brown wooden barrel.
collect Coal Tar##49339 |q 14404/3 |goto 37.57,85.98
step
label "Forsaken_Castaways"
kill 6 Forsaken Castaway##36488 |q 14412/1 |goto 36.7,85.8
step
talk Sebastian Hayward##36456
turnin Not Quite Shipshape##14404 |goto 36.9,84.2
turnin Washed Up##14412 |goto 36.9,84.2
accept Escape By Sea##14405 |goto 36.9,84.2
step
Follow the path |goto 37.93,82.77 < 15 |only if walking
Follow the path |goto 36.40,76.30 < 20 |only if walking
Follow the path |goto 36.97,66.72 < 15 |only if walking
talk Gwen Armstead##36452
turnin Escape By Sea##14405 |goto 37.6,65.2
accept To Greymane Manor##14465 |goto 37.6,65.2
step
Travel to Greymane Manor |goto 29.23,54.17 < 20 |c |q 14465
step
Follow the road up |goto 29.90,53.51 < 20 |only if walking
Continue up the road |goto 30.15,51.67 < 20 |only if walking
talk Queen Mia Greymane##36606
turnin To Greymane Manor##14465 |goto Gilneas 2/2 62.1,49.6
accept The King's Observatory##14466 |goto Gilneas 2/2 62.1,49.6
step
Follow the path |goto Gilneas 2/3 48.57,51.18 < 10 |walk
Run up the stairs |goto Gilneas 2/3 49.54,34.12 < 10 |walk
Run up the spiral stairs |goto Gilneas 2/3 39.48,14.81 < 10 |walk
talk King Genn Greymane##36743
|tip At the top of the tower.
turnin The King's Observatory##14466 |goto Gilneas 2/3 41.94,20.21
accept Alas, Gilneas##14467 |goto Gilneas 2/3 41.94,20.21 |instant
step
talk King Genn Greymane##36743
accept Exodus##24438 |goto 41.94,20.21
step
Run down the spiral stairs |goto 46.51,22.78 < 7 |walk
Follow the path |goto 48.29,49.95 < 10 |walk
Follow the road down |goto Gilneas 2/0 29.70,51.83 < 20 |only if walking
Continue down the road |goto Gilneas 2/0 30.49,52.30 < 20 |only if walking
clicknpc Stagecoach Carriage##44928
Ride in the Stagecoach Carriage |invehicle |c |goto Gilneas 2/0 28.88,54.19 |q 24438
step
Travel to the Stagecoach Crash Site |goto 51.6,80.0 < 20 |c |q 24438
step
talk Prince Liam Greymane##37065
turnin Exodus##24438 |goto 51.8,80.5
accept Stranded at the Marsh##24468 |goto 51.8,80.5
step
Follow the path |goto 52.64,77.81 < 20 |only if walking
kill Swamp Crocolisk##37078+
Rescue #5# Crash Survivors |q 24468/1 |goto 52.9,75.2
step
Follow the path up |goto 52.88,76.93 < 20 |only if walking
talk Prince Liam Greymane##37065
turnin Stranded at the Marsh##24468 |goto 51.8,80.5
accept Introductions Are in Order##24472 |goto 51.8,80.5
stickystart "Ogre_Minions"
step
Follow the path up |goto 50.81,83.32 < 15 |only if walking
Continue following the path up |goto 50.24,85.13 < 15 |only if walking
Continue following the path up |goto 48.82,84.39 < 15 |only if walking
Follow the path up |goto 47.72,85.74 < 15 |only if walking
click Koroth's Banner##201594
|tip It looks like a hanging tiger skin flag.
collect Koroth's Banner##49742 |q 24472/2 |goto 46.75,83.20
step
label "Ogre_Minions"
kill 4 Ogre Minion##36293+ |q 24472/1 |goto 46.86,84.51
step
Follow the path down |goto 48.29,85.56 < 15 |only if walking
Continue following the path down |goto 49.26,84.30 < 15 |only if walking
Continue following the path down |goto 50.65,84.73 < 15 |only if walking
talk Prince Liam Greymane##37065
turnin Introductions Are in Order##24472 |goto 51.8,80.5
accept Stormglen##24483 |goto 51.8,80.5
step
Follow the road |goto 52.85,84.42 < 20 |only if walking
Continue following the road |goto 56.51,88.67 < 20 |only if walking
Follow the path |goto 58.99,92.58 < 20 |only if walking
talk Gwen Armstead##37102
|tip Inside the building.
turnin Stormglen##24483 |goto 59.86,91.70
accept Pest Control##24484 |goto 59.86,91.70
step
talk Willa Arnes##38792
|tip Inside the building.
home Stormglen Village |goto 60.06,91.67 |q 24495 |future
step
talk Lorna Crowley##37815
|tip Inside the building.
accept Pieces of the Past##24495 |goto 60.26,91.85
stickystart "Old_Journal_Pages"
step
kill 6 Vilebrood Skitterer##36813 |q 24484/1 |goto 63.70,91.61
step
label "Old_Journal_Pages"
click Old Journal Page##201607
|tip They look like pieces of paper laying on the ground and on boxes in this area.
collect 6 Old Journal Page##49760 |q 24495/1 |goto 63.70,91.61
step
Follow the path |goto 60.61,92.63 < 15 |only if walking
talk Gwen Armstead##37102
|tip Inside the building.
turnin Pest Control##24484 |goto 59.86,91.70
accept Queen-Sized Troubles##24501 |goto 59.86,91.70
step
talk Lorna Crowley##37815
|tip Inside the building.
turnin Pieces of the Past##24495 |goto 60.26,91.85
step
Follow the path |goto 61.01,90.46 < 15 |only if walking
Continue following the path |goto 63.08,86.83 < 20 |only if walking
Follow the path |goto 66.96,84.92 < 20 |only if walking
kill Rygna##37045 |q 24501/1 |goto 68.34,81.66
step
talk Gwen Armstead##37102
|tip Inside the building.
turnin Queen-Sized Troubles##24501 |goto 59.86,91.70
step
talk Lorna Crowley##37815
|tip Inside the building.
accept The Blackwald##24578 |goto 60.26,91.85
step
Follow the path |goto 61.01,90.46 < 15 |only if walking
Follow the path |goto 61.83,88.85 < 20 |only if walking
talk Belrysa Starbreeze##37822
|tip Inside the crumbled building.
turnin The Blackwald##24578 |goto 63.34,82.91
accept Losing Your Tail##24616 |goto 63.34,82.91
step
Jump down here |goto 63.55,82.07 < 7 |only if walking
Use Belrysa's Talisman to Break Free |use Belrysa's Talisman##49944
|tip Walk over the Freezing Trap lying in the road first.
kill Dark Scout##37953 |q 24616/1 |goto 63.96,81.28
step
Follow the path up |goto 65.32,81.96 < 15 |only if walking
Follow the path |goto 65.05,85.01 < 15 |only if walking
talk Belrysa Starbreeze##37822
|tip Inside the crumbled building.
turnin Losing Your Tail##24616 |goto 63.35,82.91
accept Tal'doren, the Wild Home##24617 |goto 63.35,82.91
step
Jump down here |goto 63.55,82.07 < 7 |only if walking
Follow the path down |goto 66.01,81.12 < 20 |only if walking
Enter the hollow tree |goto 68.65,74.61 < 15 |walk
talk Lord Darius Crowley##37195
|tip Inside the hollow tree.
turnin Tal'doren, the Wild Home##24617 |goto 68.71,73.25
accept At Our Doorstep##24627 |goto 68.71,73.25
step
talk Vassandra Stormclaw##37873
|tip Inside the hollow tree.
accept Preparations##24628 |goto 69.3,73.0
stickystart "Moonleaves"
step
Follow the path |goto 68.05,73.39 < 15 |walk
kill 6 Howling Banshee##37757+ |q 24627/1 |goto 63.23,75.65
step
label "Moonleaves"
click Moonleaf##201914
|tip They look like small plants at the base of trees around this area.
collect 6 Moonleaf##50017 |q 24628/1 |goto 63.23,75.65
step
Enter the hollow tree |goto 68.07,73.39 < 15 |walk
talk Lord Darius Crowley##37195
|tip Inside the hollow tree.
turnin At Our Doorstep##24627 |goto 68.71,73.25
accept Take Back What's Ours##24646 |goto 68.71,73.25
step
talk Vassandra Stormclaw##37873
|tip Inside the hollow tree.
turnin Preparations##24628 |goto 69.3,73.0
step
Follow the path |goto 68.05,73.39 < 15 |walk
Follow the path up |goto 65.58,73.89 < 20 |only if walking
Use the Horn of Tal'doren near the Veteran Dark Rangers |use Horn of Tal'doren##50134
|tip Using the horn will summon worgen to attack them and keep them occupied.
click Worn Coffer##201939
|tip It looks like a wooden chest on the ground inside the building.
collect Mysterious Artifact##10442 |q 24646/1 |goto 57.5,75.6
step
Follow the path down |goto 60.00,75.95 < 20 |only if walking
Enter the hollow tree |goto 68.07,73.39 < 15 |walk
talk Lord Darius Crowley##37195
|tip Inside the hollow tree.
turnin Take Back What's Ours##24646 |goto 68.71,73.25
accept Neither Human Nor Beast##24593 |goto 68.71,73.25
step
click Well of Fury##201950
Activate the Well of Fury |q 24593/1 |goto 69.0,72.8
step
click Well of Tranquility##201951
Activate the Well of Tranquility |q 24593/2 |goto 69.3,73.1
step
click Well of Balance##201952
Activate the Well of Balance |q 24593/3 |goto 69.1,73.5
step
talk Lord Darius Crowley##37195
|tip Inside the hollow tree.
turnin Neither Human Nor Beast##24593 |goto 68.71,73.25
accept Return to Stormglen##24673 |goto 68.71,73.25
step
talk Gwen Armstead##37102
|tip Inside the building.
turnin Return to Stormglen##24673 |goto 59.86,91.71
accept Onwards and Upwards##24672 |goto 59.86,91.71
step
Follow the path |goto 61.01,90.50 < 15 |only if walking
Follow the path |goto 63.27,86.96 < 20 |only if walking
Follow the path up |goto 68.2,86.8 < 15 |only if walking
Follow the road |goto 71.40,85.73 < 20 |only if walking
talk Krennan Aranas##37874
turnin Onwards and Upwards##24672 |goto 72.73,80.04
accept Betrayal at Tempest's Reach##24592 |goto 72.73,80.04
step
Cross the bridge |goto 73.33,79.50 < 15 |only if walking
Follow the path up |goto 75.18,76.67 < 20 |only if walking
Use Krennan's Potion of Stealth |use Krennan's Potion of Stealth##50218
Become Stealthed |havebuff 132320 |c |goto 76.6,75.5 |q 24592
step
Follow the path down |goto 79.22,72.05 < 20 |only if walking
Continue on the path |goto 80.53,69.72 < 20 |only if walking
Cross the bridge |goto 82.65,69.20 < 15 |only if walking
Follow the path up |goto 84.43,72.87 < 15 |only if walking
Continue up the path |goto 85.66,73.14 < 15 |only if walking
kill Baron Ashbury##37735 |q 24592/1 |goto 85.29,74.27
|tip He walks around outside of the building.
|tip Avoid the Mountain Mastiffs, they can still detect you and will attack.
|tip Use Krennan's Potion of Stealth again, if you accidentally lose stealth.
step
Use Krennan's Potion of Stealth |use Krennan's Potion of Stealth##50218
Become Stealthed |havebuff 132320 |c |q 24592
step
Follow the path down |goto 85.62,73.11 < 15 |only if walking
Cross the bridge |goto 84.11,72.74 < 15 |only if walking
Follow the path |goto 82.62,69.19 < 15 |only if walking
Follow the path up |goto 82.06,67.38 < 15 |only if walking
Follow the path |goto 81.65,64.49 < 20 |only if walking
kill Lord Walden##37733 |q 24592/2 |goto 78.16,66.03
|tip He walks around this area and inside the house.
|tip Avoid the Mountain Mastiffs, they can still detect you and will attack.
|tip Use Krennan's Potion of Stealth again, if you accidentally lose stealth.
step
Use Krennan's Potion of Stealth |use Krennan's Potion of Stealth##50218
Become Stealthed |havebuff 132320 |c |q 24592
step
Jump down here |goto 79.78,68.28 < 15 |only if walking
Follow the path up |goto 79.58,70.61 < 20 |only if walking
Follow the path |goto 78.65,72.12 < 15 |only if walking
talk King Genn Greymane##37876
|tip Use Krennan's Potion of Stealth again, if you accidentally lose stealth.
turnin Betrayal at Tempest's Reach##24592 |goto 78.3,72.1
accept Flank the Forsaken##24677 |goto 78.3,72.1
step
talk Lord Hewell##38764 |goto 78.33,71.88
Tell him _"I need a horse."_
Borrow a Horse |invehicle |c |goto 78.33,71.88 |q 24677
step
Travel to Livery Outpost |goto 71.6,39.6 < 20 |c |q 24677
step
talk Lorna Crowley##37783
turnin Flank the Forsaken##24677 |goto 70.87,39.84
accept Liberation Day##24575 |goto 70.87,39.84
step
talk Magda Whitewall##38143
accept Last Meal##24675 |goto 70.65,39.70
step
talk Marcus##37803
|tip He walks back and forth in this small area.
accept Slaves to No One##24674 |goto 70.8,40.1
step
kill Brown Stag##37786+
collect 10 Side of Stag Meat##50219 |q 24675/1 |goto 75.3,47.4
stickystart "Free_Enslaved_Gilneans"
step
Follow the road |goto 74.86,45.96 < 20 |only if walking
Continue following the road |goto 73.61,36.75 < 20 |only if walking
Follow the path |goto 74.05,33.03 < 20 |only if walking
Follow the path |goto Gilneas 2/1 28.00,61.14 < 15 |walk
Continue following the path |goto Gilneas 2/1 34.98,47.96 < 15 |walk
Follow the path |goto Gilneas 2/1 33.60,31.82 < 15 |walk
Follow the path |goto Gilneas 2/1 40.64,27.71 < 15 |walk
Continue on the path |goto Gilneas 2/1 53.69,33.93 < 15 |walk
Follow the path down |goto Gilneas 2/1 59.64,44.86 < 15 |walk
kill Brothogg the Slavemaster##37802 |q 24674/1 |goto Gilneas 2/1 54.36,81.07
step
label "Free_Enslaved_Gilneans"
kill Forsaken Slavedriver##37701+
collect Slaver's Key##49881+ |n
click Ball and Chain##207079
|tip They look like silver balls attached to the Enslaved Villagers' legs throughout the mine.
Free #5# Enslaved Gilnean |q 24575/1 |goto 59.38,72.79
step
Follow the path |goto 60.00,43.86 < 15 |walk
Follow the path up |goto 55.52,34.64 < 15 |walk
Follow the path |goto 38.24,27.61 < 15 |walk
Continue on the path |goto 33.26,35.64 < 15 |walk
Follow the path |goto 33.60,53.11 < 15 |walk
Continue following the path |goto 27.67,64.64 < 15 |walk
Follow the path |goto Gilneas 2/0 75.46,32.03 < 20 |only if walking
Follow the road |goto Gilneas 2/0 73.30,37.37 < 20 |only if walking
talk Lorna Crowley##37783
turnin Liberation Day##24575 |goto Gilneas 2/0 70.87,39.84
step
talk Magda Whitewall##38143
turnin Last Meal##24675 |goto 70.65,39.70
step
talk Marcus##37803
|tip He walks back and forth in this small area.
turnin Slaves to No One##24674 |goto 70.8,40.1
step
talk Lorna Crowley##37783
accept Push Them Out##24676 |goto 70.87,39.84
stickystart "Forsaken_Infantry"
step
Follow the path |goto 72.22,31.42 < 10 |only if walking
kill Executor Cornell##37686 |q 24676/2 |goto 72.8,28.4
step
Follow the path |goto 73.46,28.97 < 15 |only if walking
kill Valnov the Mad##37685 |q 24676/3 |goto 74.15,27.38
step
label "Forsaken_Infantry"
kill 4 Forsaken Infantry##37692 |q 24676/1 |goto 73.49,29.14
step
Follow the road up |goto 73.35,30.95 < 15 |only if walking
Follow the road |goto 73.30,37.37 < 20 |only if walking
talk Lorna Crowley##37783
turnin Push Them Out##24676 |goto 70.87,39.84
accept The Battle for Gilneas City##24904 |goto 70.87,39.84
step
talk Krennan Aranas##38553 |goto 70.05,40.90 |n
Tell him _"Let us take back our city."_
|tip If someone else has already started the battle, you will have to tell him "I wish to join the battle underway." instead.
Arrive in Gilneas City |goto Gilneas City/0 |c |q 24904
|tip Follow the army into the gates of Gilneas City.
step
Use the Rapier of the Gilnean Patriots on your Allies |use Rapier of the Gilnean Patriots##50334
|tip Follow the army of Gilneans through the city and fight enemies.
|tip The Rapier of the Gilnean Patriots heals your allies.
kill Lady Sylvanas Windrunner##38469
Complete the Battle for Gilneas City |q 24904/1 |goto Gilneas City/0 36.28,62.14
step
talk Lorna Crowley##38611
|tip Inside the building.
turnin The Battle for Gilneas City##24904 |goto 38.6,60.2
accept The Hunt For Sylvanas##24902 |goto 38.6,60.2
step
Follow the path |goto 37.00,54.02 < 15 |only if walking
Follow the path |goto 36.13,47.28 < 15 |only if walking
Follow the path |goto 33.93,38.66 < 15 |only if walking
Enter the building |goto 40.82,40.43 < 10 |walk
Follow the path |goto 43.35,44.25 < 10 |walk
Watch the dialogue
|tip Follow Tobias Mistmantle and hide in the water inside the building.
Hunt for Sylvanas |q 24902/1 |goto 44.1,51.6
step
Follow the path |goto 43.50,44.47 < 10 |walk
Leave the building |goto 40.78,40.33 < 10 |walk
Jump down here |goto 37.31,43.78 < 10 |only if walking
Follow the path |goto 37.18,53.87 < 15 |only if walking
talk Lorna Crowley##38611
|tip Inside the building.
turnin The Hunt For Sylvanas##24902 |goto 38.6,60.3
accept Vengeance or Survival##24903 |goto 38.6,60.3
step
talk King Genn Greymane##38539
|tip Inside the building.
turnin Vengeance or Survival##24903 |goto 32.4,57.0
accept Slowing the Inevitable##24920 |goto 32.4,57.0
step
clicknpc Captured Riding Bat##38540
Ride the Captured Riding Bat |invehicle |c |goto 30.3,61.0 |q 24920
stickystart "Invading_Forsaken"
step
_While Riding the Captured Riding Bat:_
|tip Use the Iron Bomb ability on your action bar.
kill 6 Forsaken Catapult##38287 |q 24920/1
step
label "Invading_Forsaken"
_While Riding the Captured Riding Bat:_
|tip Use the "Iron Bomb" ability on your action bar.
kill 40 Invading Forsaken##38364 |q 24920/2
step
Return to Greymane Court |goto Gilneas City/0 30.5,60.9 < 20 |noway |c |q 24920
|tip Use the "Fly Back" ability on your action bar.
step
talk King Genn Greymane##38539
|tip Inside the building.
turnin Slowing the Inevitable##24920 |goto 32.4,57.0
accept Knee-Deep##24678 |goto 32.4,57.0
step
Run down the stairs |goto 32.9,57.6 < 5 |walk |n
Continue down the stairs |goto 34.2,56.3 < 5 |walk |n
Follow the path |goto 7.7,71.5 < 10 |walk |n
Continue following the path |goto 22.53,62.21 > 10000 |walk |n
Run up the ramp |goto Gilneas 2/0 52.32,55.57 < 15 |walk |n
Run up the stairs |goto Gilneas 2/0 49.87,57.20 < 7 |walk |n
Use the Half-Burnt Torch |use Half-Burnt Torch##50220
|tip Use the Half-Burnt Torch repeatedly to keep the rats and spiders from attacking you.
Enter the House |goto Gilneas 2/0 49.78,57.95 < 10 |c |q 24678
step
talk Krennan Aranas##38144
turnin Knee-Deep##24678 |goto 49.82,56.93
accept Laid to Rest##24602 |goto 49.82,56.93
step
click Disturbed Soil##201871
|tip They look like piles of dirt on the ground around this area.
collect 5 Unearthed Memento##49921 |q 24602/1 |goto 48.29,55.48
step
talk Krennan Aranas##38144
turnin Laid to Rest##24602 |goto 49.82,56.93
accept Patriarch's Blessing##24679 |goto 49.82,56.93
step
Use the Blessed Offerings next to Aderic's Tomb |use Blessed Offerings##51956
|tip It looks like a silver plaque on a stone statue.
Place the Offering |q 24679/1 |goto 48.87,53.05
step
talk Krennan Aranas##38144
turnin Patriarch's Blessing##24679 |goto 49.82,56.93
accept Keel Harbor##24680 |goto 49.82,56.93
step
Follow the road |goto 46.92,55.15 < 20 |only if walking
Follow the road |goto 47.05,49.26 < 20 |only if walking
Continue following the road |goto 43.03,41.77 < 15 |only if walking
Follow the path down |goto 42.09,39.89 < 20 |only if walking
talk Lord Darius Crowley##38149
turnin Keel Harbor##24680 |goto 41.93,37.63
accept They Have Allies, But So Do We##24681 |goto 41.93,37.63
step
clicknpc Glaive Thrower##38150
Take Control of a Glaive Thrower |invehicle |c |q 24681 |goto 42.32,37.77
stickystart "Wolfmaw_Outriders"
stickystart "Orcish_War_Machines"
step
Follow the path |goto 41.70,40.14 < 15 |only if walking
kill 40 Orc Raider##37916+ |q 24681/1 |goto 33.93,36.89
|tip Use the abilities on your action bar.
step
label "Wolfmaw_Outriders"
kill 8 Wolfmaw Outrider##37938+ |q 24681/2 |goto 33.93,36.89
|tip Use the abilities on your action bar.
step
label "Orcish_War_Machines"
kill 4 Orcish War Machine##37921+ |q 24681/3 |goto 26.95,32.33
|tip They look like wooden siege vehicles spread out around this area.
|tip Use the abilities on your action bar.
step
Follow the path |goto 36.32,35.34 < 30 |only if walking |n
Return to Keel Harbor |goto 39.39,37.99 < 20 |c |q 24681
step
Leave the Glaive Thrower |outvehicle |c |q 24681
|tip Click the yellow arrow on your action bar.
step
Follow the path down |goto 40.60,38.65 < 15 |only if walking
talk Lord Darius Crowley##38149
turnin They Have Allies, But So Do We##24681 |goto 41.93,37.63
step
talk Lorna Crowley##43727
accept Endgame##26706 |goto 41.65,36.51
step
clicknpc Hippogryph##43747
|tip Wait until Tobias Mistmantle says "Hop on a hippogryph, now's our chance!" nearby.
Ride the Hippogryph |invehicle |c |q 26706 |goto 41.65,36.18
step
_On the Gunship:_
Watch the dialogue
|tip Click the Coiled Rope to be lowered down, then follow and protect Lorna Crowley.
|tip She will go to the bottom level of the gunship and plant explosives.
Destroy the Gunship |q 26706/1
step
Return to Keel Harbor |goto 42.6,38.3 < 20 |c |q 26706
step
talk Lorna Crowley##43727
turnin Endgame##26706 |goto 41.65,36.51
step
talk Admiral Nightwind##36616
accept Rut'theran Village##14434 |goto 42.59,35.95 |instant
step
talk Krennan Aranas##42968
accept The Howling Oak##28517 |goto Teldrassil/0 55.23,89.18
step
talk Genn Greymane##48736
|tip Inside the hollow tree.
turnin The Howling Oak##28517 |goto Darnassus/0 48.1,14.4
accept Breaking Waves of Change##26385 |goto Darnassus/0 48.1,14.4
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (1-10)\\Eastern Kingdoms\\Dun Morogh (1-20)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Dun Morogh",
next="Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\Loch Modan (10-60)",
condition_suggested=function() return level >= 1 and level <= 20 and not completedq(6392) end,
startlevel=1,
endlevel=10
},[[
step
talk Ragnar Thunderbrew##1267
accept Beer Basted Boar Ribs##384 |goto Dun Morogh/0 53.93,50.68
step
talk Innkeeper Belm##1247
|tip Inside the building.
turnin Bound for Kharanos##26380 |goto 54.49,50.84
|only Gnome
step
talk Innkeeper Belm##1247
|tip Inside the building.
buy Rhapsody Malt##2894 |q 384/2 |goto 54.49,50.84
step
talk Innkeeper Belm##1247
|tip Inside the building.
home Thunderbrew Distillery |goto 54.49,50.84 |future |q 315
step
talk Rejold Barleybrew##1374
|tip Outside the building.
accept The Perfect Stout##315 |goto 54.19,51.17
step
talk Captain Tharran##40950
turnin On to Kharanos##26373 |goto 53.7,52.2 |only Gnome
accept Frostmane Aggression##25724 |goto 53.7,52.2
step
Follow the path |goto 53.77,49.56 < 15 |only if walking
kill Crag Boar##1125+
collect 4 Tender Boar Ribs##60496 |q 384/1 |goto 56.0,48.4
step
Follow the path |goto 55.12,48.53 < 20 |only if walking
Follow the path |goto 53.56,50.00 < 15 |only if walking
talk Ragnar Thunderbrew##1267
turnin Beer Basted Boar Ribs##384 |goto 53.93,50.68
step
Follow the path |goto 53.26,48.52 < 20 |only if walking
talk Ciara Deepstone##42933
accept Bound for Kharanos##26380 |goto 49.9,45.0
stickystart "Frostmane_Snowstriders"
stickystart "Shimmerweeds"
step
Follow the path up |goto 51.88,40.78 < 15 |only if walking
kill 5 Frostmane Seer##41121+ |q 25724/1 |goto 49.53,40.67
step
label "Frostmane_Snowstriders"
kill 7 Frostmane Snowstrider##41122+ |q 25724/2 |goto 49.53,40.67
step
label "Shimmerweeds"
click Shimmerweed Basket##276
|tip They look like wicker baskets on the ground around this area.
collect 7 Shimmerweed##2676 |q 315/1 |goto 48.6,38.0 |goto 49.53,40.67
step
talk Innkeeper Belm##1247
|tip Inside the building.
turnin Bound for Kharanos##26380 |goto 54.49,50.84
step
talk Rejold Barleybrew##1374
|tip Outside the building.
turnin The Perfect Stout##315 |goto 54.19,51.17
step
talk Captain Tharran##40950
turnin Frostmane Aggression##25724 |goto 53.7,52.2
accept Culling the Wendigos##25667 |goto 53.7,52.2
accept Forced to Watch from Afar##313 |goto 53.7,52.2
step
talk Quartermaster Glynna##40951
accept Pilfered Supplies##25668 |goto 53.7,52.1
stickystart "Wendigos"
stickystart "Pilfered_Supplies"
step
Follow the path |goto 52.66,51.80 < 20 |only if walking
Follow the path down |goto 51.15,51.44 < 20 |only if walking
Follow the path |goto Dun Morogh/7 61.51,86.26 < 15 |walk
Continue following the path |goto Dun Morogh/7 58.55,75.55 < 15 |walk
Follow the path |goto Dun Morogh/7 50.73,65.67 < 15 |walk
talk Mountaineer Dunstan##40991
Tell him _"Captain Tharran wants you to deploy your remote observation bots and withdraw to Kharanos."_
Convey the Orders to Mountaineer Dunstan |q 313/1 |goto Dun Morogh/7 51.84,48.34
step
Follow the path |goto 58.03,53.50 < 10 |walk
talk Mountaineer Lewin##40994
Tell him _"Captain Tharran wants you to deploy your remote observation bots and withdraw to Kharanos."_
Convey the Orders to Mountaineer Lewin |q 313/2 |goto 60.29,56.23
step
Follow the path |goto 57.10,51.78 < 10 |walk
Follow the path up |goto 60.43,37.00 < 15 |walk
talk Mountaineer Valgrum##41056
Tell him _"Captain Tharran wants you to deploy your remote observation bots and withdraw to Kharanos."_
Convey the Orders to Mountaineer Valgrum |q 313/3 |goto 61.51,22.23
step
label "Wendigos"
Kill Wendigo enemies around this area
Slay #10# Wendigos |q 25667/1 |goto 60.43,37.00
step
label "Pilfered_Supplies"
click Pilfered Supplies##203130
|tip They look like wooden crates and small barrels on the ground inside the cave.
collect 6 Pilfered Supplies##55151 |q 25668/1 |goto 60.43,37.00
step
Follow the path |goto 54.41,47.39 < 10 |walk
Follow the path up |goto 50.42,62.08 < 15 |walk
Follow the path |goto 61.06,77.80 < 15 |walk
Follow the path up |goto Dun Morogh/0 50.28,53.11 < 20 |only if walking
Follow the path |goto Dun Morogh/0 51.52,51.20 < 20 |only if walking
talk Quartermaster Glynna##40951
turnin Pilfered Supplies##25668 |goto Dun Morogh/0 53.7,52.1
step
talk Captain Tharran##40950
turnin Culling the Wendigos##25667 |goto 53.7,52.2
turnin Forced to Watch from Afar##313 |goto 53.7,52.2
accept Pushing Forward##25792 |goto 53.7,52.2
step
talk Razzle Sprysprocket##1269
|tip He walks around this small area.
accept Operation Recombobulation##412 |goto 53.26,51.92
stickystart "Burn_Constriction_Totems"
stickystart "Gyromechanic_Gears"
step
label "Burn_Constriction_Totems"
Follow the path |goto 54.83,54.32 < 20 |only if walking
Follow the path |goto 55.61,56.24 < 20 |only if walking
Use the Rune of Fire next to Constriction Totems |use Rune of Fire##56009
|tip They look like wooden spiked rods with green orbs at the top of them around this area.
Burn #4# Constriction Totems |q 25792/1 |goto 57.3,56.8
step
label "Gyromechanic_Gears"
kill Frostmane Scavenger##41146+
collect 8 Gyromechanic Gear##3084 |q 412/1 |goto 57.3,56.8
step
Follow the path |goto 55.60,56.22 < 20 |only if walking
Follow the path |goto 54.72,54.32 < 20 |only if walking
talk Captain Tharran##40950
turnin Pushing Forward##25792 |goto 53.7,52.2
step
talk Razzle Sprysprocket##1269
|tip He walks around this small area.
turnin Operation Recombobulation##412 |goto 53.3,51.9
step
talk Captain Tharran##40950
accept Help from Steelgrill's Depot##25838 |goto 53.7,52.2
step
Follow the path |goto 53.62,49.79 < 20 |only if walking
talk Delber Cranktoggle##41363
turnin Help from Steelgrill's Depot##25838 |goto 56.82,47.10
accept The Ultrasafe Personnel Launcher##25839 |goto 56.82,47.10
step
clicknpc Ultrasafe Personnel Launcher##41398
Use the Ultrasafe Personnel Launcher to Deploy to Frostmane Retreat |q 25839/1 |goto 56.72,46.58
step
talk Slamp Wobblecog##41298
turnin The Ultrasafe Personnel Launcher##25839 |goto 62.5,53.7
accept Eliminate the Resistance##25840 |goto 62.5,53.7
accept Strike From Above##25841 |goto 62.5,53.7
step
talk Snevik the Blade##50601
accept The View from Down Here##28868 |goto 62.54,53.81
stickystart "Shrink_Frostmane_Builders"
stickystart "Frostmane_Warriors"
step
Follow the path |goto 63.20,53.16 < 15 |only if walking
Use the Signal Flare |use Signal Flare##56048
|tip Stand in the circle of stones on the ground.
Attack the Northern Frostmane Retreat |q 25841/1 |goto 64.5,54.4
step
kill Battok the Berserker##41284 |q 25840/1 |goto 63.8,55.7
step
Use your Signal Flare |use Signal Flare##56048
Attack the Southern Frostmane Retreat |q 25841/2 |goto 63.1,57.4
step
label "Shrink_Frostmane_Builders"
Use the Viewpoint Equalizer on Frostmane Builders |use Viewpoint Equalizer##67249
|tip They look like trolls hammering and tinkering on things around this area.
Shrink #5# Frostmane Builders |q 28868/1 |goto 62.7,55.1
step
label "Frostmane_Warriors"
kill 5 Frostmane Warrior##41258 |q 25840/2 |goto 62.7,55.1
step
talk Snevik the Blade##50601
turnin The View from Down Here##28868 |goto 62.54,53.81
step
talk Slamp Wobblecog##41298
turnin Eliminate the Resistance##25840 |goto 62.5,53.7
turnin Strike From Above##25841 |goto 62.5,53.7
accept A Hand at the Ranch##25882 |goto 62.5,53.7
step
Follow the path |goto Dun Morogh/0 63.22,53.15 < 20 |only if walking
Continue following the path |goto Dun Morogh/0 64.69,53.25 < 15 |only if walking
Follow the path |goto Dun Morogh/0 67.27,52.69 < 20 |only if walking
Follow the path up |goto Dun Morogh/0 69.17,51.01 < 15 |only if walking
talk Sergeant Flinthammer##41578
turnin A Hand at the Ranch##25882 |goto Dun Morogh/0 70.4,48.9 |only if havequest(25882) or completedq(25882)
accept It's Raid Night Every Night##25932 |goto Dun Morogh/0 70.4,48.9
step
Watch the dialogue
kill Frostmane Raider##41603+
Defend Amberstill Ranch |q 25932/1 |goto 70.29,49.32
step
talk Sergeant Flinthammer##41578
turnin It's Raid Night Every Night##25932 |goto 70.4,48.9
step
talk Veron Amberstill##1261
|tip He walks back and forth in this small area.
accept Rams on the Lam##25905 |goto 70.7,48.9
step
talk Rudra Amberstill##1265
accept Protecting the Herd##314 |goto 70.28,48.15
step
Follow the path |goto 70.20,49.49 < 20 |only if walking
Follow the path up |goto 69.3,49.6 < 15 |only if walking
Follow the path |goto 69.53,46.69 < 15 |only if walking
kill Vagash##1388
|tip He looks like a yeti that walks in and out of this small cave.
collect Fang of Vagash##3627 |q 314/1 |goto 69.40,45.20
step
talk Rudra Amberstill##1265
turnin Protecting the Herd##314 |goto 70.28,48.15
step
Follow the path |goto 69.57,50.05 < 20 |only if walking
Whistle next to Stolen Rams |script DoEmote("WHISTLE")
|tip They look like different colored rams around this area.
Recover #6# Stolen Rams |q 25905/1 |goto 67.6,55.0
step
Follow the path |goto 68.25,53.47 < 20 |only if walking
Follow the path |goto 69.56,50.14 < 20 |only if walking
talk Veron Amberstill##1261
|tip He walks back and forth in this small area.
turnin Rams on the Lam##25905 |goto 70.7,48.9
step
talk Sergeant Flinthammer##41578
accept Help for the Quarry##25933 |goto 70.4,48.9
step
Follow the path |goto 69.48,50.20 < 20 |only if walking
Follow the road |goto 69.95,53.23 < 20 |only if walking
Follow the path down |goto 74.63,52.68 < 20 |only if walking
talk Senator Mehr Stonehallow##1977
accept The Public Servant##433 |goto 75.9,54.3
step
talk Foreman Stonebrow##1254
turnin Help for the Quarry##25933 |goto 76.31,54.67
accept Those Blasted Troggs!##432 |goto 76.31,54.67
step
talk Prospector Drugan##50631
accept Priceless Treasures##25937 |goto 76.19,53.04
stickystart "Rockjaw_Skullthumpers"
stickystart "Rescue_Trapped_Miners"
stickystart "Rockjaw_Bonesnappers"
step
Follow the path down |goto 75.31,54.61 < 15 |only if walking
Follow the path |goto 75.16,56.63 < 20 |only if walking
click Frozen Artifact##203385
|tip They look like blocks of white ice on the ground around this area.
collect 8 Frozen Artifact##56225 |q 25937/1 |goto Dun Morogh/11 39.0,82.6
step
label "Rockjaw_Skullthumpers"
kill 8 Rockjaw Skullthumper##1115 |q 432/1 |goto Dun Morogh/11 39.0,82.6
|tip You can find more outside the cave.
step
label "Rescue_Trapped_Miners"
Use Runes of Return on Trapped Miners |use Runes of Return##56222
|tip They look like scared dwarves along the walls inside of the cave.
Rescue #7# Trapped Miners |q 433/1 |goto Dun Morogh/11 39.0,82.6
step
label "Rockjaw_Bonesnappers"
kill 8 Rockjaw Bonesnapper##1117 |q 432/2 |goto Dun Morogh/11 39.0,82.6
|tip You can find more outside the cave.
step
Follow the path up |goto Dun Morogh/0 75.03,56.14 < 15 |only if walking
talk Senator Mehr Stonehallow##1977
turnin The Public Servant##433 |goto 75.9,54.3
step
talk Foreman Stonebrow##1254
turnin Those Blasted Troggs!##432 |goto 76.31,54.67
step
talk Prospector Gehn##1255
turnin Priceless Treasures##25937 |goto 76.19,53.04
step
talk Senator Mehr Stonehallow##1977
accept Trouble at the Lake##25986 |goto 75.9,54.3
step
Follow the path up |goto 75.28,54.00 < 15 |only if walking
Follow the road |goto 74.46,51.33 <20 |only if walking
Continue following the road |goto 78.61,48.21 < 20 |only if walking
talk Khurgorn Singefeather##41804
accept Dealing with the Surge##25979 |goto 82.64,48.30
step
talk Sergeant Bahrum##41786
turnin Trouble at the Lake##25986 |goto 82.85,48.41
accept Entombed in Ice##25978 |goto 82.85,48.41
stickystart "Free_Frozen_Mountaineers"
step
kill 6 Helm's Bed Surger##41762 |q 25979/1 |goto 83.38,50.75
step
label "Free_Frozen_Mountaineers"
kill Icy Tomb##41768+
|tip They look like big green blocks of ice around this area.
Free #6# Frozen Mountaineers |q 25978/1 |goto 83.38,50.75
step
talk Sergeant Bahrum##41786
turnin Entombed in Ice##25978 |goto 82.85,48.41
step
talk Khurgorn Singefeather##41804
turnin Dealing with the Surge##25979 |goto 82.64,48.29
step
talk Sergeant Bahrum##41786
accept Dark Iron Scheming##25997 |goto 82.85,48.41
stickystart "Dark_iron_Spies"
step
Follow the path |goto 84.13,55.93 < 20 |only if walking
kill Captain Beld##6124
|tip Downstairs inside the building.
collect Dark Iron Attack Plans##56264 |q 25997/2 |goto 85.17,60.61
step
label "Dark_iron_Spies"
kill 5 Dark Iron Spy##6123 |q 25997/1 |goto 84.0,58.1
step
Follow the path |goto 84.13,55.93 < 20 |only if walking
talk Sergeant Bahrum##41786
turnin Dark Iron Scheming##25997 |goto 82.85,48.41
accept Get to the Airfield##25998 |goto 82.85,48.41
step
Follow the road |goto 78.89,48.10 < 20 |only if walking |n
Continue following the road |goto 75.38,49.76 < 20 |only if walking |n
Jump down here |goto 75.25,51.95 < 15 |only if walking |n
Locate Mathel's Flying Machine |goto 75.23,52.76 < 20 |c |q 25998
step
clicknpc Mathel's Flying Machine##41848 |goto 75.23,52.76 |n
Fly to the Ironforge Airfield |goto 76.01,16.80 < 20 |noway |c |q 25998
step
talk Commander Stonebreaker##41853
turnin Get to the Airfield##25998 |goto 78.25,20.51
accept Extinguish the Fires##26078 |goto 78.25,20.51
step
Use the Firefighting Gear on fires around this area |use Firefighting Gear##56803
Extinguish #6# Fires |q 26078/1 |goto 78.3,24.6
step
talk Commander Stonebreaker##41853
turnin Extinguish the Fires##26078 |goto 78.25,20.51
accept Rallying the Defenders##26085 |goto 78.25,20.51
step
Follow the path |goto 78.14,26.79 < 20 |only if walking
Use the Ironforge Banner next to Loose Snow |use Ironforge Banner##56809
|tip They look like piles of white snow on the ground around this area.
Plant #8# Ironforge Banners |q 26085/1 |goto 77.7,30.1
step
Follow the path |goto 78.14,26.79 < 20 |only if walking
talk Commander Stonebreaker##41853
turnin Rallying the Defenders##26085 |goto 78.25,20.51
accept Striking Back##26094 |goto 78.25,20.51
step
clicknpc Repaired Bomber##42092
_As you fly:_
Use the Iron Hammer Bomb on Dark Iron enemies below |use Iron Hammer Bomb##56814
Slay #30# Dark Iron Attackers |q 26094/1 |goto 77.13,18.60
step
talk Commander Stonebreaker##41853
turnin Striking Back##26094 |goto 78.25,20.51
accept Grimaxe's Demise##26102 |goto 78.25,20.51
step
Follow the path |goto 78.14,26.79 < 20 |only if walking
Follow the path |goto 78.46,30.55 < 20 |only if walking
kill Dark Iron Golem##42008
kill General Grimaxe##42010 |q 26102/1 |goto 78.41,34.83
|tip He's standing on top of the golem.
step
Follow the path |goto 78.46,30.55 < 20 |only if walking
Follow the path |goto 78.14,26.79 < 20 |only if walking
talk Commander Stonebreaker##41853
turnin Grimaxe's Demise##26102 |goto 78.25,20.51
accept Demanding Answers##26112 |goto 78.25,20.51
step
talk Gremlock Pilsnor##1699
|tip Downstairs inside the building.
accept Honor Students##6387 |goto 54.7,50.8
|only Dwarf, Gnome
step
talk Brolan Galebeard##43701
turnin Honor Students##6387 |goto 53.80,52.76
accept Ride to Ironforge##6391 |goto 53.80,52.76
|only Dwarf, Gnome
step
Go up the stairs |goto Ironforge/0 52.10,29.67 < 5 |walk
talk Golnir Bouldertoe##4256
turnin Ride to Ironforge##6391 |goto Ironforge/0 51.6,26.4
accept Gryth Thurden##6388 |goto Ironforge/0 51.6,26.4
|only Dwarf, Gnome
step
Follow the path |goto 44.50,49.65 < 15 |walk
talk Mountaineer Barleybrew##1959
accept Reinforcements for Loch Modan##26131 |goto 41.4,52.3
step
talk Moira Thaurissan##42129
turnin Demanding Answers##26112 |goto 39.78,57.33
accept Seize the Ambassador##26118 |goto 39.78,57.33
step
Follow the path |goto 44.54,49.46 < 15 |walk
Follow the path |goto 43.92,45.77 < 15 |walk
Use the Sturdy Manacles on Ambassador Slaghammer |use Sturdy Manacles##56837
|tip Upstairs inside the building.
Click Here After You Arrest Ambassador Slaghammer |confirm |c |goto 36.6,43.2 |q 26118
step
Follow the path |goto 43.92,45.77 < 15 |walk
Follow the path |goto 44.54,49.46 < 15 |walk
Watch the dialogue
Arrest Ambassador Slaghammer and Bring Him to the High Seat |q 26118/1 |goto 40.87,52.89
step
talk Moira Thaurissan##42129
turnin Seize the Ambassador##26118 |goto 39.78,57.33
step
talk Gryth Thurden##1573
turnin Gryth Thurden##6388 |goto 55.5,47.7
accept Return to Gremlock##6392 |goto 55.5,47.7
|only Dwarf, Gnome
step
talk Gremlock Pilsnor##1699
|tip Downstairs inside the building.
turnin Return to Gremlock##6392 |goto Dun Morogh/0 54.8,50.7
|only Dwarf, Gnome
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (1-10)\\Eastern Kingdoms\\Elwynn Forest (1-20)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Elwynn_2",
next="Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\Westfall (10-60)",
condition_suggested=function() return level >= 1 and level <= 20 and not completedq(11) end,
startlevel=1,
endlevel=10,
},[[
step
Follow the path |goto Northshire/0 29.30,73.25 < 15 |only if walking
talk Falkhaan Isenstrider##6774
accept Rest and Relaxation##37112 |goto Elwynn Forest/0 45.4,49.0
step
Follow the path |goto 44.91,53.73 < 20 |only if walking
Continue following the path |goto 44.48,58.78 < 20 |only if walking
talk Marshal Dughan##240
turnin Report to Goldshire##54 |goto 42.1,65.9 |only if havequest(54) or completedq(54)
accept The Fargodeep Mine##62 |goto 42.1,65.9
step
talk Remy "Two Times"##241
accept Gold Dust Exchange##47 |goto 42.14,67.26
step
talk William Pestle##253
|tip Inside the building.
accept Kobold Candles##60 |goto 43.3,65.7
step
talk Innkeeper Farley##295
|tip Inside the building.
turnin Rest and Relaxation##37112 |goto 43.8,65.8
step
talk Innkeeper Farley##295
|tip Inside the building.
home Goldshire |q 26393 |future |goto 43.8,65.8
step
talk Smith Argus##514
|tip Inside the building.
accept A Swift Message##26393 |goto 41.71,65.55
|only Human
step
talk Bartlett the Brave##42983
turnin A Swift Message##26393 |goto 41.7,64.6
accept Continue to Stormwind##26394 |goto 41.7,64.6
|only Human
step
Enter the building |goto Stormwind City/0 76.65,61.28 < 10 |walk
talk Osric Strang##1323
|tip Inside the building.
turnin Continue to Stormwind##26394 |goto Stormwind City/0 77.2,61.0
accept Dungar Longdrink##26395 |goto Stormwind City/0 77.2,61.0
|only Human
step
talk Dungar Longdrink##352
turnin Dungar Longdrink##26395 |goto 70.9,72.5
accept Return to Argus##26396 |goto 70.9,72.5
|only Human
step
talk Dungar Longdrink##352 |goto 70.94,72.47 |n
Fly to Goldshire, Elwynn |goto 70.94,72.47 > 30 |noway |c |q 26396
|only Human
step
Return to Goldshire |goto Elwynn Forest/0 41.8,64.6 < 20 |c |q 26396
|only Human
step
talk Smith Argus##514
|tip Inside the building.
turnin Return to Argus##26396 |goto 41.71,65.55
|only Human
stickystart "Gold_Dust"
stickystart "Large_Candles"
step
Follow the path |goto 41.95,68.80 < 30 |only if walking
Follow the path |goto 40.93,81.25 < 20 |only if walking
Follow the path down |goto 39.97,82.54 < 15 |only if walking
Follow the path |goto Elwynn Forest/1 42.40,77.00 < 10 |walk
Explore the Fargodeep Mine |q 62/1 |goto Elwynn Forest/1 55.2,59.6
step
label "Gold_Dust"
Kill Kobold enemies around this area
|tip All around inside and outside the mine.
collect 10 Gold Dust##773 |q 47/1 |goto 53.8,60.1
step
label "Large_Candles"
Kill Kobold enemies around this area
|tip All around inside and outside the mine.
collect 8 Large Candle##772 |q 60/1 |goto 53.8,60.1
step
talk William Pestle##253
|tip Inside the building.
turnin Kobold Candles##60 |goto Elwynn Forest/0 43.3,65.7
accept A Visit With Maybell##26150 |goto Elwynn Forest/0 43.3,65.7
step
talk Marshal Dughan##240
turnin The Fargodeep Mine##62 |goto 42.1,65.9
accept The Jasperlode Mine##76 |goto 42.1,65.9
step
talk Remy "Two Times"##241
turnin Gold Dust Exchange##47 |goto 42.14,67.26
step
Follow the path |goto 41.49,71.97 < 20 |only if walking
Follow the path |goto 41.79,81.07 < 30 |only if walking
talk Maybell Maclure##251
|tip Inside the building.
turnin A Visit With Maybell##26150 |goto 43.15,89.62
accept Young Lovers##106 |goto 43.15,89.62
step
Follow the path |goto 40.22,87.72 < 20 |only if walking
Follow the path |goto 36.53,87.13 < 20 |only if walking
talk "Auntie" Bernice Stonefield##246
accept Lost Necklace##85 |goto 34.48,84.25
step
talk Tommy Joe Stonefield##252
turnin Young Lovers##106 |goto 29.84,85.99
accept Speak with Gramma##111 |goto 29.84,85.99
step
talk Gramma Stonefield##248
|tip Inside the building.
turnin Speak with Gramma##111 |goto 34.95,83.87
accept Note to William##107 |goto 34.95,83.87
step
Follow the path |goto 36.53,87.13 < 20 |only if walking
Follow the path |goto 40.22,87.72 < 20 |only if walking
talk Billy Maclure##247
turnin Lost Necklace##85 |goto 43.13,85.72
accept Pie for Billy##86 |goto 43.13,85.72
step
kill Stonetusk Boar##113+
collect 4 Chunk of Boar Meat##769 |q 86/1 |goto 42.1,86.6
step
Follow the path |goto 40.22,87.72 < 20 |only if walking
Follow the path |goto 36.53,87.13 < 20 |only if walking
talk "Auntie" Bernice Stonefield##246
turnin Pie for Billy##86 |goto 34.48,84.25
accept Back to Billy##84 |goto 34.48,84.25
step
Follow the path |goto 36.53,87.13 < 20 |only if walking
Follow the path |goto 40.22,87.72 < 20 |only if walking
talk Billy Maclure##247
turnin Back to Billy##84 |goto 43.13,85.72
accept Goldtooth##87 |goto 43.13,85.72
step
Follow the path up |goto 41.21,82.58 < 20 |only if walking
kill Goldtooth##327
collect Bernice's Necklace##981 |q 87/1 |goto 40.1,80.6
step
Follow the path |goto 40.30,82.74 < 20 |only if walking
Follow the path |goto 39.02,86.82 < 20 |only if walking
Follow the path |goto 36.53,87.13 < 20 |only if walking
talk "Auntie" Bernice Stonefield##246
turnin Goldtooth##87 |goto 34.48,84.25
step
talk Ma Stonefield##244
accept Princess Must Die!##88 |goto 34.66,84.48
step
kill Princess##330
|tip She's a bigger boar that walks around this area.
collect Brass Collar##1006 |q 88/1 |goto 33.0,84.7
step
talk Ma Stonefield##244
turnin Princess Must Die!##88 |goto 34.66,84.48
step
talk William Pestle##253
|tip Inside the building.
turnin Note to William##107 |goto 43.3,65.7
accept Collecting Kelp##112 |goto 43.3,65.7
step
talk Remy "Two Times"##241
accept A Fishy Peril##40 |goto 42.14,67.26
step
talk Marshal Dughan##240
turnin A Fishy Peril##40 |goto 42.1,65.9
accept Further Concerns##35 |goto 42.1,65.9
step
Follow the path |goto 43.10,67.07 < 20 |only if walking
Kill Murloc enemies around this area
collect 4 Crystal Kelp Frond##1256 |q 112/1 |goto 49.5,66.3
step
talk William Pestle##253
|tip Inside the building.
turnin Collecting Kelp##112 |goto 43.3,65.7
Watch the dialogue
accept The Escape##114 |goto 43.3,65.7
step
Follow the path |goto 41.49,71.97 < 20 |only if walking
Follow the path |goto 41.79,81.07 < 30 |only if walking
talk Maybell Maclure##251
turnin The Escape##114 |goto 43.15,89.62
step
Follow the path |goto 42.20,82.51 < 30 |only if walking
Follow the path up |goto 42.19,76.85 < 20 |only if walking
talk Marshal Dughan##240
Tell him _"I wish to ride the Stormwind charger, sir."_
Begin Riding the Stormcharger |invehicle |c |goto 42.1,65.9 |q 35
step
Ride to the Eastvale Logging Camp |goto 73.92,72.55 < 20 |c |q 35
step
talk Guard Thomas##261
turnin Further Concerns##35 |goto Elwynn Forest/0 74.0,72.2 |only if havequest(35) or completedq(35)
accept Find the Lost Guards##37 |goto Elwynn Forest/0 74.0,72.2 |only if havequest(35) or completedq(35)
accept Protect the Frontier##52 |goto Elwynn Forest/0 74.0,72.2
step
click Bounty Board##232398
accept Bounty on Murlocs##46 |goto 74.0,72.3
accept Wanted: James Clark##26152 |goto 74.0,72.3
step
Cross the bridge |goto 74.29,72.53 < 10 |only if walking
talk Sara Timberlain##278
|tip Standing in front of the house.
accept Fine Linen Goods##83 |goto 79.46,68.72
stickystart "Gold_Pickup_Schedule"
step
kill James Clark##13159
|tip He walks around inside the house.
collect James Clark's Head##57122 |q 26152/1 |goto 78.7,67.1
step
label "Gold_Pickup_Schedule"
kill James Clark##13159
|tip He walks around inside the house.
collect Gold Pickup Schedule##1307 |n
|tip You will accept a quest upon looting this item.
accept The Collector##123 |goto 78.7,67.1
step
talk Supervisor Raelen##10616
accept A Bundle of Trouble##5545 |goto 81.4,66.1
step
talk Marshal McCree##42256
turnin Wanted: James Clark##26152 |goto 81.86,66.04
turnin The Collector##123 |goto 81.86,66.04
accept Manhunt##147 |goto 81.86,66.04
stickystart "Prowlers_Or_Forest_Wolves"
stickystart "Young_Forest_Bears"
stickystart "Bundles_Of_Wood"
step
Follow the path |goto 75.50,62.56 < 20 |only if walking
click Half-Eaten body##14
turnin Find the Lost Guards##37 |goto 72.66,60.33
accept Discover Rolf's Fate##45 |goto 72.66,60.33
|only if havequest(37) or completedq(37)
stickystop "Prowlers_Or_Forest_Wolves"
stickystop "Young_Forest_Bears"
stickystop "Bundles_Of_Wood"
step
kill Rogue Wizard##474+
collect 6 Linen Scrap##1019 |q 83/1 |goto 74.5,51.6
stickystart "Torn_Murloc_Fins"
step
click Rolf's Corpse##14
turnin Discover Rolf's Fate##45 |goto 79.8,55.5
accept Report to Thomas##71 |goto 79.8,55.5
|only if havequest(45) or completedq(45)
step
label "Torn_Murloc_Fins"
Kill Murloc enemies around this area
collect 8 Torn Murloc Fin##780 |q 46/1 |goto 77.6,59.0
stickystart "Young_Forest_Bears"
stickystart "Bundles_Of_Wood"
step
label "Prowlers_Or_Forest_Wolves"
kill Prowler##118+
kill Gray Forest Wolf##1922+
Slay #8# Prowlers or Forest Wolves |q 52/1 |goto 80.9,61.5
You can find more around [87.8,64.7]
step
label "Young_Forest_Bears"
kill 5 Young Forest Bear##822+ |q 52/2 |goto 80.9,61.5
You can find more around [87.8,64.7]
step
label "Bundles_Of_Wood"
click Bundles of Wood##1248+
|tip They look like small stacks of logs at the base of trees around this area.
collect 8 Bundle of Wood##13872 |q 5545/1 |goto 80.9,61.5
step
talk Supervisor Raelen##10616
turnin A Bundle of Trouble##5545 |goto 81.4,66.1
step
talk Sara Timberlain##278
turnin Fine Linen Goods##83 |goto 79.46,68.72
step
Cross the bridge |goto 74.88,72.41 < 15 |only if walking
talk Guard Thomas##261
turnin Report to Thomas##71 |goto 73.97,72.18 |only if havequest(71) or completedq(71)
accept Cloth and Leather Armor##59 |goto 73.97,72.18 |only if havequest(71) or completedq(71)
turnin Protect the Frontier##52 |goto 73.97,72.18
turnin Bounty on Murlocs##46 |goto 73.97,72.18
step
kill Morgan the Collector##473
|tip Inside the building.
collect The Collector's Ring##2239 |q 147/1 |goto 71.0,80.8
step
Follow the path |goto 75.04,73.63 < 30 |only if walking
talk Sara Timberlain##278
|tip Standing in front of the house.
turnin Cloth and Leather Armor##59 |goto 79.46,68.71
|only if havequest(59) or completedq(59)
step
talk Marshal McCree##42256
turnin Manhunt##147 |goto 81.86,66.04
accept Hero's Call: Westfall##26378 |goto 81.86,66.04 |only if not havequest(28562) and not completedq(28562)
step
Follow the path |goto 75.50,62.54 < 20 |only if walking
Follow the path |goto 65.92,59.44 < 20 |only if walking
Follow the path |goto Elwynn Forest/19 45.58,79.54 < 10 |walk
Continue following the path |goto Elwynn Forest/19 43.78,65.99 < 10 |walk
Follow the path up |goto Elwynn Forest/19 37.94,61.48 < 10 |walk
Explore the Jasperlode Mine |q 76/1 |goto Elwynn Forest/19 37.7,52.5
step
talk Marshal Dughan##240
turnin The Jasperlode Mine##76 |goto Elwynn Forest/0 42.1,65.9
accept Westbrook Garrison Needs Help!##239 |goto Elwynn Forest/0 42.1,65.9
step
Follow the road |goto 38.27,67.15 < 30 |only if walking
Continue following the road |goto 35.52,76.39 < 30 |only if walking
Cross the bridge |goto 29.01,77.95 < 20 |only if walking
click Wanted Poster##184945
accept Wanted: "Hogger"##176 |goto 24.57,78.23
step
talk Deputy Rainer##963
turnin Westbrook Garrison Needs Help!##239 |goto 24.23,74.45
accept Riverpaw Gnoll Bounty##11 |goto 24.23,74.45
stickystart "Painted_Gnoll_Armbands"
step
Follow the path |goto 24.71,79.66 < 20 |only if walking
Continue following the path |goto 25.75,85.65 < 30 |only if walking
kill Hogger##448
|tip Don't worry that he's elite, he's pretty easy to kill.
Deal with "The Hogger Situation" |q 176/1 |goto 24.9,95.0
step
click Westfall Deed##203734
accept Furlbrow's Deed##184 |goto 24.78,95.25
step
label "Painted_Gnoll_Armbands"
Kill Riverpaw enemies around this area
collect 8 Painted Gnoll Armband##782 |q 11/1 |goto 25.2,92.9
step
Cross the water |goto 29.37,89.27 < 20 |only if walking
Follow the path |goto 31.40,86.22 < 20 |only if walking
Follow the road |goto 35.01,76.82 < 30 |only if walking
Continue following the road |goto 37.63,68.08 < 30 |only if walking
talk Marshal Dughan##240
turnin Wanted: "Hogger"##176 |goto 42.1,65.9
step
Follow the road |goto 38.27,67.15 < 30 |only if walking
Continue following the road |goto 35.52,76.39 < 30 |only if walking
Cross the bridge |goto 29.01,77.95 < 20 |only if walking
talk Deputy Rainer##963
turnin Riverpaw Gnoll Bounty##11 |goto 24.23,74.45
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\The Hinterlands (30-60)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Hinterlands",
next="Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\Western Plaguelands (35-60)",
condition_suggested=function() return level >= 30 and level <= 60 and not completedq(26532) end,
startlevel=30,
endlevel=60,
},[[
step
Follow the path up |goto Arathi Highlands/0 41.40,47.02 < 15 |only if walking
Follow the path |goto Arathi Highlands/0 43.79,43.81 < 20 |only if walking
Continue following the path |goto Arathi Highlands/0 40.26,37.70 < 30 |only if walking
Enter the tunnel |goto Arathi Highlands/0 37.03,29.25 < 10 |only if walking
Continue through the tunnel |goto Arathi Highlands/0 38.84,21.21 > 10000 |only if walking
Leave the tunnel |goto The Hinterlands/0 26.10,69.86 < 10 |only if walking
Follow the road |goto The Hinterlands/0 26.01,55.00 < 20 |only if walking
Continue following the road |goto The Hinterlands/0 18.96,53.52 < 30 |only if walking
Follow the path up |goto The Hinterlands/0 15.51,48.76 < 20 |only if walking
Follow the path up |goto The Hinterlands/0 13.81,47.92 < 15 |only if walking
Continue up the path |goto The Hinterlands/0 11.25,48.92 < 15 |only if walking
Continue up the path |goto The Hinterlands/0 12.26,47.31 < 15 |only if walking
Enter the building |goto The Hinterlands/0 11.01,45.68 < 10 |walk
talk Gryphon Master Talonaxe##5636
|tip Inside the building.
turnin Hero's Call: The Hinterlands!##26542 |goto 9.9,44.2 |only if havequest(26542) or completedq(26542)
accept Razorbeak Friends##26546 |goto The Hinterlands/0 9.9,44.2
accept A Mangy Threat##26547 |goto The Hinterlands/0 9.9,44.2
step
talk Guthrum Thunderfist##8018
fpath Aerie Peak |goto 11.1,46.2
stickystart "Feed_Trained_Razorbeaks"
step
Follow the path down |goto 11.33,46.10 < 10 |only if walking
Continue down the path |goto 12.33,47.41 < 15 |only if walking
Continue down the path |goto 11.31,49.42 < 15 |only if walking
kill 8 Mangy Silvermane##2923 |q 26547/1 |goto 17.3,52.1
step
label "Feed_Trained_Razorbeaks"
Use the Gryphon Chow on Trained Razorbeaks |use Gryphon Chow##58935
|tip You can do this while mounted.
Feed #7# Trained Razorbeaks |q 26546/1 |goto 17.3,52.1
step
Follow the path up |goto The Hinterlands/0 15.51,48.76 < 20 |only if walking
Follow the path up |goto The Hinterlands/0 13.81,47.92 < 15 |only if walking
Continue up the path |goto The Hinterlands/0 11.25,48.92 < 15 |only if walking
Continue up the path |goto The Hinterlands/0 12.26,47.31 < 15 |only if walking
Enter the building |goto The Hinterlands/0 11.01,45.68 < 10 |walk
talk Gryphon Master Talonaxe##5636
|tip Inside the building.
turnin Razorbeak Friends##26546 |goto 9.9,44.2
turnin A Mangy Threat##26547 |goto 9.9,44.2
accept Out to the Front##26548 |goto 9.9,44.2
step
talk Guthrum Thunderfist##8018 |goto 11.08,46.15 |n
Tell him _"Gryphon Master Talonaxe has ordered me sent to Stormfeather Outpost!"_
Fly to Stormfeather Outpost |goto 65.72,44.98 < 20 |noway |c |q 26548
step
talk Brock Rockbeard##43570
fpath Stormfeather Outpost |goto 65.8,44.9
step
talk Kerr Ironsight##43108
|tip Inside the building.
turnin Out to the Front##26548 |goto 66.4,44.3
accept The Wicked Revantusk##26462 |goto 66.4,44.3
accept Gan'dranda##26483 |goto 66.4,44.3
step
talk Dron Blastbrew##43109
|tip Inside the building.
accept Snapjaws, Lad!##26485 |goto 66.2,44.3
accept 99 Bottles of Booze on the Beach##26486 |goto 66.2,44.3
step
talk Innkeeper Keirnan##43699
|tip Inside the building.
home Stormfeather Outpost |goto 66.2,44.4 |q 26483 |future
stickystart "Slay_Revantusks"
step
Follow the path |goto 71.94,53.30 < 15 |only if walking
kill Gan'dranda##42609 |q 26483/1 |goto 73.42,53.84
step
label "Slay_Revantusks"
Kill Revantusk enemies around this area
Slay #10# Revantusk |q 26462/1 |goto 71.8,51.3
stickystart "Pupellyverbos_Ports"
step
Follow the path |goto 71.25,53.59 < 20 |only if walking
Follow the path |goto 70.71,63.94 < 20 |only if walking
Follow the path down |goto 72.8,66.0 < 15 |only if walking
kill Saltwater Snapjaw##2505+
|tip You can find more to the south and in the water.
collect 8 Snapjaw Gizzard##58867 |q 26485/1 |goto 78.76,58.58
step
label "Pupellyverbos_Ports"
click Pupellyverbos Port##2068
|tip They look like small blue bottles on the ground around this area.
|tip You can find more to the south.
|tip Avoid the Horde outpost if you go south.
collect 12 Pupellyverbos Port##3900 |q 26486/1 |goto 78.76,58.58
step
talk Dron Blastbrew##43109
|tip Inside the building.
turnin Snapjaws, Lad!##26485 |goto 66.2,44.3
turnin 99 Bottles of Booze on the Beach##26486 |goto 66.2,44.3
step
talk Kerr Ironsight##43108
|tip Inside the building.
turnin The Wicked Revantusk##26462 |goto 66.4,44.3
turnin Gan'dranda##26483 |goto 66.4,44.3
accept Skulk Rock Clean-Up##26491 |goto 66.4,44.3
accept Skulk Rock Supplies##26492 |goto 66.4,44.3
step
talk Dron Blastbrew##43109
|tip Inside the building.
accept Prime Slime##26490 |goto 66.2,44.3
stickystart "Jade_Oozes"
stickystart "Ooze_Coated_Supply_Crates"
step
Follow the path |goto 65.78,45.09 < 20 |only if walking
Follow the path |goto 59.85,40.00 < 20 |only if walking
Enter the cave |goto 57.44,38.86 < 10 |walk
kill The Direglob##42592
|tip At the bottom of the cave.
collect Direglob Sample##58082 |q 26490/1 |goto 57.6,41.6
step
label "Jade_Oozes"
kill 10 Jade Ooze##2656+ |q 26491/1 |goto 57.6,41.6
step
label "Ooze_Coated_Supply_Crates"
click Ooze-Coated Supply Crate##1988+
|tip They look like small wooden boxes on the ground around this area.
collect 5 Ooze-Coated Supply Crate##57989 |q 26492/1 |goto 57.6,41.6
step
Leave the cave |goto 57.44,38.86 < 10 |walk
Follow the path |goto 59.85,40.00 < 20 |only if walking
Follow the path |goto 63.41,44.19 < 20 |only if walking
talk Kerr Ironsight##43108
|tip Inside the building.
turnin Skulk Rock Clean-Up##26491 |goto 66.4,44.3
turnin Skulk Rock Supplies##26492 |goto 66.4,44.3
accept Down with the Vilebranch##26496 |goto 66.4,44.3
step
talk Dron Blastbrew##43109
|tip Inside the building.
turnin Prime Slime##26490 |goto 66.2,44.3
step
Follow the path |goto The Hinterlands/0 63.78,53.45 < 30 |only if walking
talk Doran Steelwing##43157
turnin Down with the Vilebranch##26496 |goto The Hinterlands/0 63.9,59.9 |only if havequest(26496) or completedq(26496)
accept Vilebranch Scum##26497 |goto The Hinterlands/0 63.9,59.9
accept Heads Up##26518 |goto The Hinterlands/0 63.9,59.9
step
talk Fraggar Thundermantle##43156
accept Faces of Evil##26521 |goto 63.7,60.0
accept All That Skitters##26523 |goto 63.7,60.0
stickystart "Vilebranch_Headhunters"
stickystart "Vilebranch_Witch_Doctors"
stickystart "Burn_Tiki_Masks"
stickystart "Skittering_Spiderlings"
step
Follow the road |goto 65.97,60.94 < 20 |only if walking
Run up the stairs |goto 66.66,66.77 < 15 |only if walking
Follow the path |goto 66.71,68.34 < 15 |only if walking
Follow the path |goto 67.83,68.07 < 15 |only if walking
Run up the stairs |goto 67.91,69.11 < 15 |only if walking
Follow the path |goto 67.87,70.60 < 15 |only if walking
Follow the path |goto 65.33,70.06 < 15 |only if walking
Follow the path |goto 65.04,67.41 < 15 |only if walking
kill Umboda Three-Heads##42724
collect Umboda's Head##58236 |q 26518/1 |goto 65.15,64.95
step
label "Vilebranch_Headhunters"
kill 5 Vilebranch Headhunter##2641 |q 26497/1 |goto 65.31,70.07
step
label "Vilebranch_Witch_Doctors"
kill 5 Vilebranch Witch Doctor##2640 |q 26497/2 |goto 65.31,70.07
step
label "Burn_Tiki_Masks"
Use the Tiki Torch next to Tiki Masks |use Tiki Torch##58209
|tip They look like big wooden faces hanging on the walls all throughout Jintha'Alor.
Burn #8# Tiki Masks |q 26521/1 |goto 65.31,70.07
step
label "Skittering_Spiderlings"
clicknpc Skittering Spiderling##42689 +
|tip They look like very small spiders on the ground all around this area.
collect 8 Skittering Spiderling##58120 |q 26523/1
step
Jump down here |goto 65.68,67.79 < 15 |only if walking
Follow the road |goto 66.62,63.31 < 20 |only if walking
talk Doran Steelwing##43157
turnin Vilebranch Scum##26497 |goto 63.9,59.9
turnin Heads Up##26518 |goto 63.9,59.9
accept Ongo'longo's Revenge##26515 |goto 63.9,59.9
accept Death to the Vilebranch##26498 |goto 63.9,59.9
step
talk Fraggar Thundermantle##43156
turnin Faces of Evil##26521 |goto 63.7,60.0
turnin All That Skitters##26523 |goto 63.7,60.0
accept Dark Vessels##26524 |goto 63.7,60.0
stickystart "Vilebranch_Shadowcasters"
step
Follow the road |goto 65.97,60.94 < 20 |only if walking
Run up the stairs |goto 66.66,66.77 < 15 |only if walking
Follow the path |goto 66.71,68.34 < 15 |only if walking
Follow the path |goto 67.83,68.07 < 15 |only if walking
Run up the stairs |goto 67.91,69.11 < 15 |only if walking
Follow the path |goto 67.87,70.60 < 15 |only if walking
Follow the path |goto 65.33,70.06 < 15 |only if walking
Run up the stairs |goto 65.05,68.96 < 15 |only if walking
kill 5 Vilebranch Berserker##2643 |q 26498/1 |goto 63.72,68.85
step
label "Vilebranch_Shadowcasters"
kill 5 Vilebranch Shadowcaster##2642 |q 26498/2 |goto 63.72,68.85
step
Run down the stairs |goto 64.24,68.94 < 15 |only if walking
Follow the path |goto 65.17,68.83 < 15 |only if walking
Jump down here |goto 65.68,67.79 < 15 |only if walking
Follow the road |goto 66.62,63.31 < 20 |only if walking
talk Doran Steelwing##43157
turnin Death to the Vilebranch##26498 |goto 63.9,59.9
accept It's Ours Now##26516 |goto 63.9,59.9
step
talk Doran Steelwing##43157 |goto 63.9,59.9 |n
Tell him _"I need to get to the top of Jintha'Alor.  Time to ride Sharpbeak!"_
Fly to the Top of Jintha'Alor |goto 53.22,66.64 < 20 |noway |c |q 26515
stickystart "Vilebranch_Blood_Drinkers"
stickystart "Vessels_Of_Tainted_Blood"
step
Enter the tunnel |goto 54.54,67.66 < 10 |only if walking
Leave the tunnel |goto 56.96,68.43 < 10 |only if walking
Run down the stairs |goto 59.06,70.21 < 15 |only if walking
kill 5 Vilebranch Soul Eater##2647 |q 26516/1 |goto 60.47,71.43
step
label "Vilebranch_Blood_Drinkers"
kill 5 Vilebranch Blood Drinker##2646 |q 26516/2 |goto 60.47,71.43
step
label "Vessels_Of_Tainted_Blood"
click Vessels of Tainted Blood##216+
|tip They look like small gray cauldrons on the ground around this area.
collect 5 Vessel of Tainted Blood##19071 |q 26524/1 |goto 60.47,71.43
step
Follow the path |goto 60.64,73.01 < 15 |only if walking
Jump down here |goto 61.44,75.07 < 7 |only if walking
kill Ongo'longo##42815
Enrage Ongo'longo |q 26515/1 |goto 62.17,75.31
step
Follow the path |goto 62.79,76.29 < 15 |only if walking
Follow the path |goto 63.04,74.75 < 15 |only if walking
Follow the path |goto 60.62,72.99 < 15 |only if walking
Run up the stairs |goto 59.91,70.19 < 15 |only if walking
Follow the path |goto 58.79,70.17 < 15 |only if walking
Enter the tunnel |goto 56.80,68.39 < 10 |only if walking
Leave the tunnel |goto 54.49,67.67 < 10 |only if walking
clicknpc Sharpbeak##44776 |goto 53.26,66.55 |n
Fly Down to Doran Steelwing |goto 63.53,60.09 < 20 |noway |c |q 26515
step
talk Doran Steelwing##43157
turnin Ongo'longo's Revenge##26515 |goto 63.9,59.9
turnin It's Ours Now##26516 |goto 63.9,59.9
step
talk Fraggar Thundermantle##43156
turnin Dark Vessels##26524 |goto 63.7,60.0
accept Summit of Fate##26517 |goto 63.7,60.0
step
talk Doran Steelwing##43157 |goto 63.9,59.9 |n
Tell him _"I need to get to the top of Jintha'Alor.  Time to ride Sharpbeak!"_
Fly to the Top of Jintha'Alor |goto 53.22,66.64 < 20 |noway |c |q 26517
step
Enter the tunnel |goto 54.54,67.66 < 10 |only if walking
Leave the tunnel |goto 56.96,68.43 < 10 |only if walking
Follow the path |goto 58.76,71.02 < 15 |only if walking
Follow the path |goto 59.15,74.16 < 15 |only if walking
clicknpc Sacrificed Vilebranch##42857+
|tip They look like dead trolls on the ground around this area.
|tip You can do this while mounted.
collect 8 Spider Idol##58228 |q 26517/1 |goto 59.4,77.7
step
Follow the path |goto 59.14,74.02 < 15 |only if walking
Follow the path |goto 58.68,70.88 < 15 |only if walking
Enter the tunnel |goto 56.80,68.39 < 10 |only if walking
Leave the tunnel |goto 54.49,67.67 < 10 |only if walking
clicknpc Sharpbeak##44776 |goto 53.26,66.55 |n
Fly Down to Fraggar Thundermantle |goto 63.53,60.09 < 20 |noway |c |q 26517
step
talk Fraggar Thundermantle##43156
turnin Summit of Fate##26517 |goto 63.7,60.0
accept Hunt the Keeper##26526 |goto 63.7,60.0
accept Venomous Secrets##26525 |goto 63.7,60.0
step
talk Doran Steelwing##43157 |goto 63.9,59.9 |n
Tell him _"I need to get to the top of Jintha'Alor.  Time to ride Sharpbeak!"_
Fly to the Top of Jintha'Alor |goto 53.22,66.64 < 20 |noway |c |q 26526
stickystart "Spawns_Of_Shadra"
step
Enter the tunnel |goto 54.54,67.66 < 10 |only if walking
Leave the tunnel |goto 56.96,68.43 < 10 |only if walking
Follow the path |goto 58.74,70.95 < 15 |only if walking
Follow the path |goto 59.16,74.06 < 15 |only if walking
Enter the cave |goto 58.64,79.00 < 15 |walk
Follow the path |goto 57.65,80.29 < 15 |walk
Follow the path down |goto 57.59,81.72 < 10 |walk
Follow the path |goto 56.84,83.31 < 15 |walk
Follow the path up |goto 55.34,83.42 < 15 |walk
Continue up the path |goto 54.48,83.90 < 15 |walk
Continue up the path |goto 55.28,84.78 < 15 |walk
Follow the path |goto 56.43,85.24 < 15 |walk
kill Morta'gya the Keeper##42877
|tip Upstairs inside the cave.
collect Tablet of Shadra##58241 |q 26526/1 |goto 57.5,86.5
step
label "Spawns_Of_Shadra"
kill 8 Spawn of Shadra##42879 |q 26525/1 |goto 57.24,85.61
step
Jump down here |goto 57.33,83.88 < 10 |walk
Follow the path up |goto 58.12,82.04 < 15 |walk
Follow the path |goto 57.62,80.54 < 15 |walk
Leave the cave |goto 58.64,79.00 < 15 |walk
Follow the path |goto 59.14,74.02 < 15 |only if walking
Follow the path |goto 58.68,70.88 < 15 |only if walking
Enter the tunnel |goto 56.80,68.39 < 10 |only if walking
Leave the tunnel |goto 54.49,67.67 < 10 |only if walking
clicknpc Sharpbeak##44776 |goto 53.26,66.55 |n
Fly Down to Fraggar Thundermantle |goto 63.53,60.09 < 20 |noway |c |q 26526
step
talk Fraggar Thundermantle##43156
turnin Hunt the Keeper##26526 |goto 63.7,60.0
turnin Venomous Secrets##26525 |goto 63.7,60.0
step
talk Tracker Yoro##46476
accept Quel'Danil Lodge##27725 |goto 64.0,59.8
step
Follow the road |goto 63.77,57.28 < 30 |only if walking
Follow the road |goto 60.61,52.39 < 30 |only if walking
Continue following the road |goto 52.94,44.23 < 30 |only if walking
Continue following the road |goto 49.90,43.98 < 30 |only if walking
Follow the road |goto 44.18,48.77 < 30 |only if walking
Continue following the road |goto 39.46,55.50 < 30 |only if walking
Follow the road |goto 34.74,56.46 < 30 |only if walking
Follow the path |goto 32.80,47.63 < 20 |only if walking
talk Anchorite Traska##46475
|tip Inside the small house.
turnin Quel'Danil Lodge##27725 |goto 32.15,42.53
accept In Defense of Quel'Danil##27625 |goto 32.15,42.53
accept The Highvale Documents##27626 |goto 32.15,42.53
stickystart "Deathstalker_Invaders"
step
Jump up into the building here |goto 31.99,46.42 < 7 |only if walking
click Highvale Records##205891
|tip It looks like a white open scroll laying halfway under a vase inside the building.
collect Highvale Records##61973 |q 27626/2 |goto 31.9,46.8
step
Jump down here |goto 30.69,47.87 < 7 |only if walking
click Highvale Notes##205892
|tip It looks like a white open scroll laying on the ground next to a well.
collect Highvale Notes##61974 |q 27626/3 |goto 29.6,48.7
step
click Highvale Report##205890
|tip It looks like a white open scroll laying on a stump.
collect Highvale Report##61972 |q 27626/1 |goto 28.56,46.06
step
label "Deathstalker_Invaders"
kill 16 Deathstalker Invader##43541 |q 27625/1 |goto 32.3,44.4
step
talk Anchorite Traska##46475
|tip Inside the small house.
turnin In Defense of Quel'Danil##27625 |goto 32.15,42.53
turnin The Highvale Documents##27626 |goto 32.15,42.53
step
Jump up into the building here |goto 31.99,46.42 < 7 |only if walking
talk Gilda Cloudcaller##43200
|tip Inside the building.
accept The Eye of Shadra##26528 |goto 30.7,47.1
accept Can't Make An Omelette Without...##26641 |goto 30.7,47.1
stickystart "Shadraspawn_Eggs"
step
Leave the building |goto 31.53,48.89 < 15 |only if walking
Follow the road |goto 35.31,57.03 < 30 |only if walking
Continue following the road |goto 39.82,55.16 < 30 |only if walking
Continue following the road |goto 46.54,46.33 < 30 |only if walking
Follow the path |goto 47.41,42.74 < 15 |only if walking
Follow the path |goto 46.82,40.87 < 15 |only if walking
click Cache of Shadra##204133
|tip It looks like a yellow wooden check inside the little hut.
collect Eye of Shadra##58282 |q 26528/1 |goto 45.5,38.9
step
label "Shadraspawn_Eggs"
click Shadraspawn Egg##204102
|tip They look like white webbed eggs on the ground around this area.
collect 5 Shadraspawn Egg##58252 |q 26641/1 |goto 46.1,40.3
step
Follow the path |goto 46.82,40.87 < 15 |only if walking
Follow the path |goto 47.41,42.74 < 15 |only if walking
Follow the road |goto 46.54,46.33 < 30 |only if walking
Continue following the road |goto 39.82,55.16 < 30 |only if walking
Follow the road |goto 35.31,57.03 < 30 |only if walking
talk Gilda Cloudcaller##43200
|tip Inside the building.
turnin The Eye of Shadra##26528 |goto 30.7,47.1
accept The Fang of Shadra##26529 |goto 30.7,47.1
turnin Can't Make An Omelette Without...##26641 |goto 30.7,47.1
accept Starvation Diet##26643 |goto 30.7,47.1
stickystart "Cocooned_Victims"
step
Leave the building |goto 31.53,48.89 < 15 |only if walking
Follow the road |goto 35.31,57.03 < 30 |only if walking
Continue following the road |goto 39.82,55.16 < 30 |only if walking
Follow the path |goto 43.89,49.60 < 30 |only if walking
Follow the path |goto 47.68,51.97 < 15 |only if walking
click Cache of Shadra##204120
collect Fang of Shadra##58281 |q 26529/1 |goto 49.5,52.1
step
label "Cocooned_Victims"
kill 6 Cocooned Victim##42907 |q 26643/1
step
Follow the path |goto 47.68,51.97 < 15 |only if walking
Follow the road |goto 43.89,49.60 < 30 |only if walking
Continue following the road |goto 39.82,55.16 < 30 |only if walking
Follow the road |goto 35.31,57.03 < 30 |only if walking
talk Gilda Cloudcaller##43200
|tip Inside the building.
turnin The Fang of Shadra##26529 |goto 30.7,47.1
accept The Shell of Shadra##26530 |goto 30.7,47.1
turnin Starvation Diet##26643 |goto 30.7,47.1
step
Leave the building |goto 31.53,48.89 < 15 |only if walking
Follow the road |goto 35.31,57.03 < 30 |only if walking
Follow the path |goto 40.36,55.04 < 30 |only if walking
Run up the stairs |goto 47.76,66.78 < 20 |only if walking
kill Qiaga the Keeper##42919
collect Shell of Shadra##58779 |q 26530/1 |goto 48.4,67.8
step
Follow the road |goto 40.36,55.04 < 30 |only if walking
Follow the road |goto 35.31,57.03 < 30 |only if walking
talk Gilda Cloudcaller##43200
|tip Inside the building.
turnin The Shell of Shadra##26530 |goto 30.7,47.1
accept Summoning Shadra##26531 |goto 30.7,47.1
step
Leave the building |goto 31.53,48.89 < 15 |only if walking
Follow the road |goto 35.12,57.59 < 30 |only if walking
Follow the path |goto 35.8,64.3 < 20 |only if walking
Follow the path |goto 35.49,66.89 < 20 |only if walking
Run up the stairs |goto 32.88,69.21 < 20 |only if walking
Use the Idol of Shadra |use Idol of Shadra##58784
|tip Use it at the top of the temple.
Perform the Ritual at the Northwestern Temple |q 26531/1 |goto 32.1,67.3
step
Run down the stairs |goto 32.52,68.31 < 15 |only if walking
Run up the stairs |goto 33.03,73.97 < 20 |only if walking
Use the Idol of Shadra |use Idol of Shadra##58784
|tip Use it at the top of the temple.
Perform the Ritual at the Southwestern Temple |q 26531/3 |goto 32.5,76.2
step
Run down the stairs |goto 32.82,75.01 < 15 |only if walking
Follow the path |goto 33.21,73.85 < 20 |only if walking
Follow the path |goto 34.30,73.60 < 20 |only if walking
Run up the stairs |goto 35.58,71.39 < 20 |only if walking
Use the Idol of Shadra |use Idol of Shadra##58784
|tip Use it at the top of the temple.
Perform the Ritual at the Eastern Temple |q 26531/2 |goto 37.0,71.5
step
Run down the stairs |goto 36.25,71.41 < 15 |only if walking
Follow the path |goto 35.36,70.92 < 20 |only if walking
talk Wildhammer Lookout##43298
turnin Summoning Shadra##26531 |goto 34.4,67.8
accept Shadra the Venom Queen##26532 |goto 34.4,67.8
step
kill Shadra##43007 |q 26532/1 |goto 34.33,69.60
step
Follow the path up |goto 35.53,66.75 < 20 |only if walking
Follow the path |goto 35.8,64.3 < 20 |only if walking
Follow the road |goto 35.20,57.74 < 30 |only if walking
Follow the road |goto 30.77,52.57 < 30 |only if walking
Continue following the road |goto The Hinterlands/0 18.96,53.52 < 30 |only if walking
Follow the path up |goto The Hinterlands/0 15.51,48.76 < 20 |only if walking
Follow the path up |goto The Hinterlands/0 13.81,47.92 < 15 |only if walking
Continue up the path |goto The Hinterlands/0 11.25,48.92 < 15 |only if walking
Continue up the path |goto The Hinterlands/0 12.26,47.31 < 15 |only if walking
Enter the building |goto The Hinterlands/0 11.01,45.68 < 10 |walk
talk Gryphon Master Talonaxe##5636
|tip Inside the building.
turnin Shadra the Venom Queen##26532 |goto 9.9,44.2
accept The Battle for Andorhal##28505 |goto 9.9,44.2
step
talk Guthrum Thunderfist##8018 |goto 11.1,46.1 |n
Tell him _"I need a gryphon, Guthrum.  I'm headed to Western Plaguelands.  My king needs me!"_
Fly to Western Plaguelands |goto Western Plaguelands/0 39.5,69.5 < 20 |noway |c |q 28505
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (1-10)\\Kalimdor\\Azuremyst Isle (1-20)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Azuremyst",
next="Leveling Guides\\Classic (10-60)\\Kalimdor\\Darkshore (10-60)",
condition_suggested=function() return level >= 1 and level <= 20 and not completedq(9623) end,
startlevel=1,
endlevel=10,
},[[
step
Follow the path |goto Ammen Vale/0 49.16,51.75 < 20 |only if walking
Continue following the path |goto Ammen Vale/0 39.21,55.71 < 20 |only if walking
Follow the path up |goto Ammen Vale/0 27.01,54.52 < 20 |only if walking
Follow the path down |goto Azuremyst Isle/0 66.14,53.89 < 20 |only if walking
talk Aeun##16554
accept Word from Azure Watch##9314 |goto Azuremyst Isle/0 64.50,54.04
step
Follow the path |goto 63.66,53.86 < 20 |only if walking
talk Diktynna##17101
accept Red Snapper - Very Tasty!##9452 |goto 61.05,54.25
step
Use the Draenei Fishing Net |use Draenei Fishing Net##23654
|tip Use it next on Schools of Red Snapper around this area.
kill Angry Murloc##17102+
|tip Sometimes an Angry Murloc will spawn when you use the Draenei Fishing Net.
collect 10 Red Snapper##23614 |q 9452/1 |goto 61.90,52.45
step
talk Diktynna##17101
turnin Red Snapper - Very Tasty!##9452 |goto 61.05,54.25
accept Find Acteon!##9453 |goto 61.05,54.25
step
talk Acteon##17110
turnin Find Acteon!##9453 |goto 49.78,51.94
accept The Great Moongraze Hunt##9454 |goto 49.78,51.94
step
talk Anchorite Fateema##17214
accept Medicinal Purpose##9463 |goto 48.39,51.78
|only if Draenei
step
talk Technician Dyvuun##16551
|tip He walks around this small area.
turnin Travel to Azure Watch##9313 |goto 48.66,50.23
step
talk Caregiver Chellan##16553
|tip Inside the building.
turnin Word from Azure Watch##9314 |goto 48.34,49.14
step
talk Caregiver Chellan##16553
|tip Inside the building.
home Azure Watch |goto 48.34,49.14 |q 9506 |future
stickystart "Collect_Root_Trappers"
step
Leave the building |goto 48.78,49.94 < 10 |walk
Follow the path down |goto 48.86,53.05 < 15 |only if walking
Follow the path |goto 48.82,54.97 < 20 |only if walking
kill Moongraze Stag##17200+
collect 6 Moongraze Stag Tenderloin##23676 |q 9454/1 |goto 51.53,58.11
step
label "Collect_Root_Trappers"
kill Root Trapper##17196+
collect 8 Root Trapper Vine##23685 |q 9463/1 |goto 51.53,58.11
|only if Draenei
step
Follow the path |goto 47.31,61.89 < 20 |only if walking
Continue following the path |goto 46.97,66.33 < 20 |only if walking
Follow the path |goto 46.88,68.79 < 20 |only if walking
talk Admiral Odesyus##17240
accept A Small Start##9506 |goto 47.04,70.21
step
talk "Cookie" McWeaksauce##17246
|tip He walks around this small area.
accept Cookie's Jumbo Gumbo##9512 |goto 46.66,70.55
step
kill Skittering Crawler##17216+
collect 6 Skittering Crawler Meat##23757 |q 9512/1 |goto 47.41,74.02 |notravel
step
Follow the path up |goto 47.19,71.61 < 20 |only if walking
talk "Cookie" McWeaksauce##17246
|tip He walks around this small area.
turnin Cookie's Jumbo Gumbo##9512 |goto 46.66,70.55
step
talk Priestess Kyleen Il'dinare##17241
accept Reclaiming the Ruins##9513 |goto 47.13,70.29
step
talk Archaeologist Adamant Ironheart##17242
accept Precious and Fragile Things Need Special Handling##9523 |goto 47.24,70.00
step
Follow the path |goto 48.14,69.71 < 20 |only if walking
Continue following the path |goto 51.43,68.18 < 20 |only if walking
click Nautical Map##181674
collect Nautical Map##23739 |q 9506/2 |goto 58.6,66.4
step
click Nautical Compass##181675
collect Nautical Compass##23738 |q 9506/1 |goto 59.6,67.6
step
Follow the path |goto 56.99,67.68 < 20 |only if walking
Continue following the path |goto 50.97,68.34 < 20 |only if walking
talk Admiral Odesyus##17240
turnin A Small Start##9506 |goto 47.03,70.21
accept I've Got a Plant##9530 |goto 47.03,70.21
stickystart "Collect_Piles_Of_Leaves"
step
Follow the path |goto 46.12,69.63 < 15 |only if walking
click Hollowed Out Tree##181696
collect Hollowed Out Tree##23790 |q 9530/1 |goto 45.93,65.72
step
label "Collect_Piles_Of_Leaves"
click Piles of Leaves##6884+
|tip They look like piles of purple leaves on the ground around this area.
collect 5 Pile of Leaves##23791 |q 9530/2 |goto 45.9,65.7
step
Follow the path |goto 47.31,61.89 < 20 |only if walking
Continue following the path |goto 46.97,66.33 < 20 |only if walking
Follow the path |goto 46.88,68.79 < 20 |only if walking
talk Admiral Odesyus##17240
turnin I've Got a Plant##9530 |goto 47.03,70.21
accept Tree's Company##9531 |goto 47.03,70.21
stickystart "Kill_Wrathscale_Myrmidons"
stickystart "Kill_Wrathscale_Nagas"
stickystart "Kill_Wrathscale_Sirens"
stickystart "Accept_Rune_Covered_Tablet"
step
Follow the path |goto 46.14,69.63 < 15 |only if walking
Follow the path |goto 45.32,69.70 < 20 |only if walking
Follow the path up |goto 42.04,70.97 < 20 |only if walking
Follow the path |goto 39.42,74.45 < 20 |only if walking
Follow the path |goto 37.45,76.06 < 20 |only if walking
click Ancient Relic##181685
|tip They look like glowing white orbs in small stands on the ground around this area.
collect 8 Ancient Relic##23779 |q 9523/1 |goto 34.65,77.49
step
label "Kill_Wrathscale_Myrmidons"
kill 5 Wrathscale Myrmidon##17194 |q 9513/1 |goto 34.65,77.49
step
label "Kill_Wrathscale_Nagas"
kill 5 Wrathscale Naga##17193 |q 9513/2 |goto 34.65,77.49
step
label "Kill_Wrathscale_Sirens"
kill 5 Wrathscale Siren##17195 |q 9513/3 |goto 34.65,77.49
step
label "Accept_Rune_Covered_Tablet"
Kill Wratchscale enemies around this area
|tip You will eventually automatically accept this quest after looting one of them.
accept Rune Covered Tablet##9514 |goto 34.65,77.49
step
Follow the path |goto 29.55,81.57 < 30 |only if walking |notravel
Cross the water |goto 26.05,82.25 < 20 |only if walking |notravel
Follow the path |goto 19.90,84.33 < 20 |only if walking |notravel
Use Tree Disguise Kit |use Tree Disguise Kit##23792
|tip Use it next to the Naga Flag.
Watch the dialogue
Uncover the Traitor |q 9531/1 |goto 18.5,84.3
step
talk Anchorite Fateema##17214
turnin Medicinal Purpose##9463 |goto 48.39,51.78
|only if Draenei
step
talk Daedal##17215
accept An Alternative Alternative##9473 |goto 48.40,51.48
|only if Draenei
step
talk Acteon##17110
turnin The Great Moongraze Hunt##9454 |goto 49.78,51.94
accept The Great Moongraze Hunt##10324 |goto 49.78,51.94
stickystart "Accept_Strange_Findings"
step
Follow the path |goto 49.26,49.01 < 20 |only if walking
kill Moongraze Buck##17201+
collect 6 Moongraze Buck Hide##23677 |q 10324/1 |goto 50.16,45.47
step
label "Accept_Strange_Findings"
kill Infected Nightstalker Runt##17202+
|tip You will eventually automatically accept this quest after looting one of them.
accept Strange Findings##9455 |goto 50.16,45.47
step
Jump down here |goto 51.56,40.51 < 15 |only if walking
click Azure Snapdragon##181644
|tip They look like blue growing flowers near trees around this area.
collect 5 Azure Snapdragon Bulb##23692 |q 9473/1 |goto 50.65,36.67
|only if Draenei
step
Follow the road |goto 46.94,39.60 < 30 |c |q 9473
|only if Draenei
step
Follow the road |goto 47.80,43.80 < 30 |only if walking
Follow the path |goto 49.04,48.52 < 20 |only if walking
talk Acteon##17110
turnin The Great Moongraze Hunt##10324 |goto 49.78,51.93
step
talk Daedal##17215
turnin An Alternative Alternative##9473 |goto 48.40,51.48
|only if Draenei
step
Follow the path |goto 48.06,51.02 < 20 |only if walking
talk Exarch Menelaous##17116
turnin Strange Findings##9455 |goto 47.1,50.6
accept Nightstalker Clean Up, Isle 2...##9456 |goto 47.11,50.60
step
talk Dulvi##17488
accept The Missing Fisherman##10428 |goto 48.96,51.06
step
talk Caregiver Chellan##16553
|tip Inside the building.
accept Beds, Bandages, and Beyond##9603 |goto 48.34,49.15
|only if Draenei
step
Leave the building |goto 48.77,49.92 < 10 |walk
talk Zaldaan##43991
turnin Beds, Bandages, and Beyond##9603 |goto 49.71,49.10
accept On the Wings of a Hippogryph##9604 |goto 49.71,49.10
|only if Draenei
step
Follow the path |goto The Exodar/0 53.80,43.58 < 20 |walk
talk Nurguni##16768
turnin On the Wings of a Hippogryph##9604 |goto The Exodar/0 57.02,50.08
accept Hippogryph Master Stephanos##9605 |goto The Exodar/0 57.02,50.08
|only if Draenei
step
Follow the path |goto The Exodar/0 53.80,43.58 < 20 |walk
talk Stephanos##17555
turnin Hippogryph Master Stephanos##9605 |goto 54.48,36.29
accept Return to Caregiver Chellan##9606 |goto 54.48,36.29
|only if Draenei
step
talk Caregiver Chellan##16553
|tip Inside the building.
turnin Return to Caregiver Chellan##9606 |goto Azuremyst Isle/0 48.34,49.15
|only if Draenei
step
Follow the path |goto 48.93,48.23 < 20 |only if walking
Jump down here |goto 47.18,45.24 < 20 |only if walking
kill 8 Infected Nightstalker Runt##17202 |q 9456/1 |goto 45.7,43.9
step
Follow the path |goto 45.74,39.38 < 30 |only if walking
Follow the road |goto 47.05,40.18 < 20 |only if walking
Follow the path |goto 48.96,48.37 < 20 |only if walking
Follow the path |goto 49.14,50.18 < 20 |only if walking
Follow the path |goto 48.14,50.94 < 20 |only if walking
talk Exarch Menelaous##17116
turnin Nightstalker Clean Up, Isle 2...##9456 |goto 47.11,50.60
step
Follow the path |goto 48.68,51.21 < 20 |only if walking
Follow the path down |goto 48.93,52.82 < 15 |only if walking
Continue following the path |goto 48.43,57.83 < 20 |only if walking
Continue following the path |goto 47.05,63.06 < 20 |only if walking
Continue following the path |goto 46.96,66.35 < 20 |only if walking
Follow the path |goto 46.86,68.85 < 20 |only if walking
talk Admiral Odesyus##17240
turnin Tree's Company##9531 |goto 47.04,70.20
accept Show Gnomercy##9537 |goto 47.04,70.20
step
talk Priestess Kyleen Il'dinare##17241
turnin Reclaiming the Ruins##9513 |goto 47.13,70.29
turnin Rune Covered Tablet##9514 |goto 47.13,70.29
step
talk Archaeologist Adamant Ironheart##17242
turnin Precious and Fragile Things Need Special Handling##9523 |goto 47.24,69.99
step
Watch the dialogue
talk Priestess Kyleen Il'dinare##17241
accept Warlord Sriss'tiz##9515 |goto 47.13,70.29
step
Follow the path |goto 47.86,71.95 < 20 |only if walking
talk Engineer "Spark" Overgrind##17243
|tip He looks like a gnome that walks on the beach around this area.
Tell him _"It's over, Spark. The admiral knows it was you who betrayed the Alliance. Now you're either going to cooperate with me and tell me everything that you know or we're going to engage in some fisticuff."_
kill Engineer "Spark" Overgrind##17243
collect Traitor's Communication##23899 |q 9537/1 |goto 49.76,70.65
step
Follow the path up |goto 47.55,71.69 < 20 |only if walking
talk Admiral Odesyus##17240
turnin Show Gnomercy##9537 |goto 47.04,70.20
accept Deliver Them From Evil...##9602 |goto 47.04,70.20
step
Follow the path |goto 48.67,50.92 < 20 |only if walking
talk Exarch Menelaous##17116
turnin Deliver Them From Evil...##9602 |goto 47.1,50.6
step
talk Cryptographer Aurren##17232
accept Learning the Language##9538 |goto 49.38,50.97
step
Use Stillpine Furbolg Language Primer |use Stillpine Furbolg Language Primer##23818
Read the Stillpine Furbolg Language Primer |q 9538/1 |goto 49.38,50.97
step
clicknpc Totem of Akida##17360
turnin Learning the Language##9538 |goto 49.43,50.98
accept Totem of Coo##9539 |goto 49.43,50.98
step
Follow the path |goto 49.22,49.04 < 20 |only if walking
Follow the path up |goto 49.98,46.69 < 20 |only if walking
Continue up the path |goto 53.06,42.61 < 20 |only if walking
clicknpc Totem of Coo##17361
|tip Follow Stillpine Ancestor Akida.
turnin Totem of Coo##9539 |goto 55.23,41.65
accept Totem of Tikti##9540 |goto 55.23,41.65
step
Watch the dialogue
Gain the Ghost Walk Buff |havebuff 135898 |goto 55.6,41.6 |q 9540
step
clicknpc Totem of Tikti##17362
|tip Jump off the cliff, you will float down to the ground.
turnin Totem of Tikti##9540 |goto 64.47,39.77
accept Totem of Yor##9541 |goto 64.47,39.77
step
Watch the dialogue
Gain the Embrace of the Serpent Buff |havebuff 132107 |goto 63.78,40.23 |q 9541
step
Swim in the water |goto 62.26,41.92 < 20 |only if walking
Follow the path |goto 61.44,47.02 < 20 |only if walking
Follow the path |goto 62.74,55.23 < 20 |only if walking
Continue following the path |goto 61.51,59.02 < 20 |only if walking
clicknpc Totem of Yor##17363
|tip Underwater.
turnin Totem of Yor##9541 |goto 63.12,67.88
accept Totem of Vark##9542 |goto 63.12,67.88
step
Watch the dialogue
Gain the Shadow of the Forest Buff |havebuff 132142 |goto 61.04,69.46 |q 9542
step
Follow the path |goto 59.42,69.46 < 20 |only if walking
Continue following the path |goto 57.93,67.64 < 20 |only if walking
Continue following the path |goto 55.57,65.77 < 20 |only if walking
Continue following the path |goto 53.02,63.87 < 20 |only if walking
Follow the path |goto 50.82,64.05 < 20 |only if walking
Follow the path |goto 47.62,61.37 < 20 |only if walking
Continue following the path |goto 47.11,59.69 < 20 |only if walking
Continue following the path |goto 44.61,60.54 < 20 |only if walking
Follow the path |goto 43.72,62.48 < 20 |only if walking
Continue following the path |goto 41.89,63.28 < 20 |only if walking
Follow the path |goto 38.53,62.83 < 20 |only if walking
Continue following the path |goto 35.90,64.43 < 20 |only if walking
Follow the path |goto 33.62,62.85 < 20 |only if walking
Follow the path |goto 30.63,64.91 < 20 |only if walking
clicknpc Totem of Vark##17364
|tip Follow Stillpine Ancestor Yor.
turnin Totem of Vark##9542 |goto 28.11,62.39
accept The Prophecy of Akida##9544 |goto 28.11,62.39
step
Kill Bristlelimb enemies around this area
collect Bristlelimb Key##23801 |n
click Bristlelimb Cage##1787+
|tip They look like yellow cages around this area.
Free #8# Stillpine Captives |q 9544/1 |goto 27.24,64.32
step
Follow the path |goto 26.98,68.39 < 20 |only if walking
Follow the path down |goto 28.20,74.01 < 20 |only if walking
Follow the path |goto 27.98,76.73 < 20 |only if walking
Enter the cave |goto 27.03,76.58 < 15 |c |q 9515
step
Follow the path down |goto Azuremyst Isle/2 53.92,71.68 < 10 |walk
Continue down the path |goto Azuremyst Isle/2 42.85,49.72 < 10 |walk
Continue down the path |goto Azuremyst Isle/2 45.84,36.28 < 10 |walk
Continue down the path |goto Azuremyst Isle/2 57.89,38.84 < 10 |walk
Follow the path |goto Azuremyst Isle/2 66.59,64.36 < 10 |c |q 9515
step
Follow the path |goto 49.04,73.04 < 10 |walk
kill Warlord Sriss'tiz##17298 |q 9515/1 |goto 39.63,66.48
|tip He walks around this small area inside the cave.
step
Follow the path |goto Azuremyst Isle/2 49.55,71.36 < 10 |walk
Follow the path up |goto 66.45,60.08 < 10 |walk
Continue up the path |goto 59.60,40.64 < 10 |walk
Continue up the path |goto 45.73,35.28 < 10 |walk
Continue up the path |goto 43.97,53.64 < 10 |c |q 9515
step
Follow the path up |goto 56.51,75.60 < 10 |walk
Follow the path |goto Azuremyst Isle/0 27.19,77.93 < 20 |only if walking |notravel
Follow the path |goto Azuremyst Isle/0 18.70,90.38 < 20 |only if walking |notravel
Follow the path |goto Azuremyst Isle/0 15.71,93.04 < 15 |only if walking |notravel
talk Cowlen##17311
turnin The Missing Fisherman##10428 |goto Azuremyst Isle/0 16.59,94.45
accept All That Remains##9527 |goto Azuremyst Isle/0 16.59,94.45
step
Kill Owlbeast enemies around this area
collect Remains of Cowlen's Family##23789 |q 9527/1 |goto 14.27,89.60
step
Follow the path |goto 15.71,93.04 < 15 |only if walking
talk Cowlen##17311
turnin All That Remains##9527 |goto 16.59,94.45
step
talk Arugoo the Stillpine##17114
turnin The Prophecy of Akida##9544 |goto 49.37,51.08
accept Stillpine Hold##9559 |goto 49.37,51.08
step
Follow the path down |goto 48.93,52.82 < 15 |only if walking
Continue following the path |goto 48.43,57.83 < 20 |only if walking
Continue following the path |goto 47.05,63.06 < 20 |only if walking
Continue following the path |goto 46.96,66.35 < 20 |only if walking
Follow the path |goto 46.86,68.85 < 20 |only if walking
talk Priestess Kyleen Il'dinare##17241
turnin Warlord Sriss'tiz##9515 |goto 47.13,70.29
step
Follow the path |goto 46.09,69.69 < 15 |only if walking
Follow the road |goto 46.95,66.11 < 20 |only if walking
Continue following the road |goto 48.33,58.12 < 20 |only if walking
Continue following the road |goto 48.91,52.79 < 20 |only if walking
Follow the road |goto 49.16,49.18 < 20 |only if walking
Continue following the road |goto 46.99,39.78 < 20 |only if walking
Follow the road |goto 45.60,31.50 < 20 |only if walking
Follow the path |goto 45.75,25.33 < 20 |only if walking
talk Moordo##17442
accept Beasts of the Apocalypse!##9560 |goto 44.76,23.90
step
talk Gurf##17441
accept Murlocs... Why Here? Why Now?##9562 |goto 44.62,23.48
step
talk High Chief Stillpine##17440
turnin Stillpine Hold##9559 |goto 46.68,20.64
step
Follow the path up |goto 48.02,21.33 < 20 |only if walking
Follow the path |goto 49.26,21.12 < 20 |only if walking
Follow the path |goto 50.85,22.05 < 20 |only if walking
Follow the path |goto 52.35,21.94 < 20 |only if walking
kill Ravager Specimen##17199+
collect 8 Ravager Hide##23845 |q 9560/1 |goto 53.77,20.14
stickystart "Accept_Gurfs_Dignity"
step
Follow the road |goto 51.32,13.56 < 20 |only if walking
Continue following the road |goto 49.87,11.99 < 20 |only if walking
Continue following the road |goto 46.10,11.78 < 20 |only if walking
Continue following the road |goto 41.22,12.62 < 20 |only if walking
Follow the path |goto 37.42,19.04 < 20 |only if walking
Kill Siltfin enemies around this area
click Stillpine Grain##181757
|tip They look like brown bags with yellow contents in them on the ground near the murloc huts around this area.
collect 5 Stillpine Grain##23849 |q 9562/1 |goto 34.28,21.64
step
label "Accept_Gurfs_Dignity"
kill Murgurgala##17475
|tip He looks like a bigger purple murloc that walks up and down the beach around this area.
|tip You will automatically accept this quest after looting him.
accept Gurf's Dignity##9564 |goto 34.28,21.64
step
Follow the path |goto 34.96,24.87 < 20 |only if walking
Continue following the path |goto 37.69,24.79 < 20 |only if walking
Continue following the path |goto 40.63,23.77 < 20 |only if walking
talk Gurf##17441
turnin Gurf's Dignity##9564 |goto 44.62,23.49
turnin Murlocs... Why Here? Why Now?##9562 |goto 44.62,23.49
step
talk Moordo##17442
turnin Beasts of the Apocalypse!##9560 |goto 44.76,23.90
step
talk High Chief Stillpine##17440
accept Search Stillpine Hold##9565 |goto 46.68,20.62
step
talk Stillpine the Younger##17445
accept Chieftain Oomooroo##9573 |goto 46.90,21.16
stickystart "Kill_Crazed_Wildkins"
step
Follow the path |goto Azuremyst Isle/0 45.44,21.80 < 20 |only if walking
Follow the path |goto Azuremyst Isle/3 21.55,81.96 < 10 |walk
Continue following the path |goto Azuremyst Isle/3 24.16,78.23 < 10 |walk
Follow the path up |goto Azuremyst Isle/3 34.71,72.26 < 10 |walk
Follow the path |goto Azuremyst Isle/3 39.82,68.19 < 10 |walk
Cross the bridge |goto Azuremyst Isle/3 44.83,56.60 < 10 |walk
Follow the path |goto Azuremyst Isle/3 41.76,51.93 < 10 |walk
kill Chieftain Oomooroo##17448 |q 9573/1 |goto Azuremyst Isle/3 38.26,53.03
step
Cross the bridge |goto 41.57,51.96 < 7 |walk
Jump down here |goto 43.86,53.06 < 7 |walk
Follow the path |goto 48.79,47.47 < 10 |walk
click Blood Crystal##181748
turnin Search Stillpine Hold##9565 |goto 65.08,31.37
accept Blood Crystals##9566 |goto 65.08,31.37
step
label "Kill_Crazed_Wildkins"
Follow the path |goto 47.82,47.35 < 10 |walk
Follow the path |goto 41.13,57.99 < 10 |walk
Follow the path |goto 33.42,61.87 < 10 |walk
kill 9 Crazed Wildkin##17189 |q 9573/2 |goto 31.95,71.95
step
Follow the path |goto 29.97,72.07 < 15 |walk
Follow the path up |goto 23.21,79.31 < 10 |walk
Follow the path |goto Azuremyst Isle/0 45.64,21.93 < 15 |only if walking
talk High Chief Stillpine##17440
turnin Blood Crystals##9566 |goto Azuremyst Isle/0 46.67,20.63
step
talk Stillpine the Younger##17445
turnin Chieftain Oomooroo##9573 |goto 46.90,21.16
step
talk Kurz the Revelator##17443
accept The Kurken is Lurkin'##9570 |goto 46.96,22.26
step
Follow the path |goto 45.43,21.66 < 20 |only if walking
Follow the path |goto Azuremyst Isle/3 21.63,82.15 < 10 |walk
Follow the path down |goto Azuremyst Isle/3 32.39,65.41 < 10 |walk
Follow the path |goto Azuremyst Isle/3 35.04,61.15 < 10 |walk
Follow the path |goto Azuremyst Isle/3 44.52,51.42 < 10 |walk
kill The Kurken##17447
|tip It looks like a big white two-headed dog that walks around this small area inside the cave.
collect The Kurken's Hide##23860 |q 9570/1 |goto Azuremyst Isle/3 59.53,42.29
step
Follow the path up |goto 47.36,48.01 < 10 |walk
Continue up the path |goto 40.85,57.96 < 10 |walk
Continue up the path |goto 33.53,63.14 < 10 |walk
Follow the path up |goto 22.81,79.15 < 10 |walk
Follow the path |goto Azuremyst Isle/0 45.64,21.93 < 15 |only if walking
talk Kurz the Revelator##17443
turnin The Kurken is Lurkin'##9570 |goto Azuremyst Isle/0 46.96,22.26
accept The Kurken's Hide##9571 |goto Azuremyst Isle/0 46.96,22.26
step
talk High Chief Stillpine##17440
accept Warn Your People##9622 |goto 46.67,20.63
step
talk Moordo##17442
turnin The Kurken's Hide##9571 |goto 44.76,23.90
step
Follow the path |goto 48.73,50.83 < 20 |only if walking
talk Exarch Menelaous##17116
turnin Warn Your People##9622 |goto 47.1,50.6
accept Coming of Age##9623 |goto 47.1,50.6
step
Jump down here |goto 47.32,51.81 < 15 |only if walking
Follow the road |goto 45.52,52.98 < 20 |only if walking
Cross the bridge |goto 40.11,48.34 < 15 |only if walking
Follow the path |goto The Exodar/0 87.90,64.97 < 15 |only if walking
Follow the path |goto The Exodar/0 84.17,63.36 < 15 |only if walking
talk Torallius the Pack Handler##17584
turnin Coming of Age##9623 |goto The Exodar/0 81.51,51.46
step
Follow the path down |goto 74.11,53.79 < 15 |walk
Continue down the path |goto 70.32,48.78 < 15 |walk
Continue down the path |goto 73.96,39.48 < 15 |walk
Continue down the path |goto 71.55,32.26 < 15 |walk
Follow the path |goto 66.07,33.69 < 15 |walk
Follow the path |goto 63.07,35.65 < 15 |walk
Follow the path down |goto 58.61,31.49 < 15 |walk
Follow the path |goto 52.93,35.68 < 15 |walk
Run up the stairs |goto 51.43,48.51 < 20 |walk
Follow the path |goto 50.27,54.72 < 10 |walk
clicknpc Portal to Darnassus##103188 |goto 47.58,62.16
Teleport to Darnassus |goto Darnassus/0 43.47,78.68 |noway |c |q 26383 |future
step
talk Sentinel Cordressa Briarbow##42936
|tip Upstairs inside the building.
accept Breaking Waves of Change##26383 |goto Darnassus/0 43.89,76.14
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (10-60)\\Kalimdor\\Darkshore (10-60)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Darkshore",
next="Leveling Guides\\Classic (10-60)\\Kalimdor\\Ashenvale (15-60)",
condition_suggested=function() return level >= 10 and level <= 60 and not completedq(13898) end,
startlevel=10,
endlevel=60,
},[[
stickystart "Time_Travel_On"
step
talk Dentaria Silverglade##32973
turnin Hero's Call: Darkshore!##28490 |goto Darkshore/0 51.78,18.01 |only if havequest(28490) or completedq(28490)
turnin Breaking Waves of Change##26383 |goto Darkshore/0 51.78,18.01 |only if havequest(26383) or completedq(26383)
turnin Breaking Waves of Change##26385 |goto Darkshore/0 51.78,18.01 |only if havequest(26385) or completedq(26385)
accept The Last Wave of Survivors##13518 |goto Darkshore/0 51.78,18.01
step
Enter the building |goto 51.35,18.62 < 15 |walk
talk Innkeeper Kyteran##43420
|tip Inside the building.
home Lor'danel |goto 50.96,18.56 |q 13522 |future
step
Leave the building |goto 50.64,18.98 < 10 |walk
talk Ranger Glynda Nal'Shea##32971
|tip She walks around this area.
accept Threat from the Water##13522 |goto 50.22,19.79
stickystart "Kill_Vile_Sprays"
step
Cross the bridge |goto 50.08,19.94 < 7 |only if walking
Follow the path |goto 49.25,20.09 < 15 |only if walking
Follow the path |goto 46.24,19.01 < 20 |only if walking
talk Volcor##33094
Rescue Volcor |q 13518/4 |goto 45.04,18.20
step
talk Gershala Nightwhisper##32911
Rescue Gershala Nightwhisper |q 13518/2 |goto 44.1,17.8
step
talk Cerellean Whiteclaw##33093
Rescue Cerellean Whiteclaw |q 13518/1 |goto 44.6,19.9
step
talk Shaldyn##33095
Rescue Shaldyn |q 13518/3 |goto 42.9,21.5
step
label "Kill_Vile_Sprays"
kill 8 Vile Spray##32928 |q 13522/1 |goto 44.15,19.56
step
Follow the path |goto 44.68,19.37 < 20 |only if walking
Follow the path |goto 48.87,20.17 < 20 |only if walking
Cross the bridge |goto 49.54,19.96 < 15 |only if walking
talk Ranger Glynda Nal'Shea##32971
|tip She walks around this area.
turnin Threat from the Water##13522 |goto 50.22,19.79
step
Follow the path |goto 51.29,19.28 < 15 |only if walking
Run up the ramp |goto 51.59,18.46 < 10 |only if walking
talk Dentaria Silverglade##32973
turnin The Last Wave of Survivors##13518 |goto 51.8,18.0
step
talk Serendia Oakwhisper##32972
accept The Boon of the Seas##13520 |goto 51.8,18.1
step
Run down the ramp |goto 51.60,18.35 < 10 |only if walking
talk Wizbang Cranktoggle##32977
accept Buzzbox 413##13521 |goto 51.14,19.66
stickystart "Collect_Corrupted_Tide_Crawler_Flesh"
step
Follow the path |goto 51.87,18.74 < 20 |only if walking
click Encrusted Clam##194107
|tip They look like small white clams underwater around this area.
collect 16 Encrusted Clam Muscle##44864 |q 13520/1 |goto 52.66,18.35
step
label "Collect_Corrupted_Tide_Crawler_Flesh"
kill Corrupted Tide Crawler##32935+
|tip Underwater around this area.
collect 4 Corrupted Tide Crawler Flesh##44863 |q 13521/1 |goto 52.66,18.35
step
Follow the path |goto 53.22,19.09 < 20 |only if walking
click Buzzbox 413##194105
turnin Buzzbox 413##13521 |goto 53.25,19.62
accept No Accounting for Taste##13527 |goto 53.25,19.62
step
Follow the path |goto 54.45,21.21 < 20 |only if walking
clicknpc Decomposing Thistle Bear##32975
collect Foul Bear Carcass Sample##44911 |q 13527/1 |goto 55.09,20.99
step
Follow the path |goto 54.61,21.16 < 15 |only if walking
Continue following the path |goto 53.48,20.31 < 20 |only if walking
Follow the path |goto 52.46,19.80 < 15 |only if walking
Follow the path up |goto 51.79,19.79 < 10 |only if walking
talk Wizbang Cranktoggle##32977
turnin No Accounting for Taste##13527 |goto 51.14,19.66
accept Buzzbox 723##13528 |goto 51.14,19.66
step
Enter the building |goto 51.15,18.99 < 10 |walk
Run up the ramp |goto 50.82,18.57 < 7 |walk
talk Serendia Oakwhisper##32972
|tip She walks around this small area inside the building.
|tip She may be upstairs.
turnin The Boon of the Seas##13520 |goto 50.8,18.1
step
Leave the building |goto 51.34,18.62 < 15 |walk
Cross the bridge |goto 51.64,19.33 < 15 |only if walking
Follow the path |goto 51.74,22.40 < 20 |only if walking
Cross the bridge |goto 52.36,22.45 < 15 |only if walking
Follow the path |goto 53.00,22.59 < 15 |only if walking
Kill Corrupted enemies around this area
collect 6 Corrupted Thistle Bear Guts##44913 |q 13528/1 |goto 53.59,23.83
step
Follow the path |goto 53.87,25.36 < 30 |only if walking
Follow the path |goto 54.56,29.18 < 15 |only if walking
click Buzzbox 723##194122
turnin Buzzbox 723##13528 |goto 54.18,29.25
accept A Cure In The Dark##13554 |goto 54.18,29.25
step
Follow the path |goto 55.34,28.03 < 15 |only if walking
Follow the path up |goto 56.23,27.30 < 10 |only if walking
Follow the path |goto 56.30,28.05 < 15 |only if walking
Follow the path up |goto 56.33,29.51 < 15 |only if walking
Continue up the path |goto 56.80,29.76 < 15 |only if walking
talk Tharnariun Treetender##32978
accept The Corruption's Source##13529 |goto 56.8,30.1
stickystart "Kill_Vile_Grells"
stickystart "Collect_Foul_Ichors"
step
Follow the path up |goto 56.90,30.57 < 15 |only if walking
Enter the cave |goto 56.85,31.25 < 10 |walk
Follow the path down |goto 57.32,31.81 < 10 |walk
Continue down the path |goto 57.84,32.48 < 10 |walk
Continue down the path |goto 57.50,33.33 < 10 |walk
Follow the path |goto 57.12,33.15 < 10 |walk
Kill Vile enemies around this area
|tip You will eventually automatically accept this quest after looting one of the enemies.
accept Bearer of Good Fortune##13557 |goto 57.23,32.71
stickystart "Free_Uncorrupted_Animals"
step
Follow the path |goto 57.64,32.61 < 10 |walk
Continue following the path |goto 58.24,32.43 < 10 |walk
Follow the path up |goto 58.70,31.75 < 10 |walk
Follow the path |goto 58.93,32.26 < 10 |walk
kill Zenn Foulhoof##33020 |q 13529/1 |goto 58.2,33.0
|tip He walks around this small area inside the cave.
step
click Disgusting Workbench##194714
accept A Troubling Prescription##13831 |goto 57.4,33.8
step
label "Kill_Vile_Grells"
kill 8 Vile Grell##33021 |q 13529/2 |goto 57.04,34.85
step
label "Collect_Foul_Ichors"
Kill Vile enemies around this area
collect 6 Foul Ichor##44966 |q 13554/1 |goto 57.04,34.85
step
label "Free_Uncorrupted_Animals"
click Secure Cages
|tip They look like square metal cages inside the cave.
Free #8# Uncorrupted Animals |q 13557/1 |goto 57.04,34.85
step
Leave the building |goto 51.14,18.91 < 10 |walk
talk Wizbang Cranktoggle##32977
turnin A Cure In The Dark##13554 |goto 51.14,19.66
step
talk Tharnariun Treetender##32978
turnin The Corruption's Source##13529 |goto 51.13,19.71
turnin Bearer of Good Fortune##13557 |goto 51.13,19.71
turnin A Troubling Prescription##13831 |goto 51.13,19.71
step
Enter the building |goto 51.15,18.98 < 10 |walk
Run up the ramp |goto 50.82,18.59 < 7 |walk
talk Volcor##32960
|tip Inside the building.
accept A Lost Companion##13564 |goto 50.94,18.03
step
talk Cerellean Whiteclaw##32959
|tip Inside the building.
accept A Love Eternal##13563 |goto 50.82,17.88
step
Run down the ramp |goto 50.82,18.37 < 7 |walk
Leave the building |goto 50.65,18.97 < 10 |walk
talk Ranger Glynda Nal'Shea##32971
|tip She walks around this area.
accept The Final Flame of Bashal'Aran##13562 |goto 50.22,19.79
step
Follow the path |goto Darkshore/0 50.61,19.47 < 20 |only if walking
Cross the bridge |goto 51.64,19.30 < 15 |only if walking
Follow the path |goto 51.70,22.27 < 15 |only if walking
Follow the path |goto 51.54,22.59 < 15 |only if walking
talk Nightsaber Rider##33359
Tell her _"I'd like to travel to the Bashal'Aran."_
Begin Riding to the Bashal'Aran |invehicle |goto 51.03,22.74 |q 13562
step
Ride to the Bashal'Aran |goto 46.86,33.16 < 20 |q 13562 |notravel
step
talk Arya Autumnlight##33177
accept Solace for the Highborne##13561 |goto 46.8,33.3
stickystart "Kill_Cursed_Highbornes"
stickystart "Kill_Writhing_Highbornes"
step
Follow the path up |goto 46.48,33.44 < 15 |only if walking
Follow the path |goto 46.41,34.49 < 15 |only if walking
click The Final Flame of Bashal'Aran##194179
Extinguish the Final Flame of Bashal'Aran |q 13562/1 |goto 45.93,34.23
stickystart "Collect_Anayas_Pendant"
step
Follow the path |goto 46.23,34.50 < 15 |only if walking
Follow the path |goto 47.02,36.67 < 20 |only if walking
Continue following the path |goto 47.70,37.21 < 20 |only if walking
Continue following the path |goto 48.23,37.18 < 10 |only if walking
Continue following the path |goto 48.48,36.83 < 10 |only if walking
kill Anaya Dawnrunner##33181 |q 13563/1 |goto 48.47,36.63
step
label "Collect_Anayas_Pendant"
kill Anaya Dawnrunner##33181
collect Anaya's Pendant##5382 |q 13563/2 |goto 48.47,36.63
step
label "Kill_Cursed_Highbornes"
kill 6 Cursed Highborne##33179 |q 13561/1 |goto 49.12,35.41
step
label "Kill_Writhing_Highbornes"
kill 6 Writhing Highborne##33180 |q 13561/2 |goto 49.12,35.41
step
Follow the path down |goto 48.79,34.80 < 20 |only if walking
Follow the path |goto 48.24,33.54 < 20 |only if walking
talk Arya Autumnlight##33177
turnin Solace for the Highborne##13561 |goto 46.8,33.3
step
Follow the path |goto 45.39,33.24 < 20 |only if walking
Follow the path down |goto 44.40,37.24 < 20 |only if walking
Follow the path up |goto 44.11,38.53 < 15 |only if walking
Follow the path |goto 43.89,38.75 < 20 |only if walking
Locate Grimclaw |q 13564/1 |goto 42.91,39.05
step
talk Keeper Karithus##33048
turnin A Lost Companion##13564 |goto 42.97,39.00
accept Unsavory Remedies##13598 |goto 42.97,39.00
accept Ritual Materials##13566 |goto 42.97,39.00
step
talk Seraphine##33126
accept Twice Removed##13565 |goto 42.93,38.95
step
clicknpc Moonstalker##33127+
collect 3 Moonstalker Whisker##44969 |q 13566/1 |goto 41.92,39.65
step
Follow the path |goto 43.00,39.90 < 20 |only if walking
Follow the path |goto 43.95,40.90 < 20 |only if walking
clicknpc Mottled Doe##33313+
collect 3 Tuft of Mottled Doe Hair##45027 |q 13566/2 |goto 44.44,41.07
step
Follow the path |goto 44.44,40.31 < 20 |only if walking
clicknpc Hungry Thistle Bear##33978+
|tip Wait until they are neutral to click them.
collect 3 Thistle Bear Fur##45885 |q 13566/3 |goto 45.35,37.97
stickystart "Call_Withered_Ents"
stickystart "Collect_Fuming_Toadstools"
step
Follow the path |goto Darkshore/0 46.11,39.29 < 30 |only if walking
Follow the path |goto 46.90,39.53 < 30 |only if walking
Follow the path |goto 47.65,40.10 < 30 |only if walking
kill Lady Janira##33207 |q 13565/1 |goto 48.56,40.40
step
label "Call_Withered_Ents"
kill Darkscale Scout##33206+
Use the Petrified Root on their corpses |use Petrified Root##45911
Call #6# Withered Ents |q 13565/2 |goto 47.85,39.81
step
label "Collect_Fuming_Toadstools"
click Fuming Toadstool##194209
|tip They look like yellow mushrooms on the ground around this area.
collect 6 Fuming Toadstool##44976 |q 13598/1 |goto 47.85,39.81
step
Follow the path |goto 47.44,40.72 < 20 |only if walking
Follow the path up |goto 46.08,40.66 < 10 |only if walking
Follow the path |goto 45.88,41.14 < 20 |only if walking
Continue following the path |goto 45.40,41.41 < 20 |only if walking
Continue following the path |goto 44.00,40.86 < 20 |only if walking
Continue following the path |goto 43.06,39.87 < 20 |only if walking
talk Keeper Karithus##33048
turnin Unsavory Remedies##13598 |goto 42.97,39.00
turnin Ritual Materials##13566 |goto 42.97,39.00
step
talk Seraphine##33126
turnin Twice Removed##13565 |goto 42.93,38.95
step
talk Keeper Karithus##33048
accept The Ritual Bond##13569 |goto 42.97,39.00
step
click Grovekeeper's Incense##194771
Choose _"Breathe in the smoke to entice visions of the great animal spirits."_
Enter the Grovekeeper's Trance |havebuff 136090 |goto 42.94,39.03 |q 13569
step
talk Great Stag Spirit##33133
|tip It walks around this small area.
|tip You can also talk to the Great Moonstalker Spirit, or the Great Thistle Bear Spirit nearby to the west.
|tip We recommend talking to the Great Stag Spirit because it gives you a 10% increased run speed buff while in Darkshore.
|tip The Great Moonstalker Spirit gives a 10% haste buff.
|tip The Great Thistle Bear Spirit gives a 10% damage reduction buff.
|tip You can only choose one, so pick whichever one you'd like best.
accept Spirit of the Stag##13567 |goto 43.68,39.97 |instant
step
talk Keeper Karithus##33048
turnin The Ritual Bond##13569 |goto 42.97,39.00
accept Grimclaw's Return##13599 |goto 42.97,39.00
step
Run up the ramp |goto 50.82,18.59 < 7 |walk
talk Serendia Oakwhisper##32972
|tip She walks around this small area inside the building.
|tip She may be upstairs.
turnin Grimclaw's Return##13599 |goto 50.9,18.2
step
talk Cerellean Whiteclaw##32959
turnin A Love Eternal##13563 |goto 50.82,17.88
step
Run down the ramp |goto 50.82,18.37 < 7 |walk
Leave the building |goto 50.65,18.97 < 10 |walk
talk Ranger Glynda Nal'Shea##32971
|tip She walks around this area.
turnin The Final Flame of Bashal'Aran##13562 |goto 50.22,19.79
accept The Shatterspear Invaders##13589 |goto 50.22,19.79
step
talk Gorbold Steelhand##32979
accept An Ocean Not So Deep##13560 |goto 51.0,19.2
step
Follow the path |goto 51.50,19.04 < 15 |only if walking
Follow the path |goto 52.27,18.32 < 20 |only if walking
click Decoy Bot Control Console##195006
Control the Robot |invehicle |goto 52.97,11.02 |q 13560
step
Kill Greymist enemies around this area
|tip Underwater around this area.
|tip Use the ability on your action bar.
|tip Keep taking control of the robot and repeating this until you finish.
Slay #50# Scavenging Greymist Murlocs |q 13560/1 |goto 53.43,9.97
step
Follow the path up |goto 52.28,18.00 < 15 |only if walking
Follow the path |goto 52.06,18.66 < 20 |only if walking
talk Gorbold Steelhand##32979
turnin An Ocean Not So Deep##13560 |goto 51.0,19.2
step
Cross the bridge |goto 51.64,19.29 < 15 |only if walking
Follow the path |goto 51.78,22.52 < 20 |only if walking
talk Nightsaber Rider##33359
Tell her _"I'd like to travel to the Ruins of Mathystra."_
Begin Riding to the Ruins of Mathystra |invehicle |goto 52.22,22.28 |q 13589
step
Ride to the Ruins of Mathystra |goto 58.70,20.05 < 20 |q 13589 |notravel
step
talk Lieutenant Morra Starbreeze##32963
turnin The Shatterspear Invaders##13589 |goto 58.91,19.45
step
talk Sentinel Tysha Moonblade##32965
accept Shatterspear Laborers##13504 |goto 58.90,19.42
step
talk Balthule Shadowstrike##32966
accept Remnants of the Highborne##13505 |goto 58.88,19.53
stickystart "Kill_Shatterspear_Laborers"
stickystart "Collect_Highborne_Relics"
step
Follow the path up |goto 59.16,19.89 < 15 |only if walking
Follow the path |goto 59.42,20.20 < 20 |only if walking
Follow the path |goto 59.66,21.03 < 20 |only if walking
Continue following the path |goto 60.37,21.11 < 20 |only if walking
kill Shatterspear Overseer##32863
|tip They look like trolls with spiked shoulders that walk around this area.
|tip You will automatically accept this quest after looting him.
accept Reason to Worry##13506 |goto 60.59,20.19
step
label "Kill_Shatterspear_Laborers"
Follow the path down |goto 60.35,19.91 < 20 |only if walking
kill 10 Shatterspear Laborer##32861 |q 13504/1 |goto 60.29,19.06
step
label "Collect_Highborne_Relics"
click Highborne Relic##194090
|tip They look like white stone objects on the ground around this area.
collect 8 Highborne Relic##44830 |q 13505/1 |goto 60.29,19.06
step
Follow the path |goto 59.91,19.20 < 20 |only if walking
Follow the path down |goto 59.38,19.16 < 20 |only if walking
talk Sentinel Tysha Moonblade##32965
turnin Shatterspear Laborers##13504 |goto 58.89,19.41
step
talk Balthule Shadowstrike##32966
turnin Remnants of the Highborne##13505 |goto 58.88,19.53
step
talk Lieutenant Morra Starbreeze##32963
turnin Reason to Worry##13506 |goto 58.91,19.44
accept Swift Response##13508 |goto 58.91,19.44
accept War Supplies##13509 |goto 58.91,19.44
step
talk Sentinel Tysha Moonblade##32965
accept Denying Manpower##13507 |goto 58.89,19.41
stickystart "Kill_Horde_Enforcers"
stickystart "Kill_Shatterspear_Mystics"
step
Follow the path up |goto 58.78,18.96 < 15 |only if walking
Follow the path |goto 58.39,18.33 < 20 |only if walking
Continue following the path |goto 59.38,16.29 < 20 |only if walking
Follow the path |goto 61.56,12.64 < 20 |only if walking
Follow the path |goto 61.78,10.88 < 20 |only if walking
Use the Sentinel Torch near Shatterspear Armaments |use Sentinel Torch##44999
|tip They look like brown wooden crates on the ground around this area.
Burn #12# Shatterspear Armaments |q 13509/1 |goto 62.07,10.13
step
label "Kill_Horde_Enforcers"
kill 6 Horde Enforcer##32859 |q 13507/1 |goto 62.07,10.13
step
label "Kill_Shatterspear_Mystics"
kill 6 Shatterspear Mystic##34248 |q 13507/2 |goto 62.07,10.13
step
Follow the path |goto 62.19,9.86 < 20 |only if walking
Follow the path |goto 63.40,7.86 < 20 |only if walking
talk Alanndarian Nightsong##33055
turnin Swift Response##13508 |goto 63.75,5.98
accept One Bitter Wish##13511 |goto 63.75,5.98
stickystart "Collect_Shatterspear_Torturers_Cage_Key"
step
kill Rit'ko##32970 |q 13511/1 |goto 64.1,5.3
step
label "Collect_Shatterspear_Torturers_Cage_Key"
kill Rit'ko##32970
collect Shatterspear Torturer's Cage Key##45040 |goto 64.1,5.3 |q 13510 |future
step
click Shatterspear Cage##206830
talk Sentinel Aynasha##32964
accept Timely Arrival##13510 |goto 64.48,5.48
step
Follow the path |goto Darkshore/0 63.89,6.13 < 20 |only if walking
Follow the path |goto 63.35,7.93 < 20 |only if walking
Follow the path down |goto 62.17,8.54 < 20 |only if walking
Follow the path |goto 61.27,7.66 < 15 |only if walking
Follow the path |goto 60.32,6.81 < 15 |only if walking
Escort Sentinel Aynasha to the Dock |q 13510/1 |goto 60.22,6.93
|tip Follow Sentinel Aynasha as she runs.
|tip Let her run ahead and get attacked first, or else she won't stop and help you fight.
step
Follow the path |goto 58.72,9.07 < 20 |only if walking
Continue following the path |goto 58.60,12.37 < 30 |only if walking
Follow the path |goto 58.75,17.47 < 20 |only if walking
Follow the path |goto 59.18,18.69 < 20 |only if walking
talk Sentinel Tysha Moonblade##32965
turnin Denying Manpower##13507 |goto 58.9,19.4
step
talk Lieutenant Morra Starbreeze##32963
turnin One Bitter Wish##13511 |goto 58.91,19.45
turnin War Supplies##13509 |goto 58.91,19.45
turnin Timely Arrival##13510 |goto 58.91,19.45
accept Strategic Strikes##13512 |goto 58.91,19.45
step
talk Balthule Shadowstrike##32966
accept On the Brink##13513 |goto 58.88,19.53
step
talk Mathas Wildwood##34041
accept The Looting of Althalaxx##13844 |goto 59.14,19.61
stickystart "Collect_Shatterspear_Amulets"
step
Follow the path up |goto 59.20,19.95 < 15 |only if walking
Follow the path |goto 59.41,20.25 < 20 |only if walking
Follow the path |goto 59.81,21.11 < 20 |only if walking
Continue following the path |goto 60.38,21.05 < 20 |only if walking
Run down the stairs |goto 60.93,20.23 < 10 |walk
Follow the path |goto 60.97,20.69 < 10 |walk
Run down the stairs |goto 61.14,20.79 < 10 |walk
Use the Dryad Spear on Sheya Stormweaver |use Dryad Spear##44995
|tip She's floating above the water nearby in a blue cyclone.
|tip Throw your spear at her and then hide behind a stone pillar when she casts her spells, so you don't get hit.
|tip Keep alternating between throwing your spear at her and hiding.
kill Sheya Stormweaver##32869 |q 13512/2 |goto 61.44,20.67
step
label "Collect_Shatterspear_Amulets"
Run up the stairs |goto 61.31,20.82 < 7 |walk
Follow the path |goto 61.01,20.75 < 10 |walk
Run up the stairs |goto 60.93,20.47 < 7 |walk
kill Shatterspear Shaman##32860+
collect 6 Shatterspear Amulet##44942 |q 13513/1 |goto 60.86,20.17
step
Follow the path |goto 60.28,21.16 < 20 |only if walking
Follow the path |goto 59.18,21.12 < 20 |only if walking
Follow the path up |goto 59.12,23.41 < 20 |only if walking
Continue up the path |goto 58.88,24.40 < 15 |only if walking
Run up the stairs |goto 58.57,24.42 < 10 |only if walking
Enter the building |goto 58.43,24.24 < 10 |walk
kill Teegan Holloway##34033 |q 13844/1 |goto 58.11,23.87
|tip He walks around inside this broken tower.
step
click Charred Book##194787
|tip Laying on the floor upstairs inside the broken tower.
collect Narassin's Tome##45944 |q 13844/2 |goto 58.28,23.97
step
Jump down out of the tower |goto 57.99,24.08 < 10 |walk
Follow the path |goto 57.50,24.35 < 20 |only if walking
Use the Dryad Spear on Lorenth Thundercall |use Dryad Spear##44995
|tip Standing on a big stump.
|tip Use the Dryad Spear and move away to the side when he casts his lightning spell.
|tip Keep using the Dryad Spear on him and moving to avoid his spell.
kill Lorenth Thundercall##32868 |q 13512/1 |goto 56.69,25.98
step
Jump down here |goto 56.62,24.41 < 15 |only if walking
Follow the path |goto 56.18,22.53 < 20 |only if walking
Follow the path |goto 57.64,20.11 < 20 |only if walking
Follow the path down |goto 58.48,19.61 < 20 |only if walking
talk Lieutenant Morra Starbreeze##32963
turnin Strategic Strikes##13512 |goto 58.91,19.45
step
talk Balthule Shadowstrike##32966
turnin On the Brink##13513 |goto 58.88,19.53
step
talk Lieutenant Morra Starbreeze##32963
accept The Front Line##13590 |goto 58.91,19.45
step
talk Mathas Wildwood##34041
turnin The Looting of Althalaxx##13844 |goto 59.13,19.61
step
talk Nightsaber Rider##33359
Tell her _"I'd like to travel to Shatterspear Vale."_
Begin Riding to Shatterspear Vale |invehicle |goto 58.58,20.00 |q 13590
step
Ride to Shatterspear Vale |goto 69.09,19.16 < 20 |q 13590 |notravel
step
talk Kerlonian Evershade##33176
accept The Ancients' Ire##13514 |goto 69.09,19.25
step
clicknpc Vengeful Protector##43742
Ride on the Vengeful Protector |invehicle |goto 69.53,18.77 |q 13514
stickystart "Destroy_Shatterspear_Structures"
step
Kill Shatterspear enemies around this area
|tip Use the abilities on your action bar near the trolls around this area.
Slay #30# Shatterspear Vale Trolls |q 13514/1 |goto 70.3,20.1
step
label "Destroy_Shatterspear_Structures"
Destroy #6# Shatterspear Structures |q 13514/2 |goto 70.3,20.1
|tip Use the abilities on your action bar near the troll buildings around this area.
step
Stop Riding on the Vengeful Protector |outvehicle |goto 69.5,18.8 |q 13514
|tip Go to this spot first.
|tip Click the red arrow on your action bar.
step
talk Kerlonian Evershade##33176
turnin The Ancients' Ire##13514 |goto 69.09,19.25
step
Follow the path up |goto 70.16,20.00 < 20 |only if walking
Cross the bridge |goto 70.52,20.27 < 15 |only if walking
Follow the path up |goto 71.08,19.40 < 15 |only if walking
Follow the path up |goto 71.61,18.82 < 20 |only if walking
talk Huntress Sandrya Moonfall##33178
turnin The Front Line##13590 |goto 72.28,19.09
accept Ending the Threat##13515 |goto 72.28,19.09
step
talk Huntress Sandrya Moonfall##33178
Tell her _"I am ready. Begin the attack."
Follow Huntress Sandrya Moonfall into Battle |goto 72.28,19.09 > 10 |noway |c |q 13515
stickystart "Accept_Disturbing_Connections"
step
Follow the path |goto Darkshore/0 72.44,18.69 < 10 |walk
kill Jor'kil the Soulripper##32862 |q 13515/1 |goto 72.84,18.07
step
label "Accept_Disturbing_Connections"
kill Jor'kil the Soulripper##32862 |q 13515/1
|tip You will automatically accept this quest after looting him.
accept Disturbing Connections##13591 |goto 72.84,18.07
step
Follow the path |goto 72.43,18.71 < 10 |walk
talk Huntress Sandrya Moonfall##33178
|tip She will be where she was at when you killed Jor'kil the Soulripper.
turnin Ending the Threat##13515 |goto 72.28,19.09
step
Leave the building |goto 50.65,18.97 < 10 |walk
talk Ranger Glynda Nal'Shea##32971
turnin Disturbing Connections##13591 |goto 50.67,19.73
step
talk Cerellean Whiteclaw##32959
accept Remembrance of Auberdine##13570 |goto 50.13,19.46 |instant
step
talk Sentinel Lendra##32912
accept The Twilight's Hammer##13519 |goto 50.31,20.34
accept Twilight Plans##13596 |goto 50.31,20.34
step
Cross the bridge |goto 50.35,20.71 < 10 |only if walking
Follow the path |goto 49.43,22.21 < 20 |only if walking
Follow the path |goto 49.63,22.55 < 20 |only if walking
Cross the bridge |goto 50.43,22.53 < 15 |only if walking
talk Nightsaber Rider##33359
Tell her _"I'd like to travel to the Bashal'Aran."_
Begin Riding to the Bashal'Aran |invehicle |goto 51.03,22.74 |q 13519
step
Ride to the Bashal'Aran |goto 46.86,33.16 < 20 |q 13519 |notravel
stickystart "Kill_Twilight_Fanatics"
stickystart "Collect_Twilight_Plans"
step
Follow the path down |goto 45.58,31.71 < 20 |only if walking
talk Moon Priestess Tharill##32932
accept Power Over the Tides##13523 |goto 44.58,30.78
stickystart "Soothe_Tidal_Spirits"
step
Follow the path |goto 44.11,31.55 < 15 |only if walking
kill High Cultist Azerynn##32899 |q 13519/1 |goto 43.66,31.37
step
label "Soothe_Tidal_Spirits"
Follow the path |goto 44.16,31.47 < 15 |only if walking
kill Enraged Tidal Spirit##32890+
Use the Orb of Elune on their corpses |use Orb of Elune##44975
Soothe #6# Tidal Spirits |q 13523/1 |goto 44.29,28.64
step
Follow the path |goto 44.29,28.64 < 30 |only if walking
talk Moon Priestess Tharill##32932
turnin Power Over the Tides##13523 |goto 44.58,30.78
step
label "Kill_Twilight_Fanatics"
Follow the path up |goto 43.97,31.66 < 15 |only if walking
kill 10 Twilight Fanatic##32888 |q 13519/2 |goto 43.60,32.30
step
label "Collect_Twilight_Plans"
click Twilight Plans##194204
|tip They look like white unrolled scrolls on the ground and on objects around this area.
collect 6 Twilight Plans##44968 |q 13596/1 |goto 43.60,32.30
step
Leave the building |goto 50.64,18.98 < 10 |walk
talk Sentinel Lendra##32912
turnin The Twilight's Hammer##13519 |goto 50.32,20.33
turnin Twilight Plans##13596 |goto 50.32,20.33
accept In Aid of the Refugees##13601 |goto 50.32,20.33
step
Cross the bridge |goto 50.35,20.71 < 10 |only if walking
Follow the path |goto 49.43,22.21 < 20 |only if walking
Follow the path |goto 49.63,22.55 < 20 |only if walking
Cross the bridge |goto 50.43,22.53 < 15 |only if walking
talk Nightsaber Rider##33359
Tell her _"I'd like to travel to the Bashal'Aran."_
Begin Riding to the Bashal'Aran |invehicle |goto 51.03,22.74 |q 13601
step
Ride to the Bashal'Aran |goto 46.86,33.16 < 20 |q 13601 |notravel
step
Follow the path |goto 45.39,33.24 < 20 |only if walking
Follow the path down |goto 44.40,37.24 < 20 |only if walking
Follow the path up |goto 44.11,38.53 < 15 |only if walking
Follow the path |goto 43.89,38.75 < 20 |only if walking
Follow the road |goto 43.92,40.35 < 20 |only if walking
Follow the path up |goto 42.81,41.89 < 15 |only if walking
Follow the path up |goto 42.57,44.17 < 20 |only if walking
talk Priestess Alinya##33107
|tip She walks around this small area.
turnin In Aid of the Refugees##13601 |goto 42.59,45.15
step
talk Sentinel Selarin##3694
accept Against the Wind##13542 |goto 42.51,45.16
step
talk Corvine Moonrise##32987
accept Three Hammers to Break##13543 |goto 42.68,45.15
accept Malfurion's Return##13573 |goto 42.68,45.15
stickystart "Collect_Frenzied_Cyclone_Bracers"
step
Follow the path |goto 41.45,45.07 < 20 |only if walking
Follow the path up |goto 40.47,43.80 < 15 |only if walking
Follow the path |goto 40.19,43.73 < 15 |only if walking
Follow the path |goto 39.17,43.77 < 20 |only if walking
talk Yalda##6887
accept Coaxing the Spirits##13547 |goto 39.08,43.21
step
Follow the path up |goto 38.33,43.44 < 10 |only if walking
talk Caylais Moonfeather##33037
Choose _"Coax the spirit out of Caylais Moonfeather's still corpse."_
Coax Caylais Moonfeather's Spirit |q 13547/4 |goto 38.11,43.95
step
Follow the path |goto 37.99,43.40 < 20 |only if walking
kill Windmaster Tzu-Tzu##32989 |q 13543/2 |goto 37.85,42.75
step
Enter the building |goto 38.26,42.80 < 10 |walk
talk Taldan##33035
Choose _"Coax Taldan's corpse to give up its spirit."_
Coax Taldan's Spirit |q 13547/3 |goto 38.54,41.89
step
Leave the building |goto 38.85,41.92 < 10 |walk
Follow the path |goto 39.46,41.86 < 15 |only if walking
Enter the building |goto 40.69,41.55 < 10 |walk
talk Sentinel Elissa Starbreeze##33033
|tip Inside the building.
Choose _"Coax the spirit out of Sentinel Elissa Starbreeze's corpse."_
Coax Sentinel Elissa Starbreeze's Spirit |q 13547/2 |goto 40.97,41.40
step
Run up the ramp |goto 41.08,41.24 < 7 |walk
Continue up the ramp |goto 41.01,41.05 < 7 |walk
Follow the path |goto 40.91,41.18 < 7 |walk
kill Cloudtamer Wildmane##32988 |q 13543/1 |goto 40.80,41.49
|tip Upstairs inside the building.
step
Follow the path |goto 40.49,41.34 < 15 |only if walking
Run up the ramp |goto 40.17,40.46 < 15 |only if walking
Follow the path |goto 39.96,39.98 < 15 |only if walking
Enter the building |goto 39.41,39.35 < 10 |walk
talk Thundris Windweaver##33001
|tip Inside this building.
Choose _"Coax Thundris Windweaver's spirit."_
Coax Thundris Windweaver's Spirit |q 13547/1 |goto 39.30,38.92
step
kill Skylord Braax##32990 |q 13543/3 |goto 39.14,38.29
|tip Inside the building.
step
label "Collect_Frenzied_Cyclone_Bracers"
Leave the building |goto 39.40,39.32 < 10 |walk
kill Frenzied Cyclone##32985+
collect 8 Frenzied Cyclone Bracers##44868 |q 13542 |goto 39.63,39.87
step
Follow the path down |goto 39.69,40.12 < 20 |only if walking
Follow the path up |goto 39.73,41.37 < 15 |only if walking
Follow the path up |goto 40.18,41.48 < 15 |only if walking
Use the Frenzied Cyclone Bracers in the water |use Frenzied Cyclone Bracers##44868
Destroy #8# Frenzied Cyclone Bracers |q 13542/1 |goto 39.5,42.1
step
talk Yalda##6887
turnin Coaxing the Spirits##13547 |goto 39.08,43.21
accept Call Down the Thunder##13558 |goto 39.08,43.21
step
Follow the path |goto 38.44,43.04 < 15 |only if walking
Follow the path |goto 38.06,42.79 < 15 |only if walking
Follow the path |goto 36.22,41.43 < 20 |only if walking
Run up the ramp |goto 36.20,40.68 < 15 |only if walking
click Aetherion Ritual Orb##194145
Watch the dialogue
kill Aetherion##33041
collect Aetherion's Essence##44929 |q 13558/1 |goto 36.53,41.00
step
Follow the path |goto 36.85,41.18 < 15 |only if walking
Enter the building |goto 38.07,41.92 < 15 |walk
Follow the path up |goto 38.38,41.98 < 7 |walk
Follow the path |goto 38.61,42.18 < 7 |walk
talk Archaeologist Hollee##33232
|tip Upstairs inside the building.
accept The Last Refugee##13605 |goto 38.58,42.45
step
Watch the dialogue
|tip Follow Archaeologist Hollee and protect her.
Escort Archaeologist Hollee to Safety |q 13605/1
step
Follow the path |goto 41.90,44.96 < 20 |only if walking
talk Sentinel Selarin##3694
turnin Against the Wind##13542 |goto 42.51,45.15
step
talk Elisa Steelhand##33231
turnin The Last Refugee##13605 |goto 42.59,45.29
step
talk Corvine Moonrise##32987
turnin Three Hammers to Break##13543 |goto 42.68,45.15
turnin Call Down the Thunder##13558 |goto 42.68,45.15
step
Follow the road |goto 41.64,46.52 < 20 |only if walking
Follow the path up |goto 43.32,51.37 < 15 |only if walking
Continue up the path |goto 44.23,52.30 < 15 |only if walking
talk Malfurion Stormrage##33091
turnin Malfurion's Return##13573 |goto 43.66,53.44
accept The Land Is in Their Blood##13575 |goto 43.66,53.44
accept The Last Wildkin##13577 |goto 43.66,53.44
accept Protector of Ameth'Aran##13579 |goto 43.66,53.44
step
Follow the path down |goto 44.21,52.53 < 15 |only if walking
Continue down the path |goto 43.98,51.87 < 15 |only if walking
Follow the path |goto 43.23,50.97 < 15 |only if walking
Follow the path |goto 44.25,48.88 < 20 |only if walking
Enter the cave |goto 45.15,48.58 < 10 |walk
talk Aroom##33119
|tip Inside the small cave.
turnin The Last Wildkin##13577 |goto 45.58,48.47
accept Aroom's Farewell##13578 |goto 45.58,48.47
step
Leave the cave |goto 45.10,48.60 < 10 |walk
click Slain Wildkin Feather##195007
|tip They look like brown and white feathers on the ground around this area.
collect 8 Slain Wildkin Feather##44960 |q 13578/1 |goto 44.1,48.5
step
Follow the path |goto 44.48,48.60 < 20 |only if walking
Enter the cave |goto 45.15,48.58 < 10 |walk
talk Aroom##33119
|tip Inside the small cave.
turnin Aroom's Farewell##13578 |goto 45.58,48.47
accept Elune's Fire##13582 |goto 45.58,48.47
step
Leave the cave |goto 45.07,48.61 < 10 |walk
Follow the path |goto 44.63,48.89 < 15 |only if walking
Follow the path |goto 44.95,49.48 < 15 |only if walking
kill Horoo the Flamekeeper##34385
|tip He looks like a white owlkin that walks around this area.
collect Elune's Torch##46692 |q 13582/1 |goto 46.6,50.7
step
Follow the path |goto 46.12,50.50 < 20 |only if walking
Follow the path |goto 44.91,49.49 < 15 |only if walking
Follow the path |goto 44.48,48.60 < 20 |only if walking
Enter the cave |goto 45.15,48.58 < 10 |walk
talk Aroom##33119
|tip Inside the small cave.
turnin Elune's Fire##13582 |goto 45.58,48.47
accept The Wildkin's Oath##13583 |goto 45.58,48.47
step
Leave the cave |goto 45.04,48.60 < 10 |walk
Follow the path |goto 44.27,48.69 < 20 |only if walking
Continue following the path |goto 42.38,52.48 < 20 |only if walking
Continue following the path |goto 41.09,54.86 < 20 |only if walking
talk Elder Brownpaw##33117
turnin The Land Is in Their Blood##13575 |goto 40.94,56.48
accept Mutual Aid##13576 |goto 40.94,56.48
step
Follow the path |goto 41.01,57.14 < 20 |only if walking
kill Unbound Fire Elemental##32999+
Use the Soothing Totem on their corpses |use Soothing Totem##44959
Absorb #8# Unbound Fire Elementals |q 13576/1 |goto 40.55,59.90
step
Follow the path |goto 40.87,58.93 < 20 |only if walking
talk Elder Brownpaw##33117
turnin Mutual Aid##13576 |goto 40.94,56.48
accept Soothing the Elements##13580 |goto 40.94,56.48
step
Follow the path |goto 39.87,57.23 < 20 |only if walking
Jump down here |goto 38.65,59.08 < 20 |only if walking
Follow the path up |goto 38.39,59.92 < 15 |only if walking
Use the Energized Soothing Totem |use Energized Soothing Totem##46546
Kill the enemies that attack in waves
Complete the Ritual of Soothing |q 13580/1 |goto 39.7,62.4
step
Follow the path down |goto 39.35,62.04 < 15 |only if walking
Follow the path |goto 38.39,59.85 < 20 |only if walking
Follow the path up |goto 38.52,58.99 < 7 |only if walking
Follow the path |goto 38.75,58.93 < 15 |only if walking
Follow the path |goto 39.94,57.18 < 20 |only if walking
talk Elder Brownpaw##33117
turnin Soothing the Elements##13580 |goto 40.94,56.48
accept The Blackwood Pledge##13581 |goto 40.94,56.48
step
Follow the path up |goto 41.58,56.16 < 20 |only if walking
Follow the path |goto 42.77,55.45 < 20 |only if walking
Follow the path up |goto 43.84,56.14 < 15 |only if walking
talk Selenn##33112
turnin Protector of Ameth'Aran##13579 |goto 44.43,56.75
accept Calming the Earth##13584 |goto 44.43,56.75
step
kill 8 Enraged Earth Elemental##33083 |q 13584/1 |goto 44.60,57.99
step
talk Selenn##33112
turnin Calming the Earth##13584 |goto 44.43,56.75
accept Sworn to Protect##13585 |goto 44.43,56.75
step
Follow the path up |goto 43.70,55.36 < 20 |only if walking
Continue up the path |goto 43.43,54.80 < 15 |only if walking
Follow the path |goto 43.43,54.28 < 15 |only if walking
talk Malfurion Stormrage##33091
turnin The Blackwood Pledge##13581 |goto 43.66,53.44
turnin The Wildkin's Oath##13583 |goto 43.66,53.44
turnin Sworn to Protect##13585 |goto 43.66,53.44
accept The Emerald Dream##13586 |goto 43.66,53.44
step
Follow the path down |goto 44.38,54.33 < 15 |only if walking
Jump down here |goto 44.90,54.45 < 15 |only if walking
Follow the path |goto 45.29,54.67 < 15 |only if walking
Follow the path up |goto 46.47,54.29 < 7 |only if walking
Follow the path |goto 46.85,54.69 < 10 |only if walking
Follow the path |goto 46.82,55.76 < 10 |only if walking
Enter the cave |goto 47.16,56.04 < 10 |walk
Follow the path |goto 47.71,55.80 < 10 |walk
Continue following the path |goto 48.29,56.03 < 10 |walk
Jump down here |goto 48.82,55.82 < 10 |walk
Follow the path up |goto 48.89,56.44 < 10 |walk
Continue up the path |goto 49.44,56.40 < 10 |walk
clicknpc Nightmare Portal##38430
Enter the Nightmare World |havebuff 134218 |goto 49.01,57.07 |q 13586
step
talk Thessera##33166
|tip Inside the cave in the nightmare world.
turnin The Emerald Dream##13586 |goto 49.21,56.94
accept The Waking Nightmare##13587 |goto 49.21,56.94
step
Follow the path down |goto 49.37,56.69 < 10 |walk
Continue down the path |goto 49.37,56.28 < 10 |walk
Follow the path |goto 48.74,56.25 < 10 |walk
kill Nightmare Guardian##34398
|tip He walks along this path inside the cave in the nightmare world.
collect Emerald Scroll##46695 |q 13587/1 |goto 49.27,55.80
step
Follow the path up |goto 48.89,56.44 < 10 |walk
Continue up the path |goto 49.44,56.40 < 10 |walk
talk Thessera##33166
turnin The Waking Nightmare##13587 |goto 49.21,56.94
accept Leaving the Dream##13940 |goto 49.21,56.94
step
Return to Malfurion Stormrage |goto 43.74,53.83 < 20 |c |notravel |q 13940
step
talk Malfurion Stormrage##33091
turnin Leaving the Dream##13940 |goto 43.66,53.44
accept The Eye of All Storms##13588 |goto 43.66,53.44
step
clicknpc Thessera##33166
Ride Thessera |invehicle |goto 43.54,53.71 |q 13588
stickystart "Kill_Twilight_Riders"
step
_While Riding Thessera:_
kill Twilight Portal##34316+ |q 13588/1
|tip Use the ability on your action bar.
|tip They look like big purple portals in the sky around this area.
step
label "Kill_Twilight_Riders"
_While Riding Thessera:_
kill 12 Twilight Rider##34282+ |q 13588/2
|tip Use the ability on your action bar.
|tip They are flying around in the sky.
step
Return to Malfurion Stormrage |outvehicle |q 13588
|tip Use the Land Thessera ability on your action bar.
step
talk Malfurion Stormrage##33091
turnin The Eye of All Storms##13588 |goto 43.66,53.44
accept Mounting the Offensive##13902 |goto 43.66,53.44
step
Jump down here |goto 43.27,54.54 < 10 |only if walking
Follow the road |goto 42.40,55.64 < 20 |only if walking
Continue following the road |goto 41.86,57.83 < 20 |only if walking
Continue following the road |goto 41.91,62.44 < 20 |only if walking
Follow the path up |goto 41.99,66.00 < 10 |only if walking
Follow the path |goto 41.99,66.36 < 15 |only if walking
Follow the path up |goto 42.39,67.48 < 10 |only if walking
Follow the path |goto 42.70,67.72 < 15 |only if walking
Follow the path up |goto 42.87,69.76 < 10 |only if walking
Continue up the path |goto 42.56,70.28 < 7 |only if walking
Continue up the path |goto 42.89,70.27 < 7 |only if walking
Follow the path |goto 42.87,70.78 < 10 |only if walking
Cross the bridge |goto 42.87,71.68 < 15 |only if walking
Cross the bridge |goto 43.00,73.29 < 15 |only if walking
Follow the path |goto 43.42,74.49 < 20 |only if walking
Follow the path |goto 44.68,75.05 < 20 |only if walking
talk Foriel Broadleaf##33250
accept What's Happening to the Blackwood Furbolg?##13525 |goto 45.14,75.19
step
talk Balren of the Claw##34402
turnin Mounting the Offensive##13902 |goto 45.30,75.13
accept Leave No Tracks##13892 |goto 45.30,75.13
step
talk Kathrena Winterwisp##34301
accept Consumed##13881 |goto 45.20,74.62
step
Follow the path |goto 45.00,74.99 < 15 |only if walking
talk Delanea##33253
fpath Grove of the Ancients |goto 44.41,75.47
stickystart "Kill_Consumed_Thistle_Bears"
step
Investigate the Watering Hole |q 13881/2 |goto 45.0,79.2
|tip Underwater.
step
label "Kill_Consumed_Thistle_Bears"
kill 6 Consumed Thistle Bear##34302 |q 13881/1 |goto 44.7,79.4
step
Follow the path |goto 44.29,79.46 < 20 |only if walking
Follow the path |goto 43.58,80.79 < 10 |only if walking
talk Elder Brolg##32967
turnin What's Happening to the Blackwood Furbolg?##13525 |goto 43.52,81.01
accept The Bear's Paw##13526 |goto 43.52,81.01
step
Follow the path |goto 43.59,80.77 < 7 |only if walking
click Bear's Paw##194100
|tip They look like small bushy green plants on the ground around this area.
collect 8 Bear's Paw##44850 |q 13526/1 |goto 44.15,81.02
step
Follow the path |goto 43.58,80.79 < 10 |only if walking
talk Elder Brolg##32967
turnin The Bear's Paw##13526 |goto 43.52,81.01
accept The Bear's Blessing##13544 |goto 43.52,81.01
step
Follow the path |goto 43.60,80.78 < 7 |only if walking
Follow the path |goto 44.50,78.63 < 15 |only if walking
kill Fleetfoot##32997
|tip It looks like a plainstrider that walks around this area.
collect Fleetfoot's Tailfeathers##44886 |q 13544 |goto 45.25,78.38
step
Use the Bear's Paw Bundle |use Bear's Paw Bundle##44888
|tip Use it in front of the Ancient Bear Statue.
collect Blessed Herb Bundle##44887 |q 13544/1 |goto 45.31,76.77
step
Follow the path |goto 45.30,76.34 < 10 |only if walking
Follow the path |goto 45.21,75.50 < 10 |only if walking
talk Kathrena Winterwisp##34301
turnin Consumed##13881 |goto 45.20,74.62
accept The Seeds of Life##13882 |goto 45.20,74.62
step
talk Onu##33072
Ask him _"Ancient Onu, where may I find a Seed of the Earth?"_
collect Seed of the Earth##46354 |q 13882/1 |goto 45.40,74.86
step
Follow the path |goto 44.88,74.99 < 20 |only if walking
Follow the road |goto 43.39,75.57 < 20 |only if walking
Follow the path |goto 43.12,79.39 < 15 |only if walking
clicknpc Darkshore Wisp##34306
|tip They look like blue balls of light flying in the air around this area.
|tip Stand next to the tree and wait until it flies down and floats towards the ground, so you can reach it.
collect Seed of the Sky##46355 |q 13882/3 |goto 42.1,79.0
step
Follow the path |goto 42.70,79.43 < 15 |only if walking
Follow the path |goto 43.41,80.92 < 10 |only if walking
talk Elder Brolg##32967
turnin The Bear's Blessing##13544 |goto 43.52,81.01
accept Cleansing the Afflicted##13545 |goto 43.52,81.01
step
talk Gren Tornfur##32968
accept Jadefire Braziers##13572 |goto 43.58,81.02
stickystart "Destroy_Jadefire_Braziers"
step
Follow the path |goto 43.60,80.78 < 7 |only if walking
Follow the path |goto 43.76,80.66 < 10 |only if walking
Use the Blessed Herb Bundle on Blackwood enemies |use Blessed Herb Bundle##44889
kill Spirit of Corruption##33000+
|tip You don't have to kill the furbolgs, they will become friendly after you cleanse them.
Cleanse #7# Blackwood Furbolgs |q 13545/1 |goto 44.1,82.5
step
label "Destroy_Jadefire_Braziers"
click Jadefire Brazier##194150
|tip They look like metal bowls with green fire in them in wooden stands on the ground around this area.
Destroy #8# Jadefire Braziers |q 13572/1 |goto 44.1,82.5
step
Follow the path |goto 43.76,80.66 < 15 |only if walking
Follow the path |goto 43.60,80.78 < 7 |only if walking
talk Elder Brolg##32967
turnin Cleansing the Afflicted##13545 |goto 43.52,81.01
accept The Defiler##13546 |goto 43.52,81.01
step
talk Gren Tornfur##32968
turnin Jadefire Braziers##13572 |goto 43.58,81.02
step
Follow the path |goto 43.59,80.77 < 7 |only if walking
Follow the path |goto 43.84,80.64 < 15 |only if walking
Follow the path up |goto 44.98,81.96 < 15 |only if walking
Follow the path up |goto 45.44,83.12 < 15 |only if walking
Enter the cave |goto 46.33,83.65 < 10 |walk
kill Sharax the Defiler##32996+ |q 13546/1 |goto 46.78,84.02
|tip Inside the small cave.
step
Leave the cave |goto 46.28,83.63 < 10 |walk
Follow the path |goto 45.42,83.09 < 15 |only if walking
Follow the path |goto 44.98,81.90 < 15 |only if walking
Follow the path |goto 43.76,80.66 < 15 |only if walking
Follow the path |goto 43.60,80.78 < 7 |only if walking
talk Elder Brolg##32967
turnin The Defiler##13546 |goto 43.52,81.01
step
Follow the path |goto 43.38,80.92 < 7 |only if walking
Follow the road |goto 43.01,80.87 < 15 |only if walking
Use the Panther Figurine |use Panther Figurine##46696
|tip If you have a pet, dismiss it first.
Become a Stealted Panther |havebuff 132115 |goto 42.4,82.3 |q 13892
step
Follow the path |goto 41.80,83.29 < 20 |only if walking
Watch the dialogue
|tip Avoid the Faceless Ones, they can see through your panther disguise stealth.
Complete the Twilight's Hammer Surveillance |q 13892/1 |goto 40.6,84.5
step
Click the Complete Quest Box:
turnin Leave No Tracks##13892
accept Stepping Up Surveillance##13948
step
Follow the path |goto 39.38,82.99 < 20 |only if walking
Follow the path |goto 38.45,80.20 < 20 |only if walking
click Glittering Shell##195021
|tip They look like white clams on the ground around this area.
collect Seed of the Sea##46356 |q 13882/2 |goto 38.6,78.2
step
Follow the path |goto 38.35,80.15 < 20 |only if walking
Follow the path |goto 38.89,82.87 < 20 |only if walking
Use the Panther Figurine |use Panther Figurine##46696
|tip If you have a pet, dismiss it first.
Become a Stealted Panther |havebuff 132115 |goto 38.94,85.63 |q 13948
step
Follow the path up |goto 39.74,86.43 < 15 |only if walking
Follow the path |goto 40.42,87.04 < 15 |only if walking
Follow the path down |goto 41.15,86.18 < 15 |only if walking
Follow the path |goto 41.24,85.75 < 15 |only if walking
Run up the ramp |goto 41.14,85.41 < 10 |only if walking
Continue up the ramp |goto 40.83,85.05 < 10 |only if walking
Continue up the ramp |goto 40.33,85.11 < 10 |only if walking
Continue up the ramp |goto 40.04,85.45 < 10 |only if walking
Follow the path |goto 39.81,85.35 < 10 |only if walking
Watch the dialogue
|tip Avoid the Faceless Ones, they can see through your panther disguise stealth.
Complete the Master's Glaive Surveillance |q 13948/1 |goto 39.96,84.81
step
Leave the building |goto 51.34,18.64 < 10 |walk
Run up the ramp |goto 51.59,18.48 < 7 |only if walking
Follow the path |goto 44.64,75.03 < 15 |only if walking
talk Kathrena Winterwisp##34301
turnin The Seeds of Life##13882 |goto 45.20,74.62
accept An Ounce of Prevention##13925 |goto 45.20,74.62
step
talk Balren of the Claw##34402
turnin Stepping Up Surveillance##13948 |goto 45.30,75.14
step
talk Larien##34404
accept Unearthed Knowledge##13896 |goto 45.32,75.06
step
Follow the path |goto 44.98,75.02 < 15 |only if walking
Continue following the path |goto 44.34,75.09 < 20 |only if walking
Continue following the path |goto 43.40,75.59 < 20 |only if walking
Continue following the path |goto 42.42,76.57 < 20 |only if walking
Use the Lifebringer Sapling on a Grizzled Thistle Bear |use Lifebringer Sapling##46363
|tip It will not work on Consumed Thistle Bears.
Test the Lifebringer Sapling |q 13925/1 |goto 40.93,76.85
step
Follow the path |goto 42.47,76.42 < 20 |only if walking
Continue following the path |goto 43.58,75.45 < 20 |only if walking
Continue following the path |goto 44.87,75.00 < 20 |only if walking
talk Kathrena Winterwisp##34301
turnin An Ounce of Prevention##13925 |goto 45.20,74.62
accept In Defense of Darkshore##13885 |goto 45.20,74.62
step
Follow the path |goto 45.01,75.00 < 15 |only if walking
talk Orseus##34392
Tell him _"Orseus, Katharena sent me to borrow one of your Hippogryphs."_
Borrow a Hippogryph |invehicle |goto 44.48,75.35 |q 13885
stickystart "Protect_Moonstalkers"
stickystart "Protect_Grizzled_Thistle_Bears"
step
_While Riding the Hippogryph:_
|tip Use the Protect Wildlife ability on your action bar on Whitetail Deer on the ground.
Protect #8# Whitetail Deer |q 13885/3 |goto 44.5,75.3
step
label "Protect_Moonstalkers"
_While Riding the Hippogryph:_
|tip Use the Protect Wildlife ability on your action bar on Moonstalkers on the ground.
Protect #8# Moonstalkers |q 13885/2 |goto 44.5,75.3
step
label "Protect_Grizzled_Thistle_Bears"
_While Riding the Hippogryph:_
|tip Use the Protect Wildlife ability on your action bar on Grizzled Thistle Bears on the ground.
Protect #8# Grizzled Thistle Bears |q 13885/1 |goto 44.5,75.3
step
Return the Hippogryph |goto 44.23,75.16 < 20 |q 13885
|tip Wait for the Hippogryph to stop flying, you can't control it.
step
Follow the path |goto 44.87,75.00 < 20 |only if walking
talk Kathrena Winterwisp##34301
turnin In Defense of Darkshore##13885 |goto 45.20,74.62
accept The Devourer of Darkshore##13891 |goto 45.20,74.62
step
Follow the path |goto 45.21,75.45 < 10 |only if walking
Continue following the path |goto 45.18,76.16 < 15 |only if walking
Continue following the path |goto 45.05,76.95 < 15 |only if walking
Use the Lifebringer Sapling |use Lifebringer Sapling##46370
|tip Use it next to the lake.
kill Yoth'al the Devourer##34331
Destroy the Devouring Artifact |q 13891/1 |goto 45.1,78.7
step
Follow the path |goto 45.07,76.75 < 15 |only if walking
Follow the path |goto 45.22,75.50 < 10 |only if walking
talk Kathrena Winterwisp##34301
turnin The Devourer of Darkshore##13891 |goto 45.20,74.62
step
Follow the path |goto 45.01,75.00 < 15 |only if walking
Follow the path |goto 44.30,75.10 < 20 |only if walking
Follow the road |goto 43.40,75.66 < 20 |only if walking
Follow the path |goto 43.12,79.34 < 20 |only if walking
Continue following the path |goto 42.18,79.38 < 20 |only if walking
Continue following the path |goto 39.94,81.11 < 20 |only if walking
Continue following the path |goto 38.02,82.41 < 15 |only if walking
talk Archaeologist Groff##34340
|tip He walks around this small area.
turnin Unearthed Knowledge##13896 |goto 37.68,82.84
accept Soggoth and Kronn##13893 |goto 37.68,82.84
accept Sweeping Clean the Ruins##13907 |goto 37.68,82.84
step
talk Prospector Remtravel##34343
accept The Absent-Minded Prospector##13911 |goto 37.69,82.93
step
Watch the dialogue
|tip Follow him as he walks around.
Escort Prospector Remtravel |q 13911/1 |goto 37.69,82.93
step
talk Jr. Archaeologist Ferd##34342
turnin The Absent-Minded Prospector##13911 |goto 37.74,82.93
accept Swamped Secrets##13912 |goto 37.74,82.93
stickystart "Kill_Murloc_Squatters"
step
Follow the path |goto 37.36,82.44 < 15 |only if walking
Follow the path |goto 37.00,83.20 < 15 |only if walking
click Mud-Crusted Ancient Disc##195054
|tip Underwater.
collect Mud-Crusted Ancient Disc##46386 |q 13912/1 |goto 37.02,83.44
step
label "Kill_Murloc_Squatters"
Kill Greymist enemies around this area
Kill #10# Murloc Squatters |q 13907/1 |goto 37.02,83.44
step
Follow the path |goto 37.07,82.92 < 15 |only if walking
Follow the path up |goto 37.45,82.36 < 15 |only if walking
talk Archaeologist Groff##34340
|tip He walks around this small area.
turnin Sweeping Clean the Ruins##13907 |goto 37.67,82.84
accept Got Some Flotsam?##13909 |goto 37.67,82.84
step
talk Jr. Archaeologist Ferd##34342
turnin Swamped Secrets##13912 |goto 37.74,82.93
accept The Titans' Terminal##13918 |goto 37.74,82.93
stickystart "Collect_Salvageable_Greymist_Wreckage"
step
Use the Buried Artifact Detector |use Buried Artifact Detector##46388
click Buried Debris##195055
collect 5 Ancient Device Fragment##46702 |goto 36.33,81.05 |q 13918
step
Use the Ancient Device Fragment |use Ancient Device Fragment##46702
collect Ancient Slotted Device##46387 |q 13918/1
step
label "Collect_Salvageable_Greymist_Wreckage"
click Greymist Debris##195042
|tip They look like piles of brown wood on the ground, and wooden boards floating in the water around this area.
collect 5 Salvageable Greymist Wreckage##46384 |q 13909/1 |goto 36.33,81.05
step
Follow the path up |goto 37.13,81.58 < 20 |only if walking
talk Archaeologist Groff##34340
|tip He walks around this small area.
turnin Got Some Flotsam?##13909 |goto 37.67,82.84
accept A New Home##13910 |goto 37.67,82.84
step
talk Jr. Archaeologist Ferd##34342
turnin The Titans' Terminal##13918 |goto 37.74,82.93
step
Follow the path |goto 37.33,81.95 < 20 |only if walking
Use the Marvelous Mobile Murloc Manor Maker |use Marvelous Mobile Murloc Manor Maker##46385
Build the Greymist Murloc Home |q 13910/1 |goto 35.91,81.94
step
Follow the path |goto 37.25,81.79 < 20 |only if walking
talk Archaeologist Groff##34340
|tip He walks around this small area.
turnin A New Home##13910 |goto 37.67,82.84
step
Follow the path |goto 38.06,82.14 < 20 |only if walking
Follow the path |goto 40.56,79.73 < 20 |only if walking
Follow the road |goto 43.18,79.31 < 20 |only if walking
Follow the path |goto 43.49,75.41 < 20 |only if walking
Continue following the path |goto 44.72,75.04 < 20 |only if walking
talk Larien##34404
turnin Soggoth and Kronn##13893 |goto 45.32,75.06
step
talk Onu##33072
accept The Slumbering Ancients##13895 |goto 45.40,74.86
step
Follow the path |goto 45.45,74.46 < 7 |only if walking
Follow the path |goto 45.33,73.75 < 20 |only if walking
Cross the bridge |goto 45.67,72.64 < 15 |only if walking
talk Aros##34446
turnin The Slumbering Ancients##13895 |goto 45.67,71.67
step
talk Darkscale Assassin##34498
accept Naga In Our Midst##13953 |goto 45.59,71.65
step
Cross the bridge |goto 45.73,72.01 < 10 |only if walking
Follow the path |goto 45.67,72.73 < 15 |only if walking
Follow the path |goto 45.28,73.79 < 20 |only if walking
Follow the path |goto 45.46,74.50 < 10 |only if walking
talk Balren of the Claw##34402
turnin Naga In Our Midst##13953 |goto 45.30,75.14
accept The Darkscale Warlord##13899 |goto 45.30,75.14
step
talk Felros##34403
accept The Tides Turn Against Us##13898 |goto 45.35,75.12
stickystart "Kill_Darkscale_Myrmidons"
step
Follow the path |goto Darkshore/0 44.89,75.00 < 15 |only if walking
Continue following the path |goto 43.31,75.60 < 20 |only if walking
Continue following the path |goto 39.48,79.08 < 20 |only if walking
Continue following the path |goto 36.27,82.02 < 20 |only if walking
Follow the path up |goto 34.45,83.97 < 15 |only if walking
Follow the path |goto 33.94,83.48 < 20 |only if walking
Enter the cave |goto 33.39,83.66 < 15 |walk
Follow the path down |goto 32.60,83.96 < 15 |walk
Continue down the path |goto 31.72,84.78 < 15 |walk
Continue down the path |goto 31.16,84.40 < 15 |walk
Continue down the path |goto 31.21,83.73 < 15 |walk
Follow the path down |goto 31.60,83.14 < 15 |q 13899
step
Follow the path |goto 32.41,83.01 < 15 |walk
Follow the path |goto 32.55,84.44 < 15 |walk
kill Warlord Wrathspine##34423
|tip He walks around this small area inside the cave.
clicknpc Warlord Wrathspine##34423
turnin The Darkscale Warlord##13899 |goto 32.26,85.43
accept The Offering to Azshara##13900 |goto 32.26,85.43
step
label "Kill_Darkscale_Myrmidons"
kill 8 Darkscale Myrmidon##33079 |q 13898/1 |goto 32.26,85.43
step
Follow the path |goto Darkshore/0 32.52,84.51 < 15 |walk
Follow the path up |goto 32.31,82.92 < 15 |walk
Continue up the path |goto 31.44,83.25 < 15 |walk
Continue up the path |goto 31.12,84.30 < 15 |walk
Continue up the path |goto 31.58,84.80 < 15 |q 13900
step
Continue up the path |goto 32.33,84.26 < 15 |walk
Leave the cave |goto 33.37,83.67 < 15 |walk
Follow the path up |goto 33.67,83.89 < 7 |only if walking
Continue up the path |goto 33.52,84.28 < 10 |q 13900
step
Continue up the path |goto 33.20,84.74 < 10 |only if walking
Follow the path |goto 32.55,84.73 < 15 |only if walking
kill Darkscale Priestess##34415+
|tip Kill all 4 of them that are channeling a spell on the green portal.
Prevent the Offering to Azshara |q 13900/1 |goto 32.90,84.09
step
Watch the dialogue
talk Malfurion Stormrage##34422
turnin The Offering to Azshara##13900 |goto 32.80,84.29
accept The Battle for Darkshore##13897 |goto 32.80,84.29
step
Jump down here |goto 33.36,84.15 < 15 |only if walking
Follow the path up |goto 35.72,84.60 < 20 |only if walking
Follow the path |goto 36.65,84.90 < 20 |only if walking
Continue following the path |goto 37.61,86.22 < 20 |only if walking
Continue following the path |goto 38.75,85.37 < 20 |only if walking
Follow the path |goto 39.08,83.83 < 20 |only if walking
Use the Horn of the Ancients on Avatar of Soggoth |use Horn of the Ancients##58365
|tip He looks like a big octopus giant.
kill Avatar of Soggoth##34485 |q 13897/1 |goto 40.46,84.02
step
Follow the path up |goto 41.80,83.44 < 20 |only if walking
Follow the path |goto 42.32,82.45 < 20 |only if walking
Follow the road |goto 43.18,80.07 < 20 |only if walking
Follow the path |goto 43.45,75.43 < 20 |only if walking
Continue following the path |goto 44.69,75.03 < 20 |only if walking
talk Balren of the Claw##34402
turnin The Battle for Darkshore##13897 |goto 45.30,75.13
accept Ashes in Ashenvale##26408 |goto 45.30,75.13
step
talk Felros##34403
turnin The Tides Turn Against Us##13898 |goto 45.35,75.12
step
label "Time_Travel_On"
talk Zidormi##141489
Ask her _"Can you show me what Darkshore was like before the battle?"_
Travel to the Past |condition ZGV.InPhase('Old Darnassus') |goto Darkshore/0 48.86,24.46 |q 13898 |future
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (10-60)\\Kalimdor\\Dustwallow Marsh (35-60)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Dustwallow 35-39",
next="Leveling Guides\\Classic (10-60)\\Kalimdor\\Thousand Needles (40-60)",
condition_suggested=function() return level >= 35 and level <= 60 and not completedq(27291) end,
startlevel=35,
endlevel=60,
},[[
step
talk Zidormi##63546
Tell her _"Show me Theramore before the destruction."_
Click Here After Traveling to Theramore's Past |confirm |goto Dustwallow Marsh/0 55.9,49.6
|only if achieved(7523)
step
Follow the path |goto Southern Barrens/0 48.04,68.10 < 20 |only if walking |only if not achieved(7523)
Follow the road |goto Southern Barrens/0 47.43,70.95 < 30 |only if walking |only if not achieved(7523)
Follow the road |goto Southern Barrens/0 47.30,75.01 < 20 |only if walking |only if not achieved(7523)
Continue following the road |goto Southern Barrens/0 49.76,78.12 < 20 |only if walking |only if not achieved(7523)
Continue following the road |goto Southern Barrens/0 50.84,78.75 < 20 |only if walking |only if not achieved(7523)
Cross the bridge |goto Dustwallow Marsh/0 34.03,46.73 < 20 |only if walking |only if not achieved(7523)
Cross the bridge |goto Dustwallow Marsh/0 35.68,47.28 < 20 |only if walking |only if not achieved(7523)
Cross the bridge |goto Dustwallow Marsh/0 37.55,48.72 < 20 |only if walking |only if not achieved(7523)
Cross the bridge |goto Dustwallow Marsh/0 39.46,50.23 < 20 |only if walking |only if not achieved(7523)
Cross the bridge |goto Dustwallow Marsh/0 42.59,50.92 < 20 |only if walking |only if not achieved(7523)
Cross the bridge |goto Dustwallow Marsh/0 47.62,50.78 < 20 |only if walking |only if not achieved(7523)
Cross the bridge |goto Dustwallow Marsh/0 50.66,50.78 < 20 |only if walking |only if not achieved(7523)
Follow the path down |goto Dustwallow Marsh/0 54.07,50.06 < 20 |only if walking |only if not achieved(7523)
Cross the bridge |goto Dustwallow Marsh/0 56.08,50.10 < 20 |only if walking
Cross the bridge |goto Dustwallow Marsh/0 59.95,50.02 < 20 |only if walking
Follow the path |goto Dustwallow Marsh/0 62.32,50.00 < 20 |only if walking
Continue following the path |goto Dustwallow Marsh/0 63.34,49.83 < 15 |only if walking
Continue following the path |goto Dustwallow Marsh/0 64.49,48.85 < 15 |only if walking
talk Lieutenant Aden##23951
accept Mission to Mudsprocket##27248 |goto Dustwallow Marsh/0 65.07,47.13
step
talk Guard Byron##4921
accept Tabetha's Farm##11212 |goto 66.15,46.07
accept They Call Him Smiling Jim##27251 |goto 66.15,46.07
step
Enter the building |goto 65.97,45.19 < 7 |walk
talk Innkeeper Janene##6272
|tip Inside the building.
home Theramore Isle |goto 66.42,45.32 |q 1204 |future
step
Leave the building |goto 65.97,45.19 < 7 |walk
Follow the path |goto 65.90,45.95 < 15 |only if walking
Follow the path |goto 67.61,47.11 < 15 |only if walking
Enter the building |goto 67.87,47.92 < 10 |walk
talk Morgan Stern##4794
|tip Inside the building.
accept Mudrock Soup and Bugs##1204 |goto 68.27,48.72
step
talk Captain Garran Vimes##4944
|tip Upstairs inside the building.
turnin Reinforcements From Theramore##26687 |goto 68.21,48.62
turnin They Call Him Smiling Jim##27251 |goto 68.21,48.62
accept Inspecting the Ruins##27249 |goto 68.21,48.62
step
Leave the building |goto 67.60,47.07 < 15 |walk
Follow the road |goto 66.88,47.48 < 15 |only if walking
Continue following the road |goto 67.39,50.51 < 20 |only if walking
talk Calia Hastings##23566
|tip She walks around this small area.
accept Traitors Among Us##27210 |goto 68.36,51.03
step
talk Sergeant Amelyn##23835
|tip She walks around this small area.
accept This Old Lighthouse##27216 |goto 68.26,51.84
step
talk Deserter Agitator##23602+
Tell them _"Your propaganda won't work on me. Spout your treasonous filth elsewhere, traitor!"_
Expose #5# Deserter Agitators |q 27210/1 |goto 67.25,50.78
step
talk Calia Hastings##23566
|tip She walks around this small area.
turnin Traitors Among Us##27210 |goto 68.36,51.03
accept Propaganda War##27211 |goto 68.36,51.03
step
Follow the path |goto 68.56,52.54 < 20 |only if walking
Follow the path |goto 67.70,55.06 < 15 |only if walking
Continue following the path |goto 68.54,56.80 < 15 |only if walking
Run up the ramp |goto 67.89,58.07 < 7 |only if walking
Follow the path |goto 67.76,58.41 < 7 |walk
Run down the stairs |goto 67.79,58.54 < 5 |walk
Follow the path |goto 67.65,58.72 < 5 |c |q 27211
step
Follow the path |goto 67.58,58.56 < 7 |walk
Follow the path |goto 67.76,58.40 < 7 |walk
Follow the path |goto 67.83,58.66 < 7 |walk
click the Deserter Propoganda##36
|tip Downstairs inside the ship.
collect Deserter Propaganda##33008 |q 27211/1 |goto 67.94,58.73
step
Follow the path |goto 67.85,58.66 < 5 |walk
Follow the path |goto 67.78,58.43 < 7 |walk
Follow the path |goto 67.56,58.48 < 7 |walk
Run up the stairs |goto 67.70,58.70 < 7 |c |q 27211
step
Follow the path |goto 67.80,58.48 < 7 |walk
Run down the ramp |goto 67.78,58.25 < 7 |only if walking
Follow the path |goto 68.50,56.72 < 15 |only if walking
Continue following the path |goto 67.73,55.02 < 15 |only if walking
Continue following the path |goto 68.49,52.48 < 15 |only if walking
talk Calia Hastings##23566
|tip She walks around this small area.
turnin Propaganda War##27211 |goto 68.36,51.03
step
Watch the dialogue
talk Calia Hastings##23566
|tip She walks around this small area.
accept Discrediting the Deserters##27212 |goto 68.36,51.03
step
talk Theramore Guard##4979+
Tell them _"You look like an intelligent person. Why don't you read one of these leaflets and give it some thought?"_
Distribute #6# Leaflets |q 27212/1 |goto 67.28,50.74
step
talk Calia Hastings##23566
|tip She walks around this small area.
turnin Discrediting the Deserters##27212 |goto 68.36,51.03
accept The End of the Deserters##27213 |goto 68.36,51.03
step
Follow the path |goto 68.44,52.12 < 15 |only if walking
Follow the path |goto 71.30,55.79 < 15 |only if walking
Jump down here |goto 72.18,55.16 < 10 |only if walking
Follow the path up |goto 76.06,54.53 < 15 |only if walking
Run up the ramp |goto 76.70,55.42 < 7 |only if walking
Follow the path |goto 76.65,56.76 < 7 |walk
Run down the stairs |goto 76.55,56.79 < 5 |walk
Follow the path |goto 76.48,56.54 < 7 |c |q 27213
step
Follow the path |goto 76.69,56.50 < 7 |walk
Follow the path |goto 76.64,56.77 < 7 |walk
kill Gavis Greyshield##23941
|tip Downstairs inside the ship.
|tip He will eventually surrender.
Capture Gavis Greyshield |q 27213/1 |goto 76.27,57.07
step
Follow the path |goto 76.38,56.95 < 7 |walk
Follow the path |goto 76.64,56.77 < 7 |walk
Follow the path |goto 76.69,56.51 < 7 |walk
Run up the stairs |goto 76.45,56.58 < 7 |c |q 27213
step
Follow the path |goto 76.62,56.79 < 7 |walk
Run down the ramp |goto 76.88,55.84 < 7 |only if walking
Follow the path |goto 76.69,55.40 < 15 |only if walking
Cross the water |goto 76.06,54.55 < 15 |only if walking
Follow the path up |goto 69.61,52.63 < 15 |only if walking
Follow the path |goto 68.53,52.21 < 20 |only if walking
talk Calia Hastings##23566
|tip She walks around this small area.
turnin The End of the Deserters##27213 |goto 68.36,51.03
step
talk Sergeant Amelyn##23835
|tip She walks around this small area.
accept The Hermit of Swamplight Manor##27215 |goto 68.26,51.84
step
Follow the path |goto 68.79,52.31 < 20 |only if walking
Cross the water |goto 70.34,50.54 < 20 |only if walking
Follow the path |goto 71.96,47.23 < 15 |only if walking
talk Babs Fizzletorque##23892
turnin This Old Lighthouse##27216 |goto 72.11,47.05
accept Thresher Oil##27217 |goto 72.11,47.05
step
kill Young Murk Thresher##4388+
|tip Underwater around this area.
collect 4 Thresher Oil##33126 |q 27217/1 |goto 72.69,48.83
step
Follow the path |goto 72.26,47.24 < 15 |only if walking
talk Babs Fizzletorque##23892
turnin Thresher Oil##27217 |goto 72.11,47.05
accept Dastardly Denizens of the Deep##27218 |goto 72.11,47.05
step
Follow the path up |goto 70.54,50.51 < 15 |only if walking
Follow the path |goto 70.30,50.40 < 15 |only if walking
talk "Dirty" Michael Crowe##23896
turnin Dastardly Denizens of the Deep##27218 |goto 69.24,51.89
accept Is it Real?##27219 |goto 69.24,51.89
step
Follow the path |goto 68.59,52.18 < 20 |only if walking
Follow the road |goto 67.38,50.24 < 20 |only if walking
Continue following the road |goto 66.99,47.86 < 20 |only if walking
Continue following the road |goto 66.52,46.95 < 20 |only if walking
talk Lieutenant Aden##23951
accept A Disturbing Development##27214 |goto 65.08,47.13
step
Cross the bridge |goto 64.29,45.64 < 15 |only if walking
Follow the path |goto 63.63,44.42 < 15 |only if walking
Follow the road |goto 62.82,42.29 < 20 |only if walking
Continue following the road |goto 61.81,40.92 < 20 |only if walking
Run up the ramp |goto 60.28,40.52 < 15 |only if walking
Enter the building |goto 59.88,40.95 < 7 |walk
talk Captain Wymor##5086
|tip He walks around this small area inside the tower.
turnin A Disturbing Development##27214 |goto 59.67,41.08
accept Defias in Dustwallow?##27234 |goto 59.67,41.08
step
Leave the building |goto 59.90,40.92 < 7 |walk
Follow the road |goto 60.90,39.85 < 20 |only if walking
Follow the path up |goto 62.43,41.19 < 15 |only if walking
Follow the path down |goto 63.63,41.39 < 15 |only if walking
Follow the path |goto 64.76,40.33 < 20 |only if walking
kill Mudrock Spikeshell##4397+
collect 8 Forked Mudrock Tongue##5883 |q 1204/1 |goto 63.03,35.49
step
Follow the path up |goto 63.87,30.20 < 15 |only if walking
kill Garn Mathers##23679
|tip He walks around this area.
collect Defias Orders##33037 |q 27234/1 |goto 63.8,28.9
step
Follow the path |goto 61.78,31.06 < 20 |only if walking
Follow the path |goto 64.73,39.88 < 20 |only if walking
Follow the path up |goto 64.37,43.06 < 15 |only if walking
Follow the road |goto 63.38,43.56 < 20 |only if walking
Follow the road |goto 61.94,41.10 < 20 |only if walking
Run up the ramp |goto 60.28,40.52 < 15 |only if walking
Enter the building |goto 59.88,40.95 < 7 |walk
talk Captain Wymor##5086
|tip He walks around this small area inside the tower.
turnin Defias in Dustwallow?##27234 |goto 59.67,41.08
accept Renn McGill##27235 |goto 59.67,41.08
step
Leave the building |goto 59.90,40.92 < 7 |walk
Follow the road |goto 60.90,39.85 < 20 |only if walking
Follow the path up |goto 62.43,41.19 < 15 |only if walking
Follow the path down |goto 63.63,41.39 < 15 |only if walking
Follow the path |goto 64.76,40.33 < 20 |only if walking
Continue following the path |goto 63.00,35.54 < 20 |only if walking
Continue following the path |goto 61.50,30.74 < 20 |only if walking
Continue following the path |goto 61.91,24.39 < 20 |only if walking
Follow the path |goto 63.51,20.23 < 20 |only if walking
Follow the path |goto 64.00,19.06 < 20 |only if walking
talk Renn McGill##23569
|tip Underwater.
turnin Renn McGill##27235 |goto 63.74,17.03
accept Secondhand Diving Gear##27236 |goto 63.74,17.03
step
Follow the path up |goto 63.53,17.58 < 15 |only if walking
click Tool Kit##186272
|tip It looks like a small tan metal toolbox on the ground around this area.
collect Tool Kit##33039 |q 27236/2 |goto 62.95,18.81
step
click Damaged Diving Gear##186273
collect Damaged Diving Gear##33038 |q 27236/1 |goto 62.64,18.24
step
Follow the path up |goto 63.13,18.06 < 15 |only if walking
talk Renn McGill##23569
|tip Underwater.
turnin Secondhand Diving Gear##27236 |goto 63.74,17.03
accept Recover the Cargo!##27237 |goto 63.74,17.03
step
Use Renn's Supplies |use Renn's Supplies##33045
collect Repaired Diving Gear##33040 |q 27237
collect Salvage Kit##33044 |q 27237
step
Use the Salvage Kit |use Salvage Kit##33044
|tip Use it next to Shipwreck Debris around this area.
|tip They look like collections of junk floating on the surface of the water around this area.
collect Salvaged Strongbox##33041 |q 27237/1 |goto 65.21,20.38
step
talk Renn McGill##23569
|tip Underwater.
turnin Recover the Cargo!##27237 |goto 63.74,17.03
accept Jaina Must Know##27238 |goto 63.74,17.03
step
Leave the building |goto 65.99,45.20 < 7 |walk
Follow the road |goto 65.48,46.41 < 20 |only if walking
Follow the path up |goto 65.05,47.35 < 15 |only if walking
Run up the stairs |goto 65.54,48.32 < 15 |only if walking
Enter the building |goto 65.73,48.61 < 10 |walk
talk Lady Jaina Proudmoore##4968
|tip At the top of the tower.
turnin Jaina Must Know##27238 |goto 66.27,49.04
accept Survey Alcaz Island##27239 |goto 66.27,49.04
step
Leave the building |goto 65.65,48.50 < 10 |walk
Follow the road |goto 65.09,46.90 < 20 |only if walking
Follow the path |goto 67.61,47.07 < 15 |only if walking
Enter the building |goto 67.86,47.88 < 10 |walk
talk Morgan Stern##4794
|tip Inside the building.
turnin Mudrock Soup and Bugs##1204 |goto 68.26,48.72
accept ... and Bugs##1258 |goto 68.26,48.72
step
Leave the building |goto 67.79,47.62 < 10 |walk
Follow the path |goto 67.58,47.02 < 15 |only if walking
Follow the path |goto 66.81,47.30 < 20 |only if walking
Continue following the path |goto 67.34,49.62 < 20 |only if walking
talk Cassa Crimsonwing##23704
Tell her _"Lady Jaina told me to speak to you about using a gryphon to survey Alcaz Island."_
Survey Alcaz Island |q 27239/1 |goto 67.33,51.14
step
Follow the path |goto 68.71,52.33 < 20 |only if walking
kill Spiny Rock Crab##44390+
collect 12 Pristine Crawler Leg##5938 |q 1258/1 |goto 70.14,50.08
step
Follow the path |goto 70.16,49.89 < 20 |only if walking
Follow the path |goto 68.68,52.31 < 20 |only if walking
Follow the road |goto 67.40,50.25 < 20 |only if walking
Follow the road |goto 66.77,47.07 < 20 |only if walking
Follow the path |goto 67.61,47.07 < 15 |only if walking
Enter the building |goto 67.86,47.88 < 10 |walk
talk Morgan Stern##4794
|tip Inside the building.
turnin ... and Bugs##1258 |goto 68.26,48.72
step
Leave the building |goto 67.86,47.85 < 10 |walk
Follow the path |goto 67.55,47.00 < 15 |only if walking
Continue following the path |goto 65.51,46.76 < 20 |only if walking
Follow the path up |goto 65.05,47.35 < 15 |only if walking
Run up the stairs |goto 65.54,48.32 < 15 |only if walking
Enter the building |goto 65.73,48.61 < 10 |walk
talk Lady Jaina Proudmoore##4968
|tip At the top of the tower.
turnin Survey Alcaz Island##27239 |goto 66.27,49.04
step
Leave the building |goto 65.63,48.47 < 10 |walk
Cross the bridge |goto 64.31,45.65 < 15 |only if walking
Follow the path |goto 63.62,44.41 < 15 |only if walking
Continue following the path |goto 62.79,42.36 < 20 |only if walking
Continue following the path |goto 60.35,38.92 < 20 |only if walking
Continue following the path |goto 59.53,38.53 < 20 |only if walking
Continue following the path |goto 59.48,37.02 < 20 |only if walking
Continue following the path |goto 57.52,32.41 < 20 |only if walking
Continue following the path |goto 55.23,30.84 < 20 |only if walking
Cross the bridge |goto 54.66,29.50 < 15 |only if walking
Follow the path |goto 54.46,27.51 < 20 |only if walking
talk "Swamp Eye" Jarl##4792
turnin The Hermit of Witch Hill##27215 |goto 55.44,26.27
accept Marsh Frog Legs##27183 |goto 55.44,26.27
step
talk Mordant Grimsby##23843
|tip Inside the building, but he also walks outside sometimes.
accept What's Haunting Witch Hill?##27188 |goto 55.58,26.14
step
Leave the building |goto 55.48,26.29 < 5 |walk
click the Loose Dirt##209627
accept The Orc Report##27246 |goto 55.43,25.92
stickystart "Gather_Information"
step
kill Giant Marsh Frog##23979+
collect 10 Marsh Frog Leg##33202 |q 27183/1 |goto 55.52,24.96
step
label "Gather_Information"
Kill Risen enemies around this area
Gather #10# Information |q 27188/1 |goto 55.52,24.96
step
talk "Swamp Eye" Jarl##4792
turnin Marsh Frog Legs##27183 |goto 55.44,26.27
accept Jarl Needs Eyes##27184 |goto 55.44,26.27
step
talk Mordant Grimsby##23843
|tip Inside the building, but he also walks outside sometimes.
turnin What's Haunting Witch Hill?##27188 |goto 55.58,26.14
accept The Witch's Bane##27189 |goto 55.58,26.14
step
click Witchbane##186423
|tip They look like green plants with purple flowers in the middle of them on the ground around this area.
collect 9 Witchbane##33112 |q 27189/1 |goto 54.94,27.10
step
talk Mordant Grimsby##23843
|tip Inside the building, but he also walks outside sometimes.
turnin The Witch's Bane##27189 |goto 55.58,26.14
accept Cleansing Witch Hill##27190 |goto 55.58,26.14
step
Use the Witchbane Torch |use Witchbane Torch##33113
|tip Use it while standing at the end of the dock right outside.
Watch the dialogue
kill Zelfrax##23864
Cleanse Witch Hill |q 27190/1 |goto 55.21,26.64
step
talk Mordant Grimsby##23843
|tip Inside the building, but he also walks outside sometimes.
turnin Cleansing Witch Hill##27190 |goto 55.58,26.14
step
Follow the road |goto 54.35,27.46 < 20 |only if walking
Continue following the road |goto 52.83,25.49 < 20 |only if walking
Cross the bridge |goto 51.30,25.06 < 15 |only if walking
Follow the road |goto 50.33,25.00 < 15 |only if walking
Follow the road |goto 49.29,25.00 < 20 |only if walking
talk Sergeant Lukas##23723
accept Raptor Captor##27242 |goto 46.66,23.05
stickystart "Capture_Raptors"
step
talk "Stinky" Ignatz##4880
accept Stinky's Escape##1222 |goto 46.89,17.52
|tip This is an escort quest.
step
Follow "Stinky" Ignatz
|tip Protect him as he walks around.
Help Stinky Find Bogbean Leaves |q 1222/1 |goto 48.86,24.66
step
label "Capture_Raptors"
Kill Bloodfen enemies around this area
|tip Don't actually kill them, just get them to low health.
Use the Sturdy Rope |use Sturdy Rope##33069
|tip Use it on Bloodfen enemies when they are low health.
Capture #6# Raptors |q 27242/1 |goto 49.43,20.51
step
talk Sergeant Lukas##23723
turnin Raptor Captor##27242 |goto 46.66,23.05
accept Unleash the Raptors##27243 |goto 46.66,23.05
accept Prisoners of the Grimtotems##27245 |goto 46.66,23.05
stickystart "Free_Theramore_Prisoners"
step
Follow the path |goto 46.98,22.54 < 15 |only if walking
Continue following the path |goto 47.16,19.74 < 20 |only if walking
Continue following the path |goto 44.47,17.09 < 20 |only if walking
Continue following the path |goto 43.39,15.52 < 20 |only if walking
Continue following the path |goto 42.76,13.97 < 20 |only if walking
Use the Raptor Bait |use Raptor Bait##33070
|tip Use it next to the windmill.
Release the Raptors |q 27243/1 |goto 41.52,12.09
step
label "Free_Theramore_Prisoners"
Kill Grimtotem enemies around this area.
collect Grimtotem Key##33061 |n
click Blackhoof Cage##1787+
|tip They look like yellow cages on the ground around this area.
Free #5# Theramore Prisoners |q 27245/1 |goto 41.52,12.09
step
Follow the path |goto 42.03,12.84 < 20 |only if walking
Continue following the path |goto 43.54,15.82 < 20 |only if walking
Continue following the path |goto 44.74,17.44 < 20 |only if walking
Continue following the path |goto 47.29,20.01 < 20 |only if walking
Continue following the path |goto 47.04,22.32 < 20 |only if walking
talk Sergeant Lukas##23723
turnin Unleash the Raptors##27243 |goto 46.66,23.05
turnin Prisoners of the Grimtotems##27245 |goto 46.66,23.05
step
Cross the bridge |goto 45.98,22.63 < 15 |only if walking
Follow the path |goto 44.79,23.20 < 20 |only if walking
Continue following the path |goto 42.09,23.21 < 20 |only if walking
Continue following the path |goto 39.56,23.68 < 20 |only if walking
Continue following the path |goto 36.61,22.82 < 20 |only if walking
Kill Darkmist enemies around this area
collect 20 Unpopped Darkmist Eye##5884 |q 27184/1 |goto 34.44,22.56
step
Follow the path |goto 34.85,22.48 < 20 |only if walking
Continue following the path |goto 36.34,22.82 < 20 |only if walking
Continue following the path |goto 38.46,24.21 < 20 |only if walking
Continue following the path |goto 40.80,26.56 < 20 |only if walking
Follow the road |goto 42.62,28.95 < 20 |only if walking
Continue following the road |goto 41.88,32.09 < 20 |only if walking
Continue following the road |goto 42.42,34.98 < 20 |only if walking
Cross the bridge |goto 40.42,36.81 < 15 |only if walking
Follow the road |goto 39.98,37.44 < 15 |only if walking
Continue following the road |goto 39.04,38.00 < 20 |only if walking
Continue following the road |goto 38.13,39.79 < 20 |only if walking
Cross the bridge |goto 36.83,40.13 < 15 |only if walking
Cross the bridge |goto 34.62,43.78 < 15 |only if walking
Follow the road |goto 33.29,46.02 < 20 |only if walking
Continue following the road |goto 31.15,46.68 < 20 |only if walking
talk Inspector Tarem##23567
turnin Inspecting the Ruins##27249 |goto 29.79,47.67
step
click Suspicious Hoofprint##187273
accept Suspicious Hoofprints##27262 |goto 29.70,47.63
step
click Theramore Guard Badge##21042
accept Lieutenant Paval Reethe##27263 |goto 29.83,48.24
step
click Black Shield##20992
accept The Black Shield##27252 |goto 29.63,48.59
step
Follow the road |goto 29.62,47.20 < 20 |only if walking
Follow the road |goto 33.38,47.13 < 20 |only if walking
Continue following the road |goto 34.36,52.40 < 20 |only if walking
Continue following the road |goto 34.31,56.40 < 20 |only if walking
Continue following the road |goto 33.78,59.85 < 20 |only if walking
Continue following the road |goto 35.31,64.08 < 20 |only if walking
Follow the road |goto 37.22,63.97 < 20 |only if walking
Continue following the road |goto 38.30,61.75 < 20 |only if walking
Continue following the road |goto 39.37,60.92 < 20 |only if walking
Continue following the road |goto 40.09,62.08 < 20 |only if walking
Continue following the road |goto 40.67,64.82 < 20 |only if walking
Cross the bridge |goto 39.83,67.29 < 15 |only if walking
Follow the road |goto 39.98,68.38 < 20 |only if walking
Follow the road |goto 40.58,68.74 < 20 |only if walking
Continue following the road |goto 41.78,71.19 < 20 |only if walking
Follow the path |goto 41.86,72.50 < 15 |only if walking
Enter the building |goto 42.09,72.94 < 10 |walk
talk Drazzit Dripvalve##23572
|tip Inside the building.
turnin Mission to Mudsprocket##27248 |goto 42.33,72.93
step
Leave the building |goto 42.10,72.95 < 10 |walk
click Wanted Poster##184945
accept WANTED: Goreclaw the Ravenous##27412 |goto 41.75,73.11
step
Run up the stairs |goto 41.88,73.09 < 5 |only if walking
Enter the building |goto 41.87,73.38 < 7 |walk
talk Brogg##23579
|tip Inside the building.
accept Bloodfen Feathers##27407 |goto 41.86,73.96
step
talk Axle##23995
|tip He walks around inside the building.
home Mudsprocket |goto 41.93,74.20 |q 27413 |future
step
Leave the building |goto 41.88,73.33 < 10 |walk
talk Gizzix Grimegurgle##23570
accept Catch a Dragon by the Tail##27413 |goto 41.54,72.98
step
Follow the path |goto 41.86,72.47 < 15 |only if walking
Follow the path |goto 42.08,72.09 < 15 |only if walking
talk Dyslix Silvergrub##40358
fpath Mudsprocket |goto 42.82,72.43
stickystart "Collect_Bloodfen_Feathers"
step
Follow the path |goto 41.86,72.47 < 15 |only if walking
Follow the road |goto 41.86,71.34 < 20 |only if walking
Follow the road |goto 40.56,68.71 < 20 |only if walking
Cross the bridge |goto 39.94,68.17 < 15 |only if walking
Follow the road |goto 39.86,67.23 < 15 |only if walking
Continue following the road |goto 40.63,64.84 < 20 |only if walking
Continue following the road |goto 39.98,61.78 < 20 |only if walking
Continue following the road |goto 39.38,60.88 < 20 |only if walking
Continue following the road |goto 38.22,61.86 < 20 |only if walking
Continue following the road |goto 37.33,63.89 < 20 |only if walking
Follow the path |goto 35.34,64.41 < 20 |only if walking
Follow the path |goto 34.82,65.18 < 20 |only if walking
Follow the path |goto 33.83,64.90 < 20 |only if walking
kill Goreclaw the Ravenous##23873 |q 27412/1 |goto 32.25,65.44
|tip He looks like a big purple and green raptor that walks around this area.
step
label "Collect_Bloodfen_Feathers"
Kill Bloodfen enemies around this area
collect 5 Bloodfen Feather##33085 |q 27407/1 |goto 33.46,64.72
step
talk Brogg##23579
|tip Inside the building.
turnin Bloodfen Feathers##27407 |goto 41.86,73.97
accept Banner of the Stonemaul##27408 |goto 41.86,73.97
accept The Essence of Enmity##27409 |goto 41.86,73.97
step
Leave the building |goto 41.88,73.33 < 10 |walk
Enter the building |goto 42.09,72.94 < 10 |walk
talk Drazzit Dripvalve##23572
|tip Inside the building.
turnin WANTED: Goreclaw the Ravenous##27412 |goto 42.33,72.93
stickystart "Collect_Black_Dragonkin_Essences"
step
Leave the building |goto Dustwallow Marsh/0 42.08,72.95 < 10 |walk
Follow the path |goto 41.86,72.46 < 15 |only if walking
Follow the road |goto 41.85,71.30 < 20 |only if walking
Follow the road |goto 40.57,68.71 < 20 |only if walking
Cross the bridge |goto 39.96,68.17 < 15 |only if walking
Follow the path |goto 39.69,66.83 < 15 |only if walking
Enter the cave |goto 38.56,65.85 < 10 |walk
Follow the path |goto 38.26,66.36 < 10 |walk
Continue following the path |goto 38.35,67.12 < 10 |walk
Follow the path up |goto 38.61,68.21 < 10 |walk
Follow the path |goto 38.29,68.71 < 10 |walk
click the Stonemaul Banner##6957
|tip Inside the cave.
collect Stonemaul Banner##33086 |q 27408/1 |goto 38.12,69.43
step
label "Collect_Black_Dragonkin_Essences"
Follow the path |goto 38.20,68.97 < 10 |walk
Follow the path down |goto 38.43,68.57 < 10 |walk
Follow the path |goto 38.73,67.69 < 10 |walk
Follow the path |goto 38.23,66.83 < 10 |walk
Leave the cave |goto 38.46,65.93 < 10 |walk
Kill Firemane enemies around this area
Use Brogg's Totem |use Brogg's Totem##33088
|tip Use it on the corpses of the Firemane enemies you kill around this area.
collect 10 Black Dragonkin Essence##33087 |q 27409/1 |goto 39.25,65.42
step
Follow the path |goto 39.70,66.84 < 15 |only if walking
Follow the road |goto 40.33,66.14 < 20 |only if walking
Continue following the road |goto 40.63,64.82 < 20 |only if walking
Follow the road |goto 40.12,61.74 < 20 |only if walking
Continue following the road |goto 41.16,61.18 < 20 |only if walking
Continue following the road |goto 41.56,59.58 < 20 |only if walking
Continue following the road |goto 43.39,59.68 < 20 |only if walking
Continue following the road |goto 45.70,59.26 < 20 |only if walking
talk Apprentice Morlann##23600
accept Direhorn Raiders##27340 |goto 46.10,57.44
accept The Zeppelin Crash##27346 |goto 46.10,57.44
step
talk Tabetha##6546
|tip Inside the building.
turnin Tabetha's Farm##11212 |goto 46.02,57.10
accept Help for Mudsprocket##11211 |goto 46.02,57.10
step
talk Apprentice Garion##23601
|tip Inside the building.
accept The Reagent Thief##27339 |goto 46.05,57.24
step
Follow the path |goto 45.29,56.44 < 20 |only if walking
Kill enemies around this area
|tip Mottled Drywallow Crocolisks will not drop the quest item.
collect 6 Marsh Venom##33103 |q 27339/1 |goto 43.26,54.64
step
Follow the road |goto 41.94,50.94 < 20 |only if walking
Continue following the road |goto 45.25,50.70 < 20 |only if walking
Follow the path |goto 46.56,50.18 < 20 |only if walking
Follow the path |goto 46.65,49.01 < 20 |only if walking
Kill Grimtotem enemies around this area
Kill #12# Direhorn Grimtotems |q 27340/1 |goto 46.68,48.10
step
Follow the path |goto 46.63,49.10 < 20 |only if walking
Follow the path |goto 46.49,50.98 < 20 |only if walking
Continue following the path |goto 46.32,53.17 < 20 |only if walking
Continue following the path |goto 45.97,55.99 < 20 |only if walking
talk Apprentice Garion##23601
|tip Inside the building.
turnin The Reagent Thief##27339 |goto 46.05,57.24
step
talk Apprentice Morlann##23600
turnin Direhorn Raiders##27340 |goto 46.10,57.44
step
Follow the path |goto 47.57,58.52 < 20 |only if walking
Continue following the path |goto 49.59,58.75 < 20 |only if walking
Continue following the path |goto 50.72,58.48 < 20 |only if walking
Continue following the path |goto 52.31,56.99 < 20 |only if walking
talk Moxie Steelgrille##23797
turnin The Zeppelin Crash##27346 |goto 53.58,56.91
accept Corrosion Prevention##27347 |goto 53.58,56.91
accept Secure the Cargo!##27348 |goto 53.58,56.91
stickystart "Collect_Zeppelin_Cargo"
step
Use the Ooze Buster |use Ooze Buster##33108
|tip Use it on green and blue oozes around this area, while you have the "Energized!" buff.
|tip Stand next to the blue lightning structures around this area to get the "Energized!" buff.
Dissolve #10# Oozes |q 27347/1 |goto 53.1,56.0
step
label "Collect_Zeppelin_Cargo"
click the Zeppelin Cargo##186450
|tip They look like brown wooden boxes on the ground around this area.
collect 8 Zeppelin Cargo##33163 |q 27348/1 |goto 53.1,56.0
step
talk Moxie Steelgrille##23797
turnin Corrosion Prevention##27347 |goto 53.58,56.91
turnin Secure the Cargo!##27348 |goto 53.58,56.91
accept Delivery for Drazzit##11208 |goto 53.58,56.91
step
Follow the path |goto 54.95,58.34 < 15 |only if walking
Follow the path down |goto 55.42,59.10 < 15 |only if walking
Follow the path |goto 55.96,60.26 < 20 |only if walking
Follow the path |goto 57.74,60.67 < 20 |only if walking
talk Nat Pagle##12919
turnin Is it Real?##27219 |goto 58.76,60.17
accept Nat's Bargain##27220 |goto 58.76,60.17
step
Use Pagle's Fish Paste, Extra Strength |use Pagle's Fish Paste, Extra Strength##33166
Wear Pagle's Fish Paste |havebuff 136027 |q 27220
step
kill Lurking Shark##23928
|tip Underwatere.
Test the Fish Paste |q 27220/1 |goto 56.6,62.4
step
Follow the path |goto 57.74,60.67 < 20 |only if walking
talk Nat Pagle##12919
turnin Nat's Bargain##27220 |goto 58.76,60.17
accept Oh, It's Real##27221 |goto 58.76,60.17
step
talk Brogg##23579
|tip Inside the building.
turnin Banner of the Stonemaul##27408 |goto 41.86,73.96
turnin The Essence of Enmity##27409 |goto 41.86,73.96
accept Spirits of Stonemaul Hold##27410 |goto 41.86,73.96
step
Leave the building |goto 41.88,73.33 < 10 |walk
Enter the building |goto 42.09,72.94 < 10 |walk
talk Drazzit Dripvalve##23572
|tip Inside the building.
turnin Help for Mudsprocket##11211 |goto 42.33,72.93
turnin Delivery for Drazzit##11208 |goto 42.33,72.93
step
Leave the building |goto 42.09,72.94 < 10 |walk
Follow the path |goto 41.86,72.47 < 15 |only if walking
Follow the path |goto 42.08,72.09 < 15 |only if walking
Follow the path |goto 68.63,52.33 < 20 |only if walking
talk Major Mills##23905
turnin Oh, It's Real##27221 |goto 69.61,51.77
accept Take Down Tethyr!##27222 |goto 69.61,51.77
step
Watch the dialogue
click Cove Cannon##186432
|tip They look like blue cannons mounted on the docks around this area.
kill Tethyr##23899
|tip Run around on the docks and click the Cove Cannons to fight Tethyr.
Defend the Theramore Docks from Tethyr |q 27222/1 |goto 69.61,51.77
step
talk Major Mills##23905
turnin Take Down Tethyr!##27222 |goto 69.61,51.77
step
Follow the path |goto 68.56,52.15 < 20 |only if walking
Follow the road |goto 67.36,50.20 < 20 |only if walking
Follow the road |goto 66.80,47.06 < 20 |only if walking
Follow the path |goto 67.61,47.09 < 15 |only if walking
Enter the building |goto 67.87,47.90 < 10 |walk
talk Morgan Stern##4794
|tip Inside the building.
turnin Stinky's Escape##1222 |goto 68.27,48.72
step
talk Captain Garran Vimes##4944
|tip Upstairs inside the building.
turnin Suspicious Hoofprints##27262 |goto 68.21,48.62
turnin Lieutenant Paval Reethe##27263 |goto 68.21,48.62
accept Lieutenant Paval Reethe##27264 |goto 68.21,48.62
turnin The Black Shield##27252 |goto 68.21,48.62
accept The Black Shield##27284 |goto 68.21,48.62
step
talk Adjutant Tesoran##4948
|tip Upstairs inside the building.
turnin Lieutenant Paval Reethe##27264 |goto 68.04,48.12
accept Daelin's Men##27286 |goto 68.04,48.12
step
talk Captain Garran Vimes##4944
|tip Upstairs inside the building.
turnin Daelin's Men##27286 |goto 68.21,48.62
accept The Deserters##27287 |goto 68.21,48.62
step
Leave the building |goto 67.61,47.09 < 10 |walk
Follow the road |goto 66.54,46.92 < 20 |only if walking
talk Lieutenant Aden##23951
turnin The Orc Report##27246 |goto 65.08,47.13
accept Captain Vimes##27247 |goto 65.08,47.13
step
Follow the road |goto 64.58,47.88 < 20 |only if walking
talk Caz Twosprocket##4941
|tip Inside the building.
turnin The Black Shield##27284 |goto 64.75,50.42
accept The Black Shield##27285 |goto 64.75,50.42
step
Leave the building |goto 64.69,49.96 < 10 |walk
Follow the road |goto 64.58,47.85 < 20 |only if walking
Follow the road |goto 65.21,46.81 < 20 |only if walking
Follow the path |goto 67.61,47.09 < 15 |only if walking
Enter the building |goto 67.87,47.90 < 10 |walk
talk Captain Garran Vimes##4944
|tip Upstairs inside the building.
turnin The Black Shield##27285 |goto 68.21,48.62
turnin Captain Vimes##27247 |goto 68.21,48.62
step
Leave the building |goto 67.61,47.09 < 10 |walk
Follow the road |goto 66.72,47.05 < 20 |only if walking
Follow the road |goto 64.94,46.81 < 20 |only if walking
Cross the bridge |goto 64.31,45.65 < 15 |only if walking
Follow the path |goto 63.62,44.41 < 15 |only if walking
Continue following the path |goto 62.79,42.36 < 20 |only if walking
Continue following the path |goto 60.35,38.92 < 20 |only if walking
Continue following the path |goto 59.53,38.53 < 20 |only if walking
Continue following the path |goto 59.48,37.02 < 20 |only if walking
Continue following the path |goto 57.52,32.41 < 20 |only if walking
Continue following the path |goto 55.23,30.84 < 20 |only if walking
Cross the bridge |goto 54.66,29.50 < 15 |only if walking
Follow the path |goto 54.46,27.51 < 20 |only if walking
talk "Swamp Eye" Jarl##4792
turnin Jarl Needs Eyes##27184 |goto 55.44,26.27
accept Hungry as an Ogre!##27191 |goto 55.44,26.27
accept Jarl Needs a Blade##27186 |goto 55.44,26.27
stickystart "Collect_Mirefin_Heads"
step
Follow the path |goto 55.28,25.73 < 15 |only if walking
Continue following the path |goto 56.41,22.94 < 20 |only if walking
Continue following the path |goto 56.88,21.56 < 20 |only if walking
Follow the path down |goto 57.75,19.91 < 15 |only if walking
kill Razorspine##23841
|tip He looks like and orange murloc that walks up and down this path.
collect Razorspine's Sword##33110 |q 27186/1 |goto 57.9,18.7
step
label "Collect_Mirefin_Heads"
Follow the path |goto 57.87,18.38 < 20 |only if walking
Kill Mirefin enemies around this area
collect 8 Mirefin Head##5847 |q 27191/1 |goto 57.47,16.52
step
Follow the path |goto 57.45,16.82 < 20 |only if walking
Follow the path up |goto 57.90,18.40 < 15 |only if walking
Follow the path |goto 57.70,20.02 < 15 |only if walking
Continue following the path |goto 56.93,21.35 < 20 |only if walking
Continue following the path |goto 55.67,24.24 < 20 |only if walking
Follow the path |goto 55.25,25.85 < 15 |only if walking
talk "Swamp Eye" Jarl##4792
turnin Hungry as an Ogre!##27191 |goto 55.44,26.27
turnin Jarl Needs a Blade##27186 |goto 55.44,26.27
step
Leave the building |goto 41.87,73.33 < 10 |walk
Follow the path |goto 41.86,72.48 < 15 |only if walking
Follow the path |goto 42.41,71.16 < 20 |only if walking
click Ogre Remains##233818
|tip They look like big bone rib cages on the ground around this area.
kill Stonemaul Spirit##23786+
Lay #10# Stonemaul Spirits to Rest |q 27410/1 |goto 42.87,66.93
step
Follow the path |goto 42.29,67.08 < 20 |only if walking
Cross the bridge |goto 41.62,67.38 < 15 |only if walking
Follow the road |goto 40.97,67.82 < 15 |only if walking
Follow the road |goto 40.35,68.67 < 20 |only if walking
Cross the bridge |goto 39.96,68.17 < 15 |only if walking
Follow the road |goto 39.83,67.31 < 15 |only if walking
Follow the road |goto 40.66,64.78 < 20 |only if walking
Continue following the road |goto 40.01,61.84 < 20 |only if walking
Continue following the road |goto 39.38,60.94 < 20 |only if walking
Continue following the road |goto 38.24,61.87 < 20 |only if walking
Continue following the road |goto 37.32,63.95 < 20 |only if walking
Continue following the road |goto 35.24,64.08 < 20 |only if walking
Continue following the road |goto 34.07,61.09 < 20 |only if walking
Continue following the road |goto 33.88,58.71 < 20 |only if walking
Continue following the road |goto 34.32,56.14 < 20 |only if walking
Follow the path |goto 34.42,54.41 < 20 |only if walking
Run up the ramp |goto 35.29,53.84 < 20 |only if walking
Enter the building |goto 35.73,53.98 < 10 |walk
Run up the ramp |goto 36.19,53.96 < 7 |walk
kill Balos Jacken##5089
|tip Inside the building.
|tip Eventually he will surrender.
talk Balos Jacken##5089
turnin The Deserters##27287 |goto 36.09,54.30
accept The Deserters##27288 |goto 36.09,54.30
step
Leave the building |goto 35.75,53.99 < 10 |walk
Follow the path |goto 35.17,53.76 < 20 |only if walking
Follow the road |goto 34.26,54.76 < 20 |only if walking
Continue following the road |goto 34.31,56.40 < 20 |only if walking
Continue following the road |goto 33.78,59.85 < 20 |only if walking
Continue following the road |goto 35.31,64.08 < 20 |only if walking
Follow the road |goto 37.22,63.97 < 20 |only if walking
Continue following the road |goto 38.30,61.75 < 20 |only if walking
Continue following the road |goto 39.37,60.92 < 20 |only if walking
Continue following the road |goto 40.09,62.08 < 20 |only if walking
Continue following the road |goto 40.67,64.82 < 20 |only if walking
Cross the bridge |goto 39.83,67.29 < 15 |only if walking
Follow the road |goto 39.98,68.38 < 20 |only if walking
Follow the road |goto 40.58,68.74 < 20 |only if walking
Continue following the road |goto 41.78,71.19 < 20 |only if walking
Follow the path |goto 41.86,72.50 < 15 |only if walking
Enter the building |goto 41.87,73.35 < 10 |walk
talk Brogg##23579
|tip Inside the building.
turnin Spirits of Stonemaul Hold##27410 |goto 41.86,73.97
accept Challenge to the Black Flight##27411 |goto 41.86,73.97
stickystart "Collect_Wyrmtails"
step
Leave the building |goto 41.87,73.31 < 10 |walk
Follow the path |goto 42.11,73.20 < 15 |only if walking
Follow the path |goto 42.59,73.82 < 15 |only if walking
Continue following the path |goto 44.48,74.84 < 20 |only if walking
Continue following the path |goto 48.00,74.76 < 20 |only if walking
Continue following the path |goto 50.59,74.28 < 20 |only if walking
Use the Stonemaul Banner |use Stonemaul Banner##33095
|tip Use it at the foot of the stone ramp at the entrance to Onyxia's Lair.
Watch the dialogue
kill Smolderwing##23789
Avenge the Stonemaul Clan |q 27411/1 |goto 52.19,75.66
step
label "Collect_Wyrmtails"
click Wyrmtail##186463
|tip They look like green balls of vines on the ground around this area.
collect 8 Wyrmtail##33175 |q 27413/1 |goto 52.24,74.09
step
talk Brogg##23579
|tip Inside the building.
turnin Challenge to the Black Flight##27411 |goto 41.86,73.97
step
Leave the building |goto 41.88,73.33 < 10 |walk
talk Gizzix Grimegurgle##23570
turnin Catch a Dragon by the Tail##27413 |goto 41.54,72.99
step
Follow the path |goto 41.87,72.44 < 15 |only if walking
Follow the path |goto 42.16,72.07 < 15 |only if walking
Follow the road |goto 67.37,50.24 < 20 |only if walking
Follow the road |goto 66.80,47.05 < 20 |only if walking
Follow the path |goto 67.61,47.08 < 15 |only if walking
Enter the building |goto 67.87,47.89 < 10 |walk
talk Captain Garran Vimes##4944
|tip Upstairs inside the building.
turnin The Deserters##27288 |goto 68.21,48.62
accept A Grim Connection##27425 |goto 68.21,48.62
step
Leave the building |goto 67.61,47.08 < 10 |walk
Follow the path |goto 65.50,46.67 < 20 |only if walking
Enter the building |goto 66.00,45.20 < 10 |walk
talk Innkeeper Janene##6272
|tip Inside the building.
home Theramore Isle |goto 66.42,45.32 |q 27291 |future
step
Leave the building |goto 66.00,45.20 < 10 |walk
Follow the path |goto 65.51,46.76 < 20 |only if walking
Follow the path up |goto 65.05,47.35 < 15 |only if walking
Run up the stairs |goto 65.54,48.32 < 15 |only if walking
Enter the building |goto 65.73,48.61 < 10 |walk
talk Lady Jaina Proudmoore##4968
|tip At the top of the tower.
accept Proof of Treachery##27240 |goto 66.28,49.05
step
talk Lady Jaina Proudmoore##4968 |goto 66.28,49.05
|tip At the top of the tower.
Tell her _"I'm ready to travel to Stormwind."_
Travel to Stormwind |goto Stormwind City/0 84.01,33.84 < 20 |noway |c |q 27240
step
talk Anduin Wrynn##107574 |only if completedq(40519)
talk Grand Admiral Jes-Tereth##1750 |only if not completedq(40519)
turnin Proof of Treachery##27240 |goto Stormwind City/0 85.78,31.72
accept Return to Jaina##27241 |goto Stormwind City/0 85.78,31.72
step
Leave the building |goto Dustwallow Marsh/0 66.00,45.20 < 10 |walk
Follow the path |goto Dustwallow Marsh/0 65.51,46.76 < 20 |only if walking
Follow the path up |goto Dustwallow Marsh/0 65.05,47.35 < 15 |only if walking
Run up the stairs |goto Dustwallow Marsh/0 65.54,48.32 < 15 |only if walking
Enter the building |goto Dustwallow Marsh/0 65.73,48.61 < 10 |walk
talk Lady Jaina Proudmoore##4968
|tip At the top of the tower.
turnin Return to Jaina##27241 |goto Dustwallow Marsh/0 66.27,49.05
step
Leave the building |goto 65.63,48.47 < 10 |walk
Cross the bridge |goto 64.31,45.65 < 15 |only if walking
Follow the path |goto 63.62,44.41 < 15 |only if walking
Continue following the path |goto 62.79,42.36 < 20 |only if walking
Continue following the path |goto 60.35,38.92 < 20 |only if walking
Continue following the path |goto 59.53,38.53 < 20 |only if walking
Continue following the path |goto 59.48,37.02 < 20 |only if walking
Continue following the path |goto 57.52,32.41 < 20 |only if walking
Continue following the path |goto 55.23,30.84 < 20 |only if walking
Cross the bridge |goto 54.66,29.50 < 15 |only if walking
Follow the road |goto 54.18,27.26 < 20 |only if walking
Continue following the road |goto 52.76,25.42 < 20 |only if walking
Continue following the road |goto 51.32,25.06 < 20 |only if walking
Continue following the road |goto 49.30,24.99 < 20 |only if walking
Run up the ramp |goto 46.70,23.21 < 15 |only if walking
Enter the building |goto 46.67,24.00 < 10 |walk
Run up the ramp |goto 46.85,24.63 < 10 |walk
talk Captain Darill##23568
|tip Inside the building.
turnin A Grim Connection##27425 |goto 46.62,24.60
accept Confirming the Suspicion##27426 |goto 46.62,24.60
accept Arms of the Grimtotems##27427 |goto 46.62,24.60
stickystart "Collect_Blackhoof_Armaments"
step
Leave the building |goto 46.67,24.02 < 10 |walk
Follow the path |goto 46.92,22.66 < 20 |only if walking
Continue following the path |goto 47.23,19.81 < 20 |only if walking
Continue following the path |goto 44.50,17.14 < 20 |only if walking
kill Grimtotem Elder##23714+
collect 4 Grimtotem Note##33050 |n
Use the Grimtotem Notes |use Grimtotem Note##33050
collect Grimtotem Battle Plan##33051 |q 27426/1 |goto 42.92,14.32
step
label "Collect_Blackhoof_Armaments"
click Blackhoof Armaments##186301
|tip They look like wooden racks with weapons laying on them around this area.
collect 7 Blackhoof Armaments##33071 |q 27427/1 |goto 42.92,14.32
step
Follow the path |goto 42.71,13.99 < 20 |only if walking
Continue following the path |goto 43.57,15.90 < 20 |only if walking
Continue following the path |goto 47.24,19.89 < 20 |only if walking
Continue following the path |goto 46.89,22.50 < 20 |only if walking
Run up the ramp |goto 46.70,23.21 < 15 |only if walking
Enter the building |goto 46.67,24.00 < 10 |walk
Run up the ramp |goto 46.85,24.63 < 10 |walk
talk Captain Darill##23568
|tip Inside the building.
turnin Confirming the Suspicion##27426 |goto 46.62,24.60
turnin Arms of the Grimtotems##27427 |goto 46.62,24.60
accept Tabetha's Assistance##27428 |goto 46.62,24.60
step
Leave the building |goto 46.66,24.06 < 10 |walk
Cross the bridge |goto 45.98,22.61 < 15 |only if walking
Follow the road |goto 44.94,23.03 < 20 |only if walking
Continue following the road |goto 44.59,24.40 < 20 |only if walking
Cross the bridge |goto 43.36,26.17 < 15 |only if walking
Follow the road |goto 42.62,28.95 < 20 |only if walking
Continue following the road |goto 41.88,32.09 < 20 |only if walking
Continue following the road |goto 42.42,34.98 < 20 |only if walking
Cross the bridge |goto 40.42,36.81 < 15 |only if walking
Follow the road |goto 39.98,37.44 < 15 |only if walking
Continue following the road |goto 39.04,38.00 < 20 |only if walking
Continue following the road |goto 38.13,39.79 < 20 |only if walking
Cross the bridge |goto 36.83,40.13 < 15 |only if walking
Cross the bridge |goto 34.62,43.78 < 15 |only if walking
Follow the road |goto 33.29,46.02 < 20 |only if walking
Follow the road |goto 33.53,46.58 < 20 |only if walking
Continue following the road |goto 35.71,47.26 < 20 |only if walking
Continue following the road |goto 39.18,50.14 < 20 |only if walking
Continue following the road |goto 42.55,50.90 < 20 |only if walking
Follow the path |goto 46.48,50.99 < 20 |only if walking
talk Tabetha##6546
|tip Inside the building.
turnin Tabetha's Assistance##27428 |goto 46.02,57.10
accept Raze Direhorn Post!##27429 |goto 46.02,57.10
step
Follow the path |goto 45.68,57.02 < 15 |only if walking
Continue following the path |goto 46.05,55.61 < 20 |only if walking
Continue following the path |goto 46.38,52.58 < 20 |only if walking
Continue following the path |goto 46.65,49.04 < 20 |only if walking
Use Tabetha's Torch |use Tabetha's Torch##33072
|tip Use it inside this tent.
Burn the East Tent |q 27429/3 |goto 47.4,47.5
step
Use Tabetha's Torch |use Tabetha's Torch##33072
|tip Use it inside this tent.
Burn the Northeast Tent |q 27429/2 |goto 47.2,46.6
step
Use Tabetha's Torch |use Tabetha's Torch##33072
|tip Use it inside this tent.
Burn the North Tent |q 27429/1 |goto 46.6,46.0
step
Follow the path |goto 46.65,49.05 < 20 |only if walking
Follow the path |goto 46.48,50.99 < 20 |only if walking
talk Tabetha##6546
|tip Inside the building.
turnin Raze Direhorn Post!##27429 |goto 46.02,57.10
accept Justice for the Hyals##27430 |goto 46.02,57.10
step
Leave the building |goto 65.99,45.20 < 10 |walk
Follow the road |goto 65.60,46.77 < 20 |only if walking
Follow the path |goto 67.61,47.07 < 15 |only if walking
Enter the building |goto 67.87,47.90 < 10 |walk
talk Captain Garran Vimes##4944
|tip Upstairs inside the building.
turnin Justice for the Hyals##27430 |goto 68.21,48.62
accept Peace at Last##27291 |goto 68.21,48.62
step
Leave the building |goto 67.61,47.07 < 10 |walk
Follow the road |goto 64.92,46.80 < 20 |only if walking
Continue following the road |goto 63.55,44.29 < 20 |only if walking
Follow the path |goto 63.44,43.56 < 20 |only if walking
Use the Wreath |use Wreath##33082
|tip Use it next to the Hyal Family Monument.
|tip It looks like a tombstone.
Watch the dialogue
Lay the Wreath at the Hyal Monument |q 27291/1 |goto 63.68,42.82
step
Follow the road |goto 63.39,43.96 < 20 |only if walking
Continue following the road |goto 65.08,46.84 < 20 |only if walking
Follow the path |goto 67.61,47.07 < 15 |only if walking
Enter the building |goto 67.87,47.90 < 10 |walk
talk Captain Garran Vimes##4944
|tip Upstairs inside the building.
turnin Peace at Last##27291 |goto 68.21,48.62
step
Leave the building |goto 67.61,47.07 < 10 |walk
Follow the road |goto 66.77,47.20 < 20 |only if walking
Continue following the road |goto 67.24,48.67 < 20 |only if walking
Follow the path |goto 42.07,72.09 < 15 |only if walking
Follow the path |goto 41.86,72.46 < 15 |only if walking
Enter the building |goto 41.87,73.36 < 10 |walk
talk Thyssiana##40345
|tip Inside the building.
accept To New Thalanaar##25479 |goto 41.82,73.92
step
Leave the building |goto 41.87,73.32 < 10 |walk
Follow the path |goto 41.86,72.44 < 15 |only if walking
Follow the path |goto 42.13,72.07 < 15 |only if walking
talk Dyslix Silvergrub##40358
Tell him _"Dyslix, I need to get to New Thalanaar!"_
Ride the Hippogryph to New Thalanaar |q 25479/1 |goto 42.82,72.43
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\The Burning Crusade (60-80)\\Hellfire Peninsula (58-80)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Hellfire",
next="Leveling Guides\\The Burning Crusade (60-80)\\Zangarmarsh (60-80)",
condition_suggested=function() return level >= 58 and level <= 80 and not completedq(9383) end,
startlevel=58,
endlevel=80,
},[[
step
talk Zidormi##88206
|tip You need to talk to her in order to be able to complete the quests.
|tip She will change the zone back to normal.
Tell her _"Show me the Blasted Lands before the invasion."_
|tip You can talk to her again at any time to change the zone back to the present version of the zone.
Travel to the Past |condition ZGV.InPhase('Old Blasted Lands') |goto Blasted Lands/0 48.16,7.29 |q 9563 |future
step
Follow the path |goto 59.86,15.98 < 15 |only if walking
Enter the building |goto 60.03,14.69 < 10 |walk
Follow the path |goto 59.80,14.38 < 7 |walk
Follow the path |goto 59.44,14.55 < 7 |walk
talk Bernie Heisten##3546
|tip Inside the building.
buy Nethergarde Bitter##23848 |n
collect Nethergarde Bitter##23848 |goto 59.40,14.88 |q 9563 |future
step
Follow the path |goto 59.44,14.61 < 7 |walk
Continue following the path |goto 59.64,14.32 < 7 |walk
Leave the building |goto 60.05,14.70 < 10 |walk
Follow the path |goto 59.87,16.00 < 15 |only if walking
Follow the path |goto 58.80,17.35 < 15 |only if walking
Follow the path down |goto 57.63,17.82 < 15 |only if walking
Continue following the path down |goto 57.09,16.02 < 15 |only if walking
Continue following the path down |goto 55.52,16.89 < 15 |only if walking
Follow the path |goto 54.93,21.57 < 20 |only if walking
Follow the path |goto 51.59,34.44 < 20 |only if walking
Continue following the path |goto 52.80,36.55 < 20 |only if walking
Continue following the path |goto 53.67,42.22 < 15 |only if walking
Follow the path down |goto 53.99,46.77 < 15 |only if walking
Follow the path |goto 54.83,48.97 < 20 |only if walking
Run up the ramp |goto 54.82,51.95 < 15 |only if walking
Enter the Dark Portal |goto 55.01,54.36
Teleport to Hellfire Peninsula |goto Hellfire Peninsula/0 89.39,50.22 < 20 |noway |c |q 10288 |future
step
talk Commander Duron##19229
accept Arrival in Outland##10288 |goto Hellfire Peninsula/0 87.37,50.75
step
talk Amish Wildhammer##18931
turnin Arrival in Outland##10288 |goto 87.36,52.42
accept Journey to Honor Hold##10140 |goto 87.36,52.42
step
talk Amish Wildhammer##18931 |goto 87.36,52.42
Tell him _"Send me to Honor Hold!"_
Take a Flight to Honor Hold |goto 54.6,62.6 < 20 |noway |c |q 10140
step
talk Marshal Isildor##19308
|tip He walks around this small area.
turnin Journey to Honor Hold##10140 |goto 54.60,62.80
accept Force Commander Danath##10254 |goto 54.60,62.80
step
Enter the building |goto 54.89,63.61 < 7 |walk
talk Sid Limbardi##16826
|tip Inside the building.
home Honor Hold |goto 54.22,63.59 |q 10141 |future
step
Leave the building |goto 54.91,63.62 < 7 |walk
Enter the building |goto 56.31,65.85 < 10 |walk
talk Force Commander Danath Trollbane##16819
|tip Upstairs inside the building.
turnin Force Commander Danath##10254 |goto 56.64,66.69
accept The Legion Reborn##10141 |goto 56.64,66.69
accept Know your Enemy##10160 |goto 56.64,66.69
step
Leave the building |goto 56.00,65.09 < 15 |walk
talk Dumphry##21209
|tip He walks around this small area.
accept Waste Not, Want Not##10055 |goto 51.29,60.32
step
Enter the building |goto 51.19,60.18 < 7 |walk
talk Lieutenant Amadi##16820
|tip Inside the building.
turnin Know your Enemy##10160 |goto 50.91,60.19
accept Fel Orc Scavengers##10482 |goto 50.91,60.19
step
Leave the building |goto 51.22,60.17 < 7 |walk
talk Sergeant Altumus##19309
|tip She walks around this small area.
turnin The Legion Reborn##10141 |goto 61.68,60.83
accept The Path of Anguish##10142 |goto 61.68,60.83
stickystart "Collect_Salvaged_Wood"
stickystart "Slay_Bonechewer_Orcs"
step
click Salvageable Metal##182938
|tip They look like various shaped metal parts on the ground around this area.
collect 8 Salvaged Metal##182797 |q 10055/1 |goto 60.4,52.1
step
label "Collect_Salvaged_Wood"
click Salvageable Wood##182936
|tip They look like planks of wood on the ground around this area.
collect 8 Salvaged Wood##182799 |q 10055/2 |goto 60.4,52.1
step
label "Slay_Bonechewer_Orcs"
Kill Bonechewer enemies around this area
Slay #20# Bonechewer Orcs |q 10482/1 |goto 60.4,52.1
stickystart "Kill_Flamewalker_Imps"
stickystart "Kill_Infernal_Warbringers"
step
kill Dreadcaller##19434 |q 10142/1 |goto 66.93,57.40
|tip Be on the lookout for the giant elite Fel Reaver that walks around this area.
step
label "Kill_Flamewalker_Imps"
kill 4 Flamewaker Imp##19136 |q 10142/2 |goto 66.93,57.40
|tip Be on the lookout for the giant elite Fel Reaver that walks around this area.
step
label "Kill_Infernal_Warbringers"
kill 6 Infernal Warbringer##19261 |q 10142/3 |goto 66.93,57.40
|tip Be on the lookout for the giant elite Fel Reaver that walks around this area.
step
talk Sergeant Altumus##19309
|tip She walks around this small area.
turnin The Path of Anguish##10142 |goto 61.68,60.83
accept Expedition Point##10143 |goto 61.68,60.83
step
talk Dumphry##21209
|tip He walks around this small area.
turnin Waste Not, Want Not##10055 |goto 51.29,60.32
accept Laying Waste to the Unwanted##10078 |goto 51.29,60.32
step
Enter the building |goto 51.19,60.18 < 7 |walk
talk Lieutenant Amadi##16820
|tip Inside the building.
turnin Fel Orc Scavengers##10482 |goto 50.91,60.19
accept Ill Omens##10483 |goto 50.91,60.19
step
Leave the building |goto 51.22,60.17 < 7 |walk
Use the Flaming Torch |use Flaming Torch##26002
|tip Use it near the Western Thrower.
|tip It looks like a big wooden artillery machine.
Burn the Western Thrower |q 10078/4 |goto 52.87,47.95
step
Use the Flaming Torch |use Flaming Torch##26002
|tip Use it near the Central Western Thrower.
|tip It looks like a big wooden artillery machine.
Burn the Central Western Thrower |q 10078/3 |goto 53.32,47.84
step
Use the Flaming Torch |use Flaming Torch##26002
|tip Use it near the Central Eastern Thrower.
|tip It looks like a big wooden artillery machine.
Burn the Central Eastern Thrower |q 10078/2 |goto 55.54,47.00
step
Use the Flaming Torch |use Flaming Torch##26002
|tip Use it near the Eastern Thrower.
|tip It looks like a big wooden artillery machine.
Burn the Eastern Thrower |q 10078/1 |goto 58.26,47.23
step
talk Dumphry##21209
|tip He walks around this small area.
turnin Laying Waste to the Unwanted##10078 |goto 51.29,60.32
step
talk Forward Commander Kingston##19310
turnin Expedition Point##10143 |goto 71.35,62.77
accept Disrupt Their Reinforcements##10144 |goto 71.35,62.77
step
Kill enemies around this area
collect 4 Demonic Rune Stone##28513 |goto 72.12,58.37 |q 10144
step
click Portal Kaalez##184415
Disrupt Portal Kaalez |q 10144/2 |goto 72.73,58.95
step
Kill enemies around this area
collect 4 Demonic Rune Stone##28513 |goto 72.12,58.37 |q 10144
step
click Portal Grimh##184414
Destroy Portal Grimh |q 10144/1 |goto 71.48,55.17
step
talk Forward Commander Kingston##19310
turnin Disrupt Their Reinforcements##10144 |goto 71.34,62.76
accept Mission: The Murketh and Shaadraz Gateways##10146 |goto 71.34,62.76
step
talk Wing Commander Dabir'ee##19409
Tell him _"I'm on a bombing mission for Foward Commander Kingston. I need a gryphon destroyer!"_
Click Here After You Start Flying |confirm |goto 71.41,62.48 |q 10146
step
Use the Seaforium PU-36 Explosive Nether Modulator |use Seaforium PU-36 Explosive Nether Modulator##28038
|tip Use it on Gateway Shaadraz.
|tip It looks like a metal structure with a huge green crystal floating above it.
Destroy the Shaadraz Gateway |q 10146/2 |goto 77.24,51.69 |notravel
step
Use the Seaforium PU-36 Explosive Nether Modulator |use Seaforium PU-36 Explosive Nether Modulator##28038
|tip Use it on Gateway Murketh.
|tip It looks like a metal structure with a huge green crystal floating above it.
Destroy the Murketh Gateway |q 10146/1 |goto 77.79,47.95 |notravel
step
talk Forward Commander Kingston##19310
turnin Mission: The Murketh and Shaadraz Gateways##10146 |goto 71.34,62.76
accept Shatter Point##10340 |goto 71.34,62.76
step
talk Wing Commander Dabir'ee##19409
Tell him _"Send me to Shatter Point!"_
Click Here After You Start Flying |confirm |goto 71.41,62.48 |q 10340
step
Fly to Shatter Point |goto 78.47,34.99 < 20 |c |notravel |q 10340
step
talk Runetog Wildhammer##20234
fpath Shatter Point |goto 78.41,34.90
step
talk Runetog Wildhammer##20234
turnin Shatter Point##10340 |goto 78.41,34.90
accept Wing Commander Gryphongar##10344 |goto 78.41,34.90
step
Enter the building |goto 79.22,34.06 < 10 |walk
talk Wing Commander Gryphongar##20232
|tip Inside the building.
turnin Wing Commander Gryphongar##10344 |goto 79.34,33.86
accept Mission: The Abyssal Shelf##10163 |goto 79.34,33.86
step
Leave the building |goto 79.22,34.05 < 7 |walk
talk Gryphoneer Windbellow##20235
Tell her _"Send me to the Abyssal Shelf!"_
Click Here After You Start Flying |confirm |goto 78.25,34.46 |q 10163
stickystart "Kill_Moarg_Overseers"
stickystart "Destroy_Fel_Cannons"
step
Use the Area 52 Special |use Area 52 Special##28132
|tip Use it on the enemies on the ground around this area.
|tip You can take more than one flight to get this done.
|tip It makes it much easier if you bind the bomb to key on your action bar.
kill 20 Gan'arg Peon##19398+ |q 10163/1 |goto 71.58,22.31
step
label "Kill_Moarg_Overseers"
Use the Area 52 Special |use Area 52 Special##28132
|tip Use it on the enemies on the ground around this area.
|tip You can take more than one flight to get this done.
|tip It makes it much easier if you bind the bomb to key on your action bar.
kill 5 Mo'arg Overseer##19397+ |q 10163/2 |goto 71.58,22.31
step
label "Destroy_Fel_Cannons"
Use the Area 52 Special |use Area 52 Special##28132
|tip Use it on the enemies on the ground around this area.
|tip You can take more than one flight to get this done.
|tip It makes it much easier if you bind the bomb to key on your action bar.
Destroy #5# Fel Cannons |q 10163/3 |goto 71.58,22.31
|tip They look like evil metal cannons on the ground around this area.
step
Enter the building |goto 79.22,34.06 < 10 |walk
talk Wing Commander Gryphongar##20232
|tip Inside the building.
turnin Mission: The Abyssal Shelf##10163 |goto 79.34,33.86
accept Go to the Front##10382 |goto 79.34,33.86
step
Leave the building |goto 79.22,34.05 < 7 |walk
talk Gryphoneer Windbellow##20235
Tell her _"Send me to the Honor Point!"_
Click Here After You Start Flying |confirm |goto 78.25,34.46 |q 10382
step
Fly to Honor Point |goto 68.75,28.23 < 20 |c |notravel |q 10382
step
talk Field Marshal Brock##20793
turnin Go to the Front##10382 |goto 68.29,28.55
accept Disruption - Forge Camp: Mageddon##10394 |goto 68.29,28.55
stickystart "Kill_Ganarg_Servants"
step
kill Razorsaw##20798 |q 10394/2 |goto 65.11,32.12
|tip He walks around this area.
step
label "Kill_Ganarg_Servants"
kill 10 Gan'arg Servant##16947 |q 10394/1 |goto 65.9,31.9
step
talk Field Marshal Brock##20793
turnin Disruption - Forge Camp: Mageddon##10394 |goto 68.29,28.55
accept Enemy of my Enemy...##10396 |goto 68.29,28.55
step
kill 3 Fel Cannon MKI##22461 |q 10396/1 |goto 64.1,33.0
step
talk Field Marshal Brock##20793
turnin Enemy of my Enemy...##10396 |goto 68.29,28.55
accept Invasion Point: Annihilator##10397 |goto 68.29,28.55
stickystart "Collect_Burning_Legion_Gate_Key"
stickystart "Accept_The_Dark_Missive"
step
kill Warbringer Arix'Amal##19298 |q 10397/1 |goto 53.09,26.46
step
label "Collect_Burning_Legion_Gate_Key"
kill Warbringer Arix'Amal##19298
collect Burning Legion Gate Key##29795 |q 10397/3 |goto 53.09,26.46
step
label "Accept_The_Dark_Missive"
kill Warbringer Arix'Amal##19298
collect 1 Burning Legion Missive##29589 |q 10395
step
use Burning Legion Missive##29589
accept The Dark Missive##10395 |goto 53.09,26.46
step
click Rune of Spite##182935
Close the Burning Legion Gate |q 10397/2 |goto 53.04,27.72
step
talk Foreman Razelcraz##16915
|tip He walks around this small area.
accept Outland Sucks!##10236 |goto 51.37,30.52
step
click Shredder Parts##235310
|tip They look like brown wooden boxes on the ground around this area.
collect 6 Shredder Spare Parts##28554 |q 10236/1 |goto 48.37,38.60
step
talk Foreman Razelcraz##16915
|tip He walks around this small area.
turnin Outland Sucks!##10236 |goto 51.37,30.52
accept How to Serve Goblins##10238 |goto 51.37,30.52
step
click Manni's Cage##183936
Save Manni |q 10238/1 |goto 45.13,41.06
step
click Moh's Cage##183940
Save Moh |q 10238/2 |goto 46.46,45.15
step
click Jakk's Cage##183941
Save Jakk |q 10238/3 |goto 47.53,46.62
step
talk Foreman Razelcraz##16915
|tip He walks around this small area.
turnin How to Serve Goblins##10238 |goto 51.37,30.52
accept Shizz Work##10629 |goto 51.37,30.52
step
Use the Felhound Whistle |use Felhound Whistle##30803
|tip Use it next to Foreman Razelcraz.
Click Here After Summoning the Fel Guard Hounds |confirm |goto 51.37,30.52 |q 10629
step
kill Deranged Helboar##16863+
|tip Kill them one at a time.
|tip The Fel Guard Hound will only eat 1 corpse, the other(s) will be unused.
click Felhound Poo##184980
|tip They appear on the ground after the Fel Guard Hound finishes eating.
collect Shredder Keys##30794 |q 10629/1 |goto 48.2,30.7
step
talk Foreman Razelcraz##16915
|tip He walks around this small area.
turnin Shizz Work##10629 |goto 51.37,30.52
accept Beneath Thrallmar##10630 |goto 51.37,30.52
step
Enter the mine |goto 51.56,31.74 < 10 |walk
Follow the path |goto 52.24,31.14 < 7 |walk
Continue following the path |goto 52.36,30.60 < 7 |walk
Continue following the path |goto 52.66,30.65 < 7 |walk
Continue following the path |goto 52.87,31.22 < 7 |walk
Continue following the path |goto 53.21,31.68 < 7 |walk
Continue following the path |goto 53.98,31.65 < 7 |walk
kill Urga'zz##18976 |q 10630/1 |goto 54.37,31.59
|tip He walks around this area inside the mine.
step
Follow the path |goto 54.12,31.67 < 7 |walk
Continue following the path |goto 53.11,31.60 < 7 |walk
Continue following the path |goto 52.73,31.06 < 7 |walk
Continue following the path |goto 52.58,30.58 < 7 |walk
Continue following the path |goto 52.28,30.68 < 7 |walk
Continue following the path |goto 52.23,31.32 < 7 |walk
Leave the mine |goto 51.55,31.75 < 10 |walk
talk Foreman Razelcraz##16915
|tip He walks around this small area.
turnin Beneath Thrallmar##10630 |goto 51.37,30.52
step
talk Field Marshal Brock##20793
turnin Invasion Point: Annihilator##10397 |goto 68.29,28.55
step
talk Sid Limbardi##16826
|tip Inside the building.
accept The Longbeards##9558 |goto 54.22,63.60
step
talk Father Malgor Devidicus##16825
|tip Inside the building.
accept An Old Gift##10058 |goto 54.29,63.58
step
Leave the building |goto 54.90,63.62 < 10 |walk
Enter the building |goto 56.31,65.86 < 10 |walk
talk Warp-Scryer Kryv##16839
|tip Upstairs inside the building.
turnin The Dark Missive##10395 |goto 56.69,66.52
accept The Heart of Darkness##10399 |goto 56.69,66.52
accept The Path of Glory##10047 |goto 56.69,66.52
step
talk Force Commander Danath Trollbane##16819
|tip Upstairs inside the building.
accept Overlord##10400 |goto 56.65,66.69
step
Leave the building |goto 56.00,65.10 < 10 |walk
Enter the building |goto 51.20,60.17 < 10 |walk
talk Honor Guard Wesilow##16827
|tip Inside the building.
accept Unyielding Souls##10050 |goto 50.88,60.35
step
Leave the building |goto 51.21,60.17 < 10 |walk
talk Foreman Biggums##16837
accept A Job for an Intelligent Man##9355 |goto 52.01,62.56
accept When This Mine's a-Rockin'##10079 |goto 52.01,62.56
step
Enter the mine |goto 52.23,62.32 < 10 |walk
Follow the path |goto 53.98,62.68 < 10 |walk
Follow the path down |goto 54.66,64.21 < 10 |walk
Follow the path down |goto 54.38,64.68 < 10 |walk
kill 12 Gan'arg Sapper##18827 |q 10079/1 |goto 54.07,64.11
|tip Inside the mine.
step
Follow the path up |goto 54.08,64.19 < 10 |walk
Follow the path up |goto 54.56,64.53 < 10 |walk
Continue up the path |goto 54.62,64.01 < 10 |walk
Continue up the path |goto 53.86,62.63 < 10 |walk
Leave the mine |goto 52.23,62.34 < 10 |walk
talk Foreman Biggums##16837
turnin When This Mine's a-Rockin'##10079 |goto 52.01,62.56
accept The Mastermind##10099 |goto 52.01,62.56
step
Enter the mine |goto 52.23,62.32 < 10 |walk
Follow the path |goto 53.98,62.68 < 10 |walk
Follow the path down |goto 54.66,64.21 < 10 |walk
Follow the path down |goto 54.38,64.68 < 10 |c |q 10099
step
Follow the path down |goto 54.13,63.90 < 10 |walk
kill Z'kral##18974 |q 10099/1 |goto 56.29,61.41
|tip He walks around this small area inside the mine.
step
Follow the path |goto 55.79,61.58 < 10 |walk
Follow the path |goto 55.18,62.22 < 10 |walk
Follow the path up |goto 54.76,63.07 < 10 |c |q 10099
step
Follow the path up |goto 54.08,64.19 < 10 |walk
Follow the path up |goto 54.56,64.53 < 10 |walk
Continue up the path |goto 54.62,64.01 < 10 |walk
Continue up the path |goto 53.86,62.63 < 10 |walk
Leave the mine |goto 52.23,62.34 < 10 |walk
talk Foreman Biggums##16837
turnin The Mastermind##10099 |goto 52.01,62.56
stickystart "Kill_Marauding_Crust_Bursters"
step
kill Marauding Crust Burster##16857+
|tip They look like jumping piles of rocks moving across the ground around this area.
|tip They come up to fight when you get close to the jumping rocks.
accept Missing Missive##9373 |goto 49.29,64.86
|tip You will eventually automatically accept this quest after looting.
step
label "Kill_Marauding_Crust_Bursters"
kill 15 Marauding Crust Burster##16857 |q 9355/1 |goto 49.29,64.86
|tip They look like jumping piles of rocks moving across the ground around this area.
|tip They come up to fight when you get close to the jumping rocks.
step
talk Foreman Biggums##16837
turnin A Job for an Intelligent Man##9355 |goto 52.01,62.56
step
click Trampled Skeleton##182803
|tip They look like brown bones on the ground on the road around this area.
Cleanse #8# Trampled Skeletons |q 10047/1 |goto 52.45,50.86
step
Kill Bleeding Hollow enemies around this area
collect Cursed Talisman##30157 |q 10483/1 |goto 67.24,68.54
step
talk Corporal Ironridge##21133
turnin Ill Omens##10483 |goto 70.96,63.37
accept Cursed Talismans##10484 |goto 70.96,63.37
step
talk Wing Commander Dabir'ee##19409
accept Zeth'Gor Must Burn!##10895 |goto 71.41,62.48
stickystart "Collect_Cursed_Talismans"
step
Use the Smoke Beacon |use Smoke Beacon##31739
|tip Use it under the burned tower.
Mark the Northern Tower |q 10895/1 |goto 68.00,66.87
step
Use the Smoke Beacon |use Smoke Beacon##31739
|tip Use it under the burned tower.
Mark the Forge Tower |q 10895/3 |goto 70.06,69.10
step
Use the Smoke Beacon |use Smoke Beacon##31739
|tip Use it under the burned tower.
Mark the Foothill Tower |q 10895/4 |goto 70.90,71.40
step
Use the Smoke Beacon |use Smoke Beacon##31739
|tip Use it under the burned tower.
Mark the Southern Tower |q 10895/2 |goto 66.45,76.51
step
label "Collect_Cursed_Talismans"
Kill Bleeding Hollow enemies around this area
collect 12 Cursed Talisman##30157 |q 10484/1 |goto 66.90,74.31
step
talk Corporal Ironridge##21133
turnin Cursed Talismans##10484 |goto 70.96,63.37
accept Warlord of the Bleeding Hollow##10485 |goto 70.96,63.37
step
talk Wing Commander Dabir'ee##19409
turnin Zeth'Gor Must Burn!##10895 |goto 71.41,62.48
step
Enter the building |goto 69.46,76.30 < 10 |walk
Follow the path |goto 69.70,76.40 < 7 |walk
Continue following the path |goto 70.07,76.08 < 7 |walk
Continue following the path |goto 70.32,75.97 < 7 |walk
Continue following the path |goto 70.44,76.20 < 7 |walk
kill Warlord Morkh##16964
|tip Inside the building.
collect Morkh's Shattered Armor##30158 |q 10485/1 |goto 70.08,77.09
step
Follow the path |goto 70.44,76.10 < 7 |walk
Continue following the path |goto 70.08,76.08 < 7 |walk
Follow the path |goto 69.63,76.46 < 7 |walk
Leave the building |goto 69.40,76.25 < 10 |walk
talk Corporal Ironridge##21133
turnin Warlord of the Bleeding Hollow##10485 |goto 70.96,63.37
accept Return to Honor Hold##10903 |goto 70.96,63.37
step
talk Assistant Klatu##22430
|tip Upstairs inside the building.
turnin Return to Honor Hold##10903 |goto 54.32,63.64
accept Fel Spirits##10909 |goto 54.32,63.64
accept Digging for Prayer Beads##10916 |goto 54.32,63.64
step
Leave the building |goto 54.89,63.62 < 10 |walk
talk Brumman##18771
buy Silken Thread##4291 |n
collect Silken Thread##4291 |goto 54.11,63.97 |q 10916
step
talk Warrant Officer Tracy Proudwell##18266
buy Fei Fei Doggy Treat##31799 |n
|tip It costs 1 Silken Thread.
collect Fei Fei Doggy Treat##31799 |goto 56.33,62.85 |q 10916
step
talk Fei Fei##20206
|tip She walks around this small area.
accept Fei Fei's Treat##10919 |goto 56.41,62.92 |instant
step
click Fei Fei's Cache##185302
|tip Follow Fei Fei around, but you will eventually end up behind the inn at this spot.
collect Draenei Prayer Beads##31795 |q 10916/1 |goto 54.16,63.32
step
Use the Anchorite Relic |use Anchorite Relic##31772
Kill Shattered Hand enemies around this area
|tip Kill them near the relics you place on the ground.
|tip This will spawn Fel Spirits.
|tip If you need to move the relic, you can right click it on the ground, then use the Anchorite Relic in a new spot.
kill Fel Spirit##22454+
Avenge Jules |q 10909/1 |goto 44.85,74.99
step
Enter the building |goto 54.89,63.62 < 10 |walk
talk Assistant Klatu##22430
|tip Upstairs inside the building.
turnin Fel Spirits##10909 |goto 54.32,63.64
turnin Digging for Prayer Beads##10916 |goto 54.32,63.64
accept The Exorcism of Colonel Jules##10935 |goto 54.32,63.64
step
Follow the path |goto 54.22,63.66 < 7 |walk
talk Anchorite Barada##22431
|tip Upstairs inside the building.
Tell him _"I am ready, Anchorite. Let us begin the exorcism."_
Click Here After You Begin the Exorcism |confirm |goto 53.93,63.55 |q 10935
step
Watch the dialogue
Kill the enemies that attack in waves
|tip Kill the enemies on the ground by fighting as normal.
Use the Ritual Prayer Beads |use Ritual Prayer Beads##31828
|tip Target a floating enemies and use it when floating enemies are in the room.
|tip Enemies build up over time, and the cooldown is 15 seconds, so try to kill 2-3 enemies each time you use the item.
|tip Once the green oozes start appearing and attacking Anchorite Barada, use the Ritual Prayer Beads on Anchorite Barada to keep him healed.
talk Colonel Jules##22432
|tip Talk to him on the bed after the exorcism is complete.
|tip Upstairs inside the building.
Save Colonel Jules |q 10935/1 |goto 53.93,63.64
step
Follow the path |goto 54.22,63.66 < 7 |walk
talk Assistant Klatu##22430
|tip Upstairs inside the building.
turnin The Exorcism of Colonel Jules##10935 |goto 54.32,63.64
accept Trollbane is Looking for You##10936 |goto 54.32,63.64
step
Leave the building |goto 54.89,63.62 < 10 |walk
Enter the building |goto 56.31,65.86 < 10 |walk
talk Warp-Scryer Kryv##16839
|tip Upstairs inside the building.
turnin The Path of Glory##10047 |goto 56.69,66.52
accept The Temple of Telhamat##10093 |goto 56.69,66.52
step
talk Force Commander Danath Trollbane##16819
|tip Upstairs inside the building.
turnin Trollbane is Looking for You##10936 |goto 56.65,66.69
accept Drill the Drillmaster##10937 |goto 56.65,66.69
stickystart "Kill_Unyielding_Sorcerers"
stickystart "Kill_Unyielding_Knights"
stickystart "Kill_Unyielding_Footmen"
step
Leave the building |goto 56.01,65.10 < 10 |walk
click Mysteries of the Light##182804
collect Mysteries of the Light##25938 |q 10058/1 |goto 54.96,86.82
step
label "Kill_Unyielding_Sorcerers"
kill 10 Unyielding Sorcerer##16905 |q 10050/2 |goto 54.46,80.75
step
label "Kill_Unyielding_Knights"
kill 5 Unyielding Knight##16906 |q 10050/3 |goto 54.89,77.96
step
label "Kill_Unyielding_Footmen"
kill 12 Unyielding Footman##16904 |q 10050/1 |goto 54.89,77.96
step
talk Legassi##19344
accept Ravager Egg Roundup##9349 |goto 49.25,74.84
step
talk "Screaming" Screed Luckheed##19367
accept In Case of Emergency...##10161 |goto 49.15,74.87
step
click Ravager Egg##181385
|tip They look like big white eggs on the ground around this area.
kill Razorfang Ravager##16933+
collect 12 Ravager Egg##23217 |q 9349/1 |goto 41.69,83.79
step
talk Legassi##19344
turnin Ravager Egg Roundup##9349 |goto 49.25,74.84 |notravel
accept Helboar, the Other White Meat##9361 |goto 49.25,74.84 |notravel
step
kill Deranged Helboar##16863+
collect Tainted Helboar Meat##23270 |n
Use the Purification Mixture |use Purification Mixture##23268
|tip You must have Tainted Helboar Meat to be able to use it.
|tip The meat won't become purified every time.
collect 8 Purified Helboar Meat##23248 |q 9361/1 |goto 50.51,70.53
step
talk Legassi##19344
turnin Helboar, the Other White Meat##9361 |goto 49.25,74.84
accept Smooth as Butter##9356 |goto 49.25,74.84
stickystart "Collect_Zeppelin_Debris"
step
kill Bonestripper Buzzard##16972+
collect 12 Plump Buzzard Wing##23239 |q 9356/1 |goto 58.1,71.3
step
label "Collect_Zeppelin_Debris"
click Zeppelin Debris##183397
|tip They look like various pieces of metal on the ground around this area.
collect 30 Zeppelin Debris##28116 |q 10161/1 |goto 58.1,71.3
step
talk Legassi##19344
turnin Smooth as Butter##9356 |goto 49.25,74.84 |notravel
step
talk "Screaming" Screed Luckheed##19367
turnin In Case of Emergency...##10161 |goto 49.15,74.87
accept Voidwalkers Gone Wild##9351 |goto 49.15,74.87
step
talk Father Malgor Devidicus##16825
|tip Inside the building.
turnin An Old Gift##10058 |goto 54.29,63.58
step
Leave the building |goto 54.90,63.62 < 10 |walk
Enter the building |goto 51.21,60.17 < 10 |walk
talk Honor Guard Wesilow##16827
turnin Unyielding Souls##10050 |goto 50.88,60.35
accept Looking to the Leadership##10057 |goto 50.88,60.35
step
Leave the building |goto 51.21,60.17 < 10 |walk
kill Drillmaster Zurok##19312 |q 10937/1 |goto 47.93,56.38
|tip He walks around this small area.
step
talk Anchorite Obadei##16834
accept In Search of Sedai##9390 |goto 23.01,40.38
step
talk Ikan##16799
accept Cruel Taskmasters##9399 |goto 23.09,40.23
accept The Rock Flayer Matriarch##9490 |goto 23.09,40.23
step
talk Scout Vanura##16797
|tip She walks up and down the stairs around this area.
accept Deadly Predators##9398 |goto 23.41,40.00
step
talk Kuma##18785
fpath Temple of Telhamat |goto 25.19,37.23
step
Enter the building |goto 23.34,37.21 < 10 |walk
talk Amaan the Wise##16796
|tip Inside the building.
turnin The Temple of Telhamat##10093 |goto 23.42,36.55
accept The Pools of Aggonar##9426 |goto 23.42,36.55
accept Helping the Cenarion Post##10443 |goto 23.42,36.55
step
talk Caregiver Ophera Windfury##18906
|tip Inside the building.
home Temple of Telhamat |goto 23.35,36.36 |q 9423 |future
step
talk Elsaana##17006
|tip Inside the building.
accept An Ambitious Plan##9383 |goto 23.21,36.66
step
Leave the building |goto 23.35,37.17 < 10 |walk
clicknpc Sedai's Corpse##16852
turnin In Search of Sedai##9390 |goto 26.89,37.43
accept Return to Obadei##9423 |goto 26.89,37.43
step
talk Anchorite Obadei##16834
turnin Return to Obadei##9423 |goto 23.00,40.38
step
talk Makuru##16833
accept Makuru's Vengeance##9424 |goto 23.14,40.17
step
Kill Mag'har enemies around this area
collect 10 Mag'har Ancestral Beads##23589 |q 9424/1 |goto 35.44,32.39
stickystart "Kill_Terrorfiends"
stickystart "Kill_Blistering_Rots"
step
kill Arazzuis the Cruel##19191 |q 10400/1 |goto 43.82,31.55
step
label "Kill_Terrorfiends"
kill 6 Terrorfiend##16951 |q 9426/1 |goto 40.52,32.52
step
label "Kill_Blistering_Rots"
kill 6 Blistering Rot##16901 |q 9426/2 |goto 40.52,32.52
step
label "Kill_Terrorfiends"
kill 10 Terrorfiend##16951 |q 10399/1 |goto 40.52,32.52
step
talk Amaan the Wise##16796
|tip Inside the building.
turnin The Pools of Aggonar##9426 |goto 23.42,36.55
accept Cleansing the Waters##9427 |goto 23.42,36.55
step
Leave the building |goto 23.35,37.17 < 10 |walk
talk Makuru##16833
turnin Makuru's Vengeance##9424 |goto 23.14,40.17
step
Watch the dialogue
talk Anchorite Obadei##16834
accept Atonement##9543 |goto 23.00,40.38
step
Enter the building |goto 23.35,37.17 < 10 |walk
talk Amaan the Wise##16796
|tip Inside the building.
turnin Atonement##9543 |goto 23.42,36.55
accept Sha'naar Relics##9430 |goto 23.42,36.55
step
Leave the building |goto 23.35,37.17 < 10 |walk
Use the Cleansing Vial |use Cleansing Vial##23361
Watch the dialogue
kill Aggonis##17000 |q 9427/1 |goto 40.14,30.77
step
Enter the building |goto 23.35,37.17 < 10 |walk
talk Amaan the Wise##16796
|tip Inside the building.
turnin Cleansing the Waters##9427 |goto 23.42,36.55
step
Leave the building |goto 23.35,37.17 < 10 |walk
talk Thiah Redmane##16991
turnin Missing Missive##9373 |goto 15.70,52.09
turnin Helping the Cenarion Post##10443 |goto 15.70,52.09
accept Demonic Contamination##9372 |goto 15.70,52.09
step
talk Tola'thion##19293
accept Colossal Menace##10132 |goto 15.62,52.04
step
talk Mahuram Stouthoof##16888
|tip He walks around this small area.
accept Keep Thornfang Hill Clear!##10159 |goto 15.68,52.16
step
talk Amythiel Mistwalker##16885
accept The Cenarion Expedition##9912 |goto 16.03,52.15
stickystart "Kill_Raging_Colossuses"
step
kill Raging Colossus##19188+
accept Crimson Crystal Clue##10134 |goto 14.7,44.6
|tip You will eventually automatically accept this quest after looting.
step
label "Kill_Raging_Colossuses"
kill 5 Raging Colossus##19188 |q 10132/1 |goto 14.7,44.6
stickystart "Kill_Thornfang_Venomspitters"
step
kill 8 Thornfang Ravager##19349 |q 10159/1 |goto 8.41,50.22
step
label "Kill_Thornfang_Venomspitters"
kill 8 Thornfang Venomspitter##19350 |q 10159/2 |goto 8.41,50.22
step
talk Mahuram Stouthoof##16888
|tip He walks around this small area.
turnin Keep Thornfang Hill Clear!##10159 |goto 15.68,52.16
step
talk Tola'thion##19293
turnin Colossal Menace##10132 |goto 15.62,52.04
turnin Crimson Crystal Clue##10134 |goto 15.62,52.04
accept The Earthbinder##10349 |goto 15.62,52.04
step
talk Earthbinder Galandria Nightbreeze##19294
turnin The Earthbinder##10349 |goto 15.96,51.57
step
Watch the dialogue
talk Earthbinder Galandria Nightbreeze##19294
|tip She walks around this small area.
accept Natural Remedies##10351 |goto 15.96,51.57
step
Use the Seed of Revitalization |use Seed of Revitalization##29478
|tip Use it while standing on the Earthbinder's Circle.
Watch the dialogue
kill Goliathon##19305
Revitalize Fallen Sky Ridge |q 10351/1 |goto 13.63,39.10
step
talk Earthbinder Galandria Nightbreeze##19294
|tip She walks around this small area.
turnin Natural Remedies##10351 |goto 15.96,51.57
step
kill Hulking Helboar##16880+
collect 6 Helboar Blood Sample##23336 |q 9372/1 |goto 20.00,55.47
step
talk Thiah Redmane##16991
turnin Demonic Contamination##9372 |goto 15.70,52.09
accept Testing the Antidote##10255 |goto 15.70,52.09
step
Use the Cenarion Antidote |use Cenarion Antidote##23337
|tip Use it on a Hulking Helboar around this area.
kill Dreadtusk##16880
Administer the Antidote |q 10255/1 |goto 20.00,55.47
step
talk Thiah Redmane##16991
turnin Testing the Antidote##10255 |goto 15.70,52.09
stickystart "Kill_Illidari_Taskmasters"
stickystart "Collect_Shanaar_Relics"
step
Enter the building |goto 15.44,58.79 < 10 |walk
talk Akoru the Firecaller##20678
|tip Inside the building.
accept Naladu##10403 |goto 15.59,58.75
step
Leave the building |goto 15.44,58.79 < 7 |walk
Enter the building |goto 16.18,64.76 < 10 |walk
talk Naladu##19361
|tip Inside the building.
turnin Naladu##10403 |goto 16.27,65.08
accept A Traitor Among Us##10367 |goto 16.27,65.08
step
Leave the building |goto 16.18,64.76 < 7 |walk
Enter the building |goto 14.37,62.66 < 10 |walk
click Metal Coffer##184466
|tip Inside the building.
collect Sha'naar Key##29501 |q 10367/1 |goto 14.34,63.49
step
Leave the building |goto 14.37,62.66 < 7 |walk
Enter the building |goto 16.18,64.76 < 10 |walk
talk Naladu##19361
|tip Inside the building.
turnin A Traitor Among Us##10367 |goto 16.27,65.08
accept The Dreghood Elders##10368 |goto 16.27,65.08
step
Leave the building |goto 16.18,64.76 < 7 |walk
Enter the building |goto 15.44,58.79 < 10 |walk
talk Akoru the Firecaller##20678
|tip Inside the building.
Tell him _"Walk free, elder. Bring the spirits back to your tribe."_
Free Akoru |q 10368/2 |goto 15.59,58.75
step
Leave the building |goto 15.44,58.79 < 7 |walk
Enter the building |goto 13.03,58.64 < 10 |walk
talk Aylaan the Waterwaker##20679
|tip Inside the building.
Tell him _"Walk free, elder. Bring the spirits back to your tribe."_
Free Aylaan |q 10368/3 |goto 13.00,58.43
step
Leave the building |goto 13.03,58.64 < 7 |walk
Enter the building |goto 13.29,60.77 < 10 |walk
talk Morod the Windstirrer##20677
|tip Inside the building.
Tell him _"Walk free, elder. Bring the spirits back to your tribe."_
Free Morod |q 10368/1 |goto 13.13,61.04
step
Leave the building |goto 13.29,60.77 < 7 |walk
Enter the building |goto 16.18,64.76 < 10 |walk
talk Naladu##19361
|tip Inside the building.
turnin The Dreghood Elders##10368 |goto 16.27,65.08
accept Arzeth's Demise##10369 |goto 16.27,65.08
step
Leave the building |goto 16.18,64.76 < 7 |walk
Use the Staff of the Dreghood Elders |use Staff of the Dreghood Elders##29513
|tip Use it on Arzeth the Merciless.
|tip Wait until Arzeth the Merciless is up top of the stairs by himself.
|tip He spawns at this location, but walks around this area.
kill Arzeth the Powerless##20680 |q 10369/1 |goto 14.33,62.17
step
Enter the building |goto 16.18,64.76 < 10 |walk
talk Naladu##19361
|tip Inside the building.
turnin Arzeth's Demise##10369 |goto 16.27,65.081
step
label "Kill_Illidari_Taskmasters"
Leave the building |goto 16.18,64.76 < 7 |walk
kill 4 Illidari Taskmaster##17058 |q 9399/1 |goto 14.28,59.63
|tip If you kill the Illidari Taskmasters first, his Dreghood followers will stop attacking you.
step
label "Collect_Shanaar_Relics"
click Sha'naar Relic##181637
|tip They look like blue vases on the ground around this area.
collect 10 Sha'naar Relic##23642 |q 9430/1 |goto 14.28,59.63
step
talk Gremni Longbeard##16850
turnin The Longbeards##9558 |goto 23.89,72.17
accept The Arakkoa Threat##9417 |goto 23.89,72.17
accept Rampaging Ravagers##9385 |goto 23.89,72.17
step
talk Mirren Longbeard##16851
accept Gaining Mirren's Trust##9563 |goto 23.97,72.35
step
talk Mirren Longbeard##16851
turnin Gaining Mirren's Trust##9563 |goto 23.97,72.35
accept The Finest Down##9420 |goto 23.97,72.35
step
Kill Quillfang enemies around this area
Slay #10# Quillfang Ravagers |q 9385/1 |goto 22.70,67.85
step
talk Gremni Longbeard##16850
turnin Rampaging Ravagers##9385 |goto 23.89,72.17
stickystart "Kill_Haaleshi_Windwalkers"
stickystart "Kill_Haaleshi_Talonguards"
stickystart "Collect_Kaliri_Feathers"
step
kill Avruu##17084
|tip He walks along this ledge around this area.
accept Avruu's Orb##9418 |goto 25.7,75.1
|tip You will automatically accept this quest after looting.
step
click Haal'eshi Altar##181606
Choose _"Place Avruu's Orb on the Altar."_
kill Aeranas##17085
|tip He will become friendly.
talk Aeranas##17085
turnin Avruu's Orb##9418 |goto 28.99,81.46
step
label "Kill_Haaleshi_Windwalkers"
kill 4 Haal'eshi Windwalker##16966 |q 9417/1 |goto 25.88,75.23
step
label "Kill_Haaleshi_Talonguards"
kill 6 Haal'eshi Talonguard##16967  |q 9417/2 |goto 25.88,75.23
step
label "Collect_Kaliri_Feathers"
Kill Kaliri enemies around this area
click Kaliri Nest##181582
|tip They look like bird nests with pink eggs in them on the ground around this area.
collect 8 Kaliri Feather##23588 |q 9420/1 |goto 25.88,75.23
step
talk Mirren Longbeard##16851
turnin The Finest Down##9420 |goto 23.97,72.35
step
talk Gremni Longbeard##16850
turnin The Arakkoa Threat##9417 |goto 23.89,72.17
stickystart "Kill_Stonescythe_Alphas"
step
kill 8 Stonescythe Whelp##16927 |q 9398/2 |goto 31.53,60.67
step
Enter the cave |goto 34.18,62.99 < 10 |walk
Follow the path |goto 33.86,63.94 < 10 |walk
Follow the path |goto 33.61,64.18 < 10 |walk
kill Blacktalon the Savage##17057
|tip He walks around this small area inside the cave.
collect Blacktalon's Claw##23687 |q 9490/1 |goto 33.35,65.10
step
label "Kill_Stonescythe_Alphas"
kill 4 Stonescythe Alpha##16929 |q 9398/1 |goto 33.35,65.10
|tip Inside the cave, as well as on top of the big hills outside the cave around this area.
step
talk Amaan the Wise##16796
|tip Inside the building.
turnin Sha'naar Relics##9430 |goto 23.42,36.55
accept The Seer's Relic##9545 |goto 23.42,36.55
step
Leave the building |goto 23.35,37.14 < 10 |walk
talk Scout Vanura##16797
|tip She walks up and down the stairs around this area.
turnin Deadly Predators##9398 |goto 23.41,40.00
step
talk Ikan##16799
turnin Cruel Taskmasters##9399 |goto 23.09,40.22
turnin The Rock Flayer Matriarch##9490 |goto 23.09,40.22
step
Use the Seer's Relic |use Seer's Relic##23645
|tip Use it on Sedai's Corpse.
Watch the dialogue
Grant the Vision |q 9545/1 |goto 26.90,37.44
step
Enter the building |goto 23.34,37.16 < 10 |walk
talk Amaan the Wise##16796
|tip Inside the building.
turnin The Seer's Relic##9545 |goto 23.42,36.55
step
Leave the building |goto 23.35,37.14 < 10 |walk
Enter the building |goto 51.20,60.18 < 10 |walk
talk Honor Guard Wesilow##16827
|tip Inside the building.
turnin Looking to the Leadership##10057 |goto 50.88,60.35
step
Leave the building |goto 51.20,60.18 < 10 |walk
Enter the building |goto 56.31,65.85 < 10 |walk
talk Warp-Scryer Kryv##16839
|tip Upstairs inside the building.
turnin The Heart of Darkness##10399 |goto 56.69,66.52
step
talk Force Commander Danath Trollbane##16819
|tip Upstairs inside the building.
turnin Overlord##10400 |goto 56.64,66.70
turnin Drill the Drillmaster##10937 |goto 56.64,66.70
stickystart "Collect_Condensed_Voidwalker_Essences"
step
Leave the building |goto 56.01,65.11 < 10 |walk
kill Uncontrolled Voidwalker##16975
|tip Don't kill it, just get it to low health.
Use the Sanctified Crystal |use Sanctified Crystal##23417
|tip Use it on an Uncontrolled Voidwalker when it's at low health.
click Glowing Crystal##181574
|tip It will appear above the Uncontrolled Voidwalker's corpse after you use the Sanctified Crystal.
collect Glowing Sanctified Crystal##23442 |q 9383/1 |goto 46.88,82.62
step
label "Collect_Condensed_Voidwalker_Essences"
Kill Voidwalker enemies around this area
collect 10 Condensed Voidwalker Essence##23218 |q 9351/1 |goto 46.88,82.62
step
kill Arch Mage Xintor##16977 |q 10057/1 |goto 53.67,81.10
step
kill Lieutenant Commander Thalvos##16978 |q 10057/2 |goto 54.80,83.73
|tip He walks around this small area.
step
talk "Screaming" Screed Luckheed##19367
turnin Voidwalkers Gone Wild##9351 |goto 49.15,74.86
step
talk Elsaana##17006
|tip Inside the building.
turnin An Ambitious Plan##9383 |goto 23.21,36.66
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Wrath of the Lich King (60-80)\\Howling Fjord (58-80)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Howling",
next="Leveling Guides\\Wrath of the Lich King (60-80)\\Dragonblight (61-80)",
condition_suggested=function() return level >= 58 and level <= 80 and not completedq(11348) end,
startlevel=58,
endlevel=80,
},[[
step
talk Macalroy##23547
|tip He walks around this area.
accept Hell Has Frozen Over...##11228 |goto Howling Fjord/0 60.81,62.51
step
talk Vice Admiral Keller##23546
|tip He walks around this small area.
turnin Hell Has Frozen Over...##11228 |goto 60.50,61.19
accept If Valgarde Falls...##11243 |goto 60.50,61.19
step
talk Pricilla Winterwind##23736
fpath Valgarde Port |goto 59.79,63.24
step
Enter the building |goto 58.62,62.95 < 7 |walk
talk Innkeeper Hazel Lagras##23731
|tip Inside the building.
home Valgarde |goto 58.4,62.5 |q 11244 |future
step
Leave the building |goto 58.62,62.95 < 7 |walk
Kill Dragonflayer enemies around this area
Slay #12# Dragonflayer Invaders |q 11243/1 |goto 58.95,59.61
step
talk Vice Admiral Keller##23546
|tip He walks around this small area.
turnin If Valgarde Falls...##11243 |goto 60.50,61.19
accept Rescuing the Rescuers##11244 |goto 60.50,61.19
step
click Ceremonial Dragonflayer Harpoon##186565
|tip They look like poles sticking out of the ground around this area.
Rescue #8# Valgarde Scouts |q 11244/1 |goto 58.40,56.21
step
talk Vice Admiral Keller##23546
|tip He walks around this small area.
turnin Rescuing the Rescuers##11244 |goto 60.50,61.19
accept Prisoners of Wyrmskull##11255 |goto 60.50,61.19
step
talk Beltrand McSorf##23548
|tip He walks around this small area.
accept The Human League##11273 |goto 60.18,61.03
step
talk Thoralius the Wise##23975
accept Into the World of Spirits##11333 |goto 59.80,61.48
step
talk Guard Captain Zorek##23728
accept The Path to Payback##11420 |goto 60.12,62.43
step
click Reagent Pouch##186662
|tip Underwater.
collect Reagent Pouch##6652 |q 11333/1 |goto 62.39,59.31
step
talk Harold Lagras##23730
|tip He walks around underwater around this area.
accept Daggercap Divin'##11443 |goto 63.06,60.03
step
Equip the Diving Helm
|tip This will allow you to breathe underwater.
Click Here After Equipping the Diving Helm |confirm |q 11443
step
click Valgarde Supply Crate##186912
|tip They look like wooden boxes floating underwater around this area.
collect 10 Valgarde Supply Crate##34081 |q 11443/1 |goto 62.58,59.38
step
talk Harold Lagras##23730
|tip He walks around underwater around this area.
turnin Daggercap Divin'##11443 |goto 63.06,60.03
step
Equip Your Normal Head Armor
Click Here After Equipping Your Normal Head Armor |confirm |q 11273
step
Enter the building |goto 58.91,54.41 < 10 |walk
talk Pulroy the Archaeologist##24122
|tip Inside the building.
turnin The Human League##11273 |goto 59.18,54.57
accept Zedd's Probably Dead##11274 |goto 59.18,54.57
step
Leave the building |goto 58.91,54.41 < 7 |walk
Kill Dragonflayer enemies around this area
collect Dragonflayer Cage Key##33308+ |n
click Dragonflayer Cages
|tip They looke like metal cages on the ground and inside buildings around this area.
Rescue #3# Captured Valgarde Prisoners |q 11255/1 |goto 58.8,54.1
step
talk Zedd##24145
turnin Zedd's Probably Dead##11274 |goto 56.63,52.38
accept And Then There Were Two...##11276 |goto 56.63,52.38
step
Enter the cave |goto 56.64,49.33 < 10 |walk
Follow the path down |goto 56.49,48.58 < 7 |c |q 11276
step
Continue down the path |goto 56.07,48.82 < 7 |walk
Continue down the path |goto 56.16,49.84 < 7 |c |q 11276
step
Continue down the path |goto 56.61,49.71 < 7 |walk
Continue down the path |goto 56.62,48.92 < 7 |c |q 11276
step
Continue down the path |goto 56.06,48.92 < 7 |walk
Follow the path down |goto 55.97,50.22 < 7 |walk
Follow the path |goto 56.43,52.39 < 10 |walk
Continue following the path |goto 56.63,53.37 < 10 |walk
talk Glorenfeld##24150
|tip Inside the cave.
turnin And Then There Were Two...##11276 |goto 56.90,53.77
accept The Depths of Depravity##11277 |goto 56.90,53.77
stickystart "Collect_Wyrmskull_Tablets"
step
Follow the path |goto 57.14,55.74 < 7 |walk
Follow the path |goto 57.73,56.21 < 7 |walk
click Harpoon Operation Manual##186828
|tip Inside the cave.
collect Harpoon Operation Manual##34031 |q 11420/1 |goto 59.26,55.38
step
talk Ares the Oathbound##24189
|tip Inside the cave.
accept The Shining Light##11288 |goto 59.34,55.42
step
label "Collect_Wyrmskull_Tablets"
click Wyrmskull Tablet##186595
|tip They look like broken stone tablets laying on the ground inside this cave.
collect 10 Wyrmskull Tablet##33355 |q 11277/1 |goto 58.62,55.78
step
Follow the path |goto 57.80,56.18 < 7 |walk
Run down the stairs |goto 56.96,56.32 < 7 |walk
Follow the path |goto 56.33,56.67 < 7 |c |q 11288
step
Run down the stairs |goto 56.51,57.05 < 7 |walk
Follow the path |goto 57.21,56.54 < 7 |walk
Follow the path |goto 57.13,55.65 < 7 |walk
click Sacred Artifact##186607
|tip Inside the cave.
collect Sacred Artifact##33485 |q 11288/1 |goto 56.65,53.43
step
Follow the path |goto 57.12,55.68 < 7 |walk
Run up the stairs |goto 57.06,56.84 < 7 |walk
Follow the path |goto 56.49,57.06 < 7 |c |q 11288
step
Run up the stairs |goto 56.42,56.55 < 7 |walk
Follow the path |goto 56.97,56.30 < 7 |walk
Follow the path |goto 57.13,55.65 < 7 |walk
talk Glorenfeld##24150
|tip Inside the cave.
turnin The Depths of Depravity##11277 |goto 56.90,53.77
accept The Ring of Judgement##11299 |goto 56.90,53.77
step
Follow the path |goto 57.14,55.74 < 7 |walk
Follow the path |goto 57.73,56.21 < 7 |walk
talk Ares the Oathbound##24189
|tip Inside the cave.
turnin The Shining Light##11288 |goto 59.34,55.42
accept Guided by Honor##11289 |goto 59.34,55.42
step
Follow the path |goto 57.77,56.19 < 7 |walk
Run down the stairs |goto 56.96,56.31 < 7 |walk
Follow the path |goto 56.03,57.03 < 7 |walk
talk Daegarn##24151
|tip Inside the cave.
turnin The Ring of Judgement##11299 |goto 55.70,57.37
accept Stunning Defeat at the Ring##11300 |goto 55.70,57.37
step
Kill the enemies that attack in waves
kill Oluf the Violent##23931
click Ancient Cipher##186640
|tip It looks like a green stone block that appears on the ground after you kill Oluf the Violent.
collect Ancient Cipher##33545 |q 11300/1 |goto 55.02,57.49
step
Follow the path |goto 56.07,57.00 < 7 |walk
Run up the stairs |goto 56.42,56.55 < 7 |walk
Follow the path |goto 56.97,56.30 < 7 |walk
Follow the path |goto 57.13,55.65 < 7 |walk
talk Glorenfeld##24150
|tip Inside the cave.
turnin Stunning Defeat at the Ring##11300 |goto 56.90,53.77
accept Return to Valgarde##11278 |goto 56.90,53.77
step
Leave the building |goto 58.63,62.94 < 7 |walk
talk Lord Irulon Trueblade##24191
turnin Guided by Honor##11289 |goto 59.74,62.43
step
talk Guard Captain Zorek##23728
turnin The Path to Payback##11420 |goto 60.11,62.43
accept Locating the Mechanism##11426 |goto 60.11,62.43
step
talk Vice Admiral Keller##23546
|tip He walks around this small area.
turnin Prisoners of Wyrmskull##11255 |goto 60.47,61.13
accept Dragonflayer Battle Plans##11290 |goto 60.47,61.13
step
talk Beltrand McSorf##23548
|tip He walks around this small area.
turnin Return to Valgarde##11278 |goto 60.18,61.03
accept The Explorers' League Outpost##11448 |goto 60.18,61.03
step
talk Thoralius the Wise##23975
turnin Into the World of Spirits##11333 |goto 59.80,61.48
accept The Echo of Ymiron##11343 |goto 59.80,61.48
step
Enter the cave |goto 56.24,52.72 < 10 |walk
click Dragonflayer Battle Plans##186618
|tip Inside the small cave.
collect Dragonflayer Battle Plans##33488 |q 11290/1 |goto 55.68,52.58
step
Leave the cave |goto 56.24,52.72 < 7 |walk
kill Dragonflayer Harpooner##24635+
collect Harpoon Control Mechanism##34032 |q 11426/1 |goto 60.2,51.7
step
Use the Incense Burner |use Incense Burner##33637
|tip Use it in the doorway of this building.
Enter the Spirit World |havebuff Echo of Ymiron##135867 |goto 60.30,51.63 |q 11343
step
Enter the building |goto 60.25,51.31 < 7 |walk
Watch the dialogue
|tip Inside the building.
Uncover the Secrets of the Wyrmskull |q 11343/1 |goto 60.16,50.87
step
Leave the building |goto 60.25,51.31 < 7 |walk
talk Thoralius the Wise##23975
turnin The Echo of Ymiron##11343 |goto 59.80,61.48
accept Anguish of Nifflevar##11344 |goto 59.80,61.48
step
talk Vice Admiral Keller##23546
|tip He walks around this small area.
turnin Dragonflayer Battle Plans##11290 |goto 60.47,61.07
accept To Westguard Keep!##11291 |goto 60.47,61.07
step
talk Guard Captain Zorek##23728
turnin Locating the Mechanism##11426 |goto 60.12,62.42
accept Meet Lieutenant Icehammer...##11427 |goto 60.12,62.42
step
talk McGoyver##24040
|tip He walks around this small area.
Tell him _"Official Explorers' League business, McGoyver. Take me to the Explorers' League Outpost!"_
Click Here When You Begin Flying |confirm |goto 60.77,61.52 |q 11448
step
Fly to the Explorers' League Outpost |goto 74.68,65.31 < 20 |q 11448
step
talk Stanwad##24717
turnin The Explorers' League Outpost##11448 |goto 74.95,65.41
accept Problems on the High Bluff##11474 |goto 74.95,65.41
step
talk Walt##24807
turnin Problems on the High Bluff##11474 |goto 75.05,65.51
accept Tools to Get the Job Done##11475 |goto 75.05,65.51
step
talk Hidalgo the Master Falconer##24750
accept Trust is Earned##11460 |goto 75.27,64.97
step
click Loose Rock##250424
|tip They look like grey stones on the ground around this area.
collect Fjord Grub##34102 |q 11460 |goto 75.54,66.77
step
clicknpc Rock Falcon##24752
|tip Inside the cage.
Choose _<Feed the grub to the rock falcon.>_
Feed the Fjord Rock Falcon |q 11460/1 |goto 75.27,64.91
step
talk Hidalgo the Master Falconer##24750
turnin Trust is Earned##11460 |goto 75.27,64.97
accept The Ransacked Caravan##11465 |goto 75.27,64.97
step
click Loose Rock##250424
|tip They look like grey stones on the ground around this area.
collect 5 Fjord Grub##34102 |q 11465 |goto 75.54,66.77
step
Use the Trained Rock Falcon |use Trained Rock Falcon##34111
|tip Use it on Fjord Turkeys around this area.
collect 5 Fjord Turkey##34112 |q 11465/1 |goto 69.50,69.11
step
talk Hidalgo the Master Falconer##24750
turnin The Ransacked Caravan##11465 |goto 75.27,64.97
accept Falcon Versus Hawk##11468 |goto 75.27,64.97
step
click Loose Rock##250424
|tip They look like grey stones on the ground around this area.
collect 10 Fjord Grub##34102 |q 11468 |goto 75.54,66.77
step
Use the Trained Rock Falcon |use Trained Rock Falcon##34121
|tip Use it on Fjord Hawks around this area.
|tip Most of them are flying above you around this area.
collect 10 Fjord Hawk##34120 |q 11468/1 |goto 70.40,66.75
step
talk Hidalgo the Master Falconer##24750
turnin Falcon Versus Hawk##11468 |goto 75.27,64.97
accept There Exists No Honor Among Birds##11470 |goto 75.27,64.97
step
Use the Trained Rock Falcon |use Trained Rock Falcon##34124
|tip Use it next to the Vrykul Hawk Roost.
Control a Trained Falcon Hawk |havebuff 132210 |goto 76.66,67.67 |q 11470
step
collect 8 Fjord Hawk Egg##34123 |q 11470/1 |goto 76.7,67.7
|tip Use the Scavenge ability on your action bar.
|tip Use it next to the big white eggs in bird nests on the side of the cliff in front of your character.
step
Stop Controlling a Trained Falcon Hawk |nobuff 132210 |q 11470
|tip Right-click the "Hawk Hunting" buff near your minimap.
step
talk Hidalgo the Master Falconer##24750
turnin There Exists No Honor Among Birds##11470 |goto 75.27,64.97
step
talk Donny##24811
accept Out of My Element?##11477 |goto 78.81,48.87
stickystart "Kill_Iron_Rune_Laborers"
stickystart "Kill_Iron_Rune_Sages"
stickystart "Kill_Iron_Rune_Destroyers"
step
click Building Tools##186950
collect Building Tools##34131 |q 11475/1 |goto 79.00,47.56
step
label "Kill_Iron_Rune_Laborers"
kill 5 Iron Rune Laborer##23711 |q 11477/2 |goto 79.12,47.24
step
label "Kill_Iron_Rune_Sages"
kill 2 Iron Rune Sage##23674 |q 11477/3 |goto 77.68,46.97
step
label "Kill_Iron_Rune_Destroyers"
kill 10 Iron Rune Destroyer##23676 |q 11477/1 |goto 77.25,47.41
step
talk Donny##24811
turnin Out of My Element?##11477 |goto 78.81,48.87
step
Use the Incense Burner |use Incense Burner##33774
Enter the Spirit World |havebuff Echo of Ymiron##135867 |goto 69.10,54.83 |q 11344
step
Watch the dialogue
Uncover the Secrets of Nifflevar |q 11344/1 |goto 69.10,54.83
step
Enter the building |goto 64.62,46.64 < 10 |walk
talk Lieutenant Icehammer##24634
|tip Inside the building.
turnin Meet Lieutenant Icehammer...##11427 |goto 64.43,46.95
accept Drop It then Rock It!##11429 |goto 64.43,46.95
step
Leave the building |goto 64.62,46.64 < 7 |walk
Use the Alliance Banner |use Alliance Banner##34051
Place the Alliance Banner |q 11429/1 |goto 64.89,40.10
step
Kill the enemies that attack in waves
Defend the Alliance Banner |q 11429/2 |goto 64.89,40.10
step
Enter the building |goto 64.62,46.64 < 10 |walk
talk Lieutenant Icehammer##24634
|tip Inside the building.
turnin Drop It then Rock It!##11429 |goto 64.43,46.95
accept Harpoon Master Yavus##11430 |goto 64.43,46.95
step
Leave the building |goto 64.62,46.64 < 7 |walk
Enter the building |goto 66.48,55.61 < 10 |walk
kill Harpoon Master Yavus##24644 |q 11430/1 |goto 65.15,56.58
|tip Inside the building.
step
Leave the building |goto 66.48,55.61 < 7 |walk
Enter the building |goto 64.62,46.64 < 10 |walk
talk Lieutenant Icehammer##24634
|tip Inside the building.
turnin Harpoon Master Yavus##11430 |goto 64.43,46.95
accept It Goes to 11...##11421 |goto 64.43,46.95
step
Leave the building |goto 64.62,46.64 < 7 |walk
Use the Harpoon Control Mechanism |use Harpoon Control Mechanism##34032
|tip Use it next to the big metal harpoon gun.
Control the Harpoon |invehicle |goto 64.77,52.67 |q 11421
stickystart "Kill_Dragonflayer_Defenders"
step
Destroy the Dragonflayer Longhouse |q 11421/2 |goto 64.8,52.7
|tip Use the Fiery Harpoon ability on your action bar.
|tip It's the building farthest to the right across the water.
step
Destroy the Dragonflayer Dockhouse |q 11421/3 |goto 64.8,52.7
|tip Use the Fiery Harpoon ability on your action bar.
|tip It's the middle building across the water.
step
Destroy the Dragonflayer Storage Facility |q 11421/4 |goto 64.8,52.7
|tip Use the Fiery Harpoon ability on your action bar.
|tip It's the building farthest to the left across the water.
step
label "Kill_Dragonflayer_Defenders"
kill 8 Dragonflayer Defender##24533 |q 11421/1 |goto 64.8,52.7
|tip Use the Fiery Lance ability on your action bar on Dragonflayer Defenders.
|tip They will attack you after you destroy each building.
step
Stop Controlling the Harpoon |outvehicle |q 11421
|tip Click the yellow arrow on your action bar.
step
Enter the building |goto 64.62,46.64 < 10 |walk
talk Lieutenant Icehammer##24634
|tip Inside the building.
turnin It Goes to 11...##11421 |goto 64.43,46.95
accept Let's Go Surfing Now##11436 |goto 64.43,46.95
step
Leave the building |goto 64.62,46.64 < 7 |walk
click Large Harpoon Lever##186894
Go Harpoon Surfing |q 11436/1 |goto 65.23,57.20
step
talk Guard Captain Zorek##23728
turnin Let's Go Surfing Now##11436 |goto 60.12,62.43
step
talk Thoralius the Wise##23975
turnin Anguish of Nifflevar##11344 |goto 59.80,61.49
step
talk Walt##24807
turnin Tools to Get the Job Done##11475 |goto 75.05,65.51
accept We Can Rebuild It##11483 |goto 75.05,65.51
accept We Have the Technology##11484 |goto 75.05,65.51
step
Kill Shoveltusk enemies around this area
collect Pristine Shoveltusk Hide##34136 |q 11484/1 |goto 75.4,63.3
stickystart "Collect_Steel_Ribbing"
step
click Large Barrel##186954
|tip Outside the building.
collect Large Barrel##34133 |q 11483/1 |goto 67.68,55.02
step
click Industrial Strength Rope##186955
|tip Outside the building.
collect Industrial Strength Rope##34134 |q 11483/2 |goto 64.74,40.97
step
label "Collect_Steel_Ribbing"
Kill enemies around this area
collect Steel Ribbing##34137 |q 11484/2 |goto 65.37,40.08
step
Leave the building |goto 58.62,62.94 < 7 |walk
talk McGoyver##24040
|tip He walks around this small area.
Tell him _"Walt sent me to pick up some dark iron ingots."_
collect Dark Iron Ingots##34135 |q 11483/3 |goto 60.78,61.53
step
talk McGoyver##24040
|tip He walks around this small area.
Tell him _"Official Explorers' League business, McGoyver. Take me to the Explorers' League Outpost!"_
Click Here When You Begin Flying |confirm |goto 60.77,61.52 |q 11483
step
Fly to the Explorers' League Outpost |goto 74.68,65.31 < 20 |q 11483
step
talk Walt##24807
turnin We Can Rebuild It##11483 |goto 75.05,65.51
turnin We Have the Technology##11484 |goto 75.05,65.51
accept Iron Rune Constructs and You: Rocket Jumping##11485 |goto 75.05,65.51
step
click Work Bench##186958
Choose _<Get on the work bench and let Walt put you in the golem suit.>_
Wear the Golem Suit |invehicle |goto 75.11,65.51 |q 11485
step
Master the Rocket Jump |q 11485/1 |goto 75.15,65.43
|tip Use the Rocket Jump ability on your action bar.
step
Stop Wearing the Golem Suit |outvehicle |q 11485
|tip Click the yellow arrow on your action bar.
step
talk Walt##24807
turnin Iron Rune Constructs and You: Rocket Jumping##11485 |goto 75.05,65.51
accept Iron Rune Constructs and You: Collecting Data##11489 |goto 75.05,65.51
step
click Work Bench##186958
Choose _<Get on the work bench and let Walt put you in the golem suit.>_
Wear the Golem Suit |invehicle |goto 75.11,65.51 |q 11489
step
Collect Test Data |q 11489/1 |goto 74.81,65.74
|tip Use the Collect Data ability on your action bar next to the blue crystal.
step
Stop Wearing the Golem Suit |outvehicle |q 11489
|tip Click the yellow arrow on your action bar.
step
talk Walt##24807
turnin Iron Rune Constructs and You: Collecting Data##11489 |goto 75.05,65.51
accept Iron Rune Constructs and You: The Bluff##11491 |goto 75.05,65.51
step
click Work Bench##186958
Choose _<Get on the work bench and let Walt put you in the golem suit.>_
Wear the Golem Suit |invehicle |goto 75.11,65.51 |q 11491
step
Watch the dialogue
|tip Walk to this location and stand on the rug on the ground.
Bluff Lebronski |q 11491/1 |goto 74.8,65.3
|tip Use the Bluff ability on your action bar on Lebronski when he starts talking.
step
Stop Wearing the Golem Suit |outvehicle |q 11491
|tip Click the yellow arrow on your action bar.
step
talk Walt##24807
turnin Iron Rune Constructs and You: The Bluff##11491 |goto 75.1,65.5
accept Lightning Infused Relics##11494 |goto 75.1,65.5
accept The Delicate Sound of Thunder##11495 |goto 75.1,65.5
step
click Work Bench##186958
Choose _<Get on the work bench and let Walt put you in the golem suit.>_
Wear the Golem Suit |invehicle |goto 75.11,65.51 |q 11494
stickystart "Collect_Iron_Rune_Data"
step
Follow the path |goto 74.14,65.79 < 15 |walk
Follow the path down |goto 72.70,67.54 < 15 |walk
Follow the path |goto 72.24,69.23 < 10 |walk
Rocket Jump on the Middle Rune |goto 72.12,70.39
|tip Use the Rocket Jump ability on your action bar on the middle rune on the ground.
Rocket Jump to the Lower Level |goto 74.33,70.82 < 10 |noway |c |q 11495
step
Follow the path |goto Howling Fjord/0 73.60,70.81 < 10 |walk
Enter the cave |goto 73.43,70.39 < 10 |walk
Follow the path |goto 73.22,69.65 < 7 |walk
Continue following the path |goto 72.85,69.68 < 7 |walk
Follow the path |goto 71.90,70.25 < 7 |walk
Watch the dialogue
|tip This quest seems a little buggy.
|tip Run around this small area inside the cave, trying every spot, until the dialogue starts.
Investigate the Thundering Cave |q 11495/1 |goto 71.56,69.37
step
label "Collect_Iron_Rune_Data"
Follow the path |goto 71.63,69.91 < 7 |walk
Follow the path down |goto 71.89,70.25 < 7 |walk
Follow the path |goto 73.00,69.62 < 7 |walk
Continue following the path |goto 73.35,69.80 < 7 |walk
Leave the cave |goto 73.42,70.53 < 10 |walk
Collect #15# Iron Rune Data |q 11494/1 |goto 73.46,73.05
|tip You can jump down to the ground in the golem suit without dying.
|tip Use the Collect Data ability on your action bar next to the blue crystals on the ground around this area.
|tip Use the Bluff ability on your action bar to get rid of any suspicious dwarves you encounter.
step
Stop Wearing the Golem Suit |outvehicle |q 11494
|tip Get to a safe spot first.
|tip Click the yellow arrow on your action bar.
step
talk Walt##24807
turnin Lightning Infused Relics##11494 |goto 75.05,65.51
turnin The Delicate Sound of Thunder##11495 |goto 75.05,65.51
accept News From the East##11501 |goto 75.05,65.51
step
talk Walt##24807
Tell him _"I'm ready to go, Walt."_
Click Here After You Begin Flying |confirm |goto 75.05,65.51 |q 11501
step
Fly to Westguard Keep |goto 30.84,42.82 < 20 |c |q 11501
step
talk Greer Orehammer##23859
fpath Westguard Keep |goto 31.26,43.98
step
Enter the building |goto 29.61,44.02 < 10 |walk
talk Captain Adams##23749
|tip He walks around this small area upstairs inside the building.
turnin To Westguard Keep!##11291 |goto 28.84,44.13
turnin News From the East##11501 |goto 28.84,44.13
accept The Clutches of Evil##11157 |goto 28.84,44.13
step
Leave the building |goto 29.61,44.01 < 7 |walk
Enter the building |goto 30.90,41.90 < 7 |walk
talk Chef Kettleblack##23773
|tip Inside the building.
accept Shoveltusk Soup Again?##11155 |goto 31.17,40.84
step
Leave the building |goto 30.90,41.90 < 7 |walk
talk Cannoneer Ely##23770
accept One Size Does Not Fit All##11190 |goto 33.98,43.80
stickystart "Collect_Shoveltusk_Meat"
step
click Westguard Cannonball##186427
|tip They look like grey round rocks on the ground around this area.
collect 10 Westguard Cannonball##33123 |q 11190/1 |goto 35.82,42.81
step
label "Collect_Shoveltusk_Meat"
Kill Shoveltusk enemies around this area
collect 6 Shoveltusk Meat##33120 |q 11155/1 |goto 35.82,42.81
stickystart "Destroy_Proto_Drake_Eggs"
stickystart "Kill_Proto_Whelps"
step
talk Ember Clutch Ancient##23870
|tip They look like big trees that walks around this area.
accept Root Causes##11182 |goto 36.53,48.74
stickystart "Kill_Dragonflayer_Handlers"
step
Enter the building |goto 41.35,52.86 < 7 |walk
kill Skeld Drakeson##23940 |q 11182/2 |goto 41.46,52.35
|tip Inside the building.
step
label "Kill_Dragonflayer_Handlers"
Leave the building |goto 41.35,52.86 < 7 |walk
kill 5 Dragonflayer Handler##23871 |q 11182/1 |goto 41.44,53.87
step
talk Ember Clutch Ancient##23870
|tip They look like big trees that walks around this area.
turnin Root Causes##11182 |goto 36.53,48.74
step
label "Destroy_Proto_Drake_Eggs"
kill Proto-Drake Egg##23777+
|tip They look like large eggs on the ground around this area.
Destroy #15# Proto-Drake Eggs |q 11157/1 |goto 38.72,49.54
step
label "Kill_Proto_Whelps"
kill 15 Proto-Whelp##23688 |q 11157/2 |goto 38.72,49.54
step
talk Orfus of Kamagua##23804
accept The Dead Rise!##11504 |goto 40.29,60.25
step
click Mound of Debris##187022
collect Fengir's Clue##34222 |q 11504/1 |goto 57.68,77.52
step
click Unlocked Chest##187023
collect Rodin's Clue##34223 |q 11504/2 |goto 59.23,76.98
step
click Long Tail Feather##187026
collect Isuldof's Clue##34224 |q 11504/3 |goto 59.79,79.39
step
click Cannonball##187027
collect Windan's Clue##34225 |q 11504/4 |goto 61.97,80.06
step
talk Orfus of Kamagua##23804
turnin The Dead Rise!##11504 |goto 40.29,60.25
accept Elder Atuik and Kamagua##11507 |goto 40.29,60.25
step
Enter the building |goto 25.15,57.31 < 10 |walk
talk Elder Atuik##24755
|tip Inside the building.
turnin Elder Atuik and Kamagua##11507 |goto 25.02,56.97
accept Grezzix Spindlesnap##11508 |goto 25.02,56.97
accept Feeding the Survivors##11456 |goto 25.02,56.97
step
Leave the building |goto 25.15,57.31 < 7 |walk
talk Kip Trawlskip##28197
fpath Kamagua |goto 24.66,57.77
step
Enter the building |goto 25.31,59.14 < 7 |walk
talk Caregiver Iqniq##27148
|tip Inside the building.
home Kamagua |goto 25.39,59.85 |q 11472 |future
step
Leave the building |goto 25.31,59.14 < 7 |walk
kill Island Shoveltusk##24681+
|tip You can find more around this area on this island.
collect 6 Island Shoveltusk Meat##36776 |q 11456/1 |goto 30.53,60.03
step
Enter the building |goto 25.15,57.31 < 10 |walk
talk Elder Atuik##24755
|tip Inside the building.
turnin Feeding the Survivors##11456 |goto 25.02,56.97
accept Arming Kamagua##11457 |goto 25.02,56.97
step
Leave the building |goto 25.15,57.31 < 7 |walk
kill Frostwing Chimaera##24673+
collect 3 Chimaera Horn##34101 |q 11457/1 |goto 27.46,67.08
step
Leave the building |goto 25.31,59.14 < 7 |walk
Enter the building |goto 25.15,57.31 < 10 |walk
talk Elder Atuik##24755
|tip Inside the building.
turnin Arming Kamagua##11457 |goto 25.02,56.97
accept Avenge Iskaal##11458 |goto 25.02,56.97
step
Leave the building |goto 25.15,57.31 < 7 |walk
talk Grezzix Spindlesnap##24643
turnin Grezzix Spindlesnap##11508 |goto 23.08,62.66
accept Street "Cred"##11509 |goto 23.08,62.66
step
talk Lou the Cabin Boy##24896
Tell him _"I don't have time for chit-chat, Lou. Take me to Scalawag Point."_
Begin Traveling to Scalawag Point |invehicle |goto 23.10,62.58 |q 11509
step
Travel to Scalawag Point |goto 35.51,82.40 < 20 |c |q 11509
step
talk "Silvermoon" Harry##24539
|tip Inside the tent.
turnin Street "Cred"##11509 |goto 35.09,80.94
accept "Scoodles"##11510 |goto 35.09,80.94
step
talk Handsome Terry##24537
accept Forgotten Treasure##11434 |goto 35.60,80.22
step
talk Scuttle Frostprow##24784
accept Swabbin' Soap##11469 |goto 37.75,79.58
step
kill "Scoodles"##24899
|tip It looks like an orca that swims in the water around this area.
collect Sin'dorei Scrying Crystal##34235 |q 11510/1 |goto 38.85,84.12
step
Swim through the small window underwater |goto 38.15,84.45 < 7 |walk
click Eagle Figurine##186886
|tip Inside the ship underwater.
collect Eagle Figurine##34070 |q 11434/2 |goto 37.77,84.62
step
Swim through the small window underwater |goto 37.70,84.57 < 5 |walk
click Amani Vase##186885
|tip Underwater.
collect Amani Vase##34069 |q 11434/1 |goto 37.15,85.49
step
kill Big Roy##24785
|tip He looks like a big seal that swims in the water around this area.
collect Big Roy's Blubber##34122 |q 11469/1 |goto 31.40,78.62
step
talk "Silvermoon" Harry##24539
|tip Inside the tent.
turnin "Scoodles"##11510 |goto 35.10,80.94
accept The Staff of Storm's Fury##11511 |goto 35.10,80.94
accept The Frozen Heart of Isuldof##11512 |goto 35.10,80.94
accept The Lost Shield of the Aesirites##11519 |goto 35.10,80.94
accept The Ancient Armor of the Kvaldir##11567 |goto 35.10,80.94
step
talk Handsome Terry##24537
turnin Forgotten Treasure##11434 |goto 35.60,80.22
accept The Fragrance of Money##11455 |goto 35.60,80.22
step
talk Taruk##24541
accept Gambling Debt##11464 |goto 36.32,80.48
step
talk "Silvermoon" Harry##24539
|tip Inside the tent.
Tell him _"Taruk sent me to collect what you owe."_
kill "Silvermoon" Harry##24539
|tip Don't kill him, just get him to low health.
talk "Silvermoon" Harry##24539
Tell him _"Pay up, Harry!"_
collect "Silvermoon" Harry's Debt##34115 |q 11464/1 |goto 35.09,80.94
step
talk Taruk##24541
turnin Gambling Debt##11464 |goto 36.32,80.48
accept Jack Likes His Drink##11466 |goto 36.32,80.48
step
Enter the building |goto 35.28,80.22 < 7 |walk
talk Olga, the Scalawag Wench##24639
|tip Inside the building.
Tell her _"I'd like to buy Jack a drink. Perhaps something... extra strong."_
Click Here After You Buy Jack Adams a Drink |confirm |goto 35.31,79.59 |q 11466
step
Watch the dialogue
talk Jack Adams##24788
Choose _<Discreetly search the pirate's pockets for Taruk's paymen.>_
collect Jack Adams' Debt##34116 |q 11466/1 |goto 35.49,79.38
step
Leave the building |goto 35.28,80.22 < 7 |walk
talk Taruk##24541
turnin Jack Likes His Drink##11466 |goto 36.32,80.48
accept Dead Man's Debt##11467 |goto 36.32,80.48
step
talk Scuttle Frostprow##24784
turnin Swabbin' Soap##11469 |goto 37.75,79.58
step
talk Captain Ellis##24910
|tip He's on a pirate ship that sails around this area.
turnin The Lost Shield of the Aesirites##11519 |goto 37.2,74.8
accept Mutiny on the Mercy##11527 |goto 37.2,74.8
step
_Downstairs Inside the Ship:_
kill Mutinous Sea Dog##25026+
|tip Downstairs inside the pirate ship that sails around this area.
collect 5 Barrel of Blasting Powder##34387 |q 11527/1
step
_On the Ship Desk:_
talk Captain Ellis##24910
|tip He's on a pirate ship that sails around this area.
turnin Mutiny on the Mercy##11527
accept Sorlof's Booty##11529
step
Run to the other end of the ship deck to the big cannon
clicknpc The Big Gun##24992
|tip At the front of the ship, on the deck of the pirate ship that sails around this area.
|tip Keep clicking it repeatedly until Sorlof is dead on the shore.
kill Sorlof##24914
|tip He looks like a big tree that walks along the shore around this area.
click Sorlof's Booty##187238
|tip It drops after you kill Sorlof.
collect Sorlof's Booty##34468 |q 11529/1
step
talk Captain Ellis##24910
|tip He's on a pirate ship that sails around this area.
turnin Sorlof's Booty##11529 |goto 37.2,74.8
accept The Shield of the Aesirites##11530 |goto 37.2,74.8
step
kill Rabid Brown Bear##24633+
collect 4 Bear Musk##34084 |q 11455/1 |goto 34.25,77.96
step
Enter the cave |goto Howling Fjord/0 33.57,75.64 < 7 |walk
Follow the path |goto 33.68,76.38 < 7 |walk
Continue following the path |goto 33.56,77.30 < 7 |walk
Jump down here |goto 33.59,78.18 < 5 |walk
Follow the path up |goto 33.09,78.12 < 7 |walk
Continue up the path |goto 33.06,79.21 < 7 |walk
click The Frozen Heart of Isuldof##187032
|tip Inside the cave.
collect The Frozen Heart of Isuldof##34237 |q 11512/1 |goto 32.34,78.68
step
Leave the building |goto 25.31,59.13 < 7 |walk
click Dirt Mound##186944
Watch the dialogue
Kill the enemies that attack
kill Black Conrad's Ghost##24790
collect Black Conrad's Treasure##34118 |q 11467/1 |goto 32.69,60.21
step
kill 8 Crazed Northsea Slaver##24676 |q 11458/1 |goto 33.71,63.84
step
Follow the path |goto Howling Fjord/0 35.38,64.71 < 7 |walk
|tip Wait for Abdul the Insane to walk up to the top deck of the ship, then enter the ship.
Run down the stairs |goto 35.33,64.79 < 5 |walk
Follow the path |goto 35.20,64.67 < 5 |walk
Follow the path |goto 35.45,64.33 < 5 |walk
Run down the stairs |goto 35.47,63.94 < 5 |c |q 11511
step
Continue down the stairs |goto 35.47,63.71 < 5 |walk
Follow the path |goto 35.28,64.24 < 7 |walk
click The Staff of Storm's Fury##187033
|tip Downstairs inside the ship.
collect The Staff of Storm's Fury##34236 |q 11511/1 |goto 35.26,64.84
step
Run up the stairs |goto 35.38,63.95 < 5 |walk
Continue up the stairs |goto 35.50,63.78 < 5 |c |q 11511
step
Follow the path |goto 35.46,63.99 < 5 |walk
Follow the path |goto 35.30,64.26 < 7 |walk
Run up the stairs |goto 35.21,64.76 < 5 |walk
Follow the path |goto 35.38,64.75 < 5 |walk
|tip Wait for Abdul the Insane to walk up to the top deck of the ship, then leave the ship.
Enter the building |goto 25.15,57.31 < 10 |walk
talk Elder Atuik##24755
|tip Inside the building.
turnin Avenge Iskaal##11458 |goto 25.02,56.97
step
Leave the building |goto 25.15,57.31 < 7 |walk
talk Handsome Terry##24537
turnin The Fragrance of Money##11455 |goto 35.60,80.22
accept A Traitor Among Us##11473 |goto 35.60,80.22
step
talk Zeh'gehn##24525
turnin A Traitor Among Us##11473 |goto 35.56,80.63
accept Zeh'gehn Sez##11459 |goto 35.56,80.63
step
talk Handsome Terry##24537
turnin Zeh'gehn Sez##11459 |goto 35.60,80.22
accept A Carver and a Croaker##11476 |goto 35.60,80.22
step
talk "Silvermoon" Harry##24539
|tip Inside the tent.
buy Shiny Knife##35813 |n
collect Shiny Knife##35813 |q 11476/2 |goto 35.1,80.9
step
clicknpc Scalawag Frog##26503
|tip They look like blue and green frogs that hop around on the ground around this area.
collect Scalawag Frog##35803 |q 11476/1 |goto 35.56,81.81
step
talk Zeh'gehn##24525
turnin A Carver and a Croaker##11476 |goto 35.56,80.63
step
Watch the dialogue
talk Zeh'gehn##24525
accept "Crowleg" Dan##11479 |goto 35.56,80.63
step
talk Taruk##24541
turnin Dead Man's Debt##11467 |goto 36.32,80.48
step
talk "Crowleg" Dan##24713
Tell him _"Ummm... the frog says you're a traitor, "matey.""_
kill "Crowleg" Dan##24713 |q 11479/1 |goto 35.95,83.60
step
talk Handsome Terry##24537
turnin "Crowleg" Dan##11479 |goto 35.60,80.22
accept Meet Number Two##11480 |goto 35.60,80.22
step
Enter the building |goto 35.27,80.21 < 7 |walk
talk Annie Bonn##24741
|tip She walks around this small area upstairs inside the building.
turnin Meet Number Two##11480 |goto 35.44,79.42
accept The Jig is Up##11471 |goto 35.44,79.42
step
Leave the building |goto 35.27,80.21 < 7 |walk
Enter the cave |goto Howling Fjord/0 33.57,75.64 < 7 |walk
Follow the path |goto 33.68,76.38 < 7 |walk
Continue following the path |goto 33.56,77.30 < 7 |walk
kill "Mad" Jonah Sterling##24742
|tip He walks around this small area inside the cave.
Click Here After Killing "Mad" Jonah Sterling |confirm |goto 33.78,78.02 |q 11471
step
Jump down here |goto 33.59,78.18 < 5 |walk
kill Hozzer##24547
|tip Inside the cave.
collect Jonah Sterling's Spyglass##34128 |q 11471/1 |goto 33.39,78.30
step
Follow the path |goto 33.76,79.29 < 7 |walk
Follow the path |goto 34.02,79.94 < 7 |walk
Follow the path up |goto 33.58,80.13 < 7 |c |q 11471
step
Follow the path up |goto 33.44,79.64 < 7 |walk
Follow the path |goto 33.90,78.84 < 7 |walk
Follow the path |goto 33.60,77.65 < 7 |walk
Continue following the path |goto 33.66,76.43 < 7 |walk
Leave the cave |goto 33.53,75.28 < 7 |walk
Enter the building |goto 35.27,80.21 < 7 |walk
talk Annie Bonn##24741
|tip She walks around this small area upstairs inside the building.
turnin The Jig is Up##11471 |goto 35.44,79.42
step
Leave the building |goto 35.27,80.21 < 7 |walk
talk Alanya##27933
Tell her _"Harry said I could take his bomber to Bael'gun's. I'm ready to go!"_
Begin Flying to Bael'gun's |invehicle |goto 36.09,81.60 |q 11567
step
Fly to Bael'gun's |goto 80.87,75.10 < 20 |c |q 11567 |notravel
step
Run down the stairs |goto 82.26,74.77 < 5 |walk
Run down the stairs |goto 82.40,74.82 < 5 |c |q 11567
click The Ancient Armor of the Kvaldir##187381
|tip Downstairs inside the ship.
collect The Ancient Armor of the Kvaldir##34239 |q 11567/1 |goto 81.78,73.91
step
Run up the stairs |goto 82.31,74.68 < 5 |walk
Run up the stairs |goto 82.35,74.93 < 5 |c |q 11567
step
Follow the path |goto 82.25,74.77 < 5 |walk
clicknpc Harry's Bomber##28277
Choose _<Get in the bomber and return to Scalawag Point.>_
Begin Flying to Scalawag Point |invehicle |goto 80.89,75.10 |q 11567
step
Return to Scalawag Point |goto 36.07,81.68 < 20 |c |q 11567 |notravel
step
talk Orfus of Kamagua##23804
turnin The Shield of the Aesirites##11530 |goto 40.29,60.25
turnin The Staff of Storm's Fury##11511 |goto 40.29,60.25
turnin The Frozen Heart of Isuldof##11512 |goto 40.29,60.25
turnin The Ancient Armor of the Kvaldir##11567 |goto 40.29,60.25
accept A Return to Resting##11568 |goto 40.29,60.25
step
Use the Bundle of Vrykul Artifacts |use Bundle of Vrykul Artifacts##34624
Return the Shield of Aesirites |q 11568/1 |goto 57.64,77.41
step
Use the Bundle of Vrykul Artifacts |use Bundle of Vrykul Artifacts##34624
Return the Staff of Storm's Fury |q 11568/2 |goto 59.30,77.20
step
Use the Bundle of Vrykul Artifacts |use Bundle of Vrykul Artifacts##34624
Return the Frozen Heart of Isuldof |q 11568/3 |goto 59.64,79.38
step
Use the Bundle of Vrykul Artifacts |use Bundle of Vrykul Artifacts##34624
Return the Ancient Armor of the Kvaldir |q 11568/4 |goto 61.89,80.14
step
Leave the building |goto 25.31,59.14 < 7 |walk
talk Orfus of Kamagua##23804
turnin A Return to Resting##11568 |goto 40.29,60.25
accept Return to Atuik##11572 |goto 40.29,60.25
step
Enter the building |goto 25.15,57.31 < 10 |walk
talk Elder Atuik##24755
|tip Inside the building.
turnin Return to Atuik##11572 |goto 25.02,56.97
step
Leave the building |goto 25.14,57.28 < 7 |walk
talk Cannoneer Ely##23770
turnin One Size Does Not Fit All##11190 |goto 33.98,43.79
step
Enter the building |goto 30.90,41.91 < 7 |walk
talk Innkeeper Celeste Goodhutch##23937
|tip Inside the building.
home Westguard Inn |goto 30.86,41.45 |q 11410 |future
step
talk Chef Kettleblack##23773
|tip Inside the building.
turnin Shoveltusk Soup Again?##11155 |goto 31.17,40.84
step
Leave the building |goto 30.90,41.91 < 7 |walk
Enter the building |goto 29.61,44.02 < 7 |walk
talk Captain Adams##23749
|tip He walks around this small area upstairs inside the building.
turnin The Clutches of Evil##11157 |goto 28.84,44.13
accept Mage-Lieutenant Malister##11187 |goto 28.84,44.13
step
talk Mage-Lieutenant Malister##23888
|tip Upstairs inside the building.
turnin Mage-Lieutenant Malister##11187 |goto 28.94,44.19
accept Two Wrongs...##11188 |goto 28.94,44.19
step
Leave the building |goto 29.61,44.02 < 7 |walk
Use Malister's Frost Wand |use Malister's Frost Wand##33119
|tip Use it on Proto-Drakes around this area.
|tip They look like dragons flying in the sky around this area.
kill 3 Proto-Drake##23689 |q 11188/1 |goto 38.86,50.35
step
Enter the building |goto 29.61,44.02 < 7 |walk
talk Mage-Lieutenant Malister##23888
|tip Upstairs inside the building.
turnin Two Wrongs...##11188 |goto 28.94,44.19
step
talk Captain Adams##23749
|tip He walks around this small area upstairs inside the building.
accept Report to Scout Knowles##11199 |goto 28.84,44.13
step
Leave the building |goto 29.61,44.02 < 7 |walk
talk Sapper Steelring##23976
accept Danger! Explosives!##11218 |goto 29.11,41.78
step
talk Explorer Abigail##23978
accept Send Them Packing##11224 |goto 31.62,41.50
stickystart "Collect_Whisper_Gulch_Gems"
stickystart "Send_Abandoned_Pack_Mules_Packing"
step
Use Steelring's Foolproof Dynamite |use Steelring's Foolproof Dynamite##33190
|tip Use it on the mining nodes around this area in the canyon.
click Whisper Gulch Ore Fragment##186468
|tip They appear after you use Steelring's Foolproof Dynamite on a mining node.
collect 6 Whisper Gulch Ore Fragment##33188 |q 11218/1 |goto 33.87,37.98
step
label "Collect_Whisper_Gulch_Gems"
Use Steelring's Foolproof Dynamite |use Steelring's Foolproof Dynamite##33190
|tip Use it on the mining nodes around this area in the canyon.
click Whisper Gulch Gem##186467
|tip They appear after you use Steelring's Foolproof Dynamite on a mining node.
collect 18 Whisper Gulch Gem##33187 |q 11218/2 |goto 33.87,37.98
step
label "Send_Abandoned_Pack_Mules_Packing"
Perform the "Raise" Emote |script DoEmote("RAISE")
|tip Perform it on Abandoned Pack Mules around this area in the canyon.
|tip They look like donkeys with a bunch of supplies tied to them around this area.
Send #10# Abandoned Pack Mules Packing |q 11224/1 |goto 33.5,36.1
step
talk Explorer Abigail##23978
turnin Send Them Packing##11224 |goto 31.62,41.50
step
talk Sapper Steelring##23976
turnin Danger! Explosives!##11218 |goto 29.11,41.78
accept Leader of the Deranged##11240 |goto 29.11,41.78
step
Enter the mine |goto 31.35,35.38 < 10 |walk
kill Squeeg Idolhunter##24048 |q 11240/1 |goto 31.89,33.49
|tip He walks around this area inside the mine.
step
Leave the mine |goto 31.35,35.38 < 10 |walk
talk Sapper Steelring##23976
turnin Leader of the Deranged##11240 |goto 29.11,41.78
step
talk Old Man Stonemantle##23831
|tip He walks around this small area inside and outside the building.
accept My Daughter##11175 |goto 31.78,41.92
step
talk Scout Knowles##23906
turnin Report to Scout Knowles##11199 |goto 44.47,57.59
accept Mission: Eternal Flame##11202 |goto 44.47,57.59
step
Use the Ever-burning Torches |use Ever-burning Torches##33164
Destroy the Southwest Plague Tank |q 11202/1 |goto 48.26,55.94
step
Use the Ever-burning Torches |use Ever-burning Torches##33164
Destroy the Northwest Plague Tank |q 11202/2 |goto 47.95,52.96
step
Use the Ever-burning Torches |use Ever-burning Torches##33164
Destroy the Northeast Plague Tank |q 11202/3 |goto 51.29,50.09
step
Use the Ever-burning Torches |use Ever-burning Torches##33164
Destroy the Southeast Plague Tank |q 11202/4 |goto 51.55,57.73
step
talk Scout Knowles##23906
turnin Mission: Eternal Flame##11202 |goto 44.47,57.59
accept Mission: Package Retrieval##11327 |goto 44.47,57.59
step
click Apothecary's Package##186679
collect Apothecary's Package##33620 |q 11327/1 |goto 50.75,53.89
step
talk Scout Knowles##23906
turnin Mission: Package Retrieval##11327 |goto 44.47,57.59
accept Mission: Forsaken Intel##11328 |goto 44.47,57.59
step
talk Peppy Wrongnozzle##24283
|tip Inside the building.
turnin Mission: Forsaken Intel##11328 |goto 30.77,41.61
accept Absholutely... Thish Will Work!##11330 |goto 30.77,41.61
step
Leave the building |goto 30.90,41.91 < 7 |walk
click Gate
Click Here After Opening the Gate |confirm |goto 29.39,44.02 |q 11330
step
Run down the stairs |goto 29.27,44.04 < 5 |walk
Follow the path |goto 29.19,43.59 < 7 |walk
Use Peppy's Special Mix |use Peppy's Special Mix##33627
|tip Use it on the Dragonflayer Vrykul Prisoner.
|tip Downstairs inside the building.
Administer Peppy's Mix to the Vrykul Prisoner |q 11330/1 |goto 29.46,43.40
step
Follow the path |goto 29.21,43.56 < 7 |walk
Run up the stairs |goto 29.17,43.76 < 7 |walk
Follow the path |goto 29.36,44.04 < 7 |walk
Enter the building |goto 30.90,41.90 < 7 |walk
talk Peppy Wrongnozzle##24283
|tip Inside the building.
turnin Absholutely... Thish Will Work!##11330 |goto 30.77,41.61
accept You Tell Him ...Hic!##11331 |goto 30.77,41.61
step
Leave the building |goto 30.90,41.90 < 7 |walk
Enter the building |goto 29.61,44.02 < 7 |walk
talk Captain Adams##23749
|tip He walks around this small area upstairs inside the building.
turnin You Tell Him ...Hic!##11331 |goto 28.84,44.13
accept Mission: Plague This!##11332 |goto 28.84,44.13
step
Leave the building |goto 29.61,44.02 < 7 |walk
talk Greer Orehammer##23859
Tell him _"Greer, I need a gryphon to ride and some bombs to drop on New Agamand!"_
Click Here After You Begin Flying |confirm |goto 31.26,43.98 |q 11332
step
Use Orehammer's Precision Bombs |use Orehammer's Precision Bombs##33634
|tip Use them on the big green carts on the ground as you fly over New Agamand.
Hit #5# Plague Tanks |q 11332/1 |goto 52.43,68.08 |notravel
step
Enter the building |goto 29.61,44.02 < 7 |walk
talk Captain Adams##23749
|tip He walks around this small area upstairs inside the building.
turnin Mission: Plague This!##11332 |goto 28.84,44.13
accept Operation: Skornful Wrath##11248 |goto 28.84,44.13
step
Leave the building |goto 29.61,44.02 < 7 |walk
talk Quartermaster Brevin##24494
accept Everything Must Be Ready##11406 |goto 30.63,42.79
step
talk Overseer Irena Stonemantle##23891
turnin My Daughter##11175 |goto 30.28,28.64
accept See to the Operations##11176 |goto 30.28,28.64
accept Where is Explorer Jaren?##11393 |goto 30.28,28.64
step
talk Engineer Feknut##24227
|tip He walks around this small area.
accept Scare the Guano Out of Them!##11154 |goto 30.16,28.77
step
talk Watcher Moonleaf##24273
accept The Cleansing##11322 |goto 30.06,28.59
step
talk Steel Gate Chief Archaeologist##24399
turnin See to the Operations##11176 |goto 30.81,28.56
accept I've Got a Flying Machine!##11390 |goto 30.81,28.56
step
clicknpc Steel Gate Flying Machine##24418
Borrow the Steel Gate Flying Machine |invehicle |goto 30.88,28.19 |q 11390
step
Deliver #3# Sacks of Relics |q 11390/1 |goto 30.86,26.43
|tip Use the Grappling Hook ability on your action bar near Sacks of Relics on the ground.
|tip They look like huge white bags with yellow stuff in them on the ground around this area.
Deliver the Sacks of Relics to [30.74,27.75]
|tip Bring them up onto the hanging wooden scale.
step
Stop Flying in the Steel Gate Flying Machine |outvehicle |goto 30.89,28.46 |q 11390
|tip Click the yellow arrow on your action bar.
step
talk Steel Gate Chief Archaeologist##24399
turnin I've Got a Flying Machine!##11390 |goto 30.81,28.56
accept Steel Gate Patrol##11391 |goto 30.81,28.56
step
clicknpc Steel Gate Flying Machine##24418
Borrow the Steel Gate Flying Machine |invehicle |goto 30.88,28.19 |q 11391
step
kill 8 Gjalerbron Gargoyle##24440 |q 11391/1 |goto 30.86,26.43
|tip Use the abilities on your action bar.
|tip If they're not appearing, try to fly down closer to the ground inside the quarry.
|tip They appear as red dots on your minimap.
step
Stop Flying in the Steel Gate Flying Machine |outvehicle |goto 30.89,28.46 |q 11391
|tip Click the yellow arrow on your action bar.
step
talk Steel Gate Chief Archaeologist##24399
turnin Steel Gate Patrol##11391 |goto 30.81,28.56
step
talk Explorer Jaren##23833
turnin Where is Explorer Jaren?##11393 |goto 24.25,32.46
accept And You Thought Murlocs Smelled Bad!##11394 |goto 24.25,32.46
stickystart "Accept_Its_A_Scourge_Device"
step
Kill enemies around this area
Kill #15# Chillmere Coast Scourge |q 11394/1 |goto 21.50,25.10
step
label "Accept_Its_A_Scourge_Device"
Kill enemies around this area
accept It's a Scourge Device##11395 |goto 21.50,25.10
|tip You will eventually automatically accept this quest after looting.
step
talk Old Icefin##24544
accept Trident of the Son##11422 |goto 19.78,22.21
step
talk Explorer Jaren##23833
turnin And You Thought Murlocs Smelled Bad!##11394 |goto 24.25,32.46
turnin It's a Scourge Device##11395 |goto 24.25,32.46
accept Bring Down Those Shields##11396 |goto 24.25,32.46
step
kill Rotgill##24546
|tip He looks like a white murloc that walks along the coast around this area.
collect Rotgill's Trident##34035 |q 11422/1 |goto 22.89,33.81
step
Use the Scourging Crystal Controller |use Scourging Crystal Controller##33960
|tip Use it near the Scourge Crystal.
|tip It looks like a big floating purple crystal.
kill Scourging Crystal##24464
|tip Kill it when the purple bubble shield disappears.
Destroy the Scourging Crystal |q 11396/1 |goto 22.69,31.17 |count 1
step
Use the Scourging Crystal Controller |use Scourging Crystal Controller##33960
|tip Use it near the Scourge Crystal.
|tip It looks like a big floating purple crystal.
kill Scourging Crystal##24464
|tip Kill it when the purple bubble shield disappears.
Destroy the Scourging Crystal |q 11396/1 |goto 21.91,28.78 |count 2
step
Use the Scourging Crystal Controller |use Scourging Crystal Controller##33960
|tip Use it near the Scourge Crystal.
|tip It looks like a big floating purple crystal.
kill Scourging Crystal##24464
|tip Kill it when the purple bubble shield disappears.
Destroy the Scourging Crystal |q 11396/1 |goto 21.51,24.63 |count 3
step
talk Old Icefin##24544
turnin Trident of the Son##11422 |goto 19.78,22.21
step
talk Explorer Jaren##23833
turnin Bring Down Those Shields##11396 |goto 24.25,32.46
step
Use Feknut's Firecrackers |use Feknut's Firecrackers##33129
|tip Use them on the ground near Darkclaw Bats.
|tip They look like bats that fly in the air around this area.
kill Darkclaw Bat##23959+
click Darkclaw Guano##186325
|tip It appears after you kill the Darkclaw Bats.
collect 10 Darkclaw Guano##33084|q 11154/1 |goto 30.95,18.60
step
talk Engineer Feknut##24227
|tip He walks around this small area.
turnin Scare the Guano Out of Them!##11154 |goto 30.16,28.77
step
Use the Westguard Command Insignia |use Westguard Command Insignia##33311
_Next to you:_
talk Westguard Sergeant##24060
turnin Operation: Skornful Wrath##11248 |goto 44.40,26.40
accept Towers of Certain Doom##11245 |goto 44.40,26.40
accept Gruesome, But Necessary##11246 |goto 44.40,26.40
accept Burn Skorn, Burn!##11247 |goto 44.40,26.40
stickystart "Dismember_Winterskorn_Vrykul"
stickystart "Accept_Stop_The_Ascension"
step
Enter the building |goto 43.72,28.33 < 7 |walk
Use the Sergeant's Torch |use Sergeant's Torch##33321
|tip Use it inside this building.
Set the Northwest Longhouse Ablaze |q 11247/1 |goto 43.64,28.64
step
Leave the building |goto 43.72,28.33 < 7 |walk
Use the Sergeant's Flare |use Sergeant's Flare##33323
Target the Northwest Tower |q 11245/1 |goto 43.93,29.59
step
Use the Sergeant's Flare |use Sergeant's Flare##33323
Target the Southwest Tower |q 11245/3 |goto 43.20,35.80
step
Use the Vrykul Scroll of Ascension |use Vrykul Scroll of Ascension##33339
kill Halfdan the Ice-Hearted##23671 |q 11249/1 |goto 44.9,35
step
Use the Sergeant's Flare |use Sergeant's Flare##33323
Target the Southeast Tower |q 11245/4 |goto 46.99,36.52
step
Use the Sergeant's Flare next to this tower |use Sergeant's Flare##33323
Target the East Tower |q 11245/2 |goto 46.66,33.25
step
Use the Westguard Command Insignia |use Westguard Command Insignia##33311
_Next to you:_
talk Westguard Sergeant##24060
turnin Towers of Certain Doom##11245
step
Enter the building |goto 45.73,30.35 < 7 |walk
Use the Sergeant's Torch |use Sergeant's Torch##33321
|tip Use it inside this building.
Set the Barracks Ablaze |q 11247/3 |goto 46.01,30.82
step
Leave the building |goto 45.73,30.35 < 7 |walk
Enter the building |goto 46.18,28.36 < 7 |walk
Use the Sergeant's Torch |use Sergeant's Torch##33321
|tip Use it inside this building.
Set the Northeast Longhouse Ablaze |q 11247/2 |goto 46.36,28.15
step
Use the Westguard Command Insignia |use Westguard Command Insignia##33311
_Next to you:_
talk Westguard Sergeant##24060
turnin Burn Skorn, Burn!##11247
step
label "Dismember_Winterskorn_Vrykul"
Leave the building |goto 46.18,28.36 < 7 |walk
Kill Winterskorn enemies around this area
Use The Sergeant's Machete |use The Sergeant's Machete##33310
|tip Use it on their corpses.
Dismember #20# Winterskorn Vrykul |q 11246/1 |goto 44.83,30.40
step
label "Accept_Stop_The_Ascension"
Kill Winterskorn enemies around this area
accept Stop the Ascension!##11249 |goto 44.83,30.40
|tip You will eventually automatically accept this quest after looting.
step
Use the Westguard Command Insignia |use Westguard Command Insignia##33311
_Next to you:_
talk Westguard Sergeant##24060
turnin Gruesome, But Necessary##11246
accept All Hail the Conqueror of Skorn!##11250
step
talk Christopher Sloan##24056
accept I'll Try Anything!##11329 |goto 60.27,18.69
step
click Water Plant##186661
|tip Underwater around this area.
kill Northern Barbfish##24285+
|tip Not all of them will contain Northern Barbfish.
collect 5 Northern Barbfish##33628 |q 11329/1 |goto 62.39,19.26
step
talk Christopher Sloan##24056
turnin I'll Try Anything!##11329 |goto 60.27,18.69
accept The One That Got Away##11410 |goto 60.27,18.69
step
Use the Fresh Barbfish Bait |use Fresh Barbfish Bait##34013
|tip Use it next to the Sunken Boat underwater.
kill Frostfin##24500 |q 11410/1 |goto 63.92,19.57
step
talk Christopher Sloan##24056
turnin The One That Got Away##11410 |goto 60.27,18.69
step
talk James Ormsby##24061
fpath Fort Wildervar |goto 60.06,16.11
step
talk Foreman Colbey##24176
accept The Yeti Next Door##11284 |goto 60.18,15.62
step
talk Lieutenant Maeve##24282
accept The Enigmatic Frost Nymphs##11302 |goto 61.82,17.19
step
talk Prospector Belvar##24328
accept The Book of Runes##11346 |goto 62.27,17.22
step
talk Gil Grisert##24139
turnin Everything Must Be Ready##11406 |goto 62.59,16.81
accept Down to the Wire##11269 |goto 62.59,16.81
step
talk Trapper Jethan##24131
accept Preying Upon the Weak##11292 |goto 62.66,16.80
step
talk Researcher Aderan##24376
accept March of the Giants##11355 |goto 62.58,16.53
step
Enter the building |goto 60.62,15.90 < 7 |walk
talk Christina Daniels##24057
|tip Inside the building.
home Fort Wildervar |goto 60.48,15.86
step
Leave the building |goto 60.62,15.90 < 7 |walk
kill Frosthorn Ram##23740+
collect 4 Tough Ram Meat##33352 |goto 52.56,10.62 |q 11284
step
Use the Tough Ram Meat |use Tough Ram Meat##33352
collect Giant Yeti Meal##33477 |q 11284
stickystart "Collect_Trapped_Prey"
step
click Spotted Hippogryph Down##186591
|tip They look like brown feathers on the ground around this area.
collect 10 Spotted Hippogryph Down##33348 |q 11269/1 |goto 51.61,16.20
step
label "Collect_Trapped_Prey"
click Sprung Trap##186619
|tip They look like small animals stuck in traps on the ground around this area.
kill Prowling Worg##24206+
|tip They sometimes appear after you click the Sprung Traps.
collect 8 Trapped Prey##33487 |q 11292/1 |goto 51.61,16.20
step
Leave the building |goto 60.62,15.90 < 7 |walk
talk Gil Grisert##24139
turnin Down to the Wire##11269 |goto 62.60,16.82
accept We Call Him Steelfeather##11418 |goto 62.60,16.82
step
talk Trapper Jethan##24131
turnin Preying Upon the Weak##11292 |goto 62.66,16.80
step
Use the Feathered Charm |use Feathered Charm##34026
|tip Use it on Steelfeather.
|tip She looks like a hippogryph flies in the sky above Fort Wildevar around this area.
Watch the dialogue
Learn Steelfeather's Secret |q 11418/1 |goto 62.66,16.80
step
talk Gil Grisert##24139
turnin We Call Him Steelfeather##11418 |goto 62.60,16.82
step
Enter the mine |goto 59.74,13.70 < 10 |walk
Follow the path |goto 60.01,13.03 < 7 |walk
Continue following the path |goto 59.95,12.30 < 7 |walk
Use the Giant Yeti Meat |use Giant Yeti Meal##33477
|tip Use it next to Shatterhorn inside the mine.
kill Shatterhorn##24178	|q 11284/1 |goto 60.50,11.85
step
Follow the path |goto 59.94,12.36 < 7 |walk
Continue following the path |goto 60.04,13.09 < 7 |walk
Leave the mine |goto 59.69,13.82 < 7 |walk
talk Foreman Colbey##24176
turnin The Yeti Next Door##11284 |goto 60.18,15.61
step
click Frostblade Shrine##186649
|tip At the top of the mountain.
Watch the dialogue
kill Your Inner Turmoil##27959
Become Cleansed of Your Inner Turmoil |q 11322/1 |goto 61.12,2.02
step
Enter the building |goto 29.61,44.02 < 7 |walk
talk Captain Adams##23749
|tip He walks around this small area upstairs inside the building.
turnin All Hail the Conqueror of Skorn!##11250 |goto 28.84,44.13
accept Dealing With Gjalerbron##11235 |goto 28.84,44.13
step
talk Father Levariol##24038
|tip Upstairs inside the building.
turnin Stop the Ascension!##11249 |goto 28.86,43.98
accept Of Keys and Cages##11231 |goto 28.86,43.98
step
Leave the building |goto 29.61,44.02 < 7 |walk
talk Watcher Moonleaf##24273
turnin The Cleansing##11322 |goto 30.05,28.59
accept In Worg's Clothing##11325 |goto 30.05,28.59
step
Use the Worg Disguise |use Worg Disguise##33618
Wear the Worg Disguise |havebuff 132203 |goto 29.21,7.56 |q 11325
step
Enter the cave |goto 29.22,6.07 < 7 |walk
talk Ulfang##24261
|tip Inside the small cave.
turnin In Worg's Clothing##11325 |goto 29.69,5.67
accept Brother Betrayers##11414 |goto 29.69,5.67
step
Leave the cave |goto 29.22,6.07 < 7 |walk
kill Bjomolf##24516 |q 11414/1 |goto 27.47,21.50
|tip He looks like a larger black wolf that walks around this area.
step
kill Varg##24517 |q 11414/2 |goto 34.12,30.42
|tip He looks like a larger grey wolf that walks around this area.
stickystart "Kill_Gjalerbron_Warriors"
stickystart "Kill_Gjalerbron_Rune_Casters"
stickystart "Kill_Gjalerbron_Sleep_Watchers"
stickystart "Accept_Gjalerbron_Attack_Plans"
step
Kill Gjalerbron enemies around this area
collect Gjalerbron Cage Key##33284+ |n
collect Large Gjalerbron Cage Key##33290 |n
|tip This key is rare to find.
click Gjalerbron Cages
|tip They look like wood and metal cages on the ground around this area.
Free #10# Gjalerbron Prisoners |q 11231/1 |goto 35.80,11.46
|tip The Large Gjalerbron Cage at this location contains multiple prisoners.
step
label "Kill_Gjalerbron_Warriors"
kill 15 Gjalerbron Warrior##23991 |q 11235/1 |goto 35.37,11.30
step
label "Kill_Gjalerbron_Rune_Casters"
kill 8 Gjalerbron Rune-Caster##23990 |q 11235/2 |goto 33.64,13.20
step
label "Kill_Gjalerbron_Sleep_Watchers"
kill 8 Gjalerbron Sleep-Watcher##23989 |q 11235/3 |goto 35.37,11.30
step
label "Accept_Gjalerbron_Attack_Plans"
Kill Gjalerbron enemies around this area
accept Gjalerbron Attack Plans##11237 |goto 33.69,13.12
|tip You will eventually automatically accept this quest after looting.
step
Use the Worg Disguise |use Worg Disguise##33618
Wear the Worg Disguise |havebuff 132203 |goto 29.21,7.56 |q 11414
step
Enter the cave |goto 29.22,6.07 < 7 |walk
talk Ulfang##24261
|tip Inside the small cave.
turnin Brother Betrayers##11414 |goto 29.69,5.67
accept Eyes of the Eagle##11416 |goto 29.69,5.67
step
Leave the cave |goto 29.22,6.07 < 7 |walk
Follow the path |goto 30.71,18.41 < 30 |walk
Continue following the path |goto 35.10,27.00 < 30 |walk
click Talonshrike's Egg##190283
kill Talonshrike##24518
collect Eyes of the Eagle##34027 |q 11416/1 |goto 41.46,37.69
step
Use the Worg Disguise |use Worg Disguise##33618
Wear the Worg Disguise |havebuff 132203 |goto 29.21,7.56 |q 11416
step
Enter the cave |goto 29.22,6.07 < 7 |walk
talk Ulfang##24261
|tip Inside the small cave.
turnin Eyes of the Eagle##11416 |goto 29.69,5.67
accept Alpha Worg##11326 |goto 29.69,5.67
step
Leave the cave |goto 29.22,6.07 < 7 |walk
kill Garwal##24277 |q 11326/1 |goto 27.32,15.39
|tip He looks like a larger grey wolf that walks around this area.
step
talk Watcher Moonleaf##24273
turnin Alpha Worg##11326 |goto 30.05,28.59
step
Enter the building |goto 29.61,44.02 < 7 |walk
talk Mage-Lieutenant Malister##23888
|tip Upstairs inside the building.
turnin Gjalerbron Attack Plans##11237 |goto 28.94,44.19
accept The Frost Wyrm and its Master##11238 |goto 28.94,44.19
step
talk Captain Adams##23749
|tip He walks around this small area upstairs inside the building.
turnin Dealing With Gjalerbron##11235 |goto 28.84,44.12
accept Necro Overlord Mezhen##11236 |goto 28.84,44.12
step
talk Father Levariol##24038
|tip Upstairs inside the building.
turnin Of Keys and Cages##11231 |goto 28.86,43.97
accept In Service to the Light##11239 |goto 28.86,43.97
step
talk Mage-Lieutenant Malister##23888
|tip Upstairs inside the building.
accept Sleeping Giants##11432 |goto 28.94,44.19
stickystart "Kill_Deathless_Watchers"
stickystart "Kill_Putrid_Wights"
step
Leave the building |goto 29.61,44.02 < 7 |walk
Follow the path |goto 34.43,24.18 < 30 |walk
kill Necro Overlord Mezhen##24018 |q 11236/1 |goto 38.79,13.08
step
label "Accept_The_Slumbering_King"
kill Necro Overlord Mezhen##24018
accept The Slumbering King##11452 |goto 38.79,13.08
|tip You will automatically accept this quest after looting.
stickystart "Collect_Wyrmcallers_Horn"
step
kill Wyrmcaller Vile##24029 |q 11238/1 |goto 36.47,7.35
step
label "Collect_Wyrmcallers_Horn"
kill Wyrmcaller Vile##24029
collect Wyrmcaller's Horn##33282 |q 11238/3 |goto 36.47,7.35
step
Use the Wyrmcaller's Horn |use Wyrmcaller's Horn##33282
kill Glacion##24019 |q 11238/2 |goto 36.47,7.35
|tip He flies down to you.
step
kill Necrolord##24014+
collect 5 Awakening Rod##34083 |goto 38.50,12.53 |q 11432
You can find more around [33.25,9.33]
step
label "Kill_Deathless_Watchers"
kill 10 Deathless Watcher##24013 |q 11239/1 |goto 33.72,9.96
You can find more around:
[36.40,15.73]
[36.87,8.19]
step
label "Kill_Putrid_Wights"
kill 2 Putrid Wight##23992 |q 11239/3 |goto 33.72,9.96
You can find more around:
[36.40,15.73]
[36.87,8.19]
step
Enter the building |goto 39.78,7.62 < 10 |walk
Follow the path |goto 40.36,6.89 < 7 |walk
Continue following the path |goto 40.39,6.41 < 7 |walk
Run up the stairs |goto 40.91,5.85 < 7 |walk
Follow the path |goto 41.17,5.66 < 7 |walk
Follow the path |goto 41.24,6.07 < 7 |walk
kill Queen Angerboda##24023 |q 11452/1 |goto 40.89,6.48
|tip Inside the building.
step
Run up the stairs |goto Howling Fjord/0 40.27,7.10 < 7 |walk
Leave the building |goto 39.73,7.65 < 10 |walk
Enter the building |goto 34.45,13.15 < 10 |c |q 11432
stickystart "Kill_Fearsome_Horrors"
step
Follow the path |goto 35.36,12.23 < 10 |walk
Follow the path |goto 35.19,11.90 < 7 |walk
Use the Awakening Rods |use Awakening Rod##34083
|tip Use them on Dormant Vrykul around this area inside the building.
|tip They look like vrykul sleeping upright inside the walls like mummies.
kill 5 Dormant Vrykul##24669 |q 11432/1 |goto 34.93,10.94
step
label "Kill_Fearsome_Horrors"
kill 4 Fearsome Horror##24073 |q 11239/2 |goto 35.36,12.23
|tip Inside the building.
step
Leave the building |goto 60.62,15.89 < 7 |walk
Enter the building |goto 29.61,44.02 < 7 |walk
talk Mage-Lieutenant Malister##23888
|tip Upstairs inside the building.
turnin The Frost Wyrm and its Master##11238 |goto 28.94,44.19
turnin Sleeping Giants##11432 |goto 28.94,44.19
step
talk Captain Adams##23749
|tip He walks around this small area upstairs inside the building.
turnin Necro Overlord Mezhen##11236 |goto 28.84,44.12
turnin The Slumbering King##11452 |goto 28.84,44.12
step
talk Father Levariol##24038
|tip Upstairs inside the building.
turnin In Service to the Light##11239 |goto 28.86,43.97
step
Leave the building |goto 29.61,44.02 < 7 |walk
talk Lurielle##24117
turnin The Enigmatic Frost Nymphs##11302 |goto 61.48,22.86
accept Spirits of the Ice##11313 |goto 61.48,22.86
step
kill Ice Elemental##23919+
collect 15 Icy Core##33605 |q 11313/1 |goto 60.85,22.08
step
talk Lurielle##24117
turnin Spirits of the Ice##11313 |goto 61.48,22.86
accept The Fallen Sisters##11314 |goto 61.48,22.86
accept Wild Vines##11315 |goto 61.48,22.86
stickystart "Kill_Scarlet_Ivies"
step
Use Lurielle's Pendant |use Lurielle's Pendant##33606
|tip Use it on Chill Nymphs around this area.
Free #7# Chill Nymphs |q 11314/1 |goto 51.57,27.61
step
label "Kill_Scarlet_Ivies"
kill 8 Scarlet Ivy##23763 |q 11315/1 |goto 51.57,27.61
step
talk Lurielle##24117
turnin The Fallen Sisters##11314 |goto 61.48,22.86
turnin Wild Vines##11315 |goto 61.48,22.86
accept Spawn of the Twisted Glade##11316 |goto 61.48,22.86
accept Seeds of the Blacksouled Keepers##11319 |goto 61.48,22.86
stickystart "Kill_Thornvine_Creepers"
step
kill Spore##23876+
Use the Enchanted Ice Core |use Enchanted Ice Core##33607
|tip Use it on their corpses.
Freeze #8# Spores |q 11319/1 |goto 54.05,17.75
step
label "Kill_Thornvine_Creepers"
kill 10 Thornvine Creeper##23874+ |q 11316/1 |goto 54.05,17.75
step
talk Lurielle##24117
turnin Spawn of the Twisted Glade##11316 |goto 61.48,22.86
turnin Seeds of the Blacksouled Keepers##11319 |goto 61.48,22.86
accept Keeper Witherleaf##11428 |goto 61.48,22.86
step
kill Keeper Witherleaf##24638 |q 11428/1 |goto 53.79,17.46
|tip He walks around this area.
step
Leave the building |goto 60.62,15.89 < 7 |walk
talk Lurielle##24117
turnin Keeper Witherleaf##11428 |goto 61.48,22.86
stickystart "Collect_Book_Of_Runes_Chapter_2"
stickystart "Collect_Book_Of_Runes_Chapter_3"
step
Kill Iron Rune enemies around this area
collect Book of Runes - Chapter 1##33778 |goto 65.0,28.5 |q 11346
You can find more around [67.78,28.95]
step
label "Collect_Book_Of_Runes_Chapter_2"
Kill Iron Rune enemies around this area
collect Book of Runes - Chapter 2##33779 |goto 65.0,28.5 |q 11346
You can find more around [67.78,28.95]
step
label "Collect_Book_Of_Runes_Chapter_3"
Kill Iron Rune enemies around this area
collect Book of Runes - Chapter 3##33780 |goto 65.0,28.5 |q 11346
You can find more around [67.78,28.95]
step
Use the Book of Runes - Chapter 1 |use Book of Runes - Chapter 1##33778
collect The Book of Runes##33781 |q 11346/1
step
kill Runed Stone Giant##23725+
|tip They look like big trees walking around this area.
|tip Make sure they have the green spell surrounding them, otherwise you won't be able to use the Runeseeking Pick on their corpses.
Use the Runeseeking Pick |use Runeseeking PIck##33806
|tip Use it on their corpses.
Analyze #4# Runed Stone Giant Corpses |q 11355/1 |goto 69.97,25.37
step
talk Researcher Aderan##24376
turnin March of the Giants##11355 |goto 62.58,16.52
accept The Lodestone##11358 |goto 62.58,16.52
step
talk Prospector Belvar##24328
turnin The Book of Runes##11346 |goto 62.28,17.21
accept Mastering the Runes##11349 |goto 62.28,17.21
step
click Iron Rune Carving Tools##186684
|tip It looks like a small metal chest.
|tip It can spawn in 5 different locations.
collect Iron Rune Carving Tools##33794 |q 11349/1 |goto 71.2,28.7
It can also be located at:
[67.5,23.5]
[69.1,22.8]
[72.4,17.8]
[73.30,24.89]
[67.5,29.2]
step
Use the Rune Sample |use Rune Sample##33819
Watch the dialogue
Compare the Runes with the Broken Tablet |q 11358/1 |goto 71.63,17.61
step
Leave the building |goto 60.62,15.89 < 7 |walk
talk Prospector Belvar##24328
turnin Mastering the Runes##11349 |goto 62.28,17.21
accept The Rune of Command##11348 |goto 62.28,17.21
step
talk Researcher Aderan##24376
turnin The Lodestone##11358 |goto 62.58,16.52
accept Demolishing Megalith##11359 |goto 62.58,16.52
step
kill Megalith##24371 |q 11359/1 |goto 68.67,10.82
|tip He looks like a rock giant that walks around this area.
step
Use the Rune of Command |use Rune of Command##33796
|tip Use it on a Stone Giant around this area.
|tip It will not work on a Runed Stone Giant.
Test the Rune of Command |q 11348/1 |goto 71.95,23.22
step
kill Binder Murdis##24334 |q 11348/2 |goto 71.85,24.56
step
talk Researcher Aderan##24376
turnin Demolishing Megalith##11359 |goto 62.58,16.52
step
talk Prospector Belvar##24328
turnin The Rune of Command##11348 |goto 62.28,17.21
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Cataclysm (80-90)\\Mount Hyjal (80-90)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Mount Hyjal",
next="Leveling Guides\\Cataclysm (80-90)\\Deepholm (81-90)",
condition_suggested=function() return level >= 80 and level <= 90 and not completedq(27398) end,
startlevel=80,
endlevel=90,
},[[
step
click Hero's Call Board##250720
accept Hero's Call: Mount Hyjal!##27726 |goto Stormwind City/0 62.90,71.55
step
talk Naraat the Earthspeaker##45226
accept Eye of the Storm##28826 |goto 74.54,19.02
step
clicknpc Waters of Farseeing##50088
Peer Into the Waters of Farseeing |q 28826/1 |goto 74.38,19.53
step
talk Naraat the Earthspeaker##45226
turnin Eye of the Storm##28826 |goto 74.54,19.02
step
talk Cenarion Emissary Jademoon##15187
|tip Inside the building.
Ask her _"Could you please send me to Moonglade, Emissary?"_
Secure Transportation to Moonglade |q 27726/1 |goto 82.68,29.59
step
talk Emissary Windsong##39865
turnin Hero's Call: Mount Hyjal!##27726 |goto Moonglade/0 45.48,44.85
accept As Hyjal Burns##25316 |goto Moonglade/0 45.48,44.85
step
clicknpc Aronus##39140
Begin Flying to Nordrassil |invehicle |goto 46.11,45.53 |q 25316
step
Watch the dialogue
Fly to Nordrassil |goto Mount Hyjal/0 63.63,23.25 < 20 |c |q 25316 |notravel
step
Enter the building |goto 63.10,23.79 < 10 |walk
talk Sebelia##40843
|tip Inside the building.
home Nordrassil Inn |goto 63.10,24.10 |q 25316 |future
step
talk Ysera##40928
|tip Inside the building.
turnin As Hyjal Burns##25316 |goto 62.05,24.91 |only if havequest(25316) or completedq(25316)
accept Protect the World Tree##25317 |goto 62.05,24.91
step
Leave the building |goto 63.14,23.73 < 7 |walk
talk Anren Shadowseeker##39925
accept The Earth Rises##25460 |goto 63.99,22.67
step
talk Tholo Whitehoof##40278
accept Inciting the Elements##25370 |goto 64.05,22.49
step
talk Fayran Elthas##41861
fpath Nordrassil |goto 62.14,21.59
stickystart "Kill_Scalding_Rock_Elementals"
step
click Juniper Berries##202754+
|tip They look like small bushes with red berries on them on the ground around this area.
collect Juniper Berries##53009 |n
Use the Juniper Berries |use Juniper Berries##53009
|tip Use them on Faerie Dragons around this area.
Watch the dialogue
|tip Follow the Faerie Dragons to find Twilight Inciters.
kill 4 Twilight Inciter##39926 |q 25370/1 |goto 65.71,23.07
step
label "Kill_Scalding_Rock_Elementals"
kill 8 Scalding Rock Elemental##40229 |q 25460/1 |goto 65.71,23.07
step
talk Tholo Whitehoof##40278
turnin Inciting the Elements##25370 |goto 64.05,22.49
accept Flames from Above##25574 |goto 64.05,22.49
step
talk Anren Shadowseeker##39925
turnin The Earth Rises##25460 |goto 63.99,22.67
step
Use Tholo's Horn |use Tholo's Horn##55122
Burn the Infiltrators' Encampment |q 25574/1 |goto 55.77,15.28
step
talk Tholo Whitehoof##40278
turnin Flames from Above##25574 |goto 64.05,22.49
step
talk Malfurion Stormrage##54173
turnin Protect the World Tree##25317 |goto 47.73,35.50
accept War on the Twilight's Hammer##25319 |goto 47.73,35.50
step
talk Windspeaker Tamila##39869
accept The Flameseer's Staff##25472 |goto 47.65,35.51
stickystart "Kill_Twilight_Flamecallers"
stickystart "Kill_Twilight_Vanquishers"
step
click Charred Staff Fragment##202846+
|tip They look like small white bones on the ground around this area.
collect 8 Charred Staff Fragment##54461 |q 25472/1 |goto 47.35,21.62
step
label "Kill_Twilight_Flamecallers"
kill 4 Twilight Flamecaller##38926 |q 25319/1 |goto 47.07,26.12
step
label "Kill_Twilight_Vanquishers"
kill 10 Twilight Vanquisher##38913 |q 25319/2 |goto 47.07,26.12
step
talk Malfurion Stormrage##15362
turnin War on the Twilight's Hammer##25319 |goto 47.73,35.50
turnin The Flameseer's Staff##25472 |goto 47.73,35.50
accept Flamebreaker##25323 |goto 47.73,35.50
step
Use the Flameseer's Staff |use Flameseer's Staff##53107
|tip USe it on Blazebound Elementals around this area.
kill 30 Unbound Flame Spirit##33838 |q 25323/1 |goto 44.5,33.4
|tip They appear after you use the Flameseer's Staff on Blazebound Elementals.
You can find more around [48.34,28.95]
step
talk Malfurion Stormrage##54173
turnin Flamebreaker##25323 |goto 47.73,35.50
accept The Return of Baron Geddon##25464 |goto 47.73,35.50
step
Use your Flameseer's Staff |use Flameseer's Staff##54463
|tip Use it on Baron Geddon.
|tip He looks like a big fire elemental that fights around this area.
|tip Run away from Baron Geddon when you see Galrond of the Claw yell in your chat box.
Weaken Baron Geddon #20# Times |q 25464/1 |goto 43.94,27.32
step
talk Malfurion Stormrage##54173
turnin The Return of Baron Geddon##25464 |goto 47.73,35.50
step
talk Windspeaker Tamila##39869
accept Emerald Allies##25430 |goto 47.65,35.51
step
talk Dinorae Swiftfeather##43481
fpath Shrine of Aviana |goto 41.18,42.59
step
talk Alysra##38917
turnin Emerald Allies##25430 |goto 48.46,18.97
accept The Captured Scout##25320 |goto 48.46,18.97
step
talk Scout Larandia##40096
turnin The Captured Scout##25320 |goto 44.48,18.91
accept Twilight Captivity##25321 |goto 44.48,18.91
step
kill Twilight Overseer##40123+
collect Twilight Overseer's Key##53139 |q 25321/1 |goto 44.40,21.04
step
talk Scout Larandia##40096
turnin Twilight Captivity##25321 |goto 44.48,18.91
accept Return to Alysra##25424 |goto 44.48,18.91
step
talk Alysra##38917
turnin Return to Alysra##25424 |goto 48.46,18.97
accept A Prisoner of Interest##25324 |goto 48.46,18.97
step
Enter the cave |goto 52.54,17.30 < 7 |walk
Follow the path down |goto 53.30,17.17 < 7 |walk
Follow the path |goto 54.11,17.09 < 7 |walk
Follow the path |goto 54.47,17.42 < 7 |walk
Continue following the path |goto 54.57,18.02 < 7 |walk
Continue following the path |goto 55.24,18.40 < 7 |walk
Follow the path down |goto 54.73,18.69 < 7 |walk
Follow the path |goto 53.80,19.50 < 7 |walk
Follow the path down |goto 55.49,19.22 < 7 |walk
Follow the path |goto 56.24,19.00 < 7 |walk
talk Captain Saynna Stormrunner##40139
|tip Inside the cave.
turnin A Prisoner of Interest##25324 |goto 56.76,18.83
accept Through the Dream##25325 |goto 56.76,18.83
step
Follow the path up |goto 56.21,19.00 < 7 |walk
Follow the path |goto 55.47,19.23 < 7 |walk
Follow the path up |goto 53.79,19.36 < 7 |walk
Follow the path |goto 54.79,18.66 < 7 |walk
Continue following the path |goto 55.24,18.24 < 7 |walk
Continue following the path |goto 54.49,17.92 < 7 |walk
Continue following the path |goto 54.44,17.34 < 7 |walk
Follow the path up |goto 54.08,17.09 < 7 |walk
Leave the cave |goto 52.54,17.30 < 7 |walk
Deliver Arch Druid Fandral Staghelm |q 25325/1 |goto 52.13,17.41
step
talk Alysra##38917
turnin Through the Dream##25325 |goto 52.13,17.41
accept Return to Nordrassil##25578 |goto 52.13,17.41
step
talk Ysera##40928
|tip Inside the building.
turnin Return to Nordrassil##25578 |goto 62.05,24.91
accept The Return of the Ancients##25584 |goto 62.05,24.91
step
talk Oomla Whitehorn##39429
turnin The Return of the Ancients##25584 |goto 35.69,19.42
accept Harrying the Hunters##25255 |goto 35.69,19.42
step
talk Jadi Falaryn##39427
accept End of the Supply Line##25233 |goto 35.74,19.68
accept In the Rear With the Gear##25234 |goto 35.74,19.68
stickystart "Kill_Twilight_Hunters"
stickystart "Kill_Twilight_Proveditors"
step
kill Twilight Proveditor##39436
|tip They look like ogres that walk along this road with Twilight Slaves following them.
click Twilight Supplies##202652+
|tip The Twilight Slaves will drop them after you kill the Twilight Slavedrivers.
collect 36 Twilight Supplies##52568 |q 25234/1 |goto 37.75,22.92
step
label "Kill_Twilight_Hunters"
kill 6 Twilight Hunter##39437 |q 25255/1 |goto 37.75,22.92
step
label "Kill_Twilight_Proveditors"
kill 4 Twilight Proveditor##39436 |q 25233/1 |goto 37.75,22.92
step
talk Jadi Falaryn##39427
turnin End of the Supply Line##25233 |goto 35.74,19.68
turnin In the Rear With the Gear##25234 |goto 35.74,19.68
accept The Voice of Goldrinn##25268 |goto 35.74,19.68
step
talk Oomla Whitehorn##39429
turnin Harrying the Hunters##25255 |goto 35.69,19.42
step
talk Ian Duran##39433
turnin The Voice of Goldrinn##25268 |goto 30.08,31.35
accept Goldrinn's Ferocity##25271 |goto 30.08,31.35
step
kill Lycanthoth Vandal##39445+
collect 6 Polluted Incense##52658 |q 25271/1 |goto 28.31,31.20
step
talk Ian Duran##39433
turnin Goldrinn's Ferocity##25271 |goto 30.08,31.35
accept Lycanthoth the Corruptor##25273 |goto 30.08,31.35
step
Enter the cave |goto 31.97,36.50 < 10 |walk
Use Lycanthoth's Incense |use Lycanthoth's Incense##52682
|tip Inside the small cave.
kill Lycanthoth##39446 |q 25273/1 |goto 32.38,37.22
step
talk Spirit of Goldrinn##39627
|tip He appears next to you inside the cave after you kill Lycanthoth.
turnin Lycanthoth the Corruptor##25273 |goto 32.34,37.13
step
talk Spirit of Goldrinn##39627
accept The Shrine Reclaimed##25280 |goto 29.65,29.28
step
talk Ian Duran##39433
turnin The Shrine Reclaimed##25280 |goto 28.21,29.75
accept Cleaning House##25278 |goto 28.21,29.75
step
talk Rio Duran##39434
accept From the Mouth of Madness##25297 |goto 28.17,29.87
step
talk Royce Duskwhisper##39435
|tip He walks around this area.
accept The Eye of Twilight##25300 |goto 28.38,30.04
step
click Bitterblossom##202703+
|tip They look like plants with purple flowers on them on the ground around this area.
collect Bitterblossom##52727 |q 25297/2 |goto 28.89,32.24
stickystart "Slay_Minions_Of_Gargol"
step
click Stonebloom##202702+
|tip They look like big peach colored round plants on the ground around this area.
collect Stonebloom##52726 |q 25297/1 |goto 26.52,34.97
step
click Eye of Twilight##206569
turnin The Eye of Twilight##25300 |goto 27.18,35.22
accept Mastering Puppets##25301 |goto 27.18,35.22
step
click Darkflame Ember##202705
|tip Inside the brazier.
collect Darkflame Ember##52728 |q 25297/3 |goto 28.45,35.78
step
click Twilight Cauldron##202706
turnin From the Mouth of Madness##25297 |goto 28.42,36.37
accept Free Your Mind, the Rest Follows##25298 |goto 28.42,36.37
stickystart "Free_Twilight_Servitors"
step
Enter the cave |goto 27.10,35.87 < 7 |walk
Follow the path |goto 26.80,36.47 < 7 |walk
Follow the path |goto 26.85,37.25 < 7 |walk
Continue following the path |goto 27.68,38.09 < 7 |walk
Follow the path up |goto 27.71,38.72 < 7 |walk
Follow the path |goto 27.55,39.50 < 7 |walk
Follow the path down |goto 27.32,40.29 < 7 |walk
talk Kristoff Manheim##39797
|tip Inside the cave.
accept Gar'gol's Gotta Go##25328 |goto 27.24,40.75
step
Follow the path |goto 27.35,40.22 < 7 |walk
Follow the path down |goto 27.61,39.31 < 7 |walk
Follow the path |goto 27.59,38.75 < 7 |walk
Follow the path |goto 26.90,39.22 < 7 |walk
Follow the path up |goto 26.30,38.90 < 7 |walk
click Gar'gol's Personal Treasure Chest##204580
|tip Inside the cave.
collect Rusted Skull Key##52789 |q 25328/1 |goto 26.46,38.50
step
Follow the path |goto 26.33,39.69 < 7 |walk
Continue following the path |goto 26.36,40.20 < 7 |walk
click The Twilight Apocrypha##202712
|tip Inside the cave.
turnin Mastering Puppets##25301 |goto 25.81,41.64
accept Elementary!##25303 |goto 25.81,41.64
step
clicknpc Crucible of Fire##39730
|tip Inside the cave.
Activate the Crucible of Fire |q 25303/3 |goto 25.96,41.81
step
clicknpc Crucible of Earth##39737
|tip Inside the cave.
Activate the Crucible of Earth |q 25303/1 |goto 25.68,41.65
step
clicknpc Crucible of Air##39736
|tip Inside the cave.
Activate the Crucible of Air |q 25303/2 |goto 25.80,41.84
step
clicknpc Crucible of Water##39738
|tip Inside the cave.
Activate the Crucible of Water |q 25303/4 |goto 25.96,41.60
step
click Twilight Apocrypha##470
|tip Inside the cave.
turnin Elementary!##25303 |goto 25.81,41.64
accept Return to Duskwhisper##25312 |goto 25.81,41.64
step
Follow the path |goto 25.97,41.07 < 7 |walk
Continue following the path |goto 26.31,40.33 < 7 |walk
Continue following the path |goto 26.72,39.60 < 7 |walk
Follow the path up |goto 27.68,38.77 < 7 |walk
Follow the path |goto 27.55,39.50 < 7 |walk
Follow the path down |goto 27.32,40.29 < 7 |walk
talk Kristoff Manheim##39797
turnin Gar'gol's Gotta Go##25328 |goto 27.24,40.75
accept Get Me Outta Here!##25332 |goto 27.24,40.75
step
Follow the path |goto 27.35,40.19 < 7 |walk
Follow the path down |goto 27.63,39.32 < 7 |walk
Follow the path |goto 27.76,38.09 < 7 |walk
Continue following the path |goto 26.98,37.47 < 7 |walk
Continue following the path |goto 26.78,36.58 < 7 |walk
Leave the cave |goto 27.11,35.84 < 7 |walk
Escort Kristoff Out |q 25332/1 |goto 27.13,35.81
step
label "Free_Twilight_Servitors"
talk Twilight Servitor##39644+
|tip Inside and outside the cave around this area.
Choose _<Administor the draught.>_
Free #8# Twilight Servitors |q 25298/1 |goto 27.69,35.66
step
label "Slay_Minions_Of_Gargol"
Kill Hovel enemies around this area
|tip Inside and outside the cave around this area.
Slay #8# Minions of Gar'gol |q 25278/1 |goto 27.69,35.66
step
talk Royce Duskwhisper##39435
|tip He walks around this area.
turnin Return to Duskwhisper##25312 |goto 28.38,30.04
turnin Get Me Outta Here!##25332 |goto 28.38,30.04
step
talk Ian Duran##39433
turnin Cleaning House##25278 |goto 28.22,29.75
accept Sweeping the Shelf##25352 |goto 28.22,29.75
accept Lightning in a Bottle##25353 |goto 28.22,29.75
step
talk Rio Duran##39434
turnin Free Your Mind, the Rest Follows##25298 |goto 28.17,29.87
stickystart "Kill_Twilight_Stormcallers"
stickystart "Kill_Howling_Riftdwellers"
step
click Lightning Channel##202743+
|tip They look like metal poles with lights on top of them stuck in the ground around this area.
collect Charged Condenser Jar##52834 |q 25353/1 |goto 28.17,39.83
step
label "Kill_Twilight_Stormcallers"
kill 8 Twilight Stormcaller##39843 |q 25352/1 |goto 28.17,39.83
step
label "Kill_Howling_Riftdwellers"
kill 5 Howling Riftdweller##39844 |q 25352/2 |goto 28.17,39.83
step
Use the Totem of Goldrinn |use Totem of Goldrinn##52853
_Next to you:_
talk Spirit of Goldrinn##39627
turnin Lightning in a Bottle##25353
accept Into the Maw!##25618
step
Enter the portal |goto 26.09,41.09
Teleport to the Firelands Fireworks |goto 25.80,41.48 < 10 |noway |c |q 25618
step
talk Jordan Olafson##40834
|tip Inside the cave.
turnin Into the Maw!##25618 |goto 26.25,41.92
accept Forged of Shadow and Flame##25575 |goto 26.25,41.92
accept Crushing the Cores##25577 |goto 26.25,41.92
step
talk Yargra Blackscar##40837
|tip Inside the cave.
accept Rage of the Wolf Ancient##25576 |goto 26.32,41.95
stickystart "Kill_Dark_Iron_Laborers"
stickystart "Destroy_Twilight_Arms_Crates"
step
Follow the path |goto 26.78,41.49 < 7 |walk
Continue following the path |goto 27.69,41.38 < 7 |walk
kill Searing Guardian##40841+
|tip Inside the cave.
collect Smoldering Core##55123 |n
Use the Smoldering Cores |use Smoldering Core##55123
|tip Use them next to Twilight Anvils around this area.
|tip They look like small grey metal blacksmith anvils on the ground around this area inside the cave.
Destroy #8# Smoldering Cores |q 25577/1 |goto 28.85,40.68
step
label "Kill_Dark_Iron_Laborers"
kill 12 Dark Iron Laborer##40838 |q 25576/1 |goto 28.85,40.68
|tip Inside the cave.
step
label "Destroy_Twilight_Arms_Crates"
click Twilight Arms Crate##9393+
|tip They look like grey wooden boxes on the ground around this area inside the cave.
Destroy #10# Twilight Arms Crates |q 25575/1 |goto 28.85,40.68
step
Follow the path |goto 28.87,40.50 < 10 |walk
Follow the path up |goto 28.34,40.92 < 7 |walk
Follow the path |goto 26.79,41.52 < 7 |walk
talk Yargra Blackscar##40837
|tip Inside the cave.
turnin Rage of the Wolf Ancient##25576 |goto 26.32,41.95
step
talk Jordan Olafson##40834
|tip Inside the cave.
turnin Forged of Shadow and Flame##25575 |goto 26.25,41.92
turnin Crushing the Cores##25577 |goto 26.25,41.92
accept Cindermaul, the Portal Master##25599 |goto 26.25,41.92
stickystart "Collect_Tome_Of_Openings"
step
Follow the path down |goto 26.84,41.48 < 7 |walk
Continue following the path down |goto 28.65,41.04 < 7 |walk
Follow the path |goto 29.96,41.90 < 7 |walk
kill Cindermaul##40844 |q 25599/1 |goto 30.74,41.70
|tip Inside the cave.
step
label "Collect_Tome_Of_Openings"
click Battered Stone Chest##203089
|tip It appears after you kill Cindermaul.
|tip Inside the cave.
collect Tome of Openings##55136 |q 25599/2 |goto 30.74,41.70
step
Follow the path |goto 29.97,41.94 < 7 |walk
Follow the path up |goto 28.54,40.98 < 7 |walk
Follow the path |goto 26.78,41.51 < 7 |walk
talk Jordan Olafson##40834
|tip Inside the cave.
turnin Cindermaul, the Portal Master##25599 |goto 26.25,41.92
accept Forgemaster Pyrendius##25600 |goto 26.25,41.92
step
Follow the path |goto 28.87,40.50 < 10 |walk
Follow the path up |goto 28.34,40.92 < 7 |walk
Follow the path down |goto 29.64,42.02 < 7 |walk
Follow the path |goto 30.00,44.00 < 7 |walk
Cross the bridge |goto 30.64,44.97 < 7 |walk
kill Forgemaster Pyrendius##40845 |q 25600/1 |goto 31.90,46.27
|tip Click the Portal Runes on the ground around this area.
|tip They look like brown metal plates on the ground around this area inside the cave.
|tip Lure Forgemaster Pyrendius onto the activated Portal Runes
|tip This will weaken him and allow you to kill him.
step
Cross the bridge |goto 31.24,45.67 < 7 |walk
Follow the path |goto 30.64,45.01 < 7 |walk
Follow the path up |goto 30.04,44.05 < 7 |walk
Continue up the path |goto 29.63,41.82 < 7 |walk
Follow the path up |goto 28.68,41.10 < 7 |walk
Follow the path |goto 26.78,41.50 < 7 |walk
talk Jordan Olafson##40834
|tip Inside the cave.
turnin Forgemaster Pyrendius##25600 |goto 26.25,41.92
accept Return from the Firelands##25611 |goto 26.25,41.92
step
Enter the portal |goto 25.92,40.92
Return to the Lightning Ledge |goto 26.27,40.86 < 10 |noway |c |q 25352
step
talk Ian Duran##39433
turnin Sweeping the Shelf##25352 |goto 28.22,29.74
turnin Return from the Firelands##25611 |goto 28.22,29.74
step
talk Vision of Ysera##46987
accept Avian's Legacy##27874 |goto 28.27,29.74
|only if not havequest(25985) or completedq(25985)
step
talk Rio Duran##39434
accept The Fires of Mt. Hyjal##25630 |goto 28.17,29.88
step
talk Laina Nightsky##39927
turnin The Fires of Mt. Hyjal##25630 |goto 18.99,40.94
accept Fighting Fire With ... Anything##25381 |goto 18.99,40.94
accept Disrupting the Rituals##25382 |goto 18.99,40.94
step
talk Mylune##39930
accept Save the Wee Animals##25385 |goto 19.22,37.89
step
talk Salirn Moonbear##43378
home Grove of Aessina |goto 18.67,37.27
step
talk Matoclaw##39928
accept If You're Not Against Us...##25404 |goto 19.03,37.01
step
talk Elizil Wintermoth##41860
fpath Grove of Aessina |goto 19.60,36.38
step
talk Tyrus Blackhorn##39933
Tell him _"Yes, Blackhorn. I've been sent to request your aid, if you are willing."_
Persuade Blackhorn |q 25404/1 |goto 22.26,44.92
step
talk Tyrus Blackhorn##39933
turnin If You're Not Against Us...##25404 |goto 22.26,44.92
accept Seeds of Their Demise##25408 |goto 22.26,44.92
step
kill Wailing Weed##40066+
collect 8 Bileberry##53102 |q 25408/1 |goto 21.59,44.01
step
talk Tyrus Blackhorn##39933
turnin Seeds of Their Demise##25408 |goto 22.26,44.92
accept A New Master##25411 |goto 22.26,44.92
stickystart "Collect_Frightened_Animals"
stickystart "Kill_Raging_Firestorms"
stickystart "Kill_Twilight_Inferno_Lords"
step
kill Twilight Inferno Lord##39974
Use the Bottled Bileberry Brew |use Bottled Bileberry Brew##53120
|tip Use it on their corpse.
Subjugate a Twilight Inferno Lord |q 25411/1 |goto 14.32,45.45
step
_Next to you:_
talk Subjugated Inferno Lord##40093
turnin A New Master##25411
accept The Name Never Spoken##25412
step
click Southern Firestone##202763
Examine the Southern Firestone |q 25412/3 |goto 14.30,45.42
step
click Central Firestone##202764
Examine the Central Firestone |q 25412/2 |goto 11.64,41.52
step
click Northern Firestone##202765
Examine the Northern Firestone |q 25412/1 |goto 9.65,36.47
step
label "Collect_Frightened_Animals"
clicknpc Terrified Squirrel##39998+
|tip They look like small squirrels running on the ground around this area.
clicknpc Panicked Bunny##39997+
|tip They looke like small rabbits running on the ground around this area.
collect 10 Frightened Animal##53060 |q 25385/1 |goto 13.16,41.88
step
label "Kill_Raging_Firestorms"
kill 10 Raging Firestorm##39939 |q 25381/1 |goto 13.16,41.88
step
label "Kill_Twilight_Inferno_Lords"
kill 6 Twilight Inferno Lord##39974 |q 25382/1 |goto 13.16,41.88
step
talk Laina Nightsky##39927
turnin Fighting Fire With ... Anything##25381 |goto 18.98,40.94
turnin Disrupting the Rituals##25382 |goto 18.98,40.94
step
talk Mylune##39930
turnin Save the Wee Animals##25385 |goto 19.22,37.89
accept Oh, Deer!##25392 |goto 19.22,37.89
step
talk Tyrus Blackhorn##39933
turnin The Name Never Spoken##25412 |goto 22.27,44.92
accept Black Heart of Flame##25428 |goto 22.27,44.92
step
Use the Charred Branch |use Charred Branch##53464
kill Thol'embaar##40107
collect Black Heart of Thol'embaar##53454 |q 25428/1 |goto 12.60,41.21
step
clicknpc Injured Fawn##39999+
|tip They look like tiny deer on the ground around this area.
|tip You can do this mounted.
Escort #3# Injured Fawns Home |q 25392/1 |goto 12.60,41.21
Lead the them to Mylune at [19.22,37.89] |notravel
|tip You can safely fly without them disappearing.
step
talk Mylune##39930
turnin Oh, Deer!##25392 |goto 19.22,37.89
step
talk Tyrus Blackhorn##39933
turnin Black Heart of Flame##25428 |goto 22.27,44.92
accept Good News... and Bad News##29066 |goto 22.27,44.92
step
talk Matoclaw##39928
turnin Good News... and Bad News##29066 |goto 19.03,37.02
accept Last Stand at Whistling Grove##25940 |goto 19.03,37.02
step
talk Keeper Taldros##39932
turnin Last Stand at Whistling Grove##25940 |goto 13.65,32.79
accept The Bears Up There##25462 |goto 13.65,32.79
step
clicknpc Climbing Tree##40190+
|tip They look like wooden ladders at the base of trees around this small area.
clicknpc Hyjal Bear Cub##40240+
|tip They look like small bears in the trees around this small area.
Rescue #6# Hyjal Bear Cubs |q 25462/1 |goto 14.29,33.05
|tip Use the "Climb Up" ability on your action bar to climb to the top of the tree.
|tip Use the "Chuck-a-bear" ability on your action bar to throw the cubs.
|tip Aim the yellow arrow at the leather skin trampoline on the ground nearby.
step
Climb Down from the Tree |nobuff 236160 |q 25462
|tip Use the "Climb Down" ability on your action bar.
step
talk Keeper Taldros##39932
turnin The Bears Up There##25462 |goto 13.65,32.79
accept Smashing Through Ashes##25490 |goto 13.65,32.79
step
kill 8 Charbringer##40336 |q 25490/1 |goto 24.18,60.52
step
talk Arch Druid Hamuul Runetotem##39858
turnin Smashing Through Ashes##25490 |goto 27.11,62.64
accept Durable Seeds##25491 |goto 27.11,62.64
accept Fresh Bait##25493 |goto 27.11,62.64
step
talk Rayne Feathersong##40331
accept Firebreak##25492 |goto 27.05,63.02
step
talk Ranela Featherglen##54392
fpath Sanctuary of Malorne |goto 27.75,63.63
stickystart "Kill_Lava_Surgers"
stickystart "Collect_Core_Hound_Entrails"
step
click Scorched Soil##202884+
|tip They look like piles of dirt on the ground around this area.
collect 10 Hyjal Seedling##54574 |q 25491/1 |goto 37.22,57.75
step
label "Kill_Lava_Surgers"
kill 10 Lava Surger##46911 |q 25492/1 |goto 37.22,57.75
step
label "Collect_Core_Hound_Entrails"
kill Core Hound##46910+
collect 4 Core Hound Entrails##54609 |q 25493/1 |goto 37.22,57.75
step
talk Arch Druid Hamuul Runetotem##39858
turnin Durable Seeds##25491 |goto 27.11,62.64
turnin Fresh Bait##25493 |goto 27.11,62.64
accept Hell's Shells##25507 |goto 27.11,62.64
step
talk Rayne Feathersong##40331
turnin Firebreak##25492 |goto 27.05,63.02
accept Prepping the Soil##25502 |goto 27.05,63.02
step
click Flameward
Activate the Flameward |q 25502/1 |goto 33.02,64.54
step
Kill the enemies that attack in waves
Defend the Flameward |q 25502/2 |goto 33.02,64.54
step
Use the Heap of Core Hound Innards |use Heap of Core Hound Innards##54744
|tip Use it near Nemesis around this area.
|tip He looks like a huge turtle that walks around this area.
clicknpc Nemesis##40340
|tip Wait until he eats the meat on the ground and becomes friendly.
collect Nemesis Shell Fragment##54745 |q 25507/1 |goto 37.05,58.08
step
talk Arch Druid Hamuul Runetotem##39858
turnin Hell's Shells##25507 |goto 27.11,62.64
accept Tortolla Speaks##25510 |goto 27.11,62.64
step
talk Rayne Feathersong##40331
turnin Prepping the Soil##25502 |goto 27.05,63.02
step
talk Tortolla##41504
turnin Tortolla Speaks##25510 |goto 24.68,55.67
accept Breaking the Bonds##25514 |goto 24.68,55.67
accept Children of Tortolla##25519 |goto 24.68,55.67
step
clicknpc Rod of Subjugation##40544
Disable the First Rod of Subjugation |q 25514/1 |goto 23.95,55.90
step
click Rod of Subjugation##40545
Disable the Second Rod of Subjugation |q 25514/2 |goto 25.20,54.84
step
talk Tortolla##41504
turnin Breaking the Bonds##25514 |goto 24.68,55.67
step
kill Deep Corruptor##40561+
|tip Underwater around this area.
Save #6# of Tortolla's Eggs |q 25519/1 |goto 25.43,56.62
step
talk Tortolla##41504
turnin Children of Tortolla##25519 |goto 24.68,55.67
accept An Ancient Awakens##25520 |goto 24.68,55.67
step
talk Arch Druid Hamuul Runetotem##39858
turnin An Ancient Awakens##25520 |goto 27.12,62.64
step
Enter the building |goto 42.08,45.02 < 10 |walk
talk Thisalee Crow##41006
|tip Inside the building.
accept The Wormwing Problem##25655 |goto 42.17,45.43
accept Scrambling for Eggs##25656 |goto 42.17,45.43
step
Follow the path |goto 42.42,45.11 < 7 |walk
talk Isara Riverstride##43487
|tip Inside the building.
home Shrine of Aviana |goto 42.63,45.74
step
Follow the path |goto 43.57,45.87 < 7 |walk
talk Choluna##41005
|tip Inside the building.
turnin Aviana's Legacy##27874 |goto 44.44,46.23
accept An Offering for Aviana##25663 |goto 44.44,46.23
step
Follow the path |goto 43.57,45.88 < 7 |walk
Leave the building |goto 41.99,44.92 < 10 |walk
Use the Sacred Nectar |use Sacred Nectar##55208
Offer the Nectar |q 25663/1 |goto 40.35,44.29
step
talk Mysterious Winged Spirit##41068
turnin An Offering for Aviana##25663 |goto 40.35,44.29
accept A Plea From Beyond##25665 |goto 40.35,44.29
stickystart "Slay_Wormwing_Harpies"
step
click Stolen Hyjal Egg##203143+
|tip They look like white eggs on the ground around this area.
collect 8 Hyjal Egg##55189 |q 25656/1 |goto 37.45,44.12
step
label "Slay_Wormwing_Harpies"
Kill Wormwing enemies around this area
Slay #10# Wormwing Harpies |q 25655/1 |goto 37.45,44.12
step
Enter the building |goto 42.08,45.02 < 10 |walk
talk Thisalee Crow##41006
|tip Inside the building.
turnin The Wormwing Problem##25655 |goto 42.17,45.43
turnin Scrambling for Eggs##25656 |goto 42.17,45.43
accept A Bird in Hand##25731 |goto 42.17,45.43
step
Follow the path |goto 42.42,45.11 < 7 |walk
Follow the path |goto 43.57,45.87 < 7 |walk
talk Choluna##41005
|tip Inside the building.
turnin A Plea From Beyond##25665 |goto 44.44,46.23
accept A Prayer and a Wing##25664 |goto 44.44,46.23
step
Follow the path |goto 43.57,45.88 < 7 |walk
Leave the building |goto 41.99,44.92 < 10 |walk
click Harpy Signal Fire##7290
kill Marion Wormwing##41112
|tip She will eventually become friendly.
Capture Marion Wormwing |q 25731/1 |goto 38.33,44.14
step
talk Marion Wormwing##41112
Ask her _"Why are you stealing eggs?"_
Interrogate Marion Wormwing |q 25731/2 |goto 38.33,44.14
step
Use the Enormous Bird Call |use Enormous Bird Call##55211
|tip Use it in the bird nest at the top of the mountain peak.
kill Blaithe##41084
collect Ancient Feather##55210 |q 25664/1 |goto 35.67,42.33
step
Enter the building |goto 42.08,45.02 < 10 |walk
talk Thisalee Crow##41006
|tip Inside the building.
turnin A Bird in Hand##25731 |goto 42.17,45.43
step
Follow the path |goto 42.42,45.11 < 7 |walk
Follow the path |goto 43.57,45.87 < 7 |walk
talk Choluna##41005
|tip Inside the building.
turnin A Prayer and a Wing##25664 |goto 44.44,46.23
step
Follow the path |goto Mount Hyjal/0 43.58,45.89 < 7 |walk
Run up the ramp |goto 42.31,45.38 < 7 |c |q 25740 |future
step
Follow the path |goto 42.92,45.68 < 7 |walk
Run up the ramp |goto 43.12,45.34 < 7 |walk
Follow the path |goto 43.47,45.55 < 7 |walk
talk Skylord Omnuron##40997
|tip Upstairs inside the building..
accept Fact-Finding Mission##25740 |goto 43.55,45.89
step
Leave the building |goto 42.01,45.01 < 10 |walk
talk Thisalee Crow##41006
turnin Fact-Finding Mission##25740 |goto 32.78,70.76
accept Sethria's Brood##25746 |goto 32.78,70.76
accept A Gap in Their Armor##25758 |goto 32.78,70.76
stickystart "Slay_Sethrias_Minions"
stickystart "Collect_Twilight_Armor_Plates"
step
click the Codex of Shadows##203207
accept The Codex of Shadows##25763 |goto 31.26,77.07
step
label "Slay_Sethrias_Minions"
Kill Twilight enemies around this area
Slay #12# of Sethria's Minions |q 25746/1 |goto 30.60,77.30
You can find more around [32.26,90.66]
step
label "Collect_Twilight_Armor_Plates"
click Twilight Armor Plate##203198+
|tip They look like orange metal plates on the ground around this area.
collect 8 Twilight Armor Plate##55809 |q 25758/1 |goto 30.60,77.30
You can find more around [32.26,90.66]
step
talk Thisalee Crow##41006
turnin Sethria's Brood##25746 |goto 32.78,70.76
turnin A Gap in Their Armor##25758 |goto 32.78,70.76
accept Disassembly##25761 |goto 32.78,70.76
turnin The Codex of Shadows##25763 |goto 32.78,70.76
accept Egg Hunt##25764 |goto 32.78,70.76
stickystart "Shadowcloak"
step
Use Thisalee's Shiv |use Thisalee's Shiv##55883
|tip Use it on Twilight Juggernauts around this area.
|tip Use it 5 times on each Twilight Juggernaut to remove their armor.
|tip This will allow you to kill them easier.
kill 3 Twilight Juggernaut##41031 |q 25761/1 |goto 30.59,78.55
You can find more around [32.26,90.66]
step
label "Shadowcloak"
click Shadow Cloak Generator##203208+
|tip They look like spinning metal machines with purple light glowing upward out of them on the ground around this area.
|tip You will eventually find Aviana's Egg.
Kill the enemies that attack in waves
Unveil and Defend Aviana's Egg |q 25764/1 |goto 30.59,78.55
You can find more around [32.26,90.66]
step
talk Thisalee Crow##41006
turnin Disassembly##25761 |goto 32.78,70.76
turnin Egg Hunt##25764 |goto 32.78,70.76
accept Sethria's Demise##25776 |goto 32.78,70.76
step
kill Sethria##41255
Use Thisalee's Signal Rocket |use Thisalee's Signal Rocket##56003
|tip Use it when she turns into a dragon.
|tip Allies will come to help you fight her.
kill Sethria##41255 |q 25776/1 |goto 35.53,97.96
step
talk Thisalee Crow##41006
turnin Sethria's Demise##25776 |goto 32.78,70.76
accept Return to the Shrine##25795 |goto 32.78,70.76
step
Follow the path |goto 43.59,45.88 < 7 |walk
talk Choluna##41005
|tip Inside the building.
turnin Return to the Shrine##25795 |goto 44.4,46.2
accept An Ancient Reborn##25807 |goto 44.4,46.2
step
Run up the ramp |goto 43.98,46.33 < 7 |walk
Follow the path up |goto 44.18,46.76 < 7 |walk
Follow the path |goto 44.33,47.28 < 7 |walk
Use Herald's Incense |use Herald's Incense##56016
|tip Inside the building.
Burn Herald's Incense |q 25807/1 |goto 44.34,47.98
step
talk Aviana##41308
|tip Inside the building.
turnin An Ancient Reborn##25807 |goto 44.34,47.98
step
Follow the path down |goto 44.33,47.21 < 7 |walk
Follow the path |goto 44.01,46.28 < 7 |walk
talk Morthis Whisperwing##41003
|tip Inside the building.
accept The Hatchery Must Burn##25810 |goto 44.14,45.93
step
talk Vision of Ysera##47002
|tip Inside the building.
accept The Last Living Lorekeeper##25830 |goto 43.81,45.95
step
Follow the path |goto Mount Hyjal/0 43.53,45.85 < 7 |walk
Leave the building |goto 41.99,45.02 < 10 |walk
Enter the portal |goto 39.16,58.26
Teleport to the Firelands Hatchery |goto 38.77,58.01 < 10 |noway |c |q 25810
step
talk Farden Talonshrike##40578
|tip Inside the cave.
turnin The Hatchery Must Burn##25810 |goto 37.22,56.17
accept Flight in the Firelands##25523 |goto 37.22,56.17
step
click Twilight Weapon Rack
collect Twilight Firelance##52716 |q 25523 |goto 37.23,56.09
step
Equip the Twilight Firelance |equipped Twilight Firelance##52716 |q 25523
step
clicknpc Aviana's Guardian##40723
Ride Aviana's Guardian |invehicle |goto 37.38,56.00 |q 25523
step
Fly to the Guardian Flag
|tip Use the "Flap" ability on your action bar repeatedly to fly.
|tip It looks like a green flag on the floating rock inside the cave.
Visit the Guardian Flag |q 25523/1 |goto 36.50,53.27
step
talk Farden Talonshrike##40578
|tip Inside the cave.
|tip Use the "Flap" ability on your action bar repeatedly to fly.
turnin Flight in the Firelands##25523 |goto 37.22,56.17
accept Wave One##25525 |goto 37.22,56.17
step
Joust #10# Twilight Knight Riders |q 25525/1 |goto 36.50,52.40
|tip Use the "Flap" ability on your action bar repeatedly to fly.
|tip They are flying on birds around this area inside the cave.
|tip Get close to them to joust them.
step
talk Farden Talonshrike##40578
|tip Inside the cave.
|tip Use the "Flap" ability on your action bar repeatedly to fly.
turnin Wave One##25525 |goto 37.22,56.17
accept Wave Two##25544 |goto 37.22,56.17
step
Joust #10# Twilight Lancers |q 25544/1 |goto 36.50,52.40
|tip Use the "Flap" ability on your action bar repeatedly to fly.
|tip They are flying on birds around this area inside the cave.
|tip Get close to them to joust them.
step
talk Farden Talonshrike##40578
|tip Inside the cave.
|tip Use the "Flap" ability on your action bar repeatedly to fly.
turnin Wave Two##25544 |goto 37.22,56.17
accept Egg Wave##25560 |goto 37.22,56.17
step
Destroy #40# Firelands Eggs |q 25560/1 |goto 32.75,57.79
|tip They look like blue eggs on the ground around this area up on this ledge inside the cave.
|tip You can find more on other ledges and islands inside the cave.
|tip Run over them to destroy them.
step
talk Farden Talonshrike##40578
|tip Inside the cave.
|tip Use the "Flap" ability on your action bar repeatedly to fly.
turnin Egg Wave##25560 |goto 37.22,56.17
accept Return to Aviana##25832 |goto 37.22,56.17
step
Equip Your Normal Weapon
Click Here After Equipping Your Normal Weapon |confirm |q 25832
step
Enter the portal |goto 39.12,57.55
Return to the Flamewake |goto 38.83,58.58 < 10 |noway |c |q 25832
step
talk Nordu##41381
turnin The Last Living Lorekeeper##25830 |goto 27.40,55.52
accept Firefight##25842 |goto 27.40,55.52
step
kill 5 Fiery Tormentor##41396 |q 25842/1 |goto 27.51,51.62
step
talk Nordu##41381
turnin Firefight##25842 |goto 27.40,55.52
accept Aessina's Miracle##25372 |goto 27.40,55.52
step
talk Arch Druid Hamuul Runetotem##39858
turnin Aessina's Miracle##25372 |goto 19.54,37.82
step
Watch the dialogue
talk Arch Druid Hamuul Runetotem##39858
accept Tortolla's Revenge##25843 |goto 19.54,37.82
step
Follow the path |goto 43.59,45.89 < 7 |walk
Run up the ramp |goto 43.95,46.33 < 7 |walk
Follow the path up |goto 44.18,46.76 < 7 |walk
Follow the path |goto 44.34,47.31 < 7 |walk
talk Aviana##41308
|tip Inside the building.
turnin Return to Aviana##25832 |goto 44.33,47.98
step
Follow the path down |goto 44.33,47.21 < 7 |walk
Follow the path |goto 43.99,46.22 < 7 |walk
Follow the path |goto 43.56,45.87 < 7 |walk
Leave the building |goto 41.99,44.98 < 10 |walk
talk Tortolla##41504
turnin Tortolla's Revenge##25843 |goto 41.85,60.67
accept The Hammer and the Key##25904 |goto 41.85,60.67
step
talk Niden##41507
accept Lost Wardens##25881 |goto 42.25,60.56
accept Breakthrough##25899 |goto 42.25,60.56
stickystart "Collect_Glyph_Of_Opening"
stickystart "Kill_Twilight_Scorchlords"
step
talk Lost Warden##41499+
|tip They look like dead night elves on the ground and inside buildings around this area.
Tell them _"On your feet, soldier. The ancients are with us, and the mountain is healed!"_
Rescue #8# Lost Wardens |q 25881/1 |goto 51.14,54.66
step
label "Collect_Glyph_Of_Opening"
kill Twilight Field Captain##41502+
collect Glyph of Opening##56177 |q 25904/1 |goto 51.14,54.66
step
label "Kill_Twilight_Scorchlords"
kill 10 Twilight Scorchlord##41500 |q 25899/1 |goto 51.14,54.66
step
talk Tortolla##41504
turnin The Hammer and the Key##25904 |goto 41.85,60.67
accept The Third Flamegate##25906 |goto 41.85,60.67
step
Enter the building |goto 57.58,55.98 < 10 |walk
talk Captain Irontree##41492
|tip Inside the building.
turnin Lost Wardens##25881 |goto 57.12,55.95
accept Pressing the Advantage##25886 |goto 57.12,55.95
turnin Breakthrough##25899 |goto 57.12,55.95
step
Run up the ramp |goto 57.05,55.65 < 7 |walk
talk Logram##41497
|tip Inside the building.
accept Hyjal Recycling Program##25901 |goto 56.85,56.01
stickystart "Kill_Twilight_Field_Captains"
step
Follow the path |goto 57.13,55.62 < 7 |walk
Leave the building |goto 57.65,56.05 < 7 |walk
click Warden's Arrows##203310+
|tip They look like arrows with green swirls around them stuck in the ground around this area.
collect 15 Warden's Arrow##56176 |q 25901/1 |goto 58.36,55.77
step
label "Kill_Twilight_Field_Captains"
kill 4 Twilight Field Captain##41502+ |q 25886/1 |goto 58.36,55.77
You can find more around [63.59,56.51]
step
Enter the building |goto 57.58,55.98 < 10 |walk
talk Captain Irontree##41492
|tip Inside the building.
turnin Pressing the Advantage##25886 |goto 57.12,55.95
step
Run up the ramp |goto 57.05,55.65 < 7 |walk
talk Logram##41497
|tip Inside the building.
turnin Hyjal Recycling Program##25901 |goto 56.85,56.01
step
Follow the path |goto 57.13,55.62 < 7 |walk
Leave the building |goto 57.65,56.05 < 7 |walk
Enter the portal |goto 64.94,54.10
Teleport to the Crucible of Flame |goto 64.53,53.54 < 10 |noway |c |q 25906
step
talk Garunda Mountainpeak##41498
|tip Inside the cave.
turnin The Third Flamegate##25906 |goto 64.27,53.59
accept The Time for Mercy has Passed##25910 |goto 64.27,53.59
accept The Strength of Tortolla##25915 |goto 64.27,53.59
stickystart "Kill_Shadowflame_Masters"
stickystart "Kill_Molten_Tormentors"
step
Follow the path |goto 63.14,53.84 < 7 |walk
Continue following the path |goto 61.90,55.52 < 7 |walk
Continue following the path |goto 62.42,57.30 < 7 |walk
Continue following the path |goto 63.74,57.56 < 7 |walk
Continue following the path |goto 64.96,57.78 < 7 |walk
Examine the Nemesis Crystal |q 25915/1 |goto 65.9,58.2
|tip The Child of Tortolla turtle next to you will channel a spell on the crystal.
|tip Inside the cave.
step
label "Kill_Shadowflame_Masters"
kill 4 Shadowflame Master##41563 |q 25910/1 |goto 64.27,57.72
|tip Inside the cave.
step
label "Kill_Molten_Tormentors"
kill 10 Molten Tormentor##41565 |q 25910/2 |goto 64.27,57.72
|tip Inside the cave.
step
Follow the path |goto 63.67,57.54 < 7 |walk
Continue following the path |goto 62.24,56.98 < 7 |walk
Follow the path up |goto 61.93,55.45 < 7 |walk
Follow the path |goto 63.18,54.02 < 7 |walk
talk Garunda Mountainpeak##41498
|tip Inside the cave.
turnin The Time for Mercy has Passed##25910 |goto 64.27,53.59
turnin The Strength of Tortolla##25915 |goto 64.27,53.59
accept Finish Nemesis##25923 |goto 64.27,53.59
step
Follow the path |goto 63.14,53.84 < 7 |walk
Continue following the path |goto 61.90,55.52 < 7 |walk
Continue following the path |goto 62.42,57.30 < 7 |walk
Continue following the path |goto 63.74,57.56 < 7 |walk
Follow the path down |goto 64.18,58.09 < 7 |walk
Continue down the path |goto 64.50,59.74 < 7 |walk
Follow the path |goto 63.96,62.14 < 7 |walk
kill Nemesis##40340
|tip Inside the cave.
Use the Totem of Tortolla |use Totem of Tortolla##56207
|tip Use it when he is almost done casting "Molten Fury".
|tip This will shield you.
kill Nemesis##40340 |q 25923/1 |goto 62.62,62.27
step
Follow the path |goto 63.42,62.25 < 7 |walk
Follow the path up |goto 64.13,61.92 < 7 |walk
Continue up the path |goto 64.46,60.12 < 7 |walk
Follow the path |goto 63.67,57.54 < 7 |walk
Continue following the path |goto 62.24,56.98 < 7 |walk
Follow the path up |goto 61.93,55.45 < 7 |walk
Follow the path |goto 63.18,54.02 < 7 |walk
talk Garunda Mountainpeak##41498
|tip Inside the cave.
turnin Finish Nemesis##25923 |goto 64.27,53.59
accept Tortolla's Triumph##25928 |goto 64.27,53.59
step
Enter the portal |goto 64.78,53.63
Return to the Scorched Plain |goto 64.91,54.54 < 10 |noway |c |q 25928
step
Follow the path |goto 42.55,45.18 < 7 |walk
Leave the building |goto 42.01,45.01 < 10 |walk
talk Tortolla##41504
turnin Tortolla's Triumph##25928 |goto 41.9,60.7
accept The Ancients are With Us##25653 |goto 41.9,60.7
step
Enter the building |goto 63.12,23.75 < 7 |walk
talk Ysera##40928
|tip Inside the building.
turnin The Ancients are With Us##25653 |goto 62.05,24.91
accept Commander Jarod Shadowsong##25597 |goto 62.05,24.91
step
talk Elementalist Ortell##39621
turnin Commander Jarod Shadowsong##25597 |goto 71.92,58.07
accept Signed in Blood##25274 |goto 71.92,58.07
step
talk Twilight Recruit##39619
Click Here After Talking to the Twilight Recruit |confirm |goto 73.51,60.39 |q 25274
step
Use the Blackjack |use Blackjack##52683
|tip Use it on the Twilight Recruit at this location.
collect Twilight Recruitment Papers##52685 |q 25274/1 |goto 72.60,59.15
step
talk Elementalist Ortell##39621
turnin Signed in Blood##25274 |goto 71.92,58.07
accept Your New Identity##25276 |goto 71.92,58.07
step
talk Condenna the Pitiless##39442
turnin Your New Identity##25276 |goto 76.94,62.04
accept Trial By Fire##25223 |goto 76.94,62.04
accept In Bloom##25224 |goto 76.94,62.04
step
talk Instructor Cargall##39451
accept Waste of Flesh##25330 |goto 77.05,62.14
stickystart "Collect_Flame_Blossoms"
stickystart "Kill_Fiery_Instructors"
step
Use the Frostgale Crystal |use Frostgale Crystal##52819
|tip Use it on an Immolated Supplicant around this area.
|tip They run around this area on fire.
|tip They must be alive for you to be able to save them.
Save #4# Immolated Supplicants |q 25330/1 |goto 81.17,63.90
step
label "Collect_Flame_Blossoms"
click Flame Blossom##202619+
|tip They look like small red flowers on the ground around this area.
collect 5 Flame Blossom##52537 |q 25224/1 |goto 81.17,63.90
step
label "Kill_Fiery_Instructors"
kill 8 Fiery Instructor##40564 |q 25223/1 |goto 81.17,63.90
step
talk Instructor Cargall##39451
turnin Waste of Flesh##25330 |goto 77.05,62.14
step
talk Condenna the Pitiless##39442
turnin Trial By Fire##25223 |goto 76.94,62.04
turnin In Bloom##25224 |goto 76.94,62.04
accept Twilight Training##25291 |goto 76.94,62.04
step
talk Instructor Mylva##39413
turnin Twilight Training##25291 |goto 89.58,59.09
accept Physical Training: Forced Labor##25509 |goto 89.58,59.09
step
click Outhouse Hideout##202701
accept Gather the Intelligence##25296 |goto 88.28,58.52
step
talk Instructor Devoran##39406
accept Walking the Dog##25294 |goto 90.15,56.39
step
click Crate of Scrolls##202968
collect Twilight Communique##52724 |q 25296/1 |goto 89.51,55.46
step
click Hyjal Battleplans##202969
collect Hyjal Battleplans##52725 |q 25296/2 |goto 91.99,51.50
stickystart "Break_Darkwhisper_Lodestones"
step
kill Spinescale Basilisk##39658+
collect 5 Charred Basilisk Meat##52708 |goto 85.24,56.56 |q 25294
step
Use the Fiery Leash |use Fiery Leash##52717
Use the Charred Basilisk Meat |use Charred Basilisk Meat##52708
|tip Use it 5 times.
Feed the Spawn of Smolderos #5# Times |q 25294/1
step
label "Break_Darkwhisper_Lodestones"
click Darkwhisper Lodestone##202952+
|tip They look like grey ore nodes on the ground around this area.
Break #5# Darkwhisper Lodestones |q 25509/1 |goto 85.24,56.56
step
click Outhouse Hideout##202701
turnin Gather the Intelligence##25296 |goto 88.28,58.52
accept Seeds of Discord##25308 |goto 88.28,58.52
step
talk Instructor Mylva##39413
turnin Physical Training: Forced Labor##25509 |goto 89.58,59.09
accept Agility Training: Run Like Hell!##25499 |goto 89.58,59.09
step
Complete your Physical Training |q 25499/1 |goto 89.22,57.48
|tip Run around this circular structure while the fire elemental chases you.
|tip This takes 1 minute.
step
talk Instructor Mylva##39413
turnin Agility Training: Run Like Hell!##25499 |goto 89.58,59.09
accept Mental Training: Speaking the Truth to Power##25299 |goto 89.58,59.09
step
Use the Orb of Ascension |use Orb of Ascension##52828
|tip Use the abilities on your action bar to answer "Yes" or "No" as the Orb of Ascenion asks you questions.
|tip It will ask you random simple questions in your chat box.
|tip You must answer 10 questions correct.
Complete #10# Mental Training Tests |q 25299/1 |goto 89.58,59.09
step
talk Instructor Mylva##39413
turnin Mental Training: Speaking the Truth to Power##25299 |goto 89.58,59.09
accept Spiritual Training: Mercy is for the Weak##25309 |goto 89.58,59.09
step
talk Instructor Devoran##39406
turnin Walking the Dog##25294 |goto 90.15,56.39
accept A Champion's Collar##25494 |goto 90.15,56.39
step
kill 5 Failed Supplicant##39752 |q 25309/1 |goto 92.08,48.68
step
kill Spinescale Matriarch##40403
|tip She walks around this small area.
collect Spiked Basilisk Hide##54610 |q 25494/1 |goto 84.73,46.90
step
Use the Ogre Disguise |use Ogre Disguise##55137
Wear the Ogre Disguise |havebuff 306868 |goto 77.47,48.02 |q 25308
step
Follow the path |goto 77.82,48.64 < 7 |walk
Follow the path |goto 77.89,49.38 < 7 |walk
Run up the ramp |goto 77.51,49.64 < 7 |walk
Enter the building |goto 77.14,49.36 < 7 |walk
talk Karr'gonn##40489
|tip Don't mount or you will lose the disguise.
|tip Inside the building.
Tell him _"Boss, one of the boys is causing some trouble outside."_
Watch the dialogue
kill High Cultist Azennios##40491 |q 25308/1 |goto 76.55,49.08
step
Leave the building |goto 77.22,49.43 < 7 |walk
click Outhouse Hideout##202701
turnin Seeds of Discord##25308 |goto 88.29,58.52
step
talk Instructor Mylva##39413
turnin Spiritual Training: Mercy is for the Weak##25309 |goto 89.58,59.09
step
talk Instructor Devoran##39406
turnin A Champion's Collar##25494 |goto 90.15,56.39
accept Grudge Match##25496 |goto 90.15,56.39
step
Enter the building |goto 77.99,50.77 < 7 |walk
talk Gromm'ko##40409
|tip Inside the building.
Tell him _"Instructor Devoran sends a contender against your raptor."_
kill Gromm'ko##40409
|tip He will attack you after your Spawn of Smolderos kills his raptor.
Complete the Grudge Match |q 25496/1 |goto 77.79,51.44
step
Leave the building |goto 77.99,50.77 < 7 |walk
talk Instructor Devoran##39406
turnin Grudge Match##25496 |goto 90.15,56.39
step
talk Instructor Mylva##39413
accept The Greater of Two Evils##25310 |goto 89.58,59.09
accept Twilight Territory##25311 |goto 89.58,59.09
step
Use the Talisman of Flame Ascendancy |use Talisman of Flame Ascendancy##54814
kill Garnoth, Fist of the Legion##39726 |q 25310/1 |goto 64.77,64.67
|tip Use the abilities on your action bar.
step
Remove the Flame Ascendancy Buff |nobuff 136196 |q 25310
|tip Right-click the "Flame Ascendancy" buff near your minimap.
step
kill 10 Horrorguard##48725 |q 25311/1 |goto 69.66,68.55
step
talk Instructor Mylva##39413
turnin The Greater of Two Evils##25310 |goto 89.58,59.09
turnin Twilight Territory##25311 |goto 89.58,59.09
step
click Outhouse Hideout##202701
accept Speech Writing for Dummies##25314 |goto 88.29,58.53
step
kill Okrog##40922 |q 25314/1 |goto 79.10,54.73
|tip He looks like an ogre that walks along this road around this area.
|tip He appears on your minimap as a yellow dot.
step
click Outhouse Hideout##202701
turnin Speech Writing for Dummies##25314 |goto 88.29,58.53
accept Head of the Class##25601 |goto 88.29,58.53
step
talk Instructor Mylva##39413
turnin Head of the Class##25601 |goto 89.58,59.09
accept Graduation Speech##25315 |goto 89.58,59.09
step
click Initiation Podium
|tip Use the abilities on your action bar to respond to what the crowd says.
|tip If they say something like they are bored or unsure, use your "Inspire!" ability.
|tip If they say something angry, use your "Incite!" ability.
|tip If they say something crazy, use your "Pander!" ability.
|tip You must please the crowd 10 times.
Complete #10# Graduation Speech |q 25315/1 |goto 95.22,51.33
step
Leave the Podium |nobuff 429378 |q 25315
|tip Use the "Step Down" ability on your action bar.
step
talk Commander Jarod Shadowsong##40619
turnin Graduation Speech##25315 |goto 95.35,51.32
accept Twilight Riot##25531 |goto 95.35,51.32
step
talk Commander Jarod Shadowsong##41025
turnin Twilight Riot##25531 |goto 72.22,74.70
accept Slash and Burn##25608 |goto 72.22,74.70
step
clicknpc Emerald Drake##40780
Ride the Emerald Drake |invehicle |goto 72.55,75.08 |q 25608
step
kill 5 Twilight Stormwaker##40573 |q 25608/1 |goto 81.94,63.10
|tip Use the "Aerial Swipe" ability on your action bar.
|tip They look like purple dragons flying in the air around this area.
step
Slay #40# Twilight's Hammer Units |q 25608/2 |goto 81.94,63.10
|tip Use the Acid Blast ability on your action bar on the enemies on the ground around this area.
step
Stop Riding the Emerald Drake |outvehicle |goto 75.96,66.05 |q 25608
|tip Click the red arrow on your action bar at this location.
step
talk Commander Jarod Shadowsong##41025
turnin Slash and Burn##25608 |goto 72.22,74.69
step
Watch the dialogue
talk Commander Jarod Shadowsong##40772
accept Might of the Firelord##25548 |goto 72.08,74.02
step
talk Cenarius##41631
accept Secrets of the Flame##25554 |goto 71.92,74.08
step
talk Althera##43549
fpath Gates of Sothann |goto 2,75.31
stickystart "Kill_Flame_Ascendants"
stickystart "Kill_Twilight_Subjugators"
step
click Burning Litanies##203047
|tip Inside the tent.
collect The Burning Litanies##54906 |q 25554/2 |goto 59.66,80.80
step
click Tome of Flame##203046
collect Tome of Flame##54905 |q 25554/3 |goto 58.14,78.90
step
click Ascendant's Codex##203048
collect Ascendant's Codex##54907 |q 25554/1 |goto 56.84,83.85
step
click Pure Twilight Egg##207359
accept The Twilight Egg##25644 |goto 59.12,83.85
step
label "Kill_Flame_Ascendants"
kill 4 Flame Ascendant##40709 |q 25548/1 |goto 58.56,81.12
step
label "Kill_Twilight_Subjugators"
kill 5 Twilight Subjugator##40463 |q 25548/2 |goto 58.56,81.12
step
talk Cenarius##41631
turnin Secrets of the Flame##25554 |goto 71.92,74.08
accept The Gatekeeper##25555 |goto 71.92,74.08
step
talk Commander Jarod Shadowsong##41025
turnin Might of the Firelord##25548 |goto 72.08,74.02
accept The Sanctum of the Prophets##25549 |goto 72.08,74.02
step
talk Aronus##40816
turnin The Twilight Egg##25644 |goto 72.25,73.94
accept Brood of Evil##25552 |goto 72.25,73.94
step
kill Young Twilight Drake##40687
collect Young Twilight Drake Skull##54973 |q 25552/1 |goto 59.11,77.93
stickystart "Kill_Twilight_Augurs"
stickystart "Kill_Twilight_Retainers"
step
Use the Horn of Cenarius |use Horn of Cenarius##55153
kill Azralon the Gatekeeper##40814 |q 25555/1 |goto 57.34,67.90
|tip Allies will help you fight him.
step
kill Emissary of Flame##40755 |q 25549/3 |goto 57.16,69.57
|tip He walks along this path around this area.
step
label "Kill_Twilight_Augurs"
kill 4 Twilight Augur##40713 |q 25549/1 |goto 57.16,69.57
step
label "Kill_Twilight_Retainers"
kill 4 Twilight Retainer##40767 |q 25549/2 |goto 57.16,69.57
step
talk Cenarius##41631
turnin The Gatekeeper##25555 |goto 71.92,74.08
step
talk Commander Jarod Shadowsong##41025
turnin The Sanctum of the Prophets##25549 |goto 72.08,74.02
accept Magma Monarch##25550 |goto 72.08,74.02
step
talk Aronus##40816
turnin Brood of Evil##25552 |goto 72.25,73.94
accept Death to the Broodmother##25553 |goto 72.25,73.94
step
Use the Young Twilight Drake Skull |use Young Twilight Drake Skull##55173
Watch the dialogue
kill Desperiona##40974 |q 25553/1 |goto 54.39,85.79
step
Use the Drums of the Turtle God |use Drums of the Turtle God##55179
kill King Moltron##40998 |q 25550/1 |goto 43.38,83.21
step
Follow the path |goto 42.44,45.16 < 7 |walk
Leave the building |goto 42.02,44.91 < 10 |walk
talk Commander Jarod Shadowsong##41025
turnin Magma Monarch##25550 |goto 72.08,74.02
step
talk Aronus##40816
turnin Death to the Broodmother##25553 |goto 72.25,73.94
step
talk Cenarius##40773
accept The Firelord##25551 |goto 71.92,74.08
step
Enter the portal |goto 55.56,66.18
Teleport to the Inner Spire |goto 44.49,79.37 < 10 |noway |c |q 25551
step
talk Cenarius##41631
|tip If another player has already started the battle, he won't be here.
|tip Join in the battle to kill Ragnaros if he's not here.
Tell him _"I am ready to begin the battle against Ragnaros."_
Watch the dialogue
Follow Cenarius into Battle |goto 44.66,79.15 > 20 |c |q 25551
step
kill Ragnaros##41634 |q 25551/1 |goto 49.53,76.84
|tip Stay close to Cenarius, he will heal you.
step
Watch the dialogue
click Portal to Hyjal |goto 48.96,77.07
Return to the Gates of Sothann |goto 72.15,74.80 < 20 |noway |c |q 25551
step
talk Commander Jarod Shadowsong##40772
turnin The Firelord##25551 |goto 72.08,74.02
accept The Battle Is Won, The War Goes On##27398 |goto 72.08,74.02
step
talk Naraat the Earthspeaker##45226
turnin The Battle Is Won, The War Goes On##27398 |goto Stormwind City/0 74.55,19.04
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Kalimdor (20-25)",{
author="support@zygorguides.com",
},[[
step
Thank you for trying the Zygor Guides Version 2.0 Leveling Guides Demo.  Please visit ZygorGuides.com to purchase the complete in-game Version 2.0 leveling guides.  Take care!
level 20
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Eastern Kingdoms (20-25)",{
author="support@zygorguides.com",
},[[
step
Thanks for trying the Zygor Guides Leveling Guides demo!
|tip
Visit ZygorGuides.com to signup for Zygor Elite to gain access to our entire guide library for World of Warcraft and The Elder Scrolls Online.
|tip
See you on the other side!
level 20
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\The Burning Crusade (60-62)",{
author="support@zygorguides.com",
},[[
step
Thank you for trying the Zygor Guides Version 2.0 Leveling Guides Demo.  Please visit ZygorGuides.com to purchase the complete in-game Version 2.0 leveling guides.  Take care!
level 20
]])
