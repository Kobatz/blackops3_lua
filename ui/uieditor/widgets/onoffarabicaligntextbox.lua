-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.ArabicAlignTextBox")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.onOffArabicAlignTextBox = registerVal1
function CoD.onOffArabicAlignTextBox.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.onOffArabicAlignTextBox)
	registerVal2.id = "onOffArabicAlignTextBox"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 300.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 22.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.ArabicAlignTextBox.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(false, false, -11.000000, 11.000000)
	registerVal3.textBox:setText(Engine.Localize("MENU_NEW"))
	registerVal3.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal2:addElement(registerVal3)
	registerVal2.text = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_6D3_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.text:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_6D3_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_7CC_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_7CC_
	registerVal4.Visible = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_8C3_(arg0)
		arg0.text:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_8C3_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

