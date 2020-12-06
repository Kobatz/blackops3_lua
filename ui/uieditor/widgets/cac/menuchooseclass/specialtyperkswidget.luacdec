-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuChooseClass.CategoryHeader")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.PerksWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SpecialtyPerksWidget = registerVal1
function CoD.SpecialtyPerksWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SpecialtyPerksWidget)
	registerVal2.id = "SpecialtyPerksWidget"
	registerVal2.soundSet = "CAC"
	registerVal2:setLeftRight(true, false, 0.000000, 196.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 145.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.CategoryHeader.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 70.000000)
	registerVal3:setTopBottom(true, false, -5.000000, 15.000000)
	registerVal3.header:setText(Engine.Localize("MPUI_PERK1_CAPS"))
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "BreadcrumbVisible"
	local function __FUNC_B5B_(arg0, arg2, arg3)
		return IsCACSpecificLoadoutSlotNew(arg2, arg1, "specialty1")
	end

	registerVal7.condition = __FUNC_B5B_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal2:addElement(registerVal3)
	registerVal2.perk1Header = registerVal3
	local registerVal4 = CoD.PerksWidget.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, -196.000000, -134.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 145.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.perk1 = registerVal4
	local registerVal5 = CoD.CategoryHeader.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 67.000000, 137.000000)
	registerVal5:setTopBottom(true, false, -5.000000, 15.000000)
	registerVal5.header:setText(Engine.Localize("MPUI_PERK2_CAPS"))
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "BreadcrumbVisible"
	local function __FUNC_BD5_(arg0, arg2, arg3)
		return IsCACSpecificLoadoutSlotNew(arg2, arg1, "specialty2")
	end

	registerVal9.condition = __FUNC_BD5_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal2:addElement(registerVal5)
	registerVal2.perk2Header = registerVal5
	registerVal6 = CoD.PerksWidget.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 67.000000, 129.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 145.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.perk2 = registerVal6
	registerVal7 = CoD.CategoryHeader.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 134.000000, 204.000000)
	registerVal7:setTopBottom(true, false, -5.000000, 15.000000)
	registerVal7.header:setText(Engine.Localize("MPUI_PERK3_CAPS"))
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "BreadcrumbVisible"
	local function __FUNC_C51_(arg0, arg2, arg3)
		return IsCACSpecificLoadoutSlotNew(arg2, arg1, "specialty3")
	end

	registerVal11.condition = __FUNC_C51_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal2:addElement(registerVal7)
	registerVal2.perk3Header = registerVal7
	registerVal8 = CoD.PerksWidget.new(arg0, arg1)
	registerVal8:setLeftRight(false, true, -62.000000, 0.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 145.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.perk3 = registerVal8
	registerVal9 = {}
	registerVal9.right = registerVal6
	registerVal4.navigation = registerVal9
	registerVal9 = {}
	registerVal9.left = registerVal4
	registerVal9.right = registerVal8
	registerVal6.navigation = registerVal9
	registerVal9 = {}
	registerVal9.left = registerVal6
	registerVal8.navigation = registerVal9
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal4.id = "perk1"
	registerVal6.id = "perk2"
	registerVal8.id = "perk3"
	local function __FUNC_CCD_(arg0, arg1)
		local registerVal2 = arg0.perk1:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_CCD_)
	local function __FUNC_DCD_(arg0)
		arg0.perk1Header:close()
		arg0.perk1:close()
		arg0.perk2Header:close()
		arg0.perk2:close()
		arg0.perk3Header:close()
		arg0.perk3:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_DCD_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

