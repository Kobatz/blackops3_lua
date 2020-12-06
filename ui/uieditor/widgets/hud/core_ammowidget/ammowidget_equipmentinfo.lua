-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_EquipmentLethalItem")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_EquipmentTacticalItem")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_EquipmentInfo = registerVal1
function CoD.AmmoWidget_EquipmentInfo.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_EquipmentInfo)
	registerVal2.id = "AmmoWidget_EquipmentInfo"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 90.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 42.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.AmmoWidget_EquipmentLethalItem.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 46.000000, 83.000000)
	registerVal3:setTopBottom(true, false, 4.000000, 36.000000)
	local function __FUNC_A22_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.Lethal1:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "CurrentPrimaryOffhand", "primaryOffhand", __FUNC_A22_)
	local function __FUNC_AF1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.Lethal2:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "CurrentPrimaryOffhand", "primaryOffhand", __FUNC_AF1_)
	local function __FUNC_BC1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.Lethal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "CurrentPrimaryOffhand", "primaryOffhand", __FUNC_BC1_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Single"
	local function __FUNC_C91_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "currentPrimaryOffhand.primaryOffhandCount", 1.000000)
	end

	registerVal7.condition = __FUNC_C91_
	local registerVal8 = {}
	registerVal8.stateName = "Double"
	local function __FUNC_D29_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "currentPrimaryOffhand.primaryOffhandCount", 2.000000)
	end

	registerVal8.condition = __FUNC_D29_
	local registerVal9 = {}
	registerVal9.stateName = "Triple"
	local function __FUNC_DC1_(arg0, arg2, arg3)
		return IsModelValueGreaterThanOrEqualTo(arg1, "currentPrimaryOffhand.primaryOffhandCount", 3.000000)
	end

	registerVal9.condition = __FUNC_DC1_
	registerVal6 = {registerVal7, registerVal8, registerVal9}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "currentPrimaryOffhand.primaryOffhandCount")
	local function __FUNC_E66_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentPrimaryOffhand.primaryOffhandCount"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_E66_)
	registerVal2:addElement(registerVal3)
	registerVal2.LethalItem = registerVal3
	local registerVal4 = CoD.AmmoWidget_EquipmentTacticalItem.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 5.500000, 42.500000)
	registerVal4:setTopBottom(true, false, 4.000000, 36.000000)
	local function __FUNC_FA3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.Tactical1:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "CurrentSecondaryOffhand", "secondaryOffhand", __FUNC_FA3_)
	local function __FUNC_1073_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.Tactical2:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "CurrentSecondaryOffhand", "secondaryOffhand", __FUNC_1073_)
	local function __FUNC_1143_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.Tactical3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "CurrentSecondaryOffhand", "secondaryOffhand", __FUNC_1143_)
	registerVal7 = {}
	registerVal8 = {}
	registerVal8.stateName = "Single"
	local function __FUNC_1213_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "currentSecondaryOffhand.secondaryOffhandCount", 1.000000)
	end

	registerVal8.condition = __FUNC_1213_
	registerVal9 = {}
	registerVal9.stateName = "Double"
	local function __FUNC_12AD_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "currentSecondaryOffhand.secondaryOffhandCount", 2.000000)
	end

	registerVal9.condition = __FUNC_12AD_
	local registerVal10 = {}
	registerVal10.stateName = "Triple"
	local function __FUNC_1349_(arg0, arg2, arg3)
		return IsModelValueGreaterThanOrEqualTo(arg1, "currentSecondaryOffhand.secondaryOffhandCount", 3.000000)
	end

	registerVal10.condition = __FUNC_1349_
	registerVal7 = {registerVal8, registerVal9, registerVal10}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "currentSecondaryOffhand.secondaryOffhandCount")
	local function __FUNC_13F2_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentSecondaryOffhand.secondaryOffhandCount"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_13F2_)
	registerVal2:addElement(registerVal4)
	registerVal2.TacticalItem = registerVal4
	local function __FUNC_1533_(arg0)
		arg0.LethalItem:close()
		arg0.TacticalItem:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1533_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

