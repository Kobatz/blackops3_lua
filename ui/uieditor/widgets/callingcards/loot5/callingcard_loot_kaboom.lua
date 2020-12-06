-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCard_loot_kaboom = registerVal1
function CoD.CallingCard_loot_kaboom.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCard_loot_kaboom)
	registerVal2.id = "CallingCard_loot_kaboom"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_loot_callingcard_retro_kaboom_bg"))
	registerVal2:addElement(registerVal3)
	registerVal2.bg = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 271.170000, 310.800000)
	registerVal4:setTopBottom(true, false, 44.710000, 90.000000)
	registerVal4:setImage(RegisterImage("uie_t7_loot_callingcard_retro_kaboom_bomb"))
	registerVal2:addElement(registerVal4)
	registerVal2.bomb = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 271.170000, 310.800000)
	registerVal5:setTopBottom(true, false, 44.710000, 90.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_loot_callingcard_retro_kaboom_bomb"))
	registerVal2:addElement(registerVal5)
	registerVal2.bomb2 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 313.800000)
	registerVal6:setTopBottom(true, false, 16.000000, 98.580000)
	registerVal6:setImage(RegisterImage("uie_t7_loot_callingcard_retro_kaboom_dude"))
	registerVal2:addElement(registerVal6)
	registerVal2.dude = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 264.800000, 310.800000)
	registerVal7:setTopBottom(true, false, 67.360000, 113.360000)
	registerVal7:setImage(RegisterImage("uie_t7_loot_callingcard_retro_kaboom_stars"))
	registerVal2:addElement(registerVal7)
	registerVal2.stars = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 146.800000, 192.800000)
	registerVal8:setTopBottom(true, false, 105.860000, 151.860000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_loot_callingcard_retro_kaboom_stars"))
	registerVal2:addElement(registerVal8)
	registerVal2.stars2 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 325.710000, 480.000000)
	registerVal9:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal9:setImage(RegisterImage("uie_t7_loot_callingcard_retro_kaboom_boom1"))
	registerVal2:addElement(registerVal9)
	registerVal2.Boom1 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 325.710000, 480.000000)
	registerVal10:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal10:setImage(RegisterImage("uie_t7_loot_callingcard_retro_kaboom_boom2"))
	registerVal2:addElement(registerVal10)
	registerVal2.Boom2 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 325.710000, 480.000000)
	registerVal11:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal11:setImage(RegisterImage("uie_t7_loot_callingcard_retro_kaboom_boom3"))
	registerVal2:addElement(registerVal11)
	registerVal2.Boom3 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal12:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal12:setImage(RegisterImage("uie_t7_loot_callingcard_retro_kaboom_frame"))
	registerVal2:addElement(registerVal12)
	registerVal2.frame = registerVal12
	local registerVal13 = {}
	local registerVal14 = {}
	local function __FUNC_BB7_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_1222_(arg0, arg1)
			local function __FUNC_13B0_(arg0, arg1)
				local function __FUNC_152B_(arg0, arg1)
					local function __FUNC_16F0_(arg0, arg1)
						local function __FUNC_18DB_(arg0, arg1)
							local function __FUNC_1AA0_(arg0, arg1)
								local function __FUNC_1C1B_(arg0, arg1)
									local function __FUNC_1DE0_(arg0, arg1)
										local function __FUNC_1F5B_(arg0, arg1)
											local function __FUNC_20E8_(arg0, arg1)
												local function __FUNC_2263_(arg0, arg1)
													local function __FUNC_2428_(arg0, arg1)
														local function __FUNC_25A3_(arg0, arg1)
															local function __FUNC_2730_(arg0, arg1)
																local function __FUNC_291B_(arg0, arg1)
																	local function __FUNC_2AE0_(arg0, arg1)
																		local function __FUNC_2C93_(arg0, arg1)
																			local function __FUNC_2E20_(arg0, arg1)
																				if not arg1.interrupted then
																					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																				end
																				arg0:setLeftRight(true, false, 268.370000, 308.000000)
																				arg0:setTopBottom(true, false, 117.290000, 162.580000)
																				arg0:setAlpha(0.000000)
																				if arg1.interrupted then
																					registerVal2.clipFinished(arg0, arg1)
																				else
																					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																				end
																			end

																			if arg1.interrupted then
																				__FUNC_2E20_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 320.000000, false, false, CoD.TweenType.Linear)
																			arg0:setTopBottom(true, false, 117.290000, 162.580000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E20_)
																		end

																		if arg1.interrupted then
																			__FUNC_2C93_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																		arg0:setTopBottom(true, false, 53.290000, 98.580000)
																		arg0:setAlpha(1.000000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C93_)
																	end

																	if arg1.interrupted then
																		__FUNC_2AE0_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 579.000000, false, false, CoD.TweenType.Linear)
																	arg0:setLeftRight(true, false, 268.370000, 308.000000)
																	arg0:setTopBottom(true, false, 51.290000, 96.580000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AE0_)
																end

																if arg1.interrupted then
																	__FUNC_291B_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																arg0:setLeftRight(true, false, 187.760000, 227.390000)
																arg0:setTopBottom(true, false, 111.950000, 157.240000)
																arg0:setAlpha(0.000000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_291B_)
															end

															if arg1.interrupted then
																__FUNC_2730_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 450.000000, false, false, CoD.TweenType.Linear)
															arg0:setTopBottom(true, false, 113.000000, 158.290000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2730_)
														end

														if arg1.interrupted then
															__FUNC_25A3_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
														arg0:setAlpha(1.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25A3_)
													end

													if arg1.interrupted then
														__FUNC_2428_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 620.000000, false, false, CoD.TweenType.Linear)
													arg0:setLeftRight(true, false, 186.370000, 226.000000)
													arg0:setTopBottom(true, false, 51.000000, 96.290000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2428_)
												end

												if arg1.interrupted then
													__FUNC_2263_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(0.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2263_)
											end

											if arg1.interrupted then
												__FUNC_20E8_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
											arg0:setTopBottom(true, false, 113.000000, 158.290000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20E8_)
										end

										if arg1.interrupted then
											__FUNC_1F5B_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(1.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F5B_)
									end

									if arg1.interrupted then
										__FUNC_1DE0_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
									arg0:setLeftRight(true, false, 83.370000, 123.000000)
									arg0:setTopBottom(true, false, 44.090000, 89.380000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DE0_)
								end

								if arg1.interrupted then
									__FUNC_1C1B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C1B_)
							end

							if arg1.interrupted then
								__FUNC_1AA0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, 179.450000, 219.070000)
							arg0:setTopBottom(true, false, 109.710000, 155.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AA0_)
						end

						if arg1.interrupted then
							__FUNC_18DB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 181.400000, 221.030000)
						arg0:setTopBottom(true, false, 48.320000, 93.610000)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18DB_)
					end

					if arg1.interrupted then
						__FUNC_16F0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 169.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 181.510000, 221.140000)
					arg0:setTopBottom(true, false, 44.710000, 90.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16F0_)
				end

				if arg1.interrupted then
					__FUNC_152B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_152B_)
			end

			if arg1.interrupted then
				__FUNC_13B0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 113.000000, 158.290000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13B0_)
		end

		registerVal4:completeAnimation()
		registerVal2.bomb:setLeftRight(true, false, 271.170000, 310.800000)
		registerVal2.bomb:setTopBottom(true, false, 44.710000, 90.000000)
		registerVal2.bomb:setAlpha(1.000000)
		__FUNC_1222_(registerVal4, {})
		local function __FUNC_3045_(arg0, arg1)
			local function __FUNC_319C_(arg0, arg1)
				local function __FUNC_3387_(arg0, arg1)
					local function __FUNC_354C_(arg0, arg1)
						local function __FUNC_36C7_(arg0, arg1)
							local function __FUNC_388C_(arg0, arg1)
								local function __FUNC_3A07_(arg0, arg1)
									local function __FUNC_3BCC_(arg0, arg1)
										local function __FUNC_3D47_(arg0, arg1)
											local function __FUNC_3F0C_(arg0, arg1)
												local function __FUNC_40BF_(arg0, arg1)
													local function __FUNC_424C_(arg0, arg1)
														local function __FUNC_4437_(arg0, arg1)
															local function __FUNC_45FC_(arg0, arg1)
																local function __FUNC_4777_(arg0, arg1)
																	local function __FUNC_493C_(arg0, arg1)
																		if not arg1.interrupted then
																			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																		end
																		arg0:setLeftRight(true, false, 228.740000, 268.370000)
																		arg0:setTopBottom(true, false, 117.290000, 162.580000)
																		arg0:setAlpha(0.000000)
																		if arg1.interrupted then
																			registerVal2.clipFinished(arg0, arg1)
																		else
																			arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																		end
																	end

																	if arg1.interrupted then
																		__FUNC_493C_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 279.000000, false, false, CoD.TweenType.Linear)
																	arg0:setLeftRight(true, false, 228.740000, 268.370000)
																	arg0:setTopBottom(true, false, 117.290000, 162.580000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_493C_)
																end

																if arg1.interrupted then
																	__FUNC_4777_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																arg0:setAlpha(1.000000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4777_)
															end

															if arg1.interrupted then
																__FUNC_45FC_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 410.000000, false, false, CoD.TweenType.Linear)
															arg0:setLeftRight(true, false, 226.740000, 266.370000)
															arg0:setTopBottom(true, false, 47.000000, 92.290000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_45FC_)
														end

														if arg1.interrupted then
															__FUNC_4437_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
														arg0:setLeftRight(true, false, 99.300000, 138.930000)
														arg0:setTopBottom(true, false, 111.430000, 156.720000)
														arg0:setAlpha(0.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4437_)
													end

													if arg1.interrupted then
														__FUNC_424C_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 329.000000, false, false, CoD.TweenType.Linear)
													arg0:setTopBottom(true, false, 113.000000, 158.290000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_424C_)
												end

												if arg1.interrupted then
													__FUNC_40BF_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
												arg0:setTopBottom(true, false, 48.940000, 94.230000)
												arg0:setAlpha(1.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_40BF_)
											end

											if arg1.interrupted then
												__FUNC_3F0C_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 580.000000, false, false, CoD.TweenType.Linear)
											arg0:setLeftRight(true, false, 96.190000, 135.820000)
											arg0:setTopBottom(true, false, 47.000000, 92.290000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F0C_)
										end

										if arg1.interrupted then
											__FUNC_3D47_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D47_)
									end

									if arg1.interrupted then
										__FUNC_3BCC_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 399.000000, false, false, CoD.TweenType.Linear)
									arg0:setLeftRight(true, false, 196.190000, 235.820000)
									arg0:setTopBottom(true, false, 113.000000, 158.290000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3BCC_)
								end

								if arg1.interrupted then
									__FUNC_3A07_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A07_)
							end

							if arg1.interrupted then
								__FUNC_388C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, 195.370000, 235.000000)
							arg0:setTopBottom(true, false, 46.710000, 92.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_388C_)
						end

						if arg1.interrupted then
							__FUNC_36C7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36C7_)
					end

					if arg1.interrupted then
						__FUNC_354C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 129.370000, 169.000000)
					arg0:setTopBottom(true, false, 109.710000, 155.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_354C_)
				end

				if arg1.interrupted then
					__FUNC_3387_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 127.840000, 167.470000)
				arg0:setTopBottom(true, false, 47.380000, 92.670000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3387_)
			end

			if arg1.interrupted then
				__FUNC_319C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 560.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_319C_)
		end

		registerVal5:completeAnimation()
		registerVal2.bomb2:setLeftRight(true, false, 127.750000, 167.380000)
		registerVal2.bomb2:setTopBottom(true, false, 43.710000, 89.000000)
		registerVal2.bomb2:setAlpha(0.000000)
		__FUNC_3045_(registerVal5, {})
		local function __FUNC_4B61_(arg0, arg1)
			local function __FUNC_4CF0_(arg0, arg1)
				local function __FUNC_4E80_(arg0, arg1)
					local function __FUNC_5010_(arg0, arg1)
						local function __FUNC_51A0_(arg0, arg1)
							local function __FUNC_5330_(arg0, arg1)
								local function __FUNC_54C0_(arg0, arg1)
									local function __FUNC_5650_(arg0, arg1)
										local function __FUNC_57E0_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 410.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setLeftRight(true, false, 0.000000, 313.800000)
											arg0:setTopBottom(true, false, 16.000000, 98.580000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_57E0_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
										arg0:setLeftRight(true, false, -93.000000, 220.800000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_57E0_)
									end

									if arg1.interrupted then
										__FUNC_5650_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 569.000000, false, false, CoD.TweenType.Linear)
									arg0:setLeftRight(true, false, 0.000000, 313.800000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5650_)
								end

								if arg1.interrupted then
									__FUNC_54C0_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
								arg0:setLeftRight(true, false, -175.800000, 138.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_54C0_)
							end

							if arg1.interrupted then
								__FUNC_5330_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, -18.800000, 295.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5330_)
						end

						if arg1.interrupted then
							__FUNC_51A0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 419.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, -119.800000, 194.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_51A0_)
					end

					if arg1.interrupted then
						__FUNC_5010_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, -73.800000, 240.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5010_)
				end

				if arg1.interrupted then
					__FUNC_4E80_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 249.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, -201.900000, 111.900000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4E80_)
			end

			if arg1.interrupted then
				__FUNC_4CF0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -33.900000, 279.900000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4CF0_)
		end

		registerVal6:completeAnimation()
		registerVal2.dude:setLeftRight(true, false, 0.000000, 313.800000)
		registerVal2.dude:setTopBottom(true, false, 16.000000, 98.580000)
		__FUNC_4B61_(registerVal6, {})
		local function __FUNC_59E2_(arg0, arg1)
			local function __FUNC_5B38_(arg0, arg1)
				local function __FUNC_5CB3_(arg0, arg1)
					local function __FUNC_5E63_(arg0, arg1)
						local function __FUNC_5FDB_(arg0, arg1)
							local function __FUNC_61A0_(arg0, arg1)
								local function __FUNC_638B_(arg0, arg1)
									local function __FUNC_6503_(arg0, arg1)
										local function __FUNC_66C8_(arg0, arg1)
											local function __FUNC_6843_(arg0, arg1)
												local function __FUNC_6A08_(arg0, arg1)
													local function __FUNC_6B83_(arg0, arg1)
														local function __FUNC_6D33_(arg0, arg1)
															local function __FUNC_6EAB_(arg0, arg1)
																local function __FUNC_7070_(arg0, arg1)
																	local function __FUNC_71C8_(arg0, arg1)
																		local function __FUNC_7343_(arg0, arg1)
																			local function __FUNC_752B_(arg0, arg1)
																				local function __FUNC_76A3_(arg0, arg1)
																					local function __FUNC_7868_(arg0, arg1)
																						local function __FUNC_79E3_(arg0, arg1)
																							if not arg1.interrupted then
																								arg0:beginAnimation("keyframe", 279.000000, false, false, CoD.TweenType.Linear)
																							end
																							arg0:setLeftRight(true, false, 268.370000, 314.370000)
																							arg0:setTopBottom(true, false, 110.000000, 156.000000)
																							arg0:setAlpha(1.000000)
																							if arg1.interrupted then
																								registerVal2.clipFinished(arg0, arg1)
																							else
																								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																							end
																						end

																						if arg1.interrupted then
																							__FUNC_79E3_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																						arg0:setAlpha(1.000000)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_79E3_)
																					end

																					if arg1.interrupted then
																						__FUNC_7868_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 599.000000, false, false, CoD.TweenType.Linear)
																					arg0:setLeftRight(true, false, 266.510000, 312.510000)
																					arg0:setTopBottom(true, false, 66.530000, 112.530000)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7868_)
																				end

																				if arg1.interrupted then
																					__FUNC_76A3_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																				arg0:setAlpha(0.000000)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_76A3_)
																			end

																			if arg1.interrupted then
																				__FUNC_752B_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
																			arg0:setLeftRight(true, false, 182.430000, 228.430000)
																			arg0:setTopBottom(true, false, 117.530000, 163.530000)
																			arg0:setAlpha(0.030000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_752B_)
																		end

																		if arg1.interrupted then
																			__FUNC_7343_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																		arg0:setAlpha(1.000000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7343_)
																	end

																	if arg1.interrupted then
																		__FUNC_71C8_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_71C8_)
																end

																if arg1.interrupted then
																	__FUNC_7070_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 799.000000, false, false, CoD.TweenType.Linear)
																arg0:setLeftRight(true, false, 183.190000, 229.190000)
																arg0:setTopBottom(true, false, 69.760000, 115.760000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7070_)
															end

															if arg1.interrupted then
																__FUNC_6EAB_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
															arg0:setAlpha(0.000000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6EAB_)
														end

														if arg1.interrupted then
															__FUNC_6D33_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
														arg0:setTopBottom(true, false, 114.000000, 160.000000)
														arg0:setAlpha(0.070000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6D33_)
													end

													if arg1.interrupted then
														__FUNC_6B83_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(1.000000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6B83_)
												end

												if arg1.interrupted then
													__FUNC_6A08_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
												arg0:setLeftRight(true, false, 80.590000, 126.590000)
												arg0:setTopBottom(true, false, 72.000000, 118.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6A08_)
											end

											if arg1.interrupted then
												__FUNC_6843_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6843_)
										end

										if arg1.interrupted then
											__FUNC_66C8_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
										arg0:setLeftRight(true, false, 176.530000, 222.530000)
										arg0:setTopBottom(true, false, 117.580000, 163.580000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_66C8_)
									end

									if arg1.interrupted then
										__FUNC_6503_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(1.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6503_)
								end

								if arg1.interrupted then
									__FUNC_638B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setLeftRight(true, false, 177.530000, 223.530000)
								arg0:setTopBottom(true, false, 72.580000, 118.580000)
								arg0:setAlpha(0.500000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_638B_)
							end

							if arg1.interrupted then
								__FUNC_61A0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 169.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, 182.380000, 228.380000)
							arg0:setTopBottom(true, false, 75.070000, 121.070000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_61A0_)
						end

						if arg1.interrupted then
							__FUNC_5FDB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5FDB_)
					end

					if arg1.interrupted then
						__FUNC_5E63_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(true, false, 117.360000, 163.360000)
					arg0:setAlpha(0.040000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E63_)
				end

				if arg1.interrupted then
					__FUNC_5CB3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5CB3_)
			end

			if arg1.interrupted then
				__FUNC_5B38_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B38_)
		end

		registerVal7:completeAnimation()
		registerVal2.stars:setLeftRight(true, false, 264.800000, 310.800000)
		registerVal2.stars:setTopBottom(true, false, 67.360000, 113.360000)
		registerVal2.stars:setAlpha(0.000000)
		__FUNC_59E2_(registerVal7, {})
		local function __FUNC_7C05_(arg0, arg1)
			local function __FUNC_7D5C_(arg0, arg1)
				local function __FUNC_7ED7_(arg0, arg1)
					local function __FUNC_809C_(arg0, arg1)
						local function __FUNC_8287_(arg0, arg1)
							local function __FUNC_844C_(arg0, arg1)
								local function __FUNC_85DC_(arg0, arg1)
									local function __FUNC_878F_(arg0, arg1)
										local function __FUNC_8954_(arg0, arg1)
											local function __FUNC_8ACF_(arg0, arg1)
												local function __FUNC_8C94_(arg0, arg1)
													local function __FUNC_8E0F_(arg0, arg1)
														local function __FUNC_8FD4_(arg0, arg1)
															local function __FUNC_914F_(arg0, arg1)
																local function __FUNC_9314_(arg0, arg1)
																	local function __FUNC_94FF_(arg0, arg1)
																		if not arg1.interrupted then
																			arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
																		end
																		arg0:setLeftRight(true, false, 224.700000, 270.700000)
																		arg0:setTopBottom(true, false, 113.290000, 159.290000)
																		arg0:setAlpha(1.000000)
																		if arg1.interrupted then
																			registerVal2.clipFinished(arg0, arg1)
																		else
																			arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																		end
																	end

																	if arg1.interrupted then
																		__FUNC_94FF_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																	arg0:setLeftRight(true, false, 224.970000, 270.970000)
																	arg0:setTopBottom(true, false, 69.380000, 115.380000)
																	arg0:setAlpha(1.000000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_94FF_)
																end

																if arg1.interrupted then
																	__FUNC_9314_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 480.000000, false, false, CoD.TweenType.Linear)
																arg0:setLeftRight(true, false, 224.990000, 270.990000)
																arg0:setTopBottom(true, false, 67.290000, 113.290000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9314_)
															end

															if arg1.interrupted then
																__FUNC_914F_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
															arg0:setAlpha(0.000000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_914F_)
														end

														if arg1.interrupted then
															__FUNC_8FD4_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
														arg0:setLeftRight(true, false, 93.710000, 139.710000)
														arg0:setTopBottom(true, false, 110.000000, 156.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8FD4_)
													end

													if arg1.interrupted then
														__FUNC_8E0F_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(1.000000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8E0F_)
												end

												if arg1.interrupted then
													__FUNC_8C94_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 580.000000, false, false, CoD.TweenType.Linear)
												arg0:setLeftRight(true, false, 93.000000, 139.000000)
												arg0:setTopBottom(true, false, 68.000000, 114.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8C94_)
											end

											if arg1.interrupted then
												__FUNC_8ACF_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8ACF_)
										end

										if arg1.interrupted then
											__FUNC_8954_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 339.000000, false, false, CoD.TweenType.Linear)
										arg0:setLeftRight(true, false, 193.030000, 239.030000)
										arg0:setTopBottom(true, false, 114.000000, 160.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8954_)
									end

									if arg1.interrupted then
										__FUNC_878F_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setTopBottom(true, false, 73.760000, 119.760000)
									arg0:setAlpha(1.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_878F_)
								end

								if arg1.interrupted then
									__FUNC_85DC_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
								arg0:setTopBottom(true, false, 72.580000, 118.580000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_85DC_)
							end

							if arg1.interrupted then
								__FUNC_844C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, 192.970000, 238.970000)
							arg0:setTopBottom(true, false, 75.580000, 121.580000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_844C_)
						end

						if arg1.interrupted then
							__FUNC_8287_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 130.990000, 176.990000)
						arg0:setTopBottom(true, false, 106.450000, 152.450000)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8287_)
					end

					if arg1.interrupted then
						__FUNC_809C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 129.590000, 175.590000)
					arg0:setTopBottom(true, false, 107.160000, 153.160000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_809C_)
				end

				if arg1.interrupted then
					__FUNC_7ED7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7ED7_)
			end

			if arg1.interrupted then
				__FUNC_7D5C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 709.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7D5C_)
		end

		registerVal8:completeAnimation()
		registerVal2.stars2:setLeftRight(true, false, 128.100000, 174.100000)
		registerVal2.stars2:setTopBottom(true, false, 68.860000, 114.860000)
		registerVal2.stars2:setAlpha(0.000000)
		__FUNC_7C05_(registerVal8, {})
		local function __FUNC_9721_(arg0, arg1)
			local function __FUNC_989B_(arg0, arg1)
				local function __FUNC_99F0_(arg0, arg1)
					local function __FUNC_9B6B_(arg0, arg1)
						local function __FUNC_9CC0_(arg0, arg1)
							local function __FUNC_9E18_(arg0, arg1)
								local function __FUNC_9F70_(arg0, arg1)
									local function __FUNC_A0EB_(arg0, arg1)
										local function __FUNC_A240_(arg0, arg1)
											local function __FUNC_A3BB_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 359.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setAlpha(0.000000)
												arg0:setZRot(0.000000)
												arg0:setScale(1.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_A3BB_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A3BB_)
										end

										if arg1.interrupted then
											__FUNC_A240_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A240_)
									end

									if arg1.interrupted then
										__FUNC_A0EB_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(1.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A0EB_)
								end

								if arg1.interrupted then
									__FUNC_9F70_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9F70_)
							end

							if arg1.interrupted then
								__FUNC_9E18_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 1160.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9E18_)
						end

						if arg1.interrupted then
							__FUNC_9CC0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9CC0_)
					end

					if arg1.interrupted then
						__FUNC_9B6B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9B6B_)
				end

				if arg1.interrupted then
					__FUNC_99F0_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 299.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_99F0_)
			end

			if arg1.interrupted then
				__FUNC_989B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_989B_)
		end

		registerVal9:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Linear)
		registerVal9:setAlpha(0.000000)
		registerVal9:setZRot(0.000000)
		registerVal9:setScale(1.000000)
		registerVal9:registerEventHandler("transition_complete_keyframe", __FUNC_9721_)
		local function __FUNC_A5AD_(arg0, arg1)
			local function __FUNC_A727_(arg0, arg1)
				local function __FUNC_A87C_(arg0, arg1)
					local function __FUNC_A9F7_(arg0, arg1)
						local function __FUNC_AB4C_(arg0, arg1)
							local function __FUNC_ACA4_(arg0, arg1)
								local function __FUNC_ADFC_(arg0, arg1)
									local function __FUNC_AF77_(arg0, arg1)
										local function __FUNC_B0CC_(arg0, arg1)
											local function __FUNC_B247_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 490.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setAlpha(0.000000)
												arg0:setZRot(0.000000)
												arg0:setScale(1.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_B247_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B247_)
										end

										if arg1.interrupted then
											__FUNC_B0CC_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 389.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B0CC_)
									end

									if arg1.interrupted then
										__FUNC_AF77_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(1.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AF77_)
								end

								if arg1.interrupted then
									__FUNC_ADFC_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ADFC_)
							end

							if arg1.interrupted then
								__FUNC_ACA4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 1160.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ACA4_)
						end

						if arg1.interrupted then
							__FUNC_AB4C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AB4C_)
					end

					if arg1.interrupted then
						__FUNC_A9F7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A9F7_)
				end

				if arg1.interrupted then
					__FUNC_A87C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 320.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A87C_)
			end

			if arg1.interrupted then
				__FUNC_A727_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A727_)
		end

		registerVal10:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
		registerVal10:setAlpha(0.000000)
		registerVal10:setZRot(0.000000)
		registerVal10:setScale(1.000000)
		registerVal10:registerEventHandler("transition_complete_keyframe", __FUNC_A5AD_)
		local function __FUNC_B439_(arg0, arg1)
			local function __FUNC_B5B3_(arg0, arg1)
				local function __FUNC_B708_(arg0, arg1)
					local function __FUNC_B883_(arg0, arg1)
						local function __FUNC_B9D8_(arg0, arg1)
							local function __FUNC_BB30_(arg0, arg1)
								local function __FUNC_BC88_(arg0, arg1)
									local function __FUNC_BE03_(arg0, arg1)
										local function __FUNC_BF58_(arg0, arg1)
											local function __FUNC_C0D3_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 599.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setAlpha(0.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_C0D3_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C0D3_)
										end

										if arg1.interrupted then
											__FUNC_BF58_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 420.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BF58_)
									end

									if arg1.interrupted then
										__FUNC_BE03_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(1.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BE03_)
								end

								if arg1.interrupted then
									__FUNC_BC88_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BC88_)
							end

							if arg1.interrupted then
								__FUNC_BB30_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 1160.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BB30_)
						end

						if arg1.interrupted then
							__FUNC_B9D8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 390.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B9D8_)
					end

					if arg1.interrupted then
						__FUNC_B883_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B883_)
				end

				if arg1.interrupted then
					__FUNC_B708_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B708_)
			end

			if arg1.interrupted then
				__FUNC_B5B3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B5B3_)
		end

		registerVal11:completeAnimation()
		registerVal2.Boom3:setAlpha(0.000000)
		__FUNC_B439_(registerVal11, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal14.DefaultClip = __FUNC_BB7_
	registerVal13.DefaultState = registerVal14
	registerVal2.clipsPerState = registerVal13
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

