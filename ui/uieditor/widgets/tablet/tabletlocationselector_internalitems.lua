-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Minimap.MinimapHelperItems")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.TabletLocationSelector_InternalItems = registerVal1
function CoD.TabletLocationSelector_InternalItems.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.TabletLocationSelector_InternalItems)
	registerVal2.id = "TabletLocationSelector_InternalItems"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 721.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 721.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.MinimapHelperItems.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.MinimapHelperItems = registerVal3
	local function __FUNC_544_(arg0)
		arg0.MinimapHelperItems:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_544_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

