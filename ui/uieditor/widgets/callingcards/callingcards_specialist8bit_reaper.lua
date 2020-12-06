-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.CallingCards_Specialist8bit_eyes")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_Specialist8bit_Reaper = registerVal1
function CoD.CallingCards_Specialist8bit_Reaper.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCards_Specialist8bit_Reaper)
	registerVal2.id = "CallingCards_Specialist8bit_Reaper"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 371.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 235.000000, 367.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_mp_specialist8bit_arm"))
	registerVal2:addElement(registerVal3)
	registerVal2.arm = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 347.000000, 431.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcard_mp_specialist8bit_body"))
	registerVal2:addElement(registerVal4)
	registerVal2.body = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 60.000000, 276.000000)
	registerVal5:setTopBottom(true, false, 30.000000, 114.000000)
	registerVal5:setImage(RegisterImage("uie_t7_callingcard_mp_specialist8bit_sparks"))
	registerVal2:addElement(registerVal5)
	registerVal2.spark = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 60.000000, 276.000000)
	registerVal6:setTopBottom(true, false, 35.000000, 119.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setYRot(180.000000)
	registerVal6:setZRot(180.000000)
	registerVal6:setImage(RegisterImage("uie_t7_callingcard_mp_specialist8bit_sparks"))
	registerVal2:addElement(registerVal6)
	registerVal2.spark2 = registerVal6
	local registerVal7 = CoD.CallingCards_Specialist8bit_eyes.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 359.000000, 395.000000)
	registerVal7:setTopBottom(true, false, 14.000000, 38.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.eyeswidget = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 73.000000, 289.000000)
	registerVal8:setTopBottom(true, false, 28.000000, 112.000000)
	registerVal8:setImage(RegisterImage("uie_t7_callingcard_mp_specialist8bit_bullet1"))
	registerVal2:addElement(registerVal8)
	registerVal2.Image0 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 73.000000, 289.000000)
	registerVal9:setTopBottom(true, false, 28.000000, 112.000000)
	registerVal9:setImage(RegisterImage("uie_t7_callingcard_mp_specialist8bit_bullet2"))
	registerVal2:addElement(registerVal9)
	registerVal2.Image1 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 73.000000, 289.000000)
	registerVal10:setTopBottom(true, false, 28.000000, 112.000000)
	registerVal10:setImage(RegisterImage("uie_t7_callingcard_mp_specialist8bit_bullet3"))
	registerVal2:addElement(registerVal10)
	registerVal2.Image2 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 73.000000, 289.000000)
	registerVal11:setTopBottom(true, false, 28.000000, 112.000000)
	registerVal11:setImage(RegisterImage("uie_t7_callingcard_mp_specialist8bit_bullet4"))
	registerVal2:addElement(registerVal11)
	registerVal2.Image3 = registerVal11
	local registerVal12 = {}
	local registerVal13 = {}
	local function __FUNC_C78_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_1313_(arg0, arg1)
			local function __FUNC_14A0_(arg0, arg1)
				local function __FUNC_15F8_(arg0, arg1)
					local function __FUNC_1750_(arg0, arg1)
						local function __FUNC_18E0_(arg0, arg1)
							local function __FUNC_1A70_(arg0, arg1)
								local function __FUNC_1BC8_(arg0, arg1)
									local function __FUNC_1D20_(arg0, arg1)
										local function __FUNC_1EB0_(arg0, arg1)
											local function __FUNC_2040_(arg0, arg1)
												local function __FUNC_2198_(arg0, arg1)
													local function __FUNC_22F0_(arg0, arg1)
														local function __FUNC_2480_(arg0, arg1)
															local function __FUNC_2610_(arg0, arg1)
																local function __FUNC_2768_(arg0, arg1)
																	local function __FUNC_28C0_(arg0, arg1)
																		local function __FUNC_2A50_(arg0, arg1)
																			local function __FUNC_2BE0_(arg0, arg1)
																				local function __FUNC_2D38_(arg0, arg1)
																					local function __FUNC_2E90_(arg0, arg1)
																						if not arg1.interrupted then
																							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																						end
																						arg0:setLeftRight(true, false, 235.000000, 367.000000)
																						arg0:setTopBottom(true, false, 0.000000, 120.000000)
																						if arg1.interrupted then
																							registerVal2.clipFinished(arg0, arg1)
																						else
																							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																						end
																					end

																					if arg1.interrupted then
																						__FUNC_2E90_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E90_)
																				end

																				if arg1.interrupted then
																					__FUNC_2D38_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D38_)
																			end

																			if arg1.interrupted then
																				__FUNC_2BE0_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
																			arg0:setTopBottom(true, false, 5.000000, 125.000000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BE0_)
																		end

																		if arg1.interrupted then
																			__FUNC_2A50_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																		arg0:setTopBottom(true, false, 0.000000, 120.000000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A50_)
																	end

																	if arg1.interrupted then
																		__FUNC_28C0_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28C0_)
																end

																if arg1.interrupted then
																	__FUNC_2768_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2768_)
															end

															if arg1.interrupted then
																__FUNC_2610_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
															arg0:setTopBottom(true, false, 5.000000, 125.000000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2610_)
														end

														if arg1.interrupted then
															__FUNC_2480_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
														arg0:setTopBottom(true, false, 0.000000, 120.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2480_)
													end

													if arg1.interrupted then
														__FUNC_22F0_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22F0_)
												end

												if arg1.interrupted then
													__FUNC_2198_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2198_)
											end

											if arg1.interrupted then
												__FUNC_2040_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
											arg0:setTopBottom(true, false, 5.000000, 125.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2040_)
										end

										if arg1.interrupted then
											__FUNC_1EB0_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:setTopBottom(true, false, 0.000000, 120.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EB0_)
									end

									if arg1.interrupted then
										__FUNC_1D20_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D20_)
								end

								if arg1.interrupted then
									__FUNC_1BC8_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BC8_)
							end

							if arg1.interrupted then
								__FUNC_1A70_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
							arg0:setTopBottom(true, false, 5.000000, 125.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A70_)
						end

						if arg1.interrupted then
							__FUNC_18E0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:setTopBottom(true, false, 0.000000, 120.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18E0_)
					end

					if arg1.interrupted then
						__FUNC_1750_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1750_)
				end

				if arg1.interrupted then
					__FUNC_15F8_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15F8_)
			end

			if arg1.interrupted then
				__FUNC_14A0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 5.000000, 125.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14A0_)
		end

		registerVal3:completeAnimation()
		registerVal2.arm:setLeftRight(true, false, 235.000000, 367.000000)
		registerVal2.arm:setTopBottom(true, false, 0.000000, 120.000000)
		__FUNC_1313_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.body:setLeftRight(true, false, 347.000000, 431.000000)
		registerVal2.body:setTopBottom(true, false, 0.000000, 120.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_3092_(arg0, arg1)
			local function __FUNC_320B_(arg0, arg1)
				local function __FUNC_3383_(arg0, arg1)
					local function __FUNC_34D8_(arg0, arg1)
						local function __FUNC_3630_(arg0, arg1)
							local function __FUNC_37AB_(arg0, arg1)
								local function __FUNC_3923_(arg0, arg1)
									local function __FUNC_3A78_(arg0, arg1)
										local function __FUNC_3BD0_(arg0, arg1)
											local function __FUNC_3D4B_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setLeftRight(true, false, 60.000000, 276.000000)
												arg0:setTopBottom(true, false, 34.000000, 118.000000)
												arg0:setAlpha(0.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_3D4B_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(1.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D4B_)
										end

										if arg1.interrupted then
											__FUNC_3BD0_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3BD0_)
									end

									if arg1.interrupted then
										__FUNC_3A78_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A78_)
								end

								if arg1.interrupted then
									__FUNC_3923_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3923_)
							end

							if arg1.interrupted then
								__FUNC_37AB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37AB_)
						end

						if arg1.interrupted then
							__FUNC_3630_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3630_)
					end

					if arg1.interrupted then
						__FUNC_34D8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34D8_)
				end

				if arg1.interrupted then
					__FUNC_3383_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3383_)
			end

			if arg1.interrupted then
				__FUNC_320B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_320B_)
		end

		registerVal5:completeAnimation()
		registerVal2.spark:setLeftRight(true, false, 60.000000, 276.000000)
		registerVal2.spark:setTopBottom(true, false, 34.000000, 118.000000)
		registerVal2.spark:setAlpha(0.000000)
		__FUNC_3092_(registerVal5, {})
		local function __FUNC_3F6D_(arg0, arg1)
			local function __FUNC_40C4_(arg0, arg1)
				local function __FUNC_423F_(arg0, arg1)
					local function __FUNC_43B7_(arg0, arg1)
						local function __FUNC_450C_(arg0, arg1)
							local function __FUNC_4687_(arg0, arg1)
								local function __FUNC_47FF_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_47FF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_47FF_)
							end

							if arg1.interrupted then
								__FUNC_4687_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4687_)
						end

						if arg1.interrupted then
							__FUNC_450C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_450C_)
					end

					if arg1.interrupted then
						__FUNC_43B7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_43B7_)
				end

				if arg1.interrupted then
					__FUNC_423F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_423F_)
			end

			if arg1.interrupted then
				__FUNC_40C4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_40C4_)
		end

		registerVal6:completeAnimation()
		registerVal2.spark2:setAlpha(0.000000)
		__FUNC_3F6D_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.eyeswidget:setLeftRight(true, false, 359.000000, 395.000000)
		registerVal2.eyeswidget:setTopBottom(true, false, 14.000000, 38.000000)
		registerVal2.eyeswidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_49B1_(arg0, arg1)
			local function __FUNC_4B40_(arg0, arg1)
				local function __FUNC_4CF3_(arg0, arg1)
					local function __FUNC_4E80_(arg0, arg1)
						local function __FUNC_5033_(arg0, arg1)
							local function __FUNC_51C0_(arg0, arg1)
								local function __FUNC_5373_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setLeftRight(true, false, 26.700000, 242.700000)
									arg0:setTopBottom(true, false, 28.000000, 112.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_5373_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
								arg0:setLeftRight(true, false, -113.260000, 102.740000)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5373_)
							end

							if arg1.interrupted then
								__FUNC_51C0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 329.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, -150.090000, 65.910000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_51C0_)
						end

						if arg1.interrupted then
							__FUNC_5033_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 93.000000, 309.000000)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5033_)
					end

					if arg1.interrupted then
						__FUNC_4E80_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 68.690000, 284.690000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4E80_)
				end

				if arg1.interrupted then
					__FUNC_4CF3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, -119.700000, 96.300000)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4CF3_)
			end

			if arg1.interrupted then
				__FUNC_4B40_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -150.090000, 65.910000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B40_)
		end

		registerVal8:completeAnimation()
		registerVal2.Image0:setLeftRight(true, false, -127.990000, 88.010000)
		registerVal2.Image0:setTopBottom(true, false, 28.000000, 112.000000)
		registerVal2.Image0:setAlpha(1.000000)
		__FUNC_49B1_(registerVal8, {})
		local function __FUNC_5595_(arg0, arg1)
			local function __FUNC_570F_(arg0, arg1)
				local function __FUNC_589C_(arg0, arg1)
					local function __FUNC_5A4F_(arg0, arg1)
						local function __FUNC_5BDC_(arg0, arg1)
							local function __FUNC_5D8F_(arg0, arg1)
								local function __FUNC_5F1C_(arg0, arg1)
									local function __FUNC_60CF_(arg0, arg1)
										local function __FUNC_625C_(arg0, arg1)
											local function __FUNC_640F_(arg0, arg1)
												local function __FUNC_659C_(arg0, arg1)
													local function __FUNC_674F_(arg0, arg1)
														local function __FUNC_68DC_(arg0, arg1)
															local function __FUNC_6A8F_(arg0, arg1)
																local function __FUNC_6C1C_(arg0, arg1)
																	local function __FUNC_6DCF_(arg0, arg1)
																		local function __FUNC_6F5C_(arg0, arg1)
																			local function __FUNC_710F_(arg0, arg1)
																				local function __FUNC_729C_(arg0, arg1)
																					local function __FUNC_744F_(arg0, arg1)
																						local function __FUNC_75DC_(arg0, arg1)
																							local function __FUNC_778F_(arg0, arg1)
																								local function __FUNC_791C_(arg0, arg1)
																									local function __FUNC_7ACF_(arg0, arg1)
																										local function __FUNC_7C5C_(arg0, arg1)
																											local function __FUNC_7E0F_(arg0, arg1)
																												local function __FUNC_7F9C_(arg0, arg1)
																													if not arg1.interrupted then
																														arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																													end
																													arg0:setLeftRight(true, false, -152.000000, 64.000000)
																													arg0:setTopBottom(true, false, 28.000000, 112.000000)
																													arg0:setAlpha(0.000000)
																													if arg1.interrupted then
																														registerVal2.clipFinished(arg0, arg1)
																													else
																														arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																													end
																												end

																												if arg1.interrupted then
																													__FUNC_7F9C_(arg0, arg1)
																													return 
																												end
																												arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
																												arg0:setLeftRight(true, false, -152.000000, 64.000000)
																												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7F9C_)
																											end

																											if arg1.interrupted then
																												__FUNC_7E0F_(arg0, arg1)
																												return 
																											end
																											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																											arg0:setLeftRight(true, false, 73.000000, 289.000000)
																											arg0:setAlpha(1.000000)
																											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7E0F_)
																										end

																										if arg1.interrupted then
																											__FUNC_7C5C_(arg0, arg1)
																											return 
																										end
																										arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
																										arg0:setLeftRight(true, false, 50.500000, 266.500000)
																										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7C5C_)
																									end

																									if arg1.interrupted then
																										__FUNC_7ACF_(arg0, arg1)
																										return 
																									end
																									arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																									arg0:setLeftRight(true, false, -129.500000, 86.500000)
																									arg0:setAlpha(0.000000)
																									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7ACF_)
																								end

																								if arg1.interrupted then
																									__FUNC_791C_(arg0, arg1)
																									return 
																								end
																								arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
																								arg0:setLeftRight(true, false, -152.000000, 64.000000)
																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_791C_)
																							end

																							if arg1.interrupted then
																								__FUNC_778F_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																							arg0:setLeftRight(true, false, 73.000000, 289.000000)
																							arg0:setAlpha(1.000000)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_778F_)
																						end

																						if arg1.interrupted then
																							__FUNC_75DC_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
																						arg0:setLeftRight(true, false, 52.550000, 268.550000)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_75DC_)
																					end

																					if arg1.interrupted then
																						__FUNC_744F_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																					arg0:setLeftRight(true, false, -131.550000, 84.450000)
																					arg0:setAlpha(0.000000)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_744F_)
																				end

																				if arg1.interrupted then
																					__FUNC_729C_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
																				arg0:setLeftRight(true, false, -152.000000, 64.000000)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_729C_)
																			end

																			if arg1.interrupted then
																				__FUNC_710F_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																			arg0:setLeftRight(true, false, 73.000000, 289.000000)
																			arg0:setAlpha(1.000000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_710F_)
																		end

																		if arg1.interrupted then
																			__FUNC_6F5C_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
																		arg0:setLeftRight(true, false, 50.500000, 266.500000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6F5C_)
																	end

																	if arg1.interrupted then
																		__FUNC_6DCF_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																	arg0:setLeftRight(true, false, -129.500000, 86.500000)
																	arg0:setAlpha(0.000000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6DCF_)
																end

																if arg1.interrupted then
																	__FUNC_6C1C_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
																arg0:setLeftRight(true, false, -152.000000, 64.000000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6C1C_)
															end

															if arg1.interrupted then
																__FUNC_6A8F_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
															arg0:setLeftRight(true, false, 73.000000, 289.000000)
															arg0:setAlpha(1.000000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6A8F_)
														end

														if arg1.interrupted then
															__FUNC_68DC_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
														arg0:setLeftRight(true, false, 54.250000, 270.250000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_68DC_)
													end

													if arg1.interrupted then
														__FUNC_674F_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0:setLeftRight(true, false, -133.250000, 82.750000)
													arg0:setAlpha(0.000000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_674F_)
												end

												if arg1.interrupted then
													__FUNC_659C_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
												arg0:setLeftRight(true, false, -152.000000, 64.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_659C_)
											end

											if arg1.interrupted then
												__FUNC_640F_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0:setLeftRight(true, false, 73.000000, 289.000000)
											arg0:setAlpha(1.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_640F_)
										end

										if arg1.interrupted then
											__FUNC_625C_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
										arg0:setLeftRight(true, false, 50.500000, 266.500000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_625C_)
									end

									if arg1.interrupted then
										__FUNC_60CF_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
									arg0:setLeftRight(true, false, -129.500000, 86.500000)
									arg0:setAlpha(0.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_60CF_)
								end

								if arg1.interrupted then
									__FUNC_5F1C_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
								arg0:setLeftRight(true, false, -152.000000, 64.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5F1C_)
							end

							if arg1.interrupted then
								__FUNC_5D8F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, 73.000000, 289.000000)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5D8F_)
						end

						if arg1.interrupted then
							__FUNC_5BDC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 50.500000, 266.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5BDC_)
					end

					if arg1.interrupted then
						__FUNC_5A4F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, -129.500000, 86.500000)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5A4F_)
				end

				if arg1.interrupted then
					__FUNC_589C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, -152.000000, 64.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_589C_)
			end

			if arg1.interrupted then
				__FUNC_570F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_570F_)
		end

		registerVal9:completeAnimation()
		registerVal2.Image1:setLeftRight(true, false, 73.000000, 289.000000)
		registerVal2.Image1:setTopBottom(true, false, 28.000000, 112.000000)
		registerVal2.Image1:setAlpha(0.000000)
		__FUNC_5595_(registerVal9, {})
		local function __FUNC_81C1_(arg0, arg1)
			local function __FUNC_8350_(arg0, arg1)
				local function __FUNC_8503_(arg0, arg1)
					local function __FUNC_86B3_(arg0, arg1)
						local function __FUNC_882B_(arg0, arg1)
							local function __FUNC_89DB_(arg0, arg1)
								local function __FUNC_8B68_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setLeftRight(true, false, 136.000000, 352.000000)
									arg0:setTopBottom(true, false, 28.000000, 112.000000)
									arg0:setAlpha(1.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_8B68_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 299.000000, false, false, CoD.TweenType.Linear)
								arg0:setLeftRight(true, false, 128.780000, 344.780000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8B68_)
							end

							if arg1.interrupted then
								__FUNC_89DB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, -87.780000, 128.220000)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_89DB_)
						end

						if arg1.interrupted then
							__FUNC_882B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 410.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.020000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_882B_)
					end

					if arg1.interrupted then
						__FUNC_86B3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, -95.000000, 121.000000)
					arg0:setAlpha(0.840000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_86B3_)
				end

				if arg1.interrupted then
					__FUNC_8503_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 136.000000, 352.000000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8503_)
			end

			if arg1.interrupted then
				__FUNC_8350_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 121.390000, 337.390000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8350_)
		end

		registerVal10:completeAnimation()
		registerVal2.Image2:setLeftRight(true, false, -10.140000, 205.860000)
		registerVal2.Image2:setTopBottom(true, false, 28.000000, 112.000000)
		registerVal2.Image2:setAlpha(0.000000)
		__FUNC_81C1_(registerVal10, {})
		local function __FUNC_8D8D_(arg0, arg1)
			local function __FUNC_8F1C_(arg0, arg1)
				local function __FUNC_90CF_(arg0, arg1)
					local function __FUNC_925C_(arg0, arg1)
						local function __FUNC_940F_(arg0, arg1)
							local function __FUNC_959C_(arg0, arg1)
								local function __FUNC_974F_(arg0, arg1)
									local function __FUNC_98DC_(arg0, arg1)
										local function __FUNC_9A8F_(arg0, arg1)
											local function __FUNC_9C1C_(arg0, arg1)
												local function __FUNC_9DCF_(arg0, arg1)
													local function __FUNC_9F5C_(arg0, arg1)
														local function __FUNC_A10F_(arg0, arg1)
															local function __FUNC_A29C_(arg0, arg1)
																local function __FUNC_A44F_(arg0, arg1)
																	local function __FUNC_A5DC_(arg0, arg1)
																		if not arg1.interrupted then
																			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																		end
																		arg0:setLeftRight(true, false, 105.000000, 321.000000)
																		arg0:setTopBottom(true, false, 28.000000, 112.000000)
																		arg0:setAlpha(1.000000)
																		if arg1.interrupted then
																			registerVal2.clipFinished(arg0, arg1)
																		else
																			arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																		end
																	end

																	if arg1.interrupted then
																		__FUNC_A5DC_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
																	arg0:setLeftRight(true, false, 85.540000, 301.540000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A5DC_)
																end

																if arg1.interrupted then
																	__FUNC_A44F_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																arg0:setLeftRight(true, false, -128.540000, 87.460000)
																arg0:setAlpha(0.000000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A44F_)
															end

															if arg1.interrupted then
																__FUNC_A29C_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
															arg0:setLeftRight(true, false, -148.000000, 68.000000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A29C_)
														end

														if arg1.interrupted then
															__FUNC_A10F_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
														arg0:setLeftRight(true, false, 105.000000, 321.000000)
														arg0:setAlpha(1.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A10F_)
													end

													if arg1.interrupted then
														__FUNC_9F5C_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
													arg0:setLeftRight(true, false, 85.540000, 301.540000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9F5C_)
												end

												if arg1.interrupted then
													__FUNC_9DCF_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
												arg0:setLeftRight(true, false, -128.540000, 87.460000)
												arg0:setAlpha(0.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9DCF_)
											end

											if arg1.interrupted then
												__FUNC_9C1C_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
											arg0:setLeftRight(true, false, -148.000000, 68.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9C1C_)
										end

										if arg1.interrupted then
											__FUNC_9A8F_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setLeftRight(true, false, 105.000000, 321.000000)
										arg0:setAlpha(1.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9A8F_)
									end

									if arg1.interrupted then
										__FUNC_98DC_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
									arg0:setLeftRight(true, false, 85.540000, 301.540000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_98DC_)
								end

								if arg1.interrupted then
									__FUNC_974F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setLeftRight(true, false, -128.540000, 87.460000)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_974F_)
							end

							if arg1.interrupted then
								__FUNC_959C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, -148.000000, 68.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_959C_)
						end

						if arg1.interrupted then
							__FUNC_940F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 105.000000, 321.000000)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_940F_)
					end

					if arg1.interrupted then
						__FUNC_925C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 85.540000, 301.540000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_925C_)
				end

				if arg1.interrupted then
					__FUNC_90CF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, -128.540000, 87.460000)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_90CF_)
			end

			if arg1.interrupted then
				__FUNC_8F1C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 130.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -148.000000, 68.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8F1C_)
		end

		registerVal11:completeAnimation()
		registerVal2.Image3:setLeftRight(true, false, -109.760000, 106.240000)
		registerVal2.Image3:setTopBottom(true, false, 28.000000, 112.000000)
		registerVal2.Image3:setAlpha(1.000000)
		__FUNC_8D8D_(registerVal11, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal13.DefaultClip = __FUNC_C78_
	registerVal12.DefaultState = registerVal13
	registerVal2.clipsPerState = registerVal12
	local function __FUNC_A801_(arg0)
		arg0.eyeswidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A801_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

