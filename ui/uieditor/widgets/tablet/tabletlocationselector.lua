-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Tablet.TabletLocationSelector_Internal")
require("ui.uieditor.widgets.Tablet.TabletLocationSelector_InternalItems")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.TabletLocationSelector = registerVal1
function CoD.TabletLocationSelector.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.TabletLocationSelector)
	registerVal2.id = "TabletLocationSelector"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 720.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.TabletLocationSelector_Internal.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -10.000000, -10.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	Engine.SetupUI3DWindow(arg1, 1.000000, 720.000000, 720.000000)
	registerVal3:setUI3DWindow(1.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.internal = registerVal3
	local registerVal4 = CoD.TabletLocationSelector_InternalItems.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, -10.000000, -9.000000)
	registerVal4:setTopBottom(true, true, -1.000000, 0.000000)
	Engine.SetupUI3DWindow(arg1, 2.000000, 721.000000, 721.000000)
	registerVal4:setUI3DWindow(2.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.internalItems = registerVal4
	local function __FUNC_714_(arg0)
		arg0.internal:close()
		arg0.internalItems:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_714_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

