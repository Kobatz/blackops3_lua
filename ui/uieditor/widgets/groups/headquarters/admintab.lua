-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Groups.List2ButtonLarge_Groups")
local function __FUNC_21A_(arg0, arg1, arg2)
	local function __FUNC_2B1_(arg2, arg3)
		local registerVal4 = {}
		registerVal4.name = "lose_focus"
		registerVal4.controller = arg1
		arg0.Frame:processEvent(registerVal4)
		return true
	end

	arg0.AdminOptions:registerEventHandler("mouse_focus", __FUNC_2B1_)
end

local function __FUNC_367_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_21A_(arg0, arg1, arg2)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.AdminTab = registerVal3
local function __FUNC_3D7_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AdminTab)
	registerVal2.id = "AdminTab"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1152.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 461.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 310.040000)
	registerVal3:setTopBottom(true, false, -29.000000, 582.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.300000)
	registerVal2:addElement(registerVal3)
	registerVal2.BlackTint = registerVal3
	local registerVal4 = LUI.UIList.new(arg0, arg1, 6.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(true, false, 14.000000, 296.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 442.000000)
	registerVal4:setWidgetType(CoD.List2ButtonLarge_Groups)
	registerVal4:setVerticalCount(8.000000)
	registerVal4:setSpacing(6.000000)
	registerVal4:setDataSource("GroupHeadquartersAdminButtonList")
	local function __FUNC_B9E_(arg0, arg2)
		SetLoseFocusToElement(registerVal2, "Frame", arg1)
		return nil
	end

	registerVal4:registerEventHandler("list_item_gain_focus", __FUNC_B9E_)
	registerVal2:addElement(registerVal4)
	registerVal2.AdminOptions = registerVal4
	local registerVal5 = LUI.UIFrame.new(arg0, arg1, 0.000000, 0.000000, false)
	registerVal5:setLeftRight(true, false, 333.000000, 1116.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 417.000000)
	local function __FUNC_C12_(arg0)
		ClearSavedState(registerVal2, arg1)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal5, "close", __FUNC_C12_)
	registerVal2:addElement(registerVal5)
	registerVal2.Frame = registerVal5
	local function __FUNC_C65_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal4, nil, false, __FUNC_C65_)
	local function __FUNC_CB6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:changeFrameWidget(registerVal1)
		end
	end

	registerVal5:linkToElementModel(registerVal4, "frameWidget", true, __FUNC_CB6_)
	local registerVal6 = {}
	registerVal6.right = registerVal5
	registerVal4.navigation = registerVal6
	registerVal6 = {}
	registerVal6.left = registerVal4
	registerVal5.navigation = registerVal6
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal4.id = "AdminOptions"
	registerVal5.id = "Frame"
	local function __FUNC_D52_(arg0, arg1)
		local registerVal2 = arg0.AdminOptions:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_D52_)
	local function __FUNC_E58_(arg0)
		arg0.AdminOptions:close()
		arg0.Frame:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_E58_)
	if __FUNC_367_ then
		__FUNC_367_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.AdminTab.new = __FUNC_3D7_
