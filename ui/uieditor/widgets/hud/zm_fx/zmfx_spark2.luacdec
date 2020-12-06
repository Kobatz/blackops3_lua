-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ZmFx_Spark2 = registerVal1
function CoD.ZmFx_Spark2.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ZmFx_Spark2)
	registerVal2.id = "ZmFx_Spark2"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 130.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 216.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, -18.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_zm_hud_rnd_spk2"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll"))
	registerVal3:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.000000, 0.400000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 18.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(1.000000, 0.450000, 0.180000)
	registerVal4:setYRot(180.000000)
	registerVal4:setZRot(-180.000000)
	registerVal4:setImage(RegisterImage("uie_t7_zm_hud_rnd_spk2"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll"))
	registerVal4:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, -0.200000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Image00 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_zm_hud_rnd_spk2mask"))
	registerVal2:addElement(registerVal5)
	registerVal2.Image000 = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_7F1_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_7F1_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

