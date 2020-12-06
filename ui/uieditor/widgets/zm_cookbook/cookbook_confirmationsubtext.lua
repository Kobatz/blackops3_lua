-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Cookbook_ConfirmationSubtext = registerVal1
function CoD.Cookbook_ConfirmationSubtext.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Cookbook_ConfirmationSubtext)
	registerVal2.id = "Cookbook_ConfirmationSubtext"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 200.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 20.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 200.000000)
	registerVal3:setTopBottom(true, false, 1.500000, 18.500000)
	registerVal3:setRGB(0.040000, 0.490000, 0.000000)
	registerVal3:setText(LocalizeToUpperString("ZMUI_COOKBOOK_READY_TO_DISTILL_CAPS"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	registerVal2:addElement(registerVal3)
	registerVal2.Ready = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 0.000000, 200.000000)
	registerVal4:setTopBottom(true, false, 1.500000, 18.500000)
	registerVal4:setRGB(0.680000, 0.000000, 0.020000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setText(LocalizeToUpperString("ZMUI_COOKBOOK_NOT_ENOUGH_TO_DISTILL_CAPS"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	registerVal2:addElement(registerVal4)
	registerVal2.NotReady = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_7FD_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Ready:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.NotReady:setAlpha(0.000000)
		registerVal2.NotReady:setText(LocalizeToUpperString("Not enough to distill"))
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_7FD_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_9C2_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Ready:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.NotReady:setRGB(0.930000, 0.110000, 0.140000)
		registerVal2.NotReady:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_9C2_
	registerVal5.Red = registerVal6
	registerVal6 = {}
	local function __FUNC_B5B_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Ready:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.NotReady:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_B5B_
	registerVal5.Green = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

