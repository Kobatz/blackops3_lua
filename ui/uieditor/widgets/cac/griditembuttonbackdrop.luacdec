-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BorderBakedStroke")
require("ui.uieditor.widgets.BorderBakedBlur")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GridItemButtonBackdrop = registerVal1
function CoD.GridItemButtonBackdrop.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GridItemButtonBackdrop)
	registerVal2.id = "GridItemButtonBackdrop"
	registerVal2.soundSet = "CAC_PrimaryWeapon"
	registerVal2:setLeftRight(true, false, 0.000000, 120.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = CoD.BorderBakedStroke.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -54.000000, 54.000000)
	registerVal3:setTopBottom(false, false, -54.000000, 54.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setZoom(-200.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BorderBakedStroke0 = registerVal3
	local registerVal4 = CoD.BorderBakedBlur.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -54.000000, 54.000000)
	registerVal4:setTopBottom(false, false, -54.000000, 54.000000)
	registerVal4:setAlpha(0.400000)
	registerVal4:setZoom(-100.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BorderBakedBlur0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 120.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setZoom(-200.000000)
	registerVal5:setImage(RegisterImage("uie_img_t7_menu_cacselection_listboxastroke"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.ListBoxAStroke = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 120.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setZoom(-100.000000)
	registerVal6:setImage(RegisterImage("uie_img_t7_menu_cacselection_listboxablur"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.ListBoxABlur = registerVal6
	local function __FUNC_8DF_(arg0)
		arg0.BorderBakedStroke0:close()
		arg0.BorderBakedBlur0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_8DF_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

