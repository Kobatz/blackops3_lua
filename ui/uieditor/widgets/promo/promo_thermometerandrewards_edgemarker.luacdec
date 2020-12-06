-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Promo_ThermometerAndRewards_EdgeMarker = registerVal1
function CoD.Promo_ThermometerAndRewards_EdgeMarker.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Promo_ThermometerAndRewards_EdgeMarker)
	registerVal2.id = "Promo_ThermometerAndRewards_EdgeMarker"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 102.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 50.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 2.310000, 99.310000)
	registerVal3:setTopBottom(true, false, -1.000000, 37.800000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_topglow2"))
	registerVal2:addElement(registerVal3)
	registerVal2.EdgeGlow = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 2.310000, 99.310000)
	registerVal4:setTopBottom(true, false, 0.000000, 38.800000)
	registerVal4:setAlpha(0.450000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_topglow2"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.EdgeGlowAdd = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 22.060000, 79.560000)
	registerVal5:setTopBottom(true, false, 0.000000, 23.000000)
	registerVal5:setAlpha(0.830000)
	registerVal5:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_spark_flipbook"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_flipbook"))
	registerVal5:setShaderVector(0.000000, 5.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 7.670000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.FlipbookAdd = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 22.060000, 79.560000)
	registerVal6:setTopBottom(true, false, 0.000000, 23.000000)
	registerVal6:setAlpha(0.130000)
	registerVal6:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_spark_flipbook"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_flipbook"))
	registerVal6:setShaderVector(0.000000, 5.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 22.070000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.Flipbook1 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 0.000000, 101.630000)
	registerVal7:setTopBottom(true, false, -1.000000, 49.000000)
	registerVal7:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_topglow"))
	registerVal2:addElement(registerVal7)
	registerVal2.EdgeMarker = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_A01_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.EdgeGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.EdgeGlowAdd:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FlipbookAdd:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Flipbook1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.EdgeMarker:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_A01_
	local function __FUNC_C66_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_EEC_(arg0, arg1)
			local function __FUNC_1067_(arg0, arg1)
				local function __FUNC_11DF_(arg0, arg1)
					local function __FUNC_1357_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_1357_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 819.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.950000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1357_)
				end

				if arg1.interrupted then
					__FUNC_11DF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 780.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.400000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11DF_)
			end

			if arg1.interrupted then
				__FUNC_1067_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1067_)
		end

		registerVal3:completeAnimation()
		registerVal2.EdgeGlow:setAlpha(0.000000)
		__FUNC_EEC_(registerVal3, {})
		local function __FUNC_1509_(arg0, arg1)
			local function __FUNC_1683_(arg0, arg1)
				local function __FUNC_17FB_(arg0, arg1)
					local function __FUNC_1973_(arg0, arg1)
						local function __FUNC_1AEB_(arg0, arg1)
							local function __FUNC_1C40_(arg0, arg1)
								local function __FUNC_1DBB_(arg0, arg1)
									local function __FUNC_1F33_(arg0, arg1)
										local function __FUNC_20AB_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 320.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setAlpha(0.000000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_20AB_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.550000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20AB_)
									end

									if arg1.interrupted then
										__FUNC_1F33_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F33_)
								end

								if arg1.interrupted then
									__FUNC_1DBB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.450000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DBB_)
							end

							if arg1.interrupted then
								__FUNC_1C40_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 669.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C40_)
						end

						if arg1.interrupted then
							__FUNC_1AEB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AEB_)
					end

					if arg1.interrupted then
						__FUNC_1973_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.550000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1973_)
				end

				if arg1.interrupted then
					__FUNC_17FB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17FB_)
			end

			if arg1.interrupted then
				__FUNC_1683_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.450000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1683_)
		end

		registerVal4:completeAnimation()
		registerVal2.EdgeGlowAdd:setAlpha(0.000000)
		__FUNC_1509_(registerVal4, {})
		local function __FUNC_225D_(arg0, arg1)
			local function __FUNC_23D7_(arg0, arg1)
				local function __FUNC_252C_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_252C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1599.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_252C_)
			end

			if arg1.interrupted then
				__FUNC_23D7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23D7_)
		end

		registerVal5:completeAnimation()
		registerVal2.FlipbookAdd:setAlpha(0.000000)
		__FUNC_225D_(registerVal5, {})
		local function __FUNC_26E1_(arg0, arg1)
			local function __FUNC_285B_(arg0, arg1)
				local function __FUNC_29B0_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_29B0_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1599.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29B0_)
			end

			if arg1.interrupted then
				__FUNC_285B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.240000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_285B_)
		end

		registerVal6:completeAnimation()
		registerVal2.Flipbook1:setAlpha(0.000000)
		__FUNC_26E1_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.EdgeMarker:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal2.nextClip = "LoopAfterIntro"
	end

	registerVal9.LoopAfterIntro = __FUNC_C66_
	registerVal8.DefaultState = registerVal9
	registerVal2.clipsPerState = registerVal8
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

