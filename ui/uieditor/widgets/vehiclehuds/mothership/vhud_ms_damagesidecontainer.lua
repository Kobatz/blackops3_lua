-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_DamageIconSide")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_ms_DamageSideContainer = registerVal1
function CoD.vhud_ms_DamageSideContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_ms_DamageSideContainer)
	registerVal2.id = "vhud_ms_DamageSideContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 61.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 26.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.vhud_ms_DamageIconSide.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -32.250000, -6.250000)
	registerVal3:setTopBottom(false, false, -12.750000, 12.750000)
	registerVal3:setYRot(180.000000)
	local function __FUNC_818_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_818_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Invisible"
	local function __FUNC_86A_(arg0, arg2, arg3)
		local registerVal3 = IsSelfEnumModelValueTrue(arg2, arg1, Enum.VehiclePartDestroyed.VEHICLE_PART_DESTROYED_1)
		return (not registerVal3)
	end

	registerVal7.condition = __FUNC_86A_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	local function __FUNC_938_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = Enum.VehiclePartDestroyed.VEHICLE_PART_DESTROYED_1
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:linkToElementModel(registerVal3, Enum.VehiclePartDestroyed.VEHICLE_PART_DESTROYED_1, true, __FUNC_938_)
	registerVal2:addElement(registerVal3)
	registerVal2.vhudmsDamageIconSideLeft = registerVal3
	local registerVal4 = CoD.vhud_ms_DamageIconSide.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, 4.750000, 30.250000)
	registerVal4:setTopBottom(false, false, -12.750000, 12.750000)
	local function __FUNC_AAE_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_AAE_)
	registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Invisible"
	local function __FUNC_AFE_(arg0, arg2, arg3)
		local registerVal3 = IsSelfEnumModelValueTrue(arg2, arg1, Enum.VehiclePartDestroyed.VEHICLE_PART_DESTROYED_2)
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_AFE_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	local function __FUNC_BCC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = Enum.VehiclePartDestroyed.VEHICLE_PART_DESTROYED_2
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:linkToElementModel(registerVal4, Enum.VehiclePartDestroyed.VEHICLE_PART_DESTROYED_2, true, __FUNC_BCC_)
	registerVal2:addElement(registerVal4)
	registerVal2.vhudmsDamageIconSideRight = registerVal4
	local function __FUNC_D42_(arg0)
		arg0.vhudmsDamageIconSideLeft:close()
		arg0.vhudmsDamageIconSideRight:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_D42_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

