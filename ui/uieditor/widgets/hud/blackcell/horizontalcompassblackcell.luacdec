-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.HorizontalCompassBlackCell = registerVal1
function CoD.HorizontalCompassBlackCell.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.HorizontalCompassBlackCell)
	registerVal2.id = "HorizontalCompassBlackCell"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 743.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 75.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -18.500000, 18.500000)
	registerVal3:setTopBottom(false, true, -34.000000, 3.000000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_blackcell_user"))
	registerVal2:addElement(registerVal3)
	registerVal2.user = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -18.500000, 18.500000)
	registerVal4:setTopBottom(true, false, -2.750000, 34.250000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_hud_blackcell_enemie"))
	registerVal2:addElement(registerVal4)
	registerVal2.enemy = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -287.540000, 287.540000)
	registerVal5:setTopBottom(false, false, -17.130000, 7.620000)
	registerVal5:setupHorizontalCompass(0.745000)
	registerVal5:setImage(RegisterMaterial("hud_horizontal_compass_blackcell"))
	registerVal5:setShaderVector(0.000000, 0.600000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.HorizontalCompass = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

