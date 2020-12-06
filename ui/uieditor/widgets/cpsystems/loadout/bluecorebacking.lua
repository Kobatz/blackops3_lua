-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BlueCoreBacking = registerVal1
function CoD.BlueCoreBacking.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BlueCoreBacking)
	registerVal2.id = "BlueCoreBacking"
	registerVal2.soundSet = "CAC"
	registerVal2:setLeftRight(true, false, 0.000000, 147.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 23.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, -0.500000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.470000, 0.690000, 1.000000)
	registerVal3:setAlpha(0.600000)
	registerVal2:addElement(registerVal3)
	registerVal2.subheaderBg = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_58F_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_58F_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_5EE_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_5EE_
	registerVal4.Multicore = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Multicore"
	local function __FUNC_64E_(arg0, arg2, arg3)
		return IsMulticoreActivated(arg1)
	end

	registerVal7.condition = __FUNC_64E_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

