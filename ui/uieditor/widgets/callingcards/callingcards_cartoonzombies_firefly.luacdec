-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_CartoonZombies_Firefly = registerVal1
function CoD.CallingCards_CartoonZombies_Firefly.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCards_CartoonZombies_Firefly)
	registerVal2.id = "CallingCards_CartoonZombies_Firefly"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 119.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 118.850000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_cartoonzombies_firefly_flipbook"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_flipbook"))
	registerVal3:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 22.590000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Fly1 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -12.440000, 143.560000)
	registerVal4:setTopBottom(true, false, -12.000000, 144.000000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcard_cartoonzombies_fireflyglow"))
	registerVal2:addElement(registerVal4)
	registerVal2.Light = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_6EC_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_7FE_(arg0, arg1)
			local function __FUNC_977_(arg0, arg1)
				local function __FUNC_AEF_(arg0, arg1)
					local function __FUNC_C67_(arg0, arg1)
						local function __FUNC_DDF_(arg0, arg1)
							local function __FUNC_F57_(arg0, arg1)
								local function __FUNC_10CF_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.200000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_10CF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 510.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10CF_)
							end

							if arg1.interrupted then
								__FUNC_F57_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 490.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.800000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F57_)
						end

						if arg1.interrupted then
							__FUNC_DDF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.200000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DDF_)
					end

					if arg1.interrupted then
						__FUNC_C67_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 1009.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C67_)
				end

				if arg1.interrupted then
					__FUNC_AEF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AEF_)
			end

			if arg1.interrupted then
				__FUNC_977_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 560.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_977_)
		end

		registerVal4:completeAnimation()
		registerVal2.Light:setAlpha(0.200000)
		__FUNC_7FE_(registerVal4, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal6.DefaultClip = __FUNC_6EC_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

