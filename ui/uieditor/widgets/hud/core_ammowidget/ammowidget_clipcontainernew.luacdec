-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_ClipContainerValue")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_ClipContainerPress")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_ClipContainerNew = registerVal1
function CoD.AmmoWidget_ClipContainerNew.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_ClipContainerNew)
	registerVal2.id = "AmmoWidget_ClipContainerNew"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 108.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 48.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.AmmoWidget_ClipContainerValue.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -54.000000, 54.000000)
	registerVal3:setTopBottom(false, false, -22.000000, 20.000000)
	registerVal3:setRGB(1.000000, 0.000000, 0.170000)
	registerVal3:setAlpha(0.800000)
	local function __FUNC_95D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.Clip:setText(registerVal1)
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "CurrentWeapon", "ammoInClip", __FUNC_95D_)
	registerVal2:addElement(registerVal3)
	registerVal2.Clip = registerVal3
	local registerVal4 = CoD.AmmoWidget_ClipContainerPress.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -54.000000, 54.000000)
	registerVal4:setTopBottom(false, false, -22.000000, 20.000000)
	local function __FUNC_A0A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.Clip:setText(registerVal1)
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "CurrentWeapon", "ammoInClip", __FUNC_A0A_)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "NoAmmoPress"
	local function __FUNC_AB6_(arg0, arg2, arg3)
		return PulseNoAmmo(arg1)
	end

	registerVal8.condition = __FUNC_AB6_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "hudItems.pulseNoAmmo")
	local function __FUNC_B05_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hudItems.pulseNoAmmo"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_B05_)
	registerVal2:addElement(registerVal4)
	registerVal2.ClipContainerPress = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_C2E_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Clip:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Clip:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ClipContainerPress:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_C2E_
	local function __FUNC_DC6_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_ED5_(arg0, arg1)
			local function __FUNC_102C_(arg0, arg1)
				local function __FUNC_11A7_(arg0, arg1)
					local function __FUNC_12FC_(arg0, arg1)
						local function __FUNC_1477_(arg0, arg1)
							local function __FUNC_15EF_(arg0, arg1)
								local function __FUNC_1744_(arg0, arg1)
									local function __FUNC_18ED_(arg0, arg1)
										local function __FUNC_1A44_(arg0, arg1)
											local function __FUNC_1BC5_(arg0, arg1)
												local function __FUNC_1D4F_(arg0, arg1)
													if not arg1.interrupted then
														arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
													end
													arg0:setRGB(1.000000, 0.000000, 0.170000)
													arg0:setAlpha(1.000000)
													if arg1.interrupted then
														registerVal2.clipFinished(arg0, arg1)
													else
														arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
													end
												end

												if arg1.interrupted then
													__FUNC_1D4F_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
												arg0:setRGB(1.000000, 0.000000, 0.170000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D4F_)
											end

											if arg1.interrupted then
												__FUNC_1BC5_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0:setRGB(1.000000, 1.000000, 1.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BC5_)
										end

										if arg1.interrupted then
											__FUNC_1A44_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A44_)
									end

									if arg1.interrupted then
										__FUNC_18ED_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
									arg0:setRGB(1.000000, 0.000000, 0.170000)
									arg0:setAlpha(1.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18ED_)
								end

								if arg1.interrupted then
									__FUNC_1744_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1744_)
							end

							if arg1.interrupted then
								__FUNC_15EF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15EF_)
						end

						if arg1.interrupted then
							__FUNC_1477_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1477_)
					end

					if arg1.interrupted then
						__FUNC_12FC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12FC_)
				end

				if arg1.interrupted then
					__FUNC_11A7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.600000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11A7_)
			end

			if arg1.interrupted then
				__FUNC_102C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_102C_)
		end

		registerVal3:completeAnimation()
		registerVal2.Clip:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Clip:setAlpha(1.000000)
		__FUNC_ED5_(registerVal3, {})
	end

	registerVal6.LowAmmo = __FUNC_DC6_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_1F2F_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_20F1_(arg0, arg1)
			local function __FUNC_2248_(arg0, arg1)
				local function __FUNC_23D3_(arg0, arg1)
					local function __FUNC_2528_(arg0, arg1)
						local function __FUNC_26B3_(arg0, arg1)
							local function __FUNC_2808_(arg0, arg1)
								local function __FUNC_2993_(arg0, arg1)
									local function __FUNC_2B1B_(arg0, arg1)
										local function __FUNC_2C70_(arg0, arg1)
											local function __FUNC_2DFB_(arg0, arg1)
												local function __FUNC_2F50_(arg0, arg1)
													local function __FUNC_30DB_(arg0, arg1)
														local function __FUNC_3230_(arg0, arg1)
															local function __FUNC_33B1_(arg0, arg1)
																if not arg1.interrupted then
																	arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
																end
																arg0:setRGB(1.000000, 1.000000, 1.000000)
																arg0:setAlpha(1.000000)
																if arg1.interrupted then
																	registerVal2.clipFinished(arg0, arg1)
																else
																	arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																end
															end

															if arg1.interrupted then
																__FUNC_33B1_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
															arg0:setRGB(1.000000, 1.000000, 1.000000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33B1_)
														end

														if arg1.interrupted then
															__FUNC_3230_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3230_)
													end

													if arg1.interrupted then
														__FUNC_30DB_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0:setRGB(1.000000, 0.330000, 0.110000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30DB_)
												end

												if arg1.interrupted then
													__FUNC_2F50_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F50_)
											end

											if arg1.interrupted then
												__FUNC_2DFB_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0:setRGB(1.000000, 0.700000, 0.400000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DFB_)
										end

										if arg1.interrupted then
											__FUNC_2C70_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C70_)
									end

									if arg1.interrupted then
										__FUNC_2B1B_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
									arg0:setRGB(1.000000, 0.330000, 0.110000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B1B_)
								end

								if arg1.interrupted then
									__FUNC_2993_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setRGB(1.000000, 0.250000, 0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2993_)
							end

							if arg1.interrupted then
								__FUNC_2808_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2808_)
						end

						if arg1.interrupted then
							__FUNC_26B3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setRGB(1.000000, 0.000000, 0.170000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26B3_)
					end

					if arg1.interrupted then
						__FUNC_2528_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2528_)
				end

				if arg1.interrupted then
					__FUNC_23D3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setRGB(1.000000, 0.330000, 0.110000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23D3_)
			end

			if arg1.interrupted then
				__FUNC_2248_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2248_)
		end

		registerVal3:completeAnimation()
		registerVal2.Clip:setRGB(1.000000, 0.000000, 0.170000)
		registerVal2.Clip:setAlpha(1.000000)
		__FUNC_20F1_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ClipContainerPress:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal6.DefaultClip = __FUNC_1F2F_
	registerVal5.LowAmmo = registerVal6
	registerVal6 = {}
	local function __FUNC_3589_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Clip:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ClipContainerPress:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_3589_
	registerVal5.NoAmmo = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_36E9_(arg0)
		arg0.Clip:close()
		arg0.ClipContainerPress:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_36E9_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

