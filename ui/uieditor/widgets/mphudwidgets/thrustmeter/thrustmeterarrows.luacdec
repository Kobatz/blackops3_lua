-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MPHudWidgets.ThrustMeter.ThrustMeterChevron")
require("ui.uieditor.widgets.MPHudWidgets.ThrustMeter.ThrustMeterChevronThin")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ThrustMeterArrows = registerVal1
function CoD.ThrustMeterArrows.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ThrustMeterArrows)
	registerVal2.id = "ThrustMeterArrows"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 15.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 300.000000)
	local registerVal3 = CoD.ThrustMeterChevron.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, 2.000000, -4.000000)
	registerVal3:setTopBottom(false, true, -324.000000, -8.000000)
	registerVal3:setZRot(29.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.right1 = registerVal3
	local registerVal4 = CoD.ThrustMeterChevronThin.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, 2.000000, -2.000000)
	registerVal4:setTopBottom(false, true, -324.000000, -8.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setZRot(33.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.right2 = registerVal4
	local function __FUNC_679_(arg0)
		arg0.right1:close()
		arg0.right2:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_679_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

