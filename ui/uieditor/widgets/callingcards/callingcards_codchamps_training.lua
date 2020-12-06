-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_CodChamps_Training = registerVal1
function CoD.CallingCards_CodChamps_Training.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_CodChamps_Training)
	registerVal2.id = "CallingCards_CodChamps_Training"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcards_training_bg"))
	registerVal2:addElement(registerVal3)
	registerVal2.bg = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcards_training_bg2"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll_normal"))
	registerVal4:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.bg2 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 264.000000, 480.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal5:setImage(RegisterImage("uie_t7_callingcards_training_boxer1"))
	registerVal2:addElement(registerVal5)
	registerVal2.boxer1 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 258.000000, 474.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal6:setImage(RegisterImage("uie_t7_callingcards_training_boxer2"))
	registerVal2:addElement(registerVal6)
	registerVal2.boxer2 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 298.000000, 454.000000)
	registerVal7:setTopBottom(true, false, 24.270000, 125.000000)
	registerVal7:setImage(RegisterImage("uie_t7_callingcards_training_sweat"))
	registerVal2:addElement(registerVal7)
	registerVal2.sweat = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 211.000000, 355.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal8:setImage(RegisterImage("uie_t7_callingcards_training_smoke1"))
	registerVal2:addElement(registerVal8)
	registerVal2.dust1 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 218.000000, 362.000000)
	registerVal9:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setImage(RegisterImage("uie_t7_callingcards_training_smoke2"))
	registerVal2:addElement(registerVal9)
	registerVal2.dust2 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 122.000000, 290.000000)
	registerVal10:setTopBottom(true, false, -21.000000, 135.000000)
	registerVal10:setImage(RegisterImage("uie_t7_callingcards_training_bag"))
	registerVal2:addElement(registerVal10)
	registerVal2.bag = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal11:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal11:setImage(RegisterImage("uie_t7_callingcards_training_light"))
	registerVal2:addElement(registerVal11)
	registerVal2.light = registerVal11
	local registerVal12 = {}
	local registerVal13 = {}
	local function __FUNC_BF0_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_108D_(arg0, arg1)
			local function __FUNC_121C_(arg0, arg1)
				local function __FUNC_13AC_(arg0, arg1)
					local function __FUNC_153C_(arg0, arg1)
						local function __FUNC_16CC_(arg0, arg1)
							local function __FUNC_185C_(arg0, arg1)
								local function __FUNC_19EC_(arg0, arg1)
									local function __FUNC_1B7C_(arg0, arg1)
										local function __FUNC_1D0C_(arg0, arg1)
											local function __FUNC_1E9C_(arg0, arg1)
												local function __FUNC_202C_(arg0, arg1)
													local function __FUNC_21BC_(arg0, arg1)
														local function __FUNC_234C_(arg0, arg1)
															local function __FUNC_24DC_(arg0, arg1)
																local function __FUNC_2667_(arg0, arg1)
																	local function __FUNC_27F4_(arg0, arg1)
																		local function __FUNC_2984_(arg0, arg1)
																			if not arg1.interrupted then
																				arg0:beginAnimation("keyframe", 179.000000, false, false, CoD.TweenType.Linear)
																			end
																			arg0:setLeftRight(true, false, 264.000000, 480.000000)
																			arg0:setTopBottom(true, false, 0.000000, 120.000000)
																			arg0:setAlpha(1.000000)
																			if arg1.interrupted then
																				registerVal2.clipFinished(arg0, arg1)
																			else
																				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																			end
																		end

																		if arg1.interrupted then
																			__FUNC_2984_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
																		arg0:setLeftRight(true, false, 254.000000, 470.000000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2984_)
																	end

																	if arg1.interrupted then
																		__FUNC_27F4_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
																	arg0:setLeftRight(true, false, 263.580000, 479.580000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27F4_)
																end

																if arg1.interrupted then
																	__FUNC_2667_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
																arg0:setLeftRight(true, false, 250.000000, 466.000000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2667_)
															end

															if arg1.interrupted then
																__FUNC_24DC_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 420.000000, false, false, CoD.TweenType.Linear)
															arg0:setLeftRight(true, false, 262.150000, 478.150000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24DC_)
														end

														if arg1.interrupted then
															__FUNC_234C_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 440.000000, false, false, CoD.TweenType.Linear)
														arg0:setLeftRight(true, false, 278.500000, 494.500000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_234C_)
													end

													if arg1.interrupted then
														__FUNC_21BC_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 379.000000, false, false, CoD.TweenType.Linear)
													arg0:setLeftRight(true, false, 281.000000, 497.000000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21BC_)
												end

												if arg1.interrupted then
													__FUNC_202C_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 330.000000, false, false, CoD.TweenType.Linear)
												arg0:setLeftRight(true, false, 269.000000, 485.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_202C_)
											end

											if arg1.interrupted then
												__FUNC_1E9C_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
											arg0:setLeftRight(true, false, 278.840000, 494.840000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E9C_)
										end

										if arg1.interrupted then
											__FUNC_1D0C_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
										arg0:setLeftRight(true, false, 274.000000, 490.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D0C_)
									end

									if arg1.interrupted then
										__FUNC_1B7C_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									arg0:setLeftRight(true, false, 264.000000, 480.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B7C_)
								end

								if arg1.interrupted then
									__FUNC_19EC_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
								arg0:setLeftRight(true, false, 258.000000, 474.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19EC_)
							end

							if arg1.interrupted then
								__FUNC_185C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, 272.000000, 488.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_185C_)
						end

						if arg1.interrupted then
							__FUNC_16CC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 271.590000, 487.590000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16CC_)
					end

					if arg1.interrupted then
						__FUNC_153C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 329.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 281.000000, 497.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_153C_)
				end

				if arg1.interrupted then
					__FUNC_13AC_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 266.250000, 482.250000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13AC_)
			end

			if arg1.interrupted then
				__FUNC_121C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 274.790000, 490.790000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_121C_)
		end

		registerVal5:completeAnimation()
		registerVal2.boxer1:setLeftRight(true, false, 264.000000, 480.000000)
		registerVal2.boxer1:setTopBottom(true, false, 0.000000, 120.000000)
		registerVal2.boxer1:setAlpha(1.000000)
		__FUNC_108D_(registerVal5, {})
		local function __FUNC_2BA9_(arg0, arg1)
			local function __FUNC_2D38_(arg0, arg1)
				local function __FUNC_2EC8_(arg0, arg1)
					local function __FUNC_3058_(arg0, arg1)
						local function __FUNC_31E8_(arg0, arg1)
							local function __FUNC_3378_(arg0, arg1)
								local function __FUNC_3508_(arg0, arg1)
									local function __FUNC_36BB_(arg0, arg1)
										local function __FUNC_386B_(arg0, arg1)
											local function __FUNC_39F8_(arg0, arg1)
												local function __FUNC_3B88_(arg0, arg1)
													local function __FUNC_3D18_(arg0, arg1)
														local function __FUNC_3EA8_(arg0, arg1)
															local function __FUNC_4038_(arg0, arg1)
																local function __FUNC_41C8_(arg0, arg1)
																	local function __FUNC_4358_(arg0, arg1)
																		local function __FUNC_44E8_(arg0, arg1)
																			local function __FUNC_469B_(arg0, arg1)
																				local function __FUNC_484B_(arg0, arg1)
																					local function __FUNC_49D8_(arg0, arg1)
																						local function __FUNC_4B68_(arg0, arg1)
																							local function __FUNC_4D1B_(arg0, arg1)
																								if not arg1.interrupted then
																									arg0:beginAnimation("keyframe", 179.000000, false, false, CoD.TweenType.Linear)
																								end
																								arg0:setLeftRight(true, false, 258.000000, 474.000000)
																								arg0:setTopBottom(true, false, 0.000000, 120.000000)
																								arg0:setAlpha(0.000000)
																								if arg1.interrupted then
																									registerVal2.clipFinished(arg0, arg1)
																								else
																									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																								end
																							end

																							if arg1.interrupted then
																								__FUNC_4D1B_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 130.000000, false, false, CoD.TweenType.Linear)
																							arg0:setLeftRight(true, false, 248.000000, 464.000000)
																							arg0:setAlpha(1.000000)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D1B_)
																						end

																						if arg1.interrupted then
																							__FUNC_4B68_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
																						arg0:setLeftRight(true, false, 254.920000, 470.920000)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B68_)
																					end

																					if arg1.interrupted then
																						__FUNC_49D8_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
																					arg0:setLeftRight(true, false, 257.580000, 473.580000)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_49D8_)
																				end

																				if arg1.interrupted then
																					__FUNC_484B_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
																				arg0:setLeftRight(true, false, 250.790000, 466.790000)
																				arg0:setAlpha(0.000000)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_484B_)
																			end

																			if arg1.interrupted then
																				__FUNC_469B_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 130.000000, false, false, CoD.TweenType.Linear)
																			arg0:setLeftRight(true, false, 244.000000, 460.000000)
																			arg0:setAlpha(1.000000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_469B_)
																		end

																		if arg1.interrupted then
																			__FUNC_44E8_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
																		arg0:setLeftRight(true, false, 250.320000, 466.320000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_44E8_)
																	end

																	if arg1.interrupted then
																		__FUNC_4358_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 410.000000, false, false, CoD.TweenType.Linear)
																	arg0:setLeftRight(true, false, 256.150000, 472.150000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4358_)
																end

																if arg1.interrupted then
																	__FUNC_41C8_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 450.000000, false, false, CoD.TweenType.Linear)
																arg0:setLeftRight(true, false, 272.110000, 488.110000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_41C8_)
															end

															if arg1.interrupted then
																__FUNC_4038_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 379.000000, false, false, CoD.TweenType.Linear)
															arg0:setLeftRight(true, false, 275.000000, 491.000000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4038_)
														end

														if arg1.interrupted then
															__FUNC_3EA8_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 330.000000, false, false, CoD.TweenType.Linear)
														arg0:setLeftRight(true, false, 263.000000, 479.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3EA8_)
													end

													if arg1.interrupted then
														__FUNC_3D18_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
													arg0:setLeftRight(true, false, 272.840000, 488.840000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D18_)
												end

												if arg1.interrupted then
													__FUNC_3B88_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
												arg0:setLeftRight(true, false, 268.000000, 484.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B88_)
											end

											if arg1.interrupted then
												__FUNC_39F8_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
											arg0:setLeftRight(true, false, 258.000000, 474.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39F8_)
										end

										if arg1.interrupted then
											__FUNC_386B_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
										arg0:setLeftRight(true, false, 256.170000, 472.170000)
										arg0:setAlpha(0.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_386B_)
									end

									if arg1.interrupted then
										__FUNC_36BB_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
									arg0:setLeftRight(true, false, 252.000000, 468.000000)
									arg0:setAlpha(1.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36BB_)
								end

								if arg1.interrupted then
									__FUNC_3508_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
								arg0:setLeftRight(true, false, 261.100000, 477.100000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3508_)
							end

							if arg1.interrupted then
								__FUNC_3378_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, 266.000000, 482.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3378_)
						end

						if arg1.interrupted then
							__FUNC_31E8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 265.590000, 481.590000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31E8_)
					end

					if arg1.interrupted then
						__FUNC_3058_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 329.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 275.170000, 491.170000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3058_)
				end

				if arg1.interrupted then
					__FUNC_2EC8_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 260.250000, 476.250000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EC8_)
			end

			if arg1.interrupted then
				__FUNC_2D38_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 268.790000, 484.790000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D38_)
		end

		registerVal6:completeAnimation()
		registerVal2.boxer2:setLeftRight(true, false, 258.000000, 474.000000)
		registerVal2.boxer2:setTopBottom(true, false, 0.000000, 120.000000)
		registerVal2.boxer2:setAlpha(0.000000)
		__FUNC_2BA9_(registerVal6, {})
		local function __FUNC_4F38_(arg0, arg1)
			local function __FUNC_5090_(arg0, arg1)
				local function __FUNC_520B_(arg0, arg1)
					local function __FUNC_53A6_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 2960.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						arg0:setScale(1.200000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_53A6_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 279.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:setScale(1.200000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_53A6_)
				end

				if arg1.interrupted then
					__FUNC_520B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_520B_)
			end

			if arg1.interrupted then
				__FUNC_5090_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1480.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5090_)
		end

		registerVal7:completeAnimation()
		registerVal2.sweat:setAlpha(0.000000)
		registerVal2.sweat:setScale(1.000000)
		__FUNC_4F38_(registerVal7, {})
		local function __FUNC_557C_(arg0, arg1)
			local function __FUNC_5767_(arg0, arg1)
				local function __FUNC_58F4_(arg0, arg1)
					local function __FUNC_5ABC_(arg0, arg1)
						local function __FUNC_5CA7_(arg0, arg1)
							local function __FUNC_5E8A_(arg0, arg1)
								local function __FUNC_6050_(arg0, arg1)
									local function __FUNC_623B_(arg0, arg1)
										local function __FUNC_6423_(arg0, arg1)
											local function __FUNC_65E8_(arg0, arg1)
												local function __FUNC_67D3_(arg0, arg1)
													if not arg1.interrupted then
														arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
													end
													arg0:setLeftRight(true, false, 224.230000, 368.230000)
													arg0:setTopBottom(true, false, 17.430000, 137.430000)
													arg0:setAlpha(0.690000)
													if arg1.interrupted then
														registerVal2.clipFinished(arg0, arg1)
													else
														arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
													end
												end

												if arg1.interrupted then
													__FUNC_67D3_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
												arg0:setLeftRight(true, false, 223.660000, 367.660000)
												arg0:setTopBottom(true, false, 26.000000, 146.000000)
												arg0:setAlpha(1.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_67D3_)
											end

											if arg1.interrupted then
												__FUNC_65E8_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0:setLeftRight(true, false, 223.570000, 367.570000)
											arg0:setTopBottom(true, false, 17.500000, 137.500000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_65E8_)
										end

										if arg1.interrupted then
											__FUNC_6423_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
										arg0:setLeftRight(true, false, 223.480000, 367.480000)
										arg0:setTopBottom(true, false, 9.000000, 129.000000)
										arg0:setAlpha(0.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6423_)
									end

									if arg1.interrupted then
										__FUNC_623B_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
									arg0:setLeftRight(true, false, 223.010000, 367.010000)
									arg0:setTopBottom(true, false, 22.730000, 142.730000)
									arg0:setAlpha(1.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_623B_)
								end

								if arg1.interrupted then
									__FUNC_6050_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 1619.000000, false, false, CoD.TweenType.Linear)
								arg0:setLeftRight(true, false, 223.000000, 367.000000)
								arg0:setTopBottom(true, false, 23.000000, 143.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6050_)
							end

							if arg1.interrupted then
								__FUNC_5E8A_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 940.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, 224.000000, 368.000000)
							arg0:setTopBottom(true, false, 0.000000, 120.000000)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E8A_)
						end

						if arg1.interrupted then
							__FUNC_5CA7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 211.890000, 355.890000)
						arg0:setTopBottom(true, false, 15.000000, 135.000000)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5CA7_)
					end

					if arg1.interrupted then
						__FUNC_5ABC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 1120.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 212.960000, 356.960000)
					arg0:setTopBottom(true, false, 14.260000, 134.260000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5ABC_)
				end

				if arg1.interrupted then
					__FUNC_58F4_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 0.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, 6.000000, 126.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_58F4_)
			end

			if arg1.interrupted then
				__FUNC_5767_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 339.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 225.000000, 369.000000)
			arg0:setTopBottom(true, false, 15.000000, 135.000000)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5767_)
		end

		registerVal8:completeAnimation()
		registerVal2.dust1:setLeftRight(true, false, 224.230000, 368.230000)
		registerVal2.dust1:setTopBottom(true, false, 17.430000, 137.430000)
		registerVal2.dust1:setAlpha(0.690000)
		__FUNC_557C_(registerVal8, {})
		local function __FUNC_69F5_(arg0, arg1)
			local function __FUNC_6BA6_(arg0, arg1)
				local function __FUNC_6D1E_(arg0, arg1)
					local function __FUNC_6E96_(arg0, arg1)
						local function __FUNC_700E_(arg0, arg1)
							local function __FUNC_7186_(arg0, arg1)
								local function __FUNC_7336_(arg0, arg1)
									local function __FUNC_74E6_(arg0, arg1)
										local function __FUNC_765E_(arg0, arg1)
											local function __FUNC_77D6_(arg0, arg1)
												local function __FUNC_794E_(arg0, arg1)
													local function __FUNC_7AA4_(arg0, arg1)
														local function __FUNC_7C56_(arg0, arg1)
															local function __FUNC_7E06_(arg0, arg1)
																local function __FUNC_7FB6_(arg0, arg1)
																	local function __FUNC_812E_(arg0, arg1)
																		if not arg1.interrupted then
																			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
																		end
																		arg0:setLeftRight(true, false, 118.580000, 286.580000)
																		arg0:setTopBottom(true, false, -21.000000, 135.000000)
																		arg0:setZRot(-1.760000)
																		if arg1.interrupted then
																			registerVal2.clipFinished(arg0, arg1)
																		else
																			arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																		end
																	end

																	if arg1.interrupted then
																		__FUNC_812E_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
																	arg0:setZRot(-2.740000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_812E_)
																end

																if arg1.interrupted then
																	__FUNC_7FB6_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 190.000000, false, false, CoD.TweenType.Linear)
																arg0:setLeftRight(true, false, 116.000000, 284.000000)
																arg0:setZRot(-4.000000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7FB6_)
															end

															if arg1.interrupted then
																__FUNC_7E06_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
															arg0:setLeftRight(true, false, 123.000000, 291.000000)
															arg0:setZRot(5.000000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7E06_)
														end

														if arg1.interrupted then
															__FUNC_7C56_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 130.000000, false, false, CoD.TweenType.Linear)
														arg0:setLeftRight(true, false, 116.000000, 284.000000)
														arg0:setZRot(-4.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7C56_)
													end

													if arg1.interrupted then
														__FUNC_7AA4_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 589.000000, false, false, CoD.TweenType.Linear)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7AA4_)
												end

												if arg1.interrupted then
													__FUNC_794E_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 490.000000, false, false, CoD.TweenType.Linear)
												arg0:setZRot(4.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_794E_)
											end

											if arg1.interrupted then
												__FUNC_77D6_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 529.000000, false, false, CoD.TweenType.Linear)
											arg0:setZRot(2.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_77D6_)
										end

										if arg1.interrupted then
											__FUNC_765E_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 590.000000, false, false, CoD.TweenType.Linear)
										arg0:setZRot(3.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_765E_)
									end

									if arg1.interrupted then
										__FUNC_74E6_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 269.000000, false, false, CoD.TweenType.Linear)
									arg0:setLeftRight(true, false, 123.000000, 291.000000)
									arg0:setZRot(-1.800000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_74E6_)
								end

								if arg1.interrupted then
									__FUNC_7336_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
								arg0:setLeftRight(true, false, 116.000000, 284.000000)
								arg0:setZRot(-4.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7336_)
							end

							if arg1.interrupted then
								__FUNC_7186_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
							arg0:setZRot(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7186_)
						end

						if arg1.interrupted then
							__FUNC_700E_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 330.000000, false, false, CoD.TweenType.Linear)
						arg0:setZRot(2.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_700E_)
					end

					if arg1.interrupted then
						__FUNC_6E96_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 540.000000, false, false, CoD.TweenType.Linear)
					arg0:setZRot(-0.560000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6E96_)
				end

				if arg1.interrupted then
					__FUNC_6D1E_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
				arg0:setZRot(7.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6D1E_)
			end

			if arg1.interrupted then
				__FUNC_6BA6_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 123.000000, 291.000000)
			arg0:setZRot(5.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6BA6_)
		end

		registerVal10:completeAnimation()
		registerVal2.bag:setLeftRight(true, false, 118.580000, 286.580000)
		registerVal2.bag:setTopBottom(true, false, -21.000000, 135.000000)
		registerVal2.bag:setZRot(-1.760000)
		__FUNC_69F5_(registerVal10, {})
		local function __FUNC_8350_(arg0, arg1)
			local function __FUNC_84CB_(arg0, arg1)
				local function __FUNC_8643_(arg0, arg1)
					local function __FUNC_87BB_(arg0, arg1)
						local function __FUNC_8933_(arg0, arg1)
							local function __FUNC_8AAB_(arg0, arg1)
								local function __FUNC_8C23_(arg0, arg1)
									local function __FUNC_8D9B_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 679.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setAlpha(0.500000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_8D9B_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(1.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8D9B_)
								end

								if arg1.interrupted then
									__FUNC_8C23_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 440.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.750000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8C23_)
							end

							if arg1.interrupted then
								__FUNC_8AAB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 1029.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.910000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8AAB_)
						end

						if arg1.interrupted then
							__FUNC_8933_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 1049.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.790000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8933_)
					end

					if arg1.interrupted then
						__FUNC_87BB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 559.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_87BB_)
				end

				if arg1.interrupted then
					__FUNC_8643_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 580.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.410000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8643_)
			end

			if arg1.interrupted then
				__FUNC_84CB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.560000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_84CB_)
		end

		registerVal11:completeAnimation()
		registerVal2.light:setAlpha(0.500000)
		__FUNC_8350_(registerVal11, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal13.DefaultClip = __FUNC_BF0_
	registerVal12.DefaultState = registerVal13
	registerVal2.clipsPerState = registerVal12
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

