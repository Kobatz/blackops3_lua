-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.GameSettings.GameSettings_Background")
require("ui.uieditor.widgets.Competitive.Competitive_SettingsList")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
local function __FUNC_303_(arg0)
	local registerVal3, registerVal4, registerVal5 = ipairs(CoD.GameOptions.SpawnSettings)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		local registerVal8 = CoDShared.IsGametypeTeamBased()
		if value7 ~= "spawnteamkilledpenalty" or registerVal8 then
			table.insert({}, CoD.OptionsUtility.CreateListOptions(arg0, CoD.GameOptions.GameSettings[value7].name, CoD.GameOptions.GameSettings[value7].hintText, value7, CoD.GameOptions.GameSettings[value7], ("SpawnSettingsOptionsList_" .. value7)))
		end
	end
	return {}
end

local function __FUNC_560_(arg0, arg1, arg2)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.CreateModel(registerVal4, "GametypeSettings")
	registerVal4 = Engine.CreateModel(registerVal3, "Update")
	if arg1.updateSubscription then
		arg1:removeSubscription(arg1.updateSubscription)
	end
	local function __FUNC_6D1_()
		arg1:updateDataSource(false)
	end

	local registerVal5 = arg1:subscribeToModel(registerVal4, __FUNC_6D1_, false)
	arg1.updateSubscription = registerVal5
end

local registerVal3 = DataSourceHelpers.ListSetup("SpawnSettings", __FUNC_303_, nil, nil, __FUNC_560_)
DataSources.SpawnSettings = registerVal3
local function __FUNC_726_(arg0, arg1)
	arg0.disablePopupOpenCloseAnim = true
end

local function __FUNC_779_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("GameSettings_SpawnSettings")
	if __FUNC_726_ then
		__FUNC_726_(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "GameSettings_SpawnSettings.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.GameSettings_Background.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3.MenuFrame.titleLabel:setText(Engine.Localize("MENU_SPAWN_CAPS"))
	registerVal3.MenuFrame.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_SPAWN_CAPS"))
	registerVal3.GameSettingsSelectedItemInfo.GameModeInfo:setAlpha(0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.GameSettingsBackground = registerVal3
	local registerVal4 = CoD.Competitive_SettingsList.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 27.000000, 715.000000)
	registerVal4:setTopBottom(true, false, 134.000000, 720.000000)
	registerVal4.Title.DescTitle:setText(Engine.Localize("MENU_SETTINGS_CAPS"))
	registerVal4.ButtonList:setDataSource("SpawnSettings")
	registerVal4.ButtonList:setVerticalCount(15.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.Options = registerVal4
	local registerVal5 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, 18.000000, 70.000000)
	registerVal5:setTopBottom(true, false, 91.000000, 708.250000)
	registerVal1:addElement(registerVal5)
	registerVal1.FEMenuLeftGraphics = registerVal5
	local function __FUNC_11A1_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		ClearSavedState(registerVal1, arg2)
		return true
	end

	local function __FUNC_121D_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_11A1_, __FUNC_121D_, false)
	registerVal3.MenuFrame:setModel(registerVal1.buttonModel, arg0)
	registerVal4.id = "Options"
	local registerVal8 = {}
	registerVal8.name = "menu_loaded"
	registerVal8.controller = arg0
	registerVal1:processEvent(registerVal8)
	registerVal8 = {}
	registerVal8.name = "update_state"
	registerVal8.menu = registerVal1
	registerVal1:processEvent(registerVal8)
	local registerVal6 = registerVal1:restoreState()
	if not registerVal6 then
		registerVal8 = {}
		registerVal8.name = "gain_focus"
		registerVal8.controller = arg0
		registerVal1.Options:processEvent(registerVal8)
	end
	local function __FUNC_1319_(arg1)
		arg1.GameSettingsBackground:close()
		arg1.Options:close()
		arg1.FEMenuLeftGraphics:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "GameSettings_SpawnSettings.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1319_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.GameSettings_SpawnSettings = __FUNC_779_
