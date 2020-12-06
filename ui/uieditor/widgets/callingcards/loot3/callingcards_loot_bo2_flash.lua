-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_loot_BO2_flash = registerVal1
function CoD.CallingCards_loot_BO2_flash.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCards_loot_BO2_flash)
	registerVal2.id = "CallingCards_loot_BO2_flash"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 55.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 55.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 55.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 55.000000)
	registerVal3:setImage(RegisterImage("uie_t7_loot_callingcard_bo2retro_flash"))
	registerVal2:addElement(registerVal3)
	registerVal2.flash = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_527_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_631_(arg0, arg1)
			local function __FUNC_7AB_(arg0, arg1)
				local function __FUNC_923_(arg0, arg1)
					local function __FUNC_A9B_(arg0, arg1)
						local function __FUNC_C13_(arg0, arg1)
							local function __FUNC_D8B_(arg0, arg1)
								local function __FUNC_F03_(arg0, arg1)
									local function __FUNC_107B_(arg0, arg1)
										local function __FUNC_11F3_(arg0, arg1)
											local function __FUNC_136B_(arg0, arg1)
												local function __FUNC_14E3_(arg0, arg1)
													local function __FUNC_165B_(arg0, arg1)
														local function __FUNC_17D3_(arg0, arg1)
															local function __FUNC_194B_(arg0, arg1)
																local function __FUNC_1AC3_(arg0, arg1)
																	local function __FUNC_1C3B_(arg0, arg1)
																		local function __FUNC_1DB3_(arg0, arg1)
																			local function __FUNC_1F2B_(arg0, arg1)
																				local function __FUNC_20A3_(arg0, arg1)
																					local function __FUNC_221B_(arg0, arg1)
																						local function __FUNC_2393_(arg0, arg1)
																							local function __FUNC_250B_(arg0, arg1)
																								local function __FUNC_2683_(arg0, arg1)
																									local function __FUNC_27FB_(arg0, arg1)
																										local function __FUNC_2973_(arg0, arg1)
																											local function __FUNC_2AEB_(arg0, arg1)
																												local function __FUNC_2C63_(arg0, arg1)
																													local function __FUNC_2DDB_(arg0, arg1)
																														local function __FUNC_2F53_(arg0, arg1)
																															local function __FUNC_30CB_(arg0, arg1)
																																if not arg1.interrupted then
																																	arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
																																end
																																arg0:setAlpha(1.000000)
																																if arg1.interrupted then
																																	registerVal2.clipFinished(arg0, arg1)
																																else
																																	arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																																end
																															end

																															if arg1.interrupted then
																																__FUNC_30CB_(arg0, arg1)
																																return 
																															end
																															arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
																															arg0:setAlpha(0.100000)
																															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30CB_)
																														end

																														if arg1.interrupted then
																															__FUNC_2F53_(arg0, arg1)
																															return 
																														end
																														arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
																														arg0:setAlpha(1.000000)
																														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F53_)
																													end

																													if arg1.interrupted then
																														__FUNC_2DDB_(arg0, arg1)
																														return 
																													end
																													arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
																													arg0:setAlpha(0.100000)
																													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DDB_)
																												end

																												if arg1.interrupted then
																													__FUNC_2C63_(arg0, arg1)
																													return 
																												end
																												arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
																												arg0:setAlpha(1.000000)
																												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C63_)
																											end

																											if arg1.interrupted then
																												__FUNC_2AEB_(arg0, arg1)
																												return 
																											end
																											arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
																											arg0:setAlpha(0.100000)
																											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AEB_)
																										end

																										if arg1.interrupted then
																											__FUNC_2973_(arg0, arg1)
																											return 
																										end
																										arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
																										arg0:setAlpha(1.000000)
																										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2973_)
																									end

																									if arg1.interrupted then
																										__FUNC_27FB_(arg0, arg1)
																										return 
																									end
																									arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
																									arg0:setAlpha(0.100000)
																									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27FB_)
																								end

																								if arg1.interrupted then
																									__FUNC_2683_(arg0, arg1)
																									return 
																								end
																								arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
																								arg0:setAlpha(1.000000)
																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2683_)
																							end

																							if arg1.interrupted then
																								__FUNC_250B_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
																							arg0:setAlpha(0.100000)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_250B_)
																						end

																						if arg1.interrupted then
																							__FUNC_2393_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
																						arg0:setAlpha(1.000000)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2393_)
																					end

																					if arg1.interrupted then
																						__FUNC_221B_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
																					arg0:setAlpha(0.100000)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_221B_)
																				end

																				if arg1.interrupted then
																					__FUNC_20A3_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
																				arg0:setAlpha(1.000000)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20A3_)
																			end

																			if arg1.interrupted then
																				__FUNC_1F2B_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
																			arg0:setAlpha(0.100000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F2B_)
																		end

																		if arg1.interrupted then
																			__FUNC_1DB3_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
																		arg0:setAlpha(1.000000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DB3_)
																	end

																	if arg1.interrupted then
																		__FUNC_1C3B_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
																	arg0:setAlpha(0.100000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C3B_)
																end

																if arg1.interrupted then
																	__FUNC_1AC3_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
																arg0:setAlpha(1.000000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AC3_)
															end

															if arg1.interrupted then
																__FUNC_194B_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
															arg0:setAlpha(0.100000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_194B_)
														end

														if arg1.interrupted then
															__FUNC_17D3_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
														arg0:setAlpha(1.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17D3_)
													end

													if arg1.interrupted then
														__FUNC_165B_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.100000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_165B_)
												end

												if arg1.interrupted then
													__FUNC_14E3_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(1.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14E3_)
											end

											if arg1.interrupted then
												__FUNC_136B_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.100000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_136B_)
										end

										if arg1.interrupted then
											__FUNC_11F3_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(1.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11F3_)
									end

									if arg1.interrupted then
										__FUNC_107B_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.100000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_107B_)
								end

								if arg1.interrupted then
									__FUNC_F03_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F03_)
							end

							if arg1.interrupted then
								__FUNC_D8B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.100000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D8B_)
						end

						if arg1.interrupted then
							__FUNC_C13_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C13_)
					end

					if arg1.interrupted then
						__FUNC_A9B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.100000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A9B_)
				end

				if arg1.interrupted then
					__FUNC_923_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_923_)
			end

			if arg1.interrupted then
				__FUNC_7AB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.100000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7AB_)
		end

		registerVal3:completeAnimation()
		registerVal2.flash:setAlpha(1.000000)
		__FUNC_631_(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_527_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

