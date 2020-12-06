-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vignette_corner_right = registerVal1
function CoD.vignette_corner_right.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vignette_corner_right)
	registerVal2.id = "vignette_corner_right"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 456.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 297.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 456.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 297.080000)
	registerVal3:setImage(RegisterImage("uie_img_t7_hud_fx_vignette_corner"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_multiply"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

