-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CompassMinimapItems = registerVal1
function CoD.CompassMinimapItems.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CompassMinimapItems)
	registerVal2.id = "CompassMinimapItems"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 128.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 128.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setupCompassItems(Enum.CompassType.COMPASS_TYPE_PARTIAL)
	registerVal2:addElement(registerVal3)
	registerVal2.CompassMinimapItems = registerVal3
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

