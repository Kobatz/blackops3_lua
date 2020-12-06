-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Minimap.MinimapHelper")
require("ui.uieditor.widgets.Tablet.TabletLocationSelector_HintText")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.TabletLocationSelector_Internal = registerVal1
function CoD.TabletLocationSelector_Internal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.TabletLocationSelector_Internal)
	registerVal2.id = "TabletLocationSelector_Internal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 720.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.MinimapHelper.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.MinimapHelper = registerVal3
	local registerVal4 = CoD.TabletLocationSelector_HintText.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -360.000000, 360.000000)
	registerVal4:setTopBottom(true, false, 516.000000, 540.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.TabletLocationSelectorHintText0 = registerVal4
	local function __FUNC_650_(arg0)
		arg0.MinimapHelper:close()
		arg0.TabletLocationSelectorHintText0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_650_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

