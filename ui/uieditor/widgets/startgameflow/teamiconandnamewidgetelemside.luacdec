-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.TeamIconAndNameWidgetElemSide = registerVal1
function CoD.TeamIconAndNameWidgetElemSide.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.TeamIconAndNameWidgetElemSide)
	registerVal2.id = "TeamIconAndNameWidgetElemSide"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 29.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 27.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -18.000000, 18.000000)
	registerVal3:setTopBottom(false, false, 2.000000, 6.000000)
	registerVal3:setYRot(-180.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.Pixel2011 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -18.000000, 18.000000)
	registerVal4:setTopBottom(false, false, 10.000000, 14.000000)
	registerVal4:setYRot(-180.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Pixel20100 = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

