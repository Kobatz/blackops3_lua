-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.WeaponItemModelWidgetNew")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.ItemWeaponLevel")
require("ui.uieditor.widgets.CAC.MenuChooseClass.CategoryHeader")
require("ui.uieditor.widgets.CAC.cac_ListButtonLabelMedium")
local function __FUNC_32B_(arg0, arg1)
	arg0:setForceMouseEventDispatch(true)
end

local function __FUNC_384_(arg0, arg1)
	if CoD.isPC then
		__FUNC_32B_(arg0, arg1)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.PrimaryWeaponWidget = registerVal3
local function __FUNC_3F3_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PrimaryWeaponWidget)
	registerVal2.id = "PrimaryWeaponWidget"
	registerVal2.soundSet = "CAC"
	registerVal2:setLeftRight(true, false, 0.000000, 129.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 145.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.WeaponItemModelWidgetNew.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(false, true, -129.000000, 0.000000)
	registerVal3.plusIcon:setRGB(1.000000, 0.410000, 0.000000)
	local function __FUNC_E52_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_E52_)
	local function __FUNC_EA2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.itemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "image", true, __FUNC_EA2_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Equipped"
	local function __FUNC_F73_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal7.condition = __FUNC_F73_
	local registerVal8 = {}
	registerVal8.stateName = "WeaponEquipped"
	local function __FUNC_FBD_(arg0, arg2, arg3)
		return IsCACSlotEquipped(arg0, arg2, arg1)
	end

	registerVal8.condition = __FUNC_FBD_
	registerVal6 = {registerVal7, registerVal8}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal2:addElement(registerVal3)
	registerVal2.WeaponItemModel = registerVal3
	local registerVal4 = CoD.ItemWeaponLevel.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 94.000000, 126.000000)
	registerVal4:setTopBottom(false, true, -130.000000, -97.000000)
	local function __FUNC_101B_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_101B_)
	registerVal2:addElement(registerVal4)
	registerVal2.weaponLevel = registerVal4
	local registerVal5 = CoD.CategoryHeader.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 129.000000)
	registerVal5:setTopBottom(true, false, -5.000000, 15.000000)
	local function __FUNC_106A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.header:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "headerName", true, __FUNC_106A_)
	registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "BreadcrumbVisible"
	local function __FUNC_113E_(arg0, arg2, arg3)
		return IsCACAnyLoadoutSlotNew(arg2, arg1)
	end

	registerVal9.condition = __FUNC_113E_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal2:addElement(registerVal5)
	registerVal2.header = registerVal5
	registerVal6 = CoD.cac_ListButtonLabelMedium.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 2.000000, 126.000000)
	registerVal6:setTopBottom(true, false, 119.500000, 143.500000)
	registerVal6:setAlpha(0.600000)
	registerVal6.itemName:setRGB(1.000000, 1.000000, 1.000000)
	local function __FUNC_119C_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_119C_)
	local function __FUNC_11EE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "name", true, __FUNC_11EE_)
	registerVal2:addElement(registerVal6)
	registerVal2.cacListButtonLabelMedium = registerVal6
	registerVal7 = {}
	registerVal8 = {}
	local function __FUNC_12C4_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.weaponLevel:setLeftRight(true, false, 94.000000, 126.000000)
		registerVal2.weaponLevel:setTopBottom(false, true, -130.000000, -97.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal8.DefaultClip = __FUNC_12C4_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_1424_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.weaponLevel:setLeftRight(true, false, 48.500000, 80.500000)
		registerVal2.weaponLevel:setTopBottom(false, true, -130.000000, -97.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal8.DefaultClip = __FUNC_1424_
	registerVal7.DefaultState_PC = registerVal8
	registerVal2.clipsPerState = registerVal7
	registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "DefaultState_PC"
	local function __FUNC_1584_(arg0, arg2, arg3)
		local registerVal3 = IsGamepad(arg1)
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_1584_
	registerVal9 = {registerVal10}
	registerVal2:mergeStateConditions(registerVal9)
	if registerVal2.m_eventHandlers.input_source_changed then
		local function __FUNC_15D7_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal2:registerEventHandler("input_source_changed", __FUNC_15D7_)
	else
		registerVal2:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "LastInput")
	local function __FUNC_165F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_165F_)
	registerVal3.id = "WeaponItemModel"
	local function __FUNC_177B_(arg0, arg1)
		local registerVal2 = arg0.WeaponItemModel:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_177B_)
	local function __FUNC_1883_(arg0)
		arg0.WeaponItemModel:close()
		arg0.weaponLevel:close()
		arg0.header:close()
		arg0.cacListButtonLabelMedium:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1883_)
	if __FUNC_384_ then
		__FUNC_384_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.PrimaryWeaponWidget.new = __FUNC_3F3_
