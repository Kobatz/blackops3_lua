-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.ScoreInfo.ScoreInfo_PanelTimerInternal")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ScoreInfo_PanelTimer = registerVal1
function CoD.ScoreInfo_PanelTimer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ScoreInfo_PanelTimer)
	registerVal2.id = "ScoreInfo_PanelTimer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 64.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 40.000000)
	local registerVal3 = CoD.ScoreInfo_PanelTimerInternal.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 64.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 40.000000)
	registerVal3:setRGB(0.550000, 0.580000, 0.600000)
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_2_highquality"))
	registerVal3:setShaderVector(0.000000, 0.000000, 3.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.ScoreInfoPanelTimerInternal0 = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_73D_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ScoreInfoPanelTimerInternal0:setLeftRight(true, false, 0.000000, 64.000000)
		registerVal2.ScoreInfoPanelTimerInternal0:setTopBottom(true, false, 486.000000, 526.000000)
		registerVal2.ScoreInfoPanelTimerInternal0:setRGB(0.550000, 0.580000, 0.600000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_73D_
	local function __FUNC_8F0_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_A8A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 0.000000, 64.000000)
			arg0:setTopBottom(true, false, 0.000000, 40.000000)
			arg0:setRGB(0.550000, 0.580000, 0.600000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.ScoreInfoPanelTimerInternal0:setLeftRight(true, false, 0.000000, 64.000000)
		registerVal2.ScoreInfoPanelTimerInternal0:setTopBottom(true, false, 486.000000, 526.000000)
		registerVal2.ScoreInfoPanelTimerInternal0:setRGB(0.550000, 0.580000, 0.600000)
		__FUNC_A8A_(registerVal3, {})
	end

	registerVal5.Active = __FUNC_8F0_
	local function __FUNC_CB8_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_E52_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 0.000000, 64.000000)
			arg0:setTopBottom(true, false, 0.000000, 40.000000)
			arg0:setRGB(0.550000, 0.580000, 0.600000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.ScoreInfoPanelTimerInternal0:setLeftRight(true, false, 0.000000, 64.000000)
		registerVal2.ScoreInfoPanelTimerInternal0:setTopBottom(true, false, 486.000000, 526.000000)
		registerVal2.ScoreInfoPanelTimerInternal0:setRGB(0.550000, 0.580000, 0.600000)
		__FUNC_E52_(registerVal3, {})
	end

	registerVal5.TimeLow = __FUNC_CB8_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_1080_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ScoreInfoPanelTimerInternal0:setLeftRight(true, false, 0.000000, 64.000000)
		registerVal2.ScoreInfoPanelTimerInternal0:setTopBottom(true, false, 0.000000, 40.000000)
		registerVal2.ScoreInfoPanelTimerInternal0:setRGB(0.550000, 0.580000, 0.600000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_1080_
	local function __FUNC_122F_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_13C1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 0.000000, 64.000000)
			arg0:setTopBottom(true, false, 486.000000, 526.000000)
			arg0:setRGB(0.550000, 0.580000, 0.600000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.ScoreInfoPanelTimerInternal0:setLeftRight(true, false, 0.000000, 64.000000)
		registerVal2.ScoreInfoPanelTimerInternal0:setTopBottom(true, false, 0.000000, 40.000000)
		registerVal2.ScoreInfoPanelTimerInternal0:setRGB(0.550000, 0.580000, 0.600000)
		__FUNC_13C1_(registerVal3, {})
	end

	registerVal5.DefaultState = __FUNC_122F_
	registerVal4.Active = registerVal5
	registerVal5 = {}
	local function __FUNC_15F5_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_17B8_(arg0, arg1)
			local function __FUNC_1910_(arg0, arg1)
				local function __FUNC_1A9B_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 0.000000, 64.000000)
					arg0:setTopBottom(true, false, 0.000000, 40.000000)
					arg0:setRGB(0.880000, 0.460000, 0.480000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_1A9B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
				arg0:setRGB(0.880000, 0.460000, 0.480000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A9B_)
			end

			if arg1.interrupted then
				__FUNC_1910_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1910_)
		end

		registerVal3:completeAnimation()
		registerVal2.ScoreInfoPanelTimerInternal0:setLeftRight(true, false, 0.000000, 64.000000)
		registerVal2.ScoreInfoPanelTimerInternal0:setTopBottom(true, false, 0.000000, 40.000000)
		registerVal2.ScoreInfoPanelTimerInternal0:setRGB(0.550000, 0.580000, 0.600000)
		__FUNC_17B8_(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_15F5_
	local function __FUNC_1CC8_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_1E5D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 0.000000, 64.000000)
			arg0:setTopBottom(true, false, 486.000000, 526.000000)
			arg0:setRGB(0.550000, 0.580000, 0.600000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.ScoreInfoPanelTimerInternal0:setLeftRight(true, false, 0.000000, 64.000000)
		registerVal2.ScoreInfoPanelTimerInternal0:setTopBottom(true, false, 0.000000, 40.000000)
		registerVal2.ScoreInfoPanelTimerInternal0:setRGB(0.550000, 0.580000, 0.600000)
		__FUNC_1E5D_(registerVal3, {})
	end

	registerVal5.DefaultState = __FUNC_1CC8_
	registerVal4.TimeLow = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_2091_(arg0)
		arg0.ScoreInfoPanelTimerInternal0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2091_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

