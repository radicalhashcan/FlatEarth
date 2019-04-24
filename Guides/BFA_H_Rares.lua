local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("PoiRareBFA") then return end
ZygorGuidesViewer.GuideMenuTier = "BFA"
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\POI BFA Rares",{
hidden=true,
poi=true,
poitype=rare,
},[[
step
|poi_rare Atal'zul Gotaka
|poilvl 110
|poispot Zuldazar/0 80.97,21.59
|poiquest 50280
|poicurrency AZ
|poiitem 161042
click Rope |goto Zuldazar/0 80.81,20.48
Climb Onto the Ship |goto 80.85,20.30 < 2 |noway |c |q 50280 |future
step
click Rope |goto 80.85,20.29
Board the Ship |goto 80.88,20.39 < 2 |noway |c |q 50280 |future
step
kill Atal'zul Gotaka##129961 |goto 80.97,21.61 |q 50280 |future
|tip On the deck of the ship.
step
|poi_rare Gahz'ralka
|poilvl 110
|poispot Zuldazar/0 64.25,32.71
|poiquest 50439
|poicurrency AZ
|poiitem 161043
kill Gahz'ralka##129954 |q 50439 |future |goto Zuldazar/0 64.25,32.71
|tip In the water under the bridge.
step
|poi_rare Dark Chronicler
|poilvl 110
|poispot Zuldazar/0 44.12,76.51
|poiquest 51083
|poicurrency AZ
|poiitem 160979
kill Dark Chronicler##136428 |goto Zuldazar/0 44.12,76.51 |q 51083 |future
|tip Inside the cave.
step
|poi_rare Syrawon the Dominus
|poiaccess Completionist
|poilvl 110
|poispot Zuldazar/0 53.36,44.61
|poiquest 51080
|poicurrency AZ
|poiitem 161047
Enter the cave |goto Zuldazar/0 53.89,44.88 < 20 |walk
kill Syrawon the Dominus##136413 |goto 53.36,44.61 |q 51080 |future
|tip Inside the cave.
step
|poi_rare Zayoos
|poilvl 110
|poispot Zuldazar/0 47.98,54.24
|poiquest 49972
|poicurrency AZ
|poiitem 161125
kill Zayoos##131476 |goto Zuldazar/0 47.98,54.24 |q 49972 |future
step
|poi_rare Lei-zhi
|poiaccess Completionist
|poilvl 110
|poispot Zuldazar/0 58.68,74.19
|poiquest 49911
|poicurrency AZ
|poiitem 161033
kill Lei-zhi##131233 |goto Zuldazar/0 58.68,74.19 |q 49911 |future
step
|poi_rare Avatar of Xolotal
|poilvl 110
|poispot Zuldazar/0 49.83,57.42
|poiquest 49410
|poicurrency AZ
|poiitem 161034
Enter the cave |goto Zuldazar/0 49.57,59.00 < 10 |walk
kill Avatar of Xolotal##129343 |goto 49.83,57.42 |q 49410 |future
|tip Inside the cave.
step
|poi_rare Bloodbulge
|poilvl 110
|poispot Zuldazar/0 59.84,18.29
|poiquest 49267
|poicurrency AZ
|poiitem 161104
kill Bloodbulge##128699 |goto Zuldazar/0 59.84,18.29 |q 49267 |future
step
|poi_rare Torraske the Eternal
|poilvl 110
|poispot Zuldazar/0 46.66,65.23
|poiquest 49004
|poicurrency AZ
|poiitem 161029
kill Torraske the Eternal##127939 |goto Zuldazar/0 46.66,65.23 |q 49004 |future
|tip He walks around this area.
step
|poi_rare Kandak
|poiaccess Completionist
|poilvl 110
|poispot Zuldazar/0 68.67,48.74
|poiquest 48543
|poicurrency AZ
|poiitem 160984
Enter the cave |goto Zuldazar/0 68.84,47.14 < 10 |only if walking
kill Kandak##126637 |goto 68.67,48.74 |q 48543 |future
step
|poi_rare Kul'krazahn
|poiaccess Completionist
|poilvl 110
|poispot Dazar'alor/0 55.00,82.54
|poiquest 48333
|poicurrency AZ
|poiitem 160947
kill Kul'krazahn##120899 |goto Dazar'alor/0 55.00,82.54 |q 48333 |future
step
|poi_rare Golrakahn
|poilvl 110
|poispot Zuldazar/0 74.12,28.49
|poiquest 47792
|poicurrency AZ
|poiitem 161035
Run up the stairs |goto 73.43,28.20 < 10 |only if walking
kill Golrakahn##124185 |goto Zuldazar/0 74.12,28.49 |q 47792 |future
step
|poi_rare Darkspeaker Jo'la
|poilvl 110
|poispot Zuldazar/0 65.38,10.24
|poiquest 50693
|poicurrency AZ
|poiitem 160958
kill Darkspeaker Jo'la##134760 |goto Zuldazar/0 65.38,10.24 |q 50693 |future
step
|poi_rare Hakbi the Risen
|poilvl 110
|poispot Zuldazar/0 42.04,36.22
|poiquest 50677
|poicurrency AZ
|poiitem 160978
kill Hakbi the Risen##134738 |goto Zuldazar/0 42.04,36.22 |q 50677 |future
step
|poi_rare Vukuba
|poilvl 110
|poispot Zuldazar/0 61.90,46.22
|poiquest 50508
|poicurrency AZ
|poiitem 162613
Enter the cave |goto Zuldazar/0 62.01,46.22 < 10 |walk
click Strange Egg##134049
|tip Inside the cave.
Choose _"Investigate the egg."_
kill Vukuba##134048 |goto Zuldazar/0 61.90,46.22 |q 50508 |future
step
|poi_rare Warcrawler Karkithiss
|poilvl 110
|poispot Zuldazar/0 43.92,25.48
|poiquest 50438
|poicurrency AZ
|poiitem 161040
Enter the cave |goto Zuldazar/0 44.26,25.18 < 10 |walk
kill Warcrawler Karkithiss##133842 |goto 43.92,25.48 |q 50438 |future
|tip Inside the cave.
step
|poi_rare Murderbeak
|poilvl 110
|poispot Zuldazar/0 60.68,66.19
|poiquest 50281
|poicurrency AZ
|poiitem 161022
click Chum Bucket##281130
Choose _"Toss the chum into the sea."_
Kill the enemies that attack
kill Murderbeak##134782 |goto Zuldazar/0 60.68,66.19 |q 50281 |future
step
|poi_rare Daggerjaw
|poilvl 110
|poispot Zuldazar/0 74.28,39.44
|poiquest 50269
|poicurrency AZ
kill Daggerjaw##133190 |goto Zuldazar/0 74.28,39.44 |q 50269 |future
|tip Underwater.
step
|poi_rare G'Naat
|poilvl 110
|poispot Zuldazar/0 79.98,35.96
|poiquest 50260
|poicurrency AZ
kill G'Naat##133155 |goto Zuldazar/0 79.98,35.96 |q 50260 |future
step
|poi_rare Kiboku
|poilvl 110
|poispot Zuldazar/0 75.63,35.90
|poiquest 50159
|poicurrency AZ
|poiitem 161112
kill Kiboku##132244 |goto Zuldazar/0 75.63,35.90 |q 50159 |future
step
|poi_rare Bramblewing
|poilvl 110
|poispot Zuldazar/0 66.74,32.29
|poiquest 50034
|poicurrency AZ
|poiitem 161020
kill Bramblewing##131718 |goto Zuldazar/0 66.74,32.29 |q 50034 |future
step
|poi_rare Tambano
|poilvl 110
|poispot Zuldazar/0 77.71,10.18
|poiquest 50013
|poicurrency AZ
|poiitem 161109
kill Tambano##131687 |goto Zuldazar/0 77.71,10.18 |q 50013 |future
|tip It walks around this area.
step
|poi_rare Ancient Jawbreaker
|poilvl 110
|poispot Nazmir/0 67.81,29.51
|poiquest 48063
|poicurrency AZ
kill Ancient Jawbreaker##125250 |goto Nazmir/0 67.81,29.51 |q 48063 |future
step
|poi_rare Azerite-Infused Slag
|poilvl 110
|poispot Nazmir/0 33.13,26.99
|poiquest 50563
|poicurrency AZ
kill Azerite-Infused Slag##134293 |goto Nazmir/0 33.13,26.99 |q 50563 |future
step
|poi_rare Uroku the Bound
|poilvl 110
|poispot Nazmir/0 44.27,48.78
|poiquest 49305
|poicurrency AZ
kill Uroku the Bound##128965 |goto Nazmir/0 44.27,48.78 |q 49305 |future
step
|poi_rare Chag's Challenge
|poilvl 110
|poispot Nazmir/0 67.99,19.81
|poiquest 50567
|poicurrency AZ
talk Chag##134297
Tell him _"I'll fight your summoned creature."_
Watch the dialogue
kill Lucille##134296 |goto Nazmir/0 67.99,19.81 |q 50567 |future
step
|poi_rare Cursed Chest
|poilvl 110
|poispot Nazmir/0 81.80,30.54
|poiquest 48057
|poicurrency AZ
click Cursed Chest##272631
Choose _<Attempt to open the chest.>_
kill Cursed Chest##125232 |goto Nazmir/0 81.80,30.54 |q 48057 |future
step
|poi_rare Glompmaw
|poilvl 110
|poispot Nazmir/0 68.68,57.45
|poiquest 50361
|poicurrency AZ
kill Glompmaw##121242 |goto Nazmir/0 68.68,57.45 |q 50361 |future
|tip He swims underwater around this area.
step
|poi_rare Queen Tzxi'kik
|poilvl 110
|poispot Nazmir/0 57.72,67.71
|poiquest 49312
|poicurrency AZ
kill Queen Tzxi'kik##128974 |goto Nazmir/0 57.72,67.71 |q 49312 |future
step
|poi_rare Jax'teb the Reanimated
|poilvl 110
|poispot Nazmir/0 45.18,51.89
|poiquest 50307
|poicurrency AZ
kill Jax'teb the Reanimated##133373 |goto Nazmir/0 45.18,51.89 |q 50307 |future
step
|poi_rare Kal'draxa
|poilvl 110
|poispot Nazmir/0 52.90,13.15
|poiquest 47843
|poicurrency AZ
kill Kal'draxa##124397 |goto Nazmir/0 52.90,13.15 |q 47843 |future
step
|poi_rare Lost Scroll
|poilvl 110
|poispot Nazmir/0 81.68,61.07
|poiquest 50565
|poicurrency AZ
click Lost Scroll##134295
kill Enraged Water Elemental##134294 |goto Nazmir/0 81.68,61.07 |q 50565 |future
step
|poi_rare Scout Skrasniss
|poilvl 110
|poispot Nazmir/0 59.14,38.78
|poiquest 48972
|poicurrency AZ
kill Scout Skrasniss##127820 |goto Nazmir/0 59.14,38.78 |q 48972 |future
step
|poi_rare Tainted Guardian
|poilvl 110
|poispot Nazmir/0 31.51,38.20
|poiquest 48508
|poicurrency AZ
kill Tainted Guardian##126460 |goto Nazmir/0 31.51,38.20 |q 48508 |future
step
|poi_rare Wardrummer Zurula
|poilvl 110
|poispot Nazmir/0 48.96,50.77
|poiquest 48623
|poicurrency AZ
kill Wardrummer Zurula##126907 |goto Nazmir/0 48.96,50.77 |q 48623 |future
|tip At the top of the tower.
step
|poi_rare Za'amar the Queen's Blade
|poilvl 110
|poispot Nazmir/0 38.79,26.75
|poiquest 49469
|poicurrency AZ
Enter the crypt |goto Nazmir/0 38.77,28.79 < 10 |walk
kill Za'amar the Queen's Blade##129657 |goto 38.79,26.75 |q 49469 |future
|tip Inside the crypt.
step
|poi_rare Lo'kuno
|poilvl 110
|poispot Nazmir/0 77.72,45.16
|poiquest 50355
|poicurrency AZ
kill Lo'kuno##133539 |goto Nazmir/0 77.72,45.16 |q 50355 |future
step
|poi_rare Azerite-Infused Elemental
|poilvl 110
|poispot Nazmir/0 54.07,81.09
|poiquest 50569
|poicurrency AZ
kill Azerite-Infused Elemental##134298 |goto Nazmir/0 54.07,81.09 |q 50569 |future
|tip He walks around this area.
step
|poi_rare King Kooba
|poilvl 110
|poispot Nazmir/0 53.42,42.84
|poiquest 49317
|poicurrency AZ
Run up the stairs |goto Nazmir/0 52.62,44.08 < 15 |only if walking
kill King Kooba##129005 |goto 53.42,42.84 |q 49317 |future
step
|poi_rare Corpse Bringer Yal'kar
|poilvl 110
|poispot Nazmir/0 41.31,53.43
|poiquest 48462
|poicurrency AZ
kill Corpse Bringer Yal'kar##126187 |goto Nazmir/0 41.31,53.43 |q 48462 |future
step
|poi_rare Gwugnug the Cursed
|poilvl 110
|poispot Nazmir/0 33.80,85.99
|poiquest 48638
|poicurrency AZ
Follow the path |goto Nazmir/0 32.94,86.03 < 15 |only if walking
Enter the cave |goto 33.47,87.11 < 10 |only if walking
kill Gwugnug the Cursed##127001 |goto 33.80,85.99 |q 48638 |future
|tip Inside the cave.
step
|poi_rare Gutrip
|poilvl 110
|poispot Nazmir/0 32.80,43.10
|poiquest 49231
|poicurrency AZ
kill Gutrip##128426 |goto Nazmir/0 32.80,43.10 |q 49231 |future
|tip It walks around this area.
|tip It will appear on your minimap as a yellow star.
step
|poi_rare Juba the Scarred
|poilvl 110
|poispot Nazmir/0 28.12,34.11
|poiquest 50342
|poicurrency AZ
kill Juba the Scarred##133527 |goto Nazmir/0 28.12,34.11 |q 50342 |future
|tip He walks around this area.
step
|poi_rare Krubbs
|poilvl 110
|poispot Nazmir/0 75.71,35.95
|poiquest 48052
|poicurrency AZ
kill Krubbs##125214 |goto Nazmir/0 75.71,35.95 |q 48052 |future
|tip Inside the building.
step
|poi_rare Bajiatha
|poilvl 110
|poispot Nazmir/0 42.83,60.53
|poiquest 48439
|poicurrency AZ
kill Bajiatha##126142 |goto Nazmir/0 42.83,60.53 |q 48439 |future
step
|poi_rare Totem Maker Jash'ga
|poilvl 110
|poispot Nazmir/0 49.42,37.69
|poiquest 48406
|poicurrency AZ
kill Totem Maker Jash'ga##126056 |goto Nazmir/0 49.42,37.69 |q 48406 |future
|tip Inside the building.
step
|poi_rare Venomjaw
|poilvl 110
|poispot Nazmir/0 29.51,50.80
|poiquest 48626
|poicurrency AZ
kill Venomjaw##126926 |goto Nazmir/0 29.51,50.80 |q 48626 |future
|tip He walks around this area.
|tip Pull him away, out of the cloud of green spores.
step
|poi_rare Xu'ba
|poilvl 110
|poispot Nazmir/0 36.54,50.52
|poiquest 50348
|poicurrency AZ
kill Xu'ba##133531 |goto Nazmir/0 36.54,50.52 |q 50348 |future
step
|poi_rare Zanxib
|poilvl 110
|poispot Nazmir/0 38.88,71.48
|poiquest 50423
|poicurrency AZ
kill Zanxib##133812 |goto Nazmir/0 38.74,71.43 |q 50423 |future
|tip He walks around this area.
step
|poi_rare Mala'kili and Rohnkor
|poilvl 110
|poispot Nazmir/0 52.62,53.66
|poiquest 50040
|poicurrency AZ
kill Mala'kili##128935 |goto Nazmir/0 52.62,53.66 |q 50040 |future
|tip He runs around this area.
step
|poi_rare Ak'tar
|poilvl 110
|poispot Vol'dun/0 50.33,81.63
|poiquest 51105
|poicurrency AZ
kill Ak'tar##135852 |goto Vol'dun/0 50.33,81.63 |q 51105 |future
step
|poi_rare Ashmane
|poilvl 110
|poispot Vol'dun/0 54.70,15.14
|poiquest 51095
|poicurrency AZ
Follow the path up |goto Vol'dun/0 55.77,16.59 < 20 |only if walking
Cross the bridge |goto 54.40,16.81 < 15 |only if walking
kill Ashmane##130439 |goto 54.70,15.14 |q 51095 |future
step
|poi_rare Azer'tor
|poilvl 110
|poispot Vol'dun/0 49.03,89.03
|poiquest 51096
|poicurrency AZ
Enter the cave |goto Vol'dun/0 47.88,88.15 < 20 |walk
Follow the path down |goto 48.64,89.05 < 10 |walk
kill Azer'tor##128553 |goto 49.03,89.03 |q 51096 |future
|tip Inside the cave.
step
|poi_rare Bajiani the Slick
|poilvl 110
|poispot Vol'dun/0 31.00,81.09
|poiquest 51117
|poicurrency AZ
kill Bajiani the Slick##128497 |goto Vol'dun/0 31.00,81.09 |q 51117 |future
step
|poi_rare Bloodwing Bonepicker
|poilvl 110
|poispot Vol'dun/0 56.06,53.60
|poiquest 51118
|poicurrency AZ
Follow the path up |goto Vol'dun/0 57.36,53.54 < 15 |only if walking
clicknpc Enormous Egg##136390
|tip At the top of the mountain.
kill Bloodwing Bonepicker##136393 |goto 56.06,53.60 |q 51118 |future
step
|poi_rare Captain Stef "Marrow" Quin
|poilvl 110
|poispot Vol'dun/0 41.32,24.18
|poiquest 51120
|poicurrency AZ
kill Captain Stef "Marrow" Quin##136346 |goto Vol'dun/0 41.32,24.18 |q 51120 |future
|tip She walks around this area.
step
|poi_rare Commodore Calhoun
|poilvl 110
|poispot Vol'dun/0 42.51,92.08
|poiquest 51098
|poicurrency AZ
Follow the path up |goto Vol'dun/0 43.00,92.30 < 15 |only if walking
Cross the bridge |goto 43.47,91.70 < 15 |only if walking
kill Commodore Calhoun##124722 |goto 42.51,92.08 |q 51098 |future
|tip Up on the wooden dock.
step
|poi_rare Enraged Krolusk
|poilvl 110
|poispot Vol'dun/0 61.99,37.85
|poiquest 51121
|poicurrency AZ
kill Enraged Krolusk##136335 |goto Vol'dun/0 61.99,37.85 |q 51121 |future
step
|poi_rare Gut-Gut the Glutton
|poilvl 110
|poispot Vol'dun/0 64.02,47.50
|poiquest 51099
|poicurrency AZ
Enter the cave |goto Vol'dun/0 63.97,47.92 < 10 |walk
kill Gut-Gut the Glutton##128674 |goto 64.02,47.50 |q 51099 |future
|tip Inside the cave.
step
|poi_rare Scaleclaw Broodmother
|poilvl 110
|poispot Vol'dun/0 44.54,80.20
|poiquest 51107
|poicurrency AZ
kill Scaleclaw Broodmother##127776 |goto Vol'dun/0 44.54,80.20 |q 51107 |future
step
|poi_rare Auditor Dolp
|poilvl 110
|poispot Tiragarde Sound/0 74.91,78.95
|poiquest 50156
|poicurrency AZ
Follow the path up |goto Tiragarde Sound/0 75.46,78.23 < 15 |only if walking
kill Auditor Dolp##132182 |goto 74.91,78.95 |q 50156 |future
step
|poi_rare Barman Bill
|poilvl 110
|poispot Tiragarde Sound/0 76.10,82.88
|poiquest 50233
|poicurrency AZ
|poiitem 163717
kill Barman Bill##129181 |goto Tiragarde Sound/0 76.10,82.88 |q 50233 |future
|tip He walks around this area.
step
|poi_rare Bashmu
|poilvl 110
|poispot Tiragarde Sound/0 34.51,30.34
|poiquest 50094
|poicurrency AZ
kill Bashmu##132068 |goto Tiragarde Sound/0 34.51,30.34 |q 50094 |future
step
|poi_rare Black-Eyed Bart
|poilvl 110
|poispot Tiragarde Sound/0 56.27,69.94
|poiquest 50096
|poicurrency AZ
|poiitem 163718
kill Black-Eyed Bart##132086 |goto Tiragarde Sound/0 56.27,69.94 |q 50096 |future
|tip He walks around this area inside the crumbled tower.
step
|poi_rare Blackthorne
|poilvl 110
|poispot Tiragarde Sound/0 85.27,73.44
|poiquest 51808
|poicurrency AZ
|poiitem 154411
Follow the path up |goto Tiragarde Sound/0 84.08,72.38 < 15 |only if walking
kill Blackthorne##139145 |goto 85.27,73.44 |q 51808 |future
step
|poi_rare Broodmother Razora
|poilvl 110
|poispot Tiragarde Sound/0 83.54,44.83
|poiquest 49999
|poicurrency AZ
kill Broodmother Razora##130508 |goto Tiragarde Sound/0 83.54,44.83 |q 49999 |future
step
|poi_rare Captain Wintersail
|poilvl 110
|poispot Tiragarde Sound/0 38.44,20.71
|poiquest 50097
|poicurrency AZ
Enter the cave |goto Tiragarde Sound/0 38.73,21.86 < 10 |walk
click Smuggler's Cache##280649
|tip Inside the cave.
Watch the dialogue
kill Captain Wintersail##132088 |goto 38.44,20.71 |q 50097 |future
step
|poi_rare Carla Smirk
|poilvl 110
|poispot Tiragarde Sound/0 72.52,81.04
|poiquest 51809
|poicurrency AZ
kill Carla Smirk##139152 |goto Tiragarde Sound/0 72.52,81.04 |q 51809 |future
|tip She walks around on the deck of the ship.
step
|poi_rare Fowlmouth
|poilvl 110
|poispot Tiragarde Sound/0 90.45,77.11
|poiquest 50155
|poicurrency AZ
kill Fowlmouth##132211 |goto Tiragarde Sound/0 90.45,77.11 |q 50155 |future
|tip It looks like a bird that flies around this area.
step
|poi_rare Foxhollow Skyterror
|poilvl 110
|poispot Tiragarde Sound/0 60.11,22.18
|poiquest 50137
|poicurrency AZ
kill Foxhollow Skyterror##132127 |goto Tiragarde Sound/0 60.11,22.18 |q 50137 |future
step
|poi_rare Gulliver
|poilvl 110
|poispot Tiragarde Sound/0 57.84,55.91
|poiquest 53373
|poicurrency AZ
kill Gulliver##139233 |goto Tiragarde Sound/0 57.84,55.91 |q 53373 |future
step
|poi_rare Kulett the Ornery
|poilvl 110
|poispot Tiragarde Sound/0 47.81,22.28
|poiquest 49984
|poicurrency AZ
kill Kulett the Ornery##131520 |goto Tiragarde Sound/0 47.81,22.28 |q 49984 |future
step
|poi_rare Lumbergrasp Sentinel
|poilvl 110
|poispot Tiragarde Sound/0 68.31,19.96
|poiquest 50525
|poicurrency AZ
|poiitem 155524
kill Lumbergrasp Sentinel##134106 |goto Tiragarde Sound/0 68.31,19.96 |q 50525 |future
step
|poi_rare Maison the Portable
|poilvl 110
|poispot Tiragarde Sound/0 58.16,50.09
|poiquest 51880
|poicurrency AZ
|poiitem 154458
kill Maison the Portable##139290 |goto Tiragarde Sound/0 58.16,50.09 |q 51880 |future
|tip He walks around this area.
step
|poi_rare Merianae
|poilvl 110
|poispot Tiragarde Sound/0 43.04,16.75
|poiquest 49921
|poicurrency AZ
Enter the cave |goto Tiragarde Sound/0 43.49,17.23 < 20 |walk
kill Merianae##131252 |goto 43.04,16.75 |q 49921 |future
|tip Inside the cave.
step
|poi_rare P4-N73R4
|poilvl 110
|poispot Tiragarde Sound/0 65.21,64.52
|poiquest 51833
|poicurrency AZ
kill P4-N73R4##139205 |goto Tiragarde Sound/0 65.21,64.52 |q 51833 |future
step
|poi_rare Pack Leader Asenya
|poilvl 110
|poispot Tiragarde Sound/0 38.90,15.30
|poiquest 49923
|poicurrency AZ
|poiitem 160263
Enter the cave |goto Tiragarde Sound/0 39.88,14.90 < 10 |walk
kill Pack Leader Asenya##131262 |goto 38.90,15.30 |q 49923 |future
|tip Inside the cave.
step
|poi_rare Raging Swell
|poilvl 110
|poispot Tiragarde Sound/0 64.78,58.64
|poiquest 50148
|poicurrency AZ
|poiitem 161446
kill Raging Swell##132179 |goto Tiragarde Sound/0 64.78,58.64 |q 50148 |future
step
|poi_rare Ranja
|poilvl 110
|poispot Tiragarde Sound/0 68.31,63.54
|poiquest 51872
|poicurrency AZ
kill Ranja##139278 |goto Tiragarde Sound/0 68.31,63.54 |q 51872 |future
step
|poi_rare Saurolisk Tamer Mugg
|poilvl 110
|poispot Tiragarde Sound/0 58.65,14.80
|poiquest 48806
|poicurrency AZ
|poiitem 154416
kill Mugg##127290 |goto Tiragarde Sound/0 58.65,14.80 |q 48806 |future
step
|poi_rare Sawtooth
|poilvl 110
|poispot Tiragarde Sound/0 78.15,46.22
|poiquest 51877
|poicurrency AZ
kill Sawtooth##139287 |goto Tiragarde Sound/0 78.15,46.22 |q 51877 |future
|tip It swims underwater around this area.
step
|poi_rare Shiverscale the Toxic
|poilvl 110
|poispot Tiragarde Sound/0 55.11,32.40
|poiquest 51876
|poicurrency AZ
Follow the path up |goto Tiragarde Sound/0 54.61,33.53 < 15 |only if walking
kill Shiverscale the Toxic##139285 |goto 55.11,32.40 |q 51876 |future
step
|poi_rare Squacks
|poilvl 110
|poispot Tiragarde Sound/0 80.91,82.82
|poiquest 50160
|poicurrency AZ
kill Squacks##132280 |goto Tiragarde Sound/0 80.91,82.82 |q 50160 |future
step
|poi_rare Squirgle of the Depths
|poilvl 110
|poispot Tiragarde Sound/0 48.90,37.02
|poiquest 51807
|poicurrency AZ
kill Squirgle of the Depths##139135 |goto Tiragarde Sound/0 48.90,37.02 |q 51807 |future
step
|poi_rare Sythian the Swift
|poilvl 110
|poispot Tiragarde Sound/0 66.93,13.43
|poiquest 51873
|poicurrency AZ
kill Sythian the Swift##139280 |goto Tiragarde Sound/0 66.93,13.43 |q 51873 |future
|tip He looks like a large white deer that runs around this area.
step
|poi_rare Tempestria
|poilvl 110
|poispot Tiragarde Sound/0 60.53,17.54
|poiquest 50301
|poicurrency AZ
Follow the path up |goto Tiragarde Sound/0 61.20,17.32 < 20 |only if walking
click Suspicious Pile of Meat##281172
Kill the enemies that attack
kill Tempestria##133356 |goto 60.53,17.54 |q 50301 |future
step
|poi_rare Tentulos the Drifter
|poilvl 110
|poispot Tiragarde Sound/0 55.32,51.53
|poiquest 51879
|poicurrency AZ
kill Tentulos the Drifter##139289 |goto Tiragarde Sound/0 55.32,51.53 |q 51879 |future
|tip Underwater.
step
|poi_rare Teres
|poilvl 110
|poispot Tiragarde Sound/0 63.66,50.36
|poiquest 49942
|poicurrency AZ
|poiitem 158556
kill Teres##131389 |goto Tiragarde Sound/0 63.66,50.36 |q 49942 |future
step
|poi_rare Tort Jaw
|poilvl 110
|poispot Tiragarde Sound/0 70.40,55.72
|poiquest 51835
|poicurrency AZ
kill Tort Jaw##139235 |goto Tiragarde Sound/0 70.40,55.72 |q 51835 |future
step
|poi_rare Twin-hearted Construct
|poilvl 110
|poispot Tiragarde Sound/0 70.34,12.49
|poiquest 50073
|poicurrency AZ
|poiitem 160473
Enter the cave |goto Tiragarde Sound/0 70.29,12.81 < 10 |walk
click Ritual Effigy##280603
|tip Inside the cave.
kill Twin-hearted Construct##131984 |goto 70.34,12.49 |q 50073 |future
step
|poi_rare Sawtooth
|poilvl 110
|poispot Boralus/0 78.15,46.22
|poiquest 51877
|poicurrency AZ
kill Sawtooth##139287 |goto Boralus/0 78.15,46.22 |q 51877 |future
|tip It swims underwater around this area.
step
|poi_rare Betsy
|poilvl 110
|poispot Drustvar/0 58.47,33.17
|poiquest 47884
|poicurrency AZ
kill Betsy##124548 |goto Drustvar/0 58.47,33.17 |q 47884 |future
step
|poi_rare Barbthorn Queen
|poilvl 110
|poispot Drustvar/0 59.12,16.69
|poiquest 48842
|poicurrency AZ
Enter the cave |goto Drustvar/0 58.88,18.40 < 10 |only if walking
kill Barbthorn Queen##127333 |goto 59.12,16.69 |q 48842 |future
|tip Inside the cave.
step
|poi_rare Bonesquall
|poilvl 110
|poispot Drustvar/0 66.77,50.81
|poiquest 48978
|poicurrency AZ
kill Bonesquall##126621 |goto Drustvar/0 66.77,50.81 |q 48978 |future
|tip He walks around this area.
step
|poi_rare Cottontail Matron
|poilvl 110
|poispot Drustvar/0 52.15,46.92
|poiquest 49216
|poicurrency AZ
kill Cottontail Matron##129904 |goto Drustvar/0 52.15,46.92 |q 49216 |future
|tip Inside the cave.
step
|poi_rare Whargarble the Ill-Tempered
|poilvl 110
|poispot Drustvar/0 64.98,21.37
|poiquest 49311
|poicurrency AZ
kill Whargarble the Ill-Tempered##128973 |goto Drustvar/0 64.98,21.37 |q 49311 |future
|tip He walks around this area.
step
|poi_rare Grozgore
|poilvl 110
|poispot Drustvar/0 50.33,20.69
|poiquest 49388
|poicurrency AZ
kill Grozgore##127129 |goto Drustvar/0 50.33,20.69 |q 49388 |future
step
|poi_rare Beshol
|poilvl 110
|poispot Drustvar/0 50.54,30.06
|poiquest 49481
|poicurrency AZ
Enter the cave |goto Drustvar/0 51.17,29.66 < 10 |walk
click Obviously Safe Chest##278432
|tip Inside the cave.
kill Beshol##129805 |goto 50.54,30.06 |q 49481 |future
step
|poi_rare Emily Mayville
|poilvl 110
|poispot Drustvar/0 63.41,40.10
|poiquest 49530
|poicurrency AZ
talk Emily Mayville##129995
Ask her _"Why are you crying?"_
kill Emily Mayville##129995 |goto Drustvar/0 63.41,40.10 |q 49530 |future
step
|poi_rare Balethorn
|poilvl 110
|poispot Drustvar/0 56.61,29.16
|poiquest 49602
|poicurrency AZ
kill Balethorn##130143 |goto Drustvar/0 56.61,29.16 |q 49602 |future
|tip He walks around the area.
step
|poi_rare Executioner Blackwell
|poilvl 110
|poispot Drustvar/0 30.88,18.39
|poiquest 50546
|poicurrency AZ
kill Executioner Blackwell##134213 |goto Drustvar/0 30.88,18.39 |q 50546 |future
step
|poi_rare Hyo'gi
|poilvl 110
|poispot Drustvar/0 22.93,49.48
|poiquest 50688
|poicurrency AZ
kill Hyo'gi##134754 |goto Drustvar/0 22.93,49.48 |q 50688 |future
step
|poi_rare Arvon the Betrayed
|poilvl 110
|poispot Drustvar/0 34.88,69.21
|poiquest 51383
|poicurrency AZ
Follow the path up |goto Drustvar/0 35.54,68.81 < 15 |only if walking
kill Arvon the Betrayed##137529 |goto 34.88,69.21 |q 51383 |future
step
|poi_rare Avalanche
|poilvl 110
|poispot Drustvar/0 43.75,88.02
|poiquest 51471
|poicurrency AZ
kill Avalanche##137825 |goto Drustvar/0 43.75,88.02 |q 51471 |future
|tip It flies around this hill and sometimes lands.
step
|poi_rare Gorged Boar
|poilvl 110
|poispot Drustvar/0 28.00,25.96
|poiquest 51700
|poicurrency AZ
kill Gorged Boar##138675 |goto Drustvar/0 28.00,25.96 |q 51700 |future
step
|poi_rare Fungi Trio
|poilvl 110
|poispot Drustvar/0 24.50,22.02
|poiquest 51749
|poicurrency AZ
|poiitem 154217
Enter the cave |goto Drustvar/0 24.18,21.90 < 10 |walk
kill Mack##138866
kill Mick##138870
kill Ernie##138871
|tip Inside the cave.
Kill the Fungi Trio |goto 24.50,22.02 |q 51749 |future
step
|poi_rare Whitney "Steelclaw" Ramsay
|poilvl 110
|poispot Drustvar/0 29.50,64.10
|poiquest 51923
|poicurrency AZ
|poiitem 154315
kill Whitney "Steelclaw" Ramsay##139322 |goto Drustvar/0 29.50,64.10 |q 51923 |future
step
|poi_rare Quillrat Matriarch
|poilvl 110
|poispot Drustvar/0 66.58,42.73
|poiquest 48178
|poicurrency AZ
|poiitem 158583
kill Quillrat Matriarch##125453 |goto Drustvar/0 66.58,42.73 |q 48178 |future
|tip Inside the tent.
step
|poi_rare Vicemaul
|poilvl 110
|poispot Drustvar/0 72.84,60.49
|poiquest 48928
|poicurrency AZ
click Untended Fishing Rod##127652
kill Vicemaul##127651 |goto Drustvar/0 72.84,60.49 |q 48928 |future
step
|poi_rare Gluttonous Yeti
|poilvl 110
|poispot Drustvar/0 63.03,69.65
|poiquest 48979
|poicurrency AZ
talk Lost Goat##127979
Tell it _"Dumb goat. Let's go before you get eaten by monsters."_
kill Gluttonous Yeti##127844 |goto Drustvar/0 63.03,69.65 |q 48979 |future
step
|poi_rare Rimestone
|poilvl 110
|poispot Drustvar/0 59.62,71.82
|poiquest 49269
|poicurrency AZ
kill Rimestone##128707 |goto Drustvar/0 59.62,71.82 |q 49269 |future
|tip Inside the cave.
step
|poi_rare Gorehorn
|poilvl 110
|poispot Drustvar/0 57.12,44.30
|poiquest 49480
|poicurrency AZ
kill Gorehorn##129835 |goto Drustvar/0 57.12,44.30 |q 49480 |future
step
|poi_rare Talon
|poilvl 110
|poispot Drustvar/0 31.93,40.63
|poiquest 49528
|poicurrency AZ
kill Talon##129950 |goto Drustvar/0 31.93,40.63 |q 49528 |future
step
|poi_rare Nevermore
|poilvl 110
|poispot Drustvar/0 59.95,45.48
|poiquest 49601
|poicurrency AZ
kill Nevermore##130138 |goto Drustvar/0 59.95,45.48 |q 49601 |future
step
|poi_rare Bilefang Mother
|poilvl 110
|poispot Drustvar/0 35.06,33.25
|poiquest 50163
|poicurrency AZ
Enter the mine |goto Drustvar/0 36.00,31.65 < 10 |walk
Run down the stairs |goto 36.36,30.61 < 15 |walk
kill Bilefang Mother##132319 |goto 35.06,33.25 |q 50163 |future
|tip Inside the mine.
step
|poi_rare Deathcap
|poilvl 110
|poispot Drustvar/0 18.71,61.39
|poiquest 50669
|poicurrency AZ
Enter the cave |goto Drustvar/0 18.71,59.44 < 10 |walk
kill Deathcap##134706 |goto 18.71,61.39 |q 50669 |future
|tip Inside the cave.
step
|poi_rare Captain Leadfist
|poilvl 110
|poispot Drustvar/0 27.68,14.15
|poiquest 50939
|poicurrency AZ
kill Captain Leadfist##135796 |goto Drustvar/0 27.68,14.15 |q 50939 |future
|tip He will appear on your minimap as a yellow dot.
step
|poi_rare Arclight
|poilvl 110
|poispot Drustvar/0 29.21,69.01
|poiquest 51470
|poicurrency AZ
kill Arclight##137824 |goto Drustvar/0 29.21,69.01 |q 51470 |future
step
|poi_rare Haywire Golem
|poilvl 110
|poispot Drustvar/0 23.97,30.48
|poiquest 51698
|poicurrency AZ
kill Haywire Golem##138618 |goto Drustvar/0 23.97,30.48 |q 51698 |future
|tip It walks around this area.
step
|poi_rare Sister Martha
|poilvl 110
|poispot Drustvar/0 33.00,57.16
|poiquest 51748
|poicurrency AZ
kill Sister Martha##138863 |goto Drustvar/0 33.00,57.16 |q 51748 |future
|tip Inside the building.
step
|poi_rare Braedan Whitewall
|poilvl 110
|poispot Drustvar/0 27.64,59.59
|poiquest 51922
|poicurrency AZ
kill Braedan Whitewall##139321 |goto Drustvar/0 27.64,59.59 |q 51922 |future
step
|poi_rare Song Mistress Dadalea
|poilvl 110
|poispot Stormsong Valley/0 70.86,32.23
|poiquest 52448
|poicurrency AZ
|poiitem 158218
kill Song Mistress Dadalea##141175 |goto Stormsong Valley/0 70.86,32.23 |q 52448 |future
step
|poi_rare Severus the Outcast
|poilvl 110
|poispot Stormsong Valley/0 22.58,73.21
|poiquest 50938
|poicurrency AZ
Follow the path up |goto Stormsong Valley/0 21.75,71.40 < 20 |only if walking
kill Severus the Outcast##140997 |goto 22.58,73.21 |q 50938 |future
step
|poi_rare Seabreaker Skoloth
|poilvl 110
|poispot Stormsong Valley/0 33.72,38.21
|poiquest 51757
|poicurrency AZ
|poiitem 160477
kill Seabreaker Skoloth##138938 |goto Stormsong Valley/0 33.72,38.21 |q 51757 |future
|tip He walks around this area.
step
|poi_rare Sabertron
|poilvl 110
|poispot Stormsong Valley/0 33.88,31.89
|poiquest 51956
|poicurrency AZ
|poiitem 154664
Enter the cave |goto Stormsong Valley/0 34.93,32.60 < 10 |walk
kill Sabertron Technician##139334
|tip He walks around this area inside the cave.
kill Sabertron##139328 |goto 33.88,31.89 |q 51956 |future
|tip One of the nearby metal cats will attack after you kill the Sabertron Technician.
step
|poi_rare The Lichen King
|poilvl 110
|poispot Stormsong Valley/0 51.78,79.77
|poiquest 50974
|poicurrency AZ
|poiitem 155222
Enter the cave |goto Stormsong Valley/0 51.78,79.23 < 10 |walk
kill The Lichen King##136189 |goto 51.78,79.77 |q 50974 |future
|tip Inside the cave.
step
|poi_rare Ragna
|poilvl 110
|poispot Stormsong Valley/0 41.60,74.35
|poiquest 50725
|poicurrency AZ
|poiitem 160465
kill Ragna##134884 |goto Stormsong Valley/0 41.60,74.35 |q 50725 |future
|tip He walks around this area.
step
|poi_rare Slickspill
|poilvl 110
|poispot Stormsong Valley/0 41.80,28.47
|poiquest 51958
|poicurrency AZ
|poiitem 158216
kill Slickspill##139319 |goto Stormsong Valley/0 41.80,28.47 |q 51958 |future
step
|poi_rare Galestorm
|poilvl 110
|poispot Stormsong Valley/0 71.45,54.35
|poiquest 50075
|poicurrency AZ
|poiitem 155568
kill Galestorm##132007 |goto Stormsong Valley/0 71.45,54.35 |q 50075 |future
|tip At the top of the hill.
step
|poi_rare Whirlwing
|poilvl 110
|poispot Stormsong Valley/0 46.90,42.14
|poiquest 52457
|poicurrency AZ
|poiitem 158215
kill Whirlwing##142088 |goto Stormsong Valley/0 46.90,42.14 |q 52457 |future
|tip He flies in the air around this area.
step
|poi_rare Kickers
|poilvl 110
|poispot Stormsong Valley/0 31.30,61.70
|poiquest 52318
|poicurrency AZ
|poiitem 154475
kill Kickers##141029 |goto Stormsong Valley/0 31.30,61.70 |q 52318 |future
|tip He walks around this area.
step
|poi_rare Foreman Scripps
|poilvl 110
|poispot Stormsong Valley/0 64.43,65.92
|poiquest 49951
|poicurrency AZ
|poiitem 160471
kill Foreman Scripps##131404 |goto Stormsong Valley/0 64.43,65.92 |q 49951 |future
step
|poi_rare Poacher Zane
|poilvl 110
|poispot Stormsong Valley/0 34.65,67.98
|poiquest 52469
|poicurrency AZ
kill Poacher Zane##141286 |goto Stormsong Valley/0 34.65,67.98 |q 52469 |future
step
|poi_rare Pinku'shon
|poilvl 110
|poispot Stormsong Valley/0 38.22,51.09
|poiquest 51959
|poicurrency AZ
|poiitem 163678
kill Pinku'shon##139298 |goto Stormsong Valley/0 38.22,51.09 |q 51959 |future
|tip It walks around this area.
step
|poi_rare Grimscowl the Harebrained
|poilvl 110
|poispot Stormsong Valley/0 62.07,73.89
|poiquest 52329
|poicurrency AZ
|poiitem 155572
kill Grimscowl the Harebrained##141059 |goto Stormsong Valley/0 62.07,73.89 |q 52329 |future
|tip He will appear on your minimap as a yellow dot.
step
|poi_rare Deepfang
|poilvl 110
|poispot Stormsong Valley/0 52.84,51.39
|poiquest 50692
|poicurrency AZ
|poiitem 160464
kill Deepfang##139385 |goto Stormsong Valley/0 52.84,51.39 |q 50692 |future
|tip It walks around this area.
step
|poi_rare Croaker
|poilvl 110
|poispot Stormsong Valley/0 62.93,32.83
|poiquest 52303
|poicurrency AZ
|poiitem 154460
kill Croaker##140938 |goto Stormsong Valley/0 62.93,32.83 |q 52303 |future
step
|poi_rare Corrupted Tideskipper
|poilvl 110
|poispot Stormsong Valley/0 67.11,49.71
|poiquest 52121
|poicurrency AZ
|poiitem 154183
kill Corrupted Tideskipper##139968 |goto Stormsong Valley/0 67.11,49.71 |q 52121 |future
|tip It swims underwater around this area.
step
|poi_rare Crushtacean
|poilvl 110
|poispot Stormsong Valley/0 51.25,55.52
|poiquest 50731
|poicurrency AZ
|poiitem 154857
Enter the cave |goto Stormsong Valley/0 51.86,55.29 < 10 |walk
kill Crushtacean##136183 |goto 51.25,55.52 |q 50731 |future
step
|poi_rare Vinespeaker Ratha
|poilvl 110
|poispot Stormsong Valley/0 49.63,68.07
|poiquest 50037
|poicurrency AZ
|poiitem 158299
Enter the cave |goto Stormsong Valley/0 50.99,68.67 < 15 |walk
Enter the cave |goto 50.74,68.22 < 10 |walk
kill Vinespeaker Ratha##135939 |goto 49.63,68.07 |q 50037 |future
|tip Inside the cave.
step
|poi_rare Haegol the Hammer
|poilvl 110
|poispot Stormsong Valley/0 35.25,77.76
|poiquest 52460
|poicurrency AZ
kill Haegol the Hammer##141226 |goto Stormsong Valley/0 35.25,77.76 |q 52460 |future
|tip He walks around this area.
step
|poi_rare Squall
|poilvl 110
|poispot Stormsong Valley/0 57.01,75.92
|poiquest 52433
|poicurrency AZ
|poiitem 158224
kill Squall##141088 |goto Stormsong Valley/0 57.01,75.92 |q 52433 |future
|tip He walks around this area.
step
|poi_rare Ice Sickle
|poilvl 110
|poispot Stormsong Valley/0 63.53,83.56
|poiquest 52327
|poicurrency AZ
kill Ice Sickle##141039 |goto Stormsong Valley/0 63.53,83.56 |q 52327 |future
step
|poi_rare Captain Razorspine
|poilvl 110
|poispot Stormsong Valley/0 47.22,66.01
|poiquest 50170
|poicurrency AZ
|poiitem 155287
Follow the path down |goto Stormsong Valley/0 46.40,64.53 < 15 |only if walking
Enter the cave |goto 47.35,65.37 < 10 |walk
kill Captain Razorspine##130897 |goto 47.22,66.01 |q 50170 |future
|tip He walks around this area inside the cave.
step
|poi_rare Whiplash
|poilvl 110
|poispot Stormsong Valley/0 47.21,65.86
|poiquest 52296
|poicurrency AZ
Enter the cave |goto Stormsong Valley/0 47.34,65.35 < 10 |walk
kill Whiplash##129803 |goto 47.21,65.86 |q 52296 |future
|tip Inside the cave.
step
|poi_rare Sister Absinthe
|poilvl 110
|poispot Stormsong Valley/0 61.57,57.06
|poiquest 52441
|poicurrency AZ
|poiitem 155164
kill Sister Absinthe##141143 |goto Stormsong Valley/0 61.57,57.06 |q 52441 |future
step
|poi_rare Wagga Snarltusk
|poilvl 110
|poispot Stormsong Valley/3 11.77,28.81
|poiquest 50819
|poicurrency AZ
|poiitem 154431
Follow the path |goto Stormsong Valley/3 40.98,51.71 < 10 |walk
kill Wagga Snarltusk##130079 |goto 11.77,28.81 |q 50819 |future
|tip Inside the cave.
step
|poi_rare Osca the Bloodied
|poilvl 110
|poispot Stormsong Valley/0 42.26,63.24
|poiquest 52461
|poicurrency AZ
|poiitem 159169
kill Osca the Bloodied##141239 |goto Stormsong Valley/0 42.26,63.24 |q 52461 |future
step
|poi_rare Sandfang
|poilvl 110
|poispot Stormsong Valley/0 73.52,60.65
|poiquest 52125
|poicurrency AZ
kill Sandfang##139988 |goto Stormsong Valley/0 73.52,60.65 |q 52125 |future
step
|poi_rare Taja the Tidehowler
|poilvl 110
|poispot Stormsong Valley/0 59.95,45.87
|poiquest 52123
|poicurrency AZ
|poiitem 154449
kill Taja the Tidehowler##139980 |goto Stormsong Valley/0 59.95,45.87 |q 52123 |future
step
|poi_rare The Lions Roar
|poilvl 120
|poispot Arathi Highlands/0 38.62,40.96
|poiquest 53001
|poicurrency AZ
|poiitem 163829
kill The Lions Roar##137374 |goto Arathi Highlands/0 38.62,40.96 |c |q 53001 |future
|tip It patrols around this area.
|only if ZGV.InPhase("Warfront Arathi Control")
step
|poi_rare Cresting Goliath
|poilvl 120
|poispot Arathi Highlands/0 61.98,31.50
|poiquest 53531
|poicurrency AZ
|poiitem 163700
kill Cresting Goliath##141618 |goto Arathi Highlands/0 61.98,31.50 |c |q 53531 |future
|only if ZGV.InPhase("Warfront Arathi Control")
step
|poi_rare Burning Goliath
|poilvl 120
|poispot Arathi Highlands/0 30.66,44.78
|poiquest 53506
|poicurrency AZ
|poiitem 163691
kill Burning Goliath##141615 |goto Arathi Highlands/0 30.66,44.78 |c |q 53506 |future
|only if ZGV.InPhase("Warfront Arathi Control")
step
|poi_rare Rumbling Goliath
|poilvl 120
|poispot Arathi Highlands/0 29.88,59.74
|poiquest 53523
|poicurrency AZ
|poiitem 163701
kill Rumbling Goliath##141620 |goto Arathi Highlands/0 29.88,59.74 |c |q 53523 |future
|only if ZGV.InPhase("Warfront Arathi Control")
step
|poi_rare Thundering Goliath
|poilvl 120
|poispot Arathi Highlands/0 46.32,52.12
|poiquest 53527
|poicurrency AZ
|poiitem 163698
kill Thundering Goliath##141616 |goto Arathi Highlands/0 46.32,52.12 |c |q 53527 |future
|only if ZGV.InPhase("Warfront Arathi Control")
step
|poi_rare Beastrider Kama
|poilvl 120
|poispot Arathi Highlands/0 65.81,68.57
|poiquest 53504
|poicurrency AZ
|poiitem 163644
kill Beastrider Kama##142709 |goto Arathi Highlands/0 65.81,68.57 |c |q 53504 |future
|tip He patrols up and down the road.
|only if ZGV.InPhase("Warfront Arathi Control")
step
|poi_rare Nimar The Slayer
|poilvl 120
|poispot Arathi Highlands/0 67.61,60.86
|poiquest 53517
|poicurrency AZ
|poiitem 163706
kill Nimar The Slayer##142692 |goto Arathi Highlands/0 67.61,60.86 |c |q 53517 |future
|only if ZGV.InPhase("Warfront Arathi Control")
step
|poi_rare Overseer Krix
|poilvl 120
|poispot Arathi Highlands/0 27.40,57.22
|poiquest 53518
|poicurrency AZ
|poiitem 163646
Enter the mine |goto Arathi Highlands/0 27.48,55.45 < 10 |walk
kill Overseer Krix##142423 |goto 27.40,57.22 |c |q 53518 |future
|tip Inside the mine.
|only if ZGV.InPhase("Warfront Arathi Control")
step
|poi_rare Skullripper
|poilvl 120
|poispot Arathi Highlands/0 56.72,45.20
|poiquest 53526
|poicurrency AZ
|poiitem 163645
kill Skullripper##142437 |goto Arathi Highlands/0 56.72,45.20 |c |q 53526 |future
|tip It runs around the rock.
|only if ZGV.InPhase("Warfront Arathi Control")
step
|poi_rare Knight Captain Aldrin
|poilvl 120
|poispot Arathi Highlands/0 48.89,40.01
|poiquest 53088
|poicurrency AZ
|poiitem 163578
kill Knight Captain Aldrin##142739 |goto Arathi Highlands/0 48.89,40.01 |c |q 53088 |future
|only if ZGV.InPhase("Warfront Arathi Control")
step
|poi_rare Branchlord Aldrus
|poilvl 120
|poispot Arathi Highlands/0 22.33,21.12
|poiquest 53505
|poicurrency AZ
|poiitem 163650
kill Branchlord Aldrus##142508 |goto Arathi Highlands/0 22.33,21.12 |c |q 53505 |future
|tip It walks around the big stump.
|only if ZGV.InPhase("Warfront Arathi Control")
step
|poi_rare Darbel Montrose
|poilvl 120
|poispot Arathi Highlands/0 50.39,61.02
|poiquest 53507
|poicurrency AZ
|poiitem 163652
kill Darbel Montrose##142688 |goto Arathi Highlands/0 50.39,61.02 |c |q 53507 |future
|tip Inside the building.
|only if ZGV.InPhase("Warfront Arathi Control")
step
|poi_rare Echo of Myzrael
|poilvl 120
|poispot Arathi Highlands/0 57.07,35.06
|poiquest 53508
|poicurrency AZ
|poiitem 163677
kill Echo of Myzrael##141668 |goto Arathi Highlands/0 57.07,35.06 |c |q 53508 |future
|tip Echo of Myzrael spawns after killing the four Goliath elementals in Arathi.
|tip Guardians not present at Myzrael's location indicate which elementals still need to be killed.
Cresting Goliath is here [61.98,31.50]
Thundering Goliath is here [46.32,52.12]
Burning Goliath is here [30.66,44.78]
Rumbling Goliath is here [29.88,59.74]
|only if ZGV.InPhase("Warfront Arathi Control")
step
|poi_rare Fozruk
|poilvl 120
|poispot Arathi Highlands/0 59.31,28.15
|poiquest 53510
|poicurrency AZ
|poiitem 163711
kill Fozruk##142433 |goto Arathi Highlands/0 59.31,28.15 |c |q 53510 |future
|only if ZGV.InPhase("Warfront Arathi Control")
step
|poi_rare Man Hunter Rog
|poilvl 120
|poispot Arathi Highlands/0 52.27,76.83
|poiquest 53515
|poicurrency AZ
|poiitem 163712
kill Man Hunter Rog##142716 |goto Arathi Highlands/0 52.27,76.83 |c |q 53515 |future
|tip He walks up and down the path.
|only if ZGV.InPhase("Warfront Arathi Control")
step
|poi_rare Plaguefeather
|poilvl 120
|poispot Arathi Highlands/0 35.60,64.35
|poiquest 53519
|poicurrency AZ
|poiitem 163690
kill Plaguefeather##142435 |goto Arathi Highlands/0 35.60,64.35 |c |q 53519 |future
|tip It flies around this area.
|only if ZGV.InPhase("Warfront Arathi Control")
step
|poi_rare Ragebeak
|poilvl 120
|poispot Arathi Highlands/0 12.02,52.14
|poiquest 53522
|poicurrency AZ
|poiitem 163689
kill Ragebeak##142436 |goto Arathi Highlands/0 12.02,52.14 |c |q 53522 |future
|only if ZGV.InPhase("Warfront Arathi Control")
step
|poi_rare Venomarus
|poilvl 120
|poispot Arathi Highlands/0 56.99,54.40
|poiquest 53528
|poicurrency AZ
|poiitem 163648
kill Venomarus##142438 |goto Arathi Highlands/0 56.99,54.40 |c |q 53528 |future
|tip It walks around this area.
|only if ZGV.InPhase("Warfront Arathi Control")
step
|poi_rare Yogursa
|poilvl 120
|poispot Arathi Highlands/0 14.16,37.52
|poiquest 53529
|poicurrency AZ
|poiitem 163684
kill Yogursa##142440 |goto Arathi Highlands/0 14.16,37.52 |c |q 53529 |future
|tip It walks around this area.
|only if ZGV.InPhase("Warfront Arathi Control")
step
|poi_rare Foulbelly
|poilvl 120
|poispot Arathi Highlands/0 22.33,51.25
|poiquest 53509
|poicurrency AZ
|poiitem 163735
Enter the cave |goto Arathi Highlands/0 28.44,45.68 < 10 |walk
Cross the bridge |goto 23.56,46.80 < 10 |walk
kill Foulbelly##142686 |goto 22.33,51.25 |c |q 53509 |future
|tip Inside the cave.
|only if ZGV.InPhase("Warfront Arathi Control")
step
|poi_rare Geomancer Flintdagger
|poilvl 120
|poispot Arathi Highlands/0 79.45,29.39
|poiquest 53511
|poicurrency AZ
|poiitem 163713
Enter the cave |goto Arathi Highlands/0 78.27,36.73 < 15 |walk
Follow the path down |goto 79.53,33.90 < 15 |only if walking
Follow the path up |goto 82.72,31.22 < 10 |only if walking
kill Geomancer Flintdagger##142662 |goto 79.45,29.39 |c |q 53511 |future
|tip Inside the cave.
|only if ZGV.InPhase("Warfront Arathi Control")
step
|poi_rare Horrific Apparition
|poilvl 120
|poispot Arathi Highlands/0 19.37,61.31
|poiquest 53512
|poicurrency AZ
|poiitem 163736
kill Horrific Apparition##142725 |goto Arathi Highlands/0 19.37,61.31 |c |q 53512 |future
|only if ZGV.InPhase("Warfront Arathi Control")
step
|poi_rare Korgresh Coldrage
|poilvl 120
|poispot Arathi Highlands/0 49.21,84.15
|poiquest 53513
|poicurrency AZ
|poiitem 163744
Enter the cave |goto Arathi Highlands/0 48.30,79.95 < 10 |walk
Follow the path |goto 49.08,82.49 < 10 |walk
kill Korgresh Coldrage##142112 |goto 49.21,84.15 |c |q 53513 |future
|tip Inside the cave.
|only if ZGV.InPhase("Warfront Arathi Control")
step
|poi_rare Kovork
|poilvl 120
|poispot Arathi Highlands/0 25.05,48.40
|poiquest 53514
|poicurrency AZ
|poiitem 163750
Enter the cave |goto Arathi Highlands/0 28.44,45.68 < 10 |walk
kill Kovork##142684 |goto 25.05,48.40 |c |q 53514 |future
|tip Inside the cave.
|only if ZGV.InPhase("Warfront Arathi Control")
step
|poi_rare Molok The Crusher
|poilvl 120
|poispot Arathi Highlands/0 47.67,78.04
|poiquest 53516
|poicurrency AZ
|poiitem 163775
kill Molok The Crusher##141942 |goto Arathi Highlands/0 47.67,78.04 |c |q 53516 |future
|only if ZGV.InPhase("Warfront Arathi Control")
step
|poi_rare Ruul Onestone
|poilvl 120
|poispot Arathi Highlands/0 42.91,56.52
|poiquest 53524
|poicurrency AZ
|poiitem 163741
kill Ruul Onestone##142683 |goto Arathi Highlands/0 42.91,56.52 |c |q 53524 |future
|only if ZGV.InPhase("Warfront Arathi Control")
step
|poi_rare Singer
|poilvl 120
|poispot Arathi Highlands/0 50.59,57.46
|poiquest 53525
|poicurrency AZ
|poiitem 163738
kill Singer##142690 |goto Arathi Highlands/0 50.59,57.46 |c |q 53525 |future
|tip Inside the building.
|only if ZGV.InPhase("Warfront Arathi Control")
step
|poi_rare Zalas Witherbark
|poilvl 120
|poispot Arathi Highlands/0 62.86,81.12
|poiquest 53530
|poicurrency AZ
|poiitem 163745
Enter the cave |goto Arathi Highlands/0 63.25,77.53 < 10 |walk
kill Zalas Witherbark##142682 |goto 62.86,81.12 |c |q 53530 |future
|tip Inside the cave.
|only if ZGV.InPhase("Warfront Arathi Control")
step
|poi_rare Alash'anir
|poilvl 120
|poispot Darkshore/0 56.46,30.76
|poiquest 54696
|poicurrency AZ
|poiitem 166432
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |condition not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54696 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
kill Alash'anir##148787 |goto 56.46,30.76 |c |q 54696 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
|poi_rare Aman
|poilvl 120
|poispot Darkshore/0 37.83,84.80
|poiquest 54406
|poicurrency AZ
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |condition not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54406 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
kill Aman##147966 |goto 37.83,84.80 |c |q 54406 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
|poi_rare Amberclaw
|poilvl 120
|poispot Darkshore/0 57.39,15.66
|poiquest 54286
|poicurrency AZ
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |condition not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54286 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
kill Amberclaw##147744 |goto 57.39,15.66 |c |q 54286 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
|poi_rare Athrikus Narassin
|poilvl 120
|poispot Darkshore/0 58.49,24.33
|poiquest 54279
|poicurrency AZ
|poiitem 166784
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |condition not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54279 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
kill Athrikus Narassin##147708 |goto 58.49,24.33 |c |q 54279 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
|poi_rare Conflagros
|poilvl 120
|poispot Darkshore/0 39.28,62.03
|poiquest 54233
|poicurrency AZ
|poiitem 166451
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |condition not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54233 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
kill Conflagros##147260 |goto 39.28,62.03 |c |q 54233 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
|poi_rare Cyclarus
|poilvl 120
|poispot Darkshore/0 43.73,53.53
|poiquest 54230
|poicurrency AZ
|poiitem 166448
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |condition not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54230 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
kill Cyclarus##147241 |goto 43.73,53.53 |c |q 54230 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
|poi_rare Glimmerspine
|poilvl 120
|poispot Darkshore/0 43.51,19.63
|poiquest 54885
|poicurrency AZ
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |condition not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54885 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
kill Glimmerspine##149654 |goto 43.51,19.63 |c |q 54885 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
|poi_rare Granokk
|poilvl 120
|poispot Darkshore/0 48.31,55.61
|poiquest 54235
|poicurrency AZ
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |condition not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54235 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
kill Granokk##147261 |goto 48.31,55.61 |c |q 54235 |future
|tip Inside the cave.
|only if ZGV.InPhase("Warfront Darkshore Control")
step
|poi_rare Gren Tornfur
|poilvl 120
|poispot Darkshore/0 40.91,56.44
|poiquest 54429
|poicurrency AZ
|poiitem 166785
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |condition not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54429 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
kill Gren Tornfur##148031 |goto 40.91,56.44 |c |q 54429 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
|poi_rare Grimhorn
|poilvl 120
|poispot Darkshore/0 50.71,32.32
|poiquest 54891
|poicurrency AZ
|poiitem 166525
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |condition not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54891 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
kill Grimhorn##149662 |goto 50.71,32.32 |c |q 54891 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
|poi_rare Hydrath
|poilvl 120
|poispot Darkshore/0 52.42,32.18
|poiquest 54228
|poicurrency AZ
|poiitem 166452
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |condition not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54228 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
kill Hydrath##147240 |goto 52.42,32.18 |c |q 54228 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
|poi_rare Madfeather
|poilvl 120
|poispot Darkshore/0 43.95,48.50
|poiquest 54888
|poicurrency AZ
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |condition not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54888 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
kill Madfeather##149657 |goto 43.95,48.50 |c |q 54888 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
|poi_rare Mrggr'marr
|poilvl 120
|poispot Darkshore/0 35.86,81.74
|poiquest 54409
|poicurrency AZ
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |condition not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54409 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
kill Mrggr'marr##147970 |goto 35.86,81.74 |c |q 54409 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
|poi_rare Scalefiend
|poilvl 120
|poispot Darkshore/0 47.64,44.52
|poiquest 54894
|poicurrency AZ
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |condition not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54894 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
kill Scalefiend##149665 |goto 47.64,44.52 |c |q 54894 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
|poi_rare Shattershard
|poilvl 120
|poispot Darkshore/0 43.47,29.41
|poiquest 54290
|poicurrency AZ
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |condition not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54290 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
kill Shattershard##147751 |goto 43.47,29.41 |c |q 54290 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
|poi_rare Soggoth the Slitherer
|poilvl 120
|poispot Darkshore/0 40.61,85.33
|poiquest 54321
|poicurrency AZ
|poiitem 166454
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |condition not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54321 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
kill Soggoth the Slitherer##147897 |goto 40.61,85.33 |c |q 54321 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
|poi_rare Stonebinder Ssra'vess
|poilvl 120
|poispot Darkshore/0 45.50,58.98
|poiquest 54248
|poicurrency AZ
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |condition not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54248 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
kill Stonebinder Ssra'vess##147332 |goto 45.50,58.98 |c |q 54248 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
|poi_rare Twilight Prophet Graeme
|poilvl 120
|poispot Darkshore/0 40.61,82.71
|poiquest 54398
|poicurrency AZ
|poiitem 166455
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |condition not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54398 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
kill Twilight Prophet Graeme##147942 |goto 40.61,82.71 |c |q 54398 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
|poi_rare Athil Dewfire
|poilvl 120
|poispot Darkshore/0 41.64,76.36
|poiquest 54431
|poicurrency AZ
|poiitem 166449,166803
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |condition not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54431 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
kill Athil Dewfire##148037 |goto Darkshore/0 41.64,76.36 |c |q 54431 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
|poi_rare Blackpaw
|poilvl 120
|poispot Darkshore/0 49.64,24.81
|poiquest 54890
|poicurrency AZ
|poiitem 166428
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |condition not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54890 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
kill Blackpaw##149660 |goto Darkshore/0 49.64,24.81 |c |q 54890 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
|poi_rare Commander Ral'esh
|poilvl 120
|poispot Darkshore/0 37.92,76.24
|poiquest 54427
|poicurrency AZ
|poiitem 166787
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |condition not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54427 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
kill Commander Ral'esh##148025 |goto Darkshore/0 37.92,76.24 |c |q 54427 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
|poi_rare Onu
|poilvl 120
|poispot Darkshore/0 45.22,74.94
|poiquest 54291
|poicurrency AZ
|poiitem 166453
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |condition not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54291 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
kill Onu##147758 |goto Darkshore/0 45.22,74.94 |c |q 54291 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
|poi_rare Sapper Odette
|poilvl 120
|poispot Darkshore/0 32.97,83.95
|poiquest 54452
|poicurrency AZ
|poiitem 166788
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |condition not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54452 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
kill Sapper Odette##148103 |goto Darkshore/0 32.97,83.95 |c |q 54452 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
|poi_rare Shadowclaw
|poilvl 120
|poispot Darkshore/0 39.79,32.89
|poiquest 54892
|poicurrency AZ
|poiitem 166435
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |condition not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54892 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
kill Shadowclaw##149663 |goto Darkshore/0 39.79,32.89 |c |q 54892 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
|poi_rare Thelar Moonstrike
|poilvl 120
|poispot Darkshore/0 62.13,16.52
|poiquest 54252
|poicurrency AZ
|poiitem 166790
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |condition not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54252 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
step
kill Thelar Moonstrike##147435 |goto Darkshore/0 62.13,16.52 |c |q 54252 |future
|only if ZGV.InPhase("Warfront Darkshore Control")
]])
