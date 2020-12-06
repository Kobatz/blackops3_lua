-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Promo_ThermometerAndRewards_Idol = registerVal1
function CoD.Promo_ThermometerAndRewards_Idol.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.Promo_ThermometerAndRewards_Idol)
	registerVal2.id = "Promo_ThermometerAndRewards_Idol"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 243.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 594.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 15.380000, 227.130000)
	registerVal3:setTopBottom(false, true, -594.000000, -29.330000)
	registerVal3:setAlpha(0.250000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_mainbargglow"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
	registerVal3:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, -0.130000, 0.920000, 0.000000, 0.000000)
	registerVal3:setShaderVector(3.000000, 0.620000, 0.210000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.ThermometerGlow = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 242.510000)
	registerVal4:setTopBottom(false, true, -204.930000, 0.270000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcards_champion_light4"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.biglightFlare = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 31.750000, 207.750000)
	registerVal5:setTopBottom(false, true, -185.330000, -9.330000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_glowpulse"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.GlowPulse = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 55.750000, 178.250000)
	registerVal6:setTopBottom(false, true, -159.330000, -36.830000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_glowpulse2_99"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.GlowPulseOuter = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 55.750000, 178.250000)
	registerVal7:setTopBottom(false, true, -159.330000, -37.560000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_glowpulse3"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.GlowPulseOuter2 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 27.000000, 207.000000)
	registerVal8:setTopBottom(false, true, -236.330000, -88.330000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_lineglow"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.GlowPulseLine = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 102.000000, 134.590000)
	registerVal9:setTopBottom(false, true, -173.040000, -130.620000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_lineglow"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.GlowPulseLine0 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 75.750000, 160.840000)
	registerVal10:setTopBottom(false, true, -173.040000, -142.330000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_glowpulse4"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.GlowDots = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 75.750000, 163.750000)
	registerVal11:setTopBottom(false, true, -250.330000, -234.330000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_glowpulse5"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.GlowDots2 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 75.750000, 163.750000)
	registerVal12:setTopBottom(false, true, -347.330000, -331.330000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_glowpulse5"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.GlowDots3 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 75.750000, 163.750000)
	registerVal13:setTopBottom(false, true, -445.330000, -429.330000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_glowpulse5"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.GlowDots4 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 75.750000, 163.750000)
	registerVal14:setTopBottom(false, true, -542.330000, -526.330000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_glowpulse5"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.GlowDots5 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, 46.400000, 198.600000)
	registerVal15:setTopBottom(false, true, -586.000000, -417.790000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_mainbargglowtip"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
	registerVal15:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal15:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal15:setShaderVector(2.000000, -0.130000, 0.920000, 0.000000, 0.000000)
	registerVal15:setShaderVector(3.000000, 0.620000, 0.210000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.Image0 = registerVal15
	local registerVal16 = LUI.UIElement.new()
	registerVal16:setLeftRight(true, false, -203.020000, -155.020000)
	registerVal16:setTopBottom(true, false, 665.440000, 713.440000)
	registerVal16:setPlaySoundDirect(true)
	registerVal2:addElement(registerVal16)
	registerVal2.uinThmIdle = registerVal16
	local registerVal17 = {}
	local registerVal18 = {}
	local function __FUNC_13B6_()
		registerVal2:setupElementClipCounter(14.000000)
		local function __FUNC_1D67_(arg0, arg1)
			local function __FUNC_1F53_(arg0, arg1)
				local function __FUNC_213F_(arg0, arg1)
					local function __FUNC_232B_(arg0, arg1)
						local function __FUNC_2512_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 379.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
							arg0:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
							arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
							arg0:setShaderVector(2.000000, -0.240000, 1.000000, 0.000000, 0.000000)
							arg0:setShaderVector(3.000000, 0.450000, 2.290000, 0.000000, 0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_2512_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 409.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:setShaderVector(2.000000, -0.240000, 1.000000, 0.000000, 0.000000)
						arg0:setShaderVector(3.000000, 0.450000, 2.290000, 0.000000, 0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2512_)
					end

					if arg1.interrupted then
						__FUNC_232B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.330000)
					arg0:setShaderVector(2.000000, 0.210000, 1.000000, 0.000000, 0.000000)
					arg0:setShaderVector(3.000000, 0.410000, 0.740000, 0.000000, 0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_232B_)
				end

				if arg1.interrupted then
					__FUNC_213F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 899.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.300000)
				arg0:setShaderVector(2.000000, 0.420000, 1.000000, 0.000000, 0.000000)
				arg0:setShaderVector(3.000000, 0.410000, 0.210000, 0.000000, 0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_213F_)
			end

			if arg1.interrupted then
				__FUNC_1F53_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.640000)
			arg0:setShaderVector(2.000000, 0.600000, 0.928000, 0.000000, 0.000000)
			arg0:setShaderVector(3.000000, 0.599000, 0.210000, 0.000000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F53_)
		end

		registerVal3:completeAnimation()
		registerVal2.ThermometerGlow:setAlpha(0.000000)
		registerVal2.ThermometerGlow:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
		registerVal2.ThermometerGlow:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
		registerVal2.ThermometerGlow:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.ThermometerGlow:setShaderVector(2.000000, 0.620000, 0.920000, 0.000000, 0.000000)
		registerVal2.ThermometerGlow:setShaderVector(3.000000, 0.620000, 0.210000, 0.000000, 0.000000)
		__FUNC_1D67_(registerVal3, {})
		local function __FUNC_27FE_(arg0, arg1)
			local function __FUNC_2999_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 1299.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				arg0:setZRot(-80.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2999_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:setZRot(-34.780000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2999_)
		end

		registerVal4:completeAnimation()
		registerVal2.biglightFlare:setAlpha(0.000000)
		registerVal2.biglightFlare:setZRot(0.000000)
		__FUNC_27FE_(registerVal4, {})
		local function __FUNC_2B6F_(arg0, arg1)
			local function __FUNC_2CE7_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 1299.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2CE7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 430.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CE7_)
		end

		registerVal5:beginAnimation("keyframe", 569.000000, false, false, CoD.TweenType.Linear)
		registerVal5:setAlpha(0.000000)
		registerVal5:registerEventHandler("transition_complete_keyframe", __FUNC_2B6F_)
		local function __FUNC_2E99_(arg0, arg1)
			local function __FUNC_3036_(arg0, arg1)
				local function __FUNC_31D2_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					arg0:setScale(1.600000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_31D2_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 299.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.150000)
				arg0:setScale(1.300000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31D2_)
			end

			if arg1.interrupted then
				__FUNC_3036_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.400000)
			arg0:setScale(1.100000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3036_)
		end

		registerVal6:beginAnimation("keyframe", 899.000000, false, false, CoD.TweenType.Linear)
		registerVal6:setAlpha(0.000000)
		registerVal6:setScale(1.000000)
		registerVal6:registerEventHandler("transition_complete_keyframe", __FUNC_2E99_)
		local function __FUNC_33A8_(arg0, arg1)
			local function __FUNC_3500_(arg0, arg1)
				local function __FUNC_369E_(arg0, arg1)
					local function __FUNC_383A_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						arg0:setScale(2.700000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_383A_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 299.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.230000)
					arg0:setScale(1.600000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_383A_)
				end

				if arg1.interrupted then
					__FUNC_369E_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setScale(1.200000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_369E_)
			end

			if arg1.interrupted then
				__FUNC_3500_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 329.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3500_)
		end

		registerVal7:beginAnimation("keyframe", 569.000000, false, false, CoD.TweenType.Linear)
		registerVal7:setAlpha(0.000000)
		registerVal7:setScale(1.000000)
		registerVal7:registerEventHandler("transition_complete_keyframe", __FUNC_33A8_)
		local function __FUNC_3A10_(arg0, arg1)
			local function __FUNC_3B8B_(arg0, arg1)
				local function __FUNC_3D73_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 27.000000, 207.000000)
					arg0:setTopBottom(false, true, -611.000000, -463.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_3D73_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 980.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 27.000000, 207.000000)
				arg0:setTopBottom(false, true, -518.770000, -370.770000)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D73_)
			end

			if arg1.interrupted then
				__FUNC_3B8B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 430.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B8B_)
		end

		registerVal8:beginAnimation("keyframe", 569.000000, false, false, CoD.TweenType.Linear)
		registerVal8:setLeftRight(true, false, 27.000000, 207.000000)
		registerVal8:setTopBottom(false, true, -236.330000, -88.330000)
		registerVal8:setAlpha(0.000000)
		registerVal8:registerEventHandler("transition_complete_keyframe", __FUNC_3A10_)
		local function __FUNC_3F95_(arg0, arg1)
			local function __FUNC_410F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 1299.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 102.710000, 135.300000)
				arg0:setTopBottom(false, true, -558.210000, -515.790000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_410F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 430.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_410F_)
		end

		registerVal9:beginAnimation("keyframe", 569.000000, false, false, CoD.TweenType.Linear)
		registerVal9:setLeftRight(true, false, 101.710000, 134.300000)
		registerVal9:setTopBottom(false, true, -183.540000, -141.120000)
		registerVal9:setAlpha(0.000000)
		registerVal9:registerEventHandler("transition_complete_keyframe", __FUNC_3F95_)
		local function __FUNC_4331_(arg0, arg1)
			local function __FUNC_4488_(arg0, arg1)
				local function __FUNC_4603_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_4603_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4603_)
			end

			if arg1.interrupted then
				__FUNC_4488_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 329.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4488_)
		end

		registerVal10:beginAnimation("keyframe", 569.000000, false, false, CoD.TweenType.Linear)
		registerVal10:setAlpha(0.000000)
		registerVal10:registerEventHandler("transition_complete_keyframe", __FUNC_4331_)
		local function __FUNC_47B5_(arg0, arg1)
			local function __FUNC_490C_(arg0, arg1)
				local function __FUNC_4A87_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 389.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_4A87_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A87_)
			end

			if arg1.interrupted then
				__FUNC_490C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 630.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_490C_)
		end

		registerVal11:beginAnimation("keyframe", 569.000000, false, false, CoD.TweenType.Linear)
		registerVal11:setAlpha(0.000000)
		registerVal11:registerEventHandler("transition_complete_keyframe", __FUNC_47B5_)
		local function __FUNC_4C39_(arg0, arg1)
			local function __FUNC_4D90_(arg0, arg1)
				local function __FUNC_4F0B_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 389.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_4F0B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.900000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4F0B_)
			end

			if arg1.interrupted then
				__FUNC_4D90_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 979.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D90_)
		end

		registerVal12:beginAnimation("keyframe", 569.000000, false, false, CoD.TweenType.Linear)
		registerVal12:setAlpha(0.000000)
		registerVal12:registerEventHandler("transition_complete_keyframe", __FUNC_4C39_)
		local function __FUNC_50BD_(arg0, arg1)
			local function __FUNC_5214_(arg0, arg1)
				local function __FUNC_538F_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_538F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.800000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_538F_)
			end

			if arg1.interrupted then
				__FUNC_5214_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1309.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5214_)
		end

		registerVal13:beginAnimation("keyframe", 569.000000, false, false, CoD.TweenType.Linear)
		registerVal13:setAlpha(0.000000)
		registerVal13:registerEventHandler("transition_complete_keyframe", __FUNC_50BD_)
		local function __FUNC_5541_(arg0, arg1)
			local function __FUNC_5698_(arg0, arg1)
				local function __FUNC_5813_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 350.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_5813_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.700000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5813_)
			end

			if arg1.interrupted then
				__FUNC_5698_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1650.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5698_)
		end

		registerVal14:beginAnimation("keyframe", 569.000000, false, false, CoD.TweenType.Linear)
		registerVal14:setAlpha(0.000000)
		registerVal14:registerEventHandler("transition_complete_keyframe", __FUNC_5541_)
		local function __FUNC_59C5_(arg0, arg1)
			local function __FUNC_5B3F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 660.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_5B3F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.250000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B3F_)
		end

		registerVal15:beginAnimation("keyframe", 1769.000000, false, false, CoD.TweenType.Linear)
		registerVal15:setAlpha(0.000000)
		registerVal15:registerEventHandler("transition_complete_keyframe", __FUNC_59C5_)
		registerVal16:completeAnimation()
		registerVal2.uinThmIdle:playSound("uin_thm_idle", arg1)
		registerVal2.clipFinished(registerVal16, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal18.DefaultClip = __FUNC_13B6_
	registerVal17.DefaultState = registerVal18
	registerVal18 = {}
	local function __FUNC_5CF1_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal3:completeAnimation()
		registerVal2.ThermometerGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.biglightFlare:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.GlowPulse:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.GlowPulseOuter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.GlowPulseOuter2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.GlowPulseLine:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.GlowPulseLine0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.GlowDots:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.GlowDots2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.GlowDots3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.GlowDots4:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.GlowDots5:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.Image0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.DefaultClip = __FUNC_5CF1_
	registerVal17.StopAnimations = registerVal18
	registerVal2.clipsPerState = registerVal17
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

