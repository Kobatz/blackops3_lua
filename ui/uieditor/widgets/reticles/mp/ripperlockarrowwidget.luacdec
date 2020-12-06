-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.RipperLockArrowWidget = registerVal1
function CoD.RipperLockArrowWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.RipperLockArrowWidget)
	registerVal2.id = "RipperLockArrowWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 48.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 39.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 1.000000, -2.000000)
	registerVal3:setAlpha(0.200000)
	registerVal3:setZoom(1.000000)
	registerVal3:setImage(RegisterImage("uie_ripperlock_arrowglow"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 3.000000, 0.000000)
	registerVal4:setRGB(0.000000, 0.840000, 0.820000)
	registerVal4:setImage(RegisterImage("uie_ripperlock_arrow"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image1 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 3.000000, 0.000000)
	registerVal5:setRGB(0.000000, 0.840000, 0.820000)
	registerVal5:setAlpha(0.930000)
	registerVal5:setImage(RegisterImage("uie_ripperlock_arrow_notadd"))
	registerVal2:addElement(registerVal5)
	registerVal2.Image100 = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

