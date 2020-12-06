-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.button_internal")
require("ui.uieditor.widgets.Border")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ListButton = registerVal1
function CoD.ListButton.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ListButton)
	registerVal2.id = "ListButton"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 360.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 35.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 15.000000, 360.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 35.000000)
	registerVal3:setRGB(0.110000, 0.140000, 0.200000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Background = registerVal3
	local registerVal4 = CoD.button_internal.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 30.000000, 360.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 35.000000)
	local function __FUNC_85D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.Text0:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "displayText", true, __FUNC_85D_)
	registerVal2:addElement(registerVal4)
	registerVal2.Text = registerVal4
	local registerVal5 = CoD.Border.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 8.000000, 12.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 35.000000)
	registerVal5:setRGB(1.000000, 0.410000, 0.000000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.SelectionIndicator = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_931_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Background:setRGB(0.110000, 0.140000, 0.200000)
		registerVal2.Background:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.SelectionIndicator:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_931_
	local function __FUNC_B50_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_CE2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Background:setAlpha(1.000000)
		__FUNC_CE2_(registerVal3, {})
		local function __FUNC_E95_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.Text:setAlpha(1.000000)
		__FUNC_E95_(registerVal4, {})
		local function __FUNC_1049_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.SelectionIndicator:setAlpha(1.000000)
		__FUNC_1049_(registerVal5, {})
	end

	registerVal7.LoseFocus = __FUNC_B50_
	local function __FUNC_11FD_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_1340_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Background:setAlpha(0.000000)
		__FUNC_1340_(registerVal3, {})
		local function __FUNC_14F5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.SelectionIndicator:setAlpha(0.000000)
		__FUNC_14F5_(registerVal5, {})
	end

	registerVal7.GainFocus = __FUNC_11FD_
	local function __FUNC_16A9_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_180C_(arg0, arg1)
			local function __FUNC_1987_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 500.000000, true, true, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1987_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.750000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1987_)
		end

		registerVal3:completeAnimation()
		registerVal2.Background:setAlpha(1.000000)
		__FUNC_180C_(registerVal3, {})
		local function __FUNC_1B39_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 1000.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.Text:setAlpha(0.800000)
		__FUNC_1B39_(registerVal4, {})
		registerVal2.nextClip = "Focus"
	end

	registerVal7.Focus = __FUNC_16A9_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	local function __FUNC_1CED_(arg0)
		arg0.Text:close()
		arg0.SelectionIndicator:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1CED_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

