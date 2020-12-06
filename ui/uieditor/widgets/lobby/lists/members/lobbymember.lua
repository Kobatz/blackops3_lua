-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Lists.Members.LobbyMemberBubbleGumBuffs")
require("ui.uieditor.widgets.Lobby.Lists.Members.LobbyMemberPartyMemberIconNew")
require("ui.uieditor.widgets.Lobby.Lists.Members.LobbyLeaderIcon")
require("ui.uieditor.widgets.Lobby.Common.FE_MemberBlurPanelContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
require("ui.uieditor.widgets.Lobby.Lists.Members.LobbyMemberTeamColor")
require("ui.uieditor.widgets.Lobby.Lists.Members.LobbyRank")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.Lobby.Lists.Members.IconControllerContainer")
require("ui.uieditor.widgets.Lobby.Lists.Members.IconJoinable")
require("ui.uieditor.widgets.Lobby.Lists.Members.LobbyMemberGamertag")
require("ui.uieditor.widgets.Lobby.Lists.Members.LobbyMemberTeamSwitcher")
require("ui.uieditor.widgets.Lobby.Lists.Members.LobbyMemberScore")
require("ui.uieditor.widgets.Lobby.Lists.Members.SearchingForPlayer")
require("ui.uieditor.widgets.Lobby.Lists.Members.SearchingForPlayer_Flipped")
require("ui.uieditor.widgets.Lobby.Lists.Members.AnonymousPlayer")
require("ui.uieditor.widgets.Lobby.Lists.Members.LobbyMemberReady")
require("ui.uieditor.widgets.Lobby.Lists.Members.LobbyMemberMP45")
local function __FUNC_76A_(arg0, arg1, arg2)
	local function __FUNC_91E_(arg0, arg1)
		if not arg1.xuid then
			local registerVal5 = Engine.GetXUID64(arg1.controller)
		end
		local registerVal7 = DataSources.LobbyList.getItem(arg1.controller, arg0.gridInfoTable.parentGrid, (arg0.gridInfoTable.zeroBasedIndex + 1.000000))
		local registerVal8 = Engine.GetModel(registerVal7, "xuid")
		local registerVal9 = Engine.GetModelValue(registerVal8)
		if registerVal5 ~= registerVal9 then
			return 
		end
		local registerVal11 = Engine.CreateModel(registerVal7, "teamSwitch")
		Engine.SetModelValue(registerVal11, arg1.switchTeam)
		arg0.LobbyMemberTeamColor:SetupTeamSwitch(arg1.switchTeam)
		arg0.TeamSwitcher:SetupTeamSwitch(arg1.switchTeam)
	end

	arg0:registerEventHandler("team_switch", __FUNC_91E_)
	local function __FUNC_C24_(arg1)
		if arg1 then
			local registerVal3 = arg0:getModel()
			local registerVal2 = Engine.CreateModel(registerVal3, "teamSwitch")
			Engine.SetModelValue(registerVal2, Engine.GetModelValue(arg1))
			arg0.LobbyMemberTeamColor:SetupTeamColorBackground(Engine.GetModelValue(arg1))
		end
	end

	arg0:linkToElementModel(arg0, "team", true, __FUNC_C24_)
	local function __FUNC_D91_(arg1)
		local registerVal2 = arg0:getModel()
		local registerVal1 = Engine.GetModel(registerVal2, "team")
		if arg1 and registerVal1 then
			Engine.ForceNotifyModelSubscriptions(registerVal1)
		end
	end

	arg0:linkToElementModel(arg0, "teamColor", true, __FUNC_D91_)
	if CoD.isPC then
		arg0:setForceMouseEventDispatch(true)
		local function __FUNC_E71_(arg1, arg2)
			local registerVal2 = IsSelfInState(arg0, "AnonymousPlayer")
			if registerVal2 then
				arg0.LobbyMemberMP45:setAlpha(0.000000)
			else
				local registerVal3 = arg0:getModel()
				registerVal2 = Engine.GetModel(registerVal3, "isStarterPack")
				if registerVal2 then
					registerVal3 = Engine.GetModelValue(registerVal2)
					arg0.LobbyMemberMP45:setAlpha(registerVal3)
				end
			end
		end

		LUI.OverrideFunction_CallOriginalFirst(arg0, "setState", __FUNC_E71_)
	end
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.LobbyMember = registerVal2
local function __FUNC_FF6_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LobbyMember)
	registerVal2.id = "LobbyMember"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 490.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 27.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 490.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 91.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.sizeElement = registerVal3
	local registerVal4 = CoD.LobbyMemberBubbleGumBuffs.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 60.000000, 408.000000)
	registerVal4:setTopBottom(true, false, 27.000000, 91.000000)
	local function __FUNC_4176_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_4176_)
	registerVal2:addElement(registerVal4)
	registerVal2.LobbyMemberBubbleGumBuffs = registerVal4
	local registerVal5 = CoD.LobbyMemberPartyMemberIconNew.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 412.000000, 422.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 25.000000)
	local function __FUNC_41C6_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_41C6_)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "PartyMemberTopOrMiddle"
	local function __FUNC_4216_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isPartyMemberTopOrMiddle")
	end

	registerVal9.condition = __FUNC_4216_
	local registerVal10 = {}
	registerVal10.stateName = "PartyMember"
	local function __FUNC_4298_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isPartyMember")
	end

	registerVal10.condition = __FUNC_4298_
	local registerVal11 = {}
	registerVal11.stateName = "OtherPartyMemberTopOrMiddle"
	local function __FUNC_4311_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isOtherMemberTopOrMiddle")
	end

	registerVal11.condition = __FUNC_4311_
	local registerVal12 = {}
	registerVal12.stateName = "OtherPartyMember"
	local function __FUNC_4394_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isOtherMember")
	end

	registerVal12.condition = __FUNC_4394_
	registerVal8 = {registerVal9, registerVal10, registerVal11, registerVal12}
	registerVal5:mergeStateConditions(registerVal8)
	local function __FUNC_440D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isPartyMemberTopOrMiddle"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "isPartyMemberTopOrMiddle", true, __FUNC_440D_)
	local function __FUNC_453A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isPartyMember"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "isPartyMember", true, __FUNC_453A_)
	local function __FUNC_465B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isOtherMemberTopOrMiddle"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "isOtherMemberTopOrMiddle", true, __FUNC_465B_)
	local function __FUNC_4786_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isOtherMember"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "isOtherMember", true, __FUNC_4786_)
	registerVal2:addElement(registerVal5)
	registerVal2.PartyMemberIconNew = registerVal5
	local registerVal6 = CoD.LobbyLeaderIcon.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 411.000000, 435.000000)
	registerVal6:setTopBottom(true, false, 1.000000, 26.000000)
	local function __FUNC_48A7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.Leader:setAlpha(registerVal1)
		end
	end

	registerVal6:linkToElementModel(registerVal2, "isMemberLeader", true, __FUNC_48A7_)
	registerVal2:addElement(registerVal6)
	registerVal2.LobbyLeaderIcon = registerVal6
	local registerVal7 = CoD.FE_MemberBlurPanelContainer.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 60.000000, -82.000000)
	registerVal7:setTopBottom(false, false, -14.000000, 13.500000)
	registerVal7:setRGB(0.500000, 0.500000, 0.500000)
	registerVal7.FEMemberBlurPanel0:setShaderVector(0.000000, 0.000000, 3.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.FEMemberBlurPanelContainer0 = registerVal7
	registerVal8 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, 60.000000, -82.000000)
	registerVal8:setTopBottom(false, false, -14.000000, 13.500000)
	registerVal8:setRGB(0.190000, 0.190000, 0.190000)
	registerVal8:setAlpha(0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.VSpanel = registerVal8
	registerVal9 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 60.000000, 408.000000)
	registerVal9:setTopBottom(true, false, -0.500000, 27.000000)
	registerVal9:setRGB(0.150000, 0.150000, 0.150000)
	registerVal9:setAlpha(0.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.LobbyMemberBacking = registerVal9
	registerVal10 = CoD.LobbyMemberTeamColor.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 60.000000, 408.000000)
	registerVal10:setTopBottom(true, false, -0.500000, 27.500000)
	local function __FUNC_4955_(arg0)
		registerVal10:setModel(arg0, arg1)
	end

	registerVal10:linkToElementModel(registerVal2, nil, false, __FUNC_4955_)
	registerVal2:addElement(registerVal10)
	registerVal2.LobbyMemberTeamColor = registerVal10
	registerVal11 = CoD.LobbyRank.new(arg0, arg1)
	registerVal11:setLeftRight(false, true, -428.000000, -378.000000)
	registerVal11:setTopBottom(true, false, 1.000000, 26.000000)
	local function __FUNC_49A6_(arg0)
		registerVal11:setModel(arg0, arg1)
	end

	registerVal11:linkToElementModel(registerVal2, nil, false, __FUNC_49A6_)
	registerVal2:addElement(registerVal11)
	registerVal2.rank = registerVal11
	registerVal12 = LUI.UITightText.new()
	registerVal12:setLeftRight(true, false, 108.000000, 176.000000)
	registerVal12:setTopBottom(true, false, 3.000000, 24.000000)
	registerVal12:setRGB(0.960000, 1.000000, 0.330000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal12)
	registerVal2.clanTag = registerVal12
	local registerVal13 = LUI.UIText.new()
	registerVal13:setLeftRight(true, false, 116.000000, 321.000000)
	registerVal13:setTopBottom(true, false, 15.000000, 31.000000)
	registerVal13:setRGB(0.870000, 0.900000, 0.900000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setText(Engine.Localize("Group Here"))
	registerVal13:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal13:setLetterSpacing(1.000000)
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal13)
	registerVal2.PrimaryGroup = registerVal13
	local registerVal14 = LUI.UIText.new()
	registerVal14:setLeftRight(true, false, 61.000000, 461.000000)
	registerVal14:setTopBottom(true, false, 2.500000, 19.500000)
	registerVal14:setRGB(0.420000, 0.520000, 0.620000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setZoom(10.000000)
	registerVal14:setText(Engine.Localize("PLATFORM_FEEDER_SECONDARY_CONTROLLER_PLUGIN"))
	registerVal14:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal14)
	registerVal2.addControllerText = registerVal14
	local registerVal15 = LUI.UIText.new()
	registerVal15:setLeftRight(true, false, 19.000000, 509.000000)
	registerVal15:setTopBottom(true, false, 2.500000, 19.500000)
	registerVal15:setRGB(0.420000, 0.520000, 0.620000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setZoom(10.000000)
	registerVal15:setText(Engine.Localize("MENU_LOBBY_MORECOUNT"))
	registerVal15:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal15)
	registerVal2.MorePlaying = registerVal15
	local registerVal16 = LUI.UITightText.new()
	registerVal16:setLeftRight(true, false, 61.000000, 333.000000)
	registerVal16:setTopBottom(true, false, 7.000000, 24.000000)
	registerVal16:setRGB(0.420000, 0.520000, 0.620000)
	registerVal16:setAlpha(0.000000)
	registerVal16:setText(Engine.Localize("MENU_LOBBY_PLAYERCOUNT"))
	registerVal16:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal2:addElement(registerVal16)
	registerVal2.playerCountText = registerVal16
	local registerVal17 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal17:setLeftRight(true, false, 58.000000, 410.000000)
	registerVal17:setTopBottom(true, false, 26.000000, 29.000000)
	registerVal17:setAlpha(0.000000)
	registerVal17:setZoom(1.000000)
	registerVal2:addElement(registerVal17)
	registerVal2.FocusBarB = registerVal17
	local registerVal18 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal18:setLeftRight(true, false, 58.000000, 410.000000)
	registerVal18:setTopBottom(true, false, -4.000000, 0.000000)
	registerVal18:setAlpha(0.000000)
	registerVal18:setZoom(1.000000)
	registerVal2:addElement(registerVal18)
	registerVal2.FocusBarT = registerVal18
	local registerVal19 = CoD.IconControllerContainer.new(arg0, arg1)
	registerVal19:setLeftRight(true, false, 2.000000, 59.000000)
	registerVal19:setTopBottom(true, false, -3.000000, 29.000000)
	registerVal19:setRGB(0.740000, 0.780000, 0.790000)
	local function __FUNC_49F6_(arg0)
		registerVal19:setModel(arg0, arg1)
	end

	registerVal19:linkToElementModel(registerVal2, nil, false, __FUNC_49F6_)
	registerVal2:addElement(registerVal19)
	registerVal2.IconControllerContainer = registerVal19
	local registerVal20 = CoD.IconJoinable.new(arg0, arg1)
	registerVal20:setLeftRight(true, false, 389.000000, 413.000000)
	registerVal20:setTopBottom(true, false, 1.500000, 26.500000)
	registerVal20:setAlpha(0.000000)
	registerVal2:addElement(registerVal20)
	registerVal2.IconJoinable = registerVal20
	local registerVal21 = CoD.LobbyMemberGamertag.new(arg0, arg1)
	registerVal21:setLeftRight(true, false, 115.000000, 386.000000)
	registerVal21:setTopBottom(true, false, 1.000000, 26.000000)
	registerVal21:setRGB(0.960000, 1.000000, 0.330000)
	local function __FUNC_4A46_(arg0)
		registerVal21:setModel(arg0, arg1)
	end

	registerVal21:linkToElementModel(registerVal2, nil, false, __FUNC_4A46_)
	registerVal2:addElement(registerVal21)
	registerVal2.gamertag = registerVal21
	local registerVal22 = CoD.LobbyMemberTeamSwitcher.new(arg0, arg1)
	registerVal22:setLeftRight(true, false, 245.000000, 408.000000)
	registerVal22:setTopBottom(true, false, 0.000000, 26.000000)
	registerVal2:addElement(registerVal22)
	registerVal2.TeamSwitcher = registerVal22
	local registerVal23 = CoD.LobbyLeaderIcon.new(arg0, arg1)
	registerVal23:setLeftRight(true, false, 411.000000, 435.000000)
	registerVal23:setTopBottom(true, false, 1.000000, 26.000000)
	registerVal23:setAlpha(0.000000)
	local function __FUNC_4A96_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal23.Leader:setAlpha(registerVal1)
		end
	end

	registerVal23:linkToElementModel(registerVal2, "isMemberLeader", true, __FUNC_4A96_)
	local registerVal26 = {}
	local registerVal27 = {}
	registerVal27.stateName = "TopOrMiddleZM"
	local function __FUNC_4B45_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "isPartyMemberTopOrMiddle")
		registerVal3 = IsZM()
		if registerVal3 and registerVal3 then
			registerVal3 = LobbyHas4PlayersOrLess()
		end
		return registerVal3
	end

	registerVal27.condition = __FUNC_4B45_
	local registerVal28 = {}
	registerVal28.stateName = "TopOrMiddle"
	local function __FUNC_4C16_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isPartyMemberTopOrMiddle")
	end

	registerVal28.condition = __FUNC_4C16_
	local registerVal29 = {}
	registerVal29.stateName = "Invisible"
	local function __FUNC_4C98_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal29.condition = __FUNC_4C98_
	registerVal26 = {registerVal27, registerVal28, registerVal29}
	registerVal23:mergeStateConditions(registerVal26)
	local function __FUNC_4CE5_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isPartyMemberTopOrMiddle"
		arg0:updateElementState(registerVal23, registerVal4)
	end

	registerVal23:linkToElementModel(registerVal23, "isPartyMemberTopOrMiddle", true, __FUNC_4CE5_)
	registerVal27 = Engine.GetGlobalModel()
	registerVal26 = Engine.GetModel(registerVal27, "lobbyRoot.lobbyMainMode")
	local function __FUNC_4E12_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyMainMode"
		arg0:updateElementState(registerVal23, registerVal4)
	end

	registerVal23:subscribeToModel(registerVal26, __FUNC_4E12_)
	registerVal27 = Engine.GetGlobalModel()
	registerVal26 = Engine.GetModel(registerVal27, "lobbyRoot.lobbyNav")
	local function __FUNC_4F3D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal23, registerVal4)
	end

	registerVal23:subscribeToModel(registerVal26, __FUNC_4F3D_)
	if registerVal23.m_eventHandlers.on_client_added then
		local function __FUNC_5064_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal23.m_eventHandlers.on_client_added(arg1, arg2)
		end

		registerVal23:registerEventHandler("on_client_added", __FUNC_5064_)
	else
		registerVal23:registerEventHandler("on_client_added", LUI.UIElement.updateState)
	end
	if registerVal23.m_eventHandlers.on_client_removed then
		local function __FUNC_50EF_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal23.m_eventHandlers.on_client_removed(arg1, arg2)
		end

		registerVal23:registerEventHandler("on_client_removed", __FUNC_50EF_)
	else
		registerVal23:registerEventHandler("on_client_removed", LUI.UIElement.updateState)
	end
	registerVal2:addElement(registerVal23)
	registerVal2.LobbyLeaderIcon0 = registerVal23
	local registerVal24 = CoD.LobbyMemberScore.new(arg0, arg1)
	registerVal24:setLeftRight(true, false, 354.500000, 409.500000)
	registerVal24:setTopBottom(true, false, 1.000000, 26.000000)
	local function __FUNC_5177_(arg0)
		registerVal24:setModel(arg0, arg1)
	end

	registerVal24:linkToElementModel(registerVal2, nil, false, __FUNC_5177_)
	registerVal27 = {}
	registerVal28 = {}
	registerVal28.stateName = "Hidden2"
	local function __FUNC_51C6_(arg0, arg1, arg2)
		return IsCustomLobby()
	end

	registerVal28.condition = __FUNC_51C6_
	registerVal27 = {registerVal28}
	registerVal24:mergeStateConditions(registerVal27)
	registerVal28 = Engine.GetGlobalModel()
	registerVal27 = Engine.GetModel(registerVal28, "lobbyRoot.lobbyNav")
	local function __FUNC_5213_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal24, registerVal4)
	end

	registerVal24:subscribeToModel(registerVal27, __FUNC_5213_)
	registerVal2:addElement(registerVal24)
	registerVal2.LobbyMemberScore = registerVal24
	local registerVal25 = CoD.SearchingForPlayer.new(arg0, arg1)
	registerVal25:setLeftRight(true, false, 115.000000, 386.000000)
	registerVal25:setTopBottom(true, false, 1.000000, 26.000000)
	registerVal25:setAlpha(0.000000)
	registerVal2:addElement(registerVal25)
	registerVal2.SearchingForPlayer = registerVal25
	registerVal26 = CoD.SearchingForPlayer_Flipped.new(arg0, arg1)
	registerVal26:setLeftRight(true, false, 115.000000, 386.000000)
	registerVal26:setTopBottom(true, false, 1.000000, 26.000000)
	registerVal26:setAlpha(0.000000)
	registerVal2:addElement(registerVal26)
	registerVal2.SearchingForPlayerFlipped = registerVal26
	registerVal27 = CoD.AnonymousPlayer.new(arg0, arg1)
	registerVal27:setLeftRight(true, false, 115.000000, 386.000000)
	registerVal27:setTopBottom(true, false, 1.000000, 26.000000)
	registerVal27:setAlpha(0.000000)
	registerVal2:addElement(registerVal27)
	registerVal2.AnonymousPlayer = registerVal27
	registerVal28 = CoD.LobbyMemberReady.new(arg0, arg1)
	registerVal28:setLeftRight(true, false, 13.000000, 38.000000)
	registerVal28:setTopBottom(true, false, 1.000000, 26.000000)
	local function __FUNC_5338_(arg0)
		registerVal28:setModel(arg0, arg1)
	end

	registerVal28:linkToElementModel(registerVal2, nil, false, __FUNC_5338_)
	local registerVal31 = {}
	local registerVal32 = {}
	registerVal32.stateName = "Invisible"
	local function __FUNC_538A_(arg0, arg2, arg3)
		local registerVal3 = IsReadyUpVisible(arg2, arg1)
		return (not registerVal3)
	end

	registerVal32.condition = __FUNC_538A_
	registerVal31 = {registerVal32}
	registerVal28:mergeStateConditions(registerVal31)
	registerVal32 = Engine.GetGlobalModel()
	registerVal31 = Engine.GetModel(registerVal32, "lobbyRoot.lobbyNetworkMode")
	local function __FUNC_53E6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNetworkMode"
		arg0:updateElementState(registerVal28, registerVal4)
	end

	registerVal28:subscribeToModel(registerVal31, __FUNC_53E6_)
	registerVal32 = Engine.GetGlobalModel()
	registerVal31 = Engine.GetModel(registerVal32, "lobbyRoot.lobbyNav")
	local function __FUNC_5514_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal28, registerVal4)
	end

	registerVal28:subscribeToModel(registerVal31, __FUNC_5514_)
	local function __FUNC_563C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isReady"
		arg0:updateElementState(registerVal28, registerVal4)
	end

	registerVal28:linkToElementModel(registerVal28, "isReady", true, __FUNC_563C_)
	registerVal2:addElement(registerVal28)
	registerVal2.LobbyMemberReady = registerVal28
	registerVal29 = CoD.LobbyMemberMP45.new(arg0, arg1)
	registerVal29:setLeftRight(true, false, 384.000000, 408.000000)
	registerVal29:setTopBottom(true, false, 1.000000, 26.000000)
	registerVal2:addElement(registerVal29)
	registerVal2.LobbyMemberMP45 = registerVal29
	local function __FUNC_5759_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setText(registerVal1)
		end
	end

	registerVal2.clanTag:linkToElementModel(registerVal2, "clanTag", true, __FUNC_5759_)
	local function __FUNC_57EC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal29:setAlpha(registerVal1)
		end
	end

	registerVal2.LobbyMemberMP45:linkToElementModel(registerVal2, "isStarterPack", true, __FUNC_57EC_)
	local registerVal30 = {}
	registerVal31 = {}
	local function __FUNC_5881_()
		registerVal2:setupElementClipCounter(26.000000)
		registerVal3:completeAnimation()
		registerVal2.sizeElement:setLeftRight(true, false, 0.000000, 490.000000)
		registerVal2.sizeElement:setTopBottom(true, false, 0.000000, 27.000000)
		registerVal2.sizeElement:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LobbyMemberBubbleGumBuffs:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBubbleGumBuffs:setTopBottom(true, false, 27.000000, 91.000000)
		registerVal2.LobbyMemberBubbleGumBuffs:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PartyMemberIconNew:setLeftRight(true, false, 412.000000, 422.000000)
		registerVal2.PartyMemberIconNew:setTopBottom(true, false, 0.000000, 25.000000)
		registerVal2.PartyMemberIconNew:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LobbyLeaderIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.FEMemberBlurPanelContainer0:setTopBottom(false, false, -14.000000, 13.500000)
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(1.000000)
		registerVal2.FEMemberBlurPanelContainer0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.VSpanel:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.VSpanel:setTopBottom(false, false, -14.000000, 13.500000)
		registerVal2.VSpanel:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyMemberBacking:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBacking:setTopBottom(true, false, -0.500000, 27.000000)
		registerVal2.LobbyMemberBacking:setAlpha(0.000000)
		registerVal2.LobbyMemberBacking:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -0.500000, 27.500000)
		registerVal2.LobbyMemberTeamColor:setAlpha(1.000000)
		registerVal2.LobbyMemberTeamColor:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.rank:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.rank:setAlpha(1.000000)
		registerVal2.rank:setZoom(0.000000)
		registerVal2.rank:setScale(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.clanTag:setRGB(0.870000, 0.900000, 0.900000)
		registerVal2.clanTag:setAlpha(0.000000)
		registerVal2.clanTag:setZoom(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.PrimaryGroup:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.addControllerText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.MorePlaying:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.playerCountText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 26.000000, 29.000000)
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -4.000000, 0.000000)
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.IconControllerContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.IconJoinable:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.gamertag:setLeftRight(true, false, 115.000000, 386.000000)
		registerVal2.gamertag:setTopBottom(true, false, 1.000000, 26.000000)
		registerVal2.gamertag:setRGB(0.870000, 0.900000, 0.900000)
		registerVal2.gamertag:setAlpha(1.000000)
		registerVal2.gamertag:setZoom(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.TeamSwitcher:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.LobbyLeaderIcon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.LobbyMemberScore:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.SearchingForPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.SearchingForPlayerFlipped:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.AnonymousPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.LobbyMemberReady:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
	end

	registerVal31.DefaultClip = __FUNC_5881_
	local function __FUNC_67BA_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal7:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.FEMemberBlurPanelContainer0:setTopBottom(true, false, -4.500000, 31.500000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.VSpanel:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.VSpanel:setTopBottom(false, false, -18.000000, 18.000000)
		registerVal2.VSpanel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyMemberBacking:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBacking:setTopBottom(true, false, -5.000000, 32.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -7.750000, 32.750000)
		registerVal2.LobbyMemberTeamColor:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.rank:setAlpha(1.000000)
		registerVal2.rank:setScale(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.PrimaryGroup:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 29.000000, 33.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -6.000000, -2.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal25:completeAnimation()
		registerVal2.SearchingForPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.SearchingForPlayerFlipped:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.AnonymousPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal31.Focus = __FUNC_67BA_
	local function __FUNC_6EBC_()
		registerVal2:setupElementClipCounter(11.000000)
		local function __FUNC_75AB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 60.000000, -82.000000)
			arg0:setTopBottom(false, false, -18.500000, 18.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.FEMemberBlurPanelContainer0:setTopBottom(false, false, -14.000000, 13.500000)
		__FUNC_75AB_(registerVal7, {})
		local function __FUNC_77AA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 60.000000, -82.000000)
			arg0:setTopBottom(false, false, -18.000000, 18.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.VSpanel:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.VSpanel:setTopBottom(false, false, -14.000000, 13.800000)
		__FUNC_77AA_(registerVal8, {})
		local function __FUNC_79AA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 60.000000, 408.000000)
			arg0:setTopBottom(true, false, -5.000000, 32.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.LobbyMemberBacking:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBacking:setTopBottom(true, false, -0.500000, 27.000000)
		registerVal2.LobbyMemberBacking:setAlpha(0.000000)
		registerVal2.LobbyMemberBacking:setZoom(0.000000)
		__FUNC_79AA_(registerVal9, {})
		local function __FUNC_7BEA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 60.000000, 408.000000)
			arg0:setTopBottom(true, false, -5.000000, 32.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -0.500000, 27.500000)
		registerVal2.LobbyMemberTeamColor:setZoom(0.000000)
		__FUNC_7BEA_(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.rank:setScale(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		local function __FUNC_7E0C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 58.000000, 410.000000)
			arg0:setTopBottom(true, false, 29.000000, 33.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 12.000000, 15.000000)
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_7E0C_(registerVal17, {})
		local function __FUNC_8031_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 58.000000, 410.000000)
			arg0:setTopBottom(true, false, -6.000000, -2.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 59.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, 12.000000, 16.000000)
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_8031_(registerVal18, {})
		registerVal21:completeAnimation()
		registerVal2.gamertag:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal25:completeAnimation()
		registerVal2.SearchingForPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.SearchingForPlayerFlipped:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.AnonymousPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal31.GainFocus = __FUNC_6EBC_
	local function __FUNC_8255_()
		registerVal2:setupElementClipCounter(11.000000)
		local function __FUNC_893F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 60.000000, -82.000000)
			arg0:setTopBottom(false, false, -14.000000, 13.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.FEMemberBlurPanelContainer0:setTopBottom(false, false, -18.500000, 18.500000)
		__FUNC_893F_(registerVal7, {})
		local function __FUNC_8B3E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 60.000000, -82.000000)
			arg0:setTopBottom(false, false, -14.000000, 13.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.VSpanel:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.VSpanel:setTopBottom(false, false, -18.000000, 18.000000)
		__FUNC_8B3E_(registerVal8, {})
		local function __FUNC_8D3E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 60.000000, 408.000000)
			arg0:setTopBottom(true, false, -0.500000, 27.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.LobbyMemberBacking:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBacking:setTopBottom(true, false, -5.000000, 32.000000)
		registerVal2.LobbyMemberBacking:setAlpha(0.000000)
		registerVal2.LobbyMemberBacking:setZoom(0.000000)
		__FUNC_8D3E_(registerVal9, {})
		local function __FUNC_8F7E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 60.000000, 408.000000)
			arg0:setTopBottom(true, false, -0.500000, 27.500000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -5.000000, 32.000000)
		registerVal2.LobbyMemberTeamColor:setZoom(0.000000)
		__FUNC_8F7E_(registerVal10, {})
		local function __FUNC_91A0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.rank:setScale(1.000000)
		__FUNC_91A0_(registerVal11, {})
		local function __FUNC_9355_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 58.000000, 410.000000)
			arg0:setTopBottom(true, false, 12.000000, 15.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 29.000000, 33.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_9355_(registerVal17, {})
		local function __FUNC_9579_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 59.000000, 410.000000)
			arg0:setTopBottom(true, false, 12.000000, 16.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -6.000000, -2.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_9579_(registerVal18, {})
		registerVal21:completeAnimation()
		registerVal2.gamertag:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal25:completeAnimation()
		registerVal2.SearchingForPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.SearchingForPlayerFlipped:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.AnonymousPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal31.LoseFocus = __FUNC_8255_
	local function __FUNC_979D_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_9C71_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 60.000000, -82.000000)
			arg0:setTopBottom(false, false, -14.000000, 13.500000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.FEMemberBlurPanelContainer0:setTopBottom(false, false, -14.000000, 13.500000)
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(0.000000)
		__FUNC_9C71_(registerVal7, {})
		local function __FUNC_9E95_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.300000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.VSpanel:setAlpha(0.000000)
		__FUNC_9E95_(registerVal8, {})
		local function __FUNC_A049_(arg0, arg1)
			local function __FUNC_A1A0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 229.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(1.000000, 1.000000, 1.000000)
				arg0:setAlpha(1.000000)
				arg0:setZoom(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_A1A0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A1A0_)
		end

		registerVal11:completeAnimation()
		registerVal2.rank:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.rank:setAlpha(0.000000)
		registerVal2.rank:setZoom(0.000000)
		__FUNC_A049_(registerVal11, {})
		local function __FUNC_A39B_(arg0, arg1)
			local function __FUNC_A4F0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_A4F0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A4F0_)
		end

		registerVal19:completeAnimation()
		registerVal2.IconControllerContainer:setAlpha(0.000000)
		__FUNC_A39B_(registerVal19, {})
		local function __FUNC_A6A5_(arg0, arg1)
			local function __FUNC_A7FC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_A7FC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A7FC_)
		end

		registerVal21:completeAnimation()
		registerVal2.gamertag:setAlpha(0.000000)
		__FUNC_A6A5_(registerVal21, {})
		local function __FUNC_A9B1_(arg0, arg1)
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

		registerVal23:completeAnimation()
		registerVal2.LobbyLeaderIcon0:setAlpha(0.000000)
		__FUNC_A9B1_(registerVal23, {})
		registerVal25:completeAnimation()
		registerVal2.SearchingForPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.SearchingForPlayerFlipped:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.AnonymousPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal31.Intro = __FUNC_979D_
	registerVal30.DefaultState = registerVal31
	registerVal31 = {}
	local function __FUNC_AB65_()
		registerVal2:setupElementClipCounter(26.000000)
		registerVal3:completeAnimation()
		registerVal2.sizeElement:setLeftRight(true, false, 0.000000, 490.000000)
		registerVal2.sizeElement:setTopBottom(true, false, 0.000000, 91.000000)
		registerVal2.sizeElement:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LobbyMemberBubbleGumBuffs:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBubbleGumBuffs:setTopBottom(true, false, 27.000000, 91.000000)
		registerVal2.LobbyMemberBubbleGumBuffs:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PartyMemberIconNew:setLeftRight(true, false, 412.000000, 422.000000)
		registerVal2.PartyMemberIconNew:setTopBottom(true, false, 0.000000, 91.000000)
		registerVal2.PartyMemberIconNew:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LobbyLeaderIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.FEMemberBlurPanelContainer0:setTopBottom(true, false, -0.500000, 27.000000)
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(1.000000)
		registerVal2.FEMemberBlurPanelContainer0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.VSpanel:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.VSpanel:setTopBottom(false, false, -14.000000, 13.500000)
		registerVal2.VSpanel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyMemberBacking:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBacking:setTopBottom(true, false, -0.500000, 27.000000)
		registerVal2.LobbyMemberBacking:setAlpha(0.000000)
		registerVal2.LobbyMemberBacking:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -0.500000, 27.500000)
		registerVal2.LobbyMemberTeamColor:setAlpha(1.000000)
		registerVal2.LobbyMemberTeamColor:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.rank:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.rank:setAlpha(1.000000)
		registerVal2.rank:setZoom(0.000000)
		registerVal2.rank:setScale(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.clanTag:setRGB(0.960000, 1.000000, 0.330000)
		registerVal2.clanTag:setAlpha(0.000000)
		registerVal2.clanTag:setZoom(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.PrimaryGroup:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.addControllerText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.MorePlaying:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.playerCountText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 26.000000, 29.000000)
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -4.000000, 0.000000)
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.IconControllerContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.IconJoinable:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.gamertag:setLeftRight(true, false, 115.000000, 386.000000)
		registerVal2.gamertag:setTopBottom(true, false, 1.000000, 26.000000)
		registerVal2.gamertag:setRGB(0.960000, 1.000000, 0.330000)
		registerVal2.gamertag:setAlpha(1.000000)
		registerVal2.gamertag:setZoom(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.TeamSwitcher:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.LobbyLeaderIcon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.LobbyMemberScore:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.SearchingForPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.SearchingForPlayerFlipped:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.AnonymousPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.LobbyMemberReady:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal28, {})
	end

	registerVal31.DefaultClip = __FUNC_AB65_
	local function __FUNC_BA94_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal4:completeAnimation()
		registerVal2.LobbyMemberBubbleGumBuffs:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBubbleGumBuffs:setTopBottom(true, false, 27.000000, 91.000000)
		registerVal2.LobbyMemberBubbleGumBuffs:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PartyMemberIconNew:setLeftRight(true, false, 412.000000, 422.000000)
		registerVal2.PartyMemberIconNew:setTopBottom(true, false, 0.000000, 91.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal8:completeAnimation()
		registerVal2.VSpanel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal13:completeAnimation()
		registerVal2.PrimaryGroup:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 89.000000, 93.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -4.000000, 0.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal25:completeAnimation()
		registerVal2.SearchingForPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.SearchingForPlayerFlipped:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.AnonymousPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal31.Focus = __FUNC_BA94_
	local function __FUNC_C012_()
		registerVal2:setupElementClipCounter(10.000000)
		local function __FUNC_C645_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 60.000000, 408.000000)
			arg0:setTopBottom(true, false, 27.000000, 91.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.LobbyMemberBubbleGumBuffs:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBubbleGumBuffs:setTopBottom(true, false, 27.000000, 91.000000)
		registerVal2.LobbyMemberBubbleGumBuffs:setAlpha(1.000000)
		__FUNC_C645_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PartyMemberIconNew:setLeftRight(true, false, 412.000000, 422.000000)
		registerVal2.PartyMemberIconNew:setTopBottom(true, false, 0.000000, 91.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal8:completeAnimation()
		registerVal2.VSpanel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_C869_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 60.000000, 408.000000)
			arg0:setTopBottom(true, false, -0.500000, 27.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.LobbyMemberBacking:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBacking:setTopBottom(true, false, -0.500000, 27.000000)
		registerVal2.LobbyMemberBacking:setZoom(0.000000)
		__FUNC_C869_(registerVal9, {})
		local function __FUNC_CA8C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.PrimaryGroup:setAlpha(0.000000)
		__FUNC_CA8C_(registerVal13, {})
		local function __FUNC_CC41_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 58.000000, 410.000000)
			arg0:setTopBottom(true, false, 89.000000, 93.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 48.000000, 51.000000)
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_CC41_(registerVal17, {})
		local function __FUNC_CE65_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 58.000000, 410.000000)
			arg0:setTopBottom(true, false, -4.000000, 0.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 59.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, 48.000000, 52.000000)
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_CE65_(registerVal18, {})
		registerVal25:completeAnimation()
		registerVal2.SearchingForPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.SearchingForPlayerFlipped:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.AnonymousPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal31.GainFocus = __FUNC_C012_
	local function __FUNC_D089_()
		registerVal2:setupElementClipCounter(10.000000)
		local function __FUNC_D6B8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 60.000000, 408.000000)
			arg0:setTopBottom(true, false, 27.000000, 91.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.LobbyMemberBubbleGumBuffs:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBubbleGumBuffs:setTopBottom(true, false, 27.000000, 91.000000)
		registerVal2.LobbyMemberBubbleGumBuffs:setAlpha(1.000000)
		__FUNC_D6B8_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PartyMemberIconNew:setLeftRight(true, false, 412.000000, 422.000000)
		registerVal2.PartyMemberIconNew:setTopBottom(true, false, 0.000000, 91.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal8:completeAnimation()
		registerVal2.VSpanel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_D8DD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 60.000000, 408.000000)
			arg0:setTopBottom(true, false, -0.500000, 27.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.LobbyMemberBacking:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBacking:setTopBottom(true, false, -0.500000, 27.000000)
		registerVal2.LobbyMemberBacking:setZoom(0.000000)
		__FUNC_D8DD_(registerVal9, {})
		local function __FUNC_DB00_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.PrimaryGroup:setAlpha(0.000000)
		__FUNC_DB00_(registerVal13, {})
		local function __FUNC_DCB5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 58.000000, 410.000000)
			arg0:setTopBottom(true, false, 48.000000, 51.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 89.000000, 93.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_DCB5_(registerVal17, {})
		local function __FUNC_DED9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 59.000000, 410.000000)
			arg0:setTopBottom(true, false, 48.000000, 52.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -4.000000, 0.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_DED9_(registerVal18, {})
		registerVal25:completeAnimation()
		registerVal2.SearchingForPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.SearchingForPlayerFlipped:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.AnonymousPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal31.LoseFocus = __FUNC_D089_
	local function __FUNC_E0FD_()
		registerVal2:setupElementClipCounter(10.000000)
		local function __FUNC_E5B6_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 412.000000, 422.000000)
			arg0:setTopBottom(true, false, 0.000000, 91.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.PartyMemberIconNew:setLeftRight(true, false, 412.000000, 422.000000)
		registerVal2.PartyMemberIconNew:setTopBottom(true, false, 0.000000, 91.000000)
		registerVal2.PartyMemberIconNew:setAlpha(0.000000)
		__FUNC_E5B6_(registerVal5, {})
		local function __FUNC_E7D9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.LobbyLeaderIcon:setAlpha(0.000000)
		__FUNC_E7D9_(registerVal6, {})
		local function __FUNC_E98D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.VSpanel:setAlpha(0.000000)
		__FUNC_E98D_(registerVal8, {})
		local function __FUNC_EB41_(arg0, arg1)
			local function __FUNC_EC98_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_EC98_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EC98_)
		end

		registerVal11:completeAnimation()
		registerVal2.rank:setAlpha(0.000000)
		__FUNC_EB41_(registerVal11, {})
		local function __FUNC_EE4D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal2.IconControllerContainer:setAlpha(0.000000)
		__FUNC_EE4D_(registerVal19, {})
		local function __FUNC_F001_(arg0, arg1)
			local function __FUNC_F158_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 299.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_F158_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F158_)
		end

		registerVal21:completeAnimation()
		registerVal2.gamertag:setAlpha(0.000000)
		__FUNC_F001_(registerVal21, {})
		local function __FUNC_F30D_(arg0, arg1)
			local function __FUNC_F464_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_F464_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F464_)
		end

		registerVal23:completeAnimation()
		registerVal2.LobbyLeaderIcon0:setAlpha(0.000000)
		__FUNC_F30D_(registerVal23, {})
		registerVal25:completeAnimation()
		registerVal2.SearchingForPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.SearchingForPlayerFlipped:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.AnonymousPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal31.Intro = __FUNC_E0FD_
	registerVal30.IsSelfZombies = registerVal31
	registerVal31 = {}
	local function __FUNC_F619_()
		registerVal2:setupElementClipCounter(26.000000)
		registerVal3:completeAnimation()
		registerVal2.sizeElement:setLeftRight(true, false, 0.000000, 490.000000)
		registerVal2.sizeElement:setTopBottom(true, false, 0.000000, 91.000000)
		registerVal2.sizeElement:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LobbyMemberBubbleGumBuffs:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBubbleGumBuffs:setTopBottom(true, false, 27.000000, 91.000000)
		registerVal2.LobbyMemberBubbleGumBuffs:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PartyMemberIconNew:setLeftRight(true, false, 412.000000, 422.000000)
		registerVal2.PartyMemberIconNew:setTopBottom(true, false, 0.000000, 91.000000)
		registerVal2.PartyMemberIconNew:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LobbyLeaderIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.FEMemberBlurPanelContainer0:setTopBottom(true, false, -0.500000, 27.000000)
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(1.000000)
		registerVal2.FEMemberBlurPanelContainer0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.VSpanel:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.VSpanel:setTopBottom(false, false, -14.000000, 13.500000)
		registerVal2.VSpanel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyMemberBacking:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBacking:setTopBottom(true, false, -0.500000, 27.000000)
		registerVal2.LobbyMemberBacking:setAlpha(0.000000)
		registerVal2.LobbyMemberBacking:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -0.500000, 27.500000)
		registerVal2.LobbyMemberTeamColor:setAlpha(1.000000)
		registerVal2.LobbyMemberTeamColor:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.rank:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.rank:setAlpha(1.000000)
		registerVal2.rank:setZoom(0.000000)
		registerVal2.rank:setScale(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.clanTag:setRGB(0.960000, 1.000000, 0.330000)
		registerVal2.clanTag:setAlpha(0.000000)
		registerVal2.clanTag:setZoom(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.PrimaryGroup:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.addControllerText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.MorePlaying:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.playerCountText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 26.000000, 29.000000)
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -4.000000, 0.000000)
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.IconControllerContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.IconJoinable:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.gamertag:setLeftRight(true, false, 115.000000, 386.000000)
		registerVal2.gamertag:setTopBottom(true, false, 1.000000, 26.000000)
		registerVal2.gamertag:setRGB(0.870000, 0.900000, 0.900000)
		registerVal2.gamertag:setAlpha(1.000000)
		registerVal2.gamertag:setZoom(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.TeamSwitcher:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.LobbyLeaderIcon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.LobbyMemberScore:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.SearchingForPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.SearchingForPlayerFlipped:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.AnonymousPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.LobbyMemberReady:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal28, {})
	end

	registerVal31.DefaultClip = __FUNC_F619_
	local function __FUNC_10552_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal4:completeAnimation()
		registerVal2.LobbyMemberBubbleGumBuffs:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PartyMemberIconNew:setLeftRight(true, false, 412.000000, 422.000000)
		registerVal2.PartyMemberIconNew:setTopBottom(true, false, 0.000000, 91.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal8:completeAnimation()
		registerVal2.VSpanel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyMemberBacking:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBacking:setTopBottom(true, false, -0.500000, 29.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal13:completeAnimation()
		registerVal2.PrimaryGroup:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 86.000000, 90.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -4.000000, 0.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal25:completeAnimation()
		registerVal2.SearchingForPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.SearchingForPlayerFlipped:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.AnonymousPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal31.Focus = __FUNC_10552_
	local function __FUNC_10B17_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal4:completeAnimation()
		registerVal2.LobbyMemberBubbleGumBuffs:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PartyMemberIconNew:setLeftRight(true, false, 412.000000, 422.000000)
		registerVal2.PartyMemberIconNew:setTopBottom(true, false, 0.000000, 91.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal8:completeAnimation()
		registerVal2.VSpanel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_1109D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 60.000000, 408.000000)
			arg0:setTopBottom(true, false, -0.500000, 40.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.LobbyMemberBacking:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBacking:setTopBottom(true, false, -0.500000, 27.000000)
		registerVal2.LobbyMemberBacking:setZoom(0.000000)
		__FUNC_1109D_(registerVal9, {})
		local function __FUNC_112C0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.PrimaryGroup:setAlpha(0.000000)
		__FUNC_112C0_(registerVal13, {})
		local function __FUNC_11475_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 58.000000, 410.000000)
			arg0:setTopBottom(true, false, 86.000000, 90.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 12.000000, 15.000000)
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_11475_(registerVal17, {})
		local function __FUNC_11699_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 58.000000, 410.000000)
			arg0:setTopBottom(true, false, -4.000000, 0.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 59.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, 12.000000, 16.000000)
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_11699_(registerVal18, {})
		registerVal26:completeAnimation()
		registerVal2.SearchingForPlayerFlipped:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.AnonymousPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal31.GainFocus = __FUNC_10B17_
	local function __FUNC_118BD_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal4:completeAnimation()
		registerVal2.LobbyMemberBubbleGumBuffs:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PartyMemberIconNew:setLeftRight(true, false, 412.000000, 422.000000)
		registerVal2.PartyMemberIconNew:setTopBottom(true, false, 0.000000, 91.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal8:completeAnimation()
		registerVal2.VSpanel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_11E40_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 60.000000, 408.000000)
			arg0:setTopBottom(true, false, -0.500000, 27.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.LobbyMemberBacking:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBacking:setTopBottom(true, false, -0.500000, 40.000000)
		registerVal2.LobbyMemberBacking:setZoom(0.000000)
		__FUNC_11E40_(registerVal9, {})
		local function __FUNC_12064_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.PrimaryGroup:setAlpha(0.000000)
		__FUNC_12064_(registerVal13, {})
		local function __FUNC_12219_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 58.000000, 410.000000)
			arg0:setTopBottom(true, false, 12.000000, 15.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 86.000000, 90.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_12219_(registerVal17, {})
		local function __FUNC_1243D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 59.000000, 410.000000)
			arg0:setTopBottom(true, false, 12.000000, 16.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -4.000000, 0.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_1243D_(registerVal18, {})
		registerVal26:completeAnimation()
		registerVal2.SearchingForPlayerFlipped:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.AnonymousPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal31.LoseFocus = __FUNC_118BD_
	local function __FUNC_12661_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_12A69_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 412.000000, 422.000000)
			arg0:setTopBottom(true, false, 0.000000, 91.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.PartyMemberIconNew:setLeftRight(true, false, 412.000000, 422.000000)
		registerVal2.PartyMemberIconNew:setTopBottom(true, false, 0.000000, 91.000000)
		registerVal2.PartyMemberIconNew:setAlpha(0.000000)
		__FUNC_12A69_(registerVal5, {})
		local function __FUNC_12C8D_(arg0, arg1)
			local function __FUNC_12DE4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_12DE4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12DE4_)
		end

		registerVal6:completeAnimation()
		registerVal2.LobbyLeaderIcon:setAlpha(0.000000)
		__FUNC_12C8D_(registerVal6, {})
		local function __FUNC_12F99_(arg0, arg1)
			local function __FUNC_130F0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_130F0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_130F0_)
		end

		registerVal11:completeAnimation()
		registerVal2.rank:setAlpha(0.000000)
		__FUNC_12F99_(registerVal11, {})
		local function __FUNC_132A5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal2.IconControllerContainer:setAlpha(0.000000)
		__FUNC_132A5_(registerVal19, {})
		local function __FUNC_13459_(arg0, arg1)
			local function __FUNC_135B0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_135B0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_135B0_)
		end

		registerVal21:completeAnimation()
		registerVal2.gamertag:setAlpha(0.000000)
		__FUNC_13459_(registerVal21, {})
		local function __FUNC_13765_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal23:completeAnimation()
		registerVal2.LobbyLeaderIcon0:setAlpha(0.000000)
		__FUNC_13765_(registerVal23, {})
		registerVal26:completeAnimation()
		registerVal2.SearchingForPlayerFlipped:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.AnonymousPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal31.Intro = __FUNC_12661_
	registerVal30.IsPartyMemberZombies = registerVal31
	registerVal31 = {}
	local function __FUNC_13919_()
		registerVal2:setupElementClipCounter(26.000000)
		registerVal3:completeAnimation()
		registerVal2.sizeElement:setLeftRight(true, false, 0.000000, 490.000000)
		registerVal2.sizeElement:setTopBottom(true, false, 0.000000, 27.000000)
		registerVal2.sizeElement:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LobbyMemberBubbleGumBuffs:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBubbleGumBuffs:setTopBottom(true, false, 27.000000, 91.000000)
		registerVal2.LobbyMemberBubbleGumBuffs:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PartyMemberIconNew:setLeftRight(true, false, 412.000000, 422.000000)
		registerVal2.PartyMemberIconNew:setTopBottom(true, false, 0.000000, 25.000000)
		registerVal2.PartyMemberIconNew:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LobbyLeaderIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.FEMemberBlurPanelContainer0:setTopBottom(true, false, -0.500000, 27.000000)
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(1.000000)
		registerVal2.FEMemberBlurPanelContainer0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.VSpanel:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.VSpanel:setTopBottom(false, false, -14.000000, 13.500000)
		registerVal2.VSpanel:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyMemberBacking:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBacking:setTopBottom(true, false, -0.500000, 27.000000)
		registerVal2.LobbyMemberBacking:setAlpha(0.000000)
		registerVal2.LobbyMemberBacking:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -0.500000, 27.500000)
		registerVal2.LobbyMemberTeamColor:setAlpha(1.000000)
		registerVal2.LobbyMemberTeamColor:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.rank:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.rank:setAlpha(1.000000)
		registerVal2.rank:setZoom(0.000000)
		registerVal2.rank:setScale(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.clanTag:setRGB(0.960000, 1.000000, 0.330000)
		registerVal2.clanTag:setAlpha(0.000000)
		registerVal2.clanTag:setZoom(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.PrimaryGroup:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.addControllerText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.MorePlaying:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.playerCountText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 26.000000, 29.000000)
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -4.000000, 0.000000)
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.IconControllerContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.IconJoinable:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.gamertag:setLeftRight(true, false, 115.000000, 386.000000)
		registerVal2.gamertag:setTopBottom(true, false, 1.000000, 26.000000)
		registerVal2.gamertag:setRGB(0.960000, 1.000000, 0.330000)
		registerVal2.gamertag:setAlpha(1.000000)
		registerVal2.gamertag:setZoom(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.TeamSwitcher:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.LobbyLeaderIcon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.LobbyMemberScore:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.SearchingForPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.SearchingForPlayerFlipped:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.AnonymousPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.LobbyMemberReady:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal28, {})
	end

	registerVal31.DefaultClip = __FUNC_13919_
	local function __FUNC_14852_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal7:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.FEMemberBlurPanelContainer0:setTopBottom(false, false, -18.000000, 18.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.VSpanel:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.VSpanel:setTopBottom(false, false, -18.000000, 18.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyMemberBacking:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBacking:setTopBottom(true, false, -5.000000, 32.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -7.000000, 33.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.rank:setScale(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 29.000000, 33.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -6.000000, -2.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal25:completeAnimation()
		registerVal2.SearchingForPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.SearchingForPlayerFlipped:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.AnonymousPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal31.Focus = __FUNC_14852_
	local function __FUNC_14E97_()
		registerVal2:setupElementClipCounter(10.000000)
		local function __FUNC_1554E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 60.000000, -82.000000)
			arg0:setTopBottom(false, false, -18.000000, 18.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.FEMemberBlurPanelContainer0:setTopBottom(false, false, -14.000000, 14.000000)
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(0.000000)
		__FUNC_1554E_(registerVal7, {})
		local function __FUNC_15771_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 60.000000, -82.000000)
			arg0:setTopBottom(false, false, -18.000000, 18.000000)
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.VSpanel:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.VSpanel:setTopBottom(false, false, -14.000000, 13.800000)
		registerVal2.VSpanel:setAlpha(0.500000)
		__FUNC_15771_(registerVal8, {})
		local function __FUNC_15995_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 60.000000, 408.000000)
			arg0:setTopBottom(true, false, -4.500000, 31.500000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.LobbyMemberBacking:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBacking:setTopBottom(true, false, -0.500000, 27.000000)
		registerVal2.LobbyMemberBacking:setZoom(0.000000)
		__FUNC_15995_(registerVal9, {})
		local function __FUNC_15BB8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 60.000000, 408.000000)
			arg0:setTopBottom(true, false, -5.000000, 32.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -0.500000, 27.500000)
		registerVal2.LobbyMemberTeamColor:setZoom(0.000000)
		__FUNC_15BB8_(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.rank:setScale(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		local function __FUNC_15DDC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 58.000000, 410.000000)
			arg0:setTopBottom(true, false, 29.000000, 33.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 12.000000, 15.000000)
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_15DDC_(registerVal17, {})
		local function __FUNC_16001_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 58.000000, 410.000000)
			arg0:setTopBottom(true, false, -6.000000, -2.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 59.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, 12.000000, 16.000000)
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_16001_(registerVal18, {})
		registerVal25:completeAnimation()
		registerVal2.SearchingForPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.SearchingForPlayerFlipped:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.AnonymousPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal31.GainFocus = __FUNC_14E97_
	local function __FUNC_16225_()
		registerVal2:setupElementClipCounter(10.000000)
		local function __FUNC_168DA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 60.000000, 408.000000)
			arg0:setTopBottom(true, false, -0.500000, 27.500000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.FEMemberBlurPanelContainer0:setTopBottom(true, false, -4.500000, 31.500000)
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(1.000000)
		__FUNC_168DA_(registerVal7, {})
		local function __FUNC_16AFD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 60.000000, -82.000000)
			arg0:setTopBottom(false, false, -14.000000, 13.800000)
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.VSpanel:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.VSpanel:setTopBottom(false, false, -18.000000, 18.000000)
		registerVal2.VSpanel:setAlpha(0.500000)
		__FUNC_16AFD_(registerVal8, {})
		local function __FUNC_16D21_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 60.000000, 408.000000)
			arg0:setTopBottom(true, false, -0.500000, 27.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.LobbyMemberBacking:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBacking:setTopBottom(true, false, -4.500000, 31.500000)
		registerVal2.LobbyMemberBacking:setZoom(0.000000)
		__FUNC_16D21_(registerVal9, {})
		local function __FUNC_16F44_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 60.000000, 408.000000)
			arg0:setTopBottom(true, false, -0.500000, 27.500000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -5.000000, 32.000000)
		registerVal2.LobbyMemberTeamColor:setZoom(0.000000)
		__FUNC_16F44_(registerVal10, {})
		local function __FUNC_17168_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.rank:setScale(1.000000)
		__FUNC_17168_(registerVal11, {})
		local function __FUNC_1731D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 58.000000, 410.000000)
			arg0:setTopBottom(true, false, 12.000000, 15.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 29.000000, 33.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_1731D_(registerVal17, {})
		local function __FUNC_17541_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 59.000000, 410.000000)
			arg0:setTopBottom(true, false, 12.000000, 16.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -6.000000, -2.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_17541_(registerVal18, {})
		registerVal25:completeAnimation()
		registerVal2.SearchingForPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.SearchingForPlayerFlipped:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.AnonymousPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal31.LoseFocus = __FUNC_16225_
	local function __FUNC_17765_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_17AE6_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.LobbyLeaderIcon:setAlpha(0.000000)
		__FUNC_17AE6_(registerVal6, {})
		local function __FUNC_17C99_(arg0, arg1)
			local function __FUNC_17DF0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_17DF0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17DF0_)
		end

		registerVal11:completeAnimation()
		registerVal2.rank:setAlpha(0.000000)
		__FUNC_17C99_(registerVal11, {})
		local function __FUNC_17FA5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal2.IconControllerContainer:setAlpha(0.000000)
		__FUNC_17FA5_(registerVal19, {})
		local function __FUNC_18159_(arg0, arg1)
			local function __FUNC_182B0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 299.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_182B0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_182B0_)
		end

		registerVal21:completeAnimation()
		registerVal2.gamertag:setAlpha(0.000000)
		__FUNC_18159_(registerVal21, {})
		local function __FUNC_18465_(arg0, arg1)
			local function __FUNC_185BC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_185BC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_185BC_)
		end

		registerVal23:completeAnimation()
		registerVal2.LobbyLeaderIcon0:setAlpha(0.000000)
		__FUNC_18465_(registerVal23, {})
		registerVal25:completeAnimation()
		registerVal2.SearchingForPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.SearchingForPlayerFlipped:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.AnonymousPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal31.Intro = __FUNC_17765_
	registerVal30.IsDOA = registerVal31
	registerVal31 = {}
	local function __FUNC_18771_()
		registerVal2:setupElementClipCounter(26.000000)
		registerVal3:completeAnimation()
		registerVal2.sizeElement:setLeftRight(true, false, 0.000000, 490.000000)
		registerVal2.sizeElement:setTopBottom(true, false, 0.000000, 27.000000)
		registerVal2.sizeElement:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LobbyMemberBubbleGumBuffs:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBubbleGumBuffs:setTopBottom(true, false, 27.000000, 91.000000)
		registerVal2.LobbyMemberBubbleGumBuffs:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PartyMemberIconNew:setLeftRight(true, false, 412.000000, 422.000000)
		registerVal2.PartyMemberIconNew:setTopBottom(true, false, 0.000000, 25.000000)
		registerVal2.PartyMemberIconNew:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LobbyLeaderIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.FEMemberBlurPanelContainer0:setTopBottom(false, false, -14.000000, 13.500000)
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(1.000000)
		registerVal2.FEMemberBlurPanelContainer0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.VSpanel:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.VSpanel:setTopBottom(false, false, -14.000000, 13.500000)
		registerVal2.VSpanel:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyMemberBacking:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBacking:setTopBottom(true, false, -0.500000, 27.000000)
		registerVal2.LobbyMemberBacking:setAlpha(0.000000)
		registerVal2.LobbyMemberBacking:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -0.500000, 27.500000)
		registerVal2.LobbyMemberTeamColor:setAlpha(1.000000)
		registerVal2.LobbyMemberTeamColor:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.rank:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.rank:setAlpha(1.000000)
		registerVal2.rank:setZoom(0.000000)
		registerVal2.rank:setScale(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.clanTag:setRGB(0.960000, 1.000000, 0.330000)
		registerVal2.clanTag:setAlpha(0.000000)
		registerVal2.clanTag:setZoom(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.PrimaryGroup:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.addControllerText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.MorePlaying:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.playerCountText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 26.000000, 29.000000)
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -4.000000, 0.000000)
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.IconControllerContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.IconJoinable:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.gamertag:setLeftRight(true, false, 115.000000, 386.000000)
		registerVal2.gamertag:setTopBottom(true, false, 1.000000, 26.000000)
		registerVal2.gamertag:setRGB(0.960000, 1.000000, 0.330000)
		registerVal2.gamertag:setAlpha(1.000000)
		registerVal2.gamertag:setZoom(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.TeamSwitcher:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.LobbyLeaderIcon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.LobbyMemberScore:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.SearchingForPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.SearchingForPlayerFlipped:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.AnonymousPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.LobbyMemberReady:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal28, {})
	end

	registerVal31.DefaultClip = __FUNC_18771_
	local function __FUNC_196AA_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal7:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.FEMemberBlurPanelContainer0:setTopBottom(false, false, -18.000000, 18.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.VSpanel:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.VSpanel:setTopBottom(false, false, -18.000000, 18.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyMemberBacking:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBacking:setTopBottom(true, false, -5.000000, 32.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -7.000000, 33.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.rank:setScale(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 29.000000, 33.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -6.000000, -2.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal25:completeAnimation()
		registerVal2.SearchingForPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.SearchingForPlayerFlipped:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.AnonymousPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal31.Focus = __FUNC_196AA_
	local function __FUNC_19CEF_()
		registerVal2:setupElementClipCounter(10.000000)
		local function __FUNC_1A3A6_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 60.000000, -82.000000)
			arg0:setTopBottom(false, false, -18.000000, 18.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.FEMemberBlurPanelContainer0:setTopBottom(false, false, -14.000000, 14.000000)
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(0.000000)
		__FUNC_1A3A6_(registerVal7, {})
		local function __FUNC_1A5C9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 60.000000, -82.000000)
			arg0:setTopBottom(false, false, -18.000000, 18.000000)
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.VSpanel:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.VSpanel:setTopBottom(false, false, -14.000000, 13.800000)
		registerVal2.VSpanel:setAlpha(0.500000)
		__FUNC_1A5C9_(registerVal8, {})
		local function __FUNC_1A7ED_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 60.000000, 408.000000)
			arg0:setTopBottom(true, false, -4.500000, 31.500000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.LobbyMemberBacking:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBacking:setTopBottom(true, false, -0.500000, 27.000000)
		registerVal2.LobbyMemberBacking:setZoom(0.000000)
		__FUNC_1A7ED_(registerVal9, {})
		local function __FUNC_1AA10_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 60.000000, 408.000000)
			arg0:setTopBottom(true, false, -5.000000, 32.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -0.500000, 27.500000)
		registerVal2.LobbyMemberTeamColor:setZoom(0.000000)
		__FUNC_1AA10_(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.rank:setScale(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		local function __FUNC_1AC34_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 58.000000, 410.000000)
			arg0:setTopBottom(true, false, 29.000000, 33.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 12.000000, 15.000000)
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_1AC34_(registerVal17, {})
		local function __FUNC_1AE59_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 58.000000, 410.000000)
			arg0:setTopBottom(true, false, -6.000000, -2.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 59.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, 12.000000, 16.000000)
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_1AE59_(registerVal18, {})
		registerVal25:completeAnimation()
		registerVal2.SearchingForPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.SearchingForPlayerFlipped:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.AnonymousPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal31.GainFocus = __FUNC_19CEF_
	local function __FUNC_1B07D_()
		registerVal2:setupElementClipCounter(10.000000)
		local function __FUNC_1B732_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 60.000000, 408.000000)
			arg0:setTopBottom(true, false, -0.500000, 27.500000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.FEMemberBlurPanelContainer0:setTopBottom(true, false, -4.500000, 31.500000)
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(1.000000)
		__FUNC_1B732_(registerVal7, {})
		local function __FUNC_1B955_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 60.000000, -82.000000)
			arg0:setTopBottom(false, false, -14.000000, 13.800000)
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.VSpanel:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.VSpanel:setTopBottom(false, false, -18.000000, 18.000000)
		registerVal2.VSpanel:setAlpha(0.500000)
		__FUNC_1B955_(registerVal8, {})
		local function __FUNC_1BB79_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 60.000000, 408.000000)
			arg0:setTopBottom(true, false, -0.500000, 27.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.LobbyMemberBacking:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBacking:setTopBottom(true, false, -4.500000, 31.500000)
		registerVal2.LobbyMemberBacking:setZoom(0.000000)
		__FUNC_1BB79_(registerVal9, {})
		local function __FUNC_1BD9C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 60.000000, 408.000000)
			arg0:setTopBottom(true, false, -0.500000, 27.500000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -5.000000, 32.000000)
		registerVal2.LobbyMemberTeamColor:setZoom(0.000000)
		__FUNC_1BD9C_(registerVal10, {})
		local function __FUNC_1BFC0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.rank:setScale(1.000000)
		__FUNC_1BFC0_(registerVal11, {})
		local function __FUNC_1C175_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 58.000000, 410.000000)
			arg0:setTopBottom(true, false, 12.000000, 15.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 29.000000, 33.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_1C175_(registerVal17, {})
		local function __FUNC_1C399_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 59.000000, 410.000000)
			arg0:setTopBottom(true, false, 12.000000, 16.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -6.000000, -2.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_1C399_(registerVal18, {})
		registerVal25:completeAnimation()
		registerVal2.SearchingForPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.SearchingForPlayerFlipped:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.AnonymousPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal31.LoseFocus = __FUNC_1B07D_
	local function __FUNC_1C5BD_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_1C93E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.LobbyLeaderIcon:setAlpha(0.000000)
		__FUNC_1C93E_(registerVal6, {})
		local function __FUNC_1CAF1_(arg0, arg1)
			local function __FUNC_1CC48_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1CC48_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CC48_)
		end

		registerVal11:completeAnimation()
		registerVal2.rank:setAlpha(0.000000)
		__FUNC_1CAF1_(registerVal11, {})
		local function __FUNC_1CDFD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal2.IconControllerContainer:setAlpha(0.000000)
		__FUNC_1CDFD_(registerVal19, {})
		local function __FUNC_1CFB1_(arg0, arg1)
			local function __FUNC_1D108_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 299.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1D108_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D108_)
		end

		registerVal21:completeAnimation()
		registerVal2.gamertag:setAlpha(0.000000)
		__FUNC_1CFB1_(registerVal21, {})
		local function __FUNC_1D2BD_(arg0, arg1)
			local function __FUNC_1D414_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1D414_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D414_)
		end

		registerVal23:completeAnimation()
		registerVal2.LobbyLeaderIcon0:setAlpha(0.000000)
		__FUNC_1D2BD_(registerVal23, {})
		registerVal25:completeAnimation()
		registerVal2.SearchingForPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.SearchingForPlayerFlipped:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.AnonymousPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal31.Intro = __FUNC_1C5BD_
	registerVal30.IsPartyMemberDOA = registerVal31
	registerVal31 = {}
	local function __FUNC_1D5C9_()
		registerVal2:setupElementClipCounter(26.000000)
		registerVal3:completeAnimation()
		registerVal2.sizeElement:setLeftRight(true, false, 0.000000, 490.000000)
		registerVal2.sizeElement:setTopBottom(true, false, 0.000000, 27.000000)
		registerVal2.sizeElement:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LobbyMemberBubbleGumBuffs:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBubbleGumBuffs:setTopBottom(true, false, 27.000000, 91.000000)
		registerVal2.LobbyMemberBubbleGumBuffs:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PartyMemberIconNew:setLeftRight(true, false, 412.000000, 422.000000)
		registerVal2.PartyMemberIconNew:setTopBottom(true, false, 0.000000, 25.000000)
		registerVal2.PartyMemberIconNew:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LobbyLeaderIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.FEMemberBlurPanelContainer0:setTopBottom(true, false, -0.500000, 27.000000)
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(1.000000)
		registerVal2.FEMemberBlurPanelContainer0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.VSpanel:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.VSpanel:setTopBottom(false, false, -14.000000, 13.500000)
		registerVal2.VSpanel:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyMemberBacking:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBacking:setTopBottom(true, false, -0.500000, 27.000000)
		registerVal2.LobbyMemberBacking:setAlpha(0.000000)
		registerVal2.LobbyMemberBacking:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -0.500000, 27.500000)
		registerVal2.LobbyMemberTeamColor:setAlpha(1.000000)
		registerVal2.LobbyMemberTeamColor:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.rank:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.rank:setAlpha(1.000000)
		registerVal2.rank:setZoom(0.000000)
		registerVal2.rank:setScale(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.clanTag:setRGB(0.960000, 1.000000, 0.330000)
		registerVal2.clanTag:setAlpha(0.000000)
		registerVal2.clanTag:setZoom(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.PrimaryGroup:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.addControllerText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.MorePlaying:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.playerCountText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 26.000000, 29.000000)
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -4.000000, 0.000000)
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.IconControllerContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.IconJoinable:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.gamertag:setLeftRight(true, false, 115.000000, 386.000000)
		registerVal2.gamertag:setTopBottom(true, false, 1.000000, 26.000000)
		registerVal2.gamertag:setRGB(0.960000, 1.000000, 0.330000)
		registerVal2.gamertag:setAlpha(1.000000)
		registerVal2.gamertag:setZoom(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.TeamSwitcher:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.LobbyLeaderIcon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.LobbyMemberScore:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.SearchingForPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.SearchingForPlayerFlipped:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.AnonymousPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.LobbyMemberReady:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
	end

	registerVal31.DefaultClip = __FUNC_1D5C9_
	local function __FUNC_1E502_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal7:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.FEMemberBlurPanelContainer0:setTopBottom(false, false, -18.000000, 18.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.VSpanel:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.VSpanel:setTopBottom(false, false, -18.000000, 18.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyMemberBacking:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBacking:setTopBottom(true, false, -5.000000, 32.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -7.000000, 33.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.rank:setScale(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 29.000000, 33.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -6.000000, -2.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal25:completeAnimation()
		registerVal2.SearchingForPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.SearchingForPlayerFlipped:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.AnonymousPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal31.Focus = __FUNC_1E502_
	local function __FUNC_1EB47_()
		registerVal2:setupElementClipCounter(10.000000)
		local function __FUNC_1F1FE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 60.000000, -82.000000)
			arg0:setTopBottom(false, false, -18.000000, 18.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.FEMemberBlurPanelContainer0:setTopBottom(false, false, -14.000000, 14.000000)
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(0.000000)
		__FUNC_1F1FE_(registerVal7, {})
		local function __FUNC_1F421_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 60.000000, -82.000000)
			arg0:setTopBottom(false, false, -18.000000, 18.000000)
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.VSpanel:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.VSpanel:setTopBottom(false, false, -14.000000, 13.800000)
		registerVal2.VSpanel:setAlpha(0.500000)
		__FUNC_1F421_(registerVal8, {})
		local function __FUNC_1F645_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 60.000000, 408.000000)
			arg0:setTopBottom(true, false, -4.500000, 31.500000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.LobbyMemberBacking:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBacking:setTopBottom(true, false, -0.500000, 27.000000)
		registerVal2.LobbyMemberBacking:setZoom(0.000000)
		__FUNC_1F645_(registerVal9, {})
		local function __FUNC_1F868_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 60.000000, 408.000000)
			arg0:setTopBottom(true, false, -5.000000, 32.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -0.500000, 27.500000)
		registerVal2.LobbyMemberTeamColor:setZoom(0.000000)
		__FUNC_1F868_(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.rank:setScale(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		local function __FUNC_1FA8C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 58.000000, 410.000000)
			arg0:setTopBottom(true, false, 29.000000, 33.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 12.000000, 15.000000)
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_1FA8C_(registerVal17, {})
		local function __FUNC_1FCB1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 58.000000, 410.000000)
			arg0:setTopBottom(true, false, -6.000000, -2.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 59.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, 12.000000, 16.000000)
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_1FCB1_(registerVal18, {})
		registerVal25:completeAnimation()
		registerVal2.SearchingForPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.SearchingForPlayerFlipped:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.AnonymousPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal31.GainFocus = __FUNC_1EB47_
	local function __FUNC_1FED5_()
		registerVal2:setupElementClipCounter(10.000000)
		local function __FUNC_2058A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 60.000000, 408.000000)
			arg0:setTopBottom(true, false, -0.500000, 27.500000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.FEMemberBlurPanelContainer0:setTopBottom(true, false, -4.500000, 31.500000)
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(1.000000)
		__FUNC_2058A_(registerVal7, {})
		local function __FUNC_207AD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 60.000000, -82.000000)
			arg0:setTopBottom(false, false, -14.000000, 13.800000)
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.VSpanel:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.VSpanel:setTopBottom(false, false, -18.000000, 18.000000)
		registerVal2.VSpanel:setAlpha(0.500000)
		__FUNC_207AD_(registerVal8, {})
		local function __FUNC_209D1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 60.000000, 408.000000)
			arg0:setTopBottom(true, false, -0.500000, 27.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.LobbyMemberBacking:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBacking:setTopBottom(true, false, -4.500000, 31.500000)
		registerVal2.LobbyMemberBacking:setZoom(0.000000)
		__FUNC_209D1_(registerVal9, {})
		local function __FUNC_20BF4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 60.000000, 408.000000)
			arg0:setTopBottom(true, false, -0.500000, 27.500000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -5.000000, 32.000000)
		registerVal2.LobbyMemberTeamColor:setZoom(0.000000)
		__FUNC_20BF4_(registerVal10, {})
		local function __FUNC_20E18_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.rank:setScale(1.000000)
		__FUNC_20E18_(registerVal11, {})
		local function __FUNC_20FCD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 58.000000, 410.000000)
			arg0:setTopBottom(true, false, 12.000000, 15.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 29.000000, 33.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_20FCD_(registerVal17, {})
		local function __FUNC_211F1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 59.000000, 410.000000)
			arg0:setTopBottom(true, false, 12.000000, 16.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -6.000000, -2.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_211F1_(registerVal18, {})
		registerVal25:completeAnimation()
		registerVal2.SearchingForPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.SearchingForPlayerFlipped:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.AnonymousPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal31.LoseFocus = __FUNC_1FED5_
	local function __FUNC_21415_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_21796_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.LobbyLeaderIcon:setAlpha(0.000000)
		__FUNC_21796_(registerVal6, {})
		local function __FUNC_21949_(arg0, arg1)
			local function __FUNC_21AA0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_21AA0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21AA0_)
		end

		registerVal11:completeAnimation()
		registerVal2.rank:setAlpha(0.000000)
		__FUNC_21949_(registerVal11, {})
		local function __FUNC_21C55_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal2.IconControllerContainer:setAlpha(0.000000)
		__FUNC_21C55_(registerVal19, {})
		local function __FUNC_21E09_(arg0, arg1)
			local function __FUNC_21F60_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 299.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_21F60_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21F60_)
		end

		registerVal21:completeAnimation()
		registerVal2.gamertag:setAlpha(0.000000)
		__FUNC_21E09_(registerVal21, {})
		local function __FUNC_22115_(arg0, arg1)
			local function __FUNC_2226C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2226C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2226C_)
		end

		registerVal23:completeAnimation()
		registerVal2.LobbyLeaderIcon0:setAlpha(0.000000)
		__FUNC_22115_(registerVal23, {})
		registerVal25:completeAnimation()
		registerVal2.SearchingForPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.SearchingForPlayerFlipped:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.AnonymousPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal31.Intro = __FUNC_21415_
	registerVal30.IsSelf = registerVal31
	registerVal31 = {}
	local function __FUNC_22421_()
		registerVal2:setupElementClipCounter(26.000000)
		registerVal3:completeAnimation()
		registerVal2.sizeElement:setLeftRight(true, false, 0.000000, 490.000000)
		registerVal2.sizeElement:setTopBottom(true, false, 0.000000, 27.000000)
		registerVal2.sizeElement:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LobbyMemberBubbleGumBuffs:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBubbleGumBuffs:setTopBottom(true, false, 27.000000, 91.000000)
		registerVal2.LobbyMemberBubbleGumBuffs:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PartyMemberIconNew:setLeftRight(true, false, 412.000000, 422.000000)
		registerVal2.PartyMemberIconNew:setTopBottom(true, false, 0.000000, 25.000000)
		registerVal2.PartyMemberIconNew:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LobbyLeaderIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.FEMemberBlurPanelContainer0:setTopBottom(true, false, -0.500000, 27.000000)
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(1.000000)
		registerVal2.FEMemberBlurPanelContainer0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.VSpanel:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.VSpanel:setTopBottom(false, false, -14.000000, 13.500000)
		registerVal2.VSpanel:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyMemberBacking:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBacking:setTopBottom(true, false, -0.500000, 27.000000)
		registerVal2.LobbyMemberBacking:setAlpha(0.000000)
		registerVal2.LobbyMemberBacking:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -0.500000, 27.500000)
		registerVal2.LobbyMemberTeamColor:setAlpha(1.000000)
		registerVal2.LobbyMemberTeamColor:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.rank:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.rank:setAlpha(1.000000)
		registerVal2.rank:setZoom(0.000000)
		registerVal2.rank:setScale(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.clanTag:setRGB(0.960000, 1.000000, 0.330000)
		registerVal2.clanTag:setAlpha(0.000000)
		registerVal2.clanTag:setZoom(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.PrimaryGroup:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.addControllerText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.MorePlaying:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.playerCountText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 26.000000, 29.000000)
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -4.000000, 0.000000)
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.IconControllerContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.IconJoinable:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.gamertag:setLeftRight(true, false, 115.000000, 386.000000)
		registerVal2.gamertag:setTopBottom(true, false, 1.000000, 26.000000)
		registerVal2.gamertag:setRGB(0.870000, 0.900000, 0.900000)
		registerVal2.gamertag:setAlpha(1.000000)
		registerVal2.gamertag:setZoom(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.TeamSwitcher:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.LobbyLeaderIcon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.LobbyMemberScore:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.SearchingForPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.SearchingForPlayerFlipped:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.AnonymousPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.LobbyMemberReady:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
	end

	registerVal31.DefaultClip = __FUNC_22421_
	local function __FUNC_23364_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal7:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.FEMemberBlurPanelContainer0:setTopBottom(true, false, -4.000000, 31.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.VSpanel:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.VSpanel:setTopBottom(false, false, -21.000000, 19.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyMemberBacking:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBacking:setTopBottom(true, false, -7.250000, 33.250000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -7.500000, 33.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.rank:setScale(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 29.000000, 33.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -6.000000, -2.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal25:completeAnimation()
		registerVal2.SearchingForPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.SearchingForPlayerFlipped:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.AnonymousPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal31.Focus = __FUNC_23364_
	local function __FUNC_239B5_()
		registerVal2:setupElementClipCounter(10.000000)
		local function __FUNC_2402C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 60.000000, 408.000000)
			arg0:setTopBottom(true, false, -4.500000, 31.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.FEMemberBlurPanelContainer0:setTopBottom(true, false, 0.000000, 27.500000)
		__FUNC_2402C_(registerVal7, {})
		local function __FUNC_2422E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 60.000000, -82.000000)
			arg0:setTopBottom(false, false, -18.000000, 18.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.VSpanel:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.VSpanel:setTopBottom(false, false, -14.000000, 13.800000)
		__FUNC_2422E_(registerVal8, {})
		local function __FUNC_2442E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 60.000000, 408.000000)
			arg0:setTopBottom(true, false, -5.000000, 32.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.LobbyMemberBacking:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBacking:setTopBottom(true, false, -0.500000, 27.000000)
		registerVal2.LobbyMemberBacking:setZoom(0.000000)
		__FUNC_2442E_(registerVal9, {})
		local function __FUNC_24650_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 60.000000, 408.000000)
			arg0:setTopBottom(true, false, -4.000000, 31.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -0.500000, 27.500000)
		registerVal2.LobbyMemberTeamColor:setZoom(0.000000)
		__FUNC_24650_(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.rank:setScale(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		local function __FUNC_24874_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 58.000000, 410.000000)
			arg0:setTopBottom(true, false, 29.000000, 33.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 12.000000, 15.000000)
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_24874_(registerVal17, {})
		local function __FUNC_24A99_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 58.000000, 410.000000)
			arg0:setTopBottom(true, false, -6.000000, -2.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 59.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, 12.000000, 16.000000)
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_24A99_(registerVal18, {})
		registerVal25:completeAnimation()
		registerVal2.SearchingForPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.SearchingForPlayerFlipped:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.AnonymousPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal31.GainFocus = __FUNC_239B5_
	local function __FUNC_24CBD_()
		registerVal2:setupElementClipCounter(10.000000)
		local function __FUNC_2533F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 60.000000, 408.000000)
			arg0:setTopBottom(true, false, 0.000000, 27.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.FEMemberBlurPanelContainer0:setTopBottom(true, false, -4.500000, 31.500000)
		__FUNC_2533F_(registerVal7, {})
		local function __FUNC_2553E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 60.000000, -82.000000)
			arg0:setTopBottom(false, false, -14.000000, 13.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.VSpanel:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.VSpanel:setTopBottom(false, false, -18.000000, 18.000000)
		__FUNC_2553E_(registerVal8, {})
		local function __FUNC_2573E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 60.000000, 408.000000)
			arg0:setTopBottom(true, false, -0.500000, 27.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.LobbyMemberBacking:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBacking:setTopBottom(true, false, -5.000000, 32.000000)
		registerVal2.LobbyMemberBacking:setZoom(0.000000)
		__FUNC_2573E_(registerVal9, {})
		local function __FUNC_25960_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 60.000000, 408.000000)
			arg0:setTopBottom(true, false, -0.500000, 27.500000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -4.000000, 31.000000)
		registerVal2.LobbyMemberTeamColor:setZoom(0.000000)
		__FUNC_25960_(registerVal10, {})
		local function __FUNC_25B84_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.rank:setScale(1.000000)
		__FUNC_25B84_(registerVal11, {})
		local function __FUNC_25D39_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 58.000000, 410.000000)
			arg0:setTopBottom(true, false, 12.000000, 15.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 29.000000, 33.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_25D39_(registerVal17, {})
		local function __FUNC_25F5D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 59.000000, 410.000000)
			arg0:setTopBottom(true, false, 12.000000, 16.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -6.000000, -2.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_25F5D_(registerVal18, {})
		registerVal25:completeAnimation()
		registerVal2.SearchingForPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.SearchingForPlayerFlipped:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.AnonymousPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal31.LoseFocus = __FUNC_24CBD_
	local function __FUNC_26181_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_26502_(arg0, arg1)
			local function __FUNC_26658_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_26658_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26658_)
		end

		registerVal6:completeAnimation()
		registerVal2.LobbyLeaderIcon:setAlpha(0.000000)
		__FUNC_26502_(registerVal6, {})
		local function __FUNC_2680D_(arg0, arg1)
			local function __FUNC_26964_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_26964_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26964_)
		end

		registerVal11:completeAnimation()
		registerVal2.rank:setAlpha(0.000000)
		__FUNC_2680D_(registerVal11, {})
		local function __FUNC_26B19_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal2.IconControllerContainer:setAlpha(0.000000)
		__FUNC_26B19_(registerVal19, {})
		local function __FUNC_26CCD_(arg0, arg1)
			local function __FUNC_26E24_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_26E24_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26E24_)
		end

		registerVal21:completeAnimation()
		registerVal2.gamertag:setAlpha(0.000000)
		__FUNC_26CCD_(registerVal21, {})
		local function __FUNC_26FD9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal23:completeAnimation()
		registerVal2.LobbyLeaderIcon0:setAlpha(0.000000)
		__FUNC_26FD9_(registerVal23, {})
		registerVal25:completeAnimation()
		registerVal2.SearchingForPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.SearchingForPlayerFlipped:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.AnonymousPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal31.Intro = __FUNC_26181_
	registerVal30.IsPartyMember = registerVal31
	registerVal31 = {}
	local function __FUNC_2718D_()
		registerVal2:setupElementClipCounter(26.000000)
		registerVal3:completeAnimation()
		registerVal2.sizeElement:setLeftRight(true, false, 0.000000, 490.000000)
		registerVal2.sizeElement:setTopBottom(true, false, 0.000000, 27.000000)
		registerVal2.sizeElement:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LobbyMemberBubbleGumBuffs:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBubbleGumBuffs:setTopBottom(true, false, 27.000000, 91.000000)
		registerVal2.LobbyMemberBubbleGumBuffs:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PartyMemberIconNew:setLeftRight(true, false, 412.000000, 422.000000)
		registerVal2.PartyMemberIconNew:setTopBottom(true, false, 0.000000, 25.000000)
		registerVal2.PartyMemberIconNew:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LobbyLeaderIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.FEMemberBlurPanelContainer0:setTopBottom(true, false, -0.500000, 27.000000)
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(1.000000)
		registerVal2.FEMemberBlurPanelContainer0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.VSpanel:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.VSpanel:setTopBottom(false, false, -14.000000, 13.500000)
		registerVal2.VSpanel:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyMemberBacking:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBacking:setTopBottom(true, false, -0.500000, 27.000000)
		registerVal2.LobbyMemberBacking:setAlpha(0.000000)
		registerVal2.LobbyMemberBacking:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -0.500000, 27.500000)
		registerVal2.LobbyMemberTeamColor:setAlpha(1.000000)
		registerVal2.LobbyMemberTeamColor:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.rank:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.rank:setAlpha(1.000000)
		registerVal2.rank:setZoom(0.000000)
		registerVal2.rank:setScale(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.clanTag:setRGB(0.960000, 1.000000, 0.330000)
		registerVal2.clanTag:setAlpha(0.000000)
		registerVal2.clanTag:setZoom(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.PrimaryGroup:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.addControllerText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.MorePlaying:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.playerCountText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 26.000000, 29.000000)
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -4.000000, 0.000000)
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.IconControllerContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.IconJoinable:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.gamertag:setLeftRight(true, false, 115.000000, 386.000000)
		registerVal2.gamertag:setTopBottom(true, false, 1.000000, 26.000000)
		registerVal2.gamertag:setRGB(0.870000, 0.900000, 0.900000)
		registerVal2.gamertag:setAlpha(1.000000)
		registerVal2.gamertag:setZoom(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.TeamSwitcher:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.LobbyLeaderIcon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.LobbyMemberScore:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.SearchingForPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.SearchingForPlayerFlipped:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.AnonymousPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.LobbyMemberReady:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
	end

	registerVal31.DefaultClip = __FUNC_2718D_
	local function __FUNC_280D0_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal7:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.FEMemberBlurPanelContainer0:setTopBottom(false, false, -21.500000, 21.500000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.VSpanel:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.VSpanel:setTopBottom(false, false, -21.000000, 21.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyMemberBacking:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBacking:setTopBottom(true, false, -8.000000, 35.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -8.000000, 35.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.rank:setScale(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.PrimaryGroup:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 33.000000, 36.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -9.000000, -5.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal21:completeAnimation()
		registerVal2.gamertag:setLeftRight(true, false, 115.000000, 386.000000)
		registerVal2.gamertag:setTopBottom(true, false, -5.000000, 20.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal25:completeAnimation()
		registerVal2.SearchingForPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.SearchingForPlayerFlipped:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.AnonymousPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal31.Focus = __FUNC_280D0_
	local function __FUNC_2880F_()
		registerVal2:setupElementClipCounter(12.000000)
		local function __FUNC_28F74_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 60.000000, -82.000000)
			arg0:setTopBottom(false, false, -21.500000, 21.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.FEMemberBlurPanelContainer0:setTopBottom(false, false, -13.500000, 14.000000)
		__FUNC_28F74_(registerVal7, {})
		local function __FUNC_29176_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 60.000000, -82.000000)
			arg0:setTopBottom(false, false, -21.000000, 21.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.VSpanel:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.VSpanel:setTopBottom(false, false, -14.000000, 13.800000)
		__FUNC_29176_(registerVal8, {})
		local function __FUNC_29376_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 60.000000, 408.000000)
			arg0:setTopBottom(true, false, -8.000000, 35.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.LobbyMemberBacking:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBacking:setTopBottom(true, false, -0.500000, 27.000000)
		registerVal2.LobbyMemberBacking:setZoom(0.000000)
		__FUNC_29376_(registerVal9, {})
		local function __FUNC_29598_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 60.000000, 408.000000)
			arg0:setTopBottom(true, false, -8.000000, 35.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -0.500000, 27.500000)
		registerVal2.LobbyMemberTeamColor:setZoom(0.000000)
		__FUNC_29598_(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.rank:setScale(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		local function __FUNC_297BC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.PrimaryGroup:setAlpha(0.000000)
		__FUNC_297BC_(registerVal13, {})
		local function __FUNC_29971_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 58.000000, 410.000000)
			arg0:setTopBottom(true, false, 33.000000, 36.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 12.000000, 15.000000)
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_29971_(registerVal17, {})
		local function __FUNC_29B95_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 58.000000, 410.000000)
			arg0:setTopBottom(true, false, -9.000000, -5.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 59.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, 12.000000, 16.000000)
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_29B95_(registerVal18, {})
		local function __FUNC_29DB9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 115.000000, 386.000000)
			arg0:setTopBottom(true, false, -6.000000, 19.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal21:completeAnimation()
		registerVal2.gamertag:setLeftRight(true, false, 115.000000, 386.000000)
		registerVal2.gamertag:setTopBottom(true, false, 1.000000, 26.000000)
		__FUNC_29DB9_(registerVal21, {})
		registerVal25:completeAnimation()
		registerVal2.SearchingForPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.SearchingForPlayerFlipped:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.AnonymousPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal31.GainFocus = __FUNC_2880F_
	local function __FUNC_29FBA_()
		registerVal2:setupElementClipCounter(12.000000)
		local function __FUNC_2A721_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 60.000000, -82.000000)
			arg0:setTopBottom(false, false, -13.500000, 14.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.FEMemberBlurPanelContainer0:setTopBottom(false, false, -21.500000, 21.500000)
		__FUNC_2A721_(registerVal7, {})
		local function __FUNC_2A922_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 60.000000, -82.000000)
			arg0:setTopBottom(false, false, -14.000000, 13.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.VSpanel:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.VSpanel:setTopBottom(false, false, -21.000000, 21.000000)
		__FUNC_2A922_(registerVal8, {})
		local function __FUNC_2AB22_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 60.000000, 408.000000)
			arg0:setTopBottom(true, false, -0.500000, 27.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.LobbyMemberBacking:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBacking:setTopBottom(true, false, -8.000000, 35.000000)
		registerVal2.LobbyMemberBacking:setZoom(0.000000)
		__FUNC_2AB22_(registerVal9, {})
		local function __FUNC_2AD44_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 60.000000, 408.000000)
			arg0:setTopBottom(true, false, -0.500000, 26.500000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -8.000000, 35.000000)
		registerVal2.LobbyMemberTeamColor:setZoom(0.000000)
		__FUNC_2AD44_(registerVal10, {})
		local function __FUNC_2AF68_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.rank:setScale(1.000000)
		__FUNC_2AF68_(registerVal11, {})
		local function __FUNC_2B11D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.PrimaryGroup:setAlpha(1.000000)
		__FUNC_2B11D_(registerVal13, {})
		local function __FUNC_2B2D1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 58.000000, 410.000000)
			arg0:setTopBottom(true, false, 12.000000, 15.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 33.000000, 36.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_2B2D1_(registerVal17, {})
		local function __FUNC_2B4F5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 59.000000, 410.000000)
			arg0:setTopBottom(true, false, 12.000000, 16.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -9.000000, -5.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_2B4F5_(registerVal18, {})
		local function __FUNC_2B719_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 115.000000, 386.000000)
			arg0:setTopBottom(true, false, 1.000000, 26.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal21:completeAnimation()
		registerVal2.gamertag:setLeftRight(true, false, 115.000000, 386.000000)
		registerVal2.gamertag:setTopBottom(true, false, -6.000000, 19.000000)
		__FUNC_2B719_(registerVal21, {})
		registerVal25:completeAnimation()
		registerVal2.SearchingForPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.SearchingForPlayerFlipped:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.AnonymousPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal31.LoseFocus = __FUNC_29FBA_
	local function __FUNC_2B91A_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_2BC9A_(arg0, arg1)
			local function __FUNC_2BDF0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2BDF0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BDF0_)
		end

		registerVal6:completeAnimation()
		registerVal2.LobbyLeaderIcon:setAlpha(0.000000)
		__FUNC_2BC9A_(registerVal6, {})
		local function __FUNC_2BFA5_(arg0, arg1)
			local function __FUNC_2C0FC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2C0FC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C0FC_)
		end

		registerVal11:completeAnimation()
		registerVal2.rank:setAlpha(0.000000)
		__FUNC_2BFA5_(registerVal11, {})
		local function __FUNC_2C2B1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal2.IconControllerContainer:setAlpha(0.000000)
		__FUNC_2C2B1_(registerVal19, {})
		local function __FUNC_2C465_(arg0, arg1)
			local function __FUNC_2C5BC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2C5BC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C5BC_)
		end

		registerVal21:completeAnimation()
		registerVal2.gamertag:setAlpha(0.000000)
		__FUNC_2C465_(registerVal21, {})
		local function __FUNC_2C771_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal23:completeAnimation()
		registerVal2.LobbyLeaderIcon0:setAlpha(0.000000)
		__FUNC_2C771_(registerVal23, {})
		registerVal25:completeAnimation()
		registerVal2.SearchingForPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.SearchingForPlayerFlipped:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.AnonymousPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal31.Intro = __FUNC_2B91A_
	registerVal30.IsInGroup = registerVal31
	registerVal31 = {}
	local function __FUNC_2C925_()
		registerVal2:setupElementClipCounter(26.000000)
		registerVal3:completeAnimation()
		registerVal2.sizeElement:setLeftRight(true, false, 0.000000, 490.000000)
		registerVal2.sizeElement:setTopBottom(true, false, 0.000000, 27.000000)
		registerVal2.sizeElement:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LobbyMemberBubbleGumBuffs:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBubbleGumBuffs:setTopBottom(true, false, 27.000000, 91.000000)
		registerVal2.LobbyMemberBubbleGumBuffs:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PartyMemberIconNew:setLeftRight(true, false, 412.000000, 422.000000)
		registerVal2.PartyMemberIconNew:setTopBottom(true, false, 0.000000, 25.000000)
		registerVal2.PartyMemberIconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LobbyLeaderIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.FEMemberBlurPanelContainer0:setTopBottom(false, false, -14.000000, 13.500000)
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(1.000000)
		registerVal2.FEMemberBlurPanelContainer0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.VSpanel:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.VSpanel:setTopBottom(false, false, -14.000000, 13.800000)
		registerVal2.VSpanel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyMemberBacking:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBacking:setTopBottom(true, false, -0.500000, 27.000000)
		registerVal2.LobbyMemberBacking:setAlpha(0.000000)
		registerVal2.LobbyMemberBacking:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -0.500000, 27.500000)
		registerVal2.LobbyMemberTeamColor:setAlpha(1.000000)
		registerVal2.LobbyMemberTeamColor:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.rank:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.rank:setAlpha(0.000000)
		registerVal2.rank:setZoom(0.000000)
		registerVal2.rank:setScale(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.clanTag:setRGB(0.870000, 0.900000, 0.900000)
		registerVal2.clanTag:setAlpha(0.000000)
		registerVal2.clanTag:setZoom(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.PrimaryGroup:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.addControllerText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.MorePlaying:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.playerCountText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 26.000000, 29.000000)
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -4.000000, 0.000000)
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.IconControllerContainer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.IconJoinable:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.gamertag:setLeftRight(true, false, 115.000000, 386.000000)
		registerVal2.gamertag:setTopBottom(true, false, 1.000000, 26.000000)
		registerVal2.gamertag:setRGB(0.870000, 0.900000, 0.900000)
		registerVal2.gamertag:setAlpha(0.000000)
		registerVal2.gamertag:setZoom(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.TeamSwitcher:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.LobbyLeaderIcon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.LobbyMemberScore:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.SearchingForPlayer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.SearchingForPlayerFlipped:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.AnonymousPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.LobbyMemberReady:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
	end

	registerVal31.DefaultClip = __FUNC_2C925_
	registerVal30.SearchingForPlayer = registerVal31
	registerVal31 = {}
	local function __FUNC_2D85E_()
		registerVal2:setupElementClipCounter(26.000000)
		registerVal3:completeAnimation()
		registerVal2.sizeElement:setLeftRight(true, false, 0.000000, 490.000000)
		registerVal2.sizeElement:setTopBottom(true, false, 0.000000, 27.000000)
		registerVal2.sizeElement:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LobbyMemberBubbleGumBuffs:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBubbleGumBuffs:setTopBottom(true, false, 27.000000, 91.000000)
		registerVal2.LobbyMemberBubbleGumBuffs:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PartyMemberIconNew:setLeftRight(true, false, 412.000000, 422.000000)
		registerVal2.PartyMemberIconNew:setTopBottom(true, false, 0.000000, 25.000000)
		registerVal2.PartyMemberIconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LobbyLeaderIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.FEMemberBlurPanelContainer0:setTopBottom(true, false, -0.500000, 27.000000)
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(1.000000)
		registerVal2.FEMemberBlurPanelContainer0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.VSpanel:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.VSpanel:setTopBottom(false, false, -14.000000, 13.800000)
		registerVal2.VSpanel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyMemberBacking:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBacking:setTopBottom(true, false, -0.500000, 27.000000)
		registerVal2.LobbyMemberBacking:setAlpha(0.000000)
		registerVal2.LobbyMemberBacking:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -0.500000, 27.500000)
		registerVal2.LobbyMemberTeamColor:setAlpha(1.000000)
		registerVal2.LobbyMemberTeamColor:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.rank:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.rank:setAlpha(0.000000)
		registerVal2.rank:setZoom(0.000000)
		registerVal2.rank:setScale(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.clanTag:setRGB(0.870000, 0.900000, 0.900000)
		registerVal2.clanTag:setAlpha(0.000000)
		registerVal2.clanTag:setZoom(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.PrimaryGroup:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.addControllerText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.MorePlaying:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.playerCountText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 26.000000, 29.000000)
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -4.000000, 0.000000)
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.IconControllerContainer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.IconJoinable:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.gamertag:setLeftRight(true, false, 115.000000, 386.000000)
		registerVal2.gamertag:setTopBottom(true, false, 1.000000, 26.000000)
		registerVal2.gamertag:setRGB(0.870000, 0.900000, 0.900000)
		registerVal2.gamertag:setAlpha(0.000000)
		registerVal2.gamertag:setZoom(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.TeamSwitcher:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.LobbyLeaderIcon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.LobbyMemberScore:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.SearchingForPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.SearchingForPlayerFlipped:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.AnonymousPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.LobbyMemberReady:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
	end

	registerVal31.DefaultClip = __FUNC_2D85E_
	registerVal30.SearchingForPlayer_Flipped = registerVal31
	registerVal31 = {}
	local function __FUNC_2E791_()
		registerVal2:setupElementClipCounter(26.000000)
		registerVal3:completeAnimation()
		registerVal2.sizeElement:setLeftRight(true, false, 0.000000, 490.000000)
		registerVal2.sizeElement:setTopBottom(true, false, 0.000000, 27.000000)
		registerVal2.sizeElement:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LobbyMemberBubbleGumBuffs:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBubbleGumBuffs:setTopBottom(true, false, 27.000000, 91.000000)
		registerVal2.LobbyMemberBubbleGumBuffs:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PartyMemberIconNew:setLeftRight(true, false, 412.000000, 422.000000)
		registerVal2.PartyMemberIconNew:setTopBottom(true, false, 0.000000, 25.000000)
		registerVal2.PartyMemberIconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LobbyLeaderIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.FEMemberBlurPanelContainer0:setTopBottom(false, false, -14.000000, 13.500000)
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(1.000000)
		registerVal2.FEMemberBlurPanelContainer0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.VSpanel:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.VSpanel:setTopBottom(false, false, -14.000000, 13.800000)
		registerVal2.VSpanel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyMemberBacking:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBacking:setTopBottom(true, false, -0.500000, 27.000000)
		registerVal2.LobbyMemberBacking:setAlpha(0.000000)
		registerVal2.LobbyMemberBacking:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -0.500000, 27.500000)
		registerVal2.LobbyMemberTeamColor:setAlpha(1.000000)
		registerVal2.LobbyMemberTeamColor:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.rank:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.rank:setAlpha(0.000000)
		registerVal2.rank:setZoom(0.000000)
		registerVal2.rank:setScale(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.clanTag:setRGB(0.870000, 0.900000, 0.900000)
		registerVal2.clanTag:setAlpha(0.000000)
		registerVal2.clanTag:setZoom(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.PrimaryGroup:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.addControllerText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.MorePlaying:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.playerCountText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 26.000000, 29.000000)
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -4.000000, 0.000000)
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.IconControllerContainer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.IconJoinable:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.gamertag:setLeftRight(true, false, 115.000000, 386.000000)
		registerVal2.gamertag:setTopBottom(true, false, 1.000000, 26.000000)
		registerVal2.gamertag:setRGB(0.870000, 0.900000, 0.900000)
		registerVal2.gamertag:setAlpha(0.000000)
		registerVal2.gamertag:setZoom(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.TeamSwitcher:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.LobbyLeaderIcon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.LobbyMemberScore:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.SearchingForPlayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.SearchingForPlayerFlipped:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.AnonymousPlayer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.LobbyMemberReady:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
	end

	registerVal31.DefaultClip = __FUNC_2E791_
	registerVal30.AnonymousPlayer = registerVal31
	registerVal2.clipsPerState = registerVal30
	registerVal32 = {}
	local registerVal33 = {}
	registerVal33.stateName = "IsSelfZombies"
	local function __FUNC_2F6CA_(arg0, arg2, arg3)
		local registerVal3 = IsSelfItem(arg2, arg1)
		registerVal3 = IsZM()
		if registerVal3 and registerVal3 then
			registerVal3 = LobbyHas4PlayersOrLess()
		end
		return registerVal3
	end

	registerVal33.condition = __FUNC_2F6CA_
	local registerVal34 = {}
	registerVal34.stateName = "IsPartyMemberZombies"
	local function __FUNC_2F76A_(arg0, arg1, arg2)
		local registerVal3 = IsZM()
		if registerVal3 then
			registerVal3 = LobbyHas4PlayersOrLess()
		end
		return registerVal3
	end

	registerVal34.condition = __FUNC_2F76A_
	local registerVal35 = {}
	registerVal35.stateName = "IsDOA"
	local function __FUNC_2F7DE_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "validClient")
		registerVal3 = IsGlobalModelValueEqualTo(arg2, arg1, "lobbyRoot.lobbyNav", LobbyData.UITargets.UI_DOALOBBYONLINEPUBLICGAME.id)
		registerVal3 = IsSelfItem(arg2, arg1)
		if registerVal3 and registerVal3 and registerVal3 then
			registerVal3 = IsGameTypeDOA()
		end
		return registerVal3
	end

	registerVal35.condition = __FUNC_2F7DE_
	local registerVal36 = {}
	registerVal36.stateName = "IsPartyMemberDOA"
	local function __FUNC_2F980_(arg0, arg2, arg3)
		local registerVal3 = IsGlobalModelValueEqualTo(arg2, arg1, "lobbyRoot.lobbyNav", LobbyData.UITargets.UI_DOALOBBYONLINEPUBLICGAME.id)
		registerVal3 = IsGameTypeDOA()
		if registerVal3 and registerVal3 then
			registerVal3 = IsSelfModelValueTrue(arg2, arg1, "validClient")
		end
		return registerVal3
	end

	registerVal36.condition = __FUNC_2F980_
	local registerVal37 = {}
	registerVal37.stateName = "IsSelf"
	local function __FUNC_2FAF8_(arg0, arg2, arg3)
		local registerVal3 = IsSelfItem(arg2, arg1)
		if registerVal3 then
			registerVal3 = IsSelfModelValueTrue(arg2, arg1, "validClient")
		end
		return registerVal3
	end

	registerVal37.condition = __FUNC_2FAF8_
	local registerVal38 = {}
	registerVal38.stateName = "IsPartyMember"
	local function __FUNC_2FB9B_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal38.condition = __FUNC_2FB9B_
	local registerVal39 = {}
	registerVal39.stateName = "IsInGroup"
	local function __FUNC_2FBE5_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal39.condition = __FUNC_2FBE5_
	local registerVal40 = {}
	registerVal40.stateName = "SearchingForPlayer"
	local function __FUNC_2FC31_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "validClient")
		if not registerVal3 then
			registerVal3 = IsCurrentLanguageReversed()
		else
		end
		return true
	end

	registerVal40.condition = __FUNC_2FC31_
	local registerVal41 = {}
	registerVal41.stateName = "SearchingForPlayer_Flipped"
	local function __FUNC_2FCEA_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "validClient")
		if not registerVal3 then
			registerVal3 = IsCurrentLanguageReversed()
		else
		end
		return true
	end

	registerVal41.condition = __FUNC_2FCEA_
	local registerVal42 = {}
	registerVal42.stateName = "AnonymousPlayer"
	local function __FUNC_2FD9E_(arg0, arg2, arg3)
		local registerVal3 = IsArenaMode()
		registerVal3 = IsSelfModelValueNilOrZero(arg2, arg1, "isMember")
		if registerVal3 and registerVal3 then
			registerVal3 = IsGlobalModelValueTrue(arg2, arg1, "lobbyRoot.lobbyLockedIn")
			if not registerVal3 then
				registerVal3 = MapVoteInState("3")
			else
			end
		end
		return true
	end

	registerVal42.condition = __FUNC_2FD9E_
	registerVal32 = {registerVal33, registerVal34, registerVal35, registerVal36, registerVal37, registerVal38, registerVal39, registerVal40, registerVal41, registerVal42}
	registerVal2:mergeStateConditions(registerVal32)
	registerVal33 = Engine.GetGlobalModel()
	registerVal32 = Engine.GetModel(registerVal33, "lobbyRoot.lobbyMainMode")
	local function __FUNC_2FEDE_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyMainMode"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal32, __FUNC_2FEDE_)
	registerVal33 = Engine.GetGlobalModel()
	registerVal32 = Engine.GetModel(registerVal33, "lobbyRoot.lobbyNav")
	local function __FUNC_30009_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal32, __FUNC_30009_)
	if registerVal2.m_eventHandlers.on_client_added then
		local function __FUNC_30130_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.on_client_added(arg1, arg2)
		end

		registerVal2:registerEventHandler("on_client_added", __FUNC_30130_)
	else
		registerVal2:registerEventHandler("on_client_added", LUI.UIElement.updateState)
	end
	if registerVal2.m_eventHandlers.on_client_removed then
		local function __FUNC_301BB_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.on_client_removed(arg1, arg2)
		end

		registerVal2:registerEventHandler("on_client_removed", __FUNC_301BB_)
	else
		registerVal2:registerEventHandler("on_client_removed", LUI.UIElement.updateState)
	end
	local function __FUNC_30243_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "validClient"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "validClient", true, __FUNC_30243_)
	local function __FUNC_30361_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isMember"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isMember", true, __FUNC_30361_)
	registerVal33 = Engine.GetGlobalModel()
	registerVal32 = Engine.GetModel(registerVal33, "lobbyRoot.lobbyLockedIn")
	local function __FUNC_3047E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyLockedIn"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal32, __FUNC_3047E_)
	registerVal33 = Engine.GetGlobalModel()
	registerVal32 = Engine.GetModel(registerVal33, "lobbyRoot.mapVote")
	local function __FUNC_305A9_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.mapVote"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal32, __FUNC_305A9_)
	local function __FUNC_306CF_(arg0, arg2)
		local registerVal2 = IsSelfInState(registerVal2, "AnonymousPlayer")
		if registerVal2 then
			RestrictVoiceChatForClient(registerVal2, arg0, arg1)
		else
			registerVal2 = IsSelfInState(registerVal2, "AnonymousPlayer")
			if not registerVal2 then
				AllowVoiceChatForClient(registerVal2, arg0, arg1)
			end
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setState", __FUNC_306CF_)
	registerVal28.id = "LobbyMemberReady"
	local function __FUNC_307C9_(arg0, arg1)
		local registerVal2 = arg0.LobbyMemberReady:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_307C9_)
	local function __FUNC_308D4_(arg0)
		arg0.LobbyMemberBubbleGumBuffs:close()
		arg0.PartyMemberIconNew:close()
		arg0.LobbyLeaderIcon:close()
		arg0.FEMemberBlurPanelContainer0:close()
		arg0.VSpanel:close()
		arg0.LobbyMemberBacking:close()
		arg0.LobbyMemberTeamColor:close()
		arg0.rank:close()
		arg0.FocusBarB:close()
		arg0.FocusBarT:close()
		arg0.IconControllerContainer:close()
		arg0.IconJoinable:close()
		arg0.gamertag:close()
		arg0.TeamSwitcher:close()
		arg0.LobbyLeaderIcon0:close()
		arg0.LobbyMemberScore:close()
		arg0.SearchingForPlayer:close()
		arg0.SearchingForPlayerFlipped:close()
		arg0.AnonymousPlayer:close()
		arg0.LobbyMemberReady:close()
		arg0.LobbyMemberMP45:close()
		arg0.clanTag:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_308D4_)
	if __FUNC_76A_ then
		__FUNC_76A_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.LobbyMember.new = __FUNC_FF6_
