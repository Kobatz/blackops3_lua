-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.HorizontalCompassGroupMPContainer = registerVal1
function CoD.HorizontalCompassGroupMPContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.HorizontalCompassGroupMPContainer)
	registerVal2.id = "HorizontalCompassGroupMPContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 268.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 38.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 13.500000, -13.500000)
	registerVal3:setTopBottom(false, true, -28.500000, -12.500000)
	registerVal3:setupHorizontalCompass(0.745000)
	registerVal3:setImage(RegisterMaterial("hud_horizontal_compass_minimap_t7"))
	registerVal3:setShaderVector(0.000000, 0.600000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.HorizontalCompass = registerVal3
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

