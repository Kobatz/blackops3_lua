-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_PrimaryWeaponDescription")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.InfoPaneItemName")
require("ui.uieditor.widgets.CAC.WeaponAttributes_Internal")
require("ui.uieditor.widgets.CAC.cac_LockBig")
require("ui.uieditor.widgets.PC.Utility.XCamMouseControl")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChooseShowcaseWeapon_SelectionInfoWidget = registerVal1
function CoD.ChooseShowcaseWeapon_SelectionInfoWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChooseShowcaseWeapon_SelectionInfoWidget)
	registerVal2.id = "ChooseShowcaseWeapon_SelectionInfoWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 850.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 596.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 19.000000, 384.000000)
	registerVal3:setTopBottom(true, false, 51.000000, 73.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setText(Engine.Localize("MENU_SHOWCASEWEAPON_PURCHASE"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.purchaseWeaponDescTextBox = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 19.000000, 384.000000)
	registerVal4:setTopBottom(true, false, 51.000000, 73.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_11B6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(GetUnlockDescription(arg1, registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_11B6_)
	registerVal2:addElement(registerVal4)
	registerVal2.unlockWeaponDescTextBox = registerVal4
	local registerVal5 = CoD.cac_PrimaryWeaponDescription.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 19.000000, 384.000000)
	registerVal5:setTopBottom(true, false, 51.000000, 73.000000)
	local function __FUNC_1272_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.weaponDescTextBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "description", true, __FUNC_1272_)
	registerVal2:addElement(registerVal5)
	registerVal2.weaponDescTextBox = registerVal5
	local registerVal6 = CoD.InfoPaneItemName.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 18.000000, 399.000000)
	registerVal6:setTopBottom(true, false, 13.000000, 47.000000)
	registerVal6.weaponNameWithVariant.itemName.itemName:setText(Engine.Localize("WEAPON_AR_STANDARD"))
	registerVal6.weaponNameWithVariant.variantName:setAlpha(1.000000)
	registerVal6.weaponNameWithVariant.variantName.itemName:setText(Engine.Localize("WEAPON_AR_STANDARD"))
	local function __FUNC_1351_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_1351_)
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Equipped"
	local function __FUNC_13A2_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal10.condition = __FUNC_13A2_
	local registerVal11 = {}
	registerVal11.stateName = "Available"
	local function __FUNC_13EC_(arg0, arg1, arg2)
		return true
	end

	registerVal11.condition = __FUNC_13EC_
	local registerVal12 = {}
	registerVal12.stateName = "NotEquippable"
	local function __FUNC_1420_(arg0, arg1, arg2)
		return true
	end

	registerVal12.condition = __FUNC_1420_
	local registerVal13 = {}
	registerVal13.stateName = "NotAvailable"
	local function __FUNC_1454_(arg0, arg1, arg2)
		return true
	end

	registerVal13.condition = __FUNC_1454_
	registerVal9 = {registerVal10, registerVal11, registerVal12, registerVal13}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal2:addElement(registerVal6)
	registerVal2.itemName = registerVal6
	local registerVal7 = CoD.WeaponAttributes_Internal.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 18.000000, 439.000000)
	registerVal7:setTopBottom(true, false, 440.000000, 526.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.WeaponAttributesInternal = registerVal7
	local registerVal8 = CoD.cac_LockBig.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 371.510000, 467.510000)
	registerVal8:setTopBottom(true, false, -97.000000, 573.000000)
	registerVal8:setAlpha(0.000000)
	local function __FUNC_1488_(arg0)
		registerVal8:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal2, nil, false, __FUNC_1488_)
	registerVal11 = {}
	registerVal12 = {}
	registerVal12.stateName = "Locked"
	local function __FUNC_14DA_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemLockedOrNotPurchased(arg0, arg2, arg1)
		if registerVal3 then
			registerVal3 = IsSelfModelValueTrue(arg2, arg1, "isBMClassified")
		end
		return (not registerVal3)
	end

	registerVal12.condition = __FUNC_14DA_
	registerVal13 = {}
	registerVal13.stateName = "NotAvailable"
	local function __FUNC_1599_(arg0, arg2, arg3)
		local registerVal3 = IsInPermanentUnlockMenu(arg1)
		if not registerVal3 then
			registerVal3 = AlwaysFalse()
		else
		end
		return true
	end

	registerVal13.condition = __FUNC_1599_
	registerVal11 = {registerVal12, registerVal13}
	registerVal8:mergeStateConditions(registerVal11)
	local function __FUNC_1626_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:linkToElementModel(registerVal8, "itemIndex", true, __FUNC_1626_)
	local function __FUNC_1743_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:linkToElementModel(registerVal8, "isBMClassified", true, __FUNC_1743_)
	registerVal2:addElement(registerVal8)
	registerVal2.lockedIcon = registerVal8
	registerVal9 = CoD.XCamMouseControl.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, 147.510000, -125.000000)
	registerVal9:setTopBottom(true, true, 47.000000, -156.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.xcamMouse = registerVal9
	registerVal10 = {}
	registerVal11 = {}
	local function __FUNC_1864_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.purchaseWeaponDescTextBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.unlockWeaponDescTextBox:setLeftRight(true, false, 19.510000, 275.510000)
		registerVal2.unlockWeaponDescTextBox:setTopBottom(true, false, 54.000000, 73.000000)
		registerVal2.unlockWeaponDescTextBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.weaponDescTextBox:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.WeaponAttributesInternal:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.lockedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal11.DefaultClip = __FUNC_1864_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_1B8C_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.purchaseWeaponDescTextBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.unlockWeaponDescTextBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.weaponDescTextBox:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.itemName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.WeaponAttributesInternal:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.lockedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal11.DefaultClip = __FUNC_1B8C_
	registerVal10.BMClassified = registerVal11
	registerVal11 = {}
	local function __FUNC_1E7A_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.purchaseWeaponDescTextBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.unlockWeaponDescTextBox:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.weaponDescTextBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.WeaponAttributesInternal:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.660000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal11.DefaultClip = __FUNC_1E7A_
	registerVal10.Locked = registerVal11
	registerVal11 = {}
	local function __FUNC_2115_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.purchaseWeaponDescTextBox:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.unlockWeaponDescTextBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.weaponDescTextBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.WeaponAttributesInternal:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.660000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal11.DefaultClip = __FUNC_2115_
	registerVal10.NotAvailable = registerVal11
	registerVal11 = {}
	local function __FUNC_23B1_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.purchaseWeaponDescTextBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.unlockWeaponDescTextBox:setLeftRight(true, false, 19.510000, 275.510000)
		registerVal2.unlockWeaponDescTextBox:setTopBottom(true, false, 54.000000, 73.000000)
		registerVal2.unlockWeaponDescTextBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.weaponDescTextBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.WeaponAttributesInternal:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.lockedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal11.DefaultClip = __FUNC_23B1_
	registerVal10.VariantSelect = registerVal11
	registerVal2.clipsPerState = registerVal10
	registerVal12 = {}
	registerVal13 = {}
	registerVal13.stateName = "BMClassified"
	local function __FUNC_26D8_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isBMClassified")
	end

	registerVal13.condition = __FUNC_26D8_
	local registerVal14 = {}
	registerVal14.stateName = "Locked"
	local function __FUNC_2752_(arg0, arg2, arg3)
		return IsCACItemLocked(arg0, arg2, arg1)
	end

	registerVal14.condition = __FUNC_2752_
	local registerVal15 = {}
	registerVal15.stateName = "NotAvailable"
	local function __FUNC_27AD_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemPurchased(arg2, arg1)
		return (not registerVal3)
	end

	registerVal15.condition = __FUNC_27AD_
	local registerVal16 = {}
	registerVal16.stateName = "VariantSelect"
	local function __FUNC_280C_(arg0, arg1, arg2)
		return true
	end

	registerVal16.condition = __FUNC_280C_
	registerVal12 = {registerVal13, registerVal14, registerVal15, registerVal16}
	registerVal2:mergeStateConditions(registerVal12)
	local function __FUNC_2840_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isBMClassified", true, __FUNC_2840_)
	local function __FUNC_2964_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_2964_)
	local function __FUNC_2A83_(arg0)
		arg0.weaponDescTextBox:close()
		arg0.itemName:close()
		arg0.WeaponAttributesInternal:close()
		arg0.lockedIcon:close()
		arg0.xcamMouse:close()
		arg0.unlockWeaponDescTextBox:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2A83_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

