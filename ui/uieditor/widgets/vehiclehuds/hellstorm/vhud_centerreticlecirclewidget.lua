-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_CenterReticleCircleWidget = registerVal1
function CoD.vhud_CenterReticleCircleWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.vhud_CenterReticleCircleWidget)
	registerVal2.id = "vhud_CenterReticleCircleWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 68.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 68.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -34.000000, 34.000000)
	registerVal3:setTopBottom(false, false, -34.000000, 34.000000)
	registerVal3:setRGB(1.000000, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_hellstorm_centerreticle"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.CenterReticle = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_916_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_A29_(arg0, arg1)
			local function __FUNC_BA3_(arg0, arg1)
				local function __FUNC_D1B_(arg0, arg1)
					local function __FUNC_E93_(arg0, arg1)
						local function __FUNC_100B_(arg0, arg1)
							local function __FUNC_1183_(arg0, arg1)
								local function __FUNC_12FB_(arg0, arg1)
									local function __FUNC_1473_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setAlpha(1.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_1473_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.100000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1473_)
								end

								if arg1.interrupted then
									__FUNC_12FB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12FB_)
							end

							if arg1.interrupted then
								__FUNC_1183_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.100000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1183_)
						end

						if arg1.interrupted then
							__FUNC_100B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_100B_)
					end

					if arg1.interrupted then
						__FUNC_E93_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.080000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E93_)
				end

				if arg1.interrupted then
					__FUNC_D1B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D1B_)
			end

			if arg1.interrupted then
				__FUNC_BA3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.110000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BA3_)
		end

		registerVal3:completeAnimation()
		registerVal2.CenterReticle:setAlpha(1.000000)
		__FUNC_A29_(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_916_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_1625_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.CenterReticle:setLeftRight(false, false, -35.500000, 32.500000)
		registerVal2.CenterReticle:setTopBottom(false, false, -34.500000, 33.500000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_1625_
	local function __FUNC_1786_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultState = __FUNC_1786_
	local function __FUNC_17E6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.LowAltitude_Slow = __FUNC_17E6_
	local function __FUNC_1846_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.LowAltitude_Boost = __FUNC_1846_
	registerVal4.LowAltitude = registerVal5
	registerVal5 = {}
	local function __FUNC_18A6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_18A6_
	local function __FUNC_1906_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultState = __FUNC_1906_
	local function __FUNC_1966_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.LowAltitude = __FUNC_1966_
	local function __FUNC_19C6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.LowAltitude_Boost = __FUNC_19C6_
	registerVal4.LowAltitude_Slow = registerVal5
	registerVal5 = {}
	local function __FUNC_1A26_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_1A26_
	local function __FUNC_1A86_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultState = __FUNC_1A86_
	local function __FUNC_1AE6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.LowAltitude = __FUNC_1AE6_
	local function __FUNC_1B46_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.LowAltitude_Slow = __FUNC_1B46_
	registerVal4.LowAltitude_Boost = registerVal5
	registerVal5 = {}
	local function __FUNC_1BA6_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.CenterReticle:setLeftRight(false, false, -35.500000, 32.500000)
		registerVal2.CenterReticle:setTopBottom(false, false, -34.500000, 33.500000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_1BA6_
	local function __FUNC_1D06_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultState = __FUNC_1D06_
	local function __FUNC_1D66_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.CenterReticle:setLeftRight(false, false, -35.500000, 32.500000)
		registerVal2.CenterReticle:setTopBottom(false, false, -34.500000, 33.500000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.LowAltitude = __FUNC_1D66_
	local function __FUNC_1EC6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.MediumAltitude_Boost = __FUNC_1EC6_
	local function __FUNC_1F26_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.MediumAltitude_Slow = __FUNC_1F26_
	registerVal4.MediumAltitude = registerVal5
	registerVal5 = {}
	local function __FUNC_1F86_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_1F86_
	local function __FUNC_1FE6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultState = __FUNC_1FE6_
	local function __FUNC_2046_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.LowAltitude_Slow = __FUNC_2046_
	local function __FUNC_20A6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.MediumAltitude = __FUNC_20A6_
	local function __FUNC_2106_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.MediumAltitude_Boost = __FUNC_2106_
	registerVal4.MediumAltitude_Slow = registerVal5
	registerVal5 = {}
	local function __FUNC_2166_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_2166_
	local function __FUNC_21C6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultState = __FUNC_21C6_
	local function __FUNC_2226_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.LowAltitude_Boost = __FUNC_2226_
	local function __FUNC_2286_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.MediumAltitude = __FUNC_2286_
	local function __FUNC_22E6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.MediumAltitude_Slow = __FUNC_22E6_
	registerVal4.MediumAltitude_Boost = registerVal5
	registerVal5 = {}
	local function __FUNC_2346_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.CenterReticle:setLeftRight(false, false, -35.500000, 32.500000)
		registerVal2.CenterReticle:setTopBottom(false, false, -34.500000, 33.500000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_2346_
	local function __FUNC_24A6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultState = __FUNC_24A6_
	local function __FUNC_2506_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.CenterReticle:setLeftRight(false, false, -35.500000, 32.500000)
		registerVal2.CenterReticle:setTopBottom(false, false, -34.500000, 33.500000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.MediumAltitude = __FUNC_2506_
	local function __FUNC_2666_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.HighAltitude_Boost = __FUNC_2666_
	local function __FUNC_26C6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.HighAltitude_Slow = __FUNC_26C6_
	registerVal4.HighAltitude = registerVal5
	registerVal5 = {}
	local function __FUNC_2726_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_2726_
	local function __FUNC_2786_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultState = __FUNC_2786_
	local function __FUNC_27E6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.MediumAltitude_Slow = __FUNC_27E6_
	local function __FUNC_2846_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.HighAltitude = __FUNC_2846_
	local function __FUNC_28A6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.HighAltitude_Boost = __FUNC_28A6_
	registerVal4.HighAltitude_Slow = registerVal5
	registerVal5 = {}
	local function __FUNC_2906_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_2906_
	local function __FUNC_2966_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultState = __FUNC_2966_
	local function __FUNC_29C6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.MediumAltitude_Boost = __FUNC_29C6_
	local function __FUNC_2A26_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.HighAltitude = __FUNC_2A26_
	local function __FUNC_2A86_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.HighAltitude_Slow = __FUNC_2A86_
	registerVal4.HighAltitude_Boost = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

