-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GameSettings_OptionsButton = registerVal1
function CoD.GameSettings_OptionsButton.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GameSettings_OptionsButton)
	registerVal2.id = "GameSettings_OptionsButton"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 255.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 36.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_ButtonBoxLrgIdle.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.500000)
	registerVal2:addElement(registerVal3)
	registerVal2.BoxButtonLrgIdle = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 9.500000, 30.500000)
	registerVal4:setTopBottom(true, false, 7.500000, 28.500000)
	registerVal4:setAlpha(0.900000)
	local function __FUNC_D57_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "icon", true, __FUNC_D57_)
	registerVal2:addElement(registerVal4)
	registerVal2.icon = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 50.000000, 238.000000)
	registerVal5:setTopBottom(true, false, 6.000000, 31.000000)
	registerVal5:setAlpha(0.900000)
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_E08_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(LocalizeToUpperString(registerVal1)))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "displayText", true, __FUNC_E08_)
	registerVal2:addElement(registerVal5)
	registerVal2.optionText = registerVal5
	local registerVal6 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(false, true, -4.000000, 0.000000)
	registerVal6:setZoom(1.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.FocusBarB = registerVal6
	local registerVal7 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 4.000000)
	registerVal7:setZoom(1.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.FocusBarT = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 39.000000, 43.000000)
	registerVal8:setTopBottom(false, false, -16.000000, 16.000000)
	registerVal8:setAlpha(0.300000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.itemImageLine = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_EE9_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.icon:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.optionText:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal10.DefaultClip = __FUNC_EE9_
	local function __FUNC_10F4_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_134E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.icon:setAlpha(0.500000)
		__FUNC_134E_(registerVal4, {})
		local function __FUNC_1501_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.optionText:setAlpha(0.800000)
		__FUNC_1501_(registerVal5, {})
		local function __FUNC_16B5_(arg0, arg1)
			local function __FUNC_180C_(arg0, arg1)
				local function __FUNC_1987_(arg0, arg1)
					local function __FUNC_1AFF_(arg0, arg1)
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
						__FUNC_1AFF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.210000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AFF_)
				end

				if arg1.interrupted then
					__FUNC_1987_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1987_)
			end

			if arg1.interrupted then
				__FUNC_180C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_180C_)
		end

		registerVal6:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_16B5_(registerVal6, {})
		local function __FUNC_1CB1_(arg0, arg1)
			local function __FUNC_1E08_(arg0, arg1)
				local function __FUNC_1F83_(arg0, arg1)
					local function __FUNC_20FB_(arg0, arg1)
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
						__FUNC_20FB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.350000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20FB_)
				end

				if arg1.interrupted then
					__FUNC_1F83_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F83_)
			end

			if arg1.interrupted then
				__FUNC_1E08_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E08_)
		end

		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_1CB1_(registerVal7, {})
	end

	registerVal10.GainFocus = __FUNC_10F4_
	local function __FUNC_22AD_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.icon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.optionText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal10.Focus = __FUNC_22AD_
	local function __FUNC_2511_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_2765_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.icon:setAlpha(1.000000)
		__FUNC_2765_(registerVal4, {})
		local function __FUNC_2919_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.optionText:setAlpha(1.000000)
		__FUNC_2919_(registerVal5, {})
		local function __FUNC_2ACD_(arg0, arg1)
			local function __FUNC_2C47_(arg0, arg1)
				local function __FUNC_2DBF_(arg0, arg1)
					local function __FUNC_2F37_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_2F37_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F37_)
				end

				if arg1.interrupted then
					__FUNC_2DBF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DBF_)
			end

			if arg1.interrupted then
				__FUNC_2C47_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C47_)
		end

		registerVal6:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_2ACD_(registerVal6, {})
		local function __FUNC_30E9_(arg0, arg1)
			local function __FUNC_3263_(arg0, arg1)
				local function __FUNC_33DB_(arg0, arg1)
					local function __FUNC_3553_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_3553_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3553_)
				end

				if arg1.interrupted then
					__FUNC_33DB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33DB_)
			end

			if arg1.interrupted then
				__FUNC_3263_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3263_)
		end

		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_30E9_(registerVal7, {})
	end

	registerVal10.LoseFocus = __FUNC_2511_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_3705_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.icon:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.optionText:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal10.DefaultClip = __FUNC_3705_
	local function __FUNC_390B_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.icon:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.optionText:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal10.Focus = __FUNC_390B_
	registerVal9.Disabled = registerVal10
	registerVal2.clipsPerState = registerVal9
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "Disabled"
	local function __FUNC_3B0F_(arg0, arg2, arg3)
		return IsDisabled(arg2, arg1)
	end

	registerVal12.condition = __FUNC_3B0F_
	registerVal11 = {registerVal12}
	registerVal2:mergeStateConditions(registerVal11)
	local function __FUNC_3B60_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "disabled", true, __FUNC_3B60_)
	local function __FUNC_3C7E_(arg0)
		arg0.BoxButtonLrgIdle:close()
		arg0.FocusBarB:close()
		arg0.FocusBarT:close()
		arg0.icon:close()
		arg0.optionText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3C7E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

