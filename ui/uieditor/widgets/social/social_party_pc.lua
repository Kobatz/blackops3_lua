-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.PC.StartMenu.Dropdown.OptionDropdown")
require("ui.uieditor.widgets.Social.Social_PlayersList")
local function __FUNC_412_(arg0)
	local registerVal1 = Dvar.tu4_partyPrivacyUseGlobal:get()
	if registerVal1 == true then
		Engine.SetPartyPrivacy(arg0)
	else
		Engine.SetSessionPartyPrivacy(Enum.LobbyType.LOBBY_TYPE_PRIVATE, arg0)
	end
	local registerVal2 = Engine.GetGlobalModel()
	registerVal1 = Engine.GetModel(registerVal2, "PartyPrivacy")
	local registerVal3 = Engine.GetModel(registerVal1, "privacy")
	Engine.SetModelValue(registerVal3, arg0)
	registerVal3 = Engine.CreateModel(registerVal1, "privacyStatus")
	Engine.SetModelValue(registerVal3, PartyPrivacy(arg0))
end

local function __FUNC_6A2_(arg0)
	local registerVal1 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	if registerVal1 then
		Engine.SetLobbyMaxClients(Enum.LobbyType.LOBBY_TYPE_PRIVATE, arg0)
	end
	registerVal1 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
	registerVal1 = Engine.GetLobbyMode(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal1 and registerVal1 ~= Enum.LobbyMode.LOBBY_MODE_PUBLIC then
		Engine.SetLobbyMaxClients(Enum.LobbyType.LOBBY_TYPE_GAME, arg0)
	end
	local registerVal2 = Engine.GetGlobalModel()
	registerVal1 = Engine.GetModel(registerVal2, "PartyPrivacy")
	local registerVal3 = Engine.GetModel(registerVal1, "maxPlayers")
	Engine.SetModelValue(registerVal3, arg0)
end

local function __FUNC_99E_(arg0)
	local registerVal4 = {}
	local registerVal5 = {}
	registerVal5.value = Enum.PartyPrivacy.PARTY_PRIVACY_OPEN
	registerVal5.valueDisplay = "MENU_PARTY_PRIVACY_OPEN"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.value = Enum.PartyPrivacy.PARTY_PRIVACY_FRIENDS_ONLY
	registerVal5.valueDisplay = "MENU_PARTY_PRIVACY_FRIENDS_ONLY"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.value = Enum.PartyPrivacy.PARTY_PRIVACY_CLOSED
	registerVal5.valueDisplay = "MENU_PARTY_PRIVACY_CLOSED"
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	return {}
end

local registerVal3 = DataSourceHelpers.ListSetup("PC.SocialPartyPrivacyPresets", __FUNC_99E_, true)
DataSources.SocialPartyPrivacyPresets = registerVal3
local function __FUNC_BEB_(arg0)
	local registerVal2 = Engine.GetLobbyUIScreen()
	local registerVal3 = LobbyData:UITargetFromId(registerVal2)
	for index5=1.000000, registerVal3.maxClients, 1.000000 do
		local registerVal11 = {}
		local registerVal12 = {}
		registerVal12.value = index5
		local registerVal13 = tostring(index5)
		registerVal12.valueDisplay = registerVal13
		registerVal11.models = registerVal12
		table.insert({}, registerVal11)
	end
	return {}
end

registerVal3 = DataSourceHelpers.ListSetup("PC.SocialPartyMaxSizePresets", __FUNC_BEB_, true)
DataSources.SocialPartyMaxSizePresets = registerVal3
local function __FUNC_D6C_(arg0)
	local registerVal2 = ShouldShowPartyPrivacy(arg0)
	if registerVal2 then
		local registerVal4 = {}
		local registerVal5 = {}
		registerVal5.label = "MPUI_LOBBY_PRIVACY_CAPS"
		registerVal5.profileVarName = "party_privacyStatus"
		registerVal5.profileType = "user"
		registerVal5.datasource = "SocialPartyPrivacyPresets"
		registerVal5.widgetType = "dropdown"
		registerVal4.models = registerVal5
		registerVal4.properties = CoD.PCUtil.OptionsGenericDropdownProperties
		table.insert({}, registerVal4)
		registerVal4 = {}
		registerVal5 = {}
		registerVal5.label = "MENU_PLAYER_LIMIT_CAPS"
		registerVal5.profileVarName = "party_maxplayers"
		registerVal5.profileType = "user"
		registerVal5.datasource = "SocialPartyMaxSizePresets"
		registerVal5.widgetType = "dropdown"
		registerVal4.models = registerVal5
		registerVal4.properties = CoD.PCUtil.OptionsGenericDropdownProperties
		table.insert({}, registerVal4)
	end
	registerVal2, registerVal3 = ShouldShowLeaveParty(arg0)
	if registerVal2 then
		local registerVal6 = {}
		local registerVal7 = {}
		local registerVal8 = Engine.ToUpper(Engine.Localize("MENU_MANAGE_PARTY_LEAVE_BUTTON"))
		registerVal7.label = registerVal8
		registerVal7.profileType = "user"
		registerVal7.widgetType = "button"
		local function __FUNC_1324_(arg0, arg1)
			ProcessListAction(arg0.gridInfoTable.parentGrid.menu.TabFrame.framedWidget, arg0, arg1)
		end

		registerVal7.onPressFn = __FUNC_1324_
		registerVal6.models = registerVal7
		registerVal7 = {}
		local function __FUNC_1418_(arg0, arg1, arg2, arg3, arg4)
			CoD.OverlayUtility.CreateOverlay(arg2, arg4, "LobbyLeavePopup", LuaEnums.LEAVE_LOBBY_POPUP.LEAVE_PARTY)
		end

		registerVal7.action = __FUNC_1418_
		registerVal6.properties = registerVal7
		table.insert({}, registerVal6)
	end
	registerVal4 = ShouldShowPromotePlayer(arg0)
	if registerVal4 then
		registerVal6 = {}
		registerVal7 = {}
		registerVal8 = Engine.ToUpper(Engine.Localize("MENU_MANAGE_PARTY_PROMOTE_BUTTON"))
		registerVal7.label = registerVal8
		registerVal7.profileType = "user"
		registerVal7.widgetType = "button"
		local function __FUNC_1527_(arg0, arg1)
			ProcessListAction(arg0.gridInfoTable.parentGrid.menu.TabFrame.framedWidget, arg0, arg1)
		end

		registerVal7.onPressFn = __FUNC_1527_
		registerVal6.models = registerVal7
		registerVal7 = {}
		local function __FUNC_1618_(arg0, arg1, arg2, arg3, arg4)
			ShowManagePartyPopup(arg4, arg0, arg1, arg2, "PROMOTE")
		end

		registerVal7.action = __FUNC_1618_
		registerVal6.properties = registerVal7
		table.insert({}, registerVal6)
	end
	registerVal4 = ShouldShowBootPlayer(arg0)
	if registerVal4 then
		registerVal6 = {}
		registerVal7 = {}
		registerVal8 = Engine.ToUpper(Engine.Localize("MENU_MANAGE_PARTY_KICK_BUTTON"))
		registerVal7.label = registerVal8
		registerVal7.profileType = "user"
		registerVal7.widgetType = "button"
		local function __FUNC_168F_(arg0, arg1)
			ProcessListAction(arg0.gridInfoTable.parentGrid.menu.TabFrame.framedWidget, arg0, arg1)
		end

		registerVal7.onPressFn = __FUNC_168F_
		registerVal6.models = registerVal7
		registerVal7 = {}
		local function __FUNC_1780_(arg0, arg1, arg2, arg3, arg4)
			ShowManagePartyPopup(arg4, arg0, arg1, arg2, "KICK")
		end

		registerVal7.action = __FUNC_1780_
		registerVal6.properties = registerVal7
		table.insert({}, registerVal6)
	end
	return {}
end

registerVal3 = DataSourceHelpers.ListSetup("PartyControlsPCList", __FUNC_D6C_, true)
DataSources.PartyControlsPCList = registerVal3
function DataSources.PartyControlsPCList.getWidgetTypeForItem(arg0, arg1, arg2)
	if arg1 then
		local registerVal3 = Engine.GetModelValue(Engine.GetModel(arg1, "widgetType"))
		if registerVal3 == "dropdown" then
			return CoD.OptionDropdown
		else
			if registerVal3 == "button" then
				return CoD.StartMenu_Options_Button
			end
		end
	end
	return nil
end

local function __FUNC_1952_(arg0, arg1, arg2)
	local registerVal6 = Engine.GetGlobalModel()
	local registerVal5 = Engine.GetModel(registerVal6, "lobbyRoot.privateClient.update")
	local function __FUNC_1B6D_(arg2)
		arg0.DropdownList:updateDataSource()
		local registerVal3 = {}
		registerVal3.name = "options_refresh"
		registerVal3.controller = arg1
		arg0:dispatchEventToChildren(registerVal3)
	end

	arg0.DropdownList:subscribeToModel(registerVal5, __FUNC_1B6D_)
	local function __FUNC_1C58_(arg0, arg1)
		for index2=1.000000, arg0.DropdownList.requestedRowCount, 1.000000 do
			local registerVal6 = arg0.DropdownList:getItemAtPosition(index2, 1.000000)
			if arg1.inUse then
				if registerVal6 ~= arg1.widget then
					registerVal6.m_inputDisabled = true
				else
					registerVal6.m_inputDisabled = false
				end
			end
		end
	end

	arg0:registerEventHandler("dropdown_triggered", __FUNC_1C58_)
	arg0.DropdownList.m_managedItemPriority = true
	local function __FUNC_1D89_(arg0, arg2)
		local registerVal2 = arg2.widget.dropDownCurrentValue(arg1, arg0)
		local registerVal3 = arg2.widget:getModel()
		if not arg2.inUse and registerVal3 then
			local registerVal4 = Engine.GetModelValue(Engine.GetModel(registerVal3, "profileVarName"))
			if registerVal4 == "party_privacyStatus" then
				__FUNC_412_(registerVal2)
			else
				if registerVal4 == "party_maxplayers" then
					__FUNC_6A2_(registerVal2)
				end
			end
		end
		arg0:dispatchEventToParent(arg2)
	end

	arg0.DropdownList:registerEventHandler("dropdown_triggered", __FUNC_1D89_)
	registerVal5 = {}
	registerVal5.name = "options_refresh"
	registerVal5.controller = arg1
	arg0:dispatchEventToChildren(registerVal5)
end

local registerVal4 = InheritFrom(LUI.UIElement)
CoD.Social_Party_PC = registerVal4
local function __FUNC_1F66_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Social_Party_PC)
	registerVal2.id = "Social_Party_PC"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1150.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 525.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIList.new(arg0, arg1, 0.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 463.000000, 963.000000)
	registerVal3:setTopBottom(true, false, 6.000000, 176.000000)
	registerVal3:setDataSource("PartyControlsPCList")
	registerVal3:setWidgetType(CoD.OptionDropdown)
	registerVal3:setVerticalCount(5.000000)
	registerVal3:setSpacing(0.000000)
	local function __FUNC_2786_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		registerVal3 = IsLobbyHost()
		if registerVal3 then
			SetMenuModelValue(arg0, "managePartySubListFocus", true)
		else
			CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("gain_focus", __FUNC_2786_)
	local function __FUNC_2990_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_2990_)
	local function __FUNC_2A62_(arg0, arg1, arg2, arg3)
		local registerVal4 = HasProperty(arg0, "action")
		if registerVal4 then
			ProcessListAction(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_2B00_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = HasProperty(arg0, "action")
		if registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2A62_, __FUNC_2B00_, false)
	registerVal2:addElement(registerVal3)
	registerVal2.DropdownList = registerVal3
	local registerVal4 = CoD.Social_PlayersList.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, -3.000000, 377.000000)
	registerVal4:setTopBottom(true, false, 6.000000, 484.000000)
	registerVal4.onlineList:setDataSource("SocialOnlinePlayersList")
	local function __FUNC_2C43_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		SetMenuModelValue(arg0, "managePartySubListFocus", false)
		return registerVal3
	end

	registerVal4:registerEventHandler("gain_focus", __FUNC_2C43_)
	registerVal2:addElement(registerVal4)
	registerVal2.players = registerVal4
	local registerVal5 = {}
	registerVal5.left = registerVal4
	registerVal3.navigation = registerVal5
	registerVal5 = {}
	registerVal5.right = registerVal3
	registerVal4.navigation = registerVal5
	registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_2D62_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.DropdownList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.players:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_2D62_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_2EB9_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.DropdownList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.players:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_2EB9_
	registerVal5.Hidden = registerVal6
	registerVal2.clipsPerState = registerVal5
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	local function __FUNC_3011_(arg0)
		UpdateGamerprofile(registerVal2, arg0, arg1)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "close", __FUNC_3011_)
	registerVal3.id = "DropdownList"
	registerVal4.id = "players"
	local function __FUNC_306C_(arg0, arg1)
		local registerVal2 = arg0.DropdownList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_306C_)
	local function __FUNC_3174_(arg0)
		arg0.DropdownList:close()
		arg0.players:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3174_)
	if __FUNC_1952_ then
		__FUNC_1952_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.Social_Party_PC.new = __FUNC_1F66_
