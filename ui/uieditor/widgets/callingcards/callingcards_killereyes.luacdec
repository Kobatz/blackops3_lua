-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_KillerEyes = registerVal1
function CoD.CallingCards_KillerEyes.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCards_KillerEyes)
	registerVal2.id = "CallingCards_KillerEyes"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 32.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 12.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 32.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 12.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_killer_creepereyes"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.eyes = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_58E_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_698_(arg0, arg1)
			local function __FUNC_813_(arg0, arg1)
				local function __FUNC_98B_(arg0, arg1)
					local function __FUNC_B03_(arg0, arg1)
						local function __FUNC_C7B_(arg0, arg1)
							local function __FUNC_DF3_(arg0, arg1)
								local function __FUNC_F6B_(arg0, arg1)
									local function __FUNC_10E3_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setAlpha(1.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_10E3_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 390.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.600000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10E3_)
								end

								if arg1.interrupted then
									__FUNC_F6B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F6B_)
							end

							if arg1.interrupted then
								__FUNC_DF3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.220000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DF3_)
						end

						if arg1.interrupted then
							__FUNC_C7B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C7B_)
					end

					if arg1.interrupted then
						__FUNC_B03_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 779.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B03_)
				end

				if arg1.interrupted then
					__FUNC_98B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_98B_)
			end

			if arg1.interrupted then
				__FUNC_813_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.420000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_813_)
		end

		registerVal3:completeAnimation()
		registerVal2.eyes:setAlpha(1.000000)
		__FUNC_698_(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_58E_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

