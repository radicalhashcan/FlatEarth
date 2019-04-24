local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("DungeonAWOD") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Draenor Dungeons\\Iron Docks",{
mapid=595,
achieveid={9047},
condition_suggested=function() return level>=92 and level<=100 and _G.GetAverageItemLevel()>520 end,
keywords={"ID, Gorgrond, Draenor"},
author="support@zygorguides.com",
description="This guide will walk you through the Iron Docks dungeon.",
},[[
step
Press _I_ and queue for Iron Docks or enter the dungeon with your group |goto Iron Docks/1 30.6,44.5 < 100 |c
stickystart "Compass"
step
map Iron Docks/1
path follow loose;loop off;ants straight
path	33.6,40.7	37.8,35.5	42.0,34.4
Follow the path |goto Iron Docks/1 42.0,34.4
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Fleshrender Nok'gar##87451
_TANK:_ |grouprole TANK
|tip Move Nok'gar and Dreadfang out of Barbed Arrow Barrage and Burning Arrows. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Move out of Barbed Arrow Barrage and Burning Arrows quickly. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Move out of Barbed Arrow Barrage and Burning Arrows quickly. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Stop attacking when Nok'gar has Reckless Provocation. This is a shield-looking effect. |grouprole EVERYONE
|tip Avoid Shredding Swipes when Dreadfang charges forward. |grouprole EVERYONE
Defeat Fleshrender Nok'gar |scenariogoal 25108 |goto Iron Docks/1 47.8,34.1
step
label "Compass"
click Strange Brass Compass##237463
collect the Strange Brass Compass##118618 |q The Search Continues##37231/1 |goto Iron Docks/1 47.0,26.4 |only if havequest(37231)
collect the Strange Brass Compass##118618 |q The Brass Compass##37155/1 |goto Iron Docks/1 47.0,26.4 |only if havequest(37155)
|tip It's a small brass-colored compass next to the barrel and crate.
|only if havequest(37231) or havequest(37155)
stickystart "Expensive"
step
map Iron Docks/1
path follow loose;loop off;ants straight
path	46.4,34.2	49.2,47.6	39.6,48.6
path	37.9,55.5	49.5,67.6	64.3,76.3
path	76.4,76.6
Follow the path |goto Iron Docks/1 76.4,76.6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "Expensive"
click Horribly Acidic Solution##237462
collect the Horribly Acidic Solution##118617 |q Bloody Expensive##37230/1 |goto Iron Docks/1 50.4,52.4 |only if havequest(37230)
collect the Horribly Acidic Solution##118617 |q Feeling A Bit Morose##37157/1 |goto Iron Docks/1 50.4,52.4 |only if havequest(37157)
|tip It's a greenish glowing bottle on top of the barrel.
|only if havequest(37230) or havequest(37157)
step
kill Ahrj'ok Dugrv##87452, Neelsa Nox##80808, Makogg Emberblade##86231
_TANK:_ |grouprole TANK
|tip Avoid attacking any Enforcer protected with Sanguine Sphere. |grouprole TANK
|tip Face Makogg away from the group. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Switch between killing Ahrj'ok Dugrv and Neelsa Nox depending on who doesn't have the Sanguine Sphere. |grouprole DAMAGE
|tip Avoid attacking any Enforcer protected with Sanguine Sphere. |grouprole DAMAGE
_EVERYONE:_ |grouprole EVERYONE
|tip Do not step on Ogre Traps. Doing so will make you vulnerable to Big Boom. |grouprole EVERYONE
|tip Spread out when Neesa fires Hyper-Jumper Cables 9000-XL. |grouprole EVERYONE
Defeat the Grimrail Enforcers |scenariogoal 25109 |goto Iron Docks/1 80.2,75.3
stickystart "Gambit"
step
map Iron Docks/1
path follow loose;loop off;ants straight
path	83.5,76.2	86.4,68.9	86.5,24.8
Follow the path |goto Iron Docks/1 86.5,24.8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "Gambit"
click Very Shiny Thing##237478
collect the Very Shiny Thing##118647 |q Budd's Gambit##37145/1 |goto Iron Docks/1 85.9,48.7
|tip It's a small gold disk on top of the crate.
|only if havequest(37145)
step
kill Oshir##86232
_TANK:_ |grouprole TANK
|tip Focus damage on Oshir during Feeding Frenzy. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Focus damage on Oshir during Feeding Frenzy. |grouprole DAMAGE
|tip When Oshir casts Breakout, kill the beasts quickly. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Focus healing on the target of Feeding Frenzy. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Stay out of Acid Splash on the floor. |grouprole EVERYONE
|tip When Oshir flips backward, avoid his Primal Assault. |grouprole EVERYONE
_Heroic Difficulty_: |only if heroic_dung()
|tip Ravenous Wolves gain a damage buff when near each other. Keep them separated. |only if heroic_dung()
Defeat Oshir |scenariogoal 25110 |goto Iron Docks/1 80.4,17.4
step
map Iron Docks/1
path follow loose;loop off;ants straight
path	79.3,19.6	71.9,28.0	69.4,34.2
Follow the path |goto Iron Docks/1 69.4,34.2
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Skulloc##86233
_TANK:_ |grouprole TANK
|tip Face Koramar away from the group. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill both Zoggosh and Koramar to minimize damage to the group. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Be sure to look out for the tank, Skulloc has high hitting auto attack damage. |grouprole HEALER
_EVERYONE:_ |grouprole EVERYONE
|tip Take cover behind crates during Cannon Barrage, moving foreward between shots. |grouprole EVERYONE
|tip Avoid the rear of the ship during Cannon Barrage. Backdraft will kill you. |grouprole EVERYONE
|tip Avoid standing between Zoggosh and his Rapid Fire target. |grouprole EVERYONE
Defeat Skulloc |scenariogoal 1/34453 |goto Iron Docks/1 68.4,43.6
Slay Skulloc |q The Search Continues##37231/2 |goto Iron Docks/1 68.4,43.6 |only if havequest(37231)
Slay Skulloc |q Bloody Expensive##37230/2 |goto Iron Docks/1 68.4,43.6 |only if havequest(37230)
Slay Skulloc |q Budd's Gambit##37145/2 |goto Iron Docks/1 68.4,43.6 |only if havequest(37145)
step
Proceeding |next "Dailies Guides\\Warlords of Draenor Dailies\\Garrison Building Dailies::Inn_Turnin"
only if havequest(37231) or havequest(37230) or havequest(37145)
step
Congratulations, you have completed the _Iron Docks_!
]])
