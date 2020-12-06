-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FE_Guide = registerVal1
function CoD.FE_Guide.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FE_Guide)
	registerVal2.id = "FE_Guide"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1096.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 479.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 66.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 479.000000)
	registerVal3:setAlpha(0.220000)
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 67.000000, 377.000000)
	registerVal4:setTopBottom(true, false, 20.000000, 239.500000)
	registerVal4:setAlpha(0.430000)
	registerVal2:addElement(registerVal4)
	registerVal2.Image00 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 395.500000, 736.500000)
	registerVal5:setTopBottom(true, false, 111.000000, 324.000000)
	registerVal5:setAlpha(0.500000)
	registerVal2:addElement(registerVal5)
	registerVal2.Image000 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 755.000000, 1096.000000)
	registerVal6:setTopBottom(true, false, 148.000000, 398.070000)
	registerVal6:setAlpha(0.480000)
	registerVal2:addElement(registerVal6)
	registerVal2.Image0000 = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_6AC_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.DefaultClip = __FUNC_6AC_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_70E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.DefaultClip = __FUNC_70E_
	registerVal7.SelectingPlaylist = registerVal8
	registerVal2.clipsPerState = registerVal7
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

