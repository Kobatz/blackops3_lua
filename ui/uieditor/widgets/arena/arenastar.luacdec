-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ArenaStar = registerVal1
function CoD.ArenaStar.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.ArenaStar)
	registerVal2.id = "ArenaStar"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 24.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 24.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 4.000000, 20.000000)
	registerVal3:setTopBottom(true, false, 4.000000, 20.000000)
	registerVal3:setImage(RegisterImage("uie_t7_arena_star_petit_grey"))
	registerVal2:addElement(registerVal3)
	registerVal2.outline = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 4.000000, 20.000000)
	registerVal4:setTopBottom(true, false, 4.000000, 20.000000)
	registerVal4:setImage(RegisterImage("uie_t7_arena_star_petit_yellow"))
	registerVal2:addElement(registerVal4)
	registerVal2.active = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_7DD_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.outline:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.active:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_7DD_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_92F_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.outline:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.active:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_92F_
	registerVal5.Invisible = registerVal6
	registerVal6 = {}
	local function __FUNC_A7F_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.outline:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.active:setRGB(1.000000, 0.740000, 0.010000)
		registerVal2.active:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_A7F_
	registerVal5.Inactive = registerVal6
	registerVal6 = {}
	local function __FUNC_C12_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.outline:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_E51_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 2000.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint"))
			arg0:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.active:setAlpha(1.000000)
		registerVal2.active:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint"))
		registerVal2.active:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_E51_(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_C12_
	registerVal5.Earned = registerVal6
	registerVal6 = {}
	local function __FUNC_10D7_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_11B8_(arg0, arg1)
			local function __FUNC_1310_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1310_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1310_)
		end

		registerVal4:completeAnimation()
		registerVal2.active:setAlpha(0.000000)
		__FUNC_11B8_(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_10D7_
	registerVal5.NewlyEarned = registerVal6
	registerVal6 = {}
	local function __FUNC_14C5_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_15A3_(arg0, arg1)
			local function __FUNC_16F8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 339.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_16F8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 660.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16F8_)
		end

		registerVal4:completeAnimation()
		registerVal2.active:setAlpha(1.000000)
		__FUNC_15A3_(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_14C5_
	registerVal5.Lost = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Invisible"
	local function __FUNC_18AD_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal8.condition = __FUNC_18AD_
	local registerVal9 = {}
	registerVal9.stateName = "Inactive"
	local function __FUNC_18F9_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "earned")
		if not registerVal3 then
			registerVal3 = IsSelfModelValueTrue(arg2, arg1, "lost")
		else
		end
		return true
	end

	registerVal9.condition = __FUNC_18F9_
	local registerVal10 = {}
	registerVal10.stateName = "Earned"
	local function __FUNC_19A4_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "earned")
		if registerVal3 then
			registerVal3 = IsSelfModelValueTrue(arg2, arg1, "new")
		end
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_19A4_
	local registerVal11 = {}
	registerVal11.stateName = "NewlyEarned"
	local function __FUNC_1A43_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "earned")
		if registerVal3 then
			registerVal3 = IsSelfModelValueTrue(arg2, arg1, "new")
		end
		return registerVal3
	end

	registerVal11.condition = __FUNC_1A43_
	local registerVal12 = {}
	registerVal12.stateName = "Lost"
	local function __FUNC_1ADB_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "lost")
	end

	registerVal12.condition = __FUNC_1ADB_
	registerVal7 = {registerVal8, registerVal9, registerVal10, registerVal11, registerVal12}
	registerVal2:mergeStateConditions(registerVal7)
	local function __FUNC_1B48_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "earned"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "earned", true, __FUNC_1B48_)
	local function __FUNC_1C64_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lost"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "lost", true, __FUNC_1C64_)
	local function __FUNC_1D7E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "new"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "new", true, __FUNC_1D7E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

