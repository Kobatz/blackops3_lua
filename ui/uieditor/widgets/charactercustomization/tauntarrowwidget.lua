-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.onOffArabicAlignTextBox")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.tauntArrowWidget = registerVal1
function CoD.tauntArrowWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.tauntArrowWidget)
	registerVal2.id = "tauntArrowWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 533.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 167.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -25.000000, 25.000000)
	registerVal3:setTopBottom(false, false, -25.000000, 25.000000)
	local function __FUNC_C96_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "Controller", "dpad_all_button_image", __FUNC_C96_)
	registerVal2:addElement(registerVal3)
	registerVal2.dpad = registerVal3
	local registerVal4 = CoD.onOffArabicAlignTextBox.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -342.500000, -42.500000)
	registerVal4:setTopBottom(false, false, -11.000000, 11.000000)
	registerVal4:setScale(LanguageOverrideNumber("japanese", 0.800000, 1.000000))
	registerVal4.text.textBox:setText(Engine.Localize("HEROES_GESTURES_THREATEN"))
	registerVal4.text.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Visible"
	local function __FUNC_D48_(arg0, arg2, arg3)
		return ShouldShowPromptForGesture(arg1, Enum.CharacterGestureTypes.GESTURE_TYPE_THREATEN)
	end

	registerVal8.condition = __FUNC_D48_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal2:addElement(registerVal4)
	registerVal2.left = registerVal4
	local registerVal5 = CoD.onOffArabicAlignTextBox.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -150.000000, 150.000000)
	registerVal5:setTopBottom(false, false, -59.500000, -37.500000)
	registerVal5:setScale(LanguageOverrideNumber("japanese", 0.800000, 1.000000))
	registerVal5.text.textBox:setText(Engine.Localize("HEROES_GESTURES_GOOD_GAME"))
	registerVal5.text.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Visible"
	local function __FUNC_E10_(arg0, arg2, arg3)
		return ShouldShowPromptForGesture(arg1, Enum.CharacterGestureTypes.GESTURE_TYPE_GOOD_GAME)
	end

	registerVal9.condition = __FUNC_E10_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal2:addElement(registerVal5)
	registerVal2.up = registerVal5
	local registerVal6 = CoD.onOffArabicAlignTextBox.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, 43.500000, 343.500000)
	registerVal6:setTopBottom(false, false, -11.000000, 11.000000)
	registerVal6:setScale(LanguageOverrideNumber("japanese", 0.800000, 1.000000))
	registerVal6.text.textBox:setText(Engine.Localize("HEROES_GESTURES_BOAST"))
	registerVal6.text.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Visible"
	local function __FUNC_ED9_(arg0, arg2, arg3)
		return ShouldShowPromptForGesture(arg1, Enum.CharacterGestureTypes.GESTURE_TYPE_BOAST)
	end

	registerVal10.condition = __FUNC_ED9_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal2:addElement(registerVal6)
	registerVal2.right = registerVal6
	registerVal7 = {}
	registerVal8 = {}
	local function __FUNC_F9D_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.dpad:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.left:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.up:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.right:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_F9D_
	local function __FUNC_118D_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_1357_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.dpad:setAlpha(0.000000)
		__FUNC_1357_(registerVal3, {})
		local function __FUNC_1509_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.left:setAlpha(0.000000)
		__FUNC_1509_(registerVal4, {})
		local function __FUNC_16BD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.up:setAlpha(0.000000)
		__FUNC_16BD_(registerVal5, {})
		local function __FUNC_1871_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.right:setAlpha(0.000000)
		__FUNC_1871_(registerVal6, {})
	end

	registerVal8.GesturesOn = __FUNC_118D_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_1A25_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.dpad:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.left:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.up:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.right:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_1A25_
	registerVal7.NoGestures = registerVal8
	registerVal2.clipsPerState = registerVal7
	registerVal9 = {}
	registerVal10 = {}
	registerVal10.stateName = "NoGestures"
	local function __FUNC_1C15_(arg0, arg2, arg3)
		local registerVal3 = ShouldShowGesturePrompt(arg1)
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_1C15_
	registerVal9 = {registerVal10}
	registerVal2:mergeStateConditions(registerVal9)
	local function __FUNC_1C75_(arg0)
		local registerVal2 = IsParamModelEqualTo(arg0, true)
		if registerVal2 then
			PlayClip(registerVal2, "GesturesOn", arg1)
		end
	end

	registerVal2:subscribeToGlobalModel(arg1, "TopScorerMenuData", "showGestures", __FUNC_1C75_)
	local function __FUNC_1D13_(arg0)
		arg0.left:close()
		arg0.up:close()
		arg0.right:close()
		arg0.dpad:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1D13_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

