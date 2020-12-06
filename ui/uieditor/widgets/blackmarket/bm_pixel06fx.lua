-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_Pixel06FX = registerVal1
function CoD.BM_Pixel06FX.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_Pixel06FX)
	registerVal2.id = "BM_Pixel06FX"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 380.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 476.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 380.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 476.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_limited_circuits_dots2"))
	registerVal2:addElement(registerVal3)
	registerVal2.Pixels04 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 380.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 476.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_pixelanim_mask"))
	registerVal2:addElement(registerVal4)
	registerVal2.mask = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_612_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_7A6_(arg0, arg1)
			local function __FUNC_8FC_(arg0, arg1)
				local function __FUNC_A77_(arg0, arg1)
					local function __FUNC_BCC_(arg0, arg1)
						local function __FUNC_D47_(arg0, arg1)
							local function __FUNC_E9C_(arg0, arg1)
								local function __FUNC_FF4_(arg0, arg1)
									local function __FUNC_116F_(arg0, arg1)
										local function __FUNC_12C4_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setAlpha(0.000000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_12C4_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 1419.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12C4_)
									end

									if arg1.interrupted then
										__FUNC_116F_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(1.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_116F_)
								end

								if arg1.interrupted then
									__FUNC_FF4_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 539.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FF4_)
							end

							if arg1.interrupted then
								__FUNC_E9C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 779.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E9C_)
						end

						if arg1.interrupted then
							__FUNC_D47_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D47_)
					end

					if arg1.interrupted then
						__FUNC_BCC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 1420.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BCC_)
				end

				if arg1.interrupted then
					__FUNC_A77_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A77_)
			end

			if arg1.interrupted then
				__FUNC_8FC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 540.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8FC_)
		end

		registerVal3:completeAnimation()
		registerVal2.Pixels04:setAlpha(0.000000)
		__FUNC_7A6_(registerVal3, {})
		local function __FUNC_1479_(arg0, arg1)
			local function __FUNC_15D0_(arg0, arg1)
				local function __FUNC_174B_(arg0, arg1)
					local function __FUNC_18C3_(arg0, arg1)
						local function __FUNC_1A3B_(arg0, arg1)
							local function __FUNC_1BB3_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 510.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(1.000000)
								arg0:setScale(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_1BB3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 1490.000000, false, false, CoD.TweenType.Linear)
							arg0:setScale(1.500000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BB3_)
						end

						if arg1.interrupted then
							__FUNC_1A3B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
						arg0:setScale(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A3B_)
					end

					if arg1.interrupted then
						__FUNC_18C3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 809.000000, false, false, CoD.TweenType.Linear)
					arg0:setScale(1.190000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18C3_)
				end

				if arg1.interrupted then
					__FUNC_174B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1490.000000, false, false, CoD.TweenType.Linear)
				arg0:setScale(1.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_174B_)
			end

			if arg1.interrupted then
				__FUNC_15D0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15D0_)
		end

		registerVal4:completeAnimation()
		registerVal2.mask:setAlpha(1.000000)
		registerVal2.mask:setScale(1.000000)
		__FUNC_1479_(registerVal4, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal6.DefaultClip = __FUNC_612_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

