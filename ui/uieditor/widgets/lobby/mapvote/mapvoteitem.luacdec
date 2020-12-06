-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Lists.Members.LobbyMemberBackingMask")
require("ui.uieditor.widgets.Border")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveStroke")
require("ui.uieditor.widgets.Lobby.MapVote.MapVoteLabelUpper")
require("ui.uieditor.widgets.Lobby.MapVote.MapVoteLabelLower")
require("ui.uieditor.widgets.Lobby.Lists.Members.LobbyMemberBackingFooter")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MapVoteItem = registerVal1
function CoD.MapVoteItem.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.MapVoteItem)
	registerVal2.id = "MapVoteItem"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 355.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 60.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(false, true, -178.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_img_t7_menu_mp_preview_sector"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	registerVal2:addElement(registerVal3)
	registerVal2.MapImage = registerVal3
	local registerVal4 = CoD.LobbyMemberBackingMask.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, -49.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.500000)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "PlayerCountState"
	local function __FUNC_159B_(arg0, arg1, arg2)
		return true
	end

	registerVal8.condition = __FUNC_159B_
	local registerVal9 = {}
	registerVal9.stateName = "AddControllerState"
	local function __FUNC_15CC_(arg0, arg1, arg2)
		return true
	end

	registerVal9.condition = __FUNC_15CC_
	local registerVal10 = {}
	registerVal10.stateName = "Invisible"
	local function __FUNC_1600_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal10.condition = __FUNC_1600_
	registerVal7 = {registerVal8, registerVal9, registerVal10}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal2:addElement(registerVal4)
	registerVal2.LobbyMemberBackingMask0 = registerVal4
	local registerVal5 = CoD.Border.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setRGB(1.000000, 0.410000, 0.000000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.FocusBorder = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(false, true, -381.500000, -62.500000)
	registerVal6:setTopBottom(false, true, -35.000000, -19.000000)
	registerVal6:setAlpha(0.950000)
	registerVal6:setText(Engine.Localize("VOTE TYPE"))
	registerVal6:setTTF("fonts/escom.ttf")
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal6:setShaderVector(0.000000, 0.090000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setLetterSpacing(2.500000)
	registerVal2:addElement(registerVal6)
	registerVal2.VoteType = registerVal6
	registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(false, true, -45.000000, -4.000000)
	registerVal7:setTopBottom(false, true, -40.500000, -15.500000)
	registerVal7:setText(Engine.Localize("00"))
	registerVal7:setTTF("fonts/escom.ttf")
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal7:setShaderVector(0.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(1.000000, 0.070000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setLetterSpacing(2.200000)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.voteCount = registerVal7
	registerVal8 = CoD.cac_ButtonBoxLrgInactiveStroke.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, -1.230000, 1.770000)
	registerVal8:setTopBottom(true, true, -1.000000, 1.000000)
	registerVal8:setAlpha(0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.Stroke = registerVal8
	registerVal9 = CoD.MapVoteLabelUpper.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 13.000000, 200.000000)
	registerVal9:setTopBottom(false, true, -49.320000, -28.000000)
	registerVal9.FEListHeaderGlow0:setAlpha(0.720000)
	registerVal9.btnDisplayTextStroke:setText(Engine.Localize("FEATURED"))
	registerVal2:addElement(registerVal9)
	registerVal2.MapNameNew = registerVal9
	registerVal10 = CoD.MapVoteLabelLower.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 13.000000, 200.000000)
	registerVal10:setTopBottom(false, true, -26.500000, -8.500000)
	registerVal10.StartMenuIdentitySubtitleBG00:setAlpha(0.420000)
	registerVal10.SubTitle:setText(Engine.Localize("SOMETHING"))
	registerVal10.SubTitle:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal10)
	registerVal2.GameModeNew = registerVal10
	local registerVal11 = CoD.LobbyMemberBackingFooter.new(arg0, arg1)
	registerVal11:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal11:setTopBottom(true, false, 0.000000, 5.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.LobbyMemberBackingFooter00 = registerVal11
	local registerVal12 = CoD.LobbyMemberBackingFooter.new(arg0, arg1)
	registerVal12:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal12:setTopBottom(false, true, -5.000000, 0.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.LobbyMemberBackingFooter0 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 0.000000, 355.000000)
	registerVal13:setTopBottom(true, false, 0.000000, 60.000000)
	registerVal13:setRGB(0.000000, 0.000000, 0.000000)
	registerVal13:setAlpha(0.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.black = registerVal13
	local registerVal14 = {}
	local registerVal15 = {}
	local function __FUNC_164D_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal4:completeAnimation()
		registerVal2.LobbyMemberBackingMask0:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.voteCount:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal11:completeAnimation()
		registerVal2.LobbyMemberBackingFooter00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.LobbyMemberBackingFooter0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.black:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_164D_
	local function __FUNC_18F9_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal11:completeAnimation()
		registerVal2.LobbyMemberBackingFooter00:setLeftRight(true, true, -2.000000, 2.000000)
		registerVal2.LobbyMemberBackingFooter00:setTopBottom(true, false, 0.000000, 5.000000)
		registerVal2.LobbyMemberBackingFooter00:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.LobbyMemberBackingFooter0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal15.Focus = __FUNC_18F9_
	local function __FUNC_1AFC_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_1CDD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(true, true, -2.000000, 2.000000)
			arg0:setTopBottom(true, false, 0.000000, 5.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.LobbyMemberBackingFooter00:setLeftRight(true, true, -2.000000, 2.000000)
		registerVal2.LobbyMemberBackingFooter00:setTopBottom(true, false, 0.000000, 5.000000)
		registerVal2.LobbyMemberBackingFooter00:setAlpha(0.000000)
		__FUNC_1CDD_(registerVal11, {})
		local function __FUNC_1F01_(arg0, arg1)
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

		registerVal12:completeAnimation()
		registerVal2.LobbyMemberBackingFooter0:setAlpha(0.000000)
		__FUNC_1F01_(registerVal12, {})
	end

	registerVal15.GainFocus = __FUNC_1AFC_
	local function __FUNC_20B5_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_220F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.LobbyMemberBackingFooter00:setAlpha(1.000000)
		__FUNC_220F_(registerVal11, {})
		local function __FUNC_23C1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.LobbyMemberBackingFooter0:setAlpha(1.000000)
		__FUNC_23C1_(registerVal12, {})
	end

	registerVal15.LoseFocus = __FUNC_20B5_
	registerVal14.DefaultState = registerVal15
	registerVal15 = {}
	local function __FUNC_2575_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal4:completeAnimation()
		registerVal2.LobbyMemberBackingMask0:setRGB(0.520000, 0.840000, 0.150000)
		registerVal2.LobbyMemberBackingMask0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.voteCount:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.voteCount:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal11:completeAnimation()
		registerVal2.LobbyMemberBackingFooter00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.LobbyMemberBackingFooter0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.black:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_2575_
	local function __FUNC_28D2_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal11:completeAnimation()
		registerVal2.LobbyMemberBackingFooter00:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.LobbyMemberBackingFooter0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal15.Focus = __FUNC_28D2_
	local function __FUNC_2A49_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_2BA3_(arg0, arg1)
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

		registerVal11:completeAnimation()
		registerVal2.LobbyMemberBackingFooter00:setAlpha(0.000000)
		__FUNC_2BA3_(registerVal11, {})
		local function __FUNC_2D55_(arg0, arg1)
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

		registerVal12:completeAnimation()
		registerVal2.LobbyMemberBackingFooter0:setAlpha(0.000000)
		__FUNC_2D55_(registerVal12, {})
	end

	registerVal15.GainFocus = __FUNC_2A49_
	local function __FUNC_2F09_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_3063_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.LobbyMemberBackingFooter00:setAlpha(1.000000)
		__FUNC_3063_(registerVal11, {})
		local function __FUNC_3215_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.LobbyMemberBackingFooter0:setAlpha(1.000000)
		__FUNC_3215_(registerVal12, {})
	end

	registerVal15.LoseFocus = __FUNC_2F09_
	registerVal14.Selected = registerVal15
	registerVal15 = {}
	local function __FUNC_33C9_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal11:completeAnimation()
		registerVal2.LobbyMemberBackingFooter00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.LobbyMemberBackingFooter0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.black:setAlpha(0.650000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_33C9_
	registerVal14.Unselectable = registerVal15
	registerVal2.clipsPerState = registerVal14
	local registerVal16 = {}
	local registerVal17 = {}
	registerVal17.stateName = "Selected"
	local function __FUNC_3599_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal17.condition = __FUNC_3599_
	local registerVal18 = {}
	registerVal18.stateName = "Unselectable"
	local function __FUNC_35E5_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal18.condition = __FUNC_35E5_
	registerVal16 = {registerVal17, registerVal18}
	registerVal2:mergeStateConditions(registerVal16)
	local function __FUNC_3631_(arg0)
		arg0.LobbyMemberBackingMask0:close()
		arg0.FocusBorder:close()
		arg0.Stroke:close()
		arg0.MapNameNew:close()
		arg0.GameModeNew:close()
		arg0.LobbyMemberBackingFooter00:close()
		arg0.LobbyMemberBackingFooter0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3631_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

