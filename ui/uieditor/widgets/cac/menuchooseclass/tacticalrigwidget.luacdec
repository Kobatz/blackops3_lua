-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.WeaponItemModelWidgetNew")
require("ui.uieditor.widgets.CAC.MenuChooseClass.CategoryHeader")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.TacticalRigWidget = registerVal1
function CoD.TacticalRigWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.TacticalRigWidget)
	registerVal2.id = "TacticalRigWidget"
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
	local function __FUNC_F08_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.itemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "image", true, __FUNC_F08_)
	registerVal2:addElement(registerVal3)
	registerVal2.TacRig2 = registerVal3
	local registerVal4 = CoD.WeaponItemModelWidgetNew.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 16.000000, 78.000000)
	registerVal4.plusIcon:setRGB(1.000000, 0.410000, 0.000000)
	local function __FUNC_FDB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.itemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "image", true, __FUNC_FDB_)
	registerVal2:addElement(registerVal4)
	registerVal2.TacRig1 = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 3.000000, 143.000000)
	registerVal5:setTopBottom(true, false, 25.000000, 41.000000)
	registerVal5:setRGB(0.860000, 0.890000, 0.750000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setText(Engine.Localize(""))
	registerVal5:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.rig1Name = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 3.000000, 143.000000)
	registerVal6:setTopBottom(true, false, 55.000000, 71.000000)
	registerVal6:setRGB(0.750000, 0.370000, 0.290000)
	registerVal6:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_10AB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "rig1_upgraded", true, __FUNC_10AB_)
	registerVal2:addElement(registerVal6)
	registerVal2.rig1Upgraded = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 3.000000, 143.000000)
	registerVal7:setTopBottom(true, false, 95.000000, 111.000000)
	registerVal7:setRGB(0.860000, 0.890000, 0.750000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setText(Engine.Localize(""))
	registerVal7:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.rig2Name = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 3.000000, 143.000000)
	registerVal8:setTopBottom(true, false, 124.000000, 140.000000)
	registerVal8:setRGB(0.750000, 0.370000, 0.290000)
	registerVal8:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1162_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "rig2_upgraded", true, __FUNC_1162_)
	registerVal2:addElement(registerVal8)
	registerVal2.rig2Upgraded = registerVal8
	local registerVal9 = CoD.CategoryHeader.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 0.000000, 65.000000)
	registerVal9:setTopBottom(true, false, -5.000000, 15.000000)
	registerVal9.header:setText(Engine.Localize("MENU_TAC_RIG_CAPS"))
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "BreadcrumbVisible"
	local function __FUNC_121A_(arg0, arg2, arg3)
		return IsCACSpecificLoadoutSlotNew(arg2, arg1, "cybercom_tacrig1")
	end

	registerVal13.condition = __FUNC_121A_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal2:addElement(registerVal9)
	registerVal2.CategoryHeader = registerVal9
	local registerVal10 = {}
	registerVal10.up = registerVal4
	registerVal3.navigation = registerVal10
	registerVal10 = {}
	registerVal10.down = registerVal3
	registerVal4.navigation = registerVal10
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal3.id = "TacRig2"
	registerVal4.id = "TacRig1"
	local function __FUNC_129B_(arg0, arg1)
		local registerVal2 = arg0.TacRig1:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_129B_)
	local function __FUNC_139B_(arg0)
		arg0.TacRig2:close()
		arg0.TacRig1:close()
		arg0.CategoryHeader:close()
		arg0.rig1Upgraded:close()
		arg0.rig2Upgraded:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_139B_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

