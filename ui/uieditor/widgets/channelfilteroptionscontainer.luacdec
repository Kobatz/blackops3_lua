-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Chat.checkboxNoLabel")
require("ui.uieditor.widgets.ChannelFilterColorButton")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
local function __FUNC_2AA_(arg0, arg1, arg2)
	arg0:setHandleMouse(true)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.ChannelFilterOptionsContainer = registerVal2
local function __FUNC_2F8_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChannelFilterOptionsContainer)
	registerVal2.id = "ChannelFilterOptionsContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 104.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 14.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 104.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 14.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.background = registerVal3
	local registerVal4 = CoD.checkboxNoLabel.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 1.000000, 13.000000)
	registerVal4:setTopBottom(true, false, 1.000000, 13.000000)
	local function __FUNC_CE8_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_CE8_)
	registerVal2:addElement(registerVal4)
	registerVal2.checkboxNoLabel = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 16.000000, 88.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 14.000000)
	registerVal5:setText(Engine.Localize("MENU_NEW"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.label = registerVal5
	local registerVal6 = CoD.ChannelFilterColorButton.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 91.000000, 103.000000)
	registerVal6:setTopBottom(true, false, 1.000000, 13.000000)
	registerVal6:setAlpha(0.000000)
	local function __FUNC_D3A_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_D3A_)
	local function __FUNC_D8A_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal6:registerEventHandler("gain_focus", __FUNC_D8A_)
	local function __FUNC_F1B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_F1B_)
	local function __FUNC_FEA_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_101C_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "")
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal6, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_FEA_, __FUNC_101C_, false)
	registerVal2:addElement(registerVal6)
	registerVal2.ChannelFilterColorButton = registerVal6
	local registerVal7 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -88.500000, 88.500000)
	registerVal7:setTopBottom(false, false, 5.000000, 9.000000)
	registerVal7:setAlpha(0.500000)
	registerVal7:setZoom(1.000000)
	registerVal7:setScale(0.600000)
	registerVal2:addElement(registerVal7)
	registerVal2.FocusBarB0 = registerVal7
	local registerVal8 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal8:setLeftRight(false, false, -88.500000, 88.500000)
	registerVal8:setTopBottom(false, false, -9.000000, -5.000000)
	registerVal8:setAlpha(0.500000)
	registerVal8:setZoom(1.000000)
	registerVal8:setScale(0.600000)
	registerVal2:addElement(registerVal8)
	registerVal2.FEFocusBarTOP = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_110F_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.checkboxNoLabel:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarB0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FEFocusBarTOP:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_110F_
	local function __FUNC_12E3_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.checkboxNoLabel:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarB0:setLeftRight(false, false, -88.500000, 88.500000)
		registerVal2.FocusBarB0:setTopBottom(false, false, 5.000000, 9.000000)
		registerVal2.FocusBarB0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FEFocusBarTOP:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.Over = __FUNC_12E3_
	registerVal9.DefaultState = registerVal10
	registerVal2.clipsPerState = registerVal9
	local function __FUNC_154C_(arg0)
		arg0.checkboxNoLabel:close()
		arg0.ChannelFilterColorButton:close()
		arg0.FocusBarB0:close()
		arg0.FEFocusBarTOP:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_154C_)
	if __FUNC_2AA_ then
		__FUNC_2AA_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ChannelFilterOptionsContainer.new = __FUNC_2F8_
