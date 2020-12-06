-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_dart_VignetteBlurWidget = registerVal1
function CoD.vhud_dart_VignetteBlurWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_dart_VignetteBlurWidget)
	registerVal2.id = "vhud_dart_VignetteBlurWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 458.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 356.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_dart_reticlevignetteblur"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_1"))
	registerVal3:setShaderVector(0.000000, 30.000000, 30.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

