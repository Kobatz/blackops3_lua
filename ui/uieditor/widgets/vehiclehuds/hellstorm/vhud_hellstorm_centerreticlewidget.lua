-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_hellstorm_CenterReticleWidget = registerVal1
function CoD.vhud_hellstorm_CenterReticleWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.vhud_hellstorm_CenterReticleWidget)
	registerVal2.id = "vhud_hellstorm_CenterReticleWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 68.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 68.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -34.000000, 34.000000)
	registerVal3:setTopBottom(false, false, -34.000000, 34.000000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_hellstorm_centerreticlehashring"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_clock_normal"))
	registerVal3:setShaderVector(0.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.CenterReticleHash = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -34.000000, 34.000000)
	registerVal4:setTopBottom(false, false, -34.000000, 34.000000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_hellstorm_centerreticlehashring"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_clock_normal"))
	registerVal4:setShaderVector(0.000000, -0.500000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.450000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 0.620000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 2.050000, -0.450000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.CenterReticleHash0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -34.000000, 34.000000)
	registerVal5:setTopBottom(false, false, -34.000000, 34.000000)
	registerVal5:setImage(RegisterImage("uie_t7_cp_hud_vehicle_hellstorm_centerreticletarget"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.CenterReticleTarget = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_AD3_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_E7C_(arg0, arg1)
			local function __FUNC_1064_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_clock_normal"))
				arg0:setShaderVector(0.000000, 1.170000, 0.000000, 0.000000, 0.000000)
				arg0:setShaderVector(1.000000, 0.450000, 0.000000, 0.000000, 0.000000)
				arg0:setShaderVector(2.000000, 0.620000, 0.000000, 0.000000, 0.000000)
				arg0:setShaderVector(3.000000, 3.540000, -0.460000, 0.000000, 0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1064_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
			arg0:setShaderVector(0.000000, 0.350000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(2.000000, 0.560000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(3.000000, 3.695493, -0.295070, 0.000000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1064_)
		end

		registerVal3:completeAnimation()
		registerVal2.CenterReticleHash:setMaterial(LUI.UIImage.GetCachedMaterial("uie_clock_normal"))
		registerVal2.CenterReticleHash:setShaderVector(0.000000, -0.500000, 0.000000, 0.000000, 0.000000)
		registerVal2.CenterReticleHash:setShaderVector(1.000000, 0.450000, 0.000000, 0.000000, 0.000000)
		registerVal2.CenterReticleHash:setShaderVector(2.000000, 0.620000, 0.000000, 0.000000, 0.000000)
		registerVal2.CenterReticleHash:setShaderVector(3.000000, 2.050000, -0.450000, 0.000000, 0.000000)
		__FUNC_E7C_(registerVal3, {})
		local function __FUNC_1340_(arg0, arg1)
			local function __FUNC_1528_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_clock_normal"))
				arg0:setShaderVector(0.000000, 1.170000, 0.000000, 0.000000, 0.000000)
				arg0:setShaderVector(1.000000, 0.450000, 0.000000, 0.000000, 0.000000)
				arg0:setShaderVector(2.000000, 0.620000, 0.000000, 0.000000, 0.000000)
				arg0:setShaderVector(3.000000, 3.540000, -0.460000, 0.000000, 0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1528_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
			arg0:setShaderVector(0.000000, 0.350000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(2.000000, 0.560000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(3.000000, 3.700000, -0.300000, 0.000000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1528_)
		end

		registerVal4:completeAnimation()
		registerVal2.CenterReticleHash0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_clock_normal"))
		registerVal2.CenterReticleHash0:setShaderVector(0.000000, -0.500000, 0.000000, 0.000000, 0.000000)
		registerVal2.CenterReticleHash0:setShaderVector(1.000000, 0.450000, 0.000000, 0.000000, 0.000000)
		registerVal2.CenterReticleHash0:setShaderVector(2.000000, 0.620000, 0.000000, 0.000000, 0.000000)
		registerVal2.CenterReticleHash0:setShaderVector(3.000000, 2.050000, -0.450000, 0.000000, 0.000000)
		__FUNC_1340_(registerVal4, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal7.DefaultClip = __FUNC_AD3_
	local function __FUNC_1804_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultState = __FUNC_1804_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_1866_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_1866_
	local function __FUNC_18C6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultState = __FUNC_18C6_
	registerVal6.LowAltitude = registerVal7
	registerVal7 = {}
	local function __FUNC_1926_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_1926_
	local function __FUNC_1986_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultState = __FUNC_1986_
	registerVal6.LowAltitude_Slow = registerVal7
	registerVal7 = {}
	local function __FUNC_19E6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_19E6_
	local function __FUNC_1A46_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultState = __FUNC_1A46_
	registerVal6.LowAltitude_Boost = registerVal7
	registerVal7 = {}
	local function __FUNC_1AA6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_1AA6_
	local function __FUNC_1B06_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultState = __FUNC_1B06_
	registerVal6.MediumAltitude = registerVal7
	registerVal7 = {}
	local function __FUNC_1B66_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_1B66_
	local function __FUNC_1BC6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultState = __FUNC_1BC6_
	registerVal6.MediumAltitude_Slow = registerVal7
	registerVal7 = {}
	local function __FUNC_1C26_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_1C26_
	local function __FUNC_1C86_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultState = __FUNC_1C86_
	registerVal6.MediumAltitude_Boost = registerVal7
	registerVal7 = {}
	local function __FUNC_1CE6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_1CE6_
	local function __FUNC_1D46_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultState = __FUNC_1D46_
	registerVal6.HighAltitude = registerVal7
	registerVal7 = {}
	local function __FUNC_1DA6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_1DA6_
	local function __FUNC_1E06_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultState = __FUNC_1E06_
	registerVal6.HighAltitude_Slow = registerVal7
	registerVal7 = {}
	local function __FUNC_1E66_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_1E66_
	local function __FUNC_1EC6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultState = __FUNC_1EC6_
	registerVal6.HighAltitude_Boost = registerVal7
	registerVal2.clipsPerState = registerVal6
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

