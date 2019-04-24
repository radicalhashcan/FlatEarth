local ZGV=ZygorGuidesViewer
if not ZGV then return end

local WorldQuests = {}
ZGV.WorldQuests = WorldQuests

local L = ZGV.L
local ui = ZGV.UI
local SkinData = ui.SkinData
local CHAIN = ZGV.ChainCall
local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local FONTSTATUS="Fonts\\ARIALN.TTF"

function WorldQuests.UpdateSorting(widget,field)  -- NOT called with a colon; called from a ScrollTable widget.
	if ZGV.db.profile.WQSorting[1] == field then
		if ZGV.db.profile.WQSorting[2] == "desc" then
			ZGV.db.profile.WQSorting = {field,"asc"}
		else
			ZGV.db.profile.WQSorting = {field,"desc"}
		end
	else
		ZGV.db.profile.WQSorting = {field,"asc"}
	end

	WorldQuests.needToUpdate = true
	WorldQuests.useCache = true
end

local DATATABLE_COLUMNS = {
	{ title="", width=12, headerwidth=12, titlej="LEFT", textj="LEFT", name="toggle", type="toggle" },
	{ title="", width=20, headerwidth=20, titlej="LEFT", textj="LEFT", name="icon", type="icon", texture=ZGV.DIR.."\\Skins\\icons-worldquest" },
	{ title="NAME", width=100, titlej="LEFT", textj="LEFT", name="name", sortable=true, sortfunction=WorldQuests.UpdateSorting, onentertooltip=function(row) WorldQuests:ShowTooltipQuest(row) end, tooltipanchor="ANCHOR_BOTTOM" },
	{ title="", width=20, headerwidth=20, titlej="LEFT", textj="LEFT", name="rewardicon", type="icon", onentertooltip=function(row) WorldQuests:ShowTooltipReward(row) end, tooltipanchor="ANCHOR_BOTTOM" },
	{ title="REWARDS", width=80, titlej="LEFT", textj="LEFT", name="rewards", sortable=true, sortfunction=WorldQuests.UpdateSorting, onentertooltip=function(row) WorldQuests:ShowTooltipReward(row) end, tooltipanchor="ANCHOR_BOTTOM" },
	{ title="FACTION", width=65, titlej="LEFT", textj="LEFT", name="faction", sortable=true, sortfunction=WorldQuests.UpdateSorting, onentertooltip=function(row) WorldQuests:ShowTooltipFaction(row) end, tooltipanchor="ANCHOR_BOTTOM"  },
	{ title="TIME", width=60, titlej="LEFT", textj="LEFT", name="time", sortable=true, sortfunction=WorldQuests.UpdateSorting },
	{ title="ZONE", width=90, titlej="LEFT", textj="LEFT", name="zone", sortable=true, sortfunction=WorldQuests.UpdateSorting },
}

local DATATABLE_DATA = {
	ROW_COUNT = 20,
	LIST_WIDTH = 505,
	LIST_HEIGHT = 455,
	ROW_ICONSIZE = 20,
	HEADERY = -5,
	POSX = 10,
	POSY = -55,
	STRATA = "HIGH",
	ROWBACKGROUND = true,
}

local WQ_TYPES = {
	{"Regular",true,LE_QUEST_TAG_TYPE_NORMAL},
	{"PVP",true,LE_QUEST_TAG_TYPE_PVP},
	{"Dungeons",true,LE_QUEST_TAG_TYPE_DUNGEON},
	{"Raid",true,LE_QUEST_TAG_TYPE_RAID},
	{"Invasion",true,LE_QUEST_TAG_TYPE_INVASION},
	{"Professions",true,LE_QUEST_TAG_TYPE_PROFESSION},
	{"Pet Battles",true,LE_QUEST_TAG_TYPE_PET_BATTLE},
}

local WQ_REWARDS = { -- checks for specific currencies are in isvalid
	{"Azerite power",true,1553},
	{"War resources",true,1560},
	{"Other resources",true,"resources"},
	{"Gold",true,"gold"},
	{"Gear",true,"gear"},
	{"Other",true,"other"},
}

local faction_data = {
	[2103] = {quest=50598, exp="bfa", faction="Horde", engname="Zandalari Empire", filepath="INV_ZandalariEmpire"},			-- Zandalari Empire        
	[2156] = {quest=50602, exp="bfa", faction="Horde", engname="Talanji's Expedition", filepath="INV_TalanjisExpedition"},		-- Talanji's Expedition    
	[2158] = {quest=50603, exp="bfa", faction="Horde", engname="Voldunai", filepath="INV_Voldunai"},				-- Voldunai                
	[2157] = {quest=50606, exp="bfa", faction="Horde", engname="The Honorbound", filepath="INV_HordeWarEffort"},			-- The Honorbound          
	[2160] = {quest=50599, exp="bfa", faction="Alliance", engname="Proudmoore Admiralty", filepath="Inv_proudmooreadmirality"},	-- Proudmoore Admiralty    
	[2159] = {quest=50605, exp="bfa", faction="Alliance", engname="7th Legion", filepath="INV_AllianceWarEffort"},			-- 7th Legion              
	[2161] = {quest=50600, exp="bfa", faction="Alliance", engname="Order of Embers", filepath="INV_OrderofEmbers"},			-- Order of Embers         
	[2162] = {quest=50601, exp="bfa", faction="Alliance", engname="Storm's Wake", filepath="INV_Stormswake"},			-- Storm's Wake            
	[2164] = {quest=50562, exp="bfa", engname="Champions of Azeroth", filepath="INV_Championsofazeroth"},				-- Champions of Azeroth    
	[2163] = {quest=50604, exp="bfa", engname="Tortollan Seekers", filepath="INV_TortollanSeekers"},				-- Tortollan Seekers       

	[1883] = {quest=42170, exp="leg", engname="Dreamweavers", filepath="INV_LegionCircle_Faction_DreamWeavers"},			-- Dreamweavers            
	[1828] = {quest=42233, exp="leg", engname="Highmountain Tribe", filepath="INV_LegionCircle_Faction_HightmountainTribes"},	-- Highmountain Tribe      
	[1948] = {quest=42234, exp="leg", engname="Valarjar", filepath="INV_LegionCircle_Faction_Valarjar"},				-- Valarjar                
	[1900] = {quest=42420, exp="leg", engname="Court of Farondis", filepath="INV_LegionCircle_Faction_CourtofFarnodis"},		-- Court of Farondis       
	[1859] = {quest=42421, exp="leg", engname="The Nightfallen", filepath="INV_LegionCircle_Faction_NightFallen"},			-- The Nightfallen         
	[1894] = {quest=42422, exp="leg", engname="The Wardens", filepath="INV_LegionCircle_Faction_Warden"},				-- The Wardens             
	[1090] = {quest=43179, exp="leg", engname="The Kirin Tor of Dalaran", filepath="INV_LegionCircle_Faction_KirinTor"},		-- The Kirin Tor of Dalaran
	[2045] = {quest=46777, exp="leg", engname="Legionfall", filepath="INV_LegionCircle_Faction_Legionfall"},			-- Legionfall              
	[2165] = {quest=48639, exp="leg", engname="Army of the Light", filepath="INV_LegionCircle_Faction_ArmyoftheLight"},		-- Army of the Light       
	[2045] = {quest=48641, exp="leg", engname="Armies of Legionfall", filepath="INV_LegionCircle_Faction_Legionfall"},		-- Armies of Legionfall    
	[2170] = {quest=48642, exp="leg", engname="Argussian Reach", filepath="INV_LegionCircle_Faction_ArgussianReach"},		-- Argussian Reach         
	}

local quest_icons = {
	[LE_QUEST_TAG_TYPE_NORMAL] = 1, -- default 
	[LE_QUEST_TAG_TYPE_PET_BATTLE] = 2, -- pet
	[LE_QUEST_TAG_TYPE_DUNGEON] = 3, -- dungeon
	[LE_QUEST_TAG_TYPE_RAID] = 4, -- raid
	[LE_QUEST_TAG_TYPE_INVASION] = 5, -- invasion
	[LE_QUEST_TAG_TYPE_PVP] = 6, -- pvp
	[LE_QUEST_TAG_TYPE_FACTION_ASSAULT] = 21, -- intrusion horde, alliance is icon 22, handled in code
	[LE_QUEST_TAG_TYPE_ISLANDS] = 1, -- island expeditions?
	[171] = 7, -- alchemy
	[794] = 8, -- archeology
	[164] = 9, -- blacksmith
	[182] = 10, -- herbalism
	[773] = 11, -- inscription
	[755] = 12, -- jewelcrafting
	[165] = 13, -- leatherworking
	[197] = 14, -- tailoring
	[393] = 15, -- skinning
	[185] = 16, -- cooking
	[333] = 17, -- enchanting
	[202] = 18, -- engineering
	[356] = 19, -- fishing
	[186] = 20, -- mining
	}

local locale=GetLocale()
if locale=="enGB" or locale=="enUS" then
	for i,v in pairs(faction_data) do
		faction_data[i].name = faction_data[i].engname
		faction_data[i].engname = nil
	end
end

local argus_subzones = {830, 882, 885}

-- build expansion and faction specific dropdowns, sort and add textures
local player_faction = UnitFactionGroup("player")
local WQ_FACTIONS_BFA = {}
local WQ_FACTIONS_LEG = {}
for i,v in pairs(faction_data) do if v.exp=="bfa" and (not v.faction or v.faction == player_faction) then table.insert(WQ_FACTIONS_BFA,{v.name or GetFactionInfoByID(i), true, i}) end end	
for i,v in pairs(faction_data) do if v.exp=="leg" and (not v.faction or v.faction == player_faction) then table.insert(WQ_FACTIONS_LEG,{v.name or GetFactionInfoByID(i), true, i}) end end
table.sort(WQ_FACTIONS_BFA, function(a,b) return a[1]<b[1] end)
table.sort(WQ_FACTIONS_LEG, function(a,b) return a[1]<b[1] end)
for i,v in pairs(WQ_FACTIONS_BFA) do WQ_FACTIONS_BFA[i][1] = "|TInterface\\Icons\\"..faction_data[v[3]].filepath..":14|t " .. WQ_FACTIONS_BFA[i][1] end
for i,v in pairs(WQ_FACTIONS_LEG) do WQ_FACTIONS_LEG[i][1] = "|TInterface\\Icons\\"..faction_data[v[3]].filepath..":14|t " .. WQ_FACTIONS_LEG[i][1] end

WorldQuests.Quests = {}
WorldQuests.DisplayAll = true

local world_quest_guides
function WorldQuests:Startup()
	WorldQuests:SetFilters()

	world_quest_guides = {}
	for i,guide in pairs(ZGV.registeredguides) do
		if guide.headerdata and guide.headerdata.worldquestzone then
			if type(guide.headerdata.worldquestzone)=="table" then
				for _,zone in pairs(guide.headerdata.worldquestzone) do
					world_quest_guides[zone] = guide
				end
			else
				world_quest_guides[guide.headerdata.worldquestzone] = guide
			end
		end
	end

	hooksecurefunc(WorldMap_WorldQuestPinMixin,"OnClick", function(self,button) WorldQuests:SuggestWorldQuestGuideFromMap(self) end)
	hooksecurefunc(WorldMapFrame,"OnMapChanged", function() 
		if not ZGV.db.profile.worldquestenable then return end
		WorldQuests.DisplayFrame:Show()
		WorldQuests.needToUpdate = true
		WorldQuests.useCache = false
		WorldQuests:HighlightHide()
	end)

	hooksecurefunc(WorldMapFrame,"Maximize",function() 
		WorldQuests.DisplayFrame:Hide() 
		WorldQuests:HighlightHide() 
	end)
	hooksecurefunc(WorldMapFrame,"Minimize",function()
		if not ZGV.db.profile.worldquestenable then return end
		WorldQuests.DisplayFrame:Show()
		WorldQuests.needToUpdate = true
		WorldQuests.useCache = false
	end)

	if WorldQuestTrackerAddon then
		ZGV:Hook(WorldQuestTrackerAddon,"OnQuestButtonClick", WorldQuests.WQTwrapper) -- map buttons
		WorldQuests.eventFrame=ZGV.ChainCall(CreateFrame("Frame"))
			:RegisterEvent("SUPER_TRACKED_QUEST_CHANGED")
			:SetScript("OnEvent",function(self,event,...) WorldQuests:SUPER_TRACKED_QUEST_CHANGED(event,...) end)
			:Show()
		.__END
	end

	WorldQuests.Scanner = CreateFrame("GameTooltip","ZygorWorldQuestListInspectScanningTooltip", nil, "GameTooltipTemplate")
	WorldQuests.Scanner:SetOwner(UIParent, "ANCHOR_NONE")

	WorldQuests:CreateFrame()
	WorldQuests:QueueDetailsLoad()
end

function WorldQuests:SUPER_TRACKED_QUEST_CHANGED(_,questID)
	if not questID then return end
	if not WorldQuestTrackerAddon then return end
	if not WorldQuestTrackerAddon.db.profile.use_tracker then return end
	if not WorldQuestTrackerAddon.IsQuestBeingTracked(questID) then return end
	for i,questdata in pairs(WorldQuestTrackerAddon.QuestTrackList) do
		if questdata.questID == questID then
			WorldQuests:SuggestWorldQuestGuideFromMap(nil,questID,"force",questdata.mapID)
			return
		end
	end
end

function WorldQuests.WQTwrapper(object)
	if not WorldQuestTrackerAddon.db.profile.use_tracker then return end
	if not WorldQuestTrackerAddon.IsQuestBeingTracked(object.questID) then
		WorldQuests:SuggestWorldQuestGuideFromMap(nil,object.questID,"force",object.mapID)
	end
end

local function find_world_quest_step(questID,mapID)
	local labelstep, zoneguide
	local mapid = mapID or WorldMapFrame and WorldMapFrame:GetMapID()

	if not mapid then
		ZGV:Debug("&_SUB &worldquests unable to get current map id")
		return false,false
	end
	
	zoneguide = world_quest_guides[mapid]
	
	if zoneguide then
		zoneguide:Parse(true)
		for labelname,labeldata in pairs(zoneguide.steplabels) do
			if labelname == "quest-"..questID then
				return zoneguide,labeldata[1]
			end
		end
	end
	return false,false
end

local function add_world_quest_notification(questID,questTitle,guide,labelstep,tab)
	if not (ZGV.db.profile.n_nc_enabled and ZGV.db.profile.n_popup_wq) then
		-- if nc is disabled, just open new tab
		local tab = ZGV.Tabs:GetSpecialTabFromPool("worldquestzone")
		tab:SetAsCurrent()
		ZGV:SetGuide(guide.title,labelstep)
	else
		-- otherwise show popup
		ZGV:Debug("&_SUB &worldquests popup for "..questID)
		ZGV.NotificationCenter.AddButton(
		"worldquest",
		questTitle,
		L["tabs_world_quest_new"],
		ZGV.DIR.."\\Skins\\guideicons-big",
		{0, 0.25, 0, 0.25},
		function() 
			local tab = ZGV.Tabs:GetSpecialTabFromPool("worldquestzone")
			tab:SetAsCurrent()
			ZGV:SetGuide(guide.title,labelstep) end,
		nil,
		1,
		10, --poptime
		30, --removetime
		false, --quiet
		nil,--onopen
		"worldquest")
	end
end

function WorldQuests:SuggestWorldQuestGuide(object,questID,force,mapID)
	local questID = object and object.worldQuest and object.questID or questID
	if not questID then return false end

	if IsWorldQuestWatched(questID) or force then
		local guide,labelstep = find_world_quest_step(questID,mapID)

		if not labelstep then
			ZGV:Debug("&_SUB &worldquests no label for "..questID)
			return false
		end
		
		local questTitle = C_TaskQuest.GetQuestInfoByQuestID(questID)

		if not questTitle then 
			ZGV:Debug("&_SUB &worldquests no title for "..questID)
			return false
		end

		-- if tab with world quest guide exists load guide into it, otherwise show wq popup
		if ZGV.Tabs:DoesSpecialTabExist("worldquestzone") then
			ZGV:Debug("&_SUB &worldquests setting to "..questID)
			local tab = ZGV.Tabs:GetSpecialTabFromPool("worldquestzone")
			tab:SetAsCurrent()
			ZGV:SetGuide(guide.title,labelstep,false,"silent")
		else
			ZGV:Debug("&_SUB &worldquests show popup for "..questID)
			add_world_quest_notification(questID,questTitle,guide,labelstep)
		end
		return true
	else
		ZGV:Debug("&worldquests won't switch to "..questID)
		return false
	end
end

function WorldQuests:SuggestWorldQuestGuideFromList(object)
	if not object then return end
	if not object:IsVisible() then return end
	if not object.quest then return end
	if not object.quest.questID then return end

	WorldQuests:SuggestWorldQuestGuide(nil,object.quest.questID,"force",object.quest.mapID)
end

function WorldQuests:SuggestWorldQuestGuideFromMap(object,questID,force,mapID)
	if not ZGV.db.profile.worldquestmap then return false end

	WorldQuests:SuggestWorldQuestGuide(object,questID,force,mapID)
end

local skip_currencies = {[1716]=true, [1717]=true} -- service medals, as they are static and block other rewards from showing
local function get_quest_details(data,qid)
	data.questID = qid
	data.questId = qid -- fallback, since data provider requires this camelcase.

	data.mapID = data.mapID or C_TaskQuest.GetQuestZoneID(qid)
	local mapinfo = ZGV.GetMapInfo(data.mapID)
	data.mapName = mapinfo and mapinfo.name or ""

	data.title = C_TaskQuest.GetQuestInfoByQuestID(qid)

	local tagID, tagName, worldQuestType, rarity, isElite, tradeskillLineIndex, displayTimeLeft = GetQuestTagInfo(qid);

	data.type = worldQuestType
	if rarity == LE_WORLD_QUEST_QUALITY_RARE then
		data.rarity = ITEM_QUALITY_COLORS[3].hex
	elseif rarity == LE_WORLD_QUEST_QUALITY_EPIC then
		data.rarity = ITEM_QUALITY_COLORS[4].hex
	else
		data.rarity = ""
	end

	data.tradeskillindex = tradeskillLineIndex
	if data.tradeskillindex then
		data.tradeskill = select(7, GetProfessionInfo(data.tradeskillindex));
	end
	data.time = C_TaskQuest.GetQuestTimeLeftMinutes(qid)
	data.exp = GetQuestLogRewardXP(qid)
	data.gold = GetQuestLogRewardMoney(qid)
	data.honor = GetQuestLogRewardHonor(qid)


	data.currencies = {}
	for i=1,GetNumQuestLogRewardCurrencies(qid) do
		local name, texture, count, currencyID = GetQuestLogRewardCurrencyInfo(i, qid);
		if not skip_currencies[currencyID] then
			data.currencies.name = name
			data.currencies.texture = texture
			data.currencies.count = count
			data.currencies.currencyID = currencyID
			break
		end
	end

	data.rewards = {}
	if GetNumQuestLogRewards(qid)>0 then
		WorldQuests.Scanner:SetQuestLogItem("reward", 1, qid)
		local itemlink = select(2,WorldQuests.Scanner:GetItem())
		local itemname, _, itemRarity, _, _, itemType, itemSubType, _, itemEquipLoc, itemIcon = ZGV:GetItemInfo(itemlink)

		data.rewards.itemlink = itemlink
		data.rewards.itemname = itemname
		data.rewards.itemType = itemType
		data.rewards.itemSubType = itemSubType
		data.rewards.itemEquipLoc = itemEquipLoc
		data.rewards.texture = itemIcon
		data.rewards.colorcode = ITEM_QUALITY_COLORS[itemRarity or 1].hex

		if not itemIcon then -- if we did not get icon, force refresh
			WorldQuests.useCache = false
			WorldQuests.needToUpdate = true
		end
	end

	data.reputations = ""
	data.reputationDetails = {}
	local faction_name_set = false
	for factionID,factionData in pairs(faction_data) do
		if IsQuestCriteriaForBounty(qid, factionData.quest) and (not factionData.faction or factionData.faction==player_faction) then
			data.reputations =  data.reputations.."|TInterface\\Icons\\"..faction_data[factionID].filepath..":20:20:0:4|t "
			data.reputationDetails[factionID] = "|TInterface\\Icons\\"..faction_data[factionID].filepath..":0|t "..(faction_data[factionID].name or "")
			if not faction_name_set then 
				data.reputationName = (faction_data[factionID].name or "")
				faction_name_set = true
			end
		end
	end

	data.tostring = function() return data.title end
end

function WorldQuests:GetWorldQuests()
	table.wipe(WorldQuests.Quests)

	for i,v in pairs(faction_data) do
		faction_data[i].name = faction_data[i].name or GetFactionInfoByID(i)
	end

	if not WorldMapFrame:IsVisible() then return WorldQuests.Quests end

	local current_mapid = WorldMapFrame:GetMapID()
	WorldQuests.current_mapid = current_mapid

	local mapdata = ZGV.GetMapInfo(current_mapid)

	if mapdata and mapdata.mapType==Enum.UIMapType.World then return WorldQuests.Quests end -- don't work on world maps

	local quests = C_TaskQuest.GetQuestsForPlayerByMapID(current_mapid)
	local pins = {}

	if current_mapid==905 then -- meh, argus needs workaround
		table.wipe(quests)
		for _,amap in pairs(argus_subzones) do
			for i,v in pairs(C_TaskQuest.GetQuestsForPlayerByMapID(amap)) do
				table.insert(quests,v)
			end
		end
	end

	local map_children = ZGV.GetMapChildren(current_mapid)
	if not quests then return WorldQuests.Quests end

	if WorldMapFrame.pinPools.WorldMap_WorldQuestPinTemplate then
		local o = WorldMapFrame.pinPools.WorldMap_WorldQuestPinTemplate.activeObjects
		for i,v in pairs(o) do
			pins[i.questID]=i
		end
	end

	if WorldMapFrame.pinPools.ZygorWorldQuestPinTemplate then
		local o = WorldMapFrame.pinPools.ZygorWorldQuestPinTemplate.activeObjects
		for i,v in pairs(o) do
			pins[i.questID]=i
		end
	end

	for _,quest in pairs(quests) do
		local qid = quest.questId
		local quest_type = select(3,GetQuestTagInfo(qid))
		if quest_type and ((map_children[quest.mapID] or quest.mapID==current_mapid)) then -- on current map or its proper children, we do not want bleed through from borders
			local data = {}

			-- copy blizzard data, as we will be feeding whole WorldQuests.Quests array to main data provider later
			for i,v in pairs(quest) do data[i]=v end

			data.mapID = quest.mapID
			local mapinfo = ZGV.GetMapInfo(quest.mapID)
			data.mapName = mapinfo and mapinfo.name or ""
			data.x = quest.x
			data.y = quest.y
			data.pin = pins[qid]
			data.numObjectives = quest.numObjectives

			get_quest_details(data,qid)

			table.insert(WorldQuests.Quests,data)
		end
	end
	WorldQuests.DataProvier:RefreshAllData()
	return WorldQuests.Quests 
end

function WorldQuests:FormatTime(remaining)
	local h = math.floor(remaining/60)
	local m = remaining-(h*60)

	local colour = "|cffffffff"
	if ( remaining <= WORLD_QUESTS_TIME_CRITICAL_MINUTES ) then -- 15m
		colour = "|cffff2222"
	elseif ( remaining <= WORLD_QUESTS_TIME_LOW_MINUTES ) then -- 75m
		colour = "|cffffff00"
	else
		colour = ""
	end

	local timestring = ""
	if remaining<60 then
		timestring = ("%dm"):format(m)
	else
		timestring = ("%dh %dm"):format(h,m)
	end

	return colour..timestring
end

function WorldQuests:HighlightShow(row)
	if row.quest and row.quest.pin then
		self.Highlight:SetPoint("TOPLEFT",row.quest.pin,"TOPLEFT")
		self.Highlight:Show()
	end
end

function WorldQuests:HighlightHide()
	self.Highlight:Hide()
end

function WorldQuests:IsValidQuest(object)
	if not object then return false end

	--if object.time==0 then return false end

	if #WorldQuests.Quests==0 then return true,"showing queue quests" end

	if (object.type==LE_QUEST_TAG_TYPE_NORMAL or object.type==LE_QUEST_TAG_TYPE_ISLANDS) and ZGV.db.profile.WQmode[LE_QUEST_TAG_TYPE_NORMAL]==false then return false,"rejected normal"
	elseif object.type==LE_QUEST_TAG_TYPE_PVP and ZGV.db.profile.WQmode[LE_QUEST_TAG_TYPE_PVP]==false  then return false ,"rejected pvp"
	elseif object.type==LE_QUEST_TAG_TYPE_PET_BATTLE and ZGV.db.profile.WQmode[LE_QUEST_TAG_TYPE_PET_BATTLE]==false then return false,"rejected pet" 
	elseif (object.type==LE_QUEST_TAG_TYPE_PROFESSION or object.tradeskill) and ZGV.db.profile.WQmode[LE_QUEST_TAG_TYPE_PROFESSION]==false then return false,"rejected tradeskill"
	elseif object.type==LE_QUEST_TAG_TYPE_DUNGEON and ZGV.db.profile.WQmode[LE_QUEST_TAG_TYPE_DUNGEON]==false then return false,"rejected dungeon" 
	elseif object.type==LE_QUEST_TAG_TYPE_RAID and ZGV.db.profile.WQmode[LE_QUEST_TAG_TYPE_RAID]==false then return false,"rejected raid" 
	elseif (object.type==LE_QUEST_TAG_TYPE_INVASION or object.type==LE_QUEST_TAG_TYPE_FACTION_ASSAULT) and ZGV.db.profile.WQmode[LE_QUEST_TAG_TYPE_INVASION]==false then return false,"rejected invasion" 
	end

	if object.gold>0 then 
		if not ZGV.db.profile.WQreward.gold then return false,"rejected gold" end 
	elseif object.currencies.currencyID then 
		if object.currencies.currencyID == 1553 then 
			if not ZGV.db.profile.WQreward[1553] then return false,"rejected resource" end
		elseif object.currencies.currencyID == 1560 then 
			if not ZGV.db.profile.WQreward[1560] then return false,"rejected resource" end
		elseif not ZGV.db.profile.WQreward.resources then 
			return false,"rejected resource" 
		end
	--elseif object.honor>0  then 
	--	if not ZGV.db.profile.WQreward.honor then return false,"rejected honor" end
	elseif (object.rewards.itemEquipLoc and object.rewards.itemEquipLoc~="") then 
		if not ZGV.db.profile.WQreward.gear then return false,"rejected gear" end
	elseif ZGV.db.profile.WQreward.other == false then 
		return false,"rejected other"
	end

	local valid_rep_found = false
	local any_rep_found = false
	for factionID,_ in pairs(object.reputationDetails) do
		any_rep_found = true
		if ZGV.db.profile.WQreputation[factionID] then 
			valid_rep_found = true
			break
		end
	end
	if not valid_rep_found and any_rep_found then return false,"no rep" end

	return true
end

local display_quests = {}
sh_display_quests = display_quests
function WorldQuests:Update()
	if not ZGV.db.profile.worldquestenable then return end
	if not WorldQuests.needToUpdate then return end
	if not WorldQuests.QuestList then return end
	if not WorldMapFrame:IsVisible() then return end
	if WorldMapFrame:IsMaximized() then WorldQuests.DisplayFrame:Hide() end

	WorldQuests.DisplayFrame.DisplayOverride:Hide()
	WorldQuests.DisplayFrame.ModeDropdown:Show()
	WorldQuests.DisplayFrame.RewardsDropdown:Show()
	WorldQuests.DisplayFrame.DisplayMode:Show()

	local continent = ZGV.GetMapContinent(WorldQuests.current_mapid)
	if not WorldQuests.useCache then 
		WorldQuests:GetWorldQuests() 

		if continent==905 or continent==619 or WorldQuests.current_mapid==905 or WorldQuests.current_mapid==619 then
			WorldQuests.DisplayFrame.ReputationDropdownBFA:Hide()
			WorldQuests.DisplayFrame.ReputationDropdownLEG:Show()
		else
			WorldQuests.DisplayFrame.ReputationDropdownBFA:Show()
			WorldQuests.DisplayFrame.ReputationDropdownLEG:Hide()
		end
	end -- only requery when events tell us to

	WorldQuests.useCache = false
	WorldQuests.needToUpdate = false


	-- prepare data
	local mapdata = ZGV.GetMapInfo(WorldQuests.current_mapid)
	local QuestList = WorldQuests.QuestList
	local ROW_COUNT = QuestList:CountRows()
	local Quests = WorldQuests.Quests

	if #WorldQuests.Quests==0 or not WorldQuests.DisplayAll then
		Quests = WorldQuests.QuestQueueDetails
	end

	if #WorldQuests.Quests==0 then
		WorldQuests.DisplayFrame.DisplayOverride:Show()
		WorldQuests.DisplayFrame.ModeDropdown:Hide()
		WorldQuests.DisplayFrame.RewardsDropdown:Hide()
		WorldQuests.DisplayFrame.ReputationDropdownBFA:Hide()
		WorldQuests.DisplayFrame.ReputationDropdownLEG:Hide()
		WorldQuests.DisplayFrame.DisplayMode:Hide()
	end

	if #WorldQuests.Quests==0 and #WorldQuests.QuestQueueDetails==0 then 
		WorldQuests.DisplayFrame:Hide()
	end


	-- filter
	table.wipe(display_quests)
	for ii,questItem in ipairs(Quests) do 
		if WorldQuests:IsValidQuest(questItem) then
			table.insert(display_quests,questItem)
		end
	end

	-- sort data
	local sorting_mode, sorting_dir = ZGV.db.profile.WQSorting[1], ZGV.db.profile.WQSorting[2]

	table.sort(display_quests,function(a,b)
		local a_value, b_value

		if sorting_mode=="name" then
			a_value = a.title
			b_value = b.title
		elseif sorting_mode=="faction" then
			a_value = a.reputationName
			b_value = b.reputationName
		elseif sorting_mode=="time" then
			a_value = a.time
			b_value = b.time
		elseif sorting_mode=="zone" then
			a_value = a.mapName
			b_value = b.mapName
		elseif sorting_mode=="rewards" then
			a_value = a.currencies.name or a.rewards.itemname or (a.gold and tostring("gold "..a.gold))
			b_value = b.currencies.name or b.rewards.itemname or (b.gold and tostring("gold "..b.gold))
		end

		if a_value and b_value and a_value~=b_value then
			if sorting_dir=="asc" then 
				return a_value<b_value 
			else 
				return a_value>b_value
			end
		else
			return a.title<b.title
		end
	end)

	-- display data
	WorldQuests.QuestsOffset = max(0,min(WorldQuests.QuestsOffset,#display_quests-ROW_COUNT))
	local WQ_RowNum=0
	local WQ_RowOff=WorldQuests.QuestsOffset

	--Spoo(display_quests)

	WQ_RowOff=WorldQuests.QuestsOffset
	for ii,questItem in ipairs(display_quests) do 
		WQ_RowNum = ii-WQ_RowOff
		if WQ_RowNum>0 and WQ_RowNum<ROW_COUNT+1 then 
			local row = QuestList.rows[WQ_RowNum]

			if WorldQuests.QuestQueue[questItem.questID] then
				row.toggle:SetToggle(true,"no callback")
			else
				row.toggle:SetToggle(false,"no callback")
			end

			local texture_index = quest_icons[questItem.type] or 0
			if questItem.type == LE_QUEST_TAG_TYPE_PROFESSION then
				texture_index = quest_icons[questItem.tradeskill]
			elseif questItem.type == LE_QUEST_TAG_TYPE_FACTION_ASSAULT then
				if player_faction=="alliance" then texture_index = texture_index + 1 end
			end
			row.icon:SetTexCoord((texture_index-1)/32,(texture_index)/32,0,1)
			
			row.name:SetText(questItem.rarity..questItem.title)

			local reward = questItem.rewards
			if reward.itemname then -- item
				local rewardtext = reward.itemname
				if reward.itemEquipLoc~="" then rewardtext = _G[reward.itemEquipLoc] or "" end
				row.rewards:SetText( reward.colorcode ..rewardtext.."|r")
				row.rewardicon:SetTexture( reward.texture )
			elseif questItem.currencies.name then -- currencies
				local cur = questItem.currencies
				row.rewards:SetText( ("x %s"):format(cur.count) )
				row.rewardicon:SetTexture( cur.texture )
			elseif questItem.gold>0 then
				row.rewards:SetText( ZGV.GetMoneyString(questItem.gold) )
				row.rewardicon:SetTexture(133784)
			else
				row.rewards:SetText( "" )
				row.rewardicon:SetTexture(ZGV.DIR.."\\Skins\\blank")
				WorldQuests.useCache = false
				WorldQuests.needToUpdate = true
			end

			row.faction:SetText( questItem.reputations )

			row.time:SetText( WorldQuests:FormatTime(questItem.time or 0) )

			row.zone:SetText(questItem.mapName)
			row:Show()

			row.quest = questItem

			row.backalpha = WQ_RowNum%2==0 and 0.0 or 0.06
			row.back:SetAlpha(row.backalpha)
		end
	end
	QuestList.scrollbar:TotalValue(#display_quests)
	QuestList.scrollbar:SetValue(WQ_RowOff)
	for r=WQ_RowNum+1,ROW_COUNT do QuestList.rows[r]:Hide() QuestList.rows[r].item=nil end

	WorldQuests.DataProvier:RefreshAllData()
	WorldQuests:QueueDetailsLoad()
end

function WorldQuests:ShowTooltipReward(row)
	local quest = row.quest

	if quest.rewards.itemlink then
		GameTooltip:SetHyperlink(quest.rewards.itemlink)
	elseif quest.currencies.name then -- currencies
		GameTooltip:AddLine( quest.currencies.count.." "..quest.currencies.name )
	elseif quest.gold>0 then
		GameTooltip:AddLine( ZGV.GetMoneyString(quest.gold) )
	end	
	WorldQuests:HighlightShow(row) 
end

function WorldQuests:ShowTooltipQuest(row)
	-- code lifted and adjusted from blizzards TaskPOI_OnEnter
	local tooltip_object = WorldMapTooltip or GameTooltip

	local questItem = row.quest
	tooltip_object:SetOwner(row.name, "ANCHOR_BOTTOM");

	if ( not HaveQuestData(questItem.questID) ) then
		tooltip_object:SetText(RETRIEVING_DATA, RED_FONT_COLOR.r, RED_FONT_COLOR.g, RED_FONT_COLOR.b);
		tooltip_object:Show();
		return;
	end

	local title, factionID, capped = C_TaskQuest.GetQuestInfoByQuestID(questItem.questID);
	if ( questItem.worldQuest ) then
		local tagID, tagName, worldQuestType, rarity, isElite, tradeskillLineIndex, displayTimeLeft = GetQuestTagInfo(questItem.questID);
		local color = WORLD_QUEST_QUALITY_COLORS[rarity];
		tooltip_object:SetText(title, color.r, color.g, color.b);
		QuestUtils_AddQuestTypeToTooltip(tooltip_object, questItem.questID, NORMAL_FONT_COLOR);
			
		local factionName = factionID and GetFactionInfoByID(factionID);
		if (factionName) then
			local reputationYieldsRewards = (not capped) or C_Reputation.IsFactionParagon(factionID);
			if (reputationYieldsRewards) then
				tooltip_object:AddLine(factionName);
			else 
				tooltip_object:AddLine(factionName, GRAY_FONT_COLOR:GetRGB());
			end
		end

		if displayTimeLeft then
			WorldMap_AddQuestTimeToTooltip(questItem.questID);
		end
	else
		tooltip_object:SetText(title);
	end

	for objectiveIndex = 1, questItem.numObjectives do
		local objectiveText, objectiveType, finished, numFulfilled, numRequired = GetQuestObjectiveInfo(questItem.questID, objectiveIndex, false);
		if ( objectiveText and #objectiveText > 0 ) then
			local color = finished and GRAY_FONT_COLOR or HIGHLIGHT_FONT_COLOR;
			tooltip_object:AddLine(QUEST_DASH .. objectiveText, color.r, color.g, color.b, true);
		end
	end
	local objectiveText, objectiveType, finished, numFulfilled, numRequired = GetQuestObjectiveInfo(questItem.questID, 1, false);
	local percent = C_TaskQuest.GetQuestProgressBarInfo(questItem.questID);
	if ( percent ) then
		GameTooltip_ShowProgressBar(tooltip_object, 0, 100, percent, PERCENTAGE_STRING:format(percent));
	end

	GameTooltip_AddQuestRewardsToTooltip(tooltip_object, questItem.questID);

	if ( questItem.worldQuest and tooltip_object.AddDebugWorldQuestInfo ) then
		tooltip_object:AddDebugWorldQuestInfo(questItem.questID);
	end

	tooltip_object:Show();
	tooltip_object.recalculatePadding = true;

	WorldQuests:HighlightShow(row) 
end

function WorldQuests:ShowTooltipFaction(row)
	for i,line in pairs(row.quest.reputationDetails) do
		GameTooltip:AddLine( line )
	end
	WorldQuests:HighlightShow(row) 
end

function WorldQuests:ToggleAll(isChecked)
	local Quests = WorldQuests.Quests

	if #WorldQuests.Quests==0 or not WorldQuests.DisplayAll then
		Quests = WorldQuests.QuestQueueDetails
	end

	for i,quest in pairs(Quests) do
		if WorldQuests:IsValidQuest(quest) then
			if isChecked then
				ZGV:Debug("&worldquests queueued "..quest.questID)
				WorldQuests.QuestQueue[quest.questID] = {m=quest.mapID, x=quest.x, y=quest.y, questID=quest.questID, numObjectives=quest.numObjectives}
			else
				ZGV:Debug("&worldquests unqueueued "..quest.questID)
				WorldQuests.QuestQueue[quest.questID] = nil
			end
		end
	end

	WorldQuests:QueueDetailsLoad()

	WorldQuests.needToUpdate = true
	WorldQuests.useCache = true
end

function WorldQuests:CreateFrame()	
	self.DisplayFrame = CHAIN(ui:Create("Frame",WorldMapFrame,"ZGVWQ"))
		:SetPoint("TOPLEFT",WorldMapFrame,"TOPRIGHT")
		:SetPoint("BOTTOMLEFT",WorldMapFrame,"BOTTOMRIGHT")
		:SetWidth(520)
		:EnableMouse(true)
		:RegisterEvent("QUEST_WATCH_LIST_CHANGED")
		:RegisterEvent("QUEST_LOG_UPDATE")
		:RegisterEvent("AREA_POIS_UPDATED")
		:RegisterEvent("QUEST_REMOVED")
		:SetScript("OnEvent",function() 
			WorldQuests.needToUpdate = true
			WorldQuests.useCache = false
		end)
		:SetScript("OnUpdate",function() WorldQuests:Update() end)
		:Hide()
		.__END
	local MF = self.DisplayFrame 



	MF.Logo = CHAIN(MF:CreateTexture())
		:SetPoint("TOP",MF,"TOP",0,-3) 
		:SetSize(100,25)
		:SetTexture(SkinData("TitleLogo"))
	.__END
	MF.close = CHAIN(CreateFrame("Button",nil,MF))
		:SetPoint("TOPRIGHT",-5,-5)
		:SetSize(17,17)
		:SetScript("OnClick",function() WorldQuests:Hide() ZGV.db.profile.worldquestenable=false end)
		.__END
	ZGV.F.AssignButtonTexture(MF.close,(SkinData("TitleButtons")),6,32)

	MF.DisplayMode = CHAIN(ui:Create("ToggleButton",MF))
		:SetPoint("TOPLEFT",MF,"TOPLEFT",16,-35)
		:SetFont(FONT,12)
		:SetText("Show only selected")
		:SetToggle(false)
		:SetScript("OnEnter",function(self) 
			CHAIN(GameTooltip):SetOwner(self, "ANCHOR_BOTTOM") 
			:SetText(type(self.tooltip)=="function" and self:tooltip() or tostring(self.tooltip)) 
			:Show() 
			end)
		:SetScript("OnLeave",function(self) GameTooltip:Hide() if WorldMapTooltip then WorldMapTooltip:Hide() end end)
	.__END
	MF.DisplayMode.tooltip = "Show only quests from all zones\nyou have added to the queue"
	MF.DisplayMode:RegisterToggleCallback(function()
		WorldQuests.DisplayAll = not MF.DisplayMode:IsChecked()
		WorldQuests.needToUpdate = true
		WorldQuests.useCache = true
	end)

	MF.DisplayOverride = CHAIN(MF:CreateFontString())
		:SetSize(260,20)
		:SetPoint("TOPLEFT",MF,"TOPLEFT",15,-32)
		:SetFont(FONT,12)
		:SetJustifyH("LEFT")
		:SetText("No quests in this zone. Showing your queue.")
		:Hide()
	.__END


	-- dropdowns
	local profile = ZGV.db.profile
	-- Type
	MF.ModeDropdown = CHAIN(ui:Create("Multiselect",MF,2,MF:GetFrameLevel()+2))
		:SetPoint("TOPLEFT",MF,"TOPLEFT",190,-30)
		:SetSize(100,20)
		:AddTooltip("ANCHOR_TOPLEFT","Type")
		:SetName("Type")
	.__END
	
	for optnum,opt in ipairs(WQ_TYPES) do
		local item = MF.ModeDropdown:AddItem(opt[1],opt[2],opt[3], function(item) 
			ZGV.db.profile.WQmode[opt[3]] = not ZGV.db.profile.WQmode[opt[3]] 
			item.checked= ZGV.db.profile.WQmode[opt[3]] 
			WorldQuests.needToUpdate = true
			WorldQuests.useCache = true
		end, opt[4])
		item.checked = ZGV.db.profile.WQmode[opt[3]]
	end

	-- Reward
	MF.RewardsDropdown = CHAIN(ui:Create("Multiselect",MF,2,MF:GetFrameLevel()+2))
		:SetPoint("TOPLEFT",MF.ModeDropdown.frame,"TOPRIGHT",10,0)
		:SetSize(100,20)
		:AddTooltip("ANCHOR_TOPLEFT","Reward")
		:SetName("Reward")
	.__END
	
	for optnum,opt in ipairs(WQ_REWARDS) do
		local item = MF.RewardsDropdown:AddItem(opt[1],opt[2],opt[3], function(item) 
			ZGV.db.profile.WQreward[opt[3]] = not ZGV.db.profile.WQreward[opt[3]] 
			item.checked= ZGV.db.profile.WQreward[opt[3]] 
			WorldQuests.needToUpdate = true
			WorldQuests.useCache = true
		end, opt[4])
		item.checked = ZGV.db.profile.WQreward[opt[3]]
	end

	-- Rep
	MF.ReputationDropdownBFA = CHAIN(ui:Create("Multiselect",MF,2,MF:GetFrameLevel()+2))
		:SetPoint("TOPLEFT",MF.RewardsDropdown.frame,"TOPRIGHT",10,0)
		:SetSize(100,20)
		:AddTooltip("ANCHOR_TOPLEFT","Faction")
		:SetName("Faction")
	.__END
	for optnum,opt in ipairs(WQ_FACTIONS_BFA) do
		local item = MF.ReputationDropdownBFA:AddItem(opt[1],opt[2],opt[3], function(item) 
			ZGV.db.profile.WQreputation[opt[3]] = not ZGV.db.profile.WQreputation[opt[3]] 
			item.checked= ZGV.db.profile.WQreputation[opt[3]] 
			WorldQuests.needToUpdate = true
			WorldQuests.useCache = true
		end, opt[4])
		item.checked = ZGV.db.profile.WQreputation[opt[3]]
	end
	MF.ReputationDropdownLEG = CHAIN(ui:Create("Multiselect",MF,2,MF:GetFrameLevel()+2))
		:SetPoint("TOPLEFT",MF.RewardsDropdown.frame,"TOPRIGHT",10,0)
		:SetSize(100,20)
		:AddTooltip("ANCHOR_TOPLEFT","Faction")
		:SetName("Faction")
		:Hide()
	.__END
	for optnum,opt in ipairs(WQ_FACTIONS_LEG) do
		local item = MF.ReputationDropdownLEG:AddItem(opt[1],opt[2],opt[3], function(item) 
			ZGV.db.profile.WQreputation[opt[3]] = not ZGV.db.profile.WQreputation[opt[3]] 
			item.checked= ZGV.db.profile.WQreputation[opt[3]] 
			WorldQuests.needToUpdate = true
			WorldQuests.useCache = true
		end, opt[4])
		item.checked = ZGV.db.profile.WQreputation[opt[3]]
	end

	WorldQuests:SetFilters()

	-- Content
	self.QuestList = ui:Create("ScrollTable",MF,"ZGVWQLIST",DATATABLE_COLUMNS,DATATABLE_DATA)
	--self.QuestList.col_toggle:Hide()
	--self.QuestList.col_icon:SetPoint("TOPLEFT",self.QuestList,"TOPLEFT",23,0)

	self.QuestList.col_toggle:RegisterToggleCallback(function()
		WorldQuests:ToggleAll(self.QuestList.col_toggle:IsChecked())
	end)



	self.QuestList:SetScript("OnMouseWheel", function(self,delta)
		WorldQuests.QuestsOffset=WorldQuests.QuestsOffset-delta
		WorldQuests.needToUpdate = true
		WorldQuests.useCache = true
		WorldQuests.hideTooltip=true
		WorldQuests.Highlight:Hide()
		GameTooltip:Hide()
		if WorldMapTooltip then WorldMapTooltip:Hide() end
	end)
	self.QuestList.scrollbar:SetScript("OnVerticalScroll",function(me,offset)
		WorldQuests.QuestsOffset=math.round(offset)
		WorldQuests.needToUpdate = true
		WorldQuests.useCache = true
		WorldQuests.Highlight:Hide()
		GameTooltip:Hide()
		if WorldMapTooltip then WorldMapTooltip:Hide() end
	end)

	for rownum,row in ipairs(self.QuestList.rows) do
		row:SetScript("OnEnter", function() WorldQuests:HighlightShow(row) end)
		row:SetScript("OnLeave", function() WorldQuests:HighlightHide(row) end)
		
		row:SetScript("OnClick", function() 
			-- when we select world quest, waypoint.showwaypoints fires twice, and since we do not want to switch maps, lets have showwaypoints ignore next two map switches
			-- hackish, but it makes the map behave the way we want to
			WorldQuests.PreventMapSwitch = 2 
			WorldQuests:SuggestWorldQuestGuideFromList(row) 
		end)

		-- add overlay to toggle so that clicking outside the small rectangle does not trigger row onclick event
		row.toggleOverlay = CHAIN(CreateFrame("Button",nil,row))
			:SetPoint("TOP")
			:SetPoint("BOTTOM")
			:SetPoint("LEFT",row.toggle,"LEFT",-5,0)
			:SetPoint("RIGHT",row.toggle,"RIGHT",5,0)
			:SetScript("OnClick",function() row.toggle:Toggle(not row.toggle.curToggle) end)
		.__END

		row.toggle:RegisterToggleCallback(function()
			WorldQuests:QueueUpdate(row)
		end)

		--row.toggle:SetPoint("LEFT",row,"LEFT",-10,0)
	end

	MF.SelectedQuests = CHAIN(MF:CreateFontString())
		:SetSize(160,20)
		:SetPoint("TOPLEFT",self.QuestList,"BOTTOMLEFT", 0,0)
		:SetFont(FONT,12)
		:SetJustifyH("LEFT")
		:SetText("0 Quests Selected")
	.__END

	MF.StartButton = CHAIN(CreateFrame("Button", nil, MF, nil))
		:SetBackdrop(SkinData("GuideBackdrop"))
		:SetBackdropColor(0,0,0,1)
		:SetBackdropBorderColor(unpack(SkinData("GuideBackdropBorderColor")))
		:SetSize(20,20)
		:SetScript("OnClick",function(self,button) WorldQuests:QueueProcess() end)
		:SetPoint("LEFT",MF.SelectedQuests,"RIGHT",10,-1)
		:Show()
		:SetScript("OnEnter",function(self) 
			GameTooltip:SetOwner(self, "ANCHOR_BOTTOM") 
			GameTooltip:SetText("Start queued quests") 
			GameTooltip:Show() 
		end)
		:SetScript("OnLeave",function(self) GameTooltip:Hide() if WorldMapTooltip then WorldMapTooltip:Hide() end end)
	.__END
	ZGV.F.AssignButtonTexture(MF.StartButton,SkinData("TitleButtons"),11,32)
	MF.StartButton:GetNormalTexture():SetRotation(1.57079633) -- 90 degree in radians
	MF.StartButton:GetPushedTexture():SetRotation(1.57079633) -- 90 degree in radians
	MF.StartButton:GetHighlightTexture():SetRotation(1.57079633) -- 90 degree in radians
	MF.StartButton:GetDisabledTexture():SetRotation(1.57079633) -- 90 degree in radians

	MF.FooterSettingsButton = CHAIN(CreateFrame("Button",nil,MF))
		:SetPoint("BOTTOMRIGHT",-5,5)
		:SetSize(15,15)
		:SetScript("OnClick",function() ZGV:OpenOptions() end)
	.__END
	ZGV.F.AssignButtonTexture(MF.FooterSettingsButton,(SkinData("TitleButtons")),5,32)

	self.Highlight = CHAIN(CreateFrame("Button",nil,MF))
		:SetSize(25,25)
		:SetNormalTexture(ZGV.SkinDir.."mapicons")
		:SetAlpha(0.7)
	.__END
	self.Highlight:GetNormalTexture():SetTexCoord(1/2,1,0,1/2)
end

function WorldQuests:SetFilters()
	if not ZGV.db.profile.WQSorting then
		ZGV.db.profile.WQSorting = {"name","asc"}
	end

	if not ZGV.db.profile.WQmode then
		ZGV.db.profile.WQmode = {}
		for optnum,opt in ipairs(WQ_TYPES) do ZGV.db.profile.WQmode[opt[3]]=opt[2] end
	end

	if not ZGV.db.profile.WQreward then 
		ZGV.db.profile.WQreward = {}
		for optnum,opt in ipairs(WQ_REWARDS) do ZGV.db.profile.WQreward[opt[3]]=opt[2] end
	end

	if not ZGV.db.profile.WQreputation then
		ZGV.db.profile.WQreputation = {}
		for optnum,opt in ipairs(WQ_FACTIONS_BFA) do ZGV.db.profile.WQreputation[opt[3]]=opt[2] end
		for optnum,opt in ipairs(WQ_FACTIONS_LEG) do ZGV.db.profile.WQreputation[opt[3]]=opt[2] end
	end

	ZGV.db.char.QuestQueue = ZGV.db.char.QuestQueue or {}
	WorldQuests.QuestQueue = ZGV.db.char.QuestQueue
end

function WorldQuests:Hide()
	self.DisplayFrame:Hide()
end

WorldQuests.QuestQueueDetails = {} -- used in display only selected quests mode
function WorldQuests:QueueUpdate(row)
	if not row then return end
	if not row.quest then return end
	local quest = row.quest

	-- toggle single row
	if row.toggle:IsChecked() then
		ZGV:Debug("&worldquests queueued "..quest.questID)
		WorldQuests.QuestQueue[quest.questID] = {m=quest.mapID, x=quest.x, y=quest.y, questID=quest.questID, numObjectives=quest.numObjectives}
	else
		ZGV:Debug("&worldquests unqueueued "..quest.questID)
		WorldQuests.QuestQueue[quest.questID] = nil
	end

	
	-- update toggle all rows state
	local Quests = WorldQuests.Quests
	if #WorldQuests.Quests==0 or not WorldQuests.DisplayAll then
		Quests = WorldQuests.QuestQueueDetails
	end

	local all_toggled = true
	for i,quest in pairs(Quests) do
		if not (WorldQuests:IsValidQuest(quest) and WorldQuests.QuestQueue[quest.questID]) then
			all_toggled = false
			break
		end
	end

	WorldQuests.QuestList.col_toggle:SetToggle(all_toggled,"no callback")

	WorldQuests:QueueDetailsLoad()
end

function WorldQuests:QueueDetailsLoad()
	table.wipe(WorldQuests.QuestQueueDetails)
	for qid,qdata in pairs(WorldQuests.QuestQueue) do
		if C_TaskQuest.IsActive(qid) then
			local data = {numObjectives=qdata.numObjectives}
			get_quest_details(data,qid)
			table.insert(WorldQuests.QuestQueueDetails,data)
		else
			WorldQuests.QuestQueue[qid] = nil
		end
	end
	WorldQuests:QueueUpdateButton()
end

local more_points = {}
function WorldQuests:QueueProcess()
	WorldQuests:QueueDetailsLoad()
	ZGV:Debug("&worldquests QueueProcess")

	table.wipe(more_points)
	local endpoint

	local current_zone = C_Map.GetBestMapForUnit("player")
	local mapinfo = ZGV.GetMapInfo(current_zone)
	local parent = mapinfo and mapinfo.parentMapID

	if ZGV.db.profile.worldquestlocal then
		-- check quests in current zone
		for questID,quest in pairs(WorldQuests.QuestQueue) do
			if quest.m == current_zone then
				if endpoint then
					table.insert(more_points,{m=quest.m, x=quest.x, y=quest.y, questID=questID, title="quest "..questID, noskip=true})
				else
					endpoint = quest
				end
			end
		end
		if endpoint then 
			LibRover:FindPath(0,0,0, endpoint.m,endpoint.x,endpoint.y, ZGV.WorldQuests.QueuePathHandler, {direct=not ZGV.db.profile.pathfinding, multiple_ends=more_points, reportEnd=true })
			return
		end

		-- if current zone is cleared, check its parent
		for questID,quest in pairs(WorldQuests.QuestQueue) do
			if quest.m == parent then
				if endpoint then
					table.insert(more_points,{m=quest.m, x=quest.x, y=quest.y, questID=questID, title="quest "..questID, noskip=true})
				else
					endpoint = quest
				end
			end
		end
		if endpoint then 
			LibRover:FindPath(0,0,0, endpoint.m,endpoint.x,endpoint.y, ZGV.WorldQuests.QueuePathHandler, {direct=not ZGV.db.profile.pathfinding, multiple_ends=more_points, reportEnd=true })
			return
		end
	end

	-- if current and parent are cleared, check quests in all zones
	_,endpoint = next(WorldQuests.QuestQueue)
	if not endpoint then return end

	for questID,quest in pairs(WorldQuests.QuestQueue) do
		table.insert(more_points,{m=quest.m, x=quest.x, y=quest.y, questID=questID, title="quest "..questID, noskip=true})
	end

	LibRover:FindPath(0,0,0, endpoint.m,endpoint.x,endpoint.y, ZGV.WorldQuests.QueuePathHandler, {direct=not ZGV.db.profile.pathfinding, multiple_ends=more_points, reportEnd=true })
end

function WorldQuests:QueueUpdateButton()
	local queue_count = 0
	for questID,quest in pairs(WorldQuests.QuestQueue) do
		queue_count = queue_count + 1
	end

	WorldQuests.DisplayFrame.SelectedQuests:SetText(queue_count.." quests selected")
end

function WorldQuests.QueuePathHandler(state,path,ext,reason)
	local result,rm,rx,ry,rq
	if state=="success" then
		local m,x,y = ext.endnode.m, ext.endnode.x, ext.endnode.y
		rm,rx,ry = m,x,y
		ZGV:Debug("&worldquests handler success",m,x,y)
		for i,v in pairs(WorldQuests.QuestQueue) do
			if v.m==m and v.x==x and v.y==y then
				rq = v.questID
				result = WorldQuests:SuggestWorldQuestGuide(nil,v.questID,true,m)
			end
		end
	elseif state=="failure" then
		ZGV:Debug("&worldquests handler failure")
		local _,quest = next(WorldQuests.QuestQueue)
		rm,rx,ry,rq = quest.m, quest.x, quest.y, quest.questID
		result = WorldQuests:SuggestWorldQuestGuide(nil,quest.questID,true,quest.m)
	end

	if (state=="success" or state=="failure") and not result then
		local guide = world_quest_guides[rm or 0]
		-- open current zone wq guide in tab
		if guide then
			local tab = ZGV.Tabs:GetSpecialTabFromPool("worldquestzone")
			tab:SetAsCurrent()
			ZGV:SetGuide(guide.title)
		end
		ZGV.Pointer:SetWaypoint(rm,rx,ry,{title=C_TaskQuest.GetQuestInfoByQuestID(rq),arrow=true,findpath=true,type="manual"},true)
	end

end

function WorldQuests:QuestsQueued()
	return #WorldQuests.QuestQueueDetails>0
end

WorldQuests.DataProvier = CreateFromMixins(WorldQuestDataProviderMixin)

function WorldQuests.DataProvier:GetPinTemplate()
	return "ZygorWorldQuestPinTemplate";
end

function WorldQuests.DataProvier:RefreshAllData()
	local pinsToRemove = {};
	for questID in pairs(self.activePins) do
		pinsToRemove[questID] = true;
	end

	local mapCanvas = self:GetMap();

	local mapID = mapCanvas:GetMapID();
	if (mapID and ZGV.db.profile.worldquestenable) then
		local mapdata = ZGV.GetMapInfo(mapID)
		if mapdata and mapdata.mapType==Enum.UIMapType.Continent then -- only show our pins on continents, leave rest to default blizzard
			for i, info in ipairs(WorldQuests.Quests) do
				pinsToRemove[info.questId] = nil;
				local pin = self.activePins[info.questId];
				if pin then
					pin:RefreshVisuals();
					pin:SetPosition(info.x, info.y);
				else
					self.activePins[info.questId] = self:AddWorldQuest(info);
				end
			end
		end
	end


	for questID in pairs(pinsToRemove) do
		mapCanvas:RemovePin(self.activePins[questID]);
		self.activePins[questID] = nil;
	end

	mapCanvas:TriggerEvent("WorldQuestsUpdate", mapCanvas:GetNumActivePinsByTemplate(self:GetPinTemplate()));
end

WorldMapFrame:AddDataProvider(WorldQuests.DataProvier)

tinsert(ZGV.startups,{"WorldQuests",function(self)
	WorldQuests:Startup()
	WorldQuests.QuestsOffset = 0
end})
