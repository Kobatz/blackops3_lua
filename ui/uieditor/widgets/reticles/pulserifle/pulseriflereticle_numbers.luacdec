-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Reticles.PulseRifle.PulseRifleReticle_NumbersInt")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PulseRifleReticle_Numbers = registerVal1
function CoD.PulseRifleReticle_Numbers.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PulseRifleReticle_Numbers)
	registerVal2.id = "PulseRifleReticle_Numbers"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 204.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 96.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 204.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 96.000000)
	registerVal3:setRGB(0.660000, 0.730000, 0.310000)
	registerVal2:addElement(registerVal3)
	registerVal2.BG = registerVal3
	local registerVal4 = CoD.PulseRifleReticle_NumbersInt.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 66.460000, 222.460000)
	registerVal4:setTopBottom(true, false, -22.000000, 122.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.800000)
	registerVal4:setScale(0.650000)
	local function __FUNC_D68_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_D68_)
	registerVal2:addElement(registerVal4)
	registerVal2.PulseRifleReticleNumbersInt = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 102.000000, 188.000000)
	registerVal5:setTopBottom(true, false, 6.940000, 12.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.700000)
	registerVal5:setImage(RegisterImage("uie_t7_mp_hud_pulse_element_flipbook"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_flipbook"))
	registerVal5:setShaderVector(0.000000, 4.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.Element1Flipbook = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 58.000000, 102.000000)
	registerVal6:setTopBottom(true, false, 5.330000, 20.000000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.500000)
	registerVal6:setImage(RegisterImage("uie_t7_mp_hud_pulse_element_ammo"))
	registerVal2:addElement(registerVal6)
	registerVal2.Digit0 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 57.000000, 102.000000)
	registerVal7:setTopBottom(true, false, 27.680000, 72.320000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setAlpha(0.700000)
	registerVal7:setImage(RegisterImage("uie_t7_mp_hud_pulse_element2_flipbook"))
	registerVal2:addElement(registerVal7)
	registerVal2.Digit00 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 178.000000, 204.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 96.000000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal8:setAlpha(0.700000)
	registerVal8:setImage(RegisterImage("uie_t7_mp_hud_pulse_element_edge"))
	registerVal2:addElement(registerVal8)
	registerVal2.Digit01 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, -2.000000, 24.000000)
	registerVal9:setTopBottom(true, false, 0.000000, 96.000000)
	registerVal9:setRGB(0.000000, 0.000000, 0.000000)
	registerVal9:setAlpha(0.500000)
	registerVal9:setZRot(180.000000)
	registerVal9:setImage(RegisterImage("uie_t7_mp_hud_pulse_element_edge"))
	registerVal2:addElement(registerVal9)
	registerVal2.Digit010 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 41.460000, 67.460000)
	registerVal10:setTopBottom(true, false, 29.680000, 98.000000)
	registerVal10:setRGB(0.000000, 0.000000, 0.000000)
	registerVal10:setAlpha(0.600000)
	registerVal10:setZRot(180.000000)
	registerVal10:setImage(RegisterImage("uie_t7_mp_hud_pulse_element_edge"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_edges"))
	registerVal10:setShaderVector(0.000000, 0.620000, 0.030000, 0.050000, 0.200000)
	registerVal2:addElement(registerVal10)
	registerVal2.Digit0100 = registerVal10
	local function __FUNC_DBA_(arg0)
		arg0.PulseRifleReticleNumbersInt:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_DBA_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

