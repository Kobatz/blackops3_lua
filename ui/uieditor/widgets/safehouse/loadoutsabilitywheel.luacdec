-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.AbilityWheel.AbilityWheel_IconHex")
require("ui.uieditor.widgets.AbilityWheel.AbilityWheel_Pixel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LoadoutsAbilityWheel = registerVal1
function CoD.LoadoutsAbilityWheel.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LoadoutsAbilityWheel)
	registerVal2.id = "LoadoutsAbilityWheel"
	registerVal2.soundSet = "CAC"
	registerVal2:setLeftRight(true, false, 0.000000, 108.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 106.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.AbilityWheel_IconHex.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -45.120000, 45.120000)
	registerVal3:setTopBottom(false, false, -52.860000, 52.860000)
	registerVal3:setScale(0.900000)
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.AbilityWheelIconHex1 = registerVal3
	local registerVal4 = CoD.AbilityWheel_Pixel.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, 46.000000, 54.000000)
	registerVal4:setTopBottom(false, false, -24.000000, -16.000000)
	registerVal4:setRGB(0.000000, 0.560000, 1.000000)
	registerVal4:setAlpha(0.600000)
	registerVal2:addElement(registerVal4)
	registerVal2.Pixel1 = registerVal4
	local registerVal5 = CoD.AbilityWheel_Pixel.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -54.000000, -46.000000)
	registerVal5:setTopBottom(false, false, -23.000000, -15.000000)
	registerVal5:setRGB(0.000000, 0.560000, 1.000000)
	registerVal5:setAlpha(0.600000)
	registerVal2:addElement(registerVal5)
	registerVal2.Pixel2 = registerVal5
	local registerVal6 = CoD.AbilityWheel_Pixel.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, 40.000000, 48.000000)
	registerVal6:setTopBottom(false, false, 19.000000, 27.000000)
	registerVal6:setRGB(0.000000, 0.560000, 1.000000)
	registerVal6:setAlpha(0.600000)
	registerVal2:addElement(registerVal6)
	registerVal2.Pixel3 = registerVal6
	local registerVal7 = CoD.AbilityWheel_Pixel.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -49.000000, -41.000000)
	registerVal7:setTopBottom(false, false, 20.000000, 28.000000)
	registerVal7:setRGB(0.000000, 0.560000, 1.000000)
	registerVal7:setAlpha(0.600000)
	registerVal2:addElement(registerVal7)
	registerVal2.Pixel4 = registerVal7
	local function __FUNC_949_(arg0)
		arg0.AbilityWheelIconHex1:close()
		arg0.Pixel1:close()
		arg0.Pixel2:close()
		arg0.Pixel3:close()
		arg0.Pixel4:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_949_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

