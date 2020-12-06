-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_BackLine = registerVal1
function CoD.AmmoWidget_BackLine.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_BackLine)
	registerVal2.id = "AmmoWidget_BackLine"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 149.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 3.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.330000)
	registerVal3:setTopBottom(false, false, -1.500000, 1.170000)
	registerVal3:setRGB(0.240000, 0.490000, 0.650000)
	registerVal3:setAlpha(0.300000)
	registerVal3:setImage(RegisterImage("uie_t7_core_hud_ammowidget_backline"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

