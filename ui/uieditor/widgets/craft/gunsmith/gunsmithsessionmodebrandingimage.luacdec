-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GunsmithSessionModeBrandingImage = registerVal1
function CoD.GunsmithSessionModeBrandingImage.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GunsmithSessionModeBrandingImage)
	registerVal2.id = "GunsmithSessionModeBrandingImage"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 32.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_iconmodemp"))
	registerVal2:addElement(registerVal3)
	registerVal2.mpLogo = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_frontend_iconmodecp"))
	registerVal2:addElement(registerVal4)
	registerVal2.cpLogo = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

