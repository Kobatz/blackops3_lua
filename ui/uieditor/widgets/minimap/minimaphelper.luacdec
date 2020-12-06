-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Tablet.TabletLocationSelector_InternalItems")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MinimapHelper = registerVal1
function CoD.MinimapHelper.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MinimapHelper)
	registerVal2.id = "MinimapHelper"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 720.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -22.000000, 21.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.760000, 0.950000, 1.000000)
	registerVal3:setAlpha(0.500000)
	registerVal3:setImage(RegisterImage(GetCurrentMinimapImageName("uie_hud_t7_minimap_mp_ethiopia_full")))
	registerVal2:addElement(registerVal3)
	registerVal2.MapGlitch = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setAlpha(0.990000)
	registerVal4:setupCompassUnderlay(Enum.CompassType.COMPASS_TYPE_FULL)
	registerVal2:addElement(registerVal4)
	registerVal2.underlayMap0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setAlpha(0.700000)
	registerVal5:setupCompassOverlay(Enum.CompassType.COMPASS_TYPE_FULL)
	registerVal2:addElement(registerVal5)
	registerVal2.overlay = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, -29.000000, 29.000000)
	registerVal6:setTopBottom(true, true, -30.000000, 26.000000)
	registerVal6:setRGB(0.760000, 0.950000, 1.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage(GetCurrentMinimapImageName("uie_hud_t7_minimap_mp_ethiopia_full")))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_emp"))
	registerVal6:setShaderVector(0.000000, 16.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 30.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 4.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.Mosiac = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 0.000000, 1.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal7:setRGB(0.760000, 0.950000, 1.000000)
	registerVal7:setAlpha(0.070000)
	registerVal7:setImage(RegisterImage(GetCurrentMinimapImageName("uie_hud_t7_minimap_mp_ethiopia_full")))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
	registerVal7:setShaderVector(0.000000, 0.280000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(1.000000, 0.750000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(2.000000, 0.010000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.Scanlines = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, 0.000000, 1.000000)
	registerVal8:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal8:setRGB(0.760000, 0.950000, 1.000000)
	registerVal8:setAlpha(0.080000)
	registerVal8:setImage(RegisterImage(GetCurrentMinimapImageName("uie_hud_t7_minimap_mp_ethiopia_full")))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll"))
	registerVal8:setShaderVector(0.000000, 0.000000, 0.360000, 0.000000, 0.000000)
	registerVal8:setShaderVector(1.000000, 27.860000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.Scroll = registerVal8
	local registerVal9 = CoD.TabletLocationSelector_InternalItems.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, 1.000000, 2.000000)
	registerVal9:setTopBottom(true, true, -1.000000, 0.000000)
	Engine.SetupUI3DWindow(arg1, 2.000000, 721.000000, 721.000000)
	registerVal9:setUI3DWindow(2.000000)
	registerVal9:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.internalItems = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, 0.000000, 1.000000)
	registerVal10:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal10:setRGB(0.760000, 0.950000, 1.000000)
	registerVal10:setAlpha(0.070000)
	registerVal10:setImage(RegisterImage(GetCurrentMinimapImageName("uie_hud_t7_minimap_mp_ethiopia_full")))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.Add0 = registerVal10
	local registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_104F_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_174F_(arg0, arg1)
			local function __FUNC_18A4_(arg0, arg1)
				local function __FUNC_1A34_(arg0, arg1)
					local function __FUNC_1BC4_(arg0, arg1)
						local function __FUNC_1D1C_(arg0, arg1)
							local function __FUNC_1EAC_(arg0, arg1)
								local function __FUNC_203C_(arg0, arg1)
									local function __FUNC_2194_(arg0, arg1)
										local function __FUNC_2324_(arg0, arg1)
											local function __FUNC_24B4_(arg0, arg1)
												local function __FUNC_260C_(arg0, arg1)
													local function __FUNC_279C_(arg0, arg1)
														local function __FUNC_292C_(arg0, arg1)
															local function __FUNC_2A84_(arg0, arg1)
																local function __FUNC_2C14_(arg0, arg1)
																	local function __FUNC_2DA4_(arg0, arg1)
																		local function __FUNC_2EFC_(arg0, arg1)
																			local function __FUNC_308C_(arg0, arg1)
																				local function __FUNC_321C_(arg0, arg1)
																					if not arg1.interrupted then
																						arg0:beginAnimation("keyframe", 690.000000, false, false, CoD.TweenType.Linear)
																					end
																					arg0:setLeftRight(true, true, 0.000000, 1.000000)
																					arg0:setTopBottom(true, true, 0.000000, 0.000000)
																					arg0:setAlpha(0.500000)
																					if arg1.interrupted then
																						registerVal2.clipFinished(arg0, arg1)
																					else
																						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																					end
																				end

																				if arg1.interrupted then
																					__FUNC_321C_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
																				arg0:setLeftRight(true, true, 0.000000, 1.000000)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_321C_)
																			end

																			if arg1.interrupted then
																				__FUNC_308C_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
																			arg0:setLeftRight(true, true, 0.000000, 12.000000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_308C_)
																		end

																		if arg1.interrupted then
																			__FUNC_2EFC_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 1070.000000, false, false, CoD.TweenType.Linear)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EFC_)
																	end

																	if arg1.interrupted then
																		__FUNC_2DA4_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																	arg0:setLeftRight(true, true, 0.000000, 1.000000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DA4_)
																end

																if arg1.interrupted then
																	__FUNC_2C14_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
																arg0:setLeftRight(true, true, -22.000000, 21.000000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C14_)
															end

															if arg1.interrupted then
																__FUNC_2A84_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 620.000000, false, false, CoD.TweenType.Linear)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A84_)
														end

														if arg1.interrupted then
															__FUNC_292C_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
														arg0:setLeftRight(true, true, 0.000000, 1.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_292C_)
													end

													if arg1.interrupted then
														__FUNC_279C_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
													arg0:setLeftRight(true, true, -7.000000, 14.000000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_279C_)
												end

												if arg1.interrupted then
													__FUNC_260C_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_260C_)
											end

											if arg1.interrupted then
												__FUNC_24B4_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
											arg0:setLeftRight(true, true, 0.000000, 1.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24B4_)
										end

										if arg1.interrupted then
											__FUNC_2324_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:setLeftRight(true, true, -14.000000, 1.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2324_)
									end

									if arg1.interrupted then
										__FUNC_2194_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 780.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2194_)
								end

								if arg1.interrupted then
									__FUNC_203C_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
								arg0:setLeftRight(true, true, 0.000000, 1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_203C_)
							end

							if arg1.interrupted then
								__FUNC_1EAC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, true, -22.000000, 2.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EAC_)
						end

						if arg1.interrupted then
							__FUNC_1D1C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D1C_)
					end

					if arg1.interrupted then
						__FUNC_1BC4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, true, 0.000000, 1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BC4_)
				end

				if arg1.interrupted then
					__FUNC_1A34_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, true, -22.000000, 21.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A34_)
			end

			if arg1.interrupted then
				__FUNC_18A4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18A4_)
		end

		registerVal3:completeAnimation()
		registerVal2.MapGlitch:setLeftRight(true, true, 0.000000, 1.000000)
		registerVal2.MapGlitch:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.MapGlitch:setAlpha(0.500000)
		__FUNC_174F_(registerVal3, {})
		local function __FUNC_3437_(arg0, arg1)
			local function __FUNC_35AF_(arg0, arg1)
				local function __FUNC_3727_(arg0, arg1)
					local function __FUNC_389F_(arg0, arg1)
						local function __FUNC_3A17_(arg0, arg1)
							local function __FUNC_3B8F_(arg0, arg1)
								local function __FUNC_3D07_(arg0, arg1)
									local function __FUNC_3E7F_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 759.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setLeftRight(true, true, 0.000000, 0.000000)
										arg0:setTopBottom(true, true, 0.000000, 0.000000)
										arg0:setAlpha(0.990000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_3E7F_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 700.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.970000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E7F_)
								end

								if arg1.interrupted then
									__FUNC_3D07_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.990000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D07_)
							end

							if arg1.interrupted then
								__FUNC_3B8F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.970000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B8F_)
						end

						if arg1.interrupted then
							__FUNC_3A17_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.990000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A17_)
					end

					if arg1.interrupted then
						__FUNC_389F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 490.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.970000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_389F_)
				end

				if arg1.interrupted then
					__FUNC_3727_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.990000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3727_)
			end

			if arg1.interrupted then
				__FUNC_35AF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.970000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_35AF_)
		end

		registerVal4:completeAnimation()
		registerVal2.underlayMap0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.underlayMap0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.underlayMap0:setAlpha(1.000000)
		__FUNC_3437_(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.Mosiac:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_4092_(arg0, arg1)
			local function __FUNC_422C_(arg0, arg1)
				local function __FUNC_43C8_(arg0, arg1)
					local function __FUNC_4564_(arg0, arg1)
						local function __FUNC_4700_(arg0, arg1)
							local function __FUNC_489C_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, true, 0.000000, 1.000000)
								arg0:setTopBottom(true, true, 0.000000, 0.000000)
								arg0:setAlpha(0.070000)
								arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
								arg0:setShaderVector(0.000000, 0.280000, 0.000000, 0.000000, 0.000000)
								arg0:setShaderVector(1.000000, 0.750000, 0.000000, 0.000000, 0.000000)
								arg0:setShaderVector(2.000000, 0.010000, 0.000000, 0.000000, 0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_489C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 1119.000000, false, false, CoD.TweenType.Linear)
							arg0:setShaderVector(2.000000, 0.010068, 0.000000, 0.000000, 0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_489C_)
						end

						if arg1.interrupted then
							__FUNC_4700_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
						arg0:setShaderVector(2.000000, 0.017635, 0.000000, 0.000000, 0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4700_)
					end

					if arg1.interrupted then
						__FUNC_4564_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 1029.000000, false, false, CoD.TweenType.Linear)
					arg0:setShaderVector(2.000000, 0.020000, 0.000000, 0.000000, 0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4564_)
				end

				if arg1.interrupted then
					__FUNC_43C8_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 990.000000, false, false, CoD.TweenType.Linear)
				arg0:setShaderVector(2.000000, 0.010000, 0.000000, 0.000000, 0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_43C8_)
			end

			if arg1.interrupted then
				__FUNC_422C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:setShaderVector(2.000000, 0.020000, 0.000000, 0.000000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_422C_)
		end

		registerVal7:completeAnimation()
		registerVal2.Scanlines:setLeftRight(true, true, 0.000000, 1.000000)
		registerVal2.Scanlines:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.Scanlines:setAlpha(0.070000)
		registerVal2.Scanlines:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
		registerVal2.Scanlines:setShaderVector(0.000000, 0.280000, 0.000000, 0.000000, 0.000000)
		registerVal2.Scanlines:setShaderVector(1.000000, 0.750000, 0.000000, 0.000000, 0.000000)
		registerVal2.Scanlines:setShaderVector(2.000000, 0.010000, 0.000000, 0.000000, 0.000000)
		__FUNC_4092_(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Scroll:setLeftRight(true, true, 0.000000, 1.000000)
		registerVal2.Scroll:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.Scroll:setAlpha(0.080000)
		registerVal2.Scroll:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll"))
		registerVal2.Scroll:setShaderVector(0.000000, 0.000000, 0.360000, 0.000000, 0.000000)
		registerVal2.Scroll:setShaderVector(1.000000, 25.840000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.internalItems:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		local function __FUNC_4BCD_(arg0, arg1)
			local function __FUNC_4D24_(arg0, arg1)
				local function __FUNC_4E9F_(arg0, arg1)
					local function __FUNC_5017_(arg0, arg1)
						local function __FUNC_516C_(arg0, arg1)
							local function __FUNC_52E7_(arg0, arg1)
								local function __FUNC_545F_(arg0, arg1)
									local function __FUNC_55B4_(arg0, arg1)
										local function __FUNC_572F_(arg0, arg1)
											local function __FUNC_58A7_(arg0, arg1)
												local function __FUNC_59FC_(arg0, arg1)
													local function __FUNC_5B77_(arg0, arg1)
														local function __FUNC_5CEF_(arg0, arg1)
															local function __FUNC_5E44_(arg0, arg1)
																local function __FUNC_5FBF_(arg0, arg1)
																	if not arg1.interrupted then
																		arg0:beginAnimation("keyframe", 229.000000, false, false, CoD.TweenType.Linear)
																	end
																	arg0:setLeftRight(true, true, 0.000000, 1.000000)
																	arg0:setTopBottom(true, true, 0.000000, 0.000000)
																	arg0:setAlpha(0.070000)
																	if arg1.interrupted then
																		registerVal2.clipFinished(arg0, arg1)
																	else
																		arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																	end
																end

																if arg1.interrupted then
																	__FUNC_5FBF_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
																arg0:setAlpha(0.150000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5FBF_)
															end

															if arg1.interrupted then
																__FUNC_5E44_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 609.000000, false, false, CoD.TweenType.Linear)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E44_)
														end

														if arg1.interrupted then
															__FUNC_5CEF_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
														arg0:setAlpha(0.070000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5CEF_)
													end

													if arg1.interrupted then
														__FUNC_5B77_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.150000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B77_)
												end

												if arg1.interrupted then
													__FUNC_59FC_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_59FC_)
											end

											if arg1.interrupted then
												__FUNC_58A7_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.070000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_58A7_)
										end

										if arg1.interrupted then
											__FUNC_572F_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.150000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_572F_)
									end

									if arg1.interrupted then
										__FUNC_55B4_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 1479.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_55B4_)
								end

								if arg1.interrupted then
									__FUNC_545F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.070000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_545F_)
							end

							if arg1.interrupted then
								__FUNC_52E7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.150000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_52E7_)
						end

						if arg1.interrupted then
							__FUNC_516C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 710.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_516C_)
					end

					if arg1.interrupted then
						__FUNC_5017_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.070000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5017_)
				end

				if arg1.interrupted then
					__FUNC_4E9F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.150000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4E9F_)
			end

			if arg1.interrupted then
				__FUNC_4D24_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D24_)
		end

		registerVal10:completeAnimation()
		registerVal2.Add0:setLeftRight(true, true, 0.000000, 1.000000)
		registerVal2.Add0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.Add0:setAlpha(0.070000)
		__FUNC_4BCD_(registerVal10, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal12.DefaultClip = __FUNC_104F_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_61D7_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal4:completeAnimation()
		registerVal2.underlayMap0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.overlay:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Mosiac:setAlpha(0.500000)
		registerVal2.Mosiac:setMaterial(LUI.UIImage.GetCachedMaterial("uie_emp"))
		registerVal2.Mosiac:setShaderVector(0.000000, 13.200000, 0.000000, 0.000000, 0.000000)
		registerVal2.Mosiac:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Mosiac:setShaderVector(2.000000, 2.190000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Scanlines:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Scroll:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.internalItems:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Add0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_61D7_
	registerVal11.CounterUAV = registerVal12
	registerVal2.clipsPerState = registerVal11
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "CounterUAV"
	local function __FUNC_662A_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_COUNTER_UAV_ACTIVE)
		return registerVal3
	end

	registerVal14.condition = __FUNC_662A_
	registerVal13 = {registerVal14}
	registerVal2:mergeStateConditions(registerVal13)
	registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModel(registerVal14, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_COUNTER_UAV_ACTIVE))
	local function __FUNC_66FF_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_COUNTER_UAV_ACTIVE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal13, __FUNC_66FF_)
	local function __FUNC_688D_(arg0)
		arg0.internalItems:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_688D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

