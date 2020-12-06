-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_siegebot_damage_top = registerVal1
function CoD.vhud_siegebot_damage_top.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_siegebot_damage_top)
	registerVal2.id = "vhud_siegebot_damage_top"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 106.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 106.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 106.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 106.000000)
	registerVal3:setImage(RegisterImage("uie_t7_mp_hud_vehicle_siegebot_circleinner"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.circle = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 106.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 106.000000)
	registerVal4:setImage(RegisterImage("uie_t7_mp_hud_vehicle_siegebot_icontop"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.none = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 106.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 106.000000)
	registerVal5:setRGB(0.970000, 0.850000, 0.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_mp_hud_vehicle_siegebot_damageiconyellow"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.low = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 106.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 106.000000)
	registerVal6:setRGB(1.000000, 0.400000, 0.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_mp_hud_vehicle_siegebot_damageiconorange"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.medium = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 0.000000, 106.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 106.000000)
	registerVal7:setRGB(0.670000, 0.140000, 0.130000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_mp_hud_vehicle_siegebot_damageiconred"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.high = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 81.680000, 84.680000)
	registerVal8:setTopBottom(true, false, 32.920000, 35.920000)
	registerVal8:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_centerinnerringelementpix"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.dot = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 19.680000, 22.680000)
	registerVal9:setTopBottom(true, false, 32.920000, 35.920000)
	registerVal9:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_centerinnerringelementpix"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.Image0 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 81.680000, 84.680000)
	registerVal10:setTopBottom(true, false, 68.920000, 71.920000)
	registerVal10:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_centerinnerringelementpix"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.Image1 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 19.680000, 22.680000)
	registerVal11:setTopBottom(true, false, 68.920000, 71.920000)
	registerVal11:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_centerinnerringelementpix"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.Image2 = registerVal11
	local registerVal12 = {}
	local registerVal13 = {}
	local function __FUNC_1004_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.none:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.low:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.medium:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.high:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal13.DefaultClip = __FUNC_1004_
	local function __FUNC_11FC_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal13.StartUp = __FUNC_11FC_
	local function __FUNC_125E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal13.Zoom = __FUNC_125E_
	registerVal12.DefaultState = registerVal13
	registerVal13 = {}
	local function __FUNC_12BE_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.none:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.low:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.medium:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_150D_(arg0, arg1)
			local function __FUNC_1687_(arg0, arg1)
				local function __FUNC_17FF_(arg0, arg1)
					local function __FUNC_1977_(arg0, arg1)
						local function __FUNC_1B12_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							arg0:setScale(1.300000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_1B12_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.400000)
						arg0:setScale(1.180000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B12_)
					end

					if arg1.interrupted then
						__FUNC_1977_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1977_)
				end

				if arg1.interrupted then
					__FUNC_17FF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.320000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17FF_)
			end

			if arg1.interrupted then
				__FUNC_1687_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1687_)
		end

		registerVal7:completeAnimation()
		registerVal2.high:setAlpha(0.000000)
		registerVal2.high:setScale(1.000000)
		__FUNC_150D_(registerVal7, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal13.DefaultClip = __FUNC_12BE_
	registerVal12.damage_high = registerVal13
	registerVal13 = {}
	local function __FUNC_1CE8_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.none:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.low:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.medium:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.high:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal13.DefaultClip = __FUNC_1CE8_
	registerVal12.damage_medium = registerVal13
	registerVal13 = {}
	local function __FUNC_1EE5_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.none:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.low:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.medium:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.high:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal13.DefaultClip = __FUNC_1EE5_
	registerVal12.damage_low = registerVal13
	registerVal13 = {}
	local function __FUNC_20E1_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal13.DefaultClip = __FUNC_20E1_
	registerVal12.EMP = registerVal13
	registerVal2.clipsPerState = registerVal12
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "damage_high"
	local function __FUNC_2142_(arg0, arg2, arg3)
		return IsSelfModelValueGreaterThanOrEqualTo(arg2, arg1, "damage", 0.750000)
	end

	registerVal15.condition = __FUNC_2142_
	local registerVal16 = {}
	registerVal16.stateName = "damage_medium"
	local function __FUNC_21CB_(arg0, arg2, arg3)
		return IsSelfModelValueGreaterThanOrEqualTo(arg2, arg1, "damage", 0.500000)
	end

	registerVal16.condition = __FUNC_21CB_
	local registerVal17 = {}
	registerVal17.stateName = "damage_low"
	local function __FUNC_2253_(arg0, arg2, arg3)
		return IsSelfModelValueGreaterThanOrEqualTo(arg2, arg1, "damage", 0.250000)
	end

	registerVal17.condition = __FUNC_2253_
	local registerVal18 = {}
	registerVal18.stateName = "EMP"
	local function __FUNC_22DB_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_EMP_ACTIVE)
		return registerVal3
	end

	registerVal18.condition = __FUNC_22DB_
	registerVal14 = {registerVal15, registerVal16, registerVal17, registerVal18}
	registerVal2:mergeStateConditions(registerVal14)
	local function __FUNC_23A7_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "damage"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "damage", true, __FUNC_23A7_)
	registerVal15 = Engine.GetModelForController(arg1)
	registerVal14 = Engine.GetModel(registerVal15, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE))
	local function __FUNC_24C0_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal14, __FUNC_24C0_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

