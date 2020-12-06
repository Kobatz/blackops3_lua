-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.GameSettings.GameSettings_Background")
require("ui.uieditor.widgets.Competitive.Competitive_SettingsList")
local function __FUNC_2CC_(arg0)
	local registerVal2 = Dvar.ui_gametype:get()
	local registerVal5, registerVal6, registerVal7 = ipairs(CoD.GameOptions.SubLevelGametypeSettings[registerVal2])
	for index8,value9 in registerVal5, registerVal6, registerVal7 do
		table.insert({}, CoD.OptionsUtility.CreateListOptions(arg0, CoD.GameOptions.GameSettings[value9].name, CoD.GameOptions.GameSettings[value9].hintText, value9, CoD.GameOptions.GameSettings[value9], ("GameModeSpecificOptionsList_" .. value9)))
	end
	return {}
end

local function __FUNC_537_(arg0, arg1, arg2)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.CreateModel(registerVal4, "GametypeSettings")
	registerVal4 = Engine.CreateModel(registerVal3, "Update")
	if arg1.updateSubscription then
		arg1:removeSubscription(arg1.updateSubscription)
	end
	local function __FUNC_6A5_()
		arg1:updateDataSource(false)
	end

	local registerVal5 = arg1:subscribeToModel(registerVal4, __FUNC_6A5_, false)
	arg1.updateSubscription = registerVal5
end

local registerVal3 = DataSourceHelpers.ListSetup("GameModeSpecificOptions", __FUNC_2CC_, nil, nil, __FUNC_537_)
DataSources.GameModeSpecificOptions = registerVal3
local function __FUNC_6FA_(arg0, arg1)
	arg0.disablePopupOpenCloseAnim = true
end

local function __FUNC_74D_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("GameSettings_EditModeSpecificOptions")
	if __FUNC_6FA_ then
		__FUNC_6FA_(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "GameSettings_EditModeSpecificOptions.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.GameSettings_Background.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3.MenuFrame.titleLabel:setText(Engine.Localize(GametypeSettingsGametypeHeader("")))
	registerVal3.MenuFrame.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize(GametypeSettingsGametypeHeader("")))
	registerVal3.GameSettingsSelectedItemInfo.GameModeInfo:setAlpha(0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.GameSettingsBackground = registerVal3
	local registerVal4 = CoD.Competitive_SettingsList.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 27.000000, 715.000000)
	registerVal4:setTopBottom(true, false, 134.000000, 723.000000)
	registerVal4.Title.DescTitle:setText(Engine.Localize("MENU_SETTINGS_CAPS"))
	registerVal4.ButtonList:setDataSource("GameModeSpecificOptions")
	registerVal4.ButtonList:setVerticalCount(15.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.Options = registerVal4
	local function __FUNC_1106_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		ClearSavedState(registerVal1, arg2)
		return true
	end

	local function __FUNC_1181_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1106_, __FUNC_1181_, false)
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
	local function __FUNC_127D_(arg1)
		arg1.GameSettingsBackground:close()
		arg1.Options:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "GameSettings_EditModeSpecificOptions.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_127D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.GameSettings_EditModeSpecificOptions = __FUNC_74D_
