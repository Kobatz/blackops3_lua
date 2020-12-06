-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Lists.Members.LobbyLeaderIcon")
require("ui.uieditor.widgets.Lobby.Lists.Members.LobbyMemberPartyMemberIconNew")
require("ui.uieditor.widgets.Lobby.Common.FE_MemberBlurPanelContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
require("ui.uieditor.widgets.Lobby.Lists.Members.LobbyMemberTeamColor")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.Lobby.Lists.Members.IconJoinable")
require("ui.uieditor.widgets.Lobby.Lists.Members.QuickJoinRank")
require("ui.uieditor.widgets.Lobby.Lists.Members.LobbyMemberGamertag")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LobbyMemberQuickJoin = registerVal1
function CoD.LobbyMemberQuickJoin.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LobbyMemberQuickJoin)
	registerVal2.id = "LobbyMemberQuickJoin"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 490.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 27.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.LobbyLeaderIcon.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 411.000000, 435.000000)
	registerVal3:setTopBottom(true, false, 1.000000, 26.000000)
	local function __FUNC_1C9E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.Leader:setAlpha(registerVal1)
		end
	end

	registerVal3:linkToElementModel(registerVal2, "isMemberLeader", true, __FUNC_1C9E_)
	registerVal2:addElement(registerVal3)
	registerVal2.LobbyLeaderIcon = registerVal3
	local registerVal4 = CoD.LobbyMemberPartyMemberIconNew.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 412.000000, 422.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.PartyMemberIconNew = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 353.000000, 415.000000)
	registerVal5:setTopBottom(true, false, 5.000000, 25.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.score = registerVal5
	local registerVal6 = CoD.FE_MemberBlurPanelContainer.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 60.000000, -82.000000)
	registerVal6:setTopBottom(false, false, -14.000000, 13.500000)
	registerVal6.FEMemberBlurPanel0:setShaderVector(0.000000, 0.000000, 3.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.FEMemberBlurPanelContainer0 = registerVal6
	local registerVal7 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 60.000000, -82.000000)
	registerVal7:setTopBottom(false, false, -14.000000, 13.800000)
	registerVal7:setRGB(0.500000, 0.500000, 0.500000)
	registerVal7:setAlpha(0.200000)
	registerVal2:addElement(registerVal7)
	registerVal2.VSpanel = registerVal7
	local registerVal8 = CoD.LobbyMemberTeamColor.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 60.000000, 408.000000)
	registerVal8:setTopBottom(true, false, -0.500000, 27.500000)
	local function __FUNC_1D4D_(arg0)
		registerVal8:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal2, nil, false, __FUNC_1D4D_)
	registerVal2:addElement(registerVal8)
	registerVal2.LobbyMemberTeamColor = registerVal8
	local registerVal9 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 60.000000, 408.000000)
	registerVal9:setTopBottom(true, false, -0.500000, 29.000000)
	registerVal9:setRGB(0.220000, 0.220000, 0.220000)
	registerVal9:setAlpha(0.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.LobbyMemberBacking = registerVal9
	local registerVal10 = LUI.UITightText.new()
	registerVal10:setLeftRight(true, false, 109.500000, 177.500000)
	registerVal10:setTopBottom(true, false, 3.000000, 24.000000)
	registerVal10:setRGB(0.870000, 0.900000, 0.900000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal10)
	registerVal2.clanTag = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, false, 57.000000, 457.000000)
	registerVal11:setTopBottom(true, false, 2.500000, 19.500000)
	registerVal11:setRGB(0.420000, 0.520000, 0.620000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setZoom(10.000000)
	registerVal11:setText(Engine.Localize("PLATFORM_FEEDER_SECONDARY_CONTROLLER_PLUGIN"))
	registerVal11:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal11)
	registerVal2.addControllerText = registerVal11
	local registerVal12 = LUI.UIText.new()
	registerVal12:setLeftRight(true, false, 19.000000, 509.000000)
	registerVal12:setTopBottom(true, false, 2.500000, 19.500000)
	registerVal12:setRGB(0.420000, 0.520000, 0.620000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setZoom(10.000000)
	registerVal12:setText(Engine.Localize("MENU_LOBBY_MORECOUNT"))
	registerVal12:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal12)
	registerVal2.MorePlaying = registerVal12
	local registerVal13 = LUI.UIText.new()
	registerVal13:setLeftRight(true, false, 57.000000, 408.000000)
	registerVal13:setTopBottom(true, false, 7.000000, 24.000000)
	registerVal13:setRGB(0.420000, 0.520000, 0.620000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setText(Engine.Localize("MENU_LOBBY_PLAYERCOUNT"))
	registerVal13:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal13)
	registerVal2.playerCountText = registerVal13
	local registerVal14 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 58.000000, 410.000000)
	registerVal14:setTopBottom(true, false, 26.000000, 29.000000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setZoom(1.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.FocusBarB = registerVal14
	local registerVal15 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 58.000000, 410.000000)
	registerVal15:setTopBottom(true, false, -4.000000, 0.000000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setZoom(1.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.FocusBarT = registerVal15
	local registerVal16 = CoD.IconJoinable.new(arg0, arg1)
	registerVal16:setLeftRight(true, false, 389.000000, 413.000000)
	registerVal16:setTopBottom(true, false, 1.500000, 26.500000)
	local function __FUNC_1D9E_(arg0)
		registerVal16:setModel(arg0, arg1)
	end

	registerVal16:linkToElementModel(registerVal2, nil, false, __FUNC_1D9E_)
	local registerVal19 = {}
	local registerVal20 = {}
	registerVal20.stateName = "Visible"
	local function __FUNC_1DEE_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "isJoinable", 1.000000)
	end

	registerVal20.condition = __FUNC_1DEE_
	registerVal19 = {registerVal20}
	registerVal16:mergeStateConditions(registerVal19)
	local function __FUNC_1E6E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isJoinable"
		arg0:updateElementState(registerVal16, registerVal4)
	end

	registerVal16:linkToElementModel(registerVal16, "isJoinable", true, __FUNC_1E6E_)
	registerVal2:addElement(registerVal16)
	registerVal2.IconJoinable = registerVal16
	local registerVal17 = CoD.QuickJoinRank.new(arg0, arg1)
	registerVal17:setLeftRight(false, true, -428.000000, -378.000000)
	registerVal17:setTopBottom(true, false, 1.000000, 26.000000)
	local function __FUNC_1F8C_(arg0)
		registerVal17:setModel(arg0, arg1)
	end

	registerVal17:linkToElementModel(registerVal2, nil, false, __FUNC_1F8C_)
	registerVal2:addElement(registerVal17)
	registerVal2.rank = registerVal17
	local registerVal18 = CoD.LobbyMemberGamertag.new(arg0, arg1)
	registerVal18:setLeftRight(true, false, 115.000000, 386.000000)
	registerVal18:setTopBottom(true, false, 1.000000, 26.000000)
	registerVal18:setRGB(0.870000, 0.900000, 0.900000)
	local function __FUNC_1FDE_(arg0)
		registerVal18:setModel(arg0, arg1)
	end

	registerVal18:linkToElementModel(registerVal2, nil, false, __FUNC_1FDE_)
	registerVal2:addElement(registerVal18)
	registerVal2.gamertag = registerVal18
	local function __FUNC_202E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.score:linkToElementModel(registerVal2, "score", true, __FUNC_202E_)
	local function __FUNC_20E6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setText(registerVal1)
		end
	end

	registerVal2.clanTag:linkToElementModel(registerVal2, "clanTag", true, __FUNC_20E6_)
	registerVal19 = {}
	registerVal20 = {}
	local function __FUNC_2178_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal2.LobbyLeaderIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.FEMemberBlurPanelContainer0:setTopBottom(true, true, -0.500000, 0.000000)
		registerVal2.FEMemberBlurPanelContainer0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.VSpanel:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.VSpanel:setTopBottom(false, false, -14.000000, 13.800000)
		registerVal2.VSpanel:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -0.500000, 27.500000)
		registerVal2.LobbyMemberTeamColor:setAlpha(1.000000)
		registerVal2.LobbyMemberTeamColor:setZoom(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyMemberBacking:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBacking:setTopBottom(true, false, -0.500000, 27.000000)
		registerVal2.LobbyMemberBacking:setAlpha(0.000000)
		registerVal2.LobbyMemberBacking:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.clanTag:setRGB(0.870000, 0.900000, 0.900000)
		registerVal2.clanTag:setAlpha(0.000000)
		registerVal2.clanTag:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.addControllerText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.MorePlaying:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.playerCountText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 26.000000, 29.000000)
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -4.000000, 0.000000)
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal20.DefaultClip = __FUNC_2178_
	local function __FUNC_2934_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal6:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.VSpanel:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -0.500000, 40.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal20.Focus = __FUNC_2934_
	local function __FUNC_2C36_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal7:completeAnimation()
		registerVal2.VSpanel:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setAlpha(1.000000)
		registerVal2.LobbyMemberTeamColor:setZoom(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyMemberBacking:setAlpha(0.000000)
		registerVal2.LobbyMemberBacking:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		local function __FUNC_2EE9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_2EE9_(registerVal14, {})
		local function __FUNC_309D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_309D_(registerVal15, {})
	end

	registerVal20.GainFocus = __FUNC_2C36_
	local function __FUNC_3251_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal7:completeAnimation()
		registerVal2.VSpanel:setScale(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
		registerVal8:setAlpha(1.000000)
		registerVal8:setZoom(0.000000)
		registerVal8:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		registerVal9:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
		registerVal9:setAlpha(0.000000)
		registerVal9:setZoom(0.000000)
		registerVal9:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		local function __FUNC_35B0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_35B0_(registerVal14, {})
		local function __FUNC_3765_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_3765_(registerVal15, {})
	end

	registerVal20.LoseFocus = __FUNC_3251_
	registerVal19.DefaultState = registerVal20
	registerVal20 = {}
	local function __FUNC_3919_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal20.DefaultClip = __FUNC_3919_
	registerVal19.Disabled = registerVal20
	registerVal20 = {}
	local function __FUNC_397A_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.LobbyLeaderIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -0.500000, 27.500000)
		registerVal2.LobbyMemberTeamColor:setAlpha(1.000000)
		registerVal2.LobbyMemberTeamColor:setZoom(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyMemberBacking:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBacking:setTopBottom(true, false, -0.500000, 27.000000)
		registerVal2.LobbyMemberBacking:setAlpha(0.000000)
		registerVal2.LobbyMemberBacking:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.clanTag:setRGB(0.960000, 1.000000, 0.330000)
		registerVal2.clanTag:setAlpha(0.000000)
		registerVal2.clanTag:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.addControllerText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.MorePlaying:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.playerCountText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 26.000000, 29.000000)
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -4.000000, 0.000000)
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal20.DefaultClip = __FUNC_397A_
	local function __FUNC_3FC7_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal6:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.FEMemberBlurPanelContainer0:setTopBottom(true, true, -5.000000, 5.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.VSpanel:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.VSpanel:setTopBottom(false, false, -18.500000, 18.500000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -5.000000, 32.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyMemberBacking:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBacking:setTopBottom(true, false, -5.000000, 32.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 29.000000, 33.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -6.000000, -2.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal20.Focus = __FUNC_3FC7_
	local function __FUNC_447E_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_4951_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 60.000000, -82.000000)
			arg0:setTopBottom(true, true, -5.000000, 5.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.FEMemberBlurPanelContainer0:setTopBottom(true, true, -0.500000, 0.000000)
		__FUNC_4951_(registerVal6, {})
		local function __FUNC_4B52_(arg0, arg1)
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
		registerVal2.VSpanel:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.VSpanel:setTopBottom(false, false, -14.000000, 13.800000)
		__FUNC_4B52_(registerVal7, {})
		local function __FUNC_4D52_(arg0, arg1)
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

		registerVal8:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -0.500000, 27.500000)
		registerVal2.LobbyMemberTeamColor:setZoom(0.000000)
		__FUNC_4D52_(registerVal8, {})
		local function __FUNC_4F74_(arg0, arg1)
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
		__FUNC_4F74_(registerVal9, {})
		local function __FUNC_5198_(arg0, arg1)
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

		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 12.000000, 15.000000)
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_5198_(registerVal14, {})
		local function __FUNC_53BD_(arg0, arg1)
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

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 59.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, 12.000000, 16.000000)
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_53BD_(registerVal15, {})
	end

	registerVal20.GainFocus = __FUNC_447E_
	local function __FUNC_55E1_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_5AB5_(arg0, arg1)
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

		registerVal6:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.FEMemberBlurPanelContainer0:setTopBottom(false, false, -18.500000, 18.500000)
		__FUNC_5AB5_(registerVal6, {})
		local function __FUNC_5CB6_(arg0, arg1)
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

		registerVal7:completeAnimation()
		registerVal2.VSpanel:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.VSpanel:setTopBottom(false, false, -18.500000, 18.500000)
		__FUNC_5CB6_(registerVal7, {})
		local function __FUNC_5EB6_(arg0, arg1)
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

		registerVal8:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -5.000000, 32.000000)
		registerVal2.LobbyMemberTeamColor:setZoom(0.000000)
		__FUNC_5EB6_(registerVal8, {})
		local function __FUNC_60D8_(arg0, arg1)
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
		__FUNC_60D8_(registerVal9, {})
		local function __FUNC_62FC_(arg0, arg1)
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

		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 29.000000, 33.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_62FC_(registerVal14, {})
		local function __FUNC_6521_(arg0, arg1)
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

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -6.000000, -2.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_6521_(registerVal15, {})
	end

	registerVal20.LoseFocus = __FUNC_55E1_
	registerVal19.IsSelf = registerVal20
	registerVal20 = {}
	local function __FUNC_6745_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal2.LobbyLeaderIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -0.500000, 27.500000)
		registerVal2.LobbyMemberTeamColor:setAlpha(1.000000)
		registerVal2.LobbyMemberTeamColor:setZoom(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyMemberBacking:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBacking:setTopBottom(true, false, -0.500000, 27.000000)
		registerVal2.LobbyMemberBacking:setAlpha(0.600000)
		registerVal2.LobbyMemberBacking:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.clanTag:setRGB(0.870000, 0.900000, 0.900000)
		registerVal2.clanTag:setAlpha(0.000000)
		registerVal2.clanTag:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.addControllerText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.MorePlaying:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.playerCountText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 26.000000, 29.000000)
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -4.000000, 0.000000)
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal20.DefaultClip = __FUNC_6745_
	local function __FUNC_6E06_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal6:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.FEMemberBlurPanelContainer0:setTopBottom(true, true, -5.000000, 5.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.VSpanel:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.VSpanel:setTopBottom(false, false, -18.500000, 18.500000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -5.000000, 32.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyMemberBacking:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBacking:setTopBottom(true, false, -5.000000, 32.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 29.000000, 33.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -6.000000, -2.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal20.Focus = __FUNC_6E06_
	local function __FUNC_72BE_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_7796_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 60.000000, -82.000000)
			arg0:setTopBottom(true, true, -5.000000, 5.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.FEMemberBlurPanelContainer0:setTopBottom(true, true, -0.500000, 0.500000)
		__FUNC_7796_(registerVal6, {})
		local function __FUNC_7996_(arg0, arg1)
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
		registerVal2.VSpanel:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.VSpanel:setTopBottom(false, false, -14.000000, 14.000000)
		__FUNC_7996_(registerVal7, {})
		local function __FUNC_7B96_(arg0, arg1)
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

		registerVal8:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -0.500000, 27.500000)
		registerVal2.LobbyMemberTeamColor:setZoom(0.000000)
		__FUNC_7B96_(registerVal8, {})
		local function __FUNC_7DB8_(arg0, arg1)
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
		__FUNC_7DB8_(registerVal9, {})
		local function __FUNC_7FDC_(arg0, arg1)
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

		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 12.000000, 15.000000)
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_7FDC_(registerVal14, {})
		local function __FUNC_8201_(arg0, arg1)
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

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 59.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, 12.000000, 16.000000)
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_8201_(registerVal15, {})
	end

	registerVal20.GainFocus = __FUNC_72BE_
	local function __FUNC_8425_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_88FE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 60.000000, -82.000000)
			arg0:setTopBottom(true, true, -0.500000, 0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.FEMemberBlurPanelContainer0:setTopBottom(true, true, -5.000000, 5.000000)
		__FUNC_88FE_(registerVal6, {})
		local function __FUNC_8AFE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 60.000000, -82.000000)
			arg0:setTopBottom(false, false, -14.000000, 14.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.VSpanel:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.VSpanel:setTopBottom(false, false, -18.500000, 18.500000)
		__FUNC_8AFE_(registerVal7, {})
		local function __FUNC_8CFE_(arg0, arg1)
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

		registerVal8:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -5.000000, 32.000000)
		registerVal2.LobbyMemberTeamColor:setZoom(0.000000)
		__FUNC_8CFE_(registerVal8, {})
		local function __FUNC_8F20_(arg0, arg1)
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
		__FUNC_8F20_(registerVal9, {})
		local function __FUNC_9144_(arg0, arg1)
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

		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 29.000000, 33.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_9144_(registerVal14, {})
		local function __FUNC_9369_(arg0, arg1)
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

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -6.000000, -2.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_9369_(registerVal15, {})
	end

	registerVal20.LoseFocus = __FUNC_8425_
	registerVal19.IsFriend = registerVal20
	registerVal20 = {}
	local function __FUNC_958D_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal2.LobbyLeaderIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -0.500000, 27.500000)
		registerVal2.LobbyMemberTeamColor:setAlpha(1.000000)
		registerVal2.LobbyMemberTeamColor:setZoom(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyMemberBacking:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBacking:setTopBottom(true, false, -0.500000, 27.000000)
		registerVal2.LobbyMemberBacking:setRGB(0.180000, 0.230000, 0.320000)
		registerVal2.LobbyMemberBacking:setAlpha(0.650000)
		registerVal2.LobbyMemberBacking:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.clanTag:setRGB(0.870000, 0.900000, 0.900000)
		registerVal2.clanTag:setAlpha(0.000000)
		registerVal2.clanTag:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.addControllerText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.MorePlaying:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.playerCountText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 26.000000, 29.000000)
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -4.000000, 0.000000)
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal20.DefaultClip = __FUNC_958D_
	local function __FUNC_9C81_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal6:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.FEMemberBlurPanelContainer0:setTopBottom(true, true, -5.000000, 5.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.VSpanel:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.VSpanel:setTopBottom(false, false, -18.500000, 18.500000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -5.000000, 32.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyMemberBacking:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBacking:setTopBottom(true, false, -5.000000, 32.000000)
		registerVal2.LobbyMemberBacking:setRGB(0.180000, 0.230000, 0.320000)
		registerVal2.LobbyMemberBacking:setAlpha(0.650000)
		registerVal2.LobbyMemberBacking:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 29.000000, 33.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -6.000000, -2.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal20.Focus = __FUNC_9C81_
	local function __FUNC_A1D0_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_A6AA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 60.000000, -82.000000)
			arg0:setTopBottom(true, true, -5.000000, 5.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.FEMemberBlurPanelContainer0:setTopBottom(true, true, -0.500000, 0.500000)
		__FUNC_A6AA_(registerVal6, {})
		local function __FUNC_A8AA_(arg0, arg1)
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
		registerVal2.VSpanel:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.VSpanel:setTopBottom(false, false, -14.000000, 14.000000)
		__FUNC_A8AA_(registerVal7, {})
		local function __FUNC_AAAA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
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

		registerVal8:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -0.500000, 27.500000)
		registerVal2.LobbyMemberTeamColor:setZoom(0.000000)
		__FUNC_AAAA_(registerVal8, {})
		local function __FUNC_ACCC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
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
		__FUNC_ACCC_(registerVal9, {})
		local function __FUNC_AEF0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
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

		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 12.000000, 15.000000)
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_AEF0_(registerVal14, {})
		local function __FUNC_B115_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
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

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 59.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, 12.000000, 16.000000)
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_B115_(registerVal15, {})
	end

	registerVal20.GainFocus = __FUNC_A1D0_
	local function __FUNC_B339_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_B812_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 60.000000, -82.000000)
			arg0:setTopBottom(true, true, -0.500000, 0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.FEMemberBlurPanelContainer0:setTopBottom(true, true, -5.000000, 5.000000)
		__FUNC_B812_(registerVal6, {})
		local function __FUNC_BA12_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 60.000000, -82.000000)
			arg0:setTopBottom(false, false, -14.000000, 14.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.VSpanel:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.VSpanel:setTopBottom(false, false, -18.500000, 18.500000)
		__FUNC_BA12_(registerVal7, {})
		local function __FUNC_BC12_(arg0, arg1)
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

		registerVal8:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -5.000000, 32.000000)
		registerVal2.LobbyMemberTeamColor:setZoom(0.000000)
		__FUNC_BC12_(registerVal8, {})
		local function __FUNC_BE34_(arg0, arg1)
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
		__FUNC_BE34_(registerVal9, {})
		local function __FUNC_C058_(arg0, arg1)
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

		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 29.000000, 33.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_C058_(registerVal14, {})
		local function __FUNC_C27D_(arg0, arg1)
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

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -6.000000, -2.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_C27D_(registerVal15, {})
	end

	registerVal20.LoseFocus = __FUNC_B339_
	registerVal19.IsGroupMember = registerVal20
	registerVal20 = {}
	local function __FUNC_C4A1_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.LobbyLeaderIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -0.500000, 27.500000)
		registerVal2.LobbyMemberTeamColor:setAlpha(1.000000)
		registerVal2.LobbyMemberTeamColor:setZoom(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyMemberBacking:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBacking:setTopBottom(true, false, -0.500000, 27.000000)
		registerVal2.LobbyMemberBacking:setAlpha(0.000000)
		registerVal2.LobbyMemberBacking:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.clanTag:setRGB(0.870000, 0.900000, 0.900000)
		registerVal2.clanTag:setAlpha(0.000000)
		registerVal2.clanTag:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.addControllerText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.MorePlaying:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.playerCountText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 26.000000, 29.000000)
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -4.000000, 0.000000)
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal20.DefaultClip = __FUNC_C4A1_
	local function __FUNC_CAEF_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal6:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.FEMemberBlurPanelContainer0:setTopBottom(false, false, -18.000000, 18.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.VSpanel:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.VSpanel:setTopBottom(false, false, -18.000000, 18.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -4.000000, 31.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyMemberBacking:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberBacking:setTopBottom(true, false, -4.000000, 31.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 29.000000, 33.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -6.000000, -2.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal20.Focus = __FUNC_CAEF_
	local function __FUNC_CFA1_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_D47A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 60.000000, -82.000000)
			arg0:setTopBottom(true, true, -5.000000, 5.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.FEMemberBlurPanelContainer0:setTopBottom(true, true, -0.500000, 0.500000)
		__FUNC_D47A_(registerVal6, {})
		local function __FUNC_D67A_(arg0, arg1)
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

		registerVal7:completeAnimation()
		registerVal2.VSpanel:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.VSpanel:setTopBottom(false, false, -14.000000, 13.500000)
		__FUNC_D67A_(registerVal7, {})
		local function __FUNC_D87A_(arg0, arg1)
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

		registerVal8:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -0.500000, 27.500000)
		registerVal2.LobbyMemberTeamColor:setZoom(0.000000)
		__FUNC_D87A_(registerVal8, {})
		local function __FUNC_DA9C_(arg0, arg1)
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
		__FUNC_DA9C_(registerVal9, {})
		local function __FUNC_DCC0_(arg0, arg1)
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

		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 12.000000, 15.000000)
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_DCC0_(registerVal14, {})
		local function __FUNC_DEE5_(arg0, arg1)
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

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 59.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, 12.000000, 16.000000)
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_DEE5_(registerVal15, {})
	end

	registerVal20.GainFocus = __FUNC_CFA1_
	local function __FUNC_E109_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_E5F1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 60.000000, -82.000000)
			arg0:setTopBottom(true, true, -0.500000, 0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.FEMemberBlurPanelContainer0:setTopBottom(true, true, -5.000000, 5.000000)
		__FUNC_E5F1_(registerVal6, {})
		local function __FUNC_E7F2_(arg0, arg1)
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
		registerVal2.VSpanel:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.VSpanel:setTopBottom(false, false, -18.000000, 18.000000)
		__FUNC_E7F2_(registerVal7, {})
		local function __FUNC_E9F2_(arg0, arg1)
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

		registerVal8:completeAnimation()
		registerVal2.LobbyMemberTeamColor:setLeftRight(true, false, 60.000000, 408.000000)
		registerVal2.LobbyMemberTeamColor:setTopBottom(true, false, -4.000000, 31.000000)
		registerVal2.LobbyMemberTeamColor:setZoom(0.000000)
		__FUNC_E9F2_(registerVal8, {})
		local function __FUNC_EC14_(arg0, arg1)
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
		__FUNC_EC14_(registerVal9, {})
		local function __FUNC_EE38_(arg0, arg1)
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

		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarB:setTopBottom(true, false, 29.000000, 33.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_EE38_(registerVal14, {})
		local function __FUNC_F05D_(arg0, arg1)
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

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, false, 58.000000, 410.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -6.000000, -2.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_F05D_(registerVal15, {})
	end

	registerVal20.LoseFocus = __FUNC_E109_
	registerVal19.IsOtherPartyMember = registerVal20
	registerVal2.clipsPerState = registerVal19
	local registerVal21 = {}
	local registerVal22 = {}
	registerVal22.stateName = "Disabled"
	local function __FUNC_F281_(arg0, arg1, arg2)
		local registerVal3 = IsCurrentMenu(arg0, "ModeSelect")
		return (not registerVal3)
	end

	registerVal22.condition = __FUNC_F281_
	local registerVal23 = {}
	registerVal23.stateName = "IsSelf"
	local function __FUNC_F2EF_(arg0, arg2, arg3)
		return IsSelfItem(arg2, arg1)
	end

	registerVal23.condition = __FUNC_F2EF_
	local registerVal24 = {}
	registerVal24.stateName = "IsFriend"
	local function __FUNC_F340_(arg0, arg1, arg2)
		return IsFriendItem(arg1)
	end

	registerVal24.condition = __FUNC_F340_
	local registerVal25 = {}
	registerVal25.stateName = "IsGroupMember"
	local function __FUNC_F392_(arg0, arg1, arg2)
		return IsGroupsItem(arg1)
	end

	registerVal25.condition = __FUNC_F392_
	local registerVal26 = {}
	registerVal26.stateName = "IsOtherPartyMember"
	local function __FUNC_F3E2_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal26.condition = __FUNC_F3E2_
	registerVal21 = {registerVal22, registerVal23, registerVal24, registerVal25, registerVal26}
	registerVal2:mergeStateConditions(registerVal21)
	local function __FUNC_F42D_(arg0)
		arg0.LobbyLeaderIcon:close()
		arg0.PartyMemberIconNew:close()
		arg0.FEMemberBlurPanelContainer0:close()
		arg0.VSpanel:close()
		arg0.LobbyMemberTeamColor:close()
		arg0.LobbyMemberBacking:close()
		arg0.FocusBarB:close()
		arg0.FocusBarT:close()
		arg0.IconJoinable:close()
		arg0.rank:close()
		arg0.gamertag:close()
		arg0.score:close()
		arg0.clanTag:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_F42D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

