-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCard_loot_skateboard = registerVal1
function CoD.CallingCard_loot_skateboard.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCard_loot_skateboard)
	registerVal2.id = "CallingCard_loot_skateboard"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_loot_callingcard_skateboard_board"))
	registerVal2:addElement(registerVal3)
	registerVal2.Board = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 58.000000, 166.000000)
	registerVal4:setTopBottom(true, false, 18.000000, 102.000000)
	registerVal4:setImage(RegisterImage("uie_t7_loot_callingcard_skateboard_1_eyeball"))
	registerVal2:addElement(registerVal4)
	registerVal2.eye1 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 190.000000, 250.000000)
	registerVal5:setTopBottom(true, false, 42.000000, 90.000000)
	registerVal5:setImage(RegisterImage("uie_t7_loot_callingcard_skateboard_2_eyeball"))
	registerVal2:addElement(registerVal5)
	registerVal2.eye2 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 277.000000, 373.000000)
	registerVal6:setTopBottom(true, false, 11.000000, 83.000000)
	registerVal6:setImage(RegisterImage("uie_t7_loot_callingcard_skateboard_3_eyeball"))
	registerVal2:addElement(registerVal6)
	registerVal2.eye3 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 374.000000, 422.000000)
	registerVal7:setTopBottom(true, false, 67.000000, 115.000000)
	registerVal7:setImage(RegisterImage("uie_t7_loot_callingcard_skateboard_4_eyeball"))
	registerVal2:addElement(registerVal7)
	registerVal2.eye4 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 426.000000, 450.000000)
	registerVal8:setTopBottom(true, false, 26.000000, 50.000000)
	registerVal8:setImage(RegisterImage("uie_t7_loot_callingcard_skateboard_5_eyeball"))
	registerVal2:addElement(registerVal8)
	registerVal2.eye5 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 99.000000, 147.000000)
	registerVal9:setTopBottom(true, false, 44.000000, 92.000000)
	registerVal9:setAlpha(0.900000)
	registerVal9:setImage(RegisterImage("uie_t7_loot_callingcard_skateboard_1_iris"))
	registerVal2:addElement(registerVal9)
	registerVal2.pupil1 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 198.000000, 222.000000)
	registerVal10:setTopBottom(true, false, 54.000000, 78.000000)
	registerVal10:setAlpha(0.900000)
	registerVal10:setImage(RegisterImage("uie_t7_loot_callingcard_skateboard_2_iris"))
	registerVal2:addElement(registerVal10)
	registerVal2.pupil2 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 325.000000, 361.000000)
	registerVal11:setTopBottom(true, false, 20.000000, 56.000000)
	registerVal11:setAlpha(0.900000)
	registerVal11:setImage(RegisterImage("uie_t7_loot_callingcard_skateboard_3_iris"))
	registerVal2:addElement(registerVal11)
	registerVal2.pupil3 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 384.000000, 408.000000)
	registerVal12:setTopBottom(true, false, 76.000000, 100.000000)
	registerVal12:setAlpha(0.900000)
	registerVal12:setImage(RegisterImage("uie_t7_loot_callingcard_skateboard_4_iris"))
	registerVal2:addElement(registerVal12)
	registerVal2.pupil4 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 425.000000, 449.000000)
	registerVal13:setTopBottom(true, false, 25.000000, 49.000000)
	registerVal13:setAlpha(0.900000)
	registerVal13:setImage(RegisterImage("uie_t7_loot_callingcard_skateboard_5_iris"))
	registerVal2:addElement(registerVal13)
	registerVal2.pupil5 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal14:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal14:setImage(RegisterImage("uie_t7_loot_callingcard_skateboard_reflection"))
	registerVal2:addElement(registerVal14)
	registerVal2.reflection = registerVal14
	local registerVal15 = {}
	local registerVal16 = {}
	local function __FUNC_E4F_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_13F6_(arg0, arg1)
			local function __FUNC_156E_(arg0, arg1)
				local function __FUNC_16E6_(arg0, arg1)
					local function __FUNC_185E_(arg0, arg1)
						local function __FUNC_19D6_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 1700.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setZRot(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_19D6_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 1319.000000, false, false, CoD.TweenType.Linear)
						arg0:setZRot(-5.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19D6_)
					end

					if arg1.interrupted then
						__FUNC_185E_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
					arg0:setZRot(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_185E_)
				end

				if arg1.interrupted then
					__FUNC_16E6_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 490.000000, false, false, CoD.TweenType.Linear)
				arg0:setZRot(4.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16E6_)
			end

			if arg1.interrupted then
				__FUNC_156E_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1289.000000, false, false, CoD.TweenType.Linear)
			arg0:setZRot(7.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_156E_)
		end

		registerVal4:completeAnimation()
		registerVal2.eye1:setZRot(0.000000)
		__FUNC_13F6_(registerVal4, {})
		local function __FUNC_1B88_(arg0, arg1)
			local function __FUNC_1D02_(arg0, arg1)
				local function __FUNC_1E7A_(arg0, arg1)
					local function __FUNC_1FF2_(arg0, arg1)
						local function __FUNC_216A_(arg0, arg1)
							local function __FUNC_22E2_(arg0, arg1)
								local function __FUNC_245A_(arg0, arg1)
									local function __FUNC_25D2_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 1059.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setZRot(0.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_25D2_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
									arg0:setZRot(-4.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25D2_)
								end

								if arg1.interrupted then
									__FUNC_245A_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
								arg0:setZRot(5.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_245A_)
							end

							if arg1.interrupted then
								__FUNC_22E2_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 829.000000, false, false, CoD.TweenType.Linear)
							arg0:setZRot(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22E2_)
						end

						if arg1.interrupted then
							__FUNC_216A_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 1110.000000, false, false, CoD.TweenType.Linear)
						arg0:setZRot(-4.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_216A_)
					end

					if arg1.interrupted then
						__FUNC_1FF2_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
					arg0:setZRot(7.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FF2_)
				end

				if arg1.interrupted then
					__FUNC_1E7A_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
				arg0:setZRot(4.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E7A_)
			end

			if arg1.interrupted then
				__FUNC_1D02_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 959.000000, false, false, CoD.TweenType.Linear)
			arg0:setZRot(9.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D02_)
		end

		registerVal5:completeAnimation()
		registerVal2.eye2:setZRot(0.000000)
		__FUNC_1B88_(registerVal5, {})
		local function __FUNC_2784_(arg0, arg1)
			local function __FUNC_28FE_(arg0, arg1)
				local function __FUNC_2A76_(arg0, arg1)
					local function __FUNC_2BEE_(arg0, arg1)
						local function __FUNC_2D66_(arg0, arg1)
							local function __FUNC_2EDE_(arg0, arg1)
								local function __FUNC_3056_(arg0, arg1)
									local function __FUNC_31CE_(arg0, arg1)
										local function __FUNC_3346_(arg0, arg1)
											local function __FUNC_34BE_(arg0, arg1)
												local function __FUNC_3636_(arg0, arg1)
													local function __FUNC_37AE_(arg0, arg1)
														local function __FUNC_3926_(arg0, arg1)
															local function __FUNC_3A9E_(arg0, arg1)
																if not arg1.interrupted then
																	arg0:beginAnimation("keyframe", 389.000000, false, false, CoD.TweenType.Linear)
																end
																arg0:setLeftRight(true, false, 277.000000, 373.000000)
																arg0:setTopBottom(true, false, 11.000000, 83.000000)
																arg0:setYRot(0.000000)
																arg0:setZRot(0.000000)
																if arg1.interrupted then
																	registerVal2.clipFinished(arg0, arg1)
																else
																	arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																end
															end

															if arg1.interrupted then
																__FUNC_3A9E_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 309.000000, false, false, CoD.TweenType.Linear)
															arg0:setZRot(-2.000000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A9E_)
														end

														if arg1.interrupted then
															__FUNC_3926_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 430.000000, false, false, CoD.TweenType.Linear)
														arg0:setZRot(6.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3926_)
													end

													if arg1.interrupted then
														__FUNC_37AE_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 389.000000, false, false, CoD.TweenType.Linear)
													arg0:setZRot(-2.000000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37AE_)
												end

												if arg1.interrupted then
													__FUNC_3636_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
												arg0:setZRot(4.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3636_)
											end

											if arg1.interrupted then
												__FUNC_34BE_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 299.000000, false, false, CoD.TweenType.Linear)
											arg0:setZRot(-1.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34BE_)
										end

										if arg1.interrupted then
											__FUNC_3346_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 559.000000, false, false, CoD.TweenType.Linear)
										arg0:setZRot(6.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3346_)
									end

									if arg1.interrupted then
										__FUNC_31CE_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
									arg0:setZRot(-2.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31CE_)
								end

								if arg1.interrupted then
									__FUNC_3056_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
								arg0:setZRot(5.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3056_)
							end

							if arg1.interrupted then
								__FUNC_2EDE_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
							arg0:setZRot(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EDE_)
						end

						if arg1.interrupted then
							__FUNC_2D66_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
						arg0:setZRot(2.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D66_)
					end

					if arg1.interrupted then
						__FUNC_2BEE_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Linear)
					arg0:setZRot(-3.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BEE_)
				end

				if arg1.interrupted then
					__FUNC_2A76_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 479.000000, false, false, CoD.TweenType.Linear)
				arg0:setZRot(-7.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A76_)
			end

			if arg1.interrupted then
				__FUNC_28FE_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 560.000000, false, false, CoD.TweenType.Linear)
			arg0:setZRot(3.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28FE_)
		end

		registerVal6:completeAnimation()
		registerVal2.eye3:setLeftRight(true, false, 277.000000, 373.000000)
		registerVal2.eye3:setTopBottom(true, false, 11.000000, 83.000000)
		registerVal2.eye3:setYRot(0.000000)
		registerVal2.eye3:setZRot(0.000000)
		__FUNC_2784_(registerVal6, {})
		local function __FUNC_3CDD_(arg0, arg1)
			local function __FUNC_3E56_(arg0, arg1)
				local function __FUNC_3FCE_(arg0, arg1)
					local function __FUNC_4146_(arg0, arg1)
						local function __FUNC_42BE_(arg0, arg1)
							local function __FUNC_4436_(arg0, arg1)
								local function __FUNC_45AE_(arg0, arg1)
									local function __FUNC_4726_(arg0, arg1)
										local function __FUNC_489E_(arg0, arg1)
											local function __FUNC_4A16_(arg0, arg1)
												local function __FUNC_4B8E_(arg0, arg1)
													local function __FUNC_4D06_(arg0, arg1)
														local function __FUNC_4E7E_(arg0, arg1)
															local function __FUNC_4FF6_(arg0, arg1)
																local function __FUNC_516E_(arg0, arg1)
																	local function __FUNC_52E6_(arg0, arg1)
																		local function __FUNC_545E_(arg0, arg1)
																			if not arg1.interrupted then
																				arg0:beginAnimation("keyframe", 599.000000, false, false, CoD.TweenType.Linear)
																			end
																			arg0:setZRot(0.000000)
																			if arg1.interrupted then
																				registerVal2.clipFinished(arg0, arg1)
																			else
																				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																			end
																		end

																		if arg1.interrupted then
																			__FUNC_545E_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
																		arg0:setZRot(6.000000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_545E_)
																	end

																	if arg1.interrupted then
																		__FUNC_52E6_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 279.000000, false, false, CoD.TweenType.Linear)
																	arg0:setZRot(-9.000000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_52E6_)
																end

																if arg1.interrupted then
																	__FUNC_516E_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
																arg0:setZRot(1.000000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_516E_)
															end

															if arg1.interrupted then
																__FUNC_4FF6_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
															arg0:setZRot(-4.000000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4FF6_)
														end

														if arg1.interrupted then
															__FUNC_4E7E_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 190.000000, false, false, CoD.TweenType.Linear)
														arg0:setZRot(11.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4E7E_)
													end

													if arg1.interrupted then
														__FUNC_4D06_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
													arg0:setZRot(-2.000000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D06_)
												end

												if arg1.interrupted then
													__FUNC_4B8E_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 190.000000, false, false, CoD.TweenType.Linear)
												arg0:setZRot(5.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B8E_)
											end

											if arg1.interrupted then
												__FUNC_4A16_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 329.000000, false, false, CoD.TweenType.Linear)
											arg0:setZRot(9.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A16_)
										end

										if arg1.interrupted then
											__FUNC_489E_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
										arg0:setZRot(0.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_489E_)
									end

									if arg1.interrupted then
										__FUNC_4726_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 270.000000, false, false, CoD.TweenType.Linear)
									arg0:setZRot(-4.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4726_)
								end

								if arg1.interrupted then
									__FUNC_45AE_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
								arg0:setZRot(-5.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_45AE_)
							end

							if arg1.interrupted then
								__FUNC_4436_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 379.000000, false, false, CoD.TweenType.Linear)
							arg0:setZRot(-15.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4436_)
						end

						if arg1.interrupted then
							__FUNC_42BE_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
						arg0:setZRot(-4.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_42BE_)
					end

					if arg1.interrupted then
						__FUNC_4146_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 379.000000, false, false, CoD.TweenType.Linear)
					arg0:setZRot(6.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4146_)
				end

				if arg1.interrupted then
					__FUNC_3FCE_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
				arg0:setZRot(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3FCE_)
			end

			if arg1.interrupted then
				__FUNC_3E56_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 479.000000, false, false, CoD.TweenType.Linear)
			arg0:setZRot(10.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E56_)
		end

		registerVal7:completeAnimation()
		registerVal2.eye4:setZRot(0.000000)
		__FUNC_3CDD_(registerVal7, {})
		local function __FUNC_5610_(arg0, arg1)
			local function __FUNC_57D8_(arg0, arg1)
				local function __FUNC_59A0_(arg0, arg1)
					local function __FUNC_5B63_(arg0, arg1)
						local function __FUNC_5D28_(arg0, arg1)
							local function __FUNC_5EB8_(arg0, arg1)
								local function __FUNC_6080_(arg0, arg1)
									local function __FUNC_6248_(arg0, arg1)
										local function __FUNC_6410_(arg0, arg1)
											local function __FUNC_65D8_(arg0, arg1)
												local function __FUNC_67A0_(arg0, arg1)
													local function __FUNC_6968_(arg0, arg1)
														if not arg1.interrupted then
															arg0:beginAnimation("keyframe", 900.000000, false, false, CoD.TweenType.Linear)
														end
														arg0:setLeftRight(true, false, 99.000000, 147.000000)
														arg0:setTopBottom(true, false, 44.000000, 92.000000)
														if arg1.interrupted then
															registerVal2.clipFinished(arg0, arg1)
														else
															arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
														end
													end

													if arg1.interrupted then
														__FUNC_6968_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 599.000000, false, false, CoD.TweenType.Linear)
													arg0:setLeftRight(true, false, 64.000000, 104.000000)
													arg0:setTopBottom(true, false, 34.000000, 82.000000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6968_)
												end

												if arg1.interrupted then
													__FUNC_67A0_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 309.000000, false, false, CoD.TweenType.Linear)
												arg0:setLeftRight(true, false, 64.000000, 105.000000)
												arg0:setTopBottom(true, false, 38.000000, 86.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_67A0_)
											end

											if arg1.interrupted then
												__FUNC_65D8_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 789.000000, false, false, CoD.TweenType.Linear)
											arg0:setLeftRight(true, false, 72.030000, 120.030000)
											arg0:setTopBottom(true, false, 45.000000, 93.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_65D8_)
										end

										if arg1.interrupted then
											__FUNC_6410_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 190.000000, false, false, CoD.TweenType.Linear)
										arg0:setLeftRight(true, false, 74.920000, 122.920000)
										arg0:setTopBottom(true, false, 47.000000, 92.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6410_)
									end

									if arg1.interrupted then
										__FUNC_6248_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
									arg0:setLeftRight(true, false, 79.030000, 127.030000)
									arg0:setTopBottom(true, false, 56.580000, 97.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6248_)
								end

								if arg1.interrupted then
									__FUNC_6080_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
								arg0:setLeftRight(true, false, 86.330000, 134.330000)
								arg0:setTopBottom(true, false, 35.860000, 83.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6080_)
							end

							if arg1.interrupted then
								__FUNC_5EB8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 939.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, 95.030000, 143.030000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5EB8_)
						end

						if arg1.interrupted then
							__FUNC_5D28_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 101.030000, 149.030000)
						arg0:setTopBottom(true, false, 20.000000, 60.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5D28_)
					end

					if arg1.interrupted then
						__FUNC_5B63_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 110.000000, 158.000000)
					arg0:setTopBottom(true, false, 23.000000, 67.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B63_)
				end

				if arg1.interrupted then
					__FUNC_59A0_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 124.000000, 163.000000)
				arg0:setTopBottom(true, false, 35.000000, 83.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_59A0_)
			end

			if arg1.interrupted then
				__FUNC_57D8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 430.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 112.000000, 160.000000)
			arg0:setTopBottom(true, false, 40.000000, 88.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_57D8_)
		end

		registerVal9:completeAnimation()
		registerVal2.pupil1:setLeftRight(true, false, 99.000000, 147.000000)
		registerVal2.pupil1:setTopBottom(true, false, 44.000000, 92.000000)
		__FUNC_5610_(registerVal9, {})
		local function __FUNC_6B6A_(arg0, arg1)
			local function __FUNC_6CF8_(arg0, arg1)
				local function __FUNC_6E50_(arg0, arg1)
					local function __FUNC_7018_(arg0, arg1)
						local function __FUNC_71E0_(arg0, arg1)
							local function __FUNC_7370_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, false, 198.000000, 222.000000)
								arg0:setTopBottom(true, false, 54.000000, 78.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_7370_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 309.000000, false, false, CoD.TweenType.Linear)
							arg0:setTopBottom(true, false, 57.000000, 81.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7370_)
						end

						if arg1.interrupted then
							__FUNC_71E0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 1539.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 198.000000, 222.000000)
						arg0:setTopBottom(true, false, 54.000000, 78.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_71E0_)
					end

					if arg1.interrupted then
						__FUNC_7018_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 789.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 216.000000, 240.000000)
					arg0:setTopBottom(true, false, 49.000000, 71.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7018_)
				end

				if arg1.interrupted then
					__FUNC_6E50_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6E50_)
			end

			if arg1.interrupted then
				__FUNC_6CF8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1879.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 226.580000, 242.580000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6CF8_)
		end

		registerVal10:completeAnimation()
		registerVal2.pupil2:setLeftRight(true, false, 198.000000, 222.000000)
		registerVal2.pupil2:setTopBottom(true, false, 54.000000, 78.000000)
		__FUNC_6B6A_(registerVal10, {})
		local function __FUNC_7572_(arg0, arg1)
			local function __FUNC_7738_(arg0, arg1)
				local function __FUNC_7900_(arg0, arg1)
					local function __FUNC_7AC8_(arg0, arg1)
						local function __FUNC_7C90_(arg0, arg1)
							local function __FUNC_7E58_(arg0, arg1)
								local function __FUNC_8020_(arg0, arg1)
									local function __FUNC_81E8_(arg0, arg1)
										local function __FUNC_83B0_(arg0, arg1)
											local function __FUNC_8578_(arg0, arg1)
												local function __FUNC_8740_(arg0, arg1)
													local function __FUNC_8908_(arg0, arg1)
														local function __FUNC_8AD0_(arg0, arg1)
															local function __FUNC_8C98_(arg0, arg1)
																local function __FUNC_8E60_(arg0, arg1)
																	local function __FUNC_9028_(arg0, arg1)
																		if not arg1.interrupted then
																			arg0:beginAnimation("keyframe", 260.000000, false, false, CoD.TweenType.Linear)
																		end
																		arg0:setLeftRight(true, false, 321.000000, 357.000000)
																		arg0:setTopBottom(true, false, 18.000000, 54.000000)
																		if arg1.interrupted then
																			registerVal2.clipFinished(arg0, arg1)
																		else
																			arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																		end
																	end

																	if arg1.interrupted then
																		__FUNC_9028_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
																	arg0:setLeftRight(true, false, 336.000000, 365.000000)
																	arg0:setTopBottom(true, false, 26.000000, 62.000000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9028_)
																end

																if arg1.interrupted then
																	__FUNC_8E60_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
																arg0:setLeftRight(true, false, 322.000000, 358.000000)
																arg0:setTopBottom(true, false, 41.230000, 77.230000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8E60_)
															end

															if arg1.interrupted then
																__FUNC_8C98_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
															arg0:setLeftRight(true, false, 318.000000, 354.000000)
															arg0:setTopBottom(true, false, 42.230000, 78.230000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8C98_)
														end

														if arg1.interrupted then
															__FUNC_8AD0_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
														arg0:setLeftRight(true, false, 315.000000, 351.000000)
														arg0:setTopBottom(true, false, 43.230000, 79.230000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8AD0_)
													end

													if arg1.interrupted then
														__FUNC_8908_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
													arg0:setLeftRight(true, false, 299.000000, 335.000000)
													arg0:setTopBottom(true, false, 40.230000, 76.230000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8908_)
												end

												if arg1.interrupted then
													__FUNC_8740_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
												arg0:setLeftRight(true, false, 301.000000, 337.000000)
												arg0:setTopBottom(true, false, 43.230000, 79.230000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8740_)
											end

											if arg1.interrupted then
												__FUNC_8578_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 799.000000, false, false, CoD.TweenType.Linear)
											arg0:setLeftRight(true, false, 299.000000, 335.000000)
											arg0:setTopBottom(true, false, 42.230000, 78.230000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8578_)
										end

										if arg1.interrupted then
											__FUNC_83B0_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
										arg0:setLeftRight(true, false, 307.000000, 343.000000)
										arg0:setTopBottom(true, false, 44.370000, 80.370000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_83B0_)
									end

									if arg1.interrupted then
										__FUNC_81E8_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 299.000000, false, false, CoD.TweenType.Linear)
									arg0:setLeftRight(true, false, 325.000000, 361.000000)
									arg0:setTopBottom(true, false, 40.000000, 76.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_81E8_)
								end

								if arg1.interrupted then
									__FUNC_8020_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
								arg0:setLeftRight(true, false, 337.840000, 365.840000)
								arg0:setTopBottom(true, false, 36.130000, 72.130000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8020_)
							end

							if arg1.interrupted then
								__FUNC_7E58_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, 336.340000, 366.000000)
							arg0:setTopBottom(true, false, 34.210000, 70.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7E58_)
						end

						if arg1.interrupted then
							__FUNC_7C90_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 339.000000, 366.000000)
						arg0:setTopBottom(true, false, 24.000000, 60.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7C90_)
					end

					if arg1.interrupted then
						__FUNC_7AC8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 269.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 337.000000, 366.000000)
					arg0:setTopBottom(true, false, 26.000000, 62.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7AC8_)
				end

				if arg1.interrupted then
					__FUNC_7900_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 323.000000, 359.000000)
				arg0:setTopBottom(true, false, 17.000000, 53.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7900_)
			end

			if arg1.interrupted then
				__FUNC_7738_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 389.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 324.000000, 360.000000)
			arg0:setTopBottom(true, false, 19.000000, 55.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7738_)
		end

		registerVal11:completeAnimation()
		registerVal2.pupil3:setLeftRight(true, false, 321.000000, 357.000000)
		registerVal2.pupil3:setTopBottom(true, false, 18.000000, 54.000000)
		__FUNC_7572_(registerVal11, {})
		local function __FUNC_922A_(arg0, arg1)
			local function __FUNC_93F0_(arg0, arg1)
				local function __FUNC_9580_(arg0, arg1)
					local function __FUNC_9710_(arg0, arg1)
						local function __FUNC_98D8_(arg0, arg1)
							local function __FUNC_9A68_(arg0, arg1)
								local function __FUNC_9C30_(arg0, arg1)
									local function __FUNC_9DF8_(arg0, arg1)
										local function __FUNC_9F88_(arg0, arg1)
											local function __FUNC_A118_(arg0, arg1)
												local function __FUNC_A2A8_(arg0, arg1)
													local function __FUNC_A470_(arg0, arg1)
														local function __FUNC_A600_(arg0, arg1)
															local function __FUNC_A790_(arg0, arg1)
																local function __FUNC_A958_(arg0, arg1)
																	local function __FUNC_AB20_(arg0, arg1)
																		local function __FUNC_ACB0_(arg0, arg1)
																			local function __FUNC_AE40_(arg0, arg1)
																				local function __FUNC_B008_(arg0, arg1)
																					if not arg1.interrupted then
																						arg0:beginAnimation("keyframe", 619.000000, false, false, CoD.TweenType.Linear)
																					end
																					arg0:setLeftRight(true, false, 384.000000, 408.000000)
																					arg0:setTopBottom(true, false, 76.000000, 100.000000)
																					if arg1.interrupted then
																						registerVal2.clipFinished(arg0, arg1)
																					else
																						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																					end
																				end

																				if arg1.interrupted then
																					__FUNC_B008_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
																				arg0:setLeftRight(true, false, 380.500000, 402.500000)
																				arg0:setTopBottom(true, false, 77.000000, 99.000000)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B008_)
																			end

																			if arg1.interrupted then
																				__FUNC_AE40_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 290.000000, false, false, CoD.TweenType.Linear)
																			arg0:setTopBottom(true, false, 75.000000, 95.000000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AE40_)
																		end

																		if arg1.interrupted then
																			__FUNC_ACB0_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
																		arg0:setTopBottom(true, false, 79.000000, 99.000000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ACB0_)
																	end

																	if arg1.interrupted then
																		__FUNC_AB20_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 329.000000, false, false, CoD.TweenType.Linear)
																	arg0:setLeftRight(true, false, 384.500000, 405.500000)
																	arg0:setTopBottom(true, false, 82.000000, 102.000000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AB20_)
																end

																if arg1.interrupted then
																	__FUNC_A958_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
																arg0:setLeftRight(true, false, 391.500000, 412.500000)
																arg0:setTopBottom(true, false, 83.000000, 103.000000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A958_)
															end

															if arg1.interrupted then
																__FUNC_A790_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
															arg0:setTopBottom(true, false, 77.000000, 97.000000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A790_)
														end

														if arg1.interrupted then
															__FUNC_A600_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
														arg0:setLeftRight(true, false, 385.500000, 406.500000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A600_)
													end

													if arg1.interrupted then
														__FUNC_A470_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 290.000000, false, false, CoD.TweenType.Linear)
													arg0:setLeftRight(true, false, 387.500000, 408.500000)
													arg0:setTopBottom(true, false, 80.000000, 100.000000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A470_)
												end

												if arg1.interrupted then
													__FUNC_A2A8_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
												arg0:setLeftRight(true, false, 392.000000, 413.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A2A8_)
											end

											if arg1.interrupted then
												__FUNC_A118_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
											arg0:setTopBottom(true, false, 72.000000, 92.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A118_)
										end

										if arg1.interrupted then
											__FUNC_9F88_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
										arg0:setLeftRight(true, false, 389.000000, 410.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9F88_)
									end

									if arg1.interrupted then
										__FUNC_9DF8_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 679.000000, false, false, CoD.TweenType.Linear)
									arg0:setLeftRight(true, false, 391.000000, 412.000000)
									arg0:setTopBottom(true, false, 71.000000, 91.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9DF8_)
								end

								if arg1.interrupted then
									__FUNC_9C30_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
								arg0:setLeftRight(true, false, 380.000000, 401.000000)
								arg0:setTopBottom(true, false, 73.000000, 93.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9C30_)
							end

							if arg1.interrupted then
								__FUNC_9A68_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
							arg0:setTopBottom(true, false, 72.000000, 92.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9A68_)
						end

						if arg1.interrupted then
							__FUNC_98D8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 279.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 381.000000, 402.000000)
						arg0:setTopBottom(true, false, 73.000000, 93.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_98D8_)
					end

					if arg1.interrupted then
						__FUNC_9710_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(true, false, 78.650000, 102.650000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9710_)
				end

				if arg1.interrupted then
					__FUNC_9580_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, 75.650000, 99.650000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9580_)
			end

			if arg1.interrupted then
				__FUNC_93F0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 378.000000, 395.000000)
			arg0:setTopBottom(true, false, 76.650000, 100.650000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_93F0_)
		end

		registerVal12:completeAnimation()
		registerVal2.pupil4:setLeftRight(true, false, 384.000000, 408.000000)
		registerVal2.pupil4:setTopBottom(true, false, 76.000000, 100.000000)
		__FUNC_922A_(registerVal12, {})
		local function __FUNC_B20A_(arg0, arg1)
			local function __FUNC_B3D0_(arg0, arg1)
				local function __FUNC_B598_(arg0, arg1)
					local function __FUNC_B760_(arg0, arg1)
						local function __FUNC_B928_(arg0, arg1)
							local function __FUNC_BAF0_(arg0, arg1)
								local function __FUNC_BCB8_(arg0, arg1)
									local function __FUNC_BE80_(arg0, arg1)
										local function __FUNC_C048_(arg0, arg1)
											local function __FUNC_C210_(arg0, arg1)
												local function __FUNC_C3D8_(arg0, arg1)
													if not arg1.interrupted then
														arg0:beginAnimation("keyframe", 460.000000, false, false, CoD.TweenType.Linear)
													end
													arg0:setLeftRight(true, false, 422.000000, 446.000000)
													arg0:setTopBottom(true, false, 26.000000, 50.000000)
													if arg1.interrupted then
														registerVal2.clipFinished(arg0, arg1)
													else
														arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
													end
												end

												if arg1.interrupted then
													__FUNC_C3D8_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 279.000000, false, false, CoD.TweenType.Linear)
												arg0:setLeftRight(true, false, 423.000000, 447.000000)
												arg0:setTopBottom(true, false, 27.000000, 51.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C3D8_)
											end

											if arg1.interrupted then
												__FUNC_C210_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 420.000000, false, false, CoD.TweenType.Linear)
											arg0:setLeftRight(true, false, 424.000000, 448.000000)
											arg0:setTopBottom(true, false, 29.000000, 53.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C210_)
										end

										if arg1.interrupted then
											__FUNC_C048_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
										arg0:setLeftRight(true, false, 427.000000, 451.000000)
										arg0:setTopBottom(true, false, 31.000000, 55.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C048_)
									end

									if arg1.interrupted then
										__FUNC_BE80_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
									arg0:setLeftRight(true, false, 424.000000, 448.000000)
									arg0:setTopBottom(true, false, 29.000000, 53.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BE80_)
								end

								if arg1.interrupted then
									__FUNC_BCB8_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 309.000000, false, false, CoD.TweenType.Linear)
								arg0:setLeftRight(true, false, 422.000000, 446.000000)
								arg0:setTopBottom(true, false, 26.000000, 50.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BCB8_)
							end

							if arg1.interrupted then
								__FUNC_BAF0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 460.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, 423.000000, 447.000000)
							arg0:setTopBottom(true, false, 22.000000, 46.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BAF0_)
						end

						if arg1.interrupted then
							__FUNC_B928_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 539.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 422.000000, 446.000000)
						arg0:setTopBottom(true, false, 26.000000, 50.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B928_)
					end

					if arg1.interrupted then
						__FUNC_B760_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 779.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 424.000000, 448.000000)
					arg0:setTopBottom(true, false, 30.000000, 54.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B760_)
				end

				if arg1.interrupted then
					__FUNC_B598_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 426.000000, 450.000000)
				arg0:setTopBottom(true, false, 31.000000, 55.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B598_)
			end

			if arg1.interrupted then
				__FUNC_B3D0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 419.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 424.000000, 448.000000)
			arg0:setTopBottom(true, false, 30.000000, 54.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B3D0_)
		end

		registerVal13:completeAnimation()
		registerVal2.pupil5:setLeftRight(true, false, 422.000000, 446.000000)
		registerVal2.pupil5:setTopBottom(true, false, 26.000000, 50.000000)
		__FUNC_B20A_(registerVal13, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal16.DefaultClip = __FUNC_E4F_
	registerVal15.DefaultState = registerVal16
	registerVal2.clipsPerState = registerVal15
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

