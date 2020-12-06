-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_Loot_LegendaryAnimals = registerVal1
function CoD.CallingCards_Loot_LegendaryAnimals.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_Loot_LegendaryAnimals)
	registerVal2.id = "CallingCards_Loot_LegendaryAnimals"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_legendaryanimals_bg"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 46.670000, 378.000000)
	registerVal4:setTopBottom(true, false, -181.000000, 538.630000)
	registerVal4:setRGB(1.000000, 0.820000, 0.270000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setZRot(90.000000)
	registerVal4:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Glow = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -12.000000, 354.000000)
	registerVal5:setTopBottom(true, false, -29.130000, 131.000000)
	registerVal5:setImage(RegisterImage("uie_t7_callingcard_legendaryanimals_smoke_01"))
	registerVal2:addElement(registerVal5)
	registerVal2.Smoke = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal6:setImage(RegisterImage("uie_t7_callingcard_legendaryanimals_ember"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.Fire = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal7:setImage(RegisterImage("uie_t7_callingcard_legendaryanimals_dragon"))
	registerVal2:addElement(registerVal7)
	registerVal2.Drago = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal8:setImage(RegisterImage("uie_t7_callingcard_legendaryanimals_ember2"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.Ember = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 329.780000, 337.900000)
	registerVal9:setTopBottom(true, false, 4.000000, 21.630000)
	registerVal9:setRGB(1.000000, 0.820000, 0.270000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setZRot(120.000000)
	registerVal9:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.Glow0 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, -270.500000, 558.500000)
	registerVal10:setTopBottom(true, false, -181.520000, 51.000000)
	registerVal10:setImage(RegisterImage("uie_t7_callingcard_mp_career_medieval_clouds"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll_normal"))
	registerVal10:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(1.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.Clouds = registerVal10
	local registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_C91_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_EE1_(arg0, arg1)
			local function __FUNC_105B_(arg0, arg1)
				local function __FUNC_11D3_(arg0, arg1)
					local function __FUNC_134B_(arg0, arg1)
						local function __FUNC_14C3_(arg0, arg1)
							local function __FUNC_163B_(arg0, arg1)
								local function __FUNC_17B3_(arg0, arg1)
									local function __FUNC_192B_(arg0, arg1)
										local function __FUNC_1AA3_(arg0, arg1)
											local function __FUNC_1C1B_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 490.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setAlpha(0.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_1C1B_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 329.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(1.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C1B_)
										end

										if arg1.interrupted then
											__FUNC_1AA3_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.710000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AA3_)
									end

									if arg1.interrupted then
										__FUNC_192B_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(1.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_192B_)
								end

								if arg1.interrupted then
									__FUNC_17B3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.620000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17B3_)
							end

							if arg1.interrupted then
								__FUNC_163B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.820000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_163B_)
						end

						if arg1.interrupted then
							__FUNC_14C3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 560.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14C3_)
					end

					if arg1.interrupted then
						__FUNC_134B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_134B_)
				end

				if arg1.interrupted then
					__FUNC_11D3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.680000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11D3_)
			end

			if arg1.interrupted then
				__FUNC_105B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_105B_)
		end

		registerVal4:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_EE1_(registerVal4, {})
		local function __FUNC_1DCD_(arg0, arg1)
			local function __FUNC_1F47_(arg0, arg1)
				local function __FUNC_20BF_(arg0, arg1)
					local function __FUNC_2237_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 700.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_2237_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 1049.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.870000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2237_)
				end

				if arg1.interrupted then
					__FUNC_20BF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 519.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20BF_)
			end

			if arg1.interrupted then
				__FUNC_1F47_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.740000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F47_)
		end

		registerVal5:completeAnimation()
		registerVal2.Smoke:setAlpha(1.000000)
		__FUNC_1DCD_(registerVal5, {})
		local function __FUNC_23E9_(arg0, arg1)
			local function __FUNC_2563_(arg0, arg1)
				local function __FUNC_26DB_(arg0, arg1)
					local function __FUNC_2853_(arg0, arg1)
						local function __FUNC_29CB_(arg0, arg1)
							local function __FUNC_2B43_(arg0, arg1)
								local function __FUNC_2CBB_(arg0, arg1)
									local function __FUNC_2E33_(arg0, arg1)
										local function __FUNC_2FAB_(arg0, arg1)
											local function __FUNC_3123_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 589.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setAlpha(1.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_3123_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 700.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.690000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3123_)
										end

										if arg1.interrupted then
											__FUNC_2FAB_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(1.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FAB_)
									end

									if arg1.interrupted then
										__FUNC_2E33_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.510000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E33_)
								end

								if arg1.interrupted then
									__FUNC_2CBB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CBB_)
							end

							if arg1.interrupted then
								__FUNC_2B43_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.640000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B43_)
						end

						if arg1.interrupted then
							__FUNC_29CB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29CB_)
					end

					if arg1.interrupted then
						__FUNC_2853_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.360000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2853_)
				end

				if arg1.interrupted then
					__FUNC_26DB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 330.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26DB_)
			end

			if arg1.interrupted then
				__FUNC_2563_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.450000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2563_)
		end

		registerVal6:completeAnimation()
		registerVal2.Fire:setAlpha(1.000000)
		__FUNC_23E9_(registerVal6, {})
		local function __FUNC_32D5_(arg0, arg1)
			local function __FUNC_344F_(arg0, arg1)
				local function __FUNC_35C7_(arg0, arg1)
					local function __FUNC_373F_(arg0, arg1)
						local function __FUNC_38B7_(arg0, arg1)
							local function __FUNC_3A2F_(arg0, arg1)
								local function __FUNC_3BA7_(arg0, arg1)
									local function __FUNC_3D1F_(arg0, arg1)
										local function __FUNC_3E97_(arg0, arg1)
											local function __FUNC_400F_(arg0, arg1)
												local function __FUNC_4187_(arg0, arg1)
													local function __FUNC_42FF_(arg0, arg1)
														local function __FUNC_4477_(arg0, arg1)
															local function __FUNC_45EF_(arg0, arg1)
																local function __FUNC_4767_(arg0, arg1)
																	local function __FUNC_48DF_(arg0, arg1)
																		if not arg1.interrupted then
																			arg0:beginAnimation("keyframe", 450.000000, false, false, CoD.TweenType.Linear)
																		end
																		arg0:setAlpha(1.000000)
																		if arg1.interrupted then
																			registerVal2.clipFinished(arg0, arg1)
																		else
																			arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																		end
																	end

																	if arg1.interrupted then
																		__FUNC_48DF_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
																	arg0:setAlpha(0.870000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_48DF_)
																end

																if arg1.interrupted then
																	__FUNC_4767_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
																arg0:setAlpha(1.000000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4767_)
															end

															if arg1.interrupted then
																__FUNC_45EF_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
															arg0:setAlpha(0.790000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_45EF_)
														end

														if arg1.interrupted then
															__FUNC_4477_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
														arg0:setAlpha(1.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4477_)
													end

													if arg1.interrupted then
														__FUNC_42FF_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.280000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_42FF_)
												end

												if arg1.interrupted then
													__FUNC_4187_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 320.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(1.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4187_)
											end

											if arg1.interrupted then
												__FUNC_400F_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.540000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_400F_)
										end

										if arg1.interrupted then
											__FUNC_3E97_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(1.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E97_)
									end

									if arg1.interrupted then
										__FUNC_3D1F_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.710000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D1F_)
								end

								if arg1.interrupted then
									__FUNC_3BA7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3BA7_)
							end

							if arg1.interrupted then
								__FUNC_3A2F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.500000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A2F_)
						end

						if arg1.interrupted then
							__FUNC_38B7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38B7_)
					end

					if arg1.interrupted then
						__FUNC_373F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.650000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_373F_)
				end

				if arg1.interrupted then
					__FUNC_35C7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_35C7_)
			end

			if arg1.interrupted then
				__FUNC_344F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.610000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_344F_)
		end

		registerVal8:completeAnimation()
		registerVal2.Ember:setAlpha(1.000000)
		__FUNC_32D5_(registerVal8, {})
		local function __FUNC_4A91_(arg0, arg1)
			local function __FUNC_4C0B_(arg0, arg1)
				local function __FUNC_4D83_(arg0, arg1)
					local function __FUNC_4EFB_(arg0, arg1)
						local function __FUNC_5073_(arg0, arg1)
							local function __FUNC_51EB_(arg0, arg1)
								local function __FUNC_5363_(arg0, arg1)
									local function __FUNC_54DB_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 549.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setAlpha(0.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_54DB_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 560.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(1.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_54DB_)
								end

								if arg1.interrupted then
									__FUNC_5363_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.390000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5363_)
							end

							if arg1.interrupted then
								__FUNC_51EB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.810000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_51EB_)
						end

						if arg1.interrupted then
							__FUNC_5073_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.110000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5073_)
					end

					if arg1.interrupted then
						__FUNC_4EFB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.360000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4EFB_)
				end

				if arg1.interrupted then
					__FUNC_4D83_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 909.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D83_)
			end

			if arg1.interrupted then
				__FUNC_4C0B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4C0B_)
		end

		registerVal9:completeAnimation()
		registerVal2.Glow0:setAlpha(0.000000)
		__FUNC_4A91_(registerVal9, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal12.DefaultClip = __FUNC_C91_
	registerVal11.DefaultState = registerVal12
	registerVal2.clipsPerState = registerVal11
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

