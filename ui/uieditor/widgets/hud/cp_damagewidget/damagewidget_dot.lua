-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.AbilityWheel.AbilityWheel_Pixel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.DamageWidget_Dot = registerVal1
function CoD.DamageWidget_Dot.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.DamageWidget_Dot)
	registerVal2.id = "DamageWidget_Dot"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 4.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 4.000000)
	local registerVal3 = CoD.AbilityWheel_Pixel.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, -2.000000, 6.000000)
	registerVal3:setTopBottom(true, false, -2.000000, 6.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3.Image20:setAlpha(0.700000)
	registerVal3.Image20:setZoom(10.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.AbilityWheelPixel0 = registerVal3
	local function __FUNC_599_(arg0)
		arg0.AbilityWheelPixel0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_599_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

