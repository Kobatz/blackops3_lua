-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_sentinel_outOfRangeLabels = registerVal1
function CoD.vhud_sentinel_outOfRangeLabels.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_sentinel_outOfRangeLabels)
	registerVal2.id = "vhud_sentinel_outOfRangeLabels"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 527.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 245.000000)
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(false, false, -263.400000, 263.400000)
	registerVal3:setTopBottom(true, false, 215.000000, 245.000000)
	registerVal3:setRGB(1.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setText(Engine.Localize("CPUI_LEAVING_OPERATIONAL_RANGE"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal3:setShaderVector(0.000000, 0.200000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setLetterSpacing(6.700000)
	registerVal2:addElement(registerVal3)
	registerVal2.outOfRangeLabel = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(false, false, -117.200000, 117.200000)
	registerVal4:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal4:setRGB(1.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setText(Engine.Localize("CPUI_LINK_ERROR"))
	registerVal4:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal4:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal4:setShaderVector(0.000000, 0.200000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setLetterSpacing(8.600000)
	registerVal2:addElement(registerVal4)
	registerVal2.outOfRangeTitle = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_A21_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.outOfRangeLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.outOfRangeTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_A21_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_B84_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_CF9_(arg0, arg1)
			local function __FUNC_E50_(arg0, arg1)
				local function __FUNC_FCB_(arg0, arg1)
					local function __FUNC_1120_(arg0, arg1)
						local function __FUNC_129B_(arg0, arg1)
							local function __FUNC_13F0_(arg0, arg1)
								local function __FUNC_156B_(arg0, arg1)
									local function __FUNC_16C0_(arg0, arg1)
										local function __FUNC_183B_(arg0, arg1)
											local function __FUNC_1990_(arg0, arg1)
												local function __FUNC_1B0B_(arg0, arg1)
													local function __FUNC_1C60_(arg0, arg1)
														local function __FUNC_1DDB_(arg0, arg1)
															local function __FUNC_1F30_(arg0, arg1)
																local function __FUNC_20AB_(arg0, arg1)
																	local function __FUNC_2200_(arg0, arg1)
																		if not arg1.interrupted then
																			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																		end
																		arg0:setAlpha(1.000000)
																		if arg1.interrupted then
																			registerVal2.clipFinished(arg0, arg1)
																		else
																			arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																		end
																	end

																	if arg1.interrupted then
																		__FUNC_2200_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2200_)
																end

																if arg1.interrupted then
																	__FUNC_20AB_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																arg0:setAlpha(0.400000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20AB_)
															end

															if arg1.interrupted then
																__FUNC_1F30_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 389.000000, false, false, CoD.TweenType.Linear)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F30_)
														end

														if arg1.interrupted then
															__FUNC_1DDB_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
														arg0:setAlpha(1.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DDB_)
													end

													if arg1.interrupted then
														__FUNC_1C60_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C60_)
												end

												if arg1.interrupted then
													__FUNC_1B0B_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(0.400000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B0B_)
											end

											if arg1.interrupted then
												__FUNC_1990_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 389.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1990_)
										end

										if arg1.interrupted then
											__FUNC_183B_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(1.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_183B_)
									end

									if arg1.interrupted then
										__FUNC_16C0_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16C0_)
								end

								if arg1.interrupted then
									__FUNC_156B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_156B_)
							end

							if arg1.interrupted then
								__FUNC_13F0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 389.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13F0_)
						end

						if arg1.interrupted then
							__FUNC_129B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_129B_)
					end

					if arg1.interrupted then
						__FUNC_1120_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1120_)
				end

				if arg1.interrupted then
					__FUNC_FCB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.400000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FCB_)
			end

			if arg1.interrupted then
				__FUNC_E50_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E50_)
		end

		registerVal3:completeAnimation()
		registerVal2.outOfRangeLabel:setAlpha(1.000000)
		__FUNC_CF9_(registerVal3, {})
		local function __FUNC_23B5_(arg0, arg1)
			local function __FUNC_252F_(arg0, arg1)
				local function __FUNC_26A7_(arg0, arg1)
					local function __FUNC_27FC_(arg0, arg1)
						local function __FUNC_2977_(arg0, arg1)
							local function __FUNC_2AEF_(arg0, arg1)
								local function __FUNC_2C67_(arg0, arg1)
									local function __FUNC_2DDF_(arg0, arg1)
										local function __FUNC_2F57_(arg0, arg1)
											local function __FUNC_30CF_(arg0, arg1)
												local function __FUNC_3224_(arg0, arg1)
													local function __FUNC_339F_(arg0, arg1)
														local function __FUNC_3517_(arg0, arg1)
															local function __FUNC_368F_(arg0, arg1)
																local function __FUNC_3807_(arg0, arg1)
																	local function __FUNC_397F_(arg0, arg1)
																		local function __FUNC_3AF7_(arg0, arg1)
																			local function __FUNC_3C6F_(arg0, arg1)
																				local function __FUNC_3DE7_(arg0, arg1)
																					local function __FUNC_3F5F_(arg0, arg1)
																						local function __FUNC_40D7_(arg0, arg1)
																							local function __FUNC_424F_(arg0, arg1)
																								local function __FUNC_43C7_(arg0, arg1)
																									local function __FUNC_453F_(arg0, arg1)
																										local function __FUNC_46B7_(arg0, arg1)
																											local function __FUNC_482F_(arg0, arg1)
																												local function __FUNC_49A7_(arg0, arg1)
																													local function __FUNC_4B1F_(arg0, arg1)
																														local function __FUNC_4C97_(arg0, arg1)
																															if not arg1.interrupted then
																																arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																															end
																															arg0:setAlpha(1.000000)
																															if arg1.interrupted then
																																registerVal2.clipFinished(arg0, arg1)
																															else
																																arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																															end
																														end

																														if arg1.interrupted then
																															__FUNC_4C97_(arg0, arg1)
																															return 
																														end
																														arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																														arg0:setAlpha(0.930000)
																														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4C97_)
																													end

																													if arg1.interrupted then
																														__FUNC_4B1F_(arg0, arg1)
																														return 
																													end
																													arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
																													arg0:setAlpha(0.840000)
																													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B1F_)
																												end

																												if arg1.interrupted then
																													__FUNC_49A7_(arg0, arg1)
																													return 
																												end
																												arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
																												arg0:setAlpha(1.000000)
																												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_49A7_)
																											end

																											if arg1.interrupted then
																												__FUNC_482F_(arg0, arg1)
																												return 
																											end
																											arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
																											arg0:setAlpha(0.880000)
																											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_482F_)
																										end

																										if arg1.interrupted then
																											__FUNC_46B7_(arg0, arg1)
																											return 
																										end
																										arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																										arg0:setAlpha(1.000000)
																										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_46B7_)
																									end

																									if arg1.interrupted then
																										__FUNC_453F_(arg0, arg1)
																										return 
																									end
																									arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
																									arg0:setAlpha(0.920000)
																									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_453F_)
																								end

																								if arg1.interrupted then
																									__FUNC_43C7_(arg0, arg1)
																									return 
																								end
																								arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
																								arg0:setAlpha(1.000000)
																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_43C7_)
																							end

																							if arg1.interrupted then
																								__FUNC_424F_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
																							arg0:setAlpha(0.730000)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_424F_)
																						end

																						if arg1.interrupted then
																							__FUNC_40D7_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
																						arg0:setAlpha(0.980000)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_40D7_)
																					end

																					if arg1.interrupted then
																						__FUNC_3F5F_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
																					arg0:setAlpha(0.840000)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F5F_)
																				end

																				if arg1.interrupted then
																					__FUNC_3DE7_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
																				arg0:setAlpha(1.000000)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3DE7_)
																			end

																			if arg1.interrupted then
																				__FUNC_3C6F_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																			arg0:setAlpha(0.930000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C6F_)
																		end

																		if arg1.interrupted then
																			__FUNC_3AF7_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
																		arg0:setAlpha(1.000000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3AF7_)
																	end

																	if arg1.interrupted then
																		__FUNC_397F_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
																	arg0:setAlpha(0.850000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_397F_)
																end

																if arg1.interrupted then
																	__FUNC_3807_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
																arg0:setAlpha(1.000000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3807_)
															end

															if arg1.interrupted then
																__FUNC_368F_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
															arg0:setAlpha(0.680000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_368F_)
														end

														if arg1.interrupted then
															__FUNC_3517_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
														arg0:setAlpha(1.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3517_)
													end

													if arg1.interrupted then
														__FUNC_339F_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.590000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_339F_)
												end

												if arg1.interrupted then
													__FUNC_3224_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3224_)
											end

											if arg1.interrupted then
												__FUNC_30CF_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(1.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30CF_)
										end

										if arg1.interrupted then
											__FUNC_2F57_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.840000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F57_)
									end

									if arg1.interrupted then
										__FUNC_2DDF_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(1.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DDF_)
								end

								if arg1.interrupted then
									__FUNC_2C67_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.770000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C67_)
							end

							if arg1.interrupted then
								__FUNC_2AEF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AEF_)
						end

						if arg1.interrupted then
							__FUNC_2977_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.810000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2977_)
					end

					if arg1.interrupted then
						__FUNC_27FC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27FC_)
				end

				if arg1.interrupted then
					__FUNC_26A7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26A7_)
			end

			if arg1.interrupted then
				__FUNC_252F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.860000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_252F_)
		end

		registerVal4:completeAnimation()
		registerVal2.outOfRangeTitle:setAlpha(1.000000)
		__FUNC_23B5_(registerVal4, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal6.DefaultClip = __FUNC_B84_
	registerVal5.LeavingOperationalZone = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "LeavingOperationalZone"
	local function __FUNC_4E49_(arg0, arg2, arg3)
		local registerVal3 = IsCampaign()
		if registerVal3 then
			registerVal3 = IsSelfModelValueTrue(arg2, arg1, "outOfRange")
		end
		return registerVal3
	end

	registerVal8.condition = __FUNC_4E49_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	local function __FUNC_4EE2_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "outOfRange"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "outOfRange", true, __FUNC_4EE2_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

