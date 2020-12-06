-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_AbilityIcon = registerVal1
function CoD.AmmoWidget_AbilityIcon.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_AbilityIcon)
	registerVal2.id = "AmmoWidget_AbilityIcon"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 37.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 37.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, -0.330000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.330000)
	registerVal3:setupUIStreamedImage(0.000000)
	local function __FUNC_5C7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "HeroWeapon", "imageAvailable", __FUNC_5C7_)
	registerVal2:addElement(registerVal3)
	registerVal2.ImgIcon = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_678_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ImgIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_678_
	local function __FUNC_772_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_855_(arg0, arg1)
			local function __FUNC_9CF_(arg0, arg1)
				local function __FUNC_B24_(arg0, arg1)
					local function __FUNC_C9F_(arg0, arg1)
						local function __FUNC_DF4_(arg0, arg1)
							local function __FUNC_F6F_(arg0, arg1)
								local function __FUNC_10C4_(arg0, arg1)
									local function __FUNC_123F_(arg0, arg1)
										local function __FUNC_1394_(arg0, arg1)
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
											__FUNC_1394_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1394_)
									end

									if arg1.interrupted then
										__FUNC_123F_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_123F_)
								end

								if arg1.interrupted then
									__FUNC_10C4_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10C4_)
							end

							if arg1.interrupted then
								__FUNC_F6F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F6F_)
						end

						if arg1.interrupted then
							__FUNC_DF4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DF4_)
					end

					if arg1.interrupted then
						__FUNC_C9F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C9F_)
				end

				if arg1.interrupted then
					__FUNC_B24_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B24_)
			end

			if arg1.interrupted then
				__FUNC_9CF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9CF_)
		end

		registerVal3:completeAnimation()
		registerVal2.ImgIcon:setAlpha(0.000000)
		__FUNC_855_(registerVal3, {})
	end

	registerVal5.Update = __FUNC_772_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_1549_(arg0)
		arg0.ImgIcon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1549_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

