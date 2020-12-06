-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AbilityWheel_Pixel = registerVal1
function CoD.AbilityWheel_Pixel.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AbilityWheel_Pixel)
	registerVal2.id = "AbilityWheel_Pixel"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 8.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 8.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 8.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 8.000000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_abilitywheel_pixel"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image19 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 8.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 8.000000)
	registerVal4:setZoom(20.000000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_abilitywheel_pixelblur"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image20 = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

