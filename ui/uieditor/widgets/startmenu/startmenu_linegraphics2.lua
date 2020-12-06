-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StartMenu_lineGraphics2 = registerVal1
function CoD.StartMenu_lineGraphics2.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_lineGraphics2)
	registerVal2.id = "StartMenu_lineGraphics2"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 50.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 566.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 8.000000, 24.000000)
	registerVal3:setTopBottom(true, false, 356.000000, 364.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_cac_pixelblurred"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image0000 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 8.000000, 24.000000)
	registerVal4:setTopBottom(true, false, 372.000000, 380.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_cac_pixelblurred"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image00000 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 8.000000, 44.000000)
	registerVal5:setTopBottom(true, false, 24.000000, 28.000000)
	registerVal5:setYRot(360.000000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.Pixel2 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 9.630000, 45.630000)
	registerVal6:setTopBottom(true, false, 533.000000, 537.000000)
	registerVal6:setYRot(360.000000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.Pixel20 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 8.000000, 24.000000)
	registerVal7:setTopBottom(true, false, 180.000000, 188.000000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_cac_pixelblurred"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.Image00001 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 8.000000, 24.000000)
	registerVal8:setTopBottom(true, false, 196.000000, 204.000000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_cac_pixelblurred"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.Image000000 = registerVal8
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

