-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StartMenu_LeftGraphics = registerVal1
function CoD.StartMenu_LeftGraphics.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_LeftGraphics)
	registerVal2.id = "StartMenu_LeftGraphics"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 62.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 599.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 33.000000, 35.000000)
	registerVal3:setTopBottom(true, false, -83.000000, 569.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_lineside"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.LineSide = registerVal3
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

