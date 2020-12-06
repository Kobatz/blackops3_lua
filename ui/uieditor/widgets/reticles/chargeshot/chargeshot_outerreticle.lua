-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChargeShot_OuterReticle = registerVal1
function CoD.ChargeShot_OuterReticle.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChargeShot_OuterReticle)
	registerVal2.id = "ChargeShot_OuterReticle"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 168.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 168.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_chargeshot_outer_ru"))
	registerVal2:addElement(registerVal3)
	registerVal2.Outer1 = registerVal3
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

