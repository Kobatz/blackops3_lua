-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BackgroundPattern02 = registerVal1
function CoD.BackgroundPattern02.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.BackgroundPattern02)
	registerVal2.id = "BackgroundPattern02"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 640.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 64.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -320.000000, 320.000000)
	registerVal3:setTopBottom(false, false, -32.000000, 32.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_pattern_01"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll_normal"))
	registerVal3:setShaderVector(0.000000, 20.000000, 2.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Pattern = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_621_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_621_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_682_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_682_
	registerVal4.SlotsFull = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

