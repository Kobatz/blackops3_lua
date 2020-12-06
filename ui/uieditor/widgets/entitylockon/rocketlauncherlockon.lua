-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.EntityLockon.rocketLauncherLockon_Internal")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.rocketLauncherLockon = registerVal1
function CoD.rocketLauncherLockon.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.rocketLauncherLockon)
	registerVal2.id = "rocketLauncherLockon"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 70.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 70.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.rocketLauncherLockon_Internal.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_6D6_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_6D6_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "LockedOn"
	local function __FUNC_726_(arg0, arg2, arg3)
		return IsSelfModelValueEnumBitSet(arg2, arg1, "status", Enum.RocketLauncherTargetStatesFlags.ROCKET_LAUNCHER_TARGET_LOCKED)
	end

	registerVal7.condition = __FUNC_726_
	local registerVal8 = {}
	registerVal8.stateName = "AcquiringLock"
	local function __FUNC_816_(arg0, arg2, arg3)
		return IsSelfModelValueEnumBitSet(arg2, arg1, "status", Enum.RocketLauncherTargetStatesFlags.ROCKET_LAUNCHER_TARGET_LOCKING)
	end

	registerVal8.condition = __FUNC_816_
	registerVal6 = {registerVal7, registerVal8}
	registerVal3:mergeStateConditions(registerVal6)
	local function __FUNC_907_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "status"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:linkToElementModel(registerVal3, "status", true, __FUNC_907_)
	registerVal2:addElement(registerVal3)
	registerVal2.rocketLauncherLockonInternal0 = registerVal3
	local function __FUNC_A20_(arg0, arg2)
		CallCustomElementFunction_Element(arg0, "setupRocketLauncherTarget", arg1)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setModel", __FUNC_A20_)
	local function __FUNC_AAE_(arg0)
		arg0.rocketLauncherLockonInternal0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_AAE_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

