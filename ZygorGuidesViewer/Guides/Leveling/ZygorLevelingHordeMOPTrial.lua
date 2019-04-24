local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("LevelingHMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Pandaria (80-90)\\The Jade Forest (80-90)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\JadeForest",
next="Leveling Guides\\Pandaria (80-90)\\Valley of the Four Winds (81-90)",
condition_suggested=function() return level >= 80 and level <= 90 and not completedq(29670) end,
startlevel=80,
endlevel=90,
},[[
step
If you completed the Vash'jir questline, click here |confirm |next "havec"
or
If you have _not_ completed it, click here |confirm |next "notc"
step
label "havec"
accept The Art of War##29612
Report to Grommash Hold |q 29612/1 |goto Orgrimmar 49.8,75.3
step
talk General Nazgrim##54870
turnin The Art of War##29612 |goto Orgrimmar 48.6,70.6
accept All Aboard!##31853 |goto Orgrimmar 48.6,70.6
|next "normstart"
step
label "notc"
accept The Art of War##29611 |goto Orgrimmar 50.0,75.8
Report to Grommash Hold |q 29611/1
step
talk General Nazgrim##54870
turnin The Art of War##29611 |goto Orgrimmar 48.6,70.6
accept All Aboard!##31853 |goto Orgrimmar 48.6,70.6
|next "normstart"
step
label "normstart"
Look for a ship in the air
You have to use a flying mount to get to General Nazgrim
talk General Nazgrim##55054
turnin All Aboard!##31853 |goto Kalimdor 61.2,44.6
accept Into the Mists##29690 |goto Kalimdor 61.2,44.6
step
talk General Nazgrim##55054
Tell him you're ready to go!
Discover Pandaria |q 29690/1
step
talk General Nazgrim##55135
turnin Into the Mists##29690 |goto The Jade Forest 30.8,10.2
accept Paint it Red!##31765 |goto The Jade Forest 30.8,10.2
step
Follow the steps down |goto 31.4,11.0 < 10 |only if walking
Click Gunship Turret |goto 31.5,11.0 |invehicle |c
|tip It's on the lower level of the ship.
step
Use the Full Autofire ability on your action bar
While it is channeling:
kill 80 Thunder Hold Troops |q 31765/1
kill 9 Thunder Hold Cannons |q 31765/2
step
talk Rivett Clutchpop##67250
turnin Paint it Red!##31765 |goto 31.0,11.0
accept Touching Ground##31766 |goto 31.0,11.0
step
click Rappelling Rope##215689
Rappel into Honeydew Glade |q 31766/1 |goto 31.5,11.1
step
talk General Nazgrim##55135
turnin Touching Ground##31766 |goto 31.6,11.3
accept Finish Them!##31767 |goto 31.6,11.3
accept Fire Is Always the Answer##31768 |goto 31.6,11.3
step
kill 15 Thunder Hold Troops |q 31767/1 |goto 32.8,6.6
Find Thunder Hold Munitions and use Nazgrim's Flare Gun to destroy them |use Nazgrim's Flare Gun##89605
|tip They look like big piles of crates and barrels
Thunder Hold Munitions destroyed |q 31768/1 |goto 32.8,6.6
You can find more troops and munitions around [The Jade Forest,34.3,8.8]
step
Go up the steps to Thunder Hold |goto 33.3,10.6 < 10 |only if walking
talk General Nazgrim##66646
turnin Fire Is Always the Answer##31768 |goto 34.8,10.6
turnin Finish Them!##31767 |goto 34.8,10.6
accept The Final Blow!##31769 |goto 34.8,10.6
step
Use Nazgrim's Flare Gun on the barricade |use Nazgrim's Flare Gun##89769
|tip It is on the first floor of Thunder Hold
Destroy the first Barricade |q 31769/1 |goto 34.0,10.0
step
Use Nazgrim's Flare Gun on the barricade |use Nazgrim's Flare Gun##89769
Destroy the second Barricade |q 31769/2 |goto 34.7,9.9
step
Use Nazgrim's Flare Gun on the barricade. |use Nazgrim's Flare Gun##89769
Destroy the third Barricade |q 31769/3 |goto 34.9,10.6
step
Find Captain Doren |q 31769/4 |goto 33.8,10.6
step
talk General Nazgrim##66656
turnin The Final Blow!##31769 |goto 33.7,10.6
step
Wait for the scene to end
talk General Nazgrim##66656
accept You're Either With Us Or...##31770 |goto 33.7,10.6
accept Higher Ground##29694 |goto 33.7,10.6
step
talk Taran Zhu##66657
accept Face to Face With Consequence##31771 |goto 33.7,10.6
step
Follow the stairs back down and exit the building |goto 34.5,10.6 < 10 |walk
talk Ellie Honeypaw##66660
accept Priorities!##31772 |goto 30.6,7.1
step
talk Sue-Ji the Tender##66659
accept Prowler Problems##31773 |goto 30.5,7.5
step
kill 20 Sha Haunt##66425 |q 31771/1 |goto 33.6,7.4
kill 7 Sha Harbinger##66424 |q 31771/2 |goto 33.6,7.4
stickystart "barrelofhoney"
step
talk Rivett Clutchpop##55146
Tell him to quit messing around
Rivett Clutchpop Rescued |q 29694/2 |goto 30.5,7.2
step
talk Shokia##55170
Tell her to get on her feet
Shokia Rescued |q 29694/4 |goto 29.4,8.5
step
label "barrelofhoney"
kill 10 Sha-Infested Prowler##66668 |q 31773/1 |goto 29.2,9.0
click Barrel of Honeybrew##215695 |q 31772/1 |goto 29.2,9.0
|tip Small, grey and brown barrels laying on the ground.
You can find more around [31.0,11.4]
step
talk Sergeant Gorrok##55162
Tell him you need to regroup
Sergeant Gorrok Rescued |q 29694/3 |goto 30.6,11.7
step
talk Shademaster Kiryn##55141
Tell her to snap out of it
Shademaster Kiryn Rescued |q 29694/1 |goto 32.1,13.4
step
talk Ellie Honeypaw##66660
turnin Priorities!##31772 |goto 29.4,13.6
step
talk Sergeant Gorrok##55162
turnin Higher Ground##29694 |goto 29.1,13.7
step
talk Mayor Honeydew##66220
turnin You're Either With Us Or...##31770 |goto 29.2,13.8
step
talk Taran Zhu##66657
turnin Face to Face With Consequence##31771 |goto 29.1,13.8
turnin Prowler Problems##31773 |goto 29.1,13.8
step
talk Sergeant Gorrok##55162
accept Seeking Zin'jun##31774 |goto 29.1,13.7
step
talk Brewmother Kiki##66236
home Honeydew Village |goto The Jade Forest/0 28.5,13.3
step
talk Wing Hya##66227
fpath Honeydew Village |goto The Jade Forest/0 28.1,15.6
step
talk Zin'Jun##55403
turnin Seeking Zin'jun##31774 |goto 31.1,17.5
accept Cryin' My Eyes Out##29765 |goto 31.1,17.5
step
click Ancient Statue##212181
accept Monstrosity##29743 |goto 30.9,17.5
stickystart "hozengroundpounder"
step
click Ancient Statue Arm##212183
Choose the create a sketch option
Statue Arm Sketched |q 29743/2 |goto 30.1,21.3
step
click Ancient Statue Head##212186
Choose the create a sketch option
Statue Head Sketched |q 29743/4 |goto 30.0,22.3
step
click Ancient Statue Shoulder##212184
Choose the create a sketch option
Statue Shoulder Sketched |q 29743/3 |goto 28.5,22.1
step
click Ancient Statue Torso##212182
Choose the create a sketch option
Statue Torso Sketched |q 29743/1 |goto 29.4,18.9
step
Click the Auto complete quest box that appears below your minimap:
turnin Monstrosity##29743
step
label "hozengroundpounder"
kill Hozen Groundpounder##55470+
collect Zin'Jun's Rifle##74160 |q 29765/1 |goto 28.6,18.1
collect Zin'Jun's Left Eye##74161 |q 29765/2 |goto 28.6,18.1
collect Zin'Jun's Right Eye##74162 |q 29765/3 |goto 28.6,18.1
collect Snuff's Corpse##74163 |q 29765/4 |goto 28.6,18.1
step
Standing Next to you
talk Zin'Jun##55403
If he is not with you anymore, you can find him here: [31.1,17.5]
turnin Cryin' My Eyes Out##29765
accept Seein' Red##29804
step
Enter the cave here |goto 31.5,21.7 < 10 |walk
kill Konk##55509 |q 29804/1 |goto 32.0,22.3
step
talk General Nazgrim##66656
turnin Seein' Red##29804 |goto 31.7,21.9
accept Assault on the Airstrip##31775 |goto 31.7,21.9
accept Strongarm Tactics##31776 |goto 31.7,21.9
step
talk Merchant Zin##65998
accept Unreliable Allies##31778 |goto The Jade Forest 31.4,21.8
step
talk Rivett Clutchpop##55521
accept Choppertunity##31777 |goto 31.1,21.6
stickystart "strongarmtroop"
step
kill Master Engineer Cogswing and Gyro-Mechanic Lavenderp |q 31776/1 |goto 30.3,24.2
step
kill Morgus Grimhatchet##65880 |q 31776/2 |goto 29.7,23.7
|tip He may appear on your minimap as a white skull with red eyes
He walks around the area
step
kill Corporal Jackson Silver##65881 |q 31776/3 |goto 27.8,23.1
|tip He is on the first floor of this building.
step
label "strongarmtroop"
talk Pandaren Volunteer##67090
|tip Use Shift+v to make them much easier to spot (Hit v to mark enemies again).
Tell them that they can leave.
Free 12 Pandaren |q 31778/1 |goto 28.3,24.6
click Requisitioned Firework Launcher##214962
Target Strongarm Gyrocopters in the air and use your Requisitioned Firework Launcher on them |use Requisitioned Firework Launcher##89163
kill 12 Strongarm Gyrocopter##65843 |q 31777/1 |goto 28.3,24.6
kill 15 Strongarm Troop |q 31775/1 |goto 28.3,24.6
step
talk Rivett Clutchpop##55521
turnin Choppertunity##31777 |goto 31.1,21.6
step
talk Merchant Zin##65998
turnin Unreliable Allies##31778 |goto 31.4,21.8
step
talk General Nazgrim##66656
turnin Assault on the Airstrip##31775 |goto 31.6,21.9
turnin Strongarm Tactics##31776 |goto 31.6,21.9
accept The Darkness Within##31779 |goto 31.6,21.9
step
Cross the bridge here |goto 27.3,25.1 < 10 |only if walking
kill Captain Doren##66052 |q 31779/1 |goto 25.8,23.9
|tip He is inside a small cave.
step
Click the Alliance Flagpole here
turnin The Darkness Within##31779 |goto 27.6,24.3
accept Nazgrim's Command##31999 |goto 27.6,24.3
step
talk General Nazgrim##55172
turnin Nazgrim's Command##31999 |goto 28.4,24.9
step
talk Shademaster Kiryn##55180
accept Forensic Science##29815 |goto 28.2,24.8
step
talk Rivett Clutchpop##55521
accept Missed Me By... That Much!##29821 |goto 28.1,24.7
step
clicknpc Empty Package##62923
turnin Missed Me By... That Much!##29821 |goto 22.9,30.6
accept They're So Thorny!##31112 |goto 22.9,30.6
step
clicknpc Lurching Blossom##55610
|tip They look like small, moving, blue-green plants around this area. You can do this while mounted.
collect 8 Viscous Chlorophyll##74621 |q 29815/1 |goto 25.9,26.1
kill Water Sprite##62930
collect 5 Emergency Supplies##74623 |q 31112/1 |goto 25.9,26.1
step
talk Rivett Clutchpop##55521
turnin They're So Thorny!##31112 |goto 28.1,24.7
step
talk Shademaster Kiryn##55180
turnin Forensic Science##29815 |goto 28.2,24.8
accept Acid Rain##29827 |goto 28.2,24.8
step
clicknpc Recovered Gyrocopter##55674 |goto 28.1,24.8 |invehicle
step
Use your abilities on the bar to kill Hozen
kill 25 Hozen Gutripper##55707 |q 29827/1
kill 25 Hozen Nibstabber##55701 |q 29827/2
step
talk Shademaster Kiryn##55180
turnin Acid Rain##29827 |goto 28.2,24.8
step
talk General Nazgrim##55172
accept Lay of the Land##29822 |goto 28.4,24.9
step
Shrine of the Sun Visited |q 29822/1 |goto 31.9,27.9
step
kill Dook Ookem##55622 |q 29822/3 |goto 27.8,30.3
step
Follow the road southwest |goto 28.3,30.9 < 10 |only if walking
Shrine of the Moon Visited |q 29822/2 |goto 26.2,32.4
step
Enter the cave |goto 27.3,32.0 < 10 |walk
talk Lorewalker Cho##55768
turnin Lay of the Land##29822 |goto 27.6,32.7
accept Stay a While, and Listen##31121 |goto 27.6,32.7
step
click Cho's Teapot
Listen to Lorewalker Cho |q 31121/1 |goto 27.7,32.5
step
talk Lorewalker Cho##55768
turnin Stay a While, and Listen##31121 |goto 27.6,32.7
accept A Mile in My Shoes##31132 |goto 27.6,32.7
step
talk Lorewalker Cho##63217
turnin A Mile in My Shoes##31132 |goto 30.8,34.1
accept If These Stones Could Speak##31134 |goto 30.8,34.1
step
click Stone Monolith
First Stone Monolith Translated |q 31134/1 |goto 30.9,33.7
step
click Stone Monolith
kill Bloodthirsty Saurok##63279
Second Stone Monolith Translated |q 31134/2 |goto 30.6,33.8
step
click Stone Monolith
Third Stone Monolith Translated |q 31134/3 |goto 30.6,34.1
step
talk Lorewalker Cho##63217
turnin If These Stones Could Speak##31134 |goto 30.8,34.0
accept Peering Into the Past##31152 |goto 30.8,34.0
step
Follow Lorewalker Cho
Escort Lorewalker Cho to the Circle of Stone |q 31152/1 |goto 28.9,32.5
step
talk Lorewalker Cho##63307
turnin Peering Into the Past##31152 |goto 28.8,32.6
accept Family Tree##31167 |goto 28.8,32.6
step
click Incense Bundle##245682
Light the incense |q 31167/1 |goto 28.8,32.5
step
talk Lorewalker Cho##63307
turnin Family Tree##31167 |goto 28.8,32.6
accept Swallowed Whole##29879 |goto 28.8,32.6
step
kill 5 Engorged Crocolisk##56183 |q 29879/1 |goto The Jade Forest 24.3,35.1
clicknpc Speckled Trout##56180
|tip You can mark these with Shift+v (Use v to mark enemies again).
collect 5 Speckled Trout##75202 |q 29879/2 |goto The Jade Forest 24.3,35.1
step
talk Tooki Tooki##56313
turnin Swallowed Whole##29879 |goto The Jade Forest 26.3,37.3
accept Orders are Orders##29935 |goto The Jade Forest 26.3,37.3
step
talk Bo Bo##56351
accept The Bees' Knees##29933 |goto The Jade Forest 25.9,38.0
step
talk Nibi Nibi##56327
accept Kill Kher Shan##29924 |goto The Jade Forest 26.0,38.8
step
talk Jeek Jeek##63748
accept Wicked Wikkets##31241 |goto The Jade Forest 28.2,39.0
step
kill Kher Shan##56329 |q 29924/1 |goto The Jade Forest 33.3,41.9
|tip He is inside a small cave
step
Click the Complete Quest box that displays on the right side of the screen under your minimap
turnin Kill Kher Shan##29924
step
kill Battleworn Paratrooper##63782+
collect 6 Alliance Service Medallion##85784+ |q 31241/1 |goto The Jade Forest 31.1,41.7
stickystart "buglegs"
step
kill Jack Arrow##63809
|tip Attack him from the back and he won't hurt you.
|tip Watch out for the pink circles on the ground, they will hurt you.
collect Captain Jack's Head##85783 |n
Click Captain Jack's Head in your bags |use Captain Jack's Head##85783
accept Captain Jack's Dead##31261 |goto The Jade Forest 30.8,41.3
step
label "buglegs"
kill Tigerfly##56283+
collect 30 Bug Leg##76173+ |q 29933/1 |goto The Jade Forest 29.6,44.0
step
talk Chief Kah Kah##56336
turnin Orders are Orders##29935 |goto The Jade Forest 28.0,47.2
accept Instant Messaging##29936 |goto The Jade Forest 28.0,47.2
turnin The Bees' Knees##29933 |goto The Jade Forest 28.0,47.2
turnin Captain Jack's Dead##31261 |goto The Jade Forest 28.0,47.2
turnin Wicked Wikkets##31241 |goto The Jade Forest 28.0,47.2
step
talk Grookin Bed-Haver##62975
home Grookin Hill |goto The Jade Forest 28.0,47.4
step
clicknpc Signal Flare##56413
Signal Survivors |q 29936/1 |goto The Jade Forest 28.0,46.8
step
talk General Nazgrim##56339
turnin Instant Messaging##29936 |goto The Jade Forest 28.3,47.8
accept Beyond the Horizon##29941 |goto The Jade Forest 28.3,47.8
step
talk Grookin Flapmaster##60952
fpath Grookin Hill |goto The Jade Forest 27.8,47.9
step
talk Shokia##56340
Tell her Nazgrim has assigned her to scout |q 29941/1 |goto The Jade Forest 28.3,46.9
step
talk Chief Kah Kah##56336
Tell him that we will be exploring his lands and ask for his help |q 29941/4 |goto The Jade Forest 28.0,47.2
step
talk Shademaster Kiryn##56478
Tell her Nazgrim has assigned her to the scouting party |q 29941/3 |goto The Jade Forest 27.1,49.0
step
talk Sergeant Gorrok##56477
|tip He walks up and down this path
Tell him Nazgrim has assigned him to help scout |q 29941/2 |goto The Jade Forest 27.7,50.4
step
talk General Nazgrim##56339
turnin Beyond the Horizon##29941 |goto The Jade Forest 28.3,47.8
step
talk Rivett Clutchpop##56406
accept Furious Fowl##29937 |goto The Jade Forest 28.3,47.8
step
talk Chief Kah Kah##56336
accept What's in a Name Name?##31239 |goto The Jade Forest 28.0,47.2
step
kill 7 Riverstride Jinyu##56289+ |q 31239/1 |goto The Jade Forest 28.8,46.0
You can find a few more on the other side of the river at [The Jade Forest,29.5,44.6]
step
talk Chief Kah Kah##56336
turnin What's in a Name Name##31239 |goto The Jade Forest 28.0,47.2
step
kill Hungry Bloodtalon##56396+
collect 6 Fistful of Bird Guts##76225 |q 29937/1 |goto The Jade Forest 29.8,51.1
step
talk Rivett Clutchpop##56406
turnin Furious Fowl##29937 |goto The Jade Forest 27.2,50.6
accept Easy Pickings##29939 |goto The Jade Forest 27.2,50.6
step
talk Eekle Eekle##56358
accept Silly Wikket, Slickies are for Hozen##29942 |goto The Jade Forest 27.0,50.8
step
kill Muck Snapper##56447+
collect 4 Snapper Steak##76420+ |q 29942/1 |goto 26.7,55.4
Stand on the Deck and throw Gut Bombs in the water |use Gut Bomb##76262
click Dead Deepriver Slicky
collect 5 Exploded Slicky##76260 |q 29939/1 |goto 26.7,55.4
step
talk Eekle Eekle##56358
turnin Silly Wikket, Slickies are for Hozen##29942 |goto The Jade Forest 27.0,50.8
step
talk Rivett Clutchpop##56406
turnin Easy Pickings##29939 |goto The Jade Forest 27.2,50.8
accept The Scouts Return##29971 |goto The Jade Forest 27.2,50.8
step
talk Shokia##55647
turnin The Scouts Return##29971 |goto The Jade Forest 28.6,47.4
step
talk Riko##55648
accept Scouting Report: Hostile Natives##29730 |goto 28.6,47.4
step
Click the warning sign
Inspect the warning sign |q 29730/1 |goto 38.3,45.4
step
clicknpc Lifelike Jade Statue##55378
Inspect a Lifelike Jade Statue |q 29730/2 |goto 38.9,46.0
step
talk Widow Greenpaw##55381
Ask her some questions
Speak with Widow Greenpaw |q 29730/3 |goto 39.2,46.2
step
talk Riko##55648
turnin Scouting Report: Hostile Natives##29730 |goto 28.6,47.4
step
talk Shademaster Kiryn##55646
accept Scouting Report: On the Right Track##29731 |goto 28.6,47.5
step
Follow the path up |goto 45.2,63.7  |only if walking
Search the Serpent's Spine for signs of life |q 29731/1 |goto 48.6,60.2
|tip If you encounter enemies use the Smoke Bomb ability on your hotbar
step
talk Shademaster Kiryn##55646
turnin Scouting Report: On the Right Track##29731 |goto 28.6,47.5
step
talk Riko##55648
accept Scouting Report: The Friend of My Enemy##29823 |goto The Jade Forest 28.6,47.4
step
talk Shademaster Kiryn##55688
Tell her that you'll protect her to the death
Use the abilities on your hotbar to defeat the Ambushing Jinyu and finally the Alliance Scout |q 29823/1 |goto The Jade Forest 49.8,70.5
step
talk Riko##55648
turnin Scouting Report: The Friend of My Enemy##29823 |goto The Jade Forest 28.6,47.4
step
talk Shokia##55647
accept Scouting Report: Like Jinyu in a Barrel##29824 |goto The Jade Forest 28.6,47.4
step
click Sniper Rifle##209691
Right click on the Jinyu Guards to kill them
|tip If you have very low view distance in your settings you won't be able to see them.
Escort Shademaster Kiryn through the camp |q 29824/1 |goto The Jade Forest 62.6,82.0
step
talk Shokia##55647
turnin Scouting Report: Like Jinyu in a Barrel##29824 |goto The Jade Forest 28.6,47.4
step
talk General Nazgrim##56339
accept Guerrillas in our Midst##29943 |goto The Jade Forest 28.7,47.5
step
talk Rivett Clutchpop##56406
accept Green-ish Energy##29968 |goto The Jade Forest 30.8,52.3
step
kill 8 Alliance Infiltrator##56303+ |q 29943/1 |goto The Jade Forest 31.6,52.5
click Green Branch##209903
|tip They look like small brown logs on the ground
collect 7 Green Branch##76333 |q 29968/1 |goto The Jade Forest 31.6,52.5
step
Standing next to you
talk General Nazgrim##56490
turnin Guerrillas in our Midst##29943
accept Burning Down the House##29966
step
Follow the path up |goto The Jade Forest 30.4,52.9 |only if walking
Use Nazgrim's Grog in your bags |use Nazgrim's Grog##76336 |q 29966/1 |goto The Jade Forest 29.4,54.3
step
talk Rivett Clutchpop##56406
turnin Green-ish Energy##29968 |goto The Jade Forest 27.2,50.8
accept Boom Goes the Doonamite!##29967 |goto The Jade Forest 27.2,50.8
step
talk Rivett Clutchpop##56525
Tell him that you're ready |invehicle |goto The Jade Forest 29.0,49.1
step
Use the abilities on your hotbar to fight off the Jinyu Tacticians
|tip If they get too close and knock you out, talk to Rivett again.
Kill 10 Jinyu Attackers |q 29967/1
step
talk Rivett Clutchpop##56525
turnin Boom Goes the Doonamite!##29967 |goto The Jade Forest 29.0,49.1
step
talk General Nazgrim##56339
turnin Burning Down the House##29966 |goto The Jade Forest 28.7,47.5
accept Dawn's Blossom##30015 |goto The Jade Forest 28.7,47.5
step
talk Grookin Flapmaster##60952 |goto The Jade Forest 27.8,47.9 |only if walking
Tell him to send you to Dawn's Blossom |goto The Jade Forest 47.0,46.2 < 5 |only if walking
talk Keg Runner Lee##59186
fpath Dawn's Blossom |goto The Jade Forest 47.1,46.2
step
talk Lorewalker Cho##63577
turnin Dawn's Blossom##30015 |goto The Jade Forest 46.8,46.1
step
talk Toya##56348
accept Welcome to Dawn's Blossom##31230 |goto The Jade Forest 47.1,46.1
step
talk Kai Wanderbrew##59173 |q 31230/3 |goto The Jade Forest 47.0,46.0
|tip He walks around the camp a little, you may have to look for him
step
talk Master Windfur##59160 |q 31230/1 |goto The Jade Forest 48.5,44.5
|tip He is inside this big building
step
talk Peiji Goldendraft##55809 |q 31230/2 |goto The Jade Forest 45.7,43.7
|tip Inside this big building, he is the innkeeper
step
talk Peiji Goldendraft##55809
home The Dunken Hozen |goto The Jade Forest 45.7,43.7
step
talk Toya##56348
turnin Welcome to Dawn's Blossom##31230 |goto The Jade Forest 47.2,46.2
step
talk An Windfur##55234
accept The Double Hozu Dare##29716 |goto The Jade Forest 46.6,46.2
step
talk Tzu the Ironbelly##56062
accept The Silkwood Road##29865 |goto The Jade Forest 46.4,45.8
step
talk Lo Wanderbrew##59178
accept The Threads that Stick##29866 |goto The Jade Forest 46.6,45.3
step
kill 8 Silkwood Stalker##56070 |q 29865/1 |goto The Jade Forest 42.9,49.8
click Silk Patch##209951
collect 7 Pristine Silk Strand##75023 |q 29866/1 |goto The Jade Forest 42.9,49.8
step
Next to you
talk An Windfur##55274
accept Down Kitty!##29717 |goto The Jade Forest 40.2,48.4
step
talk Scared Pandaren Cub##55267
|tip Marking them with Shift+v will make them much easier to spot (Use v to mark enemies again).
Tell them that it is safe now |q 29716/1 |goto The Jade Forest 37.0,44.8
kill 8 Jade Guardian##55236 |q 29717/1 |goto The Jade Forest 37.0,44.8
step
Next to you
talk An Windfur##55274
turnin The Double Hozu Dare##29716
accept The Jade Witch##29723
turnin Down Kitty!##29717
step
talk Widow Greenpaw##55368
Ash her where Shin is
Defeat the Jade Witch |q 29723/1 |goto The Jade Forest 39.4,46.2
step
Go to the road, and follow it east |goto 40.0,48.1 |only if walking
talk Lo Wanderbrew##59178
turnin The Threads that Stick##29866 |goto The Jade Forest 46.6,45.3
step
talk Tzu the Ironbelly##56062
turnin The Silkwood Road##29865 |goto The Jade Forest 46.5,45.8
step
talk An Windfur##55413
|tip She runs around this area so you may need ot search.
turnin The Jade Witch##29723 |goto The Jade Forest 46.9,46.0
step
talk Kai Wanderbrew##59173
|tip He walks around the camp a little, you may have to look for him.
accept Find the Boy##29993 |goto The Jade Forest 47.0,46.0
step
talk Toya##56348
accept All We Can Spare##29925 |goto The Jade Forest 47.2,46.2
step
talk Inkmaster Wei##56065
turnin Find the Boy##29993 |goto The Jade Forest 54.9,45.1
accept Shrine of the Dawn##29995 |goto The Jade Forest 54.9,45.1
step
talk Inkmaster Glenzu##56064
accept The Perfect Color##29881 |goto The Jade Forest 54.9,45.3
step
talk Inkmaster Jo Po##56063
accept Quill of Stingers##29882 |goto The Jade Forest 55.3,45.2
step
talk Injar'i Lakebloom##59732
fpath The Arboretum |goto 56.9,44.12
step
kill Orchard Wasp##56201+
collect 6 Wasp Stinger##75221+ |q 29882/1 |goto The Jade Forest 53.4,45.6
click Freshly Fallen Petals##209836
|tip They look like small flowers on their side.
collect 8 Freshly Fallen Petal##75219+ |q 29881/1 |goto The Jade Forest 53.4,45.6
step
talk Inkmaster Glenzu##56064
turnin The Perfect Color##29881 |goto The Jade Forest 54.9,45.3
step
talk Inkmaster Jo Po##56063
turnin Quill of Stingers##29882 |goto The Jade Forest 55.4,45.3
step
talk Syra Goldendraft##56708
turnin Shrine of the Dawn##29995 |goto The Jade Forest 52.6,38.1
accept Getting Permission##29920 |goto The Jade Forest 52.6,38.1
step
Only one of these mobs will be available at a time
talk Pandriarch Bramblestaff##56209
Challenge the Pandriarch |q 29920/2 |goto The Jade Forest 54.1,38.5
step
talk Pandriarch Goldendraft##56210
Challenge the Pandriarch |q 29920/3 |goto 53.6,36.7
step
talk Pandriarch Windfur##56206
Challenge the Pandriarch |q 29920/1 |goto 52.5,35.5
step
talk Lo Wanderbrew##55788
turnin Getting Permission##29920 |goto The Jade Forest 52.6,38.1
step
talk Lorewalker Cho##56345
turnin All We Can Spare##29925 |goto The Jade Forest 50.9,27.1
step
talk Foreman Mann##56346
accept I Have No Jade And I Must Scream##29928 |goto The Jade Forest 50.9,27.0
step
talk Supplier Towsa##59735
fpath Emperor's Omen |goto The Jade Forest 50.8,26.9
step
kill Puckish Sprite##56349+
click Chunk of Jade##209863
collect 15 Chunk of Jade##76209+ |q 29928/1 |goto The Jade Forest 48.1,31.7
step
talk Foreman Mann##56346
turnin I Have No Jade And I Must Scream##29928 |goto The Jade Forest 50.9,27.0
accept Calamity Jade##29926 |goto The Jade Forest 50.9,27.0
accept Mann's Man##29927 |goto The Jade Forest 50.9,27.0
step
clicknpc Outcast Sprite##55438
accept The Sprites' Plight##29745 |goto The Jade Forest 48.7,24.9
step
Find the source of Simulacra discovered |q 29745/2 |goto The Jade Forest 48.4,20.6
step
kill 10 Stonebound Destroyer##55288+ |q 29745/1 |goto The Jade Forest 49.4,20.3
You can find more of these at [The Jade Forest,48.0,21.1]
step
Click the Complete Quest box that displays on the right side of the screen under your minimap
turnin The Sprites' Plight##29745
accept Break the Cycle##29747
step
clicknpc Shattered Simulacrum##55472
accept Simulacrumble##29748 |goto The Jade Forest 48.6,20.5
step
kill 8 Shan'ze Spiritbinder##55279 |q 29747/1 |goto The Jade Forest 48.1,18.1
Click Vacant Destroyer
|tip They look like Stone Statues holding big maces
Destroy 6 Vacant Destroyer |q 29748/1 |goto The Jade Forest 48.1,18.1
step
Click the Complete Quest box that displays on the right side of the screen under your minimap
turnin Simulacrumble##29748
turnin Break the Cycle##29747
accept An Urgent Plea##29749
step
click Staff of Pei-Zhi##209662
collect Staff of Pei-Zhi##74258 |q 29749/1 |goto The Jade Forest 44.2,15.0
Kill Ancient Spirits until the "Empowering the Staff" bar fills |q 29749/2 |goto The Jade Forest 44.2,15.0
step
talk Pei-Zhi##55614
|tip If he does not appear for you, you may have to log out and log back in to get him to show up.
turnin An Urgent Plea##29749 |goto The Jade Forest 44.2,15.0
accept Vessels of the Spirit##29750 |goto The Jade Forest 44.2,15.0
accept Ritual Artifacts##29751 |goto The Jade Forest 44.2,15.0
accept The Wayward Dead##29752 |goto The Jade Forest 44.2,15.0
stickystart "waywardancestors"
step
click Pungent Ritual Candle##209701
|tip The candle is found at the waypoint location.
collect Pungent Ritual Candle##74761+ |q 29751/3 |goto 42.2,17.1
Recover 10 Wayward Ancestors |q 29752/1 |n |goto 42.2,17.1
step
click Jade Cong##209699
collect Jade Cong##74762 |q 29751/1 |goto 42.7,15.8
Recover 10 Wayward Ancestors |q 29752/1 |n |goto 42.7,15.8
step
click Chipped Ritual Bowl##209700
collect Chipped Ritual Bowl##74760 |q 29751/2 |goto The Jade Forest 41.6,14.4
step
label "waywardancestors"
kill Shan'ze Spiritclaw##55291+
collect 8 Spirit Bottle##74763+ |q 29750/1 |goto The Jade Forest 41.0,14.7
Use the Staff of Pei-Zhi on Wayward Ancestors |use Staff of Pei-Zhi##74771
Recover 10 Wayward Ancestors |q 29752/1 |goto The Jade Forest 41.0,14.7
step
talk Pei-Zhi##55614
turnin Vessels of the Spirit##29750 |goto The Jade Forest 44.3,15.0
accept Back to Nature##29753 |goto The Jade Forest 44.3,15.0
turnin Ritual Artifacts##29751 |goto The Jade Forest 44.3,15.0
turnin The Wayward Dead##29752 |goto The Jade Forest 44.3,15.0
accept A Humble Offering##29756 |goto The Jade Forest 44.3,15.0
step
Use the Spirit Bottles in your bag to summon Raging Beast Spirits |use Spirit Bottles##74808
kill Raging Beast Spirit##55790
Return 8 Beast Spirits to Nature |q 29753/1 |goto The Jade Forest 39.4,11.2
click Tidemist Cap##209825
|tip These look like small clusters of mushrooms on the ground and at the base of tree trunks.
collect 10 Tidemist Cap##75214+ |q 29756/1
step
talk Pei-Zhi##55614
turnin Back to Nature##29753 |goto The Jade Forest 44.2,15.0
turnin A Humble Offering##29756 |goto The Jade Forest 44.2,15.0
accept To Bridge Earth and Sky##29754 |goto The Jade Forest 44.2,15.0
step
Protect Pei-Zhi during his ritual |q 29754/1 |goto The Jade Forest 43.7,12.9
step
Click the Complete Quest box that displays on the right side of the screen under your minimap
turnin To Bridge Earth and Sky##29754
accept Pei-Back##29755
step
kill Stonebound Colossus##56595
|tip While fighting him your spirit will get ripped from your body, when this happens just run back to your body and click on it.
kill Shan Jitong##56596 |q 29755/1 |goto 42.6,11.2
step
talk Pei-Zhi##59492
turnin Pei-Back##29755 |goto The Jade Forest 43.8,12.5
step
Follow the path up |goto 39.2,14.8 < 10 |only if walking
Follow the path here |goto 38.0,18.2 < 10 |only if walking
Follow the path here |goto 38.2,24.1 < 10 |only if walking
Follow this path into the Tian Monastery. |goto 41.5,25.0 < 10 |only if walking
talk Studious Chu##59736
fpath Tian Monastery |goto 43.6,24.5
step
talk Lin Tenderpaw##54913
accept The High Elder##29618 |goto 45.0,24.9
step
talk High Elder Cloudfall##54914
|tip He is at the top of this building
turnin The High Elder##29618 |goto 45.2,25.1
step
talk Lin Tenderpaw##54913
accept A Courteous Guest##29619 |goto 45.0,24.9
step
click Ripe Orange##209436
|tip Small oranges on the ground around a tree. If the Greenwood Thieves are holding an orange, you can kill them and loot it off them.
collect 8 Ripe Orange##72589+ |q 29619/1 |goto 45.7,27.1
step
talk Lin Tenderpaw##54913
turnin A Courteous Guest##29619 |goto 45.0,24.9
accept The Great Banquet##29620 |goto 45.0,24.9
step
talk High Elder Cloudfall##54914
Tell him you don't need any introductions |q 29620/1
turnin The Great Banquet##29620 |goto 42.7,23.2
step
talk Xiao##54926
accept Your Training Starts Now##29622 |goto 43.1,23.7
accept Groundskeeper Wu##29626 |goto 43.1,23.7
step
talk Master Stone Fist##54922
accept Becoming Battle-Ready##29632 |goto 43.2,24.8
step
talk Tian Pupil##54944
Tell them let's fight
Defeat 8 Tian Pupils |q 29632/1 |goto 43.3,25.2
step
talk Master Stone Fist##54922
turnin Becoming Battle-Ready##29632 |goto 43.2,24.8
accept Zhi-Zhi, the Dextrous##29633 |goto 43.2,24.8
accept Husshun, the Wizened##29634 |goto 43.2,24.8
step
talk Husshun##54925
Challenge Husshun to a fight
Defeat Husshan |q 29634/1 |goto 44.6,24.0
step
talk Zhi-Zhi##54924
|tip He is on top of a small hill.
Ask him if he wants to fight
Defeat Zhi-Zhi |q 29633/1 |goto 43.1,26.0
step
talk Master Stone Fist##54922
turnin Zhi-Zhi, the Dextrous##29633 |goto 43.2,24.8
turnin Husshun, the Wizened##29634 |goto 43.2,24.8
accept Xiao, the Eater##29635 |goto 43.2,24.8
step
talk Xiao##54926
Challenge him
Defeat Xiao |q 29635/1 |goto 43.1,23.6
step
talk Master Stone Fist##54922
turnin Xiao, the Eater##29635 |goto 43.2,24.8
accept A Test of Endurance##29636 |goto 43.2,24.8
step
_Go up_ the stairs up |goto 42.0,24.3 < 10 |only if walking
_Continue_ the stairs up |goto 42.1,23.6 < 10 |only if walking
talk Groundskeeper Wu##54915
turnin Groundskeeper Wu##29626 |goto 41.6,23.7
accept A Proper Weapon##29627 |goto 41.6,23.7
step
talk June Whiteblossom##54981
buy Black Walnut Extract##72954 |q 29627/2 |goto 41.4,24.2
step
talk Brewmaster Lei Kanglei##54982
buy 3 Triple-Bittered Ale##72979 |q 29627/3 |goto 41.8,24.6
step
click Rattan Switch##209464
collect 6 Rattan Switch##72926+ |q 29627/1 |goto 41.5,25.3
More can be found on the tree at [The Jade Forest,41.9,24.9]
step
_Go up_ the stairs up |goto 42.0,24.3 < 10 |only if walking
_Continue up_ the stairs up |goto 42.1,23.6 < 10 |only if walking
talk Groundskeeper Wu##54915
turnin A Proper Weapon##29627 |goto 41.6,23.7
accept A Strong Back##29628 |goto 41.6,23.7
accept A Steady Hand##29629 |goto 41.6,23.7
accept And a Heavy Fist##29630 |goto 41.6,23.7
step
talk Instructor Xann##54917
turnin Your Training Starts Now##29622 |goto 41.6,28.3
accept Perfection##29623 |goto 41.6,28.3
step
Use the abilities on your hotbar to mimic the Tian Instructor and practice strikes.
Practice 12 strikes |q 29623/1 |goto 41.3,27.5
step
talk Instructor Xann##54917
turnin Perfection##29623 |goto 41.6,28.3
accept Attention##29624 |goto 41.6,28.3
step
kill 2 Training Bag##55183+ |q 29624/1 |goto 41.1,28.0
|tip This may take some time to do. Each bag has a lot of health and only one is vulnerable at a time. Listen for the Instructors directions and hit the bag he calls for. If you're attacking the wrong bag you'll only do 1% damage.
step
talk Instructor Xann##54917
turnin Attention##29624 |goto 41.6,28.3
step
_Follow_ this path |goto 41.4,26.8 < 10 |only if walking
talk Instructor Myang##54918
turnin A Test of Endurance##29636 |goto 39.0,24.0
accept The Rumpus##29637 |goto 39.0,24.0
step
Use the Monastery Fireworks |use Monastery Fireworks##73369
Defeat the Rumpus Brutes and Rumpus Combatants as they spawn
Survive for 2 minutes |q 29637/1 |goto 39.0,23.2
step
talk Guard Shan Long##55094
accept Burning Bright##29631 |goto 38.0,23.8
step
talk Instructor Myang##54918
turnin The Rumpus##29637 |goto 39.0,24.0
stickystart greentrick
step
You will need to defend this cauldron from Greenwood Tricksters until you get back to the Tian Monastery
|tip Do not mount while it follows you, it is too slow
click Boiling Cauldron##209551
Obtain the Boiling Cauldron |q 29628/1 |goto 37.8,17.6
step
label "greentrick"
Kill Greenwood Tricksters while walking here with the cauldron |goto 38.5,23.1 <5 |c
|tip Because you have the Cauldron with you, they will automatically attack you if you get close.
|tip You cannot mount for the next few steps while pulling the Cauldron behind you.
step
_Go up_ the small hill here |goto 39.3,23.8 < 10 |only if walking
_Cross_ the bridge |goto 40.8,25.0 < 10 |only if walking
_Go up_ the stairs |goto 41.1,24.2 < 10 |only if walking
Return with the Boiling Cauldron |q 29628/2
talk Groundskeeper Wu##54915
turnin A Strong Back##29628 |goto 41.6,23.7
|tip You cannot mount for the next few steps while pulling the Cauldron behind you.
step
kill 10 Greenwood Trickster##54987+ |q 29630/1 |goto 38.1,21.1
|tip You can mount again.
step
kill Waxwood Matriarch##55238+, Waxwood Hunter##54988+
Kill 6 Waxwood Hunters |q 29631/1 |goto 35.0,21.5
click Blushleaf Cluster
|tip They look like small red bushes
|tip This channel determines how many extracts you obtain per plant so try not to get interrupted or move
collect 80 Blushleaf Extract##73193 |q 29629/1 |goto 35.0,21.5
step
talk Guard Shan Long##55094
turnin Burning Bright##29631 |goto 38.0,23.8
step
_Go up_ the stairs up |goto 41.1,24.3 < 10 |only if walking
talk Groundskeeper Wu##54915
turnin A Steady Hand##29629 |goto 41.6,23.7
turnin And a Heavy Fist##29630 |goto 41.6,23.7
accept Flying Colors##29646 |goto 41.6,23.7
step
_Go up_ the stairs |goto 42.4,25.0 < 10 |only if walking
talk High Elder Cloudfall##54914
turnin Flying Colors##29646 |goto 42.7,23.2
step
_Enter_ the cave |goto 46.0,29.1 < 10 |only if walking
|tip It is just outside of the monastery
step
talk Hao Mann##56347
turnin Mann's Man##29927 |goto The Jade Forest/6 62.2,38.0
accept Trapped!##29929 |goto The Jade Forest/6 62.2,38.0
step
clicknpc Greenstone Miner##56464
|tip Marking them with Shift+v makes them much easier to find (Use v to mark enemies again).
Free 8 Gemstone Miners |q 29929/1
kill 6 Greenstone Gorger##56404 |q 29926/2 |goto The Jade Forest/6 62.2,38.0
kill 12 Greenstone Nibbler##56401 |q 29926/1 |goto The Jade Forest/6 62.2,38.0
step
talk Hao Mann##56467
turnin Trapped!##29929 |goto The Jade Forest 46.3,29.4
accept What's Mined Is Yours##29930 |goto The Jade Forest 46.3,29.4
step
clicknpc Jade Cart##56527 |goto The Jade Forest 46.3,29.5
Defend the Jade Cart from Brittle Greenstone Gorgers until you reach your location |goto The Jade Forest 51.2,26.7 < 5 |c
step
talk Foreman Mann##56346
turnin Calamity Jade##29926 |goto The Jade Forest 50.9,27.0
turnin What's Mined Is Yours##29930 |goto The Jade Forest 50.9,27.0
accept The Serpent's Heart##29931 |goto The Jade Forest 50.9,27.0
step
talk Foreman Raike##59391
turnin The Serpent's Heart##29931 |goto The Jade Forest 48.3,61.4
accept Love's Labor##30495 |goto The Jade Forest 48.3,61.4
step
talk Historian Dinh##59395
Tell him you've got a new shipment for him |q 30495/1 |goto The Jade Forest 46.4,61.8
step
talk Surveyor Sawa##59401
Tell him you've got his jade |q 30495/2 |goto The Jade Forest 46.9,60.4
step
talk Kitemaster Shoku##59392
Tell him you have a jade delivery for him |q 30495/3 |goto The Jade Forest 48.2,60.0
step
talk Kitemaster Shoku##59392 |goto The Jade Forest 48.2,60.0
Tell him you need a ride to the top of the statue |goto The Jade Forest 47.5,60.6 < 10
confirm
step
talk Taskmaster Emi##59397
Ask her if somebody said they needed jade |q 30495/4 |goto The Jade Forest 47.6,60.7
step
talk Kitemaster Inga##59400 |goto The Jade Forest 47.4,60.5
Tell her you need a ride to the bottom of the statue |goto The Jade Forest 48.2,60.0 < 10
confirm
step
talk Foreman Raike##59391
turnin Love's Labor##30495 |goto The Jade Forest 48.3,61.4
accept The Temple of the Jade Serpent##29932 |goto The Jade Forest 48.3,61.4
step
talk Kitemaster Shoku##59392 |goto The Jade Forest 48.2,60.0
Tell him to take you to Temple of the Jade Serpent |goto The Jade Forest 55.7,57.1 < 10
confirm
step
talk Elder Sage Wind-Yi##57242
Tell her you have a message for the Jade Serpent |q 29932/1 |goto The Jade Forest 55.8,57.1
step
talk Elder Sage Rain-Zhu##56782
turnin The Temple of the Jade Serpent##29932 |goto The Jade Forest 58.1,58.7
accept The Scryer's Dilemma##29997 |goto The Jade Forest 58.1,58.7
accept The Librarian's Quandary##29998 |goto The Jade Forest 58.1,58.7
step
talk Fei##56784
accept The Rider's Bind##29999 |goto The Jade Forest 58.1,59.0
accept Lighting Up the Sky##30005 |goto The Jade Forest 58.1,59.0
stickystart "launchers"
step
clicknpc Playful Emerald Serpent##56859
Playful Emerald Serpent found |q 29999/3 |goto The Jade Forest 56.5,58.4
step
talk Lorewalker Stonestep##56786
turnin The Librarian's Quandary##29998 |goto The Jade Forest 56.3,60.4
accept Moth-Ridden##30001 |goto The Jade Forest 56.3,60.4
accept Pages of History##30002 |goto The Jade Forest 56.3,60.4
step
click Infested Book##209594
kill 12 Bookworm##57237 |q 30002/1 |goto 56.0,60.3
Right click on the Bookworms until they die.
kill 8 Dappled Moth##57232 |q 30001/1 |goto 56.0,60.3
step
talk Lorewalker Stonestep##56786
turnin Moth-Ridden##30001 |goto The Jade Forest 56.3,60.4
turnin Pages of History##30002 |goto The Jade Forest 56.3,60.4
accept Everything In Its Place##30004 |goto The Jade Forest 56.3,60.4
step
clicknpc Playful Gold Serpent##56850
Playful Gold Serpent found |q 29999/4 |goto 56.0,60.3
step
clicknpc Playful Crimson Serpent##56852
Playful Crimson Serpent found |q 29999/2 |goto The Jade Forest 58.2,61.4
step
talk Elder Sage Rain-Zhu##56782
turnin Everything In Its Place##30004 |goto The Jade Forest 58.1,58.7
step
clicknpc Playful Azure Serpent##56853
Playful Azure Serpent found |q 29999/1 |goto The Jade Forest 59.2,56.8
step
kill Water Fiend##56820
collect Scryer's Staff##76725 |q 29997/1 |goto The Jade Forest 57.1,55.8
step
talk Wise Mari##56787
turnin The Scryer's Dilemma##29997 |goto The Jade Forest 57.6,56.0
accept A New Vision##30011 |goto The Jade Forest 57.6,56.0
step
label "launchers"
Follow the path back |goto 58.0,56.2 < 10 |only if walking
click Firework Launcher##210004
Fireworks launched |q 30005/1 |goto The Jade Forest 57.5,61.4
step
talk Elder Sage Rain-Zhu##56782
turnin A New Vision##30011 |goto The Jade Forest 58.1,58.7
step
talk Fei##56784
turnin The Rider's Bind##29999 |goto The Jade Forest 58.1,59.1
turnin Lighting Up the Sky##30005 |goto The Jade Forest 58.1,59.1
accept The Jade Serpent##30000 |goto The Jade Forest 58.1,59.1
step
Listen to the Jade Dragon's Tale |goto The Jade Forest 55.3,57.1 < 10
talk Elder Sage Wind-Yi##57242
turnin The Jade Serpent##30000 |goto The Jade Forest 55.9,57.1
accept Get Back Here!##30499 |goto The Jade Forest 55.9,57.1
step
talk Ginsa Arroweye##59727
fpath Jade Temple Grounds |goto The Jade Forest 54.6,61.7
Tell her You could use a kite to Grooken' Hill. |goto 28.0,47.0 < 10
step
talk General Nazgrim##57108
turnin The Time For War##30499 |goto The Jade Forest 28.0,47.2
accept Sufficient Motivation##30466 |goto The Jade Forest 28.0,47.2
accept Gauging Our Progress##30484 |goto The Jade Forest 28.0,47.2
stickystart "motivatehozen"
step
click Bucket of Slickies |q 30466/2 |goto 28.1,47.4
step
talk Rivett Clutchpop##59305
Tell him Nazgrim needs an update |q 30484/2 |goto The Jade Forest 28.4,47.8
step
talk Shademaster Kiryn##56841
Tell her Nazgrim wants an update on her progress |q 30484/1 |goto The Jade Forest 29.2,50.9
step
talk Shokia##56838
Tell her Nazgrim needs her training report |q 30484/3 |goto The Jade Forest 28.5,51.9
step
talk Riko##56840
Tell him Nazgrim wants to know the status of the supplies |q 30484/4 |goto The Jade Forest 27.0,54.9
step
label "motivatehozen"
Use your Bucket of Slicky Water on Lazy Hozens |use Bucket of Slicky Water##79884
|tip They are all over Grookin Hill. Use Shift+v to make them easier to spot (Use v to mark enemies again).
Motivate 10 Hozen |q 30466/1 |goto The Jade Forest 28.1,48.0
step
talk General Nazgrim##57108
turnin Sufficient Motivation##30466 |goto The Jade Forest 28.0,47.2
turnin Gauging Our Progress##30484 |goto The Jade Forest 28.0,47.2
step
talk Lorewalker Cho##59377
accept Last Piece of the Puzzle##30485 |goto The Jade Forest 28.2,46.7
step
talk Mishi##64207 |goto The Jade Forest 28.2,46.7
Tell him you are ready to leave |goto The Jade Forest 44.6,67.2 < 10
talk Sky Dancer Ji##64310
fpath Serpent's Overlook |goto 43.1,68.5
step
Use Ka Pao's Meditation Candle |use Ka Pao's Meditation Candle##80071
Watch the cutscene
Reveal the Mystery of the Frescos |q 30485/1 |goto The Jade Forest 44.5,66.9
step
talk Lorewalker Cho##59411
turnin Last Piece of the Puzzle##30485 |goto The Jade Forest 44.8,67.1
accept The Seal is Broken##31303 |goto The Jade Forest 44.8,67.1
step
talk Mishi##64244
Tell him let's do this! |invehicle |goto 44.8,67.0
step
While riding Mishi, use your ability to target and close Sha Fissures.
They are white circles with pillars of smoke coming out of them.
12 Sha Fissures Sealed |q 31303/1
step
talk Lorewalker Cho##59418
turnin The Seal is Broken##31303 |goto The Jade Forest 49.3,61.5
accept Emergency Response##30504 |goto The Jade Forest 49.3,61.5
accept Residual Fallout##30500 |goto The Jade Forest 49.3,61.5
accept Jaded Heart##30502 |goto The Jade Forest 49.3,61.5
stickystart "shaecho"
step
|use Cho's Fireworks##86467
General Nazgrim Rescued |q 30504/1 |goto 48.1,61.7
step
|use Cho's Fireworks##86467
Shademaster Kiryn Rescued |q 30504/2 |goto 47.2,62.5
step
|use Cho's Fireworks##86467
Shokia Rescued |q 30504/3 |goto 46.9,60.7
step
|use Cho's Fireworks##86467
Rivett Clutchpop Rescued |q 30504/4 |goto 48.0,59.1
step
label "shaecho"
kill 10 Sha Echo |q 30500/1 |goto 48.4,60.2
click Celestial Jade##210921
Use your Celestial Jade on Sha Remnants. |use Celestial Jade##80074
kill 6 Sha Remnant |q 30502/1 |goto 48.4,60.2
step
talk Lorewalker Cho##59418
turnin Jaded Heart##30502 |goto The Jade Forest 49.3,61.5
turnin Residual Fallout##30500 |goto The Jade Forest 49.3,61.5
turnin Emergency Response##30504 |goto The Jade Forest 49.3,61.5
step
talk Fei##59899
accept Moving Forward##30648 |goto The Jade Forest 49.3,61.4
step
talk Fei##59899
Tell her that you're ready to leave.
Travel to the Valley of the Four Winds |q 30648/1 |goto 49.3,61.4
step
Click the Quest complete box located at the top right of your screen.
turnin Moving On##30648
step
talk Shao the Defiant##54697
accept Defiance##29578 |goto The Jade Forest 43.5,75.9
accept Rally the Survivors##29579 |goto The Jade Forest 43.5,75.9
step
talk Gentle Mother Hanae##54854
accept Spitfire##29585 |goto 43.3,75.7
accept Orchard-Supplied Hardware##29580 |goto 43.3,75.7
step
kill 8 Gormali Incinerator##54703+ |q 29578/2 |goto 44.5,72.9
kill 8 Gormali Raider##54702+ |q 29578/1 |goto 44.5,72.9
talk Nectarbreeze Farmer##54763
|tip You can mark them with shift+v and they'll be easier to find (Use v to mark enemies again).
Tell them to get to Hanae's house
Rescue 5 Survivors |q 29579/1
click Orchard Tool##209345
|tip Small shovels and rakes laying on the ground around this area
collect 6 Orchard Tool##72133 |q 29580/1
Use the Nectarbreeze Cider in your bags on fires around town |use Nectarbreeze Cider##72578
|tip You must be facing the fire for this to work.
12 Orchard Fires Put Out |q 29585/1 |goto 44.5,72.9
step
talk Shao the Defiant##54697
turnin Defiance##29578 |goto 43.5,75.9
turnin Rally the Survivors##29579 |goto 43.5,75.9
step
talk Gentle Mother Hanae##54854
turnin Spitfire##29585 |goto 43.3,75.7
turnin Orchard-Supplied Hardware##29580 |goto 43.3,75.7
step
talk Traumatized Nectarbreeze Farmer##55209
accept The Splintered Path##29586 |goto 43.2,75.9
step
Discover Camp Mogu |q 29586/1 |goto 41.0,74.0
step
talk Shao the Defiant##55009
turnin The Splintered Path##29586 |goto 41.0,74.0
accept Unbound##29587 |goto 41.0,74.0
accept Getting Down to Business##29670 |goto 41.0,74.0
stickystart "freefarmers"
step
kill Subjugator Gormal##55016 |q 29670/1 |goto 37.8,76.2
step
label "freefarmers"
clicknpc Captured Nectarbreeze Farmer##54990
|tip You can use shift+v to mark them (Use v to mark enemies again).
Free 10 Farmers |q 29587/1 |goto 39.8,74.8
step
talk Shao the Defiant##55009
turnin Unbound##29587 |goto 41.0,74.0
turnin Getting Down to Business##29670 |goto 41.0,74.0
]])
