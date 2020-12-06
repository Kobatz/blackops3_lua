-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.core_MapWidget.MapWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MapWidgetContainer = registerVal1
function CoD.MapWidgetContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MapWidgetContainer)
	registerVal2.id = "MapWidgetContainer"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 283.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 204.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.MapWidget.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 283.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 204.000000)
	registerVal3:setXRot(-17.000000)
	registerVal3:setYRot(21.000000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "HudStart"
	local function __FUNC_6B7_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal7.condition = __FUNC_6B7_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal2:addElement(registerVal3)
	registerVal2.MapWidget = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_701_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_701_
	local function __FUNC_7BB_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_859_(arg0, arg1)
			local function __FUNC_9B0_(arg0, arg1)
				local function __FUNC_B08_(arg0, arg1)
					local function __FUNC_C60_(arg0, arg1)
						local function __FUNC_DB8_(arg0, arg1)
							local function __FUNC_F10_(arg0, arg1)
								local function __FUNC_1068_(arg0, arg1)
									local function __FUNC_11C0_(arg0, arg1)
										local function __FUNC_1318_(arg0, arg1)
											local function __FUNC_1470_(arg0, arg1)
												local function __FUNC_15C8_(arg0, arg1)
													local function __FUNC_1720_(arg0, arg1)
														local function __FUNC_1878_(arg0, arg1)
															local function __FUNC_19D0_(arg0, arg1)
																local function __FUNC_1B28_(arg0, arg1)
																	local function __FUNC_1C80_(arg0, arg1)
																		local function __FUNC_1DD8_(arg0, arg1)
																			local function __FUNC_1F30_(arg0, arg1)
																				local function __FUNC_2088_(arg0, arg1)
																					local function __FUNC_21E0_(arg0, arg1)
																						local function __FUNC_2338_(arg0, arg1)
																							local function __FUNC_2490_(arg0, arg1)
																								if not arg1.interrupted then
																									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																								end
																								if arg1.interrupted then
																									registerVal2.clipFinished(arg0, arg1)
																								else
																									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																								end
																							end

																							if arg1.interrupted then
																								__FUNC_2490_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2490_)
																						end

																						if arg1.interrupted then
																							__FUNC_2338_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2338_)
																					end

																					if arg1.interrupted then
																						__FUNC_21E0_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21E0_)
																				end

																				if arg1.interrupted then
																					__FUNC_2088_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2088_)
																			end

																			if arg1.interrupted then
																				__FUNC_1F30_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F30_)
																		end

																		if arg1.interrupted then
																			__FUNC_1DD8_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DD8_)
																	end

																	if arg1.interrupted then
																		__FUNC_1C80_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C80_)
																end

																if arg1.interrupted then
																	__FUNC_1B28_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B28_)
															end

															if arg1.interrupted then
																__FUNC_19D0_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19D0_)
														end

														if arg1.interrupted then
															__FUNC_1878_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1878_)
													end

													if arg1.interrupted then
														__FUNC_1720_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1720_)
												end

												if arg1.interrupted then
													__FUNC_15C8_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15C8_)
											end

											if arg1.interrupted then
												__FUNC_1470_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1470_)
										end

										if arg1.interrupted then
											__FUNC_1318_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1318_)
									end

									if arg1.interrupted then
										__FUNC_11C0_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11C0_)
								end

								if arg1.interrupted then
									__FUNC_1068_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1068_)
							end

							if arg1.interrupted then
								__FUNC_F10_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F10_)
						end

						if arg1.interrupted then
							__FUNC_DB8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DB8_)
					end

					if arg1.interrupted then
						__FUNC_C60_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C60_)
				end

				if arg1.interrupted then
					__FUNC_B08_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B08_)
			end

			if arg1.interrupted then
				__FUNC_9B0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9B0_)
		end

		registerVal3:completeAnimation()
		__FUNC_859_(registerVal3, {})
	end

	registerVal5.HudStop = __FUNC_7BB_
	local function __FUNC_2622_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_26C1_(arg0, arg1)
			local function __FUNC_2818_(arg0, arg1)
				local function __FUNC_2970_(arg0, arg1)
					local function __FUNC_2AC8_(arg0, arg1)
						local function __FUNC_2C20_(arg0, arg1)
							local function __FUNC_2D78_(arg0, arg1)
								local function __FUNC_2ED0_(arg0, arg1)
									local function __FUNC_3028_(arg0, arg1)
										local function __FUNC_3180_(arg0, arg1)
											local function __FUNC_32D8_(arg0, arg1)
												local function __FUNC_3430_(arg0, arg1)
													local function __FUNC_3588_(arg0, arg1)
														local function __FUNC_36E0_(arg0, arg1)
															local function __FUNC_3838_(arg0, arg1)
																local function __FUNC_3990_(arg0, arg1)
																	local function __FUNC_3AE8_(arg0, arg1)
																		local function __FUNC_3C40_(arg0, arg1)
																			local function __FUNC_3D98_(arg0, arg1)
																				local function __FUNC_3EF0_(arg0, arg1)
																					local function __FUNC_4048_(arg0, arg1)
																						local function __FUNC_41A0_(arg0, arg1)
																							local function __FUNC_42F8_(arg0, arg1)
																								local function __FUNC_4450_(arg0, arg1)
																									local function __FUNC_45A8_(arg0, arg1)
																										local function __FUNC_4700_(arg0, arg1)
																											local function __FUNC_4858_(arg0, arg1)
																												local function __FUNC_49B0_(arg0, arg1)
																													local function __FUNC_4B08_(arg0, arg1)
																														if not arg1.interrupted then
																															arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																														end
																														if arg1.interrupted then
																															registerVal2.clipFinished(arg0, arg1)
																														else
																															arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																														end
																													end

																													if arg1.interrupted then
																														__FUNC_4B08_(arg0, arg1)
																														return 
																													end
																													arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B08_)
																												end

																												if arg1.interrupted then
																													__FUNC_49B0_(arg0, arg1)
																													return 
																												end
																												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_49B0_)
																											end

																											if arg1.interrupted then
																												__FUNC_4858_(arg0, arg1)
																												return 
																											end
																											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4858_)
																										end

																										if arg1.interrupted then
																											__FUNC_4700_(arg0, arg1)
																											return 
																										end
																										arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4700_)
																									end

																									if arg1.interrupted then
																										__FUNC_45A8_(arg0, arg1)
																										return 
																									end
																									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_45A8_)
																								end

																								if arg1.interrupted then
																									__FUNC_4450_(arg0, arg1)
																									return 
																								end
																								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4450_)
																							end

																							if arg1.interrupted then
																								__FUNC_42F8_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_42F8_)
																						end

																						if arg1.interrupted then
																							__FUNC_41A0_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_41A0_)
																					end

																					if arg1.interrupted then
																						__FUNC_4048_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4048_)
																				end

																				if arg1.interrupted then
																					__FUNC_3EF0_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3EF0_)
																			end

																			if arg1.interrupted then
																				__FUNC_3D98_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D98_)
																		end

																		if arg1.interrupted then
																			__FUNC_3C40_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C40_)
																	end

																	if arg1.interrupted then
																		__FUNC_3AE8_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3AE8_)
																end

																if arg1.interrupted then
																	__FUNC_3990_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3990_)
															end

															if arg1.interrupted then
																__FUNC_3838_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3838_)
														end

														if arg1.interrupted then
															__FUNC_36E0_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36E0_)
													end

													if arg1.interrupted then
														__FUNC_3588_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3588_)
												end

												if arg1.interrupted then
													__FUNC_3430_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3430_)
											end

											if arg1.interrupted then
												__FUNC_32D8_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32D8_)
										end

										if arg1.interrupted then
											__FUNC_3180_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3180_)
									end

									if arg1.interrupted then
										__FUNC_3028_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3028_)
								end

								if arg1.interrupted then
									__FUNC_2ED0_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2ED0_)
							end

							if arg1.interrupted then
								__FUNC_2D78_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D78_)
						end

						if arg1.interrupted then
							__FUNC_2C20_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C20_)
					end

					if arg1.interrupted then
						__FUNC_2AC8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AC8_)
				end

				if arg1.interrupted then
					__FUNC_2970_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2970_)
			end

			if arg1.interrupted then
				__FUNC_2818_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2818_)
		end

		registerVal3:completeAnimation()
		__FUNC_26C1_(registerVal3, {})
	end

	registerVal5.HudStart = __FUNC_2622_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_4C9A_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_4C9A_
	local function __FUNC_4D53_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_4DF1_(arg0, arg1)
			local function __FUNC_4F48_(arg0, arg1)
				local function __FUNC_50A0_(arg0, arg1)
					local function __FUNC_51F8_(arg0, arg1)
						local function __FUNC_5350_(arg0, arg1)
							local function __FUNC_54A8_(arg0, arg1)
								local function __FUNC_5600_(arg0, arg1)
									local function __FUNC_5758_(arg0, arg1)
										local function __FUNC_58B0_(arg0, arg1)
											local function __FUNC_5A08_(arg0, arg1)
												local function __FUNC_5B60_(arg0, arg1)
													local function __FUNC_5CB8_(arg0, arg1)
														local function __FUNC_5E10_(arg0, arg1)
															local function __FUNC_5F68_(arg0, arg1)
																local function __FUNC_60C0_(arg0, arg1)
																	local function __FUNC_6218_(arg0, arg1)
																		local function __FUNC_6370_(arg0, arg1)
																			local function __FUNC_64C8_(arg0, arg1)
																				local function __FUNC_6620_(arg0, arg1)
																					local function __FUNC_6778_(arg0, arg1)
																						local function __FUNC_68D0_(arg0, arg1)
																							local function __FUNC_6A28_(arg0, arg1)
																								if not arg1.interrupted then
																									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																								end
																								if arg1.interrupted then
																									registerVal2.clipFinished(arg0, arg1)
																								else
																									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																								end
																							end

																							if arg1.interrupted then
																								__FUNC_6A28_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6A28_)
																						end

																						if arg1.interrupted then
																							__FUNC_68D0_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_68D0_)
																					end

																					if arg1.interrupted then
																						__FUNC_6778_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6778_)
																				end

																				if arg1.interrupted then
																					__FUNC_6620_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6620_)
																			end

																			if arg1.interrupted then
																				__FUNC_64C8_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_64C8_)
																		end

																		if arg1.interrupted then
																			__FUNC_6370_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6370_)
																	end

																	if arg1.interrupted then
																		__FUNC_6218_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6218_)
																end

																if arg1.interrupted then
																	__FUNC_60C0_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_60C0_)
															end

															if arg1.interrupted then
																__FUNC_5F68_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5F68_)
														end

														if arg1.interrupted then
															__FUNC_5E10_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E10_)
													end

													if arg1.interrupted then
														__FUNC_5CB8_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5CB8_)
												end

												if arg1.interrupted then
													__FUNC_5B60_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B60_)
											end

											if arg1.interrupted then
												__FUNC_5A08_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5A08_)
										end

										if arg1.interrupted then
											__FUNC_58B0_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_58B0_)
									end

									if arg1.interrupted then
										__FUNC_5758_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5758_)
								end

								if arg1.interrupted then
									__FUNC_5600_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5600_)
							end

							if arg1.interrupted then
								__FUNC_54A8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_54A8_)
						end

						if arg1.interrupted then
							__FUNC_5350_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5350_)
					end

					if arg1.interrupted then
						__FUNC_51F8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_51F8_)
				end

				if arg1.interrupted then
					__FUNC_50A0_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_50A0_)
			end

			if arg1.interrupted then
				__FUNC_4F48_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4F48_)
		end

		registerVal3:completeAnimation()
		__FUNC_4DF1_(registerVal3, {})
	end

	registerVal5.HudStop = __FUNC_4D53_
	registerVal4.HudStart = registerVal5
	registerVal5 = {}
	local function __FUNC_6BBA_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_6BBA_
	local function __FUNC_6C73_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_6D11_(arg0, arg1)
			local function __FUNC_6E68_(arg0, arg1)
				local function __FUNC_6FC0_(arg0, arg1)
					local function __FUNC_7118_(arg0, arg1)
						local function __FUNC_7270_(arg0, arg1)
							local function __FUNC_73C8_(arg0, arg1)
								local function __FUNC_7520_(arg0, arg1)
									local function __FUNC_7678_(arg0, arg1)
										local function __FUNC_77D0_(arg0, arg1)
											local function __FUNC_7928_(arg0, arg1)
												local function __FUNC_7A80_(arg0, arg1)
													local function __FUNC_7BD8_(arg0, arg1)
														local function __FUNC_7D30_(arg0, arg1)
															local function __FUNC_7E88_(arg0, arg1)
																local function __FUNC_7FE0_(arg0, arg1)
																	local function __FUNC_8138_(arg0, arg1)
																		local function __FUNC_8290_(arg0, arg1)
																			local function __FUNC_83E8_(arg0, arg1)
																				local function __FUNC_8540_(arg0, arg1)
																					local function __FUNC_8698_(arg0, arg1)
																						local function __FUNC_87F0_(arg0, arg1)
																							local function __FUNC_8948_(arg0, arg1)
																								local function __FUNC_8AA0_(arg0, arg1)
																									local function __FUNC_8BF8_(arg0, arg1)
																										local function __FUNC_8D50_(arg0, arg1)
																											local function __FUNC_8EA8_(arg0, arg1)
																												local function __FUNC_9000_(arg0, arg1)
																													local function __FUNC_9158_(arg0, arg1)
																														if not arg1.interrupted then
																															arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																														end
																														if arg1.interrupted then
																															registerVal2.clipFinished(arg0, arg1)
																														else
																															arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																														end
																													end

																													if arg1.interrupted then
																														__FUNC_9158_(arg0, arg1)
																														return 
																													end
																													arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9158_)
																												end

																												if arg1.interrupted then
																													__FUNC_9000_(arg0, arg1)
																													return 
																												end
																												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9000_)
																											end

																											if arg1.interrupted then
																												__FUNC_8EA8_(arg0, arg1)
																												return 
																											end
																											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8EA8_)
																										end

																										if arg1.interrupted then
																											__FUNC_8D50_(arg0, arg1)
																											return 
																										end
																										arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8D50_)
																									end

																									if arg1.interrupted then
																										__FUNC_8BF8_(arg0, arg1)
																										return 
																									end
																									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8BF8_)
																								end

																								if arg1.interrupted then
																									__FUNC_8AA0_(arg0, arg1)
																									return 
																								end
																								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8AA0_)
																							end

																							if arg1.interrupted then
																								__FUNC_8948_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8948_)
																						end

																						if arg1.interrupted then
																							__FUNC_87F0_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_87F0_)
																					end

																					if arg1.interrupted then
																						__FUNC_8698_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8698_)
																				end

																				if arg1.interrupted then
																					__FUNC_8540_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8540_)
																			end

																			if arg1.interrupted then
																				__FUNC_83E8_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_83E8_)
																		end

																		if arg1.interrupted then
																			__FUNC_8290_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8290_)
																	end

																	if arg1.interrupted then
																		__FUNC_8138_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8138_)
																end

																if arg1.interrupted then
																	__FUNC_7FE0_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7FE0_)
															end

															if arg1.interrupted then
																__FUNC_7E88_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7E88_)
														end

														if arg1.interrupted then
															__FUNC_7D30_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7D30_)
													end

													if arg1.interrupted then
														__FUNC_7BD8_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7BD8_)
												end

												if arg1.interrupted then
													__FUNC_7A80_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7A80_)
											end

											if arg1.interrupted then
												__FUNC_7928_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7928_)
										end

										if arg1.interrupted then
											__FUNC_77D0_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_77D0_)
									end

									if arg1.interrupted then
										__FUNC_7678_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7678_)
								end

								if arg1.interrupted then
									__FUNC_7520_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7520_)
							end

							if arg1.interrupted then
								__FUNC_73C8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_73C8_)
						end

						if arg1.interrupted then
							__FUNC_7270_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7270_)
					end

					if arg1.interrupted then
						__FUNC_7118_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7118_)
				end

				if arg1.interrupted then
					__FUNC_6FC0_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6FC0_)
			end

			if arg1.interrupted then
				__FUNC_6E68_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6E68_)
		end

		registerVal3:completeAnimation()
		__FUNC_6D11_(registerVal3, {})
	end

	registerVal5.HudStart = __FUNC_6C73_
	registerVal4.HudStop = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_92EA_(arg0)
		arg0.MapWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_92EA_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

