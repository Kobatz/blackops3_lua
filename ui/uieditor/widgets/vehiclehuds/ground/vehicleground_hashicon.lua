-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.VehicleGround_HashIcon = registerVal1
function CoD.VehicleGround_HashIcon.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.VehicleGround_HashIcon)
	registerVal2.id = "VehicleGround_HashIcon"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 32.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 16.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_hashringsmallicon"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.HashIcon = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_596_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_6AA_(arg0, arg1)
			local function __FUNC_800_(arg0, arg1)
				local function __FUNC_981_(arg0, arg1)
					local function __FUNC_AD8_(arg0, arg1)
						local function __FUNC_C5E_(arg0, arg1)
							local function __FUNC_DB4_(arg0, arg1)
								local function __FUNC_F35_(arg0, arg1)
									local function __FUNC_108C_(arg0, arg1)
										local function __FUNC_120D_(arg0, arg1)
											local function __FUNC_1364_(arg0, arg1)
												local function __FUNC_14EA_(arg0, arg1)
													local function __FUNC_1640_(arg0, arg1)
														local function __FUNC_17C1_(arg0, arg1)
															local function __FUNC_1918_(arg0, arg1)
																local function __FUNC_1A99_(arg0, arg1)
																	if not arg1.interrupted then
																		arg0:beginAnimation("keyframe", 540.000000, false, false, CoD.TweenType.Linear)
																	end
																	arg0:setRGB(1.000000, 1.000000, 1.000000)
																	if arg1.interrupted then
																		registerVal2.clipFinished(arg0, arg1)
																	else
																		arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																	end
																end

																if arg1.interrupted then
																	__FUNC_1A99_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																arg0:setRGB(1.000000, 1.000000, 1.000000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A99_)
															end

															if arg1.interrupted then
																__FUNC_1918_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1918_)
														end

														if arg1.interrupted then
															__FUNC_17C1_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
														arg0:setRGB(0.000000, 0.000000, 0.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17C1_)
													end

													if arg1.interrupted then
														__FUNC_1640_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1640_)
												end

												if arg1.interrupted then
													__FUNC_14EA_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
												arg0:setRGB(1.000000, 0.000000, 0.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14EA_)
											end

											if arg1.interrupted then
												__FUNC_1364_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1364_)
										end

										if arg1.interrupted then
											__FUNC_120D_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setRGB(0.000000, 0.000000, 0.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_120D_)
									end

									if arg1.interrupted then
										__FUNC_108C_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_108C_)
								end

								if arg1.interrupted then
									__FUNC_F35_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setRGB(1.000000, 1.000000, 1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F35_)
							end

							if arg1.interrupted then
								__FUNC_DB4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 519.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DB4_)
						end

						if arg1.interrupted then
							__FUNC_C5E_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setRGB(1.000000, 0.000000, 0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C5E_)
					end

					if arg1.interrupted then
						__FUNC_AD8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AD8_)
				end

				if arg1.interrupted then
					__FUNC_981_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setRGB(0.000000, 0.000000, 0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_981_)
			end

			if arg1.interrupted then
				__FUNC_800_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_800_)
		end

		registerVal3:completeAnimation()
		registerVal2.HashIcon:setRGB(1.000000, 1.000000, 1.000000)
		__FUNC_6AA_(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_596_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

