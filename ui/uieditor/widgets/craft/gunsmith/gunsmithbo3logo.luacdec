-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GunsmithBO3Logo = registerVal1
function CoD.GunsmithBO3Logo.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GunsmithBO3Logo)
	registerVal2.id = "GunsmithBO3Logo"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 260.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 112.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, true, -244.000000, -16.000000)
	registerVal3:setTopBottom(true, false, 6.000000, 106.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_welcome_bo3logo"))
	registerVal2:addElement(registerVal3)
	registerVal2.bo3logo = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_545_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.bo3logo:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_545_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_63E_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.bo3logo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_63E_
	registerVal4.Hide = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

