local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("TitlesA") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Titles\\Wrath of the Lich King Titles\\General\\The Explorer",{
author="support@zygorguides.com",
description="This guide section will walk you through completing the Explorer achievement.",
playertitle=47,
},[[
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Eastern Kingdoms Explorer"
leechsteps "Achievement Guides\\Exploration\\Kalimdor\\Kalimdor Explorer"
leechsteps "Achievement Guides\\Exploration\\Northrend\\Northrend Explorer"
leechsteps "Achievement Guides\\Exploration\\Outland\\Outland Explorer"
#include "Explorer_Pandaria"
leechsteps "Achievement Guides\\Exploration\\Draenor\\Draenor Explorer"
leechsteps "Achievement Guides\\Exploration\\Legion\\Broken Isles Explorer"
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Cataclysm Titles\\Quests\\The Flamebreaker",{
author="support@zygorguides.com",
playertitle=189,
},[[
step
This title is earned by completing the _Veteran of the Molten Front_ achievement.
confirm
step
#include "A_Firelands_PreQuests"
step
Now that you have access to the Firelands Dailies, please use the Zygor Achievement Guides to help obtain this title.
achieve 5879
step
Congratulations! You have earned the title "The Flamebreaker"!
]])
