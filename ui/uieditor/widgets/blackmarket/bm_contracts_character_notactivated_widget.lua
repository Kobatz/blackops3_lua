-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_Contracts_Character_NotActivated_Widget = registerVal1
function CoD.BM_Contracts_Character_NotActivated_Widget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_Contracts_Character_NotActivated_Widget)
	registerVal2.id = "BM_Contracts_Character_NotActivated_Widget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 208.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 86.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -8.000000, 216.000000)
	registerVal3:setTopBottom(true, false, -21.000000, 107.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_contracts_character_contactsnotactive"))
	registerVal2:addElement(registerVal3)
	registerVal2.NotActivatedIcons = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 208.000000)
	registerVal4:setTopBottom(true, false, -11.000000, 117.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_contracts_character_nocontacts"))
	registerVal2:addElement(registerVal4)
	registerVal2.NoContracts = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 9.000000, 198.000000)
	registerVal5:setTopBottom(true, false, 104.500000, 122.500000)
	registerVal5:setRGB(0.750000, 0.750000, 0.750000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setText(Engine.Localize("MPUI_BM_ACTIVATE_BLACKJACK"))
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.text = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, -8.000000, 216.000000)
	registerVal6:setTopBottom(true, false, -21.000000, 107.000000)
	registerVal6:setImage(RegisterImage("uie_t7_blackmarket_contracts_character_contactsnotactive_hover"))
	registerVal2:addElement(registerVal6)
	registerVal2.hover = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 9.000000, 198.000000)
	registerVal7:setTopBottom(true, false, -106.500000, -88.500000)
	registerVal7:setRGB(0.750000, 0.750000, 0.750000)
	registerVal7:setText(Engine.Localize("MPUI_BM_CONTRACTS_ACTIVATE_BJ_DESC"))
	registerVal7:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.text0 = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 4.000000, 204.000000)
	registerVal8:setTopBottom(true, false, 69.500000, 87.500000)
	registerVal8:setRGB(0.900000, 0.630000, 0.290000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setText(Engine.Localize("MPUI_BM_MERCENARY_CONTRACT"))
	registerVal8:setTTF("fonts/default.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal8)
	registerVal2.TextBox0 = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_DC0_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.NotActivatedIcons:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.NoContracts:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.text:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.hover:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.text0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TextBox0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_DC0_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_1070_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_1407_(arg0, arg1)
			local function __FUNC_157F_(arg0, arg1)
				local function __FUNC_16F7_(arg0, arg1)
					local function __FUNC_186F_(arg0, arg1)
						local function __FUNC_19E7_(arg0, arg1)
							local function __FUNC_1B5F_(arg0, arg1)
								local function __FUNC_1CD7_(arg0, arg1)
									local function __FUNC_1E4F_(arg0, arg1)
										local function __FUNC_1FC7_(arg0, arg1)
											local function __FUNC_213F_(arg0, arg1)
												local function __FUNC_22B7_(arg0, arg1)
													local function __FUNC_242F_(arg0, arg1)
														local function __FUNC_25A7_(arg0, arg1)
															local function __FUNC_271F_(arg0, arg1)
																local function __FUNC_2897_(arg0, arg1)
																	local function __FUNC_2A0F_(arg0, arg1)
																		local function __FUNC_2B87_(arg0, arg1)
																			local function __FUNC_2CFF_(arg0, arg1)
																				if not arg1.interrupted then
																					arg0:beginAnimation("keyframe", 650.000000, false, false, CoD.TweenType.Linear)
																				end
																				arg0:setAlpha(1.000000)
																				if arg1.interrupted then
																					registerVal2.clipFinished(arg0, arg1)
																				else
																					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																				end
																			end

																			if arg1.interrupted then
																				__FUNC_2CFF_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 609.000000, false, false, CoD.TweenType.Linear)
																			arg0:setAlpha(0.650000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CFF_)
																		end

																		if arg1.interrupted then
																			__FUNC_2B87_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 650.000000, false, false, CoD.TweenType.Linear)
																		arg0:setAlpha(1.000000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B87_)
																	end

																	if arg1.interrupted then
																		__FUNC_2A0F_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 609.000000, false, false, CoD.TweenType.Linear)
																	arg0:setAlpha(0.650000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A0F_)
																end

																if arg1.interrupted then
																	__FUNC_2897_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 649.000000, false, false, CoD.TweenType.Linear)
																arg0:setAlpha(1.000000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2897_)
															end

															if arg1.interrupted then
																__FUNC_271F_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
															arg0:setAlpha(0.650000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_271F_)
														end

														if arg1.interrupted then
															__FUNC_25A7_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 650.000000, false, false, CoD.TweenType.Linear)
														arg0:setAlpha(1.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25A7_)
													end

													if arg1.interrupted then
														__FUNC_242F_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 609.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.650000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_242F_)
												end

												if arg1.interrupted then
													__FUNC_22B7_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 650.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(1.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22B7_)
											end

											if arg1.interrupted then
												__FUNC_213F_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.650000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_213F_)
										end

										if arg1.interrupted then
											__FUNC_1FC7_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 650.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(1.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FC7_)
									end

									if arg1.interrupted then
										__FUNC_1E4F_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 609.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.650000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E4F_)
								end

								if arg1.interrupted then
									__FUNC_1CD7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 649.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CD7_)
							end

							if arg1.interrupted then
								__FUNC_1B5F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.650000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B5F_)
						end

						if arg1.interrupted then
							__FUNC_19E7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 649.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19E7_)
					end

					if arg1.interrupted then
						__FUNC_186F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.650000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_186F_)
				end

				if arg1.interrupted then
					__FUNC_16F7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 649.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16F7_)
			end

			if arg1.interrupted then
				__FUNC_157F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.650000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_157F_)
		end

		registerVal3:completeAnimation()
		registerVal2.NotActivatedIcons:setAlpha(1.000000)
		__FUNC_1407_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.NoContracts:setLeftRight(true, false, 0.000000, 208.000000)
		registerVal2.NoContracts:setTopBottom(true, false, -11.000000, 117.000000)
		registerVal2.NoContracts:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.text:setAlpha(0.000000)
		registerVal2.text:setText(Engine.Localize("MPUI_BM_ACTIVATE_BLACKJACK"))
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_2EB1_(arg0, arg1)
			local function __FUNC_302B_(arg0, arg1)
				local function __FUNC_31A3_(arg0, arg1)
					local function __FUNC_331B_(arg0, arg1)
						local function __FUNC_3493_(arg0, arg1)
							local function __FUNC_360B_(arg0, arg1)
								local function __FUNC_3783_(arg0, arg1)
									local function __FUNC_38FB_(arg0, arg1)
										local function __FUNC_3A73_(arg0, arg1)
											local function __FUNC_3BEB_(arg0, arg1)
												local function __FUNC_3D63_(arg0, arg1)
													local function __FUNC_3EDB_(arg0, arg1)
														local function __FUNC_4053_(arg0, arg1)
															local function __FUNC_41CB_(arg0, arg1)
																local function __FUNC_4343_(arg0, arg1)
																	local function __FUNC_44BB_(arg0, arg1)
																		local function __FUNC_4633_(arg0, arg1)
																			local function __FUNC_47AB_(arg0, arg1)
																				local function __FUNC_4923_(arg0, arg1)
																					if not arg1.interrupted then
																						arg0:beginAnimation("keyframe", 609.000000, false, false, CoD.TweenType.Linear)
																					end
																					arg0:setAlpha(0.650000)
																					if arg1.interrupted then
																						registerVal2.clipFinished(arg0, arg1)
																					else
																						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																					end
																				end

																				if arg1.interrupted then
																					__FUNC_4923_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 650.000000, false, false, CoD.TweenType.Linear)
																				arg0:setAlpha(1.000000)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4923_)
																			end

																			if arg1.interrupted then
																				__FUNC_47AB_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 609.000000, false, false, CoD.TweenType.Linear)
																			arg0:setAlpha(0.650000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_47AB_)
																		end

																		if arg1.interrupted then
																			__FUNC_4633_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 649.000000, false, false, CoD.TweenType.Linear)
																		arg0:setAlpha(1.000000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4633_)
																	end

																	if arg1.interrupted then
																		__FUNC_44BB_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
																	arg0:setAlpha(0.650000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_44BB_)
																end

																if arg1.interrupted then
																	__FUNC_4343_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 649.000000, false, false, CoD.TweenType.Linear)
																arg0:setAlpha(1.000000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4343_)
															end

															if arg1.interrupted then
																__FUNC_41CB_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
															arg0:setAlpha(0.650000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_41CB_)
														end

														if arg1.interrupted then
															__FUNC_4053_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 650.000000, false, false, CoD.TweenType.Linear)
														arg0:setAlpha(1.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4053_)
													end

													if arg1.interrupted then
														__FUNC_3EDB_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 609.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.650000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3EDB_)
												end

												if arg1.interrupted then
													__FUNC_3D63_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 650.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(1.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D63_)
											end

											if arg1.interrupted then
												__FUNC_3BEB_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.650000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3BEB_)
										end

										if arg1.interrupted then
											__FUNC_3A73_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 650.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(1.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A73_)
									end

									if arg1.interrupted then
										__FUNC_38FB_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 609.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.650000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38FB_)
								end

								if arg1.interrupted then
									__FUNC_3783_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 649.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3783_)
							end

							if arg1.interrupted then
								__FUNC_360B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.650000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_360B_)
						end

						if arg1.interrupted then
							__FUNC_3493_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 649.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3493_)
					end

					if arg1.interrupted then
						__FUNC_331B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.650000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_331B_)
				end

				if arg1.interrupted then
					__FUNC_31A3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 649.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31A3_)
			end

			if arg1.interrupted then
				__FUNC_302B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.650000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_302B_)
		end

		registerVal6:completeAnimation()
		registerVal2.hover:setAlpha(1.000000)
		__FUNC_2EB1_(registerVal6, {})
		local function __FUNC_4AD5_(arg0, arg1)
			local function __FUNC_4C4F_(arg0, arg1)
				local function __FUNC_4DC7_(arg0, arg1)
					local function __FUNC_4F3F_(arg0, arg1)
						local function __FUNC_50B7_(arg0, arg1)
							local function __FUNC_522F_(arg0, arg1)
								local function __FUNC_53A7_(arg0, arg1)
									local function __FUNC_551F_(arg0, arg1)
										local function __FUNC_5697_(arg0, arg1)
											local function __FUNC_580F_(arg0, arg1)
												local function __FUNC_5987_(arg0, arg1)
													local function __FUNC_5AFF_(arg0, arg1)
														local function __FUNC_5C77_(arg0, arg1)
															local function __FUNC_5DEF_(arg0, arg1)
																local function __FUNC_5F67_(arg0, arg1)
																	local function __FUNC_60DF_(arg0, arg1)
																		local function __FUNC_6257_(arg0, arg1)
																			local function __FUNC_63CF_(arg0, arg1)
																				if not arg1.interrupted then
																					arg0:beginAnimation("keyframe", 650.000000, false, false, CoD.TweenType.Linear)
																				end
																				arg0:setAlpha(1.000000)
																				if arg1.interrupted then
																					registerVal2.clipFinished(arg0, arg1)
																				else
																					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																				end
																			end

																			if arg1.interrupted then
																				__FUNC_63CF_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 609.000000, false, false, CoD.TweenType.Linear)
																			arg0:setAlpha(0.600000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_63CF_)
																		end

																		if arg1.interrupted then
																			__FUNC_6257_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 650.000000, false, false, CoD.TweenType.Linear)
																		arg0:setAlpha(1.000000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6257_)
																	end

																	if arg1.interrupted then
																		__FUNC_60DF_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 609.000000, false, false, CoD.TweenType.Linear)
																	arg0:setAlpha(0.600000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_60DF_)
																end

																if arg1.interrupted then
																	__FUNC_5F67_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 649.000000, false, false, CoD.TweenType.Linear)
																arg0:setAlpha(1.000000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5F67_)
															end

															if arg1.interrupted then
																__FUNC_5DEF_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
															arg0:setAlpha(0.600000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5DEF_)
														end

														if arg1.interrupted then
															__FUNC_5C77_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 650.000000, false, false, CoD.TweenType.Linear)
														arg0:setAlpha(1.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5C77_)
													end

													if arg1.interrupted then
														__FUNC_5AFF_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 609.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.600000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5AFF_)
												end

												if arg1.interrupted then
													__FUNC_5987_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 650.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(1.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5987_)
											end

											if arg1.interrupted then
												__FUNC_580F_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.600000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_580F_)
										end

										if arg1.interrupted then
											__FUNC_5697_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 650.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(1.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5697_)
									end

									if arg1.interrupted then
										__FUNC_551F_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 609.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.600000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_551F_)
								end

								if arg1.interrupted then
									__FUNC_53A7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 649.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_53A7_)
							end

							if arg1.interrupted then
								__FUNC_522F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.600000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_522F_)
						end

						if arg1.interrupted then
							__FUNC_50B7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 649.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_50B7_)
					end

					if arg1.interrupted then
						__FUNC_4F3F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.600000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4F3F_)
				end

				if arg1.interrupted then
					__FUNC_4DC7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 649.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4DC7_)
			end

			if arg1.interrupted then
				__FUNC_4C4F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.600000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4C4F_)
		end

		registerVal8:completeAnimation()
		registerVal2.TextBox0:setAlpha(1.000000)
		__FUNC_4AD5_(registerVal8, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal10.DefaultClip = __FUNC_1070_
	local function __FUNC_6581_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_673B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.NotActivatedIcons:setAlpha(1.000000)
		__FUNC_673B_(registerVal3, {})
		local function __FUNC_68ED_(arg0, arg1)
			local function __FUNC_6A8A_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				arg0:setScale(1.500000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_6A8A_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:setScale(1.190000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6A8A_)
		end

		registerVal6:completeAnimation()
		registerVal2.hover:setAlpha(1.000000)
		registerVal2.hover:setScale(1.000000)
		__FUNC_68ED_(registerVal6, {})
		local function __FUNC_6C60_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.text0:setAlpha(1.000000)
		__FUNC_6C60_(registerVal7, {})
	end

	registerVal10.DefaultState = __FUNC_6581_
	registerVal9.NotActive = registerVal10
	registerVal10 = {}
	local function __FUNC_6E15_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.NotActivatedIcons:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.NoContracts:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.text:setLeftRight(true, false, 0.000000, 208.000000)
		registerVal2.text:setTopBottom(true, false, 129.500000, 149.500000)
		registerVal2.text:setAlpha(1.000000)
		registerVal2.text:setText(Engine.Localize("MPUI_BM_ACTIVATE_CONTRACTS"))
		registerVal2.text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.hover:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:beginAnimation("keyframe", 12060.000000, false, false, CoD.TweenType.Linear)
		registerVal7:setAlpha(0.000000)
		registerVal7:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		registerVal8:completeAnimation()
		registerVal2.TextBox0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_6E15_
	registerVal9.NoContracts = registerVal10
	registerVal2.clipsPerState = registerVal9
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "NotActive"
	local function __FUNC_731F_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "isActivated")
		return (not registerVal3)
	end

	registerVal12.condition = __FUNC_731F_
	local registerVal13 = {}
	registerVal13.stateName = "NoContracts"
	local function __FUNC_7397_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "isActivated")
		if not registerVal3 then
			registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "contractsRemaining", 0.000000)
		else
		end
		return true
	end

	registerVal13.condition = __FUNC_7397_
	registerVal11 = {registerVal12, registerVal13}
	registerVal2:mergeStateConditions(registerVal11)
	local function __FUNC_7479_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isActivated"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isActivated", true, __FUNC_7479_)
	local function __FUNC_7599_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "contractsRemaining"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "contractsRemaining", true, __FUNC_7599_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

