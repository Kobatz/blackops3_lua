-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_TabIdle")
require("ui.uieditor.widgets.TabbedWidgets.basicTabList")
require("ui.uieditor.widgets.TabbedWidgets.paintshopTabWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FE_TabBar = registerVal1
function CoD.FE_TabBar.new(arg0, arg1)
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
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FE_TabBar)
	registerVal2.id = "FE_TabBar"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 5000.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 41.000000)
	registerVal2.anyChildUsesUpdateState = true
	registerVal3 = CoD.FE_TabIdle.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 64.000000)
	registerVal3:setTopBottom(true, false, -1.000000, 41.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.FETabIdle00 = registerVal3
	local registerVal4 = CoD.basicTabList.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 64.000000, 1216.000000)
	registerVal4:setTopBottom(true, false, 1.000000, 41.000000)
	registerVal4.grid:setWidgetType(CoD.paintshopTabWidget)
	registerVal2:addElement(registerVal4)
	registerVal2.Tabs = registerVal4
	local registerVal5 = CoD.FE_TabIdle.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 1216.000000, 5000.000000)
	registerVal5:setTopBottom(true, false, -1.000000, 41.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.FETabIdle0 = registerVal5
	local function __FUNC_853_(arg0)
		arg0.FETabIdle00:close()
		arg0.Tabs:close()
		arg0.FETabIdle0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_853_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

