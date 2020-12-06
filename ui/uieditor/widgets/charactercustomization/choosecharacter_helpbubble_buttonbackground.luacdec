-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChooseCharacter_HelpBubble_ButtonBackground = registerVal1
function CoD.ChooseCharacter_HelpBubble_ButtonBackground.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChooseCharacter_HelpBubble_ButtonBackground)
	registerVal2.id = "ChooseCharacter_HelpBubble_ButtonBackground"
	registerVal2.soundSet = "CAC_EditLoadout"
	registerVal2:setLeftRight(true, false, 0.000000, 90.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal3:setRGB(0.180000, 0.180000, 0.180000)
	registerVal2:addElement(registerVal3)
	registerVal2.ButtonBackground = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_535_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ButtonBackground:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_535_
	local function __FUNC_637_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.Over = __FUNC_637_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

