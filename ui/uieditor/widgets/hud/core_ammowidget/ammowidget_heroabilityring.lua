-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_HeroAbilityRingGold")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_HeroAbilityRingThief")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_HeroAbilityRing = registerVal1
function CoD.AmmoWidget_HeroAbilityRing.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_HeroAbilityRing)
	registerVal2.id = "AmmoWidget_HeroAbilityRing"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 120.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 14.000000, -14.000000)
	registerVal3:setTopBottom(true, true, 14.000000, -14.000000)
	registerVal3:setAlpha(0.650000)
	registerVal3:setImage(RegisterImage("uie_t7_core_hud_ammowidget_bj_ringbg"))
	registerVal2:addElement(registerVal3)
	registerVal2.HeroRingBG = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 14.000000, -14.000000)
	registerVal4:setTopBottom(true, true, 14.000000, -14.000000)
	registerVal4:setImage(RegisterImage("uie_t7_core_hud_ammowidget_ringpattern"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_clock_normal"))
	registerVal4:setShaderVector(1.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_154B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal4:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "PlayerAbilities", "playerGadget3.powerRatio", __FUNC_154B_)
	registerVal2:addElement(registerVal4)
	registerVal2.HeroRingImage = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 12.000000, -12.000000)
	registerVal5:setTopBottom(true, true, 12.000000, -12.000000)
	registerVal5:setRGB(0.360000, 0.360000, 0.360000)
	registerVal5:setImage(RegisterImage("uie_t7_core_hud_ammowidget_heroringfill"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_clock_normal"))
	registerVal5:setShaderVector(0.000000, 0.300000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.HeroRingFillImage = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 14.000000, -14.000000)
	registerVal6:setTopBottom(true, true, 14.000000, -14.000000)
	registerVal6:setRGB(0.950000, 0.790000, 0.000000)
	registerVal6:setAlpha(0.020000)
	registerVal6:setImage(RegisterImage("uie_t7_core_hud_ammowidget_ringpattern"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_clock_normal"))
	registerVal6:setShaderVector(1.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_16A0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal6:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "PlayerAbilities", "playerGadget3.powerRatio", __FUNC_16A0_)
	registerVal2:addElement(registerVal6)
	registerVal2.HeroRingGold = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 14.000000, -14.000000)
	registerVal7:setTopBottom(true, true, 14.000000, -14.000000)
	registerVal7:setRGB(0.950000, 0.800000, 0.000000)
	registerVal7:setAlpha(0.010000)
	registerVal7:setImage(RegisterImage("uie_t7_core_hud_ammowidget_ringpattern"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("uie_clock_normal"))
	registerVal7:setShaderVector(1.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(2.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_17F8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal7:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "PlayerAbilities", "playerGadget3.powerRatio", __FUNC_17F8_)
	registerVal2:addElement(registerVal7)
	registerVal2.HeroRingGold2 = registerVal7
	local registerVal8 = CoD.AmmoWidget_HeroAbilityRingGold.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal8:setAlpha(0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.HeroRingGoldWeapon = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, true, -16.000000, 16.000000)
	registerVal9:setTopBottom(true, true, -16.000000, 16.000000)
	registerVal9:setRGB(0.320000, 0.000000, 0.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setYRot(180.000000)
	registerVal9:setZRot(311.000000)
	registerVal9:setImage(RegisterImage("uie_t7_core_hud_ammowidget_abilityswirl"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.AbilitySwirl = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, 12.000000, -12.000000)
	registerVal10:setTopBottom(true, true, 12.000000, -12.000000)
	registerVal10:setRGB(0.360000, 0.030000, 0.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setYRot(180.000000)
	registerVal10:setZRot(1308.000000)
	registerVal10:setImage(RegisterImage("uie_t7_core_hud_ammowidget_abilityswirl"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.AbilitySwirl0 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, true, 14.000000, -14.000000)
	registerVal11:setTopBottom(true, true, 14.000000, -14.000000)
	registerVal11:setRGB(1.000000, 0.000000, 0.030000)
	registerVal11:setImage(RegisterImage("uie_t7_core_hud_ammowidget_ringfilldeplete"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("uie_clock_normal"))
	registerVal11:setShaderVector(1.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(2.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(3.000000, -0.010000, 0.800000, 0.000000, 0.000000)
	local function __FUNC_1950_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal11:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal11:subscribeToGlobalModel(arg1, "PlayerAbilities", "playerGadget3.powerRatio", __FUNC_1950_)
	registerVal2:addElement(registerVal11)
	registerVal2.ImgRingDeplete00 = registerVal11
	local registerVal12 = CoD.AmmoWidget_HeroAbilityRingThief.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 14.000000, 106.000000)
	registerVal12:setTopBottom(true, false, 14.000000, 106.000000)
	registerVal12:setAlpha(0.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.AmmoWidgetHeroAbilityRingThief = registerVal12
	local registerVal13 = {}
	local registerVal14 = {}
	local function __FUNC_1AA8_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.HeroRingBG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.HeroRingImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.HeroRingFillImage:setLeftRight(true, true, 12.000000, -12.000000)
		registerVal2.HeroRingFillImage:setTopBottom(true, true, 12.000000, -12.000000)
		registerVal2.HeroRingFillImage:setAlpha(1.000000)
		registerVal2.HeroRingFillImage:setImage(RegisterImage("uie_t7_core_hud_ammowidget_heroringfill"))
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.HeroRingGold:setRGB(0.950000, 0.800000, 0.000000)
		registerVal2.HeroRingGold:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.HeroRingGold2:setRGB(0.950000, 0.800000, 0.000000)
		registerVal2.HeroRingGold2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.HeroRingGoldWeapon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.AbilitySwirl:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.AbilitySwirl0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ImgRingDeplete00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.AmmoWidgetHeroAbilityRingThief:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_1AA8_
	registerVal13.DefaultState = registerVal14
	registerVal14 = {}
	local function __FUNC_2063_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.HeroRingBG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.HeroRingImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.HeroRingFillImage:setLeftRight(true, true, 12.000000, -12.000000)
		registerVal2.HeroRingFillImage:setTopBottom(true, true, 12.000000, -12.000000)
		registerVal2.HeroRingFillImage:setAlpha(0.000000)
		registerVal2.HeroRingFillImage:setImage(RegisterImage("uie_t7_core_hud_ammowidget_heroringfill"))
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_2769_(arg0, arg1)
			local function __FUNC_28C0_(arg0, arg1)
				local function __FUNC_2A3B_(arg0, arg1)
					local function __FUNC_2B90_(arg0, arg1)
						local function __FUNC_2D0B_(arg0, arg1)
							local function __FUNC_2E60_(arg0, arg1)
								local function __FUNC_2FDB_(arg0, arg1)
									local function __FUNC_3130_(arg0, arg1)
										local function __FUNC_32AB_(arg0, arg1)
											local function __FUNC_3400_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setRGB(0.950000, 0.800000, 0.000000)
												arg0:setAlpha(1.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_3400_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3400_)
										end

										if arg1.interrupted then
											__FUNC_32AB_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.800000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32AB_)
									end

									if arg1.interrupted then
										__FUNC_3130_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3130_)
								end

								if arg1.interrupted then
									__FUNC_2FDB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FDB_)
							end

							if arg1.interrupted then
								__FUNC_2E60_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E60_)
						end

						if arg1.interrupted then
							__FUNC_2D0B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.400000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D0B_)
					end

					if arg1.interrupted then
						__FUNC_2B90_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B90_)
				end

				if arg1.interrupted then
					__FUNC_2A3B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A3B_)
			end

			if arg1.interrupted then
				__FUNC_28C0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28C0_)
		end

		registerVal6:completeAnimation()
		registerVal2.HeroRingGold:setRGB(0.950000, 0.800000, 0.000000)
		registerVal2.HeroRingGold:setAlpha(0.000000)
		__FUNC_2769_(registerVal6, {})
		local function __FUNC_35E8_(arg0, arg1)
			local function __FUNC_3763_(arg0, arg1)
				local function __FUNC_38B8_(arg0, arg1)
					local function __FUNC_3A33_(arg0, arg1)
						local function __FUNC_3B88_(arg0, arg1)
							local function __FUNC_3D03_(arg0, arg1)
								local function __FUNC_3E58_(arg0, arg1)
									local function __FUNC_3FD3_(arg0, arg1)
										local function __FUNC_4128_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setRGB(0.950000, 0.800000, 0.000000)
											arg0:setAlpha(1.000000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_4128_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4128_)
									end

									if arg1.interrupted then
										__FUNC_3FD3_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.800000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3FD3_)
								end

								if arg1.interrupted then
									__FUNC_3E58_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E58_)
							end

							if arg1.interrupted then
								__FUNC_3D03_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D03_)
						end

						if arg1.interrupted then
							__FUNC_3B88_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B88_)
					end

					if arg1.interrupted then
						__FUNC_3A33_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.400000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A33_)
				end

				if arg1.interrupted then
					__FUNC_38B8_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38B8_)
			end

			if arg1.interrupted then
				__FUNC_3763_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3763_)
		end

		registerVal7:completeAnimation()
		registerVal2.HeroRingGold2:setRGB(0.950000, 0.800000, 0.000000)
		registerVal2.HeroRingGold2:setAlpha(0.000000)
		__FUNC_35E8_(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.HeroRingGoldWeapon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_4310_(arg0, arg1)
			local function __FUNC_4546_(arg0, arg1)
				local function __FUNC_477A_(arg0, arg1)
					local function __FUNC_49AE_(arg0, arg1)
						local function __FUNC_4BE2_(arg0, arg1)
							local function __FUNC_4DF3_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 129.000000, true, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, true, -16.000000, 16.000000)
								arg0:setTopBottom(true, true, -16.000000, 16.000000)
								arg0:setRGB(0.320000, 0.000000, 0.000000)
								arg0:setAlpha(0.000000)
								arg0:setZRot(311.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_4DF3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 269.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, true, -11.600000, 11.600000)
							arg0:setTopBottom(true, true, -11.600000, 11.600000)
							arg0:setRGB(0.490000, 0.130000, 0.000000)
							arg0:setZRot(202.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4DF3_)
						end

						if arg1.interrupted then
							__FUNC_4BE2_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, true, -1.100000, 1.100000)
						arg0:setTopBottom(true, true, -1.100000, 1.100000)
						arg0:setRGB(0.930000, 0.470000, 0.000000)
						arg0:setAlpha(1.000000)
						arg0:setZRot(-58.130000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4BE2_)
					end

					if arg1.interrupted then
						__FUNC_49AE_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, true, 3.230000, -3.230000)
					arg0:setTopBottom(true, true, 3.230000, -3.230000)
					arg0:setRGB(1.000000, 0.520000, 0.000000)
					arg0:setAlpha(0.790000)
					arg0:setZRot(-165.470000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_49AE_)
				end

				if arg1.interrupted then
					__FUNC_477A_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, true, 5.380000, -5.380000)
				arg0:setTopBottom(true, true, 5.380000, -5.380000)
				arg0:setRGB(1.000000, 0.740000, 0.000000)
				arg0:setAlpha(0.630000)
				arg0:setZRot(-218.550000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_477A_)
			end

			if arg1.interrupted then
				__FUNC_4546_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, true, 5.800000, -5.800000)
			arg0:setTopBottom(true, true, 5.800000, -5.800000)
			arg0:setRGB(1.000000, 0.830000, 0.000000)
			arg0:setAlpha(0.400000)
			arg0:setZRot(-228.920000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4546_)
		end

		registerVal9:completeAnimation()
		registerVal2.AbilitySwirl:setLeftRight(true, true, 6.000000, -6.000000)
		registerVal2.AbilitySwirl:setTopBottom(true, true, 6.000000, -6.000000)
		registerVal2.AbilitySwirl:setRGB(1.000000, 0.940000, 0.000000)
		registerVal2.AbilitySwirl:setAlpha(0.000000)
		registerVal2.AbilitySwirl:setZRot(-234.000000)
		__FUNC_4310_(registerVal9, {})
		local function __FUNC_5056_(arg0, arg1)
			local function __FUNC_528A_(arg0, arg1)
				local function __FUNC_54BE_(arg0, arg1)
					local function __FUNC_56F2_(arg0, arg1)
						local function __FUNC_5926_(arg0, arg1)
							local function __FUNC_5B5A_(arg0, arg1)
								local function __FUNC_5D8E_(arg0, arg1)
									local function __FUNC_5FC2_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 230.000000, true, false, CoD.TweenType.Linear)
										end
										arg0:setLeftRight(true, true, 12.000000, -12.000000)
										arg0:setTopBottom(true, true, 12.000000, -12.000000)
										arg0:setRGB(0.360000, 0.030000, 0.000000)
										arg0:setAlpha(0.000000)
										arg0:setZRot(1308.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_5FC2_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
									arg0:setLeftRight(true, true, 8.410000, -8.410000)
									arg0:setTopBottom(true, true, 8.410000, -8.410000)
									arg0:setRGB(0.640000, 0.190000, 0.000000)
									arg0:setAlpha(0.660000)
									arg0:setZRot(884.350000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5FC2_)
								end

								if arg1.interrupted then
									__FUNC_5D8E_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
								arg0:setLeftRight(true, true, 6.700000, -6.700000)
								arg0:setTopBottom(true, true, 6.700000, -6.700000)
								arg0:setRGB(0.820000, 0.290000, 0.000000)
								arg0:setAlpha(0.410000)
								arg0:setZRot(681.740000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5D8E_)
							end

							if arg1.interrupted then
								__FUNC_5B5A_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, true, 5.140000, -5.140000)
							arg0:setTopBottom(true, true, 5.140000, -5.140000)
							arg0:setRGB(0.960000, 0.360000, 0.000000)
							arg0:setAlpha(0.200000)
							arg0:setZRot(497.550000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B5A_)
						end

						if arg1.interrupted then
							__FUNC_5926_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, true, 3.170000, -3.170000)
						arg0:setTopBottom(true, true, 3.170000, -3.170000)
						arg0:setRGB(1.000000, 0.390000, 0.000000)
						arg0:setAlpha(0.340000)
						arg0:setZRot(264.940000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5926_)
					end

					if arg1.interrupted then
						__FUNC_56F2_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, true, 2.460000, -2.460000)
					arg0:setTopBottom(true, true, 2.460000, -2.460000)
					arg0:setRGB(0.960000, 0.360000, 0.000000)
					arg0:setAlpha(0.380000)
					arg0:setZRot(181.330000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_56F2_)
				end

				if arg1.interrupted then
					__FUNC_54BE_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, true, 1.560000, -1.560000)
				arg0:setTopBottom(true, true, 1.560000, -1.560000)
				arg0:setRGB(0.900000, 0.330000, 0.000000)
				arg0:setAlpha(0.140000)
				arg0:setZRot(74.300000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_54BE_)
			end

			if arg1.interrupted then
				__FUNC_528A_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, true, -1.470000, 1.470000)
			arg0:setTopBottom(true, true, -1.470000, 1.470000)
			arg0:setRGB(0.640000, 0.180000, 0.000000)
			arg0:setAlpha(0.660000)
			arg0:setZRot(-282.910000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_528A_)
		end

		registerVal10:completeAnimation()
		registerVal2.AbilitySwirl0:setLeftRight(true, true, -2.500000, 2.500000)
		registerVal2.AbilitySwirl0:setTopBottom(true, true, -2.500000, 2.500000)
		registerVal2.AbilitySwirl0:setRGB(0.400000, 0.050000, 0.000000)
		registerVal2.AbilitySwirl0:setAlpha(0.000000)
		registerVal2.AbilitySwirl0:setZRot(-405.000000)
		__FUNC_5056_(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ImgRingDeplete00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.AmmoWidgetHeroAbilityRingThief:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_2063_
	local function __FUNC_622B_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_67AD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.HeroRingImage:setAlpha(0.000000)
		__FUNC_67AD_(registerVal4, {})
		local function __FUNC_6961_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 469.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.HeroRingFillImage:setAlpha(0.000000)
		__FUNC_6961_(registerVal5, {})
		local function __FUNC_6B15_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.950000, 0.800000, 0.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.HeroRingGold:setRGB(0.950000, 0.800000, 0.000000)
		registerVal2.HeroRingGold:setAlpha(1.000000)
		__FUNC_6B15_(registerVal6, {})
		local function __FUNC_6CFC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.950000, 0.800000, 0.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.HeroRingGold2:setRGB(0.950000, 0.800000, 0.000000)
		registerVal2.HeroRingGold2:setAlpha(1.000000)
		__FUNC_6CFC_(registerVal7, {})
		local function __FUNC_6EE4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.HeroRingGoldWeapon:setAlpha(0.000000)
		__FUNC_6EE4_(registerVal8, {})
		local function __FUNC_7099_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 479.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -16.000000, 16.000000)
			arg0:setTopBottom(true, true, -16.000000, 16.000000)
			arg0:setRGB(0.320000, 0.000000, 0.000000)
			arg0:setAlpha(0.000000)
			arg0:setZRot(311.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.AbilitySwirl:setLeftRight(true, true, -16.000000, 16.000000)
		registerVal2.AbilitySwirl:setTopBottom(true, true, -16.000000, 16.000000)
		registerVal2.AbilitySwirl:setRGB(0.320000, 0.000000, 0.000000)
		registerVal2.AbilitySwirl:setAlpha(0.000000)
		registerVal2.AbilitySwirl:setZRot(311.000000)
		__FUNC_7099_(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.AbilitySwirl0:setLeftRight(true, true, 12.000000, -12.000000)
		registerVal2.AbilitySwirl0:setTopBottom(true, true, 12.000000, -12.000000)
		registerVal2.AbilitySwirl0:setRGB(0.360000, 0.030000, 0.000000)
		registerVal2.AbilitySwirl0:setAlpha(0.000000)
		registerVal2.AbilitySwirl0:setZRot(1308.000000)
		registerVal2.clipFinished(registerVal10, {})
		local function __FUNC_72FE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.950000, 0.800000, 0.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.ImgRingDeplete00:setRGB(0.950000, 0.800000, 0.000000)
		registerVal2.ImgRingDeplete00:setAlpha(0.000000)
		__FUNC_72FE_(registerVal11, {})
	end

	registerVal14.InUseGadget = __FUNC_622B_
	registerVal13.ReadyGadget = registerVal14
	registerVal14 = {}
	local function __FUNC_74E4_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.HeroRingBG:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.HeroRingImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.HeroRingFillImage:setLeftRight(true, true, 14.000000, -14.000000)
		registerVal2.HeroRingFillImage:setTopBottom(true, true, 14.000000, -14.000000)
		registerVal2.HeroRingFillImage:setAlpha(1.000000)
		registerVal2.HeroRingFillImage:setImage(RegisterImage("uie_t7_core_hud_ammowidget_bj_ringfill"))
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.HeroRingGold:setRGB(0.950000, 0.800000, 0.000000)
		registerVal2.HeroRingGold:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.HeroRingGold2:setRGB(0.950000, 0.800000, 0.000000)
		registerVal2.HeroRingGold2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.HeroRingGoldWeapon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.AbilitySwirl:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.AbilitySwirl0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ImgRingDeplete00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.AmmoWidgetHeroAbilityRingThief:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_74E4_
	registerVal13.ChargeThief = registerVal14
	registerVal14 = {}
	local function __FUNC_7A9E_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.HeroRingBG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.HeroRingImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.HeroRingFillImage:setLeftRight(true, true, 12.000000, -12.000000)
		registerVal2.HeroRingFillImage:setTopBottom(true, true, 12.000000, -12.000000)
		registerVal2.HeroRingFillImage:setAlpha(1.000000)
		registerVal2.HeroRingFillImage:setImage(RegisterImage("uie_t7_core_hud_ammowidget_heroringfill"))
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.HeroRingGold:setRGB(0.950000, 0.800000, 0.000000)
		registerVal2.HeroRingGold:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.HeroRingGold2:setRGB(0.950000, 0.800000, 0.000000)
		registerVal2.HeroRingGold2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.HeroRingGoldWeapon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.AbilitySwirl:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.AbilitySwirl0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ImgRingDeplete00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.AmmoWidgetHeroAbilityRingThief:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_7A9E_
	registerVal13.Charge = registerVal14
	registerVal14 = {}
	local function __FUNC_8057_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.HeroRingBG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.HeroRingImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.HeroRingFillImage:setLeftRight(true, true, 12.000000, -12.000000)
		registerVal2.HeroRingFillImage:setTopBottom(true, true, 12.000000, -12.000000)
		registerVal2.HeroRingFillImage:setAlpha(0.000000)
		registerVal2.HeroRingFillImage:setImage(RegisterImage("uie_t7_core_hud_ammowidget_heroringfill"))
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.HeroRingGold:setRGB(0.950000, 0.800000, 0.000000)
		registerVal2.HeroRingGold:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.HeroRingGold2:setRGB(0.950000, 0.800000, 0.000000)
		registerVal2.HeroRingGold2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.HeroRingGoldWeapon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.AbilitySwirl:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.AbilitySwirl0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ImgRingDeplete00:setRGB(0.950000, 0.800000, 0.000000)
		registerVal2.ImgRingDeplete00:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.AmmoWidgetHeroAbilityRingThief:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_8057_
	local function __FUNC_8633_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_8964_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.HeroRingImage:setAlpha(0.000000)
		__FUNC_8964_(registerVal4, {})
		local function __FUNC_8B19_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.HeroRingFillImage:setAlpha(0.000000)
		__FUNC_8B19_(registerVal5, {})
		local function __FUNC_8CCD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.950000, 0.000000, 0.010000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.HeroRingGold:setRGB(0.950000, 0.800000, 0.000000)
		registerVal2.HeroRingGold:setAlpha(1.000000)
		__FUNC_8CCD_(registerVal6, {})
		local function __FUNC_8EB4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.950000, 0.000000, 0.010000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.HeroRingGold2:setRGB(0.950000, 0.800000, 0.000000)
		registerVal2.HeroRingGold2:setAlpha(1.000000)
		__FUNC_8EB4_(registerVal7, {})
		local function __FUNC_909C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.HeroRingGoldWeapon:setAlpha(0.000000)
		__FUNC_909C_(registerVal8, {})
		local function __FUNC_9251_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 0.000000, 0.030000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.ImgRingDeplete00:setRGB(0.950000, 0.800000, 0.000000)
		registerVal2.ImgRingDeplete00:setAlpha(1.000000)
		__FUNC_9251_(registerVal11, {})
	end

	registerVal14.InUseGadgetLow = __FUNC_8633_
	registerVal13.InUseGadget = registerVal14
	registerVal14 = {}
	local function __FUNC_9433_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.HeroRingBG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.HeroRingImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.HeroRingFillImage:setLeftRight(true, true, 12.000000, -12.000000)
		registerVal2.HeroRingFillImage:setTopBottom(true, true, 12.000000, -12.000000)
		registerVal2.HeroRingFillImage:setAlpha(0.000000)
		registerVal2.HeroRingFillImage:setImage(RegisterImage("uie_t7_core_hud_ammowidget_heroringfill"))
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.HeroRingGold:setRGB(0.950000, 0.550000, 0.000000)
		registerVal2.HeroRingGold:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.HeroRingGold2:setRGB(0.950000, 0.550000, 0.000000)
		registerVal2.HeroRingGold2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.HeroRingGoldWeapon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.AbilitySwirl:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.AbilitySwirl0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ImgRingDeplete00:setRGB(0.950000, 0.450000, 0.000000)
		registerVal2.ImgRingDeplete00:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.AmmoWidgetHeroAbilityRingThief:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_9433_
	local function __FUNC_9A14_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_9D24_(arg0, arg1)
			local function __FUNC_9E9F_(arg0, arg1)
				local function __FUNC_9FF4_(arg0, arg1)
					local function __FUNC_A16F_(arg0, arg1)
						local function __FUNC_A2C4_(arg0, arg1)
							local function __FUNC_A43F_(arg0, arg1)
								local function __FUNC_A594_(arg0, arg1)
									local function __FUNC_A70F_(arg0, arg1)
										local function __FUNC_A864_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setAlpha(1.000000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_A864_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A864_)
									end

									if arg1.interrupted then
										__FUNC_A70F_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.800000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A70F_)
								end

								if arg1.interrupted then
									__FUNC_A594_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A594_)
							end

							if arg1.interrupted then
								__FUNC_A43F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A43F_)
						end

						if arg1.interrupted then
							__FUNC_A2C4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A2C4_)
					end

					if arg1.interrupted then
						__FUNC_A16F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A16F_)
				end

				if arg1.interrupted then
					__FUNC_9FF4_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9FF4_)
			end

			if arg1.interrupted then
				__FUNC_9E9F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9E9F_)
		end

		registerVal4:completeAnimation()
		registerVal2.HeroRingImage:setAlpha(0.000000)
		__FUNC_9D24_(registerVal4, {})
		local function __FUNC_AA19_(arg0, arg1)
			local function __FUNC_AB70_(arg0, arg1)
				local function __FUNC_ACEB_(arg0, arg1)
					local function __FUNC_AE40_(arg0, arg1)
						local function __FUNC_AFBB_(arg0, arg1)
							local function __FUNC_B110_(arg0, arg1)
								local function __FUNC_B28B_(arg0, arg1)
									local function __FUNC_B3E0_(arg0, arg1)
										local function __FUNC_B55B_(arg0, arg1)
											local function __FUNC_B6B0_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setAlpha(1.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_B6B0_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B6B0_)
										end

										if arg1.interrupted then
											__FUNC_B55B_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.800000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B55B_)
									end

									if arg1.interrupted then
										__FUNC_B3E0_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B3E0_)
								end

								if arg1.interrupted then
									__FUNC_B28B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B28B_)
							end

							if arg1.interrupted then
								__FUNC_B110_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B110_)
						end

						if arg1.interrupted then
							__FUNC_AFBB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AFBB_)
					end

					if arg1.interrupted then
						__FUNC_AE40_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AE40_)
				end

				if arg1.interrupted then
					__FUNC_ACEB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ACEB_)
			end

			if arg1.interrupted then
				__FUNC_AB70_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AB70_)
		end

		registerVal5:completeAnimation()
		registerVal2.HeroRingFillImage:setAlpha(0.000000)
		__FUNC_AA19_(registerVal5, {})
		local function __FUNC_B865_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 419.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.950000, 0.800000, 0.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.HeroRingGold:setRGB(0.950000, 0.550000, 0.000000)
		registerVal2.HeroRingGold:setAlpha(1.000000)
		__FUNC_B865_(registerVal6, {})
		local function __FUNC_BA47_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 560.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.950000, 0.800000, 0.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.HeroRingGold2:setRGB(0.950000, 0.550000, 0.000000)
		registerVal2.HeroRingGold2:setAlpha(1.000000)
		__FUNC_BA47_(registerVal7, {})
		local function __FUNC_BC27_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.HeroRingGoldWeapon:setAlpha(0.000000)
		__FUNC_BC27_(registerVal8, {})
		local function __FUNC_BDD9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.ImgRingDeplete00:setAlpha(1.000000)
		__FUNC_BDD9_(registerVal11, {})
	end

	registerVal14.Charge = __FUNC_9A14_
	local function __FUNC_BF8D_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_C31B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 709.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.HeroRingImage:setAlpha(0.000000)
		__FUNC_C31B_(registerVal4, {})
		local function __FUNC_C4CD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 649.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.HeroRingFillImage:setAlpha(0.000000)
		__FUNC_C4CD_(registerVal5, {})
		local function __FUNC_C681_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.950000, 0.000000, 0.010000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.HeroRingGold:setRGB(0.950000, 0.550000, 0.000000)
		registerVal2.HeroRingGold:setAlpha(1.000000)
		__FUNC_C681_(registerVal6, {})
		local function __FUNC_C868_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.950000, 0.000000, 0.010000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.HeroRingGold2:setRGB(0.950000, 0.550000, 0.000000)
		registerVal2.HeroRingGold2:setAlpha(1.000000)
		__FUNC_C868_(registerVal7, {})
		local function __FUNC_CA50_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.HeroRingGoldWeapon:setAlpha(0.000000)
		__FUNC_CA50_(registerVal8, {})
		local function __FUNC_CC05_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.AbilitySwirl:setAlpha(0.000000)
		__FUNC_CC05_(registerVal9, {})
		local function __FUNC_CDB9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 0.000000, 0.030000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.ImgRingDeplete00:setRGB(0.950000, 0.450000, 0.000000)
		registerVal2.ImgRingDeplete00:setAlpha(1.000000)
		__FUNC_CDB9_(registerVal11, {})
	end

	registerVal14.InUseGadgetLow = __FUNC_BF8D_
	registerVal13.InUseGadgetMed = registerVal14
	registerVal14 = {}
	local function __FUNC_CF9B_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.HeroRingBG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.HeroRingImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.HeroRingFillImage:setLeftRight(true, true, 12.000000, -12.000000)
		registerVal2.HeroRingFillImage:setTopBottom(true, true, 12.000000, -12.000000)
		registerVal2.HeroRingFillImage:setAlpha(0.000000)
		registerVal2.HeroRingFillImage:setImage(RegisterImage("uie_t7_core_hud_ammowidget_heroringfill"))
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.HeroRingGold:setRGB(0.950000, 0.000000, 0.010000)
		registerVal2.HeroRingGold:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.HeroRingGold2:setRGB(0.950000, 0.000000, 0.010000)
		registerVal2.HeroRingGold2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.HeroRingGoldWeapon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.AbilitySwirl:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.AbilitySwirl0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ImgRingDeplete00:setRGB(1.000000, 0.000000, 0.030000)
		registerVal2.ImgRingDeplete00:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.AmmoWidgetHeroAbilityRingThief:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_CF9B_
	local function __FUNC_D57C_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_D832_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.HeroRingImage:setAlpha(0.000000)
		__FUNC_D832_(registerVal4, {})
		local function __FUNC_D9E5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 579.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.HeroRingFillImage:setAlpha(0.000000)
		__FUNC_D9E5_(registerVal5, {})
		local function __FUNC_DB99_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.950000, 0.800000, 0.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.HeroRingGold:setRGB(0.950000, 0.000000, 0.010000)
		registerVal2.HeroRingGold:setAlpha(1.000000)
		__FUNC_DB99_(registerVal6, {})
		local function __FUNC_DD80_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 649.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.950000, 0.800000, 0.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.HeroRingGold2:setRGB(0.950000, 0.000000, 0.010000)
		registerVal2.HeroRingGold2:setAlpha(1.000000)
		__FUNC_DD80_(registerVal7, {})
		local function __FUNC_DF68_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 810.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.HeroRingGoldWeapon:setAlpha(0.000000)
		__FUNC_DF68_(registerVal8, {})
	end

	registerVal14.InUseGadget = __FUNC_D57C_
	local function __FUNC_E11D_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_E42C_(arg0, arg1)
			local function __FUNC_E5A7_(arg0, arg1)
				local function __FUNC_E6FC_(arg0, arg1)
					local function __FUNC_E877_(arg0, arg1)
						local function __FUNC_E9CC_(arg0, arg1)
							local function __FUNC_EB47_(arg0, arg1)
								local function __FUNC_EC9C_(arg0, arg1)
									local function __FUNC_EE17_(arg0, arg1)
										local function __FUNC_EF6C_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setAlpha(1.000000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_EF6C_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EF6C_)
									end

									if arg1.interrupted then
										__FUNC_EE17_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.800000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EE17_)
								end

								if arg1.interrupted then
									__FUNC_EC9C_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EC9C_)
							end

							if arg1.interrupted then
								__FUNC_EB47_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EB47_)
						end

						if arg1.interrupted then
							__FUNC_E9CC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E9CC_)
					end

					if arg1.interrupted then
						__FUNC_E877_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E877_)
				end

				if arg1.interrupted then
					__FUNC_E6FC_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E6FC_)
			end

			if arg1.interrupted then
				__FUNC_E5A7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E5A7_)
		end

		registerVal4:completeAnimation()
		registerVal2.HeroRingImage:setAlpha(0.000000)
		__FUNC_E42C_(registerVal4, {})
		local function __FUNC_F121_(arg0, arg1)
			local function __FUNC_F278_(arg0, arg1)
				local function __FUNC_F3F3_(arg0, arg1)
					local function __FUNC_F548_(arg0, arg1)
						local function __FUNC_F6C3_(arg0, arg1)
							local function __FUNC_F818_(arg0, arg1)
								local function __FUNC_F993_(arg0, arg1)
									local function __FUNC_FAE8_(arg0, arg1)
										local function __FUNC_FC63_(arg0, arg1)
											local function __FUNC_FDB8_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setAlpha(1.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_FDB8_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FDB8_)
										end

										if arg1.interrupted then
											__FUNC_FC63_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.800000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FC63_)
									end

									if arg1.interrupted then
										__FUNC_FAE8_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FAE8_)
								end

								if arg1.interrupted then
									__FUNC_F993_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F993_)
							end

							if arg1.interrupted then
								__FUNC_F818_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F818_)
						end

						if arg1.interrupted then
							__FUNC_F6C3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F6C3_)
					end

					if arg1.interrupted then
						__FUNC_F548_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F548_)
				end

				if arg1.interrupted then
					__FUNC_F3F3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F3F3_)
			end

			if arg1.interrupted then
				__FUNC_F278_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F278_)
		end

		registerVal5:completeAnimation()
		registerVal2.HeroRingFillImage:setAlpha(0.000000)
		__FUNC_F121_(registerVal5, {})
		local function __FUNC_FF6D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 419.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.950000, 0.800000, 0.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.HeroRingGold:setRGB(0.950000, 0.000000, 0.010000)
		registerVal2.HeroRingGold:setAlpha(1.000000)
		__FUNC_FF6D_(registerVal6, {})
		local function __FUNC_1014F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 560.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.950000, 0.800000, 0.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.HeroRingGold2:setRGB(0.950000, 0.000000, 0.010000)
		registerVal2.HeroRingGold2:setAlpha(1.000000)
		__FUNC_1014F_(registerVal7, {})
		local function __FUNC_1032F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.HeroRingGoldWeapon:setAlpha(0.000000)
		__FUNC_1032F_(registerVal8, {})
		local function __FUNC_104E1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.ImgRingDeplete00:setAlpha(1.000000)
		__FUNC_104E1_(registerVal11, {})
	end

	registerVal14.Charge = __FUNC_E11D_
	registerVal13.InUseGadgetLow = registerVal14
	registerVal2.clipsPerState = registerVal13
	local function __FUNC_10695_(arg0)
		arg0.HeroRingGoldWeapon:close()
		arg0.AmmoWidgetHeroAbilityRingThief:close()
		arg0.HeroRingImage:close()
		arg0.HeroRingGold:close()
		arg0.HeroRingGold2:close()
		arg0.ImgRingDeplete00:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_10695_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

