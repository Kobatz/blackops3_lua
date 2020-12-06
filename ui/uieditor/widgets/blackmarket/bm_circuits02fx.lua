-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_Circuits02FX = registerVal1
function CoD.BM_Circuits02FX.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_Circuits02FX)
	registerVal2.id = "BM_Circuits02FX"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 380.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 476.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 380.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 476.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_limited_circuits"))
	registerVal2:addElement(registerVal3)
	registerVal2.Pixels04 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 380.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 476.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_pixelanim_mask2"))
	registerVal2:addElement(registerVal4)
	registerVal2.mask = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_614_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_791_(arg0, arg1)
			local function __FUNC_90B_(arg0, arg1)
				local function __FUNC_A83_(arg0, arg1)
					local function __FUNC_BFB_(arg0, arg1)
						local function __FUNC_D73_(arg0, arg1)
							local function __FUNC_EEB_(arg0, arg1)
								local function __FUNC_1063_(arg0, arg1)
									local function __FUNC_11DB_(arg0, arg1)
										local function __FUNC_1353_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 569.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setAlpha(0.000000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_1353_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.350000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1353_)
									end

									if arg1.interrupted then
										__FUNC_11DB_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.590000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11DB_)
								end

								if arg1.interrupted then
									__FUNC_1063_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.190000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1063_)
							end

							if arg1.interrupted then
								__FUNC_EEB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.780000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EEB_)
						end

						if arg1.interrupted then
							__FUNC_D73_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.260000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D73_)
					end

					if arg1.interrupted then
						__FUNC_BFB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BFB_)
				end

				if arg1.interrupted then
					__FUNC_A83_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.300000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A83_)
			end

			if arg1.interrupted then
				__FUNC_90B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_90B_)
		end

		registerVal3:completeAnimation()
		registerVal2.Pixels04:setAlpha(0.000000)
		__FUNC_791_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.mask:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal6.DefaultClip = __FUNC_614_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

