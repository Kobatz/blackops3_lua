-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.DamageWidget_BackCircleOutter = registerVal1
function CoD.DamageWidget_BackCircleOutter.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.DamageWidget_BackCircleOutter)
	registerVal2.id = "DamageWidget_BackCircleOutter"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 107.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 104.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 53.340000, 106.670000)
	registerVal3:setTopBottom(true, false, 0.000000, 50.000000)
	registerVal3:setRGB(0.190000, 0.260000, 0.290000)
	registerVal3:setAlpha(0.400000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_damagewidget_backcircleoutter"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.ImgBackCircleOutter1 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 53.330000, 106.670000)
	registerVal4:setTopBottom(true, false, 50.000000, 103.340000)
	registerVal4:setRGB(0.190000, 0.260000, 0.290000)
	registerVal4:setAlpha(0.400000)
	registerVal4:setXRot(-180.000000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_damagewidget_backcircleoutter"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.ImgBackCircleOutter2 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 53.340000)
	registerVal5:setTopBottom(true, false, 50.000000, 103.340000)
	registerVal5:setRGB(0.190000, 0.260000, 0.290000)
	registerVal5:setAlpha(0.400000)
	registerVal5:setXRot(-180.000000)
	registerVal5:setYRot(-180.000000)
	registerVal5:setImage(RegisterImage("uie_t7_cp_hud_damagewidget_backcircleoutter"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.ImgBackCircleOutter3 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 53.340000)
	registerVal6:setTopBottom(true, false, 0.000000, 50.000000)
	registerVal6:setRGB(0.190000, 0.260000, 0.290000)
	registerVal6:setAlpha(0.400000)
	registerVal6:setYRot(-180.000000)
	registerVal6:setImage(RegisterImage("uie_t7_cp_hud_damagewidget_backcircleoutter"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.ImgBackCircleOutter4 = registerVal6
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

