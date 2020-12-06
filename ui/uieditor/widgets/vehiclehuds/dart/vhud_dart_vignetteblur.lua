-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.dart.vhud_dart_VignetteBlurWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_dart_VignetteBlur = registerVal1
function CoD.vhud_dart_VignetteBlur.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_dart_VignetteBlur)
	registerVal2.id = "vhud_dart_VignetteBlur"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 458.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 356.000000)
	local registerVal3 = CoD.vhud_dart_VignetteBlurWidget.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.890000, 0.890000, 0.890000)
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_2"))
	registerVal3:setShaderVector(0.000000, 7.000000, 7.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.vhuddartVignetteBlurWidget = registerVal3
	local function __FUNC_638_(arg0)
		arg0.vhuddartVignetteBlurWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_638_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

