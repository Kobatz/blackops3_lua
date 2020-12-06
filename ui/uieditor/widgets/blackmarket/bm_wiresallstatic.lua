-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_WiresAllStatic = registerVal1
function CoD.BM_WiresAllStatic.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_WiresAllStatic)
	registerVal2.id = "BM_WiresAllStatic"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 120.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 360.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 120.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 360.000000)
	registerVal3:setAlpha(0.100000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_circuitanim_line1"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.wires0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 120.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 360.000000)
	registerVal4:setAlpha(0.100000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_circuitanim_line2"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.wires2 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_68A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_68A_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

