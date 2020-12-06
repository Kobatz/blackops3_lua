-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.Equipment.EMP.EmpRebootIndicatorWidget")
require("ui.uieditor.widgets.HUD.Equipment.EMP.EmpRebootElectromagneticWidget")
local function __FUNC_234_(arg0)
	local function __FUNC_2FB_(arg1)
		local registerVal2 = arg0:getModel()
		local registerVal1 = Engine.GetModel(registerVal2, "endTime")
		registerVal2 = Engine.GetModelValue(arg1)
		local registerVal3 = Engine.GetModelValue(registerVal1)
		local registerVal5 = Engine.CurrentGameTime()
		local registerVal6 = Engine.SnapshotDeltaTime()
		arg0.EmpRebootIndicatorWidget.ProgressBar:setShaderVector(0.000000, (((registerVal5 - registerVal6) - registerVal2) / (registerVal3 - registerVal2)), 0.000000, 0.000000, 0.000000)
		arg0.EmpRebootIndicatorWidget.ProgressBar:beginAnimation("updateProgress", (registerVal3 - registerVal2))
		arg0.EmpRebootIndicatorWidget.ProgressBar:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	end

	arg0.EmpRebootIndicatorWidget.ProgressBar:subscribeToElementModel(arg0, "startTime", __FUNC_2FB_)
end

local function __FUNC_566_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("EmpRebootIndicator")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "HUD"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "EmpRebootIndicator.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.EmpRebootIndicatorWidget.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 585.120000, 694.880000)
	registerVal3:setTopBottom(true, false, 594.750000, 622.480000)
	registerVal1:addElement(registerVal3)
	registerVal1.EmpRebootIndicatorWidget = registerVal3
	local registerVal4 = CoD.EmpRebootElectromagneticWidget.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 264.380000, 1015.620000)
	registerVal4:setTopBottom(true, false, 545.670000, 594.750000)
	registerVal1:addElement(registerVal4)
	registerVal1.EmpRebootElectromagneticWidget0 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_FA6_()
		registerVal1:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal1.EmpRebootIndicatorWidget:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.EmpRebootElectromagneticWidget0:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_FA6_
	local function __FUNC_1121_()
		registerVal1:setupElementClipCounter(2.000000)
		local function __FUNC_127F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, true, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal1.EmpRebootIndicatorWidget:setAlpha(0.000000)
		__FUNC_127F_(registerVal3, {})
		local function __FUNC_1431_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, true, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal1.EmpRebootElectromagneticWidget0:setAlpha(0.000000)
		__FUNC_1431_(registerVal4, {})
	end

	registerVal6.Boot = __FUNC_1121_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_15E5_()
		registerVal1:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal1.EmpRebootIndicatorWidget:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.EmpRebootElectromagneticWidget0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_15E5_
	registerVal5.Invisible = registerVal6
	registerVal6 = {}
	local function __FUNC_1761_()
		registerVal1:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal1.EmpRebootIndicatorWidget:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.EmpRebootElectromagneticWidget0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_1761_
	registerVal5.InvisibleForKillcamEntity = registerVal6
	registerVal1.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Invisible"
	local function __FUNC_18DD_(arg1, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE)
		registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_IN_VEHICLE)
		registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_MIGRATING_HOST)
		registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_SELECTING_LOCATIONAL_KILLSTREAK)
		if not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		end
		return registerVal3
	end

	registerVal8.condition = __FUNC_18DD_
	local registerVal9 = {}
	registerVal9.stateName = "InvisibleForKillcamEntity"
	local function __FUNC_1B1A_(arg1, arg2, arg3)
		return IsModelValueTrue(arg0, "hudItems.killCamHideEmpReboot")
	end

	registerVal9.condition = __FUNC_1B1A_
	registerVal7 = {registerVal8, registerVal9}
	registerVal1:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetModelForController(arg0)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE))
	local function __FUNC_1B99_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE)
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal7, __FUNC_1B99_)
	registerVal8 = Engine.GetModelForController(arg0)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_VEHICLE))
	local function __FUNC_1D28_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_VEHICLE)
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal7, __FUNC_1D28_)
	registerVal8 = Engine.GetModelForController(arg0)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_MIGRATING_HOST))
	local function __FUNC_1EB1_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_MIGRATING_HOST)
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal7, __FUNC_1EB1_)
	registerVal8 = Engine.GetModelForController(arg0)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SELECTING_LOCATIONAL_KILLSTREAK))
	local function __FUNC_203D_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SELECTING_LOCATIONAL_KILLSTREAK)
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal7, __FUNC_203D_)
	registerVal8 = Engine.GetModelForController(arg0)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE))
	local function __FUNC_21DA_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal7, __FUNC_21DA_)
	registerVal8 = Engine.GetModelForController(arg0)
	registerVal7 = Engine.GetModel(registerVal8, "hudItems.killCamHideEmpReboot")
	local function __FUNC_2360_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hudItems.killCamHideEmpReboot"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal7, __FUNC_2360_)
	local function __FUNC_2493_(arg1, arg2)
		PlayClip(registerVal1, "Boot", arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_2493_)
	registerVal7 = {}
	registerVal7.name = "menu_loaded"
	registerVal7.controller = arg0
	registerVal1:processEvent(registerVal7)
	registerVal7 = {}
	registerVal7.name = "update_state"
	registerVal7.menu = registerVal1
	registerVal1:processEvent(registerVal7)
	local function __FUNC_2531_(arg1)
		arg1.EmpRebootIndicatorWidget:close()
		arg1.EmpRebootElectromagneticWidget0:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "EmpRebootIndicator.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_2531_)
	if __FUNC_234_ then
		__FUNC_234_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.EmpRebootIndicator = __FUNC_566_
