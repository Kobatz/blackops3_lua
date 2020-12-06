-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MPHudWidgets.ThrustMeter.Boot.ThrustMeterDotsBoot")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ThrustBootMeterCircle = registerVal1
function CoD.ThrustBootMeterCircle.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ThrustBootMeterCircle)
	registerVal2.id = "ThrustBootMeterCircle"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 291.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 311.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 10.500000, -9.830000)
	registerVal3:setRGB(0.670000, 0.830000, 1.000000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_boost_meter_boot_hashcircle"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_clock_normal"))
	registerVal3:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.HashCircle = registerVal3
	local registerVal4 = CoD.ThrustMeterDotsBoot.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 76.170000, 214.170000)
	registerVal4:setTopBottom(true, false, 275.000000, 311.000000)
	registerVal4.fill:setShaderVector(0.000000, 0.522000, 0.000000, 0.000000, 0.000000)
	registerVal4.fill:setShaderVector(1.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal4.fill:setShaderVector(2.000000, -2.840000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.ThrustMeterDotsBoot = registerVal4
	local registerVal5 = CoD.ThrustMeterDotsBoot.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 76.170000, 214.170000)
	registerVal5:setTopBottom(true, false, 0.000000, 36.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setZRot(180.000000)
	registerVal5.fill:setShaderVector(0.000000, 0.522000, 0.000000, 0.000000, 0.000000)
	registerVal5.fill:setShaderVector(1.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal5.fill:setShaderVector(2.000000, -2.840000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.ThrustMeterDotsHidden = registerVal5
	local function __FUNC_93C_(arg0)
		arg0.ThrustMeterDotsBoot:close()
		arg0.ThrustMeterDotsHidden:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_93C_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

