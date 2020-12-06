-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.menus.GameSettings.GameSettings_OptionsMenu")
require("ui.uieditor.widgets.GameSettings.GameSettings_Background")
require("ui.uieditor.widgets.Competitive.Competitive_SettingsList")
local function __FUNC_3B9_(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
	local registerVal10, registerVal11, registerVal12 = ipairs(arg8)
	if  == 0.000000 then
		local registerVal17 = {}
		local registerVal18 = Engine.Localize("MENU_UNLIMITED")
		registerVal17.name = registerVal18
		registerVal17.value = 
		registerVal17.title = arg1
		registerVal17.desc = arg2
		table.insert({}, registerVal17)
	else
		if  == 1.000000 then
			registerVal17 = {}
			registerVal18 = Engine.Localize(arg6)
			registerVal17.name = registerVal18
			registerVal17.value = 
			registerVal17.title = arg1
			registerVal17.desc = arg2
			table.insert({}, registerVal17)
		else
			registerVal17 = {}
			registerVal18 = Engine.Localize(arg7, )
			registerVal17.name = registerVal18
			registerVal17.value = 
			registerVal17.title = arg1
			registerVal17.desc = arg2
			table.insert({}, registerVal17)
		end
	end
	registerVal10 = {}
	registerVal11 = {}
	registerVal12 = Engine.Localize(arg1)
	registerVal11.name = registerVal12
	registerVal12 = Engine.Localize(arg2)
	registerVal11.desc = registerVal12
	registerVal12 = RegisterMaterial("")
	registerVal11.image = registerVal12
	registerVal12 = CoD.OptionsUtility.CreateGametypeSettingsDataSource(arg0, arg3, {}, arg4)
	registerVal11.optionsDatasource = registerVal12
	registerVal11.setting = arg4
	registerVal10.models = registerVal11
	registerVal11 = {}
	registerVal11.enabledWithGametypeSetting = arg5
	local function __FUNC_743_(arg0)
		Engine.SetGametypeSetting(arg4, Engine.GetGametypeSetting(arg4, true))
	end

	registerVal11.revert = __FUNC_743_
	registerVal10.properties = registerVal11
	return registerVal10
end

local function __FUNC_7E8_(arg0)
	local registerVal13 = {}
	registerVal13 = {1.000000, 2.000000, 3.000000, 4.000000, 5.000000, 10.000000, 15.000000, 20.000000, 30.000000, 45.000000, 60.000000, 120.000000}
	table.insert({}, __FUNC_3B9_(arg0, "MENU_PRE_STAGE_TIME", "MENU_PRE_STAGE_DESC", "SpecialistOptions_preStageTime", "pregamePreStageTime", nil, "MENU_1_SECOND", "MENU_X_SECONDS", registerVal13))
	registerVal13 = {}
	registerVal13 = {1.000000, 2.000000, 3.000000, 4.000000, 5.000000, 10.000000, 15.000000, 20.000000, 30.000000, 45.000000, 60.000000, 120.000000}
	table.insert({}, __FUNC_3B9_(arg0, "MENU_POST_ROUND_TIME", "MENU_POST_ROUND_DESC", "SpecialistOptions_postRoundTime", "pregamePostRoundTime", nil, "MENU_1_SECOND", "MENU_X_SECONDS", registerVal13))
	registerVal13 = {}
	registerVal13 = {1.000000, 2.000000, 3.000000, 4.000000, 5.000000, 10.000000, 15.000000, 20.000000, 30.000000, 45.000000, 60.000000, 120.000000}
	table.insert({}, __FUNC_3B9_(arg0, "MENU_POST_STAGE_TIME", "MENU_POST_STAGE_DESC", "SpecialistOptions_postStageTime", "pregamePostStageTime", nil, "MENU_1_SECOND", "MENU_X_SECONDS", registerVal13))
	return {}
end

local function __FUNC_B93_(arg0)
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.option = "MENU_ALWAYS"
	registerVal11.value = 1.000000
	local registerVal12 = {}
	registerVal12.option = "MENU_DISABLED"
	registerVal12.value = 0.000000
	registerVal10 = {registerVal11, registerVal12}
	table.insert({}, CoD.OptionsUtility.CreateNamedSettings(arg0, "MENU_ALWAYS_SHOW_CAC_EDIT", "MENU_ALWAYS_SHOW_CAC_DESC", "SpecialistOptions_AlwaysShowCACEdit", "pregameAlwaysShowCACEdit", registerVal10))
	registerVal10 = {}
	registerVal11 = {}
	registerVal11.option = "MENU_ALWAYS"
	registerVal11.value = 1.000000
	registerVal12 = {}
	registerVal12.option = "MENU_DISABLED"
	registerVal12.value = 0.000000
	registerVal10 = {registerVal11, registerVal12}
	table.insert({}, CoD.OptionsUtility.CreateNamedSettings(arg0, "MENU_ALWAYS_SHOW_STREAK_EDIT", "MENU_ALWAYS_SHOW_STREAK_DESC", "SpecialistOptions_AlwaysShowStreakEdit", "pregameAlwaysShowStreakEdit", registerVal10))
	return {}
end

local function __FUNC_E88_(arg0)
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.option = "MENU_RANDOM"
	registerVal11.value = Enum.PregameSortType.PREGAME_SORT_TYPE_RANDOM
	local registerVal12 = {}
	registerVal12.option = "MENU_PLAYER_JOIN_ORDER"
	registerVal12.value = Enum.PregameSortType.PREGAME_SORT_TYPE_CLIENTNUM
	registerVal10 = {registerVal11, registerVal12}
	table.insert({}, CoD.OptionsUtility.CreateNamedSettings(arg0, "MENU_PLAYER_SELECT_ORDER", "MENU_PLAYER_SELECT_ORDER_DESC", "SpecialistOptions_SortType", "pregamePositionSortType", registerVal10))
	registerVal10 = {}
	registerVal11 = {}
	registerVal11.option = "MENU_NONE"
	registerVal11.value = Enum.PregameShuffleMethod.PREGAME_SHUFFLE_METHOD_NONE
	registerVal12 = {}
	registerVal12.option = "MENU_REVERSE"
	registerVal12.value = Enum.PregameShuffleMethod.PREGAME_SHUFFLE_METHOD_REVERSE
	local registerVal13 = {}
	registerVal13.option = "MENU_RANDOM"
	registerVal13.value = Enum.PregameShuffleMethod.PREGAME_SHUFFLE_METHOD_RANDOM
	registerVal10 = {registerVal11, registerVal12, registerVal13}
	table.insert({}, CoD.OptionsUtility.CreateNamedSettings(arg0, "MENU_PLAYER_SELECT_SHUFFLE", "MENU_PLAYER_SELECT_SHUFFLE_DESC", "SpecialistOptions_ShuffleMethod", "pregamePositionShuffleMethod", registerVal10))
	return {}
end

local function __FUNC_1334_(arg0, arg1, arg2)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.CreateModel(registerVal4, "GametypeSettings")
	registerVal4 = Engine.CreateModel(registerVal3, "Update")
	if arg1.updateSubscription then
		arg1:removeSubscription(arg1.updateSubscription)
	end
	local function __FUNC_14A5_()
		arg1:updateDataSource(false)
	end

	local registerVal5 = arg1:subscribeToModel(registerVal4, __FUNC_14A5_, false)
	arg1.updateSubscription = registerVal5
end

local registerVal6 = DataSourceHelpers.ListSetup("CompetitiveAdvancedSettings", __FUNC_7E8_, nil, nil, __FUNC_1334_)
DataSources.CompetitiveAdvancedSettings = registerVal6
registerVal6 = DataSourceHelpers.ListSetup("CompetitiveEditSettings", __FUNC_B93_, nil, nil, __FUNC_1334_)
DataSources.CompetitiveEditSettings = registerVal6
registerVal6 = DataSourceHelpers.ListSetup("CompetitiveOrderSettings", __FUNC_E88_, nil, nil, __FUNC_1334_)
DataSources.CompetitiveOrderSettings = registerVal6
function LUI.createMenu.Competitive_Settings_Advanced(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Competitive_Settings_Advanced")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Competitive_Settings_Advanced.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.GameSettings_Background.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3.MenuFrame.titleLabel:setText(Engine.Localize("MENU_COMPETITIVE_SETTINGS_CAPS"))
	registerVal3.MenuFrame.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_COMPETITIVE_SETTINGS_CAPS"))
	registerVal3.GameSettingsSelectedItemInfo.GameModeInfo:setAlpha(0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.GameSettingsBackground = registerVal3
	local registerVal4 = CoD.Competitive_SettingsList.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 0.000000, 624.000000)
	registerVal4:setTopBottom(true, false, 90.000000, 240.000000)
	registerVal4.Title.DescTitle:setText(Engine.Localize("MENU_TIME_SETTINGS_CAPS"))
	registerVal4.ButtonList:setDataSource("CompetitiveAdvancedSettings")
	registerVal4.ButtonList:setVerticalCount(3.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.StageTimers = registerVal4
	local registerVal5 = CoD.Competitive_SettingsList.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, 0.000000, 624.000000)
	registerVal5:setTopBottom(true, false, 241.000000, 360.000000)
	registerVal5.Title.DescTitle:setText(Engine.Localize("MENU_EDIT_SETTINGS"))
	registerVal5.ButtonList:setDataSource("CompetitiveEditSettings")
	registerVal1:addElement(registerVal5)
	registerVal1.EditSettings = registerVal5
	local registerVal6 = CoD.Competitive_SettingsList.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 0.000000, 624.000000)
	registerVal6:setTopBottom(true, false, 360.000000, 485.000000)
	registerVal6.Title.DescTitle:setText(Engine.Localize("MENU_PLAYER_ORDER_CAPS"))
	registerVal6.ButtonList:setDataSource("CompetitiveOrderSettings")
	registerVal1:addElement(registerVal6)
	registerVal1.PlayerOrderSettings = registerVal6
	local registerVal7 = {}
	registerVal7.down = registerVal5
	registerVal4.navigation = registerVal7
	registerVal7 = {}
	registerVal7.up = registerVal4
	registerVal7.down = registerVal6
	registerVal5.navigation = registerVal7
	registerVal7 = {}
	registerVal7.up = registerVal5
	registerVal6.navigation = registerVal7
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_21A8_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_21FC_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_21A8_, __FUNC_21FC_, false)
	local function __FUNC_22F9_(arg0, arg1, arg2, arg3)
		OpenPopup(registerVal1, "GameSettings_OptionsMenu", arg2)
		return true
	end

	local function __FUNC_2375_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_OPTIONS")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_START, "O", __FUNC_22F9_, __FUNC_2375_, false)
	registerVal4.id = "StageTimers"
	registerVal5.id = "EditSettings"
	registerVal6.id = "PlayerOrderSettings"
	local registerVal9 = {}
	registerVal9.name = "menu_loaded"
	registerVal9.controller = arg0
	registerVal1:processEvent(registerVal9)
	registerVal9 = {}
	registerVal9.name = "update_state"
	registerVal9.menu = registerVal1
	registerVal1:processEvent(registerVal9)
	registerVal7 = registerVal1:restoreState()
	if not registerVal7 then
		registerVal9 = {}
		registerVal9.name = "gain_focus"
		registerVal9.controller = arg0
		registerVal1.StageTimers:processEvent(registerVal9)
	end
	local function __FUNC_246D_(arg1)
		arg1.GameSettingsBackground:close()
		arg1.StageTimers:close()
		arg1.EditSettings:close()
		arg1.PlayerOrderSettings:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Competitive_Settings_Advanced.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_246D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

