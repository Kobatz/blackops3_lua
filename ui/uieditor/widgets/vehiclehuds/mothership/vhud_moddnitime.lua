-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_ModDNITime = registerVal1
function CoD.vhud_ModDNITime.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_ModDNITime)
	registerVal2.id = "vhud_ModDNITime"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 52.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 57.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 14.000000, 38.000000)
	registerVal3:setTopBottom(true, false, 16.000000, 40.000000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_ms_modulesdni"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.ModDNI = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 10.000000, 42.000000)
	registerVal4:setTopBottom(true, false, 30.000000, 46.000000)
	registerVal4:setAlpha(0.200000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_modulesdnibracketb"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.ModDNIBracketB = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 10.000000, 42.000000)
	registerVal5:setTopBottom(true, false, 8.000000, 24.000000)
	registerVal5:setAlpha(0.200000)
	registerVal5:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_modulesdnibrackett"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.ModDNIBracketT = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(false, false, -26.000000, 26.000000)
	registerVal6:setTopBottom(false, false, 13.000000, 22.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setText(Engine.Localize("DNI SYNC"))
	registerVal6:setTTF("fonts/escom.ttf")
	registerVal6:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal6:setShaderVector(0.000000, 0.050000, 0.400000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.TextBox0 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 9.000000, 43.000000)
	registerVal7:setTopBottom(true, false, 11.000000, 45.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_cp_hud_ms_modulesdni"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.ModDNI0 = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_C99_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_11F9_(arg0, arg1)
			local function __FUNC_13AC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 1289.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				arg0:setXRot(360.000000)
				arg0:setYRot(360.000000)
				arg0:setZRot(360.000000)
				arg0:setZoom(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_13AC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1210.000000, true, true, CoD.TweenType.Linear)
			arg0:setXRot(360.000000)
			arg0:setYRot(360.000000)
			arg0:setZRot(360.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13AC_)
		end

		registerVal3:completeAnimation()
		registerVal2.ModDNI:setAlpha(1.000000)
		registerVal2.ModDNI:setXRot(0.000000)
		registerVal2.ModDNI:setYRot(0.000000)
		registerVal2.ModDNI:setZRot(0.000000)
		registerVal2.ModDNI:setZoom(0.000000)
		__FUNC_11F9_(registerVal3, {})
		local function __FUNC_15DF_(arg0, arg1)
			local function __FUNC_17C6_(arg0, arg1)
				local function __FUNC_19E1_(arg0, arg1)
					local function __FUNC_1BC8_(arg0, arg1)
						local function __FUNC_1DDB_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 320.000000, true, false, CoD.TweenType.Back)
							end
							arg0:setLeftRight(true, false, 10.000000, 42.000000)
							arg0:setTopBottom(true, false, 30.000000, 46.000000)
							arg0:setRGB(1.000000, 1.000000, 1.000000)
							arg0:setZRot(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_1DDB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 16.050000, 48.050000)
						arg0:setTopBottom(true, false, 33.590000, 49.590000)
						arg0:setRGB(1.000000, 1.000000, 1.000000)
						arg0:setZRot(34.060000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DDB_)
					end

					if arg1.interrupted then
						__FUNC_1BC8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 360.000000, false, true, CoD.TweenType.Back)
					arg0:setLeftRight(true, false, -6.000000, 26.000000)
					arg0:setTopBottom(true, false, 20.500000, 36.500000)
					arg0:setZRot(-90.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BC8_)
				end

				if arg1.interrupted then
					__FUNC_19E1_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, -11.670000, 20.330000)
				arg0:setTopBottom(true, false, 17.130000, 33.130000)
				arg0:setRGB(0.800000, 1.000000, 0.980000)
				arg0:setZRot(-121.920000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19E1_)
			end

			if arg1.interrupted then
				__FUNC_17C6_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -8.410000, 23.590000)
			arg0:setTopBottom(true, false, 19.070000, 35.070000)
			arg0:setZRot(-103.550000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17C6_)
		end

		registerVal4:completeAnimation()
		registerVal2.ModDNIBracketB:setLeftRight(true, false, 10.000000, 42.000000)
		registerVal2.ModDNIBracketB:setTopBottom(true, false, 30.000000, 46.000000)
		registerVal2.ModDNIBracketB:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ModDNIBracketB:setZRot(0.000000)
		__FUNC_15DF_(registerVal4, {})
		local function __FUNC_2023_(arg0, arg1)
			local function __FUNC_220A_(arg0, arg1)
				local function __FUNC_2423_(arg0, arg1)
					local function __FUNC_2633_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 320.000000, true, false, CoD.TweenType.Back)
						end
						arg0:setLeftRight(true, false, 10.000000, 42.000000)
						arg0:setTopBottom(true, false, 8.000000, 24.000000)
						arg0:setRGB(1.000000, 1.000000, 1.000000)
						arg0:setZRot(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_2633_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 3.570000, 35.570000)
					arg0:setTopBottom(true, false, 3.460000, 19.460000)
					arg0:setRGB(1.000000, 1.000000, 1.000000)
					arg0:setZRot(34.060000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2633_)
				end

				if arg1.interrupted then
					__FUNC_2423_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 440.000000, false, true, CoD.TweenType.Back)
				arg0:setLeftRight(true, false, 27.000000, 59.000000)
				arg0:setTopBottom(true, false, 20.000000, 36.000000)
				arg0:setRGB(0.800000, 1.000000, 0.980000)
				arg0:setZRot(-90.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2423_)
			end

			if arg1.interrupted then
				__FUNC_220A_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 29.560000, 61.560000)
			arg0:setTopBottom(true, false, 21.810000, 37.810000)
			arg0:setZRot(-103.550000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_220A_)
		end

		registerVal5:completeAnimation()
		registerVal2.ModDNIBracketT:setLeftRight(true, false, 10.000000, 42.000000)
		registerVal2.ModDNIBracketT:setTopBottom(true, false, 8.000000, 24.000000)
		registerVal2.ModDNIBracketT:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ModDNIBracketT:setZRot(0.000000)
		__FUNC_2023_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.TextBox0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_287B_(arg0, arg1)
			local function __FUNC_2A4F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 610.000000, true, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 9.000000, 43.000000)
				arg0:setTopBottom(true, false, 11.000000, 45.000000)
				arg0:setRGB(0.800000, 1.000000, 0.980000)
				arg0:setAlpha(0.000000)
				arg0:setXRot(-360.000000)
				arg0:setYRot(-360.000000)
				arg0:setZRot(-360.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2A4F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.550000)
			arg0:setXRot(-177.660000)
			arg0:setYRot(-177.660000)
			arg0:setZRot(-177.660000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A4F_)
		end

		registerVal7:completeAnimation()
		registerVal2.ModDNI0:setLeftRight(true, false, 9.000000, 43.000000)
		registerVal2.ModDNI0:setTopBottom(true, false, 11.000000, 45.000000)
		registerVal2.ModDNI0:setRGB(0.800000, 1.000000, 0.980000)
		registerVal2.ModDNI0:setAlpha(0.000000)
		registerVal2.ModDNI0:setXRot(0.000000)
		registerVal2.ModDNI0:setYRot(0.000000)
		registerVal2.ModDNI0:setZRot(0.000000)
		__FUNC_287B_(registerVal7, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal9.DefaultClip = __FUNC_C99_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_2D00_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal9.DefaultClip = __FUNC_2D00_
	registerVal8.Hidden = registerVal9
	registerVal2.clipsPerState = registerVal8
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Hidden"
	local function __FUNC_2D62_(arg0, arg2, arg3)
		return HideVehicleReticle(registerVal2, arg1, arg3)
	end

	registerVal11.condition = __FUNC_2D62_
	registerVal10 = {registerVal11}
	registerVal2:mergeStateConditions(registerVal10)
	local function __FUNC_2DC0_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "vehicleType"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "vehicleType", true, __FUNC_2DC0_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

