-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.SoldierRaft.CallingCard_SoldierRaft_Flag")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCard_SoldierRaft_Soldier = registerVal1
function CoD.CallingCard_SoldierRaft_Soldier.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCard_SoldierRaft_Soldier)
	registerVal2.id = "CallingCard_SoldierRaft_Soldier"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 120.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.CallingCard_SoldierRaft_Flag.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 66.000000, 126.000000)
	registerVal3:setTopBottom(true, false, -5.000000, 55.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Flag = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 120.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcard_mp_soldierraft_body"))
	registerVal2:addElement(registerVal4)
	registerVal2.Soldier = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 26.000000, 56.000000)
	registerVal5:setTopBottom(true, false, 17.000000, 77.000000)
	registerVal5:setImage(RegisterImage("uie_t7_callingcard_mp_soldierraft_arm"))
	registerVal2:addElement(registerVal5)
	registerVal2.Arm = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 5.500000, 65.500000)
	registerVal6:setTopBottom(true, false, 47.750000, 107.750000)
	registerVal6:setImage(RegisterImage("uie_t7_callingcard_mp_soldierraft_leg"))
	registerVal2:addElement(registerVal6)
	registerVal2.Leg = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 15.000000, 45.000000)
	registerVal7:setTopBottom(true, false, -22.000000, 38.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_callingcard_mp_soldierraft_muzzle"))
	registerVal2:addElement(registerVal7)
	registerVal2.Flash = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_947_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_B17_(arg0, arg1)
			local function __FUNC_C6C_(arg0, arg1)
				local function __FUNC_DFC_(arg0, arg1)
					local function __FUNC_F8C_(arg0, arg1)
						local function __FUNC_111C_(arg0, arg1)
							local function __FUNC_12AC_(arg0, arg1)
								local function __FUNC_143C_(arg0, arg1)
									local function __FUNC_15CC_(arg0, arg1)
										local function __FUNC_175C_(arg0, arg1)
											local function __FUNC_18EC_(arg0, arg1)
												local function __FUNC_1A7C_(arg0, arg1)
													local function __FUNC_1C0C_(arg0, arg1)
														local function __FUNC_1D64_(arg0, arg1)
															local function __FUNC_1EF4_(arg0, arg1)
																local function __FUNC_2084_(arg0, arg1)
																	local function __FUNC_2214_(arg0, arg1)
																		local function __FUNC_23A4_(arg0, arg1)
																			local function __FUNC_2534_(arg0, arg1)
																				local function __FUNC_26C4_(arg0, arg1)
																					local function __FUNC_2854_(arg0, arg1)
																						local function __FUNC_29E4_(arg0, arg1)
																							local function __FUNC_2B3C_(arg0, arg1)
																								local function __FUNC_2CCC_(arg0, arg1)
																									local function __FUNC_2E5C_(arg0, arg1)
																										local function __FUNC_2FEC_(arg0, arg1)
																											local function __FUNC_317C_(arg0, arg1)
																												local function __FUNC_330C_(arg0, arg1)
																													local function __FUNC_349C_(arg0, arg1)
																														local function __FUNC_362C_(arg0, arg1)
																															local function __FUNC_37BC_(arg0, arg1)
																																if not arg1.interrupted then
																																	arg0:beginAnimation("keyframe", 8000.000000, false, false, CoD.TweenType.Linear)
																																end
																																arg0:setLeftRight(true, false, 26.000000, 56.000000)
																																arg0:setTopBottom(true, false, 17.000000, 77.000000)
																																if arg1.interrupted then
																																	registerVal2.clipFinished(arg0, arg1)
																																else
																																	arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																																end
																															end

																															if arg1.interrupted then
																																__FUNC_37BC_(arg0, arg1)
																																return 
																															end
																															arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
																															arg0:setTopBottom(true, false, 17.000000, 77.000000)
																															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37BC_)
																														end

																														if arg1.interrupted then
																															__FUNC_362C_(arg0, arg1)
																															return 
																														end
																														arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
																														arg0:setTopBottom(true, false, 17.750000, 77.750000)
																														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_362C_)
																													end

																													if arg1.interrupted then
																														__FUNC_349C_(arg0, arg1)
																														return 
																													end
																													arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
																													arg0:setTopBottom(true, false, 17.000000, 77.000000)
																													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_349C_)
																												end

																												if arg1.interrupted then
																													__FUNC_330C_(arg0, arg1)
																													return 
																												end
																												arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
																												arg0:setTopBottom(true, false, 17.750000, 77.750000)
																												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_330C_)
																											end

																											if arg1.interrupted then
																												__FUNC_317C_(arg0, arg1)
																												return 
																											end
																											arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
																											arg0:setTopBottom(true, false, 17.000000, 77.000000)
																											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_317C_)
																										end

																										if arg1.interrupted then
																											__FUNC_2FEC_(arg0, arg1)
																											return 
																										end
																										arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
																										arg0:setTopBottom(true, false, 17.750000, 77.750000)
																										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FEC_)
																									end

																									if arg1.interrupted then
																										__FUNC_2E5C_(arg0, arg1)
																										return 
																									end
																									arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
																									arg0:setTopBottom(true, false, 17.000000, 77.000000)
																									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E5C_)
																								end

																								if arg1.interrupted then
																									__FUNC_2CCC_(arg0, arg1)
																									return 
																								end
																								arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
																								arg0:setTopBottom(true, false, 17.750000, 77.750000)
																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CCC_)
																							end

																							if arg1.interrupted then
																								__FUNC_2B3C_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 8159.000000, false, false, CoD.TweenType.Linear)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B3C_)
																						end

																						if arg1.interrupted then
																							__FUNC_29E4_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
																						arg0:setTopBottom(true, false, 17.000000, 77.000000)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29E4_)
																					end

																					if arg1.interrupted then
																						__FUNC_2854_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
																					arg0:setTopBottom(true, false, 17.750000, 77.750000)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2854_)
																				end

																				if arg1.interrupted then
																					__FUNC_26C4_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
																				arg0:setTopBottom(true, false, 17.000000, 77.000000)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26C4_)
																			end

																			if arg1.interrupted then
																				__FUNC_2534_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
																			arg0:setTopBottom(true, false, 17.750000, 77.750000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2534_)
																		end

																		if arg1.interrupted then
																			__FUNC_23A4_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
																		arg0:setTopBottom(true, false, 17.000000, 77.000000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23A4_)
																	end

																	if arg1.interrupted then
																		__FUNC_2214_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
																	arg0:setTopBottom(true, false, 17.750000, 77.750000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2214_)
																end

																if arg1.interrupted then
																	__FUNC_2084_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 130.000000, false, false, CoD.TweenType.Linear)
																arg0:setTopBottom(true, false, 17.000000, 77.000000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2084_)
															end

															if arg1.interrupted then
																__FUNC_1EF4_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
															arg0:setTopBottom(true, false, 17.750000, 77.750000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EF4_)
														end

														if arg1.interrupted then
															__FUNC_1D64_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 4930.000000, false, false, CoD.TweenType.Linear)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D64_)
													end

													if arg1.interrupted then
														__FUNC_1C0C_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
													arg0:setTopBottom(true, false, 17.000000, 77.000000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C0C_)
												end

												if arg1.interrupted then
													__FUNC_1A7C_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
												arg0:setTopBottom(true, false, 17.750000, 77.750000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A7C_)
											end

											if arg1.interrupted then
												__FUNC_18EC_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
											arg0:setTopBottom(true, false, 17.000000, 77.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18EC_)
										end

										if arg1.interrupted then
											__FUNC_175C_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
										arg0:setTopBottom(true, false, 17.750000, 77.750000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_175C_)
									end

									if arg1.interrupted then
										__FUNC_15CC_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
									arg0:setTopBottom(true, false, 17.000000, 77.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15CC_)
								end

								if arg1.interrupted then
									__FUNC_143C_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
								arg0:setTopBottom(true, false, 17.750000, 77.750000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_143C_)
							end

							if arg1.interrupted then
								__FUNC_12AC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
							arg0:setTopBottom(true, false, 17.000000, 77.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12AC_)
						end

						if arg1.interrupted then
							__FUNC_111C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
						arg0:setTopBottom(true, false, 17.750000, 77.750000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_111C_)
					end

					if arg1.interrupted then
						__FUNC_F8C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(true, false, 17.000000, 77.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F8C_)
				end

				if arg1.interrupted then
					__FUNC_DFC_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, 17.750000, 77.750000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DFC_)
			end

			if arg1.interrupted then
				__FUNC_C6C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C6C_)
		end

		registerVal5:completeAnimation()
		registerVal2.Arm:setLeftRight(true, false, 26.000000, 56.000000)
		registerVal2.Arm:setTopBottom(true, false, 17.000000, 77.000000)
		__FUNC_B17_(registerVal5, {})
		local function __FUNC_39BE_(arg0, arg1)
			local function __FUNC_3B14_(arg0, arg1)
				local function __FUNC_3C8F_(arg0, arg1)
					local function __FUNC_3E07_(arg0, arg1)
						local function __FUNC_3F7F_(arg0, arg1)
							local function __FUNC_40F7_(arg0, arg1)
								local function __FUNC_426F_(arg0, arg1)
									local function __FUNC_43E7_(arg0, arg1)
										local function __FUNC_455F_(arg0, arg1)
											local function __FUNC_46D7_(arg0, arg1)
												local function __FUNC_484F_(arg0, arg1)
													local function __FUNC_49C7_(arg0, arg1)
														local function __FUNC_4B1C_(arg0, arg1)
															local function __FUNC_4C97_(arg0, arg1)
																local function __FUNC_4E0F_(arg0, arg1)
																	local function __FUNC_4F87_(arg0, arg1)
																		local function __FUNC_50FF_(arg0, arg1)
																			local function __FUNC_5277_(arg0, arg1)
																				local function __FUNC_53EF_(arg0, arg1)
																					local function __FUNC_5567_(arg0, arg1)
																						local function __FUNC_56DF_(arg0, arg1)
																							local function __FUNC_5834_(arg0, arg1)
																								local function __FUNC_59AF_(arg0, arg1)
																									local function __FUNC_5B27_(arg0, arg1)
																										local function __FUNC_5C9F_(arg0, arg1)
																											local function __FUNC_5E17_(arg0, arg1)
																												local function __FUNC_5F8F_(arg0, arg1)
																													local function __FUNC_6107_(arg0, arg1)
																														local function __FUNC_627F_(arg0, arg1)
																															if not arg1.interrupted then
																																arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
																															end
																															arg0:setAlpha(0.000000)
																															if arg1.interrupted then
																																registerVal2.clipFinished(arg0, arg1)
																															else
																																arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																															end
																														end

																														if arg1.interrupted then
																															__FUNC_627F_(arg0, arg1)
																															return 
																														end
																														arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
																														arg0:setAlpha(1.000000)
																														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_627F_)
																													end

																													if arg1.interrupted then
																														__FUNC_6107_(arg0, arg1)
																														return 
																													end
																													arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
																													arg0:setAlpha(0.000000)
																													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6107_)
																												end

																												if arg1.interrupted then
																													__FUNC_5F8F_(arg0, arg1)
																													return 
																												end
																												arg0:beginAnimation("keyframe", 130.000000, false, false, CoD.TweenType.Linear)
																												arg0:setAlpha(1.000000)
																												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5F8F_)
																											end

																											if arg1.interrupted then
																												__FUNC_5E17_(arg0, arg1)
																												return 
																											end
																											arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
																											arg0:setAlpha(0.000000)
																											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E17_)
																										end

																										if arg1.interrupted then
																											__FUNC_5C9F_(arg0, arg1)
																											return 
																										end
																										arg0:beginAnimation("keyframe", 130.000000, false, false, CoD.TweenType.Linear)
																										arg0:setAlpha(1.000000)
																										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5C9F_)
																									end

																									if arg1.interrupted then
																										__FUNC_5B27_(arg0, arg1)
																										return 
																									end
																									arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
																									arg0:setAlpha(0.000000)
																									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B27_)
																								end

																								if arg1.interrupted then
																									__FUNC_59AF_(arg0, arg1)
																									return 
																								end
																								arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
																								arg0:setAlpha(1.000000)
																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_59AF_)
																							end

																							if arg1.interrupted then
																								__FUNC_5834_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 8199.000000, false, false, CoD.TweenType.Linear)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5834_)
																						end

																						if arg1.interrupted then
																							__FUNC_56DF_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
																						arg0:setAlpha(0.000000)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_56DF_)
																					end

																					if arg1.interrupted then
																						__FUNC_5567_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 130.000000, false, false, CoD.TweenType.Linear)
																					arg0:setAlpha(1.000000)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5567_)
																				end

																				if arg1.interrupted then
																					__FUNC_53EF_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
																				arg0:setAlpha(0.000000)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_53EF_)
																			end

																			if arg1.interrupted then
																				__FUNC_5277_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 130.000000, false, false, CoD.TweenType.Linear)
																			arg0:setAlpha(1.000000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5277_)
																		end

																		if arg1.interrupted then
																			__FUNC_50FF_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
																		arg0:setAlpha(0.000000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_50FF_)
																	end

																	if arg1.interrupted then
																		__FUNC_4F87_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 130.000000, false, false, CoD.TweenType.Linear)
																	arg0:setAlpha(1.000000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4F87_)
																end

																if arg1.interrupted then
																	__FUNC_4E0F_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
																arg0:setAlpha(0.000000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4E0F_)
															end

															if arg1.interrupted then
																__FUNC_4C97_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
															arg0:setAlpha(1.000000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4C97_)
														end

														if arg1.interrupted then
															__FUNC_4B1C_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 4869.000000, false, false, CoD.TweenType.Linear)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B1C_)
													end

													if arg1.interrupted then
														__FUNC_49C7_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.000000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_49C7_)
												end

												if arg1.interrupted then
													__FUNC_484F_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(1.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_484F_)
											end

											if arg1.interrupted then
												__FUNC_46D7_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_46D7_)
										end

										if arg1.interrupted then
											__FUNC_455F_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(1.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_455F_)
									end

									if arg1.interrupted then
										__FUNC_43E7_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_43E7_)
								end

								if arg1.interrupted then
									__FUNC_426F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_426F_)
							end

							if arg1.interrupted then
								__FUNC_40F7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_40F7_)
						end

						if arg1.interrupted then
							__FUNC_3F7F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F7F_)
					end

					if arg1.interrupted then
						__FUNC_3E07_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 130.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E07_)
				end

				if arg1.interrupted then
					__FUNC_3C8F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C8F_)
			end

			if arg1.interrupted then
				__FUNC_3B14_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B14_)
		end

		registerVal7:completeAnimation()
		registerVal2.Flash:setAlpha(0.000000)
		__FUNC_39BE_(registerVal7, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal9.DefaultClip = __FUNC_947_
	registerVal8.DefaultState = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_6431_(arg0)
		arg0.Flag:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_6431_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

