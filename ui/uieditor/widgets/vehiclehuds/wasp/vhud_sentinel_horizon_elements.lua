-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_sentinel_horizon_elements = registerVal1
function CoD.vhud_sentinel_horizon_elements.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.vhud_sentinel_horizon_elements)
	registerVal2.id = "vhud_sentinel_horizon_elements"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 840.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 24.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -21.500000, 20.500000)
	registerVal3:setTopBottom(false, false, -12.000000, 12.000000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_centerreticleline"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.CenterReticleLine = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, 289.630000, 318.630000)
	registerVal4:setTopBottom(false, false, -9.170000, 10.170000)
	registerVal4:setAlpha(0.400000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_outsidearrow"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.RightArrow = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -317.370000, -288.370000)
	registerVal5:setTopBottom(false, false, -8.170000, 11.170000)
	registerVal5:setAlpha(0.400000)
	registerVal5:setZRot(180.000000)
	registerVal5:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_outsidearrow"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.LeftArrow = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, 314.380000, 419.880000)
	registerVal6:setTopBottom(false, false, -6.250000, 9.990000)
	registerVal6:setRGB(0.600000, 0.820000, 0.910000)
	registerVal6:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_outsidehashlinesr4"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.OutsideHashLineR5 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -419.880000, -314.380000)
	registerVal7:setTopBottom(false, false, -7.620000, 8.620000)
	registerVal7:setRGB(0.600000, 0.820000, 0.910000)
	registerVal7:setAlpha(0.700000)
	registerVal7:setZRot(180.000000)
	registerVal7:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_outsidehashlinesr4"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.OutsideHashLineR50 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, 143.940000, 249.440000)
	registerVal8:setTopBottom(false, false, -6.250000, 9.990000)
	registerVal8:setRGB(0.600000, 0.820000, 0.910000)
	registerVal8:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_outsidehashlinesr4"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.OutsideLineHorizonR = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, -252.060000, -146.560000)
	registerVal9:setTopBottom(false, false, -6.250000, 9.990000)
	registerVal9:setRGB(0.600000, 0.820000, 0.910000)
	registerVal9:setZRot(180.000000)
	registerVal9:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_outsidehashlinesr4"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.OutsideLineHorizonL = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_C91_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal11.DefaultClip = __FUNC_C91_
	local function __FUNC_CF2_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_119B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
		registerVal3:setAlpha(0.000000)
		registerVal3:registerEventHandler("transition_complete_keyframe", __FUNC_119B_)
		local function __FUNC_134D_(arg0, arg1)
			local function __FUNC_14C7_(arg0, arg1)
				local function __FUNC_163F_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.400000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_163F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_163F_)
			end

			if arg1.interrupted then
				__FUNC_14C7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.400000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14C7_)
		end

		registerVal4:beginAnimation("keyframe", 460.000000, false, false, CoD.TweenType.Linear)
		registerVal4:setAlpha(0.000000)
		registerVal4:registerEventHandler("transition_complete_keyframe", __FUNC_134D_)
		local function __FUNC_17F1_(arg0, arg1)
			local function __FUNC_196B_(arg0, arg1)
				local function __FUNC_1AE3_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.400000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_1AE3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AE3_)
			end

			if arg1.interrupted then
				__FUNC_196B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.400000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_196B_)
		end

		registerVal5:beginAnimation("keyframe", 460.000000, false, false, CoD.TweenType.Linear)
		registerVal5:setAlpha(0.000000)
		registerVal5:registerEventHandler("transition_complete_keyframe", __FUNC_17F1_)
		local function __FUNC_1C95_(arg0, arg1)
			local function __FUNC_1E0F_(arg0, arg1)
				local function __FUNC_1F87_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, 315.750000, 421.250000)
					arg0:setTopBottom(false, false, -6.250000, 9.990000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_1F87_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F87_)
			end

			if arg1.interrupted then
				__FUNC_1E0F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E0F_)
		end

		registerVal6:beginAnimation("keyframe", 550.000000, false, false, CoD.TweenType.Linear)
		registerVal6:setLeftRight(false, false, 315.750000, 421.250000)
		registerVal6:setTopBottom(false, false, -6.250000, 9.990000)
		registerVal6:setAlpha(0.000000)
		registerVal6:registerEventHandler("transition_complete_keyframe", __FUNC_1C95_)
		local function __FUNC_21A9_(arg0, arg1)
			local function __FUNC_2323_(arg0, arg1)
				local function __FUNC_249B_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -418.510000, -313.010000)
					arg0:setTopBottom(false, false, -7.620000, 8.620000)
					arg0:setAlpha(0.700000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_249B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_249B_)
			end

			if arg1.interrupted then
				__FUNC_2323_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2323_)
		end

		registerVal7:beginAnimation("keyframe", 550.000000, false, false, CoD.TweenType.Linear)
		registerVal7:setLeftRight(false, false, -418.510000, -313.010000)
		registerVal7:setTopBottom(false, false, -7.620000, 8.620000)
		registerVal7:setAlpha(0.000000)
		registerVal7:registerEventHandler("transition_complete_keyframe", __FUNC_21A9_)
		local function __FUNC_26BD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:beginAnimation("keyframe", 469.000000, false, false, CoD.TweenType.Linear)
		registerVal8:setAlpha(0.000000)
		registerVal8:registerEventHandler("transition_complete_keyframe", __FUNC_26BD_)
		local function __FUNC_2871_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:beginAnimation("keyframe", 469.000000, false, false, CoD.TweenType.Linear)
		registerVal9:setAlpha(0.000000)
		registerVal9:registerEventHandler("transition_complete_keyframe", __FUNC_2871_)
	end

	registerVal11.StartUp = __FUNC_CF2_
	local function __FUNC_2A25_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_2FB6_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -21.500000, 20.500000)
			arg0:setTopBottom(false, false, -12.000000, 12.000000)
			arg0:setZRot(180.000000)
			arg0:setZoom(-200.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.CenterReticleLine:setLeftRight(false, false, -21.500000, 20.500000)
		registerVal2.CenterReticleLine:setTopBottom(false, false, -12.000000, 12.000000)
		registerVal2.CenterReticleLine:setZRot(0.000000)
		registerVal2.CenterReticleLine:setZoom(0.000000)
		__FUNC_2FB6_(registerVal3, {})
		local function __FUNC_31FA_(arg0, arg1)
			local function __FUNC_3350_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, 370.250000, 399.250000)
				arg0:setTopBottom(false, false, -9.170000, 10.170000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3350_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3350_)
		end

		registerVal4:completeAnimation()
		registerVal2.RightArrow:setLeftRight(false, false, 291.000000, 320.000000)
		registerVal2.RightArrow:setTopBottom(false, false, -9.170000, 10.170000)
		__FUNC_31FA_(registerVal4, {})
		local function __FUNC_3552_(arg0, arg1)
			local function __FUNC_36A8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -391.750000, -362.750000)
				arg0:setTopBottom(false, false, -8.170000, 11.170000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_36A8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36A8_)
		end

		registerVal5:completeAnimation()
		registerVal2.LeftArrow:setLeftRight(false, false, -316.000000, -287.000000)
		registerVal2.LeftArrow:setTopBottom(false, false, -8.170000, 11.170000)
		__FUNC_3552_(registerVal5, {})
		local function __FUNC_38AA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 234.750000, 340.250000)
			arg0:setTopBottom(false, false, -6.250000, 9.990000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.OutsideHashLineR5:setLeftRight(false, false, 315.750000, 421.250000)
		registerVal2.OutsideHashLineR5:setTopBottom(false, false, -6.250000, 9.990000)
		registerVal2.OutsideHashLineR5:setAlpha(1.000000)
		__FUNC_38AA_(registerVal6, {})
		local function __FUNC_3ACD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -333.510000, -228.010000)
			arg0:setTopBottom(false, false, -7.620000, 8.620000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.OutsideHashLineR50:setLeftRight(false, false, -418.510000, -313.010000)
		registerVal2.OutsideHashLineR50:setTopBottom(false, false, -7.620000, 8.620000)
		__FUNC_3ACD_(registerVal7, {})
		local function __FUNC_3CCE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 111.900000, 217.400000)
			arg0:setTopBottom(false, false, -6.250000, 9.990000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.OutsideLineHorizonR:setLeftRight(false, false, 145.310000, 250.810000)
		registerVal2.OutsideLineHorizonR:setTopBottom(false, false, -6.250000, 9.990000)
		__FUNC_3CCE_(registerVal8, {})
		local function __FUNC_3ECE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -219.690000, -114.190000)
			arg0:setTopBottom(false, false, -6.250000, 9.990000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.OutsideLineHorizonL:setLeftRight(false, false, -250.690000, -145.190000)
		registerVal2.OutsideLineHorizonL:setTopBottom(false, false, -6.250000, 9.990000)
		__FUNC_3ECE_(registerVal9, {})
	end

	registerVal11.Zoom = __FUNC_2A25_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_40CE_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.CenterReticleLine:setLeftRight(false, false, -18.000000, 17.000000)
		registerVal2.CenterReticleLine:setTopBottom(false, false, -11.500000, 12.500000)
		registerVal2.CenterReticleLine:setZRot(180.000000)
		registerVal2.CenterReticleLine:setZoom(-200.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.RightArrow:setLeftRight(false, false, 370.250000, 399.250000)
		registerVal2.RightArrow:setTopBottom(false, false, -9.170000, 10.170000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.LeftArrow:setLeftRight(false, false, -391.750000, -362.750000)
		registerVal2.LeftArrow:setTopBottom(false, false, -8.170000, 11.170000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.OutsideHashLineR5:setLeftRight(false, false, 234.750000, 340.250000)
		registerVal2.OutsideHashLineR5:setTopBottom(false, false, -6.250000, 9.990000)
		registerVal2.OutsideHashLineR5:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.OutsideHashLineR50:setLeftRight(false, false, -333.510000, -228.010000)
		registerVal2.OutsideHashLineR50:setTopBottom(false, false, -7.620000, 8.620000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.OutsideLineHorizonR:setLeftRight(false, false, 111.900000, 217.400000)
		registerVal2.OutsideLineHorizonR:setTopBottom(false, false, -6.250000, 9.990000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.OutsideLineHorizonL:setLeftRight(false, false, -219.690000, -114.190000)
		registerVal2.OutsideLineHorizonL:setTopBottom(false, false, -6.250000, 9.990000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_40CE_
	local function __FUNC_4695_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_4C2B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -21.500000, 20.500000)
			arg0:setTopBottom(false, false, -12.000000, 12.000000)
			arg0:setZRot(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.CenterReticleLine:setLeftRight(false, false, -21.500000, 20.500000)
		registerVal2.CenterReticleLine:setTopBottom(false, false, -12.000000, 12.000000)
		registerVal2.CenterReticleLine:setZRot(180.000000)
		registerVal2.CenterReticleLine:setZoom(-200.000000)
		__FUNC_4C2B_(registerVal3, {})
		local function __FUNC_4E69_(arg0, arg1)
			local function __FUNC_4FF8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, 291.000000, 320.000000)
				arg0:setTopBottom(false, false, -9.170000, 10.170000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4FF8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, 291.000000, 320.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4FF8_)
		end

		registerVal4:completeAnimation()
		registerVal2.RightArrow:setLeftRight(false, false, 370.250000, 399.250000)
		registerVal2.RightArrow:setTopBottom(false, false, -9.170000, 10.170000)
		__FUNC_4E69_(registerVal4, {})
		local function __FUNC_51FA_(arg0, arg1)
			local function __FUNC_5388_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -316.000000, -287.000000)
				arg0:setTopBottom(false, false, -8.170000, 11.170000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_5388_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, -316.000000, -287.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5388_)
		end

		registerVal5:completeAnimation()
		registerVal2.LeftArrow:setLeftRight(false, false, -391.750000, -362.750000)
		registerVal2.LeftArrow:setTopBottom(false, false, -8.170000, 11.170000)
		__FUNC_51FA_(registerVal5, {})
		local function __FUNC_558A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 315.750000, 421.250000)
			arg0:setTopBottom(false, false, -6.250000, 9.990000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.OutsideHashLineR5:setLeftRight(false, false, 234.750000, 340.250000)
		registerVal2.OutsideHashLineR5:setTopBottom(false, false, -6.250000, 9.990000)
		registerVal2.OutsideHashLineR5:setAlpha(1.000000)
		__FUNC_558A_(registerVal6, {})
		local function __FUNC_57AD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -418.510000, -313.010000)
			arg0:setTopBottom(false, false, -7.620000, 8.620000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.OutsideHashLineR50:setLeftRight(false, false, -333.510000, -228.010000)
		registerVal2.OutsideHashLineR50:setTopBottom(false, false, -7.620000, 8.620000)
		__FUNC_57AD_(registerVal7, {})
		local function __FUNC_59AE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 145.310000, 250.810000)
			arg0:setTopBottom(false, false, -6.250000, 9.990000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.OutsideLineHorizonR:setLeftRight(false, false, 111.900000, 217.400000)
		registerVal2.OutsideLineHorizonR:setTopBottom(false, false, -6.250000, 9.990000)
		__FUNC_59AE_(registerVal8, {})
		local function __FUNC_5BAE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -250.690000, -145.190000)
			arg0:setTopBottom(false, false, -6.250000, 9.990000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.OutsideLineHorizonL:setLeftRight(false, false, -219.690000, -114.190000)
		registerVal2.OutsideLineHorizonL:setTopBottom(false, false, -6.250000, 9.990000)
		__FUNC_5BAE_(registerVal9, {})
	end

	registerVal11.DefaultState = __FUNC_4695_
	registerVal10.Zoom = registerVal11
	registerVal2.clipsPerState = registerVal10
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

