-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_TabIdle")
require("ui.uieditor.widgets.TabbedWidgets.paintshopTabWidget")
local function __FUNC_260_(arg0, arg1)
	local function __FUNC_2B0_(arg1, arg2, arg3)
		arg0.Tabs:setActiveIndex(arg2, arg3)
	end

	arg0.setActiveIndex = __FUNC_2B0_
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.GameSettings_TabBar = registerVal2
local function __FUNC_322_(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 0.000000
	local registerVal2 = LUI.UIHorizontalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Left)
	if __FUNC_260_ then
		__FUNC_260_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GameSettings_TabBar)
	registerVal2.id = "GameSettings_TabBar"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 38.000000)
	registerVal2.anyChildUsesUpdateState = true
	registerVal3 = CoD.FE_TabIdle.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 64.000000)
	registerVal3:setTopBottom(true, false, -2.000000, 40.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.FETabIdle00 = registerVal3
	local registerVal4 = LUI.GridLayout.new(arg0, arg1, false, 0.000000, 0.000000, 2.000000, 0.000000, nil, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal4:setLeftRight(true, false, 64.000000, 1678.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 38.000000)
	registerVal4:setDataSource("CompetitiveSettingsRestrictionsTabs")
	registerVal4:setWidgetType(CoD.paintshopTabWidget)
	registerVal4:setHorizontalCount(8.000000)
	local function __FUNC_A1E_(arg0, arg2)
		UpdateDataSource(registerVal2, arg0, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("menu_loaded", __FUNC_A1E_)
	local function __FUNC_AB7_(arg0, arg2)
		SelectItemIfPossible(registerVal2, arg0, arg1, arg2)
		PlaySoundSetSound(registerVal2, "list_right")
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("mouse_left_click", __FUNC_AB7_)
	local function __FUNC_B96_(arg0, arg1)
		return nil
	end

	registerVal4:registerEventHandler("list_item_gain_focus", __FUNC_B96_)
	registerVal2:addElement(registerVal4)
	registerVal2.Tabs = registerVal4
	local registerVal5 = CoD.FE_TabIdle.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 1678.000000, 2958.000000)
	registerVal5:setTopBottom(true, false, -2.000000, 40.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.FETabIdle0 = registerVal5
	local function __FUNC_BC8_(arg0)
		arg0.FETabIdle00:close()
		arg0.Tabs:close()
		arg0.FETabIdle0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_BC8_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.GameSettings_TabBar.new = __FUNC_322_
