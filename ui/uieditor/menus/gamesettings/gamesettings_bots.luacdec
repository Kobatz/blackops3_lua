-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.GameSettings.GameSettings_Background")
require("ui.uieditor.widgets.Competitive.Competitive_SettingsList")
local function __FUNC_2B5_(arg0, arg1, arg2, arg3, arg4)
	local registerVal6 = Engine.DvarInt(nil, arg3)
	UpdateInfoModels(arg1)
	if arg1.value == registerVal6 then
		return 
	end
	print(("Setting Dvar: " .. arg3 .. " to: " .. arg1.value))
	Engine.SetDvar(arg3, arg1.value)
	local registerVal8 = CoDShared.IsGametypeTeamBased()
	registerVal8 = Engine.DvarInt(nil, "bot_maxAllies")
	local registerVal9 = Engine.DvarInt(nil, "bot_maxAxis")
	local registerVal10 = CoD.GameSettingsUtility.GetMaxBotsCount()
	if registerVal8 and registerVal10 < (registerVal8 + registerVal9) then
		if arg3 == "bot_maxAllies" and 0.000000 < registerVal8 then
		else
		end
		if 0.000000 < ((registerVal10 - registerVal9) + 1.000000) then
			if arg3 == "bot_maxAllies" then
				Engine.SetDvar("bot_maxAxis", (((registerVal10 - registerVal9) + 1.000000) - 1.000000))
			else
				Engine.SetDvar("bot_maxAllies", (((registerVal10 - registerVal9) + 1.000000) - 1.000000))
			end
		end
	end
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.CreateModel(registerVal9, "GametypeSettings")
	registerVal9 = Engine.CreateModel(registerVal8, "Update")
	Engine.ForceNotifyModelSubscriptions(registerVal9)
end

local function __FUNC_668_(arg0)
	local registerVal2 = CoD.GameSettingsUtility.GetMaxBotsCount()
	local registerVal6 = {}
	registerVal6.option = "MENU_DISABLED"
	registerVal6.value = 0.000000
	registerVal6.default = true
	table.insert({}, registerVal6)
	local registerVal5 = CoDShared.IsGametypeTeamBased()
	if not registerVal5 then
	end
	for index5=2.000000, registerVal2, 1.000000 do
		local registerVal11 = {}
		local registerVal12 = tostring(index5)
		registerVal11.option = registerVal12
		registerVal11.value = index5
		table.insert({}, registerVal11)
	end
	registerVal5 = CoDShared.IsGametypeTeamBased()
	if registerVal5 then
		table.insert({}, CoD.OptionsUtility.CreateDvarSettings(arg0, "MPUI_ALLIES_CAPS", "MENU_ALLIES_BOT_DESC", "BotOptions_AlliesBots", "bot_maxAllies", {}, nil, __FUNC_2B5_))
		table.insert({}, CoD.OptionsUtility.CreateDvarSettings(arg0, "MPUI_AXIS_CAPS", "MENU_AXIS_BOT_DESC", "BotOptions_AxisBots", "bot_maxAxis", {}, nil, __FUNC_2B5_))
	else
		table.insert({}, CoD.OptionsUtility.CreateDvarSettings(arg0, "MENU_GAME_SIZE", "MENU_FREE_BOT_DESC", "BotOptions_EnemyBots", "bot_maxFree", {}, nil, __FUNC_2B5_))
	end
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.option = "MENU_BASICTRAINING_EASY_CAPS"
	registerVal14.value = 0.000000
	local registerVal15 = {}
	registerVal15.option = "MENU_BASICTRAINING_NORMAL_CAPS"
	registerVal15.value = 1.000000
	registerVal15.default = true
	local registerVal16 = {}
	registerVal16.option = "MENU_BASICTRAINING_HARD_CAPS"
	registerVal16.value = 2.000000
	local registerVal17 = {}
	registerVal17.option = "MENU_BASICTRAINING_FU_CAPS"
	registerVal17.value = 3.000000
	registerVal13 = {registerVal14, registerVal15, registerVal16, registerVal17}
	table.insert({}, CoD.OptionsUtility.CreateDvarSettings(arg0, "MENU_BASICTRAINING_DIFFICULTY_CAPS", "MENU_BOT_DIFFICULTY", "BotOptions_Difficulty", "bot_difficulty", registerVal13, nil, __FUNC_2B5_))
	return {}
end

local function __FUNC_C90_(arg0, arg1, arg2)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.CreateModel(registerVal4, "GametypeSettings")
	registerVal4 = Engine.CreateModel(registerVal3, "Update")
	if arg1.updateSubscription then
		arg1:removeSubscription(arg1.updateSubscription)
	end
	local function __FUNC_E01_()
		arg1:updateDataSource()
	end

	local registerVal5 = arg1:subscribeToModel(registerVal4, __FUNC_E01_, false)
	arg1.updateSubscription = registerVal5
end

local registerVal4 = DataSourceHelpers.ListSetup("BotSettings", __FUNC_668_, nil, nil, __FUNC_C90_)
DataSources.BotSettings = registerVal4
local function __FUNC_E52_(arg0, arg1)
	arg0.disablePopupOpenCloseAnim = true
end

local function __FUNC_EA5_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("GameSettings_Bots")
	if __FUNC_E52_ then
		__FUNC_E52_(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "GameSettings_Bots.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.GameSettings_Background.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3.MenuFrame.titleLabel:setText(Engine.Localize("MENU_SETUP_BOTS_CAPS"))
	registerVal3.MenuFrame.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_SETUP_BOTS_CAPS"))
	registerVal3.GameSettingsSelectedItemInfo.GameModeInfo:setAlpha(0.000000)
	registerVal3.GameSettingsSelectedItemInfo.GameModeName:setAlpha(0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.GameSettingsBackground = registerVal3
	local registerVal4 = CoD.Competitive_SettingsList.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 26.000000, 741.000000)
	registerVal4:setTopBottom(true, false, 135.000000, 720.000000)
	registerVal4.Title.DescTitle:setText(Engine.Localize("MENU_DESIRED_TEAM_SIZE_CAPS"))
	registerVal4.ButtonList:setVerticalCount(15.000000)
	registerVal4.ButtonList:setDataSource("BotSettings")
	registerVal1:addElement(registerVal4)
	registerVal1.Options = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_193F_()
		registerVal1:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal4.Title.DescTitle:completeAnimation()
		registerVal1.Options.Title.DescTitle:setText(Engine.Localize("MENU_DESIRED_TEAM_SIZE_CAPS"))
		registerVal1.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_193F_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_1AEE_()
		registerVal1:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal4.Title.DescTitle:completeAnimation()
		registerVal1.Options.Title.DescTitle:setText(Engine.Localize("MENU_DESIRED_GAME_SIZE_CAPS"))
		registerVal1.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_1AEE_
	registerVal5.NonTeamBased = registerVal6
	registerVal1.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "NonTeamBased"
	local function __FUNC_1C9E_(arg0, arg1, arg2)
		local registerVal3 = IsGametypeTeambased()
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_1C9E_
	registerVal7 = {registerVal8}
	registerVal1:mergeStateConditions(registerVal7)
	local function __FUNC_1CF5_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		ClearSavedState(registerVal1, arg2)
		SetPerControllerTableProperty(arg2, "disableGameSettingsOptions", nil)
		return true
	end

	local function __FUNC_1DD0_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1CF5_, __FUNC_1DD0_, false)
	registerVal3.MenuFrame:setModel(registerVal1.buttonModel, arg0)
	registerVal4.id = "Options"
	registerVal7 = {}
	registerVal7.name = "menu_loaded"
	registerVal7.controller = arg0
	registerVal1:processEvent(registerVal7)
	registerVal7 = {}
	registerVal7.name = "update_state"
	registerVal7.menu = registerVal1
	registerVal1:processEvent(registerVal7)
	registerVal5 = registerVal1:restoreState()
	if not registerVal5 then
		registerVal7 = {}
		registerVal7.name = "gain_focus"
		registerVal7.controller = arg0
		registerVal1.Options:processEvent(registerVal7)
	end
	local function __FUNC_1ECD_(arg1)
		arg1.GameSettingsBackground:close()
		arg1.Options:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "GameSettings_Bots.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1ECD_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.GameSettings_Bots = __FUNC_EA5_
