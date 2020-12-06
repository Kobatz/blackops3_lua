-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Toast_ItemTitleGlow = registerVal1
function CoD.Toast_ItemTitleGlow.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Toast_ItemTitleGlow)
	registerVal2.id = "Toast_ItemTitleGlow"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 96.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 40.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 8.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 8.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_cac_itemtitleglowul"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image1 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 8.000000, -8.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 8.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_cac_itemtitleglowum"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image2 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, true, -8.000000, 0.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 8.000000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_cac_itemtitleglowur"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.Image3 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 8.000000)
	registerVal6:setTopBottom(true, true, 8.000000, -8.000000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_cac_itemtitleglowml"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.Image4 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 8.000000, -8.000000)
	registerVal7:setTopBottom(true, true, 8.000000, -8.000000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_cac_itemtitleglowmm"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.Image5 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, true, -8.000000, 0.000000)
	registerVal8:setTopBottom(true, true, 8.000000, -8.000000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_cac_itemtitleglowmr"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.Image6 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 0.000000, 8.000000)
	registerVal9:setTopBottom(false, true, -8.000000, 0.000000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_cac_itemtitleglowll"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.Image7 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, 8.000000, -8.000000)
	registerVal10:setTopBottom(false, true, -8.000000, 0.000000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_cac_itemtitleglowlm"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.Image8 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, true, -8.000000, 0.000000)
	registerVal11:setTopBottom(false, true, -8.000000, 0.000000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_cac_itemtitleglowlr"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.Image9 = registerVal11
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

