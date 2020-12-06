-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChooseCharacterLoadout_CardBack_TransmissionWaveForm = registerVal1
function CoD.ChooseCharacterLoadout_CardBack_TransmissionWaveForm.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChooseCharacterLoadout_CardBack_TransmissionWaveForm)
	registerVal2.id = "ChooseCharacterLoadout_CardBack_TransmissionWaveForm"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 139.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 46.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, -0.500000)
	registerVal3:setRGB(0.300000, 0.940000, 1.000000)
	registerVal3:setImage(RegisterImage("uie_gradient_noise"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_blackhat_waveform"))
	registerVal3:setShaderVector(0.000000, 0.500000, 0.740000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.waveForm = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_687_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.waveForm:setAlpha(0.000000)
		registerVal2.waveForm:setMaterial(LUI.UIImage.GetCachedMaterial("uie_blackhat_waveform"))
		registerVal2.waveForm:setShaderVector(0.000000, 0.500000, 0.740000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_687_
	local function __FUNC_87C_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_962_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.waveForm:setAlpha(0.000000)
		__FUNC_962_(registerVal3, {})
	end

	registerVal5.Visible = __FUNC_87C_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_B15_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_CF3_(arg0, arg1)
			local function __FUNC_E8C_(arg0, arg1)
				local function __FUNC_1028_(arg0, arg1)
					local function __FUNC_11C4_(arg0, arg1)
						local function __FUNC_1360_(arg0, arg1)
							local function __FUNC_14FC_(arg0, arg1)
								local function __FUNC_1698_(arg0, arg1)
									local function __FUNC_1834_(arg0, arg1)
										local function __FUNC_19D0_(arg0, arg1)
											local function __FUNC_1B6C_(arg0, arg1)
												local function __FUNC_1D08_(arg0, arg1)
													local function __FUNC_1EA4_(arg0, arg1)
														if not arg1.interrupted then
															arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
														end
														arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_blackhat_waveform"))
														arg0:setShaderVector(0.000000, 0.500000, 0.740000, 0.000000, 0.000000)
														if arg1.interrupted then
															registerVal2.clipFinished(arg0, arg1)
														else
															arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
														end
													end

													if arg1.interrupted then
														__FUNC_1EA4_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 539.000000, false, false, CoD.TweenType.Linear)
													arg0:setShaderVector(0.000000, 0.618177, 0.135745, 0.000000, 0.000000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EA4_)
												end

												if arg1.interrupted then
													__FUNC_1D08_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
												arg0:setShaderVector(0.000000, 0.777716, 0.260000, 0.000000, 0.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D08_)
											end

											if arg1.interrupted then
												__FUNC_1B6C_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 629.000000, false, false, CoD.TweenType.Linear)
											arg0:setShaderVector(0.000000, 0.708700, 0.895243, 0.000000, 0.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B6C_)
										end

										if arg1.interrupted then
											__FUNC_19D0_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 900.000000, false, false, CoD.TweenType.Linear)
										arg0:setShaderVector(0.000000, 0.600000, 0.840000, 0.000000, 0.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19D0_)
									end

									if arg1.interrupted then
										__FUNC_1834_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 920.000000, false, false, CoD.TweenType.Linear)
									arg0:setShaderVector(0.000000, 0.693496, 0.330220, 0.000000, 0.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1834_)
								end

								if arg1.interrupted then
									__FUNC_1698_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 670.000000, false, false, CoD.TweenType.Linear)
								arg0:setShaderVector(0.000000, 0.789069, 0.800000, 0.000000, 0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1698_)
							end

							if arg1.interrupted then
								__FUNC_14FC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 539.000000, false, false, CoD.TweenType.Linear)
							arg0:setShaderVector(0.000000, 0.651155, 0.399422, 0.000000, 0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14FC_)
						end

						if arg1.interrupted then
							__FUNC_1360_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 1159.000000, false, false, CoD.TweenType.Linear)
						arg0:setShaderVector(0.000000, 0.540000, 0.510000, 0.000000, 0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1360_)
					end

					if arg1.interrupted then
						__FUNC_11C4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 780.000000, false, false, CoD.TweenType.Linear)
					arg0:setShaderVector(0.000000, 0.330000, 0.990000, 0.000000, 0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11C4_)
				end

				if arg1.interrupted then
					__FUNC_1028_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 369.000000, false, false, CoD.TweenType.Linear)
				arg0:setShaderVector(0.000000, 0.402065, 0.316783, 0.000000, 0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1028_)
			end

			if arg1.interrupted then
				__FUNC_E8C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 689.000000, false, false, CoD.TweenType.Linear)
			arg0:setShaderVector(0.000000, 0.436250, 1.000000, 0.000000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E8C_)
		end

		registerVal3:completeAnimation()
		registerVal2.waveForm:setMaterial(LUI.UIImage.GetCachedMaterial("uie_blackhat_waveform"))
		registerVal2.waveForm:setShaderVector(0.000000, 0.500000, 0.740000, 0.000000, 0.000000)
		__FUNC_CF3_(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_B15_
	local function __FUNC_2113_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_21F1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.waveForm:setAlpha(1.000000)
		__FUNC_21F1_(registerVal3, {})
	end

	registerVal5.DefaultState = __FUNC_2113_
	registerVal4.Visible = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

