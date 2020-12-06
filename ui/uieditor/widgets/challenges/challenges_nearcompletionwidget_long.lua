-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.Challenges.Challenges_NearCompletion_CroppedImage")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
local function __FUNC_2D2_(arg0, arg1)
	local function __FUNC_342_(arg0, arg2)
		local registerVal2 = arg0:getModel()
		local registerVal3 = Engine.GetModel(registerVal2, "maxTier")
		local registerVal4 = Engine.GetModel(registerVal2, "currentTier")
		local registerVal5 = Engine.GetModel(registerVal2, "xp")
		if registerVal3 and registerVal4 and registerVal5 then
			SetGlobalModelValue("maxTier", Engine.GetModelValue(registerVal3))
			SetGlobalModelValue("currentTier", Engine.GetModelValue(registerVal4))
			SetGlobalModelValue("tierXP", Engine.GetModelValue(registerVal5))
			local registerVal8 = {}
			registerVal8.name = "update_tier_list"
			registerVal8.controller = arg1
			arg0:dispatchEventToParent(registerVal8)
		end
	end

	arg0:registerEventHandler("gain_focus", __FUNC_342_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.Challenges_NearCompletionWidget_Long = registerVal2
local function __FUNC_569_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Challenges_NearCompletionWidget_Long)
	registerVal2.id = "Challenges_NearCompletionWidget_Long"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 600.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 75.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_ButtonBoxLrgInactive.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal3:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal3:setRGB(0.870000, 0.970000, 1.000000)
	registerVal3:setAlpha(0.700000)
	registerVal2:addElement(registerVal3)
	registerVal2.BoxButtonLrgInactive = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 120.000000, 507.000000)
	registerVal4:setTopBottom(true, false, 4.000000, 24.000000)
	registerVal4:setRGB(0.930000, 0.740000, 0.290000)
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal4:setLetterSpacing(3.000000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.Title = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 120.000000, 507.000000)
	registerVal5:setTopBottom(false, true, -51.000000, -31.000000)
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.Description = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 498.000000, 588.000000)
	registerVal6:setTopBottom(true, false, 26.500000, 43.500000)
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal6:setLetterSpacing(1.000000)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.StatFraction = registerVal6
	local registerVal7 = CoD.Challenges_NearCompletion_CroppedImage.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 8.000000, 104.000000)
	registerVal7:setTopBottom(false, false, -24.000000, 24.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.Icon = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 1.000000, 599.000000)
	registerVal8:setTopBottom(true, false, 1.000000, 74.000000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal8:setAlpha(0.050000)
	registerVal2:addElement(registerVal8)
	registerVal2.BlackTint = registerVal8
	local registerVal9 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal9:setTopBottom(true, false, -2.000000, 2.000000)
	registerVal9:setZoom(1.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.FocusBarT = registerVal9
	local registerVal10 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal10:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal10:setTopBottom(false, true, -1.000000, 3.000000)
	registerVal10:setZoom(1.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.FocusBarB = registerVal10
	local function __FUNC_11B5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.Title:linkToElementModel(registerVal2, "title", true, __FUNC_11B5_)
	local function __FUNC_126E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.Description:linkToElementModel(registerVal2, "description", true, __FUNC_126E_)
	local function __FUNC_1326_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.StatFraction:linkToElementModel(registerVal2, "statFractionText", true, __FUNC_1326_)
	local function __FUNC_13DE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.Image:setImage(RegisterImage(GetBackgroundByID(registerVal1)))
		end
	end

	registerVal2.Icon:linkToElementModel(registerVal2, "iconId", true, __FUNC_13DE_)
	local registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_14CE_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal8:completeAnimation()
		registerVal2.BlackTint:setAlpha(0.050000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_14CE_
	local function __FUNC_16E7_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_18D9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.400000)
		__FUNC_18D9_(registerVal3, {})
		local function __FUNC_1A8D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.BlackTint:setAlpha(0.050000)
		__FUNC_1A8D_(registerVal8, {})
		local function __FUNC_1C41_(arg0, arg1)
			local function __FUNC_1DBB_(arg0, arg1)
				local function __FUNC_1F33_(arg0, arg1)
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

				if arg1.interrupted then
					__FUNC_1F33_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F33_)
			end

			if arg1.interrupted then
				__FUNC_1DBB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DBB_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_1C41_(registerVal9, {})
		local function __FUNC_20E5_(arg0, arg1)
			local function __FUNC_225F_(arg0, arg1)
				local function __FUNC_23D7_(arg0, arg1)
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

				if arg1.interrupted then
					__FUNC_23D7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23D7_)
			end

			if arg1.interrupted then
				__FUNC_225F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_225F_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_20E5_(registerVal10, {})
	end

	registerVal12.Focus = __FUNC_16E7_
	local function __FUNC_2589_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_277D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.400000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.700000)
		__FUNC_277D_(registerVal3, {})
		local function __FUNC_2931_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.050000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.BlackTint:setAlpha(0.000000)
		__FUNC_2931_(registerVal8, {})
		local function __FUNC_2AE5_(arg0, arg1)
			local function __FUNC_2C5F_(arg0, arg1)
				local function __FUNC_2DD7_(arg0, arg1)
					local function __FUNC_2F2C_(arg0, arg1)
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

					if arg1.interrupted then
						__FUNC_2F2C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F2C_)
				end

				if arg1.interrupted then
					__FUNC_2DD7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 0.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DD7_)
			end

			if arg1.interrupted then
				__FUNC_2C5F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C5F_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_2AE5_(registerVal9, {})
		local function __FUNC_30E1_(arg0, arg1)
			local function __FUNC_325B_(arg0, arg1)
				local function __FUNC_33B0_(arg0, arg1)
					local function __FUNC_352B_(arg0, arg1)
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

					if arg1.interrupted then
						__FUNC_352B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_352B_)
				end

				if arg1.interrupted then
					__FUNC_33B0_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 0.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33B0_)
			end

			if arg1.interrupted then
				__FUNC_325B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_325B_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_30E1_(registerVal10, {})
	end

	registerVal12.LoseFocus = __FUNC_2589_
	registerVal11.DefaultState = registerVal12
	registerVal2.clipsPerState = registerVal11
	local function __FUNC_36DD_(arg0)
		arg0.BoxButtonLrgInactive:close()
		arg0.Icon:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.Title:close()
		arg0.Description:close()
		arg0.StatFraction:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_36DD_)
	if __FUNC_2D2_ then
		__FUNC_2D2_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.Challenges_NearCompletionWidget_Long.new = __FUNC_569_
