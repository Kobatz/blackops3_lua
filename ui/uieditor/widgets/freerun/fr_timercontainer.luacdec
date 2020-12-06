-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Freerun.FR_TimerWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FR_TimerContainer = registerVal1
function CoD.FR_TimerContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FR_TimerContainer)
	registerVal2.id = "FR_TimerContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 235.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 99.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FR_TimerWidget.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -117.500000, 117.500000)
	registerVal3:setTopBottom(false, false, -49.500000, 49.810000)
	local function __FUNC_63E_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:subscribeToGlobalModel(arg1, "FreeRun", "timer", __FUNC_63E_)
	registerVal2:addElement(registerVal3)
	registerVal2.FRTimerWidget = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_68E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_68E_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_6EE_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_7D2_(arg0, arg1)
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
		registerVal2.FRTimerWidget:setAlpha(1.000000)
		__FUNC_7D2_(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_6EE_
	local function __FUNC_985_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_A6F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.FRTimerWidget:setAlpha(0.000000)
		__FUNC_A6F_(registerVal3, {})
	end

	registerVal5.DefaultState = __FUNC_985_
	registerVal4.Invisible = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_C21_(arg0)
		arg0.FRTimerWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_C21_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

