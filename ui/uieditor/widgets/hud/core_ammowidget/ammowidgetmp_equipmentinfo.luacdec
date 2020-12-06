-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidgetMP_EquipmentLethalItem")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidgetMP_EquipmentTacticalItem")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidgetMP_EquipmentInfo = registerVal1
function CoD.AmmoWidgetMP_EquipmentInfo.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidgetMP_EquipmentInfo)
	registerVal2.id = "AmmoWidgetMP_EquipmentInfo"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 90.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 42.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.AmmoWidgetMP_EquipmentLethalItem.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 45.000000, 82.000000)
	registerVal3:setTopBottom(true, false, 4.000000, 36.000000)
	local function __FUNC_A2C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.Lethal1:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "CurrentPrimaryOffhand", "primaryOffhand", __FUNC_A2C_)
	local function __FUNC_AFD_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.Lethal2:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "CurrentPrimaryOffhand", "primaryOffhand", __FUNC_AFD_)
	local function __FUNC_BCD_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.Lethal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "CurrentPrimaryOffhand", "primaryOffhand", __FUNC_BCD_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Single"
	local function __FUNC_C9D_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "currentPrimaryOffhand.primaryOffhandCount", 1.000000)
	end

	registerVal7.condition = __FUNC_C9D_
	local registerVal8 = {}
	registerVal8.stateName = "Double"
	local function __FUNC_D35_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "currentPrimaryOffhand.primaryOffhandCount", 2.000000)
	end

	registerVal8.condition = __FUNC_D35_
	local registerVal9 = {}
	registerVal9.stateName = "Triple"
	local function __FUNC_DCD_(arg0, arg2, arg3)
		return IsModelValueGreaterThanOrEqualTo(arg1, "currentPrimaryOffhand.primaryOffhandCount", 3.000000)
	end

	registerVal9.condition = __FUNC_DCD_
	registerVal6 = {registerVal7, registerVal8, registerVal9}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "currentPrimaryOffhand.primaryOffhandCount")
	local function __FUNC_E72_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentPrimaryOffhand.primaryOffhandCount"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_E72_)
	registerVal2:addElement(registerVal3)
	registerVal2.LethalItem = registerVal3
	local registerVal4 = CoD.AmmoWidgetMP_EquipmentTacticalItem.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.500000, 37.500000)
	registerVal4:setTopBottom(true, false, 4.000000, 36.000000)
	local function __FUNC_FAF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.Tactical1:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "CurrentSecondaryOffhand", "secondaryOffhand", __FUNC_FAF_)
	local function __FUNC_107F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.Tactical2:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "CurrentSecondaryOffhand", "secondaryOffhand", __FUNC_107F_)
	local function __FUNC_114F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.Tactical3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "CurrentSecondaryOffhand", "secondaryOffhand", __FUNC_114F_)
	registerVal7 = {}
	registerVal8 = {}
	registerVal8.stateName = "Single"
	local function __FUNC_121F_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "currentSecondaryOffhand.secondaryOffhandCount", 1.000000)
	end

	registerVal8.condition = __FUNC_121F_
	registerVal9 = {}
	registerVal9.stateName = "Double"
	local function __FUNC_12B9_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "currentSecondaryOffhand.secondaryOffhandCount", 2.000000)
	end

	registerVal9.condition = __FUNC_12B9_
	local registerVal10 = {}
	registerVal10.stateName = "Triple"
	local function __FUNC_1355_(arg0, arg2, arg3)
		return IsModelValueGreaterThanOrEqualTo(arg1, "currentSecondaryOffhand.secondaryOffhandCount", 3.000000)
	end

	registerVal10.condition = __FUNC_1355_
	registerVal7 = {registerVal8, registerVal9, registerVal10}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "currentSecondaryOffhand.secondaryOffhandCount")
	local function __FUNC_13FE_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentSecondaryOffhand.secondaryOffhandCount"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_13FE_)
	registerVal2:addElement(registerVal4)
	registerVal2.TacticalItem = registerVal4
	local function __FUNC_153F_(arg0)
		arg0.LethalItem:close()
		arg0.TacticalItem:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_153F_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

