-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GunsmithInputButton = registerVal1
function CoD.GunsmithInputButton.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GunsmithInputButton)
	registerVal2.id = "GunsmithInputButton"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 726.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 34.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(false, false, -373.750000, 373.750000)
	registerVal3:setTopBottom(false, false, -9.000000, 9.000000)
	registerVal3:setText(Engine.Localize("MENU_NEW"))
	registerVal3:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.Text = registerVal3
	local registerVal4 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, -1.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.StartMenuframenoBG0 = registerVal4
	local registerVal5 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(false, true, -3.500000, 0.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setZoom(1.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.FocusBarB = registerVal5
	local registerVal6 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, false, -1.000000, 3.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setZoom(1.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.FocusBarT = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_A2D_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_A2D_
	local function __FUNC_BF3_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.FocusBarB:setTopBottom(false, true, -3.500000, 0.000000)
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.LoseFocus = __FUNC_BF3_
	local function __FUNC_E38_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.Focus = __FUNC_E38_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_FFA_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Text:setRGB(0.500000, 0.510000, 0.520000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal8.DefaultClip = __FUNC_FFA_
	registerVal7.Disabled = registerVal8
	registerVal2.clipsPerState = registerVal7
	local function __FUNC_1104_(arg0)
		arg0.StartMenuframenoBG0:close()
		arg0.FocusBarB:close()
		arg0.FocusBarT:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1104_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

