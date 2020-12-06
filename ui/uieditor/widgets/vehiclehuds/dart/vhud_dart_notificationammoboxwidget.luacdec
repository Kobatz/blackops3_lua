-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.dart.vhud_dart_ammo_item")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_dart_NotificationAmmoBoxWidget = registerVal1
function CoD.vhud_dart_NotificationAmmoBoxWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_dart_NotificationAmmoBoxWidget)
	registerVal2.id = "vhud_dart_NotificationAmmoBoxWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 48.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 48.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.vhud_dart_ammo_item.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 48.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 16.000000)
	local function __FUNC_863_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_863_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "On"
	local function __FUNC_8B2_(arg0, arg2, arg3)
		return IsSelfModelValueGreaterThanOrEqualTo(arg2, arg1, "ammo", 3.000000)
	end

	registerVal7.condition = __FUNC_8B2_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	local function __FUNC_939_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "ammo"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:linkToElementModel(registerVal3, "ammo", true, __FUNC_939_)
	registerVal2:addElement(registerVal3)
	registerVal2.ammoItem3 = registerVal3
	local registerVal4 = CoD.vhud_dart_ammo_item.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 48.000000)
	registerVal4:setTopBottom(true, false, 16.000000, 32.000000)
	local function __FUNC_A52_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_A52_)
	registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "On"
	local function __FUNC_AA2_(arg0, arg2, arg3)
		return IsSelfModelValueGreaterThanOrEqualTo(arg2, arg1, "ammo", 2.000000)
	end

	registerVal8.condition = __FUNC_AA2_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	local function __FUNC_B29_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "ammo"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:linkToElementModel(registerVal4, "ammo", true, __FUNC_B29_)
	registerVal2:addElement(registerVal4)
	registerVal2.ammoItem2 = registerVal4
	local registerVal5 = CoD.vhud_dart_ammo_item.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 48.000000)
	registerVal5:setTopBottom(true, false, 32.000000, 48.000000)
	local function __FUNC_C42_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_C42_)
	registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "On"
	local function __FUNC_C92_(arg0, arg2, arg3)
		return IsSelfModelValueGreaterThanOrEqualTo(arg2, arg1, "ammo", 1.000000)
	end

	registerVal9.condition = __FUNC_C92_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	local function __FUNC_D19_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "ammo"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "ammo", true, __FUNC_D19_)
	registerVal2:addElement(registerVal5)
	registerVal2.ammoItem1 = registerVal5
	registerVal6 = {}
	registerVal7 = {}
	local function __FUNC_E32_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_E32_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	local function __FUNC_E92_(arg0)
		arg0.ammoItem3:close()
		arg0.ammoItem2:close()
		arg0.ammoItem1:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_E92_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

