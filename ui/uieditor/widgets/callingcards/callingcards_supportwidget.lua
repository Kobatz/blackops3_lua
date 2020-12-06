-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_SupportWidget = registerVal1
function CoD.CallingCards_SupportWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_SupportWidget)
	registerVal2.id = "CallingCards_SupportWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_support_bg1"))
	registerVal2:addElement(registerVal3)
	registerVal2.bg = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcard_support_bg2"))
	registerVal2:addElement(registerVal4)
	registerVal2.bgWithReflect = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_callingcard_support_bg3"))
	registerVal2:addElement(registerVal5)
	registerVal2.bgWithEyesClosed = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 56.000000, 274.000000)
	registerVal6:setTopBottom(true, false, 76.000000, 120.000000)
	registerVal6:setAlpha(0.570000)
	registerVal6:setImage(RegisterImage("uie_t7_callingcard_support_ripple"))
	registerVal2:addElement(registerVal6)
	registerVal2.ripple = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal7:setAlpha(0.200000)
	registerVal7:setImage(RegisterImage("uie_t7_callingcard_support_bg1"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.bgAdd = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 319.000000, 351.000000)
	registerVal8:setTopBottom(true, false, 27.000000, 59.000000)
	registerVal8:setImage(RegisterImage("uie_t7_callingcard_support_eye"))
	registerVal2:addElement(registerVal8)
	registerVal2.eye = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 49.000000, 301.000000)
	registerVal9:setTopBottom(true, false, 13.000000, 73.000000)
	registerVal9:setImage(RegisterImage("uie_t7_callingcard_support_tongue"))
	registerVal2:addElement(registerVal9)
	registerVal2.tongue = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 17.000000, 81.000000)
	registerVal10:setTopBottom(true, false, -13.000000, 51.000000)
	registerVal10:setImage(RegisterImage("uie_t7_callingcard_support_fly"))
	registerVal2:addElement(registerVal10)
	registerVal2.fly = registerVal10
	local registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_AC3_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_DE7_(arg0, arg1)
			local function __FUNC_F5F_(arg0, arg1)
				local function __FUNC_10D7_(arg0, arg1)
					local function __FUNC_124F_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 990.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_124F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 1009.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.250000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_124F_)
				end

				if arg1.interrupted then
					__FUNC_10D7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10D7_)
			end

			if arg1.interrupted then
				__FUNC_F5F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1009.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.250000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F5F_)
		end

		registerVal4:completeAnimation()
		registerVal2.bgWithReflect:setAlpha(1.000000)
		__FUNC_DE7_(registerVal4, {})
		local function __FUNC_1401_(arg0, arg1)
			local function __FUNC_1558_(arg0, arg1)
				local function __FUNC_16D3_(arg0, arg1)
					local function __FUNC_184B_(arg0, arg1)
						local function __FUNC_19A0_(arg0, arg1)
							local function __FUNC_1B1B_(arg0, arg1)
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
								__FUNC_1B1B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B1B_)
						end

						if arg1.interrupted then
							__FUNC_19A0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 1259.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19A0_)
					end

					if arg1.interrupted then
						__FUNC_184B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_184B_)
				end

				if arg1.interrupted then
					__FUNC_16D3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16D3_)
			end

			if arg1.interrupted then
				__FUNC_1558_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1649.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1558_)
		end

		registerVal5:completeAnimation()
		registerVal2.bgWithEyesClosed:setAlpha(0.000000)
		__FUNC_1401_(registerVal5, {})
		local function __FUNC_1CCD_(arg0, arg1)
			local function __FUNC_1E47_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 3000.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1E47_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1009.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.260000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E47_)
		end

		registerVal6:completeAnimation()
		registerVal2.ripple:setAlpha(0.000000)
		__FUNC_1CCD_(registerVal6, {})
		local function __FUNC_1FF9_(arg0, arg1)
			local function __FUNC_2173_(arg0, arg1)
				local function __FUNC_22EB_(arg0, arg1)
					local function __FUNC_2463_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 990.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_2463_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 1009.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.300000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2463_)
				end

				if arg1.interrupted then
					__FUNC_22EB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22EB_)
			end

			if arg1.interrupted then
				__FUNC_2173_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1009.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.420000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2173_)
		end

		registerVal8:completeAnimation()
		registerVal2.eye:setAlpha(1.000000)
		__FUNC_1FF9_(registerVal8, {})
		local function __FUNC_2615_(arg0, arg1)
			local function __FUNC_276C_(arg0, arg1)
				local function __FUNC_28E7_(arg0, arg1)
					local function __FUNC_2A5F_(arg0, arg1)
						local function __FUNC_2BB4_(arg0, arg1)
							local function __FUNC_2D2F_(arg0, arg1)
								local function __FUNC_2EA7_(arg0, arg1)
									local function __FUNC_2FFC_(arg0, arg1)
										local function __FUNC_3177_(arg0, arg1)
											local function __FUNC_32EF_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 730.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setAlpha(0.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_32EF_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32EF_)
										end

										if arg1.interrupted then
											__FUNC_3177_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(1.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3177_)
									end

									if arg1.interrupted then
										__FUNC_2FFC_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 430.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FFC_)
								end

								if arg1.interrupted then
									__FUNC_2EA7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EA7_)
							end

							if arg1.interrupted then
								__FUNC_2D2F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D2F_)
						end

						if arg1.interrupted then
							__FUNC_2BB4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 1240.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BB4_)
					end

					if arg1.interrupted then
						__FUNC_2A5F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A5F_)
				end

				if arg1.interrupted then
					__FUNC_28E7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28E7_)
			end

			if arg1.interrupted then
				__FUNC_276C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1159.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_276C_)
		end

		registerVal9:completeAnimation()
		registerVal2.tongue:setAlpha(0.000000)
		__FUNC_2615_(registerVal9, {})
		local function __FUNC_34A1_(arg0, arg1)
			local function __FUNC_3668_(arg0, arg1)
				local function __FUNC_3830_(arg0, arg1)
					local function __FUNC_39F8_(arg0, arg1)
						local function __FUNC_3BC0_(arg0, arg1)
							local function __FUNC_3D88_(arg0, arg1)
								local function __FUNC_3F50_(arg0, arg1)
									local function __FUNC_40E0_(arg0, arg1)
										local function __FUNC_42A8_(arg0, arg1)
											local function __FUNC_4470_(arg0, arg1)
												local function __FUNC_4638_(arg0, arg1)
													local function __FUNC_4800_(arg0, arg1)
														local function __FUNC_49C8_(arg0, arg1)
															local function __FUNC_4B90_(arg0, arg1)
																local function __FUNC_4D58_(arg0, arg1)
																	local function __FUNC_4F20_(arg0, arg1)
																		local function __FUNC_50E8_(arg0, arg1)
																			local function __FUNC_52B0_(arg0, arg1)
																				local function __FUNC_5478_(arg0, arg1)
																					local function __FUNC_5640_(arg0, arg1)
																						local function __FUNC_5808_(arg0, arg1)
																							local function __FUNC_59D0_(arg0, arg1)
																								local function __FUNC_5B98_(arg0, arg1)
																									if not arg1.interrupted then
																										arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
																									end
																									arg0:setLeftRight(true, false, 12.000000, 76.000000)
																									arg0:setTopBottom(true, false, -46.000000, 18.000000)
																									if arg1.interrupted then
																										registerVal2.clipFinished(arg0, arg1)
																									else
																										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																									end
																								end

																								if arg1.interrupted then
																									__FUNC_5B98_(arg0, arg1)
																									return 
																								end
																								arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
																								arg0:setLeftRight(true, false, 77.000000, 141.000000)
																								arg0:setTopBottom(true, false, -10.000000, 54.000000)
																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B98_)
																							end

																							if arg1.interrupted then
																								__FUNC_59D0_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 169.000000, false, false, CoD.TweenType.Linear)
																							arg0:setLeftRight(true, false, 129.000000, 193.000000)
																							arg0:setTopBottom(true, false, 9.000000, 73.000000)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_59D0_)
																						end

																						if arg1.interrupted then
																							__FUNC_5808_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
																						arg0:setLeftRight(true, false, 78.000000, 142.000000)
																						arg0:setTopBottom(true, false, 34.000000, 98.000000)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5808_)
																					end

																					if arg1.interrupted then
																						__FUNC_5640_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
																					arg0:setLeftRight(true, false, 52.000000, 116.000000)
																					arg0:setTopBottom(true, false, -21.000000, 43.000000)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5640_)
																				end

																				if arg1.interrupted then
																					__FUNC_5478_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
																				arg0:setLeftRight(true, false, 13.000000, 77.000000)
																				arg0:setTopBottom(true, false, -32.000000, 32.000000)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5478_)
																			end

																			if arg1.interrupted then
																				__FUNC_52B0_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
																			arg0:setLeftRight(true, false, 179.000000, 243.000000)
																			arg0:setTopBottom(true, false, -9.000000, 55.000000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_52B0_)
																		end

																		if arg1.interrupted then
																			__FUNC_50E8_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
																		arg0:setLeftRight(true, false, 148.000000, 212.000000)
																		arg0:setTopBottom(true, false, -12.000000, 52.000000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_50E8_)
																	end

																	if arg1.interrupted then
																		__FUNC_4F20_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
																	arg0:setLeftRight(true, false, 72.000000, 136.000000)
																	arg0:setTopBottom(true, false, -24.000000, 40.000000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4F20_)
																end

																if arg1.interrupted then
																	__FUNC_4D58_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
																arg0:setLeftRight(true, false, 28.000000, 92.000000)
																arg0:setTopBottom(true, false, -27.000000, 37.000000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D58_)
															end

															if arg1.interrupted then
																__FUNC_4B90_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
															arg0:setLeftRight(true, false, 73.000000, 137.000000)
															arg0:setTopBottom(true, false, -4.000000, 60.000000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B90_)
														end

														if arg1.interrupted then
															__FUNC_49C8_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
														arg0:setLeftRight(true, false, 106.000000, 170.000000)
														arg0:setTopBottom(true, false, 23.000000, 87.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_49C8_)
													end

													if arg1.interrupted then
														__FUNC_4800_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
													arg0:setLeftRight(true, false, 149.000000, 213.000000)
													arg0:setTopBottom(true, false, -11.000000, 53.000000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4800_)
												end

												if arg1.interrupted then
													__FUNC_4638_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 399.000000, false, false, CoD.TweenType.Linear)
												arg0:setLeftRight(true, false, 184.000000, 248.000000)
												arg0:setTopBottom(true, false, -5.000000, 59.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4638_)
											end

											if arg1.interrupted then
												__FUNC_4470_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
											arg0:setLeftRight(true, false, 72.000000, 136.000000)
											arg0:setTopBottom(true, false, -15.000000, 49.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4470_)
										end

										if arg1.interrupted then
											__FUNC_42A8_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
										arg0:setLeftRight(true, false, 89.000000, 153.000000)
										arg0:setTopBottom(true, false, -13.000000, 51.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_42A8_)
									end

									if arg1.interrupted then
										__FUNC_40E0_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
									arg0:setLeftRight(true, false, 24.000000, 88.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_40E0_)
								end

								if arg1.interrupted then
									__FUNC_3F50_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 169.000000, false, false, CoD.TweenType.Linear)
								arg0:setLeftRight(true, false, 82.000000, 146.000000)
								arg0:setTopBottom(true, false, -27.000000, 37.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F50_)
							end

							if arg1.interrupted then
								__FUNC_3D88_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, 60.000000, 124.000000)
							arg0:setTopBottom(true, false, 5.000000, 69.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D88_)
						end

						if arg1.interrupted then
							__FUNC_3BC0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 95.000000, 159.000000)
						arg0:setTopBottom(true, false, 0.000000, 64.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3BC0_)
					end

					if arg1.interrupted then
						__FUNC_39F8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 56.000000, 120.000000)
					arg0:setTopBottom(true, false, -12.000000, 52.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39F8_)
				end

				if arg1.interrupted then
					__FUNC_3830_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 13.000000, 77.000000)
				arg0:setTopBottom(true, false, 0.000000, 64.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3830_)
			end

			if arg1.interrupted then
				__FUNC_3668_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 24.000000, 88.000000)
			arg0:setTopBottom(true, false, -14.000000, 50.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3668_)
		end

		registerVal10:completeAnimation()
		registerVal2.fly:setLeftRight(true, false, 12.000000, 76.000000)
		registerVal2.fly:setTopBottom(true, false, -46.000000, 18.000000)
		__FUNC_34A1_(registerVal10, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal12.DefaultClip = __FUNC_AC3_
	registerVal11.DefaultState = registerVal12
	registerVal2.clipsPerState = registerVal11
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

