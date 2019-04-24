local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("LevelingAMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Pandaria (80-90)\\The Jade Forest (80-90)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\JadeForest",
next="Leveling Guides\\Pandaria (80-90)\\Valley of the Four Winds (81-90)",
condition_suggested=function() return level >= 80 and level <= 90 and not completedq(30648) end,
startlevel=80,
endlevel=90,
},[[
step
Enter the building |goto Stormwind City/0 80.63,37.86 < 7 |walk
Follow the path |goto 83.93,33.89 < 7 |walk
talk Grand Admiral Jes-Tereth##1750
|tip Inside the building.
accept The King's Command##29547 |goto Stormwind City/0 85.47,32.66
step
Watch the dialogue
Visit Stormwind Keep |q 29547/1 |goto 85.47,32.66
step
talk Rell Nightwind##55789
turnin The King's Command##29547 |goto 78.95,39.81
accept The Mission##29548 |goto 78.95,39.81
step
talk Sky Admiral Rogers##66292
|tip At the top of the air ship flying in the air.
Tell her _"I am ready to depart."_
Watch the dialogue
Speak to Admiral Rogers on the Skyfire Gunship |q 29548/1 |goto 25.65,-10.03
step
talk to Sky Admiral Rogers##66292
|tip On the air ship.
turnin The Mission##29548 |goto The Jade Forest/0 42.02,92.80
accept Unleash Hell##31732 |goto The Jade Forest/0 42.02,92.80
step
clicknpc Skyfire Gyrocopter##66473
|tip On the air ship.
Control the Skyfire Gyrocopter |invehicle |goto 42.02,92.51 |q 31732
step
Kill Garrosh'ar enemy around this area
|tip Use the abilities on your action bar on the enemies on the ground around this area.
Slay #60# Garrosh'ar Horde |q 31732/1 |goto 44.15,93.64
step
kill 8 Garrosh'ar Shredder##66397 |q 31732/2 |goto 44.15,93.64
|tip Use the abilities on your action bar on the enemies on the ground around this area.
step
Sink the Bladefist Reaper |q 31732/3 |goto 44.18,98.79
|tip Use the abilities on your action bar near the boat.
step
Sink the Stygian Scar |q 31732/4 |goto 41.12,100.37
|tip Use the abilities on your action bar near the boat.
step
talk to Sky Admiral Rogers##66292
|tip On the air ship.
turnin Unleash Hell##31732 |goto 42.02,92.80
accept Touching Ground##31733 |goto 42.02,92.80
step
click Skyfire Parachute##240210
|tip On the air ship.
Equip a Skyfire Parachute |q 31733/1 |goto 42.31,92.79
step
Parachute to the Ground |goto 43.52,90.71 < 10 |c |q 31733 |notravel
step
talk Sully 'The Pickle' McLeary##54616
turnin Touching Ground##31733 |goto 43.58,90.70
accept No Plan Survives Contact with the Enemy##30069 |goto 43.58,90.70
accept Welcome Wagons##31734 |goto 43.58,90.70
stickystart "Kill_Garroshar_Grunts"
stickystart "Kill_Garroshar_Gear_Greasers"
step
use Sully's Flaregun##89612
|tip Use it next to Horde War Wagons around this area.
|tip They look like big wooden carts with bone horns and wooden barrels on them on the ground around this area.
Destroy #5# Horde War Wagons |q 31734/1 |goto 44.36,93.99
step
label "Kill_Garroshar_Grunts"
kill 6 Garrosh'ar Grunt##66398 |q 30069/1 |goto 44.36,93.99
step
label "Kill_Garroshar_Gear_Greasers"
kill 6 Garrosh'ar Gear-Greaser##66290 |q 30069/2 |goto 44.36,93.99
step
talk Rell Nightwind##54617
turnin No Plan Survives Contact with the Enemy##30069 |goto 45.17,94.99
turnin Welcome Wagons##31734 |goto 45.17,94.99
accept The Right Tool For The Job##31735 |goto 45.17,94.99
step
use Sully's Flaregun##89624
Destroy the First Barricade |q 31735/1 |goto 45.60,95.21
step
use Sully's Flaregun##89624
Destroy the Second Barricade |q 31735/2 |goto 45.95,95.84
step
Watch the dialogue
Confront Ga'trul |q 31735/3 |goto 46.53,96.37
step
talk Rell Nightwind##54617
turnin The Right Tool For The Job##31735 |goto 46.47,96.30
step
Watch the dialogue
talk Rell Nightwind##54617
accept Envoy of the Alliance##31736 |goto 46.47,96.41
accept The Cost of War##31737 |goto 46.47,96.41
step
kill 10 Sha Haunt##66423 |q 31737/1 |goto 44.52,93.58
step
kill 5 Sha Harbinger##66424 |q 31737/2 |goto 44.52,93.58
step
Find the Leader of Paw'don Village |q 31736/1 |goto 46.25,84.80
step
talk Taran Zhu##67012
turnin The Cost of War##31737 |goto 46.25,84.80
step
talk Sunke Khang##65910
turnin Envoy of the Alliance##31736 |goto 46.26,84.72
accept Pillaging Peons##31738 |goto 46.26,84.72
step
talk Teng Applebloom##64596
accept Priorities!##31739 |goto 46.22,84.68
step
talk Mishka##54614
accept Critical Condition##29552 |goto 46.13,84.57
step
talk Wing Kyo##66023
fpath Paw'Don Village |goto 46.04,85.14
step
Enter the building |goto 44.88,84.57 < 7 |walk
talk Jiayi Applebloom##65907
|tip Inside the building.
home Paw'don Village |goto 44.88,84.34
stickystart "Revive_Wounded_Pilots"
stickystart "Slay_Twinspire_Peons"
step
click Applebloom Cider##215134+
|tip They look like wooden barrels with red rope wrapped around them on the ground around this area.
collect 6 Applebloom Cider##215133 |q 31739/1 |goto 42.67,87.54
step
label "Revive_Wounded_Pilots"
clicknpc Wounded Pilot##61492+
|tip They look like dead human soldiers on the ground around this area.
Revive #6# Wounded Pilots |q 29552/1 |goto 42.67,87.54
step
label "Slay_Twinspire_Peons"
Kill Twinspire enemies around this area
Slay #12# Twinspire Peons |q 31738/1 |goto 42.67,87.54
step
talk Lin Applebloom##66199
turnin Priorities!##31739 |goto 39.55,90.03
accept Koukou's Rampage##31740 |goto 39.55,90.03
step
kill Koukou##66213 |q 31740/1 |goto 39.30,89.75
|tip He walks around this small area.
step
Leave the building |goto 44.88,84.56 < 5 |walk
talk Mishka##54614
turnin Critical Condition##29552 |goto 46.14,84.56
step
talk Sunke Khang##65910
turnin Pillaging Peons##31738 |goto 46.26,84.73
turnin Koukou's Rampage##31740 |goto 46.26,84.73
accept Twinspire Keep##31741 |goto 46.26,84.73
accept Unfair Trade##31744 |goto 46.26,84.73
step
talk Rell Nightwind##54617
accept Fractured Forces##31742 |goto 46.20,84.81
accept Smoke Before Fire##31743 |goto 46.20,84.81
stickystart "Slay_Twinspire_Horde"
stickystart "Free_Captive_Pandaren_Cubs"
step
use the Alliance Flare##89602
|tip Use it on the bubble on the ground filled with Wild Imps.
Bomb the Wild Imps |q 31743/4 |goto 43.14,81.44
step
use the Alliance Flare##89602
|tip Use it on a Twinspire Demolisher.
Bomb the Twinspire Demolishers |q 31743/2 |goto 41.61,81.60
step
use the Alliance Flare##89602
|tip Use it on the big red bomb with spikes on it.
Bomb the Twinspire Munitions Stockpile |q 31743/1 |goto 40.90,82.37
step
use the Alliance Flare##89602
|tip Use it on Xhu'daggab.
Bomb Xhu'daggab |q 31743/3 |goto 40.10,81.61
step
kill Dalgan##66274 |q 31742/1 |goto 41.18,80.21
|tip He walks around this small area up on the platform.
step
kill Bellandra Felstorm##66275 |q 31742/2 |goto 41.81,80.26
|tip Up on the platform.
step
talk Sully 'The Pickle' McLeary##54616
|tip Up on the platform, next to a doorway.
turnin Unfair Trade##31744 |goto 41.39,79.57
turnin Fractured Forces##31742 |goto 41.39,79.57
turnin Smoke Before Fire##31743 |goto 41.39,79.57
step
label "Slay_Twinspire_Horde"
Kill enemies around this area
Slay #15# Twinspire Horde |q 31741/1 |goto 41.55,81.61
step
label "Free_Captive_Pandaren_Cubs"
kill Eyes of Ga'trul##66367+
|tip Kill the ones next to Captive Pandaren Cubs around this area.
|tip They look like scared panda children on the ground around this area.
Free #8# Captive Pandaren Cubs |q 31744/1 |goto 41.55,81.61
step
talk Sully 'The Pickle' McLeary##54616
|tip Up on the platform, next to a doorway.
turnin Twinspire Keep##31741 |goto 41.39,79.57
accept The Fall of Ga'trul##30070 |goto 41.39,79.57
step
Enter the building |goto 41.46,79.43 < 5 |walk
kill Ga'trul##66396 |q 30070/1 |goto 41.46,77.58
|tip He walks around this small area inside the building.
|tip Click on the portals after he uses them to teleport to him.
step
talk Rell Nightwind##54617
|tip Inside the building.
turnin The Fall of Ga'trul##30070 |goto 41.46,79.14
accept Onward and Inward##31745 |goto 41.46,79.14
step
Leave the building |goto 41.46,79.50 < 5 |walk
clicknpc Rell's Gyrocopter##67067
Fly in Rell's Gyrocopter |invehicle |goto 41.51,79.75 |q 31745
step
Return to Paw'don Village |q 31745/1 |goto 46.06,84.59 |notravel
step
talk Sky Admiral Rogers##66292
turnin Onward and Inward##31745 |goto 48.05,88.39
accept The White Pawn##29555 |goto 48.05,88.39
accept Hozen Aren't Your Friends, Hozen Are Your Enemies##29556 |goto 48.05,88.39
stickystart "Slay_Hozen"
step
clicknpc Alliance Bodyguard##55168
|tip On the deck of the ship.
Find the Clue |q 29555/1 |goto 49.80,90.19 |count 1
step
Run down the stairs |goto 49.83,90.04 < 3 |walk
Follow the path |goto 49.79,89.88 < 3 |walk
clicknpc Fine Leather Journal##55155
|tip Downstairs inside the ship.
Find the Clue |q 29555/1 |goto 50.0,90.3 |count 2
step
Follow the path |goto 49.98,90.33 < 3 |walk
Follow the path |goto 49.96,90.59 < 3 |walk
clicknpc Alliance Banner##55167
|tip Downstairs inside the ship.
Find the Clue |q 29555/1 |goto 50.15,90.77 |count 3
step
kill Hozen Diver##66148
|tip He swims around this small area downstairs inside the ship.
collect Encoded Captain's Log##89603 |q 29555/2 |goto 50.23,90.85
step
label "Slay_Hozen"
Follow the path |goto 49.96,90.59 < 3 |walk
Follow the path |goto 49.97,90.32 < 3 |walk
Run up the stairs |goto 49.76,89.92 < 3 |c |q 29556
step
Follow the path |goto 49.84,90.04 < 3 |walk
Kill Hozen enemies around this area
Slay #14# Hozen |q 29556/1 |goto 50.06,89.60
step
talk Nodd Codejack##54615
turnin The White Pawn##29555 |goto 50.41,88.26
turnin Hozen Aren't Your Friends, Hozen Are Your Enemies##29556 |goto 50.41,88.26
accept The Missing Admiral##29553 |goto 50.41,88.26
step
talk Admiral Taylor##59022
turnin The Missing Admiral##29553 |goto 54.22,82.50
step
talk Bold Karasshi##55196
accept The Path of War##29558 |goto 54.18,82.41
accept Freeing Our Brothers##29559 |goto 54.18,82.41
accept Ancient Power##29560 |goto 54.18,82.41
stickystart "Free_Prisoners"
stickystart "Collect_Ancient_Hozen_Skulls"
step
Kill Slingtail enemies around this area
Slay #12# Slingtail Hozen |q 29558/1 |goto 53.90,80.82
step
label "Free_Prisoners"
Kill Slingtail enemies around this area
collect Bamboo Key##74260+ |n
click Hozen Cage##209586+
|tip They look like dark wooden cages on the ground around this area.
Free #6# Prisoners |q 29559/1 |goto 53.90,80.82
step
label "Collect_Ancient_Hozen_Skulls"
click Hozen Skull##209595+
|tip They look like white skulls on the ground around this area.
collect 8 Ancient Hozen Skull##74033 |q 29560/1 |goto 53.90,80.82
step
talk Bold Karasshi##55196
turnin The Path of War##29558 |goto 54.18,82.41
turnin Freeing Our Brothers##29559 |goto 54.18,82.41
turnin Ancient Power##29560 |goto 54.18,82.41
accept Kung Din##29759 |goto 54.18,82.41
step
kill Kung Din##59037
|tip He walks around this small area.
collect Slingtail Key##79753 |q 29759/1 |goto 54.64,80.08
step
talk Bold Karasshi##55196
turnin Kung Din##29759 |goto 54.18,82.41
accept Jailbreak##29562 |goto 54.18,82.41
step
kill 10 Slingtail Fishripper##55195 |q 29562/1 |goto 55.78,80.61
step
talk Ut-Nam##56737
fpath Pearlfin Village |goto 57.95,82.51
step
talk Bold Karasshi##56222
turnin Jailbreak##29562 |goto 58.97,81.69
step
Watch the dialogue
talk Rell Nightwind##66949
accept The Pearlfin Situation##29883 |goto 58.93,81.93
accept Road Rations##29885 |goto 58.93,81.93
step
talk Pearlkeeper Fujin##59058
Tell him _"Please allow us a chance to prove our friendship. We wish you no harm."_
Speak to Pearlkeeper Fujin |q 29883/1 |goto 58.76,81.28
step
talk Elder Lusshan##54960
Tell him _"I come from the Alliance. We wish to be allies, not enemies."_
Speak to Elder Lusshan |q 29883/4 |goto 58.04,80.56
step
talk Ot-Temmdo##56693
Ask him _"What are you doing?"_
Speak to Watersmith Ot-Temmdo |q 29883/2 |goto 59.91,83.92
step
talk Instructor Sharpfin##56690
Tell him _"My friends and I come with peaceful intentions."_
Speak to Instructor Sharpfin |q 29883/3 |goto 58.79,84.58
step
kill Pearly Tortoise##59084+
|tip Underwater around this area.
collect 6 Tortoise Flank##73368 |q 29885/1 |goto 59.86,80.84
step
talk Rell Nightwind##66949
turnin The Pearlfin Situation##29883 |goto 58.93,81.93
turnin Road Rations##29885 |goto 58.93,81.93
step
talk Pearlkeeper Fujin##59058
accept The Elder's Instruments##29887 |goto 58.76,81.28
step
talk Bold Karasshi##56222
accept Family Heirlooms##29762 |goto 58.97,81.69
step
Enter the building |goto 59.49,83.22 < 7 |walk
talk Cheerful Jessu##61599
|tip Inside the building.
home Pearlfin Village |goto 59.61,83.21
stickystart "Collect_Ceremonial_Robes"
stickystart "Collect_Jade_Crown"
stickystart "Collect_Rosewood_Beads"
stickystart "Collect_Glassfin_Heirlooms"
step
Leave the building |goto 59.47,83.25 < 3 |walk
kill Slingtail Stickypaw##55110+
collect Waterspeaker's Staff##79807 |q 29887/1 |goto 66.70,87.25
step
label "Collect_Ceremonial_Robes"
kill Slingtail Stickypaw##55110+
collect Ceremonial Robes##25510 |q 29887/2 |goto 66.70,87.25
step
label "Collect_Jade_Crown"
kill Slingtail Stickypaw##55110+
collect Jade Crown##79809 |q 29887/3 |goto 66.70,87.25
step
label "Collect_Rosewood_Beads"
kill Slingtail Stickypaw##55110+
collect Rosewood Beads##79810 |q 29887/4 |goto 66.70,87.25
step
label "Collect_Glassfin_Heirlooms"
clicknpc Pearlfin Villager##56233+
|tip They look like dead fish men on the ground around this area.
collect 8 Glassfin Heirloom##79811 |q 29762/1 |goto 66.70,87.25
step
Leave the building |goto 59.47,83.25 < 3 |walk
talk Bold Karasshi##56222
turnin Family Heirlooms##29762 |goto 58.97,81.69
step
talk Pearlkeeper Fujin##59058
turnin The Elder's Instruments##29887 |goto 58.76,81.28
accept Spirits of the Water##29894 |goto 58.76,81.28
step
talk Elder Lusshan##54960
Tell him _"I have brought the items for the ceremony."_
Speak to Elder Lusshan |q 29894/1 |goto 58.58,82.89
step
Watch the dialogue
Witness the Waterspeaking Ceremony |q 29894/2 |goto 58.58,82.89
step
talk Bold Karasshi##56222
turnin Spirits of the Water##29894 |goto 58.97,81.70
step
talk Rell Nightwind##66949
accept SI:7 Report: Lost in the Woods##29733 |goto 58.98,81.82
step
Control Rell Nightwind |invehicle |goto 58.98,81.82 |q 29733
step
Watch the dialogue
talk Amber Kearnen##55343
Tell her _"You did well, Agent Kearnen. Now save your energy... we'll fend them off."_
Kill the enemies that attack in wave
|tip Use the abilities on your action bar.
Listen to Rell's Report |q 29733/1 |goto 49.87,70.76
step
Watch the dialogue
Return to Pearlfin Village |outvehicle |q 29733
step
talk Rell Nightwind##55333
turnin SI:7 Report: Lost in the Woods##29733 |goto 58.98,81.82
step
talk Sully 'The Pickle' McLeary##55282
|tip He walks around this small area.
accept SI:7 Report: Fire From the Sky##29725 |goto 58.86,81.80
step
Control Sully 'The Pickle' McLeary |invehicle |goto 58.86,81.80 |q 29725
step
Watch the dialogue
Kill the enemies that attack
|tip Use the ability on your action bar.
Scout the Southeastern Shrine |q 29725/1 |goto 50.43,62.08
step
Follow the path |goto 50.09,61.56 < 7 |walk
Continue following the path |goto 49.66,61.24 < 7 |walk
Continue following the path |goto 48.70,59.51 < 7 |walk
Kill the enemies that attack
|tip Use the ability on your action bar.
Scout the Northern Shrine |q 29725/3 |goto 47.87,58.53
step
Follow the path |goto 47.02,59.78 < 7 |walk
Kill the enemies that attack
|tip Use the ability on your action bar.
Scout the Southwestern Shrine |q 29725/2 |goto 46.35,61.79
step
Follow the path |goto 47.36,62.54 < 7 |walk
Cross the bridge |goto 47.69,63.12 < 7 |walk
Follow the path |goto 48.59,63.51 < 10 |walk
Follow the path down |goto 49.57,64.73 < 10 |walk
Follow the path |goto 50.24,65.00 < 7 |walk
Continue following the path |goto 50.65,64.71 < 7 |walk
Kill the enemies that attack
|tip Use the ability on your action bar.
Return to Camp |q 29725/4 |goto 50.92,63.12
step
Watch the dialogue
Return to Pearlfin Village |outvehicle |q 29725
step
talk Sully 'The Pickle' McLeary##55282
|tip He walks around this small area.
turnin SI:7 Report: Fire From the Sky##29725 |goto 58.86,81.80
step
talk Little Lu##55284
accept SI:7 Report: Hostile Natives##29726 |goto 59.07,81.89
step
Control Little Lu |invehicle |goto 59.07,81.89 |q 29726
step
Watch the dialogue
click STAY OUT - NO VISITORS##209615
Inspect the Sign |q 29726/1 |goto 38.31,45.40
step
clicknpc Lifelike Jade Statue##55378
Inspect the Lifelike Statue |q 29726/2 |goto 38.86,45.92
step
clicknpc Suspicious Jade Statue##55430
Inspect the Suspicious Jade Statue |q 29726/3 |goto 38.95,46.36
step
Watch the dialogue
talk Widow Greenpaw##55381
Ask her _"Can you help us? Our friend is injured."_
Speak with Widow Greenpaw |q 29726/4 |goto 39.24,46.21
step
Watch the dialogue
Return to Pearlfin Village |outvehicle |q 29726
step
talk Little Lu##55284
turnin SI:7 Report: Hostile Natives##29726 |goto 59.07,81.89
step
talk Amber Kearnen##55283
accept SI:7 Report: Take No Prisoners##29727 |goto 58.93,81.93
step
Control Amber Kearnen |invehicle |goto 58.93,81.93 |q 29727
step
Follow the path up |goto 29.17,54.38 < 7 |walk
Continue up the path |goto 28.90,54.57 < 7 |walk
Watch the dialogue
click Sniper Rifle##209621 |goto 28.58,54.46
Control the Sniper Rifle |goto 26.95,50.60 < 5 |noway |c |q 29727
step
Watch the dialogue
Kill enemies around this area
|tip Right-click them.
|tip You will see a yellow crosshair icon on them.
|tip The screen will move on it's own.
Help Sully Move Ahead |goto 26.73,50.13 < 3 |noway |c |q 29727
step
Watch the dialogue
Kill enemies around this area
|tip Right-click them.
|tip You will see a yellow crosshair icon on them.
|tip Yellow arrows will appear above their heads.
|tip The screen will move on it's own.
Help Sully Move Ahead |goto 26.89,50.26 < 3 |noway |c |q 29727
step
Watch the dialogue
click Sully's Bomb Barrel##209633+
|tip The look like wooden barrels that Sully "The Pickle" McLeary places on the ground around this area.
|tip There are 3 of them.
|tip You will see a yellow crosshair icon on them.
|tip Yellow arrows will appear above them.
|tip The screen will move on it's own.
Help Sully Move Ahead |goto 27.64,51.14 < 3 |noway |c |q 29727
step
Watch the dialogue
Kill enemies around this area
|tip Right-click them.
|tip You will see a yellow crosshair icon on them.
|tip Yellow arrows will appear above their heads.
|tip The screen will move on it's own.
Help Sully Move Ahead |goto 27.64,51.14 > 3 |noway |c |q 29727
step
Watch the dialogue
Kill the enemies that attack in waves
|tip Protect Sully "The Pickle" McLeary.
|tip Right-click them.
|tip You will see a yellow crosshair icon on them.
|tip The screen will move on it's own.
Help Sully Move Ahead |goto 28.32,51.01 < 3 |noway |c |q 29727
step
Watch the dialogue
Kill the enemies that attack in waves
|tip Protect Sully "The Pickle" McLeary.
kill Hellscream's Vanguard##66634+
|tip Right-click them.
|tip You will see a yellow crosshair icon on them.
|tip Yellow arrows will appear above their heads.
|tip The screen will move on it's own.
Watch the dialogue
Guide Sully Through the Hozen Camp |q 29727/1
step
Watch the dialogue
Return to Pearlfin Village |goto 58.93,81.86 < 5 |noway |c |q 29727
step
talk Amber Kearnen##55283
turnin SI:7 Report: Take No Prisoners##29727 |goto 58.93,81.93
step
talk Admiral Taylor##60970
accept A Perfect Match##29903 |goto 58.87,81.68
step
talk Bold Karasshi##56222
accept The Ancient Master##29888 |goto 58.97,81.69
step
talk Pearlfin Aqualyte##56592+
|tip They will appear as yellow dots on your minimap.
|tip Look at the weapon they are holding to figure out what weapon to give them.
Tell them _"You might need a shield."_
|tip Choose this if they have a single sword.
Tell them _"Take this book of healing prayers."_
|tip Choose this is they have a red and silver staff.
Tell them _"This spellcaster's staff is for you."_
|tip Choose this if they have a blue and gold staff.
Ask them _"Will these daggers help?"_
|tip Choose this if they have 2 long daggers with red handles.
Equip #9# Pearlfin Aqualytes |q 29903/1 |goto 59.17,83.98
step
talk Admiral Taylor##60970
turnin A Perfect Match##29903 |goto 58.87,81.67
accept Bigger Fish to Fry##29904 |goto 58.87,81.67
step
Kill enemies around this area
Slay #24# Bamboo Wilds Wildlife |q 29904/1 |goto 61.0,74.0
step
Leave the building |goto 59.47,83.25 < 3 |walk
talk Admiral Taylor##60970
turnin Bigger Fish to Fry##29904 |goto 58.87,81.67
accept Let Them Burn##29905 |goto 58.87,81.67
accept Carp Diem##29906 |goto 58.87,81.67
stickystart "Kill_Slingtail_Recruits"
step
kill Chief Gukgut##54868 |q 29906/1 |goto 54.69,80.06
|tip Run away from him when he starts casting "Monkey Tantrum".
step
label "Kill_Slingtail_Recruits"
kill 15 Slingtail Recruit##61760 |q 29905/1 |goto 54.37,81.67
step
talk Elder Lusshan##54960
turnin Let Them Burn##29905 |goto 58.90,81.48
turnin Carp Diem##29906 |goto 58.90,81.48
step
click Mouthwatering Brew##209847
turnin The Ancient Master##29888 |goto 53.71,91.51
accept Borrowed Brew##29889 |goto 53.71,91.51
step
click Mouthwatering Brew##209847
Watch the dialogue
Taste the Mouthwatering Brew |q 29889/1 |goto 53.70,91.49
step
talk Lorewalker Cho##54961
turnin Borrowed Brew##29889 |goto 53.66,91.41
accept A Visit with Lorewalker Cho##31130 |goto 53.66,91.41
step
Watch the dialogue
click Shapeless Tree
Trim the Tree |q 31130/1 |goto 53.73,90.98
step
Watch the dialogue
click Cho's "Art"##211661
|tip Choose whichever dialogue option you like, it doesn't matter.
Paint the Wall |q 31130/2 |goto 54.08,90.67
step
Watch the dialogue
click Bird Feed
Feed the Birds |q 31130/3 |goto 54.03,91.34
step
talk Lorewalker Cho##61218
turnin A Visit with Lorewalker Cho##31130 |goto 54.02,91.19
accept Potency##29891 |goto 54.02,91.19
accept Body##29892 |goto 54.02,91.19
accept Hue##29893 |goto 54.02,91.19
stickystart "Collect_Pristine_Crocolisk_Eyes"
stickystart "Kill_Mist_Creepers"
stickystart "Kill_Mist_Horror"
step
kill Glittering Amberfly##54559+
use the Delicate Shearing Knife##76128
|tip Use it on their corpses.
collect 8 Amberfly Wing##76115 |q 29893/1 |goto 58.11,90.01
step
label "Collect_Pristine_Crocolisk_Eyes"
kill Bog Crocolisk##54558+
collect 5 Pristine Crocolisk Eye##76107 |q 29892/1 |goto 58.11,90.01
step
label "Kill_Mist_Creepers"
kill 8 Mist Creeper##56304 |q 29891/1 |goto 58.11,90.01
step
label "Kill_Mist_Horror"
kill Mist Horror##56310
|tip It appears after you kill 8 Mist Creepers.
collect Mist Horror Heart##76129 |q 29891/2 |goto 58.11,90.01
step
talk Lorewalker Cho##56287
turnin Potency##29891 |goto 53.78,90.63
turnin Body##29892 |goto 53.78,90.63
turnin Hue##29893 |goto 53.78,90.63
step
Watch the dialogue
talk Lorewalker Cho##56287
accept Finding Your Center##29890 |goto 53.78,90.63
step
Watch the dialogue
click Potent Dream Brew##213754
Begin Meditating |invehicle |goto 54.68,92.05 |q 29890
step
Meditate at the Pagoda |q 29890/1 |goto 54.57,91.88
|tip Try to keep the marker in the middle of the bar at the bottom of your screen.
|tip Use the abilities on your action bar.
step
Leave the building |goto 59.46,83.26 < 3 |walk
talk Anduin Wrynn##56434
turnin Finding Your Center##29890 |goto 65.91,79.27
accept Sacred Waters##29898 |goto 65.91,79.27
step
talk Ren Whitepaw##56432
accept Rest in Peace##29899 |goto 65.98,79.28
step
talk Lina Whitepaw##56433
accept The Vale of Eternal Blossoms##29900 |goto 65.98,79.38
stickystart "Kill_Tortured_Spirits"
step
Enter the cave |goto 66.24,82.16 < 7 |walk
click Restorative Body##209885
|tip Inside the cave.
Collect the Waters of Restorative Body |q 29898/1 |goto 66.84,82.08
step
Follow the path up |goto 66.75,82.64 < 5 |walk
Follow the path |goto 66.94,82.95 < 5 |walk
Run up the ramp |goto 67.08,82.51 < 5 |walk
Follow the path |goto 67.08,82.12 < 5 |walk
click Restorative Mind##209888
|tip Inside the cave.
Collect the Waters of Restorative Mind |q 29898/2 |goto 67.27,81.61
step
Run up the ramp |goto 67.58,81.69 < 5 |walk
Follow the path |goto 67.74,81.71 < 5 |walk
click Restorative Spirit##209889
|tip Inside the cave.
Collect the Waters of Restorative Spirit |q 29898/3 |goto 68.04,81.86
step
Follow the path down |goto 67.72,81.71 < 5 |walk
Follow the path |goto 67.54,81.68 < 5 |walk
Run up the ramp |goto 67.18,81.30 < 5 |walk
Follow the path |goto 67.09,80.95 < 5 |walk
kill Shade of Ling Heartfist##56441 |q 29900/1 |goto 66.73,80.31
|tip He walks around this small area inside the cave.
step
click Scroll of Sorrow##209582
|tip Inside the cave.
collect Song of the Vale##79875 |q 29900/2 |goto 66.48,80.53
step
click Restorative Heart##209890
|tip Inside the cave.
Collect the Waters of Restorative Heart |q 29898/4 |goto 66.43,80.00
step
Follow the path down |goto 66.66,80.83 < 5 |walk
Follow the path |goto 66.67,81.89 < 5 |walk
Follow the path |goto 66.51,82.13 < 5 |walk
Leave the cave |goto 66.20,82.16 < 7 |c |q 29898
step
label "Kill_Tortured_Spirits"
kill 6 Tortured Spirit##56444 |q 29899/1 |goto 65.86,82.12
step
talk Lina Whitepaw##56433
turnin Sacred Waters##29898 |goto 65.98,79.38
step
talk Ren Whitepaw##56432
turnin Rest in Peace##29899 |goto 65.98,79.28
turnin The Vale of Eternal Blossoms##29900 |goto 65.98,79.28
step
accept Anduin's Decision##29901 |goto 65.98,79.28
|tip You will automatically accept this quest.
step
talk Anduin Wrynn##56434
Tell him _"It is time to go home, Prince Anduin."_
Speak to Anduin |q 29901/1 |goto 65.91,79.27
step
talk Admiral Taylor##60970
turnin Anduin's Decision##29901 |goto 58.87,81.68
step
talk Elder Lusshan##54960
accept In Search of Wisdom##29922 |goto 58.90,81.48
step
talk Ut-Nam##56737
Tell him _"I would like to travel to Dawn's Blossom."_
Speak to Kitemaster Ot-Nam |q 29922/1 |goto 57.95,82.52
step
Travel to Dawn's Blossom |goto 47.03,46.19 < 10 |c |q 29922 |notravel
step
talk Keg Runner Lee##59186
fpath Dawn's Blossom |goto 47.05,46.24
step
talk Lorewalker Cho##63577
turnin In Search of Wisdom##29922 |goto 46.82,46.14
step
Watch the dialogue
talk Toya##56348
accept Welcome to Dawn's Blossom##31230 |goto 47.15,46.17
step
talk Kai Wanderbrew##59173
Speak with Kai Wanderbrew |q 31230/3 |goto 46.72,45.81
step
Enter the building |goto 46.10,43.91 < 7 |walk
talk Peiji Goldendraft##55809
|tip Inside the building.
Speak with Peiji Goldendraft |q 31230/2 |goto 45.72,43.70
step
talk Peiji Goldendraft##55809
|tip Inside the building.
accept Temple of the White Tiger##31392 |goto 45.72,43.70
step
talk Messenger Grummle##63778
|tip Inside the building.
accept The Road to Kun-Lai##31254 |goto 45.72,43.80
step
talk Bolo##56774
|tip Inside the building.
accept His Name Was... Stormstout##32018 |goto 45.78,44.00
step
talk Lin Windfur##55233
|tip Upstairs inside the building.
home The Drunken Hozen |goto 45.62,43.94
step
Leave the building |goto 46.11,43.92 < 5 |walk
Enter the building |goto 48.13,44.80 < 7 |walk
talk Master Windfur##59160
|tip Inside the building.
Speak with Master Windfur |q 31230/1 |goto 48.49,44.49
step
Leave the building |goto 48.12,44.81 < 5 |walk
talk Old Man Misteye##59383
accept An Air of Worry##29576 |goto 48.32,46.06
step
talk Apprentice Yufi##54998
accept Tian Monastery##29617 |goto 49.65,45.83
step
talk Toya##56348
turnin Welcome to Dawn's Blossom##31230 |goto 47.16,46.17
step
talk An Windfur##55234
|tip She walks around this area.
accept The Double Hozu Dare##29716 |goto 46.49,45.75
step
talk Tzu the Ironbelly##56062
accept The Silkwood Road##29865 |goto 46.46,45.80
step
talk Lo Wanderbrew##59178
accept The Threads that Stick##29866 |goto 46.63,45.31
stickystart "Collect_Pristine_Silk_Strands"
step
kill 8 Silkwood Stalker##56070 |q 29865/1 |goto 43.76,49.30
step
label "Collect_Pristine_Silk_Strands"
click Silk Patch##209951+
|tip They look like white eggs on the ground around this area.
collect 7 Pristine Silk Strand##75023 |q 29866/1 |goto 43.76,49.30
step
talk An Windfur##55274
|tip She appears next to you.
accept Down Kitty!##29717 |goto 37.83,45.03
stickystart "Kill_Jade_Guardians"
step
clicknpc Scared Pandaren Cub##55267+
|tip They look like panda children clinging to trees low to the ground around this area.
Tell them _"It's safe now. You can come down."_
Rescue #6# Cubs |q 29716/1 |goto 38.12,45.49
step
label "Kill_Jade_Guardians"
kill 8 Jade Guardian##55236 |q 29717/1 |goto 38.12,45.49
step
_Next to you:_
talk An Windfur##55234
turnin The Double Hozu Dare##29716
turnin Down Kitty!##29717
accept The Jade Witch##29723
step
Enter the building |goto 39.30,46.22 < 7 |walk
talk Widow Greenpaw##55368
|tip If someone else already talked to her, she will be behind the building.
Ask her _"Where is Shin?"_
Watch the dialogue
|tip Follow Widow Greenpaw as she walks.
kill Widow Greenpaw##55368
Confront the Jade Witch |q 29723/1 |goto 39.34,46.22
step
Leave the building |goto 46.12,43.92 < 5 |walk
talk Tzu the Ironbelly##56062
turnin The Silkwood Road##29865 |goto 46.46,45.80
step
talk An Windfur##55413
|tip She walks around this area.
turnin The Jade Witch##29723 |goto 46.49,45.75
step
talk Toya##56348
accept All We Can Spare##29925 |goto 47.16,46.17
step
talk Lo Wanderbrew##59178
turnin The Threads that Stick##29866 |goto 46.63,45.31
step
talk Kai Wanderbrew##59173
|tip He walks around this area.
accept Find the Boy##29993 |goto 47.05,46.01
step
talk Inkmaster Wei##56065
|tip He walks around this area.
turnin Find the Boy##29993 |goto 55.00,44.87
accept Shrine of the Dawn##29995 |goto 55.00,44.87
step
talk Inkmaster Glenzu##56064
accept The Perfect Color##29881 |goto 54.88,45.31
step
talk Inkmaster Jo Po##56063
accept Quill of Stingers##29882 |goto 55.40,45.28
step
talk Injar'i Lakebloom##59732
fpath The Arboretum |goto 57.01,44.03
step
talk Elder Anli##58564
accept Wild Things##30134 |goto 57.64,44.95
stickystart "Collect_Wasp_Stingers"
step
click Freshly Fallen Petals##209836+
|tip They look like small red flowers on the ground around this area.
collect 8 Freshly Fallen Petals##75219 |q 29881/1 |goto 54.10,45.35
step
label "Collect_Wasp_Stingers"
kill Orchard Wasp##56201+
collect 6 Wasp Stinger##75221 |q 29882/1 |goto 53.6,44.5
step
talk Inkmaster Glenzu##56064
turnin The Perfect Color##29881 |goto 54.88,45.31
step
talk Inkmaster Jo Po##56063
turnin Quill of Stingers##29882 |goto 55.27,45.23
step
talk Syra Goldendraft##56708
turnin Shrine of the Dawn##29995 |goto 52.57,38.12
accept Getting Permission##29920 |goto 52.57,38.12
step
talk Pandriarch Bramblestaff##56209
Choose _"Challenge the Pandriarch."_
kill Pandriarch Bramblestaff##56209
|tip He will eventually surrender.
Defeat Pandriarch Bramblestaff |q 29920/2 |goto 54.09,38.46
step
talk Pandriarch Goldendraft##56210
Choose _"Challenge the Pandriarch."_
kill Pandriarch Goldendraft##56210
|tip He will eventually surrender.
Defeat Pandriarch Goldendraft |q 29920/3 |goto 53.59,36.73
step
talk Pandriarch Windfur##56206
Choose _"Challenge the Pandriarch."_
kill Pandriarch Windfur##56206
|tip He will eventually surrender.
Defeat Pandriarch Windfur |q 29920/1 |goto 52.54,35.57
step
talk Lo Wanderbrew##55788
turnin Getting Permission##29920 |goto 52.59,38.12
step
talk Lorewalker Cho##56345
turnin All We Can Spare##29925 |goto 50.91,27.08
step
talk Foreman Mann##56346
accept I Have No Jade And I Must Scream##29928 |goto 50.94,27.03
step
talk Supplier Towsa##59735
fpath Emperor's Omen |goto 50.82,26.80
step
kill Puckish Sprite##56349+
click Chunk of Jade##209863+
|tip They look like green rocks that appear on the ground after you kill Puckish Sprites.
collect 15 Chunk of Jade##76209 |q 29928/1 |goto 48.33,31.10
step
talk Foreman Mann##56346
turnin I Have No Jade And I Must Scream##29928 |goto 50.94,27.03
step
Watch the dialogue
talk Foreman Mann##56346
accept Calamity Jade##29926 |goto 50.94,27.03
accept Mann's Man##29927 |goto 50.94,27.03
step
clicknpc Outcast Sprite##55438
accept The Sprites' Plight##29745 |goto 48.67,24.93
stickystart "Kill_Stonebound_Destroyers"
step
Find the Source of the Simulacra |q 29745/2 |goto 48.61,20.26
step
label "Kill_Stonebound_Destroyers"
kill 10 Stonebound Destroyer##55288 |q 29745/1 |goto 48.80,21.60
step
Click the Complete Quest Box:
turnin The Sprites' Plight##29745
accept Break the Cycle##29747
step
click Shattered Destroyer##214871
accept Simulacrumble##29748 |goto 48.57,20.62
stickystart "Kick_Vacant_Destroyers"
step
kill 8 Shan'ze Spiritbinder##55279 |q 29747/1 |goto 48.07,17.12
step
label "Kick_Vacant_Destroyers"
click Vacant Destroyer##214873+
|tip They look like stone orc-like statues holding weapons around this area.
Kick #6# Vacant Destroyers |q 29748/1 |goto 48.07,17.12
step
Click the Complete Quest Box:
turnin Simulacrumble##29748
step
Click the Complete Quest Box:
turnin Break the Cycle##29747
accept An Urgent Plea##29749
step
click Staff of Pei-Zhi##209662
collect Staff of Pei-Zhi##74258 |q 29749/1 |goto 44.23,14.91
step
kill Ancient Spirit##55489+
|tip Try to kill them before they reach the swirling purple orb.
|tip Kill them until the bar at the bottom of your screen fills up.
|tip When the bar reaches about half full, regular enemies will attack you.
Interrupt the Ritual of Spiritbinding |q 29749/2 |goto 44.36,15.35
step
Watch the dialogue
talk Pei-Zhi##55614
turnin An Urgent Plea##29749 |goto 44.23,15.03
accept Ritual Artifacts##29751 |goto 44.23,15.03
accept Vessels of the Spirit##29750 |goto 44.23,15.03
accept The Wayward Dead##29752 |goto 44.23,15.03
stickystart "Collect_Spirit_Bottles"
stickystart "Recover_Wayward_Ancestors"
step
click Jade Cong##209699
collect Jade Cong##74762 |q 29751/1 |goto 42.68,15.76
step
click Pungent Ritual Candle##209701
collect Pungent Ritual Candle##74761 |q 29751/3 |goto 42.26,17.09
step
click Chipped Ritual Bowl##209700
collect Chipped Ritual Bowl##74760 |q 29751/2 |goto 41.62,14.32
step
label "Collect_Spirit_Bottles"
kill Shan'ze Spiritclaw##55291+
collect 8 Spirit Bottle##74763 |q 29750/1 |goto 42.07,15.74
step
label "Recover_Wayward_Ancestors"
use the Staff of Pei-Zhi##74771
|tip Use it on Wayward Ancestors around this area.
Recover #10# Wayward Ancestors |q 29752/1 |goto 42.07,15.74
step
talk Pei-Zhi##55614
turnin Ritual Artifacts##29751 |goto 44.23,15.03
turnin Vessels of the Spirit##29750 |goto 44.23,15.03
turnin The Wayward Dead##29752 |goto 44.23,15.03
accept Back to Nature##29753 |goto 44.23,15.03
accept A Humble Offering##29756 |goto 44.23,15.03
stickystart "Collect_Tidemist_Caps"
step
use the Spirit Bottles##74808
|tip You can use it repeatedly in the same spot.
kill Raging Beast Spirit##55790
|tip They appear after you use the Spirit Bottles.
|tip Some of them will be friendly and run off.
Return #8# Beast Spirits to Nature |q 29753/1 |goto 38.41,10.90
step
label "Collect_Tidemist_Caps"
click Tidemist Cap##209825+
|tip They look like clusters of white mushrooms with long stems sprouting out of the ground and sides of trees around this area.
collect 10 Tidemist Cap##75214 |q 29756/1 |goto 39.76,11.48
step
talk Pei-Zhi##55614
turnin Back to Nature##29753 |goto 44.23,15.03
turnin A Humble Offering##29756 |goto 44.23,15.03
accept To Bridge Earth and Sky##29754 |goto 44.23,15.03
step
Watch the dialogue
Kill the enemies that attack in waves
|tip Protect Pei-Zhi until the bar at the bottom of your screen fills up.
Protect Pei-Zhi During His Ritual |q 29754/1 |goto 43.7,12.9
step
Click the Complete Quest Box:
turnin To Bridge Earth and Sky##29754
accept Pei-Back##29755
step
kill Stonebound Colossus##56595
|tip He walks around this area.
|tip When your spirit is ripped from your body, click your body at the location you were at to return to your body.
|tip He will regenerate health when you're out-of-body.
kill Shan Jitong##56596 |q 29755/1 |goto 42.52,10.45
|tip He appears once the Stonebound Colossus is at low health.
step
talk Pei-Zhi##59492
turnin Pei-Back##29755 |goto 43.84,12.52
step
talk Studious Chu##59736
fpath Tian Monastery |goto 43.58,24.53
step
talk Lin Tenderpaw##54913
turnin Tian Monastery##29617 |goto 44.99,24.95
accept The High Elder##29618 |goto 44.99,24.95
step
talk High Elder Cloudfall##54914
|tip Upstairs on the balcony outside the building.
turnin The High Elder##29618 |goto 45.22,25.07
step
talk Lin Tenderpaw##54913
accept A Courteous Guest##29619 |goto 44.99,24.95
step
Enter the building |goto 41.61,23.33 < 7 |walk
talk Bolo the Elder##62867
|tip Inside the building.
home Paur's Pub |goto 41.72,23.16
step
Leave the building |goto 41.62,23.34 < 5 |walk
kill Greenwood Thief##54930+
|tip They will only drop them if they are carrying oranges.
click Ripe Orange##209436+
|tip They look like small orange balls on the ground around this area.
collect 8 Ripe Orange##72589 |q 29619/1 |goto 45.73,27.35
step
Enter the mine |goto 46.01,29.04 < 7 |walk
Follow the path down |goto The Jade Forest/6 70.00,21.32 < 7 |walk
Locate Hao Mann |q 29927/1 |goto The Jade Forest/6 60.96,36.74
|tip Inside the mine.
step
talk Hao Mann##56347
|tip Inside the mine.
turnin Mann's Man##29927 |goto 60.96,36.74
accept Trapped!##29929 |goto 60.96,36.74
stickystart "Kill_Greenstone_Nibblers"
stickystart "Free_Greenstone_Miners"
step
Follow the path |goto 56.35,45.34 < 7 |walk
Run down the stairs |goto 51.24,40.45 < 5 |walk
Run down the stairs |goto 41.46,34.55 < 5 |walk |notravel
Run down the stairs |goto The Jade Forest/7 50.63,54.29 < 5 |walk |notravel
kill 6 Greenstone Gorger##56404 |q 29926/2 |goto The Jade Forest/7 53.54,62.47
|tip Inside the mine.
step
label "Kill_Greenstone_Nibblers"
kill 12 Greenstone Nibbler##56401 |q 29926/1 |goto 53.54,62.47
|tip Inside the mine.
step
label "Free_Greenstone_Miners"
talk Greenstone Miner##56464+
|tip They look like pandas inside piles of big rocks on the ground around this area inside the mine.
Free #8# Greenstone Miners |q 29929/1 |goto 53.54,62.47
step
Run up the stairs |goto 52.86,56.73 < 5 |walk
Run up the stairs |goto 50.41,52.58 < 5 |walk
Run up the stairs |goto The Jade Forest/6 43.71,33.04 < 5 |notravel
Follow the path |goto The Jade Forest/6 52.87,41.80 < 5 |walk |notravel
Follow the path up |goto The Jade Forest/6 62.98,37.76 < 7 |walk
Continue up the path |goto The Jade Forest/6 71.46,21.32 < 7 |walk
Leave the mine |goto The Jade Forest/0 46.10,29.18 < 7 |walk
talk Hao Mann##56467
turnin Trapped!##29929 |goto The Jade Forest/0 46.30,29.39
accept What's Mined Is Yours##29930 |goto The Jade Forest/0 46.30,29.39
step
clicknpc Jade Cart##56527
Ride in the Jade Cart |invehicle |goto 46.27,29.48 |q 29930
step
Watch the dialogue
Kill the enemies that attack in waves
Deliver the Jade |q 29930/1 |goto 51.21,26.72 |notravel
step
talk Foreman Mann##56346
turnin Calamity Jade##29926 |goto 50.94,27.03
turnin What's Mined Is Yours##29930 |goto 50.94,27.03
step
Watch the dialogue
talk Foreman Mann##56346
accept The Serpent's Heart##29931 |goto 50.94,27.03
step
talk Lin Tenderpaw##54913
turnin A Courteous Guest##29619 |goto 44.99,24.95
accept The Great Banquet##29620 |goto 44.99,24.95
step
talk High Elder Cloudfall##54914
Tell him _"I'm ready to be introduced to the instructors, High Elder."_
Watch the dialogue
|tip Follow High Elder Cloudfall as he walks.
Speak with High Elder Cloudfall |q 29620/1 |goto 42.74,23.17
step
talk High Elder Cloudfall##54914
turnin The Great Banquet##29620 |goto 42.74,23.17
step
Watch the dialogue
talk Xiao##54926
accept Your Training Starts Now##29622 |goto 43.13,23.63
accept Groundskeeper Wu##29626 |goto 43.13,23.63
step
talk Master Stone Fist##54922
accept Becoming Battle-Ready##29632 |goto 43.23,24.75
step
talk Tian Pupil##54944+
Tell them _"Let's fight!"_
kill Tian Pupil##54944+
|tip They will eventually surrender.
Defeat #8# Monastic Pupils |q 29632/1 |goto 43.73,24.99
step
talk Master Stone Fist##54922
turnin Becoming Battle-Ready##29632 |goto 43.24,24.76
accept Zhi-Zhi, the Dextrous##29633 |goto 43.24,24.76
accept Husshun, the Wizened##29634 |goto 43.24,24.76
step
talk Zhi-Zhi##54924
Ask him _"Wanna fight?"_
kill Zhi-Zhi##54924
|tip He will eventually surrender.
Defeat Zhi-Zhi |q 29633/1 |goto 43.06,25.99
step
talk Husshun##54925
Tell him _"I challenge you to a fight, Husshun!"_
kill Husshun##54925
|tip He will eventually surrender.
Defeat Husshun |q 29634/1 |goto 44.56,24.05
step
talk Master Stone Fist##54922
turnin Zhi-Zhi, the Dextrous##29633 |goto 43.24,24.75
turnin Husshun, the Wizened##29634 |goto 43.24,24.75
accept Xiao, the Eater##29635 |goto 43.24,24.75
step
talk Xiao##54926
Tell him _"Put down your fork, and pick up your fists! I challenge you!"_
kill Xiao##54926
|tip He will eventually surrender.
Defeat Xiao |q 29635/1 |goto 43.13,23.63
step
talk Master Stone Fist##54922
turnin Xiao, the Eater##29635 |goto 43.24,24.75
accept A Test of Endurance##29636 |goto 43.24,24.75
step
talk Groundskeeper Wu##54915
turnin Groundskeeper Wu##29626 |goto 41.62,23.70
accept A Proper Weapon##29627 |goto 41.62,23.70
step
talk June Whiteblossom##54981
buy Black Walnut Extract##72954 |q 29627/2 |goto 41.39,24.15
step
talk Brewmaster Lei Kanglei##54982
buy 3 Triple-Bittered Ale##72979 |q 29627/3 |goto 41.77,24.61
step
click Rattan Switch##209464+
|tip They look like thin twigs with leaves at the top of them growing out of the ground around this area.
collect 6 Rattan Switch##72926 |q 29627/1 |goto 41.09,24.78
step
talk Groundskeeper Wu##54915
turnin A Proper Weapon##29627 |goto 41.62,23.70
accept A Strong Back##29628 |goto 41.62,23.70
accept A Steady Hand##29629 |goto 41.62,23.70
accept And a Heavy Fist##29630 |goto 41.62,23.70
step
talk Instructor Myang##54918
turnin A Test of Endurance##29636 |goto 38.97,24.04
accept The Rumpus##29637 |goto 38.97,24.04
step
use the Monastary Fireworks##73369
Kill the enemies that attack in waves
Survive the Melee |q 29637/1 |goto 38.97,23.27
step
talk Instructor Myang##54918
turnin The Rumpus##29637 |goto 38.97,24.04
step
talk Guard Shan Long##55094
accept Burning Bright##29631 |goto 38.01,23.80
stickystart "Kill_Waxwood_Hunters"
step
click Blushleaf Cluster+
|tip They look like small red plants on the ground around this area.
collect 80 Blushleaf Extract##73193 |q 29629/1 |goto 35.1,22.1
step
label "Kill_Waxwood_Hunters"
Kill Waxwood enemies around this area
Slay #6# Waxwood Hunters |q 29631/1
step
kill 10 Greenwood Trickster##54987 |q 29630/1 |goto 37.79,20.14
step
click Boiling Cauldron##209551
|tip Do not mount after clicking it, or you will lose the cauldron.
Obtain the Boiling Cauldron |q 29628/1 |goto 37.75,17.59
step
Follow the path up |goto 37.98,18.52 < 7 |walk
Follow the path |goto 37.75,19.50 < 7 |walk
Continue following the path |goto 37.68,20.78 < 7 |walk
Continue following the path |goto 36.59,22.74 < 7 |walk
Follow the path up |goto 37.42,23.29 < 7 |walk
talk Guard Shan Long##55094
|tip Do not mount, or you will lose the cauldron.
turnin Burning Bright##29631 |goto 38.0,23.8
step
Follow the path |goto 38.28,24.35 < 7 |walk
Follow the path |goto 39.07,24.90 < 7 |walk
Continue following the path |goto 39.80,23.96 < 7 |walk
Run up the stairs |goto 41.09,24.17 < 7 |walk
Run up the stairs |goto 41.19,23.63 < 7 |walk
Return the Boiling Cauldron |q 29628/2 |goto 41.61,23.69
|tip Do not mount, or you will lose the cauldron.
step
talk Groundskeeper Wu##54915
turnin A Strong Back##29628 |goto 41.61,23.69
turnin A Steady Hand##29629 |goto 41.61,23.69
turnin And a Heavy Fist##29630 |goto 41.61,23.69
step
talk Instructor Xann##54917
turnin Your Training Starts Now##29622 |goto 41.60,28.33
accept Perfection##29623 |goto 41.60,28.33
step
Run down the stairs |goto 41.82,28.07 < 7 |walk
Complete #12# Practice Strikes |q 29623/1 |goto 41.40,27.90
|tip Watch the Tian Instructor as he makes motions.
|tip Use the abilities on your action bar to mimic his motions.
step
Run up the stairs |goto 41.69,27.87 < 7 |walk
Follow the path |goto 41.85,28.13 < 7 |walk
talk Instructor Xann##54917
turnin Perfection##29623 |goto 41.60,28.33
accept Attention##29624 |goto 41.60,28.33
step
kill 2 Training Bag##55184 |q 29624/1 |goto 41.66,26.97
|tip You will see "LEFT!" and "RIGHT!" messages on your screen.
|tip Attack the bag on whichever side the message says.
step
talk Instructor Xann##54917
turnin Attention##29624 |goto 41.60,28.33
accept Flying Colors##29639 |goto 41.60,28.33
step
talk High Elder Cloudfall##54914
turnin Flying Colors##29639 |goto 42.74,23.17
step
talk Gingo Alebottom##59733
fpath Sri-La Village |goto 55.38,23.73
step
talk Instructor Tong##58225
turnin Wild Things##30134 |goto 65.33,31.65
accept Beating the Odds##30135 |goto 65.33,31.65
accept Empty Nests##30136 |goto 65.33,31.65
accept Egg Collection##30137 |goto 65.33,31.65
stickystart "Slay_Slitherscale_Sauroks"
step
use the Silken Rope##78947
|tip Use it on Windward Hatchlings around this area.
|tip Get 6 of them following you.
|tip You can fly without losing them.
Return #6# Windward Hatchlings to Their Nests |q 30136/1 |goto 64.60,31.26
Bring the Windward Hatchlings to [65.78,31.24]
step
label "Slay_Slitherscale_Sauroks"
kill Slitherscale Eggdrinker##63532
Slay #8# Slitherscale Sauroks |q 30135/1 |goto 64.60,31.26
step
talk Instructor Tong##58225
turnin Beating the Odds##30135 |goto 65.33,31.65
turnin Empty Nests##30136 |goto 65.33,31.65
step
click Serpent Egg##210240+
|tip They look like blue, orange, and green balls on the ground around this area.
collect 6 Serpent Egg##78959 |q 30137/1 |goto 68.03,27.62
step
talk Instructor Tong##58225
turnin Egg Collection##30137 |goto 65.33,31.65
accept Choosing the One##30138 |goto 65.33,31.65
step
talk Instructor Tong##58225
turnin Choosing the One##30138 |goto 65.33,31.65
accept The Rider's Journey##30139 |goto 65.33,31.65
step
talk Instructor Skythorn##58228
turnin The Rider's Journey##30139 |goto 57.56,45.10
accept It's A...##30142 |goto 57.56,45.10
step
Watch the dialogue
Witness the Egg Hatch |q 30142/1 |goto 57.45,45.14
step
talk Instructor Skythorn##58228
turnin It's A...##30142 |goto 57.56,45.10
step
talk Foreman Raike##59391
turnin The Serpent's Heart##29931 |goto 48.31,61.35
accept Love's Labor##30495 |goto 48.31,61.35
step
talk Historian Dinh##59395
Tell him _"I've got a new jade shipment for you."_
Complete the Delivery to Historian Dinh |q 30495/1 |goto 46.36,61.80
step
talk Surveyor Sawa##59401
Tell him _"I've got your jade right here."_
Complete the Delivery to Surveyor Sawa |q 30495/2 |goto 46.94,60.35
step
talk Kitemaster Shoku##59392
Tell him _"I've got a jade delivery for you."_
Complete the Delivery to Kitemaster Shoku |q 30495/3 |goto 48.17,60.02
step
talk Taskmaster Emi##59397
|tip On a platform at the top of the statue.
Ask her _"Did someone say they needed jade?"_
Complete the Delivery to Taskmaster Emi |q 30495/4 |goto 47.58,60.67
step
talk Foreman Raike##59391
turnin Love's Labor##30495 |goto 48.31,61.35
accept The Temple of the Jade Serpent##29932 |goto 48.31,61.35
step
talk Kitemaster Shoku##59392
Tell him _"Take me to the Temple of the Jade Serpent."_
Fly to the Temple of the Jade Serpent |goto 55.67,57.05 < 10 |c |q 29932 |notravel
step
talk Elder Sage Wind-Yi##57242
|tip She walks around this area.
Tell her _"I have a message for the Jade Serpent."_
Speak to Elder Sage Wind-Yi |q 29932/1 |goto 54.99,56.89
step
Watch the dialogue
talk Elder Sage Rain-Zhu##56782
turnin The Temple of the Jade Serpent##29932 |goto 58.13,58.66
accept The Scryer's Dilemma##29997 |goto 58.13,58.66
accept The Librarian's Quandary##29998 |goto 58.13,58.66
step
talk Fei##56784
accept The Rider's Bind##29999 |goto 58.03,59.01
accept Lighting Up the Sky##30005 |goto 58.03,59.01
stickystart "Launch_Fireworks"
step
clicknpc Playful Crimson Serpent##56852
|tip It walks around this small area.
Find the Playful Crimson Serpent |q 29999/2 |goto 58.18,61.39
stickystop "Launch_Fireworks"
step
Enter the building |goto 57.40,60.99 < 7 |walk
talk Lorewalker Stonestep##56786
|tip Inside the building.
turnin The Librarian's Quandary##29998 |goto 56.26,60.43
accept Moth-Ridden##30001 |goto 56.26,60.43
accept Pages of History##30002 |goto 56.26,60.43
stickystart "Squash_Bookworms"
stickystart "Kill_Dappled_Moths"
step
clicknpc Playful Gold Serpent##56850
|tip It walks around this small area inside the building.
Find the Playful Gold Serpent |q 29999/4 |goto 56.00,60.32
step
label "Squash_Bookworms"
click Infested Book##209594+
|tip They look like big green books on the ground around this area inside the building.
kill Bookworm##57237+
|tip You can right-click them repeatedly to kill them quickly.
Squash #12# Bookworms |q 30002/1 |goto 56.00,60.32
step
label "Kill_Dappled_Moths"
kill 8 Dappled Moth##57232 |q 30001/1 |goto 56.00,60.32
|tip Inside the building.
step
talk Lorewalker Stonestep##56786
|tip Inside the building.
turnin Moth-Ridden##30001 |goto 56.26,60.44
turnin Pages of History##30002 |goto 56.26,60.44
accept Everything In Its Place##30004 |goto 56.26,60.44
step
Follow the path |goto 55.78,60.06 < 5 |walk
Run up the stairs |goto 55.89,59.76 < 5 |walk
Cross the bridge |goto 56.69,60.24 < 5 |walk
Follow the path |goto 56.44,61.04 < 5 |walk
Follow the path |goto 55.59,60.57 < 5 |c |q 29999
step
Run down the stairs |goto 55.91,59.31 < 5 |walk
Follow the path |goto 56.32,59.31 < 5 |walk
Leave the building |goto 56.47,58.73 < 7 |walk
clicknpc Playful Emerald Serpent##56851
|tip It walks around this small area.
Find the Playful Emerald Serpent |q 29999/3 |goto 56.54,58.38
step
Enter the building |goto 56.78,57.29 < 7 |walk
Run down the stairs |goto 56.79,56.73 < 5 |walk
Follow the path |goto 56.43,56.45 < 5 |walk
Run down the stairs |goto 56.69,55.66 < 7 |walk
Run up the ramp |goto 57.22,55.72 < 7 |walk
Follow the path |goto 57.51,55.62 < 5 |walk
kill Water Fiend##56820+
|tip Inside the building.
collect Scryer's Staff##76725 |q 29997/1 |goto 57.46,55.98
step
talk Wise Mari##56787
|tip Inside the building.
turnin The Scryer's Dilemma##29997 |goto 57.57,56.03
accept A New Vision##30011 |goto 57.57,56.03
stickystart "Launch_Fireworks"
step
Run up the stairs |goto 58.03,56.25 < 7 |walk
Leave the building |goto 58.43,56.45 < 7 |walk
clicknpc Playful Azure Serpent##56853
|tip It walks around this small area.
Find the Playful Azure Serpent |q 29999/1 |goto 59.21,56.73
step
label "Launch_Fireworks"
click Firework Launcher##209672+
|tip They look like metal pots sitting on wooden pallets on the ground around this area.
Launch #8# Fireworks |q 30005/1 |goto 57.46,58.50
step
talk Elder Sage Rain-Zhu##56782
turnin A New Vision##30011 |goto 58.14,58.66
turnin Everything In Its Place##30004 |goto 58.14,58.66
step
talk Fei##56784
turnin The Rider's Bind##29999 |goto 58.03,59.01
turnin Lighting Up the Sky##30005 |goto 58.03,59.01
accept The Jade Serpent##30000 |goto 58.03,59.01
step
Watch the dialogue
Listen to the Jade Serpent |q 30000/1
step
talk Elder Sage Wind-Yi##57242
turnin The Jade Serpent##30000 |goto 55.84,57.08
step
accept Get Back Here!##30498
|tip You will automatically accept this quest.
step
talk Ginsa Arroweye##59727
fpath Jade Temple Grounds |goto 54.57,61.76
step
talk Ginsa Arroweye##59727 |goto 54.57,61.76
Tell her _"I could use a kite to Pearlfin Village."_
Travel to Pearlfin Village |goto 58.24,84.22 < 10 |q 30498
step
talk Sully 'The Pickle' McLeary##59550
accept An Unexpected Advantage##30565 |goto 58.55,82.30
step
talk Admiral Taylor##55122
turnin Get Back Here!##30498 |goto 58.07,80.65
accept Helping the Cause##30568 |goto 58.07,80.65
step
talk Pearlfin Recruit##59572
Tell them _"Let's see what you've got."_
kill Pearlfin Recruit##59572
|tip They will eventually surrender.
Challenge a Pearlfin Recruit |q 30568/1 |goto 59.34,84.18
step
clicknpc Wounded Pearlfin##59609+
|tip They look like dead fish men on the ground around this area.
Assist #3# Wounded Pearlfins |q 30568/3 |goto 60.33,87.22
stickystart "Collect_Rusty_Locking_Bolts"
step
kill Slingtail Ambusher##59554+
collect 4 Water-Damaged Gear##80176 |q 30565/1 |goto 63.23,77.34
step
label "Collect_Rusty_Locking_Bolts"
kill Slingtail Ambusher##59554+
collect 4 Rusty Locking Bolt##80177 |q 30565/2 |goto 63.23,77.34
step
talk Amber Kearnen##59563
Ask her _"What can I do to help?"_
kill Hozen Captive##59560
|tip It appears in the pit nearby.
Defeat the Captive Hozen |q 30568/2 |goto 54.81,79.75
step
talk Sully 'The Pickle' McLeary##59550
turnin An Unexpected Advantage##30565 |goto 58.55,82.30
step
talk Admiral Taylor##55122
turnin Helping the Cause##30568 |goto 58.07,80.65
step
talk Lorewalker Cho##59620
accept Last Piece of the Puzzle##31362 |goto 58.85,81.11
step
talk Mishi##64475 |goto 58.83,81.08
Tell him _"I am ready to leave."_
Fly to Serpent's Overlook |goto 44.65,67.24 < 10 |noway |c |q 31362
step
talk Sky Dancer Ji##64310
fpath Serpent's Overlook |goto 43.10,68.49
step
use the Cho Family Heirloom##80071
Watch the dialogue
Place the Heirloom at the Cho Family Shrine |q 31362/1 |goto 44.50,66.93
step
talk Lorewalker Cho##59411
turnin Last Piece of the Puzzle##31362 |goto 44.77,67.09
accept The Seal is Broken##31303 |goto 44.77,67.09
step
talk Mishi##64475
Tell him _"Let's do this, Mishi!"_
Fly with Mishi |invehicle |goto 44.77,67.04 |q 31303
step
Seal #12# Sha Fissures |q 31303/1 |goto 47.30,58.20
|tip Use the ability on your action bar on the smoke pillars around this area.
|tip They look like spots white smoke rising out of them on the ground around this area.
step
talk Lorewalker Cho##59418
turnin The Seal is Broken##31303 |goto 49.30,61.48
accept Residual Fallout##30500 |goto 49.30,61.48
accept Jaded Heart##30502 |goto 49.30,61.48
accept Emergency Response##31319 |goto 49.30,61.48
stickystart "Kill_Sha_Echoes"
stickystart "Kill_Sha_Remnants"
step
use Cho's Fireworks##86511
Recover Admiral Taylor |q 31319/1 |goto 47.70,62.05
step
use Cho's Fireworks##86511
Recover Mishka |q 31319/2 |goto 46.36,61.66
step
use Cho's Fireworks##86511
Recover Sully |q 31319/3 |goto 47.53,59.19
step
label "Kill_Sha_Echoes"
kill 12 Sha Echo##59417 |q 30500/1 |goto 46.93,60.72
step
label "Kill_Sha_Remnants"
click Celestial Jade##210921+
|tip They look like small green rocks on the ground around this area.
collect Celestial Jade##80074+ |n
use the Celestial Jade##80074
|tip Use it on Sha Remnants around this area.
|tip They become non-elite.
kill 6 Sha Remnant##59434 |q 30502/1 |goto 46.93,60.72
step
talk Lorewalker Cho##59418
turnin Residual Fallout##30500 |goto 49.30,61.48
turnin Jaded Heart##30502 |goto 49.30,61.48
turnin Emergency Response##31319 |goto 49.30,61.48
step
talk Fei##59899
accept Moving On##30648 |goto 49.30,61.42
step
talk Shao the Defiant##54697
turnin An Air of Worry##29576 |goto 43.48,75.92
accept Defiance##29578 |goto 43.48,75.92
accept Rally the Survivors##29579 |goto 43.48,75.92
step
Enter the building |goto 43.40,75.93 < 3 |walk
talk Gentle Mother Hanae##54854
|tip She walks around this area inside the building.
accept Spitfire##29585 |goto 43.24,76.01
accept Orchard-Supplied Hardware##29580 |goto 43.24,76.01
stickystart "Kill_Gormali_Incinerators"
stickystart "Kill_Gormali_Raiders"
stickystart "Rescue_Survivors"
stickystart "Collect_Orchard_Tools"
step
Leave the building |goto 43.41,75.92 < 3 |walk
use the Nectarbreeze Cider##72578
|tip Use it near fires while facing them around this area.
Put Out #12# Orchard Fires |q 29585/1 |goto 44.01,74.31
step
label "Kill_Gormali_Incinerators"
kill 8 Gormali Incinerator##54703 |q 29578/2 |goto 44.01,74.31
step
label "Kill_Gormali_Raiders"
kill 8 Gormali Raider##54702 |q 29578/1 |goto 44.01,74.31
step
label "Rescue_Survivors"
talk Nectarbreeze Farmer##54763+
Tell them _"Get to Hanae's house. It's safe there."_
Rescue #5# Survivors |q 29579/1 |goto 44.01,74.31
step
label "Collect_Orchard_Tools"
click Orchard Tool##209345+
|tip They look like various farm tools with long brown wooden handles on the ground around this area.
collect 6 Orchard Tool##72133 |q 29580/1 |goto 44.01,74.31
step
talk Shao the Defiant##54697
turnin Defiance##29578 |goto 43.48,75.92
turnin Rally the Survivors##29579 |goto 43.48,75.92
step
Enter the building |goto 43.40,75.93 < 3 |walk
talk Gentle Mother Hanae##54854
|tip She walks around this area inside the building.
turnin Spitfire##29585 |goto 43.24,76.01
turnin Orchard-Supplied Hardware##29580 |goto 43.24,76.01
step
talk Traumatized Nectarbreeze Farmer##55209
|tip Inside the building.
accept The Splintered Path##29586 |goto 43.21,75.94
step
Leave the building |goto 43.40,75.93 < 3 |walk
Discover Camp Mogu |q 29586/1 |goto 41.00,73.97
step
talk Shao the Defiant##55009
turnin The Splintered Path##29586 |goto 41.00,73.97
accept Unbound##29587 |goto 41.00,73.97
accept Getting Down to Business##29670 |goto 41.00,73.97
stickystart "farmerfree"
step
kill Subjugator Gormal##55016 |q 29670/1 |goto 37.80,76.18
step
label "farmerfree"
clicknpc Captured Nectarbreeze Farmer##54990+
|tip They look like panda caught in nets on the ground around this area.
kill Gormali Slaver##54989+
|tip Kill the ones dragging a prisoner behind them.
Set #10# Farmers Free |q 29587/1 |goto 39.91,74.79
step
talk Shao the Defiant##55009
turnin Unbound##29587 |goto 41.00,73.97
turnin Getting Down to Business##29670 |goto 41.00,73.97
step
talk Fei##59899
Tell her _"I am ready to leave."_
Begin Flying to the Valley of the Four Winds |invehicle |goto 49.30,61.42 |q 30648
step
Watch the dialogue
Travel to the Valley of the Four Winds |q 30648/1 |goto Valley of the Four Winds/0 85.97,21.72 |notravel
step
Click the Complete Quest Box:
turnin Moving On##30648
]])
