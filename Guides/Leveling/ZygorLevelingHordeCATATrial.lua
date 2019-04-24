local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("LevelingHCATA") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Blood Elf (1-5)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Eversong 1-5",
condition_suggested=function() return raceclass('BloodElf') and level <= 5 and not completedq(8338) end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Classic (1-10)\\Eastern Kingdoms\\Eversong Woods (1-20)",
startlevel=1,
endlevel=5,
},[[
step
talk Magistrix Erona##15278
accept Reclaiming Sunstrider Isle##8325 |goto Sunstrider Isle/0 61.0,45.1
step
kill 6 Mana Wyrm##15274 |q 8325/1 |goto 60.3,51.8
step
talk Magistrix Erona##15278
turnin Reclaiming Sunstrider Isle##8325 |goto 61.0,45.1
accept Unfortunate Measures##8326 |goto 61.0,45.1
step
Kill Springpaw enemies around this area
collect 8 Lynx Collar##20797 |q 8326/1 |goto 54.6,51.7
step
talk Magistrix Erona##15278
turnin Unfortunate Measures##8326 |goto 61.0,45.1
accept Report to Lanthan Perilon##8327 |goto 61.0,45.1
step
Enter the building |goto 62.70,45.10 < 10 |walk
Run up the ramp |goto 65.29,45.77 < 10 |walk
talk Well Watcher Solanian##15295
|tip Upstairs inside the building.
accept The Shrine of Dath'Remar##37442 |goto 64.0,42.9
accept Solanian's Belongings##37443 |goto 64.0,42.9
step
Jump down here |goto 63.36,41.08 < 10 |only if walking
talk Arcanist Ithanas##15296
accept A Fistful of Slivers##37440 |goto 61.8,39.3
step
talk Arcanist Helion##15297
accept Thirst Unending##37439 |goto 58.5,38.8
step
Use your _Arcane Torrent_ ability on a Mana Wyrm
|tip Make sure to be within 8 yards of the Wyrm when casting the spell.
Unleash the Arcane Torrent |q 37439/1 |goto 54.8,39.7
step
kill Mana Wyrm##15274+
collect 6 Arcane Sliver##20482 |q 37440/1 |goto 50.95,41.95
step
Follow the path |goto 41.80,44.07 < 30 |only if walking
click Shrine of Dath'Remar##180516
Read the Shrine of Dath'Remar |q 37442/1 |goto 35.25,40.22
step
click Scroll of Scourge Magic##180511
collect Scroll of Scourge Magic##20471 |q 37443/2 |goto 40.4,50.5
step
Follow the path up |goto 51.49,70.28 < 15 |only if walking
click Solanian's Scrying Orb##180510
collect Solanian's Scrying Orb##20470 |q 37443/1 |goto 52.2,69.5
step
click Solanian's Journal##180512
collect Solanian's Journal##20472 |q 37443/3 |goto 60.0,57.1
step
Enter the building |goto 62.70,45.10 < 10 |walk
Run up the ramp |goto 65.29,45.77 < 10 |walk
talk Well Watcher Solanian##15295
|tip Upstairs inside the building.
turnin The Shrine of Dath'Remar##37442 |goto 64.0,42.8
turnin Solanian's Belongings##37443 |goto 64.0,42.8
step
Jump down here |goto 63.36,41.08 < 10 |only if walking
talk Arcanist Ithanas##15296
turnin A Fistful of Slivers##37440 |only BloodElf |goto 61.8,39.3
step
talk Arcanist Helion##15297
turnin Thirst Unending##37439 |only BloodElf |goto 58.5,38.8
step
talk Lanthan Perilon##15281
turnin Report to Lanthan Perilon##8327 |goto 52.9,49.7
accept Aggression##8334 |goto 52.9,49.7
stickystart "Feral_Tenders"
step
kill 7 Tender##15271 |q 8334/1 |goto 41.9,46.6
step
label "Feral_Tenders"
kill 7 Feral Tender##15294 |q 8334/2 |goto 41.9,46.6
step
talk Lanthan Perilon##15281
turnin Aggression##8334 |goto 52.9,49.7
accept Felendren the Banished##8335 |goto 52.9,49.7
stickystart "Tainted_Arcane_Sliver"
stickystart "Arcane_Wraiths"
stickystart "Tainted_Arcane_Wraiths"
step
Run up the ramp |goto 44.39,59.05 < 15 |only if walking
Cross the bridge |goto 41.84,63.41 < 15 |only if walking
Follow the ramp up |goto 43.19,66.93 < 15 |only if walking
Continue up the ramp |goto 43.70,70.53 < 15 |only if walking
Run up the ramp |goto 41.05,72.60 < 15 |only if walking
Continue up the ramp |goto 38.70,74.06 < 15 |only if walking
Cross the bridge |goto 37.95,68.28 < 15 |only if walking
Run up the ramp |goto 38.75,61.71 < 15 |only if walking
Continue up the ramp |goto 36.34,63.20 < 15 |only if walking
Follow the path |goto 38.12,66.00 < 15 |only if walking
kill Felendren the Banished##15367
collect Felendren's Head##20799 |q 8335/3 |goto 38.9,64.0
step
label "Tainted_Arcane_Sliver"
Kill Arcane enemies around this area
collect Tainted Arcane Sliver##20483 |n
use Tainted Arcane Sliver##20483
accept Tainted Arcane Sliver##8338 |goto 40.1,63.3
step
label "Arcane_Wraiths"
kill 8 Arcane Wraith##15273 |q 8335/1 |goto 40.1,63.3
step
label "Tainted_Arcane_Wraiths"
kill 2 Tainted Arcane Wraith##15298 |q 8335/2 |goto 40.1,63.3
step
Jump down onto the big red dome |goto 40.27,62.96 < 15 |only if walking
Jump down onto the bridge |goto 42.82,60.60 < 15 |only if walking
talk Lanthan Perilon##15281
turnin Felendren the Banished##8335 |goto 52.9,49.7
accept Aiding the Outrunners##8347 |goto 52.9,49.7
step
talk Arcanist Helion##15297
turnin Tainted Arcane Sliver##8338 |goto 58.5,38.8
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Death Knight (55-58)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Death Knight 55-58",
condition_valid=function() return raceclass('DeathKnight') end,
condition_valid_msg="Death Knight only.",
condition_suggested=function() return raceclass('DeathKnight') and not completedq(13189) and level < 100 end,
condition_suggested_exclusive=true,
condition_end=function() return completedq(13189) end,
next="Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\Blasted Lands (40-60)",
startlevel=55,
endlevel=58,
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
Take Control of the Eye of Acherus |havebuff 136224 |goto 52.13,35.21 |q 12641
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
Ride the Havenshire Horse |invehicle |goto 55.74,43.39 |q 12680
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
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Goblin (1-10)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\BilgeWater",
condition_suggested=function() return raceclass('Goblin') and level <= 13 and not completedq(25267) and not raceclass('DEATHKNIGHT') end,
condition_suggested_exclusive=true,
condition_end=function() return completedq(25267) or raceclass('DEATHKNIGHT') end,
condition_valid=function() return raceclass('Goblin')  end,
condition_valid_msg="Goblin only.",
next="Leveling Guides\\Classic (10-60)\\Kalimdor\\Northern Barrens (10-60)",
startlevel=1,
endlevel=10,
},[[
step
talk Sassy Hardwrench##34668
accept Taking Care of Business##14138 |goto Kezan/0 56.4,76.9
step
talk Foreman Dampwick##36471
turnin Taking Care of Business##14138 |goto 60.2,74.6
accept Trouble in the Mines##14075 |goto 60.2,74.6
accept Good Help is Hard to Find##14069 |goto 60.2,74.6
step
Follow the path down |goto 61.75,74.72 < 20 |only if walking
clicknpc Defiant Troll##34830+
|tip They look like trolls who are not working around this area.
Adjust #8# Attitudes |q 14069/1 |goto 66.7,80.6
step
Follow the path |goto Kezan/7 57.76,32.55 < 15 |walk
kill 6 Tunneling Worm##34865+ |q 14075/1 |goto Kezan/7 58.9,29.5
You can find more around [Kezan/5 43.5,70.5]
step
talk Foreman Dampwick##36471
turnin Trouble in the Mines##14075 |goto Kezan/0 60.2,74.6
turnin Good Help is Hard to Find##14069 |goto Kezan/0 60.2,74.6
accept Kaja'Cola##25473 |goto Kezan/0 60.2,74.6
step
talk Sassy Hardwrench##34668
|tip Inside the building.
turnin Kaja'Cola##25473 |goto 56.4,76.9
accept Megs in Marketing##28349 |goto 56.4,76.9
step
talk Megs Dreadshredder##34874
turnin Megs in Marketing##28349 |goto 58.30,76.44
accept Cruising##14071 |goto 58.30,76.44
step
Use the Keys to the Hot Rod |use Keys to the Hotrod##46856
Enter your Hot Rod |invehicle |c |q 14071
step
Follow the path |goto 59.44,78.85 < 20 |only if walking
Pick Up Izzy |q 14071/2 |goto 58.1,86.0
|tip Go into the big beam of white light.
step
Follow the path |goto 59.45,78.66 < 20 |only if walking
Follow the road down |goto 57.76,70.59 < 20 |only if walking
Pick Up Gobber |q 14071/4 |goto 59.8,49.7
|tip Go into the big beam of white light.
step
Follow the road |goto 57.76,43.75 < 20 |only if walking
Pick Up Ace |q 14071/3 |goto 47.9,37.5
|tip Go into the big beam of white light.
step
Follow the road |goto 50.59,41.96 < 20 |only if walking
Follow the road up |goto 61.47,45.76 < 20 |only if walking
Follow the path |goto 57.76,71.24 < 20 |only if walking
talk Megs Dreadshredder##34874
turnin Rolling with my Homies##14071 |goto 58.31,76.45
accept Report for Tryouts##24567 |goto 58.31,76.45
step
talk Sassy Hardwrench##34668
|tip Inside the building.
accept Do it Yourself##14070 |goto 56.42,76.95
step
talk Candy Cane##35053
accept Off to the Bank##26712 |goto 56.3,77.1
only if _G['UnitSex']("player")==2
step
talk Chip Endale##35054
accept Off to the Bank##26711 |goto 56.4,76.8
only if _G['UnitSex']("player")==3
step
Use the Keys to the Hot Rod |use Keys to the Hotrod##46856
Enter your Hot Rod |invehicle |c |goto 58.63,76.64 |q 24567
step
Follow the road down |goto 57.76,70.54 < 20 |only if walking
Follow the road |goto 61.23,44.87 < 20 |only if walking
Follow the road up |goto 54.14,47.37 < 20 |only if walking
talk Coach Crosscheck##37106
turnin Report for Tryouts##24567 |goto 48.8,57.6
accept The Replacements##24488 |goto 48.8,57.6
step
click Replacement Parts##201603
|tip They look like yellow and silver metal crates on the ground around this area.
|tip You can do this while in your Hot Rod.
collect 6 Replacement Parts##49752 |q 24488/1 |goto 49.0,60.3
step
talk Coach Crosscheck##38738
turnin The Replacements##24488 |goto 48.8,57.6
accept Necessary Roughness##24502 |goto 48.8,57.6
step
clicknpc Bilgewater Buccaneer##48526
Use the Throw Footbomb ability on your action bar on Steamwheedle Sharks
|tip They look like shredders walking toward you on the footbomb field.
Footbomb #8# Steamwheedle Sharks |q 24502/2 |goto 47.7,57.8
step
Click the Complete Quest Box:
turnin Necessary Roughness##24502
accept Fourth and Goal##24503
step
Use the Kick Footbomb ability on your action bar
|tip Aim through the 2 tall gray chimney smokestacks.
|tip The smokestacks look like 2 tall metal chimneys on top of a building with a green roof.
Kick a Footbomb Through the Smokestacks |q 24503/1
step
talk Coach Crosscheck##38738
turnin Fourth and Goal##24503 |goto 48.8,57.6
accept Give Sassy the Good News##24520 |goto 48.8,57.6
step
Follow the road |goto 45.87,65.44 < 20 |only if walking
Drop down here |goto 42.51,71.75 < 20 |only if walking
kill Bruno Flameretardant##34835
Beat Down Bruno Flameretardant |q 14070/1 |goto 45.2,74.7
step
kill Sudsy Magee##34878
Beat Down Sudsy Magee |q 14070/4 |goto 41.6,81.9
step
Follow the path |goto 37.38,76.36 < 15 |only if walking
kill Jack the Hammer##34877
Beat Down Jack the Hammer |q 14070/3 |goto 35.1,77.8
step
kill Frankie Gearslipper##34876
Beat Down Frankie Gearslipper |q 14070/2 |goto 36.8,70.4
step
Follow the path |goto 34.23,69.13 < 15 |only if walking
Follow the road |goto 32.44,63.93 < 15 |only if walking
Follow the path |goto 30.12,64.53 < 15 |only if walking
talk FBoK Bank Teller##35120
|tip Inside the building.
turnin Off to the Bank##26712 |goto 30.1,71.9 |only if _G['UnitSex']("player")==2
turnin Off to the Bank##26711 |goto 30.1,71.9 |only if _G['UnitSex']("player")==3
accept The New You##14109 |goto 30.1,71.9 |or |only if _G['UnitSex']("player")==2
accept The New You##14110 |goto 30.1,71.9 |or |only if _G['UnitSex']("player")==3
step
Follow the road |goto 30.47,63.73 < 20 |only if walking
Follow the road |goto 34.57,54.69 < 20 |only if walking
talk Szabo##35128
Tell him _"Szabo, I need a hip, new outfit for the party I'm throwing!"_
collect Hip New Outfit##47046 |q 14109/2 |goto 37.7,55.5 |only if _G['UnitSex']("player")==2
collect Hip New Outfit##47046 |q 14110/2 |goto 37.7,55.5 |only if _G['UnitSex']("player")==3
step
Follow the road |goto 36.04,53.02 < 20 |only if walking
talk Gappy Silvertooth##35126
Tell him _"Set me up with the phattest, shiniest bling you got!"_
collect Shiny Bling##47045 |q 14109/1 |goto 34.8,45.7 |only if _G['UnitSex']("player")==2
collect Shiny Bling##47045 |q 14110/1 |goto 34.8,45.7 |only if _G['UnitSex']("player")==3
step
Follow the road |goto 36.67,47.37 < 15 |only if walking
talk Missa Spekkies##35130
Tell her _"I need some cool shades.  What will two stacks of macaroons get me?"_
collect Cool Shades##47047 |q 14109/3 |goto 40.4,45.8 |only if _G['UnitSex']("player")==2
collect Cool Shades##47047 |q 14110/3 |goto 40.4,45.8 |only if _G['UnitSex']("player")==3
step
talk Sassy Hardwrench##34668
|tip Inside the building.
turnin Give Sassy the Good News##24520 |goto 56.4,76.9
turnin Do It Yourself##14070 |goto 56.4,76.9
step
talk Candy Cane##39426
|tip Inside the building.
turnin The New You##14109 |goto 56.3,77.1
only if _G['UnitSex']("player")==2
step
talk Chip Endale##35054
|tip Inside the building.
turnin The New You##14110 |goto 56.3,76.8
only if _G['UnitSex']("player")==3
step
talk Candy Cane##39426
accept Life of the Party##14113 |goto 56.3,77.1
only if _G['UnitSex']("player")==2
step
talk Chip Endale##35054
accept Life of the Party##14153 |goto 56.3,76.8
only if _G['UnitSex']("player")==3
step
Follow the path |goto 59.24,78.81 < 20 |only if walking
Use the Bubbly ability on your action bar
|tip Use it next to goblins that are drinking.
Use the Bucket ability on your action bar
|tip Use it next to goblins that look dazed.
Use the Dance ability on your action bar
|tip Use it next to goblins that are dancing.
Use the Fireworks ability on your action bar
|tip Use it next to goblins that are holding orange fireworks.
Use the Hors D'oeuvres ability on your action bar
|tip Use it next to goblins that are eating.
Entertain #10# Partygoers |q 14113/1 |goto 59.4,80.6 |only if _G['UnitSex']("player")==2
Entertain #10# Partygoers |q 14153/1 |goto 59.4,80.6 |only if _G['UnitSex']("player")==3
step
Follow the path |goto 59.07,78.45 < 15 |only if walking
talk Sassy Hardwrench##34668
|tip Inside the building.
turnin Life of the Party##14113 |goto 56.4,76.9 |only if _G['UnitSex']("player")==2
turnin Life of the Party##14153 |goto 56.4,76.9 |only if _G['UnitSex']("player")==3
accept Pirate Party Crashers##14115
step
Follow the path |goto 59.24,78.81 < 20 |only if walking
kill 12 Pirate Party Crasher##35200+ |q 14115/1 |goto 60.47,81.73
step
Follow the path |goto 59.07,78.45 < 15 |only if walking
talk Sassy Hardwrench##34668
|tip Inside the building.
turnin Pirate Party Crashers##14115 |goto 56.4,76.9
accept The Uninvited Guest##14116 |goto 56.4,76.9
step
talk Trade Prince Gallywix##39582
|tip Upstairs inside the building.
turnin The Uninvited Guest##14116 |goto 56.7,77.0
accept A Bazillion Macaroons?!##14120 |goto 56.7,77.0
step
talk Sassy Hardwrench##34668
turnin A Bazillion Macaroons?!##14120 |goto 59.61,77.04
accept The Great Bank Heist##14122 |goto 59.61,77.04
step
talk Slinky Sharpshiv##36729
|tip She walks around this area, so you may need to search for her.
accept Waltz Right In##14123 |goto 59.1,76.0
step
talk Megs Dreadshredder##34874
accept Robbing Hoods##14121 |goto 60.0,78.2
step
talk Foreman Dampwick##36471
accept Liberating the Kaja'mite##14124 |goto 63.0,77.8
step
Follow the path down |goto 62.12,74.91 < 20 |only if walking
Use your Kablooey Bombs on Kaja'mite Deposits |use Kablooey Bombs##48768
|tip They look like green mining nodes around this area.
click Kaja'mite Chunk##195492
|tip They appear on the ground.
collect 12 Kaja'mite Chunk##48766 |q 14124/1 |goto 67.2,77.6
step
Follow the path up |goto 65.39,79.45 < 20 |only if walking
Follow the path |goto 60.39,74.89 < 15 |only if walking
talk Foreman Dampwick##36471
turnin Liberating the Kaja'mite##14124 |goto 63.0,77.8
step
Follow the road down |goto 57.78,70.79 < 20 |only if walking
Follow the road |goto 61.26,44.71 < 20 |only if walking
Follow the road |goto 41.42,41.75 < 20 |only if walking
Follow the road |goto 40.95,47.01 < 20 |only if walking
Run Over Hired Looters with your Hot Rod
|tip They look like pirates throwing explosives in the streets all around this area.
collect 12 Stolen Loot##47530 |q 14121/1 |goto 35.8,49.1
step
Follow the road |goto 34.94,54.26 < 20 |only if walking
Follow the road |goto 32.80,59.77 < 20 |only if walking
Follow the road |goto 30.00,64.33 < 20 |only if walking
clicknpc First Bank of Kezan Vault##35486
|tip Inside the building.
Access the First Bank of Kezan Vault |q 14122/1 |goto 30.2,71.3
step
Use the abilities on your action bar
|tip Use them in the correct order when it tells you to.
|tip Just match the icons that come up on-screen with your skill icons on your action bar.
collect Personal Riches##46858 |q 14122/2 |goto 30.2,71.3
step
Follow the road |goto 29.26,63.82 < 20 |only if walking
Follow the road |goto 24.26,55.09 < 20 |only if walking
Reach This Location |goto 23.71,40.18 < 20 |c |q 14123
|tip You will become disguised automatically.
|tip Avoid the Keensnout Potbellys in this area, they will remove your Mook Disguise.
step
Follow the path |goto 20.21,36.16 < 20 |only if walking
click The Ultimate Bomb##195518
|tip It looks like a huge red spiked bomb inside the building.
collect The Ultimate Bomb##48941 |q 14123/3 |goto 19.9,30.6
|tip Avoid the Keensnout Potbellys in this area, they will remove your Mook Disguise.
step
click The Goblin Lisa##195516
|tip It looks like a painting of a goblin inside the building.
collect The Goblin Lisa##48939 |q 14123/2 |goto 12.9,35.2
|tip Avoid the Keensnout Potbellys in this area, they will remove your Mook Disguise.
step
Follow the path |goto 16.59,37.57 < 20 |only if walking
click Maldy's Falcon##195515
|tip It looks like a stone bird statue upstairs inside the building.
collect Maldy's Falcon##48937 |q 14123/1 |goto 16.7,46.3
|tip Avoid the Keensnout Potbellys in this area, they will remove your Mook Disguise.
step
talk Slinky Sharpshiv##36729
|tip She walks around this area, so you may need to search for her.
turnin Waltz Right In##14123 |goto 59.1,76.0
step
talk Sassy Hardwrench##34668
turnin The Great Bank Heist##14122 |goto 59.7,77.1
step
talk Megs Dreadshredder##34874
turnin Robbing Hoods##14121 |goto 60.02,78.15
step
talk Sassy Hardwrench##34668
accept 447##14125 |goto 59.7,77.1
step
click Defective Generator##201735
|tip It looks like a huge electric coil inside the building.
Overload the Defective Generator |q 14125/1 |goto 56.07,76.64
step
click Leaky Stove##201733
|tip It looks like a gray metal furnace inside the building.
Activate the Leaky Stove |q 14125/2 |goto 56.1,74.7
step
click Flammable Bed##201734
|tip It looks like a red bed upstairs inside the building.
Drop a Cigar on the Flammable Bed |q 14125/3 |goto 56.6,75.0
step
Jump out of the window |goto 57.03,76.96 < 10 |walk
click Gasbot Control Panel##356
Set the KTC Headquarters Ablaze with Gasbot |q 14125/4 |goto 59.5,76.8
step
talk Claims Adjuster##37602
turnin 447##14125 |goto 59.59,76.63
step
talk Sassy Hardwrench##34668
accept Life Savings##14126 |goto 59.66,76.94
step
talk Sassy Hardwrench##34668 |goto 59.7,77.1 |n
Tell her _"Okay, Sassy, I'm ready to go."_
Ride with Sassy |goto 59.7,77.1 > 30 |noway |c |q 14126
step
Travel to Gallywix's Yacht |goto 21.4,13.2 < 20 |c |q 14126
step
talk Trade Prince Gallywix##39582
turnin Life Savings##14126 |goto 20.84,13.71
step
talk Doc Zapnozzle##36608
accept Don't Go Into the Light!##14239 |goto The Lost Isles/0 24.60,77.94  |instant
step
talk Geargrinder Gizmo##36600
|tip You will be offered one of these two quests.
accept Goblin Escape Pods##14001 |goto 24.65,77.94 |or
accept Goblin Escape Pods##14474 |goto 24.65,77.94 |or
step
click Goblin Escape Pod##195188
|tip They look like red barrels floating in the water around this area.
Rescue #6# Goblin Survivors |q 14001/1 |goto 26.0,80.1
step
click Goblin Escape Pod##195188
|tip They look like red barrels floating in the water around this area.
Rescue #6# Goblin Survivors |q 14474/1 |goto 26.0,80.1
step
talk Sassy Hardwrench##35650
|tip You will only be able to turn in one of these two quests.
turnin Goblin Escape Pods##14001 |goto 27.88,75.54
turnin Goblin Escape Pods##14474 |goto 27.88,75.54
accept Get Our Stuff Back!##14014 |goto 27.88,75.54
step
talk Grimy Greasefingers##36496
home Shipwreck Shore |goto 28.01,75.79
step
talk Bamm Megabomb##35758
accept Monkey Business##14019 |goto 27.94,74.43
step
talk Maxx Avalanche##35786
accept It's Our Problem Now##14473 |goto 27.85,74.29
stickystart "Crates_Of_Tools"
stickystart "Teraptor_Hatchlings"
step
Use the Nitro-Potassium Bananas on Bomb-Throwing Monkeys |use Nitro-Potassium Bananas##49028
|tip They look like small gray monkeys on the ground around this area.
Feed #10# Bomb-Throwing Monkeys |q 14019/1 |goto 27.2,69.8
step
label "Teraptor_Hatchlings"
kill 6 Teraptor Hatchling##36740 |q 14473/1 |goto 27.2,69.8
step
label "Crates_Of_Tools"
click Crate of Tools##195201
|tip They look like small yellow and silver metal crates on the ground around this area.
collect 8 Crate of Tools##46828 |q 14014/1 |goto 27.2,69.8
step
talk Maxx Avalanche##35786
turnin It's Our Problem Now##14473 |goto 27.85,74.29
step
talk Bamm Megabomb##35758
turnin Monkey Business##14019 |goto 27.95,74.42
step
talk Sassy Hardwrench##35650
turnin Get Our Stuff Back!##14014 |goto 27.88,75.54
accept Help Wanted##14248 |goto 27.88,75.54
step
Follow the path |goto 29.95,78.59 < 20 |only if walking
talk Foreman Dampwick##35769
turnin Help Wanted##14248 |goto 31.27,79.26
accept Miner Troubles##14021 |goto 31.27,79.26
accept Capturing the Unknown##14031 |goto 31.27,79.26
stickystart "Make_Kajamite_Ore_Success"
step
Use the KTC Snapflash near the Camera Hologram |use KTC Snapflash##49887
|tip It looks like a floating green camera hologram.
Capture Cave Painting 1 |q 14031/1 |goto The Lost Isles/1 51.68,71.19
step
Use the KTC Snapflash near the Camera Hologram |use KTC Snapflash##49887
|tip It looks like a floating green camera hologram.
Capture Cave Painting 2 |q 14031/2 |goto 61.53,72.39
step
Follow the path |goto 46.64,57.94 < 15 |walk
Follow the path |goto 70.91,69.38 < 15 |walk
Use the KTC Snapflash near the Camera Hologram |use KTC Snapflash##49887
|tip It looks like a floating green camera hologram.
Capture Cave Painting 3 |q 14031/3 |goto 86.4,44.8
step
Follow the path |goto 66.53,39.93 < 15 |walk
Follow the path |goto 51.86,20.05 < 15 |walk
Use the KTC Snapflash near the Camera Hologram |use KTC Snapflash##49887
|tip It looks like a floating green camera hologram.
Capture the Pygmy Altar |q 14031/4 |goto 44.82,25.20
step
label "Make_Kajamite_Ore_Success"
Escort the Frightened Miner
|tip Stay close to him and protect him from enemies.
Make the Kaja'mite Ore Mining a Success |q 14021/1 |goto 50.84,16.88
step
talk Dead Orc Scout##35837
accept Orcs Can Write?##14233 |goto 41.50,25.47
step
Jump down here |goto 42.52,31.88 < 7 |walk
Follow the path up |goto 47.15,61.33 < 15 |walk
Follow the path up |goto 54.38,80.00 < 15 |walk
talk Foreman Dampwick##35769
turnin Miner Troubles##14021 |goto The Lost Isles/0 31.27,79.26
step
talk Sassy Hardwrench##35650
turnin Capturing the Unknown##14031 |goto 27.88,75.54
turnin Orcs Can Write?##14233 |goto 27.88,75.54
accept The Enemy of My Enemy##14234 |goto 27.88,75.54
step
Follow the path |goto 29.96,78.60 < 20 |only if walking
Follow the path up |goto 32.73,80.50 < 20 |only if walking
Continue up the path |goto 34.44,80.72 < 20 |only if walking
Follow the path |goto 36.77,76.45 < 20 |only if walking
talk Aggra##35875
turnin The Enemy of My Enemy##14234 |goto 37.63,78.03
accept The Vicious Vale##14235 |goto 37.63,78.03
step
Follow the path down |goto 36.15,76.36 < 20 |only if walking
talk Kilag Gorefang##35893
turnin The Vicious Vale##14235 |goto 35.43,75.71
accept Weed Whacker##14236 |goto 35.43,75.71
step
Use the Weed Whacker |use Weed Whacker##49108
Become a Weed Whacker |havebuff 132369 |c |q 14236
step
Mow Down #100# Deadly Jungle Plants |q 14236/1 |goto 35.3,75.1
|tip Spin around next to the plants all around this area.
step
talk Kilag Gorefang##35893
turnin Weed Whacker##14236 |goto 35.44,75.70
accept Back to Aggra##14303 |goto 35.44,75.70
step
Follow the path up |goto 35.80,76.31 < 20 |only if walking
Follow the path |goto 36.78,76.44 < 20 |only if walking
talk Aggra##35875
turnin Back to Aggra##14303 |goto 37.63,78.04
accept Forward Movement##14237 |goto 37.63,78.04
step
Follow the path down |goto 36.10,76.34 < 20 |only if walking
Follow the path |goto 35.30,75.54 < 20 |only if walking
Follow the path up |goto 33.00,71.16 < 20 |only if walking
Follow the path |goto 33.38,69.51 < 20 |only if walking
talk Kilag Gorefang##35893
turnin Forward Movement##14237 |goto 34.62,66.85
accept Infrared = Infradead##14238 |goto 34.62,66.85
step
Use the Infrared Heat Focals |use Infrared Heat Focals##49611
Wear the Infrared Heat Focals |havebuff 133149 |q 14238
step
kill 10 SI:7 Assassin##36092 |q 14238/1 |goto 31.2,65.6
|tip They are also marked on your minimap.
step
talk Kilag Gorefang##35917
turnin Infrared = Infradead##14238 |goto 34.61,66.85
accept To the Cliffs##14240 |goto 34.61,66.85
step
Travel to Scout Brax |goto 25.34,59.85 < 20 |c |q 14240
step
talk Scout Brax##36112
turnin To the Cliffs##14240 |goto 25.29,59.84
accept Get to the Gyrochoppa!##14241 |goto 25.29,59.84
step
Follow the path down |goto 25.02,60.44 < 15 |only if walking
kill SI:7 Operative##36103+
collect Gyrochoppa Keys##49424 |q 14241/1 |goto 24.6,64.3
step
clicknpc Gyrochoppa##36127
turnin Get to the Gyrochoppa!##14241 |goto 23.23,67.52
accept Precious Cargo##14242 |goto 23.23,67.52
step
Fly to the Ship |goto 12.87,63.44 < 20 |c |q 14242
step
talk Thrall##36161
|tip Downstairs in the ship.
Locate the Precious Cargo |q 14242/1 |goto 11.80,62.75
step
talk Thrall##36161
|tip Downstairs in the ship.
turnin Precious Cargo##14242 |goto 11.80,62.75
accept Meet Me Up Top##14326 |goto 11.80,62.75
step
talk Thrall##36161
|tip On the deck of the ship.
turnin Meet Me Up Top##14326 |goto 12.4,63.1
accept Warchief's Revenge##14243 |goto 12.4,63.1
step
Use the Lightning Strike ability on the Alliance Sailors
|tip They are in below you as you fly around in the tornado.
kill 50 Alliance Sailor##36176 |q 14243/1
step
talk Thrall##36188
turnin Warchief's Revenge##14243 |goto 35.92,66.72
accept Farewell, For Now##14445 |goto 35.92,66.72
step
talk Sassy Hardwrench##36425
turnin Farewell, For Now##14445 |goto 36.03,67.53
accept Up, Up & Away!##14244 |goto 36.03,67.53
step
click Rocket Sling##196439
Choose _"Up, Up & Away!"_
Survive the Rocket Sling Trip |q 14244/1 |goto 36.3,66.6
step
talk Foreman Dampwick##36470
turnin Up, Up & Away!##14244 |goto 44.54,64.36
accept It's a Town-In-A-Box##14245 |goto 44.54,64.36
step
click Town-In-A-Box Plunger##9277
|tip On top of the big pile of explosives.
Set Off the Town-In-A-Box |q 14245/1 |goto 45.49,65.36
step
talk Foreman Dampwick##36471
turnin It's a Town-In-A-Box##14245 |goto 45.36,64.74
accept Hobart Needs You##27139 |goto 45.36,64.74
step
talk Hobart Grapplehammer##38120
turnin Hobart Needs You##27139 |goto 45.34,65.22
accept Cluster Cluck##24671 |goto 45.34,65.22
step
clicknpc Wild Clucker##38111+
|tip They look like little robotic chickens around this area.
Capture #10# Wild Cluckers |q 24671/1 |goto 46.5,65.4
step
talk Hobart Grapplehammer##38120
turnin Cluster Cluck##24671 |goto 45.34,65.22
step
talk Bamm Megabomb##38122
accept Trading Up##24741 |goto 45.25,64.85
step
Follow the path up |goto 47.56,65.30 < 20 |only if walking
Use the Wild Clucker Eggs near Raptor Traps |use Wild Clucker Eggs##50232
|tip They look like big spiked metal traps on the ground around this area.
|tip Make sure Spiny Raptors are nearby when you use it.
|tip Don't kill the Spiny Raptors by attacking them.
click Raptor Egg##201974
|tip They appear under the Raptor Traps when you catch a Spiny Raptor.
collect 5 Spiny Raptor Egg##50239 |q 24741/1 |goto 49.74,65.92
step
talk Bamm Megabomb##38122
turnin Trading Up##24741 |goto 45.25,64.85
step
talk Hobart Grapplehammer##38120
accept The Biggest Egg Ever##24744 |goto 45.34,65.21
step
Follow the path |goto 45.97,59.11 < 20 |only if walking
kill Mechachicken##38224
|tip It's a big robot chicken that walks around this area.
click The Biggest Egg Ever##201977
|tip It appears after you kill the Mechachicken.
collect The Biggest Egg Ever##50261 |q 24744/1 |goto 45.6,56.6
step
Follow the path |goto 45.97,59.11 < 20 |only if walking
talk Hobart Grapplehammer##38120
turnin The Biggest Egg Ever##24744 |goto 45.34,65.22
accept Who's Top of the Food Chain Now?##24816 |goto 45.34,65.22
step
kill Ravenous Lurker##36681+
|tip While killing Ravenous Lurkers avoid the patrolling elite 'The Hammer' in the area.
collect 6 Shark Parts##50381 |q 24816/1 |goto 42.5,62.6
step
talk Assistant Greely##39199
turnin Who's Top of the Food Chain Now?##24816 |goto 45.27,65.56
accept A Goblin in Shark's Clothing##24817 |goto 45.27,65.56
step
click Mechashark X-Steam Controller##202108
Use the Mechashark X-Steam Controller |q 24817/1 |goto 43.63,65.09
step
kill The Hammer##36682 |q 24817/2 |goto 42.1,66.3
|tip Use the abilities on your action bar.
step
talk Hobart Grapplehammer##38120
turnin A Goblin in Shark's Clothing##24817 |goto 45.34,65.21
accept Invasion Imminent!##24856 |goto 45.34,65.21
step
Follow the path up |goto 47.74,65.35 < 20 |only if walking
Follow the path |goto 49.56,66.17 < 20 |only if walking
Continue following the path |goto 49.40,70.63 < 20 |only if walking
Follow the path down |goto 51.20,71.56 < 20 |only if walking
talk Megs Dreadshredder##38432
turnin Invasion Imminent!##24856 |goto 52.20,73.15
accept Bilgewater Cartel Represent##24858 |goto 52.20,73.15
step
talk Brett "Coins" McQuid##38381
accept Naga Hide##24859 |goto 52.2,73.2
stickystart "Replace_Naga_Banners"
step
Kill Vashj'elan enemies around this area
collect 5 Intact Naga Hide##50437 |q 24859/1 |goto 54.15,76.93
step
label "Replace_Naga_Banners"
click Naga Banner##246389
|tip They look like purple flags hanging from golden rods around this area.
Replace #10# Naga Banners |q 24858/1 |goto 54.15,76.93
step
Follow the path up |goto 52.96,74.57 < 20 |only if walking
talk Brett "Coins" McQuid##38381
turnin Naga Hide##24859 |goto 52.2,73.2
step
talk Megs Dreadshredder##38432
turnin Bilgewater Cartel Represent##24858 |goto 52.20,73.14
accept Irresistible Pool Pony##24864 |goto 52.20,73.14
step
Follow the path |goto 54.98,76.64 < 20 |only if walking
Use the Irresistible Pool Pony in the Water |use Irresistible Pool Pony##50602
Ride the Irresistible Pool Pony |havebuff 132261 |q 24864 |goto 58.1,80.3
step
talk Naga Hatchling##44589
|tip They look like tiny naga swimming underwater around this area.
Lure #12# Naga Hatchlings |q 24864/1 |goto 58.9,83.1
step
Leave the water |goto 57.55,80.34 < 20 |only if walking
Follow the path up |goto 52.96,74.57 < 20 |only if walking
talk Megs Dreadshredder##38432
turnin Irresistible Pool Pony##24864 |goto 52.20,73.14
accept Surrender or Else!##24868 |goto 52.20,73.14
step
Follow the path down |goto 52.83,74.65 < 20 |only if walking
Follow the path |goto 52.71,79.19 < 20 |only if walking
Follow the path |goto 53.93,86.66 < 20 |only if walking
kill Faceless of the Deep##38448
|tip Follow Ace as he runs with the Naga Hatchlings.
Deal with the Leader of the Naga |q 24868/1 |goto 54.1,90.1
step
Follow the path |goto 53.94,86.76 < 20 |only if walking
Follow the path |goto 52.64,78.88 < 20 |only if walking
Follow the path up |goto 52.88,74.72 < 20 |only if walking
talk Megs Dreadshredder##38432
turnin Surrender or Else!##24868 |goto 52.20,73.14
accept Get Back to Town##24897 |goto 52.20,73.14
step
talk Sassy Hardwrench##38387
turnin Get Back to Town##24897 |goto 45.18,64.91
accept Town-In-A-Box: Under Attack##24901 |goto 45.18,64.91
step
clicknpc B.C. Eliminator##38526
Shoot at the Oomlot Warriors
|tip Use the Fire Cannon ability on your action bar.
Defeat #30# Oomlot Warriors |q 24901/1 |goto 45.69,64.94
step
talk Sassy Hardwrench##38869
turnin Town-In-A-Box: Under Attack##24901 |goto 45.18,64.91
accept Oomlot Village##24924 |goto 45.18,64.91
step
Follow the path up |goto 47.54,65.38 < 20 |only if walking
Follow the path |goto 49.11,65.74 < 20 |only if walking
Follow the path |goto 51.31,67.80 < 20 |only if walking
Follow the path |goto 54.80,69.97 < 20 |only if walking
talk Izzy##38647
turnin Oomlot Village##24924 |goto 56.57,71.96
accept Free the Captives##24925 |goto 56.57,71.96
accept Send a Message##24929 |goto 56.57,71.96
stickystart "Free_Goblin_Captives"
step
Follow the path |goto 58.24,71.71 < 20 |only if walking
Follow the path up |goto 59.06,70.84 < 20 |only if walking
Follow the path up |goto 59.12,69.02 < 20 |only if walking
Continue following the path up |goto 59.24,67.41 < 20 |only if walking
Cross the bridge |goto 61.26,68.71 < 20 |only if walking
Follow the path |goto 62.53,69.42 < 20 |only if walking
kill Yngwie##38696 |q 24929/1 |goto 62.92,68.53
step
label "Free_Goblin_Captives"
kill Oomlot Shaman##38644+
|tip Only kill the Oomlot Shamans that are casting a green spell on Goblin Captives.
Free #5# Goblin Captives |q 24925/1 |goto 58.9,71.4
step
Cross the bridge |goto 62.08,69.24 < 20 |only if walking
Follow the path down |goto 59.91,67.81 < 20 |only if walking
Follow the path |goto 59.17,69.43 < 20 |only if walking
Follow the path |goto 58.22,71.76 < 20 |only if walking
talk Izzy##38647
turnin Free the Captives##24925 |goto 56.57,71.96
turnin Send a Message##24929 |goto 56.57,71.96
accept Oomlot Dealt With##24937 |goto 56.57,71.96
step
Follow the path |goto 55.07,70.37 < 20 |only if walking
Follow the path down |goto 51.30,67.84 < 20 |only if walking
Follow the path down |goto 49.15,65.79 < 20 |only if walking
talk Sassy Hardwrench##38387
turnin Oomlot Dealt With##24937 |goto 45.17,64.90
accept Up the Volcano##24940 |goto 45.17,64.90
step
Follow the path up |goto 46.57,57.43 < 20 |only if walking
Follow the path up |goto 47.52,54.38 < 20 |only if walking
talk Coach Crosscheck##38738
turnin Up the Volcano##24940 |goto 51.8,47.1
accept Zombies vs. Super Booster Rocket Boots##24942 |goto 51.8,47.1
step
talk Foreman Dampwick##36471
accept Three Little Pygmies##24945 |goto 51.86,47.20
step
talk Assistant Greely##39199
accept Rockin' Powder##24946 |goto 51.72,47.39
step
Use the Super Booster Rocket Boots |use Super Booster Rocket Boot##52013
Wear the Super Booster Rocket Boots |havebuff 133029 |q 24946
stickystart "Rockin_Powder"
stickystart "Goblin_Zombies"
step
Follow the path |goto 52.43,46.74 < 20 |only if walking
Follow the path |goto 54.15,46.16 < 20 |only if walking
Follow the path |goto 57.29,44.05 < 20 |only if walking
Follow the path up |goto 58.17,42.50 < 20 |only if walking
kill Gaahl##38808 |q 24945/1 |goto 59.53,40.18
step
Follow the path down |goto 58.88,41.11 < 20 |only if walking
Follow the path up |goto 58.06,44.72 < 20 |only if walking
kill Malmo##38809 |q 24945/2 |goto 58.78,47.20
step
Follow the path |goto 59.78,47.16 < 20 |only if walking
Follow the path up |goto 60.81,48.51 < 20 |only if walking
Follow the path |goto 63.12,50.54 < 20 |only if walking
kill Teloch##38810 |q 24945/3 |goto 63.62,52.74
step
label "Rockin_Powder"
click Rockin' Powder##202351
|tip They look like brown piles of dirt on the ground around this area.
collect 5 Rockin' Powder##52024 |q 24946/1 |goto 63.62,52.74
step
label "Goblin_Zombies"
Use the Super Booster Rocket Boots |use Super Booster Rocket Boots##52013
kill 50 Goblin Zombie##38816+ |q 24942/1 |goto 63.62,52.74
|tip Get near Goblin Zombies with your Super Booster Rocket Boots active.
step
Follow the path down |goto 63.45,51.68 < 20 |only if walking
Follow the path |goto 59.53,43.16 < 20 |only if walking
Follow the path |goto 53.31,46.67 < 20 |only if walking
talk Coach Crosscheck##38738
turnin Zombies vs. Super Booster Rocket Boots##24942 |goto 51.8,47.1
step
talk Foreman Dampwick##36471
turnin Three Little Pygmies##24945 |goto 51.85,47.19
step
talk Assistant Greely##38124
turnin Rockin' Powder##24946 |goto 51.73,47.38
step
talk Coach Crosscheck##38738
accept Rocket Boot Boost##24952 |goto 51.79,47.11
step
Use the Rockin' Powder Infused Rocket Boots |use Rockin' Powder Infused Rocket Boots##52032
Use the Rockin' Powder Infused Rocket Boots |q 24952/1 |goto 51.80,47.10
step
talk Hobart Grapplehammer##38120
turnin Rocket Boot Boost##24952 |goto 68.93,46.44
accept Children of a Turtle God##24954 |goto 68.93,46.44
step
kill Child of Volcanoth##38845+
collect 10 Fire Gland##52035 |q 24954/1 |goto 68.0,44.4
step
talk Hobart Grapplehammer##38120
turnin Children of a Turtle God##24954 |goto 68.93,46.44
accept Volcanoth!##24958 |goto 68.93,46.44
step
Use your Bootzooka repeatedly on Volcanoth |use Bootzooka##52043
|tip He's a huge turtle inside a cave.
kill Volcanoth##38855 |q 24958/1 |goto The Lost Isles/2 54.89,31.29
|tip Move to the side and take cover behind the rock on the left when Volcanoth is about to cast Volcanic Breath.
step
talk Sassy Hardwrench##38928
turnin Volcanoth!##24958 |goto 62.70,49.84
accept Old Friends##25023 |goto 62.70,49.84
step
talk Thrall##38935
turnin Old Friends##25023 |goto The Lost Isles/0 36.79,43.13
accept Repel the Paratroopers##25024 |goto The Lost Isles/0 36.79,43.13
step
talk Aggra##39065
accept The Heads of the SI:7##25093 |goto 36.26,43.37
step
talk Sassy Hardwrench##38387
accept Mine Disposal, the Goblin Way##25058 |goto 37.36,41.91
stickystart "Alliance_Paratroopers"
stickystart "Detonate_Land_Mines"
step
Follow the path down |goto 36.29,40.80 < 20 |only if walking
Continue down the path |goto 34.57,38.73 < 20 |only if walking
kill Commander Arrington##39141
collect Commander Arrington's Head##52346 |q 25093/1 |goto 32.3,42.9
step
kill Alexi Silenthowl##39143
collect Alexi Silenthowl's Head##52349 |q 25093/3 |goto 30.8,33.9
step
kill Darkblade Cyn##39142
collect Darkblade Cyn's Head##52347 |q 25093/2 |goto 33.43,27.87
step
label "Alliance_Paratroopers"
kill 15 Alliance Paratrooper##39069+ |q 25024/1 |goto 33.66,29.07
step
label "Detonate_Land_Mines"
Use the Satchel of Grenades on land mines |use Satchel of Grenades##52280
|tip They look like silver objects on the ground around this area.
Detonate #10# Land Mines |q 25058/1 |goto 33.66,29.07
step
talk Thrall##38935
turnin Repel the Paratroopers##25024 |goto 36.79,43.13
step
talk Aggra##39065
turnin The Heads of the SI:7##25093 |goto 36.27,43.37
step
talk Sassy Hardwrench##38387
turnin Mine Disposal, the Goblin Way##25058 |goto 37.35,41.92
accept The Pride of Kezan##25066 |goto 37.35,41.92
step
talk Sassy Hardwrench##38869
Tell her _"Get me up into the skies, Sassy!"_
Pilot the Airplane |invehicle |c |q 25066 |goto 37.35,41.92
step
Kill Gnomeregan Stealth Fighters
|tip The look like airplanes flying around in the sky around this area.
|tip Use your abilities on your action bar.
Shoot Down #10# Gnomeregan Stealth Fighters |q 25066/1 |goto 33.7,38.8
step
Land the Airplane at this Location |outvehicle |c |q 25066 |goto 37.4,41.9
|tip Fly to this location first, and get near the ground.  You will drop out of the airplane without a parachute.
|tip Click the red arrow on your action bar.
step
talk Sassy Hardwrench##38387
turnin The Pride of Kezan##25066 |goto 37.36,41.92
accept The Warchief Wants You##25098 |goto 37.36,41.92
step
talk Thrall##38935
turnin The Warchief Wants You##25098 |goto 36.8,43.1
accept Borrow Bastia##25099 |goto 36.8,43.1
step
Follow the path down |goto 36.51,41.32 < 20 |only if walking
Continue down the path |goto 35.28,39.06 < 20 |only if walking
talk Kilag Gorefang##35893
turnin Borrow Bastia##25099 |goto 33.8,38.8
accept Let's Ride##25100 |goto 33.8,38.8
step
Travel to Slinky Sharpshiv |goto 53.67,34.81 < 20 |c |q 25100
step
talk Slinky Sharpshiv##38517
turnin Let's Ride##25100 |goto 53.72,34.93
accept The Gallywix Labor Mine##25109 |goto 53.72,34.93
step
Enter the cave |goto 54.1,36.0 < 15 |walk |n
Follow the path down |goto 54.47,35.91 < 15 |walk |n
Follow the path down |goto 54.78,34.77 < 10 |walk |n
Jump down here |goto 55.22,35.82 < 15 |c |q 25109
step
Follow the path |goto 53.54,36.98 < 15 |walk
talk Assistant Greely##38124
turnin The Gallywix Labor Mine##25109 |goto 53.16,36.54
accept Kaja'Cola Gives You IDEAS! (TM)##25110 |goto 53.16,36.54
step
Follow the path |goto 53.53,36.97 < 15 |walk
click Kaja'Cola Zero-One##229285
|tip They look like soda cans around this area.
kill Brute Overseer##39193+
collect Kaja'Cola Zero-One##52483 |q 25110/1 |goto 54.49,36.52
step
Follow the path |goto 53.54,36.98 < 15 |walk
talk Assistant Greely##38124
turnin Kaja'Cola Gives You IDEAS! (TM)##25110 |goto 53.16,36.54
step
_Next to you:_
talk Assistant Greely##39199
accept Morale Boost##25122
accept Throw It On the Ground!##25123
step
Follow the path |goto 53.38,36.95 < 10 |walk
click Kaja'Cola Zero-One##229285
|tip They look like soda cans around this area.
kill Brute Overseer##39193+
collect 9 Kaja'Cola Zero-One##52484 |c |q 25122	|goto 54.64,36.09
stickystart "Free_Goblins_Minds"
step
kill Blastshadow the Brutemaster##39194
|tip He walks around this area with a succubus.
click Blastshadow's Soulstone##202574
|tip It's a purple floating orb that appears after you kill him.
collect Blastshadow's Soulstone##52481 |c |goto 55.8,32.1
step
Use Blastshadow's Soulstone on Blastshadow the Brutemaster's Corpse |use Blastshadow's Soulstone##52481
|tip His corpse will be wherever you ended up killing him.
Destroy Blastshadow's Soulstone |q 25123/1 |goto 55.8,32.1
step
_Next to you:_
talk Assistant Greely##39199
turnin Throw It On the Ground!##25123
step
Follow the path |goto 55.12,36.13 < 20 |walk
Use a Kaja'Cola Zero-One on Izzy |use Kaja'Cola Zero-One##52484
Free Izzy's Mind |q 25122/2 |goto 57.01,35.03
step
Use a Kaja'Cola Zero-One on Ace |use Kaja'Cola Zero-One##52484
Free Ace's Mind |q 25122/1 |goto 56.99,37.15
step
Follow the path |goto 56.63,34.71 < 15 |walk
Use a Kaja'Cola Zero-One on Gobber |use Kaja'Cola Zero-One##52484
Free Gobber's Mind |q 25122/3 |goto 57.04,32.15
step
label "Free_Goblins_Minds"
_Inside the cave:_
Use a Kaja'Cola Zero-One on Kezan Citizens and Goblin Survivors |use Kaja'Cola Zero-One##52484
|tip They look like goblins mining throughout the cave.
Free #6# Other Goblin's Minds |q 25122/4
step
_Next to you:_
talk Assistant Greely##39199
turnin Morale Boost##25122
accept Light at the End of the Tunnel##25125
step
Follow the path |goto 57.01,30.51 < 20 |walk
Leave the cave |goto 56.58,28.43 < 15 |walk
clicknpc Mine Cart##39341
turnin Light at the End of the Tunnel##25125 |goto 56.3,27.3
accept Wild Mine Cart Ride##25184 |goto 56.3,27.3
step
Travel to Bilgewater Lumber Yard |goto 54.26,17.10 < 20 |c |q 25184
step
talk Assistant Greely##38124
turnin Wild Mine Cart Ride##25184 |goto 54.39,16.94
accept Shredder Shutdown##25200 |goto 54.39,16.94
step
talk Coach Crosscheck##38738
accept The Ultimate Footbomb Uniform##25201 |goto 54.44,16.93
stickystart "Spare_Shredder_Parts"
step
kill 8 Steamwheedle Shark##39354 |q 25200/1 |goto 53.95,17.54
step
label "Spare_Shredder_Parts"
click Spare Shredder Parts##202608
|tip They look like inactive shredders around this area.
collect 8 Spare Shredder Parts##52530 |q 25201/1 |goto 53.95,17.54
step
talk Assistant Greely##38124
turnin Shredder Shutdown##25200 |goto 54.39,16.94
step
talk Coach Crosscheck##38738
turnin The Ultimate Footbomb Uniform##25201 |goto 54.44,16.93
step
talk Assistant Greely##38124
accept Release the Valves##25204 |goto 54.39,16.94
step
talk Ace##38441
accept What Kind of Name is Chip, Anyway?##25203 |goto 54.16,17.20
only if _G['UnitSex']("player")==2
step
talk Izzy##38647
accept The Fastest Way to His Heart##25202 |goto 53.99,16.99
only if _G['UnitSex']("player")==3
step
Jump down here |goto 52.71,16.42 < 20 |only if walking
Run up the ramp |goto 50.90,15.99 < 20 |only if walking
click Valve #1##202609
|tip It looks like a red wheel with steam flowing out of it on the side of the wall.
Release Valve #1 |q 25204/1 |goto 50.72,13.80
step
click Valve #3##202611
|tip It looks like a red wheel with steam flowing out of it on the side of the wall.
Release Valve #3 |q 25204/3 |goto 50.52,13.12
step
Follow the path |goto 50.94,12.52 < 15 |only if walking
click Valve #2##202610
|tip It looks like a red wheel with steam flowing out of it on the side of the wall.
Release Valve #2 |q 25204/2 |goto 50.18,11.75
step
click Valve #4##202612
|tip It looks like a red wheel with steam flowing out of it on the side of the wall.
Release Valve #4 |q 25204/4 |goto 49.87,12.71
step
kill Chip Endale##39363 |q 25203/1 |goto 49.86,13.89
only if _G['UnitSex']("player")==2
step
kill Chip Endale##39363
collect Still-Beating Heart##52531 |q 25202/1 |goto 49.86,13.89
only if _G['UnitSex']("player")==3
step
Follow the path |goto 50.35,13.40 < 15 |only if walking
click Platform Control Panel##202613
turnin Release the Valves##25204 |goto 51.41,13.11
accept Good-bye, Sweet Oil##25207 |goto 51.41,13.11
step
click Big Red Button##339
Destroy the KTC Oil Platform |q 25207/1 |goto 51.41,13.11
step
Jump down here |goto 51.64,13.51 < 7 |only if walking
Follow the path up |goto 53.76,15.62 < 15 |only if walking
Follow the path |goto 54.49,16.21 < 15 |only if walking
talk Assistant Greely##38124
turnin Good-bye, Sweet Oil##25207 |goto 54.39,16.94
step
talk Ace##38441
turnin What Kind of Name is Chip, Anyway?##25203 |goto 54.16,17.20
only if _G['UnitSex']("player")==2
step
talk Izzy##38647
turnin The Fastest Way to His Heart##25202 |goto 54.00,16.98
only if _G['UnitSex']("player")==3
step
talk Assistant Greely##38124
accept The Slave Pits##25213 |goto 54.39,16.94
step
Travel to Sassy Hardwrench |goto 43.95,25.37 < 20 |c |q 25213
step
talk Sassy Hardwrench##38869
turnin The Slave Pits##25213 |goto 43.6,25.3
accept She Loves Me, She Loves Me NOT!##25243 |goto 43.63,25.31 |only if _G['UnitSex']("player")==2
accept What Kind of Name is Candy, Anyway?##25244 |goto 43.63,25.31 |only if _G['UnitSex']("player")==3
step
talk Hobart Grapplehammer##38120
accept Escape Velocity##25214 |goto 43.85,25.29
stickystart "Launch_Cages"
step
Follow the path down |goto 42.97,25.45 < 20 |only if walking
Follow the path |goto 41.37,25.28 < 20 |only if walking
Follow the path up |goto 40.59,26.63 < 20 |only if walking
Follow the path |goto 39.71,28.47 < 20 |only if walking
kill Candy Cane##39426
collect Fickle Heart##52559 |q 25243/1 |goto 39.68,27.12
only if _G['UnitSex']("player")==2
step
Follow the path down |goto 42.97,25.45 < 20 |only if walking
Follow the path |goto 41.37,25.28 < 20 |only if walking
Follow the path up |goto 40.59,26.63 < 20 |only if walking
Follow the path |goto 39.71,28.47 < 20 |only if walking
kill Candy Cane##39426 |q 25244/1 |goto 39.68,27.12
only if _G['UnitSex']("player")==3
step
label "Launch_Cages"
clicknpc Captured Goblin##39456+
|tip They looks like wooden cages around this area.
Launch #8# Cages |q 25214/1 |goto 39.90,28.78
step
Follow the path |goto 39.79,28.49 < 15 |only if walking
Follow the path down |goto 40.40,28.12 < 20 |only if walking
Follow the path |goto 41.46,25.23 < 20 |only if walking
Follow the path up |goto 42.51,25.28 < 20 |only if walking
Follow the path up |goto 43.66,25.83 < 15 |only if walking
talk Hobart Grapplehammer##38120
turnin Escape Velocity##25214 |goto 43.85,25.29
step
talk Sassy Hardwrench##38869
turnin She Loves Me, She Loves Me NOT!##25243 |goto 43.63,25.32 |only if _G['UnitSex']("player")==2
turnin What Kind of Name is Candy, Anyway?##25244 |goto 43.63,25.32 |only if _G['UnitSex']("player")==3
accept Final Confrontation##25251 |goto 43.6,25.3
step
clicknpc Ultimate Footbomb Uniform##39592
Pilot the Ultimate Footbomb Uniform |q 25251/1 |goto 43.85,25.18
step
Follow the path up |goto 42.3,18.5 < 15 |only if walking
Follow the path |goto 42.08,17.56 < 15 |only if walking
kill Trade Prince Gallywix##39582
|tip Use the abilities on your action bar.
|tip Stand behind Trade Prince Gallywix when you are fighting him.
Deal with Trade Prince Gallywix |q 25251/2 |goto 43.5,20.0
step
Follow the path down |goto 41.82,17.81 < 15 |only if walking
Follow the path up |goto 42.31,21.95 < 20 |only if walking
Leave the Ultimate Footbomb Uniform |nobuff The Ultimate Footbomb Uniform |c |goto 43.69,25.25 |q 25251
|tip Run to this location first, since you run faster in the shredder.
|tip Click the yellow arrow on your action bar.
step
talk Sassy Hardwrench##38869
turnin Final Confrontation##25251 |goto 43.63,25.32
accept Victory!##25265 |goto 43.63,25.32
step
Travel to Thrall |goto 42.08,17.47 < 20 |c |q 25265
step
talk Thrall##38935
turnin Victory!##25265 |goto 42.15,17.37
accept Warchief's Emissary##25266 |goto 42.15,17.37
step
talk Sassy Hardwrench##38869 |goto 42.58,16.37 |n
Tell her _"Sassy, let's set sail for Orgrimmar before the island blows for good!"_
Leave the Lost Isles |goto Durotar |noway |q 25266
step
talk Darkspear Loyalist##86884
turnin Warchief's Emissary##25266 |goto Durotar/0 57.65,9.77
accept Message for Vol'jin##25267 |goto Durotar/0 57.65,9.77
step
Travel to Orgrimmar |goto Orgrimmar/1 50.10,76.17 < 20 |c |q 25267
step
talk Eitrigg##3144
|tip Inside the building.
accept Missing Reports##26803 |goto Orgrimmar/1 49.2,72.3
step
talk High Overlord Saurfang##14720
|tip Inside the building.
turnin Message for Vol'jin##25267 |goto 48.26,70.94
accept Report to the Labor Captain##25275 |goto 48.26,70.94
step
talk Gotura Fourwinds##35068
|tip Inside the building.
accept Preserving the Barrens##26642 |goto 47.63,71.22
step
Leave the building |goto 50.07,75.97 < 10 |walk
Follow the path up |goto 52.08,71.45 < 20 |only if walking
Run up the ramp |goto 50.96,64.57 < 10 |only if walking
Ride the elevator up |goto 51.12,63.04 < 15 |only if walking
talk Doras##3310
turnin Missing Reports##26803 |goto 49.7,59.2
accept Flight to Razor Hill##26804 |goto 49.7,59.2
step
talk Gar'Thok##3139
turnin Flight to Razor Hill##26804 |goto Durotar/0 52.0,43.5
accept Reports to Orgrimmar##26806 |goto Durotar/0 52.0,43.5
step
talk Burok##41140
turnin Reports to Orgrimmar##26806 |goto 53.1,43.6
]])
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Orc (1-5)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Durotar Orc 1-5",
condition_suggested=function() return raceclass('Orc') and level <= 5 and not completedq(25132) end,
next="Leveling Guides\\Classic (1-10)\\Kalimdor\\Durotar (1-20)",
startlevel=1,
endlevel=5,
},[[
step
talk Kaltunk##10176
accept Your Place In The World##25152 |goto Valley of Trials/0 45.18,68.40
step
talk Gornek##3143
turnin Your Place In The World##25152 |goto 44.93,66.42
accept Cutting Teeth##25126 |goto 44.93,66.42
step
kill 6 Mottled Boar##3098 |q 25126/1 |goto 51.98,54.41
step
talk Gornek##3143
turnin Cutting Teeth##25126 |goto 44.93,66.42
accept Invaders in Our Home##25172 |goto 44.93,66.42
step
kill 7 Northwatch Scout##39317 |q 25172/1 |goto 47.86,75.23
|tip They are stealthed around this area.
step
talk Gornek##3143
turnin Invaders in Our Home##25172 |goto 44.93,66.42
accept Sting of the Scorpid##25127 |goto 44.93,66.42
step
talk Galgar##9796
accept Galgar's Cactus Apple Surprise##25136 |goto 42.97,62.43
stickystart "Collect_Cactus_Apples"
step
Follow the path |goto 46.14,63.29 < 15 |only if walking
Follow the path |goto 49.48,53.39 < 20 |only if walking
kill Scorpid Worker##3124+
collect 8 Scorpid Worker Tail##4862 |q 25127/1 |goto 49.42,44.59
step
label "Collect_Cactus_Apples"
click Cactus Apple##171938+
|tip They look like smaller cacti with red balls on them around this area.
collect 6 Cactus Apple##11583 |q 25136/1 |goto 49.42,44.59
step
talk Hana'zua##3287
accept Sarkoth##25129 |goto 34.62,44.20
step
Follow the path up |goto 35.07,53.97 < 15 |only if walking
kill Sarkoth##3281
|tip It's a bigger, darker scorpion that walks around this area.
collect Sarkoth's Mangled Claw##4905 |q 25129/1 |goto 34.13,62.70
step
Follow the path down |goto 34.48,58.37 < 20 |only if walking
talk Hana'zua##3287
turnin Sarkoth##25129 |goto 34.62,44.20
accept Back to the Den##25130 |goto 34.62,44.20
step
Follow the path |goto 46.40,57.99 < 10 |only if walking
talk Gornek##3143
turnin Sting of the Scorpid##25127 |goto 44.93,66.42
turnin Back to the Den##25130 |goto 44.93,66.42
step
talk Galgar##9796
turnin Galgar's Cactus Apple Surprise##25136 |goto 42.97,62.43
step
talk Zureetha Fargaze##3145
accept Vile Familiars##25131 |goto 45.82,63.44
step
talk Foreman Thazz'ril##11378
accept Lazy Peons##37446 |goto 46.16,63.26
stickystart "Slay_Vile_Familiars"
step
clicknpc Lazy Peon##10556+
|tip You can find them all around this area, and along the mountainside.
use Foreman's Blackjack##16114
|tip Use it on Lazy Peons around this area.
|tip You may have to stand next to them and wait for them to go to sleep, if they are all chopping trees, but it doesn't take too long.
Waken #4# Peons |q 37446/1 |goto 54.26,56.93
step
label "Slay_Vile_Familiars"
kill 8 Vile Familiar##3101 |q 25131/1 |goto 55.05,26.82
step
talk Foreman Thazz'ril##11378
turnin Lazy Peons##37446 |goto 46.14,63.28
step
talk Zureetha Fargaze##3145
turnin Vile Familiars##25131 |goto 45.82,63.44
accept Burning Blade Medallion##25132 |goto 45.82,63.44
step
talk Foreman Thazz'ril##11378
accept Thazz'ril's Pick##25135 |goto 46.14,63.28
stickystart "Kill_Felstalkers"
step
Follow the path |goto 48.56,56.33 < 20 |only if walking
Follow the path |goto 49.08,41.46 < 20 |only if walking
Follow the path |goto Durotar/8 72.33,78.27 < 15 |walk
Follow the path down |goto Durotar/8 54.40,68.40 < 15 |walk
click Thazz'ril's Pick##178087
|tip Inside the cave.
collect Thazz'ril's Pick##16332 |q 25135/1 |goto Durotar/8 40.73,52.56
step
Follow the path |goto 44.02,69.81 < 15 |walk
Follow the path down |goto 39.36,87.07 < 15 |walk
Continue following the path down |goto 23.27,76.02 < 15 |walk
kill Yarrog Baneshadow##3183
|tip Inside the cave.
collect Burning Blade Medallion##4859 |q 25132/2 |goto 14.91,46.66
step
label "Kill_Felstalkers"
kill 5 Felstalker##3102 |q 25132/1 |goto 45.30,60.62
|tip Inside the cave.
step
talk Foreman Thazz'ril##11378
turnin Thazz'ril's Pick##25135 |goto Valley of Trials/0 46.16,63.29
step
talk Zureetha Fargaze##3145
turnin Burning Blade Medallion##25132 |goto 45.82,63.44
accept Report to Sen'jin Village##25133 |goto 45.82,63.44
]])
ZGV.BETAEND()
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Tauren (1-4)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Mulgore 1-4",
condition_suggested=function() return raceclass('Tauren') and level <= 4 and not completedq(23733) end,
next="Leveling Guides\\Classic (1-10)\\Kalimdor\\Mulgore (1-20)",
startlevel=1,
endlevel=4,
},[[
step
talk Chief Hawkwind##2981
accept The First Step##14449 |goto Camp Narache/0 27.73,28.30
step
talk Grull Hawkwind##2980
turnin The First Step##14449 |goto 39.44,37.24
accept Rite of Strength##14452 |goto 39.44,37.24
step
kill 6 Bristleback Invader##36943 |q 14452/1 |goto 46.56,42.64
step
talk Grull Hawkwind##2980
turnin Rite of Strength##14452 |goto 39.44,37.24
accept Our Tribe, Imprisoned##24852 |goto 39.44,37.24
step
click Quilboar Cage##201577+
|tip They look like yellow wooden cages around this area.
Free #4# Braves |q 24852/1 |goto 49.39,35.36
step
talk Grull Hawkwind##2980
turnin Our Tribe, Imprisoned##24852 |goto 39.44,37.24
accept Go to Adana##14458 |goto 39.44,37.24
step
talk Adana Thunderhorn##36694
turnin Go to Adana##14458 |goto 30.92,50.57
accept Rite of Courage##14456 |goto 30.92,50.57
accept Stop the Thorncallers##14455 |goto 30.92,50.57
stickystart "Slay_Bristleback_Thorncallers"
step
kill Bristleback Gun Thief##36708+
collect 7 Stolen Rifle##49535 |q 14456/1 |goto 34.94,61.75
step
label "Slay_Bristleback_Thorncallers"
kill 7 Bristleback Thorncaller##36697 |q 14455/1 |goto 34.83,69.85
step
talk Adana Thunderhorn##36694
turnin Rite of Courage##14456 |goto 30.92,50.57
turnin Stop the Thorncallers##14455 |goto 30.92,50.57
accept The Battleboars##14459 |goto 30.92,50.57
accept Feed of Evil##14461 |goto 30.92,50.57
stickystart "Slay_Armored_Battleboars"
step
use Adana's Torch##49539
|tip Use it next to the trough.
|tip It looks like a wooden bathtub full of pink meat.
Burn the First Trough |q 14461/1 |goto 26.38,66.29
step
use Adana's Torch##49539
|tip Use it next to the trough.
|tip It looks like a wooden bathtub full of pink meat.
Burn the Second Trough |q 14461/2 |goto 25.16,69.16
step
use Adana's Torch##49539
|tip Use it next to the trough.
|tip It looks like a wooden bathtub full of pink meat.
Burn the Third Trough |q 14461/3 |goto 28.22,70.42
step
label "Slay_Armored_Battleboars"
kill 10 Armored Battleboar##36696 |q 14459/1 |goto 26.94,69.16
step
talk Adana Thunderhorn##36694
turnin The Battleboars##14459 |goto 30.92,50.57
turnin Feed of Evil##14461 |goto 30.92,50.57
accept Rite of Honor##14460 |goto 30.92,50.57
step
kill Chief Squealer Thornmantle##36712
collect Mane of Thornmantle##50473 |q 14460/1 |goto 15.27,46.71
step
talk Chief Hawkwind##2981
turnin Rite of Honor##14460 |goto 27.73,28.29
accept Last Rites, First Rites##24861 |goto 27.73,28.29
step
use Water Pitcher##50465
Place the Offering |q 24861/1 |goto 27.60,27.77
step
talk Chief Hawkwind##2981
turnin Last Rites, First Rites##24861 |goto 27.73,28.29
accept Rites of the Earthmother##23733 |goto 27.73,28.29
step
Follow the path up |goto 20.67,34.26 < 15 |only if walking
Continue up the path |goto 16.04,28.03 < 10 |only if walking
Continue up the path |goto 11.75,28.10 < 10 |only if walking
talk Dyami Windsoar##36803
turnin Rites of the Earthmother##23733 |goto 15.6,30.31
accept Rite of the Winds##24215 |goto 15.6,30.31
step
use Water of Vision##49652 |goto 15.42,30.30
Drink the Water of Vision |goto 15.42,30.30 > 30 |noway |q 24215
step
Fly to Bloodhoof Village |goto Mulgore/0 47.82,59.87 < 10 |notravel |q 24215
step
talk Ahmo Thunderhorn##36644
turnin Rite of the Winds##24215 |goto 47.66,59.59
]])
ZGV.BETAEND()
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Troll (1-5)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Durotar Troll 1-5",
condition_suggested=function() return raceclass('Troll') and level <= 5 and not completedq(24814) end,
next="Leveling Guides\\Classic (1-10)\\Kalimdor\\Durotar (1-20)",
startlevel=1,
endlevel=5,
},[[
step
talk Jin'thala##37951
accept The Rise of the Darkspear##31159 |goto Echo Isles/0 42.8,53.41 |only Troll Monk
accept The Rise of the Darkspear##24776 |goto Echo Isles/0 42.8,53.41 |only Troll Hunter
accept The Rise of the Darkspear##24607 |goto Echo Isles/0 42.8,53.41 |only Troll Warrior
accept The Rise of the Darkspear##24770 |goto Echo Isles/0 42.8,53.41 |only Troll Rogue
accept The Rise of the Darkspear##24782 |goto Echo Isles/0 42.8,53.41 |only Troll Priest
accept The Rise of the Darkspear##24764 |goto Echo Isles/0 42.8,53.41 |only Troll Druid
accept The Rise of the Darkspear##26272 |goto Echo Isles/0 42.8,53.41 |only Troll Warlock
accept The Rise of the Darkspear##24750 |goto Echo Isles/0 42.8,53.41 |only Troll Mage
accept The Rise of the Darkspear##24758 |goto Echo Isles/0 42.8,53.41 |only Troll Shaman
step
talk Nekali##38242
turnin The Rise of the Darkspear##24758 |goto 49.9,52.71
accept The Basics: Hitting Things##24759 |goto 49.9,52.71
only Troll Shaman
step
talk Soratha##38246
turnin The Rise of the Darkspear##24750 |goto 59.7,52.11
accept The Basics: Hitting Things##24751 |goto 59.7,52.11
only Troll Mage
step
talk Voldreka##42618
turnin The Rise of the Darkspear##26272 |goto 50.0,50.01
accept The Basics: Hitting Things##26273 |goto 50.0,50.01
only Troll Warlock
step
talk Zen'tabra##38243
turnin The Rise of the Darkspear##24764 |goto 58.1,54.11
accept The Basics: Hitting Things##24765 |goto 58.1,54.11
only Troll Druid
step
talk Tunari##38245
turnin The Rise of the Darkspear##24782 |goto 58.1,49.11
accept The Basics: Hitting Things##24783 |goto 58.1,49.11
only Troll Priest
step
talk Legati##38244
turnin The Rise of the Darkspear##24770 |goto 52.9,49.91
accept The Basics: Hitting Things##24771 |goto 52.9,49.91
only Troll Rogue
step
talk Ortezza##38247
turnin The Rise of the Darkspear##24776 |goto 56.36,50.08
accept The Basics: Hitting Things##24777 |goto 56.36,50.08
only Troll Hunter
step
talk Nortet##38037
turnin The Rise of the Darkspear##24607 |goto 52.5,53.71
accept The Basics: Hitting Things##24639 |goto 52.5,53.71
only Troll Warrior
step
talk Zabrax##63310
turnin The Rise of the Darkspear##31159 |goto 52.6,51.8
accept The Basics: Hitting Things##31158 |goto 52.6,51.8
only Troll Monk
step
kill 6 Tiki Target##38038 |q 24759/1 |goto 52.9,53.21
only Troll Shaman
step
kill 6 Tiki Target##38038 |q 24771/1 |goto 52.9,53.21
only Troll Rogue
step
kill 6 Tiki Target##38038 |q 24639/1 |goto 52.9,53.21
only Troll Warrior
step
kill 6 Tiki Target##38038 |q 26273/1 |goto 52.9,53.21
only Troll Warlock
step
kill 6 Tiki Target##38038 |q 24751/1 |goto 56.4,50.11
only Troll Mage
step
kill 6 Tiki Target##38038 |q 24777/1 |goto 56.4,50.11
only Troll Hunter
step
kill 6 Tiki Target##38038 |q 24765/1 |goto 58.8,54.1
only Troll Druid
step
kill 6 Tiki Target##38038 |q 24783/1 |goto 56.4,50.11
only Troll Priest
step
kill 6 Tiki Target##38038 |q 31158/1 |goto 52.7,51.2
only Troll Monk
step
talk Nekali##38242
turnin The Basics: Hitting Things##24759 |goto 49.9,52.71
accept A Rough Start##24761 |goto 49.9,52.71
only Troll Shaman
step
talk Soratha##38246
turnin The Basics: Hitting Things##24751 |goto 59.7,52.11
accept A Rough Start##24753 |goto 59.7,52.11
only Troll Mage
step
talk Voldreka##42618
turnin The Basics: Hitting Things##26273 |goto 50.1,50.01
accept A Rough Start##26275 |goto 50.1,50.01
only Troll Warlock
step
talk Zen'tabra##38243
turnin The Basics: Hitting Things##24765 |goto 58.1,54.11
accept A Rough Start##24767 |goto 58.1,54.11
only Troll Druid
step
talk Tunari##38245
turnin The Basics: Hitting Things##24783 |goto 58.1,49.11
accept A Rough Start##24785 |goto 58.1,49.11
only Troll Priest
step
talk Legati##38244
turnin The Basics: Hitting Things##24771 |goto 52.9,49.91
accept A Rough Start##24773 |goto 52.9,49.91
only Troll Rogue
step
talk Ortezza##38247
turnin The Basics: Hitting Things##24777 |goto 56.4,50.11
accept A Rough Start##24779 |goto 56.4,50.11
only Troll Hunter
step
talk Nortet##38037
turnin The Basics: Hitting Things##24639 |goto 52.6,53.61
accept A Rough Start##24641 |goto 52.6,53.61
only Troll Warrior
step
talk Zabrax##63310
turnin The Basics: Hitting Things##31158 |goto 52.6,51.8
accept A Rough Start##31160 |goto 52.6,51.8
only Troll Monk
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 24767/1 |goto 56.7,45.11
only Troll Druid
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 24785/1 |goto 56.7,45.11
only Troll Priest
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 24753/1 |goto 56.7,45.11
only Troll Mage
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 24779/1 |goto 56.7,45.11
only Troll Hunter
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 24761/1 |goto 47.9,49.31
only Troll Shaman
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 24641/1 |goto 47.9,49.31
only Troll Warrior
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 26275/1 |goto 47.9,49.31
only Troll Warlock
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 24773/1 |goto 47.9,49.31
only Troll Rogue
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 31160/1 |goto 46.5,52.9
only Troll Monk
step
talk Nekali##38242
turnin A Rough Start##24761 |goto 50.1,52.81
accept Proving Pit##24762 |goto 50.1,52.81
only Troll Shaman
step
talk Soratha##38246
turnin A Rough Start##24753 |goto 59.7,52.11
accept Proving Pit##24754 |goto 59.7,52.11
only Troll Mage
step
talk Voldreka##42618
turnin A Rough Start##26275 |goto 50.1,50.01
accept Proving Pit##26276 |goto 50.1,50.01
only Troll Warlock
step
talk Zen'tabra##38243
turnin A Rough Start##24767 |goto 58.1,54.11
accept Proving Pit##24768 |goto 58.1,54.11
only Troll Druid
step
talk Tunari##38245
turnin A Rough Start##24785 |goto 58.1,49.11
accept Proving Pit##24786 |goto 58.1,49.11
only Troll Priest
step
talk Legati##38244
turnin A Rough Start##24773 |goto 52.9,49.91
accept Proving Pit##24774 |goto 52.9,49.91
only Troll Rogue
step
talk Ortezza##38247
turnin A Rough Start##24779 |goto 56.4,50.11
accept Proving Pit##24780 |goto 56.4,50.11
only Troll Hunter
step
talk Nortet##38037
turnin A Rough Start##24641 |goto 52.6,53.61
accept Proving Pit##24642 |goto 52.6,53.61
only Troll Warrior
step
talk Zabrax##63310
turnin A Rough Start##31160 |goto 52.6,51.8
accept Proving Pit##31161 |goto 52.6,51.8
only Troll Monk
step
talk Darkspear Jailor##39062
Tell him _"I am ready to face my challenge."_ |q 24754/1 |goto 57.49,52.66
only Troll Mage
step
kill Captive Spitescale Scout##38142+ |q 24754/2 |goto 57.21,51.93
only Troll Mage
step
talk Darkspear Jailor##39062
Tell him _"I am ready to face my challenge."_ |q 24768/1 |goto 57.49,52.66
only Troll Druid
step
kill Captive Spitescale Scout##38142+ |q 24768/2 |goto 57.21,51.93
only Troll Druid
step
talk Darkspear Jailor##39062
Tell him _"I am ready to face my challenge."_ |q 24786/1 |goto 57.49,52.66
only Troll Priest
step
kill Captive Spitescale Scout##38142+ |q 24786/2 |goto 57.21,51.93
only Troll Priest
step
talk Darkspear Jailor##39062
Tell him _"I am ready to face my challenge."_ |q 24780/1 |goto 57.49,52.66
only Troll Hunter
step
kill Captive Spitescale Scout##38142+ |q 24780/2 |goto 57.21,51.93
only Troll Hunter
step
talk Darkspear Jailor##39062
Tell him _"I am ready to face my challenge."_ |q 24774/1 |goto 57.49,52.66
only Troll Rogue
step
kill Captive Spitescale Scout##38142+ |q 24774/2 |goto 57.21,51.93
only Troll Rogue
step
talk Darkspear Jailor##39062
Tell him _"I am ready to face my challenge."_ |q 24642/1 |goto 57.49,52.66
only Troll Warrior
step
kill Captive Spitescale Scout##38142+ |q 24642/2 |goto 57.21,51.93
only Troll Warrior
step
talk Darkspear Jailor##39062
Tell him _"I am ready to face my challenge."_ |q 26276/1 |goto 57.49,52.66
only Troll Warlock
step
kill Captive Spitescale Scout##38142+ |q 26276/2 |goto 57.21,51.93
only Troll Warlock
step
talk Darkspear Jailor##39062
Tell him _"I am ready to face my challenge."_ |q 24762/1 |goto 57.49,52.66
only Troll Shaman
step
kill Captive Spitescale Scout##38142+ |q 24762/2 |goto 57.21,51.93
only Troll Shaman
step
talk Darkspear Jailor##39062
Tell him _"I am ready to face my challenge."_ |q 31161/1 |goto 57.49,52.66
only Troll Monk
step
kill Captive Spitescale Scout##38142+ |q 31161/2 |goto 57.21,51.93
only Troll Monk
step
talk Nekali##38242
turnin Proving Pit##24762 |goto 50.1,52.81
only Troll Shaman
step
talk Soratha##38246
turnin Proving Pit##24754 |goto 59.7,52.11
only Troll Mage
step
talk Voldreka##42618
turnin Proving Pit##26276 |goto 50.1,50.01
only Troll Warlock
step
talk Zen'tabra##38243
turnin Proving Pit##24768 |goto 58.1,54.11
only Troll Druid
step
talk Tunari##38245
turnin Proving Pit##24786 |goto 58.1,49.11
only Troll Priest
step
talk Legati##38244
turnin Proving Pit##24774 |goto 52.9,49.91
only Troll Rogue
step
talk Ortezza##38247
turnin Proving Pit##24780 |goto 56.4,50.11
only Troll Hunter
step
talk Nortet##38037
turnin Proving Pit##24642 |goto 52.6,53.61
only Troll Warrior
step
talk Zabrax##63310
turnin Proving Pit##31161 |goto 52.0,52.0
only Troll Monk
step
talk Vol'jin##38966
|tip Inside the building.
turnin More Than Expected##24781 |goto 61.55,65.85 |only Troll Hunter
turnin More Than Expected##24643 |goto 61.55,65.85 |only Troll Warrior
turnin More Than Expected##24775 |goto 61.55,65.85 |only Troll Rogue
turnin More Than Expected##24787 |goto 61.55,65.85 |only Troll Priest
turnin More Than Expected##24769 |goto 61.55,65.85 |only Troll Druid
turnin More Than Expected##26277 |goto 61.55,65.85 |only Troll Warlock
turnin More Than Expected##24755 |goto 61.55,65.85 |only Troll Mage
turnin More Than Expected##24763 |goto 61.55,65.85 |only Troll Shaman
turnin More Than Expected##31163 |goto 61.55,65.85 |only Troll Monk
accept Moraya##25064 |goto 61.55,65.85
step
talk Tora'jin##39007
accept Crab Fishin'##25037 |goto 60.5,62.91
step
Follow the path down |goto 62.40,60.10 < 15 |only if walking
Follow the path down |goto 64.20,56.39 < 20 |only if walking
kill Pygmy Surf Crawler##39004+
collect 5 Fresh Crawler Meat##52080 |q 25037/1 |goto 66.0,55.81
step
Follow the path up |goto 65.03,55.75 < 20 |only if walking
Follow the path up |goto 62.56,59.57 < 15 |only if walking
talk Tora'jin##39007
turnin Crab Fishin'##25037 |goto 60.5,62.91
step
talk Moraya##38005
turnin Moraya##25064 |goto 56.8,63.71
accept A Troll's Truest Companion##24622 |goto 56.8,63.71
step
Follow the path |goto 56.38,65.18 < 20 |only if walking
Cross the bridge |goto 50.01,67.05 < 20 |only if walking
talk Kijara##37969
|tip She walks around.
turnin A Troll's Truest Companion##24622 |goto 45.57,85.10
accept Saving the Young##24623 |goto 45.57,85.10
step
talk Tegashi##37987
accept Mercy for the Lost##24624 |goto 45.70,85.02
accept Consort of the Sea Witch##24625 |goto 45.70,85.02
stickystart "Corrupted_Bloodtalons"
stickystart "Rescue_Bloodtalon_Hatchlings"
step
Follow the path |goto 40.72,73.39 < 20 |only if walking
Follow the path up |goto 38.46,67.75 < 15 |only if walking
kill Naj'tess##39072
collect Naj'tess' Orb of Corruption##50018 |q 24625/1 |goto 36.8,69.01
step
label "Corrupted_Bloodtalons"
kill 8 Corrupted Bloodtalon##37961+ |q 24624/1 |goto 36.8,69.01
step
label "Rescue_Bloodtalon_Hatchlings"
Use the Bloodtalon Whistle near Lost Bloodtalon Hatchlings |use Bloodtalon Whistle##52283
|tip They look like tiny red raptors around this area.
Rescue #12# Bloodtalon Hatchlings |q 24623/1 |goto 36.8,69.01
step
talk Kijara##37969
|tip She walks around.
turnin Saving the Young##24623 |goto 45.57,85.10
step
talk Tegashi##37987
turnin Mercy for the Lost##24624 |goto 45.70,85.00
turnin Consort of the Sea Witch##24625 |goto 45.70,85.00
step
talk Kijara##37969
|tip She walks around.
accept Young and Vicious##24626 |goto 45.57,85.10
step
Use your Bloodtalon Lasso on Swiftclaw |use Bloodtalon Lasso##50053 |tip Swiftclaw is a dark colored raptor that runs really fast around this area, so you may need to search for him.
Capture Swiftclaw |q 24626/1 |goto 42.9,84.61
step
_While Riding Swiftclaw:_
Cross the bridge |goto 45.57,80.16 < 20 |only if walking
Follow the path |goto 49.97,67.11 < 20 |only if walking
Return Swiftclaw to the Raptor Pens |q 24626/2 |goto 52.9,65.31
step
Follow the path up |goto 56.45,65.02 < 15 |only if walking
talk Moraya##38005
turnin Young and Vicious##24626 |goto 56.8,63.71
step
talk Tortunga##38440
accept Breaking the Line##25035 |goto 58.95,66.82
step
talk Jornun##38989 |goto 59.06,66.91 |n
Tell him _"Yes.  Do you have a raptor that can take me there?"_
Secure a Ride to Spitescale Cove |goto 59.06,66.91 > 30 |noway |c |q 25035
step
Ride the Raptor to Spitescale Cove |goto 59.0,23.1 < 20 |c |q 25035
step
talk Morakki##38442
turnin Breaking the Line##25035 |goto 58.90,23.09
accept No More Mercy##24812 |goto 58.90,23.09
accept Territorial Fetish##24813 |goto 58.90,23.09
stickystart "Place_Territorial_Fetishes"
step
Kill Spitescale enemies around this area
|tip They are all around inside this cave.
|tip Stay near the entrance of the cave, if you can.
Slay #12# Spitescale Naga |q 24812/1 |goto Echo Isles/9 66.3,60.5
step
label "Place_Territorial_Fetishes"
Use your Territorial Fetish next to Spitescale Flags |use Territorial Fetish##52065
|tip They look like red penant flags on blue-ish tridents stuck in the ground all around inside this cave.
|tip Stay near the entrance of the cave, if you can.
Place #8# Territorial Fetishes |q 24813/1 |goto 66.3,60.5
step
talk Morakki##38442
turnin No More Mercy##24812 |goto Echo Isles/0 58.91,23.06
turnin Territorial Fetish##24813 |goto Echo Isles/0 58.91,23.06
accept An Ancient Enemy##24814 |goto Echo Isles/0 58.91,23.06
step
Follow the path |goto 59.30,25.08 < 20 |only if walking
Follow the path up |goto 62.05,23.91 < 20 |only if walking
talk Vol'jin##10540
Speak with Vol'jin at Spitescale Cove |q 24814/1 |goto 62.23,18.01
step
talk Vol'jin##10540
Tell him _"I am ready, Vol'jin."_
|tip Follow your allies into battle.
kill Zar'jira##38306 |q 24814/2 |goto 62.23,18.01
|tip Click the 3 braziers behind Zar'jira when the message displays on the screen telling you to stamp them out.
step
Watch the dialogue
talk Vanira##39027 |goto 60.26,15.80 |n
Tell her _"Take me back to Darkspear Hold if you would, Vanira."_
Return to Darkspear Hold |goto 59.5,63.2 < 30 |noway |c |q 24814
step
talk Vol'jin##10540
|tip Inside the building.
turnin An Ancient Enemy##24814 |goto 61.55,65.85
accept Sen'jin Village##25073 |goto 61.55,65.85
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Undead (1-10)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Tirisfal 1-11",
condition_suggested=function() return raceclass('Scourge') and level <= 10 and not completedq(25012) end,
next="Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\Silverpine Forest (10-60)",
startlevel=1,
endlevel=10,
},[[
step
talk Agatha##49044
accept Fresh out of the Grave##24959 |goto Deathknell/0 40.50,78.52
only Scourge
step
talk Undertaker Mordo##1568
turnin Fresh out of the Grave##24959 |goto 43.4,79.9
accept The Shadow Grave##28608 |goto 43.4,79.9
only Scourge
step
Run down the stairs |goto Tirisfal Glades/0 30.33,72.85 < 10 |walk |indoors Shadow Grave
Run down the stairs |goto Tirisfal Glades/0 29.98,72.84 < 10 |walk |indoors Shadow Grave
click Thick Embalming Fluid##207255
|tip It looks like a green globe sitting on the table.
collect Thick Embalming Fluid##64582 |q 28608/1 |goto Tirisfal Glades/0 29.7,72.0 |indoors Shadow Grave
step
click Corpse-Stitching Twine##207256
|tip It looks like a red spool of thread sitting on the table.
collect Corpse-Stitching Twine##64581 |q 28608/2 |goto 29.66,72.02 |indoors Shadow Grave
only Scourge
step
Run up the stairs |goto 29.99,72.45 < 10 |walk |indoors Shadow Grave
talk Undertaker Mordo##1568
turnin The Shadow Grave##28608 |goto Deathknell/0 43.4,79.9
accept Those That Couldn't Be Saved##26799 |goto Deathknell/0 43.4,79.9
only Scourge
step
talk Caretaker Caice##2307
accept The Wakening##24960 |goto 45.9,80.5
only Scourge
stickystart "Mindless_Zombies"
step
talk Valdred Moray##49231
Tell him _"Don't you remember? You died."_
Speak with Valdred Moray |q 24960/3 |goto 40.6,73.0
only Scourge
step
talk Lilian Voss##38895
Tell her _"I'm not an abomination, I'm simply undead. I just want to speak with you."_
Speak with Lilian Voss |q 24960/1 |goto 44.2,70.5
only Scourge
step
talk Marshal Redpath##49230
Tell him _"I'm not here to fight. I've only been asked to speak with you."_
Speak with Marshal Redpath |q 24960/2 |goto  46.5,71.2
only Scourge
step
label "Mindless_Zombies"
kill 6 Mindless Zombie##1501 |q 26799/1 |goto 44.0,73.7
only Scourge
step
talk Undertaker Mordo##1568
turnin Those That Couldn't Be Saved##26799 |goto 43.4,79.9
only Scourge
step
talk Caretaker Caice##2307
turnin The Wakening##24960 |goto 45.9,80.5
accept Beyond the Graves##25089 |goto 45.9,80.5
only Scourge
step
Follow the path |goto 50.56,68.10 < 20 |only if walking
talk Deathguard Saltain##1740
|tip He paces back and forth.
turnin Beyond the Graves##25089 |goto 49.96,56.17
accept Recruitment##26800 |goto 49.96,56.17
only Scourge
step
talk Shadow Priest Sarvis##1569
|tip Inside the building.
accept Scourge on our Perimeter##26801 |goto 46.7,58.8
stickystart "Gather_Scarlet_Corpses"
step
Kill enemies around this area
Slay #8# Deathknell Scourge |q 26801/1 |goto 50.54,47.39
step
label "Gather_Scarlet_Corpses"
clicknpc Scarlet Corpse##49340+
|tip They look like dead humans in red outfits laying on the ground around this area.
Gather #6# Scarlet Corpses |q 26800/1 |goto 50.54,47.39
step
talk Deathguard Saltain##1740
|tip He paces back and forth.
turnin Recruitment##26800 |goto 49.96,56.17
only Scourge
step
talk Shadow Priest Sarvis##1569
|tip Inside the building.
turnin Scourge on our Perimeter##26801 |goto 46.7,58.8
accept Novice Elreth##28651 |goto 46.7,58.8
step
talk Novice Elreth##1661
|tip Inside the building.
turnin Novice Elreth##28651 |goto 46.8,58.3
accept The Truth of the Grave##24961 |goto 46.8,58.3
step
Enter the building |goto 52.34,56.45 < 10 |walk
talk Lilian Voss##38910
|tip Inside the building.
Tell her _"You're not hideous, Lillian... you're one of us.  Here, look in this mirror, see for yourself."_
|tip If she's not on the ground floor, she can also be found on the upper level of the building at the same location.
Show Lilian Her Reflection |q 24961/1 |goto 54.35,56.97
step
talk Novice Elreth##1661
|tip Inside the building.
turnin The Truth of the Grave##24961 |goto 46.7,58.2
accept The Executor In the Field##28672 |goto 46.7,58.2
step
Follow the road |goto 51.35,52.74 < 20 |only if walking
Continue following the road |goto 52.64,41.79 < 20 |only if walking
talk Executor Arren##1570
turnin The Executor In the Field##28672 |goto 55.5,37.7
accept The Damned##26802 |goto 55.5,37.7
stickystart "Duskbat_Wings"
step
Kill Scavenger enemies around this area
collect 4 Scavenger Paw##3265 |q 26802/1 |goto 59.7,30.2
step
label "Duskbat_Wings"
Kill Duskbat enemies around this area
collect 4 Duskbat Wing##3264 |q 26802/2 |goto 59.7,30.2
step
talk Executor Arren##1570
turnin The Damned##26802 |goto 55.5,37.7
accept Night Web's Hollow##24973 |goto 55.5,37.7
step
kill 8 Young Night Web Spider##1504 |q 24973/1 |goto 36.6,29.0
step
kill 5 Night Web Spider##1505 |q 24973/2 |goto Deathknell/12 59.5,59.0 |indoors Night Web's Hollow
step
talk Executor Arren##1570
turnin Night Web's Hollow##24973 |goto Deathknell/0 55.5,37.7
accept No Better Than the Zombies##24970 |goto Deathknell/0 55.5,37.7
step
Follow the road |goto 60.68,36.12 < 20 |only if walking
talk Darnell##49425
turnin No Better Than the Zombies##24970 |goto 67.03,42.37
accept Assault on the Rotbrain Encampment##24971 |goto 67.03,42.37
stickystart "Slay_Rotbrain_Undead"
step
kill Marshal Redpath##49424 |q 24971/1 |goto 70.0,69.7
step
label "Slay_Rotbrain_Undead"
Kill enemies around this area
Slay #8# Rotbrain Undead |q 24971/2 |goto 74.4,65.5
step
Follow the path |goto 64.89,63.88 < 30 |only if walking
Follow the path |goto 53.23,62.39 < 15 |only if walking
talk Shadow Priest Sarvis##1569
|tip Inside the building.
turnin Assault on the Rotbrain Encampment##24971 |goto 46.7,58.8
accept Vital Intelligence##24972 |goto 46.7,58.8
step
Follow the road |goto 51.34,52.94 < 20 |only if walking
Continue following the road |goto 54.05,38.24 < 30 |only if walking
Follow the road |goto 77.12,18.56 < 20 |only if walking
Follow the road |goto Tirisfal Glades/0 40.60,54.61 < 30 |only if walking
talk Deathguard Simmer##1519
|tip Inside the building.
turnin Vital Intelligence##24972 |goto Tirisfal Glades/0 44.75,53.68
accept Reaping the Reapers##24978 |goto Tirisfal Glades/0 44.75,53.68
step
talk Apothecary Johaan##1518
accept Fields of Grief##24975 |goto 44.6,53.8
step
talk Sedrick Calston##38925
|tip Upstairs sitting on a bed.
accept Ever So Lonely##24974 |goto 44.75,53.65
stickystart "Tirisfal_Pumpkins"
step
Kill enemies around this area
Slay #10# Tirisfal Farmers |q 24978/1 |goto 37.3,50.5
step
label "Tirisfal_Pumpkins"
click Tirisfal Pumpkin##375
|tip They look like large orange pumpkins on the ground around this area.
collect 10 Tirisfal Pumpkin##2846 |q 24975/1 |goto 37.3,50.5
step
Follow the path down |goto 35.90,47.20 < 20 |only if walking
Fight a Vile Fin murloc
|tip Don't kill it, just weaken it.
Use the Murloc Leash on the Vile Fin murloc |use Murloc Leash##52059
|tip Use it when it is weak.
|tip You will see a message in your chat box letting you know when the Vile Fin murloc is ready to be captured.
Capture a Vile Fin |q 24974/1 |goto 36.2,44.2
step
Follow the path up |goto 37.26,45.22 < 30 |only if walking
Follow the road |goto 39.73,49.21 < 30 |only if walking
talk Deathguard Simmer##1519
|tip Inside the building.
turnin Reaping the Reapers##24978 |goto 44.75,53.67
accept The Scarlet Palisade##24980 |goto 44.75,53.67
step
talk Apothecary Johaan##1518
turnin Fields of Grief##24975 |goto 44.6,53.8
accept Variety is the Spice of Death##24976 |goto 44.6,53.8
step
Return the Vile Fine |q 24974/2 |goto 44.75,53.65
|tip Upstairs inside the building, stand on the bed.
|tip The murloc has to get close to the bed.
step
talk Sedrick Calston##38925
|tip Upstairs inside the building.
turnin Ever So Lonely##24974 |goto 44.75,53.65
step
Follow the path |goto 44.94,51.93 < 20 |only if walking
click Marrowpetal Stalk##202422
|tip They look like red plants underwater around this area.
collect 4 Marrowpetal##52067 |q 24976/1 |goto 48.90,53.73
step
Follow the path |goto 48.20,52.04 < 30 |only if walking
Follow the path |goto 44.42,46.60 < 30 |only if walking
click Xavren's Thorn##202421
|tip They look like small yellow plants on the hills around this area.
collect 4 Xavren's Thorn##52066 |q 24976/2 |goto 40.0,38.7
step
Drop down here |goto 37.43,39.60 < 20 |only if walking
clicknpc Briny Sea Cucumber##38933+
|tip They look like small pink and yellow grubs underwater around this area.
collect 8 Briny Sea Creature##52068 |q 24976/3 |goto 35.3,41.6
stickystart "Scarlet_Warriors"
step
Follow the path up |goto 35.79,44.33 < 30 |only if walking
Follow the path |goto 35.85,46.79 < 20 |only if walking
Follow the path |goto 34.34,48.14 < 20 |only if walking
kill Scarlet Warrior##1535+
collect A Scarlet Letter##52079 |n
Use the Scarlet Letter |use A Scarlet Letter##52079
accept A Scarlet Letter##24979 |goto 32.5,47.4
step
talk Lilian Voss##38999
|tip She's at the very top of the tower.
Tell her _"I'm here to rescue you."_
Watch the dialogue
Find the Scarlet Prisoner |q 24979/1 |goto 31.75,46.25
step
label "Scarlet_Warriors"
kill 10 Scarlet Warrior##1535 |q 24980/1 |goto 32.5,47.4
step
Follow the road |goto 34.22,48.06 < 30 |only if walking
Continue following the road |goto 39.38,48.92 < 30 |only if walking
talk Deathguard Simmer##1519
|tip Inside the building.
turnin The Scarlet Palisade##24980 |goto 44.75,53.67
turnin A Scarlet Letter##24979 |goto 44.75,53.67
step
talk Apothecary Johaan##1518
|tip Inside the building.
turnin Variety is the Spice of Death##24976 |goto 44.6,53.8
accept Johaan's Experiment##24977 |goto 44.6,53.8
step
talk Captured Scarlet Zealot##1931
turnin Johaan's Experiment##24977 |goto 44.7,52.6
step
talk Gordo##10666 |tip He walks around the camp.
accept Gordo's Task##25038 |goto 44.1,53.9
step
Follow the path |goto 44.73,55.15 < 30 |only if walking
clicknpc Gloom Weed##175566+
|tip They look like wilted green and purple plants underwater around this area.
collect 3 Gloom Weed##12737 |q 25038/1 |goto 48.89,54.86
step
talk Deathguard Dillinger##1496
accept A Putrid Task##25090 |goto 52.55,54.81
accept The New Forsaken##24982 |goto 52.55,54.81
step
Kill enemies around this area
collect 7 Putrid Claw##2855 |q 25090/1 |goto 52.8,57.7
step
talk Deathguard Dillinger##1496
turnin A Putrid Task##25090 |goto 52.54,54.82
step
Cross the bridge |goto 52.54,54.41 < 15 |only if walking
Follow the road |goto 55.39,52.36 < 20 |only if walking
Follow the path |goto 57.86,51.79 < 20 |only if walking
talk Deathguard Morris##1745
accept Supplying Brill##6321 |goto 60.13,52.40
only Scourge
step
talk Junior Apothecary Holland##10665
|tip He walks around inside the building, on both floors.
turnin Gordo's Task##25038 |goto 60.1,52.7
accept Darkhound Pounding##24990 |goto 60.1,52.7
step
talk Executor Zygand##1515
accept A Thorn in our Side##24981 |goto 60.54,51.86
step
talk Innkeeper Renee##5688
|tip Inside the building.
home Brill |goto 60.87,51.50 |q 24981
step
Run up the stairs |goto 61.11,51.21 < 10 |walk
Continue up the stairs |goto 61.30,51.04 < 10 |walk
talk Magistrate Sevren##1499
|tip He walks around in this small room upstairs inside the building.
turnin The New Forsaken##24982 |goto 61.0,50.4
accept Forsaken Duties##24983 |goto 61.0,50.4
stickystart "Darkhound_Blood"
step
Follow the path |goto 60.56,53.17 < 20 |only if walking
kill Cursed Darkhound##1548+
|tip A Worgen will appear and give you a quest when you kill a Cursed Darkhound.
|tip Be careful not to kill the Cursed Darkhounds too fast.
accept Escaped From Gilneas##24992 |goto 58.8,60.2
step
label "Darkhound_Blood"
kill Cursed Darkhound##1548+
collect 5 Darkhound Blood##2858 |q 24990/1 |goto 58.8,60.2
stickystart "Scarlet_Missionaries"
stickystart "Urgent_Scarlet_Memorandum"
step
kill 3 Scarlet Zealot##1537 |q 24981/1 |goto 53.0,66.1
step
label "Scarlet_Missionaries"
kill 3 Scarlet Missionary##1536 |q 24981/2 |goto 53.0,66.1
step
label "Urgent_Scarlet_Memorandum"
Kill enemies around this area
collect Urgent Scarlet Memorandum##52077 |q 24981/3 |goto 53.0,66.1
step
talk Executor Zygand##1515
turnin A Thorn in our Side##24981 |goto 60.54,51.87
turnin Escaped From Gilneas##24992 |goto 60.54,51.87
accept Annihilate the Worgen##24993 |goto 60.54,51.87
step
talk Junior Apothecary Holland##10665
|tip He walks around inside the building, on both floors.
turnin Darkhound Pounding##24990 |goto 60.1,52.7
accept Holland's Experiment##24996 |goto 60.1,52.7
step
talk Captured Mountaineer##2211
|tip Upstairs inside the building.
turnin Holland's Experiment##24996 |goto 60.04,52.87
step
talk Junior Apothecary Holland##10665
|tip He walks around inside the building, on both floors.
accept Garren's Haunt##24991 |goto 60.1,52.7
step
talk Anette Williams##43124
turnin Supplying Brill##6321 |goto 58.84,51.94
accept Ride to the Undercity##6323 |goto 58.84,51.94
only Scourge
step
talk Gordon Wendham##4556
turnin Ride to the Undercity##6323 |goto Undercity/0 61.5,41.8
accept Michael Garrett##6322 |goto Undercity/0 61.5,41.8
only Scourge
step
talk Michael Garrett##4551
turnin Michael Garrett##6322 |goto 63.3,48.5
accept Return to Morris##6324 |goto 63.3,48.5
only Scourge
step
talk Deathguard Morris##1745
turnin Return to Morris##6324 |goto Tirisfal Glades/0 60.13,52.40
only Scourge
step
kill 5 Worgen Infiltrator##38949 |q 24993/1 |goto 60.3,52.0
|tip They walk around stealthed around this area.
|tip Look for little puffs of dust moving along the ground to spot them easily.
step
talk Executor Zygand##1515
turnin Annihilate the Worgen##24993 |goto 60.54,51.87
step
Follow the road |goto 61.94,54.81 < 20 |only if walking
talk Deathguard Linnea##1495
turnin Forsaken Duties##24983 |goto 65.49,60.26
step
talk Gretchen Dedmar##1521
accept The Chill of Death##24988 |goto 65.25,60.42
step
Kill Duskbat enemies around this area
collect 5 Duskbat Pelt##2876 |q 24988/1 |goto 66.9,54.9
step
talk Gretchen Dedmar##1521
turnin The Chill of Death##24988 |goto 65.25,60.42
step
talk Deathguard Linnea##1495
accept Return to the Magistrate##24989 |goto 65.49,60.26
step
Follow the path |goto 64.62,58.76 < 20 |only if walking
Follow the road |goto 63.08,55.72 < 20 |only if walking
Follow the road |goto 61.96,54.90 < 20 |only if walking
Enter the building |goto 60.81,51.91 < 10 |walk
Run up the stairs |goto 61.11,51.21 < 10 |walk
Continue up the stairs |goto 61.30,51.04 < 10 |walk
talk Magistrate Sevren##1499
|tip He walks around in this small room upstairs inside the building.
turnin Return to the Magistrate##24989 |goto 61.0,50.4
step
Leave the building |goto 60.81,51.96 < 10 |walk
Follow the path |goto 61.40,52.23 < 20 |only if walking
Follow the road |goto 62.04,50.81 < 20 |only if walking
Continue following the road |goto 59.23,41.66 < 20 |only if walking
talk Apothecary Jerrod##38977
turnin Garren's Haunt##24991 |goto 61.65,34.55
accept Doom Weed##24994 |goto 61.65,34.55
step
talk Apprentice Crispin##38978
accept Graverobbers##24997 |goto 61.6,34.4
stickystart "Doom_Weed"
stickystart "Embalming_Ichor"
stickystart "Rot_Hide_Mongrels"
step
kill 8 Rot Hide Graverobber##1941 |q 24997/1 |goto 55.6,42.4
step
label "Doom_Weed"
click Doom Weed##176753
|tip They look like small green and purple plants on the ground around this area.
collect 10 Doom Weed##13702 |q 24994/1 |goto 55.6,42.4
step
label "Rot_Hide_Mongrels"
kill 5 Rot Hide Mongrel##1675 |q 24997/2 |goto 59.0,36.7
step
label "Embalming_Ichor"
Kill Rot Hide enemies around this area
collect 6 Embalming Ichor##2834 |q 24997/3 |goto 59.0,36.7
step
talk Apothecary Jerrod##38977
turnin Doom Weed##24994 |goto 61.65,34.55
accept Off the Scales##24995 |goto 61.65,34.55
step
talk Apprentice Crispin##38978
turnin Graverobbers##24997 |goto 61.6,34.4
accept Maggot Eye##24998 |goto 61.6,34.4
accept Planting the Seed of Fear##24999 |goto 61.6,34.4
step
kill Maggot Eye##1753
|tip Inside the house.
collect Maggot Eye's Paw##3635 |q 24998/1 |goto 58.66,30.74
stickystart "Vile_Fin_Scales"
step
Frighten #12# Vile Fin Tadpoles |q 24999/1 |goto 59.8,27.7
|tip Run next to Vile Fin Tadpoles to frighten them.
|tip Keep chasing them when they run away.
You can find more around [65.1,28.7]
step
label "Vile_Fin_Scales"
Kill Vile Fin enemies around this area
collect 5 Vile Fin Scale##2859 |q 24995/1 |goto 59.8,27.7
step
talk Apprentice Crispin##38978
turnin Maggot Eye##24998 |goto 61.6,34.4
turnin Planting the Seed of Fear##24999 |goto 61.6,34.4
step
talk Apothecary Jerrod##38977
turnin Off the Scales##24995 |goto 61.65,34.56
accept Head for the Mills##25031 |goto 61.65,34.56
step
Follow the road |goto 60.78,32.15 < 30 |only if walking
Continue following the road |goto 58.36,30.94 < 20 |only if walking
Follow the road up |goto 56.23,27.53 < 20 |only if walking
talk Coleman Farthing##1500
turnin Head for the Mills##25031 |goto 54.6,29.9
accept The Family Crypt##25003 |goto 54.6,29.9
stickystart "Rotting_Ancestors"
step
kill 8 Wailing Ancestor##1534 |q 25003/1 |goto 52.1,29.8
step
label "Rotting_Ancestors"
kill 8 Rotting Ancestor##1530 |q 25003/2 |goto 52.1,29.8
step
talk Coleman Farthing##1500
turnin The Family Crypt##25003 |goto 54.6,29.9
accept The Mills Overrun##25004 |goto 54.6,29.9
accept Deaths in the Family##25029 |goto 54.6,29.9
stickystart "Notched_Ribs"
stickystart "Blackened_Skulls"
step
Follow the path |goto 52.47,30.67 < 30 |only if walking
Cross the bridge |goto 50.32,29.61 < 20 |only if walking
kill Thurman Agamand##1656
collect Thurman's Remains##2830 |q 25029/3 |goto 46.0,30.3
step
kill Gregor Agamand##1654
collect Gregor's Remains##2829 |q 25029/2 |goto 45.6,29.6
step
kill Devlin Agamand##1657
collect Devlin's Remains##2831 |q 25029/4 |goto 48.95,33.91
step
kill Nissa Agamand##1655
|tip She can either be upstairs or downstairs inside the building.
collect Nissa's Remains##2828 |q 25029/1 |goto 49.67,36.15
step
label "Notched_Ribs"
kill Cracked Skull Soldier##1523+
collect 5 Notched Rib##3162 |q 25004/1 |goto 47.6,32.4
step
label "Blackened_Skulls"
kill Darkeye Bonecaster##1522+
collect 3 Blackened Skull##3163 |q 25004/2 |goto 47.6,32.4
step
Follow the path |goto 49.34,34.96 < 30 |only if walking
Follow the path |goto 50.78,32.43 < 30 |only if walking
Follow the road |goto 51.61,30.65 < 20 |only if walking
talk Coleman Farthing##1500
turnin The Mills Overrun##25004 |goto 54.6,29.9
turnin Deaths in the Family##25029 |goto 54.6,29.9
accept Speak with Sevren##25005 |goto 54.6,29.9
step
Run up the stairs |goto 61.11,51.21 < 10 |walk
Continue up the stairs |goto 61.30,51.04 < 10 |walk
talk Magistrate Sevren##1499
|tip He walks around in this small room upstairs inside the building.
turnin Speak with Sevren##25005 |goto 61.0,50.4
accept The Grasp Weakens##25006 |goto 61.0,50.4
step
talk Executor Zygand##1515
accept Warchief's Command: Silverpine Forest!##26964 |goto 60.53,51.87
step
talk Shadow Priestess Malia##39117
|tip Inside the building.
Tell her _"I am ready."_
|tip Follow her upstairs.
kill Spirit of Devlin Agamand##38980
Complete the Procedure |q 25006/1 |goto 62.03,52.95
step
Enter the building |goto 60.8,51.9 < 10 |walk
Run up the stairs |goto 61.11,51.21 < 10 |walk
Continue up the stairs |goto 61.30,51.04 < 10 |walk
talk Magistrate Sevren##1499
|tip He walks around in this small room upstairs inside the building.
turnin The Grasp Weakens##25006 |goto 61.0,50.4
accept East... Always to the East##25007 |goto 61.0,50.4
step
talk Apothecary Dithers##11057
accept Grisly Grizzlies##25056 |goto 83.28,69.23
step
talk High Executor Derrington##10837
turnin East... Always to the East##25007 |goto 83.26,68.99
accept At War With The Scarlet Crusade##25009 |goto 83.26,68.99
step
talk Provisioner Elda##46271
home The Bulwark |goto 83.1,72.0 |q 25009
step
kill Plagued Bruin##39049+
collect 5 Plagued Bruin Hide##52270 |q 25056/1 |goto 79.9,67.7
stickystart "Scarlet_Friars"
step
Follow the path |goto 79.34,59.98 < 30 |only if walking
Follow the path up |goto 79.66,57.73 < 30 |only if walking
kill 3 Scarlet Zealot##1537 |q 25009/1 |goto 79.7,56.6
step
label "Scarlet_Friars"
kill 4 Scarlet Friar##1538 |q 25009/2 |goto 79.7,56.6
step
Follow the path down |goto 79.85,56.73 < 20 |only if walking
Follow the path |goto 80.15,62.47 < 20 |only if walking
Follow the path |goto 83.21,67.86 < 20 |only if walking
talk High Executor Derrington##10837
turnin At War With The Scarlet Crusade##25009 |goto 83.27,68.98
accept A Deadly New Ally##25010 |goto 83.27,68.98
step
talk Apothecary Dithers##11057
turnin Grisly Grizzlies##25056 |goto 83.3,69.2
accept A Little Oomph##25013 |goto 83.3,69.2
step
Follow the path |goto 83.19,67.78 < 15 |only if walking
Follow the path |goto 80.39,62.95 < 30 |only if walking
Follow the path |goto 81.5,57.8 < 15 |only if walking
kill Vicious Night Web Spider##1555+
collect 4 Vicious Night Web Spider Venom##2872 |q 25013/1 |goto 84.4,52.1
step
talk Lieutenant Sanders##13158
|tip He's hanging upside down from a chain.
turnin A Deadly New Ally##25010 |goto 87.5,43.3
accept A Daughter's Embrace##25046 |goto 87.5,43.3
step
Follow the road |goto 81.5,43.0 < 20 |only if walking
Follow the path |goto 81.19,40.58 < 20 |only if walking
Follow the road |goto 78.74,38.02 < 20 |only if walking
Continue following the road |goto 79.29,30.76 < 20 |only if walking
Watch the dialogue
|tip Inside of the tower.
Accomplish Lillian's Mission |q 25046/1 |goto 79.49,25.35
step
talk Apothecary Dithers##11057
turnin A Little Oomph##25013 |goto 83.28,69.23
step
talk High Executor Derrington##10837
turnin A Daughter's Embrace##25046 |goto 83.27,68.98
accept To Bigger and Better Things##25011 |goto 83.27,68.98
step
talk Timothy Cunningham##37915
turnin To Bigger and Better Things##25011 |goto 83.58,69.94
accept Take to the Skies##25012 |goto 83.58,69.94
step
talk Timothy Cunningham##37915
fpath The Bulwark |goto 83.58,69.94
step
talk Timothy Cunningham##37915 |goto 83.58,69.94 |n
Tell him _"I'll take that flight to Brill now."_
Take a Flight to Brill |goto 58.9,51.9 < 30 |noway |c |q 25012
step
talk Executor Zygand##1515
turnin Take to the Skies##25012 |goto 60.53,51.87
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (1-10)\\Eastern Kingdoms\\Eversong Woods (1-20)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Eversong 5-12",
next="Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\Ghostlands (10-60)",
condition_suggested=function() return level >= 1 and level <= 20 and not completedq(8490) end,
startlevel=1,
endlevel=10,
},[[
step
Cross the bridge |goto Sunstrider Isle/0 63.47,73.27 < 20 |only if walking
talk Outrunner Alarion##15301
turnin Aiding the Outrunners##8347 |goto Eversong Woods/0 40.42,32.21 |only if havequest(8347) or completedq(8347)
accept Slain by the Wretched##9704 |goto Eversong Woods/0 40.42,32.21
step
clicknpc Slain Outrunner##17849
turnin Slain by the Wretched##9704 |goto 42.03,35.66
accept Package Recovery##9705 |goto 42.03,35.66
step
talk Outrunner Alarion##15301
turnin Package Recovery##9705 |goto 40.42,32.21
accept Completing the Delivery##8350 |goto 40.42,32.21
step
Cross the bridge |goto 42.28,36.41 < 20 |only if walking
talk Magister Jaronis##15418
accept Major Malfunction##8472 |goto 47.25,46.31
step
Enter the building |goto 47.77,47.31 < 10 |walk
talk Innkeeper Delaniel##15433
|tip Inside the building.
turnin Completing the Delivery##8350 |goto 48.16,47.66
step
talk Innkeeper Delaniel##15433
|tip Inside the building.
home Falconwing Inn |goto 48.16,47.66 |q 8472 |future
step
Leave the building |goto 47.77,47.31 < 10 |walk
click Wanted: Thaelis the Hungerer##180918
accept Wanted: Thaelis the Hungerer##8468 |goto 48.16,46.30
step
talk Aeldon Sunbrand##15403
accept Unstable Mana Crystals##8463 |goto 48.16,46.00
step
talk Skymaster Skyles##44244
fpath Falconwing Square |goto 46.24,46.79
stickystart "Collect_Unstable_Mana_Crystals"
stickystart "Collect_Arcane_Cores"
step
Enter the building |goto 45.00,38.32 < 15 |walk
kill Thaelis the Hungerer##15949
|tip Inside the building.
collect Thaelis's Head##21781 |q 8468/1 |goto 45.03,37.68
step
label "Collect_Unstable_Mana_Crystals"
click Unstable Mana Crystal Crate##180600+
|tip They look like yellow glowing light brown wooden boxes on the ground around this area.
collect 6 Unstable Mana Crystal##20743 |q 8463/1 |goto 45.51,39.96
step
label "Collect_Arcane_Cores"
kill Arcane Patroller##15638+
|tip They walk around this area.
collect 6 Arcane Core##21808 |q 8472/1 |goto 46.95,39.95
You can find more around [41.83,39.64]
step
talk Magister Jaronis##15418
turnin Major Malfunction##8472 |goto 47.25,46.32
accept Delivery to the North Sanctum##8895 |goto 47.25,46.32
step
talk Sergeant Kan'ren##16924
turnin Wanted: Thaelis the Hungerer##8468 |goto 47.77,46.58
step
talk Aeldon Sunbrand##15403
turnin Unstable Mana Crystals##8463 |goto 48.17,46.00
accept Darnassian Intrusions##9352 |goto 48.17,46.00
step
Follow the path |goto 46.56,48.05 < 20 |only if walking
talk Ley-Keeper Caidanis##15405
turnin Delivery to the North Sanctum##8895 |goto 44.63,53.13
accept Malfunction at the West Sanctum##9119 |goto 44.63,53.13
step
talk Apprentice Ralen##15941
accept Roadside Ambush##9035 |goto 45.19,56.43
step
talk Apprentice Meledor##15945
turnin Roadside Ambush##9035 |goto 44.88,61.03
accept Soaked Pages##9062 |goto 44.88,61.03
step
click Soaked Tome##181110
|tip It looks like a black book underwater.
collect Antheol's Elemental Grimoire##22414 |q 9062/1 |goto 44.34,61.99
step
talk Apprentice Meledor##15945
turnin Soaked Pages##9062 |goto 44.88,61.03
accept Taking the Fall##9064 |goto 44.88,61.03
step
talk Ley-Keeper Velania##15401
turnin Malfunction at the West Sanctum##9119 |goto 36.70,57.44
accept Arcane Instability##8486 |goto 36.70,57.44
stickystart "Accept_Incriminating_Documents"
stickystart "Kill_Manawraiths"
stickystart "Kill_Mana_Stalkers"
step
kill Darnassian Scout##15968+
Defeat an Intruder |q 9352/1 |goto 33.90,61.53
step
label "Accept_Incriminating_Documents"
kill Darnassian Scout##15968+
accept Incriminating Documents##8482 |goto 33.90,61.53
|tip You will eventually automatically accept this quest after looting.
step
label "Kill_Manawraiths"
kill 5 Manawraith##15648 |q 8486/1 |goto 35.18,60.37
step
label "Kill_Mana_Stalkers"
kill 5 Mana Stalker##15647 |q 8486/2 |goto 35.18,60.37
step
talk Ley-Keeper Velania##15401
turnin Darnassian Intrusions##9352 |goto 36.70,57.44
turnin Arcane Instability##8486 |goto 36.70,57.44
step
Follow the path up |goto 33.46,57.74 < 15 |only if walking
Jump down here |goto 31.76,58.19 < 10 |only if walking
talk Hathvelion Sungaze##15920
|tip He walks around this area.
accept Fish Heads, Fish Heads...##8884 |goto 30.08,58.38
stickystart "Accept_Captain_Kelisendras_Lost_Rutters"
step
Kill Grimscale enemies around this area
collect 8 Grimscale Murloc Head##21757 |q 8884/1 |goto 26.66,61.70
step
label "Accept_Captain_Kelisendras_Lost_Rutters"
Kill Grimscale enemies around this area
accept Captain Kelisendra's Lost Rutters##8887 |goto 26.66,61.70
|tip You will eventually automatically accept this quest after looting.
step
talk Hathvelion Sungaze##15920
|tip He walks around this area.
turnin Fish Heads, Fish Heads...##8884 |goto 30.08,58.38
accept The Ring of Mmmrrrggglll##8885 |goto 30.08,58.38
step
Leave the building |goto 47.77,47.30 < 10 |walk
talk Aeldon Sunbrand##15403
turnin Incriminating Documents##8482 |goto 48.17,46.00
accept The Dwarven Spy##8483 |goto 48.17,46.00
step
Follow the path |goto 46.56,48.03 < 20 |only if walking
Locate Prospector Anvilward |goto 44.57,53.31 < 5 |c |q 8483
step
talk Prospector Anvilward##15420
Tell him _"I need a moment of your time, sir."_
Begin Following Prospector Anvilward |goto 44.57,53.30 > 10 |c |q 8483
step
Watch the dialogue
|tip Follow Prospector Anvilward as he walks.
kill Prospector Anvilward##15420
|tip Inside the building.
collect Prospector Anvilward's Head##20764 |q 8483/1 |goto 44.07,53.31
step
Follow the path |goto 46.55,49.09 < 20 |only if walking
talk Aeldon Sunbrand##15403
turnin The Dwarven Spy##8483 |goto 48.17,46.00
accept Fairbreeze Village##9256 |goto 48.17,46.00
step
Follow the path |goto 46.54,48.08 < 20 |only if walking
talk Ranger Jaela##15416
accept The Dead Scar##8475 |goto 50.33,50.77
step
kill 8 Plaguebone Pillager##15654 |q 8475/1 |goto 50.37,56.51
step
talk Ranger Jaela##15416
turnin The Dead Scar##8475 |goto 50.33,50.77
step
talk Instructor Antheol##15970
turnin Taking the Fall##9064 |goto 55.70,54.51
accept Swift Discipline##9066 |goto 55.70,54.51
step
talk Skymistress Gloaming##16192
fpath Silvermoon City |goto 54.37,50.73
step
use Antheol's Disciplinary Rod##22473
|tip Use it on Apprentice Ralen.
Discipline Apprentice Ralen |q 9066/2 |goto 45.19,56.43
step
use Antheol's Disciplinary Rod##22473
|tip Use it on Apprentice Meledor.
Discipline Apprentice Meledor |q 9066/1 |goto 44.87,61.03
step
Follow the road up |goto 43.99,67.38 < 30 |only if walking
talk Velan Brightoak##15417
accept Pelt Collection##8491 |goto 44.72,69.62
step
talk Skymaster Brightdawn##44036
fpath Fairbreeze Village |goto 43.95,69.98
step
talk Magistrix Landra Dawnstrider##16210
accept Saltheril's Haven##9395 |goto 44.03,70.76
accept The Wayward Apprentice##9254 |goto 44.03,70.76
step
talk Marniel Amberlight##15397
|tip Inside the building.
accept Ranger Sareyn##9358 |goto 43.67,71.31
step
talk Marniel Amberlight##15397
|tip Inside the building.
home Fairbreeze Village |goto 43.67,71.31 |q 8490 |future
step
talk Ardeyn Riverwind##16397
|tip Inside the building.
accept The Scorched Grove##9258 |goto 43.57,71.20
step
talk Sathiel##16261
|tip Inside the building.
accept Goods from Silvermoon City##9130 |goto 43.70,71.56
|only if BloodElf
step
Run up the ramp |goto 43.77,70.73 < 10 |only if walking
talk Ranger Degolien##15939
|tip On the balcony of the building.
turnin Fairbreeze Village##9256 |goto 43.35,70.82
accept Situation at Sunsail Anchorage##8892 |goto 43.35,70.82
step
talk Skymaster Brightdawn##44036
turnin Goods from Silvermoon City##9130 |goto 43.95,69.98
accept Fly to Silvermoon City##9133 |goto 43.95,69.98
|only if BloodElf
step
talk Skymaster Brightdawn##44036 |goto 43.95,69.98
Take a Flight to Silvermoon City |goto 54.38,50.76 < 20 |noway |c |q 9133
|only if BloodElf
step
talk Instructor Antheol##15970
turnin Swift Discipline##9066 |goto 55.70,54.50
step
Follow the path |goto 56.67,49.60 < 20 |only if walking
Enter the building |goto Silvermoon City/0 69.26,77.08 < 10 |only if walking
Leave the building |goto Silvermoon City/0 65.64,72.55 < 10 |only if walking
Enter the building |goto Silvermoon City/0 55.34,71.05 < 10 |walk
talk Sathren Azuredawn##16191
|tip Inside the building.
turnin Fly to Silvermoon City##9133 |goto Silvermoon City/0 53.93,71.00
accept Skymistress Gloaming##9134 |goto Silvermoon City/0 53.93,71.00
|only if BloodElf
step
Enter the building |goto 65.63,72.54 < 10 |only if walking
Leave the building |goto 69.20,77.01 < 10 |only if walking
Follow the path |goto 72.46,85.26 < 20 |only if walking
talk Skymistress Gloaming##16192
turnin Skymistress Gloaming##9134 |goto Eversong Woods/0 54.37,50.73
accept Return to Sathiel##9135 |goto Eversong Woods/0 54.37,50.73
|only if BloodElf
step
Enter the building |goto 43.82,71.04 < 10 |walk
talk Sathiel##16261
|tip Inside the building.
turnin Return to Sathiel##9135 |goto 43.70,71.56
|only if BloodElf
step
kill Springpaw Stalker##15651+
collect 6 Springpaw Pelt##20772 |q 8491/1 |goto 45.68,65.78
step
Follow the road |goto 41.67,68.48 < 30 |only if walking
Enter the building |goto 38.23,73.21 < 10 |walk
talk Lord Saltheril##16144
|tip Inside the building.
turnin Saltheril's Haven##9395 |goto 38.14,73.56
accept The Party Never Ends##9067 |goto 38.14,73.56
step
talk Velendris Whitemorn##15404
accept Lost Armaments##8480 |goto 36.36,66.78
step
talk Captain Kelisendra##15921
turnin Captain Kelisendra's Lost Rutters##8887 |goto 36.36,66.63
accept Grimscale Pirates!##8886 |goto 36.36,66.63
stickystart "Kill_Wretched_Thugs"
stickystart "Kill_Wretched_Hooligans"
step
click Weapon Container##181107+
|tip They look like wooden crates on the ground and inside the building around this area.
collect 8 Sin'dorei Armaments##22413 |q 8480/1 |goto 32.79,70.50
step
label "Kill_Wretched_Thugs"
kill 5 Wretched Thug##15645 |q 8892/1 |goto 32.79,70.50
step
label "Kill_Wretched_Hooligans"
kill 5 Wretched Hooligan##16162 |q 8892/2 |goto 32.79,70.50
stickystart "Collect_Captain_Kelisendras_Cargo"
step
kill Mmmrrrggglll##15937
|tip He looks like a larger orange murloc that walks along the beach around this area.
collect Ring of Mmmrrrggglll##21770 |q 8885/1 |goto 24.54,72.30
step
label "Collect_Captain_Kelisendras_Cargo"
click Captain Kelisendra's Cargo##180917+
|tip They look like wooden barrels on the ground next to murloc huts around this area.
collect 6 Captain Kelisendra's Cargo##21771 |q 8886/1 |goto 24.79,69.28
step
talk Hathvelion Sungaze##15920
|tip He walks around this area.
turnin The Ring of Mmmrrrggglll##8885 |goto 30.10,58.32
step
talk Captain Kelisendra##15921
turnin Grimscale Pirates!##8886 |goto 36.36,66.61
step
talk Velendris Whitemorn##15404
turnin Lost Armaments##8480 |goto 36.36,66.77
accept Wretched Ringleader##9076 |goto 36.36,66.77
step
Enter the building |goto 32.82,71.08 < 15 |only if walking
kill Aldaron the Reckless##16294
|tip He walks around this area at the top of the building.
collect Aldaron's Head##22487 |q 9076/1 |goto 32.80,69.40
step
talk Velendris Whitemorn##15404
turnin Wretched Ringleader##9076 |goto 36.36,66.77
step
Follow the road |goto 33.13,76.55 < 30 |only if walking
Enter the building |goto 33.86,80.03 < 10 |walk
talk Larianna Riverwind##15398
|tip Inside the building.
turnin The Scorched Grove##9258 |goto 34.06,80.02
accept A Somber Task##8473 |goto 34.06,80.02
stickystart "Kill_Withered_Green_Keepers"
step
kill Old Whitebark##15409
|tip He walks around this area.
accept Old Whitebark's Pendant##8474 |goto 35.08,84.02
|tip You will automatically accept this quest after looting.
step
label "Kill_Withered_Green_Keepers"
kill 10 Withered Green Keeper##15637 |q 8473/1 |goto 34.96,85.03
step
Enter the building |goto 33.87,80.03 < 10 |walk
talk Larianna Riverwind##15398
|tip Inside the building.
turnin A Somber Task##8473 |goto 34.06,80.02
turnin Old Whitebark's Pendant##8474 |goto 34.06,80.02
accept Whitebark's Memory##10166 |goto 34.06,80.02
step
use Old Whitebark's Pendant##28209
kill Whitebark's Spirit##19456
|tip He will eventually surrender.
talk Whitebark's Spirit##19456
turnin Whitebark's Memory##10166 |goto 37.53,86.22
step
talk Magistrix Landra Dawnstrider##16210
accept Missing in the Ghostlands##9144 |goto 44.03,70.76
step
Run up the ramp |goto 43.77,70.74 < 10 |only if walking
talk Ranger Degolien##15939
|tip On the balcony of the building.
turnin Situation at Sunsail Anchorage##8892 |goto 43.35,70.83
accept Farstrider Retreat##9359 |goto 43.35,70.83
step
talk Halis Dawnstrider##16444
buy Bundle of Fireworks##22777 |q 9067/3 |goto 44.04,70.35
step
talk Velan Brightoak##15417
turnin Pelt Collection##8491 |goto 44.72,69.63
step
talk Ranger Sareyn##15942
turnin Ranger Sareyn##9358 |goto 46.93,71.79
accept Defending Fairbreeze Village##9252 |goto 46.93,71.79
stickystart "Kill_Darkwraiths"
step
kill 4 Rotlimb Marauder##15658 |q 9252/1 |goto 51.00,79.18
step
label "Kill_Darkwraiths"
kill 4 Darkwraith##15657 |q 9252/2 |goto 51.00,79.18
step
talk Apprentice Mirveda##15402
turnin The Wayward Apprentice##9254 |goto 54.28,70.97
accept Corrupted Soil##8487 |goto 54.28,70.97
step
click Tainted Soil Sample##180921+
|tip They look like green glowing piles of dirt on the ground around this area.
collect 8 Tainted Soil Sample##20771 |q 8487/1 |goto 51.48,69.91
step
talk Apprentice Mirveda##15402
turnin Corrupted Soil##8487 |goto 54.28,70.97
step
Watch the dialogue
talk Apprentice Mirveda##15402
accept Unexpected Results##8488 |goto 54.28,70.97
step
Kill the enemies that attack
kill Gharsul the Remorseless##15958 |q 8488/2 |goto 53.88,70.17
step
talk Apprentice Mirveda##15402
turnin Unexpected Results##8488 |goto 54.28,70.97
accept Research Notes##9255 |goto 54.28,70.97
step
Follow the path |goto 48.70,74.89 < 20 |only if walking
talk Ranger Sareyn##15942
turnin Defending Fairbreeze Village##9252 |goto 46.93,71.79
accept Runewarden Deryan##9253 |goto 46.93,71.79
step
talk Magistrix Landra Dawnstrider##16210
turnin Research Notes##9255 |goto 44.03,70.76
step
Follow the path |goto 56.65,49.61 < 20 |only if walking
Follow the path |goto Silvermoon City/0 73.49,59.26 < 20 |only if walking
Enter the building |goto Silvermoon City/0 78.19,59.29 < 10 |walk
talk Vinemaster Suntouched##16442
|tip Inside the building.
buy Suntouched Special Reserve##22775 |q 9067/1 |goto Silvermoon City/0 79.5,58.5
step
Leave the building |goto 78.22,59.30 < 10 |walk
Follow the path |goto 75.46,59.23 < 20 |only if walking
Follow the path |goto 72.47,85.17 < 20 |only if walking
Enter the building |goto Eversong Woods/0 60.32,61.39 < 10 |walk
talk Zalene Firstlight##16443
|tip Inside the building.
buy Springpaw Appetizers##22776 |q 9067/2 |goto Eversong Woods/0 60.41,62.46
step
talk Lieutenant Dawnrunner##15399
|tip Inside the building.
turnin Farstrider Retreat##9359 |goto 60.32,62.76
accept Amani Encroachment##8476 |goto 60.32,62.76
step
talk Arathel Sunforge##15400
|tip On a balcony inside the building.
accept The Spearcrafter's Hammer##8477 |goto 59.53,62.60
step
Run up the ramp |goto 59.41,62.46 < 5 |only if walking
talk Magister Duskwither##15951
|tip Upstairs on the balcony of the building.
accept The Magister's Apprentice##8888 |goto 60.31,61.38
step
Follow the road |goto 63.91,58.56 < 30 |only if walking
talk Apprentice Loralthalis##15924
|tip She walks around this small area.
turnin The Magister's Apprentice##8888 |goto 67.80,56.55
accept Deactivating the Spire##8889 |goto 67.80,56.55
accept Where's Wyllithen?##9394 |goto 67.80,56.55
step
Run up the stairs |goto 68.49,52.37 < 15 |only if walking
click Orb of Translocation##184500 |goto 68.92,51.97
Teleport Up to the Building |goto 67.5,52.1 < 20 |noway |c |q 8889
step
click Duskwither Spire Power Source##180920
|tip On the floating platform.
Deactivate the First Power Source |q 8889/1 |goto 68.95,51.93
step
click Duskwither Spire Power Source##180920
|tip Upstairs inside the floating building.
Deactivate the Second Power Source |q 8889/2 |goto 68.96,51.97
step
click Magister Duskwither's Journal##181011
|tip Upstairs inside the floating building.
accept Abandoned Investigations##8891 |goto 69.24,52.10
step
click Duskwither Spire Power Source##180920
|tip On the floating platform.
Deactivate the Third Power Source |q 8889/3 |goto 69.65,53.33
step
click Orb of Translocation##184500 |goto 69.63,53.42
|tip On the floating platform.
Teleport to the Ground |goto 68.90,52.00 < 20 |noway |c |q 8889
step
talk Groundskeeper Wyllithen##15969
turnin Where's Wyllithen?##9394 |goto 68.71,46.95
accept Cleaning up the Grounds##8894 |goto 68.71,46.95
stickystart "Kill_Ether_Fiends"
step
kill 6 Mana Serpent##15966 |q 8894/1 |goto 69.17,47.84
step
label "Kill_Ether_Fiends"
kill 6 Ether Fiend##15967 |q 8894/2 |goto 69.17,47.84
step
talk Groundskeeper Wyllithen##15969
turnin Cleaning up the Grounds##8894 |goto 68.71,46.95
step
Follow the road up |goto 67.56,48.05 < 20 |only if walking
talk Apprentice Loralthalis##15924
|tip She walks around this small area.
turnin Deactivating the Spire##8889 |goto 67.80,56.55
accept Word from the Spire##8890 |goto 67.80,56.55
step
Enter the building |goto 60.32,61.43 < 10 |walk
Run up the ramp |goto 59.40,62.50 < 5 |only if walking
talk Magister Duskwither##15951
|tip Upstairs on the balcony of the building.
turnin Word from the Spire##8890 |goto 60.31,61.38
turnin Abandoned Investigations##8891 |goto 60.31,61.38
stickystart "Kill_Amani_Berserkers"
stickystart "Kill_Amani_Axe_Throwers"
step
Follow the path up |goto 61.07,64.16 < 15 |only if walking
kill Spearcrafter Otembe##15408
collect Otembe's Hammer##20759 |q 8477/1 |goto 70.09,72.28
step
talk Ven'jashi##15406
accept Zul'Marosh##8479 |goto 70.50,72.33
step
Enter the building |goto 62.55,79.69 < 10 |walk
kill Chieftain Zul'Marosh##15407
|tip Upstairs on top of the building.
collect Chieftain Zul'Marosh's Head##20760 |q 8479/1 |goto 62.51,79.68
accept Amani Invasion##9360 |goto 62.51,79.68
|tip You will automatically accept this quest after looting.
step
talk Ven'jashi##15406
turnin Zul'Marosh##8479 |goto 70.50,72.33
step
label "Kill_Amani_Berserkers"
kill 5 Amani Berserker##15643 |q 8476/1 |goto 69.48,74.13
step
label "Kill_Amani_Axe_Throwers"
kill 5 Amani Axe Thrower##15641 |q 8476/2 |goto 69.48,74.13
step
Enter the building |goto 60.46,63.84 < 10 |only if walking
talk Lieutenant Dawnrunner##15399
|tip Inside the building.
turnin Amani Encroachment##8476 |goto 60.32,62.77
turnin Amani Invasion##9360 |goto 60.32,62.77
accept Warning Fairbreeze Village##9363 |goto 60.32,62.77
step
talk Arathel Sunforge##15400
|tip On the balcony of the building.
turnin The Spearcrafter's Hammer##8477 |goto 59.52,62.60
step
Run up the ramp |goto 43.77,70.71 < 10 |only if walking
talk Ranger Degolien##15939
|tip On the balcony of the building.
turnin Warning Fairbreeze Village##9363 |goto 43.35,70.83
step
Enter the building |goto 38.23,73.22 < 10 |walk
talk Lord Saltheril##16144
|tip Inside the building.
turnin The Party Never Ends##9067 |goto 38.14,73.56
step
Follow the road |goto 44.01,69.51 < 30 |only if walking
Follow the road |goto 49.38,77.94 < 30 |only if walking
Follow the path |goto 48.34,82.83 < 30 |only if walking
talk Runewarden Deryan##16362
turnin Runewarden Deryan##9253 |goto 44.20,85.47
accept Powering our Defenses##8490 |goto 44.20,85.47
step
use the Infused Crystal##22693
Kill the enemies that attack
|tip Protect the Infused Crystal.
|tip It appears on the ground next to you.
|tip This will take 1 minute.
Energize the Runestone |q 8490/1 |goto 55.19,84.23
step
talk Runewarden Deryan##16362
turnin Powering our Defenses##8490 |goto 44.20,85.47
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\Silverpine Forest (10-60)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Silverpine 11-20",
next="Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\Hillsbrad Foothills (15-60)",
description="To complete this guide, you will be required to complete every quest chapter in Silverpine Forest.",
condition_suggested=function() return level >= 10 and level <= 60 and not completedq(27746) end,
condition_end=function() return completedq(27746) end,
startlevel=10,
endlevel=60,
},[[
step
talk Grand Executor Mortuus##44615
turnin Warchief's Command: Silverpine Forest!##26964 |goto Silverpine Forest/0 57.4,10.1 |only if havequest(26964) or completedq(26964)
accept The Warchief Cometh##26965 |goto Silverpine Forest/0 57.41,10.14
step
talk Bat Handler Maggotbreath##44825
fpath Forsaken High Command |goto 57.90,8.70
step
Watch the dialogue
Stand by for Warchief Garrosh Hellscream's Arrival |q 26965/1 |goto 57.75,10.33
step
talk Grand Executor Mortuus##44615
turnin The Warchief Cometh##26965 |goto 57.41,10.14
accept The Gilneas Liberation Front##26989 |goto 57.41,10.14
step
talk High Apothecary Shana T'veen##44784
accept Guts and Gore##26995 |goto 56.26,8.40
step
talk Apothecary Witherbloom##44778
accept Agony Abounds##26992 |goto 56.76,9.19
stickystart "Collect_Clean_Beast_Guts"
stickystart "Collect_Ferocious_Doomweed"
step
kill 10 Worgen Renegade##44793 |q 26989/1 |goto 56.69,13.51
step
label "Collect_Clean_Beast_Guts"
Kill enemies around this area
|tip Only Ferocious Grizzled Bears and Worgs will drop this quest item.
collect 6 "Clean" Beast Guts##60742 |q 26995/1 |goto 58.00,15.50
step
label "Collect_Ferocious_Doomweed"
click Ferocious Doomweed##205099+
|tip They look like purple and blue spiky plants on the ground around this area.
collect 8 Ferocious Doomweed##60741 |q 26992/1 |goto 58.00,15.50
step
talk Grand Executor Mortuus##44615
turnin The Gilneas Liberation Front##26989 |goto 57.41,10.12
step
talk High Apothecary Shana T'veen##44784
turnin Guts and Gore##26995 |goto 56.27,8.41
step
talk Apothecary Witherbloom##44778
turnin Agony Abounds##26992 |goto 56.77,9.19
step
talk High Apothecary Shana T'veen##44784
accept Iterating Upon Success##26998 |goto 56.27,8.41
step
talk Bat Handler Maggotbreath##44825
Tell him _"I need to take a bat to the Dawning Isles."_
Requisition a Bat from Bat Handler Maggotbreath |q 26998/1 |goto 57.91,8.70
step
Kill Vile Fin enemies around this area
|tip Use the "Blight Concoction" ability on your action bar.
|tip They are on the ground around this area as you fly.
Slay #50# Vile Fin Murlocs |q 26998/2 |goto 76.85,19.66
step
Return to Forsaken High Command |goto 57.90,8.95 < 20 |c |notravel |q 26998
step
talk High Apothecary Shana T'veen##44784
turnin Iterating Upon Success##26998 |goto 56.27,8.41
step
talk Deathstalker Commander Belmont##44789
accept Dangerous Intentions##27039 |goto 58.08,8.98
step
click Abandoned Outhouse##205143
turnin Dangerous Intentions##27039 |goto 53.89,12.96
accept Waiting to Exsanguinate##27045 |goto 53.89,12.96
step
Enter the building |goto 53.40,13.26 < 10 |walk
clicknpc Armoire##44894
|tip Upstairs inside the building.
Watch the dialogue
|tip This quest objective will not complete if you cancel the cinematic.
Learn of Darius Crowley's Plans |q 27045/1 |goto 53.30,12.56
step
Follow the path |goto 55.14,12.18 < 30 |only if walking
talk Deathstalker Commander Belmont##44789
turnin Waiting to Exsanguinate##27045 |goto 58.08,8.99
accept Belmont's Report##27056 |goto 58.08,8.99
step
talk Lady Sylvanas Windrunner##44365
turnin Belmont's Report##27056 |goto 57.37,10.19
accept The Warchief's Fleet##27065 |goto 57.37,10.19
step
Follow the road |goto 55.87,14.58 < 30 |only if walking
talk Franny Mertz##50463
fpath Forsaken Rear Guard |goto 45.93,21.87
step
talk Admiral Hatchet##44916
turnin The Warchief's Fleet##27065 |goto 44.01,21.35
accept Steel Thunder##27069 |goto 44.01,21.35
step
talk Warlord Torok##44917
accept Give 'em Hell!##27073 |goto 44.00,21.28
step
talk Apothecary Wormcrud##44912
accept Playing Dirty##27082 |goto 44.80,20.91
step
Enter the building |goto 44.42,20.73 < 10 |walk
talk Commander Hickley##45496
|tip Inside the building.
home Forsaken Rear Guard |goto 44.35,20.33 |q 27073
step
Kill enemies around this area
collect 8 Diseased Organ##60793 |q 27082/1 |goto 43.08,20.68
step
talk Admiral Hatchet##44916
Tell her _"I seem to have misplaced my sea pup, admiral. Do you have another that you could lend me?"_
Gain an Orc Sea Pup Follower |havebuff 236452 |goto 44.01,21.35 |q 27069
stickystart "Slay_Bloodfang_Scavengers"
step
click Sea Dog Crate##44915+
|tip They look like small wooden boxes with the Horde symbol on them sitting on the ground around this area.
Recover #5# Sea Dog Crates |q 27069/1 |goto 38.69,27.82
step
label "Slay_Bloodfang_Scavengers"
kill 10 Bloodfang Scavenger##44549 |q 27073/1 |goto 39.16,30.08
step
talk Warlord Torok##44917
turnin Give 'em Hell!##27073 |goto 44.00,21.29
step
talk Admiral Hatchet##44916
turnin Steel Thunder##27069 |goto 44.02,21.35
accept Lost in the Darkness##27093 |goto 44.02,21.35
step
talk Warlord Torok##44917
accept Skitterweb Menace##27095 |goto 44.00,21.28
step
talk Apothecary Wormcrud##44912
turnin Playing Dirty##27082 |goto 44.80,20.91
accept It's Only Poisonous if You Ingest It##27088 |goto 44.80,20.91
step
Follow the path |goto 41.87,23.43 < 30 |only if walking
use the Mutant Bush Chicken Cage##60808
|tip Use it on a Forest Ettin around this area.
|tip They look like large brutes that walk around this area.
|tip They will appear on your minimap as yellow dots.
kill Forest Ettin##44367 |q 27088/1 |goto 41.95,29.92
stickystart "Rescue_Orc_Sea_Dogs"
step
Follow the path |goto 36.52,20.87 < 30 |only if walking
Kill Skitterweb enemies around this area
Slay #12# Skitterweb Spiders |q 27095/1 |goto 35.37,16.16
step
Click the Complete Quest Box:
turnin Skitterweb Menace##27095
accept Deeper into Darkness##27094
step
label "Rescue_Orc_Sea_Dogs"
kill Webbed Victim##44941+
|tip They look like squirming white cocoons on the ground around this area.
Rescue #6# Orc Sea Dogs |q 27093/1 |goto 35.37,16.16
step
Enter the mine |goto 35.65,13.56 < 10 |walk
Follow the path |goto 34.88,11.18 < 5 |walk
Continue following the path |goto 34.23,9.51 < 5 |walk
Continue following the path |goto 34.76,7.79 < 5 |walk
kill Skitterweb Matriarch##44906 |q 27094/1 |goto 36.02,8.82
|tip It looks like a huge spider hanging from the ceiling inside the mine.
step
talk Apothecary Wormcrud##44912
turnin It's Only Poisonous if You Ingest It##27088 |goto 44.80,20.91
step
talk Warlord Torok##44917
turnin Deeper into Darkness##27094 |goto 44.00,21.29
step
talk Admiral Hatchet##44916
turnin Lost in the Darkness##27093 |goto 44.02,21.35
accept Orcs are in Order##27096 |goto 44.02,21.35
step
talk Lady Sylvanas Windrunner##44365
turnin Orcs are in Order##27096 |goto 57.36,10.20
accept Rise, Forsaken##27097 |goto 57.36,10.20
step
Follow the path |goto 65.07,19.73 < 20 |only if walking
Follow the path |goto 64.85,22.82 < 15 |only if walking
kill Hillsbrad Refugee##44954+
Raise #15# Forsaken |q 27097/1 |goto 65.59,25.79
step
Click the Complete Quest Box:
turnin Rise, Forsaken##27097
accept No Escape##27099
step
Enter the building |goto 65.74,24.53 < 15 |c |q 27099
step
Run up the stairs |goto 65.68,23.38 < 5 |walk
Watch the dialogue
|tip Upstairs inside the buildilng.
|tip Don't cancel the cinematic.
Find the Human Leaders |q 27099/1 |goto 65.74,24.46
step
Return to Forsaken High Command |goto 57.54,10.65 < 20 |c |q 27099 |notravel
step
talk Lady Sylvanas Windrunner##44365
turnin No Escape##27099 |goto 57.37,10.19
accept Lordaeron##27098 |goto 57.37,10.19
step
Watch the dialogue
Ride with Lady Sylvanas Windrunner to the Sepulcher |q 27098/1 |goto 44.94,41.74
step
talk Lady Sylvanas Windrunner##44365
turnin Lordaeron##27098 |goto 44.90,41.65
accept Honor the Dead##27180 |goto 44.90,41.65
step
talk Karos Razok##2226
fpath The Sepulcher |goto 45.40,42.49
step
talk Warlord Torok##44917
accept Hair of the Dog##27226 |goto 45.75,41.91
step
talk Admiral Hatchet##44916
accept Reinforcements from Fenris##27231 |goto 45.81,41.95
step
talk Innkeeper Bates##6739
|tip Inside the building.
home The Sepulcher |goto 46.41,42.69 |q 27746 |future
stickystart "Slay_Hillsbrad_Worgen"
step
Follow the path |goto 48.06,39.06 < 30 |only if walking
Follow the path |goto 50.76,34.61 < 15 |only if walking
use the Barrel of Explosive Ale##60870
|tip Use it on Orc Sea Dogs around this area.
|tip They look like Orcs with orange shirts laying on the ground around this area.
Rouse #8# Orc Sea Dogs |q 27226/1 |goto 54.40,34.23
step
label "Slay_Hillsbrad_Worgen"
kill 10 Hillsbrad Worgen##45254 |q 27231/1 |goto 54.40,34.23
step
Follow the path |goto 58.66,35.34 < 20 |only if walking
click Horde Communication Panel##205350
turnin Reinforcements from Fenris##27231 |goto 59.18,34.20
accept The Waters Run Red...##27232 |goto 59.18,34.20
step
clicknpc Horde Cannon##45263
Enter the Turret |invehicle |goto 59.79,33.78 |q 27232
step
kill Hillsbrad Worgen##45270+
|tip They swim across the water from the east.
|tip Use the ability on your action bar.
Slay #50# Hillsbrad Worgen |q 27232/1 |goto 63.35,33.59
step
Follow the path |goto 58.63,35.51 < 20 |only if walking
Follow the road |goto 50.67,34.70 < 20 |only if walking
Follow the path |goto 48.24,38.98 < 30 |only if walking
talk Warlord Torok##44917
turnin Hair of the Dog##27226 |goto 45.75,41.92
step
talk Admiral Hatchet##44916
turnin The Waters Run Red...##27232 |goto 45.81,41.95
stickystart "Collect_Forsaken_Insignias"
step
kill Bloodfang Stalker##45195+
accept Excising the Taint##27181 |goto 47.30,48.65
|tip You will eventually automatically accept this quest.
step
kill 10 Bloodfang Stalker##45195 |q 27181/1 |goto 46.85,51.13
step
Click the Complete Quest Box:
turnin Excising the Taint##27181
accept Seek and Destroy##27193
step
label "Collect_Forsaken_Insignias"
clicknpc Veteran Forsaken Trooper##45197+
|tip They look like Undead corpses laying on the ground around this area.
collect 6 Forsaken Insignia##60862 |q 27180/1 |goto 47.55,50.49
step
Enter the building |goto 46.10,54.45 < 15 |walk
kill Caretaker Smithers##45219
|tip He will jump down and attack you when you walk into the main room inside the building.
collect Smithers' Logbook##60867 |q 27193/1 |goto 45.87,54.38
step
Click the Complete Quest Box:
turnin Seek and Destroy##27193
accept Cornered and Crushed!##27194
step
Follow the path |goto 49.83,53.21 < 20 |only if walking
Follow the path up |goto 55.43,48.54 < 20 |only if walking
talk Master Forteski##45228
turnin Cornered and Crushed!##27194 |goto 55.89,46.35
accept Nowhere to Run##27195 |goto 55.89,46.35
step
Enter the mine |goto 56.55,46.03 < 15 |walk
Watch the dialogue
|tip Follow Master Forteski as he walks inside the mine.
Escort Master Forteski Through the Deep Elem Mine |q 27195/1 |goto 58.14,44.93
step
talk Lady Sylvanas Windrunner##44365
turnin Honor the Dead##27180 |goto 44.90,41.65
turnin Nowhere to Run##27195 |goto 44.90,41.65
accept To Forsaken Forward Command##27290 |goto 44.90,41.65
step
Fly to Forsaken Forward Command |goto Ruins of Gilneas/0 57.33,18.68 < 10 |c |q 27290 |notravel
step
talk Deathstalker Commander Belmont##45312
|tip He walks around this area.
turnin To Forsaken Forward Command##27290 |goto 57.47,18.89
accept In Time, All Will Be Revealed##27342 |goto 57.47,18.89
step
talk Forward Commander Onslaught##45315
accept Losing Ground##27333 |goto 57.55,18.24
accept The F.C.D.##27345 |goto 57.55,18.24
step
talk Bat Handler Doomair##45479
fpath Forsaken Forward Command |goto 57.28,17.74
stickystart "Slay_Worgen_Rebels"
step
kill Korok the Colossus##45301
|tip It looks like a big brown giant that walks around this area.
|tip You may need help with this.
accept Korok the Colossus##27322 |goto 50.62,17.67
|tip You will automatically accept this quest after looting.
stickystop "Slay_Worgen_Rebels"
step
click Forsaken Communication Device##205363
collect Forsaken Communication Device##60953 |q 27345/1 |goto 45.76,21.96
step
label "Slay_Worgen_Rebels"
kill 12 Worgen Rebel##45292 |q 27333/1 |goto 53.40,20.56
step
talk Forward Commander Onslaught##45315
turnin Losing Ground##27333 |goto 57.55,18.24
turnin The F.C.D.##27345 |goto 57.55,18.24
turnin Korok the Colossus##27322 |goto 57.55,18.24
step
Follow the path down |goto 56.60,20.04 < 15 |only if walking
Follow the path up |goto 59.35,23.86 < 10 |only if walking
click Wolfsbane##205367+
|tip They look like small green plants with purple berries at the base of trees around this area.
collect 6 Wolfsbane##60958 |q 27342/1 |goto 63.77,26.53
step
Follow the path |goto 59.65,25.76 < 20 |only if walking
Follow the path up |goto 57.91,21.79 < 20 |only if walking
talk Deathstalker Commander Belmont##45312
|tip He walks around this area.
turnin In Time, All Will Be Revealed##27342 |goto 57.47,18.89
step
talk Forward Commander Onslaught##45315
accept Break in Communications: Dreadwatch Outpost##27349 |goto 57.55,18.24
step
Investigate Dreadwatch Outpost |q 27349/1 |goto 52.0,32.1
step
Click the Complete Quest Box:
turnin Break in Communications: Dreadwatch Outpost##27349
accept Break in Communications: Rutsak's Guard##27350
step
Follow the path |goto 54.29,34.83 < 15 |only if walking
Enter the building |goto 65.69,34.45 < 10 |walk
talk Captain Rutsak##45389
|tip Inside the building.
turnin Break in Communications: Rutsak's Guard##27350 |goto 65.64,34.11
accept Vengeance for Our Soldiers##27360 |goto 65.64,34.11
accept On Whose Orders?##27364 |goto 65.64,34.11
|tip You will accept this quest automatically.
stickystart "Slay_7th_Legion_Submariners"
step
Follow the path |goto 61.81,40.07 < 20 |only if walking
kill Master Sergeant Pietro Zaren##45405
collect Orders from High Command##60977 |q 27364/1 |goto 58.87,47.45
step
Click the Complete Quest Box:
turnin On Whose Orders?##27364
accept What Tomorrow Brings##27401
step
Follow the path |goto 56.18,44.60 < 5 |only if walking
click 7th Legion Telescope##9146
Watch the dialogue
|tip Don't cancel the cinematic.
Use the 7th Legion Telescope to Scout the Harbor |q 27401/1 |goto 54.91,44.28
step
Click the Complete Quest Box:
turnin What Tomorrow Brings##27401
accept Fall Back!##27405
step
label "Slay_7th_Legion_Submariners"
kill 10 7th Legion Submariner##45403 |q 27360/1 |goto 57.57,45.93
step
Jump down here |goto 57.07,41.00 < 10 |only if walking
Follow the path up |goto 61.05,37.44 < 20 |only if walking
Enter the building |goto 65.69,34.45 < 10 |walk
talk Captain Rutsak##45389
|tip Inside the building.
turnin Vengeance for Our Soldiers##27360 |goto 65.64,34.11
step
talk Deathstalker Commander Belmont##45312
turnin Fall Back!##27405 |goto 72.95,30.11
accept A Man Named Godfrey##27406 |goto 72.95,30.11
step
accept Resistance is Futile##27423 |goto 73.84,33.50
|tip You will accept this quest automatically.
step
Kill enemies around this area
Slay #20# Worgen Combatants |q 27423/1 |goto 74.79,46.09
step
_Next to you:_
talk Deathstalker Commander Belmont##45474
turnin Resistance is Futile##27423
step
Follow the path up |goto 75.83,53.46 < 20 |only if walking
Follow the road |goto 75.90,63.45 < 20 |only if walking
Jump down here |goto 79.67,68.26 < 10 |only if walking
Jump down carefully here |goto 80.11,70.32 < 10 |only if walking
clicknpc Lord Godfrey##44369
Find Lord Vincent Godfrey's Corpse |q 27406/1 |goto 79.72,75.68
step
_Next to you:_
talk Deathstalker Commander Belmont##45474
turnin A Man Named Godfrey##27406
step
talk Deathstalker Commander Belmont##45312
accept The Great Escape##27438 |goto 79.75,75.75
step
Watch the dialogue
Fly with the Valkyrie |invehicle |goto 79.70,75.67 |q 27438
step
Watch the dialogue
Escape the Ruins of Gilneas |q 27438/1 |goto Silverpine Forest/0 51.82,66.60 < 20 |notravel
step
talk Lady Sylvanas Windrunner##45525
turnin The Great Escape##27438 |goto Silverpine Forest/0 51.78,66.07
accept Rise, Godfrey##27472 |goto Silverpine Forest/0 51.78,66.07
step
Watch the dialogue
|tip Follow Lady Sylvanas Windrunner as she walks.
Witness Lord Godfrey Be Reborn |q 27472/1 |goto 51.78,66.07
step
talk Lady Sylvanas Windrunner##45617
turnin Rise, Godfrey##27472 |goto 51.90,65.01
accept Breaking the Barrier##27474 |goto 51.90,65.01
step
talk Daschla##45626
accept Unyielding Servitors##27475 |goto 51.90,64.70
step
talk Steven Stutzka##46552
fpath The Forsaken Front |goto 50.87,63.62
stickystart "Collect_Servitor_Cores"
step
Run up the stairs |goto 62.01,64.16 < 15 |only if walking
Enter the building |goto 62.87,64.02 < 10 |walk
click Ambermill Codex##205534
|tip Inside the building.
collect Ambermill Codex##61306 |q 27474/1 |goto 63.48,64.25
step
label "Collect_Servitor_Cores"
kill Elemental Servitor##45711+
collect 6 Servitor Core##61307 |q 27475/1 |goto 59.78,64.30
step
talk Daschla##45626
turnin Unyielding Servitors##27475 |goto 51.90,64.70
step
talk Lady Sylvanas Windrunner##45617
turnin Breaking the Barrier##27474 |goto 51.90,65.01
accept Dalar Dawnweaver##27476 |goto 51.90,65.01
step
talk Dalar Dawnweaver##1938
|tip Downstairs inside the building.
turnin Dalar Dawnweaver##27476 |goto 47.08,43.22
accept Relios the Relic Keeper##27478 |goto 47.08,43.22
accept Practical Vengeance##27483 |goto 47.08,43.22
step
clicknpc Portal to Dalaran Crater##45731 |goto 47.25,43.37
Teleport to Dalaran Crater |goto Hillsbrad Foothills/0 30.27,36.64 < 10 |c |noway |q 27483
step
kill Arcane Remnant##45728+
accept Ley Energies##27480 |goto Hillsbrad Foothills/0 29.80,37.05
|tip You will eventually automatically accept this quest after looting.
step
Follow the path up |goto 30.80,37.67 < 10 |only if walking
kill Arcane Remnant##45728+
collect 8 Arcane Remnant##61311 |q 27480/1 |goto 31.79,37.39
stickystart "Slay_Dalaran_Humans"
step
Follow the path up |goto 32.42,38.64 < 10 |only if walking
kill Relios the Relic Keeper##45734
|tip He walks around this area.
|tip He will appear on your minimap as a yellow dot.
collect Dalaran Archmage's Signet Ring##61312 |q 27478/1 |goto 33.81,42.98
step
label "Slay_Dalaran_Humans"
Kill Dalaran enemies around this area
Slay #12# Dalaran Humans |q 27483/1 |goto 31.05,43.47
step
Follow the path down |goto 33.51,38.41 < 10 |only if walking
clicknpc Portal to the Sepulcher##45732 |goto 30.28,36.62
Teleport to the Sepulcher |goto Silverpine Forest/0 47.23,43.35 < 20 |noway |c |q 27478
step
talk Dalar Dawnweaver##1938
|tip Downstairs inside the building.
turnin Relios the Relic Keeper##27478 |goto Silverpine Forest/0 47.08,43.22
accept Only One May Enter##27484 |goto Silverpine Forest/0 47.08,43.22
turnin Practical Vengeance##27483 |goto Silverpine Forest/0 47.08,43.22
turnin Ley Energies##27480 |goto Silverpine Forest/0 47.08,43.22
step
talk Lady Sylvanas Windrunner##45617
turnin Only One May Enter##27484 |goto 51.90,65.01
accept Transdimensional Warfare: Chapter I##27512 |goto 51.90,65.01
step
talk High Warlord Cromush##45631
|tip He walks around this area.
accept A Wolf in Bear's Clothing##27510 |goto 51.77,67.12
step
Follow the road |goto 53.96,68.36 < 20 |only if walking
Continue following the road |goto 55.13,75.85 < 30 |only if walking
kill 10 Inconspicuous Bear##45750 |q 27510/1 |goto 61.51,76.76
step
Follow the path up |goto 60.37,74.86 < 15 |only if walking
Enter the cave |goto 60.27,72.21 < 15 |walk
Follow the path |goto 59.40,70.65 < 10 |walk
Continue following the path |goto 57.36,70.95 < 10 |walk
clicknpc Ambermill Dimensional Portal##45752
|tip Inside the cave.
turnin Transdimensional Warfare: Chapter I##27512 |goto 58.08,69.91
accept Transdimensional Warfare: Chapter II##27513 |goto 58.08,69.91
step
clicknpc Ambermill Dimensional Portal##45752
|tip Inside the cave.
Choose _<Use the Ambermill Dimensional Portal.>_
Enter the Transdimensional Shift |havebuff 252267 |goto 58.08,69.91 |q 27513
step
Kill Ambermill enemies around this area
Slay #20# Ambermill Mages |q 27513/1 |goto 61.77,64.24
step
Click the Complete Quest Box:
turnin Transdimensional Warfare: Chapter II##27513
accept Transdimensional Warfare: Chapter III##27518
step
Watch the dialogue
kill Arcane Fiend##45766+
|tip Archmage Ataeric will spawn Arcane Fiends to attack you.
|tip Kill them next to Archmage Ataeric to destroy his shield.
Destroy the Transdimensional Shield |q 27518/1 |goto 56.64,64.36
step
talk Lady Sylvanas Windrunner##45617
turnin Transdimensional Warfare: Chapter III##27518 |goto 51.90,65.01
accept Taking the Battlefront##27542 |goto 51.90,65.01
step
_Next to you:_
talk Baron Ashbury##45880
accept Of No Consequence##27547
step
_Next to you:_
talk Lord Walden##45879
accept Lessons in Fear##27548
step
_Next to you:_
talk Lord Godfrey##45878
accept Pyrewood's Fall##27550
step
talk High Warlord Cromush##45631
|tip He walks around this area.
turnin A Wolf in Bear's Clothing##27510 |goto 51.77,67.15
accept Warchief's Command: Hillsbrad Foothills!##28089 |goto 51.77,67.15 |only if not havequest(28096) and not completedq(28096)
stickystart "Slay_7th_Legion_Scouts"
stickystart "Rescue_Cowering_Troops"
step
Follow the path |goto 48.40,71.96 < 20 |only if walking
use the Bundle of Torches##61374
Torch the Pyrewood Chapel |q 27550/2 |goto 46.61,72.81
step
use the Bundle of Torches##61374
Torch the Pyrewood Inn |q 27550/1 |goto 45.19,72.03
step
use the Bundle of Torches##61374
Torch the Pyrewood Town Hall |q 27550/3 |goto 44.12,73.14
step
_Next to you:_
talk Lord Godfrey##45878
turnin Pyrewood's Fall##27550
step
label "Slay_7th_Legion_Scouts"
kill 7th Legion Scout##45883+
|tip They look like stealthed Alliance enemies around this area.
Slay #12# 7th Legion Scouts |q 27548/1 |goto 44.23,73.07
step
label "Rescue_Cowering_Troops"
talk Cowering Troop##45910+
|tip They look like frightened friendly Horde NPCs behind and inside buildings around this area.
Rescue #8# Cowering Troops |q 27547/1 |goto 44.58,74.05
step
_Next to you:_
talk Baron Ashbury##45880
turnin Of No Consequence##27547
step
_Next to you:_
talk Lord Walden##45879
turnin Lessons in Fear##27548
accept 7th Legion Battle Plans##27577
step
_Next to you:_
talk Lord Godfrey##45878
accept Sowing Discord##27580
stickystart "Collect_7th_Legion_Battle_Plans"
step
kill General Marstone##45995 |q 27580/1 |goto 42.38,79.11
|tip He walks around this area.
step
_Next to you:_
talk Lord Godfrey##45878
turnin Sowing Discord##27580
step
label "Collect_7th_Legion_Battle_Plans"
kill Dwarven Infantry##45855+
collect 7th Legion Battle Plan##61510 |q 27577/1 |goto 42.58,79.48
step
_Next to you:_
talk Lord Walden##45879
turnin 7th Legion Battle Plans##27577
step
_Next to you:_
talk Lord Godfrey##45878
accept On Her Majesty's Secret Service##27594
step
Watch the dialogue
kill Commander Lorna Crowley##45997
Capture Commander Lorna Crowley |q 27594/1 |goto 50.32,88.29
step
talk Lady Sylvanas Windrunner##45617
turnin On Her Majesty's Secret Service##27594 |goto 51.90,65.01
accept Cities in Dust##27601 |goto 51.90,65.01
step
Watch the dialogue
|tip Follow Lady Sylvanas Windrunner as she walks.
|tip Stay close to her or the quest will fail.
Kill the enemies that attack
|tip They will retreat after being weakened.
Achieve Victory: Final and Absolute |q 27601/1 |goto 45.30,84.99
step
talk Lady Sylvanas Windrunner##46124
turnin Cities in Dust##27601 |goto 45.32,84.47
accept Empire of Dirt##27746 |goto 45.32,84.47
step
Follow the path up |goto 54.62,77.18 < 10 |only if walking
Follow the road |goto 66.06,79.60 < 20 |only if walking
talk High Executor Darthalia##2215
turnin Empire of Dirt##27746 |goto Hillsbrad Foothills/0 29.23,63.35
turnin Warchief's Command: Hillsbrad Foothills!##28089 |goto Hillsbrad Foothills/0 29.23,63.35 |only if havequest(28089) or completedq(28089)
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\The Hinterlands (30-60)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Hinterlands 30-32",
next="Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\Western Plaguelands (35-60)",
condition_suggested=function() return level >= 35 and level <= 60 and not completedq(28508) end,
startlevel=30,
endlevel=60,
},[[
step
Enter the tunnel |goto Arathi Highlands/0 37.00,29.38 < 15 |only if walking
Leave the tunnel |goto The Hinterlands/0 26.12,69.78 < 15 |only if walking
Follow the path |goto The Hinterlands/0 31.72,62.01 < 30 |only if walking
talk Kellen Kuhn##43573
fpath Hiri'watha Research Station |goto The Hinterlands/0 32.45,58.07
step
Follow the road |goto 35.38,57.04 < 30 |only if walking
Continue following the road |goto 48.60,44.48 < 30 |only if walking
Continue following the road |goto 61.38,53.22 < 30 |only if walking
Follow the path down |goto 70.78,64.26 < 30 |only if walking
Follow the path down |goto 72.82,68.95 < 15 |only if walking
Follow the path |goto 77.00,77.66 < 20 |only if walking
Follow the path |goto 79.84,80.99 < 15 |only if walking
talk Gorkas##4314
fpath Revantusk Village |goto 81.70,81.75
step
talk Katoom the Angler##14740
accept Gammerita, Mon!##26210 |goto 80.33,81.53
accept Snapjaws, Mon!##26211 |goto 80.33,81.53
step
Enter the building |goto 78.54,80.72 < 10 |walk
talk Lard##14731
|tip Inside the building.
accept Lard Lost His Lunch##26212 |goto 78.14,81.38
step
talk Lard##14731
|tip Inside the building.
home Revantusk Village |goto 78.14,81.38 |q 26369 |future
step
talk Elder Torntusk##42613
|tip Upstairs inside the building.
turnin Revantusk Village##26430 |goto 78.17,81.31
accept The Savage Dwarves##26238 |goto 78.17,81.31
accept Thornar Thunderclash##26263 |goto 78.17,81.31
step
talk Huntsman Markhor##14741
accept Stalking the Stalkers##26223 |goto 79.16,79.53
step
talk Mystic Yayo'jin##14739
|tip She walks around inside the building.
accept Stomp To My Beat##26240 |goto 78.80,78.24
step
talk Grognard##42464
accept Pupellyverbos Port##26225 |goto 77.30,79.98
stickystart "Slay_Saltwater_Snapjaws"
stickystart "Collect_Pupellyverbos_Ports"
step
kill Gammerita##7977
|tip It looks like a large blue turtle that walks around this area.
|tip It will appear on your minimap as a yellow dot.
collect Katoom's Best Lure##19023 |q 26210/1 |goto 75.95,70.76
step
click Lard's Picnic Basket##179910
kill Vilebranch Kidnapper##14748+
collect Lard's Lunch##19034 |q 26212/1 |goto 84.46,41.22
step
label "Slay_Saltwater_Snapjaws"
kill 10 Saltwater Snapjaw##2505 |q 26211/1 |goto 80.66,55.72
step
label "Collect_Pupellyverbos_Ports"
click Pupellyverbos Port##2068+
|tip They look like small dark blue vials of liquid on the ground around this area.
collect 12 Pupellyverbos Port##3900 |q 26225/1 |goto 80.66,55.72
You can find more around [76.94,76.25]
step
talk Lard##14731
|tip Inside the building.
turnin Lard Lost His Lunch##26212 |goto 78.14,81.38
step
talk Katoom the Angler##14740
turnin Gammerita, Mon!##26210 |goto 80.33,81.53
turnin Snapjaws, Mon!##26211 |goto 80.33,81.53
step
talk Grognard##42464
turnin Pupellyverbos Port##26225 |goto 77.30,79.98
step
Follow the path up |goto 76.04,75.98 < 20 |only if walking
Follow the path |goto 72.78,68.81 < 15 |only if walking
Continue following the path |goto 72.24,66.06 < 20 |only if walking
Continue following the path |goto 70.50,63.48 < 20 |only if walking
kill 8 Silvermane Stalker##2926 |q 26223/1 |goto 69.96,58.59
stickystart "Slay_Wildhammers"
stickystart "Bolster_Revantusk_Warriors"
step
Follow the path |goto 70.64,48.49 < 15 |only if walking
kill Thornar Thunderclash##42610 |q 26263/1 |goto 71.03,48.52
step
label "Slay_Wildhammers"
Kill Wildhammer enemies around this area
Slay #10# Wildhammers |q 26238/1 |goto 72.34,51.50
step
label "Bolster_Revantusk_Warriors"
use the Revantusk War Drums##57920
|tip Use it on Revantusk Stalkers around this area.
|tip They look like friendly Trolls fighting Wildhammer enemies around this area.
Bolster #6# Revantusk Warriors |q 26240/1 |goto 72.34,51.50
step
talk Huntsman Markhor##14741
turnin Stalking the Stalkers##26223 |goto 79.16,79.53
accept Hunt the Savages##26224 |goto 79.16,79.53
step
talk Mystic Yayo'jin##14739
|tip She walks around inside the building.
turnin Stomp To My Beat##26240 |goto 78.80,78.24
step
Enter the building |goto 78.59,80.65 < 10 |only if walking
talk Elder Torntusk##42613
|tip Upstairs inside the building.
turnin The Savage Dwarves##26238 |goto 78.17,81.30
turnin Thornar Thunderclash##26263 |goto 78.17,81.30
accept Skulk Rock Clean-Up##26267 |goto 78.17,81.30
accept Skulk Rock Supplies##26268 |goto 78.17,81.30
step
talk Malcom Fendelson##42612
accept Prime Slime##26283 |goto 78.04,78.11
step
Follow the path up |goto 75.94,75.88 < 20 |only if walking
Follow the path |goto 72.79,68.84 < 15 |only if walking
Continue following the path |goto 72.25,66.19 < 20 |only if walking
Follow the road |goto 65.90,60.70 < 30 |only if walking
kill 10 Savage Owlbeast##2929 |q 26224/1 |goto 59.02,49.31
stickystart "Kill_Jade_Oozes"
step
Follow the path |goto 60.99,44.95 < 30 |only if walking
Continue following the path |goto 59.82,40.17 < 20 |only if walking
Enter the cave |goto 57.44,38.85 < 15 |walk
kill The Direglob##42592
|tip Inside the cave, at the bottom.
collect Direglob Sample##58082 |q 26283/1 |goto 57.49,41.55
step
click Ooze-coated Supply Crate##203989+
|tip They look like small wooden boxes on the ground inside the cave.
collect 5 Ooze-Coated Supply Crate##57989 |q 26268/1 |goto 57.40,41.50
step
label "Kill_Jade_Oozes"
kill 10 Jade Ooze##2656 |q 26267/1 |goto 57.40,41.50
|tip Inside the cave.
|tip You can find more outside the cave.
step
talk Elder Torntusk##42613
|tip Upstairs inside the building.
turnin Skulk Rock Clean-Up##26267 |goto 78.17,81.30
turnin Skulk Rock Supplies##26268 |goto 78.17,81.30
accept The Fall of Jintha'Alor##26432 |goto 78.17,81.30
step
talk Huntsman Markhor##14741
turnin Hunt the Savages##26224 |goto 79.16,79.53
step
talk Malcom Fendelson##42612
turnin Prime Slime##26283 |goto 78.04,78.11
step
Follow the path up |goto 75.97,75.93 < 20 |only if walking
Follow the path |goto 72.79,68.81 < 15 |only if walking
Continue following the path |goto 72.24,66.17 < 20 |only if walking
Continue following the path |goto 68.92,63.62 < 20 |only if walking
Continue following the path |goto 67.33,65.81 < 15 |only if walking
talk Kotonga##42624
accept Faces of Evil##26357 |goto 67.79,66.28
step
talk Primal Torntusk##42642
turnin The Fall of Jintha'Alor##26432 |goto 67.82,66.51
accept Start Taking Back##26306 |goto 67.82,66.51
accept Heads Up##26366 |goto 67.82,66.51
step
talk Eliza Darkgrin##42622
accept All That Skitters##26310 |goto 67.65,66.60
stickystart "Burn_Tiki_Masks"
stickystart "Collect_Skittering_Spiderlings"
stickystart "Slay_Vilebranch_Headhunters"
stickystart "Slay_Vilebranch_Witch_Doctors"
step
Run up the stairs |goto 66.68,66.80 < 15 |only if walking
Run up the stairs |goto 67.93,69.14 < 15 |only if walking
Follow the path |goto 65.34,70.10 < 15 |only if walking
kill Umboda Three-Heads##42724
collect Umboda's Head##58236 |q 26366/1 |goto 65.15,64.94
step
label "Burn_Tiki_Masks"
use the Tiki Torch##58209
|tip Use it next to tiki masks.
|tip They look like big wooden faces hanging on the walls around this area.
Burn #8# Tiki Masks |q 26357/1 |goto 64.86,65.18
step
label "Collect_Skittering_Spiderlings"
clicknpc Skittering Spiderling##42689+
|tip They look like tiny spiders on the ground around this area.
collect 8 Skittering Spiderling##58120 |q 26310/1 |goto 66.44,70.12
step
label "Slay_Vilebranch_Headhunters"
kill 5 Vilebranch Headhunter##2641 |q 26306/1 |goto 66.44,70.12
step
label "Slay_Vilebranch_Witch_Doctors"
kill 5 Vilebranch Witch Doctor##2640 |q 26306/2 |goto 66.44,70.12
step
Jump down and follow the path |goto 67.28,65.78 < 15 |only if walking
talk Eliza Darkgrin##42622
turnin All That Skitters##26310 |goto 67.65,66.60
accept Dark Vessels##26309 |goto 67.65,66.60
step
talk Primal Torntusk##42642
turnin Start Taking Back##26306 |goto 67.82,66.51
accept Death to the Vilebranch##26307 |goto 67.82,66.51
turnin Heads Up##26366 |goto 67.82,66.51
step
talk Kotonga##42624
turnin Faces of Evil##26357 |goto 67.79,66.28
stickystart "Slay_Vilebranch_Shadowcaster"
step
Run up the stairs |goto 66.70,66.80 < 15 |only if walking
Run up the stairs |goto 67.91,69.13 < 15 |only if walking
Follow the path |goto 65.34,70.10 < 15 |only if walking
Run up the stairs |goto 65.05,68.95 < 15 |only if walking
kill 5 Vilebranch Berserker##2643 |q 26307/1 |goto 64.22,71.66
step
label "Slay_Vilebranch_Shadowcaster"
kill Vilebranch Shadowcaster##2642 |q 26307/2 |goto 64.97,71.31
step
Jump down and follow the path |goto 67.28,65.78 < 15 |only if walking
talk Primal Torntusk##42642
turnin Death to the Vilebranch##26307 |goto 67.82,66.51
accept It's Ours Now##26308 |goto 67.82,66.51
accept Ongo'longo's Revenge##26367 |goto 67.82,66.51
step
talk Kotonga##42624 |goto 67.79,66.28
Tell him _"Send me to Akil'darah at the middle terrace."_
Teleport to the Middle Terrace |goto 58.51,67.27 < 20 |noway |c |q 26308
stickystart "Slay_Vilebranch_Blood_Drinkers"
stickystart "Collect_Vessels_Of_Tainted_Blood"
step
Follow the path |goto 58.41,69.53 < 15 |only if walking
Run down the stairs |goto 59.06,70.19 < 15 |only if walking
kill 5 Vilebranch Soul Eater##2647 |q 26308/1 |goto 60.53,70.16
step
label "Slay_Vilebranch_Blood_Drinkers"
kill 5 Vilebranch Blood Drinker##2646 |q 26308/2 |goto 60.53,70.16
step
Follow the path |goto 60.65,73.05 < 15 |only if walking
kill Ongo'longo##42815
Watch the dialogue
Enrage Ongo'longo |q 26367/1 |goto 62.17,75.29
step
label "Collect_Vessels_Of_Tainted_Blood"
Follow the path |goto 60.66,73.07 < 15 |only if walking
Run down the stairs |goto 61.26,71.34 < 15 |only if walking
click Vessel of Tainted Blood##179922+
|tip They look like small gray cauldrons on the ground around this area.
collect 5 Vessel of Tainted Blood##19071 |q 26309/1 |goto 62.64,71.45
step
Run up the stairs |goto 62.10,71.37 < 15 |only if walking
Run up the stairs |goto 59.92,70.20 < 15 |only if walking
Follow the path |goto 58.66,68.69 < 15 |only if walking
click Totem of Akil'darah##204002 |goto 58.51,67.18
Choose _"Akil'darah, return me to my allies."_
Teleport Back to Jintha'Alor |goto 67.79,66.28 < 20 |noway |c |q 26308
step
talk Eliza Darkgrin##42622
turnin Dark Vessels##26309 |goto 67.65,66.60
accept Venomous Secrets##26368 |goto 67.65,66.60
step
talk Primal Torntusk##42642
turnin It's Ours Now##26308 |goto 67.82,66.51
turnin Ongo'longo's Revenge##26367 |goto 67.82,66.51
accept Summit of Fate##26363 |goto 67.82,66.51
step
talk Kotonga##42624 |goto 67.79,66.28
Tell him _"Send me to Akil'darah at the middle terrace."_
Teleport to the Middle Terrace |goto 58.51,67.27 < 20 |noway |c |q 26363
step
Follow the path |goto 58.74,70.94 < 20 |only if walking
clicknpc Sacrificed Vilebranch##42857+
|tip They look like dead trolls on the ground around this area.
collect 8 Spider Idol##58228 |q 26363/1 |goto 59.56,77.94
step
Enter the cave |goto 58.58,79.20 < 15 |walk
kill Spawn of Shadra##42879+
|tip Inside the cave.
collect 6 Shadra-Spawn Venom Sample##58239 |q 26368/1 |goto 57.75,81.55
step
Leave the cave |goto 58.58,79.20 < 15 |walk
Follow the path |goto 59.15,74.15 < 15 |only if walking
Follow the path |goto 58.64,68.68 < 15 |only if walking
click Totem of Akil'darah##204002 |goto 58.50,67.20
Choose _Akil'darah, return me to my allies._
Teleport Back to Jintha'Alor |goto 67.79,66.28 < 20 |noway |c |q 26368
step
talk Eliza Darkgrin##42622
turnin Venomous Secrets##26368 |goto 67.65,66.60
step
talk Primal Torntusk##42642
turnin Summit of Fate##26363 |goto 67.82,66.51
accept Hunt the Keeper##26369 |goto 67.82,66.51
step
talk Kotonga##42624 |goto 67.79,66.28
Tell him _"Send me to Akil'darah at the middle terrace."_
Teleport to the Middle Terrace |goto 58.51,67.27 < 20 |noway |c |q 26369
step
Follow the path |goto 58.65,68.72 < 15 |only if walking
Follow the path |goto 59.15,74.00 < 15 |only if walking
Enter the cave |goto 58.60,79.16 < 15 |walk
Follow the path down |goto 57.63,81.60 < 10 |walk
Follow the path up |goto 54.66,83.54 < 10 |walk
kill Morta'gya the Keeper##42877
|tip Inside the cave.
collect Tablet of Shadra##58241 |q 26369/1 |goto 57.48,86.46
step
Jump down here |goto 57.18,83.86 < 10 |walk
Follow the path up |goto 57.05,83.06 < 10 |walk
Leave the cave |goto 58.62,79.04 < 15 |walk
Follow the path |goto 59.15,74.11 < 15 |only if walking
Follow the path |goto 58.65,68.68 < 15 |only if walking
click Totem of Akil'darah##204002 |goto 58.50,67.20
Choose _Akil'darah, return me to my allies._
Teleport Back to Jintha'Alor |goto 67.79,66.28 < 20 |noway |c |q 26369
step
talk Primal Torntusk##42642
turnin Hunt the Keeper##26369 |goto 67.82,66.51
step
talk Eliza Darkgrin##42622
accept Darkcleric Marnal##26384 |goto 67.65,66.60
step
talk Bitsy##43739
home Hiri'watha Research Station |goto 31.80,57.99 |q 28508 |future
step
talk Darkcleric Marnal##42898
turnin Darkcleric Marnal##26384 |goto 31.86,58.38
accept The Eye of Shadra##26381 |goto 31.86,58.38
step
talk Apothecary Surlis##42896
accept Can't Make An Omelette Without...##26382 |goto 31.83,58.55
step
Follow the road |goto 35.31,57.00 < 30 |only if walking
Follow the path |goto 47.42,42.76 < 20 |only if walking
click Cache of Shadra##204133
|tip Inside the hut.
collect Eye of Shadra##58282 |q 26381/1 |goto 45.49,38.83
step
click Shadraspawn Egg##204102+
|tip They look like large white spider eggs on the ground around this area.
collect 5 Shadraspawn Egg##58252 |q 26382/1 |goto 46.05,40.39
step
Follow the road |goto 47.89,44.92 < 30 |only if walking
Follow the path |goto 32.27,57.45 < 15 |only if walking
talk Darkcleric Marnal##42898
turnin The Eye of Shadra##26381 |goto 31.86,58.38
accept The Fang of Shadra##26406 |goto 31.86,58.38
step
talk Apothecary Surlis##42896
turnin Can't Make An Omelette Without...##26382 |goto 31.83,58.55
accept Starvation Diet##26387 |goto 31.83,58.55
stickystart "Kill_Cocooned_Victims"
step
Follow the road |goto 35.41,57.10 < 30 |only if walking
click Cache of Shadra##204133
collect Fang of Shadra##58281 |q 26406/1 |goto 49.50,52.11
step
label "Kill_Cocooned_Victims"
kill 6 Cocooned Victim##42907 |q 26387/1 |goto 49.08,53.91
step
Run up the stairs |goto 48.57,50.56 < 15 |only if walking
Follow the road |goto 44.94,47.80 < 30 |only if walking
Continue following the road |goto 40.29,54.70 < 30 |only if walking
Continue following the road |goto 35.65,57.06 < 30 |only if walking
Follow the path |goto 32.32,57.37 < 15 |only if walking
talk Darkcleric Marnal##42898
turnin The Fang of Shadra##26406 |goto 31.86,58.38
accept The Shell of Shadra##26418 |goto 31.86,58.38
step
talk Apothecary Surlis##42896
turnin Starvation Diet##26387 |goto 31.83,58.55
step
Run up the stairs |goto 47.72,66.73 < 30 |only if walking
kill Qiaga the Keeper##42919
collect Shell of Shadra##58779 |q 26418/1 |goto 48.44,67.76
step
Follow the path |goto 44.08,63.41 < 30 |only if walking
Continue following the path |goto 38.54,61.51 < 30 |only if walking
Follow the path |goto 32.64,59.27 < 15 |only if walking
talk Darkcleric Marnal##42898
turnin The Shell of Shadra##26418 |goto 31.86,58.38
accept Summoning Shadra##26558 |goto 31.86,58.38
step
Follow the path |goto 35.82,64.18 < 20 |only if walking
Run up the stairs |goto 32.96,69.21 < 20 |only if walking
use the Idol of Shadra##58784
Use the Idol at the Northwestern Temple |q 26558/1 |goto 32.11,67.26
step
Run up the stairs |goto 33.01,73.90 < 20 |only if walking
use the Idol of Shadra##58784
Use the Idol at the Southwestern Temple |q 26558/3 |goto 32.54,76.16
step
Run up the stairs |goto 35.51,71.40 < 20 |only if walking
use the Idol of Shadra##58784
Use the Idol at the Eastern Temple |q 26558/2 |goto 37.05,71.54
step
talk Deathstalker Lookout##43299
turnin Summoning Shadra##26558 |goto 35.65,68.45
accept Shadra the Venom Queen##26419 |goto 35.65,68.45
step
kill Shadra##43007 |q 26419/1 |goto 34.27,69.99
step
talk Darkcleric Marnal##42898
turnin Shadra the Venom Queen##26419 |goto 31.86,58.38
accept The Battle for Andorhal##28508 |goto 31.86,58.38
step
talk Kellen Kuhn##43573
Tell him _"I need a bat, Kellen. I'm headed to Western Plaguelands. The Dark Lady needs me!"_
Begin Flying to Andorhal |goto 32.45,58.08 > 40 |c |q 28508
step
Fly to Andorhal, Western Plaguelands |goto Western Plaguelands/0 46.6,64.7 < 20 |c |notravel |q 28508
step
talk Koltira Deathweaver##44452
turnin The Battle for Andorhal##28508 |goto Western Plaguelands/0 47.77,65.20
]])
ZGV.BETASTART()
ZGV.BETAEND()
ZGV.BETASTART()
ZGV.BETAEND()
ZGV.BETASTART()
ZGV.BETAEND()
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (1-10)\\Kalimdor\\Durotar (1-20)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Durotar 5-8",
next="Leveling Guides\\Classic (10-60)\\Kalimdor\\Northern Barrens (10-60)",
condition_suggested=function() return level >= 1 and level <= 20 and not completedq(25263) end,
startlevel=1,
endlevel=10,
},[[
step
talk Handler Marnlek##41142
fpath Sen'jin Village |goto Durotar/0 55.38,73.31
step
talk Master Gadrin##3188
turnin Report to Sen'jin Village##25133 |goto 55.95,74.72 |only if havequest(25133) or completedq(25133)
turnin Sen'jin Village##25073 |goto 55.95,74.72 |only if havequest(25073) or completedq(25073)
accept Breaking the Chain##25167 |goto 55.95,74.72
step
talk Bom'bay##10578
accept Cleaning Up the Coastline##25170 |goto 55.72,75.37
step
kill Surf Crawler##3107+
|tip Underwater and along the shore around this area.
collect 5 Crawler Mucus##4888 |q 25170/1 |goto 57.98,79.11
stickystart "Slay_Northwatch_Lugs"
step
click Northwatch Supply Crate##202405
Destroy #3# Northwatch Supply Crates |q 25167/1 |goto 51.85,80.25
|tip They look like large wooden crates with big red plus signs on them, being carried by Northwatch Lugs around this area.
step
label "Slay_Northwatch_Lugs"
kill 10 Northwatch Lug##39249 |q 25167/2 |goto 51.85,80.25
step
talk Bom'bay##10578
turnin Cleaning Up the Coastline##25170 |goto 55.72,75.37
accept Never Trust a Big Barb and a Smile##25165 |goto 55.72,75.37
step
talk Master Gadrin##3188
turnin Breaking the Chain##25167 |goto 55.95,74.72
accept Purge the Valley##25168 |goto 55.95,74.72
step
talk Lar Prowltusk##3140
accept The War of Northwatch Aggression##25169 |goto 55.42,75.10
step
kill Clattering Scorpid##3125+
use Poison Extraction Totem##52505
|tip Use it on weakened Clattering Scorpids.
|tip Weaken them and let them cast "Envenom", the Totem will catch the venom.
Collect #6# Samples of Scorpid Venom |q 25165/1 |goto 53.06,75.75
stickystart "Slay_Northwatch_Troops"
step
Follow the path |goto 50.92,79.14 < 10 |only if walking
click the Attack Plan: Valley of Trials##3189
|tip It looks like a small opened map sitting on a stool or table around this small camp.
Burn the Attack Plan: Valley of Trials |q 25169/1 |goto 49.88,81.53
step
click the Attack Plan: Sen'jin Village##3190
|tip It looks like a small opened map sitting on a stool or table around this small camp.
Burn the Attack Plan: Sen'jin Village |q 25169/2 |goto 47.94,77.50
step
Follow the path |goto 47.98,80.10 < 15 |only if walking
click the Attack Plan: Orgrimmar##3192
|tip It looks like a small opened map sitting on a stool or in a tent around this small camp.
Burn the Attack Plan: Orgrimmar |q 25169/3 |goto 46.43,78.92
step
label "Slay_Northwatch_Troops"
Kill Northwatch enemies around this area
Slay #12# Northwatch Troops |q 25168/1 |goto 48.73,79.39
step
Follow the path |goto 50.87,79.12 < 10 |only if walking
talk Bom'bay##10578
turnin Never Trust a Big Barb and a Smile##25165 |goto 55.72,75.37
step
talk Lar Prowltusk##3140
turnin The War of Northwatch Aggression##25169 |goto 55.42,75.10
step
talk Master Gadrin##3188
turnin Purge the Valley##25168 |goto 55.95,74.72
accept Riding On##25171 |goto 55.95,74.72
step
talk Raider Jhash##10676 |goto 55.18,74.60
Ask him _"Can I catch a ride to Razor Hill?"_
Ride to Razor Hill |goto 52.49,44.22 < 10 |noway |q 25171
step
talk Burok##41140
fpath Razor Hill |goto 53.09,43.58
step
talk Gar'Thok##3139
turnin Riding On##25171 |goto 51.95,43.50
accept From Bad to Worse##25173 |goto 51.95,43.50
step
Enter the building |goto 51.82,41.93 < 5 |walk
talk Innkeeper Grosk##6928
|tip Inside the building.
home Razor Hill |goto 51.51,41.65 |q 25173
step
talk Gail Nozzywig##39423
accept Exploiting the Situation##25176 |goto 53.11,43.13
stickystart "Collect_Kul_Tiras_Treasure"
stickystart "Slay_Northwatch_Sharpshooters"
stickystart "Slay_Northwatch_Marines"
step
kill Lieutenant Palliter##39269 |q 25173/3 |goto Durotar/11 54.13,53.46
|tip Inside the top room of the fort.
step
label "Collect_Kul_Tiras_Treasure"
click Kul Tiras Treasure##202648+
|tip They look like wooden chests on the ground around this area.
collect 6 Kul Tiras Treasure##52558 |q 25176/1 |goto Durotar/10 58.48,57.53
step
label "Slay_Northwatch_Sharpshooters"
kill 6 Northwatch Sharpshooter##39268 |q 25173/2 |goto Durotar/0 58.03,57.23
step
label "Slay_Northwatch_Marines"
kill 6 Northwatch Marine##39267 |q 25173/1 |goto 58.03,57.23
step
talk Gar'Thok##3139
turnin From Bad to Worse##25173 |goto 51.95,43.50
accept Storming the Beaches##25177 |goto 51.95,43.50
step
talk Gail Nozzywig##39423
turnin Exploiting the Situation##25176 |goto 53.11,43.13
accept Shipwreck Searching##25178 |goto 53.11,43.13
stickystart "Collect_Gnomish_Tools"
step
kill 11 Foaming Sea Elemental##39272 |q 25177/1 |goto 59.40,47.32
step
label "Collect_Gnomish_Tools"
click Gnomish Toolboxes##3236+
|tip They look like small metal chests on the ground around this area.
collect 4 Gnomish Tools##4863 |q 25178/1 |goto 58.75,46.24
step
clicknpc Injured Razor Hill Grunt##39270
|tip They look like injured orcs laying on the ground around this area.
accept Loss Reduction##25179 |goto 58.66,48.38
step
clicknpc Injured Razor Hill Grunt##39270+
|tip They look like injured orcs laying on the ground around this area.
Rescue #4# Injured Razor Hill Grunts |q 25179/1 |goto 59.04,47.20
step
talk Gail Nozzywig##39423
turnin Shipwreck Searching##25178 |goto 53.11,43.13
accept Thonk##25227 |goto 53.11,43.13
step
talk Gar'Thok##3139
turnin Storming the Beaches##25177 |goto 51.95,43.50
turnin Loss Reduction##25179 |goto 51.95,43.50
step
talk Orgnil Soulscar##3142
accept The Burning Blade##25232 |goto 52.24,43.15
step
talk Grimtak##3881
accept Meats to Orgrimmar##6365 |goto 50.74,42.84
only if Orc or Troll
step
talk Burok##41140
turnin Meats to Orgrimmar##6365 |goto 53.09,43.58
accept Ride to Orgrimmar##6384 |goto 53.09,43.58
only if Orc or Troll
step
talk Innkeeper Gryshka##6929
|tip Inside the building.
turnin Ride to Orgrimmar##6384 |goto Orgrimmar/1 53.63,78.76
accept Doras the Wind Rider Master##6385 |goto 53.63,78.76
only if Orc or Troll
step
Go up the elevator |goto 51.19,63.02 < 7 |only if walking
talk Doras##3310
turnin Doras the Wind Rider Master##6385 |goto 49.66,59.22
accept Return to Razor Hill##6386 |goto 49.66,59.22
only if Orc or Troll
step
talk Grimtak##3881
turnin Return to Razor Hill##6386 |goto Durotar/0 50.74,42.84
only if Orc or Troll
step
Follow the path up |goto 50.79,42.28 < 10 |only if walking
talk Thonk##39323
|tip At the top of the tower.
turnin Thonk##25227 |goto 49.59,40.17
accept Lost in the Floods##25187 |goto 49.59,40.17
step
use Thonk's Spyglass##52514
|tip Use it at the top of the tower.
|tip Don't cancel the cinematic.
Find Raggaran |q 25187/1 |goto 49.54,40.38
step
use Thonk's Spyglass##52514
|tip Use it at the top of the tower.
|tip Don't cancel the cinematic.
Find the Flooded Hut |q 25187/2 |goto 49.54,40.38
step
use Thonk's Spyglass##52514
|tip Use it at the top of the tower.
|tip Don't cancel the cinematic.
Find Misha |q 25187/3 |goto 49.54,40.38
step
use Thonk's Spyglass##52514
|tip Use it at the top of the tower.
|tip Don't cancel the cinematic.
Find Zen'Taji |q 25187/4 |goto 49.54,40.38
step
talk Thonk##39323
|tip At the top of the tower.
turnin Lost in the Floods##25187 |goto 49.59,40.17
accept Watershed Patrol##25188 |goto 49.59,40.17
step
talk Misha Tor'kren##3193
|tip She walks around this area.
accept Lost But Not Forgotten##25193 |goto 43.38,30.63
step
kill Dreadmaw Toothgnasher##39452+
|tip Underwater.
collect 250 Durotar Crocolisk Tooth##60615 |q 25193/1 |goto 38.80,35.06
step
talk Misha Tor'kren##3193
|tip She walks around this area.
turnin Lost But Not Forgotten##25193 |goto 43.38,30.63
step
Help Misha Tor'kren |q 25188/2 |goto 43.38,30.63
step
talk Raggaran##39326
accept Raggaran's Rage##25190 |goto 42.70,49.90
stickystart "Slay_Razormane_Scouts"
step
kill 4 Razormane Quilboar##3111 |q 25190/1 |goto 47.34,49.31
step
label "Slay_Razormane_Scouts"
kill 4 Razormane Scout##3112 |q 25190/2 |goto 44.15,49.57
step
talk Raggaran##39326
turnin Raggaran's Rage##25190 |goto 42.70,49.90
accept Raggaran's Fury##25192 |goto 42.70,49.90
stickystart "Slay_Razormane_Battleguards"
step
kill 5 Razormane Dustrunner##3113 |q 25192/1 |goto 38.02,55.22
step
label "Slay_Razormane_Battleguards"
kill 5 Razormane Battleguard##3114 |q 25192/2 |goto 38.02,55.22
step
talk Raggaran##39326
turnin Raggaran's Fury##25192 |goto 42.70,49.90
step
Help Raggaran |q 25188/1 |goto 42.70,49.90
step
talk Zen'Taji##39324
accept Unbidden Visitors##25194 |goto 35.85,41.37
step
kill Wayward Plainstrider##39337+
|tip Get them weak and they will run away.
|tip You can find more along the coastline.
Return #3# Wayward Plainstriders |q 25194/1 |goto 35.3,39.6
step
talk Zen'Taji##39324
turnin Unbidden Visitors##25194 |goto 35.85,41.37
accept That's the End of That Raptor##25195 |goto 35.85,41.37
step
kill Screamslash##39385 |q 25195/1 |goto 35.55,29.25
|tip He walks around this area.
|tip He will appear on your minimap as a yellow dot.
step
talk Zen'Taji##39324
turnin That's the End of That Raptor##25195 |goto 35.85,41.37
step
Help Zen'Taji |q 25188/3 |goto 35.85,41.37
step
Follow the path up |goto 50.73,42.27 < 10 |only if walking
talk Thonk##39323
|tip At the top of the tower.
turnin Watershed Patrol##25188 |goto 49.59,40.17
step
Follow the path up |goto 54.47,39.63 < 20 |only if walking
Kill Burning Blade enemies around this area
|tip Inside the cave.
collect 6 Burning Blade Spellscroll##52564 |q 25232/1 |goto Durotar/19 51.16,60.23
step
talk Orgnil Soulscar##3142
turnin The Burning Blade##25232 |goto Durotar/0 52.24,43.15
accept The Dranosh'ar Blockade##25196 |goto 52.24,43.15
step
talk Rezlak##3293
accept Winds in the Desert##834 |goto 46.37,22.94
accept Securing the Lines##835 |goto 46.37,22.94
step
Follow the path |goto 47.82,21.34 < 15 |only if walking
click Stolen Supply Sack##3290+
|tip They look like small tan sacks on the ground around this area.
collect 5 Sack of Supplies##111735 |q 834/1 |goto 50.15,25.12
step
Enter the cave |goto 52.04,27.44 < 5 |only if walking
Kill Dustwind enemies around this area
Slay #12# Durotar Harpies |q 835/1 |goto 53.17,24.24
step
talk Rezlak##3293
turnin Winds in the Desert##834 |goto 46.37,22.94
turnin Securing the Lines##835 |goto 46.37,22.94
step
Enter the building |goto 44.92,14.45 < 5 |walk
talk Gor the Enforcer##39379
|tip Inside the building.
turnin The Dranosh'ar Blockade##25196 |goto 45.00,14.77
accept Fizzled##25260 |goto 45.00,14.77
accept Thunder Down Under##25236 |goto 45.00,14.77
step
talk Shin Stonepillar##39380
|tip Inside the building.
accept The Wolf and The Kodo##25205 |goto 44.90,14.83
step
talk Shin Stonepillar##39380
|tip Inside the building.
Ask him _"Can you tell me your fable, Shin?"_
Begin the Shaman's Tale |havebuff 132245 |goto 44.90,14.83 |q 25205
step
Watch the dialogue
|tip If you don't see 2 kodos fighting, you will need to look around the area for them.
Listen to the Shaman's Fable |q 25205/1 |goto 52.95,13.54
step
talk Shin Stonepillar##39380
|tip Inside the building.
turnin The Wolf and The Kodo##25205 |goto 44.90,14.83
step
talk Gor the Enforcer##39379
|tip Inside the building.
accept Ignoring the Warnings##25206 |goto 45.00,14.77
step
kill Teeming Waterguard##39596+, Furious Earthguard##39595+
Slay #12# Warring Elementals |q 25206/1 |goto 38.69,19.03
stickystart "Remove_Drowned_Thunder_Lizards"
step
clicknpc Fizzle Darkclaw##3203
|tip Underwater.
Choose _<Attempt to remove the orb.>_
Then choose _<Attempt to remove Fizzle's hand, then.>_
collect Fizzle's Orb##52580 |q 25260/1 |goto 42.11,26.67
step
label "Remove_Drowned_Thunder_Lizards"
clicknpc Drowned Thunder Lizard##39464+
|tip Underwater around this area.
Remove #8# Drowned Thunder Lizards |q 25236/1 |goto 41.70,24.82
step
Enter the building |goto 44.92,14.45 < 5 |walk
talk Gor the Enforcer##39379
|tip Inside the building.
turnin Fizzled##25260 |goto 45.00,14.77
accept Margoz##25261 |goto 45.00,14.77
turnin Thunder Down Under##25236 |goto 45.00,14.77
turnin Ignoring the Warnings##25206 |goto 45.00,14.77
accept Beyond Durotar##25648 |goto 45.00,14.77
step
talk Margoz##3208
turnin Margoz##25261 |goto 56.41,20.04
accept Skull Rock##25262 |goto 56.41,20.04
step
talk Vek'nag##39604
|tip He walks around this area.
accept Sent for Help##25256 |goto 56.34,20.28
step
talk Spiketooth##39590
turnin Sent for Help##25256 |goto 58.83,23.17
accept Ghislania##25257 |goto 58.83,23.17
accept Griswold Hanniston##25258 |goto 58.83,23.17
accept Gaur Icehorn##25259 |goto 58.83,23.17
step
talk Griswold Hanniston##39353
Tell him _"I'm here to challenge you in combat."_
kill Griswold Hanniston##39353
Defeat Griswold Hanniston |q 25258/1 |goto 59.05,22.26
step
talk Ghislania##39351
Tell her _"I'm here to challenge you in combat."_
kill Ghislania##39351
Defeat Ghislania |q 25257/1 |goto 59.67,22.61
step
talk Gaur Icehorn##39352
Tell him _"I'm here to challenge you in combat."_
kill Gaur Icehorn##39352
Defeat Gaur Icehorn |q 25259/1 |goto 59.42,23.46
step
talk Spiketooth##39590
turnin Ghislania##25257 |goto 58.83,23.17
turnin Griswold Hanniston##25258 |goto 58.83,23.17
turnin Gaur Icehorn##25259 |goto 58.83,23.17
step
Enter the cave |goto 54.99,9.74 < 5 |walk
Kill Burning Blade enemies around this area
|tip Inside the cave.
collect 6 Searing Collar##4871 |q 25262/1 |goto Durotar/12 56.69,53.68
step
talk Margoz##3208
turnin Skull Rock##25262 |goto Durotar/0 56.41,20.04 |notravel
accept Arnak Fireblade##25263 |goto 56.41,20.04 |notravel
step
Go down the elevator |goto Orgrimmar/1 51.19,63.02 < 7 |only if walking
talk Arnak Fireblade##3216
|tip Inside the building.
turnin Arnak Fireblade##25263 |goto Orgrimmar/2 58.18,54.62
accept Ak'Zeloth##25264 |goto 58.18,54.62
]])
ZGV.BETAEND()
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (1-10)\\Kalimdor\\Mulgore (1-20)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Mulgore 4-10",
next="Leveling Guides\\Classic (10-60)\\Kalimdor\\Northern Barrens (10-60)",
condition_suggested=function() return level >= 1 and level <= 20 and not completedq(26397) end,
startlevel=1,
endlevel=10,
},[[
step
talk Ahmo Thunderhorn##36644
accept Sharing the Land##14438 |goto Mulgore/0 47.66,59.59
step
talk Tak##40809
fpath Bloodhoof Village |goto 47.44,58.64
step
Enter the building |goto 47.00,59.92 < 5 |walk
talk Innkeeper Kauth##6747
|tip Inside the building.
home Bloodhoof Village |goto 46.82,60.45 |q 761 |future
step
talk Mull Thunderhorn##2948
accept Poison Water##20440 |goto 48.61,59.81
only if Tauren
step
talk Harken Windtotem##2947
|tip Inside the building.
accept Swoop Hunting##761 |goto 48.79,58.79
stickystart "Collect_Trophy_Swoop_Quills"
stickystart "Collect_Prairie_Wolf_Paws"
step
kill Adult Plainstrider##2956+
collect 4 Plainstrider Talon##4759 |q 20440/2 |goto 56.89,62.43
only if Tauren
step
label "Collect_Trophy_Swoop_Quills"
kill Swoop##2970+
collect 8 Trophy Swoop Quill##4769 |q 761/1 |goto 58.00,65.66
step
label "Collect_Prairie_Wolf_Paws"
kill Prairie Wolf##2958+
collect 6 Prairie Wolf Paw##4758 |q 20440/1 |goto 55.24,65.55
only if Tauren
step
Kill Palemane enemies around this area
Slay #15# Palemane Gnolls |q 14438/1 |goto 53.50,71.22
step
talk Ahmo Thunderhorn##36644
turnin Sharing the Land##14438 |goto 47.66,59.59
accept The Restless Earth##14491 |goto 47.66,59.59
accept Morin Cloudstalker##24459 |goto 47.66,59.59
step
talk Ruul Eagletalon##2985
accept Dangers of the Windfury##743 |goto 47.51,61.32
step
talk Mull Thunderhorn##2948
turnin Poison Water##20440 |goto 48.61,59.81
accept Winterhoof Cleansing##24440 |goto 48.61,59.81
only if Tauren
step
talk Harken Windtotem##2947
|tip Inside the building.
turnin Swoop Hunting##761 |goto 48.79,58.79
step
talk Maur Raincaller##3055
accept Mazzranache##26188 |goto 47.16,56.66
step
talk Ahab Wheathoof##23618
accept Kyle's Gone Missing!##11129 |goto 48.34,53.09
step
kill Adult Plainstrider##2956+
collect 1 Tender Strider Meat##33009 |q 11129 |goto 54.94,62.68
step
use Winterhoof Cleansing Totem##5411
Cleanse the Well |q 24440/1 |goto 53.51,65.22
only if Tauren
step
talk Morin Cloudstalker##2988
turnin Morin Cloudstalker##24459 |goto 57.05,60.43
accept The Ravaged Caravan##749 |goto 57.05,60.43
step
Kill Windfury enemies around this area
collect 8 Windfury Talon##4751 |q 743/1 |goto 62.98,69.72
step
clicknpc Kyle the Frenzied##23616
|tip Kyle the Frenzied is a white wolf that runs around Bloodhoof Village, so you may need to search for him.
use Tender Strider Meat##33009
|tip Use the Tender Strider Meat on Kyle the Frenzied when Kyle is running nearby.
Feed Kyle |q 11129/1 |goto 48.60,61.33
step
talk Mull Thunderhorn##2948
turnin Winterhoof Cleansing##24440 |goto 48.61,59.81
accept Thunderhorn Totem##24441 |goto 48.61,59.81
only if Tauren
step
talk Ruul Eagletalon##2985
turnin Dangers of the Windfury##743 |goto 47.51,61.32
step
talk Ahab Wheathoof##23618
turnin Kyle's Gone Missing!##11129 |goto 48.34,53.09
step
click Sealed Supply Crate##2908
turnin The Ravaged Caravan##749 |goto 53.52,48.28
accept The Ravaged Caravan##751 |goto 53.52,48.28
stickystart "Collect_Flatland_Cougar_Femur"
stickystart "Collect_Cougar_Claws"
step
kill Prairie Stalker##2959+
collect 6 Stalker Claws##4801 |q 24441/1 |goto 51.10,46.21
step
label "Collect_Flatland_Cougar_Femur"
kill Flatland Cougar##3035+
collect Flatland Cougar Femur##4805 |q 26188/1 |goto 51.10,46.21
step
label "Collect_Cougar_Claws"
kill Flatland Cougar##3035+
collect 6 Cougar Claws##4802 |q 24441/2 |goto 51.10,46.21
step
talk Morin Cloudstalker##2988
turnin The Ravaged Caravan##751 |goto 57.05,60.43
accept The Venture Co.##26179 |goto 57.05,60.43
accept Supervisor Fizsprocket##26180 |goto 57.05,60.43
stickystart "Slay_Venture_Co_Workers"
step
Follow the path up |goto 60.25,49.51 < 15 |only if walking
kill Supervisor Fizsprocket##3051
|tip Inside the mine.
collect Fizsprocket's Clipboard##4819 |q 26180/1 |goto Mulgore/7 41.75,84.92
step
label "Slay_Venture_Co_Workers"
kill 7 Venture Co. Worker##2978 |q 26179/1 |goto Mulgore/0 59.51,48.95
|tip More can be found inside the mine.
step
talk Morin Cloudstalker##2988
turnin The Venture Co.##26179 |goto 57.05,60.43
turnin Supervisor Fizsprocket##26180 |goto 57.05,60.43
step
talk Mull Thunderhorn##2948
turnin Thunderhorn Totem##24441 |goto 48.61,59.81
accept Thunderhorn Cleansing##24456 |goto 48.61,59.81
only if Tauren
step
Enter the building |goto 46.52,58.18 < 5 |walk
talk Varg Windwhisper##3079
|tip Inside the building.
accept A Bundle of Hides##6361 |goto 46.06,58.20
only if Tauren
step
talk Tak##40809
turnin A Bundle of Hides##6361 |goto 47.44,58.64
accept Ride to Thunder Bluff##6362 |goto 47.44,58.64
only if Tauren
step
Enter the building |goto Thunder Bluff/0 45.05,55.22 < 5 |walk
talk Ahanu##8359
|tip Inside the building.
turnin Ride to Thunder Bluff##6362 |goto 45.74,55.84
accept Tal the Wind Rider Master##6363 |goto 45.74,55.84
only if Tauren
step
Enter the building |goto 45.52,52.29 < 5 |walk
talk Tal##2995
|tip At the top of the tower.
turnin Tal the Wind Rider Master##6363 |goto 47.02,49.61
accept Return to Varg##6364 |goto 47.02,49.61
only if Tauren
step
Enter the building |goto Mulgore/0 46.52,58.18 < 5 |walk
talk Varg Windwhisper##3079
|tip Inside the building.
turnin Return to Varg##6364 |goto 46.06,58.20
only if Tauren
step
talk Maur Raincaller##3055
turnin Mazzranache##26188 |goto 47.16,56.66
step
use Thunderhorn Cleansing Totem##5415
Clean the Well |q 24456/1 |goto 44.80,45.73
only if Tauren
step
clicknpc Agitated Earth Spirit##36845+
use Drum of Soothed Earth##49647
|tip Use it on Agitated Earth Spirits.
|tip It probably won't work every time.
Calm #6# Spirits |q 14491/1 |goto 32.92,48.84
step
talk Ahmo Thunderhorn##36644
turnin The Restless Earth##14491 |goto 47.66,59.59
step
talk Mull Thunderhorn##2948
turnin Thunderhorn Cleansing##24456 |goto 48.61,59.81
accept Rite of Vision##24457 |goto 48.61,59.81
only if Tauren
step
talk Zarlman Two-Moons##3054
turnin Rite of Vision##24457 |goto 47.89,57.10
accept Rite of Vision##20441 |goto 47.89,57.10
only if Tauren
step
use Water of Vision##49651 |goto 47.89,57.10
Drink the Water of Vision |goto 47.89,57.10 > 30 |noway |q 20441
only if Tauren
step
Return to Camp Sungraze |goto Mulgore/0 49.37,17.49 < 10 |notravel |q 20441
only if Tauren
step
talk Una Wildmane##37024
turnin Rite of Vision##20441 |goto 49.37,17.32
accept Wildmane Totem##24523 |goto 49.37,17.32
only if Tauren
step
talk Lorekeeper Raintotem##3233
accept Rite of Wisdom##773 |goto 49.52,17.10
accept A Sacred Burial##833 |goto 49.52,17.10
step
talk Eyahn Eagletalon##2987
accept Preparation for Ceremony##744 |goto 49.59,17.59
step
kill Prairie Wolf Alpha##2960+
collect 4 Prairie Alpha Tooth##4803 |q 24523/1 |goto 49.65,21.13
stickystart "Collect_Azure_Feathers"
step
Follow the path up |goto 55.51,18.51 < 10 |only if walking
kill Windfury Matriarch##2965+
collect 6 Bronze Feather##4753 |q 744/2 |goto 55.35,14.49
step
label "Collect_Azure_Feathers"
kill Windfury Sorceress##2964+
collect 6 Azure Feather##4752 |q 744/1 |goto 55.35,14.49
step
talk Ancestral Spirit##2994
turnin Rite of Wisdom##773 |goto 60.79,22.68
step
kill 8 Bristleback Interloper##3232 |q 833/1 |goto 60.41,24.71
step
talk Una Wildmane##37024
turnin Wildmane Totem##24523 |goto 49.37,17.32
accept Wildmane Cleansing##24524 |goto 49.37,17.32
only if Tauren
step
talk Lorekeeper Raintotem##3233
turnin A Sacred Burial##833 |goto 49.52,17.10
step
talk Eyahn Eagletalon##2987
turnin Preparation for Ceremony##744 |goto 49.59,17.59
step
use Wildmane Cleansing Totem##5416
Cleanse the Wildmane Well |q 24524/1 |goto 43.29,16.10
only if Tauren
step
talk Una Wildmane##37024
turnin Wildmane Cleansing##24524 |goto 49.37,17.32
accept Journey into Thunder Bluff##24550 |goto 49.37,17.32
only if Tauren
step
talk Baine Bloodhoof##2993
|tip Inside the building.
turnin Journey into Thunder Bluff##24550 |goto Thunder Bluff/0 60.26,51.66
accept War Dance##24540 |goto 60.26,51.66
only if Tauren
step
Ride the elevator down |goto 54.20,26.94 < 7 |only if walking
Follow the path down |goto 61.33,16.95 < 10 |only if walking
kill Orno Grimtotem##36931 |q 24540/1 |goto Mulgore/0 36.96,11.89
|tip Baine Bloodhoof will come help you fight him.
only if Tauren
step
Return to Thunder Bluff |goto 42.48,21.88 < 7 |only if walking
Ride the elevator up |goto Thunder Bluff/0 54.20,26.94 < 7 |only if walking
Run up the ramp |goto 46.38,48.76 < 7 |only if walking
talk Baine Bloodhoof##2993
|tip Inside the building.
turnin War Dance##24540 |goto 60.26,51.66
accept Walk With The Earth Mother##26397 |goto 60.26,51.66
only if Tauren
step
Run up the ramp |goto 47.30,49.67 < 5 |only if walking
talk Tal##2995 |goto 47.03,49.58
|tip At the top of the tower.
Tell him _"Send me to Orgrimmar."_
Fly to Orgrimmar |goto Orgrimmar/1 49.27,59.37 < 10 |noway |q 26397
only if Tauren
step
Go down the elevator |goto 51.19,63.02 < 7 |only if walking |only if walking
Enter the building |goto 49.88,75.57 < 5 |walk
talk High Overlord Saurfang##14720
|tip Inside the building.
turnin Walk With The Earth Mother##26397 |goto 48.53,70.75
]])
ZGV.BETAEND()
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (10-60)\\Kalimdor\\Dustwallow Marsh (35-60)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Dustwallow 35-39",
next="Leveling Guides\\Classic (10-60)\\Kalimdor\\Thousand Needles (40-60)",
condition_suggested=function() return level >= 35 and level <= 60 and not completedq(27297) end,
startlevel=35,
endlevel=60,
},[[
step
If you have completed the scenario, "Theramore's Fall," then you will have to _visit_ Zidormi to travel back to Theramore's past |goto Dustwallow Marsh 55.9,49.6
|confirm
step
click Suspicious Hoofprint##187273
accept Suspicious Hoofprints##27259 |goto Dustwallow Marsh 29.7,47.6
step
click Theramore Guard Badge##21042
accept Lieutenant Paval Reethe##27260 |goto Dustwallow Marsh 29.8,48.2
step
click Black Shield##20992
accept The Black Shield##27254 |goto Dustwallow Marsh 29.6,48.6
step
click Wanted Poster##184945
accept SMASH BROODQUEEN##27229 |goto Dustwallow Marsh 37.5,31.5
step
talk "Little" Logok##24208
home Brackenwall Village |goto Dustwallow Marsh 36.9,32.3 |q 27229
step
talk Draz'Zilb##4501
accept The Hermit of Witch Hill##27182 |goto Dustwallow Marsh 37.2,33.1
step
talk Krog##4926
turnin Suspicious Hoofprints##27259 |goto Dustwallow Marsh 36.4,31.9
turnin Lieutenant Paval Reethe##27260 |goto Dustwallow Marsh 36.4,31.9
turnin The Black Shield##27254 |goto Dustwallow Marsh 36.4,31.9
accept The Black Shield##27255 |goto Dustwallow Marsh 36.4,31.9
accept A Shambling Threat##26682 |goto Dustwallow Marsh 36.4,31.9
accept Darkmist Extermination##25051 |goto Dustwallow Marsh 36.4,31.9
accept Inspecting the Ruins##27253 |goto Dustwallow Marsh 36.4,31.9
accept Talk to Ogron##27306 |goto Dustwallow Marsh 36.4,31.9
step
talk Do'gol##5087
turnin The Black Shield##27255 |goto Dustwallow Marsh 36.5,30.8
accept The Black Shield##27256 |goto Dustwallow Marsh 36.5,30.8
step
talk Alto Stonespire##39144
turnin Next of Kin##25292 |goto Dustwallow Marsh 35.5,30.1
step
talk Nazeer Bloodpike##4791
accept Theramore Spies##1201 |goto Dustwallow Marsh 35.2,30.7
step
talk Shardi##11899
fpath Brackenwall Village |goto Dustwallow Marsh,35.6,31.9
step
talk Balandar Brightstar##17095
accept Twilight of the Dawn Runner##9437 |goto Dustwallow Marsh 35.9,31.7
step
talk Draz'Zilb##4501
accept Identifying the Brood##27414 |goto Dustwallow Marsh 37.2,33.1
stickystart "wildvinekills"
step
kill 9 Theramore Infiltrator##4834 |q 1201/1 |goto 38.2,26.0
|tip They are spread out all around the outskirts of Brackenwall Village, so you will have to search a little for them.
step
label "wildvinekills"
kill Withervine Creeper##4382+, Withervine Rager##4385+
Kill #7# Withervine |q 26682/1 |goto 37.6,23.1
stickystart "darkmisteggs"
step
_Enter_ Darkmist Cavern |goto 33.2,22.8 < 10 |walk
|tip Follow the path in the cave.
kill Darkmist Broodqueen##45227
collect Broodqueen Pedipalp##60883 |q 27229/1 |goto 31.1,20.4
step
label "darkmisteggs"
click Darkmist Egg##205267
Destroy #8# Darkmist Eggs |q 25051/1 |goto 31.1,20.4
step
kill Darkmist Silkspinner##4379+, Darkmist Recluse##4378+, Darkmist Spider##4376+
collect 5 Acidic Venom Sac##5959 |q 27256/1 |goto 33.6,22.7
step
talk Ithania##17119
Tell her _"Balandar sent me to get you out of here..."_
Rescue Ithania From North Point Tower |q 9437/1 |goto Dustwallow Marsh 46.6,24.5
step
Go to the top of the tower
click Warped Crates##181626
collect Dawn Runner Cargo##23657 |q 9437/2 |goto Dustwallow Marsh 46.6,24.6
step
talk "Swamp Eye" Jarl##4792
turnin The Hermit of Witch Hill##27182 |goto Dustwallow Marsh 55.4,26.3
accept Marsh Frog Legs##27183 |goto Dustwallow Marsh 55.4,26.3
step
talk Mordant Grimsby##23843
accept What's Haunting Witch Hill?##27188 |goto 55.6,26.1
step
click Loose Dirt##209627
accept The Lost Report##27244 |goto 55.4,25.9
step
kill Giant Marsh Frog##23979+
collect 10 Marsh Frog Leg##33202 |q 27183/1 |goto Dustwallow Marsh 55.1,25.3
step
talk "Swamp Eye" Jarl##4792
turnin Marsh Frog Legs##27183 |goto Dustwallow Marsh 55.4,26.3
accept Jarl Needs Eyes##27184 |goto Dustwallow Marsh 55.4,26.3
step
kill Risen Husk##23555+, Risen Spirit##23554+
|tip If you have a pet, you must get the killing blow, in order to gather information.
Gather Information From #10# Risen |q 27188/1 |goto 55.9,28.5
step
talk Mordant Grimsby##23843
turnin What's Haunting Witch Hill?##27188 |goto 55.6,26.1
accept The Witch's Bane##27189 |goto 55.6,26.1
step
click Witchbane##186423
|tip They are mostly found around water.
collect 9 Witchbane##33112 |q 27189/1 |goto Dustwallow Marsh 55.2,27.7
step
talk Mordant Grimsby##23843
turnin The Witch's Bane##27189 |goto 55.6,26.1
accept Cleansing Witch Hill##27190 |goto 55.6,26.1
step
use Witchbane Torch##33113
|tip Use your Witchbane Torch while standing at the end of the dock.
kill Zelfrax##23864
Cleanse Witch Hill |q 27190/1 |goto Dustwallow Marsh 55.2,26.7
step
talk Mordant Grimsby##23843
turnin Cleansing Witch Hill##27190 |goto 55.6,26.1
step
talk Krog##4926
turnin A Shambling Threat##26682 |goto 36.4,31.9
turnin Darkmist Extermination##25051 |goto 36.4,31.9
turnin SMASH BROODQUEEN##27229 |goto 36.4,31.9
step
talk Overlord Mok'Morokk##4500
accept Overlord Mok'Morokk's Concern##27424 |goto 36.3,31.4
step
talk Do'gol##5087
turnin The Black Shield##27256 |goto Dustwallow Marsh 36.5,30.8
accept The Black Shield##27257 |goto Dustwallow Marsh 36.5,30.8
step
talk Tharg##4502
accept Army of the Black Dragon##1168 |goto 37.4,31.4
step
talk Krog##4926
turnin The Black Shield##27257 |goto Dustwallow Marsh 36.4,31.9
step
talk Balandar Brightstar##17095
turnin Twilight of the Dawn Runner##9437 |goto Dustwallow Marsh 35.9,31.7
step
talk Nazeer Bloodpike##4791
turnin Theramore Spies##1201 |goto Dustwallow Marsh 35.2,30.7
turnin The Lost Report##27244 |goto Dustwallow Marsh 35.2,30.7
accept Check Up on Tabetha##11213 |goto Dustwallow Marsh 35.2,30.7
step
kill Darkmist Silkspinner##4379+, Darkmist Recluse##4378+, Darkmist Spider##4376+
collect 20 Unpopped Darkmist Eye##5884 |q 27184/1 |goto Dustwallow Marsh 35.6,22.5
step
talk "Swamp Eye" Jarl##4792
turnin Jarl Needs Eyes##27184 |goto Dustwallow Marsh 55.4,26.3
accept Hungry as an Ogre!##27191 |goto Dustwallow Marsh 55.4,26.3
accept Jarl Needs a Blade##27186 |goto Dustwallow Marsh 55.4,26.3
stickystart "mirefinhead"
step
_Follow_ the path down |goto 57.8,19.6 < 10 |only if walking
kill Razorspine##23841
|tip He walks up and down this path.
collect Razorspine's Sword##33110 |q 27186/1 |goto 57.9,18.7
step
label "mirefinhead"
kill Mirefin Coastrunner##4362+, Mirefin Murloc##4359+
collect 8 Mirefin Head##5847 |q 27191/1 |goto 57.4,16.8
step
_Follow_ the path up |goto 57.9,18.4 < 10 |only if walking
talk "Swamp Eye" Jarl##4792
turnin Hungry as an Ogre!##27191 |goto Dustwallow Marsh 55.4,26.3
turnin Jarl Needs a Blade##27186 |goto Dustwallow Marsh 55.4,26.3
step
talk Ogron##4983
turnin Talk to Ogron##27306 |goto Dustwallow Marsh 41.0,36.7
accept Questioning Reethe##27261 |goto Dustwallow Marsh 41.0,36.7
step
Follow Ogron
Question Reethe with Ogron |q 27261/1 |goto Dustwallow Marsh 41.0,36.7
step
talk Inspector Tarem##23567
turnin Inspecting the Ruins##27253 |goto 29.8,47.6
step
talk Tabetha##6546
turnin Check Up on Tabetha##11213 |goto 46.0,57.1
step
talk Apprentice Garion##23601
accept The Reagent Thief##27339 |goto 46.0,57.2
step
talk Apprentice Morlann##23600
accept Direhorn Raiders##27340 |goto 46.1,57.4
accept The Zeppelin Crash##27346 |goto 46.1,57.4
step
kill Darkfang Creeper##4412+, Noxious Shredder##4348+
collect 6 Marsh Venom##33103 |q 27339/1 |goto 41.5,52.9
step
kill Grimtotem Destroyer##23594+, Grimtotem Earthbinder##23595+
Kill #12# Direhorn Grimtotems |q 27340/1 |goto 46.6,49.1
step
talk Apprentice Garion##23601
turnin The Reagent Thief##27339 |goto 46.0,57.2
step
talk Tabetha##6546
accept Help for Mudsprocket##11211 |goto 46.0,57.1
step
talk Apprentice Morlann##23600
turnin Direhorn Raiders##27340 |goto 46.1,57.4
step
talk Moxie Steelgrille##23797
turnin The Zeppelin Crash##27346 |goto 53.6,56.9
accept Corrosion Prevention##27347 |goto 53.6,56.9
accept Secure the Cargo!##27348 |goto 53.6,56.9
stickystart "zepplincargo"
step
use Ooze Buster##33108
|tip Use your Ooze Buster on green and blue oozes while Energized!.
|tip Stand next to the blue lightning structures to get the Energized! buff.
Dissolve #10# Oozes |q 27347/1 |goto 53.1,56.0
step
label "zepplincargo"
click Zeppelin Cargo##186450
|tip The Zeppelin Cargo look like wooden boxes on the ground around this area.
collect 8 Zeppelin Cargo##33163 |q 27348/1 |goto 53.1,56.0
step
talk Moxie Steelgrille##23797
turnin Corrosion Prevention##27347 |goto 53.6,56.9
turnin Secure the Cargo!##27348 |goto 53.6,56.9
accept Delivery for Drazzit##11208 |goto 53.6,56.9
step
talk Dyslix Silvergrub##23612
fpath Mudsprocket |goto 42.8,72.4
step
click Wanted Poster##184945
accept WANTED: Goreclaw the Ravenous##27412 |goto 41.8,73.1
step
talk Brogg##23579
accept Bloodfen Feathers##27407 |goto 41.9,74
step
talk Axle##23995
home Mudsprocket |goto 41.9,74.2 |q 27407
step
talk Gizzix Grimegurgle##23570
accept Catch a Dragon by the Tail##27413 |goto 41.5,73
step
talk Drazzit Dripvalve##23572
turnin Help for Mudsprocket##11211 |goto 42.3,72.9
turnin Delivery for Drazzit##11208 |goto 42.3,72.9
step
kill Goreclaw the Ravenous##23873 |q 27412/1 |goto 32.4,65.4
|tip He's standing at the entrance to the cave.
step
kill Bloodfen Razormaw##4356+, Bloodfen Lashtail##4357+
collect 5 Bloodfen Feather##33085 |q 27407/1 |goto 32.4,65.4
step
talk Drazzit Dripvalve##23572
turnin WANTED: Goreclaw the Ravenous##27412 |goto 42.3,72.9
step
talk Brogg##23579
turnin Bloodfen Feathers##27407 |goto 41.9,74
accept Banner of the Stonemaul##27408 |goto 41.9,74
accept The Essence of Enmity##27409 |goto 41.9,74
step
click Mok'Morokk's Grog##19905
collect Mok'Morokk's Grog##5835 |q 27424/2 |goto 38.7,65.6
stickystart "firebane"
step
_Enter_ the cave |goto Dustwallow Marsh 38.5,65.9 < 10 |walk
click Stonemaul Banner##6957
collect Stonemaul Banner##33086 |q 27408/1 |goto 38.1,69.4 |indoors The Den of Flame
step
click Mok'Morokk's Strongbox##19906
collect Mok'Morokk's Strongbox##5836 |q 27424/3 |goto 36.6,69.6 |indoors The Den of Flame
step
label "firebane"
kill 5 Firemane Scalebane##4328 |q 1168/3 |goto 36.6,69.6 |indoors The Den of Flame
step
kill Firemane Scout##4329+, Firemane Ash Tail##4331+
use Brogg's Totem##33088
|tip Use Brogg's Totem on their corpses.
collect 10 Black Dragonkin Essence##33087 |q 27409/1 |goto 39.4,66.6
stickystart "firemanekills"
step
click Mok'Morokk's Snuff##19904
|tip It's a small brown barrel.
collect Mok'Morokk's Snuff##5834 |q 27424/1 |goto 44.5,66.0
step
label "firemanekills"
kill 10 Firemane Scout##4329 |q 1168/1 |goto 44.5,66.0
kill 10 Firemane Ash Tail##4331 |q 1168/2 |goto 44.5,66.0
step
talk Brogg##23579
turnin Banner of the Stonemaul##27408 |goto 41.9,74.0
turnin The Essence of Enmity##27409 |goto 41.9,74.0
accept Spirits of Stonemaul Hold##27410 |goto 41.9,74.0
step
click Ogre Remains##233818
kill Stonemaul Spirit##23786+
Lay #10# Stonemaul Spirits to Rest |q 27410/1 |goto 45.8,68.4
step
talk Brogg##23579
turnin Spirits of Stonemaul Hold##27410 |goto 41.9,74.0
accept Challenge to the Black Flight##27411 |goto 41.9,74.0
step
use Stonemaul Banner##33095
|tip Use your Stonemaul Banner at the foot of the stone ramp at the entrance to Onyxia's Lair.
kill Smolderwing##23789
Avenge the Stonemaul Clan |q 27411/1 |goto 52.1,75.8
stickystart "searingtongueandhearts"
step
click Wyrmtail##186463
collect 8 Wyrmtail##33175 |q 27413/1 |goto 45.3,75.9
step
label "searingtongueandhearts"
kill Searing Hatchling##4323+, Searing Whelp##4324+
|tip The Firemane mobs do not drop these, kill the little Searing dragonkin.
collect 7 Searing Tongue##5840 |q 27414/1 |goto 45.3,75.9
collect 7 Searing Heart##5841 |q 27414/2 |goto 45.3,75.9
More of these can be found at the following location |goto Dustwallow Marsh,47.0,68
step
talk Gizzix Grimegurgle##23570
turnin Catch a Dragon by the Tail##27413 |goto 41.5,73.0
step
talk Brogg##23579
turnin Challenge to the Black Flight##27411 |goto 41.9,74.0
step
talk Overlord Mok'Morokk##4500
turnin Overlord Mok'Morokk's Concern##27424 |goto 36.3,31.4
step
talk Krog##4926
turnin Questioning Reethe##27261 |goto 36.4,31.9
step
talk Draz'Zilb##4501
turnin Identifying the Brood##27414 |goto 37.2,33.1
accept The Brood of Onyxia##27416 |goto 37.2,33.1
step
talk Overlord Mok'Morokk##4500
turnin The Brood of Onyxia##27416 |goto 36.3,31.4
accept The Brood of Onyxia##27417 |goto 36.3,31.4
step
talk Draz'Zilb##4501
turnin The Brood of Onyxia##27417 |goto 37.2,33.1
accept The Brood of Onyxia##27415 |goto 37.2,33.1
step
talk Tharg##4502
turnin Army of the Black Dragon##1168 |goto 37.4,31.4
step
click Egg of Onyxia##20359
Destroy #5# Eggs of Onyxia |q 27415/1 |goto 48.4,76
You can find more Eggs of Onyxia at the following location |goto 48.5,73.6
step
talk Draz'Zilb##4501
turnin The Brood of Onyxia##27415 |goto 37.2,33.1
step
talk Nazeer Bloodpike##4791
accept The Theramore Docks##1202 |goto Dustwallow Marsh 35.2,30.7
step
talk Overlord Mok'Morokk##4500
accept Challenge Overlord Mok'Morokk##27418 |goto 36.3,31.4
kill Overlord Mok'Morokk##4500
_Drive_ Overlord Mok'Morokk from Brackenwall Village |q 27418/1 |goto 36.3,31.4
step
talk Krog##4926
accept The Black Shield##27258 |goto 36.4,31.9
step
talk Draz'Zilb##4501
turnin Challenge Overlord Mok'Morokk##27418 |goto 37.1,33.1
step
talk "Little" Logok##24208
home Brackenwall Village |goto 36.9,32.4
step
click Captain's Footlocker##35 |tip It is underwater
collect Captain's Documents##5882 |q 1202/1 |goto 71.5,51.2
step
talk Nazeer Bloodpike##4791
turnin The Theramore Docks##1202 |goto 35.2,30.7
step
talk Mosarn##4943
turnin The Black Shield##27258 |goto Thunder Bluff 54.0,80.8
accept Return to Krog##27292 |goto Thunder Bluff 54.0,80.8
step
talk Krog##4926
turnin Return to Krog##27292 |goto Dustwallow Marsh 36.4,31.9
accept More than Coincidence##27294 |goto Dustwallow Marsh 36.4,31.9
accept The Grimtotem Plot##27293 |goto Dustwallow Marsh 36.4,31.9
step
kill Grimtotem Elder##23714+
collect 4 Grimtotem Note##33050 |n
Use the Grimtotem Notes |use Grimtotem Note##33050
collect Grimtotem Battle Plan##33051 |q 27293/1 |goto 42.9,14.3
click Blackhoof Armaments##186301
|tip Wooden weapon racks with spears, found around their camp and inside tents
collect 7 Blackhoof Armaments##33071 |q 27294/1 |goto 42.9,14.3
step
talk Krog##4926
turnin More than Coincidence##27294 |goto 36.4,31.9
turnin The Grimtotem Plot##27293 |goto 36.4,31.9
accept Seek Out Tabetha##27295 |goto 36.4,31.9
step
talk Tabetha##6546
turnin Seek Out Tabetha##27295 |goto 46.0,57.1
accept Raze Direhorn Post!##27296 |goto 46.0,57.1
step
Use Tabetha's Torch inside this tent |use Tabetha's Torch##33072
_Burn_ the East Tent |q 27296/3 |goto 47.4,47.5
step
Use Tabetha's Torch inside this tent |use Tabetha's Torch##33072
_Burn_ the Northeast Tent |q 27296/2 |goto 47.2,46.6
step
Use Tabetha's Torch inside this tent |use Tabetha's Torch##33072
_Burn_ the North Tent |q 27296/1 |goto 46.6,46.0
step
talk Tabetha##6546
turnin Raze Direhorn Post!##27296 |goto 46.0,57.1
accept Justice Dispensed##27297 |goto 46.0,57.1
step
talk Krog##4926
turnin Justice Dispensed##27297 |goto 36.4,31.9
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\The Burning Crusade (60-80)\\Hellfire Peninsula (58-80)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Hellfire",
next="Leveling Guides\\The Burning Crusade (60-80)\\Zangarmarsh (60-80)",
condition_suggested=function() return level >= 58 and level <= 80 and not completedq(10351) end,
startlevel=58,
endlevel=80,
},[[
step
talk Lieutenant General Orion##19253
accept Arrival in Outland##10120 |goto Hellfire Peninsula/0 87.35,49.80
step
talk Vlagga Freyfeather##18930
turnin Arrival in Outland##10120 |goto 87.34,48.14
accept Journey to Thrallmar##10289 |goto 87.34,48.14
step
talk Vlagga Freyfeather##18930 |goto 87.34,48.14
Tell her _"Send me to Thrallmar!"_
Fly to Thrallmar |goto 56.27,36.38 < 20 |noway |c |q 10289
step
talk General Krakork##19255
turnin Journey to Thrallmar##10289 |goto 55.87,36.87
accept Report to Nazgrel##10291 |goto 55.87,36.87
step
Follow the path |goto 56.06,37.51 < 15 |only if walking
Enter the building |goto 56.44,37.76 < 7 |walk
talk Floyd Pinkus##16602
home Thrallmar |goto 56.71,37.47 |q 10291
step
Leave the building |goto 56.40,37.81 < 7 |walk
Follow the path |goto 55.19,37.68 < 7 |only if walking
Enter the building |goto 55.14,37.35 < 7 |walk
Follow the path |goto 55.10,36.71 < 7 |walk
Follow the path |goto 55.38,36.46 < 7 |walk
Follow the path |goto 55.23,36.14 < 7 |walk
talk Nazgrel##3230
turnin Report to Nazgrel##10291 |goto 55.02,35.96
accept Eradicate the Burning Legion##10121 |goto 55.02,35.96
step
talk Vurtok Axebreaker##21256
accept Bonechewer Blood##10450 |goto 55.13,36.39
step
Follow the path |goto Hellfire Peninsula/0 55.37,36.20 < 7 |walk
Follow the path |goto 55.29,36.53 < 7 |walk
Follow the path |goto 55.10,36.82 < 7 |walk
Leave the building |goto 55.14,37.31 < 7 |walk
talk Megzeg Nukklebust##21283
accept I Work... For the Horde!##10086 |goto 55.18,38.79
step
Follow the path |goto 55.89,39.59 < 15 |only if walking
Go up the hill |goto 57.01,39.71 < 10 |only if walking
Follow the path |goto 57.32,40.07 < 15 |only if walking
Follow the path |goto 57.54,41.49 < 15 |only if walking
talk Sergeant Shatterskull##19256
turnin Eradicate the Burning Legion##10121 |goto 58.06,41.28
accept Felspark Ravine##10123 |goto 58.06,41.28
step
kill 1 Dreadcaller##19434 |q 10123/1 |goto 63.80,37.41
kill 4 Flamewaker Imp##19136 |q 10123/2 |goto 63.80,37.41
kill 6 Infernal Warbringer##19261 |q 10123/3 |goto 63.80,37.41
step
talk Sergeant Shatterskull##19256
turnin Felspark Ravine##10123 |goto 58.06,41.28
accept Forward Base: Reaver's Fall##10124 |goto 58.06,41.28
step
Follow the path |goto 60.86,43.59 < 20 |only if walking
Follow the path |goto 62.00,46.02 < 20 |only if walking
Follow the path |goto 63.72,46.43 < 20 |only if walking
Follow the path |goto 64.65,43.65 < 20 |only if walking
talk Forward Commander To'arch##19273
turnin Forward Base: Reaver's Fall##10124 |goto 65.89,43.59
accept Disrupt Their Reinforcements##10208 |goto 65.89,43.59
step
Follow the path |goto 68.14,45.34 < 15 |only if walking
Kill demon enemies around this area
collect 4 Demonic Rune Stone##28513 |q 10208 |goto 70.83,45.48
step
click Portal Xilus##184290
|tip Stand inside the portal.
Disrupt Port Xilus |q 10208/1 |goto 70.83,45.48
step
Follow the path |goto Hellfire Peninsula/0 73.06,44.10 < 15 |only if walking
Follow the path |goto 73.78,42.82 < 15 |only if walking
Kill demon enemies around this area
collect 4 Demonic Rune Stone##28513 |q 10208 |goto 74.01,38.73
step
click Portal Kruul##184289
|tip Stand inside the portal.
Disrupt Port Kruul |q 10208/2 |goto 74.01,38.73
step
Follow the path |goto 72.51,40.80 < 20 |only if walking
Follow the path |goto 70.80,42.46 < 20 |only if walking
Follow the path |goto 69.45,43.89 < 20 |only if walking
Follow the path |goto 68.15,44.90 < 15 |only if walking
talk Forward Commander To'arch##19273
turnin Disrupt Their Reinforcements##10208 |goto 65.89,43.59
accept Mission: Gateways Murketh and Shaadraz##10129 |goto 65.89,43.59
step
talk Wing Commander Brack##19401
Tell him _"I'm on a bombing mission for Forward Commander To'arch. I need a wyvern destroyer!"_
Mount a Wyvern Destroyer |condition _G.UnitOnTaxi("player") |goto 66.10,43.72 |q 10129
step
|use Seaforium PU-36 Explosive Nether Modulator##28038
|tip Use the bomb in your bags to bomb Gateway Shaadraz.
Bomb Gateway Shaadraz |q 10129/2 |goto 77.73,51.81
step
|use Seaforium PU-36 Explosive Nether Modulator##28038
|tip Use the bomb in your bags to bomb Gateway Murketh.
Bomb Gateway Murketh |q 10129/1 |goto 78.02,47.19
step
Return the Wyvern Destroyer |condition not _G.UnitOnTaxi("player") |goto 66.10,43.72
step
talk Forward Commander To'arch##19273
turnin Mission: Gateways Murketh and Shaadraz##10129 |goto 65.89,43.59
accept Mission: The Abyssal Shelf##10162 |goto 65.89,43.59
accept Return to Thrallmar##10388 |goto 65.89,43.59
step
talk Wing Commander Brack##19401
Tell him _"Send me to the Abyssal Shelf!"_
Mount a Wyvern Destroyer |condition _G.UnitOnTaxi("player") |q 10162 |goto 66.10,43.72
step
|use Area 52 Special##28132
|tip Use the bomb in your bags to bomb the mobs.
|tip If you don't complete this in the first run, you can fly again until it is done.
Destroy #5# Fel Cannons |q 10162/3 |goto 72.6,17.9
kill 5 Mo'arg Overseer##19397 |q 10162/2 |goto Hellfire Peninsula/0 72.6,17.9
kill 20 Gan'arg Peon##19398 |q 10162/1 |goto Hellfire Peninsula/0 72.6,17.9
step
Return the Wyvern Destroyer |condition not _G.UnitOnTaxi("player") |goto 66.10,43.72
step
talk Forward Commander To'arch##19273
turnin Mission: The Abyssal Shelf##10162 |goto 65.89,43.59
step
talk Martik Tor'seldori##16577
accept Falcon Watch##9498 |goto 55.18,39.12 |only if not BloodElf
accept Falcon Watch##9499 |goto 55.18,39.12 |only BloodElf
step
Enter the building |goto 55.14,37.33 < 7 |walk
Follow the path |goto 55.10,36.79 < 7 |walk
Follow the path |goto 55.40,36.31 < 7 |walk
talk Nazgrel##3230
turnin Return to Thrallmar##10388 |goto 55.02,35.97
accept Forge Camp: Mageddon##10390 |goto 55.02,35.97
accept The Assassin##9400 |goto 55.02,35.97
stickystart "ganargservant"
step
Follow the path |goto 55.39,36.36 < 7 |walk
Follow the path |goto 55.09,36.76 < 7 |walk
Leave the building |goto 55.13,37.30 < 7 |walk
Follow the path |goto 55.60,38.07 < 15 |only if walking
Follow the path |goto 57.07,35.90 < 20 |only if walking
Follow the path |goto 58.99,37.67 < 20 |only if walking
Follow the path |goto 61.05,36.26 < 20 |only if walking
Follow the path |goto 63.26,30.34 < 20 |only if walking
kill Razorsaw##20798
|tip Razorsaw walks a path around the outside of the plateau.
collect Head of Forgefiend Razorsaw##29586 |q 10390/2 |goto 64.69,30.21
collect the Burning Legion Missive##29589 |goto 64.69,30.21 |q 10390
step
Use the Burning Legion Missive |use Burning Legion Missive##29590
accept Vile Plans##10393 |goto 64.69,30.21
step
label "ganargservant"
kill 10 Gan'arg Servant##16947+ |q 10390/1 |goto 64.95,31.81
step
Follow the path |goto Hellfire Peninsula/0 63.05,30.74 < 15 |only if walking
Follow the path |goto 61.17,36.32 < 20 |only if walking
Follow the path |goto 58.85,37.53 < 15 |only if walking
Follow the path |goto 57.09,35.81 < 15 |only if walking
Follow the path |goto 55.49,37.91 < 15 |only if walking
Enter the building |goto 55.14,37.36 < 7 |walk
Follow the path |goto 55.10,36.75 < 7 |walk
Follow the path |goto 55.40,36.33 < 7 |walk
talk Magister Bloodhawk##21175
turnin Vile Plans##10393 |goto 55.12,36.03
step
talk Nazgrel##3230
turnin Forge Camp: Mageddon##10390 |goto 55.02,35.97
accept Cannons of Rage##10391 |goto 55.02,35.97
step
Follow the path |goto 55.39,36.36 < 7 |walk
Follow the path |goto 55.09,36.76 < 7 |walk
Leave the building |goto 55.13,37.30 < 7 |walk
Follow the path |goto 55.60,38.07 < 15 |only if walking
Follow the path |goto 57.07,35.90 < 20 |only if walking
Go up the hill |goto 57.28,34.36 < 10 |only if walking
Go up the hill |goto 57.54,33.66 < 10 |only if walking
Go up the hill |goto 57.38,32.28 < 10 |only if walking
Go up the hill |goto 57.75,31.21 < 10 |only if walking
kill Fel Cannon MKI##22461+
|tip They are lined up along the cliff edge around the camp.
Slay #3# Fel Cannon MKI |q 10391/1 |goto 58.50,32.53
step
Follow the path |goto 57.75,31.21 < 10 |only if walking
Go down the hill |goto 57.38,32.28 < 10 |only if walking
Go down the hill |goto 57.54,33.66 < 10 |only if walking
Go down the hill |goto 57.28,34.36 < 10 |only if walking
Follow the path |goto 57.07,35.90 < 20 |only if walking
Follow the path |goto 55.60,38.07 < 15 |only if walking
Enter the building |goto 55.13,37.30 < 7 |walk
Follow the path |goto 55.09,36.76 < 7 |walk
Follow the path |goto 55.39,36.36 < 7 |walk
talk Nazgrel##3230
turnin Cannons of Rage##10391 |goto 55.02,35.96
accept Doorway to the Abyss##10392|goto 55.02,35.96
step
Follow the path |goto 55.39,36.36 < 7 |walk
Follow the path |goto 55.09,36.76 < 7 |walk
Leave the building |goto 55.13,37.30 < 7 |walk
Follow the path |goto 55.60,38.07 < 15 |only if walking
Follow the path |goto 57.07,35.90 < 20 |only if walking
Go up the hill |goto 57.28,34.36 < 10 |only if walking
Go up the hill |goto 57.54,33.66 < 10 |only if walking
Go up the hill |goto 54.60,29.37 < 20 |only if walking
kill Warbringer Arix'Amal##19298 |q 10392/1 |goto 53.09,26.47
collect Burning Legion Gate Key##29795 |q 10392/3 |goto 53.09,26.47
step
click Rune of Spite##182935
|tip It looks like a small green floating glyph inside the portal
|tip Stand right underneath it to be able to click the floating glyph.
Close the Burning Legion Gate |q 10392/2 |goto 53.05,27.63
step
Go down the hill |goto 54.60,29.37 < 20 |only if walking
Go down the hill |goto 57.54,33.66 < 10 |only if walking
Go down the hill |goto 57.28,34.36 < 10 |only if walking
Follow the path |goto 57.07,35.90 < 20 |only if walking
Follow the path |goto 55.60,38.07 < 15 |only if walking
Enter the building |goto 55.13,37.30 < 7 |walk
Follow the path |goto 55.09,36.76 < 7 |walk
Follow the path |goto 55.39,36.36 < 7 |walk
talk Nazgrel##3230
turnin Doorway to the Abyss##10392 |goto 55.02,35.96
step
talk Magister Bloodhawk##21175
accept The Agony and the Darkness##10389 |goto 55.12,36.03
stickystart "salvagedwood"
stickystart "bonechewerblood"
step
Follow the path |goto 55.39,36.36 < 7 |walk
Follow the path |goto 55.09,36.76 < 7 |walk
Leave the building |goto 55.13,37.30 < 7 |walk
Go through the gate |goto 55.67,41.87 < 10 |only if walking
click Salvageable Metal##182938
collect 8 Salvaged Metal##67419 |q 10086/1 |goto 56.63,46.58
step
label "salvagedwood"
click Salvageable Wood##182936
collect 8 Salvaged Wood##67420 |q 10086/2 |goto 56.63,46.58
step
label "bonechewerblood"
Kill Bonechewer enemies around this area
collect 12 Bonechewer Blood##30327 |q 10450/1 |goto 56.63,46.58
step
Go through the gate |goto 55.67,41.87 < 10 |only if walking
Follow the path |goto 55.49,39.43 < 10 |only if walking
talk Megzeg Nukklebust##21283
turnin I Work... For the Horde!##10086 |goto 55.18,38.79
accept Burn It Up... For the Horde!##10087 |goto 55.18,38.79
step
Enter the building |goto 55.13,37.30 < 7 |walk
Follow the path |goto 55.09,36.76 < 7 |walk
Follow the path |goto 55.39,36.36 < 7 |walk
talk Vurtok Axebreaker##21256
turnin Bonechewer Blood##10450 |goto 55.13,36.39
accept Apothecary Zelana##10449 |goto 55.13,36.39
step
Follow the path |goto 55.39,36.36 < 7 |walk
Follow the path |goto 55.09,36.76 < 7 |walk
Leave the building |goto 55.13,37.30 < 7 |walk
Follow the path |goto 55.89,39.59 < 15 |only if walking
Go up the hill |goto 57.01,39.71 < 10 |only if walking
Follow the path |goto 57.32,40.07 < 15 |only if walking
Follow the path |goto 57.54,41.49 < 15 |only if walking
Follow the path |goto 60.50,42.97 < 20 |only if walking
Follow the path |goto 62.21,46.10 < 20 |only if walking
Go up the hill |goto 63.79,45.70 < 15 |only if walking
Follow the path |goto 64.69,43.59 < 15 |only if walking
talk Apothecary Zelana##21257
turnin Apothecary Zelana##10449 |goto 66.17,41.95
accept Spinebreaker Post##10242 |goto 66.17,41.95
step
talk Amilya Airheart##19558
fpath Spinebreaker Ridge |goto 61.7,81.2
step
talk Ogath the Mad##19683
accept The Warp Rifts##10278 |goto 61.9,81.5
step
talk Emissary Mordiba##19682
accept Make Them Listen##10220 |goto 61.8,81.7
step
talk Apothecary Albreck##21279
turnin Spinebreaker Post##10242 |goto 61.1,81.8
accept Boiling Blood##10538 |goto 61.1,81.8
step
talk Grelag##16858
accept Preparing the Salve##9345 |goto 60.9,81.7
step
click Wanted Poster##184945
accept Wanted: Worg Master Kruush##10809 |goto 61.2,80.6
step
click Hellfire Spineleaf##181372
|tip They are small brown and green plants all around this area.
collect 12 Hellfire Spineleaf##23205 |q 9345/1 |goto 61.9,76.7
You can find more around the following location |goto Hellfire Peninsula 61.2,68.2
step
kill 12 Unyielding Footman##16904 |q 10220/1 |goto 58,79
kill 8 Unyielding Knight##16906 |q 10220/2 |goto 58,79
kill 6 Unyielding Sorcerer##16905 |q 10220/3 |goto 58,79
collect A Mysterious Tome##28552 |n
step
Use A Mysterious Tome |use A Mysterious Tome##28552
accept Decipher the Tome##10229
step
talk Grelag##16858
turnin Preparing the Salve##9345 |goto 60.9,81.7
accept Investigate the Crash##10213 |goto 60.9,81.7
step
talk Althen the Historian##19736
turnin Decipher the Tome##10229 |goto 61.8,81.7
accept The Battle Horn##10230 |goto 61.8,81.7
step
talk Emissary Mordiba##19682
turnin Make Them Listen##10220 |goto 61.7,81.7
step
kill Lieutenant Commander Thalvos##16978
collect Unyielding Battle Horn##28562 |q 10230/1 |goto 54.7,83.7
step
talk Althen the Historian##19736
turnin The Battle Horn##10230 |goto 61.8,81.7
accept Bloody Vengeance##10250 |goto 61.8,81.7
step
Use the Unyielding Battle Horn |use Unyielding Battle Horn##28651
|tip Use the Unyielding Battle Horn next to the white flag.
kill Urtrak##19862 |q 10250/1 |goto 63.5,77.6
step
talk Althen the Historian##19736
turnin Bloody Vengeance##10250 |goto 61.8,81.7
accept Honor the Fallen##10258 |goto 61.8,81.7
step
talk Commander Hogarth##19937
turnin Honor the Fallen##10258 |goto 56.9,77.4
|tip If you have a flying mount you can fly in through the top of the building and avoid fighting any mobs.
step
kill Bleeding Hollow Tormentor##19424+, Bleeding Hollow Necrolyte##19422+, Bleeding Hollow Grunt##16871+, Bleeding Hollow Peon##16907+, Bleeding Hollow Dark Shaman##16873+
collect 12 Bleeding Hollow Blood##30425 |q 10538 |goto 65.9,73.7
Plenty more mobs can be found further inside the outpost at the following location |goto Hellfire Peninsula 68.1,72.3
step
kill Worg Master Kruush##19442
|tip He's standing in the stables.
collect Worg Master's Head##31374 |q 10809/1 |goto 68.4,73.6
step
click Cursed Cauldron##184715
|tip Each time you click the cauldron, scarabs will run out.
|tip Run away and stand away from the cauldron until the scarabs disappear.
collect 12 Boiled Blood##30430 |q 10538/1 |goto 65.2,71.2
step
talk Captain Darkhowl##22107
turnin Wanted: Worg Master Kruush##10809 |goto 61.2,81.3
accept Zeth'Gor Must Burn!##10792 |goto 61.2,81.3
step
talk Apothecary Albreck##21279
turnin Boiling Blood##10538 |goto 61.1,81.8
accept Apothecary Antonivich##10835 |goto 61.1,81.8
step
talk Zezzak##22231
accept The Eyes of Grillok##10813 |goto 61.7,81.9
step
clicknpc Eye of Grillok##19440+
use Zezzak's Shard##31463
|tip Use Zezzak's Shard on an Eye of Grillok.
|tip It has to channel for 3 seconds and turn your character green. They look like a floating green eye
Absorb an Eye of Grillok |havebuff 136030 |q 10813 |goto 66.4,74
step
Return the Eye of Grillok |q 10813/1 |goto 61.7,81.9
step
talk Zezzak##22231
turnin The Eyes of Grillok##10813 |goto 61.7,81.9
accept Grillok "Darkeye"##10834 |goto 61.7,81.9
step
kill Grillok "Darkeye"##19457
collect Grillok's Eyepatch##31529 |q 10834/1 |goto 66.6,71.4
step
kill Bleeding Hollow Peon##16907+
collect 4 Bleeding Hollow Torch##31347 |n |goto 68.7,69.8
Once you have collected 4 torches, use them at the forge |goto Hellfire Peninsula 69.2,69.2 < 5 |walk
Use the Bleeding Hollow Torch |use Bleeding Hollow Torch##31347
collect 4 Burning Bleeding Hollow Torch##31346 |q 10792 |goto 69.2,69.2
step
Use the Bleeding Hollow Torch |use Burning Bleeding Hollow Torch##31346
|tip Stand near the Eastern Hovel.
Burn the Eastern Hovel |q 10792/2 |goto 69.5,70.2
step
Use the Bleeding Hollow Torch |use Burning Bleeding Hollow Torch##31346
|tip Stand near the Stable.
Burn the Stable |q 10792/4 |goto 68.6,72.9
step
Use the Bleeding Hollow Torch |use Burning Bleeding Hollow Torch##31346
|tip Stand near the Western Hovel.
Burn the Western Hovel |q 10792/3 |goto 67.6,75.5
step
Use the Bleeding Hollow Torch |use Burning Bleeding Hollow Torch##31346
|tip Stand near the Barracks.
Burn the Barracks |q 10792/1 |goto 68.8,76.4
step
talk Captain Darkhowl##22107
turnin Zeth'Gor Must Burn!##10792 |goto 61.2,81.3
step
talk Zezzak##22231
turnin Grillok "Darkeye"##10834 |goto 61.7,81.9
step
talk "Screaming" Screed Luckheed##19367
turnin Investigate the Crash##10213 |goto 49.2,74.8
accept In Case of Emergency...##10161 |goto 49.2,74.8
step
talk Legassi##19344
accept Ravager Egg Roundup##9349 |goto 49.2,74.8
step
click Zeppelin Debris##183397
|tip They look like pieces of metal and wood around this whole area.
collect 30 Zeppelin Debris##28116 |q 10161/1 |goto 58.1,71.3
More can be found around the following location |goto Hellfire Peninsula 63.3,68.9
step
talk "Screaming" Screed Luckheed##19367
turnin In Case of Emergency...##10161 |goto 49.2,74.8
accept Voidwalkers Gone Wild##9351 |goto 49.2,74.8
stickystart "condvoidessence"
step
Use the Unstable Warp Rift Generator |use Unstable Warp Rift Generator##29027
|tip Use your Unstable Warp Rift Generator under the big black ball of lightning.
kill Unstable Voidwalker##20145+
collect 3 Warp Nether##29051 |q 10278/1 |goto 46.8,83.1
step
label "condvoidessence"
kill Uncontrolled Voidwalker##16975+, Rogue Voidwalker##16974+
collect 10 Condensed Voidwalker Essence##23218 |q 9351/1 |goto 49.5,81.8
step
click Ravager Egg##181385
kill Razorfang Ravagers##16933+
collect 12 Ravager Egg##23217 |q 9349/1 |goto 41.2,84.4
|tip The Hatchlings don't drop the eggs.
step
talk "Screaming" Screed Luckheed##19367
turnin Voidwalkers Gone Wild##9351 |goto 49.2,74.8
step
talk Legassi##19344
turnin Ravager Egg Roundup##9349 |goto 49.2,74.8
accept Helboar, the Other White Meat##9361 |goto 49.2,74.8
step
kill Hulking Helboar##16880+, Starving Helboar##16879+, Deranged Helboar##16863+
collect Tainted Helboar Meat##23270 |n |goto 50.2,74.8
Use the Purification Mixture |use Purification Mixture##23268
|tip Use your Purification Mixture on the Tainted Helboar Meat.
collect 8 Purified Helboar Meat##23248 |q 9361/1 |goto 50.2,74.8
|tip The meat won't become purified every time, it can become toxic as well.
step
kill Crust Burster##16844+
|tip They are under the jumping piles of rocks, they come up to fight when you get close.
collect Eroded Leather Case##23338 |n
Use the Eroded Leather Case |use Eroded Leather Case##23338
accept Missing Missive##9373 |goto 47.8,65.8
step
talk Legassi##19344
turnin Helboar, the Other White Meat##9361 |goto 49.2,74.8
accept Smooth as Butter##9356 |goto 49.2,74.8
step
kill Bonestripper Buzzard##16972+
collect 12 Plump Buzzard Wing##23239 |q 9356/1 |goto 62.6,67.3
More Buzzards can be found at the following location |goto Hellfire Peninsula 65.8,63.7
step
talk Legassi##19344
turnin Smooth as Butter##9356 |goto 49.2,74.8
step
talk Ogath the Mad##19683
turnin The Warp Rifts##10278 |goto 61.9,81.5
accept Void Ridge##10294 |goto 61.9,81.5
step
kill Collapsing Voidwalker##17014+, Vacillating Voidcaller##19527+
collect 40 Void Ridge Soul Shard##29161 |q 10294/1 |goto 77.6,66.5
step
talk Ogath the Mad##19683
turnin Void Ridge##10294 |goto 61.9,81.5
accept From the Abyss##10295 |goto 61.9,81.5
step
use Warp Rift Generator##29226
kill Void Baron Galaxis##16939
collect Galaxis Soul Shard##29162 |q 10295/1 |goto 81.1,78.9
step
talk Ogath the Mad##19683
turnin From the Abyss##10295 |goto 61.9,81.5
step
talk Apothecary Antonivich##16588
turnin Apothecary Antonivich##10835 |goto 52.3,36.5
accept A Burden of Souls##10864 |goto 52.3,36.5
step
talk Foreman Razelcraz##16915
accept Outland Sucks!##10236 |goto 51.4,30.6
step
click Shredder Parts##235310
collect 6 Shredder Spare Parts##28554 |q 10236/1 |goto 48.9,35.4
Additional spare parts can be found around the following location |goto Hellfire Peninsula 47.3,42.2
step
talk Foreman Razelcraz##16915
turnin Outland Sucks!##10236 |goto 51.4,30.6
accept How to Serve Goblins##10238 |goto 51.4,30.6
stickystart "reapshattered"
step
click Manni's Cage##183936
Save Manni |q 10238/1 |goto 45.1,41.0
step
click Moh's Cage##183940
Save Moh |q 10238/2 |goto 46.5,45.2
step
click Jakk's Cage##183941
Save Jakk |q 10238/3 |goto 47.5,46.6
step
label "reapshattered"
kill Shattered Hand Berserker##16878+, Shattered Hand Guard##19414+
Reap #20# Shattered Hand Souls |q 10864/1 |goto 45.9,39.8
You can find more Shattered Hand mobs at the following location |goto Hellfire Peninsula 47.0,45.3
step
talk Apothecary Antonivich##16588
turnin A Burden of Souls##10864 |goto 52.3,36.5
accept The Demoniac Scryer##10838 |goto 52.3,36.5
step
use Demoniac Scryer##31606
Defend the Demoniac Scryer
|tip A bunch of purple things start swirling around it.
talk Demoniac Scryer##22258
Select "_Yes, Scryer. You may possess me._"
collect Demoniac Scryer Reading##31607 |q 10838/1 |goto 45.5,47.2
step
talk Apothecary Antonivich##16588
turnin The Demoniac Scryer##10838 |goto 52.3,36.5
accept Report to Nazgrel##10875 |goto 52.3,36.5
step
talk Nazgrel##3230
turnin Report to Nazgrel##10875 |goto 55,36
step
talk Foreman Razelcraz##16915
turnin How to Serve Goblins##10238 |goto 51.4,30.6
accept Shizz Work##10629 |goto 51.4,30.6
step
Use the Felhound Whistle |use Felhound Whistle##30803 |goto 51.4,30.6
|tip Use the Felhound Whistle while standing next to Forman Razelcraz.
confirm |q 10629
step
kill Deranged Helboar##16863+
|tip The Fel Guard Hound will eat the corpses and poop.
click Felhound Poo##184980
collect Shredder Keys##30794 |q 10629/1 |goto 49.9,29.3
step
talk Foreman Razelcraz##16915
turnin Shizz Work##10629 |goto 51.4,30.6
accept Beneath Thrallmar##10630 |goto 51.4,30.6
step
_Enter_ the mine |goto Hellfire Peninsula 51.6,31.7 < 10 |walk
kill Urga'zz##18976 |q 10630/1 |goto 54.4,31.4 |indoors Thrallmar Mine
|tip All the way in the back of the mine.
step
talk Foreman Razelcraz##16915
turnin Beneath Thrallmar##10630 |goto 51.4,30.6
step
Use the Flaming Torch |use Flaming Torch##27479
Burn the Eastern Cannon |q 10087/1 |goto 61.1,52.3
step
Use the Flaming Torch |use Flaming Torch##27479
Burn the Western Cannon |q 10087/2 |goto 55,54
step
talk Megzeg Nukklebust##21283
turnin Burn It Up... For the Horde!##10087 |goto 55.2,38.8
step
Find Krun Spinebreaker |q 9400/1 |goto 33.6,43.5
step
clicknpc Fel Orc Corpse##17062
turnin The Assassin##9400 |goto 33.6,43.5
accept A Strange Weapon##9401 |goto 33.6,43.5
step
talk Magistrix Carinda##16793
accept Arelion's Journal##9374 |goto 26.4,60.3
step
talk Apothecary Azethen##16794
accept Source of the Corruption##9387 |goto 26.8,59.7
step
talk Ryathen the Somber##16791
accept In Need of Felblood##9366 |goto 27,59.5
step
talk Arcanist Calesthris Dawnstar##16792
accept Magic of the Arakkoa##9396 |goto 27.1,59.8
step
talk Falconer Drenna Riverwind##16790
accept Trueflight Arrows##9381 |goto 27.7,60.3
accept Birds of a Feather##9397 |goto 27.7,60.3
accept Helping the Cenarion Post##10442 |goto 27.7,60.3
step
talk Innalia##18942
fpath Falcon Watch |goto 27.8,60
step
click Wanted Poster##181638
accept Wanted: Blacktalon the Savage##9466 |goto 28.0,60.3
step
click Orb of Translocation##184500
talk Ranger Captain Venn'ren##16789
turnin Falcon Watch##9498 |only if not BloodElf |goto 28.5,60.2
turnin Falcon Watch##9499 |only BloodElf |goto 28.5,60.2
accept The Great Fissure##9340 |goto 28.5,60.2
accept Report to Zurai##10103 |goto 28.5,60.2
step
click Orb of Translocation##184500 |goto Hellfire Peninsula/0 28.4,60.2
confirm |q 9466
step
kill Bonestripper Vulture##16973+
collect 8 Bonestripper Tail Feather##23387 |q 9381/1 |goto 30.2,54
You can find more Bonestripper Vultures around the following location |goto Hellfire Peninsula 26.4,47.1
stickystart "felbloodsamp"
step
click Arelion's Knapsack##184115
collect Arelion's Knapsack##31955 |n
Use the Arelion's Knapsack |use Arelion's Knapsack##31955
collect Arelion's Journal##23339 |q 9374/1 |goto 40.1,37.2
step
label "felbloodsamp"
kill 10 Terrorfiend##16951+ |q 10389/1 |goto 39.4,36.1
collect 6 Felblood Sample##23269 |q 9366/1 |goto 39.4,36.1
step
kill 8 Stonescythe Whelp##16927 |q 9340/1 |goto 35.5,57.4
kill 3 Stonescythe Alpha##16929 |q 9340/2 |goto 35.5,57.4
step
Enter the cave |goto 34.1,63.1 < 10 |walk
kill Blacktalon the Savage##17057
collect Blacktalon's Claws##23687 |q 9466/1 |goto 33.1,65.1
step
Leave the cave |goto 34.1,63.1 < 10 |walk
click Orb of Translocation##184500
talk Ranger Captain Venn'ren##16789
turnin Wanted: Blacktalon the Savage##9466 |goto 28.5,60.2
step
click Orb of Translocation##184500 |goto Hellfire Peninsula/0 28.4,60.2
confirm |q 9374
step
talk Magistrix Carinda##16793
turnin Arelion's Journal##9374 |goto 26.4,60.3
accept Arelion's Secret##10286 |goto 26.4,60.3
step
talk Ryathen the Somber##16791
turnin In Need of Felblood##9366 |goto 27,59.5
accept The Cleansing Must Be Stopped##9370 |goto 27,59.5
step
talk Falconer Drenna Riverwind##16790
turnin Trueflight Arrows##9381 |goto 27.7,60.3
step
click Orb of Translocation##184500
talk Ranger Captain Venn'ren##16789
turnin The Great Fissure##9340 |goto 28.5,60.2
accept Marking the Path##9391 |goto 28.5,60.2
step
click Orb of Translocation##184500 |goto Hellfire Peninsula/0 28.4,60.2
confirm |q 9373
step
Use the Signaling Gem |use Signaling Gem##23358
kill Draenei Anchorite##16994 |q 9370/1 |goto 39,40.3
step
talk Magister Aledis##20159
|tip He rides along the road on a hawkstrider mount, going from Falcon Watch to Zangarmarsh. Some searching may be required.
Ask him _"Magistrix Carinda has sent me to ask you about Arelion's secret. Who was he seeing?"_
kill Magister Aledis##20159
turnin Arelion's Secret##10286 |goto 18.1,49.9
accept The Mistress Revealed##10287 |goto 18.1,49.9
step
talk Thiah Redmane##16991
turnin Missing Missive##9373 |goto 15.7,52
turnin Helping the Cenarion Post##10442 |goto 15.7,52
accept Demonic Contamination##9372 |goto 15.7,52
step
talk Mahuram Stouthoof##16888
accept Keep Thornfang Hill Clear!##10159 |goto 15.7,52.3
step
talk Amythiel Mistwalker##16885
accept The Cenarion Expedition##9912 |goto 16.0,52.2
step
kill Hulking Helboar##16880+
collect 6 Helboar Blood Sample##23336 |q 9372/1 |goto 24.9,54.3
More Helboars can be found at the following location |goto Hellfire Peninsula 24.7,62.0
step
talk Magistrix Carinda##16793
turnin The Mistress Revealed##10287 |goto 26.4,60.3
accept Arelion's Mistress##9472 |goto 26.4,60.3
step
talk Ryathen the Somber##16791
turnin The Cleansing Must Be Stopped##9370 |goto 27,59.5
step
click the Western Beacon##181581
Light the Western Beacon |q 9391/1 |goto 30,60.5
step
click the Central Beacon##181580
Light the Central Beacon |q 9391/2 |goto 34,60
step
click the Southern Beacon##181579
Light the Southern Beacon |q 9391/3 |goto 36.1,65.4
step
click Orb of Translocation##184500
talk Ranger Captain Venn'ren##16789
turnin Marking the Path##9391 |goto 28.5,60.2
step
click Orb of Translocation##184500 |goto Hellfire Peninsula/0 28.4,60.2
confirm |q 9372
step
talk Thiah Redmane##16991
turnin Demonic Contamination##9372 |goto 15.7,52
accept Testing the Antidote##10255 |goto 15.7,52
step
clicknpc Hulking Helboar##16880
use Cenarion Antidote##23337
|tip Use the Cenarion Antidote on a Hulking Helboar.
kill Dreadtusk##16992
Administer the Antidote |q 10255/1 |goto 25,54
step
talk Thiah Redmane##16991
turnin Testing the Antidote##10255 |goto 15.7,52
step
kill 8 Thornfang Ravager##19349 |q 10159/1 |goto 12.3,49.9
kill 8 Thornfang Venomspitter##19350 |q 10159/2 |goto 12.3,49.9
You can find more of these around |goto Hellfire Peninsula 11.1,54.7
step
talk Innkeeper Coryth Stoktron##18907
buy 1 Cenarion Spirits##29112 |condition itemcount(29112) >= 1 |q 9483 |future |goto Zangarmarsh 78.5,62.9
step
talk Mahuram Stouthoof##16888
turnin Keep Thornfang Hill Clear!##10159 |goto Hellfire Peninsula 15.7,52
step
talk Akoru the Firecaller##20678
accept Naladu##10403 |goto 15.6,58.8
step
talk Naladu##19361
|tip He is inside the small hut.
turnin Naladu##10403 |goto 16.3,65.1
accept A Traitor Among Us##10367 |goto 16.3,65.1
step
click Metal Coffer##184466
|tip In the back of the big red hut, on the floor.
collect Sha'naar Key##29501 |q 10367/1 |goto 14.3,63.5
step
talk Naladu##19361
turnin A Traitor Among Us##10367 |goto 16.3,65.1
accept The Dreghood Elders##10368 |goto 16.3,65.1
step
talk Akoru the Firecaller##20678
Tell him _"Walk free, elder. Bring the spirits back to your tribe."_
Free Akoru the Firecaller |q 10368/2 |goto 15.6,58.8
step
talk Aylaan the Waterwaker##20679
Tell him _"Walk free, elder. Bring the spirits back to your tribe."_
Free Aylaan the Waterwaker |q 10368/3 |goto 13,58.4
step
talk Morod the Windstirrer##20677
Tell him _"Walk free, elder. Bring the spirits back to your tribe."_
Free Morod the Windstirrer |q 10368/1 |goto 13.1,61
step
talk Naladu##19361
turnin The Dreghood Elders##10368 |goto 16.3,65.1
accept Arzeth's Demise##10369 |goto 16.3,65.1
step
use Staff of the Dreghood Elders##29513
|tip Wait until Arzeth the Merciless is up on top of the stairs by himself.
|tip Use the Staff of the Dreghood Elders on Arzeth the Merciless.
kill Arzeth the Powerless##20680 |q 10369/1 |goto 14.4,62.3
step
talk Naladu##19361
turnin Arzeth's Demise##10369 |goto 16.3,65.1
step
kill Illidari Taskmaster##17058+
|tip Single-target the Taskmasters and don't hit the Dreghood Brutes; they'll lose aggro and run away once you kill the Taskmaster.
collect 5 Demonic Essence##29113 |q 9387/1 |goto 15.1,55.7
step
talk Apothecary Azethen##16794
turnin Source of the Corruption##9387 |goto 26.8,59.7
step
talk Viera Sunwhisper##17226
accept Life's Finer Pleasures##9483 |goto 27.1,62.1 |instant
step
Follow Viera Sunwhisper as she walks
use Carinda's Scroll of Retribution##23693
|tip When she stops, use Carinda's Scroll of Retribution on her.
Use Carinda's Scroll of Retribution |q 9472/1 |goto 26.6,63.9
step
talk Magistrix Carinda##16793
turnin Arelion's Mistress##9472 |goto 26.4,60.3
step
click Kaliri Nest##181582
clicknpc Female Kaliri Hatchling##17034
use Empty Birdcage##23485
|tip When a female Kaliri hatchling spawns, use your Empty Birdcage on it.
Cage the Female Kaliri Hatchling |q 9397/1 |goto 25.4,71.6
step
Follow the path |goto Hellfire Peninsula 26.1,77.1 < 10 |only if walking
kill Avruu##17084
|tip Up the path, and over the bridge, to the left.
collect Avruu's Orb##23580 |n
Use the Avruu's Orb |use Avruu's Orb##23580
accept Avruu's Orb##9418 |goto 25.7,75.1
step
click the Haal'eshi Altar##6964
Select "_Place Avruu's Orb at the altar._"
|tip Fight Aeranas until he's almost dead.
talk Aeranas##17085
turnin Avruu's Orb##9418 |goto 29,81.5
step
kill Haal'eshi Windwalker##16966+, Haal'eshi Talonguard##16967+, Avruu##17084
|tip You can find them all around this area, and in the canyon also.
collect 4 Haal'eshi Scroll##23483 |q 9396/1 |goto 25.6,70.3
step
talk Wounded Blood Elf Pilgrim##16993
|tip She is on the ground floor
accept The Road to Falcon Watch##9375 |goto 24.6,76
step
Follow and protect the Wounded Blood Elf Pilgrim
Escort Wounded Blood Elf Pilgrim to Falcon Watch |q 9375/1 |goto 27.1,61.9
step
talk Taleris Dawngazer##17015
turnin The Road to Falcon Watch##9375 |goto 27.2,61.9
accept A Pilgrim's Plight##9376 |goto 27.2,61.9
step
talk Arcanist Calesthris Dawnstar##16792
turnin Magic of the Arakkoa##9396 |goto 27.1,59.8
step
talk Falconer Drenna Riverwind##16790
turnin Birds of a Feather##9397 |goto 27.7,60.3
step
talk Magister Bloodhawk##21175
turnin The Agony and the Darkness##10389 |goto 55.1,36
step
talk Nazgrel##3230
turnin A Strange Weapon##9401 |goto 55,36
accept The Warchief's Mandate##9405 |goto 55,36
step
talk Far Seer Regulkut##16574
turnin The Warchief's Mandate##9405 |goto 54.2,37.9
accept A Spirit Guide##9410 |goto 54.2,37.9
step
use Ancestral Spirit Wolf Totem##23669 |goto 33.6,43.5 < 10 |walk
|tip Use your Ancestral Spirit Wolf Totem next to the Fel Orc Corpse.
|tip It's a corpse laying halfway up the hill.
Follow the Ancestral Spirit Wolf |goto 32,27.8 < 10 |q 9410
|tip Stay close to the wolf and follow it until it stops, or you will not be able to turn in the quest.
step
talk Gorkan Bloodfist##16845
turnin A Spirit Guide##9410 |goto 32,27.8
accept The Mag'har##9406 |goto 32,27.8
step
talk Nazgrel##3230
turnin The Mag'har##9406 |goto 55,36
step
click Torn Pilgrim's Pack##184478
collect Torn Pilgrim's Pack##23343 |q 9376/1 |goto 22.1,68.3
step
talk Taleris Dawngazer##17015
turnin A Pilgrim's Plight##9376 |goto 27.2,61.9
step
We recommend being at least level 80 before trying to complete this guide
talk Nazgrel##3230
accept Cruel's Intentions##10136 |goto Hellfire Peninsula 55.0,36.0
accept The Foot of the Citadel##10876 |goto Hellfire Peninsula 55.0,36.0
step
kill Arazzius the Cruel##19191 |q 10136/1 |goto 43.9,31.6
step
kill Force-Commander Gorax##19264
|tip He walks back and forth in this small area
Use your Challenge from the Horde on Force-Commander Gorax's corpse |use Challenge from the Horde##31702
kill Hand of Kargath##22374
collect The Head of the Hand of Kargath##31706 |q 10876/1 |goto 47.3,49.6
step
talk Nazgrel##3230
turnin Cruel's Intentions##10136 |goto 55.0,36.0
turnin The Foot of the Citadel##10876 |goto 55.0,36.0
step
talk Tola'thion##19293
accept Colossal Menace##10132 |goto 15.6,52.0
step
kill 5 Raging Colossus##19188+ |q 10132/1 |goto 14.7,44.6
collect Crimson Crystal Shard##29476 |n
Use the Crimson Crystal Shard in your bags |use Crimson Crystal Shard##29476
accept Crimson Crystal Clue##10134 |goto 14.7,44.6
step
talk Tola'thion##19293
turnin Colossal Menace##10132 |goto 15.6,52.0
turnin Crimson Crystal Clue##10134 |goto 15.6,52.0
accept The Earthbinder##10349 |goto 15.6,52.0
step
talk Earthbinder Galandria Nightbreeze##19294
turnin The Earthbinder##10349 |goto 16.0,51.6
accept Natural Remedies##10351 |goto 16.0,51.6
step
Use your Seed of Revitalization while standing on the Earthbinder's Circle |use Seed of Revitalization##29478
|tip It's a bright green symbol on the ground
kill Goliathon##19305
Revitalize Fallen Sky Ridge |q 10351/1 |goto 13.6,39.1
step
talk Earthbinder Galandria Nightbreeze##19294
turnin Natural Remedies##10351 |goto 16.0,51.6
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Wrath of the Lich King (60-80)\\Howling Fjord (58-80)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Howling",
next="Leveling Guides\\Wrath of the Lich King (60-80)\\Dragonblight (61-80)",
condition_suggested=function() return level >= 58 and level <= 80 and not completedq(12181) end,
startlevel=58,
endlevel=80,
},[[
step
talk Apothecary Lysander##24126
|tip He is on the ground outside the tower.
accept The New Plague##11167 |goto Howling Fjord 78.5,29.0
step
talk Timothy Holland##24342
home Vengeance Landing |goto 79.7,30.8 |q 11167
step
talk Pontius##23938
accept Let Them Eat Crow##11227 |goto 79.2,31.2
step
talk High Executor Anselm##23780
accept War is Hell##11270 |goto 78.6,31.2
step
Use the Plaguehound Cage |use Plaguehound Cage##33221
|tip Use your Plaguehound Cage.
kill Fjord Crow##23945+
|tip They are flying overhead around this area.
collect 5 Crow Meat##33238 |n |goto 75.8,31.5
Use the Crow Meat |use Crow Meat##33238
Feed Your Plaguehound #5# Times |q 11227/1 |goto 75.8,31.5
step
clicknpc Alliance Corpse##24008+
clicknpc Forsaken Corpse##24008+
Use the Burning Torch |use Burning Torch##33278
|tip Use your Burning Torch on Alliance and Forsaken Corpses.
|tip They are dead bodies laying on the ground.
Burn #10# Fallen Combatants |q 11270/1 |goto 75.8,31.5
step
click Plague Containers##186390
|tip Found on the top and bottom decks of this ship. Also found on the shore next to the ship. The bottom deck is flooded and will require you to swim underwater to get to.
collect 10 Intact Plague Container##33099 |q 11167/1 |goto 81.0,35.5
step
talk High Executor Anselm##23780
turnin War is Hell##11270 |goto 78.6,31.2
accept Reports from the Field##11221 |goto 78.6,31.2
step
talk Pontius##23938
turnin Let Them Eat Crow##11227 |goto 79.2,31.2
accept Sniff Out the Enemy##11253 |goto 79.2,31.2
step
talk Apothecary Lysander##24126
turnin The New Plague##11167 |goto 78.5,29.0
accept Spiking the Mix##11168 |goto 78.5,29.0
step
talk Deathstalker Razael##23998
Tell him _"High Executor Anseim wants a report on the situation."_
Listen to Razael's Report |q 11221/1 |goto 77.6,34.7
step
talk Dark Ranger Lyana##23778
Tell her _"High Executor Anseim requests your report."_
Listen to Lyana's Report |q 11221/2 |goto 78.7,37.1
step
talk High Executor Anselm##23780
turnin Reports from the Field##11221 |goto 78.6,31.2
accept The Windrunner Fleet##11229 |goto 78.6,31.2
step
Stand next to Pontius |goto 79.2,31.2 < 10 |walk
|tip Standing in front of some dog kennels.
Use the Plaguehound Leash |use Plaguehound Leash##33486
Follow the Plaguehound Tracker |goto 76.5,20.1 < 10 |q 11253
step
click Dragonskin Scroll##186585
|tip It is inside the cave.
turnin Sniff Out the Enemy##11253 |goto 75.9,19.7
accept The Dragonskin Map##11254 |goto 75.9,19.7
step
kill Giant Tidecrawler##23929+
collect 3 Giant Toxin Gland##33337 |q 11168/1 |goto 76.9,20
step
talk Apothecary Lysander##24126
turnin Spiking the Mix##11168 |goto 78.5,29
accept Test at Sea##11170 |goto 78.5,29
step
talk High Executor Anselm##23780
turnin The Dragonskin Map##11254 |goto 78.6,31.2
accept The Offensive Begins##11295 |goto 78.6,31.2
step
talk Bat Handler Camille##23816
Tell her _"I need a riding bat to intercept the Alliance reinforcements."_
Use the Plague Vials |use Plague Vials##33349
Infect #16# North Fleet Reservists |q 11170/1 |goto 79.0,29.8
step
talk Apothecary Lysander##24126
turnin Test at Sea##11170 |goto 78.5,29
accept New Agamand##11304 |goto 78.5,29
step
talk Captain Harker##24037
|tip He is standing on deck up by the helm.
turnin The Windrunner Fleet##11229 |goto 84.7,36.5
accept Ambushed!##11230 |goto 84.7,36.5
step
kill 15 North Fleet Marine##23983 |q 11230/1 |goto 84.7,36.5
step
talk Captain Harker##24037
turnin Ambushed!##11230 |goto 84.7,36.5
accept Guide Our Sights##11232 |goto 84.7,36.5
step
Use the Cannoneer's Smoke Flare |use Cannoneer's Smoke Flare##33335
|tip Use Cannoneer's Smoke Flare next to the cannon. It's a cannon on top of the wooden wall.
Mark the Eastern Cannon |q 11232/1 |goto 80.3,38.2
step
Use the Cannoneer's Smoke Flare |use Cannoneer's Smoke Flare##33335
|tip Use Cannoneer's Smoke Flare next to the cannon. It's a cannon on top of the wooden wall.
Mark the Western Cannon |q 11232/2 |goto 79.3,40.1
step
talk Dark Ranger Lyana##23778
turnin Guide Our Sights##11232 |goto 78.7,37.1
accept Landing the Killing Blow##11233 |goto 78.7,37.1
step
kill Sergeant Lorric##23963 |q 11233/3 |goto 82.2,40.8
|tip Standing between 2 cannons on the shore.
step
kill Captain Olster##23962 |q 11233/1 |goto 81.5,43.4
|tip Standing in front of a tent.
step
kill Lieutenant Celeyne##23964 |q 11233/2 |goto 83.2,43.3
|tip Standing on a big flat rock on the shore.
step
talk Apothecary Hanes##23784
accept Trail of Fire##11241 |goto 83.2,43.2
step
Escort Apothecary Hanes to Safety |q 11241/1 |goto 78.7,37.2
step
talk Dark Ranger Lyana##23778
turnin Landing the Killing Blow##11233 |goto 78.7,37.1
accept Report to Anselm##11234 |goto 78.7,37.1
step
talk High Executor Anselm##23780
turnin Report to Anselm##11234 |goto 78.6,31.2
step
talk Apothecary Lysander##24126
turnin Trail of Fire##11241 |goto 78.5,29
step
Take the lift up |goto 73.4,35.3 < 10 |only if walking
talk Sergeant Gorth##24027
turnin The Offensive Begins##11295 |goto 71.1,39.1
accept A Lesson in Fear##11282 |goto 71.1,39.1
step
talk Longrunner Nanik##28314
accept Help for Camp Winterhoof##12566 |goto 71.5,39.2
step
kill Winterskorn Defender##24015+
Oric the Baleful will spawn here
|tip You will see them yell in red text in your chat.
kill Oric the Baleful##24161
Use the Forsaken Banner |use Forsaken Banner##33563
|tip Use your Forsaken Banner on his corpse.
Impale Oric the Baleful |q 11282/1 |goto 69.1,38.5
step
kill Winterskorn Defender##24015+
Gunnar Thorvardsson will spawn here
|tip You will see them yell in red text in your chat.
kill Gunnar Thorvardsson##24162
Use the Forsaken Banner |use Forsaken Banner##33563
|tip Use your Forsaken Banner on his corpse.
Impale Gunnar Thorvardsson |q 11282/3 |goto 69.6,40.1
step
kill Winterskorn Defender##24015+
Ulf the Bloodletter will spawn here
|tip You will see them yell in red text in your chat.
kill Ulf the Bloodletter##24016
Use the Forsaken Banner |use Forsaken Banner##33563
|tip Use your Forsaken Banner on his corpse.
Impale Ulf the Bloodletter |q 11282/2 |goto 69.4,39.5
step
talk Sergeant Gorth##24027
turnin A Lesson in Fear##11282 |goto 71.1,39.1
accept Baleheim Must Burn!##11285 |goto 71.1,39.1
accept Baleheim Bodycount##11283 |goto 71.1,39.1
stickystart "winterskornvry"
step
Use the Gorth's Torch |use Gorth's Torch##33472
|tip Use Gorth's Torch while standing next to this tower.
Burn the Winterskorn Watchtower |q 11285/2 |goto 66.7,39.8
step
Use the Gorth's Torch |use Gorth's Torch##33472
|tip Use Gorth's Torch while standing next to this tower.
Burn the Winterskorn Bridge |q 11285/3 |goto 66.2,39.6
step
Use the Gorth's Torch |use Gorth's Torch##33472
|tip Use Gorth's Torch while standing next to this tower.
Burn the Winterskorn Barracks |q 11285/4 |goto 64.0,40.8
step
Use the Gorth's Torch |use Gorth's Torch##33472
|tip Use Gorth's Torch while standing next to this tower.
Burn the Winterskorn Dwelling |q 11285/1 |goto 64.9,40.9
step
label "winterskornvry"
kill Winterskorn Spearman##23653+, Winterskorn Bonegrinder##23655+, Winterskorn Defender##24015+
Kill #16# Winterskorn Vrykuls |q 11283/1 |goto Howling Fjord/0 64.8,40.0
step
talk Sergeant Gorth##24027
turnin Baleheim Bodycount##11283 |goto 71.1,39.1
turnin Baleheim Must Burn!##11285 |goto 71.1,39.1
accept The Ambush##11303 |goto 71.1,39.1
step
talk Lydell##24458
turnin The Ambush##11303 |goto 65.9,36.8
accept Adding Injury to Insult##12481 |goto 65.9,36.8
step
clicknpc Bjorn Halgurdsson##24238
Use the Vrykul Insult |use Vrykul Insult##33581
|tip Use your Vrykul Insult on Bjorn Halgurdsson. He's on a big red dragon.
Insult Bjorn Halgurdsson |q 12481/1 |goto 64.2,38.8
step
Run Back To Lydell
|tip Next to a huge cart.
Defeat Bjorn Halgurdsson |q 12481/2 |goto 65.9,36.8
step
talk Lydell##24458
turnin Adding Injury to Insult##12481 |goto 65.9,36.8
step
talk Ranger Captain Areiel##27922
accept Against Nifflevar##12482 |goto 67.4,60.6
step
talk Scribe Seguine##24548
accept The Enemy's Legacy##11423 |goto 67.3,60.3
stickystart "dragonflayer"
step
click Saga of the Val'kyr##186830
|tip On the floor inside this building.
collect Saga of the Val'kyr##34042 |q 11423/2 |goto 67.4,57.2
step
click the Saga of the Winter Curse##525
|tip On the floor inside this building.
collect Saga of the Winter Curse##34041 |q 11423/3 |goto 68.9,52.6
step
click the Saga of the Twins##525
|tip On the floor inside this building.
collect Saga of the Twins##34040 |q 11423/1 |goto 64.7,53.6
step
label "dragonflayer"
kill 5 Dragonflayer Warrior##23654 |q 12482/1 |goto 69.6,57.1
kill 4 Dragonflayer Rune-Seer##23656 |q 12482/2 |goto 69.6,57.1
kill 4 Dragonflayer Hunting Hound##23994 |q 12482/3 |goto 69.6,57.1
step
talk Ranger Captain Areiel##27922
turnin Against Nifflevar##12482 |goto 67.4,60.6
step
talk Scribe Seguine##24548
turnin The Enemy's Legacy##11423 |goto 67.3,60.3
step
talk Chief Plaguebringer Harris##24251
turnin New Agamand##11304 |goto 53.6,66.4
accept A Tailor-Made Formula##11305 |goto 53.6,66.4
step
talk "Hacksaw" Jenny##24252
accept Shield Hill##11424 |goto 53.7,65.2
step
talk Plaguebringer Tillinghast##24157
accept Green Eggs and Whelps##11279 |goto 53.1,66.9
step
talk Basil Osgood##24149
home New Agamand |goto 52.2,66.4 |q 11279
step
talk Tobias Sarkhoff##24155
fpath New Agamand |goto 52,67.4
step
kill Risen Vrykul Ancestor##24871+
collect 5 Ancient Vrykul Bone##34043 |q 11424/1 |goto 57.6,76.5
step
kill Thorvald##27926
collect Dragonflayer Patriarch's Blood##38098 |q 11305/1 |goto 46.8,68.1
step
talk Orfus of Kamagua##23804
accept The Dead Rise!##11504 |goto 40.3,60.3
step
clicknpc Proto-Drake Egg##23777+
Use the Tillinghast's Plague Canister |use Tillinghast's Plague Canister##33418
|tip Use Tillinghast's Plague Canister on Proto-Drake Eggs. They look like big eggs sitting next to trees. You can kill them accidentally, so be careful.
kill Plagued Proto-Whelp##24160+
collect 10 Plagued Proto-Whelp Specimen##33420 |q 11279/1 |goto 42,54.4
step
talk Ember Clutch Ancient##23870
accept Root Causes##11182 |goto 37.4,51.9
step
kill 5 Dragonflayer Handler##23871 |q 11182/1 |goto 41.1,53.0
step
kill Skeld Drakeson##23940 |q 11182/2 |goto 41.5,52.3
|tip Standing inside this small house.
step
talk Ember Clutch Ancient##23870
turnin Root Causes##11182 |goto 37.4,51.9
step
talk Plaguebringer Tillinghast##24157
turnin Green Eggs and Whelps##11279 |goto 53.1,66.9
accept Draconis Gastritis##11280 |goto 53.1,66.9
step
talk "Hacksaw" Jenny##24252
turnin Shield Hill##11424 |goto 53.7,65.2
step
talk Chief Plaguebringer Harris##24251
turnin A Tailor-Made Formula##11305 |goto 53.6,66.4
accept Apply Heat and Stir##11306 |goto 53.6,66.4
step
Stand next to the cauldron
Use the Empty Apothecary's Flask |use Empty Apothecary's Flask##34023
collect 1 Flask of Vrykul Blood##33615 |n |goto 53.6,66.5
Use the Flask of Vrykul Blood |use Flask of Vrykul Blood##34024
Use the Empty Apothecary's Flask |use Empty Apothecary's Flask##33614
|tip Keep Filling the Empty Apothecary's Flasks back at the cauldron.
Use the Flask of Vrykul Blood |use Flask of Vrykul Blood##33615
|tip And then use the Flask of Vrykul Blood next to the table.
collect 1 Balanced Concoction##33617 |q 11306/1 |goto 53.6,66.5
step
talk Chief Plaguebringer Harris##24251
turnin Apply Heat and Stir##11306 |goto 53.6,66.4
accept Field Test##11307 |goto 53.6,66.4
step
click Mound of Debris##187022
|tip It's a small pile of dirt next to a grave.
collect Fengir's Clue##34222 |q 11504/1 |goto 57.7,77.5
step
click Unlocked Chest##187023
|tip It's a small chest in this grave.
collect Rodin's Clue##34223 |q 11504/2 |goto 59.2,77
step
click Long Tail Feather##187026
|tip It's a small feather on a broken casket in this grave.
collect Isuldof's Clue##34224 |q 11504/3 |goto 59.8,79.4
step
click Cannonball##232360
|tip A grey ball inside this grave.
collect Windan's Clue##34225 |q 11504/4 |goto 62,80
step
Use the Plague Spray |use Plague Spray##33621
|tip Use your Plague Spray on Plagued Dragonflayer mobs.
Spray #10# Plagued Vrykul |q 11307/1 |goto 49.8,57.3
step
talk Orfus of Kamagua##23804
turnin The Dead Rise!##11504 |goto 40.3,60.3
accept Elder Atuik and Kamagua##11507 |goto 40.3,60.3
step
Use the Tillinghast's Plagued Meat |use Tillinghast's Plagued Meat##33441
|tip Use Tillinghast's Plagued Meat in your bags when a Proto-Drake is flying over you.
kill Proto-Drake##23689
|tip They fly overhead.
Observe the Proto-Drake Plague Results |q 11280/1 |goto 39.6,50.5
step
talk Plaguebringer Tillinghast##24157
turnin Draconis Gastritis##11280 |goto 53.1,66.9
step
talk Chief Plaguebringer Harris##24251
turnin Field Test##11307 |goto 53.6,66.4
accept Time for Cleanup##11308 |goto 53.6,66.4
step
talk "Hacksaw" Jenny##24252
turnin Time for Cleanup##11308 |goto 53.7,65.2
accept Parts for the Job##11309 |goto 53.7,65.2
step
kill Shoveltusk##23690+
collect 6 Shoveltusk Ligament##33611 |q 11309/1 |goto 50.3,65.8
step
talk Anton##24291
|tip He walks along this road.
buy 1 Fresh Pound of Flesh##33612 |q 11309/2 |goto 49.4,74.3
step
talk "Hacksaw" Jenny##24252
turnin Parts for the Job##11309 |goto 53.7,65.2
accept Warning: Some Assembly Required##11310 |goto 53.7,65.2
step
Use the Abomination Assembly Kit |use Abomination Assembly Kit##33613
|tip Use your Abomination Assembly Kit to control the Mindless Abomination.
|tip Run around and gather a bunch of Plagued Dragonflayer mobs.
Use your _Plagued Blood Explosion_ to explode Vrykul in the area |petaction Plagued Blood Explosion
Exterminate #20# Plagued Vrykul |q 11310/1 |goto 49.6,57.2
step
talk "Hacksaw" Jenny##24252
turnin Warning: Some Assembly Required##11310 |goto 53.7,65.2
step
talk Elder Atuik##24755
turnin Elder Atuik and Kamagua##11507 |goto 25.0,57.0
accept Grezzix Spindlesnap##11508 |goto 25.0,57.0
accept Feeding the Survivors##11456 |goto 25.0,57.0
step
talk Kip Trawlskip##28197
fpath Kamagua |goto 24.7,57.8
step
kill Island Shoveltusk##24681+
collect 6 Island Shoveltusk Meat##36776 |q 11456/1 |goto 29.1,58.8
step
talk Elder Atuik##24755
turnin Feeding the Survivors##11456 |goto 25.0,57.0
accept Arming Kamagua##11457 |goto 25.0,57.0
step
kill Frostwing Chimaera##24673+
|tip You will only find them on the snowy parts of the ground.
collect 3 Chimaera Horn##34101 |q 11457/1 |goto 26.4,62.9
step
talk Elder Atuik##24755
turnin Arming Kamagua##11457 |goto 25.0,57.0
accept Avenge Iskaal##11458 |goto 25.0,57.0
step
talk Grezzix Spindlesnap##24643
|tip He is in a small wooden boat.
turnin Grezzix Spindlesnap##11508 |goto 23.1,62.7
accept Street "Cred"##11509 |goto 23.1,62.7
step
talk "Silvermoon" Harry##24539
|tip He is inside a tiny tent.
turnin Street "Cred"##11509 |goto 35.1,80.9
accept "Scoodles"##11510 |goto 35.1,80.9
step
talk Handsome Terry##24537
accept Forgotten Treasure##11434 |goto 35.6,80.2
step
talk Scuttle Frostprow##24784
accept Swabbin' Soap##11469 |goto 37.8,79.6
step
kill "Scoodles"##24899
collect Sin'dorei Scrying Crystal##34235 |q 11510/1 |goto 38.3,83.4
step
click Eagle Figurine##186886
|tip It's inside a sunken ship at the bottom of the ocean.
collect Eagle Figurine##34070 |q 11434/2 |goto 37.8,84.6
step
click Amani Vase##186885
|tip It's inside a sunken ship at the bottom of the ocean.
collect Amani Vase##34069 |q 11434/1 |goto 37.1,85.5
step
kill Big Roy##24785
collect Big Roy's Blubber##34122 |q 11469/1 |goto 31.4,77.9
step
talk "Silvermoon" Harry##24539
|tip He is inside a tiny tent.
turnin "Scoodles"##11510 |goto 35.1,80.9
accept The Ancient Armor of the Kvaldir##11567 |goto 35.1,80.9
accept The Frozen Heart of Isuldof##11512 |goto 35.1,80.9
accept The Lost Shield of the Aesirites##11519 |goto 35.1,80.9
accept The Staff of Storm's Fury##11511 |goto 35.1,80.9
step
talk Handsome Terry##24537
turnin Forgotten Treasure##11434 |goto 35.6,80.2
accept The Fragrance of Money##11455 |goto 35.6,80.2
step
talk Taruk##24541
accept Gambling Debt##11464 |goto 36.3,80.5
step
talk "Silvermoon" Harry##24539
|tip He is inside a tiny tent.
Tell him _"Taruk sent me to collect what you owe."_
Tell him _"Pay up!"_
Fight him until he surrenders
|tip Be careful not to actually kill him.
Tell him _"Pay up, Harry!"_
collect "Silvermoon" Harry's Debt##34115 |q 11464/1 |goto 35.1,80.9
step
talk Taruk##24541
turnin Gambling Debt##11464 |goto 36.3,80.5
accept Jack Likes His Drink##11466 |goto 36.3,80.5
step
talk Olga, the Scalawag Wench##24639
|tip She is in a room all the way at the back of this building.
Tell her _"I'd like to buy Jack a drink. Perhaps something...extra strong."_
_Pay 1 gold_ to bribe her into giving Jack Adams a drink |goto 35.3,79.6 < 5
talk Jack Adams##24788
Select "_Discreetly search the pirate's pockets for Taruk's payment._"
collect Jack Adams' Debt##34116 |q 11466/1 |goto 35.5,79.4
step
talk Taruk##24541
turnin Jack Likes His Drink##11466 |goto 36.3,80.5
accept Dead Man's Debt##11467 |goto 36.3,80.5
step
talk Scuttle Frostprow##24784
turnin Swabbin' Soap##11469 |goto 37.8,79.6
step
talk Captain Ellis##24910
|tip He's on a boat that sails around, so you may need to search for him.
turnin The Lost Shield of the Aesirites##11519 |goto 37.2,74.8
accept Mutiny on the Mercy##11527 |goto 37.2,74.8
step
Go downstairs in the ship |goto 37.3,75.1 < 5 |walk
Go down the second set of stairs |goto 37.8,75.5 < 5 |walk
kill Mutinous Sea Dog##25026+
|tip They are all the way down on the bottom level of the ship.
collect 5 Barrel of Blasting Powder##34387 |q 11527/1 |goto 37.2,74.8
step
talk Captain Ellis##24910
|tip He is at the helm of the ship.
turnin Mutiny on the Mercy##11527 |goto 37.2,74.8
accept Sorlof's Booty##11529 |goto 37.2,74.8
step
Run to the other end of the ship deck to the big cannon
clicknpc The Big Gun##24992
kill 1 Sorlof##24914
Sorlof will drop a big pile of gold on the shore
Jump off the ship and click Sorlof's Booty
collect Sorlof's Booty##34468 |q 11529/1
step
talk Captain Ellis##24910
|tip He is at the helm of the ship.
turnin Sorlof's Booty##11529 |goto 37.2,74.8
accept The Shield of the Aesirites##11530 |goto 37.2,74.8
step
kill Rabid Brown Bear##24633+
collect 4 Bear Musk##34084 |q 11455/1 |goto 34.1,76.9
step
Go down into the cave |goto 33.6,75.6 < 10 |walk
|tip Hug the wall to the left inside the cave to avoid fighting "Mad" Jonah Sterling.
|tip Follow the path around past the big white sleeping bear, he won't attack you if he's asleep.
click The Frozen Heart of Isuldof##187032
collect The Frozen Heart of Isuldof##34237 |q 11512/1 |goto 32.3,78.7
step
Leave the cave |goto 33.6,75.6 < 10 |walk
kill 8 Crazed Northsea Slaver##24676+ |q 11458/1 |goto 33.2,63.9
step
Wait for Abdul the Insane to walk up to the top deck, then run downstairs
click The Staff of Storm's Fury##187033
|tip On the very bottom floor of this ship.
collect The Staff of Storm's Fury##34236 |q 11511/1 |goto 35.3,64.8
step
Go up the path |goto 29.0,60.5 < 10 |only if walking
click Dirt Mound##186944
kill Black Conrad's Ghost##24790
collect Black Conrad's Treasure##34118 |q 11467/1 |goto 32.7,60.2
step
talk Elder Atuik##24755
turnin Avenge Iskaal##11458 |goto 25.0,57.0
step
talk Anuniaq##24810
accept The Way to His Heart...##11472 |goto 24.6,58.9
step
Use the Anuniaq's Net |use Anuniaq's Net##40946
|tip Use Anuniaq's Net on the Schools of Tasty Reef Fish. They look like glittering swarms of fish in the water.
kill Great Reef Shark##24637+
collect 10 Tasty Reef Fish##34127 |goto 28.9,74.8 |q 11472
step
clicknpc Reef Bull##24786
Use the Tasty Reef Fish |use Tasty Reef Fish##34127 |goto 31.5,74.3 < 10 |walk
|tip Use your Tasty Reef Fish on a Reef Bull as far away as you can. He will come to the spot where you're standing.
Lead the Reef Bull to a Reef Cow on the other side of the water |q 11472/1 |goto 31.5,71.5
step
talk Handsome Terry##24537
turnin The Fragrance of Money##11455 |goto 35.6,80.2
accept A Traitor Among Us##11473 |goto 35.6,80.2
step
talk Zeh'gehn##24525
turnin A Traitor Among Us##11473 |goto 35.6,80.6
accept Zeh'gehn Sez##11459 |goto 35.6,80.6
step
talk Handsome Terry##24537
turnin Zeh'gehn Sez##11459 |goto 35.6,80.2
accept A Carver and a Croaker##11476 |goto 35.6,80.2
step
talk "Silvermoon" Harry##24539
|tip He is inside a tiny tent.
buy 1 Shiny Knife##35813 |q 11476/2 |goto 35.1,80.9
step
clicknpc Scalawag Frog##26503
|tip Little frogs hopping around the camp.
collect Scalawag Frog##35803 |q 11476/1 |goto 35.6,81.7
step
talk Zeh'gehn##24525
turnin A Carver and a Croaker##11476 |goto 35.6,80.6
accept "Crowleg" Dan##11479 |goto 35.6,80.6
step
talk Taruk##24541
turnin Dead Man's Debt##11467 |goto 36.3,80.5
step
talk "Crowleg" Dan##24713
|tip He is standing up at the helm.
Tell him _"Ummm...the frog says you're a traitor, "matey.""_
kill "Crowleg" Dan##24713 |q 11479/1 |goto 35.9,83.6
step
talk Handsome Terry##24537
turnin "Crowleg" Dan##11479 |goto 35.6,80.2
accept Meet Number Two##11480 |goto 35.6,80.2
step
Enter the building |goto Howling Fjord/0 35.3,80.2 < 6 |walk
Head up the stairs |goto 35.7,79.7 < 6 |walk
Go up the second set of stairs |goto 35.2,79.6 < 6 |walk
talk Annie Bonn##24741
|tip She is upstairs in a room at the very back of this building.
turnin Meet Number Two##11480 |goto 35.4,79.4
step
talk Alanya##27933 |goto 36.1,81.6 < 6
Tell her _"Harry said I could take his bomber to Bael'gun's. I'm ready to go!"_
Land Near the Ship |goto 80.9,75.1 |noway |q 11567
step
click The Ancient Armor of the Kvaldir##187381
|tip Inside this ship, on the very bottom floor in the very back of the room.
collect The Ancient Armor of the Kvaldir##34239 |q 11567/1 |goto 81.8,73.9
step
clicknpc Harry's Bomber##32682 |goto 80.9,75.1 < 10
Select "_<Get in the bomber and return to Scalawag Point.>_"
Go Back to Scalawag Point |goto 36.1,81.7 |noway |q 11567
step
Go up the elevator |goto 42.0,67.8 < 10 |only if walking
talk Orfus of Kamagua##23804
turnin The Ancient Armor of the Kvaldir##11567 |goto 40.3,60.3
turnin The Frozen Heart of Isuldof##11512 |goto 40.3,60.3
turnin The Shield of the Aesirites##11530 |goto 40.3,60.3
turnin The Staff of Storm's Fury##11511 |goto 40.3,60.3
accept A Return to Resting##11568 |goto 40.3,60.3
step
Use the Bundle of Vrykul Artifacts |use Bundle of Vrykul Artifacts##34624
|tip Use your Bundle of Vrykul Artifacts at the grave.
Return the Shield of Aesirites |q 11568/1 |goto 57.6,77.4
step
Use the Bundle of Vrykul Artifacts |use Bundle of Vrykul Artifacts##34624
|tip Use your Bundle of Vrykul Artifacts at the grave.
Return the Staff of Storm's Fury |q 11568/2 |goto 59.2,77.0
step
Use the Bundle of Vrykul Artifacts |use Bundle of Vrykul Artifacts##34624
|tip Use your Bundle of Vrykul Artifacts at the grave.
Return the Frozen Heart of Isuldof |q 11568/3 |goto 59.7,79.4
step
Use the Bundle of Vrykul Artifacts |use Bundle of Vrykul Artifacts##34624
|tip Use your Bundle of Vrykul Artifacts at the grave.
Return the Ancient Armor of the Kvaldir |q 11568/4 |goto 61.9,80.2
step
talk Orfus of Kamagua##23804
turnin A Return to Resting##11568 |goto 40.3,60.3
accept Return to Atuik##11572 |goto 40.3,60.3
step
Ride the boat lift down |goto 40.1,60.4 < 10 |only if walking
talk Elder Atuik##24755
turnin Return to Atuik##11572 |goto 25.0,57.0
step
talk Anuniaq##24810
turnin The Way to His Heart...##11472 |goto 24.6,58.9
step
talk Longrunner Skycloud##24209
accept Rivenwood Captives##11296 |goto 31.3,24.4
step
talk Sage Mistwalker##24186
accept The Artifacts of Steel Gate##11286 |goto 31.2,24.5
step
kill Riven Widow Cocoon##24210
|tip They look like big squirming white cocoons.
Free #7# Winterhoof Longrunners |q 11296/1 |goto 31.1,20.9
step
talk Longrunner Skycloud##24209
turnin Rivenwood Captives##11296 |goto 31.3,24.4
step
click Steel Gate Artifact##186397
|tip Broken tablets laying on the ground and in the pools of water.
collect 10 Steel Gate Artifact##33109 |q 11286/1 |goto 31.8,25.6
step
talk Sage Mistwalker##24186
turnin The Artifacts of Steel Gate##11286 |goto 31.2,24.5
accept The Cleansing##11317 |goto 31.2,24.5
step
talk Lilleth Radescu##26844
fpath Apothecary Camp |goto 26.0,25.1
step
talk Apothecary Anastasia##24359
accept And You Thought Murlocs Smelled Bad!##11397 |goto 26.1,24.7
step
talk Apothecary Grick##24218
accept Brains! Brains! Brains!##11301 |goto 26.0,24.4
step
talk Apothecary Malthus##24152
accept What's in That Brew?##11298 |goto 26.4,24.5
stickystart "5dwarvenkegs"
step
Follow the path down |goto 33.8,33.5 < 10 |only if walking
kill Deranged Explorer##23967+
Use the Grick's Bonesaw |use Grick's Bonesaw##33554
|tip Use Grick's Bonesaw on their corpses.
collect 12 Deranged Explorer Brain##33558 |q 11301/1 |goto 33.3,36.5
step
label "5dwarvenkegs"
click Dwarven Kegs##186632
|tip Big wooden kegs found in this area.
collect 5 Dwarven Keg##33541 |q 11298/1 |goto 33.3,36.5
step
talk Apothecary Malthus##24152
turnin What's in That Brew?##11298 |goto 26.4,24.5
step
talk Apothecary Grick##24218
turnin Brains! Brains! Brains!##11301 |goto 26.0,24.4
step
Follow the path down |goto 25.5,20.1 < 10 |only if walking
kill Mur'ghoul Flesheater##23644+, Necrotech##24540+, Servitor Shade##24485+, Unstable Mur'ghoul##23643+, Mur'ghoul Corrupter##23645+
Kill #15# Chillmere Coast Scourge |q 11397/1 |goto 23.0,21.9
collect Scourge Device##33962 |n
Use the Scourge Device |use Scourge Device##33962
accept It's a Scourge Device##11398 |goto 23.0,21.9
step
talk Old Icefin##24544
|tip He's a friendly murloc on this little island.
accept Trident of the Son##11422 |goto 19.8,22.2
step
kill Rotgill##24546
|tip He's a large murloc carrying a trident that walks along the beach. You may have to search for him.
collect Rotgill's Trident##34035 |q 11422/1 |goto 23.7,35.2
step
talk Old Icefin##24544
|tip He's a friendly murloc on this little island.
turnin Trident of the Son##11422 |goto 19.8,22.2
step
Go up the path |goto 23.7,21.8 < 10 |only if walking
talk Apothecary Anastasia##24359
turnin And You Thought Murlocs Smelled Bad!##11397 |goto 26.1,24.7
turnin It's a Scourge Device##11398 |goto 26.1,24.7
accept Bring Down Those Shields##11399 |goto 26.1,24.7
step
Go down to the coast |goto 25.5,20.1 < 10 |only if walking
clicknpc Scourging Crystal##24464+
Use the Scourging Crystal Controller |use Scourging Crystal Controller##33960
|tip Use your Scourging Crystal Controller on the Scourge Crystal.
kill Scourge Crystal##24464
Destroy #3# Scourge Crystals |q 11399/1 |goto 22.9,20.1
step
Go back up the path |goto 23.7,21.8 < 10 |only if walking
talk Apothecary Anastasia##24359
turnin Bring Down Those Shields##11399 |goto 26.1,24.7
step
talk Wind Tamer Kagan##24256
accept Suppressing the Elements##11311 |goto 48.9,12.0
step
talk Nokoma Snowseer##24123
accept Making the Horn##11275 |goto 49.3,12.0
step
talk Celea Frozenmane##24032
fpath Camp Winterhoof |goto 49.6,11.6
step
talk Ahota Whitefrost##24127
accept Hasty Preparations##11271 |goto 48.4,11.0
step
talk Chieftain Ashtotem##24129
turnin Help for Camp Winterhoof##12566 |goto 48.0,10.7
stickystart "undamagedramhorns"
step
click Spotted Hippogryph Down##186591
|tip They look like brown feathers on the ground all around this area.
collect 10 Spotted Hippogryph Down##33348 |q 11271/1 |goto 53.0,14.8
step
label "undamagedramhorns"
kill Frosthorn Ram##23740+
collect 6 Undamaged Ram Horn##33351 |q 11275/1 |goto 51.8,10.8
step
kill 8 Iceshard Elemental##24228 |q 11311/1 |goto 52.5,6.5
step
talk Ahota Whitefrost##24127
turnin Hasty Preparations##11271 |goto 48.4,11.0
step
talk Wind Tamer Kagan##24256
turnin Suppressing the Elements##11311 |goto 48.9,12.0
step
talk Nokoma Snowseer##24123
turnin Making the Horn##11275 |goto 49.3,12.0
accept Mimicking Nature's Call##11281 |goto 49.3,12.0
accept The Frozen Glade##11312 |goto 49.3,12.0
step
talk Longrunner Pembe##24362
accept The Book of Runes##11350 |goto 49.2,12.2
step
Use the Carved Horn |use Carved Horn##33450
kill Frostgore##24173
Test Nokoma's Horn |q 11281/1 |goto 52.4,3.7
step
Follow the path up |goto 54.1,8.2 < 10 |only if walking
click Frostblade Shrine##186649
|tip It's a big blue glowing altar at the very top of this huge mountain.
kill Your Inner Turmoil
Become Cleansed of Your Inner Turmoil |q 11317/1 |goto 61.1,2.0
step
talk Lurielle##24117
turnin The Frozen Glade##11312 |goto 61.5,22.8
accept Spirits of the Ice##11313 |goto 61.5,22.8
step
kill Ice Elemental##23919+
collect 15 Icy Core##33605 |q 11313/1 |goto 60.6,22.4
step
talk Lurielle##24117
turnin Spirits of the Ice##11313 |goto 61.5,22.8
accept The Fallen Sisters##11314 |goto 61.5,22.8
accept Wild Vines##11315 |goto 61.5,22.8
stickystart "scarletivykills"
step
clicknpc Chill Nymph##23678+
Use the Lurielle's Pendant |use Lurielle's Pendant##33606
|tip Use Lurielle's Pendant on Chill Nymphs. Walk up to them until you're in combat and then use Lurielle's Pendant, you don't have to hit them.
Free #7# Chill Nymphs |q 11314/1 |goto 53.3,27.8
step
label "scarletivykills"
kill 8 Scarlet Ivy##23763 |q 11315/1 |goto 53.3,27.8
step
talk Lurielle##24117
turnin The Fallen Sisters##11314 |goto 61.5,22.8
turnin Wild Vines##11315 |goto 61.5,22.8
accept Spawn of the Twisted Glade##11316 |goto 61.5,22.8
accept Seeds of the Blacksouled Keepers##11319 |goto 61.5,22.8
stickystart "thornvinecreepers"
step
kill Spore##23876+
Use the Enchanted Ice Core |use Enchanted Ice Core##33607
|tip Use your Enchanted Ice Core on Spore corpses.
Freeze #8# Spores |q 11319/1 |goto 54.7,20.5
step
label "thornvinecreepers"
kill 10 Thornvine Creeper##23874 |q 11316/1 |goto 54.7,20.5
step
talk Lurielle##24117
turnin Spawn of the Twisted Glade##11316 |goto 61.5,22.8
turnin Seeds of the Blacksouled Keepers##11319 |goto 61.5,22.8
accept Keeper Witherleaf##11428 |goto 61.5,22.8
step
kill Keeper Witherleaf##24638 |q 11428/1 |goto 53.7,18.6
|tip He walks around this area.
step
talk Lurielle##24117
turnin Keeper Witherleaf##11428 |goto 61.5,22.8
step
kill Iron Rune Stonecaller##24030+, Iron Rune Binder##23796+
collect 1 Book of Runes - Chapter 1##33778 |n
collect 1 Book of Runes - Chapter 2##33779 |n
collect 1 Book of Runes - Chapter 3##33780 |n
Use the Book of Runes - Chapter 1 |use Book of Runes - Chapter 1##33778
collect The Book of Runes##33781 |q 11350/1 |goto 65.0,28.5
step
talk Longrunner Pembe##24362
turnin The Book of Runes##11350 |goto 49.2,12.2
accept Mastering the Runes##11351 |goto 49.2,12.2
step
talk Nokoma Snowseer##24123
turnin Mimicking Nature's Call##11281 |goto 49.3,12.0
step
talk Chieftain Ashtotem##24129
accept Skorn Must Fall!##11256 |goto 48.0,10.7
step
click Iron Rune Carving Tools##186684
collect Iron Rune Carving Tools##33794 |q 11351/1 |goto 71.2,28.7
If they are not there, they can also spawn at the following locations:
Location 1: |goto Howling Fjord 67.5,23.5
Location 2: |goto Howling Fjord 69.1,22.8
Location 3: |goto Howling Fjord 72.4,17.8
step
talk Longrunner Pembe##24362
turnin Mastering the Runes##11351 |goto 49.2,12.2
accept The Rune of Command##11352 |goto 49.2,12.2
step
clicknpc Stone Giant##23725+
Use the Rune of Command |use Rune of Command##33796 |goto 71.9,23.3 < 10
|tip Use your Rune of Command on a Stone Giant around this area to control it.
kill Binder Murdis##24334 |q 11352/2 |goto Howling Fjord/0 71.9,24.6
step
talk Longrunner Pembe##24362
turnin The Rune of Command##11352 |goto 49.2,12.2
step
Use the Winterhoof Emblem |use Winterhoof Emblem##33340
talk Winterhoof Brave##24130
turnin Skorn Must Fall!##11256 |goto 44.4,26.2
accept Gruesome, But Necessary##11257 |goto 44.4,26.2
accept Burn Skorn, Burn!##11258 |goto 44.4,26.2
accept Towers of Certain Doom##11259 |goto 44.4,26.2
step
kill Winterskorn Berserker##23666+, Winterskorn Elder##23670+, Winterskorn Raider##23665+, Winterskorn Rune-Caster##23668+, Winterskorn Shield-Maiden##23663+, Winterskorn Warrior##23664+, Winterskorn Woodsman##23662+
use The Brave's Machete##33342
|tip Use Brave's Machete on their corpses.
Dismember #20# Winterskorn Vrykul |q 11257/1 |goto 45.3,27.0
collect Vrykul Scroll of Ascension##33345 |n
Use the Vrykul Scroll of Ascension |use Vrykul Scroll of Ascension##33345
accept Stop the Ascension!##11260 |goto 45.3,27.0
step
Use the Brave's Torch |use Brave's Torch##33343
|tip Use the Brave's Torch inside this house.
Set the Northwest Longhouse Ablaze |q 11258/1 |goto 43.7,28.5
step
Use the Brave's Flare |use Brave's Flare##33344
|tip Use the Brave's Flare next to this tower.
Target the Northwest Tower |q 11259/1 |goto 43.6,30.3
step
Use the Brave's Flare |use Brave's Flare##33344
|tip Use the Brave's Flare next to this tower.
Target the Southwest Tower |q 11259/3 |goto 43.2,35.8
step
Use the Vrykul Scroll of Ascension |use Vrykul Scroll of Ascension##33346
|tip Use your Vrykul Scroll of Ascension next to the bonfire.
kill Halfdan the Ice-Hearted##23671 |q 11260/1 |goto 44.9,35.0
step
Use the Brave's Flare |use Brave's Flare##33344
|tip Use the Brave's Flare next to this tower.
Target the Southeast Tower |q 11259/4 |goto 46.9,37.1
step
Use the Brave's Flare |use Brave's Flare##33344
|tip Use the Brave's Flare next to this tower.
Target the East Tower |q 11259/2 |goto 46.5,33.2
step
Use the Brave's Torch |use Brave's Torch##33343
|tip Use the Brave's Torch inside this building.
Set the Barracks Ablaze |q 11258/3 |goto 46.0,30.7
step
Use the Brave's Torch |use Brave's Torch##33343
|tip Use the Brave's Torch inside this house.
Set the Northeast Longhouse Ablaze |q 11258/2 |goto 46.4,28.2
step
Next to you:
Use the Winterhoof Emblem |use Winterhoof Emblem##33340
|tip If he's not with you anymore use your Winterhoof Emblem again.
talk Winterhoof Brave##24130
turnin Gruesome, But Necessary##11257
turnin Burn Skorn, Burn!##11258
turnin Towers of Certain Doom##11259
accept The Conqueror of Skorn!##11261
step
talk Greatmother Ankha##24135
turnin Stop the Ascension!##11260 |goto 48.2,10.7
step
talk Chieftain Ashtotem##24129
turnin The Conqueror of Skorn!##11261 |goto 48.0,10.7
accept Dealing With Gjalerbron##11263 |goto 48.0,10.7
step
talk Greatmother Ankha##24135
accept Of Keys and Cages##11265 |goto 48.2,10.7
step
talk Sage Mistwalker##24186
turnin The Cleansing##11317 |goto 31.2,24.5
accept In Worg's Clothing##11323 |goto 31.2,24.5
step
Use the Worg Disguise |use Worg Disguise##33618
|tip Use your Worg Disguise to turn into a Worg.
talk Ulfang##24261
turnin In Worg's Clothing##11323 |goto 29.7,5.7
accept Brother Betrayers##11415 |goto 29.7,5.7
step
Right click the Worg Disguise buff to remove it |nobuff Worg Disguise |goto Howling Fjord/0 29.1,7.2 |q 11415
|tip It's found in the top right section of your screen.
step
kill Bjomolf##24516 |q 11415/1 |goto 28.3,23.9
|tip He walks around this area.
He patrols between that spot and this one [Howling Fjord 26.0,20.9]
step
kill Varg##24517 |q 11415/2 |goto 33.8,29.3
|tip He walks around this area.
He patrols beteen that spot and this one [Howling Fjord 35.3,32.6]
stickystart "gjalerbronkills"
step
kill Gjalerbron Warrior##23991+, Gjalerbron Rune-Caster##23990+, Gjalerbron Sleep-Watcher##23989+
collect 1 Gjalerbron Cage Key##33284 |n
|tip You can only loot these one at a time so make sure you use it when you get one. You'll need 10 in total.
click Gjalerbron Cage##42822+
|tip Brown cages found around this area. Kill Gjalerbron mobs to loot a key to unlock them.
Free #10# Gjalerbron Prisoners |q 11265/1 |goto 35.1,16
step
label "gjalerbronkills"
kill 15 Gjalerbron Warrior##23991 |q 11263/1 |goto 35.1,16.0
kill 8 Gjalerbron Rune-Caster##23990 |q 11263/2 |goto 35.1,16.0
kill 8 Gjalerbron Sleep-Watcher##23989 |q 11263/3 |goto 35.1,16.0
step
kill Gjalerbron Warrior##23991+, Gjalerbron Rune-Caster##23990+, Gjalerbron Sleep-Watcher##23989+
collect Gjalerbron Attack Plans##33347 |n
Use the Gjalerbron Attack Plans |use Gjalerbron Attack Plans##33347
accept Gjalerbron Attack Plans##11266 |goto 35.1,16 |goto 35.1,16
step
Use the Worg Disguise |use Worg Disguise##33618
|tip Use your Worg Disguise to turn into a Worg.
talk Ulfang##24261
turnin Brother Betrayers##11415 |goto 29.7,5.7
accept Eyes of the Eagle##11417 |goto 29.7,5.7
step
Right click the Worg Disguise buff to remove it |nobuff Worg Disguise |goto Howling Fjord/0 29.1,7.2 |q 11417
|tip It's found in the top right section of your screen.
step
click Talonshrike's Egg##190283
kill Talonshrike##24518
collect Eyes of the Eagle##34027 |q 11417/1 |goto 41.4,37.7
step
Use the Worg Disguise |use Worg Disguise##33618
|tip Use your Worg Disguise to turn into a Worg.
talk Ulfang##24261
turnin Eyes of the Eagle##11417 |goto 29.7,5.7
accept Alpha Worg##11324 |goto 29.7,5.7
step
Right click the Worg Disguise buff to remove it |nobuff Worg Disguise |goto Howling Fjord/0 29.1,7.2 |q 11324
|tip It's found in the top right section of your screen.
step
kill Garwal##24277 |q 11324/1 |goto 26.3,12.8
|tip He walks around this area.
He walks between that spot and this one [Howling Fjord 27.1,7.2] |walk
step
talk Sage Mistwalker##24186
turnin Alpha Worg##11324 |goto 31.2,24.5
step
talk Greatmother Ankha##24135
turnin Of Keys and Cages##11265 |goto 48.2,10.7
accept The Walking Dead##11268 |goto 48.2,10.7
step
talk Chieftain Ashtotem##24129
turnin Dealing With Gjalerbron##11263 |goto 48.0,10.7
accept Necro Overlord Mezhen##11264 |goto 48.0,10.7
step
talk Ahota Whitefrost##24127
accept Sleeping Giants##11433 |goto 48.4,11.0
step
talk Celea Frozenmane##24032
turnin Gjalerbron Attack Plans##11266 |goto 49.6,11.6
step
talk Bori Wintertotem##24033
home Camp Winterhoof |goto 49.5,10.8 |q 11433
stickystart "deathwatch"
step
kill 1 Necro Overlord Mezhen##24018 |q 11264/1 |goto 38.8,13.0
|tip On a platform in the very back of Gjalerbron, surrounded by Nerolords.
collect Mezhen's Writings##34091 |n
Use the Mezhen's Writings |use Mezhen's Writings##34091
accept The Slumbering King##11453 |goto 38.8,13.0
step
label "deathwatch"
kill 10 Deathless Watcher##24013 |q 11268/1 |goto 35.7,15.8
kill 2 Putrid Wight##23992 |q 11268/3 |goto 35.7,15.8
step
Enter this building |goto 39.8,7.6 < 10 |walk
kill Queen Angerboda##24023 |q 11453/1 |goto 40.9,6.5
|tip She's standing up on the platform. You may have to wait a minute for her to spawn.
stickystart "fearsomehorrorkills"
step
Enter the Walking Halls |goto 34.5,13.2 < 10 |walk
kill Necrolord##24014
collect 5 Awakening Rod##34083 |n |goto 35.0,11.9
use Awakening Rod##34083
|tip Use your Awakening Rods on Dormant Vrykul. They are sleeping upright inside the walls, like mummies. You can mark them with shift+v to make them easier to spot (Use v to mark enemies again)
kill 5 Dormant Vrykul##24669 |q 11433/1 |goto 35.0,11.9
step
label "fearsomehorrorkills"
kill 4 Fearsome Horror##24073 |q 11268/2 |goto 35.0,11.9
step
Leave the Walking Halls |goto 34.5,13.2 < 10 |walk
talk Ahota Whitefrost##24127
turnin Sleeping Giants##11433 |goto 48.4,11
step
talk Greatmother Ankha##24135
turnin The Walking Dead##11268 |goto 48.2,10.7
step
talk Chieftain Ashtotem##24129
turnin Necro Overlord Mezhen##11264 |goto 48.0,10.7
turnin The Slumbering King##11453 |goto 48.0,10.7
step
talk Sage Edan##24390
accept March of the Giants##11365 |goto 48.1,10.5
step
kill Runed Stone Giant##23725+
|tip The Runed Stone Giants you need to kill will be aggressive, don't try and attack the elite mobs.
Use the Runeseeking Pick |use Runeseeking Pick##33806
|tip Use your Runeseeking Pick on Runed Stone Giants.
Analyze #4# Runed Stone Giant Corpses |q 11365/1 |goto 68.5,23.8
step
talk Sage Edan##24390
turnin March of the Giants##11365 |goto 48.1,10.5
accept The Lodestone##11366 |goto 48.1,10.5
step
Use the Rune Sample |use Rune Sample##33819
|tip Use the Rune Sample in your bags next to the Broken Tablet.
Watch the dialogue
Compare Runes with the Broken Tablet |q 11366/1 |goto 71.6,17.6
step
talk Sage Edan##24390
turnin The Lodestone##11366 |goto 48.1,10.5
accept Demolishing Megalith##11367 |goto 48.1,10.5
step
kill Megalith##24371 |q 11367/1 |goto 68.4,10.9
|tip He patrols around this area, so some searching may be necessary.
step
talk Sage Edan##24390
turnin Demolishing Megalith##11367 |goto 48.1,10.5
step
talk Chief Plaguebringer Harris##24251
accept Give it a Name##12181 |goto 53.6,66.4
only if not completedq(12188)
step
talk Tobias Sarkhoff##24155
turnin Give it a Name##12181 |goto 52.0,67.4
accept To Venomspite!##12182 |goto 52.0,67.4
only if not completedq(12188)
step
talk Tobias Sarkhoff##24155 |goto 52.0,67.4 < 5
Fly to Dragonblight |goto Dragonblight 76.6,62.4 |q 12182
only if not completedq(12188)
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Cataclysm (80-90)\\Mount Hyjal (80-90)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Hyjal",
next="Leveling Guides\\Cataclysm (80-90)\\Deepholm (81-90)",
condition_suggested=function() return level >= 80 and level <= 90 and not completedq(27399) end,
startlevel=80,
endlevel=90,
},[[
step
click Warchief's Command Board##207325
accept Warchief's Command: Mount Hyjal!##27721 |goto Orgrimmar 49.7,76.5
accept A Personal Summons##28790 |goto Orgrimmar 49.7,76.5
|tip You should automatically accept this by entering Orgrimmar.
step
talk Farseer Krogar##45244
turnin A Personal Summons##28790 |goto 50.5,38.4
accept The Eye of the Storm##28805 |goto 50.5,38.4
step
clicknpc Waters of Farseeing##50088
Witness the Vision of the Farseer |q 28805/1 |goto 50.8,37.8
step
talk Farseer Krogar##45244
turnin The Eye of the Storm##28805 |goto 50.5,38.4
step
talk Cenarion Emissary Blackhoof##15188
Tell him _"Could you please send me to Moonglade, Emissary?"_ |goto 39.9,50.9 < 10 |walk
Teleport to Moonglade |goto Moonglade 45.1,43.1 < 10 |walk
talk Emissary Windsong##39865
turnin Warchief's Command: Mount Hyjal!##27721 |goto Moonglade 45.5,44.9
accept As Hyjal Burns##25316 |goto Moonglade 45.5,44.9
step
talk Sebelia##40843
home Nordrassil |goto Mount Hyjal 63.1,24.1 |q 25316
step
talk Ysera##40928
turnin As Hyjal Burns##25316 |goto 62.0,24.9
accept Protect the World Tree##25317 |goto 62.0,24.9
step
talk Fayran Elthas##41861
fpath Nordrassil |goto 62.1,21.6
step
talk Anren Shadowseeker##39925
accept The Earth Rises##25460 |goto 64.0,22.6
step
talk Tholo Whitehoof##40278
accept Inciting the Elements##25370 |goto 64.0,22.5
stickystart "scaldingrockelementals"
step
click Juniper Berries##202754
collect 4 Juniper Berries##53009 |n
clicknpc Faerie Dragon##39921+
use Juniper Berries##53009
|tip Use your Juniper Berries on Faerie Dragons. They look like small blue flying dragons around this area.
|tip Follow the Faerie Dragons to find Twilight Inciters.
kill 4 Twilight Inciter##39926 |q 25370/1 |goto 65.8,20.8
step
label "scaldingrockelementals"
kill 8 Scalding Rock Elemental##40229 |q 25460/1 |goto 65.8,20.8
step
talk Tholo Whitehoof##40278
turnin Inciting the Elements##25370 |goto 64.0,22.5
accept Flames from Above##25574 |goto 64.0,22.5
step
talk Anren Shadowseeker##39925
turnin The Earth Rises##25460 |goto 64.0,22.6
step
use Tholo's Horn##55122
|tip Use Tholo's Horn to call for an emerald dragon.
Burn the Infiltrators' Encampment |q 25574/1 |goto 55.9,15.8
step
talk Tholo Whitehoof##40278
turnin Flames from Above##25574 |goto 64.0,22.5
step
talk Malfurion Stormrage##15362
turnin Protect the World Tree##25317 |goto 47.7,35.5
accept War on the Twilight's Hammer##25319 |goto 47.7,35.5
step
talk Windspeaker Tamila##39869
accept The Flameseer's Staff##25472 |goto 47.7,35.5
stickystart "twilightkills1"
step
click Charred Staff Fragment##202846
|tip They look like small white bones on the ground
collect 8 Charred Staff Fragment##54461 |q 25472/1 |goto 47.8,29.4
step
label "twilightkills1"
kill 4 Twilight Flamecaller##38926 |q 25319/1 |goto 47.8,29.4
kill 10 Twilight Vanquisher##38913 |q 25319/2 |goto 47.8,29.4
step
talk Malfurion Stormrage##15362
turnin War on the Twilight's Hammer##25319 |goto 47.7,35.5
turnin The Flameseer's Staff##25472 |goto 47.7,35.5
accept Flamebreaker##25323 |goto 47.7,35.5
step
clicknpc Blazebound Elemental##38896+
use Flameseer's Staff##53107
|tip Use your Flameseer's Staff on Blazebound Revenants.
kill 30 Unbound Flame Spirit##40065 |q 25323/1 |goto 44.7,33.2
step
talk Malfurion Stormrage##15362
turnin Flamebreaker##25323 |goto 47.7,35.5
accept The Return of Baron Geddon##25464 |goto 47.7,35.5
step
clicknpc Baron Geddon##40147+
use Flameseer's Staff##54463
|tip Use your Flameseer's Staff on Baron Geddon. He's a big fire elemental standing in the middle of this crater.
Weaken Baron Geddon #20# Times |q 25464/1 |goto 44.1,27.0
|tip Run away when you see Galrond of the Claw yell "Look out!".
step
talk Malfurion Stormrage##15362
turnin The Return of Baron Geddon##25464 |goto 47.7,35.5
step
talk Windspeaker Tamila##39869
accept Emerald Allies##25430 |goto 47.7,35.5
step
talk Alysra##38917
turnin Emerald Allies##25430 |goto 48.4,19.0
accept The Captured Scout##25320 |goto 48.4,19.0
step
talk Scout Larandia##40096
turnin The Captured Scout##25320 |goto 44.5,18.9
accept Twilight Captivity##25321 |goto 44.5,18.9
step
kill Twilight Overseer##40123
collect Twilight Overseer's Key##53139 |q 25321/1 |goto 44.4,20.7
step
talk Scout Larandia##40096
turnin Twilight Captivity##25321 |goto 44.5,18.9
accept Return to Alysra##25424 |goto 44.5,18.9
step
talk Alysra##38917
turnin Return to Alysra##25424 |goto 48.4,19.0
accept A Prisoner of Interest##25324 |goto 48.4,19.0
step
_Enter_ the cave |goto 52.6,17.3 < 10 |walk
_Continue_ down the path |goto 55.1,18.6 < 10 |walk |indoors Hyjal Barrow Dens
talk Captain Saynna Stormrunner##40139
turnin A Prisoner of Interest##25324 |goto 56.8,18.8 |indoors Hyjal Barrow Dens
accept Through the Dream##25325 |goto 56.8,18.8 |indoors Hyjal Barrow Dens
step
_Head back_ up the ramp |goto Mount Hyjal/0 55.5,19.2 < 10 |walk |indoors Hyjal Barrow Dens
_Go up_ the ramp |goto 53.8,19.3 < 10 |walk |indoors Hyjal Barrow Dens
_Go left_ and leave the Dens |goto 55.3,18.5 < 10 |walk |indoors Hyjal Barrow Dens
Deliver Arch Druid Fandral Staghelm |q 25325/1 |goto 52.6,17.3 |indoors Hyjal Barrow Dens
step
talk Alysra##40178
turnin Through the Dream##25325 |goto 52.2,17.4
accept Return to Nordrassil##25578 |goto 52.2,17.4
step
talk Ysera##40928
turnin Return to Nordrassil##25578 |goto 62.0,24.9
accept The Return of the Ancients##25584 |goto 62.0,24.9
step
talk Oomla Whitehorn##39429
turnin The Return of the Ancients##25584 |goto 35.7,19.4
accept Harrying the Hunters##25255 |goto 35.7,19.4
step
talk Jadi Falaryn##39427
accept End of the Supply Line##25233 |goto 35.8,19.7
accept In the Rear With the Gear##25234 |goto 35.8,19.7
stickystart "twilightkills2"
step
click Twilight Supplies##202652
|tip You can get the supplies after you kill the Twilight Proveditor and Twilight Slavedriver.
collect 36 Twilight Supplies##52568 |q 25234/1 |goto 34.6,24.5
step
label "twilightkills2"
kill 6 Twilight Hunter##39437 |q 25255/1 |goto 34.6,24.5
kill 4 Twilight Proveditor##39436 |q 25233/1 |goto 34.6,24.5
|tip They walk with 3 Twilight slaves and a Twilight Slavedriver.
step
talk Jadi Falaryn##39427
turnin End of the Supply Line##25233 |goto 35.8,19.7
turnin In the Rear With the Gear##25234 |goto 35.8,19.7
step
talk Oomla Whitehorn##39429
turnin Harrying the Hunters##25255 |goto 35.7,19.4
accept The Voice of Lo'Gosh##25269 |goto 35.7,19.4
step
talk Takrik Ragehowl##39432
turnin The Voice of Lo'Gosh##25269 |goto 30.1,31.7
accept Howling Mad##25270 |goto 30.1,31.7
step
kill Lycanthoth Vandal##39445+
collect 6 Polluted Incense##52658 |q 25270/1 |goto 29.0,31.4
step
talk Takrik Ragehowl##39432
turnin Howling Mad##25270 |goto 30.1,31.7
accept Lycanthoth the Corruptor##25272 |goto 30.1,31.7
step
use Lycanthoth's Incense##52682
|tip Use Lycanthoth's Incense next to Lycanthoth's Altar. It's inside the cave.
kill Lycanthoth##39446 |q 25272/1 |goto 32.4,37.3
step
talk Spirit of Lo'Gosh##39622
turnin Lycanthoth the Corruptor##25272 |goto 32.5,37.4
step
talk Spirit of Lo'Gosh##39622
accept The Shrine Reclaimed##25279 |goto 29.6,29.3
step
talk Takrik Ragehowl##39432
turnin The Shrine Reclaimed##25279 |goto 28.4,29.9
accept Cleaning House##25277 |goto 28.4,29.9
step
talk Royce Duskwhisper##39435
accept The Eye of Twilight##25300 |goto 28.3,30.0
step
talk Rio Duran##39434
accept From the Mouth of Madness##25297 |goto 28.2,29.9
step
click Bitterblossom##202703
collect Bitterblossom##52727 |q 25297/2 |goto 28.9,32.1
step
click Stonebloom##202702
collect Stonebloom##52726 |q 25297/1 |goto 26.5,35.0
step
click Eye of Twilight##206569
turnin The Eye of Twilight##25300 |goto 27.2,35.2
accept Mastering Puppets##25301 |goto 27.2,35.2
step
click Darkflame Ember##202705
collect Darkflame Ember##52728 |q 25297/3 |goto 28.4,35.8
step
click Twilight Cauldron##202706
turnin From the Mouth of Madness##25297 |goto 28.4,36.5
accept Free Your Mind, the Rest Follows##25298 |goto 28.4,36.5
step
_Enter_ the cave |goto 26.9,36.3 < 10 |walk
talk Kristoff Manheim##39797
accept Gar'gol's Gotta Go##25328 |goto 27.2,40.8 |indoors Gar'gol's Hovel
step
click Gar'gol's Personal Treasure Chest##204580
collect Rusted Skull Key##52789 |q 25328/1 |goto 26.5,38.5 |indoors Gar'gol's Hovel
step
click The Twilight Apocrypha##202712
turnin Mastering Puppets##25301 |goto 25.8,41.6 |indoors Gar'gol's Hovel
accept Elementary!##25303 |goto 25.8,41.6 |indoors Gar'gol's Hovel
step
clicknpc Crucible of Fire##39730
Activate the Crucible of Fire |q 25303/3 |goto 26.0,41.8 |indoors Gar'gol's Hovel
step
clicknpc Crucible of Earth##39737
Activate the Crucible of Earth |q 25303/1 |goto 25.6,41.7 |indoors Gar'gol's Hovel
step
clicknpc Crucible of Air##39736
Activate the Crucible of Air |q 25303/2 |goto 25.8,41.9 |indoors Gar'gol's Hovel
step
clicknpc Crucible of Water##39738
Activate the Crucible of Water |q 25303/4 |goto 26.0,41.6 |indoors Gar'gol's Hovel
step
click The Twilight Apocrypha##202712
turnin Elementary!##25303 |goto 25.8,41.6 |indoors Gar'gol's Hovel
accept Return to Duskwhisper##25312 |goto 25.8,41.6 |indoors Gar'gol's Hovel
stickystart "freetwilightservitors"
step
kill Hovel Brute##39642+, Hovel Shadowcaster##39643+
Slay #8# Minions of Gar'gol |q 25277/1 |goto 26.7,39.2 |indoors Gar'gol's Hovel
step
label "freetwilightservitors"
talk Twilight Servitor##39644
Select "_<Administor the drought.>_"
Free #8# Twilight Servitors |q 25298/1 |goto 26.7,39.2 |indoors Gar'gol's Hovel
step
talk Kristoff Manheim##39797
turnin Gar'gol's Gotta Go##25328 |goto 27.2,40.8 |indoors Gar'gol's Hovel
accept Get Me Outta Here!##25332 |goto 27.2,40.8 |indoors Gar'gol's Hovel
step
Escort Kristoff Outside |q 25332/1 |goto 27.1,36.0
step
talk Royce Duskwhisper##39435
turnin Return to Duskwhisper##25312 |goto 28.6,30.2
turnin Get Me Outta Here!##25332 |goto 28.6,30.2
step
talk Takrik Ragehowl##39432
turnin Cleaning House##25277 |goto 28.4,29.9
accept Sweeping the Shelf##25354 |goto 28.4,29.9
accept Lightning in a Bottle##25355 |goto 28.4,29.9
step
talk Rio Duran##39434
turnin Free Your Mind, the Rest Follows##25298 |goto 28.2,29.9
stickystart "chargedcondensers"
step
kill 8 Twilight Stormcaller##39843 |q 25354/1 |goto 29.1,40.7
kill 5 Howling Riftdweller##39844 |q 25354/2 |goto 29.1,40.7
step
label "chargedcondensers"
click Lightning Channel##202743
collect Charged Condenser Jar##52834 |q 25355/1 |goto 29.1,40.7
step
use Totem of Lo'Gosh##52854
|tip Use your Totem of Lo'Gosh.
talk Spirit of Lo'Gosh##39622
turnin Lightning in a Bottle##25355
accept Into the Maw!##25617
step
_Go inside_ the blue portal |goto 25.8,41.5 < 10 |walk
talk Jordan Olafson##40834
turnin Into the Maw!##25617 |goto 26.3,41.9
accept Forged of Shadow and Flame##25575 |goto 26.3,41.9
accept Crushing the Cores##25577 |goto 26.3,41.9
step
talk Yargra Blackscar##40837
accept Rage of the Wolf Ancient##25576 |goto 26.3,42.0
stickystart "darkironlaborers"
stickystart "destroytwilightarmscrates"
step
kill Searing Guardian##40841+
collect 8 Smoldering Core##55123 |n
use Smoldering Core##55123
|tip Use your Smoldering Cores next to Twilight Anvils. You can use the same anvil for each Core. They are small anvils sitting on the ground around this area.
Destroy #8# Smoldering Cores |q 25577/1 |goto 29.6,41.8
step
label "darkironlaborers"
kill 12 Dark Iron Laborer##40838 |q 25576/1 |goto 29.6,41.8
step
label "destroytwilightarmscrates"
click Twilight Arms Crate##9393+
Destroy #10# Twilight Arms Crates |q 25575/1 |goto 29.6,41.8
step
talk Yargra Blackscar##40837
turnin Rage of the Wolf Ancient##25576 |goto 26.3,42.0
step
talk Jordan Olafson##40834
turnin Forged of Shadow and Flame##25575 |goto 26.3,41.9
turnin Crushing the Cores##25577 |goto 26.3,41.9
accept Cindermaul, the Portal Master##25599 |goto 26.3,41.9
step
kill Cindermaul##40844 |q 25599/1 |goto 30.7,41.7
step
click Battered Stone Chest##203089
collect Tome of Openings##55136 |q 25599/2 |goto 30.7,41.7
step
talk Jordan Olafson##40834
turnin Cindermaul, the Portal Master##25599 |goto 26.3,41.9
accept Forgemaster Pyrendius##25600 |goto 26.3,41.9
step
click Portal Runes##2670+
Lure Forgemaster Pyrendius onto the activated Portal Runes
|tip This will weaken him and allow you to kill him.
kill Forgemaster Pyrendius##40845 |q 25600/1 |goto 31.9,46.3
step
talk Jordan Olafson##40834
turnin Forgemaster Pyrendius##25600 |goto 26.3,41.9
accept Return from the Firelands##25612 |goto 26.3,41.9
step
_Go inside_ the blue portal |goto Mount Hyjal/0 25.9,40.8 |walk |q 25354
Teleport Back Up |goto 26.3,40.9 < 10 |noway |q 25354
step
talk Takrik Ragehowl##39432
turnin Sweeping the Shelf##25354 |goto 28.4,29.9
turnin Return from the Firelands##25612 |goto 28.4,29.9
step
talk Vision of Ysera##46987
accept Aviana's Legacy##27874 |goto 28.4,29.8
step
talk Rio Duran##39434
accept The Fires of Mt. Hyjal##25630 |goto 28.2,29.9
step
talk Laina Nightsky##39927
turnin The Fires of Mt. Hyjal##25630 |goto 19.0,40.9
accept Fighting Fire With ... Anything##25381 |goto 19.0,40.9
accept Disrupting the Rituals##25382 |goto 19.0,40.9
step
talk Mylune##39930
accept Save the Wee Animals##25385 |goto 19.2,37.9
step
talk Matoclaw##39928
accept If You're Not Against Us...##25404 |goto 19.0,37.0
step
talk Elizil Wintermoth##41860
fpath Grove of Aessina |goto 19.6,36.4
step
talk Tyrus Blackhorn##39933
Tell him _"Yes, Blackhorn. I've been sent to request your aid, if you are willing."_
Persuade Blackhorn |q 25404/1 |goto 22.3,44.9
step
talk Tyrus Blackhorn##39933
turnin If You're Not Against Us...##25404 |goto 22.3,44.9
accept Seeds of Their Demise##25408 |goto 22.3,44.9
step
kill Wailing Weed##40066+
collect 8 Bileberry##53102 |q 25408/1 |goto 21.1,42.6
step
talk Tyrus Blackhorn##39933
turnin Seeds of Their Demise##25408 |goto 22.3,44.9
accept A New Master##25411 |goto 22.3,44.9
step
kill Twilight Inferno Lord##39974
use Bottled Bileberry Brew##53120
|tip Use your Bottled Bileberry Brew on the corpse of a Twilight Inferno Lord.
Subjugate a Twilight Inferno Lord |q 25411/1 |goto 14.5,45.3
step
Next to you:
talk Subjugated Inferno Lord##40093
turnin A New Master##25411
accept The Name Never Spoken##25412
stickystart "ragingtwilightkills"
stickystart "frightanimal"
step
click Southern Firestone##202763
Examine the Southern Firestone |q 25412/3 |goto 14.3,45.4
step
click Central Firestone##202764
Examine the Central Firestone |q 25412/2 |goto 11.7,41.5
step
click Northern Firestone##202765
Examine the Northern Firestone |q 25412/1 |goto 9.6,36.5
step
label "ragingtwilightkills"
kill 10 Raging Firestorm##39939 |q 25381/1 |goto 11.3,38.2
kill 6 Twilight Inferno Lord##39974 |q 25382/1 |goto 11.3,38.2
step
label "frightanimal"
click Panicked Bunny##39997+, Terrified Squirrel##39998+
collect 10 Frightened Animal##53060 |q 25385/1 |goto 11.3,38.2
step
talk Laina Nightsky##39927
turnin Fighting Fire With ... Anything##25381 |goto 19.0,40.9
turnin Disrupting the Rituals##25382 |goto 19.0,40.9
step
talk Mylune##39930
turnin Save the Wee Animals##25385 |goto 19.2,37.9
accept Oh, Deer!##25392 |goto 19.2,37.9
step
talk Tyrus Blackhorn##39933
turnin The Name Never Spoken##25412 |goto 22.3,44.9
accept Black Heart of Flame##25428 |goto 22.3,44.9
step
use Charred Branch##53464
|tip Use your Charred Branch while in the burning forest area.
kill Thol'embaar##40107
collect Black Heart of Thol'embaar##53454 |q 25428/1 |goto 14.6,42.2
step
clicknpc Injured Fawn##39999+ |goto 12.5,44.6 < 10 |walk
|tip You need 3 of them.
Escort #3# Injured Fawns Home |q 25392/1 |goto 19.2,37.9
step
talk Mylune##39930
turnin Oh, Deer!##25392 |goto 19.2,37.9
step
talk Tyrus Blackhorn##39933
turnin Black Heart of Flame##25428 |goto 22.3,44.9
accept Good News... and Bad News##29066 |goto 22.3,44.9
step
talk Laina Nightsky##39927
accept Last Stand at Whistling Grove##25940 |goto 19.0,40.9
step
talk Matoclaw##39928
turnin Good News... and Bad News##29066 |goto 19.0,37.0
step
talk Keeper Taldros##39932
turnin Last Stand at Whistling Grove##25940 |goto 13.7,32.8
accept The Bears Up There##25462 |goto 13.7,32.8
step
clicknpc Climbing Tree##40190
Use your _Climb Up_ ability to climb to the top of the tree |petaction 1
clicknpc Hyjal Bear Cub##52688+
Use your _Chuck-a-bear_ ability to throw the cubs down |petaction 4
|tip Aim the yellow spot at the bearskin trampoline on the ground.
Rescue #6# Hyjal Bear Cubs |q 25462/1 |goto 13.9,34.1
step
talk Keeper Taldros##39932
turnin The Bears Up There##25462 |goto 13.7,32.8
accept Smashing Through Ashes##25490 |goto 13.7,32.8
step
kill 8 Charbringer##40336 |q 25490/1 |goto 16.4,51.8
step
talk Arch Druid Hamuul Runetotem##5769
turnin Smashing Through Ashes##25490 |goto 27.1,62.6
accept Durable Seeds##25491 |goto 27.1,62.6
accept Fresh Bait##25493 |goto 27.1,62.6
step
talk Rayne Feathersong##40331
accept Firebreak##25492 |goto 27.1,63.0
stickystart "corehoundentrails"
stickystart "hyjalseedlings"
step
kill 10 Lava Surger##46911 |q 25492/1 |goto 34.0,53.2
step
label "corehoundentrails"
kill Core Hound##46910+
collect 4 Core Hound Entrails##54609 |q 25493/1 |goto 34.0,53.2
step
label "hyjalseedlings"
click Scorched Soil##202884
collect 10 Hyjal Seedling##54574 |q 25491/1 |goto 34.0,53.2
step
talk Dinorae Swiftfeather##43481
fpath Shrine of Aviana |goto 41.2,42.6
step
talk Thisalee Crow##41006
accept The Wormwing Problem##25655 |goto 42.2,45.4
accept Scrambling for Eggs##25656 |goto 42.2,45.4
step
talk Choluna##41005
turnin Aviana's Legacy##27874 |goto 44.4,46.2
accept An Offering for Aviana##25663 |goto 44.4,46.2
step
use Sacred Nectar##55208
|tip Use your Sacred Nectar next to Aviana's Burial Circle.
Offer the Nectar |q 25663/1 |goto 40.4,44.3
step
talk Mysterious Winged Spirit##41068
turnin An Offering for Aviana##25663 |goto 40.4,44.3
accept A Plea From Beyond##25665 |goto 40.4,44.3
stickystart "mthyjaleggs"
step
kill Wormwing Screecher##41027+, Wormwing Swifttalon##41028+
Slay #10# Wormwing Harpies |q 25655/1 |goto 36.9,43.4
step
label "mthyjaleggs"
click Stolen Hyjal Egg##203143
collect 8 Hyjal Egg##55189 |q 25656/1 |goto 36.9,43.4
step
talk Thisalee Crow##41006
turnin The Wormwing Problem##25655 |goto 42.2,45.4
turnin Scrambling for Eggs##25656 |goto 42.2,45.4
accept A Bird in Hand##25731 |goto 42.2,45.4
step
talk Choluna##41005
turnin A Plea From Beyond##25665 |goto 44.4,46.2
accept A Prayer and a Wing##25664 |goto 44.4,46.2
step
click Harpy Signal Fire##7290
Fight Marion Wormwing Until She is Captured |q 25731/1 |goto 38.4,44.2
talk Marion Wormwing##41112
Ask her _"Why are you stealing eggs?"_
Then select "_<Order Thisalee to kill the harpy.>_"
Interrogate Marion Wormwing |q 25731/2 |goto 38.4,44.2
step
use Enormous Bird Call##55211
|tip Use your Enormous Bird Call in Blaithe's Roost.
|tip It's a huge bird nest sitting on top of this mountain peak.
kill Blaithe##41084
collect Ancient Feather##55210 |q 25664/1 |goto 39.2,37.1
step
talk Thisalee Crow##41006
turnin A Bird in Hand##25731 |goto 42.2,45.4
step
talk Choluna##41005
turnin A Prayer and a Wing##25664 |goto 44.4,46.2
step
_Go upstairs_ in the Shrine |goto Mount Hyjal/0 42.2,45.4 < 10 |walk
talk Skylord Omnuron##40997
accept Fact-Finding Mission##25740 |goto 43.5,45.9
step
talk Arch Druid Hamuul Runetotem##5769
turnin Durable Seeds##25491 |goto 27.1,62.6
turnin Fresh Bait##25493 |goto 27.1,62.6
accept Hell's Shells##25507 |goto 27.1,62.6
step
talk Rayne Feathersong##40331
turnin Firebreak##25492 |goto 27.1,63.0
accept Prepping the Soil##25502 |goto 27.1,63.0
step
click Flameward##7340
Activate the Flameward |q 25502/1 |goto 33.0,64.6
step
kill Ashbearer##46925+
Defend the Flameward |q 25502/2 |goto 33.0,64.6
step
talk Thisalee Crow##41006
turnin Fact-Finding Mission##25740 |goto 32.8,70.8
accept Sethria's Brood##25746 |goto 32.8,70.8
accept A Gap in Their Armor##25758 |goto 32.8,70.8
step
click Codex of Shadows##203207
accept The Codex of Shadows##25763 |goto 31.3,77.1
stickystart "collectingtwilightarmorplates"
step
kill Twilight Dragonkin##41029+, Twilight Dragonkin Armorers##41030+
Slay #12# Sethria's Minions |q 25746/1 |goto 30.9,76.7
step
label "collectingtwilightarmorplates"
click Twilight Armor Plate##203198
collect 8 Twilight Armor Plate##55809 |q 25758/1 |goto 30.9,76.7
step
talk Thisalee Crow##41006
turnin Sethria's Brood##25746 |goto 32.8,70.8
turnin A Gap in Their Armor##25758 |goto 32.8,70.8
accept Disassembly##25761 |goto 32.8,70.8
turnin The Codex of Shadows##25763 |goto 32.8,70.8
accept Egg Hunt##25764 |goto 32.8,70.8
stickystart "unveilingavianasegg"
step
use Thisalee's Shiv##55883
|tip Use Thisalee's Shiv on Twilight Juggernauts. Use Thisalee's Shiv multiple times to remove the Twilight Juggernauts' Armor Plating and make them weaker.
kill 3 Twilight Juggernaut##41031 |q 25761/1 |goto 31.1,76.7
step
label "unveilingavianasegg"
click Shadow Cloak Generator##203208
|tip You may have to try multiple Generators.
kill Twilight Dragonkin##41029+
Unveil and Defend Aviana's Egg |q 25764/1 |goto 29.9,77.1
step
talk Thisalee Crow##41006
turnin Disassembly##25761 |goto 32.8,70.8
turnin Egg Hunt##25764 |goto 32.8,70.8
accept Sethria's Demise##25776 |goto 32.8,70.8
step
kill Sethria##41255
use Thisalee's Signal Rocket##56003
|tip Use Thisalee's Signal Rocket when Sethria turns into a dragon.
kill Sethria##41255 |q 25776/1 |goto 35.5,98.0
step
talk Thisalee Crow##41006
turnin Sethria's Demise##25776 |goto 32.8,70.8
accept Return to the Shrine##25795 |goto 32.8,70.8
step
use Heap of Core hound Innards##54744
|tip Use your Heap of Core Hound Innards near Nemesis. Nemesis is a huge turtle that walks all around The Flamewake area, so you may need to search for him.
clicknpc Nemesis##40340
|tip He will become friendly.
collect Nemesis Shell Fragment##54745 |q 25507/1 |goto 37.4,52.3
step
talk Choluna##41005
turnin Return to the Shrine##25795 |goto 44.4,46.2
accept An Ancient Reborn##25807 |goto 44.4,46.2
step
use Herald's Incense##56016
|tip Use Herald's Incense next to Aviana's Egg.
|tip Aviana's Egg is in the tree tower, in a side room.
Burn Herald's Incense |q 25807/1 |goto 44.3,47.9
step
talk Aviana##41308
turnin An Ancient Reborn##25807 |goto 44.3,48.0
step
talk Morthis Whisperwing##41003
accept The Hatchery Must Burn##25810 |goto 44.1,45.9
step
_Go inside_ the blue portal |goto 39.0,58.0 < 15 |walk
talk Farden Talonshrike##40578
turnin The Hatchery Must Burn##25810 |goto 37.2,56.2
accept Flight in the Firelands##25523 |goto 37.2,56.2
step
click Twilight Weapon Rack##130
collect Twilight Firelance##52716 |q 25523 |goto 37.1,56.1
step
use Twilight Firelance##52716
|tip Equip the Twilight Firelance.
clicknpc Aviana's Guardian##40723
Ride Aviana's Guardian |invehicle |goto 37.4,56.0 |q 25523
step
Use your _Flap_ ability on your hotbar repeatedly to fly to the green flag |petaction 4
Visit the Guardian Flag |q 25523/1 |goto 36.4,53.2
step
Use your _Flap_ ability on your hotbar repeatedly to fly to this spot |petaction 4
talk Farden Talonshrike##40578
turnin Flight in the Firelands##25523 |goto 37.2,56.2
accept Wave One##25525 |goto 37.2,56.2
step
Use your _Flap_ ability on your hotbar repeatedly to fly around this area |petaction 4
_Fly into Twilight Buzzards_ to joust them
kill 10 Twilight Knight Rider##39835 |q 25525/1 |goto 36.8,54.0
step
Use your _Flap_ ability on your hotbar repeatedly to fly to this spot |petaction 4
talk Farden Talonshrike##40578
turnin Wave One##25525 |goto 37.2,56.2
accept Wave Two##25544 |goto 37.2,56.2
step
Use your _Flap_ ability on your hotbar repeatedly to fly around this area |petaction 4
_Fly into Twilight Firebirds_ to joust them
|tip Be careful, don't let the burning Falling Boulders hit you.
kill 10 Twilight Lancer##40660 |q 25544/1 |goto 36.8,54.0
step
Use your _Flap_ ability on your hotbar repeatedly to fly to this spot |petaction 4
talk Farden Talonshrike##40578
turnin Wave Two##25544 |goto 37.2,56.2
accept Egg Wave##25560 |goto 37.2,56.2
step
Use your _Flap_ ability on your hotbar repeatedly to fly around this area |petaction 4
_Run over_ Firelands Eggs
|tip They look like blue eggs on the ground around this area.
Destroy #40# Firelands Eggs |q 25560/1 |goto 33.3,56.9
step
Use your _Flap_ ability on your hotbar repeatedly to fly to this spot |petaction 4
talk Farden Talonshrike##40578
turnin Egg Wave##25560 |goto 37.2,56.2
accept Return to Aviana##25832 |goto 37.2,56.2
step
Click the _red arrow_ on your hotbar to get off the hippogryph |outvehicle |q 25832
step
_Go inside_ the blue glowing orb |goto 39.2,57.6 < 10 |walk
talk Aviana##41308
turnin Return to Aviana##25832 |goto 44.3,48.0
step
talk Arch Druid Hamuul Runetotem##5769
turnin Hell's Shells##25507 |goto 27.1,62.6
accept Tortolla Speaks##25510 |goto 27.1,62.6
step
talk Rayne Feathersong##40331
turnin Prepping the Soil##25502 |goto 27.1,63.0
step
talk Tortolla##41504
turnin Tortolla Speaks##25510 |goto 24.7,55.7
accept Breaking the Bonds##25514 |goto 24.7,55.7
accept Children of Tortolla##25519 |goto 24.7,55.7
step
click Rod of Subjugation##9469
Disable the First Rod of Subjugation |q 25514/1 |goto 24.0,55.9
step
click Rod of Subjugation##9469
Disable the Second Rod of Subjugation |q 25514/2 |goto 25.2,54.9
step
talk Tortolla##41504
turnin Breaking the Bonds##25514 |goto 24.7,55.7
step
kill Deep Corruptor##40561+
Save #6# Tortolla's Eggs |q 25519/1 |goto 24.8,57.1
step
talk Tortolla##41504
turnin Children of Tortolla##25519 |goto 24.7,55.7
accept An Ancient Awakens##25520 |goto 24.7,55.7
step
talk Arch Druid Hamuul Runetotem##5769
turnin An Ancient Awakens##25520 |goto 27.1,62.6
step
talk Vision of Ysera##46998
accept The Last Living Lorekeeper##25830 |goto 27.0,62.6
step
talk Nordu##41381
turnin The Last Living Lorekeeper##25830 |goto 27.4,55.5
accept Firefight##25842 |goto 27.4,55.5
step
kill 5 Fiery Tormentor##41396 |q 25842/1 |goto 26.6,53.2
step
talk Nordu##41381
turnin Firefight##25842 |goto 27.4,55.5
accept Aessina's Miracle##25372 |goto 27.4,55.5
step
talk Arch Druid Hamuul Runetotem##5769
turnin Aessina's Miracle##25372 |goto 19.5,37.8
accept Tortolla's Revenge##25843 |goto 19.5,37.8
step
talk Tortolla##41504
turnin Tortolla's Revenge##25843 |goto 41.6,60.7
accept The Hammer and the Key##25904 |goto 41.6,60.7
step
talk Niden##41507
accept Lost Wardens##25881 |goto 42.2,60.6
accept Breakthrough##25899 |goto 42.2,60.6
stickystart "rescuelostwardens"
stickystart "scorchlord"
step
kill Twilight Field Captain##41502
collect Glyph of Opening##56177 |q 25904/1 |goto 53.9,54.5
step
label "rescuelostwardens"
talk Lost Warden##41499
|tip They look like dead night elves laying on the ground all around this area.
Tell them _"On your feet, soldier. The ancients are with us, and the mountain is healed!"_
|tip You can do this while mounted. You can mark them with shift+v to make them easier to spot (Use v to mark enemies again).
Rescue #8# Lost Wardens |q 25881/1 |goto 49.4,53.1
step
label "scorchlord"
kill 10 Twilight Scorchlord##41500 |q 25899/1 |goto 49.4,53.1
step
talk Tortolla##41504
turnin The Hammer and the Key##25904 |goto 41.9,60.8
accept The Third Flamegate##25906 |goto 41.9,60.8
step
talk Captain Irontree##41492
turnin Lost Wardens##25881 |goto 57.1,55.9
accept Pressing the Advantage##25886 |goto 57.1,55.9
turnin Breakthrough##25899 |goto 57.1,55.9
step
talk Logram##41497
accept Hyjal Recycling Program##25901 |goto 56.9,56.0
stickystart "twifieldcap"
step
click Warden's Arrow##203310
collect 15 Warden's Arrow##56176 |q 25901/1 |goto 56.5,57.9
step
label "twifieldcap"
kill 4 Twilight Field Captain##41502 |q 25886/1 |goto 60.9,58.8
step
talk Logram##41497
turnin Hyjal Recycling Program##25901 |goto 56.9,56.0
step
talk Captain Irontree##41492
turnin Pressing the Advantage##25886 |goto 57.1,56.0
step
_Go inside_ the blue portal |goto 64.8,54.2 < 15 |walk
talk Garunda Mountainpeak##41498
turnin The Third Flamegate##25906 |goto 64.3,53.6
accept The Time for Mercy has Passed##25910 |goto 64.3,53.6
accept The Strength of Tortolla##25915 |goto 64.3,53.6
step
Follow the path around |goto Mount Hyjal/0 61.9,55.5 < 10 |walk
|tip Stand next to a Nemesis Crystal with your Child of Tortolla turtle next to you. They are big floating red crystals around this area.
Examine the Nemesis Crystal |q 25915/1 |goto 65.8,57.1
step
kill 4 Shadowflame Master##41563 |q 25910/1 |goto 64.3,58.0
kill 10 Molten Tormentor##41565 |q 25910/2 |goto 64.3,58.0
step
talk Garunda Mountainpeak##41498
turnin The Time for Mercy has Passed##25910 |goto 64.3,53.6
turnin The Strength of Tortolla##25915 |goto 64.3,53.6
accept Finish Nemesis##25923 |goto 64.3,53.6
step
Follow the path around |goto Mount Hyjal/0 61.9,55.5 < 10 |walk
kill Nemesis##40340
use Totem of Tortolla##56207
|tip Use your Totem of Tortolla when Nemesis is about to finish casting Molten Fury.
Defeat Nemesis |q 25923/1 |goto 62.7,62.2
step
talk Garunda Mountainpeak##41498
turnin Finish Nemesis##25923 |goto 64.3,53.6
accept Tortolla's Triumph##25928 |goto 64.3,53.6
step
_Go inside_ the blue portal |goto 64.8,53.7 < 10 |walk
talk Tortolla##41504
turnin Tortolla's Triumph##25928 |goto 41.8,60.7
accept The Ancients are With Us##25653 |goto 41.8,60.7
step
talk Ysera##40928
turnin The Ancients are With Us##25653 |goto 62.1,24.9
accept Commander Jarod Shadowsong##25597 |goto 62.1,24.9
step
talk Elementalist Ortell##41024
turnin Commander Jarod Shadowsong##25597 |goto 71.9,58.1
accept Signed in Blood##25274 |goto 71.9,58.1
step
talk Twilight Recruit##39619 |goto 73.6,60.4 < 10 |walk
use Blackjack##52683
|tip Use your Blackjack on the Twilight Recruit.
clicknpc Twilight Recruit##39619
collect Twilight Recruitment Papers##52685 |q 25274/1 |goto 72.4,58.8
step
talk Elementalist Ortell##41024
turnin Signed in Blood##25274 |goto 71.9,58.1
accept Your New Identity##25276 |goto 71.9,58.1
step
talk Condenna the Pitiless##39442
turnin Your New Identity##25276 |goto 76.9,62.0
accept Trial By Fire##25223 |goto 76.9,62.0
accept In Bloom##25224 |goto 76.9,62.0
step
talk Instructor Cargall##39451
accept Waste of Flesh##25330 |goto 77.0,62.2
stickystart "clickflameblossoms"
stickystart "fieryinstructorkills"
step
clicknpc Immolated Supplicant##39453+
use Frostgale Crystal##52819
|tip Use your Frostgale Crystal on an Immolated Supplicant. They are on fire running around this area. They must be alive for you to be able to save them.
Save #4# Immolated Supplicants |q 25330/1 |goto 79.8,62.9
step
label "clickflameblossoms"
click Flame Blossom##202619
collect 5 Flame Blossom##52537 |q 25224/1 |goto 79.8,62.9
step
label "fieryinstructorkills"
kill 8 Fiery Instructor##40564 |q 25223/1 |goto 79.8,62.9
step
talk Instructor Cargall##39451
turnin Waste of Flesh##25330 |goto 77.0,62.2
step
talk Condenna the Pitiless##39442
turnin Trial By Fire##25223 |goto 76.9,62.0
turnin In Bloom##25224 |goto 76.9,62.0
accept Twilight Training##25291 |goto 76.9,62.0
step
talk Instructor Mylva##39413
turnin Twilight Training##25291 |goto 89.6,59.1
accept Physical Training: Forced Labor##25509 |goto 89.6,59.1
step
click Outhouse Hideout##202701
accept Gather the Intelligence##25296 |goto 88.3,58.6
step
talk Instructor Devoran##39406
accept Walking the Dog##25294 |goto 90.2,56.4
step
click Crate of Scrolls##202968
collect Twilight Communique##52724 |q 25296/1 |goto 89.5,55.5
step
click Hyjal Battleplans##202969
collect Hyjal Battleplans##52725 |q 25296/2 |goto 92.0,51.5
stickystart "breakdarkwhisperlodestones"
step
kill Spinescale Basilisk##39658+
collect 5 Charred Basilisk Meat##52708 |q 25294 |goto 88.3,51.9
step
label "breakdarkwhisperlodestones"
click Darkwhisper Lodestone##202952
Break #5# Darkwhisper Lodestones |q 25509/1 |goto 88.3,51.9
step
use Fiery Leash##52717
|tip Use your Fiery Leash to summon the Spawn of Smolderos.
use Charred Basilisk Meat##52708
|tip Use your 5 Charred Basilisk Meat.
Feed the Spawn of Smolderos #5# Times |q 25294/1
step
click Outhouse Hideout##202701
turnin Gather the Intelligence##25296 |goto 88.3,58.6
accept Seeds of Discord##25308 |goto 88.3,58.6
step
talk Instructor Mylva##39413
turnin Physical Training: Forced Labor##25509 |goto 89.6,59.1
accept Agility Training: Run Like Hell!##25499 |goto 89.6,59.1
step
Run around the circular structure in the middle of the camp while the Blazing Trainer fire elemental chases you
Run away from the Blazing Trainer for 1 minute
Complete your Physical Training |q 25499/1 |goto 88.7,57.4
step
talk Instructor Mylva##39413
turnin Agility Training: Run Like Hell!##25499 |goto 89.6,59.1
accept Mental Training: Speaking the Truth to Power##25299 |goto 89.6,59.1
step
use Orb of Ascension##52828
|tip Use your Orb of Ascension.
Use the abilities on your hotbar to answer Yes or No to the questions
|tip You will see the questions display in your chat window. You must answer 10 questions correctly.
Complete your Mental Training |q 25299/1 |goto Mount Hyjal/0 89.5,59.0
step
talk Instructor Mylva##39413
turnin Mental Training: Speaking the Truth to Power##25299 |goto 89.6,59.1
accept Spiritual Training: Mercy is for the Weak##25309 |goto 89.6,59.1
step
talk Instructor Devoran##39406
turnin Walking the Dog##25294 |goto 90.2,56.4
accept A Champion's Collar##25494 |goto 90.2,56.4
step
kill 5 Failed Supplicant##39752 |q 25309/1 |goto 92.1,48.4
step
kill Spinescale Matriarch##40403
collect Spiked Basilisk Hide##54610 |q 25494/1 |goto 84.7,46.8
step
Use your Ogre Disguise next to the Ogre Outhouse |use Ogre Disguise##55137
Put on your Ogre Disguise |havebuff 306868 |goto 77.6,48.1 |q 25308
step
_Enter_ the building |goto Mount Hyjal/0 77.3,49.6 < 10 |walk
talk Karr'gonn##40489
Tell him _"Boss, one of the boys is causing some trouble outside."_
kill High Cultist Azennios##40491 |q 25308/1 |goto 76.6,49.1
step
Right-click the _Seeds of Discord_ buff to remove your Ogre Disguise |nobuff Interface\Icons\inv_misc_ogrepinata |goto Mount Hyjal/0 77.9,49.5 |q 25308
step
click Outhouse Hideout##202701
turnin Seeds of Discord##25308 |goto 88.2,58.5
step
talk Instructor Mylva##39413
turnin Spiritual Training: Mercy is for the Weak##25309 |goto 89.6,59.1
step
talk Instructor Devoran##39406
turnin A Champion's Collar##25494 |goto 90.2,56.4
accept Grudge Match##25496 |goto 90.2,56.4
step
talk Gromm'ko##40409
Tell him _"Instructor Devoran sends a contender against your raptor."_
|tip Wait until your Spawn of Smolderos kills his raptor, Butcher.
kill Gromm'ko##40409
Complete the Grudge Match |q 25496/1 |goto 77.8,51.4
step
talk Instructor Devoran##39406
turnin Grudge Match##25496 |goto 90.2,56.4
step
talk Instructor Mylva##39413
accept The Greater of Two Evils##25310 |goto 89.6,59.1
accept Twilight Territory##25311 |goto 89.6,59.1
stickystart "horrorguard"
step
use Talisman of Flame Ascendancy##54814
|tip Use your Talisman of Flame Ascendancy. Use the abilities on your hotbar to fight Garnoth, Fist of the Legion.
kill Garnoth, Fist of the Legion##39726 |q 25310/1 |goto 64.7,64.7
step
label "horrorguard"
kill 10 Horrorguard##48725+ |q 25311/1 |goto 66.1,65.9
step
talk Instructor Mylva##39413
turnin The Greater of Two Evils##25310 |goto 89.6,59.1
turnin Twilight Territory##25311 |goto 89.6,59.1
step
click Outhouse Hideout##202701
accept Speech Writing for Dummies##25314 |goto 88.3,58.6
step
kill Okrog##40922 |q 25314/1 |goto 79.0,56.1
|tip You will find him walking along this road, so you may need to search for him.
step
click Outhouse Hideout##202701
turnin Speech Writing for Dummies##25314 |goto 88.3,58.6
accept Head of the Class##25601 |goto 88.3,58.6
step
talk Instructor Mylva##39413
turnin Head of the Class##25601 |goto 89.6,59.1
accept Graduation Speech##25315 |goto 89.6,59.1
step
click Initiation Podium##9481
|tip Use the abilities on your hotbar to respond to what the crowd says.
|tip If the crowd says something angry, use your Incite! ability. If the crowd says something crazy, use your Pander! ability. If the crowd says something to make it seem like they are bored or unsure, use your Inspire! ability.
_Please_ the crowd _10 times_
Give Your Graduation Speech |q 25315/1 |goto 95.2,51.3
step
Use the _Step Down_ ability on your action bar to leave the podium |nobuff INTERFACE\ICONS\achievement_dungeon_bastion of twilight_twilightascendantcouncil |q 25315
step
talk Commander Jarod Shadowsong##41025
turnin Graduation Speech##25315 |goto 95.3,51.3
accept Twilight Riot##25531 |goto 95.3,51.3
step
talk Commander Jarod Shadowsong##41025
turnin Twilight Riot##25531 |goto 72.2,74.7
accept Slash and Burn##25608 |goto 72.2,74.7
step
clicknpc Emerald Drake##40934
Mount an Emerald Drake |invehicle |goto 72.6,75.1 |q 25608
stickystart "acidblasttwilightkills"
step
Use your _Aerial Swipe_ ability on Twilight Stormwakers |petaction 2
|tip They fly in the air around this area.
kill 5 Twilight Stormwaker##40573 |q 25608/1 |goto 78.7,64.0
step
label "acidblasttwilightkills"
Use your _Acid Blast_ ability on Fiery Instructors and Twilight Initiates on the ground |petaction 1
kill Fiery Instructor##40564+, Twilight Initiate##40562+
Kill #40# Twilight's Hammer Units |q 25608/2
step
Click the _red arrow_ on your hotbar to stop riding on the Emerald Drake |outvehicle |q 25608 |goto 72.1,73.7
step
talk Commander Jarod Shadowsong##41025
turnin Slash and Burn##25608 |goto 72.2,74.7
step
talk Commander Jarod Shadowsong##40772
accept Might of the Firelord##25548 |goto 72.1,74.0
step
talk Cenarius##40773
accept Secrets of the Flame##25554 |goto 71.9,74.1
step
talk Althera##43549
fpath Gates of Sothann |goto 71.6,75.3
step
click Burning Litanies##203047
collect The Burning Litanies##54906 |q 25554/2 |goto 59.7,80.8
step
click Tome of Flame##203046
collect Tome of Flame##54905 |q 25554/3 |goto 58.1,78.9
step
click Ascendant's Codex##203048
collect Ascendant's Codex##54907 |q 25554/1 |goto 56.8,83.8
step
click Pure Twilight Egg##207359
accept The Twilight Egg##25644 |goto 59.1,83.9
step
kill 4 Flame of Ascendant##40709 |q 25548/1 |goto 59.0,80.2
kill 5 Twilight Subjugator##40463 |q 25548/2 |goto 59.0,80.2
step
talk Cenarius##40773
turnin Secrets of the Flame##25554 |goto 71.9,74.1
accept The Gatekeeper##25555 |goto 71.9,74.1
step
talk Commander Jarod Shadowsong##40772
turnin Might of the Firelord##25548 |goto 72.1,74.0
accept The Sanctum of the Prophets##25549 |goto 72.1,74.0
step
talk Aronus##40816
turnin The Twilight Egg##25644 |goto 72.2,73.9
accept Brood of Evil##25552 |goto 72.2,73.9
step
kill Young Twilight Drake##40687
collect Young Twilight Drake Skull##54973 |q 25552/1 |goto 59.3,78.0
stickystart "retainaugur"
step
use Horn of Cenarius##55153
|tip Use your Horn of Cenarius.
kill Azralon the Gatekeeper##40814 |q 25555/1 |goto 57.4,68.0
step
label "retainaugur"
kill 4 Twilight Augur##40713 |q 25549/1 |goto 60.4,72.5
kill 4 Twilight Retainer##40767 |q 25549/2 |goto 60.4,72.5
kill 1 Emissary of Flame##40755 |q 25549/3 |goto 60.4,72.5
step
talk Cenarius##40773
turnin The Gatekeeper##25555 |goto 71.9,74.1
step
talk Commander Jarod Shadowsong##40772
turnin The Sanctum of the Prophets##25549 |goto 72.1,74.0
accept Magma Monarch##25550 |goto 72.1,74.0
step
talk Aronus##40816
turnin Brood of Evil##25552 |goto 72.2,74.0
accept Death to the Broodmother##25553 |goto 72.2,74.0
step
use Young Twilight Drake Skull##55173
|tip Use your Young Twilight Drake Skull.
kill Desperiona##40974 |q 25553/1 |goto 54.8,85.8
step
use Drums of the Turtle God##55179
|tip Use your Drums of the Turtle God.
kill King Moltron##40998 |q 25550/1 |goto 43.4,83.6
step
talk Commander Jarod Shadowsong##40772
turnin Magma Monarch##25550 |goto 72.1,74.0
step
talk Aronus##40816
turnin Death to the Broodmother##25553 |goto 72.3,74.0
step
talk Cenarius##40773
accept The Firelord##25551 |goto 71.9,74.1
step
_Enter_ the blue swirling portal |goto 55.6,66.2 < 10 |walk
talk Cenarius##40803 |goto 44.8,79.0 < 6 |walk
Tell him _"I am ready to begin to battle against Rangaros."_
|tip You will only be able to talk to him if the battle hasn't started yet.
Run down the path and fight Ragnaros
You will assist 3 NPC's when killing Ragnaros
|tip Do not attack and fight Ragnaros directly, just let the NPC's fight him. Instead, kill the fire elementals that periodically attack the NPC's you're assisting. Make sure to kill all the fire elementals and the NPC's will take care of everything else and kill Ragnaros for you.
kill Ragnaros##41634 |q 25551/1 |goto 49.7,76.8
step
click Portal to Hyjal##209038 |goto 49.0,77.1
Teleport to the Gates of Sothann |goto 72.2,74.8,0.5 |noway |q 25551
step
talk Commander Jarod Shadowsong##40772
turnin The Firelord##25551 |goto 72.1,74.0
step
talk Commander Jarod Shadowsong##40772
accept The Battle Is Won, The War Goes On##27399 |goto 72.1,74.0
step
talk Farseer Krogar##45244
turnin The Battle Is Won, The War Goes On##27399 |goto Orgrimmar 50.5,38.4
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
