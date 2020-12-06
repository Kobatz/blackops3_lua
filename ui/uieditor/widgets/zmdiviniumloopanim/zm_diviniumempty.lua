-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ZM_DiviniumEmpty = registerVal1
function CoD.ZM_DiviniumEmpty.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ZM_DiviniumEmpty)
	registerVal2.id = "ZM_DiviniumEmpty"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 108.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 225.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 30.000000, -30.000000)
	registerVal3:setTopBottom(true, true, 0.000000, -9.000000)
	registerVal3:setImage(RegisterImage("uie_t7_zm_anim_divinium_vial"))
	registerVal2:addElement(registerVal3)
	registerVal2.Vial0 = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_516_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_516_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

