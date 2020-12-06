-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.GameSettings.GameSettings_Background")
require("ui.uieditor.widgets.GameSettings.GameSettings_GameModeRulesList")
local function __FUNC_34A_(arg0)
	local registerVal2 = Dvar.ui_gametype:get()
	table.insert({}, CoD.OptionsUtility.CreateListOptions(arg0, CoD.GameOptions.GameSettings["disableCAC"].name, CoD.GameOptions.GameSettings["disableCAC"].hintText, "disableCAC", CoD.GameOptions.GameSettings["disableCAC"], ("CreateAClassList_" .. "disableCAC")))
	table.insert({}, CoD.OptionsUtility.CreateListOptions(arg0, CoD.GameOptions.GameSettings["maxAllocation"].name, CoD.GameOptions.GameSettings["maxAllocation"].hintText, "maxAllocation", CoD.GameOptions.GameSettings["maxAllocation"], ("CreateAClassList_" .. "maxAllocation")))
	local registerVal5 = Engine.GetGametypeSetting("teamCount")
	if 1.000000 < registerVal5 then
		table.insert({}, CoD.OptionsUtility.CreateListOptions(arg0, CoD.GameOptions.GameSettings["presetClassesPerTeam"].name, CoD.GameOptions.GameSettings["presetClassesPerTeam"].hintText, "presetClassesPerTeam", CoD.GameOptions.GameSettings["presetClassesPerTeam"], ("CreateAClassList_" .. "presetClassesPerTeam")))
	end
	return {}
end

local function __FUNC_6F6_(arg0, arg1, arg2)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.CreateModel(registerVal4, "GametypeSettings")
	registerVal4 = Engine.CreateModel(registerVal3, "Update")
	if arg1.updateSubscription then
		arg1:removeSubscription(arg1.updateSubscription)
	end
	local function __FUNC_865_()
		arg1:updateDataSource(false)
	end

	local registerVal5 = arg1:subscribeToModel(registerVal4, __FUNC_865_, false)
	arg1.updateSubscription = registerVal5
end

local function __FUNC_8BA_(arg0, arg1, arg2, arg3, arg4)
	CoD.CACUtility.SetDefaultCACRoot(arg2)
	CoD.CACUtility.SetGametypeSettingsCACRoot(arg2, arg3.team)
	CoD.perController[arg2].editingPresetClass = arg3.team
	CoD.perController[arg2].isPreset = true
	Engine.BeginEditingPresetClass(arg3.team)
	local registerVal8 = Engine.GetModelForController(arg2)
	local registerVal7 = Engine.CreateModel(registerVal8, "currentClassSetIndex")
	Engine.SetModelValue(registerVal7, 0.000000)
	CoD.OpenCACMenuEditClass(arg4, arg2)
end

local function __FUNC_B6A_(arg0, arg1)
	local registerVal3 = Engine.GetGametypeSetting("teamCount")
	local registerVal4 = Engine.GetGametypeSetting("presetClassesPerTeam")
	if 1.000000 < registerVal3 and registerVal4 == 1.000000 then
		local registerVal6 = {}
		local registerVal7 = Engine.Localize("MENU_CUSTOM_CLASS_TEAM_PRESET", "MPUI_ALLIES_CAPS")
		registerVal6.optionDisplay = registerVal7
		registerVal6.action = __FUNC_8BA_
		registerVal7 = {}
		registerVal7.team = Enum.team_t.TEAM_ALLIES
		registerVal6.actionParam = registerVal7
		table.insert({}, registerVal6)
		registerVal6 = {}
		registerVal7 = Engine.Localize("MENU_CUSTOM_CLASS_TEAM_PRESET", "MPUI_AXIS_CAPS")
		registerVal6.optionDisplay = registerVal7
		registerVal6.action = __FUNC_8BA_
		registerVal7 = {}
		registerVal7.team = Enum.team_t.TEAM_AXIS
		registerVal6.actionParam = registerVal7
		table.insert({}, registerVal6)
	else
		registerVal6 = {}
		registerVal7 = Engine.Localize("MENU_EDIT_PRESET_CLASSES")
		registerVal6.optionDisplay = registerVal7
		registerVal7 = Engine.Localize("MENU_EDIT_PRESET_CLASSES_DESC")
		registerVal6.desc = registerVal7
		registerVal6.action = __FUNC_8BA_
		registerVal7 = {}
		registerVal7.team = Enum.team_t.TEAM_FREE
		registerVal6.actionParam = registerVal7
		registerVal6.isClassButton = true
		table.insert({}, registerVal6)
	end
	local registerVal5, registerVal6, registerVal7 = ipairs({})
	for index8,value9 in registerVal5, registerVal6, registerVal7 do
		local registerVal12 = {}
		local registerVal13 = {}
		registerVal13.displayText = value9.optionDisplay
		registerVal13.customId = value9.customId
		registerVal12.models = registerVal13
		registerVal13 = {}
		registerVal13.title = value9.optionDisplay
		registerVal13.desc = value9.desc
		registerVal13.action = value9.action
		registerVal13.actionParam = value9.actionParam
		registerVal12.properties = registerVal13
		table.insert({}, registerVal12)
	end
	return {}
end

local registerVal5 = DataSourceHelpers.ListSetup("CreateAClassSettings", __FUNC_34A_, nil, nil, __FUNC_6F6_)
DataSources.CreateAClassSettings = registerVal5
registerVal5 = DataSourceHelpers.ListSetup("CreateAClassSettingsButtons", __FUNC_B6A_, nil, nil, __FUNC_6F6_, SpacerFunction)
DataSources.CreateAClassSettingsButtons = registerVal5
local function __FUNC_1051_(arg0, arg1)
	local registerVal2 = Engine.GetGametypeSetting("teamCount")
	local registerVal3 = Engine.GetGametypeSetting("presetClassesPerTeam")
	if 1.000000 < registerVal2 and registerVal3 == 1.000000 then
		arg0.team = Enum.team_t.TEAM_FIRST_PLAYING_TEAM
	else
		arg0.team = Enum.team_t.TEAM_FREE
	end
	CoD.CACUtility.SetGametypeSettingsCACRoot(arg1, arg0.team)
	CoD.perController[arg1].editingPresetClass = nil
	CoD.perController[arg1].isPreset = nil
	Engine.StopEditingPresetClass()
	local registerVal4 = Engine.GetGlobalModel()
	registerVal3 = Engine.CreateModel(registerVal4, "GametypeSettings")
	Engine.CreateModel(registerVal3, "presetClassesPerTeam")
end

local function __FUNC_1380_(arg0, arg1)
	arg0.disablePopupOpenCloseAnim = true
end

local function __FUNC_13D5_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("GameSettings_CreateAClassSettings")
	if __FUNC_1380_ then
		__FUNC_1380_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "GameSettings_CreateAClassSettings.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.GameSettings_Background.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3.MenuFrame.titleLabel:setText(Engine.Localize("MENU_CREATE_A_CLASS_CAPS"))
	registerVal3.MenuFrame.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_CREATE_A_CLASS_CAPS"))
	registerVal3.GameSettingsSelectedItemInfo.GameModeInfo:setAlpha(0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.GameSettingsBackground = registerVal3
	local registerVal4 = CoD.GameSettings_GameModeRulesList.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 27.000000, 615.000000)
	registerVal4:setTopBottom(true, false, 134.000000, 855.000000)
	registerVal4.Title.DescTitle:setText(Engine.Localize("MENU_SETTINGS_CAPS"))
	registerVal4.Sliders:setDataSource("CreateAClassSettings")
	registerVal4.Buttions:setDataSource("CreateAClassSettingsButtons")
	registerVal1:addElement(registerVal4)
	registerVal1.Options = registerVal4
	local function __FUNC_1E06_(arg1, arg2)
		MakeElementNotFocusable(registerVal1, "TeamClassSettingsButtons", arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_1E06_)
	local function __FUNC_1EC8_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsMenuInState(arg1, "DefaultState")
		if registerVal4 then
			GoBack(registerVal1, arg2)
			ClearSavedState(registerVal1, arg2)
			return true
		end
	end

	local function __FUNC_1F8A_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		local registerVal3 = IsMenuInState(arg1, "DefaultState")
		if registerVal3 then
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1EC8_, __FUNC_1F8A_, false)
	local function __FUNC_20D2_(arg1)
		GameSettingsMenuClosed(registerVal1, arg0)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal1, "close", __FUNC_20D2_)
	registerVal3.MenuFrame:setModel(registerVal1.buttonModel, arg0)
	registerVal4.id = "Options"
	local registerVal7 = {}
	registerVal7.name = "menu_loaded"
	registerVal7.controller = arg0
	registerVal1:processEvent(registerVal7)
	registerVal7 = {}
	registerVal7.name = "update_state"
	registerVal7.menu = registerVal1
	registerVal1:processEvent(registerVal7)
	local registerVal5 = registerVal1:restoreState()
	if not registerVal5 then
		registerVal7 = {}
		registerVal7.name = "gain_focus"
		registerVal7.controller = arg0
		registerVal1.Options:processEvent(registerVal7)
	end
	local function __FUNC_212C_(arg1)
		arg1.GameSettingsBackground:close()
		arg1.Options:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "GameSettings_CreateAClassSettings.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_212C_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.GameSettings_CreateAClassSettings = __FUNC_13D5_
