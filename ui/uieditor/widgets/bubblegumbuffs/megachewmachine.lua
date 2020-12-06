-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MegaChewMachine = registerVal1
function CoD.MegaChewMachine.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MegaChewMachine)
	registerVal2.id = "MegaChewMachine"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 128.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 128.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 128.000000)
	registerVal3:setTopBottom(true, false, 116.000000, 128.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_50A_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Image0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_50A_
	local function __FUNC_607_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Image0:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.Focus = __FUNC_607_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

