-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.CallingCards_GoldFrame")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_Loot_LuchaLibre = registerVal1
function CoD.CallingCards_Loot_LuchaLibre.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_Loot_LuchaLibre)
	registerVal2.id = "CallingCards_Loot_LuchaLibre"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_luchalibre_bg1"))
	registerVal2:addElement(registerVal3)
	registerVal2.BG1 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcard_luchalibre_bg2"))
	registerVal2:addElement(registerVal4)
	registerVal2.BG2 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 368.370000, 491.700000)
	registerVal5:setTopBottom(true, false, 25.000000, 79.000000)
	registerVal5:setImage(RegisterImage("uie_t7_callingcard_luchalibre_scarfflipbook"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_flipbook"))
	registerVal5:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 7.270000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.FlipScarf = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, -310.330000, 21.000000)
	registerVal6:setTopBottom(true, false, -264.820000, 454.820000)
	registerVal6:setRGB(1.000000, 0.850000, 0.380000)
	registerVal6:setZRot(-67.000000)
	registerVal6:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.Glow = registerVal6
	local registerVal7 = CoD.CallingCards_GoldFrame.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.CallingCardsGoldFrame = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_A4D_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_BAA_(arg0, arg1)
			local function __FUNC_D23_(arg0, arg1)
				local function __FUNC_E9B_(arg0, arg1)
					local function __FUNC_1013_(arg0, arg1)
						local function __FUNC_118B_(arg0, arg1)
							local function __FUNC_1303_(arg0, arg1)
								local function __FUNC_147B_(arg0, arg1)
									local function __FUNC_15F3_(arg0, arg1)
										local function __FUNC_176B_(arg0, arg1)
											local function __FUNC_18E3_(arg0, arg1)
												local function __FUNC_1A5B_(arg0, arg1)
													local function __FUNC_1BD3_(arg0, arg1)
														local function __FUNC_1D4B_(arg0, arg1)
															local function __FUNC_1EC3_(arg0, arg1)
																local function __FUNC_203B_(arg0, arg1)
																	local function __FUNC_21B3_(arg0, arg1)
																		if not arg1.interrupted then
																			arg0:beginAnimation("keyframe", 179.000000, false, false, CoD.TweenType.Linear)
																		end
																		arg0:setAlpha(1.000000)
																		if arg1.interrupted then
																			registerVal2.clipFinished(arg0, arg1)
																		else
																			arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																		end
																	end

																	if arg1.interrupted then
																		__FUNC_21B3_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 390.000000, false, false, CoD.TweenType.Linear)
																	arg0:setAlpha(0.000000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21B3_)
																end

																if arg1.interrupted then
																	__FUNC_203B_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
																arg0:setAlpha(1.000000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_203B_)
															end

															if arg1.interrupted then
																__FUNC_1EC3_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
															arg0:setAlpha(0.000000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EC3_)
														end

														if arg1.interrupted then
															__FUNC_1D4B_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
														arg0:setAlpha(0.450000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D4B_)
													end

													if arg1.interrupted then
														__FUNC_1BD3_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 299.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.000000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BD3_)
												end

												if arg1.interrupted then
													__FUNC_1A5B_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(0.400000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A5B_)
											end

											if arg1.interrupted then
												__FUNC_18E3_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18E3_)
										end

										if arg1.interrupted then
											__FUNC_176B_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(1.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_176B_)
									end

									if arg1.interrupted then
										__FUNC_15F3_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.270000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15F3_)
								end

								if arg1.interrupted then
									__FUNC_147B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_147B_)
							end

							if arg1.interrupted then
								__FUNC_1303_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1303_)
						end

						if arg1.interrupted then
							__FUNC_118B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.320000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_118B_)
					end

					if arg1.interrupted then
						__FUNC_1013_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1013_)
				end

				if arg1.interrupted then
					__FUNC_E9B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.600000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E9B_)
			end

			if arg1.interrupted then
				__FUNC_D23_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D23_)
		end

		registerVal4:completeAnimation()
		registerVal2.BG2:setAlpha(1.000000)
		__FUNC_BAA_(registerVal4, {})
		local function __FUNC_2365_(arg0, arg1)
			local function __FUNC_24DF_(arg0, arg1)
				local function __FUNC_2657_(arg0, arg1)
					local function __FUNC_27CF_(arg0, arg1)
						local function __FUNC_2947_(arg0, arg1)
							local function __FUNC_2ABF_(arg0, arg1)
								local function __FUNC_2C37_(arg0, arg1)
									local function __FUNC_2DAF_(arg0, arg1)
										local function __FUNC_2F27_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 190.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setAlpha(1.000000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_2F27_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 359.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.580000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F27_)
									end

									if arg1.interrupted then
										__FUNC_2DAF_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 299.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.900000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DAF_)
								end

								if arg1.interrupted then
									__FUNC_2C37_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.590000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C37_)
							end

							if arg1.interrupted then
								__FUNC_2ABF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 320.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.870000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2ABF_)
						end

						if arg1.interrupted then
							__FUNC_2947_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.630000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2947_)
					end

					if arg1.interrupted then
						__FUNC_27CF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.960000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27CF_)
				end

				if arg1.interrupted then
					__FUNC_2657_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 649.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.490000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2657_)
			end

			if arg1.interrupted then
				__FUNC_24DF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.190000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24DF_)
		end

		registerVal6:completeAnimation()
		registerVal2.Glow:setAlpha(1.000000)
		__FUNC_2365_(registerVal6, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal9.DefaultClip = __FUNC_A4D_
	registerVal8.DefaultState = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_30D9_(arg0)
		arg0.CallingCardsGoldFrame:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_30D9_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

