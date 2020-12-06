-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.button_internal = registerVal1
function CoD.button_internal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.button_internal)
	registerVal2.id = "button_internal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 30.000000)
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 57.000000)
	registerVal3:setTopBottom(false, false, -15.000000, 15.000000)
	registerVal3:setText(Engine.Localize("Button"))
	registerVal3:setTTF("fonts/escom.ttf")
	registerVal2:addElement(registerVal3)
	registerVal2.Text0 = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_57D_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Text0:setRGB(1.000000, 0.990000, 0.860000)
		registerVal2.Text0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_57D_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_6B2_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Text0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_6B2_
	registerVal4.Invisible = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

