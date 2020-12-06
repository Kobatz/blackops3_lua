-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_HeroWeaponContainer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidgetMP_HeroWeaponAnimation = registerVal1
function CoD.AmmoWidgetMP_HeroWeaponAnimation.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidgetMP_HeroWeaponAnimation)
	registerVal2.id = "AmmoWidgetMP_HeroWeaponAnimation"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 98.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 98.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.AmmoWidget_HeroWeaponContainer.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 98.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 98.000000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Visible"
	local function __FUNC_88B_(arg0, arg2, arg3)
		local registerVal3 = IsHeroAbilityWeapon(arg1)
		if registerVal3 then
			registerVal3 = IsBlackMarketSpecialistRouletteActive(arg1)
			if not registerVal3 then
				registerVal3 = IsModelValueEqualTo(arg1, "playerAbilities.playerGadget3.thiefStatus", 1.000000)
			else
			end
		end
		return true
	end

	registerVal7.condition = __FUNC_88B_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "playerAbilities.playerGadget3.name")
	local function __FUNC_9A5_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.name"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_9A5_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "playerAbilities.playerGadget3.rouletteStatus")
	local function __FUNC_ADC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.rouletteStatus"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_ADC_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "playerAbilities.playerGadget3.thiefStatus")
	local function __FUNC_C1E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.thiefStatus"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_C1E_)
	registerVal2:addElement(registerVal3)
	registerVal2.AmmoWidgetHeroWeaponContainer0 = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_D5B_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.AmmoWidgetHeroWeaponContainer0:setAlpha(0.000000)
		registerVal2.AmmoWidgetHeroWeaponContainer0:setZoom(10.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_D5B_
	local function __FUNC_EA0_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_FCE_(arg0, arg1)
			local function __FUNC_1124_(arg0, arg1)
				local function __FUNC_129E_(arg0, arg1)
					local function __FUNC_1439_(arg0, arg1)
						local function __FUNC_15B2_(arg0, arg1)
							local function __FUNC_174D_(arg0, arg1)
								local function __FUNC_18C6_(arg0, arg1)
									local function __FUNC_1A61_(arg0, arg1)
										local function __FUNC_1BDA_(arg0, arg1)
											local function __FUNC_1D75_(arg0, arg1)
												local function __FUNC_1ECC_(arg0, arg1)
													if not arg1.interrupted then
														arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
													end
													arg0:setAlpha(1.000000)
													arg0:setZoom(0.000000)
													if arg1.interrupted then
														registerVal2.clipFinished(arg0, arg1)
													else
														arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
													end
												end

												if arg1.interrupted then
													__FUNC_1ECC_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1ECC_)
											end

											if arg1.interrupted then
												__FUNC_1D75_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.700000)
											arg0:setZoom(0.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D75_)
										end

										if arg1.interrupted then
											__FUNC_1BDA_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:setZoom(0.670000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BDA_)
									end

									if arg1.interrupted then
										__FUNC_1A61_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(1.000000)
									arg0:setZoom(2.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A61_)
								end

								if arg1.interrupted then
									__FUNC_18C6_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
								arg0:setZoom(2.670000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18C6_)
							end

							if arg1.interrupted then
								__FUNC_174D_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.500000)
							arg0:setZoom(4.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_174D_)
						end

						if arg1.interrupted then
							__FUNC_15B2_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:setZoom(4.670000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15B2_)
					end

					if arg1.interrupted then
						__FUNC_1439_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:setZoom(6.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1439_)
				end

				if arg1.interrupted then
					__FUNC_129E_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				arg0:setZoom(6.670000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_129E_)
			end

			if arg1.interrupted then
				__FUNC_1124_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1159.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1124_)
		end

		registerVal3:completeAnimation()
		registerVal2.AmmoWidgetHeroWeaponContainer0:setAlpha(0.000000)
		registerVal2.AmmoWidgetHeroWeaponContainer0:setZoom(10.000000)
		__FUNC_FCE_(registerVal3, {})
	end

	registerVal5.HudStart = __FUNC_EA0_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_20A3_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.AmmoWidgetHeroWeaponContainer0:setAlpha(1.000000)
		registerVal2.AmmoWidgetHeroWeaponContainer0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_20A3_
	local function __FUNC_21E3_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_22D7_(arg0, arg1)
			local function __FUNC_242C_(arg0, arg1)
				local function __FUNC_25A7_(arg0, arg1)
					local function __FUNC_271F_(arg0, arg1)
						local function __FUNC_2897_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_2897_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.450000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2897_)
					end

					if arg1.interrupted then
						__FUNC_271F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.330000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_271F_)
				end

				if arg1.interrupted then
					__FUNC_25A7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.620000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25A7_)
			end

			if arg1.interrupted then
				__FUNC_242C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_242C_)
		end

		registerVal3:completeAnimation()
		registerVal2.AmmoWidgetHeroWeaponContainer0:setAlpha(1.000000)
		__FUNC_22D7_(registerVal3, {})
	end

	registerVal5.DefaultState = __FUNC_21E3_
	registerVal4.HudStart = registerVal5
	registerVal5 = {}
	local function __FUNC_2A49_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_2A49_
	registerVal4.HudPause = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_2AAA_(arg0)
		arg0.AmmoWidgetHeroWeaponContainer0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2AAA_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

