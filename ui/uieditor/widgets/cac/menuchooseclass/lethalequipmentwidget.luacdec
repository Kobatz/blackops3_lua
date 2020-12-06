-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.WeaponItemModelWidgetNew")
require("ui.uieditor.widgets.CAC.MenuChooseClass.CategoryHeader")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LethalEquipmentWidget = registerVal1
function CoD.LethalEquipmentWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LethalEquipmentWidget)
	registerVal2.id = "LethalEquipmentWidget"
	registerVal2.soundSet = "CAC"
	registerVal2:setLeftRight(true, false, 0.000000, 62.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 145.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.WeaponItemModelWidgetNew.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 83.000000, 145.000000)
	registerVal3.plusIcon:setRGB(1.000000, 0.410000, 0.000000)
	local function __FUNC_A62_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.itemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "image", true, __FUNC_A62_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Equipped"
	local function __FUNC_B33_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotEquipped(arg0, arg2, arg1)
		if registerVal3 then
			registerVal3 = IsCACTakeTwoPrimaryGadgetAttachmentEquipped(arg0)
		end
		return registerVal3
	end

	registerVal7.condition = __FUNC_B33_
	local registerVal8 = {}
	registerVal8.stateName = "Available"
	local function __FUNC_BD8_(arg0, arg2, arg3)
		return IsCACSecondLethalAvailable(arg0, arg2, arg1)
	end

	registerVal8.condition = __FUNC_BD8_
	local registerVal9 = {}
	registerVal9.stateName = "LockedByWildcard"
	local function __FUNC_C40_(arg0, arg2, arg3)
		local registerVal3 = IsCACSpecificSlotEquipped(arg0, arg1, "primarygadget")
		if registerVal3 then
			registerVal3 = IsCACSpecificWildcardEquipped(arg0, "bonuscard_danger_close")
			if not registerVal3 then
				registerVal3 = IsNonAttachmentItemLocked(arg1, "bonuscard_danger_close")
			else
			end
		end
		return true
	end

	registerVal9.condition = __FUNC_C40_
	local registerVal10 = {}
	registerVal10.stateName = "NotEquippable"
	local function __FUNC_D64_(arg0, arg2, arg3)
		local registerVal3 = IsCACSpecificSlotEquipped(arg0, arg1, "primarygadget")
		if registerVal3 then
			registerVal3 = IsCACSpecificWildcardEquipped(arg0, "bonuscard_danger_close")
		end
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_D64_
	local registerVal11 = {}
	registerVal11.stateName = "NotAvailable"
	local function __FUNC_E45_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotEquipped(arg0, arg2, arg1)
		return (not registerVal3)
	end

	registerVal11.condition = __FUNC_E45_
	registerVal6 = {registerVal7, registerVal8, registerVal9, registerVal10, registerVal11}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal2:addElement(registerVal3)
	registerVal2.Equipment2 = registerVal3
	local registerVal4 = CoD.WeaponItemModelWidgetNew.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 16.000000, 78.000000)
	registerVal4.plusIcon:setRGB(1.000000, 0.410000, 0.000000)
	local function __FUNC_EA7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.itemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "image", true, __FUNC_EA7_)
	registerVal2:addElement(registerVal4)
	registerVal2.Equipment1 = registerVal4
	local registerVal5 = CoD.CategoryHeader.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 70.000000)
	registerVal5:setTopBottom(true, false, -5.000000, 15.000000)
	local function __FUNC_F77_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.header:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "headerName", true, __FUNC_F77_)
	registerVal8 = {}
	registerVal9 = {}
	registerVal9.stateName = "BreadcrumbVisible"
	local function __FUNC_104A_(arg0, arg2, arg3)
		return IsCACAnyLoadoutSlotNew(arg2, arg1)
	end

	registerVal9.condition = __FUNC_104A_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal2:addElement(registerVal5)
	registerVal2.header = registerVal5
	registerVal6 = {}
	registerVal6.up = registerVal4
	registerVal3.navigation = registerVal6
	registerVal6 = {}
	registerVal6.down = registerVal3
	registerVal4.navigation = registerVal6
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal3.id = "Equipment2"
	registerVal4.id = "Equipment1"
	local function __FUNC_10A8_(arg0, arg1)
		local registerVal2 = arg0.Equipment2:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_10A8_)
	local function __FUNC_11AE_(arg0)
		arg0.Equipment2:close()
		arg0.Equipment1:close()
		arg0.header:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_11AE_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

