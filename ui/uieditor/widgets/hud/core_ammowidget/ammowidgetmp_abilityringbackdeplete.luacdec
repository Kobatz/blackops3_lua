-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidgetMP_AbilityRingBackDeplete = registerVal1
function CoD.AmmoWidgetMP_AbilityRingBackDeplete.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidgetMP_AbilityRingBackDeplete)
	registerVal2.id = "AmmoWidgetMP_AbilityRingBackDeplete"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 109.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 109.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -17.000000, 126.000000)
	registerVal3:setTopBottom(true, false, -17.000000, 126.000000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_commswidget_waveform1blank"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_comms_radial_distortion"))
	registerVal3:setShaderVector(0.000000, 0.310000, 0.330000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.320000, 0.410000, 2.140000, 10.520000)
	registerVal3:setShaderVector(2.000000, 0.000000, 0.000000, 3.320000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Image00 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -9.500000, 118.500000)
	registerVal4:setTopBottom(true, false, -9.500000, 118.500000)
	registerVal4:setAlpha(0.070000)
	registerVal4:setZRot(-44.000000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_commswidget_waveform1blank"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_comms_radial_distortion"))
	registerVal4:setShaderVector(0.000000, 0.310000, 0.330000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.320000, 0.410000, 2.800000, 10.520000)
	registerVal4:setShaderVector(2.000000, 0.000000, 0.000000, 3.320000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Image001 = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

