-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_ThiefCoinWidgetxml")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_AbilityGlow")
require("ui.uieditor.widgets.AmmoWidget_HeroAbilityThiefRingAnimation")
local function __FUNC_2E5_(arg0, arg1, arg2)
	local function __FUNC_4B4_(arg0, arg2)
		LUI.UIElement.clipOver(arg0, arg2)
		local registerVal3 = DataSources.HeroWeapon.getModel(arg1)
		local registerVal2 = Engine.GetModel(registerVal3, "thiefStatus")
		registerVal3 = Engine.GetModelValue(registerVal2)
		if registerVal3 and registerVal3 == 1.000000 then
			Engine.SetModelValue(registerVal2, 2.000000)
		end
	end

	arg0:registerEventHandler("clip_over", __FUNC_4B4_)
	local registerVal3 = DataSources.HeroWeapon.getModel(arg1)
	local registerVal4 = Engine.GetModel(registerVal3, "thiefLastWeapon")
	local registerVal5 = Engine.GetModel(registerVal3, "imageAvailable")
	if registerVal4 and registerVal5 then
		local registerVal6 = Engine.GetModelValue(registerVal5)
		local function __FUNC_664_(arg0)
			if not registerVal6 then
			end
			Engine.SetModelValue(registerVal4, "blacktransparent")
			local registerVal1 = Engine.GetModelValue(arg0)
		end

		arg0:subscribeToModel(registerVal5, __FUNC_664_)
	end
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_HeroAbilityThiefOverlay = registerVal2
local function __FUNC_72C_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_HeroAbilityThiefOverlay)
	registerVal2.id = "AmmoWidget_HeroAbilityThiefOverlay"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 398.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 124.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, 28.360000, 280.360000)
	registerVal3:setTopBottom(false, false, -116.360000, 135.650000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setScale(0.450000)
	registerVal3:setImage(RegisterImage("uie_t7_core_hud_ammowidget_ringfillblur"))
	registerVal2:addElement(registerVal3)
	registerVal2.RingBLURShadow = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, 68.710000, 228.710000)
	registerVal4:setTopBottom(false, false, -68.830000, 79.830000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setScale(0.900000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_incomingexplosive_glow"))
	registerVal2:addElement(registerVal4)
	registerVal2.MaskGlow0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, 119.830000, 190.170000)
	registerVal5:setTopBottom(false, false, -25.170000, 45.170000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_cp_hud_incomingexplosive_glow"))
	registerVal2:addElement(registerVal5)
	registerVal2.MaskGlow = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, 111.000000, 199.000000)
	registerVal6:setTopBottom(false, false, -34.000000, 54.000000)
	registerVal6:setRGB(0.730000, 0.430000, 0.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setZoom(-2.000000)
	registerVal6:setImage(RegisterImage("uie_t7_core_hud_ammowidget_heroringedgeglow"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.EdgeGlow = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, 111.000000, 199.000000)
	registerVal7:setTopBottom(false, false, -33.500000, 54.500000)
	registerVal7:setRGB(1.000000, 0.790000, 0.150000)
	registerVal7:setZoom(-5.000000)
	registerVal7:setImage(RegisterImage("uie_t7_core_hud_ammowidget_heroringedgeglow"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.EdgeGlow0 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, 108.500000, 197.500000)
	registerVal8:setTopBottom(false, false, -34.000000, 55.000000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal8:setZoom(3.000000)
	registerVal8:setImage(RegisterImage("uie_t7_cp_hud_incomingexplosive_glow"))
	registerVal2:addElement(registerVal8)
	registerVal2.BlackShadow = registerVal8
	local registerVal9 = CoD.AmmoWidget_ThiefCoinWidgetxml.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 300.860000, 405.860000)
	registerVal9:setTopBottom(true, false, 19.150000, 124.150000)
	registerVal9:setAlpha(0.430000)
	registerVal2:addElement(registerVal9)
	registerVal2.AmmoWidgetThiefCoinWidgetxml = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, false, 94.000000, 214.000000)
	registerVal10:setTopBottom(false, false, -49.000000, 71.000000)
	registerVal10:setRGB(1.000000, 0.790000, 0.150000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setZoom(-5.000000)
	registerVal10:setImage(RegisterImage("uie_t7_hud_mp_blackjack_gambler_texture1"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.Texture1 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, false, 94.000000, 214.000000)
	registerVal11:setTopBottom(false, false, -49.000000, 71.000000)
	registerVal11:setRGB(1.000000, 0.790000, 0.150000)
	registerVal11:setAlpha(0.690000)
	registerVal11:setZRot(22.500000)
	registerVal11:setZoom(-5.000000)
	registerVal11:setScale(1.230000)
	registerVal11:setImage(RegisterImage("uie_t7_hud_mp_blackjack_gambler_texture2"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.Texture2 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(false, false, 94.000000, 214.000000)
	registerVal12:setTopBottom(false, false, -43.000000, 65.000000)
	registerVal12:setRGB(1.000000, 0.790000, 0.150000)
	registerVal12:setAlpha(0.390000)
	registerVal12:setImage(RegisterImage("uie_img_t7_hud_cm_herobackingglow"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.GlowBig = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(false, false, 91.000000, 216.040000)
	registerVal13:setTopBottom(false, false, -58.000000, 69.000000)
	registerVal13:setRGB(1.000000, 0.790000, 0.150000)
	registerVal13:setAlpha(0.020000)
	registerVal13:setYRot(180.000000)
	registerVal13:setZRot(97.000000)
	registerVal13:setImage(RegisterImage("uie_t7_core_hud_ammowidget_abilityswirl"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.AbilitySwirl = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 250.010000, 452.830000)
	registerVal14:setTopBottom(true, false, -32.670000, 159.680000)
	registerVal14:setRGB(1.000000, 0.540000, 0.000000)
	registerVal14:setAlpha(0.340000)
	registerVal14:setZRot(90.000000)
	registerVal14:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.GlowOrangeOver = registerVal14
	local registerVal15 = CoD.AmmoWidget_AbilityGlow.new(arg0, arg1)
	registerVal15:setLeftRight(false, false, 99.940000, 204.900000)
	registerVal15:setTopBottom(false, false, -45.000000, 62.000000)
	registerVal15:setRGB(1.000000, 0.790000, 0.150000)
	registerVal2:addElement(registerVal15)
	registerVal2.Glow = registerVal15
	local registerVal16 = CoD.AmmoWidget_HeroAbilityThiefRingAnimation.new(arg0, arg1)
	registerVal16:setLeftRight(true, false, 328.170000, 443.170000)
	registerVal16:setTopBottom(true, false, 47.170000, 171.170000)
	registerVal2:addElement(registerVal16)
	registerVal2.AmmoWidgetHeroAbilityThiefRingAnimation = registerVal16
	local registerVal17 = {}
	local registerVal18 = {}
	local function __FUNC_1B5B_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.RingBLURShadow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.MaskGlow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.MaskGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.EdgeGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.EdgeGlow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BlackShadow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.AmmoWidgetThiefCoinWidgetxml:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Texture1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Texture2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.GlowBig:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.AbilitySwirl:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.GlowOrangeOver:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.AmmoWidgetHeroAbilityThiefRingAnimation:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_1B5B_
	registerVal17.DefaultState = registerVal18
	registerVal18 = {}
	local function __FUNC_20F9_()
		registerVal2:setupElementClipCounter(14.000000)
		local function __FUNC_2A7B_(arg0, arg1)
			local function __FUNC_2BF3_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 459.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2BF3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BF3_)
		end

		registerVal3:completeAnimation()
		registerVal2.RingBLURShadow:setAlpha(0.000000)
		__FUNC_2A7B_(registerVal3, {})
		local function __FUNC_2DA5_(arg0, arg1)
			local function __FUNC_2F1F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 459.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.700000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2F1F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.700000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F1F_)
		end

		registerVal4:completeAnimation()
		registerVal2.MaskGlow0:setAlpha(0.000000)
		__FUNC_2DA5_(registerVal4, {})
		local function __FUNC_30D1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.MaskGlow:setAlpha(0.000000)
		__FUNC_30D1_(registerVal5, {})
		local function __FUNC_3285_(arg0, arg1)
			local function __FUNC_33FF_(arg0, arg1)
				local function __FUNC_3599_(arg0, arg1)
					local function __FUNC_3735_(arg0, arg1)
						local function __FUNC_38AE_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							arg0:setYRot(304.000000)
							arg0:setScale(1.350000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_38AE_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
						arg0:setYRot(304.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38AE_)
					end

					if arg1.interrupted then
						__FUNC_3735_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
					arg0:setYRot(214.000000)
					arg0:setScale(1.350000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3735_)
				end

				if arg1.interrupted then
					__FUNC_3599_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
				arg0:setYRot(123.000000)
				arg0:setScale(1.260000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3599_)
			end

			if arg1.interrupted then
				__FUNC_33FF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:setScale(1.120000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33FF_)
		end

		registerVal6:completeAnimation()
		registerVal2.EdgeGlow:setAlpha(0.000000)
		registerVal2.EdgeGlow:setYRot(0.000000)
		registerVal2.EdgeGlow:setScale(1.000000)
		__FUNC_3285_(registerVal6, {})
		local function __FUNC_3AA6_(arg0, arg1)
			local function __FUNC_3C1F_(arg0, arg1)
				local function __FUNC_3DB9_(arg0, arg1)
					local function __FUNC_3F55_(arg0, arg1)
						local function __FUNC_40CE_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							arg0:setYRot(304.000000)
							arg0:setScale(1.350000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_40CE_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
						arg0:setYRot(304.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_40CE_)
					end

					if arg1.interrupted then
						__FUNC_3F55_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
					arg0:setYRot(214.000000)
					arg0:setScale(1.350000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F55_)
				end

				if arg1.interrupted then
					__FUNC_3DB9_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
				arg0:setYRot(123.000000)
				arg0:setScale(1.260000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3DB9_)
			end

			if arg1.interrupted then
				__FUNC_3C1F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:setScale(1.120000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C1F_)
		end

		registerVal7:completeAnimation()
		registerVal2.EdgeGlow0:setAlpha(0.000000)
		registerVal2.EdgeGlow0:setYRot(0.000000)
		registerVal2.EdgeGlow0:setScale(1.000000)
		__FUNC_3AA6_(registerVal7, {})
		local function __FUNC_42C6_(arg0, arg1)
			local function __FUNC_443F_(arg0, arg1)
				local function __FUNC_4594_(arg0, arg1)
					local function __FUNC_470E_(arg0, arg1)
						local function __FUNC_48A9_(arg0, arg1)
							local function __FUNC_4A23_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 169.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.200000)
								arg0:setYRot(180.000000)
								arg0:setScale(1.250000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_4A23_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
							arg0:setScale(1.250000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A23_)
						end

						if arg1.interrupted then
							__FUNC_48A9_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
						arg0:setYRot(180.000000)
						arg0:setScale(1.180000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_48A9_)
					end

					if arg1.interrupted then
						__FUNC_470E_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
					arg0:setYRot(114.550000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_470E_)
				end

				if arg1.interrupted then
					__FUNC_4594_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4594_)
			end

			if arg1.interrupted then
				__FUNC_443F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.200000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_443F_)
		end

		registerVal8:completeAnimation()
		registerVal2.BlackShadow:setAlpha(0.000000)
		registerVal2.BlackShadow:setYRot(0.000000)
		registerVal2.BlackShadow:setScale(1.000000)
		__FUNC_42C6_(registerVal8, {})
		local function __FUNC_4C1A_(arg0, arg1)
			local function __FUNC_4D93_(arg0, arg1)
				local function __FUNC_4F2E_(arg0, arg1)
					local function __FUNC_50EC_(arg0, arg1)
						local function __FUNC_52AC_(arg0, arg1)
							local function __FUNC_556D_(arg0, arg1)
								local function __FUNC_572C_(arg0, arg1)
									local function __FUNC_58EC_(arg0, arg1)
										local function __FUNC_5AAC_(arg0, arg1)
											local function __FUNC_5C6C_(arg0, arg1)
												local function __FUNC_5DE4_(arg0, arg1)
													local function __FUNC_5FA4_(arg0, arg1)
														if not arg1.interrupted then
															arg0:beginAnimation("keyframe", 19.000000, false, true, CoD.TweenType.Linear)
															arg0.RingBG:beginAnimation("subkeyframe", 19.000000, false, true, CoD.TweenType.Linear)
															arg0.NewWeaponIcon:beginAnimation("subkeyframe", 19.000000, false, true, CoD.TweenType.Linear)
															arg0.CurrentWeaponIcon:beginAnimation("subkeyframe", 19.000000, false, true, CoD.TweenType.Linear)
														end
														arg0:setLeftRight(true, false, 301.860000, 404.860000)
														arg0:setTopBottom(true, false, 20.150000, 123.150000)
														arg0:setAlpha(0.000000)
														arg0:setYRot(0.000000)
														arg0:setScale(0.650000)
														arg0.RingBG:setAlpha(1.000000)
														arg0.NewWeaponIcon:setAlpha(1.000000)
														arg0.CurrentWeaponIcon:setAlpha(0.000000)
														if arg1.interrupted then
															registerVal2.clipFinished(arg0, arg1)
														else
															arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
														end
													end

													if arg1.interrupted then
														__FUNC_5FA4_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Linear)
													arg0:setAlpha(0.210000)
													arg0:setYRot(175.000000)
													arg0:setScale(0.810000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5FA4_)
												end

												if arg1.interrupted then
													__FUNC_5DE4_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 99.000000, true, true, CoD.TweenType.Back)
												arg0:setYRot(171.740000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5DE4_)
											end

											if arg1.interrupted then
												__FUNC_5C6C_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.850000)
											arg0:setYRot(154.410000)
											arg0:setScale(1.300000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5C6C_)
										end

										if arg1.interrupted then
											__FUNC_5AAC_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.700000)
										arg0:setYRot(150.000000)
										arg0:setScale(1.340000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5AAC_)
									end

									if arg1.interrupted then
										__FUNC_58EC_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.770000)
									arg0:setYRot(131.820000)
									arg0:setScale(1.400000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_58EC_)
								end

								if arg1.interrupted then
									__FUNC_572C_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.860000)
								arg0:setYRot(110.000000)
								arg0:setScale(1.340000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_572C_)
							end

							if arg1.interrupted then
								__FUNC_556D_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0.NewWeaponIcon:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0.CurrentWeaponIcon:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.890000)
							arg0:setYRot(78.570000)
							arg0:setScale(1.320000)
							arg0.NewWeaponIcon:setAlpha(1.000000)
							arg0.CurrentWeaponIcon:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_556D_)
						end

						if arg1.interrupted then
							__FUNC_52AC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.900000)
						arg0:setYRot(62.860000)
						arg0:setScale(1.310000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_52AC_)
					end

					if arg1.interrupted then
						__FUNC_50EC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.910000)
					arg0:setYRot(47.140000)
					arg0:setScale(1.300000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_50EC_)
				end

				if arg1.interrupted then
					__FUNC_4F2E_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.960000)
				arg0:setScale(1.150000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4F2E_)
			end

			if arg1.interrupted then
				__FUNC_4D93_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D93_)
		end

		registerVal9:completeAnimation()
		registerVal9.RingBG:completeAnimation()
		registerVal9.NewWeaponIcon:completeAnimation()
		registerVal9.CurrentWeaponIcon:completeAnimation()
		registerVal2.AmmoWidgetThiefCoinWidgetxml:setLeftRight(true, false, 301.860000, 404.860000)
		registerVal2.AmmoWidgetThiefCoinWidgetxml:setTopBottom(true, false, 20.150000, 123.150000)
		registerVal2.AmmoWidgetThiefCoinWidgetxml:setAlpha(0.000000)
		registerVal2.AmmoWidgetThiefCoinWidgetxml:setYRot(0.000000)
		registerVal2.AmmoWidgetThiefCoinWidgetxml:setScale(1.000000)
		registerVal2.AmmoWidgetThiefCoinWidgetxml.RingBG:setAlpha(1.000000)
		registerVal2.AmmoWidgetThiefCoinWidgetxml.NewWeaponIcon:setAlpha(0.000000)
		registerVal2.AmmoWidgetThiefCoinWidgetxml.CurrentWeaponIcon:setAlpha(1.000000)
		__FUNC_4C1A_(registerVal9, {})
		local function __FUNC_636D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.Texture1:setAlpha(0.000000)
		__FUNC_636D_(registerVal10, {})
		local function __FUNC_6521_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setXRot(0.000000)
			arg0:setYRot(0.000000)
			arg0:setZRot(0.000000)
			arg0:setScale(1.100000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.Texture2:setAlpha(0.000000)
		registerVal2.Texture2:setXRot(0.000000)
		registerVal2.Texture2:setYRot(0.000000)
		registerVal2.Texture2:setZRot(0.000000)
		registerVal2.Texture2:setScale(1.100000)
		__FUNC_6521_(registerVal11, {})
		local function __FUNC_674F_(arg0, arg1)
			local function __FUNC_68C7_(arg0, arg1)
				local function __FUNC_6A1C_(arg0, arg1)
					local function __FUNC_6B96_(arg0, arg1)
						local function __FUNC_6D31_(arg0, arg1)
							local function __FUNC_6ECD_(arg0, arg1)
								local function __FUNC_7047_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 169.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.980000)
									arg0:setYRot(180.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_7047_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.620000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7047_)
							end

							if arg1.interrupted then
								__FUNC_6ECD_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:setYRot(180.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6ECD_)
						end

						if arg1.interrupted then
							__FUNC_6D31_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:setYRot(86.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6D31_)
					end

					if arg1.interrupted then
						__FUNC_6B96_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
					arg0:setYRot(43.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6B96_)
				end

				if arg1.interrupted then
					__FUNC_6A1C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6A1C_)
			end

			if arg1.interrupted then
				__FUNC_68C7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.700000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_68C7_)
		end

		registerVal12:completeAnimation()
		registerVal2.GlowBig:setAlpha(0.000000)
		registerVal2.GlowBig:setYRot(0.000000)
		__FUNC_674F_(registerVal12, {})
		local function __FUNC_721B_(arg0, arg1)
			local function __FUNC_7370_(arg0, arg1)
				local function __FUNC_7530_(arg0, arg1)
					local function __FUNC_7712_(arg0, arg1)
						local function __FUNC_78F2_(arg0, arg1)
							local function __FUNC_7AD2_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								arg0:setYRot(175.000000)
								arg0:setZRot(-231.000000)
								arg0:setScale(1.300000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_7AD2_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.400000)
							arg0:setYRot(153.330000)
							arg0:setZRot(-231.000000)
							arg0:setScale(1.600000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7AD2_)
						end

						if arg1.interrupted then
							__FUNC_78F2_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:setYRot(120.830000)
						arg0:setZRot(-96.530000)
						arg0:setScale(1.320000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_78F2_)
					end

					if arg1.interrupted then
						__FUNC_7712_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.820000)
					arg0:setYRot(110.000000)
					arg0:setZRot(-51.710000)
					arg0:setScale(1.220000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7712_)
				end

				if arg1.interrupted then
					__FUNC_7530_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.180000)
				arg0:setZRot(105.180000)
				arg0:setScale(0.890000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7530_)
			end

			if arg1.interrupted then
				__FUNC_7370_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7370_)
		end

		registerVal13:completeAnimation()
		registerVal2.AbilitySwirl:setAlpha(0.000000)
		registerVal2.AbilitySwirl:setYRot(0.000000)
		registerVal2.AbilitySwirl:setZRot(150.000000)
		registerVal2.AbilitySwirl:setScale(0.800000)
		__FUNC_721B_(registerVal13, {})
		local function __FUNC_7CEC_(arg0, arg1)
			local function __FUNC_7E67_(arg0, arg1)
				local function __FUNC_7FDF_(arg0, arg1)
					local function __FUNC_8134_(arg0, arg1)
						local function __FUNC_828C_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(true, false, 250.010000, 452.830000)
							arg0:setTopBottom(true, false, -32.680000, 159.680000)
							arg0:setAlpha(0.400000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_828C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_828C_)
					end

					if arg1.interrupted then
						__FUNC_8134_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8134_)
				end

				if arg1.interrupted then
					__FUNC_7FDF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7FDF_)
			end

			if arg1.interrupted then
				__FUNC_7E67_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.300000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7E67_)
		end

		registerVal14:completeAnimation()
		registerVal2.GlowOrangeOver:setLeftRight(true, false, 250.010000, 452.830000)
		registerVal2.GlowOrangeOver:setTopBottom(true, false, -32.680000, 159.680000)
		registerVal2.GlowOrangeOver:setAlpha(0.000000)
		__FUNC_7CEC_(registerVal14, {})
		local function __FUNC_84B1_(arg0, arg1)
			local function __FUNC_862B_(arg0, arg1)
				local function __FUNC_87C6_(arg0, arg1)
					local function __FUNC_8962_(arg0, arg1)
						local function __FUNC_8ADB_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 169.000000, false, false, CoD.TweenType.Linear)
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
							__FUNC_8ADB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
						arg0:setScale(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8ADB_)
					end

					if arg1.interrupted then
						__FUNC_8962_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:setScale(1.590000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8962_)
				end

				if arg1.interrupted then
					__FUNC_87C6_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.290000)
				arg0:setScale(1.150000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_87C6_)
			end

			if arg1.interrupted then
				__FUNC_862B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_862B_)
		end

		registerVal15:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.Glow:setScale(0.990000)
		__FUNC_84B1_(registerVal15, {})
		local function __FUNC_8CB0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.AmmoWidgetHeroAbilityThiefRingAnimation:setAlpha(1.000000)
		__FUNC_8CB0_(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_20F9_
	local function __FUNC_8E65_()
		registerVal2:setupElementClipCounter(14.000000)
		local function __FUNC_96F7_(arg0, arg1)
			local function __FUNC_986F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_986F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_986F_)
		end

		registerVal3:completeAnimation()
		registerVal2.RingBLURShadow:setAlpha(0.000000)
		__FUNC_96F7_(registerVal3, {})
		local function __FUNC_9A21_(arg0, arg1)
			local function __FUNC_9B78_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_9B78_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9B78_)
		end

		registerVal4:completeAnimation()
		registerVal2.MaskGlow0:setAlpha(0.700000)
		__FUNC_9A21_(registerVal4, {})
		local function __FUNC_9D2D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setScale(0.750000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.MaskGlow:setAlpha(0.000000)
		registerVal2.MaskGlow:setScale(0.750000)
		__FUNC_9D2D_(registerVal5, {})
		local function __FUNC_9F04_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setYRot(360.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.EdgeGlow:setAlpha(0.000000)
		registerVal2.EdgeGlow:setYRot(360.000000)
		registerVal2.EdgeGlow:setScale(1.000000)
		__FUNC_9F04_(registerVal6, {})
		local function __FUNC_A0FE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setYRot(360.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.EdgeGlow0:setAlpha(0.000000)
		registerVal2.EdgeGlow0:setYRot(360.000000)
		registerVal2.EdgeGlow0:setScale(1.000000)
		__FUNC_A0FE_(registerVal7, {})
		local function __FUNC_A2F6_(arg0, arg1)
			local function __FUNC_A44C_(arg0, arg1)
				local function __FUNC_A5C7_(arg0, arg1)
					local function __FUNC_A71C_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						arg0:setScale(0.950000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_A71C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A71C_)
				end

				if arg1.interrupted then
					__FUNC_A5C7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setScale(0.950000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A5C7_)
			end

			if arg1.interrupted then
				__FUNC_A44C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A44C_)
		end

		registerVal8:completeAnimation()
		registerVal2.BlackShadow:setAlpha(0.200000)
		registerVal2.BlackShadow:setScale(1.000000)
		__FUNC_A2F6_(registerVal8, {})
		local function __FUNC_A8F4_(arg0, arg1)
			local function __FUNC_AAF8_(arg0, arg1)
				local function __FUNC_AD18_(arg0, arg1)
					local function __FUNC_AEB6_(arg0, arg1)
						local function __FUNC_B052_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
								arg0.RingBG:beginAnimation("subkeyframe", 170.000000, false, false, CoD.TweenType.Linear)
								arg0.NewWeaponIcon:beginAnimation("subkeyframe", 170.000000, false, false, CoD.TweenType.Linear)
								arg0.CurrentWeaponIcon:beginAnimation("subkeyframe", 170.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							arg0:setYRot(360.000000)
							arg0:setScale(1.000000)
							arg0.RingBG:setAlpha(0.000000)
							arg0.NewWeaponIcon:setAlpha(0.000000)
							arg0.CurrentWeaponIcon:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_B052_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.130000)
						arg0:setScale(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B052_)
					end

					if arg1.interrupted then
						__FUNC_AEB6_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.160000)
					arg0:setScale(0.650000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AEB6_)
				end

				if arg1.interrupted then
					__FUNC_AD18_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
				arg0.RingBG:beginAnimation("subkeyframe", 70.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.190000)
				arg0:setScale(1.150000)
				arg0.RingBG:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AD18_)
			end

			if arg1.interrupted then
				__FUNC_AAF8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0.NewWeaponIcon:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.240000)
			arg0.NewWeaponIcon:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AAF8_)
		end

		registerVal9:completeAnimation()
		registerVal9.RingBG:completeAnimation()
		registerVal9.NewWeaponIcon:completeAnimation()
		registerVal9.CurrentWeaponIcon:completeAnimation()
		registerVal2.AmmoWidgetThiefCoinWidgetxml:setAlpha(0.260000)
		registerVal2.AmmoWidgetThiefCoinWidgetxml:setYRot(360.000000)
		registerVal2.AmmoWidgetThiefCoinWidgetxml:setScale(0.650000)
		registerVal2.AmmoWidgetThiefCoinWidgetxml.RingBG:setAlpha(1.000000)
		registerVal2.AmmoWidgetThiefCoinWidgetxml.NewWeaponIcon:setAlpha(1.000000)
		registerVal2.AmmoWidgetThiefCoinWidgetxml.CurrentWeaponIcon:setAlpha(0.000000)
		__FUNC_A8F4_(registerVal9, {})
		local function __FUNC_B3A9_(arg0, arg1)
			local function __FUNC_B523_(arg0, arg1)
				local function __FUNC_B69B_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					arg0:setScale(1.800000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_B69B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
				arg0:setScale(1.380000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B69B_)
			end

			if arg1.interrupted then
				__FUNC_B523_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.600000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B523_)
		end

		registerVal10:completeAnimation()
		registerVal2.Texture1:setAlpha(0.000000)
		registerVal2.Texture1:setScale(1.000000)
		__FUNC_B3A9_(registerVal10, {})
		local function __FUNC_B870_(arg0, arg1)
			local function __FUNC_B9EB_(arg0, arg1)
				local function __FUNC_BB86_(arg0, arg1)
					local function __FUNC_BD22_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						arg0:setXRot(0.000000)
						arg0:setYRot(0.000000)
						arg0:setZRot(0.000000)
						arg0:setScale(1.800000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_BD22_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:setScale(1.490000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BD22_)
				end

				if arg1.interrupted then
					__FUNC_BB86_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.600000)
				arg0:setScale(1.240000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BB86_)
			end

			if arg1.interrupted then
				__FUNC_B9EB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setScale(1.180000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B9EB_)
		end

		registerVal11:completeAnimation()
		registerVal2.Texture2:setAlpha(0.000000)
		registerVal2.Texture2:setXRot(0.000000)
		registerVal2.Texture2:setYRot(0.000000)
		registerVal2.Texture2:setZRot(0.000000)
		registerVal2.Texture2:setScale(1.100000)
		__FUNC_B870_(registerVal11, {})
		local function __FUNC_BF4F_(arg0, arg1)
			local function __FUNC_C0C7_(arg0, arg1)
				local function __FUNC_C23F_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					arg0:setScale(1.400000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_C23F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
				arg0:setScale(1.140000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C23F_)
			end

			if arg1.interrupted then
				__FUNC_C0C7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C0C7_)
		end

		registerVal12:completeAnimation()
		registerVal2.GlowBig:setAlpha(0.980000)
		registerVal2.GlowBig:setScale(1.000000)
		__FUNC_BF4F_(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.AbilitySwirl:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		local function __FUNC_C414_(arg0, arg1)
			local function __FUNC_C58F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_C58F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.600000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C58F_)
		end

		registerVal14:completeAnimation()
		registerVal2.GlowOrangeOver:setAlpha(0.400000)
		__FUNC_C414_(registerVal14, {})
		local function __FUNC_C741_(arg0, arg1)
			local function __FUNC_C8BB_(arg0, arg1)
				local function __FUNC_CA56_(arg0, arg1)
					local function __FUNC_CBF2_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
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
						__FUNC_CBF2_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:setScale(1.250000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CBF2_)
				end

				if arg1.interrupted then
					__FUNC_CA56_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:setScale(1.200000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CA56_)
			end

			if arg1.interrupted then
				__FUNC_C8BB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:setScale(1.070000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C8BB_)
		end

		registerVal15:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.Glow:setScale(0.800000)
		__FUNC_C741_(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.AmmoWidgetHeroAbilityThiefRingAnimation:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.Finished = __FUNC_8E65_
	registerVal17.Ready = registerVal18
	registerVal18 = {}
	local function __FUNC_CDC8_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal3:completeAnimation()
		registerVal2.RingBLURShadow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.MaskGlow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.MaskGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.EdgeGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.EdgeGlow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BlackShadow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.AmmoWidgetThiefCoinWidgetxml:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Texture1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Texture2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.GlowBig:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.AbilitySwirl:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.GlowOrangeOver:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.DefaultClip = __FUNC_CDC8_
	registerVal17.Finished = registerVal18
	registerVal2.clipsPerState = registerVal17
	local registerVal19 = {}
	local registerVal20 = {}
	registerVal20.stateName = "Ready"
	local function __FUNC_D2F4_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "playerAbilities.playerGadget3.thiefStatus", 1.000000)
	end

	registerVal20.condition = __FUNC_D2F4_
	local registerVal21 = {}
	registerVal21.stateName = "Finished"
	local function __FUNC_D38D_(arg0, arg1, arg2)
		return true
	end

	registerVal21.condition = __FUNC_D38D_
	registerVal19 = {registerVal20, registerVal21}
	registerVal2:mergeStateConditions(registerVal19)
	registerVal20 = Engine.GetModelForController(arg1)
	registerVal19 = Engine.GetModel(registerVal20, "playerAbilities.playerGadget3.thiefStatus")
	local function __FUNC_D3C0_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.thiefStatus"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal19, __FUNC_D3C0_)
	local function __FUNC_D4FF_(arg0)
		arg0.AmmoWidgetThiefCoinWidgetxml:close()
		arg0.Glow:close()
		arg0.AmmoWidgetHeroAbilityThiefRingAnimation:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_D4FF_)
	if __FUNC_2E5_ then
		__FUNC_2E5_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.AmmoWidget_HeroAbilityThiefOverlay.new = __FUNC_72C_
