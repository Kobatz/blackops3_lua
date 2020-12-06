-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AtviCopy = registerVal1
function CoD.AtviCopy.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.AtviCopy)
	registerVal2.id = "AtviCopy"
	registerVal2.soundSet = "FrontendMain"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, true, -175.000000, 9.000000)
	registerVal3:setTopBottom(true, false, 30.000000, 58.000000)
	registerVal3:setRGB(0.680000, 0.680000, 0.680000)
	registerVal3:setAlpha(0.900000)
	registerVal3:setImage(RegisterImage("uie_t7_activisionpublishinginc"))
	registerVal2:addElement(registerVal3)
	registerVal2.ActivisionIncDurango = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_5CB_()
		registerVal2:setupElementClipCounter(0.000000)
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_5CB_
	local function __FUNC_659_()
		registerVal2:setupElementClipCounter(0.000000)
		registerVal2.nextClip = "Focus"
	end

	registerVal5.Focus = __FUNC_659_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

