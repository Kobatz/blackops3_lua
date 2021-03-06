-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PersonalizeElemsSideList = registerVal1
function CoD.PersonalizeElemsSideList.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PersonalizeElemsSideList)
	registerVal2.id = "PersonalizeElemsSideList"
	registerVal2.soundSet = "CAC_PrimaryWeapon"
	registerVal2:setLeftRight(true, false, 0.000000, 68.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 670.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 30.500000, 38.500000)
	registerVal3:setTopBottom(true, false, 0.000000, 670.000000)
	registerVal3:setAlpha(0.800000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_lineside"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.LineSide = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 15.500000, 20.500000)
	registerVal4:setTopBottom(true, false, 0.000000, 252.000000)
	registerVal4:setAlpha(0.800000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_frontend_lineside"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.LineSide0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 31.870000, 47.870000)
	registerVal5:setTopBottom(true, false, 212.000000, 220.000000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_cac_pixelblurred"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.Image0 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 31.870000, 47.870000)
	registerVal6:setTopBottom(true, false, 285.000000, 293.000000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_cac_pixelblurred"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.Image00 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 31.870000, 47.870000)
	registerVal7:setTopBottom(true, false, 356.000000, 364.000000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_cac_pixelblurred"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.Image000 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 31.870000, 47.870000)
	registerVal8:setTopBottom(true, false, 428.000000, 436.000000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_cac_pixelblurred"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.Image0000 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 31.870000, 47.870000)
	registerVal9:setTopBottom(true, false, 501.000000, 509.000000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_cac_pixelblurred"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.Image00000 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 31.870000, 47.870000)
	registerVal10:setTopBottom(true, false, 571.000000, 579.000000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_cac_pixelblurred"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.Image000000 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 31.870000, 67.870000)
	registerVal11:setTopBottom(true, false, 24.000000, 29.000000)
	registerVal11:setYRot(-180.000000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.Pixel2 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 31.870000, 67.870000)
	registerVal12:setTopBottom(true, false, 635.000000, 639.000000)
	registerVal12:setYRot(-180.000000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.Pixel20 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 0.000000, 16.000000)
	registerVal13:setTopBottom(true, false, 155.000000, 207.000000)
	registerVal13:setZoom(-5.000000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_frontend_titlebackpixelc"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.pixelc = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 0.000000, 16.000000)
	registerVal14:setTopBottom(true, false, 79.000000, 131.000000)
	registerVal14:setZoom(-5.000000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_frontend_titlebackpixelc"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.pixelc0 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, 0.000000, 16.000000)
	registerVal15:setTopBottom(true, false, 298.000000, 350.000000)
	registerVal15:setZoom(-5.000000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_frontend_titlebackpixelc"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.pixelc1 = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, 0.000000, 16.000000)
	registerVal16:setTopBottom(true, false, 298.000000, 350.000000)
	registerVal16:setZoom(-5.000000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_frontend_titlebackpixelc"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal16)
	registerVal2.pixelc00 = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(true, false, 0.000000, 16.000000)
	registerVal17:setTopBottom(true, false, 439.000000, 491.000000)
	registerVal17:setZoom(-5.000000)
	registerVal17:setImage(RegisterImage("uie_t7_menu_frontend_titlebackpixelc"))
	registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal17)
	registerVal2.pixelc10 = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(true, false, 0.000000, 16.000000)
	registerVal18:setTopBottom(true, false, 439.000000, 491.000000)
	registerVal18:setZoom(-5.000000)
	registerVal18:setImage(RegisterImage("uie_t7_menu_frontend_titlebackpixelc"))
	registerVal18:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal18)
	registerVal2.pixelc000 = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(true, false, 0.000000, 16.000000)
	registerVal19:setTopBottom(true, false, 583.000000, 635.000000)
	registerVal19:setZoom(-5.000000)
	registerVal19:setImage(RegisterImage("uie_t7_menu_frontend_titlebackpixelc"))
	registerVal19:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal19)
	registerVal2.pixelc100 = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(true, false, 0.000000, 16.000000)
	registerVal20:setTopBottom(true, false, 583.000000, 635.000000)
	registerVal20:setZoom(-5.000000)
	registerVal20:setImage(RegisterImage("uie_t7_menu_frontend_titlebackpixelc"))
	registerVal20:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal20)
	registerVal2.pixelc0000 = registerVal20
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

