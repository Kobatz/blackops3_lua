-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.menus.StartMenu.StartMenu_Main")
require("ui.uieditor.menus.Social.Social_Main")
require("ui.uieditor.widgets.Lobby.Common.FE_List1ButtonLarge_PH")
local function __FUNC_2E9_(arg0, arg1)
	if not CoD.useMouse then
		return 
	end
	arg0.Options:setHandleMouse(true)
	local function __FUNC_3E5_(arg0, arg1)
		CoD.PCUtil.SimulateButtonPress(arg1.controller, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
		return true
	end

	arg0.Options:registerEventHandler("leftclick_outside", __FUNC_3E5_)
end

local function __FUNC_4ED_(arg0, arg1)
	__FUNC_2E9_(arg0, arg1)
	arg0.disableBlur = true
	arg0.disablePopupOpenCloseAnim = true
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.CreateModel(registerVal4, "GameSettingsFlyoutOpen")
	Engine.SetModelValue(registerVal3, true)
	local function __FUNC_755_(arg0)
		local registerVal3 = Engine.GetGlobalModel()
		local registerVal2 = Engine.CreateModel(registerVal3, "GameSettingsFlyoutOpen")
		Engine.SetModelValue(registerVal2, false)
	end

	LUI.OverrideFunction_CallOriginalSecond(arg0, "close", __FUNC_755_)
	local function __FUNC_838_(arg0, arg1)
		local registerVal2 = arg0:getParent()
		if registerVal2 then
			local registerVal3 = registerVal2:getFirstChild()
			if registerVal3.menuName == "Lobby" then
			else
				local registerVal4 = registerVal3:getNextSibling()
			end
			if registerVal4 then
				if arg1.occluded == true then
					registerVal4:setAlpha(0.000000)
				else
					registerVal4:setAlpha(1.000000)
				end
			end
		end
		arg0.OcclusionChange(arg0, arg1)
	end

	arg0:registerEventHandler("occlusion_change", __FUNC_838_)
	registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "lobbyRoot.lobbyNav", true)
	local function __FUNC_9A9_(arg2)
		local registerVal2 = GoBack(arg0.occludedBy.occludedBy, arg1)
		local registerVal5 = Engine.GetLocalClientNum(arg1)
		Engine.SendClientScriptNotify(arg1, ("menu_change" .. registerVal5), "Main", "closeToMenu")
		return 
		GoBack(arg0, arg1)
	end

	arg0:subscribeToModel(registerVal2, __FUNC_9A9_, false)
end

local function __FUNC_B65_(arg0)
	local registerVal1 = {}
	local registerVal2 = {}
	registerVal2.optionDisplay = "MPUI_CHANGE_MAP_CAPS"
	registerVal2.customId = "btnChangeMap"
	registerVal2.action = OpenChangeMap
	local registerVal3 = {}
	registerVal3.optionDisplay = "MPUI_CHANGE_GAME_MODE_CAPS"
	registerVal3.customId = "btnChangeGameMode"
	registerVal3.action = OpenChangeGameMode
	local registerVal4 = {}
	registerVal4.optionDisplay = "MPUI_EDIT_GAME_RULES_CAPS"
	registerVal4.customId = "btnEditGameRules"
	registerVal4.action = OpenEditGameRules
	local registerVal5 = {}
	registerVal5.optionDisplay = "MENU_SETUP_BOTS_CAPS"
	registerVal5.customId = "btnSetupBots"
	registerVal5.action = OpenBotSettings
	registerVal1 = {registerVal2, registerVal3, registerVal4, registerVal5}
	registerVal2 = IsServerBrowserEnabled()
	if CoD.isPC and registerVal2 then
		registerVal4 = {}
		registerVal4.optionDisplay = "PLATFORM_SERVER_SETTINGS_CAPS"
		registerVal4.customID = "btnServerSettings"
		registerVal4.action = OpenServerSettings
		table.insert(registerVal1, registerVal4)
	end
	registerVal3, registerVal4, registerVal5 = ipairs(registerVal1)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		local registerVal10 = {}
		local registerVal11 = {}
		local registerVal12 = Engine.Localize(value7.optionDisplay)
		registerVal11.displayText = registerVal12
		registerVal11.customId = value7.customId
		registerVal11.disabled = value7.disabled
		registerVal10.models = registerVal11
		registerVal11 = {}
		registerVal11.title = value7.optionDisplay
		registerVal11.desc = value7.desc
		registerVal11.action = value7.action
		registerVal11.actionParam = value7.actionParam
		registerVal10.properties = registerVal11
		table.insert({}, registerVal10)
	end
	return {}
end

local registerVal4 = DataSourceHelpers.ListSetup("GameSettingsFlyoutButtons", __FUNC_B65_, nil, nil, nil)
DataSources.GameSettingsFlyoutButtons = registerVal4
local function __FUNC_1009_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("GameSettingsFlyoutMP")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "GameSettingsFlyoutMP.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIList.new(registerVal1, arg0, -2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 243.430000, 523.430000)
	registerVal3:setTopBottom(true, false, 177.560000, 329.560000)
	registerVal3:setYRot(25.000000)
	registerVal3:setWidgetType(CoD.FE_List1ButtonLarge_PH)
	registerVal3:setVerticalCount(5.000000)
	registerVal3:setSpacing(-2.000000)
	registerVal3:setDataSource("GameSettingsFlyoutButtons")
	local function __FUNC_1A86_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal3:registerEventHandler("gain_focus", __FUNC_1A86_)
	local function __FUNC_1C17_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_1C17_)
	local function __FUNC_1CE6_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_1D47_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal3, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1CE6_, __FUNC_1D47_, false)
	registerVal1:addElement(registerVal3)
	registerVal1.Options = registerVal3
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Local"
	local function __FUNC_1E42_(arg0, arg1, arg2)
		return IsLobbyNetworkModeLAN()
	end

	registerVal7.condition = __FUNC_1E42_
	registerVal6 = {registerVal7}
	registerVal1:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "lobbyRoot.lobbyNetworkMode")
	local function __FUNC_1E97_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "lobbyRoot.lobbyNetworkMode"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal1:subscribeToModel(registerVal6, __FUNC_1E97_)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "lobbyRoot.lobbyNav")
	local function __FUNC_2066_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "lobbyRoot.lobbyNav"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal1:subscribeToModel(registerVal6, __FUNC_2066_)
	local function __FUNC_222E_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		ClearMenuSavedState(arg1)
		return true
	end

	local function __FUNC_22A9_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_222E_, __FUNC_22A9_, false)
	local function __FUNC_239C_(arg0, arg1, arg2, arg3)
		GoBackAndOpenOverlayOnParent(registerVal1, "StartMenu_Main", arg2)
		return true
	end

	local function __FUNC_2422_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_MENU")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_START, "M", __FUNC_239C_, __FUNC_2422_, false)
	local function __FUNC_2516_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsLAN()
		registerVal4 = IsPlayerAGuest(arg2)
		registerVal4 = IsPlayerAllowedToPlayOnline(arg2)
		if not registerVal4 and not registerVal4 and registerVal4 then
			GoBackAndOpenOverlayOnParent(registerVal1, "Social_Main", arg2)
			return true
		end
	end

	local function __FUNC_261B_(arg0, arg1, arg2)
		local registerVal3 = IsLAN()
		registerVal3 = IsPlayerAGuest(arg2)
		registerVal3 = IsPlayerAllowedToPlayOnline(arg2)
		if not registerVal3 and not registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "")
			return false
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "S", __FUNC_2516_, __FUNC_261B_, false)
	local function __FUNC_279A_(arg0, arg1, arg2, arg3)
		SendButtonPressToOccludedMenu(arg1, arg2, arg3, Enum.LUIButton.LUI_KEY_LB)
		return true
	end

	local function __FUNC_2858_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LB, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_LB, nil, __FUNC_279A_, __FUNC_2858_, false)
	local function __FUNC_2942_(arg0, arg1, arg2, arg3)
		SendButtonPressToOccludedMenu(arg1, arg2, arg3, Enum.LUIButton.LUI_KEY_RB)
		return true
	end

	local function __FUNC_2A00_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RB, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RB, nil, __FUNC_2942_, __FUNC_2A00_, false)
	registerVal3.id = "Options"
	registerVal6 = {}
	registerVal6.name = "menu_loaded"
	registerVal6.controller = arg0
	registerVal1:processEvent(registerVal6)
	registerVal6 = {}
	registerVal6.name = "update_state"
	registerVal6.menu = registerVal1
	registerVal1:processEvent(registerVal6)
	local registerVal4 = registerVal1:restoreState()
	if not registerVal4 then
		registerVal6 = {}
		registerVal6.name = "gain_focus"
		registerVal6.controller = arg0
		registerVal1.Options:processEvent(registerVal6)
	end
	local function __FUNC_2AEA_(arg1)
		arg1.Options:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "GameSettingsFlyoutMP.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_2AEA_)
	if __FUNC_4ED_ then
		__FUNC_4ED_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.GameSettingsFlyoutMP = __FUNC_1009_
