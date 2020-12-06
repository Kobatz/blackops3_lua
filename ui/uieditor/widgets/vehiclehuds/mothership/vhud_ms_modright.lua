-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.Ground.VehicleGround_ModT5")
require("ui.uieditor.widgets.VehicleHUDs.Ground.VehicleGround_ModT4")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_ms_ModRight = registerVal1
function CoD.vhud_ms_ModRight.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_ms_ModRight)
	registerVal2.id = "vhud_ms_ModRight"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 644.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 76.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.VehicleGround_ModT5.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, -256.000000, -144.000000)
	registerVal3:setTopBottom(true, false, 18.000000, 54.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.ModT1 = registerVal3
	local registerVal4 = CoD.VehicleGround_ModT4.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, -144.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 18.000000, 54.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.ModT2 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_77C_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_A62_(arg0, arg1)
			local function __FUNC_BB8_(arg0, arg1)
				local function __FUNC_D48_(arg0, arg1)
					local function __FUNC_EA0_(arg0, arg1)
						local function __FUNC_1030_(arg0, arg1)
							local function __FUNC_1188_(arg0, arg1)
								local function __FUNC_1318_(arg0, arg1)
									local function __FUNC_14CB_(arg0, arg1)
										local function __FUNC_1658_(arg0, arg1)
											local function __FUNC_180B_(arg0, arg1)
												local function __FUNC_1998_(arg0, arg1)
													local function __FUNC_1B13_(arg0, arg1)
														local function __FUNC_1C68_(arg0, arg1)
															local function __FUNC_1DE3_(arg0, arg1)
																local function __FUNC_1F38_(arg0, arg1)
																	local function __FUNC_20B3_(arg0, arg1)
																		local function __FUNC_2208_(arg0, arg1)
																			local function __FUNC_2383_(arg0, arg1)
																				local function __FUNC_24D8_(arg0, arg1)
																					local function __FUNC_2668_(arg0, arg1)
																						local function __FUNC_27C0_(arg0, arg1)
																							local function __FUNC_2950_(arg0, arg1)
																								local function __FUNC_2AA8_(arg0, arg1)
																									local function __FUNC_2C5B_(arg0, arg1)
																										if not arg1.interrupted then
																											arg0:beginAnimation("keyframe", 1699.000000, false, false, CoD.TweenType.Linear)
																										end
																										arg0:setLeftRight(true, false, 191.000000, 303.000000)
																										arg0:setTopBottom(true, false, 0.000000, 36.000000)
																										arg0:setAlpha(0.000000)
																										if arg1.interrupted then
																											registerVal2.clipFinished(arg0, arg1)
																										else
																											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																										end
																									end

																									if arg1.interrupted then
																										__FUNC_2C5B_(arg0, arg1)
																										return 
																									end
																									arg0:beginAnimation("keyframe", 199.000000, false, true, CoD.TweenType.Linear)
																									arg0:setLeftRight(true, false, 191.000000, 303.000000)
																									arg0:setAlpha(0.000000)
																									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C5B_)
																								end

																								if arg1.interrupted then
																									__FUNC_2AA8_(arg0, arg1)
																									return 
																								end
																								arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AA8_)
																							end

																							if arg1.interrupted then
																								__FUNC_2950_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 300.000000, false, true, CoD.TweenType.Linear)
																							arg0:setLeftRight(true, false, 276.000000, 388.000000)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2950_)
																						end

																						if arg1.interrupted then
																							__FUNC_27C0_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 1500.000000, false, false, CoD.TweenType.Linear)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27C0_)
																					end

																					if arg1.interrupted then
																						__FUNC_2668_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 300.000000, false, true, CoD.TweenType.Linear)
																					arg0:setLeftRight(true, false, 388.000000, 500.000000)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2668_)
																				end

																				if arg1.interrupted then
																					__FUNC_24D8_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 1909.000000, false, false, CoD.TweenType.Linear)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24D8_)
																			end

																			if arg1.interrupted then
																				__FUNC_2383_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																			arg0:setAlpha(1.000000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2383_)
																		end

																		if arg1.interrupted then
																			__FUNC_2208_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2208_)
																	end

																	if arg1.interrupted then
																		__FUNC_20B3_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																	arg0:setAlpha(0.000000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20B3_)
																end

																if arg1.interrupted then
																	__FUNC_1F38_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F38_)
															end

															if arg1.interrupted then
																__FUNC_1DE3_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
															arg0:setAlpha(0.500000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DE3_)
														end

														if arg1.interrupted then
															__FUNC_1C68_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C68_)
													end

													if arg1.interrupted then
														__FUNC_1B13_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.000000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B13_)
												end

												if arg1.interrupted then
													__FUNC_1998_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
												arg0:setLeftRight(true, false, 532.000000, 644.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1998_)
											end

											if arg1.interrupted then
												__FUNC_180B_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0:setLeftRight(true, false, 532.000000, 537.000000)
											arg0:setAlpha(1.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_180B_)
										end

										if arg1.interrupted then
											__FUNC_1658_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 2899.000000, false, false, CoD.TweenType.Linear)
										arg0:setLeftRight(true, false, 532.000000, 644.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1658_)
									end

									if arg1.interrupted then
										__FUNC_14CB_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 140.000000, false, true, CoD.TweenType.Linear)
									arg0:setLeftRight(true, false, 344.000000, 456.000000)
									arg0:setAlpha(0.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14CB_)
								end

								if arg1.interrupted then
									__FUNC_1318_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
								arg0:setLeftRight(true, false, 365.040000, 477.040000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1318_)
							end

							if arg1.interrupted then
								__FUNC_1188_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 3299.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1188_)
						end

						if arg1.interrupted then
							__FUNC_1030_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 299.000000, false, true, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 391.000000, 503.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1030_)
					end

					if arg1.interrupted then
						__FUNC_EA0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 1900.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EA0_)
				end

				if arg1.interrupted then
					__FUNC_D48_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 299.000000, false, true, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 496.000000, 608.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D48_)
			end

			if arg1.interrupted then
				__FUNC_BB8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1200.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BB8_)
		end

		registerVal3:completeAnimation()
		registerVal2.ModT1:setLeftRight(true, false, 532.000000, 644.000000)
		registerVal2.ModT1:setTopBottom(true, false, 0.000000, 36.000000)
		registerVal2.ModT1:setAlpha(1.000000)
		__FUNC_A62_(registerVal3, {})
		local function __FUNC_2E78_(arg0, arg1)
			local function __FUNC_3008_(arg0, arg1)
				local function __FUNC_3160_(arg0, arg1)
					local function __FUNC_32F0_(arg0, arg1)
						local function __FUNC_34A3_(arg0, arg1)
							local function __FUNC_3630_(arg0, arg1)
								local function __FUNC_37E3_(arg0, arg1)
									local function __FUNC_3970_(arg0, arg1)
										local function __FUNC_3AEB_(arg0, arg1)
											local function __FUNC_3C40_(arg0, arg1)
												local function __FUNC_3DBB_(arg0, arg1)
													local function __FUNC_3F10_(arg0, arg1)
														local function __FUNC_408B_(arg0, arg1)
															local function __FUNC_41E0_(arg0, arg1)
																local function __FUNC_435B_(arg0, arg1)
																	local function __FUNC_44B0_(arg0, arg1)
																		if not arg1.interrupted then
																			arg0:beginAnimation("keyframe", 300.000000, false, true, CoD.TweenType.Linear)
																		end
																		arg0:setLeftRight(true, false, 388.000000, 532.000000)
																		arg0:setTopBottom(true, false, 0.000000, 36.000000)
																		arg0:setAlpha(1.000000)
																		if arg1.interrupted then
																			registerVal2.clipFinished(arg0, arg1)
																		else
																			arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																		end
																	end

																	if arg1.interrupted then
																		__FUNC_44B0_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 1110.000000, false, false, CoD.TweenType.Linear)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_44B0_)
																end

																if arg1.interrupted then
																	__FUNC_435B_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																arg0:setAlpha(1.000000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_435B_)
															end

															if arg1.interrupted then
																__FUNC_41E0_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_41E0_)
														end

														if arg1.interrupted then
															__FUNC_408B_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
														arg0:setAlpha(0.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_408B_)
													end

													if arg1.interrupted then
														__FUNC_3F10_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F10_)
												end

												if arg1.interrupted then
													__FUNC_3DBB_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(0.500000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3DBB_)
											end

											if arg1.interrupted then
												__FUNC_3C40_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C40_)
										end

										if arg1.interrupted then
											__FUNC_3AEB_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3AEB_)
									end

									if arg1.interrupted then
										__FUNC_3970_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
									arg0:setLeftRight(true, false, 500.000000, 644.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3970_)
								end

								if arg1.interrupted then
									__FUNC_37E3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setLeftRight(true, false, 500.000000, 505.000000)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37E3_)
							end

							if arg1.interrupted then
								__FUNC_3630_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9100.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, 500.000000, 644.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3630_)
						end

						if arg1.interrupted then
							__FUNC_34A3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 247.000000, 391.000000)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34A3_)
					end

					if arg1.interrupted then
						__FUNC_32F0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 299.500000, 443.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32F0_)
				end

				if arg1.interrupted then
					__FUNC_3160_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1900.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3160_)
			end

			if arg1.interrupted then
				__FUNC_3008_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 299.000000, false, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 352.000000, 496.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3008_)
		end

		registerVal4:beginAnimation("keyframe", 1200.000000, false, false, CoD.TweenType.Linear)
		registerVal4:setLeftRight(true, false, 388.000000, 532.000000)
		registerVal4:setTopBottom(true, false, 0.000000, 36.000000)
		registerVal4:setAlpha(1.000000)
		registerVal4:registerEventHandler("transition_complete_keyframe", __FUNC_2E78_)
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal6.DefaultClip = __FUNC_77C_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_46D5_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_46D5_
	registerVal5.Hidden = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Hidden"
	local function __FUNC_4736_(arg0, arg2, arg3)
		return HideVehicleReticle(registerVal2, arg1, arg3)
	end

	registerVal8.condition = __FUNC_4736_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	local function __FUNC_4794_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "vehicleType"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "vehicleType", true, __FUNC_4794_)
	local function __FUNC_48B5_(arg0)
		arg0.ModT1:close()
		arg0.ModT2:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_48B5_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

