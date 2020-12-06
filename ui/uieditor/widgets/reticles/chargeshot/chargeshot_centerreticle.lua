-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChargeShot_CenterReticle = registerVal1
function CoD.ChargeShot_CenterReticle.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChargeShot_CenterReticle)
	registerVal2.id = "ChargeShot_CenterReticle"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 96.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 96.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -48.000000, 48.000000)
	registerVal3:setTopBottom(false, false, -48.000000, 48.000000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_chargeshot_reticle_center"))
	registerVal2:addElement(registerVal3)
	registerVal2.Center = registerVal3
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

