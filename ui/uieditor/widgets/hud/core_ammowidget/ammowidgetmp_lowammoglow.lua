-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidgetMP_LowAmmoGlow = registerVal1
function CoD.AmmoWidgetMP_LowAmmoGlow.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidgetMP_LowAmmoGlow)
	registerVal2.id = "AmmoWidgetMP_LowAmmoGlow"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 71.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 37.000000)
	local registerVal3 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.700000)
	registerVal2:addElement(registerVal3)
	registerVal2.FEButtonPanel0 = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_721_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_721_
	local function __FUNC_826_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.LowAmmo = __FUNC_826_
	local function __FUNC_92A_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_A14_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.400000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel0:setAlpha(0.000000)
		__FUNC_A14_(registerVal3, {})
	end

	registerVal5.NoAmmo = __FUNC_92A_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_BC9_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_BC9_
	local function __FUNC_CCE_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_DB8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 639.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel0:setAlpha(0.000000)
		__FUNC_DB8_(registerVal3, {})
	end

	registerVal5.LowAmmo = __FUNC_CCE_
	local function __FUNC_F6D_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_1058_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 649.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.400000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel0:setAlpha(0.000000)
		__FUNC_1058_(registerVal3, {})
	end

	registerVal5.NoAmmo = __FUNC_F6D_
	registerVal4.Hero = registerVal5
	registerVal5 = {}
	local function __FUNC_120D_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_120D_
	local function __FUNC_1312_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultState = __FUNC_1312_
	local function __FUNC_1416_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_14FB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 730.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.400000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel0:setAlpha(1.000000)
		__FUNC_14FB_(registerVal3, {})
	end

	registerVal5.NoAmmo = __FUNC_1416_
	local function __FUNC_16AD_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_1793_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel0:setAlpha(1.000000)
		__FUNC_1793_(registerVal3, {})
	end

	registerVal5.Hero = __FUNC_16AD_
	local function __FUNC_1945_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_1A2B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel0:setAlpha(1.000000)
		__FUNC_1A2B_(registerVal3, {})
	end

	registerVal5.Knife = __FUNC_1945_
	registerVal4.LowAmmo = registerVal5
	registerVal5 = {}
	local function __FUNC_1BDD_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel0:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_1BDD_
	local function __FUNC_1CE2_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_1DCC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel0:setAlpha(0.400000)
		__FUNC_1DCC_(registerVal3, {})
	end

	registerVal5.DefaultState = __FUNC_1CE2_
	local function __FUNC_1F81_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_206C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 639.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel0:setAlpha(0.400000)
		__FUNC_206C_(registerVal3, {})
	end

	registerVal5.LowAmmo = __FUNC_1F81_
	local function __FUNC_2221_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_230C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 759.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel0:setAlpha(0.400000)
		__FUNC_230C_(registerVal3, {})
	end

	registerVal5.Hero = __FUNC_2221_
	local function __FUNC_24C1_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_25AC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 759.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel0:setAlpha(0.000000)
		__FUNC_25AC_(registerVal3, {})
	end

	registerVal5.Knife = __FUNC_24C1_
	registerVal4.NoAmmo = registerVal5
	registerVal5 = {}
	local function __FUNC_2761_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_2761_
	local function __FUNC_2866_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_2950_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 639.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel0:setAlpha(0.000000)
		__FUNC_2950_(registerVal3, {})
	end

	registerVal5.LowAmmo = __FUNC_2866_
	local function __FUNC_2B05_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_2BF0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 649.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.400000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel0:setAlpha(0.000000)
		__FUNC_2BF0_(registerVal3, {})
	end

	registerVal5.NoAmmo = __FUNC_2B05_
	registerVal4.Knife = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_2DA5_(arg0)
		arg0.FEButtonPanel0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2DA5_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

