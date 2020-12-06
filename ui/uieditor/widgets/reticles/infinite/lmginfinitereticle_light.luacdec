-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.lmgInfiniteReticle_light = registerVal1
function CoD.lmgInfiniteReticle_light.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.lmgInfiniteReticle_light)
	registerVal2.id = "lmgInfiniteReticle_light"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 63.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 86.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 62.550000)
	registerVal3:setTopBottom(true, false, 0.000000, 86.000000)
	registerVal3:setImage(RegisterImage("uie_t7_weapon_lmg_lights_02"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
	registerVal3:setShaderVector(0.000000, 0.850000, 1.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.130000, 0.050000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.lights100 = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_63E_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_8EA_(arg0, arg1)
			local function __FUNC_B28_(arg0, arg1)
				local function __FUNC_D68_(arg0, arg1)
					local function __FUNC_FA8_(arg0, arg1)
						local function __FUNC_11E3_(arg0, arg1)
							local function __FUNC_13F8_(arg0, arg1)
								local function __FUNC_1615_(arg0, arg1)
									local function __FUNC_1818_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setAlpha(1.000000)
										arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
										arg0:setShaderVector(0.000000, 0.850000, 1.000000, 0.000000, 0.000000)
										arg0:setShaderVector(1.000000, 0.130000, 0.050000, 0.000000, 0.000000)
										arg0:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
										arg0:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_1818_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
									arg0:setShaderVector(0.000000, 0.850000, 1.000000, 0.000000, 0.000000)
									arg0:setShaderVector(1.000000, 0.130000, 0.050000, 0.000000, 0.000000)
									arg0:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
									arg0:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1818_)
								end

								if arg1.interrupted then
									__FUNC_1615_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
								arg0:setShaderVector(0.000000, 0.700727, 0.851429, 0.000000, 0.000000)
								arg0:setShaderVector(1.000000, 0.115764, 0.071053, 0.000000, 0.000000)
								arg0:setShaderVector(2.000000, 0.186667, 0.810000, 0.000000, 0.000000)
								arg0:setShaderVector(3.000000, 0.098095, 0.100476, 0.000000, 0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1615_)
							end

							if arg1.interrupted then
								__FUNC_13F8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setShaderVector(0.000000, 0.514135, 0.665714, 0.000000, 0.000000)
							arg0:setShaderVector(1.000000, 0.097970, 0.097368, 0.000000, 0.000000)
							arg0:setShaderVector(2.000000, 0.190000, 0.810000, 0.000000, 0.000000)
							arg0:setShaderVector(3.000000, 0.400000, 0.400000, 0.000000, 0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13F8_)
						end

						if arg1.interrupted then
							__FUNC_11E3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:setShaderVector(0.000000, 0.495476, 0.647143, 0.000000, 0.000000)
						arg0:setShaderVector(1.000000, 0.096191, 0.100000, 0.000000, 0.000000)
						arg0:setShaderVector(2.000000, 0.063333, 0.936667, 0.000000, 0.000000)
						arg0:setShaderVector(3.000000, 0.090476, 0.167381, 0.000000, 0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11E3_)
					end

					if arg1.interrupted then
						__FUNC_FA8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:setShaderVector(0.000000, 0.301594, 0.480000, 0.000000, 0.000000)
					arg0:setShaderVector(1.000000, 0.098520, 0.099720, 0.000000, 0.000000)
					arg0:setShaderVector(2.000000, 0.193333, 0.806667, 0.000000, 0.000000)
					arg0:setShaderVector(3.000000, 0.133333, 0.246667, 0.000000, 0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FA8_)
				end

				if arg1.interrupted then
					__FUNC_D68_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.400000)
				arg0:setShaderVector(0.000000, 0.193882, 0.387143, 0.000000, 0.000000)
				arg0:setShaderVector(1.000000, 0.099814, 0.099565, 0.000000, 0.000000)
				arg0:setShaderVector(2.000000, 0.110000, 0.890000, 0.000000, 0.000000)
				arg0:setShaderVector(3.000000, 0.157143, 0.290714, 0.000000, 0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D68_)
			end

			if arg1.interrupted then
				__FUNC_B28_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.310000)
			arg0:setShaderVector(0.000000, 0.107712, 0.312857, 0.000000, 0.000000)
			arg0:setShaderVector(1.000000, 0.099896, 0.099758, 0.000000, 0.000000)
			arg0:setShaderVector(2.000000, 0.193333, 0.806667, 0.000000, 0.000000)
			arg0:setShaderVector(3.000000, 0.176191, 0.325952, 0.000000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B28_)
		end

		registerVal3:completeAnimation()
		registerVal2.lights100:setAlpha(0.000000)
		registerVal2.lights100:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
		registerVal2.lights100:setShaderVector(0.000000, 0.000000, 0.220000, 0.000000, 0.000000)
		registerVal2.lights100:setShaderVector(1.000000, 0.100000, 0.100000, 0.000000, 0.000000)
		registerVal2.lights100:setShaderVector(2.000000, 0.140000, 0.860000, 0.000000, 0.000000)
		registerVal2.lights100:setShaderVector(3.000000, 0.200000, 0.370000, 0.000000, 0.000000)
		__FUNC_8EA_(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_63E_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

