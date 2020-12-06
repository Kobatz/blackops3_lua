-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StartMenu_Background = registerVal1
function CoD.StartMenu_Background.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_Background)
	registerVal2.id = "StartMenu_Background"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3:setRGB(0.060000, 0.060000, 0.060000)
	registerVal3:setAlpha(0.950000)
	registerVal3:setImage(RegisterImage("uie_default_white_255"))
	registerVal2:addElement(registerVal3)
	registerVal2.Background = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_589_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Background:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_589_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_685_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Background:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_685_
	registerVal4.InGame = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

