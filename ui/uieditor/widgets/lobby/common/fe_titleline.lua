-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FE_TitleLine = registerVal1
function CoD.FE_TitleLine.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FE_TitleLine)
	registerVal2.id = "FE_TitleLine"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 40.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 4.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -7.000000, 5.000000)
	registerVal3:setTopBottom(false, false, -2.000000, 2.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_titlelinel"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 5.000000, -5.000000)
	registerVal4:setTopBottom(false, false, -2.000000, 2.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_frontend_titlelinem"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image1 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, true, -5.000000, 7.000000)
	registerVal5:setTopBottom(false, false, -2.000000, 2.000000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_frontend_titleliner"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.Image2 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, -26.000000, 2.000000)
	registerVal6:setTopBottom(false, false, -2.000000, 2.000000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_frontend_pixelframe"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.Image3 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, -7.000000, 5.000000)
	registerVal7:setTopBottom(false, false, -2.000000, 2.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_titlelinel"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.Image00 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, 5.000000, -5.000000)
	registerVal8:setTopBottom(false, false, -2.000000, 2.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_titlelinem"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.Image10 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, true, -5.000000, 7.000000)
	registerVal9:setTopBottom(false, false, -2.000000, 2.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_frontend_titleliner"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.Image20 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, -7.000000, 5.000000)
	registerVal10:setTopBottom(false, false, -2.000000, 2.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_titlelinel"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.Image000 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, true, 5.000000, -5.000000)
	registerVal11:setTopBottom(false, false, -2.000000, 2.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_frontend_titlelinem"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.Image100 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(false, true, -5.000000, 7.000000)
	registerVal12:setTopBottom(false, false, -2.000000, 2.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_titleliner"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.Image200 = registerVal12
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

