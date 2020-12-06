-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1BF_(arg0, arg1)
	local function __FUNC_304_(arg1)
		local registerVal1 = math.random(1.000000, 4.000000)
		arg0:playClip(("LineFX_0" .. registerVal1))
	end

	local registerVal4 = LUI.UITimer.newElementTimer(7000.000000, false, __FUNC_304_)
	arg0.playClipTimer = registerVal4
	arg0:addElement(arg0.playClipTimer)
	local function __FUNC_3AB_(arg0)
		arg0.playClipTimer:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(arg0, "close", __FUNC_3AB_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.BM_LineLightFX = registerVal2
local function __FUNC_40E_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_LineLightFX)
	registerVal2.id = "BM_LineLightFX"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 304.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 384.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -154.440000, 152.000000)
	registerVal3:setTopBottom(true, false, -0.500000, 389.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_lineanim_line4"))
	registerVal2:addElement(registerVal3)
	registerVal2.LineLightFX04 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -154.440000, 152.000000)
	registerVal4:setTopBottom(true, false, -0.500000, 389.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_lineanim_line3"))
	registerVal2:addElement(registerVal4)
	registerVal2.LineLightFX03 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -154.440000, 154.000000)
	registerVal5:setTopBottom(true, false, -0.500000, 389.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_blackmarket_lineanim_line2"))
	registerVal2:addElement(registerVal5)
	registerVal2.LineLightFX02 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -154.440000, 152.000000)
	registerVal6:setTopBottom(true, false, -0.500000, 389.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_blackmarket_lineanim_line1"))
	registerVal2:addElement(registerVal6)
	registerVal2.LineLightFX = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, -4.440000, 0.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 413.540000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_blackmarket_lineanim_mask"))
	registerVal2:addElement(registerVal7)
	registerVal2.Mask = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_B7D_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal9.DefaultClip = __FUNC_B7D_
	local function __FUNC_BDE_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.LineLightFX04:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LineLightFX03:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.LineLightFX02:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LineLightFX:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_ED3_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 6019.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -29.000000, 25.870000)
			arg0:setTopBottom(true, true, -458.770000, 27.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.Mask:setLeftRight(true, true, -29.000000, 25.880000)
		registerVal2.Mask:setTopBottom(true, true, -23.000000, 436.630000)
		registerVal2.Mask:setAlpha(1.000000)
		__FUNC_ED3_(registerVal7, {})
	end

	registerVal9.LineFX_01 = __FUNC_BDE_
	local function __FUNC_10F5_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.LineLightFX04:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LineLightFX03:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.LineLightFX02:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LineLightFX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_13EB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 6019.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -29.000000, 25.870000)
			arg0:setTopBottom(true, true, -458.770000, 27.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.Mask:setLeftRight(true, true, -29.000000, 25.880000)
		registerVal2.Mask:setTopBottom(true, true, -23.000000, 436.630000)
		registerVal2.Mask:setAlpha(1.000000)
		__FUNC_13EB_(registerVal7, {})
	end

	registerVal9.LineFX_02 = __FUNC_10F5_
	local function __FUNC_160D_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.LineLightFX04:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LineLightFX03:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.LineLightFX02:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LineLightFX:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_1903_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 6000.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -29.000000, 25.870000)
			arg0:setTopBottom(true, true, -458.770000, 27.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.Mask:setLeftRight(true, true, -29.000000, 25.880000)
		registerVal2.Mask:setTopBottom(true, true, -23.000000, 436.630000)
		registerVal2.Mask:setAlpha(1.000000)
		__FUNC_1903_(registerVal7, {})
	end

	registerVal9.LineFX_03 = __FUNC_160D_
	local function __FUNC_1B25_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.LineLightFX04:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LineLightFX03:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.LineLightFX02:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LineLightFX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_1E1B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 6039.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -29.000000, 25.870000)
			arg0:setTopBottom(true, true, -458.770000, 27.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.Mask:setLeftRight(true, true, -29.000000, 25.880000)
		registerVal2.Mask:setTopBottom(true, true, -23.000000, 436.630000)
		registerVal2.Mask:setAlpha(1.000000)
		__FUNC_1E1B_(registerVal7, {})
	end

	registerVal9.LineFX_04 = __FUNC_1B25_
	registerVal8.DefaultState = registerVal9
	registerVal2.clipsPerState = registerVal8
	if __FUNC_1BF_ then
		__FUNC_1BF_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.BM_LineLightFX.new = __FUNC_40E_
