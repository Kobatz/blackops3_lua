-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.CallingCards_MedievalCapeWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_MedievalWidget = registerVal1
function CoD.CallingCards_MedievalWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_MedievalWidget)
	registerVal2.id = "CallingCards_MedievalWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_mp_career_medieval_bg"))
	registerVal2:addElement(registerVal3)
	registerVal2.Bg = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 422.200000, 457.360000)
	registerVal4:setTopBottom(true, false, 40.520000, 56.500000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcard_mp_career_medieval_flag"))
	registerVal2:addElement(registerVal4)
	registerVal2.Flag = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -310.500000, 518.500000)
	registerVal5:setTopBottom(true, false, -135.520000, 97.000000)
	registerVal5:setImage(RegisterImage("uie_t7_callingcard_mp_career_medieval_clouds"))
	registerVal2:addElement(registerVal5)
	registerVal2.Clouds = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 285.000000, 416.330000)
	registerVal6:setTopBottom(true, false, -106.350000, 218.350000)
	registerVal6:setRGB(1.000000, 0.790000, 0.350000)
	registerVal6:setZRot(90.000000)
	registerVal6:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.Glow = registerVal6
	local registerVal7 = CoD.CallingCards_MedievalCapeWidget.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 127.600000, 411.600000)
	registerVal7:setTopBottom(true, false, 13.970000, 108.970000)
	registerVal2:addElement(registerVal7)
	registerVal2.Cape2 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 331.250000, 380.750000)
	registerVal8:setTopBottom(true, false, 18.000000, 117.000000)
	registerVal8:setImage(RegisterImage("uie_t7_callingcard_mp_career_medieval_sword"))
	registerVal2:addElement(registerVal8)
	registerVal2.Sword = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 285.000000, 393.000000)
	registerVal9:setTopBottom(true, false, -1.000000, 28.700000)
	registerVal9:setImage(RegisterImage("uie_t7_callingcard_mp_career_medieval_hat"))
	registerVal2:addElement(registerVal9)
	registerVal2.Hat = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 338.000000, 454.000000)
	registerVal10:setTopBottom(true, false, 4.000000, 120.000000)
	registerVal10:setImage(RegisterImage("uie_t7_callingcard_mp_career_medieval_knight"))
	registerVal2:addElement(registerVal10)
	registerVal2.Knight = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, -4.130000, 104.000000)
	registerVal11:setTopBottom(true, false, -321.110000, 282.590000)
	registerVal11:setRGB(1.000000, 0.790000, 0.350000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setZRot(90.000000)
	registerVal11:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.Glow2 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 393.000000, 667.130000)
	registerVal12:setTopBottom(true, false, -70.180000, 108.520000)
	registerVal12:setRGB(1.000000, 0.790000, 0.350000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setZRot(90.000000)
	registerVal12:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.Glow3 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 317.550000, 394.450000)
	registerVal13:setTopBottom(true, false, 77.360000, 84.830000)
	registerVal13:setRGB(1.000000, 0.790000, 0.350000)
	registerVal13:setAlpha(0.880000)
	registerVal13:setZRot(88.000000)
	registerVal13:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.Glow0 = registerVal13
	local registerVal14 = {}
	local registerVal15 = {}
	local function __FUNC_F3A_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_13CB_(arg0, arg1)
			local function __FUNC_1558_(arg0, arg1)
				local function __FUNC_16E8_(arg0, arg1)
					local function __FUNC_1878_(arg0, arg1)
						local function __FUNC_1A08_(arg0, arg1)
							local function __FUNC_1B98_(arg0, arg1)
								local function __FUNC_1D28_(arg0, arg1)
									local function __FUNC_1EB8_(arg0, arg1)
										local function __FUNC_2048_(arg0, arg1)
											local function __FUNC_21D8_(arg0, arg1)
												local function __FUNC_2368_(arg0, arg1)
													local function __FUNC_24F8_(arg0, arg1)
														local function __FUNC_2688_(arg0, arg1)
															local function __FUNC_2818_(arg0, arg1)
																local function __FUNC_29A8_(arg0, arg1)
																	local function __FUNC_2B38_(arg0, arg1)
																		local function __FUNC_2CC8_(arg0, arg1)
																			local function __FUNC_2E58_(arg0, arg1)
																				local function __FUNC_2FE8_(arg0, arg1)
																					if not arg1.interrupted then
																						arg0:beginAnimation("keyframe", 409.000000, false, false, CoD.TweenType.Linear)
																					end
																					arg0:setLeftRight(true, false, 422.200000, 457.360000)
																					arg0:setTopBottom(true, false, 40.520000, 56.500000)
																					arg0:setAlpha(1.000000)
																					if arg1.interrupted then
																						registerVal2.clipFinished(arg0, arg1)
																					else
																						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																					end
																				end

																				if arg1.interrupted then
																					__FUNC_2FE8_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
																				arg0:setLeftRight(true, false, 418.200000, 457.360000)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FE8_)
																			end

																			if arg1.interrupted then
																				__FUNC_2E58_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 520.000000, false, false, CoD.TweenType.Linear)
																			arg0:setLeftRight(true, false, 422.200000, 457.360000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E58_)
																		end

																		if arg1.interrupted then
																			__FUNC_2CC8_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 560.000000, false, false, CoD.TweenType.Linear)
																		arg0:setLeftRight(true, false, 425.200000, 457.360000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CC8_)
																	end

																	if arg1.interrupted then
																		__FUNC_2B38_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 649.000000, false, false, CoD.TweenType.Linear)
																	arg0:setLeftRight(true, false, 421.200000, 457.360000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B38_)
																end

																if arg1.interrupted then
																	__FUNC_29A8_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
																arg0:setLeftRight(true, false, 418.200000, 457.360000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29A8_)
															end

															if arg1.interrupted then
																__FUNC_2818_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 530.000000, false, false, CoD.TweenType.Linear)
															arg0:setLeftRight(true, false, 422.200000, 457.360000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2818_)
														end

														if arg1.interrupted then
															__FUNC_2688_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 639.000000, false, false, CoD.TweenType.Linear)
														arg0:setLeftRight(true, false, 416.200000, 457.360000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2688_)
													end

													if arg1.interrupted then
														__FUNC_24F8_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
													arg0:setLeftRight(true, false, 422.200000, 457.360000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24F8_)
												end

												if arg1.interrupted then
													__FUNC_2368_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
												arg0:setLeftRight(true, false, 420.200000, 457.360000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2368_)
											end

											if arg1.interrupted then
												__FUNC_21D8_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 190.000000, false, false, CoD.TweenType.Linear)
											arg0:setLeftRight(true, false, 423.200000, 457.360000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21D8_)
										end

										if arg1.interrupted then
											__FUNC_2048_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 1109.000000, false, false, CoD.TweenType.Linear)
										arg0:setLeftRight(true, false, 420.200000, 457.360000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2048_)
									end

									if arg1.interrupted then
										__FUNC_1EB8_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
									arg0:setLeftRight(true, false, 423.200000, 457.360000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EB8_)
								end

								if arg1.interrupted then
									__FUNC_1D28_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 730.000000, false, false, CoD.TweenType.Linear)
								arg0:setLeftRight(true, false, 425.200000, 457.360000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D28_)
							end

							if arg1.interrupted then
								__FUNC_1B98_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 660.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, 418.200000, 457.360000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B98_)
						end

						if arg1.interrupted then
							__FUNC_1A08_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 719.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 422.200000, 457.360000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A08_)
					end

					if arg1.interrupted then
						__FUNC_1878_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 720.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 419.200000, 457.360000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1878_)
				end

				if arg1.interrupted then
					__FUNC_16E8_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 423.200000, 457.360000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16E8_)
			end

			if arg1.interrupted then
				__FUNC_1558_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 689.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 419.200000, 457.360000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1558_)
		end

		registerVal4:completeAnimation()
		registerVal2.Flag:setLeftRight(true, false, 422.200000, 457.360000)
		registerVal2.Flag:setTopBottom(true, false, 40.520000, 56.500000)
		registerVal2.Flag:setAlpha(1.000000)
		__FUNC_13CB_(registerVal4, {})
		local function __FUNC_320D_(arg0, arg1)
			local function __FUNC_33F7_(arg0, arg1)
				local function __FUNC_35DF_(arg0, arg1)
					local function __FUNC_37C7_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, -301.500000, 527.500000)
						arg0:setTopBottom(true, false, -135.520000, 97.000000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_37C7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 1580.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, -301.260000, 527.740000)
					arg0:setTopBottom(true, false, -135.500000, 97.020000)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37C7_)
				end

				if arg1.interrupted then
					__FUNC_35DF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 6839.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, -262.980000, 566.020000)
				arg0:setTopBottom(true, false, -131.840000, 100.690000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_35DF_)
			end

			if arg1.interrupted then
				__FUNC_33F7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1600.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -97.260000, 731.740000)
			arg0:setTopBottom(true, false, -115.970000, 116.550000)
			arg0:setAlpha(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33F7_)
		end

		registerVal5:completeAnimation()
		registerVal2.Clouds:setLeftRight(true, false, -58.500000, 770.500000)
		registerVal2.Clouds:setTopBottom(true, false, -112.260000, 120.260000)
		registerVal2.Clouds:setAlpha(0.000000)
		__FUNC_320D_(registerVal5, {})
		local function __FUNC_39E9_(arg0, arg1)
			local function __FUNC_3B40_(arg0, arg1)
				local function __FUNC_3CBB_(arg0, arg1)
					local function __FUNC_3E33_(arg0, arg1)
						local function __FUNC_3FAB_(arg0, arg1)
							local function __FUNC_4123_(arg0, arg1)
								local function __FUNC_429B_(arg0, arg1)
									local function __FUNC_4413_(arg0, arg1)
										local function __FUNC_458B_(arg0, arg1)
											local function __FUNC_4703_(arg0, arg1)
												local function __FUNC_487B_(arg0, arg1)
													if not arg1.interrupted then
														arg0:beginAnimation("keyframe", 1830.000000, false, false, CoD.TweenType.Linear)
													end
													arg0:setAlpha(0.000000)
													if arg1.interrupted then
														registerVal2.clipFinished(arg0, arg1)
													else
														arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
													end
												end

												if arg1.interrupted then
													__FUNC_487B_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(0.850000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_487B_)
											end

											if arg1.interrupted then
												__FUNC_4703_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 2070.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.340000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4703_)
										end

										if arg1.interrupted then
											__FUNC_458B_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 169.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.800000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_458B_)
									end

									if arg1.interrupted then
										__FUNC_4413_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 320.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.160000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4413_)
								end

								if arg1.interrupted then
									__FUNC_429B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 2019.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.450000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_429B_)
							end

							if arg1.interrupted then
								__FUNC_4123_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 1590.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4123_)
						end

						if arg1.interrupted then
							__FUNC_3FAB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.800000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3FAB_)
					end

					if arg1.interrupted then
						__FUNC_3E33_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.060000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E33_)
				end

				if arg1.interrupted then
					__FUNC_3CBB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 459.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.700000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3CBB_)
			end

			if arg1.interrupted then
				__FUNC_3B40_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B40_)
		end

		registerVal6:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_39E9_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Cape2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_4A2D_(arg0, arg1)
			local function __FUNC_4BBC_(arg0, arg1)
				local function __FUNC_4D4C_(arg0, arg1)
					local function __FUNC_4F14_(arg0, arg1)
						local function __FUNC_50DC_(arg0, arg1)
							local function __FUNC_52A4_(arg0, arg1)
								local function __FUNC_546C_(arg0, arg1)
									local function __FUNC_55FC_(arg0, arg1)
										local function __FUNC_578C_(arg0, arg1)
											local function __FUNC_591C_(arg0, arg1)
												local function __FUNC_5AAC_(arg0, arg1)
													local function __FUNC_5C3C_(arg0, arg1)
														local function __FUNC_5DCC_(arg0, arg1)
															local function __FUNC_5F5C_(arg0, arg1)
																local function __FUNC_60EC_(arg0, arg1)
																	local function __FUNC_627C_(arg0, arg1)
																		local function __FUNC_640C_(arg0, arg1)
																			local function __FUNC_659C_(arg0, arg1)
																				local function __FUNC_672C_(arg0, arg1)
																					local function __FUNC_68BC_(arg0, arg1)
																						local function __FUNC_6A4C_(arg0, arg1)
																							local function __FUNC_6BDC_(arg0, arg1)
																								local function __FUNC_6D6C_(arg0, arg1)
																									local function __FUNC_6EFC_(arg0, arg1)
																										local function __FUNC_708C_(arg0, arg1)
																											local function __FUNC_721C_(arg0, arg1)
																												local function __FUNC_73AC_(arg0, arg1)
																													local function __FUNC_753C_(arg0, arg1)
																														if not arg1.interrupted then
																															arg0:beginAnimation("keyframe", 840.000000, false, false, CoD.TweenType.Linear)
																														end
																														arg0:setLeftRight(true, false, 285.000000, 393.000000)
																														arg0:setTopBottom(true, false, -1.000000, 28.700000)
																														if arg1.interrupted then
																															registerVal2.clipFinished(arg0, arg1)
																														else
																															arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																														end
																													end

																													if arg1.interrupted then
																														__FUNC_753C_(arg0, arg1)
																														return 
																													end
																													arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
																													arg0:setLeftRight(true, false, 294.000000, 393.000000)
																													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_753C_)
																												end

																												if arg1.interrupted then
																													__FUNC_73AC_(arg0, arg1)
																													return 
																												end
																												arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
																												arg0:setLeftRight(true, false, 288.000000, 393.000000)
																												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_73AC_)
																											end

																											if arg1.interrupted then
																												__FUNC_721C_(arg0, arg1)
																												return 
																											end
																											arg0:beginAnimation("keyframe", 380.000000, false, false, CoD.TweenType.Linear)
																											arg0:setLeftRight(true, false, 293.000000, 393.000000)
																											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_721C_)
																										end

																										if arg1.interrupted then
																											__FUNC_708C_(arg0, arg1)
																											return 
																										end
																										arg0:beginAnimation("keyframe", 279.000000, false, false, CoD.TweenType.Linear)
																										arg0:setLeftRight(true, false, 304.670000, 393.000000)
																										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_708C_)
																									end

																									if arg1.interrupted then
																										__FUNC_6EFC_(arg0, arg1)
																										return 
																									end
																									arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
																									arg0:setLeftRight(true, false, 284.500000, 393.000000)
																									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6EFC_)
																								end

																								if arg1.interrupted then
																									__FUNC_6D6C_(arg0, arg1)
																									return 
																								end
																								arg0:beginAnimation("keyframe", 260.000000, false, false, CoD.TweenType.Linear)
																								arg0:setLeftRight(true, false, 291.840000, 393.000000)
																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6D6C_)
																							end

																							if arg1.interrupted then
																								__FUNC_6BDC_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 460.000000, false, false, CoD.TweenType.Linear)
																							arg0:setLeftRight(true, false, 274.000000, 393.000000)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6BDC_)
																						end

																						if arg1.interrupted then
																							__FUNC_6A4C_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 260.000000, false, false, CoD.TweenType.Linear)
																						arg0:setLeftRight(true, false, 277.000000, 393.000000)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6A4C_)
																					end

																					if arg1.interrupted then
																						__FUNC_68BC_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
																					arg0:setLeftRight(true, false, 271.000000, 393.000000)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_68BC_)
																				end

																				if arg1.interrupted then
																					__FUNC_672C_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 380.000000, false, false, CoD.TweenType.Linear)
																				arg0:setLeftRight(true, false, 292.660000, 393.000000)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_672C_)
																			end

																			if arg1.interrupted then
																				__FUNC_659C_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
																			arg0:setLeftRight(true, false, 284.500000, 393.000000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_659C_)
																		end

																		if arg1.interrupted then
																			__FUNC_640C_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 320.000000, false, false, CoD.TweenType.Linear)
																		arg0:setLeftRight(true, false, 295.260000, 393.000000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_640C_)
																	end

																	if arg1.interrupted then
																		__FUNC_627C_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
																	arg0:setLeftRight(true, false, 283.260000, 393.000000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_627C_)
																end

																if arg1.interrupted then
																	__FUNC_60EC_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
																arg0:setLeftRight(true, false, 278.260000, 393.000000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_60EC_)
															end

															if arg1.interrupted then
																__FUNC_5F5C_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 780.000000, false, false, CoD.TweenType.Linear)
															arg0:setLeftRight(true, false, 285.260000, 393.000000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5F5C_)
														end

														if arg1.interrupted then
															__FUNC_5DCC_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 359.000000, false, false, CoD.TweenType.Linear)
														arg0:setLeftRight(true, false, 275.260000, 393.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5DCC_)
													end

													if arg1.interrupted then
														__FUNC_5C3C_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 660.000000, false, false, CoD.TweenType.Linear)
													arg0:setLeftRight(true, false, 281.260000, 393.000000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5C3C_)
												end

												if arg1.interrupted then
													__FUNC_5AAC_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 179.000000, false, false, CoD.TweenType.Linear)
												arg0:setLeftRight(true, false, 268.260000, 393.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5AAC_)
											end

											if arg1.interrupted then
												__FUNC_591C_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
											arg0:setLeftRight(true, false, 285.260000, 393.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_591C_)
										end

										if arg1.interrupted then
											__FUNC_578C_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 410.000000, false, false, CoD.TweenType.Linear)
										arg0:setLeftRight(true, false, 279.000000, 393.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_578C_)
									end

									if arg1.interrupted then
										__FUNC_55FC_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
									arg0:setLeftRight(true, false, 300.520000, 393.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_55FC_)
								end

								if arg1.interrupted then
									__FUNC_546C_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
								arg0:setLeftRight(true, false, 292.000000, 393.000000)
								arg0:setTopBottom(true, false, -1.000000, 25.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_546C_)
							end

							if arg1.interrupted then
								__FUNC_52A4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 279.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, 304.670000, 393.000000)
							arg0:setTopBottom(true, false, -1.000000, 26.290000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_52A4_)
						end

						if arg1.interrupted then
							__FUNC_50DC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 295.320000, 393.000000)
						arg0:setTopBottom(true, false, -1.000000, 27.310000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_50DC_)
					end

					if arg1.interrupted then
						__FUNC_4F14_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 279.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 304.670000, 393.000000)
					arg0:setTopBottom(true, false, -1.000000, 27.680000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4F14_)
				end

				if arg1.interrupted then
					__FUNC_4D4C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 292.000000, 393.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D4C_)
			end

			if arg1.interrupted then
				__FUNC_4BBC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 304.670000, 393.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4BBC_)
		end

		registerVal9:completeAnimation()
		registerVal2.Hat:setLeftRight(true, false, 285.000000, 393.000000)
		registerVal2.Hat:setTopBottom(true, false, -1.000000, 28.700000)
		__FUNC_4A2D_(registerVal9, {})
		local function __FUNC_773E_(arg0, arg1)
			local function __FUNC_78B7_(arg0, arg1)
				local function __FUNC_7A2F_(arg0, arg1)
					local function __FUNC_7BA7_(arg0, arg1)
						local function __FUNC_7D1F_(arg0, arg1)
							local function __FUNC_7E97_(arg0, arg1)
								local function __FUNC_800F_(arg0, arg1)
									local function __FUNC_8164_(arg0, arg1)
										local function __FUNC_82DF_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 2680.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setAlpha(0.000000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_82DF_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.510000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_82DF_)
									end

									if arg1.interrupted then
										__FUNC_8164_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 1400.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8164_)
								end

								if arg1.interrupted then
									__FUNC_800F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 2760.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_800F_)
							end

							if arg1.interrupted then
								__FUNC_7E97_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.780000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7E97_)
						end

						if arg1.interrupted then
							__FUNC_7D1F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 480.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.110000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7D1F_)
					end

					if arg1.interrupted then
						__FUNC_7BA7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.450000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7BA7_)
				end

				if arg1.interrupted then
					__FUNC_7A2F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 2160.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7A2F_)
			end

			if arg1.interrupted then
				__FUNC_78B7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.700000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_78B7_)
		end

		registerVal11:completeAnimation()
		registerVal2.Glow2:setAlpha(0.000000)
		__FUNC_773E_(registerVal11, {})
		local function __FUNC_8491_(arg0, arg1)
			local function __FUNC_85E8_(arg0, arg1)
				local function __FUNC_8763_(arg0, arg1)
					local function __FUNC_88DB_(arg0, arg1)
						local function __FUNC_8A30_(arg0, arg1)
							local function __FUNC_8BAB_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 680.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_8BAB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8BAB_)
						end

						if arg1.interrupted then
							__FUNC_8A30_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 4139.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8A30_)
					end

					if arg1.interrupted then
						__FUNC_88DB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 1659.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_88DB_)
				end

				if arg1.interrupted then
					__FUNC_8763_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8763_)
			end

			if arg1.interrupted then
				__FUNC_85E8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 3279.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_85E8_)
		end

		registerVal12:completeAnimation()
		registerVal2.Glow3:setAlpha(0.000000)
		__FUNC_8491_(registerVal12, {})
		local function __FUNC_8D5D_(arg0, arg1)
			local function __FUNC_8EB4_(arg0, arg1)
				local function __FUNC_902F_(arg0, arg1)
					local function __FUNC_91A7_(arg0, arg1)
						local function __FUNC_931F_(arg0, arg1)
							local function __FUNC_9497_(arg0, arg1)
								local function __FUNC_960F_(arg0, arg1)
									local function __FUNC_9787_(arg0, arg1)
										local function __FUNC_98FF_(arg0, arg1)
											local function __FUNC_9A77_(arg0, arg1)
												local function __FUNC_9BEF_(arg0, arg1)
													local function __FUNC_9D67_(arg0, arg1)
														if not arg1.interrupted then
															arg0:beginAnimation("keyframe", 460.000000, false, false, CoD.TweenType.Linear)
														end
														arg0:setAlpha(0.000000)
														if arg1.interrupted then
															registerVal2.clipFinished(arg0, arg1)
														else
															arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
														end
													end

													if arg1.interrupted then
														__FUNC_9D67_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 710.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.550000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9D67_)
												end

												if arg1.interrupted then
													__FUNC_9BEF_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 570.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(0.210000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9BEF_)
											end

											if arg1.interrupted then
												__FUNC_9A77_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 329.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.540000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9A77_)
										end

										if arg1.interrupted then
											__FUNC_98FF_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 1989.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_98FF_)
									end

									if arg1.interrupted then
										__FUNC_9787_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.550000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9787_)
								end

								if arg1.interrupted then
									__FUNC_960F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 660.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.090000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_960F_)
							end

							if arg1.interrupted then
								__FUNC_9497_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 3159.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.260000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9497_)
						end

						if arg1.interrupted then
							__FUNC_931F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_931F_)
					end

					if arg1.interrupted then
						__FUNC_91A7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.180000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_91A7_)
				end

				if arg1.interrupted then
					__FUNC_902F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 419.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.840000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_902F_)
			end

			if arg1.interrupted then
				__FUNC_8EB4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1139.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8EB4_)
		end

		registerVal13:completeAnimation()
		registerVal2.Glow0:setAlpha(0.000000)
		__FUNC_8D5D_(registerVal13, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal15.DefaultClip = __FUNC_F3A_
	registerVal14.DefaultState = registerVal15
	registerVal2.clipsPerState = registerVal14
	local function __FUNC_9F19_(arg0)
		arg0.Cape2:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_9F19_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

