-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.cac_ElemsSideListBoxes = registerVal1
function CoD.cac_ElemsSideListBoxes.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.cac_ElemsSideListBoxes)
	registerVal2.id = "cac_ElemsSideListBoxes"
	registerVal2.soundSet = "CAC_PrimaryAttachment"
	registerVal2:setLeftRight(true, false, 0.000000, 53.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 670.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 15.500000, 23.500000)
	registerVal3:setTopBottom(true, false, 0.000000, 670.000000)
	registerVal3:setAlpha(0.270000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_lineside"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.LineSide = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.500000, 5.500000)
	registerVal4:setTopBottom(true, false, 0.000000, 252.000000)
	registerVal4:setAlpha(0.800000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_frontend_lineside"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.LineSide0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 16.870000, 52.870000)
	registerVal5:setTopBottom(true, false, 147.000000, 151.000000)
	registerVal5:setYRot(-180.000000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.Pixel2 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 16.870000, 52.870000)
	registerVal6:setTopBottom(true, false, 599.000000, 603.000000)
	registerVal6:setYRot(-180.000000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.Pixel20 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 0.000000, 16.000000)
	registerVal7:setTopBottom(true, false, 177.000000, 229.000000)
	registerVal7:setZoom(-5.000000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_titlebackpixelc"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.pixelc0 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 0.000000, 16.000000)
	registerVal8:setTopBottom(true, false, 288.000000, 340.000000)
	registerVal8:setZoom(-5.000000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_titlebackpixelc"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.pixelc1 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 0.000000, 16.000000)
	registerVal9:setTopBottom(true, false, 404.000000, 456.000000)
	registerVal9:setZoom(-5.000000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_frontend_titlebackpixelc"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.pixelc10 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 0.000000, 16.000000)
	registerVal10:setTopBottom(true, false, 519.000000, 571.000000)
	registerVal10:setZoom(-5.000000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_titlebackpixelc"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.pixelc100 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 16.870000, 52.870000)
	registerVal11:setTopBottom(true, false, 485.000000, 489.000000)
	registerVal11:setYRot(-180.000000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.Pixel2000 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 16.870000, 52.870000)
	registerVal12:setTopBottom(true, false, 370.000000, 374.000000)
	registerVal12:setYRot(-180.000000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.Pixel20000 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 16.870000, 52.870000)
	registerVal13:setTopBottom(true, false, 255.000000, 259.000000)
	registerVal13:setYRot(-180.000000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.Pixel200000 = registerVal13
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

