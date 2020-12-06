-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_Loot_WomanInAction = registerVal1
function CoD.CallingCards_Loot_WomanInAction.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_Loot_WomanInAction)
	registerVal2.id = "CallingCards_Loot_WomanInAction"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_womaninaction_bg1"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcard_womaninaction_bg2"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image1 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -206.960000, 84.960000)
	registerVal5:setTopBottom(true, false, -87.000000, 238.630000)
	registerVal5:setRGB(1.000000, 0.930000, 0.720000)
	registerVal5:setZRot(120.000000)
	registerVal5:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.Glow0 = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_769_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_8CA_(arg0, arg1)
			local function __FUNC_A43_(arg0, arg1)
				local function __FUNC_BBB_(arg0, arg1)
					local function __FUNC_D33_(arg0, arg1)
						local function __FUNC_EAB_(arg0, arg1)
							local function __FUNC_1023_(arg0, arg1)
								local function __FUNC_119B_(arg0, arg1)
									local function __FUNC_1313_(arg0, arg1)
										local function __FUNC_148B_(arg0, arg1)
											local function __FUNC_1603_(arg0, arg1)
												local function __FUNC_177B_(arg0, arg1)
													local function __FUNC_18F3_(arg0, arg1)
														local function __FUNC_1A6B_(arg0, arg1)
															local function __FUNC_1BE3_(arg0, arg1)
																local function __FUNC_1D5B_(arg0, arg1)
																	local function __FUNC_1EB0_(arg0, arg1)
																		local function __FUNC_202B_(arg0, arg1)
																			local function __FUNC_21A3_(arg0, arg1)
																				local function __FUNC_231B_(arg0, arg1)
																					local function __FUNC_2493_(arg0, arg1)
																						local function __FUNC_25E8_(arg0, arg1)
																							local function __FUNC_2763_(arg0, arg1)
																								local function __FUNC_28DB_(arg0, arg1)
																									local function __FUNC_2A53_(arg0, arg1)
																										if not arg1.interrupted then
																											arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
																										end
																										arg0:setAlpha(0.000000)
																										if arg1.interrupted then
																											registerVal2.clipFinished(arg0, arg1)
																										else
																											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																										end
																									end

																									if arg1.interrupted then
																										__FUNC_2A53_(arg0, arg1)
																										return 
																									end
																									arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
																									arg0:setAlpha(1.000000)
																									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A53_)
																								end

																								if arg1.interrupted then
																									__FUNC_28DB_(arg0, arg1)
																									return 
																								end
																								arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
																								arg0:setAlpha(0.000000)
																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28DB_)
																							end

																							if arg1.interrupted then
																								__FUNC_2763_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
																							arg0:setAlpha(1.000000)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2763_)
																						end

																						if arg1.interrupted then
																							__FUNC_25E8_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25E8_)
																					end

																					if arg1.interrupted then
																						__FUNC_2493_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
																					arg0:setAlpha(0.000000)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2493_)
																				end

																				if arg1.interrupted then
																					__FUNC_231B_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
																				arg0:setAlpha(1.000000)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_231B_)
																			end

																			if arg1.interrupted then
																				__FUNC_21A3_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
																			arg0:setAlpha(0.000000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21A3_)
																		end

																		if arg1.interrupted then
																			__FUNC_202B_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
																		arg0:setAlpha(1.000000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_202B_)
																	end

																	if arg1.interrupted then
																		__FUNC_1EB0_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EB0_)
																end

																if arg1.interrupted then
																	__FUNC_1D5B_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
																arg0:setAlpha(0.000000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D5B_)
															end

															if arg1.interrupted then
																__FUNC_1BE3_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
															arg0:setAlpha(1.000000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BE3_)
														end

														if arg1.interrupted then
															__FUNC_1A6B_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 819.000000, false, false, CoD.TweenType.Linear)
														arg0:setAlpha(0.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A6B_)
													end

													if arg1.interrupted then
														__FUNC_18F3_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(1.000000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18F3_)
												end

												if arg1.interrupted then
													__FUNC_177B_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(0.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_177B_)
											end

											if arg1.interrupted then
												__FUNC_1603_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(1.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1603_)
										end

										if arg1.interrupted then
											__FUNC_148B_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 579.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_148B_)
									end

									if arg1.interrupted then
										__FUNC_1313_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(1.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1313_)
								end

								if arg1.interrupted then
									__FUNC_119B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_119B_)
							end

							if arg1.interrupted then
								__FUNC_1023_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1023_)
						end

						if arg1.interrupted then
							__FUNC_EAB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EAB_)
					end

					if arg1.interrupted then
						__FUNC_D33_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D33_)
				end

				if arg1.interrupted then
					__FUNC_BBB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BBB_)
			end

			if arg1.interrupted then
				__FUNC_A43_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A43_)
		end

		registerVal4:completeAnimation()
		registerVal2.Image1:setAlpha(0.000000)
		__FUNC_8CA_(registerVal4, {})
		local function __FUNC_2C05_(arg0, arg1)
			local function __FUNC_2D7F_(arg0, arg1)
				local function __FUNC_2EF7_(arg0, arg1)
					local function __FUNC_306F_(arg0, arg1)
						local function __FUNC_31E7_(arg0, arg1)
							local function __FUNC_335F_(arg0, arg1)
								local function __FUNC_34D7_(arg0, arg1)
									local function __FUNC_364F_(arg0, arg1)
										local function __FUNC_37C7_(arg0, arg1)
											local function __FUNC_393F_(arg0, arg1)
												local function __FUNC_3AB7_(arg0, arg1)
													local function __FUNC_3C2F_(arg0, arg1)
														local function __FUNC_3DA7_(arg0, arg1)
															local function __FUNC_3F1F_(arg0, arg1)
																local function __FUNC_4097_(arg0, arg1)
																	local function __FUNC_41EC_(arg0, arg1)
																		local function __FUNC_4367_(arg0, arg1)
																			local function __FUNC_44DF_(arg0, arg1)
																				local function __FUNC_4657_(arg0, arg1)
																					local function __FUNC_47CF_(arg0, arg1)
																						local function __FUNC_4924_(arg0, arg1)
																							local function __FUNC_4A9F_(arg0, arg1)
																								local function __FUNC_4C17_(arg0, arg1)
																									local function __FUNC_4D8F_(arg0, arg1)
																										if not arg1.interrupted then
																											arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
																										end
																										arg0:setAlpha(0.000000)
																										if arg1.interrupted then
																											registerVal2.clipFinished(arg0, arg1)
																										else
																											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																										end
																									end

																									if arg1.interrupted then
																										__FUNC_4D8F_(arg0, arg1)
																										return 
																									end
																									arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
																									arg0:setAlpha(1.000000)
																									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D8F_)
																								end

																								if arg1.interrupted then
																									__FUNC_4C17_(arg0, arg1)
																									return 
																								end
																								arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
																								arg0:setAlpha(0.620000)
																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4C17_)
																							end

																							if arg1.interrupted then
																								__FUNC_4A9F_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
																							arg0:setAlpha(1.000000)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A9F_)
																						end

																						if arg1.interrupted then
																							__FUNC_4924_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4924_)
																					end

																					if arg1.interrupted then
																						__FUNC_47CF_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
																					arg0:setAlpha(0.610000)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_47CF_)
																				end

																				if arg1.interrupted then
																					__FUNC_4657_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
																				arg0:setAlpha(1.000000)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4657_)
																			end

																			if arg1.interrupted then
																				__FUNC_44DF_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
																			arg0:setAlpha(0.000000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_44DF_)
																		end

																		if arg1.interrupted then
																			__FUNC_4367_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
																		arg0:setAlpha(1.000000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4367_)
																	end

																	if arg1.interrupted then
																		__FUNC_41EC_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_41EC_)
																end

																if arg1.interrupted then
																	__FUNC_4097_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
																arg0:setAlpha(0.360000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4097_)
															end

															if arg1.interrupted then
																__FUNC_3F1F_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
															arg0:setAlpha(1.000000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F1F_)
														end

														if arg1.interrupted then
															__FUNC_3DA7_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 819.000000, false, false, CoD.TweenType.Linear)
														arg0:setAlpha(0.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3DA7_)
													end

													if arg1.interrupted then
														__FUNC_3C2F_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(1.000000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C2F_)
												end

												if arg1.interrupted then
													__FUNC_3AB7_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(0.420000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3AB7_)
											end

											if arg1.interrupted then
												__FUNC_393F_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(1.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_393F_)
										end

										if arg1.interrupted then
											__FUNC_37C7_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 579.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37C7_)
									end

									if arg1.interrupted then
										__FUNC_364F_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(1.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_364F_)
								end

								if arg1.interrupted then
									__FUNC_34D7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.670000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34D7_)
							end

							if arg1.interrupted then
								__FUNC_335F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_335F_)
						end

						if arg1.interrupted then
							__FUNC_31E7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.650000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31E7_)
					end

					if arg1.interrupted then
						__FUNC_306F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_306F_)
				end

				if arg1.interrupted then
					__FUNC_2EF7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.370000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EF7_)
			end

			if arg1.interrupted then
				__FUNC_2D7F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D7F_)
		end

		registerVal5:completeAnimation()
		registerVal2.Glow0:setAlpha(0.000000)
		__FUNC_2C05_(registerVal5, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal7.DefaultClip = __FUNC_769_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

