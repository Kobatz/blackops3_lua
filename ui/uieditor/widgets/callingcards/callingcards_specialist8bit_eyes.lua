-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_Specialist8bit_eyes = registerVal1
function CoD.CallingCards_Specialist8bit_eyes.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCards_Specialist8bit_eyes)
	registerVal2.id = "CallingCards_Specialist8bit_eyes"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 36.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 24.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 36.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_mp_specialist8bit_eyes"))
	registerVal2:addElement(registerVal3)
	registerVal2.eyes = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_537_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_640_(arg0, arg1)
			local function __FUNC_798_(arg0, arg1)
				local function __FUNC_913_(arg0, arg1)
					local function __FUNC_A68_(arg0, arg1)
						local function __FUNC_BE3_(arg0, arg1)
							local function __FUNC_D38_(arg0, arg1)
								local function __FUNC_EB3_(arg0, arg1)
									local function __FUNC_1008_(arg0, arg1)
										local function __FUNC_1183_(arg0, arg1)
											local function __FUNC_12D8_(arg0, arg1)
												local function __FUNC_1453_(arg0, arg1)
													local function __FUNC_15A8_(arg0, arg1)
														local function __FUNC_1723_(arg0, arg1)
															local function __FUNC_1878_(arg0, arg1)
																if not arg1.interrupted then
																	arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
																end
																arg0:setAlpha(0.000000)
																if arg1.interrupted then
																	registerVal2.clipFinished(arg0, arg1)
																else
																	arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																end
															end

															if arg1.interrupted then
																__FUNC_1878_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 799.000000, false, false, CoD.TweenType.Linear)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1878_)
														end

														if arg1.interrupted then
															__FUNC_1723_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
														arg0:setAlpha(1.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1723_)
													end

													if arg1.interrupted then
														__FUNC_15A8_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15A8_)
												end

												if arg1.interrupted then
													__FUNC_1453_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(0.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1453_)
											end

											if arg1.interrupted then
												__FUNC_12D8_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 799.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12D8_)
										end

										if arg1.interrupted then
											__FUNC_1183_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(1.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1183_)
									end

									if arg1.interrupted then
										__FUNC_1008_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1008_)
								end

								if arg1.interrupted then
									__FUNC_EB3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EB3_)
							end

							if arg1.interrupted then
								__FUNC_D38_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 800.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D38_)
						end

						if arg1.interrupted then
							__FUNC_BE3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BE3_)
					end

					if arg1.interrupted then
						__FUNC_A68_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A68_)
				end

				if arg1.interrupted then
					__FUNC_913_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_913_)
			end

			if arg1.interrupted then
				__FUNC_798_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 800.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_798_)
		end

		registerVal3:completeAnimation()
		registerVal2.eyes:setAlpha(1.000000)
		__FUNC_640_(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_537_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

