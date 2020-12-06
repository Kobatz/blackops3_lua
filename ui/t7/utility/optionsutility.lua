-- Decompiled with CoDLUIDecompiler by JariK

require("ui_mp.T6.GameOptions")
CoD.GameSettingsUtility = {}
function CoD.GameSettingsUtility.GetRestrictionOptions()
	local registerVal0 = {}
	local registerVal1 = {}
	registerVal1.option = "MENU_BAN_PROTECT"
	registerVal1.desc = "MENU_ITEM_BAN_PROTECT_DESC"
	registerVal1.value = Enum.ItemRestrictionState.ITEM_RESTRICTION_STATE_NONE
	registerVal1.default = true
	local registerVal2 = {}
	registerVal2.option = "MENU_RESTRICTED"
	registerVal2.desc = "MENU_ITEM_RESTRICTED_DESC"
	registerVal2.value = Enum.ItemRestrictionState.ITEM_RESTRICTION_STATE_RESTRICTED
	local registerVal3 = {}
	registerVal3.option = "MENU_BAN_ONLY"
	registerVal3.desc = "MENU_ITEM_BAN_ONLY_DESC"
	registerVal3.value = Enum.ItemRestrictionState.ITEM_RESTRICTION_STATE_BANONLY
	local registerVal4 = {}
	registerVal4.option = "MENU_PROTECTED"
	registerVal4.desc = "MENU_ITEM_PROTECTED_DESC"
	registerVal4.value = Enum.ItemRestrictionState.ITEM_RESTRICTION_STATE_PROTECTED
	registerVal0 = {registerVal1, registerVal2, registerVal3, registerVal4}
	return registerVal0
end

function CoD.GameSettingsUtility.GetGroupRestrictionOptions()
	local registerVal0 = {}
	local registerVal1 = {}
	registerVal1.option = "MENU_CUSTOM"
	registerVal1.desc = ""
	registerVal1.value = nil
	local registerVal2 = {}
	registerVal2.option = "MENU_BAN_PROTECT"
	registerVal2.desc = "MENU_ITEM_BAN_PROTECT_DESC"
	registerVal2.value = Enum.ItemRestrictionState.ITEM_RESTRICTION_STATE_NONE
	registerVal2.default = true
	local registerVal3 = {}
	registerVal3.option = "MENU_RESTRICTED"
	registerVal3.desc = "MENU_ITEM_RESTRICTED_DESC"
	registerVal3.value = Enum.ItemRestrictionState.ITEM_RESTRICTION_STATE_RESTRICTED
	local registerVal4 = {}
	registerVal4.option = "MENU_BAN_ONLY"
	registerVal4.desc = "MENU_ITEM_BAN_ONLY_DESC"
	registerVal4.value = Enum.ItemRestrictionState.ITEM_RESTRICTION_STATE_BANONLY
	local registerVal5 = {}
	registerVal5.option = "MENU_PROTECTED"
	registerVal5.desc = "MENU_ITEM_PROTECTED_DESC"
	registerVal5.value = Enum.ItemRestrictionState.ITEM_RESTRICTION_STATE_PROTECTED
	registerVal0 = {registerVal1, registerVal2, registerVal3, registerVal4, registerVal5}
	return registerVal0
end

CoD.GameSettingsUtility.MaxSplitscreenBots = 12.000000
function CoD.GameSettingsUtility.GetMaxBotsCount()
	local registerVal0 = Engine.GetLobbyLocalClientCount(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	if 1.000000 < registerVal0 then
		return CoD.GameSettingsUtility.MaxSplitscreenBots
	else
		return LuaEnums.MAX_CLIENTS
	end
end

function CoD.GameSettingsUtility.UpdateBreadCrumbNodes(arg0)
	if CoD.GameSettingsUtility[arg0] == nil then
		return true
	end
	local registerVal4, registerVal5, registerVal6 = ipairs(CoD.GameSettingsUtility[arg0].children)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		local registerVal9 = CoD.GameSettingsUtility.UpdateBreadCrumbNodes(value8)
		if not registerVal9 then
		else
		end
	end
	if CoD.GameSettingsUtility[arg0].defaultFunc then
		registerVal4 = CoD.GameSettingsUtility[arg0].defaultFunc()
		CoD.GameSettingsUtility[arg0].default = registerVal4
		return CoD.GameSettingsUtility[arg0].default
	end
	registerVal6 = CoD.GameSettingsUtility[arg0].settingsFunction()
	local registerVal7, registerVal8, registerVal9 = ipairs(registerVal6)
	for index10,value11 in registerVal7, registerVal8, registerVal9 do
		if CoD.GameOptions.GameSettings[value11] then
		else
		end
		local registerVal13 = Engine.GetGametypeSetting((CoD.GameOptions.GameSettings[value11].setting or ), true)
		registerVal13 = Engine.GetGametypeSetting((CoD.GameOptions.GameSettings[value11].setting or ))
		if registerVal13 ~= registerVal13 then
		end
		if not true then
		else
		end
	end
	CoD.GameSettingsUtility[arg0].default = true
	return true
end

local registerVal1 = {}
registerVal1.parent = nil
registerVal1.default = true
local function __FUNC_21A8_()
	return {}
end

registerVal1.settingsFunction = __FUNC_21A8_
local registerVal2 = {}
registerVal2 = {"GameSettings_GameModeRules", "GameSettings_GlobalSettings"}
registerVal1.children = registerVal2
CoD.GameSettingsUtility.GameSettings_Main = registerVal1
registerVal1 = {}
registerVal1.parent = "GameSettings_Main"
registerVal1.default = true
local function __FUNC_21DC_()
	local registerVal0 = Dvar.ui_gametype:get()
	local registerVal4, registerVal5, registerVal6 = ipairs(CoD.GameOptions.TopLevelGametypeSettings[registerVal0])
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		{}[(#CoD.GameOptions.GameSettings[value8].setting + 1.000000)] = value8
	end
	registerVal4, registerVal5, registerVal6 = ipairs(CoD.GameOptions.GlobalTopLevelGametypeSettings)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		{}[(#CoD.GameOptions.GameSettings[value8].setting + 1.000000)] = value8
	end
	return {}
end

registerVal1.settingsFunction = __FUNC_21DC_
registerVal2 = {}
registerVal2 = {"GameSettings_EditModeSpecificOptions", "GameSettings_GeneralSettings", "GameSettings_SpawnSettings", "GameSettings_HealthAndDamageSettings", "GameSettings_Competitive", "GameSettings_CreateAClassSettings"}
registerVal1.children = registerVal2
CoD.GameSettingsUtility.GameSettings_GameModeRules = registerVal1
registerVal1 = {}
registerVal1.parent = "GameSettings_Main"
registerVal1.default = true
local function __FUNC_2404_()
	return CoD.GameOptions.GlobalSettings
end

registerVal1.settingsFunction = __FUNC_2404_
registerVal1.children = {}
CoD.GameSettingsUtility.GameSettings_GlobalSettings = registerVal1
registerVal1 = {}
registerVal1.parent = "GameSettings_GameModeRules"
registerVal1.default = true
local function __FUNC_248A_()
	local registerVal0 = Dvar.ui_gametype:get()
	return CoD.GameOptions.SubLevelGametypeSettings[registerVal0]
end

registerVal1.settingsFunction = __FUNC_248A_
registerVal1.children = {}
CoD.GameSettingsUtility.GameSettings_EditModeSpecificOptions = registerVal1
registerVal1 = {}
registerVal1.parent = "GameSettings_GameModeRules"
registerVal1.default = true
local function __FUNC_256C_()
	return CoD.GameOptions.GeneralSettings
end

registerVal1.settingsFunction = __FUNC_256C_
registerVal1.children = {}
CoD.GameSettingsUtility.GameSettings_GeneralSettings = registerVal1
registerVal1 = {}
registerVal1.parent = "GameSettings_GameModeRules"
registerVal1.default = true
local function __FUNC_25F3_()
	return CoD.GameOptions.SpawnSettings
end

registerVal1.settingsFunction = __FUNC_25F3_
registerVal1.children = {}
CoD.GameSettingsUtility.GameSettings_SpawnSettings = registerVal1
registerVal1 = {}
registerVal1.parent = "GameSettings_GameModeRules"
registerVal1.default = true
local function __FUNC_2675_()
	return CoD.GameOptions.HealthAndDamageSettings
end

registerVal1.settingsFunction = __FUNC_2675_
registerVal1.children = {}
CoD.GameSettingsUtility.GameSettings_HealthAndDamageSettings = registerVal1
registerVal1 = {}
registerVal1.parent = "GameSettings_GameModeRules"
registerVal1.default = true
local function __FUNC_2703_()
	return {}
end

registerVal1.settingsFunction = __FUNC_2703_
registerVal2 = {}
registerVal2 = {"GameSettings_CompetitiveSettings", "GameSettings_CompetitiveAdvancedSettings"}
registerVal1.children = registerVal2
CoD.GameSettingsUtility.GameSettings_Competitive = registerVal1
registerVal1 = {}
registerVal1.parent = "GameSettings_Competitive"
registerVal1.default = true
local function __FUNC_2734_()
	local registerVal0 = {}
	registerVal0 = {"pregameItemVoteEnabled", "pregameDraftEnabled"}
	return registerVal0
end

registerVal1.settingsFunction = __FUNC_2734_
registerVal2 = {}
registerVal2 = {"Competitive_Settings_Weapons", "Competitive_Settings_Attachments", "Competitive_Settings_Perks", "Competitive_Settings_Equipment", "Competitive_Settings_Wildcards", "Competitive_Settings_Specialists", "Competitive_Settings_Scorestreaks"}
registerVal1.children = registerVal2
CoD.GameSettingsUtility.GameSettings_CompetitiveSettings = registerVal1
registerVal1 = {}
registerVal1.parent = "GameSettings_GameModeRules"
registerVal1.default = true
local function __FUNC_27B1_()
	for index0=0.000000, 255.000000, 1.000000 do
		if CoD.statsTable then
			local registerVal4 = CoD.CACUtility.GetIdForItemRef(index0)
		end
		local registerVal5 = Engine.ItemIndexValid(index0)
		registerVal5 = CoD.BlackMarketUtility.IsUnreleasedBlackMarketItem(registerVal4)
		registerVal5 = Engine.GetUnlockableInfoByIndex(index0)
		if registerVal5 and not registerVal5 and 0.000000 <= registerVal5.allocation then
			if registerVal5.loadoutSlot == "primary" or registerVal5.loadoutSlot == "secondary" then
				local registerVal6 = Engine.GetItemRestrictionState(index0, true)
				local registerVal7 = Engine.GetItemRestrictionState(index0)
				if registerVal7 ~= registerVal6 then
					return false
				end
			end
		end
	end
	return true
end

registerVal1.defaultFunc = __FUNC_27B1_
registerVal1.children = {}
CoD.GameSettingsUtility.Competitive_Settings_Weapons = registerVal1
registerVal1 = {}
registerVal1.parent = "Competitive_Settings_Weapons"
registerVal1.default = true
local function __FUNC_2A6E_()
	for index0=0.000000, 255.000000, 1.000000 do
		if CoD.statsTable then
			local registerVal4 = CoD.CACUtility.GetIdForItemRef(index0)
		end
		local registerVal5 = Engine.ItemIndexValid(index0)
		registerVal5 = CoD.BlackMarketUtility.IsUnreleasedBlackMarketItem(registerVal4)
		registerVal5 = Engine.GetUnlockableInfoByIndex(index0)
		local registerVal6 = Engine.GetItemRestrictionState(index0, true)
		local registerVal7 = Engine.GetItemRestrictionState(index0)
		if registerVal5 and not registerVal5 and 0.000000 <= registerVal5.allocation and registerVal5.loadoutSlot == "primary" and registerVal5.groupIndex == Enum.itemGroup_t.ITEMGROUP_SMG and registerVal7 ~= registerVal6 then
			return false
		end
	end
	return true
end

registerVal1.defaultFunc = __FUNC_2A6E_
registerVal1.children = {}
CoD.GameSettingsUtility.Competitive_Settings_Weapons_SMG = registerVal1
registerVal1 = {}
registerVal1.parent = "Competitive_Settings_Weapons"
registerVal1.default = true
local function __FUNC_2D81_()
	for index0=0.000000, 255.000000, 1.000000 do
		if CoD.statsTable then
			local registerVal4 = CoD.CACUtility.GetIdForItemRef(index0)
		end
		local registerVal5 = Engine.ItemIndexValid(index0)
		registerVal5 = CoD.BlackMarketUtility.IsUnreleasedBlackMarketItem(registerVal4)
		registerVal5 = Engine.GetUnlockableInfoByIndex(index0)
		local registerVal6 = Engine.GetItemRestrictionState(index0, true)
		local registerVal7 = Engine.GetItemRestrictionState(index0)
		if registerVal5 and not registerVal5 and 0.000000 <= registerVal5.allocation and registerVal5.loadoutSlot == "primary" and registerVal5.groupIndex == Enum.itemGroup_t.ITEMGROUP_ASSAULT and registerVal7 ~= registerVal6 then
			return false
		end
	end
	return true
end

registerVal1.defaultFunc = __FUNC_2D81_
registerVal1.children = {}
CoD.GameSettingsUtility.Competitive_Settings_Weapons_AR = registerVal1
registerVal1 = {}
registerVal1.parent = "Competitive_Settings_Weapons"
registerVal1.default = true
local function __FUNC_3099_()
	for index0=0.000000, 255.000000, 1.000000 do
		if CoD.statsTable then
			local registerVal4 = CoD.CACUtility.GetIdForItemRef(index0)
		end
		local registerVal5 = Engine.ItemIndexValid(index0)
		registerVal5 = CoD.BlackMarketUtility.IsUnreleasedBlackMarketItem(registerVal4)
		registerVal5 = Engine.GetUnlockableInfoByIndex(index0)
		local registerVal6 = Engine.GetItemRestrictionState(index0, true)
		local registerVal7 = Engine.GetItemRestrictionState(index0)
		if registerVal5 and not registerVal5 and 0.000000 <= registerVal5.allocation and registerVal5.loadoutSlot == "primary" and registerVal5.groupIndex == Enum.itemGroup_t.ITEMGROUP_CQB and registerVal7 ~= registerVal6 then
			return false
		end
	end
	return true
end

registerVal1.defaultFunc = __FUNC_3099_
registerVal1.children = {}
CoD.GameSettingsUtility.Competitive_Settings_Weapons_CQB = registerVal1
registerVal1 = {}
registerVal1.parent = "Competitive_Settings_Weapons"
registerVal1.default = true
local function __FUNC_33AD_()
	for index0=0.000000, 255.000000, 1.000000 do
		if CoD.statsTable then
			local registerVal4 = CoD.CACUtility.GetIdForItemRef(index0)
		end
		local registerVal5 = Engine.ItemIndexValid(index0)
		registerVal5 = CoD.BlackMarketUtility.IsUnreleasedBlackMarketItem(registerVal4)
		registerVal5 = Engine.GetUnlockableInfoByIndex(index0)
		local registerVal6 = Engine.GetItemRestrictionState(index0, true)
		local registerVal7 = Engine.GetItemRestrictionState(index0)
		if registerVal5 and not registerVal5 and 0.000000 <= registerVal5.allocation and registerVal5.loadoutSlot == "primary" and registerVal5.groupIndex == Enum.itemGroup_t.ITEMGROUP_LMG and registerVal7 ~= registerVal6 then
			return false
		end
	end
	return true
end

registerVal1.defaultFunc = __FUNC_33AD_
registerVal1.children = {}
CoD.GameSettingsUtility.Competitive_Settings_Weapons_LMG = registerVal1
registerVal1 = {}
registerVal1.parent = "Competitive_Settings_Weapons"
registerVal1.default = true
local function __FUNC_36C1_()
	for index0=0.000000, 255.000000, 1.000000 do
		if CoD.statsTable then
			local registerVal4 = CoD.CACUtility.GetIdForItemRef(index0)
		end
		local registerVal5 = Engine.ItemIndexValid(index0)
		registerVal5 = CoD.BlackMarketUtility.IsUnreleasedBlackMarketItem(registerVal4)
		registerVal5 = Engine.GetUnlockableInfoByIndex(index0)
		local registerVal6 = Engine.GetItemRestrictionState(index0, true)
		local registerVal7 = Engine.GetItemRestrictionState(index0)
		if registerVal5 and not registerVal5 and 0.000000 <= registerVal5.allocation and registerVal5.loadoutSlot == "primary" and registerVal5.groupIndex == Enum.itemGroup_t.ITEMGROUP_SNIPER and registerVal7 ~= registerVal6 then
			return false
		end
	end
	return true
end

registerVal1.defaultFunc = __FUNC_36C1_
registerVal1.children = {}
CoD.GameSettingsUtility.Competitive_Settings_Weapons_SNIPER = registerVal1
registerVal1 = {}
registerVal1.parent = "Competitive_Settings_Weapons"
registerVal1.default = true
local function __FUNC_39D8_()
	for index0=0.000000, 255.000000, 1.000000 do
		if CoD.statsTable then
			local registerVal4 = CoD.CACUtility.GetIdForItemRef(index0)
		end
		local registerVal5 = Engine.ItemIndexValid(index0)
		registerVal5 = CoD.BlackMarketUtility.IsUnreleasedBlackMarketItem(registerVal4)
		registerVal5 = Engine.GetUnlockableInfoByIndex(index0)
		local registerVal6 = Engine.GetItemRestrictionState(index0, true)
		local registerVal7 = Engine.GetItemRestrictionState(index0)
		if registerVal5 and not registerVal5 and 0.000000 <= registerVal5.allocation and registerVal5.loadoutSlot == "secondary" and registerVal7 ~= registerVal6 then
			return false
		end
	end
	return true
end

registerVal1.defaultFunc = __FUNC_39D8_
registerVal1.children = {}
CoD.GameSettingsUtility.Competitive_Settings_Weapons_SECONDARY = registerVal1
registerVal1 = {}
registerVal1.parent = "GameSettings_GameModeRules"
registerVal1.default = true
local function __FUNC_3C71_()
	local registerVal0 = Engine.AnyAttachmentRestrictionStateChanged()
	return (not registerVal0)
end

registerVal1.defaultFunc = __FUNC_3C71_
registerVal1.children = {}
CoD.GameSettingsUtility.Competitive_Settings_Attachments = registerVal1
registerVal1 = {}
registerVal1.parent = "GameSettings_GameModeRules"
registerVal1.default = true
local function __FUNC_3CF6_()
	for index0=0.000000, 255.000000, 1.000000 do
		local registerVal4 = Engine.ItemIndexValid(index0)
		registerVal4 = Engine.GetUnlockableInfoByIndex(index0)
		local registerVal5 = LUI.startswith(registerVal4.loadoutSlot, "specialty")
		registerVal5 = Engine.GetItemRestrictionState(index0, true)
		local registerVal6 = Engine.GetItemRestrictionState(index0)
		if registerVal4 and 0.000000 <= registerVal4.allocation and registerVal5 and registerVal6 ~= registerVal5 then
			return false
		end
	end
	return true
end

registerVal1.defaultFunc = __FUNC_3CF6_
registerVal1.children = {}
CoD.GameSettingsUtility.Competitive_Settings_Perks = registerVal1
registerVal1 = {}
registerVal1.parent = "GameSettings_GameModeRules"
registerVal1.default = true
local function __FUNC_3ECF_()
	for index0=0.000000, 255.000000, 1.000000 do
		local registerVal4 = Engine.ItemIndexValid(index0)
		registerVal4 = Engine.GetUnlockableInfoByIndex(index0)
		if registerVal4 and 0.000000 <= registerVal4.allocation then
			if registerVal4.loadoutSlot == "primarygadget" or registerVal4.loadoutSlot == "secondarygadget" then
				local registerVal5 = Engine.GetItemRestrictionState(index0, true)
				local registerVal6 = Engine.GetItemRestrictionState(index0)
				if registerVal6 ~= registerVal5 then
					return false
				end
			end
		end
	end
	return true
end

registerVal1.defaultFunc = __FUNC_3ECF_
registerVal1.children = {}
CoD.GameSettingsUtility.Competitive_Settings_Equipment = registerVal1
registerVal1 = {}
registerVal1.parent = "GameSettings_GameModeRules"
registerVal1.default = true
local function __FUNC_409F_()
	for index0=0.000000, 255.000000, 1.000000 do
		local registerVal4 = Engine.ItemIndexValid(index0)
		registerVal4 = Engine.GetUnlockableInfoByIndex(index0)
		local registerVal5 = LUI.startswith(registerVal4.loadoutSlot, "bonuscard")
		registerVal5 = Engine.GetItemRestrictionState(index0, true)
		local registerVal6 = Engine.GetItemRestrictionState(index0)
		if registerVal4 and 0.000000 <= registerVal4.allocation and registerVal5 and registerVal6 ~= registerVal5 then
			return false
		end
	end
	return true
end

registerVal1.defaultFunc = __FUNC_409F_
registerVal1.children = {}
CoD.GameSettingsUtility.Competitive_Settings_Wildcards = registerVal1
registerVal1 = {}
registerVal1.parent = "GameSettings_GameModeRules"
registerVal1.default = true
local function __FUNC_4277_()
	for index0=0.000000, 255.000000, 1.000000 do
		local registerVal4 = Engine.ItemIndexValid(index0)
		registerVal4 = Engine.GetUnlockableInfoByIndex(index0)
		if registerVal4 and 0.000000 <= registerVal4.allocation then
			local registerVal5 = LuaUtils.StartsWith(registerVal4.loadoutSlot, "hero")
			if not 255.000000 or registerVal4.loadoutSlot == "specialgadget" then
				registerVal5 = Engine.GetItemRestrictionState(index0, true)
				local registerVal6 = Engine.GetItemRestrictionState(index0)
				if registerVal6 ~= registerVal5 then
					return false
				end
			end
		end
	end
	return true
end

registerVal1.defaultFunc = __FUNC_4277_
registerVal1.children = {}
CoD.GameSettingsUtility.Competitive_Settings_Specialists = registerVal1
registerVal1 = {}
registerVal1.parent = "GameSettings_GameModeRules"
registerVal1.default = true
local function __FUNC_447A_()
	for index0=0.000000, 255.000000, 1.000000 do
		local registerVal4 = Engine.ItemIndexValid(index0)
		registerVal4 = Engine.GetUnlockableInfoByIndex(index0)
		local registerVal5 = LuaUtils.StartsWith(registerVal4.loadoutSlot, "killstreak")
		registerVal5 = Engine.GetItemRestrictionState(index0, true)
		local registerVal6 = Engine.GetItemRestrictionState(index0)
		if registerVal4 and 0.000000 <= registerVal4.allocation and registerVal5 and registerVal6 ~= registerVal5 then
			return false
		end
	end
	return true
end

registerVal1.defaultFunc = __FUNC_447A_
registerVal1.children = {}
CoD.GameSettingsUtility.Competitive_Settings_Scorestreaks = registerVal1
registerVal1 = {}
registerVal1.parent = "GameSettings_Competitive"
registerVal1.default = true
local function __FUNC_4659_()
	local registerVal0 = {}
	registerVal0 = {"pregamePreStageTime", "pregamePostRoundTime", "pregamePostStageTime", "pregameAlwaysShowCACEdit", "pregameAlwaysShowStreakEdit", "pregamePositionSortType", "pregamePositionShuffleMethod"}
	return registerVal0
end

registerVal1.settingsFunction = __FUNC_4659_
registerVal1.children = {}
CoD.GameSettingsUtility.GameSettings_CompetitiveAdvancedSettings = registerVal1
registerVal1 = {}
registerVal1.parent = "GameSettings_GameModeRules"
registerVal1.default = true
local function __FUNC_4793_()
	local registerVal0 = {}
	registerVal0 = {"disableCAC", "maxAllocation", "presetClassesPerTeam"}
	return registerVal0
end

registerVal1.settingsFunction = __FUNC_4793_
registerVal1.children = {}
CoD.GameSettingsUtility.GameSettings_CreateAClassSettings = registerVal1
CoD.OptionsUtility = {}
function CoD.OptionsUtility.ItemSelectedFunction(arg0, arg1, arg2, arg3, arg4)
	if arg3 then
		Engine.SetProfileVar(arg2, arg3, arg1.value)
	end
end

function CoD.OptionsUtility.GetCustomProfileSelection(arg0, arg1, arg2)
	local registerVal3, registerVal4, registerVal5 = ipairs(arg1)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		if arg1[index6].value == arg2 then
			return index6
		end
	end
end

function CoD.OptionsUtility.GetProfileSelection(arg0, arg1, arg2)
	local registerVal3 = Engine.ProfileValueAsString(arg0, arg2)
	tonumber(registerVal3)
	return CoD.OptionsUtility.GetCustomProfileSelection(arg0, arg1, tonumber)
end

function CoD.OptionsUtility.CreateOptionDataSource(arg0, arg1, arg2, arg3)
	local function __FUNC_4ADB_(arg0)
		local registerVal2, registerVal3, registerVal4 = ipairs(arg2)
		for index5,value6 in registerVal2, registerVal3, registerVal4 do
			local registerVal7 = {}
			local registerVal8 = {}
			registerVal8.text = value6.name
			registerVal7.models = registerVal8
			registerVal8 = {}
			registerVal8.value = value6.value
			registerVal8.actionParam = arg3
			registerVal8.action = CoD.OptionsUtility.ItemSelectedFunction
			if #arg2 > 2.000000 then
			end
			registerVal8.loopEdges = true
			registerVal7.properties = registerVal8
			registerVal8, registerVal9, registerVal10 = pairs(value6.customModels)
			for index11,value12 in registerVal8, registerVal9, registerVal10 do
				registerVal7.models[index11] = value12
			end
			table.insert({}, registerVal7)
		end
		{}[1.000000].properties.first = true
		{}[#arg2].properties.last = true
		return {}
	end

	local registerVal5 = DataSourceHelpers.ListSetup(arg1, __FUNC_4ADB_, true)
	DataSources[arg1] = registerVal5
	return arg1
end

function CoD.OptionsUtility.CustomItemSelectedFunction(arg0, arg1, arg2, arg3, arg4)
	if arg3 then
		Engine.SetProfileVar(arg2, arg3, arg1.value)
	end
	arg1.valueChangedCallback(arg1.value, arg2)
end

function CoD.OptionsUtility.CreateCustomOptionDataSource(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
	local function __FUNC_4EFF_(arg0)
		if not arg5 then
			Unhandled OpCode: HKS_OPCODE_SETUPVAL_R1 (2, 0, 0, 0x4E)
		end
		local registerVal2, registerVal3, registerVal4 = ipairs(arg2)
		for index5,value6 in registerVal2, registerVal3, registerVal4 do
			local registerVal9 = {}
			local registerVal10 = {}
			registerVal10.text = arg2[index5].name
			registerVal9.models = registerVal10
			registerVal10 = {}
			registerVal10.value = arg2[index5].value
			registerVal10.options = arg2
			registerVal10.actionParam = arg3
			registerVal10.action = arg5
			registerVal10.valueChangedCallback = arg4
			registerVal10.revertAction = arg6
			registerVal9.properties = registerVal10
			table.insert({}, registerVal9)
		end
		{}[1.000000].properties.first = true
		{}[#arg2].properties.last = true
		return {}
	end

	local registerVal8 = DataSourceHelpers.ListSetup(arg1, __FUNC_4EFF_, true)
	DataSources[arg1] = registerVal8
	return arg1
end

function CoD.OptionsUtility.GametypeSettingsItemSelectedFunction(arg0, arg1, arg2, arg3, arg4)
	local registerVal6 = Engine.GetGametypeSetting(arg3, false)
	UpdateInfoModels(arg1)
	if arg1.value == registerVal6 then
		return 
	end
	if arg3 == "hardcoreMode" then
		CoD.GameOptions.HardcoreSettingChanged(arg1.value, arg2)
	end
	print(("Setting GametypeSetting: " .. arg3 .. " to: " .. arg1.value))
	Engine.SetGametypeSetting(arg3, arg1.value)
	local registerVal8 = Engine.GetGlobalModel()
	local registerVal7 = Engine.CreateModel(registerVal8, "GametypeSettings")
	registerVal8 = Engine.CreateModel(registerVal7, arg3)
	Engine.SetModelValue(registerVal8, arg1.value)
	Engine.LobbyHostSessionSetDirty(Enum.LobbyType.LOBBY_TYPE_GAME, Enum.SessionDirty.SESSION_DIRTY_UI)
end

function CoD.OptionsUtility.CreateGametypeSettingsDataSource(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = tonumber(Engine.GetGametypeSetting(arg3))
	if registerVal5 == nil then
	end
	local function __FUNC_5653_(arg0)
		local registerVal2, registerVal3, registerVal4 = ipairs(arg2)
		for index5,value6 in registerVal2, registerVal3, registerVal4 do
			local registerVal9 = {}
			local registerVal10 = {}
			registerVal10.text = arg2[index5].name
			registerVal9.models = registerVal10
			registerVal10 = {}
			registerVal10.title = arg2[index5].title
			registerVal10.desc = arg2[index5].desc
			registerVal10.image = arg2[index5].image
			registerVal10.value = arg2[index5].value
			registerVal10.actionParam = arg3
			registerVal10.action = CoD.OptionsUtility.GametypeSettingsItemSelectedFunction
			if arg2[index5].value ~= 0.000000 then
			end
			registerVal10.selectIndex = true
			registerVal10.loopEdges = arg4
			local function __FUNC_5996_(arg0)
				Engine.SetGametypeSetting(arg3, Engine.GetGametypeSetting(arg3, true))
			end

			registerVal10.revert = __FUNC_5996_
			registerVal9.properties = registerVal10
			table.insert({}, registerVal9)
		end
		{}[1.000000].properties.first = true
		{}[#arg2].properties.last = true
		return {}
	end

	local registerVal7 = DataSourceHelpers.ListSetup(arg1, __FUNC_5653_, nil, nil, nil)
	DataSources[arg1] = registerVal7
	return arg1
end

function CoD.OptionsUtility.CreateEnabledDisabledProfileVar(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = {}
	local registerVal6 = {}
	local registerVal7 = Engine.Localize("MENU_ENABLED")
	registerVal6.name = registerVal7
	registerVal6.value = 1.000000
	registerVal6.title = arg1
	registerVal6.desc = arg2
	registerVal7 = {}
	local registerVal8 = Engine.Localize("MENU_DISABLED")
	registerVal7.name = registerVal8
	registerVal7.value = 0.000000
	registerVal7.title = arg1
	registerVal7.desc = arg2
	registerVal5 = {registerVal6, registerVal7}
	registerVal6 = {}
	registerVal7 = {}
	registerVal8 = Engine.Localize(arg1)
	registerVal7.name = registerVal8
	registerVal8 = Engine.Localize(arg2)
	registerVal7.desc = registerVal8
	registerVal8 = RegisterMaterial("")
	registerVal7.image = registerVal8
	registerVal8 = CoD.OptionsUtility.CreateOptionDataSource(arg0, arg4, registerVal5, arg3)
	registerVal7.optionsDatasource = registerVal8
	registerVal8 = CoD.OptionsUtility.GetProfileSelection(arg0, registerVal5, arg3)
	registerVal7.currentSelection = registerVal8
	registerVal6.models = registerVal7
	registerVal6.properties = {}
	return registerVal6
end

function CoD.OptionsUtility.CreateEnabledDisabledOptions(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = {}
	local registerVal6 = {}
	local registerVal7 = Engine.Localize("MENU_ENABLED")
	registerVal6.name = registerVal7
	registerVal6.value = 1.000000
	registerVal6.title = arg1
	registerVal6.desc = arg2
	registerVal7 = {}
	local registerVal8 = Engine.Localize("MENU_DISABLED")
	registerVal7.name = registerVal8
	registerVal7.value = 0.000000
	registerVal7.title = arg1
	registerVal7.desc = arg2
	registerVal5 = {registerVal6, registerVal7}
	registerVal6 = {}
	registerVal7 = {}
	registerVal8 = Engine.Localize(arg1)
	registerVal7.name = registerVal8
	registerVal8 = Engine.Localize(arg2)
	registerVal7.desc = registerVal8
	registerVal8 = RegisterMaterial("")
	registerVal7.image = registerVal8
	registerVal8 = CoD.OptionsUtility.CreateGametypeSettingsDataSource(arg0, arg4, registerVal5, arg3, true)
	registerVal7.optionsDatasource = registerVal8
	registerVal7.setting = arg3
	registerVal6.models = registerVal7
	registerVal7 = {}
	local function __FUNC_5FB5_(arg0)
		Engine.SetGametypeSetting(arg3, Engine.GetGametypeSetting(arg3, true))
	end

	registerVal7.revert = __FUNC_5FB5_
	registerVal6.properties = registerVal7
	return registerVal6
end

function CoD.OptionsUtility.CreateListOptions(arg0, arg1, arg2, arg3, arg4, arg5)
	if not arg4.setting then
	end
	local registerVal8 = Engine.GetDecimalDelimiter()
	local registerVal9, registerVal10, registerVal11 = ipairs(arg4.values)
	for index12,value13 in registerVal9, registerVal10, registerVal11 do
		local registerVal15 = tonumber(value13)
		if registerVal15 then
			registerVal15 = string.gsub(value13, "%.", registerVal8, 1.000000)
		end
		if arg4.labels then
			if arg4.labels[index12] then
			else
			end
		end
		if arg2 then
			if arg2[index12] then
			else
			end
		end
		local registerVal18 = {}
		local registerVal19 = Engine.Localize(arg4.labels[#arg4.labels], registerVal15)
		registerVal18.name = registerVal19
		registerVal18.value = value13
		registerVal18.title = arg1
		registerVal18.desc = arg2[#arg2[index12]]
		{}[(##arg2[index12] + 1.000000)] = registerVal18
	end
	registerVal9 = {}
	registerVal10 = {}
	registerVal11 = Engine.Localize(arg1)
	registerVal10.name = registerVal11
	registerVal11 = RegisterMaterial("")
	registerVal10.image = registerVal11
	registerVal11 = CoD.OptionsUtility.CreateGametypeSettingsDataSource(arg0, arg5, {}, arg3, true)
	registerVal10.optionsDatasource = registerVal11
	registerVal10.setting = arg3
	registerVal9.models = registerVal10
	registerVal10 = {}
	local function __FUNC_6468_(arg0)
		Engine.SetGametypeSetting(arg3, Engine.GetGametypeSetting(arg3, true))
	end

	registerVal10.revert = __FUNC_6468_
	registerVal9.properties = registerVal10
	return registerVal9
end

function CoD.OptionsUtility.CreateDvarSettingsDataSource(arg0, arg1, arg2, arg3, arg4, arg5)
	local registerVal6 = Engine.DvarInt(nil, arg3)
	if registerVal6 == nil then
	end
	local function __FUNC_660E_(arg0)
		local registerVal2, registerVal3, registerVal4 = ipairs(arg2)
		for index5,value6 in registerVal2, registerVal3, registerVal4 do
			local registerVal9 = {}
			local registerVal10 = {}
			registerVal10.text = arg2[index5].name
			registerVal9.models = registerVal10
			registerVal10 = {}
			registerVal10.title = arg2[index5].title
			registerVal10.desc = arg2[index5].desc
			registerVal10.image = arg2[index5].image
			registerVal10.value = arg2[index5].value
			registerVal10.default = arg2[index5].default
			registerVal10.actionParam = arg3
			registerVal10.action = arg5
			if arg2[index5].value ~= 0.000000 then
			end
			registerVal10.selectIndex = true
			registerVal10.loopEdges = arg4
			local function __FUNC_6921_(arg0, arg1, arg2)
				if arg0.default == true then
				end
				return true
			end

			registerVal10.showChangeIndicator = __FUNC_6921_
			registerVal9.properties = registerVal10
			table.insert({}, registerVal9)
		end
		{}[1.000000].properties.first = true
		{}[#arg2].properties.last = true
		return {}
	end

	local registerVal8 = DataSourceHelpers.ListSetup(arg1, __FUNC_660E_, nil, nil, nil)
	DataSources[arg1] = registerVal8
	return arg1
end

function CoD.OptionsUtility.CreateDvarSettings(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
	local registerVal10, registerVal11, registerVal12 = ipairs(arg5)
	for index13,value14 in registerVal10, registerVal11, registerVal12 do
		if value14.default == true then
		end
		local registerVal17 = {}
		registerVal17.name = value14.option
		registerVal17.value = value14.value
		registerVal17.title = arg1
		registerVal17.desc = arg2
		registerVal17.default = value14.default
		table.insert({}, registerVal17)
	end
	registerVal10 = {}
	registerVal11 = {}
	registerVal12 = Engine.Localize(arg1)
	registerVal11.name = registerVal12
	registerVal12 = Engine.Localize(arg2)
	registerVal11.desc = registerVal12
	registerVal11.image = arg6
	registerVal12 = CoD.OptionsUtility.CreateDvarSettingsDataSource(arg0, arg3, {}, arg4, false, arg7)
	registerVal11.optionsDatasource = registerVal12
	registerVal10.models = registerVal11
	registerVal11 = {}
	local function __FUNC_6C33_(arg0)
		Engine.SetDvar(arg4, value14.value)
	end

	registerVal11.revert = __FUNC_6C33_
	registerVal10.properties = registerVal11
	return registerVal10
end

function CoD.OptionsUtility.CreateNamedSettings(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
	local registerVal8, registerVal9, registerVal10 = ipairs(arg5)
	for index11,value12 in registerVal8, registerVal9, registerVal10 do
		local registerVal15 = {}
		registerVal15.name = value12.option
		registerVal15.value = value12.value
		registerVal15.title = arg1
		registerVal15.desc = arg2
		table.insert({}, registerVal15)
	end
	registerVal8 = {}
	registerVal9 = {}
	registerVal10 = Engine.Localize(arg1)
	registerVal9.name = registerVal10
	registerVal10 = Engine.Localize(arg2)
	registerVal9.desc = registerVal10
	registerVal9.image = arg6
	registerVal10 = CoD.OptionsUtility.CreateGametypeSettingsDataSource(arg0, arg3, {}, arg4)
	registerVal9.optionsDatasource = registerVal10
	registerVal9.setting = arg4
	registerVal8.models = registerVal9
	registerVal9 = {}
	local function __FUNC_6F15_(arg0)
		Engine.SetGametypeSetting(arg4, Engine.GetGametypeSetting(arg4, true))
	end

	registerVal9.revert = __FUNC_6F15_
	registerVal8.properties = registerVal9
	return registerVal8
end

function UpdateInfoModels(arg0)
	local registerVal5 = Engine.GetGlobalModel()
	local registerVal4 = Engine.CreateModel(registerVal5, "GametypeSettings")
	local registerVal6 = Engine.CreateModel(registerVal4, "title")
	Engine.SetModelValue(registerVal6, arg0.title)
	registerVal6 = Engine.CreateModel(registerVal4, "description")
	Engine.SetModelValue(registerVal6, arg0.desc)
	registerVal6 = Engine.CreateModel(registerVal4, "image")
	Engine.SetModelValue(registerVal6, arg0.image)
end

function CoD.OptionsUtility.GametypeSettingsSetItemRestrictionState(arg0, arg1, arg2, arg3, arg4)
	UpdateInfoModels(arg1)
	if arg3.itemIndex then
		local registerVal7 = Engine.GetItemRestrictionState(arg3.itemIndex, false)
		if arg1.value == registerVal7 then
			return 
		end
		Engine.SetItemRestrictionState(arg3.itemIndex, arg1.value)
		print(("Setting Item Restriction: Item: " .. arg3.itemIndex .. " State: " .. arg1.value))
		registerVal7 = arg1:getParent()
		registerVal7 = registerVal7:getParent()
		registerVal7 = registerVal7:getParent()
		local registerVal9 = {}
		registerVal9.name = "update_state"
		registerVal9.controller = arg2
		registerVal7:processEvent(registerVal9)
		Engine.LobbyHostSessionSetDirty(Enum.LobbyType.LOBBY_TYPE_GAME, Enum.SessionDirty.SESSION_DIRTY_UI)
	end
end

function CoD.OptionsUtility.GametypeSettingsSetAttachmentRestrictionState(arg0, arg1, arg2, arg3, arg4)
	UpdateInfoModels(arg1)
	if not arg1.value then
		return 
	end
	local registerVal7, registerVal8 = CoD.CACUtility.GetAllItems()
	local registerVal9, registerVal10, registerVal11 = pairs(registerVal7)
	for index12,value13 in registerVal9, registerVal10, registerVal11 do
		local registerVal14 = Engine.GetAttachmentRestrictionState(arg3.attachmentIndex, index12, false)
		if value13.attachments and value13.attachments[arg3.attachmentIndex] and arg1.value ~= registerVal14 then
			Engine.SetAttachmentRestrictionState(arg3.attachmentIndex, index12, arg1.value)
			print(("Setting Weapon Attachment Restriction: Attachment: " .. arg3.attachmentIndex .. " Weapon: " .. index12 .. " State: " .. arg1.value))
		end
	end
end

function CoD.OptionsUtility.GametypeSettingsSetAttachmentRestrictionStateForGroup(arg0, arg1, arg2, arg3, arg4)
	UpdateInfoModels(arg1)
	if not arg1.value then
		return 
	end
	local registerVal8, registerVal9 = CoD.CACUtility.GetAllItems()
	local registerVal10, registerVal11, registerVal12 = pairs(registerVal8)
	for index13,value14 in registerVal10, registerVal11, registerVal12 do
		local registerVal15 = Engine.GetAttachmentRestrictionState(arg3.attachmentIndex, index13, false)
		if value14.attachments and value14.attachments[arg3.attachmentIndex] and arg3.weaponGroups[value14.groupIndex] and arg1.value ~= registerVal15 then
			Engine.SetAttachmentRestrictionState(arg3.attachmentIndex, index13, arg1.value)
			print(("Setting Weapon Attachment Restriction: Attachment: " .. arg3.attachmentIndex .. " Weapon: " .. index13 .. " State: " .. arg1.value))
		end
	end
	registerVal11 = Engine.GetGlobalModel()
	registerVal10 = Engine.CreateModel(registerVal11, "GametypeSettings")
	registerVal11 = Engine.CreateModel(registerVal10, "updateWeaponList")
	Engine.ForceNotifyModelSubscriptions(registerVal11)
	registerVal12 = arg1:getParent()
	local registerVal13 = registerVal12:getParent()
	registerVal13 = registerVal13:getParent()
	if registerVal12 and registerVal13 and registerVal13 then
		registerVal15 = {}
		registerVal15.name = "update_state"
		registerVal15.controller = arg2
		registerVal13:processEvent(registerVal15)
	end
end

function CoD.OptionsUtility.GametypeSettingsSetAttachmentRestrictionStateForWeapon(arg0, arg1, arg2, arg3, arg4)
	UpdateInfoModels(arg1)
	local registerVal8 = Engine.GetAttachmentRestrictionState(arg3.attachmentIndex, arg3.weaponIndex, false)
	if arg1.value == registerVal8 then
		return 
	end
	Engine.SetAttachmentRestrictionState(arg3.attachmentIndex, arg3.weaponIndex, arg1.value)
	print(("Setting Weapon Attachment Restriction: Attachment: " .. arg3.attachmentIndex .. " Weapon: " .. arg3.weaponIndex .. " State: " .. arg1.value))
	local registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.CreateModel(registerVal9, "GametypeSettings")
	registerVal9 = Engine.CreateModel(registerVal8, "updateWeaponGroup")
	Engine.ForceNotifyModelSubscriptions(registerVal9)
	local registerVal10 = arg1:getParent()
	registerVal10 = registerVal10:getParent()
	registerVal10 = registerVal10:getParent()
	local registerVal12 = {}
	registerVal12.name = "update_state"
	registerVal12.controller = arg2
	registerVal10:processEvent(registerVal12)
end

function CoD.OptionsUtility.CreateItemRestrictionSettings(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
	local registerVal11, registerVal12, registerVal13 = ipairs(arg4)
	for index14,value15 in registerVal11, registerVal12, registerVal13 do
		local registerVal18 = {}
		registerVal18.name = value15.option
		registerVal18.value = value15.value
		registerVal18.title = arg1
		registerVal18.desc = value15.desc
		registerVal18.image = arg5
		registerVal18.disabled = value15.disabled
		registerVal18.default = value15.default
		table.insert({}, registerVal18)
	end
	local function __FUNC_8292_(arg0)
		local registerVal2, registerVal3, registerVal4 = ipairs({})
		for index5,value6 in registerVal2, registerVal3, registerVal4 do
			local registerVal9 = {}
			local registerVal10 = {}
			registerVal10.text = {}[index5].name
			registerVal9.models = registerVal10
			registerVal10 = {}
			registerVal10.title = {}[index5].title
			registerVal10.desc = {}[index5].desc
			registerVal10.image = {}[index5].image
			registerVal10.value = {}[index5].value
			registerVal10.default = {}[index5].default
			registerVal10.actionParam = arg7
			registerVal10.action = arg6
			local registerVal12 = arg8(arg7)
			if {}[index5].value ~= registerVal12 then
			end
			registerVal10.selectIndex = true
			registerVal10.loopEdges = false
			local function __FUNC_85C7_(arg0, arg1, arg2)
				if arg0.default == true then
				end
				return true
			end

			registerVal10.showChangeIndicator = __FUNC_85C7_
			local function __FUNC_8623_(arg0)
				arg9(arg0)
			end

			registerVal10.revert = __FUNC_8623_
			registerVal9.properties = registerVal10
			table.insert({}, registerVal9)
		end
		{}[1.000000].properties.first = true
		{}[#{}].properties.last = true
		return {}
	end

	registerVal12 = DataSourceHelpers.ListSetup(arg3, __FUNC_8292_, nil, nil, nil)
	DataSources[arg3] = registerVal12
	registerVal11 = {}
	registerVal12 = {}
	registerVal13 = Engine.Localize(arg1)
	registerVal12.name = registerVal13
	registerVal13 = Engine.Localize(arg2)
	registerVal12.desc = registerVal13
	registerVal12.image = arg5
	registerVal12.optionsDatasource = arg3
	registerVal12.itemIndex = arg7.itemIndex
	registerVal12.attachmentIndex = arg7.attachmentIndex
	registerVal12.weaponIndex = arg7.weaponIndex
	registerVal12.weaponGroups = arg7.weaponGroups
	registerVal11.models = registerVal12
	registerVal12 = {}
	registerVal12.itemIndex = arg7.itemIndex
	registerVal12.attachmentIndex = arg7.attachmentIndex
	registerVal12.weaponIndex = arg7.weaponIndex
	registerVal12.weaponGroups = arg7.weaponGroups
	local function __FUNC_8658_(arg0)
		arg9(arg0)
	end

	registerVal12.revert = __FUNC_8658_
	registerVal11.properties = registerVal12
	return registerVal11
end

CoD.OptionsUtility.REGULATION_FETCH_IDLE = 0.000000
CoD.OptionsUtility.REGULATION_FETCH_IN_PROGRESS = 1.000000
CoD.OptionsUtility.REGULATION_FETCH_COMPLETE = 2.000000
CoD.OptionsUtility.REGULATION_FETCH_FAILED = 3.000000
CoD.OptionsUtility.REGULATION_GET_PREFERENCE_FETCH_IDLE = 0.000000
CoD.OptionsUtility.REGULATION_GET_PREFERENCE_FETCH_IN_PROGRESS = 1.000000
CoD.OptionsUtility.REGULATION_GET_PREFERENCE_FETCH_COMPLETE = 2.000000
CoD.OptionsUtility.REGULATION_GET_PREFERENCE_FETCH_FAILED = 3.000000
CoD.OptionsUtility.REGULATION_SET_PREFERENCE_TASK_STATE_IDLE = 0.000000
CoD.OptionsUtility.REGULATION_SET_PREFERENCE_TASK_STATE_IN_PROGRESS = 1.000000
CoD.OptionsUtility.REGULATION_SET_PREFERENCE_TASK_STATE_COMPLETE = 2.000000
CoD.OptionsUtility.REGULATION_SET_PREFERENCE_TASK_STATE_FAILED = 3.000000
registerVal1 = {}
registerVal2 = {}
registerVal2.privacySettingRef = "ccpa"
local registerVal3 = {}
local registerVal4 = {}
registerVal4.buttonLabel = "MENU_PRIVACY_CCPA_BUTTON_LABEL"
registerVal4.inverseOptIn = true
registerVal4.defaultCheckBoxOn = false
local registerVal5 = {}
local registerVal6 = {}
registerVal6.descEntry = "MENU_PRIVACY_CCPA_DESC"
registerVal5 = {registerVal6}
registerVal4.descEntryList = registerVal5
registerVal3 = {registerVal4}
registerVal2.versionList = registerVal3
registerVal1 = {registerVal2}
CoD.OptionsUtility.PrivacySettingsList = registerVal1
function CoD.OptionsUtility.RefetchRegulations(arg0, arg1)
	local registerVal3 = DataSources.PrivacySettingManagementForm.getModel(arg0)
	local registerVal2 = Engine.GetModel(registerVal3, "updateProgressState")
	local registerVal4 = Engine.GetModelForController(arg0)
	registerVal3 = Engine.GetModel(registerVal4, "Regulation.getRegulationTaskState")
	local function __FUNC_8899_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 ~= CoD.OptionsUtility.REGULATION_FETCH_IDLE and registerVal1 ~= CoD.OptionsUtility.REGULATION_FETCH_IN_PROGRESS then
			if arg1._refetchRegulationsModelSubscription then
				arg1:removeSubscription(arg1._refetchRegulationsModelSubscription)
				arg1._refetchRegulationsModelSubscription = nil
			end
			if registerVal1 == CoD.OptionsUtility.REGULATION_FETCH_COMPLETE then
				if arg1._updatePrivacySettingsTimeOutTimer then
					arg1._updatePrivacySettingsTimeOutTimer:close()
					arg1._updatePrivacySettingsTimeOutTimer = nil
				end
				Engine.SetModelValue(registerVal2, CoD.OptionsUtility.REGULATION_SET_PREFERENCE_TASK_STATE_COMPLETE)
			else
				if registerVal1 == CoD.OptionsUtility.REGULATION_FETCH_FAILED then
					Engine.SetModelValue(registerVal2, CoD.OptionsUtility.REGULATION_SET_PREFERENCE_TASK_STATE_FAILED)
				end
			end
		end
	end

	registerVal4 = arg1:subscribeToModel(registerVal3, __FUNC_8899_, false)
	arg1._refetchRegulationsModelSubscription = registerVal4
	Engine.RefetchRegulation(arg0)
end

function CoD.OptionsUtility.RefetchUserRegulationPreferences(arg0, arg1)
	local registerVal3 = DataSources.PrivacySettingManagementForm.getModel(arg0)
	local registerVal2 = Engine.GetModel(registerVal3, "updateProgressState")
	local registerVal4 = Engine.GetModelForController(arg0)
	registerVal3 = Engine.GetModel(registerVal4, "Regulation.getRegulationUserPreferenceTaskState")
	local function __FUNC_8E5B_(arg2)
		local registerVal1 = Engine.GetModelValue(arg2)
		if registerVal1 ~= CoD.OptionsUtility.REGULATION_GET_PREFERENCE_FETCH_IDLE and registerVal1 ~= CoD.OptionsUtility.REGULATION_GET_PREFERENCE_FETCH_IN_PROGRESS then
			if arg1._refetchRegulationPreferencesModelSubscription then
				arg1:removeSubscription(arg1._refetchRegulationPreferencesModelSubscription)
				arg1._refetchRegulationPreferencesModelSubscription = nil
			end
			if registerVal1 == CoD.OptionsUtility.REGULATION_GET_PREFERENCE_FETCH_COMPLETE then
				CoD.OptionsUtility.RefetchRegulations(arg0, arg1)
			else
				if registerVal1 == CoD.OptionsUtility.REGULATION_GET_PREFERENCE_FETCH_FAILED then
					Engine.SetModelValue(registerVal2, CoD.OptionsUtility.REGULATION_SET_PREFERENCE_TASK_STATE_FAILED)
				end
			end
		end
	end

	registerVal4 = arg1:subscribeToModel(registerVal3, __FUNC_8E5B_, false)
	arg1._refetchRegulationPreferencesModelSubscription = registerVal4
	Engine.RefetchUserRegulationPreference(arg0)
end

function CoD.OptionsUtility.DelaySetNextUserRegulationPreference(arg0, arg1, arg2)
	local function __FUNC_928B_()
		if arg1._delaySetNextUserRegulationPreferenceTimer then
			arg1._delaySetNextUserRegulationPreferenceTimer:close()
			arg1._delaySetNextUserRegulationPreferenceTimer = nil
		end
		CoD.OptionsUtility.SetNextUserRegulationPreference(arg0, arg1)
	end

	local registerVal3 = LUI.UITimer.newElementTimer(arg2, true, __FUNC_928B_)
	arg1._delaySetNextUserRegulationPreferenceTimer = registerVal3
	arg1:addElement(arg1._delaySetNextUserRegulationPreferenceTimer)
end

function CoD.OptionsUtility.SetNextUserRegulationPreference(arg0, arg1)
	local registerVal3 = DataSources.PrivacySettingManagementForm.getModel(arg0)
	local registerVal2 = Engine.GetModel(registerVal3, "updateProgressState")
	if #arg1._regulationPreferencesToSet < arg1._regultionIndex then
		CoD.OptionsUtility.RefetchUserRegulationPreferences(arg0, arg1)
	else
		local registerVal4 = Engine.GetModelForController(arg0)
		registerVal3 = Engine.GetModel(registerVal4, "Regulation.updateRegulationTaskState")
		local function __FUNC_9781_(arg2)
			local registerVal1 = Engine.GetModelValue(arg2)
			if registerVal1 ~= CoD.OptionsUtility.REGULATION_SET_PREFERENCE_TASK_STATE_IDLE and registerVal1 ~= CoD.OptionsUtility.REGULATION_SET_PREFERENCE_TASK_STATE_IN_PROGRESS then
				if arg1._setRegulationPreferenceModelSubscription then
					arg1:removeSubscription(arg1._setRegulationPreferenceModelSubscription)
					arg1._setRegulationPreferenceModelSubscription = nil
				end
				if registerVal1 == CoD.OptionsUtility.REGULATION_SET_PREFERENCE_TASK_STATE_COMPLETE then
					arg1._regultionIndex = (arg1._regultionIndex + 1.000000)
					CoD.OptionsUtility.DelaySetNextUserRegulationPreference(arg0, arg1, 250.000000)
				else
					if registerVal1 == CoD.OptionsUtility.REGULATION_SET_PREFERENCE_TASK_STATE_FAILED then
						Engine.SetModelValue(registerVal2, CoD.OptionsUtility.REGULATION_SET_PREFERENCE_TASK_STATE_FAILED)
					end
				end
			end
		end

		registerVal4 = arg1:subscribeToModel(registerVal3, __FUNC_9781_, false)
		arg1._setRegulationPreferenceModelSubscription = registerVal4
		if arg1 or not "1" then
		end
		Engine.Exec(arg0, ("setUserRegulationPreference " .. arg1._regulationPreferencesToSet[arg1._regultionIndex].regulationName .. " " .. arg1._regulationPreferencesToSet[arg1._regultionIndex].versionNumber .. " " .. "0"))
	end
end

function CoD.OptionsUtility.ApplyPrivacySettingUpdates(arg0, arg1, arg2)
	local registerVal4 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.GetModel(registerVal4, "Regulation")
	local registerVal5 = DataSources.PrivacySettingManagementForm.getModel(arg1)
	registerVal4 = Engine.GetModel(registerVal5, "updateProgressState")
	Engine.SetModelValue(registerVal4, CoD.OptionsUtility.REGULATION_SET_PREFERENCE_TASK_STATE_IN_PROGRESS)
	registerVal5 = OpenPopup(arg2, "StartMenu_Options_PrivacySettings_UpdatePopup", arg1)
	registerVal5._regultionIndex = 1.000000
	registerVal5._regulationPreferencesToSet = {}
	registerVal5, registerVal6, registerVal7 = ipairs(arg0.PrivacySettingOptionList)
	for index8,value9 in registerVal5, registerVal6, registerVal7 do
		if value9.properties.privacySettingProperties then
			local registerVal11 = Engine.GetModelValue(Engine.GetModel(value9.model, "selected"))
			if value9.properties.privacySettingProperties.inverseOptIn then
			end
			local registerVal14 = {}
			registerVal14.regulationName = value9.properties.privacySettingProperties.regulationName
			registerVal14.versionNumber = value9.properties.privacySettingProperties.versionNumber
			registerVal14.selected = (not registerVal11)
			table.insert(registerVal5._regulationPreferencesToSet, registerVal14)
		end
	end
	local function __FUNC_A0A7_()
		if registerVal5._updatePrivacySettingsTimeOutTimer then
			registerVal5._updatePrivacySettingsTimeOutTimer:close()
			registerVal5._updatePrivacySettingsTimeOutTimer = nil
		end
		Engine.SetModelValue(registerVal4, CoD.OptionsUtility.REGULATION_SET_PREFERENCE_TASK_STATE_FAILED)
	end

	registerVal5 = LUI.UITimer.newElementTimer(30000.000000, true, __FUNC_A0A7_)
	registerVal5._updatePrivacySettingsTimeOutTimer = registerVal5
	registerVal5:addElement(registerVal5._updatePrivacySettingsTimeOutTimer)
	CoD.OptionsUtility.SetNextUserRegulationPreference(arg1, registerVal5)
end

local function __FUNC_A1F9_(arg0)
	local function __FUNC_A768_(arg0, arg1, arg2, arg3, arg4)
		local registerVal6 = arg1:getModel()
		local registerVal5 = Engine.GetModel(registerVal6, "selected")
		registerVal6 = Engine.GetModelValue(registerVal5)
		Engine.SetModelValue(registerVal5, (not registerVal6))
	end

	local function __FUNC_A860_(arg0, arg1, arg2, arg3, arg4)
		if arg1.gridInfoTable and arg1.gridInfoTable.parentGrid then
			CoD.OptionsUtility.ApplyPrivacySettingUpdates(arg1.gridInfoTable.parentGrid, arg2, arg4)
		end
	end

	local function __FUNC_A974_(arg0, arg1, arg2, arg3, arg4, arg5)
		local registerVal8 = {}
		local registerVal9 = {}
		registerVal9.displayText = arg0
		registerVal9.selected = arg1
		registerVal9.isUpdateButton = arg5
		registerVal8.models = registerVal9
		registerVal9 = {}
		registerVal9.descTextList = arg2
		registerVal9.privacySettingProperties = arg3
		registerVal9.sortIndex = arg4
		if arg1 or not __FUNC_A860_ then
		end
		registerVal9.action = __FUNC_A768_
		registerVal8.properties = registerVal9
		table.insert({}, registerVal8)
	end

	local registerVal6 = Engine.GetUserRegulationPreference(arg0)
	local registerVal7, registerVal8, registerVal9 = ipairs(registerVal6)
	for index10,value11 in registerVal7, registerVal8, registerVal9 do
		{}[value11.name] = value11
	end
	registerVal7 = Engine.GetRegulations(arg0)
	registerVal8, registerVal9, registerVal10 = ipairs(registerVal7)
	for index11,value12 in registerVal8, registerVal9, registerVal10 do
		if not {}[value12.name] then
			{}[value12.name] = value12
		end
	end
	registerVal8, registerVal9, registerVal10 = ipairs(CoD.OptionsUtility.PrivacySettingsList)
	for index11,value12 in registerVal8, registerVal9, registerVal10 do
		if value12.versionList and {}[value12.privacySettingRef] then
			if value12.versionList[#value12.versionList].descEntryList and {} or not value12.versionList[#value12.versionList].descEntryList[1.000000].descEntry then
			end
			if 0.000000 >= #value12.versionList or not (#value12.versionList - 1.000000) then
			end
			if value12.versionList[#value12.versionList].inverseOptIn ~= true then
			end
			if {}[value12.privacySettingRef].optin == nil then
				if value12.versionList[#value12.versionList].defaultCheckBoxOn ~= 1.000000 then
				end
			else
				if true then
				end
			end
			local registerVal20, registerVal21, registerVal22 = ipairs(value12.versionList[#value12.versionList].descEntryList)
			for index23,value24 in registerVal20, registerVal21, registerVal22 do
				table.insert({}, value24.descEntry)
			end
			registerVal20 = {}
			registerVal20.regulationName = value12.privacySettingRef
			registerVal20.versionNumber = 0.000000
			registerVal20.inverseOptIn = true
			__FUNC_A974_(value12.versionList[#value12.versionList].buttonLabel, (not true), {}, registerVal20, index11, false)
		end
	end
	local registerVal11 = {}
	registerVal11 = {"MENU_PRIVACY_SETTINGS_UPDATE_DESC"}
	__FUNC_A974_("MENU_PRIVACY_SETTINGS_UPDATE_PROMPT", false, registerVal11, nil, 1000.000000, true)
	local function __FUNC_AADD_(arg0, arg1)
		if arg0.properties.sortIndex >= arg1.properties.sortIndex then
		end
		return true
	end

	table.sort({}, __FUNC_AADD_)
	return {}
end

registerVal1 = DataSourceHelpers.ListSetup("PrivacySettingOptionList", __FUNC_A1F9_)
DataSources.PrivacySettingOptionList = registerVal1
registerVal1 = {}
local function __FUNC_AB73_(arg0)
	local registerVal2 = Engine.GetModelForController(arg0)
	local registerVal1 = Engine.GetModel(registerVal2, "PrivacySettingManagementForm")
	if registerVal1 == nil then
		local registerVal3 = Engine.GetModelForController(arg0)
		registerVal2 = Engine.CreateModel(registerVal3, "PrivacySettingManagementForm")
		registerVal3 = Engine.CreateModel(registerVal2, "descText")
		Engine.SetModelValue(registerVal3, "")
		registerVal3 = Engine.CreateModel(registerVal2, "currentPage")
		Engine.SetModelValue(registerVal3, 0.000000)
		registerVal3 = Engine.CreateModel(registerVal2, "lastPage")
		Engine.SetModelValue(registerVal3, 0.000000)
		registerVal3 = Engine.CreateModel(registerVal2, "updateProgressState")
		Engine.SetModelValue(registerVal3, CoD.OptionsUtility.REGULATION_SET_PREFERENCE_TASK_STATE_IDLE)
	end
	return registerVal2
end

registerVal1.getModel = __FUNC_AB73_
DataSources.PrivacySettingManagementForm = registerVal1
