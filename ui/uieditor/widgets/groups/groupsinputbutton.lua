-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GroupsInputButton = registerVal1
function CoD.GroupsInputButton.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupsInputButton)
	registerVal2.id = "GroupsInputButton"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 385.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 34.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(false, false, -185.750000, 185.750000)
	registerVal3:setTopBottom(false, false, -11.500000, 10.500000)
	registerVal3:setText(Engine.Localize("MENU_NEW"))
	registerVal3:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.Text = registerVal3
	local registerVal4 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, -1.000000)
	registerVal4:setAlpha(0.000000)
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
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrginactivefull"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal7:setShaderVector(0.000000, 0.041558, 0.470588, 0.357143, 0.357143)
	registerVal7:setupNineSliceShader(16.000000, 16.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.Image = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_C1A_()
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

	registerVal9.DefaultClip = __FUNC_C1A_
	local function __FUNC_DDF_()
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

	registerVal9.LoseFocus = __FUNC_DDF_
	local function __FUNC_1024_()
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

	registerVal9.Focus = __FUNC_1024_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_11E6_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Text:setRGB(0.500000, 0.510000, 0.520000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal9.DefaultClip = __FUNC_11E6_
	registerVal8.Disabled = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_12F0_(arg0)
		arg0.StartMenuframenoBG0:close()
		arg0.FocusBarB:close()
		arg0.FocusBarT:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_12F0_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

