-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.menus.Social.Social_PlayerDetailsPopup")
require("ui.uieditor.widgets.Social.Social_PlayersListButton")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
local function __FUNC_2A9_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
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

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.Social_PlayersList = registerVal2
local function __FUNC_8F1_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_2A9_ then
		__FUNC_2A9_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Social_PlayersList)
	registerVal2.id = "Social_PlayersList"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 383.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 502.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIList.new(arg0, arg1, 5.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 2.000000, 376.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 450.000000)
	registerVal3:setWidgetType(CoD.Social_PlayersListButton)
	registerVal3:setVerticalCount(7.000000)
	registerVal3:setSpacing(5.000000)
	registerVal3:setVerticalCounter(CoD.verticalCounter)
	local registerVal7 = Engine.GetGlobalModel()
	local registerVal6 = Engine.GetModel(registerVal7, "lobbyRoot.lobbyLockedIn")
	local function __FUNC_FF7_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "lobbyRoot.lobbyLockedIn"
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_FF7_)
	local function __FUNC_11C1_(arg2, arg3)
		CacheSocialOnlinePlayersListModels(registerVal2, arg2, arg1)
		CopyModelFindElement(arg0, arg2, "playerInfo")
		PlaySoundAlias("uin_paint_decal_nav")
		return nil
	end

	registerVal3:registerEventHandler("list_item_gain_focus", __FUNC_11C1_)
	local function __FUNC_12BB_(arg2, arg3)
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

	registerVal3:registerEventHandler("gain_focus", __FUNC_12BB_)
	local function __FUNC_14B1_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_14B1_)
	local function __FUNC_1582_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsLobbyLocked()
		if not registerVal4 then
			LobbyQuickJoin(registerVal2, arg0, arg2, Enum.JoinType.JOIN_TYPE_FRIEND, true)
			return true
		end
	end

	local function __FUNC_1661_(arg0, arg1, arg2)
		local registerVal3 = IsLobbyLocked()
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "J", __FUNC_1582_, __FUNC_1661_, false)
	local function __FUNC_1783_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSocialPlayersListEmpty(arg2)
		if registerVal4 then
			SetSelectedFriendXUID(registerVal2, arg0, arg2)
			OpenOverlay(registerVal2, "Social_PlayerDetailsPopup", arg2, "", "")
			return true
		end
	end

	local function __FUNC_187B_(arg0, arg1, arg2)
		local registerVal3 = IsSocialPlayersListEmpty(arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1783_, __FUNC_187B_, false)
	registerVal2:addElement(registerVal3)
	registerVal2.onlineList = registerVal3
	registerVal3.id = "onlineList"
	local function __FUNC_19B4_(arg0, arg1)
		local registerVal2 = arg0.onlineList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_19B4_)
	local function __FUNC_1ABA_(arg0)
		arg0.onlineList:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1ABA_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.Social_PlayersList.new = __FUNC_8F1_
