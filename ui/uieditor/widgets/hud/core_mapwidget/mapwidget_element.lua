-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MapWidget_Element = registerVal1
function CoD.MapWidget_Element.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MapWidget_Element)
	registerVal2.id = "MapWidget_Element"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 21.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 12.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 21.330000)
	registerVal3:setTopBottom(true, false, 0.000000, 12.330000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_core_hud_mapwidget_elementbase"))
	registerVal2:addElement(registerVal3)
	registerVal2.ImgElement = registerVal3
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

