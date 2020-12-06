-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MPHudWidgets.ThrustMeter.ThrustMeterChevron")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ThrustBootChevron = registerVal1
function CoD.ThrustBootChevron.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ThrustBootChevron)
	registerVal2.id = "ThrustBootChevron"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 5.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 298.000000)
	local registerVal3 = CoD.ThrustMeterChevron.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 5.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 66.000000, 297.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.ThrustMeterChevron0 = registerVal3
	local registerVal4 = CoD.ThrustMeterChevron.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 5.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 1.000000, 232.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setZRot(180.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.ThrustMeterChevron1 = registerVal4
	local function __FUNC_605_(arg0)
		arg0.ThrustMeterChevron0:close()
		arg0.ThrustMeterChevron1:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_605_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

