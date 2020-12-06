-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Freerun.FR_InfoWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FR_InfoContainer = registerVal1
function CoD.FR_InfoContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FR_InfoContainer)
	registerVal2.id = "FR_InfoContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 302.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 219.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FR_InfoWidget.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -177.000000, 139.000000)
	registerVal3:setTopBottom(false, false, -100.000000, 106.000000)
	registerVal3:setYRot(27.000000)
	local function __FUNC_6E6_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:subscribeToGlobalModel(arg1, "FreeRun", "freeRunInfo", __FUNC_6E6_)
	registerVal2:addElement(registerVal3)
	registerVal2.FRInfoWidget = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_736_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.FRInfoWidget:setLeftRight(true, false, -23.000000, 293.000000)
		registerVal2.FRInfoWidget:setTopBottom(true, false, -2.200000, 203.800000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_736_
	local function __FUNC_895_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.Penalty = __FUNC_895_
	local function __FUNC_8F6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.FaultAnim = __FUNC_8F6_
	local function __FUNC_956_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.RetryAnim = __FUNC_956_
	local function __FUNC_9B6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.SetCheckpointDelta = __FUNC_9B6_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_A16_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_AF9_(arg0, arg1)
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
		registerVal2.FRInfoWidget:setAlpha(1.000000)
		__FUNC_AF9_(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_A16_
	local function __FUNC_CAD_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultState = __FUNC_CAD_
	registerVal4.Invisible = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_D0E_(arg0)
		arg0.FRInfoWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_D0E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

