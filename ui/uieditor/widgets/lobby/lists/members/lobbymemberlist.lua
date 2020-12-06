-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ListSubHeader")
require("ui.uieditor.menus.Social.Social_PlayerDetailsPopup")
require("ui.uieditor.menus.Social.Social_InspectPlayerPopup")
require("ui.uieditor.menus.Social.Social_InspectPlayerPopupLoading")
require("ui.uieditor.widgets.Lobby.Lists.Members.LobbyMember")
require("ui.uieditor.widgets.Lobby.Common.FE_ListAdditonal")
require("ui.uieditor.widgets.Lobby.Common.FE_ListHeaderFull")
require("ui.uieditor.widgets.Lobby.Lists.Members.LobbyMemberQuickJoin")
local function __FUNC_431_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	Engine.CreateModel(registerVal3, "PartyPrivacy.maxPlayers")
	registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.GetModel(registerVal3, "socialRoot")
	arg0.socialRootModel = registerVal2
	registerVal2 = Engine.CreateModel(arg0.socialRootModel, "cache")
	arg0.cacheRootModel = registerVal2
	registerVal2 = Engine.CreateModel(arg0.cacheRootModel, "xuid")
	arg0.cacheXuid = registerVal2
	registerVal2 = Engine.CreateModel(arg0.cacheRootModel, "gametype")
	arg0.cacheGametype = registerVal2
	registerVal2 = Engine.CreateModel(arg0.cacheRootModel, "mapid")
	arg0.cacheMapid = registerVal2
	registerVal2 = Engine.CreateModel(arg0.cacheRootModel, "difficulty")
	arg0.cacheDifficulty = registerVal2
	registerVal2 = Engine.CreateModel(arg0.cacheRootModel, "playlist")
	arg0.cachePlaylist = registerVal2
	registerVal2 = Engine.CreateModel(arg0.socialRootModel, "party")
	arg0.cacheParty = registerVal2
	registerVal2 = Engine.CreateModel(arg0.cacheParty, "update")
	arg0.cachePartyUpdate = registerVal2
	registerVal2 = Engine.CreateModel(arg0.cacheParty, "total")
	arg0.cachePartyTotal = registerVal2
	registerVal2 = Engine.CreateModel(arg0.cacheParty, "available")
	arg0.cachePartyAvailable = registerVal2
	registerVal2 = Engine.CreateModel(arg0.cacheParty, "leader")
	arg0.cachePartyLeader = registerVal2
	arg0.cachePartyGamertags = {}
	for index2=1.000000, 18.000000, 1.000000 do
		local registerVal6 = Engine.CreateModel(arg0.cacheParty, ("pm_" .. index2))
		local registerVal8 = Engine.CreateModel(registerVal6, "gamertag")
		arg0.cachePartyGamertags[index2] = registerVal8
		Engine.SetModelValue(arg0.cachePartyGamertags[index2], "")
	end
	Engine.SetModelValue(arg0.cacheXuid, Engine.StringToXUIDDecimal("0"))
	Engine.SetModelValue(arg0.cachePartyUpdate, 0.000000)
	Engine.SetModelValue(arg0.cachePartyTotal, 0.000000)
	Engine.SetModelValue(arg0.cachePartyAvailable, 0.000000)
	Engine.SetModelValue(arg0.cachePartyLeader, "")
end

local function __FUNC_AC6_(arg0, arg1, arg2)
	if arg0.currentState == "ShowQuickJoin" then
		arg0.friendsAndGroups:makeFocusableWithoutResettingNavigation()
	else
		arg0.friendsAndGroups:makeNotFocusable()
	end
end

local function __FUNC_BC2_(arg0, arg1, arg2)
	__FUNC_AC6_(arg0, arg1, arg2)
	if arg0.lobbyNavSubscription then
		arg0:removeSubscription(arg0.lobbyNavSubscription)
	end
	local registerVal5 = LobbyData.GetLobbyNavModel()
	local function __FUNC_DD8_()
		__FUNC_AC6_(arg0, arg1, arg2)
	end

	local registerVal3 = arg0:subscribeToModel(registerVal5, __FUNC_DD8_, false)
	arg0.lobbyNavSubscription = registerVal3
	if arg0.lobbyNetworkModeSub then
		arg0:removeSubscription(arg0.lobbyNetworkModeSub)
	end
	local registerVal4 = Engine.GetGlobalModel()
	registerVal3 = Engine.GetModel(registerVal4, "lobbyRoot.lobbyNetworkMode")
	local function __FUNC_E18_()
		__FUNC_AC6_(arg0, arg1, arg2)
	end

	registerVal4 = arg0:subscribeToModel(registerVal3, __FUNC_E18_, false)
	arg0.lobbyNetworkModeSub = registerVal4
end

local registerVal4 = InheritFrom(LUI.UIElement)
CoD.LobbyMemberList = registerVal4
local function __FUNC_E58_(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 0.000000
	local registerVal2 = LUI.UIVerticalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Top)
	if __FUNC_431_ then
		__FUNC_431_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LobbyMemberList)
	registerVal2.id = "LobbyMemberList"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 490.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 1018.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	registerVal3 = CoD.FE_ListSubHeader.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 490.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 27.000000)
	registerVal3:setAlpha(0.720000)
	registerVal3.StringA:setText(Engine.Localize("MENU_LOBBY_LIST_PLAYER_COUNT"))
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "PlayerCountState"
	local function __FUNC_2417_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal7.condition = __FUNC_2417_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal2:addElement(registerVal3)
	registerVal2.FEListSubHeader1 = registerVal3
	local registerVal4 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(true, false, 0.000000, 490.000000)
	registerVal4:setTopBottom(true, false, 27.000000, 547.000000)
	registerVal4:setWidgetType(CoD.LobbyMember)
	registerVal4:setVerticalCount(18.000000)
	registerVal4:setDataSource("LobbyList")
	local registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "lobbyRoot.lobbyNav")
	local function __FUNC_2460_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "lobbyRoot.lobbyNav"
		CoD.Menu.UpdateButtonShownState(registerVal4, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		CoD.Menu.UpdateButtonShownState(registerVal4, arg0, arg1, Enum.LUIButton.LUI_KEY_LB)
		CoD.Menu.UpdateButtonShownState(registerVal4, arg0, arg1, Enum.LUIButton.LUI_KEY_RB)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_2460_)
	local function __FUNC_26E0_(arg2, arg3)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_LB)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_RB)
	end

	registerVal4:registerEventHandler("on_session_start", __FUNC_26E0_)
	local function __FUNC_2820_(arg2, arg3)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_LB)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_RB)
	end

	registerVal4:registerEventHandler("on_session_end", __FUNC_2820_)
	local function __FUNC_2960_(arg2, arg3)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_LB)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_RB)
	end

	registerVal4:registerEventHandler("update_team_selection_buttons", __FUNC_2960_)
	local function __FUNC_2AA0_(arg2, arg3)
		CacheLobbyMemberPlayerInfoDetails(registerVal2, arg2, arg1)
		CopyModelFindElement(arg0, arg2, "SelectedPlayerInfo")
		UpdatePlayerInspection(registerVal2, arg2, arg1)
		return nil
	end

	registerVal4:registerEventHandler("list_item_gain_focus", __FUNC_2AA0_)
	local function __FUNC_2B95_(arg0, arg2)
		PlayClipOnListItemElement(registerVal2, arg0, arg1, "Intro")
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("menu_loaded", __FUNC_2B95_)
	local function __FUNC_2C4B_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_LB)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_RB)
		return registerVal3
	end

	registerVal4:registerEventHandler("gain_focus", __FUNC_2C4B_)
	local function __FUNC_2EF9_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_2EF9_)
	local function __FUNC_2FCA_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsLobbyNetworkModeLAN()
		if registerVal4 then
			SetSelectedFriendXUID(registerVal2, arg0, arg2)
			OpenPlatformProfile(registerVal2, arg0, arg2, "", arg1)
			return true
		else
			SetSelectedFriendXUID(registerVal2, arg0, arg2)
			OpenOverlay(registerVal2, "Social_PlayerDetailsPopup", arg2, "", "")
			return true
		end
	end

	local function __FUNC_3115_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2FCA_, __FUNC_3115_, false)
	local function __FUNC_3212_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsLobbyNetworkModeLive()
		registerVal4 = IsMultiplayer()
		registerVal4 = AlwaysFalse()
		if registerVal4 and registerVal4 and registerVal4 then
			SetSelectedFriendXUID(registerVal2, arg0, arg2)
			SetGlobalModelValue("combatRecordMode", "mp")
			CombatRecordSetXUIDFromSelectedFriend(arg2)
			CombatRecordSetMenuForPostStatsLoad(registerVal2, "Social_InspectPlayerPopup")
			OpenPopup(registerVal2, "Social_InspectPlayerPopupLoading", arg2, "", "")
			CombatRecordReadOtherPlayerStats(arg2)
			return true
		end
	end

	local function __FUNC_347A_(arg0, arg1, arg2)
		local registerVal3 = IsLobbyNetworkModeLive()
		registerVal3 = IsMultiplayer()
		registerVal3 = AlwaysFalse()
		if registerVal3 and registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_INSPECT_PLAYER")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "N", __FUNC_3212_, __FUNC_347A_, false)
	local function __FUNC_3603_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsRepeatButtonPress(arg3)
		registerVal4 = IsLobbyGameHost()
		registerVal4 = IsLobbyWithTeamAssignment()
		registerVal4 = IsTeamAssignment(LuaEnums.TEAM_ASSIGNMENT.HOST)
		if not registerVal4 and registerVal4 and registerVal4 and registerVal4 then
			LobbyTeamSelectionLB(registerVal2, arg0, arg2)
			PlaySoundSetSound(registerVal2, "team_switch")
			return true
		end
	end

	local function __FUNC_37B2_(arg0, arg1, arg2)
		local registerVal4 = IsRepeatButtonPress(nil)
		registerVal4 = IsLobbyGameHost()
		registerVal4 = IsLobbyWithTeamAssignment()
		registerVal4 = IsTeamAssignment(LuaEnums.TEAM_ASSIGNMENT.HOST)
		if not registerVal4 and registerVal4 and registerVal4 and registerVal4 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LB, "MPUI_CHANGE_ROLE")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_LB, "Q", __FUNC_3603_, __FUNC_37B2_, false)
	local function __FUNC_39C2_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsRepeatButtonPress(arg3)
		registerVal4 = IsLobbyGameHost()
		registerVal4 = IsLobbyWithTeamAssignment()
		registerVal4 = IsTeamAssignment(LuaEnums.TEAM_ASSIGNMENT.HOST)
		if not registerVal4 and registerVal4 and registerVal4 and registerVal4 then
			LobbyTeamSelectionRB(registerVal2, arg0, arg2)
			PlaySoundSetSound(registerVal2, "team_switch")
			return true
		end
	end

	local function __FUNC_3B72_(arg0, arg1, arg2)
		local registerVal4 = IsRepeatButtonPress(nil)
		registerVal4 = IsLobbyGameHost()
		registerVal4 = IsLobbyWithTeamAssignment()
		registerVal4 = IsTeamAssignment(LuaEnums.TEAM_ASSIGNMENT.HOST)
		if not registerVal4 and registerVal4 and registerVal4 and registerVal4 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RB, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_RB, "W", __FUNC_39C2_, __FUNC_3B72_, false)
	local function __FUNC_3D72_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsLobbyNetworkModeLAN()
		registerVal4 = CanMuteLobbyPlayerLAN(arg2, arg0)
		registerVal4 = IsPlayerMuted(arg2, arg0)
		if registerVal4 and registerVal4 and registerVal4 then
			UnmuteLobbyPlayerLAN(arg0, arg2, arg1)
			return true
		else
			registerVal4 = IsLobbyNetworkModeLAN()
			registerVal4 = CanMuteLobbyPlayerLAN(arg2, arg0)
			if registerVal4 and registerVal4 then
				MuteLobbyPlayerLAN(arg0, arg2, arg1)
				return true
			end
		end
	end

	local function __FUNC_3ECF_(arg0, arg1, arg2)
		local registerVal3 = IsLobbyNetworkModeLAN()
		registerVal3 = CanMuteLobbyPlayerLAN(arg2, arg0)
		registerVal3 = IsPlayerMuted(arg2, arg0)
		if registerVal3 and registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_UNMUTE")
			return true
		else
			registerVal3 = IsLobbyNetworkModeLAN()
			registerVal3 = CanMuteLobbyPlayerLAN(arg2, arg0)
			if registerVal3 and registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_MUTE")
				return true
			end
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "X", __FUNC_3D72_, __FUNC_3ECF_, false)
	registerVal2:addElement(registerVal4)
	registerVal2.lobbyList = registerVal4
	local registerVal5 = CoD.FE_ListAdditonal.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 490.000000)
	registerVal5:setTopBottom(true, false, 547.000000, 579.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.FEListAdditonal0 = registerVal5
	registerVal6 = CoD.FE_ListHeaderFull.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 0.000000, 490.000000)
	registerVal6:setTopBottom(true, false, 579.000000, 608.000000)
	registerVal6.FEListHeader0.btnDisplayTextStroke:setText(Engine.Localize("MENU_LOBBY_QUICK_JOIN"))
	registerVal2:addElement(registerVal6)
	registerVal2.FEListHeaderFull0 = registerVal6
	registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 0.000000, 77.000000)
	registerVal7:setTopBottom(true, false, 608.000000, 610.000000)
	registerVal7:setAlpha(0.000000)
	local function __FUNC_40F3_(arg0, arg2)
		PlayClip(registerVal2, "Intro", arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("menu_loaded", __FUNC_40F3_)
	registerVal2:addElement(registerVal7)
	registerVal2.spacer = registerVal7
	registerVal8 = CoD.FE_ListSubHeader.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 0.000000, 490.000000)
	registerVal8:setTopBottom(true, false, 610.000000, 637.000000)
	registerVal8.StringA:setText(Engine.Localize("MENU_LOBBY_PLAYERCOUNT"))
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "PlayerCountState"
	local function __FUNC_4192_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal12.condition = __FUNC_4192_
	local registerVal13 = {}
	registerVal13.stateName = "GroupCountState"
	local function __FUNC_41DD_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal13.condition = __FUNC_41DD_
	registerVal11 = {registerVal12, registerVal13}
	registerVal8:mergeStateConditions(registerVal11)
	registerVal2:addElement(registerVal8)
	registerVal2.FEListSubHeader0 = registerVal8
	local registerVal9 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal9:makeFocusable()
	registerVal9:setLeftRight(true, false, 0.000000, 490.000000)
	registerVal9:setTopBottom(true, false, 637.000000, 1012.000000)
	registerVal9:setWidgetType(CoD.LobbyMemberQuickJoin)
	registerVal9:setVerticalCount(13.000000)
	registerVal9:setDataSource("LobbyQuickJoin")
	local function __FUNC_4228_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isJoinable"
		CoD.Menu.UpdateButtonShownState(registerVal9, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal9:linkToElementModel(registerVal9, "isJoinable", true, __FUNC_4228_)
	local function __FUNC_43E8_(arg2, arg3)
		local registerVal3 = IsPlayerJoinable(arg2)
		if registerVal3 then
			CacheSocialOnlinePlayersListModels(registerVal2, arg2, arg1)
			CopyModelFindElement(arg0, arg2, "SelectedPlayerInfo")
			UpdatePlayerInspection(registerVal2, arg2, arg1)
		else
			CacheSocialOnlinePlayersListModels(registerVal2, arg2, arg1)
			CopyModelFindElement(arg0, arg2, "SelectedPlayerInfo")
			UpdatePlayerInspection(registerVal2, arg2, arg1)
		end
		return nil
	end

	registerVal9:registerEventHandler("list_item_gain_focus", __FUNC_43E8_)
	local function __FUNC_454C_(arg0, arg2)
		PlayClipOnListItemElement(registerVal2, arg0, arg1, "Intro")
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("menu_loaded", __FUNC_454C_)
	local function __FUNC_4603_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal9:registerEventHandler("gain_focus", __FUNC_4603_)
	local function __FUNC_47F9_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("lose_focus", __FUNC_47F9_)
	local function __FUNC_48CA_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsPlayerJoinable(arg0)
		if registerVal4 then
			LobbyQuickJoin(registerVal2, arg0, arg2, Enum.JoinType.JOIN_TYPE_FRIEND, false)
			return true
		end
	end

	local function __FUNC_49B0_(arg0, arg1, arg2)
		local registerVal3 = IsPlayerJoinable(arg0)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_JOIN")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal9, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "J", __FUNC_48CA_, __FUNC_49B0_, false)
	local function __FUNC_4AE3_(arg0, arg1, arg2, arg3)
		SetSelectedFriendXUID(registerVal2, arg0, arg2)
		OpenOverlay(registerVal2, "Social_PlayerDetailsPopup", arg2, "", "")
		return true
	end

	local function __FUNC_4BA5_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal9, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_4AE3_, __FUNC_4BA5_, false)
	registerVal12 = {}
	registerVal13 = {}
	registerVal13.stateName = "Disabled"
	local function __FUNC_4CA2_(arg0, arg1, arg2)
		local registerVal3 = IsCurrentMenu(arg0, "ModeSelect")
		if not registerVal3 then
			registerVal3 = AlwaysFalse()
		else
		end
		return true
	end

	registerVal13.condition = __FUNC_4CA2_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal2:addElement(registerVal9)
	registerVal2.friendsAndGroups = registerVal9
	local registerVal10 = {}
	registerVal10.down = registerVal9
	registerVal4.navigation = registerVal10
	registerVal10 = {}
	registerVal10.up = registerVal4
	registerVal9.navigation = registerVal10
	registerVal10 = {}
	registerVal11 = {}
	local function __FUNC_4D3C_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.FEListSubHeader1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.lobbyList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FEListAdditonal0:setAlpha(1.000000)
		registerVal2.FEListAdditonal0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FEListHeaderFull0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.FEListSubHeader0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.friendsAndGroups:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_4D3C_
	local function __FUNC_5046_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.FEListSubHeader1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.lobbyList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FEListAdditonal0:setAlpha(1.000000)
		registerVal2.FEListAdditonal0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_5342_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.FEListHeaderFull0:setAlpha(0.000000)
		__FUNC_5342_(registerVal6, {})
		local function __FUNC_54F5_(arg0, arg1)
			local function __FUNC_564C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_564C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_564C_)
		end

		registerVal8:completeAnimation()
		registerVal2.FEListSubHeader0:setAlpha(0.000000)
		__FUNC_54F5_(registerVal8, {})
		local function __FUNC_5801_(arg0, arg1)
			local function __FUNC_5958_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 290.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_5958_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 389.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5958_)
		end

		registerVal9:completeAnimation()
		registerVal2.friendsAndGroups:setAlpha(0.000000)
		__FUNC_5801_(registerVal9, {})
	end

	registerVal11.ShowQuickJoin = __FUNC_5046_
	local function __FUNC_5B0D_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_5E05_(arg0, arg1)
			local function __FUNC_5F5C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 420.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_5F5C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5F5C_)
		end

		registerVal3:completeAnimation()
		registerVal2.FEListSubHeader1:setAlpha(0.000000)
		__FUNC_5E05_(registerVal3, {})
		local function __FUNC_6111_(arg0, arg1)
			local function __FUNC_6268_(arg0, arg1)
				local function __FUNC_63C0_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Bounce)
					end
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_63C0_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_63C0_)
			end

			if arg1.interrupted then
				__FUNC_6268_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6268_)
		end

		registerVal4:completeAnimation()
		registerVal2.lobbyList:setAlpha(0.000000)
		__FUNC_6111_(registerVal4, {})
		local function __FUNC_6575_(arg0, arg1)
			local function __FUNC_66CC_(arg0, arg1)
				local function __FUNC_6824_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 410.000000, false, false, CoD.TweenType.Bounce)
					end
					arg0:setAlpha(1.000000)
					arg0:setZoom(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_6824_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6824_)
			end

			if arg1.interrupted then
				__FUNC_66CC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_66CC_)
		end

		registerVal5:completeAnimation()
		registerVal2.FEListAdditonal0:setAlpha(0.000000)
		registerVal2.FEListAdditonal0:setZoom(0.000000)
		__FUNC_6575_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FEListHeaderFull0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.FEListSubHeader0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.friendsAndGroups:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.Intro = __FUNC_5B0D_
	local function __FUNC_69FB_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_6CF6_(arg0, arg1)
			local function __FUNC_6E4C_(arg0, arg1)
				local function __FUNC_6FC7_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Bounce)
					end
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_6FC7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Bounce)
				arg0:setAlpha(0.320000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6FC7_)
			end

			if arg1.interrupted then
				__FUNC_6E4C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6E4C_)
		end

		registerVal3:completeAnimation()
		registerVal2.FEListSubHeader1:setAlpha(1.000000)
		__FUNC_6CF6_(registerVal3, {})
		local function __FUNC_7179_(arg0, arg1)
			local function __FUNC_72D0_(arg0, arg1)
				local function __FUNC_744B_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 179.000000, false, false, CoD.TweenType.Bounce)
					end
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_744B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Bounce)
				arg0:setAlpha(0.440000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_744B_)
			end

			if arg1.interrupted then
				__FUNC_72D0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_72D0_)
		end

		registerVal4:completeAnimation()
		registerVal2.lobbyList:setAlpha(1.000000)
		__FUNC_7179_(registerVal4, {})
		local function __FUNC_75FD_(arg0, arg1)
			local function __FUNC_7754_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				arg0:setZoom(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_7754_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Bounce)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7754_)
		end

		registerVal5:completeAnimation()
		registerVal2.FEListAdditonal0:setAlpha(1.000000)
		registerVal2.FEListAdditonal0:setZoom(0.000000)
		__FUNC_75FD_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FEListHeaderFull0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.FEListSubHeader0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.friendsAndGroups:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.Update = __FUNC_69FB_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_792B_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.FEListSubHeader1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.lobbyList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FEListAdditonal0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FEListHeaderFull0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.FEListSubHeader0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.friendsAndGroups:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_792B_
	local function __FUNC_7C00_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_7EAA_(arg0, arg1)
			local function __FUNC_8000_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_8000_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8000_)
		end

		registerVal3:completeAnimation()
		registerVal2.FEListSubHeader1:setAlpha(0.000000)
		__FUNC_7EAA_(registerVal3, {})
		local function __FUNC_81B5_(arg0, arg1)
			local function __FUNC_830C_(arg0, arg1)
				local function __FUNC_8464_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 329.000000, false, false, CoD.TweenType.Bounce)
					end
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_8464_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8464_)
			end

			if arg1.interrupted then
				__FUNC_830C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_830C_)
		end

		registerVal4:completeAnimation()
		registerVal2.lobbyList:setAlpha(0.000000)
		__FUNC_81B5_(registerVal4, {})
		local function __FUNC_8619_(arg0, arg1)
			local function __FUNC_8770_(arg0, arg1)
				local function __FUNC_88C8_(arg0, arg1)
					local function __FUNC_8A20_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Bounce)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_8A20_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8A20_)
				end

				if arg1.interrupted then
					__FUNC_88C8_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_88C8_)
			end

			if arg1.interrupted then
				__FUNC_8770_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8770_)
		end

		registerVal5:completeAnimation()
		registerVal2.FEListAdditonal0:setAlpha(0.000000)
		__FUNC_8619_(registerVal5, {})
		local function __FUNC_8BD5_(arg0, arg1)
			local function __FUNC_8D2C_(arg0, arg1)
				local function __FUNC_8E84_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Bounce)
					end
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_8E84_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8E84_)
			end

			if arg1.interrupted then
				__FUNC_8D2C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8D2C_)
		end

		registerVal6:completeAnimation()
		registerVal2.FEListHeaderFull0:setAlpha(0.000000)
		__FUNC_8BD5_(registerVal6, {})
		local function __FUNC_9039_(arg0, arg1)
			local function __FUNC_9190_(arg0, arg1)
				local function __FUNC_92E8_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Bounce)
					end
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_92E8_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 449.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_92E8_)
			end

			if arg1.interrupted then
				__FUNC_9190_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9190_)
		end

		registerVal8:completeAnimation()
		registerVal2.FEListSubHeader0:setAlpha(0.000000)
		__FUNC_9039_(registerVal8, {})
		local function __FUNC_949D_(arg0, arg1)
			local function __FUNC_95F4_(arg0, arg1)
				local function __FUNC_974C_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Bounce)
					end
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_974C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 559.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_974C_)
			end

			if arg1.interrupted then
				__FUNC_95F4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_95F4_)
		end

		registerVal9:completeAnimation()
		registerVal2.friendsAndGroups:setAlpha(0.000000)
		__FUNC_949D_(registerVal9, {})
	end

	registerVal11.Intro = __FUNC_7C00_
	local function __FUNC_9901_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.FEListSubHeader1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.lobbyList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FEListAdditonal0:setAlpha(1.000000)
		registerVal2.FEListAdditonal0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_9BFE_(arg0, arg1)
			local function __FUNC_9D54_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 420.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_9D54_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Bounce)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9D54_)
		end

		registerVal6:completeAnimation()
		registerVal2.FEListHeaderFull0:setAlpha(1.000000)
		__FUNC_9BFE_(registerVal6, {})
		local function __FUNC_9F09_(arg0, arg1)
			local function __FUNC_A060_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 490.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_A060_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Bounce)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A060_)
		end

		registerVal8:completeAnimation()
		registerVal2.FEListSubHeader0:setAlpha(1.000000)
		__FUNC_9F09_(registerVal8, {})
		local function __FUNC_A215_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 519.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.friendsAndGroups:setAlpha(1.000000)
		__FUNC_A215_(registerVal9, {})
	end

	registerVal11.DefaultState = __FUNC_9901_
	local function __FUNC_A3C9_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_A672_(arg0, arg1)
			local function __FUNC_A7EB_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_A7EB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Bounce)
			arg0:setAlpha(0.180000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A7EB_)
		end

		registerVal3:completeAnimation()
		registerVal2.FEListSubHeader1:setAlpha(1.000000)
		__FUNC_A672_(registerVal3, {})
		local function __FUNC_A99D_(arg0, arg1)
			local function __FUNC_AAF4_(arg0, arg1)
				local function __FUNC_AC6F_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Bounce)
					end
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_AC6F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 169.000000, false, false, CoD.TweenType.Bounce)
				arg0:setAlpha(0.180000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AC6F_)
			end

			if arg1.interrupted then
				__FUNC_AAF4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Bounce)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AAF4_)
		end

		registerVal4:completeAnimation()
		registerVal2.lobbyList:setAlpha(1.000000)
		__FUNC_A99D_(registerVal4, {})
		local function __FUNC_AE21_(arg0, arg1)
			local function __FUNC_AF78_(arg0, arg1)
				local function __FUNC_B0F3_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Bounce)
					end
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_B0F3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Bounce)
				arg0:setAlpha(0.200000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B0F3_)
			end

			if arg1.interrupted then
				__FUNC_AF78_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Bounce)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AF78_)
		end

		registerVal5:completeAnimation()
		registerVal2.FEListAdditonal0:setAlpha(1.000000)
		__FUNC_AE21_(registerVal5, {})
		local function __FUNC_B2A5_(arg0, arg1)
			local function __FUNC_B3FC_(arg0, arg1)
				local function __FUNC_B577_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Bounce)
					end
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_B577_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Bounce)
				arg0:setAlpha(0.240000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B577_)
			end

			if arg1.interrupted then
				__FUNC_B3FC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Bounce)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B3FC_)
		end

		registerVal6:completeAnimation()
		registerVal2.FEListHeaderFull0:setAlpha(1.000000)
		__FUNC_B2A5_(registerVal6, {})
		local function __FUNC_B729_(arg0, arg1)
			local function __FUNC_B880_(arg0, arg1)
				local function __FUNC_B9FB_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Bounce)
					end
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_B9FB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Bounce)
				arg0:setAlpha(0.270000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B9FB_)
			end

			if arg1.interrupted then
				__FUNC_B880_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Bounce)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B880_)
		end

		registerVal8:completeAnimation()
		registerVal2.FEListSubHeader0:setAlpha(1.000000)
		__FUNC_B729_(registerVal8, {})
		local function __FUNC_BBAD_(arg0, arg1)
			local function __FUNC_BD04_(arg0, arg1)
				local function __FUNC_BE7F_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 190.000000, false, false, CoD.TweenType.Bounce)
					end
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_BE7F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Bounce)
				arg0:setAlpha(0.390000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BE7F_)
			end

			if arg1.interrupted then
				__FUNC_BD04_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Bounce)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BD04_)
		end

		registerVal9:completeAnimation()
		registerVal2.friendsAndGroups:setAlpha(1.000000)
		__FUNC_BBAD_(registerVal9, {})
	end

	registerVal11.Update = __FUNC_A3C9_
	registerVal10.ShowQuickJoin = registerVal11
	registerVal2.clipsPerState = registerVal10
	registerVal12 = {}
	registerVal13 = {}
	registerVal13.stateName = "ShowQuickJoin"
	local function __FUNC_C031_(arg0, arg1, arg2)
		return ShouldShowQuickJoin()
	end

	registerVal13.condition = __FUNC_C031_
	registerVal12 = {registerVal13}
	registerVal2:mergeStateConditions(registerVal12)
	registerVal13 = Engine.GetGlobalModel()
	registerVal12 = Engine.GetModel(registerVal13, "lobbyRoot.lobbyMainMode")
	local function __FUNC_C085_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyMainMode"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal12, __FUNC_C085_)
	registerVal13 = Engine.GetGlobalModel()
	registerVal12 = Engine.GetModel(registerVal13, "lobbyRoot.lobbyNav")
	local function __FUNC_C1B1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal12, __FUNC_C1B1_)
	registerVal13 = Engine.GetGlobalModel()
	registerVal12 = Engine.GetModel(registerVal13, "lobbyRoot.lobbyNetworkMode")
	local function __FUNC_C2D8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNetworkMode"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal12, __FUNC_C2D8_)
	registerVal13 = Engine.GetGlobalModel()
	registerVal12 = Engine.GetModel(registerVal13, "socialRoot.quickJoin.visibleCount")
	local function __FUNC_C408_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "socialRoot.quickJoin.visibleCount"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal12, __FUNC_C408_)
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	local function __FUNC_C53F_(arg0, arg1)
		UpdateQuickJoinFocus(registerVal2, arg0)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setState", __FUNC_C53F_)
	registerVal4.id = "lobbyList"
	registerVal9.id = "friendsAndGroups"
	local function __FUNC_C596_(arg0, arg1)
		local registerVal2 = arg0.lobbyList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_C596_)
	local function __FUNC_C699_(arg0)
		arg0.FEListSubHeader1:close()
		arg0.lobbyList:close()
		arg0.FEListAdditonal0:close()
		arg0.FEListHeaderFull0:close()
		arg0.FEListSubHeader0:close()
		arg0.friendsAndGroups:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_C699_)
	if __FUNC_BC2_ then
		__FUNC_BC2_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.LobbyMemberList.new = __FUNC_E58_
