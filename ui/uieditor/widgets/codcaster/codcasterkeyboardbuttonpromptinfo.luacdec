-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.KeyPrompt")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CodCasterKeyboardButtonPromptInfo = registerVal1
function CoD.CodCasterKeyboardButtonPromptInfo.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CodCasterKeyboardButtonPromptInfo)
	registerVal2.id = "CodCasterKeyboardButtonPromptInfo"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 111.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 43.000000, 87.000000)
	registerVal3:setTopBottom(true, false, 7.000000, 25.000000)
	registerVal3:setText(Engine.Localize("MPUI_MENU"))
	registerVal3:setTTF("fonts/default.ttf")
	local function __FUNC_752_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, -40.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal3, "setText", __FUNC_752_)
	registerVal2:addElement(registerVal3)
	registerVal2.Text = registerVal3
	local registerVal4 = CoD.KeyPrompt.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 2.000000, 26.000000)
	registerVal4:setTopBottom(true, false, 4.000000, 28.000000)
	registerVal4.keybind:setText(Engine.Localize(""))
	registerVal2:addElement(registerVal4)
	registerVal2.keyPrompt = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_7B1_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_7B1_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_812_(arg0)
		arg0.keyPrompt:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_812_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

