-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Scorestreaks.CallingScorestreaks.GenericProjectedTabletInternal")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GenericProjectedTablet = registerVal1
function CoD.GenericProjectedTablet.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GenericProjectedTablet)
	registerVal2.id = "GenericProjectedTablet"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 720.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.GenericProjectedTabletInternal.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	Engine.SetupUI3DWindow(arg1, 1.000000, 720.000000, 720.000000)
	registerVal3:setUI3DWindow(1.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.GenericProjectedTabletInternal = registerVal3
	local function __FUNC_5CF_(arg0)
		arg0.GenericProjectedTabletInternal:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_5CF_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

