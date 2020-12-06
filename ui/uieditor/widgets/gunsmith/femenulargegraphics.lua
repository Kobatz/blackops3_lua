-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FEMenuLargeGraphics = registerVal1
function CoD.FEMenuLargeGraphics.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FEMenuLargeGraphics)
	registerVal2.id = "FEMenuLargeGraphics"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 36.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 618.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 20.000000, 22.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 618.340000)
	registerVal3:setZRot(180.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_lineside"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.LineSide = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 36.000000)
	registerVal4:setTopBottom(true, false, 3.340000, 7.340000)
	registerVal4:setYRot(-180.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Pixel20010 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 36.000000)
	registerVal5:setTopBottom(true, false, 612.340000, 616.340000)
	registerVal5:setYRot(-180.000000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.Pixel20011 = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

