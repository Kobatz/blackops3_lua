-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.GameSettings.GameSettings_GameModeRulesList")
require("ui.uieditor.widgets.GameSettings.GameSettings_SelectedItemInfo")
local function __FUNC_36B_(arg0)
	local registerVal2 = Dvar.ui_gametype:get()
	local registerVal5, registerVal6, registerVal7 = ipairs(CoD.GameOptions.TopLevelGametypeSettings[registerVal2])
	for index8,value9 in registerVal5, registerVal6, registerVal7 do
		table.insert({}, CoD.OptionsUtility.CreateListOptions(arg0, CoD.GameOptions.GameSettings[value9].name, CoD.GameOptions.GameSettings[value9].hintText, value9, CoD.GameOptions.GameSettings[value9], ("GameTypeOptionsList_" .. value9)))
	end
	return {}
end

local function __FUNC_5CB_(arg0)
	local registerVal1 = Dvar.ui_gametype:get()
	local registerVal2 = Engine.StructTableLookupString(CoDShared.gametypesStructTable, "name", registerVal1, "name_ref_caps")
	local registerVal5 = {}
	local registerVal6 = Engine.Localize("MENU_GAME_MODE_ADVANCED_CAPS", Engine.Localize(registerVal2))
	registerVal5.optionDisplay = registerVal6
	registerVal5.description = "MENU_GAME_MODE_SETTINGS_DESC"
	registerVal5.customId = "btnGameModeSettings"
	registerVal5.action = OpenGameSettings_GameMode
	registerVal6 = {}
	registerVal6 = {"GameSettings_EditModeSpecificOptions"}
	registerVal5.actionParam = registerVal6
	registerVal5.isLastButtonInGroup = true
	{}[(#"name" + 1.000000)] = registerVal5
	registerVal5 = {}
	registerVal6 = Engine.Localize("MENU_GENERAL_CAPS")
	registerVal5.optionDisplay = registerVal6
	registerVal5.description = "MENU_GENERAL_SETTINGS_DESC"
	registerVal5.customId = "btnGeneralSettings"
	registerVal5.action = OpenGameSettings_General
	registerVal6 = {}
	registerVal6 = {"GameSettings_GeneralSettings"}
	registerVal5.actionParam = registerVal6
	{}[(#(#"name" + 1.000000) + 1.000000)] = registerVal5
	registerVal5 = {}
	registerVal6 = Engine.Localize("MENU_SPAWN_CAPS")
	registerVal5.optionDisplay = registerVal6
	registerVal5.description = "MENU_SPAWN_SETTINGS_DESC"
	registerVal5.customId = "btnSpawnSettings"
	registerVal5.action = OpenGameSettings_Spawn
	registerVal6 = {}
	registerVal6 = {"GameSettings_SpawnSettings"}
	registerVal5.actionParam = registerVal6
	{}[(#(#(#"name" + 1.000000) + 1.000000) + 1.000000)] = registerVal5
	registerVal5 = {}
	registerVal6 = Engine.Localize("MENU_HEALTH_AND_DAMAGE_CAPS")
	registerVal5.optionDisplay = registerVal6
	registerVal5.description = "MENU_HEALTH_AND_DAMAGE_SETTINGS_DESC"
	registerVal5.customId = "btnHealthAndDamageSettings"
	registerVal5.action = OpenGameSettings_HealthAndDamage
	registerVal6 = {}
	registerVal6 = {"GameSettings_HealthAndDamageSettings"}
	registerVal5.actionParam = registerVal6
	registerVal5.isLastButtonInGroup = true
	{}[(#(#(#(#"name" + 1.000000) + 1.000000) + 1.000000) + 1.000000)] = registerVal5
	local registerVal4 = IsGametypeTeambased()
	if registerVal4 and registerVal1 ~= "sniperonly" then
		registerVal5 = {}
		registerVal6 = Engine.Localize("MENU_COMPETITIVE_CAPS")
		registerVal5.optionDisplay = registerVal6
		registerVal5.description = "MENU_COMPETITIVE_SETTINGS_DESC"
		registerVal5.customId = "btnCompetitiveSettings"
		registerVal5.action = OpenGameSettings_Competitive
		registerVal6 = {}
		registerVal6 = {"GameSettings_Competitive"}
		registerVal5.actionParam = registerVal6
		registerVal5.isLastButtonInGroup = true
		{}[(#registerVal4 + 1.000000)] = registerVal5
	end
	registerVal4 = Engine.GetGametypeSetting("disableClassSelection", true)
	if registerVal4 == 0.000000 then
		registerVal5 = {}
		registerVal6 = Engine.Localize("MENU_CREATE_A_CLASS_CAPS")
		registerVal5.optionDisplay = registerVal6
		registerVal5.description = "MENU_CAC_SETTINGS_DESC"
		registerVal5.customId = "btnCustomClasses"
		registerVal5.action = OpenGameSettings_CreateAClass
		registerVal6 = {}
		registerVal6 = {"GameSettings_CreateAClassSettings"}
		registerVal5.actionParam = registerVal6
		{}[(#registerVal4 + 1.000000)] = registerVal5
	end
	registerVal5, registerVal6, registerVal7 = ipairs({})
	for index8,value9 in registerVal5, registerVal6, registerVal7 do
		local registerVal12 = {}
		local registerVal13 = {}
		registerVal13.displayText = value9.optionDisplay
		registerVal13.customId = value9.customId
		registerVal12.models = registerVal13
		registerVal13 = {}
		registerVal13.title = value9.optionDisplay
		registerVal13.desc = value9.description
		registerVal13.action = value9.action
		registerVal13.actionParam = value9.actionParam
		registerVal13.isLastButtonInGroup = value9.isLastButtonInGroup
		registerVal13.spacing = value9.spacing
		registerVal12.properties = registerVal13
		table.insert({}, registerVal12)
	end
	return {}
end

local function __FUNC_FAD_(arg0, arg1, arg2)
	if arg0.GameModeSettingsButtons[arg1].properties.isLastButtonInGroup then
		return 10.000000
	end
end

local function __FUNC_106F_(arg0, arg1, arg2)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.CreateModel(registerVal4, "GametypeSettings")
	registerVal4 = Engine.CreateModel(registerVal3, "Update")
	if arg1.updateSubscription then
		arg1:removeSubscription(arg1.updateSubscription)
	end
	local function __FUNC_11DD_()
		arg1:updateDataSource(false)
	end

	local registerVal5 = arg1:subscribeToModel(registerVal4, __FUNC_11DD_, false)
	arg1.updateSubscription = registerVal5
end

local registerVal5 = DataSourceHelpers.ListSetup("GameModeSettings", __FUNC_36B_, nil, nil, __FUNC_106F_)
DataSources.GameModeSettings = registerVal5
registerVal5 = DataSourceHelpers.ListSetup("GameModeSettingsButtons", __FUNC_5CB_, nil, nil, nil, __FUNC_FAD_)
DataSources.GameModeSettingsButtons = registerVal5
local function __FUNC_1232_(arg0, arg1)
	arg0.disablePopupOpenCloseAnim = true
	CoD.FileshareUtility.SetCurrentCategory("customgame")
end

local registerVal6 = InheritFrom(LUI.UIElement)
CoD.GameSettings_GameModeRules = registerVal6
local function __FUNC_1300_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_1232_ then
		__FUNC_1232_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GameSettings_GameModeRules)
	registerVal2.id = "GameSettings_GameModeRules"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 585.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.GameSettings_GameModeRulesList.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 27.000000, 642.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3.Title.DescTitle:setText(Engine.Localize("MENU_WIN_CONDITIONS_CAPS"))
	registerVal3.Sliders:setDataSource("GameModeSettings")
	registerVal3.Buttions:setDataSource("GameModeSettingsButtons")
	registerVal2:addElement(registerVal3)
	registerVal2.Options = registerVal3
	local registerVal4 = CoD.GameSettings_SelectedItemInfo.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, -135.000000, 0.000000)
	registerVal4.GameModeName:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.GameSettingsSelectedItemInfo = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_1976_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal3.Title.DescTitle:completeAnimation()
		registerVal2.Options.Title.DescTitle:setText(Engine.Localize("MENU_WIN_CONDITIONS_CAPS"))
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_1BDA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
				arg0.GameModeInfo:beginAnimation("subkeyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0.GameModeInfo:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal4.GameModeInfo:completeAnimation()
		registerVal2.GameSettingsSelectedItemInfo.GameModeInfo:setAlpha(0.000000)
		__FUNC_1BDA_(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_1976_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	registerVal3.id = "Options"
	local function __FUNC_1E04_(arg0, arg1)
		local registerVal2 = arg0.Options:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_1E04_)
	local function __FUNC_1F07_(arg0)
		arg0.Options:close()
		arg0.GameSettingsSelectedItemInfo:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1F07_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.GameSettings_GameModeRules.new = __FUNC_1300_
