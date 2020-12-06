-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.Ground.VehicleGround_HashTextInternal")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.VehicleGround_HashText = registerVal1
function CoD.VehicleGround_HashText.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.VehicleGround_HashText)
	registerVal2.id = "VehicleGround_HashText"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 106.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 26.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -20.000000, -4.000000)
	registerVal3:setTopBottom(false, false, -7.330000, 3.330000)
	registerVal3:setRGB(0.800000, 0.820000, 0.870000)
	registerVal3:setZRot(-90.000000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_woundedsoldier_arrowt"))
	registerVal2:addElement(registerVal3)
	registerVal2.Arrow = registerVal3
	local registerVal4 = CoD.VehicleGround_HashTextInternal.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -49.000000, -7.000000)
	registerVal4:setTopBottom(false, false, -160.000000, 156.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.VehicleGroundHashTextInternal0 = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(false, false, -4.000000, 66.000000)
	registerVal5:setTopBottom(false, false, -8.000000, 4.000000)
	registerVal5:setRGB(0.470000, 0.510000, 0.600000)
	registerVal5:setText(Engine.Localize("STRIKE"))
	registerVal5:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal5:setLetterSpacing(1.500000)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.TextStrike = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -37.000000, -27.000000)
	registerVal6:setTopBottom(false, false, -12.000000, 29.000000)
	registerVal6:setZRot(90.000000)
	registerVal6:setImage(RegisterImage("uie_t7_cp_hud_woundedsoldier_sidemask"))
	registerVal2:addElement(registerVal6)
	registerVal2.Image0 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -37.000000, -31.000000)
	registerVal7:setTopBottom(false, false, -32.500000, 8.500000)
	registerVal7:setZRot(-90.000000)
	registerVal7:setImage(RegisterImage("uie_t7_cp_hud_woundedsoldier_sidemask"))
	registerVal2:addElement(registerVal7)
	registerVal2.Image1 = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_AD8_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_D7E_(arg0, arg1)
			local function __FUNC_ED4_(arg0, arg1)
				local function __FUNC_1087_(arg0, arg1)
					local function __FUNC_11FF_(arg0, arg1)
						local function __FUNC_1377_(arg0, arg1)
							local function __FUNC_1527_(arg0, arg1)
								local function __FUNC_167C_(arg0, arg1)
									local function __FUNC_17D4_(arg0, arg1)
										local function __FUNC_192C_(arg0, arg1)
											local function __FUNC_1AA7_(arg0, arg1)
												local function __FUNC_1C57_(arg0, arg1)
													local function __FUNC_1DCF_(arg0, arg1)
														local function __FUNC_1F47_(arg0, arg1)
															local function __FUNC_20F7_(arg0, arg1)
																local function __FUNC_226F_(arg0, arg1)
																	local function __FUNC_23C4_(arg0, arg1)
																		local function __FUNC_2577_(arg0, arg1)
																			local function __FUNC_26EF_(arg0, arg1)
																				local function __FUNC_2867_(arg0, arg1)
																					local function __FUNC_2A17_(arg0, arg1)
																						local function __FUNC_2B8F_(arg0, arg1)
																							local function __FUNC_2CE4_(arg0, arg1)
																								local function __FUNC_2E5F_(arg0, arg1)
																									local function __FUNC_300F_(arg0, arg1)
																										local function __FUNC_3187_(arg0, arg1)
																											local function __FUNC_32DC_(arg0, arg1)
																												local function __FUNC_3457_(arg0, arg1)
																													local function __FUNC_3607_(arg0, arg1)
																														local function __FUNC_375C_(arg0, arg1)
																															local function __FUNC_38D7_(arg0, arg1)
																																local function __FUNC_3A87_(arg0, arg1)
																																	local function __FUNC_3BFF_(arg0, arg1)
																																		local function __FUNC_3D77_(arg0, arg1)
																																			local function __FUNC_3F27_(arg0, arg1)
																																				local function __FUNC_409F_(arg0, arg1)
																																					local function __FUNC_41F4_(arg0, arg1)
																																						local function __FUNC_436F_(arg0, arg1)
																																							local function __FUNC_451F_(arg0, arg1)
																																								local function __FUNC_46CF_(arg0, arg1)
																																									if not arg1.interrupted then
																																										arg0:beginAnimation("keyframe", 290.000000, true, true, CoD.TweenType.Linear)
																																									end
																																									arg0:setLeftRight(false, false, -20.000000, -4.000000)
																																									arg0:setTopBottom(false, false, -7.330000, 3.330000)
																																									arg0:setAlpha(1.000000)
																																									if arg1.interrupted then
																																										registerVal2.clipFinished(arg0, arg1)
																																									else
																																										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																																									end
																																								end

																																								if arg1.interrupted then
																																									__FUNC_46CF_(arg0, arg1)
																																									return 
																																								end
																																								arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
																																								arg0:setLeftRight(false, false, -26.750000, -10.750000)
																																								arg0:setAlpha(0.200000)
																																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_46CF_)
																																							end

																																							if arg1.interrupted then
																																								__FUNC_451F_(arg0, arg1)
																																								return 
																																							end
																																							arg0:beginAnimation("keyframe", 260.000000, true, true, CoD.TweenType.Linear)
																																							arg0:setLeftRight(false, false, -27.000000, -11.000000)
																																							arg0:setAlpha(0.280000)
																																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_451F_)
																																						end

																																						if arg1.interrupted then
																																							__FUNC_436F_(arg0, arg1)
																																							return 
																																						end
																																						arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
																																						arg0:setAlpha(0.830000)
																																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_436F_)
																																					end

																																					if arg1.interrupted then
																																						__FUNC_41F4_(arg0, arg1)
																																						return 
																																					end
																																					arg0:beginAnimation("keyframe", 1729.000000, false, false, CoD.TweenType.Linear)
																																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_41F4_)
																																				end

																																				if arg1.interrupted then
																																					__FUNC_409F_(arg0, arg1)
																																					return 
																																				end
																																				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
																																				arg0:setAlpha(1.000000)
																																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_409F_)
																																			end

																																			if arg1.interrupted then
																																				__FUNC_3F27_(arg0, arg1)
																																				return 
																																			end
																																			arg0:beginAnimation("keyframe", 340.000000, true, true, CoD.TweenType.Linear)
																																			arg0:setLeftRight(false, false, -20.000000, -4.000000)
																																			arg0:setAlpha(0.970000)
																																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F27_)
																																		end

																																		if arg1.interrupted then
																																			__FUNC_3D77_(arg0, arg1)
																																			return 
																																		end
																																		arg0:beginAnimation("keyframe", 449.000000, false, false, CoD.TweenType.Linear)
																																		arg0:setAlpha(0.640000)
																																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D77_)
																																	end

																																	if arg1.interrupted then
																																		__FUNC_3BFF_(arg0, arg1)
																																		return 
																																	end
																																	arg0:beginAnimation("keyframe", 429.000000, false, false, CoD.TweenType.Linear)
																																	arg0:setAlpha(0.200000)
																																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3BFF_)
																																end

																																if arg1.interrupted then
																																	__FUNC_3A87_(arg0, arg1)
																																	return 
																																end
																																arg0:beginAnimation("keyframe", 310.000000, true, true, CoD.TweenType.Linear)
																																arg0:setLeftRight(false, false, -27.000000, -11.000000)
																																arg0:setAlpha(0.610000)
																																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A87_)
																															end

																															if arg1.interrupted then
																																__FUNC_38D7_(arg0, arg1)
																																return 
																															end
																															arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
																															arg0:setAlpha(0.900000)
																															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38D7_)
																														end

																														if arg1.interrupted then
																															__FUNC_375C_(arg0, arg1)
																															return 
																														end
																														arg0:beginAnimation("keyframe", 1329.000000, false, false, CoD.TweenType.Linear)
																														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_375C_)
																													end

																													if arg1.interrupted then
																														__FUNC_3607_(arg0, arg1)
																														return 
																													end
																													arg0:beginAnimation("keyframe", 500.000000, true, true, CoD.TweenType.Linear)
																													arg0:setLeftRight(false, false, -20.000000, -4.000000)
																													arg0:setAlpha(1.000000)
																													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3607_)
																												end

																												if arg1.interrupted then
																													__FUNC_3457_(arg0, arg1)
																													return 
																												end
																												arg0:beginAnimation("keyframe", 739.000000, false, false, CoD.TweenType.Linear)
																												arg0:setAlpha(0.720000)
																												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3457_)
																											end

																											if arg1.interrupted then
																												__FUNC_32DC_(arg0, arg1)
																												return 
																											end
																											arg0:beginAnimation("keyframe", 1059.000000, false, false, CoD.TweenType.Linear)
																											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32DC_)
																										end

																										if arg1.interrupted then
																											__FUNC_3187_(arg0, arg1)
																											return 
																										end
																										arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
																										arg0:setAlpha(0.200000)
																										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3187_)
																									end

																									if arg1.interrupted then
																										__FUNC_300F_(arg0, arg1)
																										return 
																									end
																									arg0:beginAnimation("keyframe", 809.000000, true, true, CoD.TweenType.Linear)
																									arg0:setLeftRight(false, false, -27.000000, -11.000000)
																									arg0:setAlpha(0.440000)
																									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_300F_)
																								end

																								if arg1.interrupted then
																									__FUNC_2E5F_(arg0, arg1)
																									return 
																								end
																								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																								arg0:setAlpha(0.990000)
																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E5F_)
																							end

																							if arg1.interrupted then
																								__FUNC_2CE4_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 359.000000, false, false, CoD.TweenType.Linear)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CE4_)
																						end

																						if arg1.interrupted then
																							__FUNC_2B8F_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																						arg0:setAlpha(1.000000)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B8F_)
																					end

																					if arg1.interrupted then
																						__FUNC_2A17_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 989.000000, true, true, CoD.TweenType.Linear)
																					arg0:setLeftRight(false, false, -20.000000, -4.000000)
																					arg0:setAlpha(0.990000)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A17_)
																				end

																				if arg1.interrupted then
																					__FUNC_2867_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
																				arg0:setAlpha(0.270000)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2867_)
																			end

																			if arg1.interrupted then
																				__FUNC_26EF_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 320.000000, false, false, CoD.TweenType.Linear)
																			arg0:setAlpha(0.200000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26EF_)
																		end

																		if arg1.interrupted then
																			__FUNC_2577_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 689.000000, true, true, CoD.TweenType.Linear)
																		arg0:setLeftRight(false, false, -27.000000, -11.000000)
																		arg0:setAlpha(0.450000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2577_)
																	end

																	if arg1.interrupted then
																		__FUNC_23C4_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 1510.000000, false, false, CoD.TweenType.Linear)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23C4_)
																end

																if arg1.interrupted then
																	__FUNC_226F_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
																arg0:setAlpha(1.000000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_226F_)
															end

															if arg1.interrupted then
																__FUNC_20F7_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 250.000000, true, true, CoD.TweenType.Linear)
															arg0:setLeftRight(false, false, -20.000000, -4.000000)
															arg0:setAlpha(0.890000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20F7_)
														end

														if arg1.interrupted then
															__FUNC_1F47_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
														arg0:setAlpha(0.350000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F47_)
													end

													if arg1.interrupted then
														__FUNC_1DCF_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.200000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DCF_)
												end

												if arg1.interrupted then
													__FUNC_1C57_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 240.000000, true, true, CoD.TweenType.Linear)
												arg0:setLeftRight(false, false, -27.000000, -11.000000)
												arg0:setAlpha(0.350000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C57_)
											end

											if arg1.interrupted then
												__FUNC_1AA7_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, true, true, CoD.TweenType.Linear)
											arg0:setAlpha(0.970000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AA7_)
										end

										if arg1.interrupted then
											__FUNC_192C_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 1980.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_192C_)
									end

									if arg1.interrupted then
										__FUNC_17D4_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 940.000000, true, true, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17D4_)
								end

								if arg1.interrupted then
									__FUNC_167C_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 470.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_167C_)
							end

							if arg1.interrupted then
								__FUNC_1527_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 179.000000, true, true, CoD.TweenType.Linear)
							arg0:setLeftRight(false, false, -20.000000, -4.000000)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1527_)
						end

						if arg1.interrupted then
							__FUNC_1377_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.450000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1377_)
					end

					if arg1.interrupted then
						__FUNC_11FF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.200000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11FF_)
				end

				if arg1.interrupted then
					__FUNC_1087_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 200.000000, true, true, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -27.000000, -11.000000)
				arg0:setAlpha(0.470000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1087_)
			end

			if arg1.interrupted then
				__FUNC_ED4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1500.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ED4_)
		end

		registerVal3:completeAnimation()
		registerVal2.Arrow:setLeftRight(false, false, -20.000000, -4.000000)
		registerVal2.Arrow:setTopBottom(false, false, -7.330000, 3.330000)
		registerVal2.Arrow:setAlpha(1.000000)
		__FUNC_D7E_(registerVal3, {})
		local function __FUNC_48F1_(arg0, arg1)
			local function __FUNC_4A48_(arg0, arg1)
				local function __FUNC_4BD8_(arg0, arg1)
					local function __FUNC_4D30_(arg0, arg1)
						local function __FUNC_4EC0_(arg0, arg1)
							local function __FUNC_5018_(arg0, arg1)
								local function __FUNC_51A8_(arg0, arg1)
									local function __FUNC_5300_(arg0, arg1)
										local function __FUNC_5490_(arg0, arg1)
											local function __FUNC_55E8_(arg0, arg1)
												local function __FUNC_5778_(arg0, arg1)
													local function __FUNC_5908_(arg0, arg1)
														local function __FUNC_5A98_(arg0, arg1)
															local function __FUNC_5BF0_(arg0, arg1)
																local function __FUNC_5D80_(arg0, arg1)
																	local function __FUNC_5ED8_(arg0, arg1)
																		if not arg1.interrupted then
																			arg0:beginAnimation("keyframe", 500.000000, true, true, CoD.TweenType.Linear)
																		end
																		arg0:setLeftRight(false, false, -49.000000, -7.000000)
																		arg0:setTopBottom(false, false, -160.000000, 156.000000)
																		if arg1.interrupted then
																			registerVal2.clipFinished(arg0, arg1)
																		else
																			arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																		end
																	end

																	if arg1.interrupted then
																		__FUNC_5ED8_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 2000.000000, false, false, CoD.TweenType.Linear)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5ED8_)
																end

																if arg1.interrupted then
																	__FUNC_5D80_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 1500.000000, true, true, CoD.TweenType.Linear)
																arg0:setTopBottom(false, false, -185.000000, 131.000000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5D80_)
															end

															if arg1.interrupted then
																__FUNC_5BF0_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 1500.000000, false, false, CoD.TweenType.Linear)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5BF0_)
														end

														if arg1.interrupted then
															__FUNC_5A98_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 500.000000, true, true, CoD.TweenType.Linear)
														arg0:setTopBottom(false, false, -235.000000, 81.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5A98_)
													end

													if arg1.interrupted then
														__FUNC_5908_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 1000.000000, true, true, CoD.TweenType.Linear)
													arg0:setTopBottom(false, false, -185.000000, 131.000000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5908_)
												end

												if arg1.interrupted then
													__FUNC_5778_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 2000.000000, true, true, CoD.TweenType.Linear)
												arg0:setTopBottom(false, false, -260.000000, 56.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5778_)
											end

											if arg1.interrupted then
												__FUNC_55E8_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_55E8_)
										end

										if arg1.interrupted then
											__FUNC_5490_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 2000.000000, true, true, CoD.TweenType.Linear)
										arg0:setTopBottom(false, false, -210.000000, 106.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5490_)
									end

									if arg1.interrupted then
										__FUNC_5300_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 1500.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5300_)
								end

								if arg1.interrupted then
									__FUNC_51A8_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 500.000000, true, true, CoD.TweenType.Linear)
								arg0:setTopBottom(false, false, -285.000000, 31.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_51A8_)
							end

							if arg1.interrupted then
								__FUNC_5018_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 2000.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5018_)
						end

						if arg1.interrupted then
							__FUNC_4EC0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 1000.000000, true, true, CoD.TweenType.Linear)
						arg0:setTopBottom(false, false, -85.000000, 231.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4EC0_)
					end

					if arg1.interrupted then
						__FUNC_4D30_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D30_)
				end

				if arg1.interrupted then
					__FUNC_4BD8_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 500.000000, true, true, CoD.TweenType.Linear)
				arg0:setTopBottom(false, false, -35.000000, 281.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4BD8_)
			end

			if arg1.interrupted then
				__FUNC_4A48_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1500.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A48_)
		end

		registerVal4:completeAnimation()
		registerVal2.VehicleGroundHashTextInternal0:setLeftRight(false, false, -49.000000, -7.000000)
		registerVal2.VehicleGroundHashTextInternal0:setTopBottom(false, false, -160.000000, 156.000000)
		__FUNC_48F1_(registerVal4, {})
		local function __FUNC_60DA_(arg0, arg1)
			local function __FUNC_6230_(arg0, arg1)
				local function __FUNC_63AB_(arg0, arg1)
					local function __FUNC_6500_(arg0, arg1)
						local function __FUNC_667B_(arg0, arg1)
							local function __FUNC_67D0_(arg0, arg1)
								local function __FUNC_694B_(arg0, arg1)
									local function __FUNC_6AA0_(arg0, arg1)
										local function __FUNC_6C1B_(arg0, arg1)
											local function __FUNC_6D70_(arg0, arg1)
												local function __FUNC_6EEB_(arg0, arg1)
													local function __FUNC_7040_(arg0, arg1)
														local function __FUNC_71BB_(arg0, arg1)
															local function __FUNC_7310_(arg0, arg1)
																local function __FUNC_748B_(arg0, arg1)
																	local function __FUNC_75E0_(arg0, arg1)
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
																		__FUNC_75E0_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_75E0_)
																end

																if arg1.interrupted then
																	__FUNC_748B_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																arg0:setAlpha(0.000000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_748B_)
															end

															if arg1.interrupted then
																__FUNC_7310_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7310_)
														end

														if arg1.interrupted then
															__FUNC_71BB_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
														arg0:setAlpha(0.500000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_71BB_)
													end

													if arg1.interrupted then
														__FUNC_7040_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7040_)
												end

												if arg1.interrupted then
													__FUNC_6EEB_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(0.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6EEB_)
											end

											if arg1.interrupted then
												__FUNC_6D70_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 3799.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6D70_)
										end

										if arg1.interrupted then
											__FUNC_6C1B_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(1.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6C1B_)
									end

									if arg1.interrupted then
										__FUNC_6AA0_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6AA0_)
								end

								if arg1.interrupted then
									__FUNC_694B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_694B_)
							end

							if arg1.interrupted then
								__FUNC_67D0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_67D0_)
						end

						if arg1.interrupted then
							__FUNC_667B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_667B_)
					end

					if arg1.interrupted then
						__FUNC_6500_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6500_)
				end

				if arg1.interrupted then
					__FUNC_63AB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_63AB_)
			end

			if arg1.interrupted then
				__FUNC_6230_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2000.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6230_)
		end

		registerVal5:completeAnimation()
		registerVal2.TextStrike:setAlpha(1.000000)
		__FUNC_60DA_(registerVal5, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal9.DefaultClip = __FUNC_AD8_
	registerVal8.DefaultState = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_7795_(arg0)
		arg0.VehicleGroundHashTextInternal0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_7795_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

