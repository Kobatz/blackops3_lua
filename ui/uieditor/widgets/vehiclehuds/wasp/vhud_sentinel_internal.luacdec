-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.wasp.vhud_sentinel_iris")
require("ui.uieditor.widgets.VehicleHUDs.wasp.VHUD_Sentinel_Reticle")
require("ui.uieditor.widgets.VehicleHUDs.Buttons.vhud_generic_button_layout")
require("ui.uieditor.widgets.VehicleHUDs.wasp.vhud_sentinel_outOfRangeLabels")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.VHUD_Sentinel_Internal = registerVal1
function CoD.VHUD_Sentinel_Internal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.VHUD_Sentinel_Internal)
	registerVal2.id = "VHUD_Sentinel_Internal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.vhud_sentinel_iris.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -202.500000, 202.500000)
	registerVal3:setTopBottom(true, true, -115.000000, 115.000000)
	local function __FUNC_C51_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_C51_)
	registerVal2:addElement(registerVal3)
	registerVal2.vhudsentineliris0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal4:setTopBottom(false, false, -360.000000, 360.000000)
	registerVal4:setAlpha(0.900000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_textureoverlaydots"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.TextureOverlayDots = registerVal4
	local registerVal5 = CoD.VHUD_Sentinel_Reticle.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_CA2_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_CA2_)
	local function __FUNC_CF2_(arg0, arg2)
		local registerVal5 = {}
		registerVal5.elementName = "VHUDSentinelReticle"
		registerVal5.clipName = "StartUp"
		PlayClipOnElement(registerVal2, registerVal5, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("menu_loaded", __FUNC_CF2_)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Zoom"
	local function __FUNC_DE9_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "zoomed")
	end

	registerVal9.condition = __FUNC_DE9_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	local function __FUNC_E5A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "zoomed"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "zoomed", true, __FUNC_E5A_)
	registerVal2:addElement(registerVal5)
	registerVal2.VHUDSentinelReticle = registerVal5
	local registerVal6 = CoD.vhud_generic_button_layout.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, -2.450000, -2.450000)
	local function __FUNC_F74_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, "bindings", false, __FUNC_F74_)
	local function __FUNC_FC6_(arg0, arg2)
		SizeToSafeArea(arg0, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("menu_opened", __FUNC_FC6_)
	registerVal2:addElement(registerVal6)
	registerVal2.vhudButtonContainer = registerVal6
	local registerVal7 = CoD.vhud_sentinel_outOfRangeLabels.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -263.400000, 263.400000)
	registerVal7:setTopBottom(false, false, -123.000000, 123.000000)
	local function __FUNC_1059_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, nil, false, __FUNC_1059_)
	registerVal2:addElement(registerVal7)
	registerVal2.vhudsentineloutOfRangeLabels0 = registerVal7
	registerVal8 = {}
	registerVal9 = {}
	local function __FUNC_10AA_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_11C7_(arg0, arg1)
			local function __FUNC_133F_(arg0, arg1)
				local function __FUNC_14B7_(arg0, arg1)
					local function __FUNC_162F_(arg0, arg1)
						local function __FUNC_17A7_(arg0, arg1)
							local function __FUNC_191F_(arg0, arg1)
								local function __FUNC_1A97_(arg0, arg1)
									local function __FUNC_1C0F_(arg0, arg1)
										local function __FUNC_1D87_(arg0, arg1)
											local function __FUNC_1EFF_(arg0, arg1)
												local function __FUNC_2077_(arg0, arg1)
													local function __FUNC_21EF_(arg0, arg1)
														local function __FUNC_2367_(arg0, arg1)
															local function __FUNC_24DF_(arg0, arg1)
																local function __FUNC_2657_(arg0, arg1)
																	local function __FUNC_27AC_(arg0, arg1)
																		local function __FUNC_2927_(arg0, arg1)
																			local function __FUNC_2A9F_(arg0, arg1)
																				local function __FUNC_2C17_(arg0, arg1)
																					local function __FUNC_2D8F_(arg0, arg1)
																						local function __FUNC_2F07_(arg0, arg1)
																							local function __FUNC_307F_(arg0, arg1)
																								local function __FUNC_31F7_(arg0, arg1)
																									local function __FUNC_336F_(arg0, arg1)
																										local function __FUNC_34E7_(arg0, arg1)
																											local function __FUNC_365F_(arg0, arg1)
																												local function __FUNC_37D7_(arg0, arg1)
																													local function __FUNC_394F_(arg0, arg1)
																														local function __FUNC_3AC7_(arg0, arg1)
																															local function __FUNC_3C3F_(arg0, arg1)
																																local function __FUNC_3DB7_(arg0, arg1)
																																	local function __FUNC_3F2F_(arg0, arg1)
																																		local function __FUNC_40A7_(arg0, arg1)
																																			local function __FUNC_421F_(arg0, arg1)
																																				local function __FUNC_4397_(arg0, arg1)
																																					local function __FUNC_450F_(arg0, arg1)
																																						local function __FUNC_4687_(arg0, arg1)
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
																																							__FUNC_4687_(arg0, arg1)
																																							return 
																																						end
																																						arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
																																						arg0:setAlpha(1.000000)
																																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4687_)
																																					end

																																					if arg1.interrupted then
																																						__FUNC_450F_(arg0, arg1)
																																						return 
																																					end
																																					arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
																																					arg0:setAlpha(0.200000)
																																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_450F_)
																																				end

																																				if arg1.interrupted then
																																					__FUNC_4397_(arg0, arg1)
																																					return 
																																				end
																																				arg0:beginAnimation("keyframe", 460.000000, false, false, CoD.TweenType.Linear)
																																				arg0:setAlpha(0.400000)
																																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4397_)
																																			end

																																			if arg1.interrupted then
																																				__FUNC_421F_(arg0, arg1)
																																				return 
																																			end
																																			arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
																																			arg0:setAlpha(0.100000)
																																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_421F_)
																																		end

																																		if arg1.interrupted then
																																			__FUNC_40A7_(arg0, arg1)
																																			return 
																																		end
																																		arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
																																		arg0:setAlpha(0.400000)
																																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_40A7_)
																																	end

																																	if arg1.interrupted then
																																		__FUNC_3F2F_(arg0, arg1)
																																		return 
																																	end
																																	arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
																																	arg0:setAlpha(0.900000)
																																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F2F_)
																																end

																																if arg1.interrupted then
																																	__FUNC_3DB7_(arg0, arg1)
																																	return 
																																end
																																arg0:beginAnimation("keyframe", 430.000000, false, false, CoD.TweenType.Linear)
																																arg0:setAlpha(0.150000)
																																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3DB7_)
																															end

																															if arg1.interrupted then
																																__FUNC_3C3F_(arg0, arg1)
																																return 
																															end
																															arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
																															arg0:setAlpha(1.000000)
																															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C3F_)
																														end

																														if arg1.interrupted then
																															__FUNC_3AC7_(arg0, arg1)
																															return 
																														end
																														arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
																														arg0:setAlpha(0.200000)
																														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3AC7_)
																													end

																													if arg1.interrupted then
																														__FUNC_394F_(arg0, arg1)
																														return 
																													end
																													arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
																													arg0:setAlpha(0.500000)
																													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_394F_)
																												end

																												if arg1.interrupted then
																													__FUNC_37D7_(arg0, arg1)
																													return 
																												end
																												arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
																												arg0:setAlpha(0.300000)
																												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37D7_)
																											end

																											if arg1.interrupted then
																												__FUNC_365F_(arg0, arg1)
																												return 
																											end
																											arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
																											arg0:setAlpha(1.000000)
																											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_365F_)
																										end

																										if arg1.interrupted then
																											__FUNC_34E7_(arg0, arg1)
																											return 
																										end
																										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
																										arg0:setAlpha(0.600000)
																										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34E7_)
																									end

																									if arg1.interrupted then
																										__FUNC_336F_(arg0, arg1)
																										return 
																									end
																									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
																									arg0:setAlpha(1.000000)
																									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_336F_)
																								end

																								if arg1.interrupted then
																									__FUNC_31F7_(arg0, arg1)
																									return 
																								end
																								arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
																								arg0:setAlpha(0.150000)
																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31F7_)
																							end

																							if arg1.interrupted then
																								__FUNC_307F_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
																							arg0:setAlpha(0.500000)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_307F_)
																						end

																						if arg1.interrupted then
																							__FUNC_2F07_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 169.000000, false, false, CoD.TweenType.Linear)
																						arg0:setAlpha(1.000000)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F07_)
																					end

																					if arg1.interrupted then
																						__FUNC_2D8F_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 269.000000, false, false, CoD.TweenType.Linear)
																					arg0:setAlpha(0.200000)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D8F_)
																				end

																				if arg1.interrupted then
																					__FUNC_2C17_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
																				arg0:setAlpha(0.700000)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C17_)
																			end

																			if arg1.interrupted then
																				__FUNC_2A9F_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
																			arg0:setAlpha(0.400000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A9F_)
																		end

																		if arg1.interrupted then
																			__FUNC_2927_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
																		arg0:setAlpha(1.000000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2927_)
																	end

																	if arg1.interrupted then
																		__FUNC_27AC_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27AC_)
																end

																if arg1.interrupted then
																	__FUNC_2657_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																arg0:setAlpha(0.100000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2657_)
															end

															if arg1.interrupted then
																__FUNC_24DF_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
															arg0:setAlpha(0.600000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24DF_)
														end

														if arg1.interrupted then
															__FUNC_2367_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
														arg0:setAlpha(0.250000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2367_)
													end

													if arg1.interrupted then
														__FUNC_21EF_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.800000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21EF_)
												end

												if arg1.interrupted then
													__FUNC_2077_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(1.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2077_)
											end

											if arg1.interrupted then
												__FUNC_1EFF_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.500000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EFF_)
										end

										if arg1.interrupted then
											__FUNC_1D87_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.800000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D87_)
									end

									if arg1.interrupted then
										__FUNC_1C0F_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(1.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C0F_)
								end

								if arg1.interrupted then
									__FUNC_1A97_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.100000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A97_)
							end

							if arg1.interrupted then
								__FUNC_191F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.200000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_191F_)
						end

						if arg1.interrupted then
							__FUNC_17A7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.100000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17A7_)
					end

					if arg1.interrupted then
						__FUNC_162F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_162F_)
				end

				if arg1.interrupted then
					__FUNC_14B7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.250000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14B7_)
			end

			if arg1.interrupted then
				__FUNC_133F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_133F_)
		end

		registerVal4:completeAnimation()
		registerVal2.TextureOverlayDots:setAlpha(0.000000)
		__FUNC_11C7_(registerVal4, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal9.DefaultClip = __FUNC_10AA_
	registerVal8.DefaultState = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_4839_(arg0)
		arg0.vhudsentineliris0:close()
		arg0.VHUDSentinelReticle:close()
		arg0.vhudButtonContainer:close()
		arg0.vhudsentineloutOfRangeLabels0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_4839_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

