-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ConsoleIcon = registerVal1
function CoD.ConsoleIcon.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ConsoleIcon)
	registerVal2.id = "ConsoleIcon"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 15.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 14.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_death_headshot"))
	registerVal2:addElement(registerVal3)
	registerVal2.Icon = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_54E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_54E_
	local function __FUNC_5AE_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_68E_(arg0, arg1)
			local function __FUNC_807_(arg0, arg1)
				local function __FUNC_95C_(arg0, arg1)
					local function __FUNC_AD7_(arg0, arg1)
						local function __FUNC_C2C_(arg0, arg1)
							local function __FUNC_DA7_(arg0, arg1)
								local function __FUNC_EFC_(arg0, arg1)
									local function __FUNC_1077_(arg0, arg1)
										local function __FUNC_11EF_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setAlpha(1.000000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_11EF_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.750000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11EF_)
									end

									if arg1.interrupted then
										__FUNC_1077_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.740000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1077_)
								end

								if arg1.interrupted then
									__FUNC_EFC_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EFC_)
							end

							if arg1.interrupted then
								__FUNC_DA7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DA7_)
						end

						if arg1.interrupted then
							__FUNC_C2C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C2C_)
					end

					if arg1.interrupted then
						__FUNC_AD7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.400000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AD7_)
				end

				if arg1.interrupted then
					__FUNC_95C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_95C_)
			end

			if arg1.interrupted then
				__FUNC_807_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_807_)
		end

		registerVal3:completeAnimation()
		registerVal2.Icon:setAlpha(0.000000)
		__FUNC_68E_(registerVal3, {})
	end

	registerVal5.FadeIn = __FUNC_5AE_
	local function __FUNC_13A1_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_147D_(arg0, arg1)
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
		registerVal2.Icon:setAlpha(1.000000)
		__FUNC_147D_(registerVal3, {})
	end

	registerVal5.FadeOut = __FUNC_13A1_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

