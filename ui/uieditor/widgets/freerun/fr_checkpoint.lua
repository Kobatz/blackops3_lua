-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Freerun.FR_Checkpoint_Internal")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FR_Checkpoint = registerVal1
function CoD.FR_Checkpoint.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FR_Checkpoint)
	registerVal2.id = "FR_Checkpoint"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 235.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 151.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FR_Checkpoint_Internal.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, -210.000000, -27.000000)
	registerVal3:setTopBottom(true, false, 23.810000, 99.190000)
	registerVal3:setYRot(27.000000)
	local function __FUNC_853_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:subscribeToGlobalModel(arg1, "FreeRun", "timer", __FUNC_853_)
	registerVal2:addElement(registerVal3)
	registerVal2.FRCheckpointInternal = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_8A2_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.FRCheckpointInternal:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_8A2_
	local function __FUNC_9A7_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_B26_(arg0, arg1)
			local function __FUNC_D0F_(arg0, arg1)
				local function __FUNC_E64_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, -210.000000, -27.000000)
					arg0:setTopBottom(true, false, 23.810000, 99.190000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_E64_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1190.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E64_)
			end

			if arg1.interrupted then
				__FUNC_D0F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 43.000000, 226.000000)
			arg0:setTopBottom(true, false, 37.810000, 113.190000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D0F_)
		end

		registerVal3:completeAnimation()
		registerVal2.FRCheckpointInternal:setLeftRight(true, false, -210.000000, -27.000000)
		registerVal2.FRCheckpointInternal:setTopBottom(true, false, 23.810000, 99.190000)
		registerVal2.FRCheckpointInternal:setAlpha(0.000000)
		__FUNC_B26_(registerVal3, {})
	end

	registerVal5.Checkpoint = __FUNC_9A7_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_1089_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.FRCheckpointInternal:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_1089_
	registerVal4.Invisible = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Invisible"
	local function __FUNC_1194_(arg0, arg2, arg3)
		local registerVal3 = IsModelValueEqualTo(arg1, "FreeRun.runState", 1.000000)
		return (not registerVal3)
	end

	registerVal7.condition = __FUNC_1194_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "FreeRun.runState")
	local function __FUNC_1218_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "FreeRun.runState"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_1218_)
	local function __FUNC_133E_(arg0)
		local registerVal2 = IsModelValueGreaterThanOrEqualTo(arg1, "FreeRun.timer.timeAdjustment", 0.001000)
		registerVal2 = IsModelValueEqualTo(arg1, "FreeRun.timer.timeAdjustmentNegative", 0.000000)
		registerVal2 = ShouldShowFreerunTimeClips(arg1)
		if registerVal2 and registerVal2 and registerVal2 then
			PlayClip(registerVal2, "More", arg1)
		else
			registerVal2 = IsModelValueGreaterThanOrEqualTo(arg1, "FreeRun.timer.timeAdjustment", 0.001000)
			registerVal2 = IsModelValueEqualTo(arg1, "FreeRun.timer.timeAdjustmentNegative", 0.000000)
			registerVal2 = ShouldShowFreerunTimeClips(arg1)
			if registerVal2 and not registerVal2 and registerVal2 then
				PlayClip(registerVal2, "Less", arg1)
			end
		end
	end

	registerVal2:subscribeToGlobalModel(arg1, "PerController", "FreeRun.timer.timeAdjustment", __FUNC_133E_)
	local function __FUNC_1527_(arg0)
		local registerVal2 = IsModelValueGreaterThan(arg1, "FreeRun.freeRunInfo.activeCheckpoint", 0.000000)
		registerVal2 = IsModelValueEqualTo(arg1, "FreeRun.runState", 1.000000)
		if registerVal2 and registerVal2 then
			PlayClip(registerVal2, "Checkpoint", arg1)
		end
	end

	registerVal2:subscribeToGlobalModel(arg1, "PerController", "FreeRun.freeRunInfo.activeCheckpoint", __FUNC_1527_)
	local function __FUNC_1656_(arg0)
		arg0.FRCheckpointInternal:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1656_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

