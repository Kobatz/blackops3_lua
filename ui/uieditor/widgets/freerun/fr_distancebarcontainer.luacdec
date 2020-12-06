-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Freerun.FR_DistanceBarWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FR_DistanceBarContainer = registerVal1
function CoD.FR_DistanceBarContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.FR_DistanceBarContainer)
	registerVal2.id = "FR_DistanceBarContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 547.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 61.000000)
	local registerVal3 = CoD.FR_DistanceBarWidget.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 546.610000)
	registerVal3:setTopBottom(true, false, 0.000000, 60.730000)
	registerVal2:addElement(registerVal3)
	registerVal2.FRDistanceBarWidget = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_64E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_64E_
	local function __FUNC_6AE_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.Penalty = __FUNC_6AE_
	local function __FUNC_70E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.FaultAnim = __FUNC_70E_
	local function __FUNC_76E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.RetryAnim = __FUNC_76E_
	local function __FUNC_7CE_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.SetCheckpointDelta = __FUNC_7CE_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_82E_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_918_(arg0, arg1)
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
		registerVal2.FRDistanceBarWidget:setAlpha(1.000000)
		__FUNC_918_(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_82E_
	local function __FUNC_ACD_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_BBD_(arg0, arg1)
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
		registerVal2.FRDistanceBarWidget:setAlpha(0.000000)
		__FUNC_BBD_(registerVal3, {})
	end

	registerVal5.DefaultState = __FUNC_ACD_
	registerVal4.Invisible = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_D71_(arg0)
		arg0.FRDistanceBarWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_D71_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

