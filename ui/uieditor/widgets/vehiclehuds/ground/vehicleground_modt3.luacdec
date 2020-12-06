-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.VehicleGround_ModT3 = registerVal1
function CoD.VehicleGround_ModT3.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.VehicleGround_ModT3)
	registerVal2.id = "VehicleGround_ModT3"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 48.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 36.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 48.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 36.000000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_modulest3"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image2 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 3.000000, 11.000000)
	registerVal4:setTopBottom(true, false, 21.000000, 29.000000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_modulespixel"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image0 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_761_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_8D0_(arg0, arg1)
			local function __FUNC_A60_(arg0, arg1)
				local function __FUNC_BB8_(arg0, arg1)
					local function __FUNC_D48_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 1049.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 3.000000, 11.000000)
						arg0:setTopBottom(true, false, 21.000000, 29.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_D48_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 500.000000, true, true, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 3.000000, 11.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D48_)
				end

				if arg1.interrupted then
					__FUNC_BB8_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BB8_)
			end

			if arg1.interrupted then
				__FUNC_A60_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 22.000000, 30.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A60_)
		end

		registerVal4:completeAnimation()
		registerVal2.Image0:setLeftRight(true, false, 3.000000, 11.000000)
		registerVal2.Image0:setTopBottom(true, false, 21.000000, 29.000000)
		__FUNC_8D0_(registerVal4, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal6.DefaultClip = __FUNC_761_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_F4A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_F4A_
	registerVal5.Hidden = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Hidden"
	local function __FUNC_FAA_(arg0, arg2, arg3)
		return HideVehicleReticle(registerVal2, arg1, arg3)
	end

	registerVal8.condition = __FUNC_FAA_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	local function __FUNC_1008_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "vehicleType"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "vehicleType", true, __FUNC_1008_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

