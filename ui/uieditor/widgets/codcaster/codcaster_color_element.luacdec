-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.codcaster_color_element = registerVal1
function CoD.codcaster_color_element.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.codcaster_color_element)
	registerVal2.id = "codcaster_color_element"
	registerVal2.soundSet = "SelectColor_ColorSwatchPicker"
	registerVal2:setLeftRight(true, false, 0.000000, 50.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 50.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 3.000000, -3.000000)
	registerVal3:setTopBottom(true, true, 3.000000, -3.000000)
	registerVal3:setRGB(1.000000, 0.410000, 0.000000)
	registerVal3:setAlpha(0.650000)
	registerVal2:addElement(registerVal3)
	registerVal2.background = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 8.000000, -8.000000)
	registerVal4:setTopBottom(true, true, 8.000000, -8.000000)
	local function __FUNC_A9E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setRGB(registerVal1)
		end
	end

	registerVal4:linkToElementModel(registerVal2, "color", true, __FUNC_A9E_)
	registerVal2:addElement(registerVal4)
	registerVal2.colorElement = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 25.000000, 42.000000)
	registerVal5:setTopBottom(true, false, 8.000000, 25.000000)
	registerVal5:setRGB(ColorSet.SelectedGreen.r, ColorSet.SelectedGreen.g, ColorSet.SelectedGreen.b)
	registerVal5:setImage(RegisterImage("uie_t7_hud_cac_equipped_16"))
	registerVal2:addElement(registerVal5)
	registerVal2.Selected = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 16.500000, 33.500000)
	registerVal6:setTopBottom(true, false, 16.500000, 33.500000)
	registerVal6:setRGB(ColorSet.Disabled.r, ColorSet.Disabled.g, ColorSet.Disabled.b)
	registerVal6:setImage(RegisterImage("uie_t7_hud_cac_lock_64"))
	registerVal2:addElement(registerVal6)
	registerVal2.Lock = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_B2F_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.colorElement:setLeftRight(true, true, 8.000000, -8.000000)
		registerVal2.colorElement:setTopBottom(true, true, 8.000000, -8.000000)
		registerVal2.colorElement:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Selected:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Lock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_B2F_
	local function __FUNC_DBB_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_107F_(arg0, arg1)
			local function __FUNC_11D4_(arg0, arg1)
				local function __FUNC_132C_(arg0, arg1)
					local function __FUNC_14A7_(arg0, arg1)
						local function __FUNC_15FC_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 30.000000, false, true, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(true, true, 0.000000, 0.000000)
							arg0:setTopBottom(true, true, 0.000000, 0.000000)
							arg0:setRGB(1.000000, 0.410000, 0.000000)
							arg0:setAlpha(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_15FC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15FC_)
					end

					if arg1.interrupted then
						__FUNC_14A7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.350000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14A7_)
				end

				if arg1.interrupted then
					__FUNC_132C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_132C_)
			end

			if arg1.interrupted then
				__FUNC_11D4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, true, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11D4_)
		end

		registerVal3:completeAnimation()
		registerVal2.background:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.background:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.background:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.background:setAlpha(0.650000)
		__FUNC_107F_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.colorElement:setLeftRight(true, true, 5.000000, -5.000000)
		registerVal2.colorElement:setTopBottom(true, true, 5.000000, -5.000000)
		registerVal2.colorElement:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Selected:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal8.Focus = __FUNC_DBB_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_183B_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.colorElement:setLeftRight(true, true, 8.000000, -8.000000)
		registerVal2.colorElement:setTopBottom(true, true, 8.000000, -8.000000)
		registerVal2.colorElement:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Selected:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Lock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_183B_
	local function __FUNC_1AC7_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_1D8B_(arg0, arg1)
			local function __FUNC_1F03_(arg0, arg1)
				local function __FUNC_2058_(arg0, arg1)
					local function __FUNC_21D3_(arg0, arg1)
						local function __FUNC_2328_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 30.000000, false, true, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(true, true, 0.000000, 0.000000)
							arg0:setTopBottom(true, true, 0.000000, 0.000000)
							arg0:setRGB(1.000000, 0.410000, 0.000000)
							arg0:setAlpha(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_2328_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2328_)
					end

					if arg1.interrupted then
						__FUNC_21D3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.350000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21D3_)
				end

				if arg1.interrupted then
					__FUNC_2058_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2058_)
			end

			if arg1.interrupted then
				__FUNC_1F03_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, true, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.650000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F03_)
		end

		registerVal3:completeAnimation()
		registerVal2.background:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.background:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.background:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.background:setAlpha(0.350000)
		__FUNC_1D8B_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.colorElement:setLeftRight(true, true, 5.000000, -5.000000)
		registerVal2.colorElement:setTopBottom(true, true, 5.000000, -5.000000)
		registerVal2.colorElement:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Selected:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal8.Focus = __FUNC_1AC7_
	registerVal7.Selected = registerVal8
	registerVal8 = {}
	local function __FUNC_2567_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.colorElement:setLeftRight(true, true, 8.000000, -8.000000)
		registerVal2.colorElement:setTopBottom(true, true, 8.000000, -8.000000)
		registerVal2.colorElement:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Selected:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Lock:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_2567_
	registerVal7.Disabled = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Selected"
	local function __FUNC_27F8_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "selected")
	end

	registerVal10.condition = __FUNC_27F8_
	local registerVal11 = {}
	registerVal11.stateName = "Disabled"
	local function __FUNC_286C_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "disabled")
	end

	registerVal11.condition = __FUNC_286C_
	registerVal9 = {registerVal10, registerVal11}
	registerVal2:mergeStateConditions(registerVal9)
	local function __FUNC_28E0_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "selected"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "selected", true, __FUNC_28E0_)
	local function __FUNC_29FE_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "disabled", true, __FUNC_29FE_)
	local function __FUNC_2B1A_(arg0)
		arg0.colorElement:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2B1A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

