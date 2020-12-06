-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.WeaponItemModelWidgetNew")
require("ui.uieditor.widgets.CAC.MenuChooseClass.CategoryHeader")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.TacticalEquipmentWidget = registerVal1
function CoD.TacticalEquipmentWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.TacticalEquipmentWidget)
	registerVal2.id = "TacticalEquipmentWidget"
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
	local function __FUNC_A0B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.itemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "image", true, __FUNC_A0B_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Equipped"
	local function __FUNC_ADB_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotEquipped(arg0, arg2, arg1)
		if registerVal3 then
			registerVal3 = IsCACTakeTwoSecondaryGadgetAttachmentEquipped(arg0)
		end
		return registerVal3
	end

	registerVal7.condition = __FUNC_ADB_
	local registerVal8 = {}
	registerVal8.stateName = "NotEquippable"
	local function __FUNC_B82_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal8.condition = __FUNC_B82_
	local registerVal9 = {}
	registerVal9.stateName = "NotAvailable"
	local function __FUNC_BCD_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotEquipped(arg0, arg2, arg1)
		return (not registerVal3)
	end

	registerVal9.condition = __FUNC_BCD_
	registerVal6 = {registerVal7, registerVal8, registerVal9}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal2:addElement(registerVal3)
	registerVal2.Equipment2 = registerVal3
	local registerVal4 = CoD.WeaponItemModelWidgetNew.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 16.000000, 78.000000)
	registerVal4.plusIcon:setRGB(1.000000, 0.410000, 0.000000)
	local function __FUNC_C2F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.itemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "image", true, __FUNC_C2F_)
	registerVal2:addElement(registerVal4)
	registerVal2.Equipment1 = registerVal4
	local registerVal5 = CoD.CategoryHeader.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 70.000000)
	registerVal5:setTopBottom(true, false, -5.000000, 15.000000)
	local function __FUNC_CFF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.header:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "headerName", true, __FUNC_CFF_)
	registerVal8 = {}
	registerVal9 = {}
	registerVal9.stateName = "BreadcrumbVisible"
	local function __FUNC_DD2_(arg0, arg2, arg3)
		return IsCACAnyLoadoutSlotNew(arg2, arg1)
	end

	registerVal9.condition = __FUNC_DD2_
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
	local function __FUNC_E30_(arg0, arg1)
		local registerVal2 = arg0.Equipment2:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_E30_)
	local function __FUNC_F36_(arg0)
		arg0.Equipment2:close()
		arg0.Equipment1:close()
		arg0.header:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_F36_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

