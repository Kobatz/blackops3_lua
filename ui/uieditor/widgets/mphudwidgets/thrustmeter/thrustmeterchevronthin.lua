-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ThrustMeterChevronThin = registerVal1
function CoD.ThrustMeterChevronThin.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ThrustMeterChevronThin)
	registerVal2.id = "ThrustMeterChevronThin"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 4.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 229.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(false, true, -6.000000, -2.000000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_boost_meter_dots_arrow_thin"))
	registerVal2:addElement(registerVal3)
	registerVal2.leftChevron1 = registerVal3
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

