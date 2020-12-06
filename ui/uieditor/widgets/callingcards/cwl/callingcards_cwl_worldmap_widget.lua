-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_cwl_worldmap_widget = registerVal1
function CoD.CallingCards_cwl_worldmap_widget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCards_cwl_worldmap_widget)
	registerVal2.id = "CallingCards_cwl_worldmap_widget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 176.000000, 480.000000)
	registerVal3:setTopBottom(true, false, -7.560000, 127.560000)
	registerVal3:setAlpha(0.300000)
	registerVal3:setImage(RegisterImage("uie_callingcards_cwl_worldmap"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll_normal"))
	registerVal3:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.100000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.MAP = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal4:setTopBottom(true, false, -0.460000, 119.540000)
	registerVal4:setImage(RegisterImage("uie_callingcards_cwl_worldmap_mask"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image0 = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

