-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StartMenuButtonItem = registerVal1
function CoD.StartMenuButtonItem.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.StartMenuButtonItem)
	registerVal2.id = "StartMenuButtonItem"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 260.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.350000, 0.350000, 0.360000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.background = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, 3.000000, -3.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal4:setRGB(0.350000, 0.350000, 0.360000)
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_7ED_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "displayText", true, __FUNC_7ED_)
	registerVal2:addElement(registerVal4)
	registerVal2.text = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_8A6_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_8A6_
	local function __FUNC_9FD_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_B54_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.background:setAlpha(0.000000)
		__FUNC_B54_(registerVal3, {})
		local function __FUNC_D09_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.970000, 0.580000, 0.120000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.text:setRGB(0.350000, 0.350000, 0.360000)
		__FUNC_D09_(registerVal4, {})
	end

	registerVal6.GainFocus = __FUNC_9FD_
	local function __FUNC_ECD_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
		registerVal2.background:setAlpha(1.000000)
		registerVal3:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		registerVal4:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
		registerVal2.text:setRGB(0.970000, 0.580000, 0.120000)
		registerVal4:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
	end

	registerVal6.Focus = __FUNC_ECD_
	local function __FUNC_112F_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_1289_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.background:setAlpha(1.000000)
		__FUNC_1289_(registerVal3, {})
		local function __FUNC_143D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.350000, 0.350000, 0.360000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.text:setRGB(0.970000, 0.580000, 0.120000)
		__FUNC_143D_(registerVal4, {})
	end

	registerVal6.LoseFocus = __FUNC_112F_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_15FC_(arg0)
		arg0.text:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_15FC_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

