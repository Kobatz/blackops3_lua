-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.AmmoWidget_HeroAbilityThiefOverlayWidget")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_AbilityGlow")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_HeroAbilityThiefRingAnimation = registerVal1
function CoD.AmmoWidget_HeroAbilityThiefRingAnimation.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_HeroAbilityThiefRingAnimation)
	registerVal2.id = "AmmoWidget_HeroAbilityThiefRingAnimation"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 32.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.AmmoWidget_HeroAbilityThiefOverlayWidget.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -65.020000, -13.000000)
	registerVal3:setTopBottom(false, false, -7.150000, 8.850000)
	registerVal3.FEButtonPanel0:setAlpha(0.950000)
	registerVal3.rerollInstruction:setRGB(1.000000, 0.960000, 0.450000)
	registerVal3.rerollInstruction:setText(LocalizeToUpperString("MPUI_FLIP"))
	registerVal3.Glow:setRGB(0.400000, 0.370000, 0.220000)
	registerVal2:addElement(registerVal3)
	registerVal2.AmmoWidgetHeroAbilityThiefOverlayWidget = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -31.410000, 31.410000)
	registerVal4:setTopBottom(false, false, -31.180000, 31.180000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.560000)
	registerVal4:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal2:addElement(registerVal4)
	registerVal2.GlowOrangeOver0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, 17.000000, -17.000000)
	registerVal5:setTopBottom(false, false, 17.000000, -17.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setScale(0.750000)
	registerVal5:setImage(RegisterImage("uie_t7_cp_hud_incomingexplosive_glow"))
	registerVal2:addElement(registerVal5)
	registerVal2.BlackShadow = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -18.000000, 18.000000)
	registerVal6:setTopBottom(false, false, -17.000000, 19.000000)
	registerVal6:setAlpha(0.800000)
	registerVal6:setYRot(360.000000)
	registerVal6:setImage(RegisterImage("uie_t7_core_hud_ammowidget_blackjackringsmall"))
	registerVal2:addElement(registerVal6)
	registerVal2.RingBG = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, 11.980000, -12.020000)
	registerVal7:setTopBottom(false, false, -12.000000, 12.000000)
	registerVal7:setYRot(180.000000)
	registerVal7:setZRot(-7.000000)
	local function __FUNC_1A77_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setImage(RegisterImage(AppendString("_sm", GetThiefNextWeaponCoinImage(registerVal1))))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "HeroWeapon", "thiefWeaponStatus", __FUNC_1A77_)
	registerVal2:addElement(registerVal7)
	registerVal2.WeaponIcon = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, 11.980000, -12.020000)
	registerVal8:setTopBottom(false, false, -12.000000, 12.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setYRot(180.000000)
	registerVal8:setZRot(-8.000000)
	local function __FUNC_1B84_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setImage(RegisterImage(AppendString("_sm", registerVal1)))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "HeroWeapon", "imageAvailable", __FUNC_1B84_)
	registerVal2:addElement(registerVal8)
	registerVal2.WeaponIconOld = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, -15.000000, 15.000000)
	registerVal9:setTopBottom(false, false, -15.000000, 15.000000)
	registerVal9:setRGB(1.000000, 0.790000, 0.150000)
	registerVal9:setAlpha(0.040000)
	registerVal9:setScale(1.400000)
	registerVal9:setImage(RegisterImage("uie_img_t7_hud_cm_herobackingglow"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.GlowBig = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, false, -12.000000, 12.000000)
	registerVal10:setTopBottom(false, false, -12.150000, 11.850000)
	registerVal10:setRGB(1.000000, 0.790000, 0.150000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setImage(RegisterImage("uie_t7_core_hud_ammowidget_abilityswirl"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.AbilitySwirl = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, false, -31.410000, 31.410000)
	registerVal11:setTopBottom(false, false, -31.180000, 31.180000)
	registerVal11:setRGB(1.000000, 0.540000, 0.000000)
	registerVal11:setAlpha(0.090000)
	registerVal11:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.GlowOrangeOver = registerVal11
	local registerVal12 = CoD.AmmoWidget_AbilityGlow.new(arg0, arg1)
	registerVal12:setLeftRight(false, false, -18.000000, 18.000000)
	registerVal12:setTopBottom(false, false, -18.000000, 18.000000)
	registerVal12:setRGB(1.000000, 0.790000, 0.150000)
	registerVal12:setAlpha(0.090000)
	registerVal2:addElement(registerVal12)
	registerVal2.Glow = registerVal12
	local registerVal13 = {}
	local registerVal14 = {}
	local function __FUNC_1C67_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.AmmoWidgetHeroAbilityThiefOverlayWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:beginAnimation("keyframe", 920.000000, false, false, CoD.TweenType.Linear)
		registerVal4:setAlpha(0.000000)
		registerVal4:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		registerVal5:completeAnimation()
		registerVal2.BlackShadow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.RingBG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.WeaponIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.GlowBig:setAlpha(0.000000)
		registerVal2.GlowBig:setScale(1.400000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.AbilitySwirl:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.GlowOrangeOver:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.Glow:setScale(1.100000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_1C67_
	registerVal13.DefaultState = registerVal14
	registerVal14 = {}
	local function __FUNC_2144_()
		registerVal2:setupElementClipCounter(10.000000)
		local function __FUNC_284D_(arg0, arg1)
			local function __FUNC_29A4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
					arg0.FEButtonPanel0:beginAnimation("subkeyframe", 69.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -65.020000, -13.000000)
				arg0:setTopBottom(false, false, -7.150000, 8.850000)
				arg0:setAlpha(1.000000)
				arg0:setScale(1.000000)
				arg0.FEButtonPanel0:setAlpha(0.950000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_29A4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 550.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29A4_)
		end

		registerVal3:completeAnimation()
		registerVal3.FEButtonPanel0:completeAnimation()
		registerVal2.AmmoWidgetHeroAbilityThiefOverlayWidget:setLeftRight(false, false, -12.020000, -6.150000)
		registerVal2.AmmoWidgetHeroAbilityThiefOverlayWidget:setTopBottom(false, false, -7.150000, 8.850000)
		registerVal2.AmmoWidgetHeroAbilityThiefOverlayWidget:setAlpha(0.000000)
		registerVal2.AmmoWidgetHeroAbilityThiefOverlayWidget:setScale(0.200000)
		registerVal2.AmmoWidgetHeroAbilityThiefOverlayWidget.FEButtonPanel0:setAlpha(0.950000)
		__FUNC_284D_(registerVal3, {})
		local function __FUNC_2C71_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.560000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:beginAnimation("keyframe", 860.000000, false, false, CoD.TweenType.Linear)
		registerVal4:setAlpha(0.000000)
		registerVal4:registerEventHandler("transition_complete_keyframe", __FUNC_2C71_)
		local function __FUNC_2E25_(arg0, arg1)
			local function __FUNC_2F9F_(arg0, arg1)
				local function __FUNC_30F4_(arg0, arg1)
					local function __FUNC_326F_(arg0, arg1)
						local function __FUNC_33E7_(arg0, arg1)
							local function __FUNC_355F_(arg0, arg1)
								local function __FUNC_36D7_(arg0, arg1)
									local function __FUNC_384F_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 250.000000, true, false, CoD.TweenType.Bounce)
										end
										arg0:setAlpha(1.000000)
										arg0:setScale(0.750000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_384F_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
									arg0:setScale(0.860000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_384F_)
								end

								if arg1.interrupted then
									__FUNC_36D7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
								arg0:setScale(0.950000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36D7_)
							end

							if arg1.interrupted then
								__FUNC_355F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
							arg0:setScale(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_355F_)
						end

						if arg1.interrupted then
							__FUNC_33E7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
						arg0:setScale(0.800000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33E7_)
					end

					if arg1.interrupted then
						__FUNC_326F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 229.000000, false, false, CoD.TweenType.Linear)
					arg0:setScale(1.250000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_326F_)
				end

				if arg1.interrupted then
					__FUNC_30F4_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30F4_)
			end

			if arg1.interrupted then
				__FUNC_2F9F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.200000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F9F_)
		end

		registerVal5:completeAnimation()
		registerVal2.BlackShadow:setAlpha(0.000000)
		registerVal2.BlackShadow:setScale(1.000000)
		__FUNC_2E25_(registerVal5, {})
		local function __FUNC_3A24_(arg0, arg1)
			local function __FUNC_3B9F_(arg0, arg1)
				local function __FUNC_3D17_(arg0, arg1)
					local function __FUNC_3E8F_(arg0, arg1)
						local function __FUNC_402A_(arg0, arg1)
							local function __FUNC_41C6_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.900000)
								arg0:setScale(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_41C6_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.300000)
							arg0:setScale(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_41C6_)
						end

						if arg1.interrupted then
							__FUNC_402A_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:setScale(0.900000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_402A_)
					end

					if arg1.interrupted then
						__FUNC_3E8F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
					arg0:setScale(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E8F_)
				end

				if arg1.interrupted then
					__FUNC_3D17_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
				arg0:setScale(1.200000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D17_)
			end

			if arg1.interrupted then
				__FUNC_3B9F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B9F_)
		end

		registerVal6:completeAnimation()
		registerVal2.RingBG:setAlpha(0.000000)
		registerVal2.RingBG:setScale(0.800000)
		__FUNC_3A24_(registerVal6, {})
		local function __FUNC_439C_(arg0, arg1)
			local function __FUNC_4539_(arg0, arg1)
				local function __FUNC_46F8_(arg0, arg1)
					local function __FUNC_4895_(arg0, arg1)
						local function __FUNC_4A31_(arg0, arg1)
							local function __FUNC_4BF0_(arg0, arg1)
								local function __FUNC_4DB0_(arg0, arg1)
									local function __FUNC_4F4E_(arg0, arg1)
										local function __FUNC_50C7_(arg0, arg1)
											local function __FUNC_523F_(arg0, arg1)
												local function __FUNC_53B7_(arg0, arg1)
													if not arg1.interrupted then
														arg0:beginAnimation("keyframe", 210.000000, true, false, CoD.TweenType.Bounce)
													end
													arg0:setAlpha(1.000000)
													arg0:setZRot(7.000000)
													arg0:setScale(1.000000)
													if arg1.interrupted then
														registerVal2.clipFinished(arg0, arg1)
													else
														arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
													end
												end

												if arg1.interrupted then
													__FUNC_53B7_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
												arg0:setScale(1.200000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_53B7_)
											end

											if arg1.interrupted then
												__FUNC_523F_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
											arg0:setScale(1.300000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_523F_)
										end

										if arg1.interrupted then
											__FUNC_50C7_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:setScale(1.400000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_50C7_)
									end

									if arg1.interrupted then
										__FUNC_4F4E_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(1.000000)
									arg0:setScale(1.330000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4F4E_)
								end

								if arg1.interrupted then
									__FUNC_4DB0_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:setZRot(7.000000)
								arg0:setScale(1.110000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4DB0_)
							end

							if arg1.interrupted then
								__FUNC_4BF0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Linear)
							arg0:setAlpha(0.100000)
							arg0:setZRot(6.000000)
							arg0:setScale(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4BF0_)
						end

						if arg1.interrupted then
							__FUNC_4A31_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
						arg0:setZRot(5.920000)
						arg0:setScale(1.100000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A31_)
					end

					if arg1.interrupted then
						__FUNC_4895_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
					arg0:setZRot(4.790000)
					arg0:setScale(1.700000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4895_)
				end

				if arg1.interrupted then
					__FUNC_46F8_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setZRot(0.670000)
				arg0:setScale(1.360000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_46F8_)
			end

			if arg1.interrupted then
				__FUNC_4539_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setZRot(0.330000)
			arg0:setScale(1.330000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4539_)
		end

		registerVal7:completeAnimation()
		registerVal2.WeaponIcon:setAlpha(0.000000)
		registerVal2.WeaponIcon:setZRot(0.000000)
		registerVal2.WeaponIcon:setScale(1.300000)
		__FUNC_439C_(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.WeaponIconOld:setAlpha(0.000000)
		registerVal2.WeaponIconOld:setScale(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_55A9_(arg0, arg1)
			local function __FUNC_5723_(arg0, arg1)
				local function __FUNC_5878_(arg0, arg1)
					local function __FUNC_59F3_(arg0, arg1)
						local function __FUNC_5B6B_(arg0, arg1)
							local function __FUNC_5CE3_(arg0, arg1)
								local function __FUNC_5E5B_(arg0, arg1)
									local function __FUNC_5FD3_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 250.000000, true, false, CoD.TweenType.Bounce)
										end
										arg0:setAlpha(0.040000)
										arg0:setScale(1.400000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_5FD3_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
									arg0:setScale(1.360000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5FD3_)
								end

								if arg1.interrupted then
									__FUNC_5E5B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E5B_)
							end

							if arg1.interrupted then
								__FUNC_5CE3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.620000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5CE3_)
						end

						if arg1.interrupted then
							__FUNC_5B6B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B6B_)
					end

					if arg1.interrupted then
						__FUNC_59F3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_59F3_)
				end

				if arg1.interrupted then
					__FUNC_5878_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5878_)
			end

			if arg1.interrupted then
				__FUNC_5723_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.700000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5723_)
		end

		registerVal9:completeAnimation()
		registerVal2.GlowBig:setAlpha(0.000000)
		registerVal2.GlowBig:setScale(1.000000)
		__FUNC_55A9_(registerVal9, {})
		local function __FUNC_61A8_(arg0, arg1)
			local function __FUNC_6323_(arg0, arg1)
				local function __FUNC_64E0_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 169.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					arg0:setZRot(-231.000000)
					arg0:setScale(2.100000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_64E0_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setZRot(-45.940000)
				arg0:setScale(1.710000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_64E0_)
			end

			if arg1.interrupted then
				__FUNC_6323_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.580000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6323_)
		end

		registerVal10:completeAnimation()
		registerVal2.AbilitySwirl:setAlpha(0.000000)
		registerVal2.AbilitySwirl:setZRot(150.000000)
		registerVal2.AbilitySwirl:setScale(1.300000)
		__FUNC_61A8_(registerVal10, {})
		local function __FUNC_66DA_(arg0, arg1)
			local function __FUNC_6853_(arg0, arg1)
				local function __FUNC_69CB_(arg0, arg1)
					local function __FUNC_6B20_(arg0, arg1)
						local function __FUNC_6C9B_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.090000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_6C9B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.600000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6C9B_)
					end

					if arg1.interrupted then
						__FUNC_6B20_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 330.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6B20_)
				end

				if arg1.interrupted then
					__FUNC_69CB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_69CB_)
			end

			if arg1.interrupted then
				__FUNC_6853_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.300000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6853_)
		end

		registerVal11:completeAnimation()
		registerVal2.GlowOrangeOver:setAlpha(0.000000)
		__FUNC_66DA_(registerVal11, {})
		local function __FUNC_6E4D_(arg0, arg1)
			local function __FUNC_6FC7_(arg0, arg1)
				local function __FUNC_7162_(arg0, arg1)
					local function __FUNC_72FE_(arg0, arg1)
						local function __FUNC_7477_(arg0, arg1)
							local function __FUNC_75EF_(arg0, arg1)
								local function __FUNC_778A_(arg0, arg1)
									local function __FUNC_7926_(arg0, arg1)
										local function __FUNC_7AC2_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setAlpha(0.150000)
											arg0:setScale(1.000000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_7AC2_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.700000)
										arg0:setScale(1.060000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7AC2_)
									end

									if arg1.interrupted then
										__FUNC_7926_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.860000)
									arg0:setScale(1.100000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7926_)
								end

								if arg1.interrupted then
									__FUNC_778A_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:setScale(0.500000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_778A_)
							end

							if arg1.interrupted then
								__FUNC_75EF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
							arg0:setScale(0.800000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_75EF_)
						end

						if arg1.interrupted then
							__FUNC_7477_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
						arg0:setScale(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7477_)
					end

					if arg1.interrupted then
						__FUNC_72FE_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:setScale(1.590000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_72FE_)
				end

				if arg1.interrupted then
					__FUNC_7162_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.550000)
				arg0:setScale(1.150000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7162_)
			end

			if arg1.interrupted then
				__FUNC_6FC7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6FC7_)
		end

		registerVal12:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.Glow:setScale(0.990000)
		__FUNC_6E4D_(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_2144_
	local function __FUNC_7C98_()
		registerVal2:setupElementClipCounter(10.000000)
		local function __FUNC_8278_(arg0, arg1)
			local function __FUNC_8408_(arg0, arg1)
				local function __FUNC_85DE_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -12.020000, -6.150000)
					arg0:setTopBottom(false, false, -7.150000, 8.850000)
					arg0:setAlpha(0.000000)
					arg0:setScale(0.200000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_85DE_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -12.020000, -6.150000)
				arg0:setAlpha(0.000000)
				arg0:setScale(0.200000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_85DE_)
			end

			if arg1.interrupted then
				__FUNC_8408_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, -71.020000, -13.150000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8408_)
		end

		registerVal3:completeAnimation()
		registerVal2.AmmoWidgetHeroAbilityThiefOverlayWidget:setLeftRight(false, false, -65.020000, -13.000000)
		registerVal2.AmmoWidgetHeroAbilityThiefOverlayWidget:setTopBottom(false, false, -7.150000, 8.850000)
		registerVal2.AmmoWidgetHeroAbilityThiefOverlayWidget:setAlpha(1.000000)
		registerVal2.AmmoWidgetHeroAbilityThiefOverlayWidget:setScale(1.000000)
		__FUNC_8278_(registerVal3, {})
		local function __FUNC_8824_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.GlowOrangeOver0:setAlpha(0.560000)
		__FUNC_8824_(registerVal4, {})
		local function __FUNC_89D9_(arg0, arg1)
			local function __FUNC_8B76_(arg0, arg1)
				local function __FUNC_8D12_(arg0, arg1)
					local function __FUNC_8EAE_(arg0, arg1)
						local function __FUNC_904A_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							arg0:setScale(0.800000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_904A_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.070000)
						arg0:setScale(0.800000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_904A_)
					end

					if arg1.interrupted then
						__FUNC_8EAE_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.090000)
					arg0:setScale(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8EAE_)
				end

				if arg1.interrupted then
					__FUNC_8D12_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.120000)
				arg0:setScale(0.950000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8D12_)
			end

			if arg1.interrupted then
				__FUNC_8B76_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.200000)
			arg0:setScale(0.890000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8B76_)
		end

		registerVal5:completeAnimation()
		registerVal2.BlackShadow:setAlpha(1.000000)
		registerVal2.BlackShadow:setScale(0.750000)
		__FUNC_89D9_(registerVal5, {})
		local function __FUNC_9220_(arg0, arg1)
			local function __FUNC_93BE_(arg0, arg1)
				local function __FUNC_955A_(arg0, arg1)
					local function __FUNC_96F6_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						arg0:setScale(0.200000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_96F6_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.800000)
					arg0:setScale(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_96F6_)
				end

				if arg1.interrupted then
					__FUNC_955A_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:setScale(0.900000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_955A_)
			end

			if arg1.interrupted then
				__FUNC_93BE_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.300000)
			arg0:setScale(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_93BE_)
		end

		registerVal6:completeAnimation()
		registerVal2.RingBG:setAlpha(0.900000)
		registerVal2.RingBG:setScale(1.000000)
		__FUNC_9220_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.WeaponIcon:setAlpha(0.000000)
		registerVal2.WeaponIcon:setScale(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_98CC_(arg0, arg1)
			local function __FUNC_9A6A_(arg0, arg1)
				local function __FUNC_9C06_(arg0, arg1)
					local function __FUNC_9DA2_(arg0, arg1)
						local function __FUNC_9F3E_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							arg0:setScale(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_9F3E_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.100000)
						arg0:setScale(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9F3E_)
					end

					if arg1.interrupted then
						__FUNC_9DA2_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.280000)
					arg0:setScale(1.330000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9DA2_)
				end

				if arg1.interrupted then
					__FUNC_9C06_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.320000)
				arg0:setScale(1.400000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9C06_)
			end

			if arg1.interrupted then
				__FUNC_9A6A_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.570000)
			arg0:setScale(1.250000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9A6A_)
		end

		registerVal8:completeAnimation()
		registerVal2.WeaponIconOld:setAlpha(1.000000)
		registerVal2.WeaponIconOld:setScale(1.000000)
		__FUNC_98CC_(registerVal8, {})
		local function __FUNC_A114_(arg0, arg1)
			local function __FUNC_A2B2_(arg0, arg1)
				local function __FUNC_A42B_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					arg0:setScale(0.800000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_A42B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
				arg0:setScale(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A42B_)
			end

			if arg1.interrupted then
				__FUNC_A2B2_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.170000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A2B2_)
		end

		registerVal9:completeAnimation()
		registerVal2.GlowBig:setAlpha(0.040000)
		registerVal2.GlowBig:setScale(1.400000)
		__FUNC_A114_(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.AbilitySwirl:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		local function __FUNC_A600_(arg0, arg1)
			local function __FUNC_A77B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_A77B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.600000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A77B_)
		end

		registerVal11:completeAnimation()
		registerVal2.GlowOrangeOver:setAlpha(0.090000)
		__FUNC_A600_(registerVal11, {})
		local function __FUNC_A92D_(arg0, arg1)
			local function __FUNC_AACA_(arg0, arg1)
				local function __FUNC_AC66_(arg0, arg1)
					local function __FUNC_AE02_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setRGB(1.000000, 0.790000, 0.150000)
						arg0:setAlpha(0.000000)
						arg0:setScale(0.200000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_AE02_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:setScale(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AE02_)
				end

				if arg1.interrupted then
					__FUNC_AC66_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 130.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.860000)
				arg0:setScale(1.100000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AC66_)
			end

			if arg1.interrupted then
				__FUNC_AACA_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.700000)
			arg0:setScale(1.060000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AACA_)
		end

		registerVal12:completeAnimation()
		registerVal2.Glow:setRGB(1.000000, 0.790000, 0.150000)
		registerVal2.Glow:setAlpha(0.150000)
		registerVal2.Glow:setScale(1.000000)
		__FUNC_A92D_(registerVal12, {})
	end

	registerVal14.DefaultState = __FUNC_7C98_
	registerVal13.Ready = registerVal14
	registerVal2.clipsPerState = registerVal13
	local registerVal15 = {}
	local registerVal16 = {}
	registerVal16.stateName = "Ready"
	local function __FUNC_B00B_(arg0, arg2, arg3)
		local registerVal3 = IsBlackMarketSpecialistThiefCoinActive(arg1)
		if registerVal3 then
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_HUD_VISIBLE)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_HUD_HARDCORE)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_GAME_ENDED)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_KILLCAM)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IS_SCOPED)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_VEHICLE)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC)
			if registerVal3 and registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
				registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_EMP_ACTIVE)
			else
			end
		end
		return true
	end

	registerVal16.condition = __FUNC_B00B_
	registerVal15 = {registerVal16}
	registerVal2:mergeStateConditions(registerVal15)
	registerVal16 = Engine.GetModelForController(arg1)
	registerVal15 = Engine.GetModel(registerVal16, "playerAbilities.playerGadget3.thiefWeaponStatus")
	local function __FUNC_B60B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.thiefWeaponStatus"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal15, __FUNC_B60B_)
	registerVal16 = Engine.GetModelForController(arg1)
	registerVal15 = Engine.GetModel(registerVal16, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE))
	local function __FUNC_B74D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal15, __FUNC_B74D_)
	registerVal16 = Engine.GetModelForController(arg1)
	registerVal15 = Engine.GetModel(registerVal16, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE))
	local function __FUNC_B8D6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal15, __FUNC_B8D6_)
	registerVal16 = Engine.GetModelForController(arg1)
	registerVal15 = Engine.GetModel(registerVal16, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_HARDCORE))
	local function __FUNC_BA65_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_HARDCORE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal15, __FUNC_BA65_)
	registerVal16 = Engine.GetModelForController(arg1)
	registerVal15 = Engine.GetModel(registerVal16, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED))
	local function __FUNC_BBEF_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal15, __FUNC_BBEF_)
	registerVal16 = Engine.GetModelForController(arg1)
	registerVal15 = Engine.GetModel(registerVal16, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM))
	local function __FUNC_BD75_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal15, __FUNC_BD75_)
	registerVal16 = Engine.GetModelForController(arg1)
	registerVal15 = Engine.GetModel(registerVal16, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN))
	local function __FUNC_BF0C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal15, __FUNC_BF0C_)
	registerVal16 = Engine.GetModelForController(arg1)
	registerVal15 = Engine.GetModel(registerVal16, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM))
	local function __FUNC_C0A3_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal15, __FUNC_C0A3_)
	registerVal16 = Engine.GetModelForController(arg1)
	registerVal15 = Engine.GetModel(registerVal16, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED))
	local function __FUNC_C229_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal15, __FUNC_C229_)
	registerVal16 = Engine.GetModelForController(arg1)
	registerVal15 = Engine.GetModel(registerVal16, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE))
	local function __FUNC_C3B6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal15, __FUNC_C3B6_)
	registerVal16 = Engine.GetModelForController(arg1)
	registerVal15 = Engine.GetModel(registerVal16, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_SCOPED))
	local function __FUNC_C53C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_SCOPED)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal15, __FUNC_C53C_)
	registerVal16 = Engine.GetModelForController(arg1)
	registerVal15 = Engine.GetModel(registerVal16, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_VEHICLE))
	local function __FUNC_C6C4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_VEHICLE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal15, __FUNC_C6C4_)
	registerVal16 = Engine.GetModelForController(arg1)
	registerVal15 = Engine.GetModel(registerVal16, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE))
	local function __FUNC_C84D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal15, __FUNC_C84D_)
	registerVal16 = Engine.GetModelForController(arg1)
	registerVal15 = Engine.GetModel(registerVal16, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN))
	local function __FUNC_C9DC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal15, __FUNC_C9DC_)
	registerVal16 = Engine.GetModelForController(arg1)
	registerVal15 = Engine.GetModel(registerVal16, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC))
	local function __FUNC_CB6A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal15, __FUNC_CB6A_)
	registerVal16 = Engine.GetModelForController(arg1)
	registerVal15 = Engine.GetModel(registerVal16, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE))
	local function __FUNC_CD02_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal15, __FUNC_CD02_)
	local function __FUNC_CE89_(arg0)
		arg0.AmmoWidgetHeroAbilityThiefOverlayWidget:close()
		arg0.Glow:close()
		arg0.WeaponIcon:close()
		arg0.WeaponIconOld:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_CE89_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

