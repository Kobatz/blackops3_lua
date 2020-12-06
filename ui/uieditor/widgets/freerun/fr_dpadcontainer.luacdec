-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Freerun.FR_DpadWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FR_DpadContainer = registerVal1
function CoD.FR_DpadContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.FR_DpadContainer)
	registerVal2.id = "FR_DpadContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 259.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 108.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FR_DpadWidget.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -142.000000, 145.000000)
	registerVal3:setTopBottom(false, false, -60.760000, 60.000000)
	registerVal3:setYRot(27.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.FRDpadWidget = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_684_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.FRDpadWidget:setLeftRight(true, false, -12.500000, 274.500000)
		registerVal2.FRDpadWidget:setTopBottom(true, false, -6.760000, 114.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_684_
	local function __FUNC_7E5_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.Penalty = __FUNC_7E5_
	local function __FUNC_846_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.FaultAnim = __FUNC_846_
	local function __FUNC_8A6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.RetryAnim = __FUNC_8A6_
	local function __FUNC_906_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.SetCheckpointDelta = __FUNC_906_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_966_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_A49_(arg0, arg1)
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
		registerVal2.FRDpadWidget:setAlpha(1.000000)
		__FUNC_A49_(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_966_
	local function __FUNC_BFD_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_CE6_(arg0, arg1)
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
		registerVal2.FRDpadWidget:setAlpha(0.000000)
		__FUNC_CE6_(registerVal3, {})
	end

	registerVal5.DefaultState = __FUNC_BFD_
	registerVal4.Invisible = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_E99_(arg0)
		arg0.FRDpadWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_E99_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

