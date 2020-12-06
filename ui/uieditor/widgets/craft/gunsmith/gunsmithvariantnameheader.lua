-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.InfoPaneItemName")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GunsmithVariantNameHeader = registerVal1
function CoD.GunsmithVariantNameHeader.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GunsmithVariantNameHeader)
	registerVal2.id = "GunsmithVariantNameHeader"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 417.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 49.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.InfoPaneItemName.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 3.000000, 384.000000)
	registerVal3:setTopBottom(true, false, 6.000000, 40.000000)
	registerVal3.weaponNameWithVariant.variantName:setAlpha(1.000000)
	local function __FUNC_7E1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.weaponNameWithVariant.itemName.itemName:setText(Engine.Localize(GetItemNameFromIndexMP(registerVal1)))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "weaponIndex", true, __FUNC_7E1_)
	local function __FUNC_917_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.weaponNameWithVariant.variantName.itemName:setText(registerVal1)
		end
	end

	registerVal3:linkToElementModel(registerVal2, "variantNameBig", true, __FUNC_917_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Equipped"
	local function __FUNC_A12_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal7.condition = __FUNC_A12_
	local registerVal8 = {}
	registerVal8.stateName = "Available"
	local function __FUNC_A5C_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal8.condition = __FUNC_A5C_
	local registerVal9 = {}
	registerVal9.stateName = "NeedsWildcard"
	local function __FUNC_AA9_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal9.condition = __FUNC_AA9_
	local registerVal10 = {}
	registerVal10.stateName = "NotEquippable"
	local function __FUNC_AF5_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal10.condition = __FUNC_AF5_
	local registerVal11 = {}
	registerVal11.stateName = "NotAvailable"
	local function __FUNC_B41_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal11.condition = __FUNC_B41_
	registerVal6 = {registerVal7, registerVal8, registerVal9, registerVal10, registerVal11}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal2:addElement(registerVal3)
	registerVal2.InfoPaneItemName = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_B8D_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.InfoPaneItemName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_B8D_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_C8F_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.InfoPaneItemName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_C8F_
	registerVal4.Hide = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_D94_(arg0)
		arg0.InfoPaneItemName:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_D94_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

