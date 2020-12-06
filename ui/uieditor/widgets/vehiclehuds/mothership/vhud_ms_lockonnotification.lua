-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_LockBox")
require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_LockArrow")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_ms_LockOnNotification = registerVal1
function CoD.vhud_ms_LockOnNotification.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_ms_LockOnNotification)
	registerVal2.id = "vhud_ms_LockOnNotification"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 40.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 40.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.vhud_ms_LockBox.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -27.590000, 27.590000)
	registerVal3:setTopBottom(false, false, -23.590000, 31.590000)
	local function __FUNC_D28_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_D28_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "On"
	local function __FUNC_D7A_(arg0, arg2, arg3)
		return IsSelfEnumModelValueTrue(arg2, arg1, Enum.MissileLockedOnDirection.MISSILE_LOCKED_ON_DIRECTION_CENTER)
	end

	registerVal7.condition = __FUNC_D7A_
	local registerVal8 = {}
	registerVal8.stateName = "HasLock"
	local function __FUNC_E52_(arg0, arg2, arg3)
		return VehicleHasEnemyLock(arg2, arg1)
	end

	registerVal8.condition = __FUNC_E52_
	registerVal6 = {registerVal7, registerVal8}
	registerVal3:mergeStateConditions(registerVal6)
	local function __FUNC_EAD_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = Enum.MissileLockedOnDirection.MISSILE_LOCKED_ON_DIRECTION_CENTER
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:linkToElementModel(registerVal3, Enum.MissileLockedOnDirection.MISSILE_LOCKED_ON_DIRECTION_CENTER, true, __FUNC_EAD_)
	local function __FUNC_1030_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = nil
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:linkToElementModel(registerVal3, nil, true, __FUNC_1030_)
	registerVal2:addElement(registerVal3)
	registerVal2.vhudmsLockBox = registerVal3
	local registerVal4 = CoD.vhud_ms_LockArrow.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -51.000000, -15.000000)
	registerVal4:setTopBottom(false, false, -19.000000, 17.000000)
	local function __FUNC_113D_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_113D_)
	registerVal7 = {}
	registerVal8 = {}
	registerVal8.stateName = "On"
	local function __FUNC_118E_(arg0, arg2, arg3)
		return IsSelfEnumModelValueTrue(arg2, arg1, Enum.MissileLockedOnDirection.MISSILE_LOCKED_ON_DIRECTION_LEFT)
	end

	registerVal8.condition = __FUNC_118E_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	local function __FUNC_1264_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = Enum.MissileLockedOnDirection.MISSILE_LOCKED_ON_DIRECTION_LEFT
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:linkToElementModel(registerVal4, Enum.MissileLockedOnDirection.MISSILE_LOCKED_ON_DIRECTION_LEFT, true, __FUNC_1264_)
	registerVal2:addElement(registerVal4)
	registerVal2.vhudmsLockArrow = registerVal4
	local registerVal5 = CoD.vhud_ms_LockArrow.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, 15.000000, 51.000000)
	registerVal5:setTopBottom(false, false, -18.000000, 18.000000)
	registerVal5:setZRot(180.000000)
	local function __FUNC_13E6_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_13E6_)
	registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "On"
	local function __FUNC_1436_(arg0, arg2, arg3)
		return IsSelfEnumModelValueTrue(arg2, arg1, Enum.MissileLockedOnDirection.MISSILE_LOCKED_ON_DIRECTION_RIGHT)
	end

	registerVal9.condition = __FUNC_1436_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	local function __FUNC_150D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = Enum.MissileLockedOnDirection.MISSILE_LOCKED_ON_DIRECTION_RIGHT
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, Enum.MissileLockedOnDirection.MISSILE_LOCKED_ON_DIRECTION_RIGHT, true, __FUNC_150D_)
	registerVal2:addElement(registerVal5)
	registerVal2.vhudmsLockArrow0 = registerVal5
	registerVal6 = CoD.vhud_ms_LockArrow.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, -19.000000, 17.000000)
	registerVal6:setTopBottom(false, false, -1.000000, 35.000000)
	registerVal6:setZRot(90.000000)
	local function __FUNC_168F_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_168F_)
	registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "On"
	local function __FUNC_16DE_(arg0, arg2, arg3)
		return IsSelfEnumModelValueTrue(arg2, arg1, Enum.MissileLockedOnDirection.MISSILE_LOCKED_ON_DIRECTION_DOWN)
	end

	registerVal10.condition = __FUNC_16DE_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	local function __FUNC_17B4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = Enum.MissileLockedOnDirection.MISSILE_LOCKED_ON_DIRECTION_DOWN
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:linkToElementModel(registerVal6, Enum.MissileLockedOnDirection.MISSILE_LOCKED_ON_DIRECTION_DOWN, true, __FUNC_17B4_)
	registerVal2:addElement(registerVal6)
	registerVal2.vhudmsLockArrow1 = registerVal6
	registerVal7 = CoD.vhud_ms_LockArrow.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -18.000000, 18.000000)
	registerVal7:setTopBottom(false, false, -36.000000, 0.000000)
	registerVal7:setZRot(-90.000000)
	local function __FUNC_1936_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, nil, false, __FUNC_1936_)
	registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "On"
	local function __FUNC_1986_(arg0, arg2, arg3)
		return IsSelfEnumModelValueTrue(arg2, arg1, Enum.MissileLockedOnDirection.MISSILE_LOCKED_ON_DIRECTION_UP)
	end

	registerVal11.condition = __FUNC_1986_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	local function __FUNC_1A5A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = Enum.MissileLockedOnDirection.MISSILE_LOCKED_ON_DIRECTION_UP
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:linkToElementModel(registerVal7, Enum.MissileLockedOnDirection.MISSILE_LOCKED_ON_DIRECTION_UP, true, __FUNC_1A5A_)
	registerVal2:addElement(registerVal7)
	registerVal2.vhudmsLockArrow2 = registerVal7
	registerVal8 = {}
	registerVal9 = {}
	local function __FUNC_1BD8_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal9.DefaultClip = __FUNC_1BD8_
	local function __FUNC_1C3A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal9.StartUp = __FUNC_1C3A_
	local function __FUNC_1C9A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal9.Zoom = __FUNC_1C9A_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_1CFA_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal9.DefaultClip = __FUNC_1CFA_
	local function __FUNC_1D5A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal9.DefaultState = __FUNC_1D5A_
	registerVal8.On = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_1DBA_(arg0)
		arg0.vhudmsLockBox:close()
		arg0.vhudmsLockArrow:close()
		arg0.vhudmsLockArrow0:close()
		arg0.vhudmsLockArrow1:close()
		arg0.vhudmsLockArrow2:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1DBA_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

