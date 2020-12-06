-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Identity_Subtitle_BG")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.TitleWidgetSmall = registerVal1
function CoD.TitleWidgetSmall.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.TitleWidgetSmall)
	registerVal2.id = "TitleWidgetSmall"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 88.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 22.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.StartMenu_Identity_Subtitle_BG.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -8.000000, 8.000000)
	registerVal3:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.550000)
	registerVal2:addElement(registerVal3)
	registerVal2.StartMenuIdentitySubtitleBG0 = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(false, false, -37.000000, 37.000000)
	registerVal4:setTopBottom(true, false, 0.500000, 21.500000)
	registerVal4:setText(Engine.Localize("SOMETHING"))
	registerVal4:setTTF("fonts/escom.ttf")
	local function __FUNC_7EB_(arg0, arg1)
		ScaleWidgetToLabelCentered(registerVal2, arg0, 5.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_7EB_)
	registerVal2:addElement(registerVal4)
	registerVal2.SubTitle = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_851_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_851_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_8B2_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.SubTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_8B2_
	local function __FUNC_9B0_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.Focus = __FUNC_9B0_
	registerVal5.Disabled = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_A12_(arg0)
		arg0.StartMenuIdentitySubtitleBG0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A12_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

