-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Border")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
local function __FUNC_252_(arg0, arg1, arg2)
	arg0:setHandleMouse(true)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.ChannelSelectorButton = registerVal2
local function __FUNC_2A0_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChannelSelectorButton)
	registerVal2.id = "ChannelSelectorButton"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 103.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 14.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 15.000000, -15.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BackGroundImage = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 2.000000, 103.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 14.000000)
	registerVal4:setText(Engine.Localize("MENU_NEW"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.ChannelLabel = registerVal4
	local registerVal5 = CoD.Border.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.focusBorder = registerVal5
	local registerVal6 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, -88.500000, 88.500000)
	registerVal6:setTopBottom(false, false, 5.000000, 9.000000)
	registerVal6:setZoom(1.000000)
	registerVal6:setScale(0.600000)
	registerVal2:addElement(registerVal6)
	registerVal2.FocusBarB0 = registerVal6
	local registerVal7 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -88.500000, 88.500000)
	registerVal7:setTopBottom(false, false, -9.000000, -5.000000)
	registerVal7:setZoom(1.000000)
	registerVal7:setScale(0.600000)
	registerVal2:addElement(registerVal7)
	registerVal2.FEFocusBarTOP = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_B2E_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.BackGroundImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.focusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FocusBarB0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEFocusBarTOP:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_B2E_
	local function __FUNC_D44_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.BackGroundImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.focusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FocusBarB0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEFocusBarTOP:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.Over = __FUNC_D44_
	registerVal8.DefaultState = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_F5C_(arg0)
		arg0.focusBorder:close()
		arg0.FocusBarB0:close()
		arg0.FEFocusBarTOP:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_F5C_)
	if __FUNC_252_ then
		__FUNC_252_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ChannelSelectorButton.new = __FUNC_2A0_
