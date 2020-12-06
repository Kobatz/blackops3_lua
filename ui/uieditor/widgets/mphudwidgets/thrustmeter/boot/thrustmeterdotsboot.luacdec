-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ThrustMeterDotsBoot = registerVal1
function CoD.ThrustMeterDotsBoot.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ThrustMeterDotsBoot)
	registerVal2.id = "ThrustMeterDotsBoot"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 138.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 36.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 149.000000, -11.000000)
	registerVal3:setTopBottom(true, false, -4.000000, 40.000000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_boost_fill"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_clock_normal"))
	registerVal3:setShaderVector(0.000000, 0.522000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, -2.840000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.fill = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -11.000000, 149.000000)
	registerVal4:setTopBottom(true, false, -4.000000, 40.000000)
	registerVal4:setImage(RegisterImage("uie_t7_hud_boost_dots"))
	registerVal2:addElement(registerVal4)
	registerVal2.dots = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

