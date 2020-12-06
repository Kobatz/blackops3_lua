-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MegaChewFactoryVat = registerVal1
function CoD.MegaChewFactoryVat.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MegaChewFactoryVat)
	registerVal2.id = "MegaChewFactoryVat"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 360.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 135.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 8.000000, 354.000000)
	registerVal3:setTopBottom(true, false, 27.500000, 97.500000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setText(Engine.Localize("MENU_NEW"))
	registerVal3:setTTF("fonts/CHARB__.TTF")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	registerVal2:addElement(registerVal3)
	registerVal2.TextBox = registerVal3
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

