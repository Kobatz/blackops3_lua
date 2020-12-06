-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.AAR.RewardsScreen.ZM.ZMDailyChallengeRewardsCarouselItemInternal")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ZMDailyChallengeRewardsCarouselItem = registerVal1
function CoD.ZMDailyChallengeRewardsCarouselItem.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ZMDailyChallengeRewardsCarouselItem)
	registerVal2.id = "ZMDailyChallengeRewardsCarouselItem"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 276.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 444.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.ZMDailyChallengeRewardsCarouselItemInternal.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 276.000000)
	registerVal3:setTopBottom(true, false, 3.000000, 447.000000)
	local function __FUNC_B3B_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_B3B_)
	registerVal2:addElement(registerVal3)
	registerVal2.ZMDailyChallengeRewardsCarouselItemInternal = registerVal3
	local registerVal4 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, -6.000000, 6.000000)
	registerVal4:setTopBottom(false, true, 0.000000, -3.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setZoom(1.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.FocusBarB = registerVal4
	local registerVal5 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, -6.000000, 6.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 4.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setZoom(1.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.FocusBarT = registerVal5
	local registerVal6 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, -138.000000, 138.000000)
	registerVal6:setTopBottom(false, false, -220.000000, 220.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.FETitleNumBrdr0 = registerVal6
	local registerVal7 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -142.000000, 142.000000)
	registerVal7:setTopBottom(false, false, 221.000000, 217.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setZoom(1.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.FocusBarB0 = registerVal7
	local registerVal8 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal8:setLeftRight(false, false, -142.000000, 142.000000)
	registerVal8:setTopBottom(false, false, -216.000000, -222.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setZRot(-180.000000)
	registerVal8:setZoom(1.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.FocusBarB00 = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_B8A_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.ZMDailyChallengeRewardsCarouselItemInternal:setScale(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FETitleNumBrdr0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarB0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarB00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_B8A_
	local function __FUNC_E7E_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.ZMDailyChallengeRewardsCarouselItemInternal:setScale(1.100000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, -15.000000, 15.000000)
		registerVal2.FocusBarB:setTopBottom(false, true, 19.000000, 23.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, -15.000000, 15.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -23.000000, -19.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FETitleNumBrdr0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarB0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarB00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.Focus = __FUNC_E7E_
	local function __FUNC_1261_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_14A4_(arg0, arg1)
			local function __FUNC_161F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 60.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setScale(1.100000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_161F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, true, CoD.TweenType.Linear)
			arg0:setScale(1.150000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_161F_)
		end

		registerVal3:completeAnimation()
		registerVal2.ZMDailyChallengeRewardsCarouselItemInternal:setScale(1.000000)
		__FUNC_14A4_(registerVal3, {})
		registerVal6:completeAnimation()
		registerVal2.FETitleNumBrdr0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarB0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarB00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.GainFocus = __FUNC_1261_
	local function __FUNC_17D1_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal4:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FETitleNumBrdr0:setLeftRight(false, false, -138.000000, 138.000000)
		registerVal2.FETitleNumBrdr0:setTopBottom(false, false, -220.000000, 220.000000)
		registerVal2.FETitleNumBrdr0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarB0:setLeftRight(false, false, -142.000000, 142.000000)
		registerVal2.FocusBarB0:setTopBottom(false, false, 221.000000, 217.000000)
		registerVal2.FocusBarB0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarB00:setLeftRight(false, false, -142.000000, 142.000000)
		registerVal2.FocusBarB00:setTopBottom(false, false, -216.000000, -222.000000)
		registerVal2.FocusBarB00:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.Over = __FUNC_17D1_
	registerVal9.DefaultState = registerVal10
	registerVal2.clipsPerState = registerVal9
	local function __FUNC_1B89_(arg0)
		arg0.ZMDailyChallengeRewardsCarouselItemInternal:close()
		arg0.FocusBarB:close()
		arg0.FocusBarT:close()
		arg0.FETitleNumBrdr0:close()
		arg0.FocusBarB0:close()
		arg0.FocusBarB00:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1B89_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

