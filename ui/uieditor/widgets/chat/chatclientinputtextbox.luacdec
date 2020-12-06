-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Border")
local function __FUNC_222_(arg0, arg1, arg2)
	local function __FUNC_271_(arg0)
		local registerVal1, registerVal2, registerVal3, registerVal4 = arg0:getLocalRect()
		local registerVal9 = arg0.channelText:getTextWidth()
		arg0.channelText:setLeftRight(true, false, 4.000000, (4.000000 + registerVal9))
		arg0.InputText:setLeftRight(true, false, ((4.000000 + registerVal9) + 2.000000), ((registerVal3 - registerVal1) - 2.000000))
		registerVal9, registerVal10 = arg0.InputText:getTextWidthAndHeight()
		if registerVal10 < 18.000000 then
		end
		arg0:setTopBottom(true, false, registerVal2, (registerVal2 + (14.000000 + 18.000000)))
	end

	arg0.arrangeText = __FUNC_271_
end

local registerVal4 = InheritFrom(LUI.UIElement)
CoD.ChatClientInputTextBox = registerVal4
local function __FUNC_411_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.ChatClientInputTextBox)
	registerVal2.id = "ChatClientInputTextBox"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 346.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(ColorSet.BadgeText.r, ColorSet.BadgeText.g, ColorSet.BadgeText.b)
	registerVal3:setAlpha(0.800000)
	registerVal2:addElement(registerVal3)
	registerVal2.Background = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 44.000000, 342.000000)
	registerVal4:setTopBottom(true, false, 7.000000, 25.000000)
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_ED2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(registerVal1)
		end
	end

	registerVal4:linkToElementModel(registerVal2, "inputText", true, __FUNC_ED2_)
	local function __FUNC_F64_(arg0, arg2)
		ChatClientInputArrangeText(registerVal2, arg0, arg1)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_F64_)
	registerVal2:addElement(registerVal4)
	registerVal2.InputText = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 4.000000, 44.000000)
	registerVal5:setTopBottom(true, false, 7.000000, 25.000000)
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_FC8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setRGB(registerVal1)
		end
	end

	registerVal5:linkToElementModel(registerVal2, "inputChannelColor", true, __FUNC_FC8_)
	local function __FUNC_105B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(registerVal1)
		end
	end

	registerVal5:linkToElementModel(registerVal2, "inputChannelText", true, __FUNC_105B_)
	local function __FUNC_10EC_(arg0, arg2)
		ChatClientInputArrangeText(registerVal2, arg0, arg1)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal5, "setText", __FUNC_10EC_)
	registerVal2:addElement(registerVal5)
	registerVal2.channelText = registerVal5
	local registerVal6 = CoD.Border.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.Border = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, false, -2.000000, 2.000000)
	registerVal7:setAlpha(0.550000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_featuredframeum"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.LineLeft = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_1150_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Background:setAlpha(0.750000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.InputText:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.InputText:setAlpha(0.750000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.Border:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.DefaultClip = __FUNC_1150_
	local function __FUNC_133B_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Background:setAlpha(0.750000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.InputText:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.InputText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.Border:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.Over = __FUNC_133B_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_15AE_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Background:setAlpha(0.750000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.InputText:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.InputText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal9.DefaultClip = __FUNC_15AE_
	registerVal8.Chatting = registerVal9
	registerVal9 = {}
	local function __FUNC_173E_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Background:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.InputText:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.InputText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal9.DefaultClip = __FUNC_173E_
	registerVal8.ChattingIngame = registerVal9
	registerVal9 = {}
	local function __FUNC_18CE_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Background:setAlpha(0.750000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.InputText:setAlpha(0.750000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal9.DefaultClip = __FUNC_18CE_
	registerVal8.Disabled = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_1A25_(arg0)
		arg0.Border:close()
		arg0.InputText:close()
		arg0.channelText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1A25_)
	if __FUNC_222_ then
		__FUNC_222_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ChatClientInputTextBox.new = __FUNC_411_
