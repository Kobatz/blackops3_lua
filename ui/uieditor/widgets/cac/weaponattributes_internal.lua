-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.WeaponAttributesBar")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.WeaponAttributes_Internal = registerVal1
function CoD.WeaponAttributes_Internal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.WeaponAttributes_Internal)
	registerVal2.id = "WeaponAttributes_Internal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 372.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 84.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 62.000000)
	registerVal3:setTopBottom(true, false, 2.000000, 22.000000)
	registerVal3:setRGB(0.760000, 0.760000, 0.760000)
	registerVal3:setText(Engine.Localize("MPUI_DAMAGE_CAPS"))
	registerVal3:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal3:setLetterSpacing(0.600000)
	registerVal2:addElement(registerVal3)
	registerVal2.damageLabel = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 0.000000, 51.000000)
	registerVal4:setTopBottom(true, false, 22.000000, 42.000000)
	registerVal4:setRGB(0.760000, 0.760000, 0.760000)
	registerVal4:setText(Engine.Localize("MPUI_RANGE_CAPS"))
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setLetterSpacing(0.600000)
	registerVal2:addElement(registerVal4)
	registerVal2.rangeLabel = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 0.000000, 79.000000)
	registerVal5:setTopBottom(true, false, 42.000000, 62.000000)
	registerVal5:setRGB(0.760000, 0.760000, 0.760000)
	registerVal5:setText(Engine.Localize("MPUI_FIRE_RATE_CAPS"))
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal5:setLetterSpacing(0.600000)
	registerVal2:addElement(registerVal5)
	registerVal2.fireRangeLabel = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 0.000000, 74.000000)
	registerVal6:setTopBottom(true, false, 62.000000, 82.000000)
	registerVal6:setRGB(0.760000, 0.760000, 0.760000)
	registerVal6:setText(Engine.Localize("MPUI_ACCURACY_CAPS"))
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal6:setLetterSpacing(0.600000)
	registerVal2:addElement(registerVal6)
	registerVal2.accuracyLabel = registerVal6
	local registerVal7 = CoD.WeaponAttributesBar.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 88.000000, 368.000000)
	registerVal7:setTopBottom(true, false, 66.000000, 80.000000)
	local function __FUNC_1271_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, nil, false, __FUNC_1271_)
	local function __FUNC_12C2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal8 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal9 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal7.weaponAttribute:setShaderVector(0.000000, GetWeaponAttributes(arg1, registerVal7, registerVal8, registerVal9, CoD.GetVectorComponentFromString(registerVal1, 4.000000)))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "accuracy", true, __FUNC_12C2_)
	local function __FUNC_1466_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal8 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal9 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal7.attachmentAttribute:setShaderVector(0.000000, GetWeaponAttributesForAttachment(arg1, registerVal7, registerVal8, registerVal9, CoD.GetVectorComponentFromString(registerVal1, 4.000000)))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "accuracy", true, __FUNC_1466_)
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Increase"
	local function __FUNC_161B_(arg0, arg2, arg3)
		return IsCACWeaponAttributeIncrease(arg2, arg1, "accuracy")
	end

	registerVal11.condition = __FUNC_161B_
	local registerVal12 = {}
	registerVal12.stateName = "Decrease"
	local function __FUNC_1694_(arg0, arg2, arg3)
		local registerVal3 = IsCACWeaponAttributeIncrease(arg2, arg1, "accuracy")
		return (not registerVal3)
	end

	registerVal12.condition = __FUNC_1694_
	registerVal10 = {registerVal11, registerVal12}
	registerVal7:mergeStateConditions(registerVal10)
	local function __FUNC_1714_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "accuracy"
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:linkToElementModel(registerVal7, "accuracy", true, __FUNC_1714_)
	registerVal2:addElement(registerVal7)
	registerVal2.accuracyAttribute = registerVal7
	local registerVal8 = CoD.WeaponAttributesBar.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 88.000000, 368.000000)
	registerVal8:setTopBottom(true, false, 45.000000, 59.000000)
	local function __FUNC_1832_(arg0)
		registerVal8:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal2, nil, false, __FUNC_1832_)
	local function __FUNC_1882_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal8 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal9 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal8.weaponAttribute:setShaderVector(0.000000, GetWeaponAttributes(arg1, registerVal7, registerVal8, registerVal9, CoD.GetVectorComponentFromString(registerVal1, 4.000000)))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "fireRate", true, __FUNC_1882_)
	local function __FUNC_1A26_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal8 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal9 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal8.attachmentAttribute:setShaderVector(0.000000, GetWeaponAttributesForAttachment(arg1, registerVal7, registerVal8, registerVal9, CoD.GetVectorComponentFromString(registerVal1, 4.000000)))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "fireRate", true, __FUNC_1A26_)
	registerVal11 = {}
	registerVal12 = {}
	registerVal12.stateName = "Increase"
	local function __FUNC_1BDB_(arg0, arg2, arg3)
		return IsCACWeaponAttributeIncrease(arg2, arg1, "fireRate")
	end

	registerVal12.condition = __FUNC_1BDB_
	local registerVal13 = {}
	registerVal13.stateName = "Decrease"
	local function __FUNC_1C54_(arg0, arg2, arg3)
		local registerVal3 = IsCACWeaponAttributeIncrease(arg2, arg1, "fireRate")
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_1C54_
	registerVal11 = {registerVal12, registerVal13}
	registerVal8:mergeStateConditions(registerVal11)
	local function __FUNC_1CD4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "fireRate"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:linkToElementModel(registerVal8, "fireRate", true, __FUNC_1CD4_)
	registerVal2:addElement(registerVal8)
	registerVal2.fireRateAttribute = registerVal8
	local registerVal9 = CoD.WeaponAttributesBar.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 88.000000, 368.000000)
	registerVal9:setTopBottom(true, false, 25.000000, 39.000000)
	local function __FUNC_1DF2_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:linkToElementModel(registerVal2, nil, false, __FUNC_1DF2_)
	local function __FUNC_1E42_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal8 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal9 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal9.weaponAttribute:setShaderVector(0.000000, GetWeaponAttributes(arg1, registerVal7, registerVal8, registerVal9, CoD.GetVectorComponentFromString(registerVal1, 4.000000)))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "range", true, __FUNC_1E42_)
	local function __FUNC_1FE6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal8 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal9 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal9.attachmentAttribute:setShaderVector(0.000000, GetWeaponAttributesForAttachment(arg1, registerVal7, registerVal8, registerVal9, CoD.GetVectorComponentFromString(registerVal1, 4.000000)))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "range", true, __FUNC_1FE6_)
	registerVal12 = {}
	registerVal13 = {}
	registerVal13.stateName = "Increase"
	local function __FUNC_219B_(arg0, arg2, arg3)
		return IsCACWeaponAttributeIncrease(arg2, arg1, "range")
	end

	registerVal13.condition = __FUNC_219B_
	local registerVal14 = {}
	registerVal14.stateName = "Decrease"
	local function __FUNC_2211_(arg0, arg2, arg3)
		local registerVal3 = IsCACWeaponAttributeIncrease(arg2, arg1, "range")
		return (not registerVal3)
	end

	registerVal14.condition = __FUNC_2211_
	registerVal12 = {registerVal13, registerVal14}
	registerVal9:mergeStateConditions(registerVal12)
	local function __FUNC_228D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "range"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:linkToElementModel(registerVal9, "range", true, __FUNC_228D_)
	registerVal2:addElement(registerVal9)
	registerVal2.rangeAttribute = registerVal9
	registerVal10 = CoD.WeaponAttributesBar.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 88.000000, 368.000000)
	registerVal10:setTopBottom(true, false, 4.000000, 18.000000)
	local function __FUNC_23A7_(arg0)
		registerVal10:setModel(arg0, arg1)
	end

	registerVal10:linkToElementModel(registerVal2, nil, false, __FUNC_23A7_)
	local function __FUNC_23F6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal8 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal9 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal10.weaponAttribute:setShaderVector(0.000000, GetWeaponAttributes(arg1, registerVal7, registerVal8, registerVal9, CoD.GetVectorComponentFromString(registerVal1, 4.000000)))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "damage", true, __FUNC_23F6_)
	local function __FUNC_259A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal8 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal9 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal10.attachmentAttribute:setShaderVector(0.000000, GetWeaponAttributesForAttachment(arg1, registerVal7, registerVal8, registerVal9, CoD.GetVectorComponentFromString(registerVal1, 4.000000)))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "damage", true, __FUNC_259A_)
	registerVal13 = {}
	registerVal14 = {}
	registerVal14.stateName = "Increase"
	local function __FUNC_274F_(arg0, arg2, arg3)
		return IsCACWeaponAttributeIncrease(arg2, arg1, "damage")
	end

	registerVal14.condition = __FUNC_274F_
	local registerVal15 = {}
	registerVal15.stateName = "Decrease"
	local function __FUNC_27C6_(arg0, arg2, arg3)
		local registerVal3 = IsCACWeaponAttributeIncrease(arg2, arg1, "damage")
		return (not registerVal3)
	end

	registerVal15.condition = __FUNC_27C6_
	registerVal13 = {registerVal14, registerVal15}
	registerVal10:mergeStateConditions(registerVal13)
	local function __FUNC_2842_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "damage"
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:linkToElementModel(registerVal10, "damage", true, __FUNC_2842_)
	registerVal2:addElement(registerVal10)
	registerVal2.damageAttribute = registerVal10
	registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 199.000000, 375.000000)
	registerVal11:setTopBottom(true, false, -2.000000, 86.000000)
	registerVal11:setAlpha(0.500000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_cac_weaponstatsframe"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.frame = registerVal11
	registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 380.000000, 416.000000)
	registerVal12:setTopBottom(true, false, -1.000000, 3.000000)
	registerVal12:setAlpha(0.200000)
	registerVal12:setYRot(-180.000000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.Pixel1 = registerVal12
	registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 380.000000, 416.000000)
	registerVal13:setTopBottom(true, false, 82.000000, 86.000000)
	registerVal13:setAlpha(0.200000)
	registerVal13:setYRot(-180.000000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.Pixel2 = registerVal13
	local function __FUNC_295C_(arg0)
		arg0.accuracyAttribute:close()
		arg0.fireRateAttribute:close()
		arg0.rangeAttribute:close()
		arg0.damageAttribute:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_295C_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

