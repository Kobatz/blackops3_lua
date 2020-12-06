-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BlackMarket.BM_TriangleMask")
local function __FUNC_216_(arg0, arg1)
	local function __FUNC_35C_(arg1)
		local registerVal1 = math.random(1.000000, 4.000000)
		arg0:playClip(("LineFX_0" .. registerVal1))
	end

	local registerVal4 = LUI.UITimer.newElementTimer(8000.000000, false, __FUNC_35C_)
	arg0.playClipTimer = registerVal4
	arg0:addElement(arg0.playClipTimer)
	local function __FUNC_403_(arg0)
		arg0.playClipTimer:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(arg0, "close", __FUNC_403_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.BM_LineLight2FX = registerVal2
local function __FUNC_466_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_LineLight2FX)
	registerVal2.id = "BM_LineLight2FX"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 312.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 400.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -151.500000, 150.500000)
	registerVal3:setTopBottom(true, false, 1.000000, 387.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_triangleanim"))
	registerVal2:addElement(registerVal3)
	registerVal2.LineLightFX04 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -151.500000, 150.500000)
	registerVal4:setTopBottom(true, false, 1.000000, 387.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_triangleanim"))
	registerVal2:addElement(registerVal4)
	registerVal2.LineLightFX03 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -151.500000, 150.500000)
	registerVal5:setTopBottom(true, false, 1.000000, 387.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_blackmarket_triangleanim"))
	registerVal2:addElement(registerVal5)
	registerVal2.LineLightFX02 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -151.500000, 150.500000)
	registerVal6:setTopBottom(true, false, 1.000000, 387.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_blackmarket_triangleanim"))
	registerVal2:addElement(registerVal6)
	registerVal2.LineLightFX = registerVal6
	local registerVal7 = CoD.BM_TriangleMask.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 0.000000, 312.000000)
	registerVal7:setTopBottom(true, false, 178.000000, 786.000000)
	registerVal7:setAlpha(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.BMTriangleMask = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_B9A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal9.DefaultClip = __FUNC_B9A_
	local function __FUNC_BFA_()
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
		local function __FUNC_EF4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 6079.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 0.000000, 312.000000)
			arg0:setTopBottom(true, false, -344.000000, 264.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.BMTriangleMask:setLeftRight(true, false, 0.000000, 312.000000)
		registerVal2.BMTriangleMask:setTopBottom(true, false, 144.000000, 752.000000)
		registerVal2.BMTriangleMask:setAlpha(1.000000)
		__FUNC_EF4_(registerVal7, {})
	end

	registerVal9.LineFX_01 = __FUNC_BFA_
	local function __FUNC_1119_()
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
		local function __FUNC_1414_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 6079.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 0.000000, 312.000000)
			arg0:setTopBottom(true, false, -344.000000, 264.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.BMTriangleMask:setLeftRight(true, false, 0.000000, 312.000000)
		registerVal2.BMTriangleMask:setTopBottom(true, false, 144.000000, 752.000000)
		registerVal2.BMTriangleMask:setAlpha(1.000000)
		__FUNC_1414_(registerVal7, {})
	end

	registerVal9.LineFX_02 = __FUNC_1119_
	local function __FUNC_1639_()
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
		registerVal2.LineLightFX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_1934_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 6079.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 0.000000, 312.000000)
			arg0:setTopBottom(true, false, -344.000000, 264.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.BMTriangleMask:setLeftRight(true, false, 0.000000, 312.000000)
		registerVal2.BMTriangleMask:setTopBottom(true, false, 144.000000, 752.000000)
		registerVal2.BMTriangleMask:setAlpha(1.000000)
		__FUNC_1934_(registerVal7, {})
	end

	registerVal9.LineFX_03 = __FUNC_1639_
	local function __FUNC_1B59_()
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
		local function __FUNC_1E54_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 6079.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 0.000000, 312.000000)
			arg0:setTopBottom(true, false, -344.000000, 264.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.BMTriangleMask:setLeftRight(true, false, 0.000000, 312.000000)
		registerVal2.BMTriangleMask:setTopBottom(true, false, 144.000000, 752.000000)
		registerVal2.BMTriangleMask:setAlpha(1.000000)
		__FUNC_1E54_(registerVal7, {})
	end

	registerVal9.LineFX_04 = __FUNC_1B59_
	registerVal8.DefaultState = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_2079_(arg0)
		arg0.BMTriangleMask:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2079_)
	if __FUNC_216_ then
		__FUNC_216_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.BM_LineLight2FX.new = __FUNC_466_
