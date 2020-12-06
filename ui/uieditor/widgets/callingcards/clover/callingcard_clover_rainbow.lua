-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCard_Clover_Rainbow = registerVal1
function CoD.CallingCard_Clover_Rainbow.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCard_Clover_Rainbow)
	registerVal2.id = "CallingCard_Clover_Rainbow"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1043.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 140.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 1043.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 140.100000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_mp_clover_rainbow"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll_normal"))
	registerVal3:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.TileRainbow = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 644.000000, 1212.000000)
	registerVal4:setTopBottom(true, false, -1.950000, 140.000000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcard_mp_clover_fade"))
	registerVal2:addElement(registerVal4)
	registerVal2.blk = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_6C2_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.TileRainbow:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll_normal"))
		registerVal2.TileRainbow:setShaderVector(0.000000, 1.300000, 1.000000, 0.000000, 0.000000)
		registerVal2.TileRainbow:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal6.DefaultClip = __FUNC_6C2_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

