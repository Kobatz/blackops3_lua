-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MPHudWidgets.ThrustMeter.Boot.ThrustBootMeterCircle")
require("ui.uieditor.widgets.MPHudWidgets.ThrustMeter.Boot.ThrustBootChevron")
local function __FUNC_298_(arg0, arg1)
	local registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_HUD_VISIBLE)
	registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_EMP_ACTIVE)
	registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
	registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN)
	registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
	registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_IN_KILLCAM)
	registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
	registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_GAME_ENDED)
	if registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
		registerVal3 = CoD.IsShoutcaster(arg1.controller)
		registerVal3 = CoD.ShoutcasterProfileVarBool(arg1.controller, "shoutcaster_teamscore")
		if arg1 or registerVal3 then
			registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE)
			registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC)
			registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_IN_VEHICLE)
			registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_HUD_HARDCORE)
			registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED)
			registerVal3 = CoD.FSM_VISIBILITY(arg1.controller)
			if not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and CoD.isCampaign ~= true and registerVal3 == 0.000000 then
				arg0:setAlpha(1.000000)
				arg0.visible = true
				if not arg0.visible and arg0.visible then
					arg0:setAlpha(0.000000)
					arg0.visible = nil
				end
			end
		end
	end
end

local function __FUNC_946_(arg0, arg1)
	arg0.hudStarted = false
	local function __FUNC_FDE_(arg2)
		local registerVal3 = {}
		registerVal3.controller = arg1
		__FUNC_298_(arg0, registerVal3)
	end

	local registerVal3 = Engine.GetModelForController(arg1)
	local registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE))
	arg0:subscribeToModel(registerVal6, __FUNC_FDE_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE))
	arg0:subscribeToModel(registerVal6, __FUNC_FDE_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE))
	arg0:subscribeToModel(registerVal6, __FUNC_FDE_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SPECTATING_CLIENT))
	arg0:subscribeToModel(registerVal6, __FUNC_FDE_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN))
	arg0:subscribeToModel(registerVal6, __FUNC_FDE_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED))
	arg0:subscribeToModel(registerVal6, __FUNC_FDE_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_VEHICLE))
	arg0:subscribeToModel(registerVal6, __FUNC_FDE_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE))
	arg0:subscribeToModel(registerVal6, __FUNC_FDE_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC))
	arg0:subscribeToModel(registerVal6, __FUNC_FDE_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED))
	arg0:subscribeToModel(registerVal6, __FUNC_FDE_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM))
	arg0:subscribeToModel(registerVal6, __FUNC_FDE_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN))
	arg0:subscribeToModel(registerVal6, __FUNC_FDE_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_HARDCORE))
	arg0:subscribeToModel(registerVal6, __FUNC_FDE_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SELECTING_LOCATION))
	arg0:subscribeToModel(registerVal6, __FUNC_FDE_)
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.ThrustMeterBootContainer = registerVal3
local function __FUNC_1034_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ThrustMeterBootContainer)
	registerVal2.id = "ThrustMeterBootContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 309.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 313.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 24.670000, 284.330000)
	registerVal3:setTopBottom(true, false, 22.000000, 281.670000)
	registerVal3:setRGB(0.670000, 0.800000, 1.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setZoom(-87.000000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_boost_meter_boot_circle"))
	registerVal2:addElement(registerVal3)
	registerVal2.InnerCircle = registerVal3
	local registerVal4 = CoD.ThrustBootMeterCircle.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 9.170000, 299.830000)
	registerVal4:setTopBottom(true, false, -3.670000, 307.330000)
	registerVal4:setAlpha(0.800000)
	registerVal4.HashCircle:setAlpha(0.000000)
	registerVal4.HashCircle:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal4.ThrustMeterDotsBoot.fill:setShaderVector(0.000000, 0.522000, 0.000000, 0.000000, 0.000000)
	registerVal4.ThrustMeterDotsBoot.fill:setShaderVector(1.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal4.ThrustMeterDotsBoot.fill:setShaderVector(2.000000, -2.840000, 0.000000, 0.000000, 0.000000)
	registerVal4.ThrustMeterDotsBoot.dots:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.ThrustBootMeterCircle0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 266.000000, 287.330000)
	registerVal5:setTopBottom(true, false, 19.000000, 43.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_hud_boost_meter_boot_hash"))
	registerVal2:addElement(registerVal5)
	registerVal2.Hash1 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 42.670000, 21.330000)
	registerVal6:setTopBottom(true, false, 19.000000, 43.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_hud_boost_meter_boot_hash"))
	registerVal2:addElement(registerVal6)
	registerVal2.Hash4 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 266.000000, 287.330000)
	registerVal7:setTopBottom(true, false, 285.000000, 261.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_hud_boost_meter_boot_hash"))
	registerVal2:addElement(registerVal7)
	registerVal2.Hash2 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 42.670000, 21.330000)
	registerVal8:setTopBottom(true, false, 285.000000, 261.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_hud_boost_meter_boot_hash"))
	registerVal2:addElement(registerVal8)
	registerVal2.Hash3 = registerVal8
	local registerVal9 = CoD.ThrustBootChevron.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 152.000000, 157.000000)
	registerVal9:setTopBottom(true, false, 3.250000, 301.250000)
	registerVal9:setAlpha(0.980000)
	registerVal9:setZRot(-331.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.ThrustBootChevron0 = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_1A72_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.InnerCircle:setLeftRight(true, false, 24.670000, 284.330000)
		registerVal2.InnerCircle:setTopBottom(true, false, 22.000000, 281.670000)
		registerVal2.InnerCircle:setAlpha(0.000000)
		registerVal2.InnerCircle:setZRot(180.000000)
		registerVal2.InnerCircle:setZoom(-74.000000)
		registerVal2.InnerCircle:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal4.HashCircle:completeAnimation()
		registerVal4.ThrustMeterDotsBoot.fill:completeAnimation()
		registerVal4.ThrustMeterDotsBoot.dots:completeAnimation()
		registerVal2.ThrustBootMeterCircle0:setAlpha(0.000000)
		registerVal2.ThrustBootMeterCircle0:setZRot(0.000000)
		registerVal2.ThrustBootMeterCircle0:setZoom(-75.000000)
		registerVal2.ThrustBootMeterCircle0.HashCircle:setAlpha(1.000000)
		registerVal2.ThrustBootMeterCircle0.HashCircle:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.ThrustBootMeterCircle0.ThrustMeterDotsBoot.fill:setAlpha(1.000000)
		registerVal2.ThrustBootMeterCircle0.ThrustMeterDotsBoot.fill:setShaderVector(0.000000, 0.522000, 0.000000, 0.000000, 0.000000)
		registerVal2.ThrustBootMeterCircle0.ThrustMeterDotsBoot.dots:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Hash1:setLeftRight(true, false, 246.000000, 267.330000)
		registerVal2.Hash1:setTopBottom(true, false, 39.000000, 63.000000)
		registerVal2.Hash1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Hash4:setLeftRight(true, false, 62.670000, 41.330000)
		registerVal2.Hash4:setTopBottom(true, false, 39.000000, 63.000000)
		registerVal2.Hash4:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Hash2:setLeftRight(true, false, 246.000000, 267.330000)
		registerVal2.Hash2:setTopBottom(true, false, 265.000000, 241.000000)
		registerVal2.Hash2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Hash3:setLeftRight(true, false, 62.670000, 41.330000)
		registerVal2.Hash3:setTopBottom(true, false, 265.000000, 241.000000)
		registerVal2.Hash3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.ThrustBootChevron0:setAlpha(0.000000)
		registerVal2.ThrustBootChevron0:setZRot(29.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_1A72_
	local function __FUNC_22B6_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_2B0C_(arg0, arg1)
			local function __FUNC_2CA9_(arg0, arg1)
				local function __FUNC_2E23_(arg0, arg1)
					local function __FUNC_2F9B_(arg0, arg1)
						local function __FUNC_3113_(arg0, arg1)
							local function __FUNC_328B_(arg0, arg1)
								local function __FUNC_33E0_(arg0, arg1)
									local function __FUNC_355A_(arg0, arg1)
										local function __FUNC_36B0_(arg0, arg1)
											local function __FUNC_3808_(arg0, arg1)
												local function __FUNC_3983_(arg0, arg1)
													local function __FUNC_3AFB_(arg0, arg1)
														local function __FUNC_3C73_(arg0, arg1)
															local function __FUNC_3DEB_(arg0, arg1)
																if not arg1.interrupted then
																	arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
																end
																arg0:setRGB(0.670000, 0.800000, 1.000000)
																arg0:setAlpha(0.000000)
																arg0:setZRot(0.000000)
																arg0:setZoom(-87.000000)
																if arg1.interrupted then
																	registerVal2.clipFinished(arg0, arg1)
																else
																	arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																end
															end

															if arg1.interrupted then
																__FUNC_3DEB_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
															arg0:setAlpha(0.300000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3DEB_)
														end

														if arg1.interrupted then
															__FUNC_3C73_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
														arg0:setAlpha(0.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C73_)
													end

													if arg1.interrupted then
														__FUNC_3AFB_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.300000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3AFB_)
												end

												if arg1.interrupted then
													__FUNC_3983_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(0.210000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3983_)
											end

											if arg1.interrupted then
												__FUNC_3808_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3808_)
										end

										if arg1.interrupted then
											__FUNC_36B0_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36B0_)
									end

									if arg1.interrupted then
										__FUNC_355A_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
									arg0:setZoom(-87.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_355A_)
								end

								if arg1.interrupted then
									__FUNC_33E0_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33E0_)
							end

							if arg1.interrupted then
								__FUNC_328B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.300000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_328B_)
						end

						if arg1.interrupted then
							__FUNC_3113_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3113_)
					end

					if arg1.interrupted then
						__FUNC_2F9B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.370000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F9B_)
				end

				if arg1.interrupted then
					__FUNC_2E23_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E23_)
			end

			if arg1.interrupted then
				__FUNC_2CA9_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.400000)
			arg0:setZoom(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CA9_)
		end

		registerVal3:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
		registerVal2.InnerCircle:setRGB(0.670000, 0.800000, 1.000000)
		registerVal2.InnerCircle:setAlpha(0.000000)
		registerVal2.InnerCircle:setZRot(0.000000)
		registerVal2.InnerCircle:setZoom(-74.000000)
		registerVal3:registerEventHandler("transition_complete_keyframe", __FUNC_2B0C_)
		local function __FUNC_400F_(arg0, arg1)
			local function __FUNC_419C_(arg0, arg1)
				local function __FUNC_434F_(arg0, arg1)
					local function __FUNC_4521_(arg0, arg1)
						local function __FUNC_46BD_(arg0, arg1)
							local function __FUNC_4814_(arg0, arg1)
								local function __FUNC_496C_(arg0, arg1)
									local function __FUNC_4AE6_(arg0, arg1)
										local function __FUNC_4CF6_(arg0, arg1)
											local function __FUNC_4F06_(arg0, arg1)
												local function __FUNC_5116_(arg0, arg1)
													local function __FUNC_5326_(arg0, arg1)
														local function __FUNC_55DD_(arg0, arg1)
															local function __FUNC_589A_(arg0, arg1)
																local function __FUNC_5B51_(arg0, arg1)
																	local function __FUNC_5D8B_(arg0, arg1)
																		local function __FUNC_6058_(arg0, arg1)
																			local function __FUNC_6328_(arg0, arg1)
																				local function __FUNC_65F8_(arg0, arg1)
																					local function __FUNC_68C3_(arg0, arg1)
																						local function __FUNC_6AFB_(arg0, arg1)
																							local function __FUNC_6C50_(arg0, arg1)
																								if not arg1.interrupted then
																									arg0:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Linear)
																									arg0.HashCircle:beginAnimation("subkeyframe", 280.000000, false, false, CoD.TweenType.Linear)
																									arg0.ThrustMeterDotsBoot.fill:beginAnimation("subkeyframe", 280.000000, false, false, CoD.TweenType.Linear)
																									arg0.ThrustMeterDotsBoot.dots:beginAnimation("subkeyframe", 280.000000, false, false, CoD.TweenType.Linear)
																								end
																								arg0:setLeftRight(true, false, 9.170000, 299.830000)
																								arg0:setTopBottom(true, false, -3.670000, 307.330000)
																								arg0:setAlpha(0.000000)
																								arg0:setZRot(0.000000)
																								arg0:setZoom(0.000000)
																								arg0.HashCircle:setAlpha(0.000000)
																								arg0.ThrustMeterDotsBoot.fill:setShaderVector(0.000000, 0.522000, 0.000000, 0.000000, 0.000000)
																								arg0.ThrustMeterDotsBoot.dots:setAlpha(0.000000)
																								if arg1.interrupted then
																									registerVal2.clipFinished(arg0, arg1)
																								else
																									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																								end
																							end

																							if arg1.interrupted then
																								__FUNC_6C50_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 179.000000, false, false, CoD.TweenType.Linear)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6C50_)
																						end

																						if arg1.interrupted then
																							__FUNC_6AFB_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
																						arg0.ThrustMeterDotsBoot.fill:beginAnimation("subkeyframe", 39.000000, false, false, CoD.TweenType.Linear)
																						arg0.ThrustMeterDotsBoot.fill:setShaderVector(0.000000, 0.522000, 0.000000, 0.000000, 0.000000)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6AFB_)
																					end

																					if arg1.interrupted then
																						__FUNC_68C3_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
																					arg0.ThrustMeterDotsBoot.fill:beginAnimation("subkeyframe", 139.000000, false, false, CoD.TweenType.Linear)
																					arg0.ThrustMeterDotsBoot.dots:beginAnimation("subkeyframe", 139.000000, false, false, CoD.TweenType.Linear)
																					arg0.ThrustMeterDotsBoot.fill:setShaderVector(0.000000, 0.514445, 0.000000, 0.000000, 0.000000)
																					arg0.ThrustMeterDotsBoot.dots:setAlpha(0.000000)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_68C3_)
																				end

																				if arg1.interrupted then
																					__FUNC_65F8_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																				arg0.ThrustMeterDotsBoot.fill:beginAnimation("subkeyframe", 20.000000, false, false, CoD.TweenType.Linear)
																				arg0.ThrustMeterDotsBoot.dots:beginAnimation("subkeyframe", 20.000000, false, false, CoD.TweenType.Linear)
																				arg0.ThrustMeterDotsBoot.fill:setShaderVector(0.000000, 0.488000, 0.000000, 0.000000, 0.000000)
																				arg0.ThrustMeterDotsBoot.dots:setAlpha(0.650000)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_65F8_)
																			end

																			if arg1.interrupted then
																				__FUNC_6328_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																			arg0.ThrustMeterDotsBoot.fill:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
																			arg0.ThrustMeterDotsBoot.dots:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
																			arg0.ThrustMeterDotsBoot.fill:setShaderVector(0.000000, 0.483667, 0.000000, 0.000000, 0.000000)
																			arg0.ThrustMeterDotsBoot.dots:setAlpha(0.740000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6328_)
																		end

																		if arg1.interrupted then
																			__FUNC_6058_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																		arg0.ThrustMeterDotsBoot.fill:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
																		arg0.ThrustMeterDotsBoot.dots:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
																		arg0.ThrustMeterDotsBoot.fill:setShaderVector(0.000000, 0.479333, 0.000000, 0.000000, 0.000000)
																		arg0.ThrustMeterDotsBoot.dots:setAlpha(0.720000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6058_)
																	end

																	if arg1.interrupted then
																		__FUNC_5D8B_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
																	arg0.ThrustMeterDotsBoot.fill:beginAnimation("subkeyframe", 310.000000, false, false, CoD.TweenType.Linear)
																	arg0.ThrustMeterDotsBoot.fill:setShaderVector(0.000000, 0.475000, 0.000000, 0.000000, 0.000000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5D8B_)
																end

																if arg1.interrupted then
																	__FUNC_5B51_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																arg0.HashCircle:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
																arg0.ThrustMeterDotsBoot.fill:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
																arg0.HashCircle:setAlpha(0.000000)
																arg0.ThrustMeterDotsBoot.fill:setShaderVector(0.000000, 0.471125, 0.000000, 0.000000, 0.000000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B51_)
															end

															if arg1.interrupted then
																__FUNC_589A_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
															arg0.HashCircle:beginAnimation("subkeyframe", 30.000000, false, false, CoD.TweenType.Linear)
															arg0.ThrustMeterDotsBoot.fill:beginAnimation("subkeyframe", 30.000000, false, false, CoD.TweenType.Linear)
															arg0.HashCircle:setAlpha(0.190000)
															arg0.ThrustMeterDotsBoot.fill:setShaderVector(0.000000, 0.470875, 0.000000, 0.000000, 0.000000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_589A_)
														end

														if arg1.interrupted then
															__FUNC_55DD_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
														arg0.HashCircle:beginAnimation("subkeyframe", 39.000000, false, false, CoD.TweenType.Linear)
														arg0.ThrustMeterDotsBoot.fill:beginAnimation("subkeyframe", 39.000000, false, false, CoD.TweenType.Linear)
														arg0.HashCircle:setAlpha(0.000000)
														arg0.ThrustMeterDotsBoot.fill:setShaderVector(0.000000, 0.470500, 0.000000, 0.000000, 0.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_55DD_)
													end

													if arg1.interrupted then
														__FUNC_5326_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
													arg0.HashCircle:beginAnimation("subkeyframe", 20.000000, false, false, CoD.TweenType.Linear)
													arg0:setZRot(0.000000)
													arg0.HashCircle:setAlpha(0.340000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5326_)
												end

												if arg1.interrupted then
													__FUNC_5116_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
												arg0.HashCircle:beginAnimation("subkeyframe", 39.000000, false, false, CoD.TweenType.Linear)
												arg0:setZRot(5.680000)
												arg0.HashCircle:setAlpha(0.510000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5116_)
											end

											if arg1.interrupted then
												__FUNC_4F06_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
											arg0.HashCircle:beginAnimation("subkeyframe", 79.000000, false, false, CoD.TweenType.Linear)
											arg0:setZRot(28.420000)
											arg0.HashCircle:setAlpha(0.500000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4F06_)
										end

										if arg1.interrupted then
											__FUNC_4CF6_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
										arg0.HashCircle:beginAnimation("subkeyframe", 40.000000, false, false, CoD.TweenType.Linear)
										arg0:setZRot(151.580000)
										arg0.HashCircle:setAlpha(0.480000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4CF6_)
									end

									if arg1.interrupted then
										__FUNC_4AE6_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
									arg0:setZRot(174.320000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4AE6_)
								end

								if arg1.interrupted then
									__FUNC_496C_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_496C_)
							end

							if arg1.interrupted then
								__FUNC_4814_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4814_)
						end

						if arg1.interrupted then
							__FUNC_46BD_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.800000)
						arg0:setZoom(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_46BD_)
					end

					if arg1.interrupted then
						__FUNC_4521_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(true, false, -3.670000, 307.330000)
					arg0:setAlpha(0.520000)
					arg0:setZoom(-64.290000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4521_)
				end

				if arg1.interrupted then
					__FUNC_434F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, -3.790000, 307.210000)
				arg0:setAlpha(0.470000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_434F_)
			end

			if arg1.interrupted then
				__FUNC_419C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, -3.920000, 307.080000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_419C_)
		end

		registerVal4:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Linear)
		registerVal4.HashCircle:beginAnimation("subkeyframe", 439.000000, false, false, CoD.TweenType.Linear)
		registerVal4.ThrustMeterDotsBoot.fill:beginAnimation("subkeyframe", 439.000000, false, false, CoD.TweenType.Linear)
		registerVal4.ThrustMeterDotsBoot.dots:beginAnimation("subkeyframe", 439.000000, false, false, CoD.TweenType.Linear)
		registerVal4:setLeftRight(true, false, 9.170000, 299.830000)
		registerVal4:setTopBottom(true, false, -4.670000, 306.330000)
		registerVal4:setAlpha(0.000000)
		registerVal4:setZRot(180.000000)
		registerVal4:setZoom(-75.000000)
		registerVal4.HashCircle:setAlpha(0.470000)
		registerVal4.ThrustMeterDotsBoot.fill:setShaderVector(0.000000, 0.470000, 0.000000, 0.000000, 0.000000)
		registerVal4.ThrustMeterDotsBoot.dots:setAlpha(1.000000)
		registerVal4:registerEventHandler("transition_complete_keyframe", __FUNC_400F_)
		local function __FUNC_7077_(arg0, arg1)
			local function __FUNC_71EF_(arg0, arg1)
				local function __FUNC_7367_(arg0, arg1)
					local function __FUNC_74DF_(arg0, arg1)
						local function __FUNC_7634_(arg0, arg1)
							local function __FUNC_781F_(arg0, arg1)
								local function __FUNC_7997_(arg0, arg1)
									local function __FUNC_7B0F_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setLeftRight(true, false, 266.000000, 287.330000)
										arg0:setTopBottom(true, false, 19.000000, 43.000000)
										arg0:setAlpha(0.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_7B0F_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.700000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7B0F_)
								end

								if arg1.interrupted then
									__FUNC_7997_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7997_)
							end

							if arg1.interrupted then
								__FUNC_781F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, 266.000000, 287.330000)
							arg0:setTopBottom(true, false, 19.000000, 43.000000)
							arg0:setAlpha(0.700000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_781F_)
						end

						if arg1.interrupted then
							__FUNC_7634_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7634_)
					end

					if arg1.interrupted then
						__FUNC_74DF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_74DF_)
				end

				if arg1.interrupted then
					__FUNC_7367_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7367_)
			end

			if arg1.interrupted then
				__FUNC_71EF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_71EF_)
		end

		registerVal5:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
		registerVal5:setLeftRight(true, false, 246.000000, 267.330000)
		registerVal5:setTopBottom(true, false, 39.000000, 63.000000)
		registerVal5:setAlpha(0.000000)
		registerVal5:registerEventHandler("transition_complete_keyframe", __FUNC_7077_)
		local function __FUNC_7D31_(arg0, arg1)
			local function __FUNC_7EAB_(arg0, arg1)
				local function __FUNC_8023_(arg0, arg1)
					local function __FUNC_819B_(arg0, arg1)
						local function __FUNC_82F0_(arg0, arg1)
							local function __FUNC_84DB_(arg0, arg1)
								local function __FUNC_8653_(arg0, arg1)
									local function __FUNC_87CB_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setLeftRight(true, false, 42.670000, 21.330000)
										arg0:setTopBottom(true, false, 19.000000, 43.000000)
										arg0:setAlpha(0.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_87CB_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.700000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_87CB_)
								end

								if arg1.interrupted then
									__FUNC_8653_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8653_)
							end

							if arg1.interrupted then
								__FUNC_84DB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, 42.670000, 21.330000)
							arg0:setTopBottom(true, false, 19.000000, 43.000000)
							arg0:setAlpha(0.700000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_84DB_)
						end

						if arg1.interrupted then
							__FUNC_82F0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_82F0_)
					end

					if arg1.interrupted then
						__FUNC_819B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_819B_)
				end

				if arg1.interrupted then
					__FUNC_8023_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8023_)
			end

			if arg1.interrupted then
				__FUNC_7EAB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7EAB_)
		end

		registerVal6:beginAnimation("keyframe", 419.000000, false, false, CoD.TweenType.Linear)
		registerVal6:setLeftRight(true, false, 62.670000, 41.330000)
		registerVal6:setTopBottom(true, false, 39.000000, 63.000000)
		registerVal6:setAlpha(0.000000)
		registerVal6:registerEventHandler("transition_complete_keyframe", __FUNC_7D31_)
		local function __FUNC_89ED_(arg0, arg1)
			local function __FUNC_8B67_(arg0, arg1)
				local function __FUNC_8CDF_(arg0, arg1)
					local function __FUNC_8E57_(arg0, arg1)
						local function __FUNC_8FAC_(arg0, arg1)
							local function __FUNC_9197_(arg0, arg1)
								local function __FUNC_930F_(arg0, arg1)
									local function __FUNC_9487_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setLeftRight(true, false, 266.000000, 287.330000)
										arg0:setTopBottom(true, false, 285.000000, 261.000000)
										arg0:setAlpha(0.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_9487_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.700000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9487_)
								end

								if arg1.interrupted then
									__FUNC_930F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_930F_)
							end

							if arg1.interrupted then
								__FUNC_9197_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, 266.000000, 287.330000)
							arg0:setTopBottom(true, false, 285.000000, 261.000000)
							arg0:setAlpha(0.700000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9197_)
						end

						if arg1.interrupted then
							__FUNC_8FAC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8FAC_)
					end

					if arg1.interrupted then
						__FUNC_8E57_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8E57_)
				end

				if arg1.interrupted then
					__FUNC_8CDF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8CDF_)
			end

			if arg1.interrupted then
				__FUNC_8B67_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8B67_)
		end

		registerVal7:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
		registerVal7:setLeftRight(true, false, 246.000000, 267.330000)
		registerVal7:setTopBottom(true, false, 265.000000, 241.000000)
		registerVal7:setAlpha(0.000000)
		registerVal7:registerEventHandler("transition_complete_keyframe", __FUNC_89ED_)
		local function __FUNC_96A9_(arg0, arg1)
			local function __FUNC_9823_(arg0, arg1)
				local function __FUNC_999B_(arg0, arg1)
					local function __FUNC_9B13_(arg0, arg1)
						local function __FUNC_9C68_(arg0, arg1)
							local function __FUNC_9E53_(arg0, arg1)
								local function __FUNC_9FCB_(arg0, arg1)
									local function __FUNC_A143_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setLeftRight(true, false, 42.670000, 21.330000)
										arg0:setTopBottom(true, false, 285.000000, 261.000000)
										arg0:setAlpha(0.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_A143_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.700000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A143_)
								end

								if arg1.interrupted then
									__FUNC_9FCB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9FCB_)
							end

							if arg1.interrupted then
								__FUNC_9E53_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, 42.670000, 21.330000)
							arg0:setTopBottom(true, false, 285.000000, 261.000000)
							arg0:setAlpha(0.700000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9E53_)
						end

						if arg1.interrupted then
							__FUNC_9C68_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9C68_)
					end

					if arg1.interrupted then
						__FUNC_9B13_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9B13_)
				end

				if arg1.interrupted then
					__FUNC_999B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_999B_)
			end

			if arg1.interrupted then
				__FUNC_9823_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9823_)
		end

		registerVal8:beginAnimation("keyframe", 379.000000, false, false, CoD.TweenType.Linear)
		registerVal8:setLeftRight(true, false, 62.670000, 41.330000)
		registerVal8:setTopBottom(true, false, 265.000000, 241.000000)
		registerVal8:setAlpha(0.000000)
		registerVal8:registerEventHandler("transition_complete_keyframe", __FUNC_96A9_)
		local function __FUNC_A365_(arg0, arg1)
			local function __FUNC_A4DF_(arg0, arg1)
				local function __FUNC_A679_(arg0, arg1)
					local function __FUNC_A815_(arg0, arg1)
						local function __FUNC_A96C_(arg0, arg1)
							local function __FUNC_AB09_(arg0, arg1)
								local function __FUNC_AC83_(arg0, arg1)
									local function __FUNC_ADFB_(arg0, arg1)
										local function __FUNC_AF73_(arg0, arg1)
											local function __FUNC_B0EB_(arg0, arg1)
												local function __FUNC_B263_(arg0, arg1)
													if not arg1.interrupted then
														arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
													end
													arg0:setAlpha(0.000000)
													arg0:setZRot(-331.000000)
													if arg1.interrupted then
														registerVal2.clipFinished(arg0, arg1)
													else
														arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
													end
												end

												if arg1.interrupted then
													__FUNC_B263_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(0.600000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B263_)
											end

											if arg1.interrupted then
												__FUNC_B0EB_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B0EB_)
										end

										if arg1.interrupted then
											__FUNC_AF73_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.790000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AF73_)
									end

									if arg1.interrupted then
										__FUNC_ADFB_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ADFB_)
								end

								if arg1.interrupted then
									__FUNC_AC83_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AC83_)
							end

							if arg1.interrupted then
								__FUNC_AB09_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.980000)
							arg0:setZRot(-331.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AB09_)
						end

						if arg1.interrupted then
							__FUNC_A96C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A96C_)
					end

					if arg1.interrupted then
						__FUNC_A815_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.960000)
					arg0:setZRot(-389.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A815_)
				end

				if arg1.interrupted then
					__FUNC_A679_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.950000)
				arg0:setZRot(-276.260000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A679_)
			end

			if arg1.interrupted then
				__FUNC_A4DF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.710000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A4DF_)
		end

		registerVal9:beginAnimation("keyframe", 980.000000, false, false, CoD.TweenType.Linear)
		registerVal9:setAlpha(0.000000)
		registerVal9:setZRot(-270.000000)
		registerVal9:registerEventHandler("transition_complete_keyframe", __FUNC_A365_)
	end

	registerVal11.thrust_boot = __FUNC_22B6_
	registerVal10.DefaultState = registerVal11
	registerVal2.clipsPerState = registerVal10
	local function __FUNC_B437_(arg0)
		arg0.ThrustBootMeterCircle0:close()
		arg0.ThrustBootChevron0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_B437_)
	if __FUNC_946_ then
		__FUNC_946_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ThrustMeterBootContainer.new = __FUNC_1034_
