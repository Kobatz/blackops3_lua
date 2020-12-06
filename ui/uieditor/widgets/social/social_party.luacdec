-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Social.Social_Options_Slider")
require("ui.uieditor.widgets.Social.Social_PlayersList")
require("ui.uieditor.menus.Social.Social_PlayerDetailsPopup")
local function __FUNC_355_(arg0, arg1)
	local function __FUNC_39E_(arg0)
		if LUI.savedMenuStates[arg0.id] ~= nil and LUI.savedMenuStates[arg0.id].id then
			LUI.savedMenuStates[arg0.id].saveEvent.originalEvent = nil
			local registerVal4 = {}
			registerVal4.name = "restore_focus"
			registerVal4.id = LUI.savedMenuStates[arg0.id].id
			registerVal4.data = LUI.savedMenuStates[arg0.id].data
			registerVal4.saveEvent = LUI.savedMenuStates[arg0.id].saveEvent
			return arg0:processEvent(registerVal4)
		end
	end

	arg0.restoreState = __FUNC_39E_
end

local function __FUNC_506_(arg0, arg1, arg2, arg3, arg4, arg5)
	local registerVal6 = CoD.OptionsUtility.GetProfileSelection(arg2, arg1.options, arg3)
	local registerVal7 = arg0:getModel(arg2, "currentSelection")
	local registerVal8 = Engine.GetModelValue(registerVal7)
	local registerVal9, registerVal10 = arg0.Slider:getRowAndColumnForIndex((registerVal8 - 1.000000))
	arg0.Slider:setActiveIndex(registerVal9, registerVal10, 0.000000)
end

local function __FUNC_6BD_(arg0)
	local registerVal2 = {}
	local registerVal3 = {}
	local registerVal4 = Engine.Localize("MENU_PARTY_PRIVACY_OPEN")
	registerVal3.name = registerVal4
	registerVal3.value = Enum.PartyPrivacy.PARTY_PRIVACY_OPEN
	registerVal4 = {}
	local registerVal5 = Engine.Localize("MENU_PARTY_PRIVACY_FRIENDS_ONLY")
	registerVal4.name = registerVal5
	registerVal4.value = Enum.PartyPrivacy.PARTY_PRIVACY_FRIENDS_ONLY
	registerVal5 = {}
	local registerVal6 = Engine.Localize("MENU_PARTY_PRIVACY_INVITE_ONLY")
	registerVal5.name = registerVal6
	registerVal5.value = Enum.PartyPrivacy.PARTY_PRIVACY_INVITE_ONLY
	registerVal6 = {}
	local registerVal7 = Engine.Localize("MENU_PARTY_PRIVACY_CLOSED")
	registerVal6.name = registerVal7
	registerVal6.value = Enum.PartyPrivacy.PARTY_PRIVACY_CLOSED
	registerVal2 = {registerVal3, registerVal4, registerVal5, registerVal6}
	local function __FUNC_C08_(arg0)
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

	registerVal4 = {}
	registerVal5 = {}
	registerVal6 = Engine.Localize("MPUI_LOBBY_PRIVACY_CAPS")
	registerVal5.name = registerVal6
	registerVal6 = Engine.Localize("PLATFORM_CONTROLLER_VIBRATION_DESC")
	registerVal5.desc = registerVal6
	registerVal5.image = "t7_menu_social_privacy"
	registerVal6 = CoD.OptionsUtility.CreateCustomOptionDataSource(arg0, "PartyOptions_PartyPrivacy", registerVal2, "party_privacyStatus", __FUNC_C08_, nil, __FUNC_506_)
	registerVal5.optionsDatasource = registerVal6
	registerVal6 = CoD.OptionsUtility.GetProfileSelection(arg0, registerVal2, "party_privacyStatus")
	registerVal5.currentSelection = registerVal6
	registerVal5.selected = false
	registerVal4.models = registerVal5
	registerVal5 = {}
	registerVal5.hideArrows = true
	registerVal5.disabled = false
	registerVal4.properties = registerVal5
	return registerVal4
end

local function __FUNC_E9A_(arg0)
	local registerVal2 = Engine.GetLobbyUIScreen()
	local registerVal3 = LobbyData:UITargetFromId(registerVal2)
	for index6=1.000000, registerVal3.maxClients, 1.000000 do
		{}[index6] = {}
		local registerVal11 = tostring(index6)
		{}[index6].name = registerVal11
		{}[index6].value = index6
	end
	local function __FUNC_12F3_(arg0)
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

	local registerVal8 = tonumber(Engine.ProfileValueAsString(arg0, "party_maxplayers"))
	if registerVal8 <= registerVal3.maxClients then
		local registerVal9 = CoD.OptionsUtility.GetProfileSelection(arg0, {}, "party_maxplayers")
	end
	registerVal9 = {}
	local registerVal10 = {}
	registerVal11 = Engine.Localize("MENU_PLAYER_LIMIT_CAPS")
	registerVal10.name = registerVal11
	registerVal11 = Engine.Localize("MENU_LOOK_SENSITIVITY_VERTICAL_DESC")
	registerVal10.desc = registerVal11
	registerVal10.image = "t7_menu_social_playerlimit"
	registerVal11 = CoD.OptionsUtility.CreateCustomOptionDataSource(arg0, "PartyOptions_PartyMaxSize", {}, "party_maxplayers", __FUNC_12F3_, nil, __FUNC_506_)
	registerVal10.optionsDatasource = registerVal11
	registerVal10.currentSelection = registerVal9
	registerVal10.selected = false
	registerVal9.models = registerVal10
	registerVal10 = {}
	registerVal10.hideArrows = true
	registerVal10.disabled = false
	registerVal9.properties = registerVal10
	return registerVal9
end

local function __FUNC_15EE_(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = Engine.Localize(arg1)
	local registerVal6 = {}
	local registerVal7 = {}
	local registerVal8 = Engine.ToUpper(registerVal5)
	registerVal7.name = registerVal8
	registerVal7.image = arg2
	registerVal7.buttonOnly = true
	registerVal7.selected = false
	registerVal7.altText = arg3
	registerVal6.models = registerVal7
	registerVal7 = {}
	registerVal7.hideArrows = true
	registerVal7.disabled = false
	registerVal7.action = arg4
	registerVal6.properties = registerVal7
	return registerVal6
end

local function __FUNC_1765_(arg0)
	local registerVal2 = ShouldShowPartyPrivacy(arg0)
	if registerVal2 then
		table.insert({}, __FUNC_6BD_(arg0))
		table.insert({}, __FUNC_E9A_(arg0))
	end
	registerVal2, registerVal3 = ShouldShowLeaveParty(arg0)
	if registerVal2 then
		local function __FUNC_1A91_(arg0, arg1, arg2, arg3, arg4)
			CoD.OverlayUtility.CreateOverlay(arg2, arg4, "LobbyLeavePopup", LuaEnums.LEAVE_LOBBY_POPUP.LEAVE_PARTY)
		end

		table.insert({}, __FUNC_15EE_(arg0, "MENU_MANAGE_PARTY_LEAVE_BUTTON", "uie_t7_menu_social_leave_party", "MENU_LEAVE", __FUNC_1A91_))
	end
	local registerVal4 = ShouldShowPromotePlayer(arg0)
	if registerVal4 then
		local function __FUNC_1B9F_(arg0, arg1, arg2, arg3, arg4)
			ShowManagePartyPopup(arg4, arg0, arg1, arg2, "PROMOTE")
		end

		table.insert({}, __FUNC_15EE_(arg0, "MENU_MANAGE_PARTY_PROMOTE_BUTTON", "uie_t7_menu_social_promote", "MENU_PROMOTE", __FUNC_1B9F_))
	end
	registerVal4 = ShouldShowBootPlayer(arg0)
	if registerVal4 then
		local function __FUNC_1C13_(arg0, arg1, arg2, arg3, arg4)
			ShowManagePartyPopup(arg4, arg0, arg1, arg2, "KICK")
		end

		table.insert({}, __FUNC_15EE_(arg0, "MENU_MANAGE_PARTY_KICK_BUTTON", "uie_t7_menu_social_bootplayer", "MENU_BOOT", __FUNC_1C13_))
	end
	return {}
end

local registerVal7 = DataSourceHelpers.ListSetup("PartyControlsList", __FUNC_1765_, true)
DataSources.PartyControlsList = registerVal7
local function __FUNC_1C84_(arg0, arg1, arg2)
	local registerVal6 = Engine.GetGlobalModel()
	local registerVal5 = Engine.GetModel(registerVal6, "lobbyRoot.privateClient.update")
	local function __FUNC_1E5A_(arg1)
		arg0.ButtonList:updateDataSource()
	end

	arg0.ButtonList:subscribeToModel(registerVal5, __FUNC_1E5A_)
	registerVal6 = Engine.GetGlobalModel()
	registerVal5 = Engine.GetModel(registerVal6, "lobbyRoot.lobbyLockedIn")
	local function __FUNC_1ECA_(arg1)
		arg0.ButtonList:updateDataSource()
	end

	arg0.ButtonList:subscribeToModel(registerVal5, __FUNC_1ECA_)
	local function __FUNC_1F3A_(arg0)
		local registerVal3 = Engine.GetGlobalModel()
		local registerVal2 = Engine.CreateModel(registerVal3, "SocialMainMenu.managePartySubListSelected")
		Engine.SetModelValue(registerVal2, false)
	end

	LUI.OverrideFunction_CallOriginalSecond(arg0, "close", __FUNC_1F3A_)
end

local registerVal8 = InheritFrom(LUI.UIElement)
CoD.Social_Party = registerVal8
local function __FUNC_202F_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_355_ then
		__FUNC_355_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Social_Party)
	registerVal2.id = "Social_Party"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1150.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 525.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -1.000000, 403.000000)
	registerVal3:setTopBottom(true, false, -25.000000, 557.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.300000)
	registerVal2:addElement(registerVal3)
	registerVal2.BlackTint = registerVal3
	local registerVal4 = LUI.UIList.new(arg0, arg1, -2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(true, false, 390.000000, 1060.000000)
	registerVal4:setTopBottom(true, false, 4.000000, 331.000000)
	registerVal4:setWidgetType(CoD.Social_Options_Slider)
	registerVal4:setVerticalCount(5.000000)
	registerVal4:setSpacing(-2.000000)
	registerVal4:setDataSource("PartyControlsList")
	local function __FUNC_2B27_(arg2, arg3)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
	end

	registerVal4:registerEventHandler("on_session_start", __FUNC_2B27_)
	local function __FUNC_2C77_(arg2, arg3)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
	end

	registerVal4:registerEventHandler("on_session_end", __FUNC_2C77_)
	local function __FUNC_2DC7_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "selected"
		CoD.Menu.UpdateButtonShownState(registerVal4, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal4:linkToElementModel(registerVal4, "selected", true, __FUNC_2DC7_)
	local registerVal8 = Engine.GetGlobalModel()
	local registerVal7 = Engine.GetModel(registerVal8, "SocialMainMenu.managePartySubListSelected")
	local function __FUNC_2F81_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "SocialMainMenu.managePartySubListSelected"
		CoD.Menu.UpdateButtonShownState(registerVal4, arg0, arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_2F81_)
	local function __FUNC_315F_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		registerVal3 = IsLobbyPrivateHost()
		if registerVal3 then
			SetMenuModelValue(arg0, "managePartySubListFocus", true)
		else
			CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
			CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("gain_focus", __FUNC_315F_)
	local function __FUNC_33D5_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_33D5_)
	local function __FUNC_34A6_(arg0, arg1, arg2, arg3)
		local registerVal4 = HasProperty(arg0, "action")
		if registerVal4 then
			ProcessListAction(registerVal2, arg0, arg2)
			return true
		else
			registerVal4 = IsLobbyPrivateHost()
			registerVal4 = IsSelfModelValueTrue(arg0, arg2, "selected")
			if registerVal4 and registerVal4 then
				SetElementModelValue(arg0, "selected", false)
				SetMenuModelValue(arg1, "managePartySubListSelected", false)
				MakeElementFocusable(registerVal2, "players", arg2)
				EnableNavigation(registerVal2, "ButtonList")
				LobbyPartyPrivacyAccept(registerVal2, arg0, arg2)
				return true
			else
				registerVal4 = IsLobbyPrivateHost()
				registerVal4 = IsSelfModelValueTrue(arg0, arg2, "selected")
				if registerVal4 and not registerVal4 then
					SetElementModelValue(arg0, "selected", true)
					SetMenuModelValue(arg1, "managePartySubListSelected", true)
					MakeElementNotFocusable(registerVal2, "players", arg2)
					DisableNavigation(registerVal2, "ButtonList")
					DispatchEventToChildren(arg0, "gain_focus", arg2)
					return true
				end
			end
		end
	end

	local function __FUNC_380C_(arg0, arg1, arg2)
		local registerVal3 = HasProperty(arg0, "action")
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		else
			registerVal3 = IsLobbyPrivateHost()
			registerVal3 = IsSelfModelValueTrue(arg0, arg2, "selected")
			if registerVal3 and registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
				return true
			else
				registerVal3 = IsLobbyPrivateHost()
				registerVal3 = IsSelfModelValueTrue(arg0, arg2, "selected")
				if registerVal3 and not registerVal3 then
					CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
					return true
				end
			end
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_34A6_, __FUNC_380C_, false)
	local function __FUNC_3A93_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsLobbyPrivateHost()
		registerVal4 = IsGlobalModelValueTrue(arg0, arg2, "SocialMainMenu.managePartySubListSelected")
		if registerVal4 and registerVal4 then
			SetMenuModelValue(arg1, "managePartySubListSelected", false)
			SetElementModelValue(arg0, "selected", false)
			MakeElementFocusable(registerVal2, "players", arg2)
			EnableNavigation(registerVal2, "ButtonList")
			DispatchEventToChildren(arg0, "lose_focus", arg2)
			LobbyPartyPrivacyCancel(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_3CF5_(arg0, arg1, arg2)
		local registerVal3 = IsLobbyPrivateHost()
		registerVal3 = IsGlobalModelValueTrue(arg0, arg2, "SocialMainMenu.managePartySubListSelected")
		if registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_3A93_, __FUNC_3CF5_, false)
	registerVal2:addElement(registerVal4)
	registerVal2.ButtonList = registerVal4
	local registerVal5 = CoD.Social_PlayersList.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 14.000000, 388.000000)
	registerVal5:setTopBottom(true, false, 6.000000, 456.000000)
	registerVal5.onlineList:setDataSource("SocialOnlinePlayersList")
	local function __FUNC_3E8B_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		SetMenuModelValue(arg0, "managePartySubListFocus", false)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal5:registerEventHandler("gain_focus", __FUNC_3E8B_)
	local function __FUNC_406B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_406B_)
	local function __FUNC_413A_(arg0, arg1, arg2, arg3)
		SetSelectedFriendXUID(registerVal2, arg0, arg2)
		OpenOverlay(registerVal2, "Social_PlayerDetailsPopup", arg2, "", "")
		return true
	end

	local function __FUNC_41FD_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_413A_, __FUNC_41FD_, false)
	registerVal2:addElement(registerVal5)
	registerVal2.players = registerVal5
	local function __FUNC_42FA_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal5.onlineList, nil, false, __FUNC_42FA_)
	local registerVal6 = {}
	registerVal6.left = registerVal5
	registerVal4.navigation = registerVal6
	registerVal6 = {}
	registerVal6.right = registerVal4
	registerVal5.navigation = registerVal6
	registerVal6 = {}
	registerVal7 = {}
	local function __FUNC_434A_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal4:completeAnimation()
		registerVal2.ButtonList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.players:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_434A_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_449F_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal4:completeAnimation()
		registerVal2.ButtonList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.players:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_449F_
	registerVal6.Hidden = registerVal7
	registerVal2.clipsPerState = registerVal6
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal4.id = "ButtonList"
	registerVal5.id = "players"
	local function __FUNC_45F3_(arg0, arg1)
		local registerVal2 = arg0.ButtonList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_45F3_)
	local function __FUNC_46F6_(arg0)
		arg0.ButtonList:close()
		arg0.players:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_46F6_)
	if __FUNC_1C84_ then
		__FUNC_1C84_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.Social_Party.new = __FUNC_202F_
