-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.fx_Ember = registerVal1
function CoD.fx_Ember.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.fx_Ember)
	registerVal2.id = "fx_Ember"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 192.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 240.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 84.800000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, -106.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_crate_ember"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll_normal"))
	registerVal3:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.000000, 0.250000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Ember00 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, -84.800000)
	registerVal4:setTopBottom(true, true, 0.000000, -106.000000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_crate_ember"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll_normal"))
	registerVal4:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, 0.250000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Ember0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 39.600000, -45.200000)
	registerVal5:setTopBottom(true, true, 0.000000, -106.000000)
	registerVal5:setImage(RegisterImage("uie_t7_blackmarket_crate_ember"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll_normal"))
	registerVal5:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.000000, 0.250000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.Ember = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, -36.000000, -40.000000)
	registerVal6:setImage(RegisterImage("uie_t7_blackmarket_crate_smokemask"))
	registerVal2:addElement(registerVal6)
	registerVal2.mask = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_872_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.DefaultClip = __FUNC_872_
	registerVal7.DefaultState = registerVal8
	registerVal2.clipsPerState = registerVal7
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

