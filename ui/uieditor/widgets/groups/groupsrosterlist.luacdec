-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.menus.Social.Social_PlayerDetailsPopup")
require("ui.uieditor.widgets.Groups.GroupsRosterRow")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GroupsRosterList = registerVal1
function CoD.GroupsRosterList.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupsRosterList)
	registerVal2.id = "GroupsRosterList"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 383.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 502.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIList.new(arg0, arg1, 5.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 5.000000, 379.000000)
	registerVal3:setTopBottom(true, false, 5.000000, 455.000000)
	registerVal3:setWidgetType(CoD.GroupsRosterRow)
	registerVal3:setVerticalCount(7.000000)
	registerVal3:setSpacing(5.000000)
	registerVal3:setVerticalCounter(CoD.verticalCounter)
	local registerVal7 = Engine.GetModelForController(arg1)
	local registerVal6 = Engine.GetModel(registerVal7, "groups.fetchGroupMembersInProgress")
	local function __FUNC_A9A_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "groups.fetchGroupMembersInProgress"
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_A9A_)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "lobbyRoot.lobbyLockedIn")
	local function __FUNC_CD5_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "lobbyRoot.lobbyLockedIn"
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_CD5_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "Social.selectedFriendXUID")
	local function __FUNC_EA1_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "Social.selectedFriendXUID"
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_EA1_)
	local function __FUNC_106F_(arg2, arg3)
		local registerVal3 = FetchGroupMembersResultsLoading(arg1)
		if not registerVal3 then
			SetSelectedFriendXUID(registerVal2, arg2, arg1)
			CacheSocialOnlinePlayersListModels(registerVal2, arg2, arg1)
			CopyModelFindElement(arg0, arg2, "GroupMemberInfoPane")
		end
		return nil
	end

	registerVal3:registerEventHandler("list_item_gain_focus", __FUNC_106F_)
	local function __FUNC_119F_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		return registerVal3
	end

	registerVal3:registerEventHandler("gain_focus", __FUNC_119F_)
	local function __FUNC_1395_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_1395_)
	local function __FUNC_1466_(arg0, arg1, arg2, arg3)
		local registerVal4 = FetchGroupMembersResultsLoading(arg2)
		if not registerVal4 then
			SetSelectedFriendXUID(registerVal2, arg0, arg2)
			OpenOverlay(registerVal2, "Social_PlayerDetailsPopup", arg2, "", "")
			return true
		end
	end

	local function __FUNC_1566_(arg0, arg1, arg2)
		local registerVal3 = FetchGroupMembersResultsLoading(arg2)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1466_, __FUNC_1566_, false)
	local function __FUNC_16A7_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsLobbyLocked()
		registerVal4 = FetchGroupMembersResultsLoading(arg2)
		registerVal4 = IsSelectedFriendXuidEqualToControllerXuid(arg2)
		if not registerVal4 and not registerVal4 and not registerVal4 then
			LobbyQuickJoin(registerVal2, arg0, arg2, Enum.JoinType.JOIN_TYPE_GROUPS, true)
			return true
		end
	end

	local function __FUNC_1809_(arg0, arg1, arg2)
		local registerVal3 = IsLobbyLocked()
		registerVal3 = FetchGroupMembersResultsLoading(arg2)
		registerVal3 = IsSelectedFriendXuidEqualToControllerXuid(arg2)
		if not registerVal3 and not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "J", __FUNC_16A7_, __FUNC_1809_, false)
	registerVal2:addElement(registerVal3)
	registerVal2.onlineList = registerVal3
	registerVal3.id = "onlineList"
	local function __FUNC_19AF_(arg0, arg1)
		local registerVal2 = arg0.onlineList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_19AF_)
	local function __FUNC_1AB2_(arg0)
		arg0.onlineList:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1AB2_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

