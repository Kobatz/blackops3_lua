-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_CharBox")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.cac_CharElements = registerVal1
function CoD.cac_CharElements.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.cac_CharElements)
	registerVal2.id = "cac_CharElements"
	registerVal2.soundSet = "CAC_EditLoadout"
	registerVal2:setLeftRight(true, false, 0.000000, 625.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 85.000000)
	local registerVal3 = CoD.cac_CharBox.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 384.000000)
	registerVal3:setTopBottom(false, false, -43.000000, 44.000000)
	registerVal3:setAlpha(0.580000)
	registerVal2:addElement(registerVal3)
	registerVal2.cacCharBox0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 43.000000, 47.000000)
	registerVal4:setTopBottom(false, false, -42.500000, 41.500000)
	registerVal4:setAlpha(0.700000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_frontend_featuredlline"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.featlineleft = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -27.000000, 9.000000)
	registerVal5:setTopBottom(false, false, 39.480000, 42.980000)
	registerVal5:setYRot(-180.000000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.pixelLR = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, -11.000000, -7.000000)
	registerVal6:setTopBottom(false, false, -39.500000, 42.500000)
	registerVal6:setAlpha(0.250000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.emblemline0 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, -55.000000, -23.000000)
	registerVal7:setTopBottom(false, false, -25.500000, 26.500000)
	registerVal7:setYRot(-180.000000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_titlebackpixelb"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.pixelb = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, -27.000000, 9.000000)
	registerVal8:setTopBottom(false, false, -40.520000, -37.020000)
	registerVal8:setYRot(-180.000000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.pixelLR0 = registerVal8
	local function __FUNC_AAF_(arg0)
		arg0.cacCharBox0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_AAF_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

