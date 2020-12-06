-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.DamageWidget_BackCircleInner = registerVal1
function CoD.DamageWidget_BackCircleInner.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.DamageWidget_BackCircleInner)
	registerVal2.id = "DamageWidget_BackCircleInner"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 96.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 95.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 3.500000, -1.830000)
	registerVal3:setTopBottom(true, true, 1.500000, -1.500000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_damagewidget_backcircleinner"))
	registerVal2:addElement(registerVal3)
	registerVal2.ImgBackCircleInner = registerVal3
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

