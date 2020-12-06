-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AbilityWheel_DescriptionText = registerVal1
function CoD.AbilityWheel_DescriptionText.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AbilityWheel_DescriptionText)
	registerVal2.id = "AbilityWheel_DescriptionText"
	registerVal2.soundSet = "AbilityWheel"
	registerVal2:setLeftRight(true, false, 0.000000, 197.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 38.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(false, false, -98.500000, 98.500000)
	registerVal3:setTopBottom(false, false, -9.500000, 9.500000)
	registerVal3:setRGB(1.000000, 0.930000, 0.240000)
	registerVal3:setAlpha(0.900000)
	registerVal3:setText(Engine.Localize("System Overload"))
	registerVal3:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal3:setLetterSpacing(1.000000)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	registerVal2:addElement(registerVal3)
	registerVal2.TextName = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_70C_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_70C_
	local function __FUNC_76E_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_852_(arg0, arg1)
			local function __FUNC_9A8_(arg0, arg1)
				local function __FUNC_B23_(arg0, arg1)
					local function __FUNC_C78_(arg0, arg1)
						local function __FUNC_DF3_(arg0, arg1)
							local function __FUNC_F48_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_F48_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F48_)
						end

						if arg1.interrupted then
							__FUNC_DF3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DF3_)
					end

					if arg1.interrupted then
						__FUNC_C78_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C78_)
				end

				if arg1.interrupted then
					__FUNC_B23_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B23_)
			end

			if arg1.interrupted then
				__FUNC_9A8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9A8_)
		end

		registerVal3:completeAnimation()
		registerVal2.TextName:setAlpha(0.900000)
		__FUNC_852_(registerVal3, {})
	end

	registerVal5.Inactive = __FUNC_76E_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_10FD_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.TextName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_10FD_
	local function __FUNC_11FC_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_1314_(arg0, arg1)
			local function __FUNC_148F_(arg0, arg1)
				local function __FUNC_15E4_(arg0, arg1)
					local function __FUNC_175F_(arg0, arg1)
						local function __FUNC_18B4_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.900000)
							arg0:setZoom(-100.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_18B4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18B4_)
					end

					if arg1.interrupted then
						__FUNC_175F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_175F_)
				end

				if arg1.interrupted then
					__FUNC_15E4_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15E4_)
			end

			if arg1.interrupted then
				__FUNC_148F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.900000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_148F_)
		end

		registerVal3:completeAnimation()
		registerVal2.TextName:setAlpha(0.000000)
		registerVal2.TextName:setZoom(-100.000000)
		__FUNC_1314_(registerVal3, {})
	end

	registerVal5.DefaultState = __FUNC_11FC_
	registerVal4.Inactive = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

