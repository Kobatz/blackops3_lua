-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.smokewidget = registerVal1
function CoD.smokewidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.smokewidget)
	registerVal2.id = "smokewidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 182.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 238.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -5.000000, 187.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 178.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_crate_smoke2"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll_normal"))
	registerVal3:setShaderVector(0.000000, 1.000000, 0.660000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.000000, 0.080000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.smoke1 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 182.000000)
	registerVal4:setTopBottom(true, false, -38.000000, 238.000000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_crate_smokemask"))
	registerVal2:addElement(registerVal4)
	registerVal2.mask = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_6A0_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_6A0_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

