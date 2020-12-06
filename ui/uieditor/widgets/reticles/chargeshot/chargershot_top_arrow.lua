-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChargerShot_top_Arrow = registerVal1
function CoD.ChargerShot_top_Arrow.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChargerShot_top_Arrow)
	registerVal2.id = "ChargerShot_top_Arrow"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 48.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 108.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 3.310000, -2.050000)
	registerVal3:setTopBottom(true, true, 4.060000, 0.000000)
	registerVal3:setRGB(0.290000, 0.690000, 0.950000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_chargeshot_reticle_top_arrow"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

