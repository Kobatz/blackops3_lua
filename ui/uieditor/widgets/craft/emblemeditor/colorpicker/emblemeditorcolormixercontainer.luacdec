-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Craft.EmblemEditor.ColorPicker.EmblemEditorColorMixer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.EmblemEditorColorMixerContainer = registerVal1
function CoD.EmblemEditorColorMixerContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.EmblemEditorColorMixerContainer)
	registerVal2.id = "EmblemEditorColorMixerContainer"
	registerVal2.soundSet = "SelectColor_ColorMixer"
	registerVal2:setLeftRight(true, false, 0.000000, 671.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 175.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.090000, 0.100000, 0.120000)
	registerVal3:setZRot(180.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.ColorPickerBkgd0 = registerVal3
	local registerVal4 = CoD.EmblemEditorColorMixer.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_755_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:subscribeToGlobalModel(arg1, "EmblemSelectedLayerEdittingColor", nil, __FUNC_755_)
	registerVal2:addElement(registerVal4)
	registerVal2.colorMixer = registerVal4
	registerVal4.id = "colorMixer"
	local function __FUNC_7A6_(arg0, arg1)
		local registerVal2 = arg0.colorMixer:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_7A6_)
	local function __FUNC_8AA_(arg0)
		arg0.colorMixer:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_8AA_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

