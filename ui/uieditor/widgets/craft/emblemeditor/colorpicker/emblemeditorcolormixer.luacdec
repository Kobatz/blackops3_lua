-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Craft.EmblemEditor.ColorPicker.EmblemEditorColorMixerBar")
require("ui.uieditor.widgets.Craft.Paintshop.PaintshopButtonPrompt")
require("ui.uieditor.widgets.Craft.EmblemEditor.EmblemEditorFrame")
local function __FUNC_2DF_(arg0, arg1, arg2)
	arg0.redBar.m_colorMixer = arg0
	arg0.redBar.m_color = "red"
	arg0.greenBar.m_colorMixer = arg0
	arg0.greenBar.m_color = "green"
	arg0.blueBar.m_colorMixer = arg0
	arg0.blueBar.m_color = "blue"
end

local function __FUNC_3EC_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_2DF_(arg0, arg1, arg2)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.EmblemEditorColorMixer = registerVal3
local function __FUNC_45F_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.EmblemEditorColorMixer)
	registerVal2.id = "EmblemEditorColorMixer"
	registerVal2.soundSet = "SelectColor_ColorMixer"
	registerVal2:setLeftRight(true, false, 0.000000, 671.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 175.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, true, 607.000000, -23.000000)
	registerVal3:setTopBottom(true, false, 17.500000, 42.500000)
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_18C3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "red", true, __FUNC_18C3_)
	registerVal2:addElement(registerVal3)
	registerVal2.redColorValue = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, 607.000000, -23.000000)
	registerVal4:setTopBottom(true, false, 62.000000, 87.000000)
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_197A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "green", true, __FUNC_197A_)
	registerVal2:addElement(registerVal4)
	registerVal2.greenColorValue = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, true, 607.000000, -23.000000)
	registerVal5:setTopBottom(true, false, 103.000000, 128.000000)
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1A32_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "blue", true, __FUNC_1A32_)
	registerVal2:addElement(registerVal5)
	registerVal2.blueColorValue = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 32.540000, 79.540000)
	registerVal6:setTopBottom(true, false, 42.000000, 123.000000)
	local function __FUNC_1AEA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setRGB(registerVal1)
		end
	end

	registerVal6:linkToElementModel(registerVal2, "color", true, __FUNC_1AEA_)
	registerVal2:addElement(registerVal6)
	registerVal2.previewColor = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 114.380000, 116.380000)
	registerVal7:setTopBottom(true, false, 1.500000, 148.000000)
	registerVal7:setAlpha(0.100000)
	registerVal2:addElement(registerVal7)
	registerVal2.separatorLine = registerVal7
	local registerVal8 = LUI.UITightText.new()
	registerVal8:setLeftRight(true, false, 32.540000, 79.540000)
	registerVal8:setTopBottom(true, false, 8.500000, 33.500000)
	registerVal8:setText(Engine.Localize("MENU_EMBLEM_COLOR"))
	registerVal8:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal8)
	registerVal2.colorText = registerVal8
	local registerVal9 = LUI.UITightText.new()
	registerVal9:setLeftRight(true, false, 139.000000, 173.000000)
	registerVal9:setTopBottom(true, false, 16.500000, 41.500000)
	registerVal9:setText(Engine.Localize("MENU_EMBLEM_RGB_RED"))
	registerVal9:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal9)
	registerVal2.redColor = registerVal9
	local registerVal10 = LUI.UITightText.new()
	registerVal10:setLeftRight(true, false, 139.000000, 195.000000)
	registerVal10:setTopBottom(true, false, 60.000000, 85.000000)
	registerVal10:setText(Engine.Localize("MENU_EMBLEM_RGB_GREEN"))
	registerVal10:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal10)
	registerVal2.greenColor = registerVal10
	local registerVal11 = LUI.UITightText.new()
	registerVal11:setLeftRight(true, false, 139.000000, 178.000000)
	registerVal11:setTopBottom(true, false, 104.250000, 129.250000)
	registerVal11:setText(Engine.Localize("MENU_EMBLEM_RGB_BLUE"))
	registerVal11:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal11)
	registerVal2.blueColor = registerVal11
	local registerVal12 = CoD.EmblemEditorColorMixerBar.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 216.470000, 584.470000)
	registerVal12:setTopBottom(true, false, 20.000000, 40.000000)
	registerVal12.bar:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 1.000000)
	registerVal12.bar:setShaderVector(1.000000, 1.000000, 1.000000, 1.000000, 1.000000)
	local function __FUNC_1B7B_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_LEFT)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_RIGHT)
		return registerVal3
	end

	registerVal12:registerEventHandler("gain_focus", __FUNC_1B7B_)
	local function __FUNC_1D63_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal12:registerEventHandler("lose_focus", __FUNC_1D63_)
	local function __FUNC_1E32_(arg0, arg1, arg2, arg3)
		EmblemChooseColor_DecrementColorComponent(registerVal2, arg0, arg2, "red")
		PlaySoundSetSound(registerVal2, "manipulate_slider")
		return true
	end

	local function __FUNC_1F02_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LEFT, "")
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal12, arg1, Enum.LUIButton.LUI_KEY_LEFT, nil, __FUNC_1E32_, __FUNC_1F02_, false)
	local function __FUNC_1FEC_(arg0, arg1, arg2, arg3)
		EmblemChooseColor_IncrementColorComponent(registerVal2, arg0, arg2, "red")
		PlaySoundSetSound(registerVal2, "manipulate_slider")
		return true
	end

	local function __FUNC_20BE_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RIGHT, "")
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal12, arg1, Enum.LUIButton.LUI_KEY_RIGHT, nil, __FUNC_1FEC_, __FUNC_20BE_, false)
	registerVal2:addElement(registerVal12)
	registerVal2.redBar = registerVal12
	local registerVal13 = CoD.EmblemEditorColorMixerBar.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 216.470000, 584.470000)
	registerVal13:setTopBottom(true, false, 63.250000, 83.250000)
	registerVal13.bar:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 1.000000)
	registerVal13.bar:setShaderVector(1.000000, 1.000000, 1.000000, 1.000000, 1.000000)
	local function __FUNC_21A9_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_LEFT)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_RIGHT)
		return registerVal3
	end

	registerVal13:registerEventHandler("gain_focus", __FUNC_21A9_)
	local function __FUNC_2393_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal13:registerEventHandler("lose_focus", __FUNC_2393_)
	local function __FUNC_2462_(arg0, arg1, arg2, arg3)
		EmblemChooseColor_DecrementColorComponent(registerVal2, arg0, arg2, "green")
		PlaySoundSetSound(registerVal2, "manipulate_slider")
		return true
	end

	local function __FUNC_2534_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LEFT, "")
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal13, arg1, Enum.LUIButton.LUI_KEY_LEFT, nil, __FUNC_2462_, __FUNC_2534_, false)
	local function __FUNC_2620_(arg0, arg1, arg2, arg3)
		EmblemChooseColor_IncrementColorComponent(registerVal2, arg0, arg2, "green")
		PlaySoundSetSound(registerVal2, "manipulate_slider")
		return true
	end

	local function __FUNC_26F4_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RIGHT, "")
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal13, arg1, Enum.LUIButton.LUI_KEY_RIGHT, nil, __FUNC_2620_, __FUNC_26F4_, false)
	registerVal2:addElement(registerVal13)
	registerVal2.greenBar = registerVal13
	local registerVal14 = CoD.EmblemEditorColorMixerBar.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 216.470000, 584.470000)
	registerVal14:setTopBottom(true, false, 105.500000, 128.000000)
	registerVal14.bar:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 1.000000)
	registerVal14.bar:setShaderVector(1.000000, 1.000000, 1.000000, 1.000000, 1.000000)
	local function __FUNC_27E1_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_LEFT)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_RIGHT)
		return registerVal3
	end

	registerVal14:registerEventHandler("gain_focus", __FUNC_27E1_)
	local function __FUNC_29CB_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal14:registerEventHandler("lose_focus", __FUNC_29CB_)
	local function __FUNC_2A9A_(arg0, arg1, arg2, arg3)
		EmblemChooseColor_DecrementColorComponent(registerVal2, arg0, arg2, "blue")
		PlaySoundSetSound(registerVal2, "manipulate_slider")
		return true
	end

	local function __FUNC_2B6B_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LEFT, "")
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal14, arg1, Enum.LUIButton.LUI_KEY_LEFT, nil, __FUNC_2A9A_, __FUNC_2B6B_, false)
	local function __FUNC_2C54_(arg0, arg1, arg2, arg3)
		EmblemChooseColor_IncrementColorComponent(registerVal2, arg0, arg2, "blue")
		PlaySoundSetSound(registerVal2, "manipulate_slider")
		return true
	end

	local function __FUNC_2D27_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RIGHT, "")
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal14, arg1, Enum.LUIButton.LUI_KEY_RIGHT, nil, __FUNC_2C54_, __FUNC_2D27_, false)
	registerVal2:addElement(registerVal14)
	registerVal2.blueBar = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal15:setTopBottom(true, false, 148.000000, 146.000000)
	registerVal15:setAlpha(0.100000)
	registerVal2:addElement(registerVal15)
	registerVal2.Image0 = registerVal15
	local registerVal16 = CoD.PaintshopButtonPrompt.new(arg0, arg1)
	registerVal16:setLeftRight(true, false, 4.000000, 237.000000)
	registerVal16:setTopBottom(true, false, 149.500000, 180.500000)
	registerVal16.label:setText(Engine.Localize("MENU_EMBLEM_TOGGLE_TO_SOLID_FILL"))
	local function __FUNC_2E11_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal16:subscribeToGlobalModel(arg1, "Controller", "back_button_image", __FUNC_2E11_)
	registerVal2:addElement(registerVal16)
	registerVal2.toggleSolidColorButton = registerVal16
	local registerVal17 = CoD.EmblemEditorFrame.new(arg0, arg1)
	registerVal17:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal17:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal17)
	registerVal2.mixerFrame = registerVal17
	local registerVal18 = {}
	registerVal18.down = registerVal13
	registerVal12.navigation = registerVal18
	registerVal18 = {}
	registerVal18.up = registerVal12
	registerVal18.down = registerVal14
	registerVal13.navigation = registerVal18
	registerVal18 = {}
	registerVal18.up = registerVal13
	registerVal14.navigation = registerVal18
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal12.id = "redBar"
	registerVal13.id = "greenBar"
	registerVal14.id = "blueBar"
	local function __FUNC_2EEB_(arg0, arg1)
		local registerVal2 = arg0.redBar:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_2EEB_)
	local function __FUNC_2FEA_(arg0)
		arg0.redBar:close()
		arg0.greenBar:close()
		arg0.blueBar:close()
		arg0.toggleSolidColorButton:close()
		arg0.mixerFrame:close()
		arg0.redColorValue:close()
		arg0.greenColorValue:close()
		arg0.blueColorValue:close()
		arg0.previewColor:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2FEA_)
	if __FUNC_3EC_ then
		__FUNC_3EC_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.EmblemEditorColorMixer.new = __FUNC_45F_
