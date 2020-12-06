-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Chat.checkboxNoLabel")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
local function __FUNC_25C_(arg0, arg1, arg2)
	arg0:setHandleMouse(true)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.CheckboxWithLabel = registerVal2
local function __FUNC_2AC_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CheckboxWithLabel)
	registerVal2.id = "CheckboxWithLabel"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 104.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 14.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 104.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 14.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.900000)
	registerVal2:addElement(registerVal3)
	registerVal2.background = registerVal3
	local registerVal4 = CoD.checkboxNoLabel.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 1.000000, 13.000000)
	registerVal4:setTopBottom(true, false, 1.000000, 13.000000)
	local function __FUNC_AD5_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_AD5_)
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
	local registerVal6 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, -88.500000, 88.500000)
	registerVal6:setTopBottom(false, false, 5.000000, 9.000000)
	registerVal6:setAlpha(0.500000)
	registerVal6:setZoom(1.000000)
	registerVal6:setScale(0.600000)
	registerVal2:addElement(registerVal6)
	registerVal2.FocusBarB0 = registerVal6
	local registerVal7 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -88.500000, 88.500000)
	registerVal7:setTopBottom(false, false, -9.000000, -5.000000)
	registerVal7:setAlpha(0.500000)
	registerVal7:setZoom(1.000000)
	registerVal7:setScale(0.600000)
	registerVal2:addElement(registerVal7)
	registerVal2.FEFocusBarTOP = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_B26_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.checkboxNoLabel:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.FocusBarB0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEFocusBarTOP:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_B26_
	local function __FUNC_CFB_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.checkboxNoLabel:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.FocusBarB0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEFocusBarTOP:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.Over = __FUNC_CFB_
	registerVal8.DefaultState = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_ED4_(arg0)
		arg0.checkboxNoLabel:close()
		arg0.FocusBarB0:close()
		arg0.FEFocusBarTOP:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_ED4_)
	if __FUNC_25C_ then
		__FUNC_25C_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.CheckboxWithLabel.new = __FUNC_2AC_
