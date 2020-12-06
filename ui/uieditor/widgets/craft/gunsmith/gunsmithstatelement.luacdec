-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Craft.Gunsmith.GunsmithStatBaseWeaponValue")
require("ui.uieditor.widgets.Craft.Gunsmith.GunsmithStatVariantValue")
require("ui.uieditor.widgets.Craft.Gunsmith.GunsmithStatName")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GunsmithStatElement = registerVal1
function CoD.GunsmithStatElement.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GunsmithStatElement)
	registerVal2.id = "GunsmithStatElement"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 100.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 24.000000)
	local registerVal3 = CoD.GunsmithStatBaseWeaponValue.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 24.000000)
	local function __FUNC_9A0_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_9A0_)
	local function __FUNC_9F2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.weaponStatValue:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "weaponStatValue", true, __FUNC_9F2_)
	registerVal2:addElement(registerVal3)
	registerVal2.weaponStatValue = registerVal3
	local registerVal4 = CoD.GunsmithStatVariantValue.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 24.000000)
	local function __FUNC_ACF_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_ACF_)
	local function __FUNC_B1E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.variantValue:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "variantStatValue", true, __FUNC_B1E_)
	registerVal2:addElement(registerVal4)
	registerVal2.variantStatValue = registerVal4
	local registerVal5 = CoD.GunsmithStatName.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 24.000000)
	local function __FUNC_BF8_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_BF8_)
	local function __FUNC_C4A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.statName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "statName", true, __FUNC_C4A_)
	registerVal2:addElement(registerVal5)
	registerVal2.statName = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_D20_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.weaponStatValue:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.variantStatValue:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.statName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_D20_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_EE0_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.weaponStatValue:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.variantStatValue:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.statName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_EE0_
	registerVal6.StatName = registerVal7
	registerVal7 = {}
	local function __FUNC_10A0_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.weaponStatValue:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.variantStatValue:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.statName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_10A0_
	registerVal6.VariantStatValue = registerVal7
	registerVal7 = {}
	local function __FUNC_1260_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.weaponStatValue:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.variantStatValue:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.statName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1260_
	registerVal6.WeaponStatValue = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "StatName"
	local function __FUNC_1420_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "type", "statName")
	end

	registerVal9.condition = __FUNC_1420_
	local registerVal10 = {}
	registerVal10.stateName = "VariantStatValue"
	local function __FUNC_14A9_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "type", "variantStatValue")
	end

	registerVal10.condition = __FUNC_14A9_
	local registerVal11 = {}
	registerVal11.stateName = "WeaponStatValue"
	local function __FUNC_1539_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "type", "weaponStatValue")
	end

	registerVal11.condition = __FUNC_1539_
	registerVal8 = {registerVal9, registerVal10, registerVal11}
	registerVal2:mergeStateConditions(registerVal8)
	local function __FUNC_15C8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "type"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "type", true, __FUNC_15C8_)
	local function __FUNC_16E2_(arg0)
		arg0.weaponStatValue:close()
		arg0.variantStatValue:close()
		arg0.statName:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_16E2_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

