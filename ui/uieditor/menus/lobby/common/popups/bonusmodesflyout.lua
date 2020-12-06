-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.menus.StartMenu.StartMenu_Main")
require("ui.uieditor.menus.Social.Social_Main")
require("ui.uieditor.widgets.Lobby.Common.FE_List1ButtonLarge_PH")
local function __FUNC_2E3_(arg0, arg1)
	if not CoD.useMouse then
		return 
	end
	arg0.Options:setHandleMouse(true)
	local function __FUNC_3DD_(arg0, arg1)
		CoD.PCUtil.SimulateButtonPress(arg1.controller, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
		return true
	end

	arg0.Options:registerEventHandler("leftclick_outside", __FUNC_3DD_)
end

local function __FUNC_4E5_(arg0, arg1)
	__FUNC_2E3_(arg0, arg1)
	arg0.disableBlur = true
	arg0.disablePopupOpenCloseAnim = true
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.CreateModel(registerVal4, "BonusModesFlyoutOpen")
	Engine.SetModelValue(registerVal3, true)
	local function __FUNC_6C9_(arg0)
		local registerVal3 = Engine.GetGlobalModel()
		local registerVal2 = Engine.CreateModel(registerVal3, "BonusModesFlyoutOpen")
		Engine.SetModelValue(registerVal2, false)
	end

	LUI.OverrideFunction_CallOriginalSecond(arg0, "close", __FUNC_6C9_)
	local function __FUNC_7AA_(arg0, arg1)
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

	arg0:registerEventHandler("occlusion_change", __FUNC_7AA_)
end

local function __FUNC_919_(arg0)
	local registerVal1 = {}
	local registerVal2 = {}
	registerVal2.optionDisplay = "MENU_SINGLEPLAYER_NIGHTMARES_CAPS"
	registerVal2.customId = "btnCPZM"
	local function __FUNC_1116_(arg0, arg1, arg2, arg3, arg4)
		NavigateToLobby_SelectionListCampaignZombies(arg0, arg1, arg2, arg3, arg4)
		Close(arg4, arg2)
	end

	registerVal2.action = __FUNC_1116_
	local registerVal3 = {}
	registerVal3.targetName = "CP2LobbyOnline"
	registerVal3.mode = Enum.eModes.MODE_CAMPAIGN
	registerVal3.firstTimeFlowAction = OpenCPFirstTimeFlow
	registerVal2.actionParam = registerVal3
	registerVal2.disabledFunc = IsCpUnavailable
	registerVal2.selectedParam = Enum.eModes.MODE_CAMPAIGN
	registerVal2.starterPackUpgrade = true
	registerVal3 = {}
	registerVal3.optionDisplay = "MENU_FREERUN_CAPS"
	registerVal3.customId = "btnFROnline"
	local function __FUNC_11B1_(arg0, arg1, arg2, arg3, arg4)
		NavigateToLobby_SelectionList(arg0, arg1, arg2, arg3, arg4)
		Close(arg4, arg2)
	end

	registerVal3.action = __FUNC_11B1_
	registerVal3.actionParam = "FRLobbyOnlineGame"
	registerVal3.selectedFunc = IsMostRecentSessionMode
	registerVal3.selectedParam = Enum.eModes.MODE_MULTIPLAYER
	registerVal3.disabledFunc = IsMpUnavailable
	registerVal3.starterPackUpgrade = false
	local registerVal4 = {}
	registerVal4.optionDisplay = "MENU_DOA2_TITLE"
	registerVal4.customId = "btnDOA"
	local function __FUNC_123E_(arg0, arg1, arg2, arg3, arg4)
		NavigateToLobby_SelectionListDOA(arg0, arg1, arg2, arg3, arg4)
		Close(arg4, arg2)
	end

	registerVal4.action = __FUNC_123E_
	local registerVal5 = {}
	registerVal5.targetName = "CPDOALobbyOnline"
	registerVal5.mode = Enum.eModes.MODE_CAMPAIGN
	registerVal5.firstTimeFlowAction = OpenCPFirstTimeFlow
	registerVal4.actionParam = registerVal5
	registerVal4.disabledFunc = IsCpUnavailable
	registerVal4.selectedParam = Enum.eModes.MODE_CAMPAIGN
	registerVal4.starterPackUpgrade = true
	registerVal1 = {registerVal2, registerVal3, registerVal4}
	registerVal2 = {}
	registerVal3 = {}
	registerVal3.optionDisplay = "MENU_SINGLEPLAYER_NIGHTMARES_CAPS"
	registerVal3.customId = "btnCPZM"
	local function __FUNC_12CD_(arg0, arg1, arg2, arg3, arg4)
		NavigateToLobby_SelectionListCampaignZombies(arg0, arg1, arg2, arg3, arg4)
		Close(arg4, arg2)
	end

	registerVal3.action = __FUNC_12CD_
	registerVal4 = {}
	registerVal4.targetName = "CP2LobbyLANGame"
	registerVal4.mode = Enum.eModes.MODE_CAMPAIGN
	registerVal4.firstTimeFlowAction = OpenCPFirstTimeFlow
	registerVal3.actionParam = registerVal4
	registerVal3.disabledFunc = IsCpUnavailable
	registerVal3.selectedParam = Enum.eModes.MODE_CAMPAIGN
	registerVal3.starterPackUpgrade = true
	registerVal4 = {}
	registerVal4.optionDisplay = "MENU_FREERUN_CAPS"
	registerVal4.customId = "btnFRLan"
	local function __FUNC_1369_(arg0, arg1, arg2, arg3, arg4)
		NavigateToLobby_SelectionList(arg0, arg1, arg2, arg3, arg4)
		Close(arg4, arg2)
	end

	registerVal4.action = __FUNC_1369_
	registerVal4.actionParam = "FRLobbyLANGame"
	registerVal4.selectedFunc = IsMostRecentSessionMode
	registerVal4.selectedParam = Enum.eModes.MODE_MULTIPLAYER
	registerVal4.disabledFunc = IsMpUnavailable
	registerVal4.starterPackUpgrade = false
	registerVal5 = {}
	registerVal5.optionDisplay = "MENU_DOA2_TITLE"
	registerVal5.customId = "btnDOA"
	local function __FUNC_13F6_(arg0, arg1, arg2, arg3, arg4)
		NavigateToLobby_SelectionListDOA(arg0, arg1, arg2, arg3, arg4)
		Close(arg4, arg2)
	end

	registerVal5.action = __FUNC_13F6_
	local registerVal6 = {}
	registerVal6.targetName = "CPDOALobbyLANGame"
	registerVal6.mode = Enum.eModes.MODE_CAMPAIGN
	registerVal6.firstTimeFlowAction = OpenCPFirstTimeFlow
	registerVal5.actionParam = registerVal6
	registerVal5.disabledFunc = IsCpUnavailable
	registerVal5.selectedParam = Enum.eModes.MODE_CAMPAIGN
	registerVal5.starterPackUpgrade = true
	registerVal2 = {registerVal3, registerVal4, registerVal5}
	registerVal5 = Engine.GetLobbyNetworkMode()
	if registerVal5 == Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE then
	end
	registerVal5, registerVal6, registerVal7 = ipairs(registerVal1)
	for index8,value9 in registerVal5, registerVal6, registerVal7 do
		local registerVal12 = {}
		local registerVal13 = {}
		local registerVal14 = Engine.Localize(value9.optionDisplay)
		registerVal13.displayText = registerVal14
		registerVal13.customId = value9.customId
		registerVal13.selectedFunc = value9.selectedFunc
		registerVal12.models = registerVal13
		registerVal13 = {}
		registerVal13.title = value9.optionDisplay
		registerVal13.desc = value9.desc
		registerVal13.action = value9.action
		registerVal13.actionParam = value9.actionParam
		registerVal13.selectedParam = value9.selectedParam
		registerVal13.requiredChunk = value9.selectedParam
		registerVal13.starterPackUpgrade = value9.starterPackUpgrade
		registerVal13.disabled = false
		registerVal12.properties = registerVal13
		table.insert({}, registerVal12)
	end
	return {}
end

local registerVal4 = DataSourceHelpers.ListSetup("BonusModesFlyoutButtons", __FUNC_919_, nil, nil, nil)
DataSources.BonusModesFlyoutButtons = registerVal4
local function __FUNC_1485_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("BonusModesFlyout")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "BonusModesFlyout.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIList.new(registerVal1, arg0, -2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 232.430000, 512.430000)
	registerVal3:setTopBottom(true, false, 409.560000, 501.560000)
	registerVal3:setXRot(-2.000000)
	registerVal3:setYRot(25.000000)
	registerVal3:setWidgetType(CoD.FE_List1ButtonLarge_PH)
	registerVal3:setVerticalCount(3.000000)
	registerVal3:setSpacing(-2.000000)
	registerVal3:setDataSource("BonusModesFlyoutButtons")
	local function __FUNC_1FD1_(arg1, arg2)
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

	registerVal3:registerEventHandler("gain_focus", __FUNC_1FD1_)
	local function __FUNC_2163_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_2163_)
	local function __FUNC_2232_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_2293_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal3, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2232_, __FUNC_2293_, false)
	registerVal1:addElement(registerVal3)
	registerVal1.Options = registerVal3
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Local"
	local function __FUNC_238E_(arg0, arg1, arg2)
		return IsLobbyNetworkModeLAN()
	end

	registerVal7.condition = __FUNC_238E_
	registerVal6 = {registerVal7}
	registerVal1:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "lobbyRoot.lobbyNetworkMode")
	local function __FUNC_23E3_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "lobbyRoot.lobbyNetworkMode"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal1:subscribeToModel(registerVal6, __FUNC_23E3_)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "lobbyRoot.lobbyNav")
	local function __FUNC_25B2_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "lobbyRoot.lobbyNav"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal1:subscribeToModel(registerVal6, __FUNC_25B2_)
	local function __FUNC_277A_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		ClearMenuSavedState(arg1)
		return true
	end

	local function __FUNC_27F5_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_277A_, __FUNC_27F5_, false)
	local function __FUNC_28E8_(arg0, arg1, arg2, arg3)
		GoBackAndOpenOverlayOnParent(registerVal1, "StartMenu_Main", arg2)
		return true
	end

	local function __FUNC_296E_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_MENU")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_START, "M", __FUNC_28E8_, __FUNC_296E_, false)
	local function __FUNC_2A62_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsLAN()
		registerVal4 = IsPlayerAGuest(arg2)
		registerVal4 = IsPlayerAllowedToPlayOnline(arg2)
		if not registerVal4 and not registerVal4 and registerVal4 then
			GoBackAndOpenOverlayOnParent(registerVal1, "Social_Main", arg2)
			return true
		end
	end

	local function __FUNC_2B67_(arg0, arg1, arg2)
		local registerVal3 = IsLAN()
		registerVal3 = IsPlayerAGuest(arg2)
		registerVal3 = IsPlayerAllowedToPlayOnline(arg2)
		if not registerVal3 and not registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "")
			return false
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "S", __FUNC_2A62_, __FUNC_2B67_, false)
	local function __FUNC_2CE6_(arg0, arg1, arg2, arg3)
		SendButtonPressToOccludedMenu(arg1, arg2, arg3, Enum.LUIButton.LUI_KEY_LB)
		return true
	end

	local function __FUNC_2DA4_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LB, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_LB, nil, __FUNC_2CE6_, __FUNC_2DA4_, false)
	local function __FUNC_2E8E_(arg0, arg1, arg2, arg3)
		SendButtonPressToOccludedMenu(arg1, arg2, arg3, Enum.LUIButton.LUI_KEY_RB)
		return true
	end

	local function __FUNC_2F4C_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RB, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RB, nil, __FUNC_2E8E_, __FUNC_2F4C_, false)
	local function __FUNC_3036_(arg0, arg1, arg2, arg3)
		SendButtonPressToOccludedMenu(arg1, arg2, arg3, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		return true
	end

	local function __FUNC_30FE_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, nil, __FUNC_3036_, __FUNC_30FE_, false)
	local function __FUNC_31F0_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsStarterPack(arg2)
		if registerVal4 then
			StarterParckPurchase(registerVal1, arg2, arg1)
			return true
		end
	end

	local function __FUNC_3281_(arg0, arg1, arg2)
		local registerVal3 = IsStarterPack(arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LTRIG, "PLATFORM_STARTER_PACK_UPGRADE_TITLE")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_LTRIG, "U", __FUNC_31F0_, __FUNC_3281_, false)
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
	local function __FUNC_33C3_(arg1)
		arg1.Options:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "BonusModesFlyout.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_33C3_)
	if __FUNC_4E5_ then
		__FUNC_4E5_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.BonusModesFlyout = __FUNC_1485_
