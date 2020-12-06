-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_Loot_TwistedCircus = registerVal1
function CoD.CallingCards_Loot_TwistedCircus.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_Loot_TwistedCircus)
	registerVal2.id = "CallingCards_Loot_TwistedCircus"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_twistedcircus_bg3"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image2 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcard_twistedcircus_bg2"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image1 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal5:setImage(RegisterImage("uie_t7_callingcard_twistedcircus_bg1"))
	registerVal2:addElement(registerVal5)
	registerVal2.Image0 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 248.670000, 257.710000)
	registerVal6:setTopBottom(true, false, 51.180000, 70.820000)
	registerVal6:setRGB(1.000000, 0.850000, 0.380000)
	registerVal6:setAlpha(0.800000)
	registerVal6:setZRot(101.000000)
	registerVal6:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.Glow = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 221.670000, 230.710000)
	registerVal7:setTopBottom(true, false, 57.180000, 76.820000)
	registerVal7:setRGB(1.000000, 0.850000, 0.380000)
	registerVal7:setAlpha(0.800000)
	registerVal7:setZRot(101.000000)
	registerVal7:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.Image3 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, -207.330000, 124.000000)
	registerVal8:setTopBottom(true, false, -243.820000, 475.820000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal8:setAlpha(0.670000)
	registerVal8:setZRot(-66.000000)
	registerVal8:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal2:addElement(registerVal8)
	registerVal2.Glow0 = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_A03_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_CFE_(arg0, arg1)
			local function __FUNC_E77_(arg0, arg1)
				local function __FUNC_FCC_(arg0, arg1)
					local function __FUNC_1124_(arg0, arg1)
						local function __FUNC_129F_(arg0, arg1)
							local function __FUNC_13F4_(arg0, arg1)
								local function __FUNC_156F_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 279.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_156F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_156F_)
							end

							if arg1.interrupted then
								__FUNC_13F4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 720.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13F4_)
						end

						if arg1.interrupted then
							__FUNC_129F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_129F_)
					end

					if arg1.interrupted then
						__FUNC_1124_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 1250.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1124_)
				end

				if arg1.interrupted then
					__FUNC_FCC_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FCC_)
			end

			if arg1.interrupted then
				__FUNC_E77_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E77_)
		end

		registerVal4:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
		registerVal4:setAlpha(1.000000)
		registerVal4:registerEventHandler("transition_complete_keyframe", __FUNC_CFE_)
		local function __FUNC_1721_(arg0, arg1)
			local function __FUNC_189B_(arg0, arg1)
				local function __FUNC_19F0_(arg0, arg1)
					local function __FUNC_1B6B_(arg0, arg1)
						local function __FUNC_1CC0_(arg0, arg1)
							local function __FUNC_1E3B_(arg0, arg1)
								local function __FUNC_1F90_(arg0, arg1)
									local function __FUNC_210B_(arg0, arg1)
										local function __FUNC_2283_(arg0, arg1)
											local function __FUNC_23D8_(arg0, arg1)
												local function __FUNC_2553_(arg0, arg1)
													local function __FUNC_26CB_(arg0, arg1)
														local function __FUNC_2843_(arg0, arg1)
															local function __FUNC_29BB_(arg0, arg1)
																local function __FUNC_2B33_(arg0, arg1)
																	if not arg1.interrupted then
																		arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
																	end
																	arg0:setAlpha(0.000000)
																	if arg1.interrupted then
																		registerVal2.clipFinished(arg0, arg1)
																	else
																		arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																	end
																end

																if arg1.interrupted then
																	__FUNC_2B33_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
																arg0:setAlpha(1.000000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B33_)
															end

															if arg1.interrupted then
																__FUNC_29BB_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
															arg0:setAlpha(0.000000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29BB_)
														end

														if arg1.interrupted then
															__FUNC_2843_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
														arg0:setAlpha(1.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2843_)
													end

													if arg1.interrupted then
														__FUNC_26CB_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.000000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26CB_)
												end

												if arg1.interrupted then
													__FUNC_2553_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(1.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2553_)
											end

											if arg1.interrupted then
												__FUNC_23D8_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 279.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23D8_)
										end

										if arg1.interrupted then
											__FUNC_2283_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2283_)
									end

									if arg1.interrupted then
										__FUNC_210B_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 450.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(1.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_210B_)
								end

								if arg1.interrupted then
									__FUNC_1F90_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 889.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F90_)
							end

							if arg1.interrupted then
								__FUNC_1E3B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E3B_)
						end

						if arg1.interrupted then
							__FUNC_1CC0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 479.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CC0_)
					end

					if arg1.interrupted then
						__FUNC_1B6B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B6B_)
				end

				if arg1.interrupted then
					__FUNC_19F0_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 480.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19F0_)
			end

			if arg1.interrupted then
				__FUNC_189B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_189B_)
		end

		registerVal5:completeAnimation()
		registerVal2.Image0:setAlpha(1.000000)
		__FUNC_1721_(registerVal5, {})
		local function __FUNC_2CE5_(arg0, arg1)
			local function __FUNC_2E5F_(arg0, arg1)
				local function __FUNC_2FD7_(arg0, arg1)
					local function __FUNC_314F_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, -209.330000, 122.000000)
						arg0:setTopBottom(true, false, -243.820000, 475.820000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_314F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 1019.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.490000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_314F_)
				end

				if arg1.interrupted then
					__FUNC_2FD7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FD7_)
			end

			if arg1.interrupted then
				__FUNC_2E5F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.420000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E5F_)
		end

		registerVal8:completeAnimation()
		registerVal2.Glow0:setLeftRight(true, false, -209.330000, 122.000000)
		registerVal2.Glow0:setTopBottom(true, false, -243.820000, 475.820000)
		registerVal2.Glow0:setAlpha(0.000000)
		__FUNC_2CE5_(registerVal8, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal10.DefaultClip = __FUNC_A03_
	registerVal9.DefaultState = registerVal10
	registerVal2.clipsPerState = registerVal9
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

