-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Scorestreaks.CallingScorestreaks.ArmDeviceWidgetInternal")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ArmDeviceWidget = registerVal1
function CoD.ArmDeviceWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ArmDeviceWidget)
	registerVal2.id = "ArmDeviceWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 271.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 200.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.ArmDeviceWidgetInternal.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	Engine.SetupUI3DWindow(arg1, 2.000000, 271.000000, 200.000000)
	registerVal3:setUI3DWindow(2.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.ArmDeviceWidgetInternal = registerVal3
	local function __FUNC_5B6_(arg0)
		arg0.ArmDeviceWidgetInternal:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_5B6_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

