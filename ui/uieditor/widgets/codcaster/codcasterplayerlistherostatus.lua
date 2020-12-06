-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CodCasterPlayerListHeroStatus = registerVal1
function CoD.CodCasterPlayerListHeroStatus.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CodCasterPlayerListHeroStatus)
	registerVal2.id = "CodCasterPlayerListHeroStatus"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 10.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 20.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -313.000000, 2.500000)
	registerVal3:setTopBottom(false, false, 10.000000, -10.000000)
	registerVal3:setRGB(1.000000, 0.930000, 0.000000)
	registerVal3:setAlpha(0.300000)
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_gradient"))
	registerVal3:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 1.000000, 1.000000, 0.000000, 1.000000)
	registerVal3:setShaderVector(2.000000, 0.400000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.YellowFlash = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -5.000000, 25.910000)
	registerVal4:setTopBottom(false, false, -64.520000, 64.520000)
	registerVal4:setRGB(1.000000, 0.930000, 0.000000)
	registerVal4:setAlpha(0.200000)
	registerVal4:setZRot(90.000000)
	registerVal4:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.GlowOrangeOver = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -5.000000, 0.500000)
	registerVal5:setTopBottom(false, false, -9.000000, 9.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.400000)
	registerVal2:addElement(registerVal5)
	registerVal2.Background = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -3.500000, -2.000000)
	registerVal6:setTopBottom(false, false, -8.000000, 8.000000)
	registerVal6:setRGB(1.000000, 0.930000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.Pulse = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -3.500000, -2.000000)
	registerVal7:setTopBottom(false, false, -8.000000, 8.000000)
	registerVal7:setZRot(180.000000)
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	registerVal7:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_C53_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal8 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal9 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal7:setShaderVector(2.000000, ScaleVector(0.010000, registerVal7, registerVal8, registerVal9, CoD.GetVectorComponentFromString(registerVal1, 4.000000)))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "heroProgress", true, __FUNC_C53_)
	registerVal2:addElement(registerVal7)
	registerVal2.Fill = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_DC9_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.YellowFlash:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.GlowOrangeOver:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.Pulse:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Fill:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_DC9_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_FD1_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_12CC_(arg0, arg1)
			local function __FUNC_1447_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1447_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1447_)
		end

		registerVal3:completeAnimation()
		registerVal2.YellowFlash:setAlpha(0.300000)
		__FUNC_12CC_(registerVal3, {})
		local function __FUNC_15F9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.GlowOrangeOver:setAlpha(0.300000)
		__FUNC_15F9_(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.Pulse:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.Pulse:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.Pulse:setAlpha(0.000000)
		registerVal2.Pulse:setScale(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Fill:setRGB(1.000000, 0.940000, 0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal9.DefaultClip = __FUNC_FD1_
	registerVal8.Active = registerVal9
	registerVal9 = {}
	local function __FUNC_17AD_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_1AA8_(arg0, arg1)
			local function __FUNC_1C23_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1C23_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C23_)
		end

		registerVal3:completeAnimation()
		registerVal2.YellowFlash:setAlpha(0.300000)
		__FUNC_1AA8_(registerVal3, {})
		local function __FUNC_1DD5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.GlowOrangeOver:setAlpha(0.300000)
		__FUNC_1DD5_(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.Pulse:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.Pulse:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.Pulse:setAlpha(0.000000)
		registerVal2.Pulse:setScale(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Fill:setRGB(1.000000, 0.950000, 0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal9.DefaultClip = __FUNC_17AD_
	registerVal8.Primed = registerVal9
	registerVal9 = {}
	local function __FUNC_1F89_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_21B9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, true, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.200000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.YellowFlash:setAlpha(0.000000)
		__FUNC_21B9_(registerVal3, {})
		local function __FUNC_236D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.300000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.GlowOrangeOver:setAlpha(0.000000)
		__FUNC_236D_(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.Pulse:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_2521_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 0.970000, 0.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.Fill:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Fill:setAlpha(1.000000)
		__FUNC_2521_(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_1F89_
	local function __FUNC_2703_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_29CD_(arg0, arg1)
			local function __FUNC_2B47_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2B47_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B47_)
		end

		registerVal3:completeAnimation()
		registerVal2.YellowFlash:setAlpha(0.300000)
		__FUNC_29CD_(registerVal3, {})
		local function __FUNC_2CF9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.GlowOrangeOver:setAlpha(0.300000)
		__FUNC_2CF9_(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.Pulse:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.Pulse:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.Pulse:setAlpha(0.000000)
		registerVal2.Pulse:setScale(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Fill:setRGB(1.000000, 0.950000, 0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.Charging = __FUNC_2703_
	registerVal8.Ready = registerVal9
	registerVal9 = {}
	local function __FUNC_2EAD_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.YellowFlash:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.GlowOrangeOver:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.Pulse:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Fill:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Fill:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_2EAD_
	registerVal8.Charging = registerVal9
	registerVal2.clipsPerState = registerVal8
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Active"
	local function __FUNC_30E9_(arg0, arg2, arg3)
		return IsSelfModelValueEnumBitSet(arg2, arg1, "heroState", Enum.HeroState.HERO_STATE_ACTIVE)
	end

	registerVal11.condition = __FUNC_30E9_
	local registerVal12 = {}
	registerVal12.stateName = "Primed"
	local function __FUNC_31BB_(arg0, arg2, arg3)
		return IsSelfModelValueEnumBitSet(arg2, arg1, "heroState", Enum.HeroState.HERO_STATE_PRIMED)
	end

	registerVal12.condition = __FUNC_31BB_
	local registerVal13 = {}
	registerVal13.stateName = "Ready"
	local function __FUNC_328B_(arg0, arg2, arg3)
		return IsSelfModelValueEnumBitSet(arg2, arg1, "heroState", Enum.HeroState.HERO_STATE_READY)
	end

	registerVal13.condition = __FUNC_328B_
	local registerVal14 = {}
	registerVal14.stateName = "Charging"
	local function __FUNC_335A_(arg0, arg2, arg3)
		return IsSelfModelValueEnumBitSet(arg2, arg1, "heroState", Enum.HeroState.HERO_STATE_CHARGING)
	end

	registerVal14.condition = __FUNC_335A_
	registerVal10 = {registerVal11, registerVal12, registerVal13, registerVal14}
	registerVal2:mergeStateConditions(registerVal10)
	local function __FUNC_342D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "heroState"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "heroState", true, __FUNC_342D_)
	local function __FUNC_354B_(arg0)
		arg0.Fill:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_354B_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

