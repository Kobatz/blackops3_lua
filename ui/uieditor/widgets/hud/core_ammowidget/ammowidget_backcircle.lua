-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_BackCircle = registerVal1
function CoD.AmmoWidget_BackCircle.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_BackCircle)
	registerVal2.id = "AmmoWidget_BackCircle"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 95.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 106.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 10.250000, 84.930000)
	registerVal3:setTopBottom(true, false, 22.000000, 97.660000)
	registerVal3:setZoom(-2.000000)
	registerVal3:setImage(RegisterImage("uie_t7_core_hud_ammowidget_backcircleinner"))
	registerVal2:addElement(registerVal3)
	registerVal2.ImgBackCircleInner = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 94.670000)
	registerVal4:setTopBottom(true, false, 12.340000, 105.670000)
	registerVal4:setAlpha(0.700000)
	registerVal4:setImage(RegisterImage("uie_t7_core_hud_ammowidget_backcircleoutter"))
	registerVal2:addElement(registerVal4)
	registerVal2.ImgBackCircleOutter = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 46.010000, 47.330000)
	registerVal5:setTopBottom(true, false, 1.000000, 14.330000)
	registerVal5:setAlpha(0.700000)
	registerVal5:setImage(RegisterImage("uie_t7_core_hud_ammowidget_backcircleoutterline"))
	registerVal2:addElement(registerVal5)
	registerVal2.ImgBackCircleOutterLine = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

