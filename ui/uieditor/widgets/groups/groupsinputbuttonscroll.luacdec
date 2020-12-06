-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.verticalScrollingTextBox")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GroupsInputButtonScroll = registerVal1
function CoD.GroupsInputButtonScroll.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupsInputButtonScroll)
	registerVal2.id = "GroupsInputButtonScroll"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 385.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 110.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, -1.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.StartMenuframenoBG0 = registerVal3
	local registerVal4 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(false, true, -3.500000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setZoom(1.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.FocusBarB = registerVal4
	local registerVal5 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, false, -1.000000, 3.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setZoom(1.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.FocusBarT = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrginactivefull"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal6:setShaderVector(0.000000, 0.041558, 0.145455, 0.357143, 0.357143)
	registerVal6:setupNineSliceShader(16.000000, 16.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.Image = registerVal6
	local registerVal7 = CoD.verticalScrollingTextBox.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 5.000000, 380.000000)
	registerVal7:setTopBottom(true, false, 5.500000, 103.500000)
	registerVal7.textBox:setText(Engine.Localize("MENU_NEW"))
	registerVal7.textBox:setTTF("fonts/default.ttf")
	registerVal7.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal2:addElement(registerVal7)
	registerVal2.verticalScrollingTextBox = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_C45_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal4:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal9.DefaultClip = __FUNC_C45_
	local function __FUNC_D9C_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal4:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.FocusBarB:setTopBottom(false, true, -3.500000, 0.000000)
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal9.LoseFocus = __FUNC_D9C_
	local function __FUNC_F75_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal4:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal9.Focus = __FUNC_F75_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_10CC_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal9.DefaultClip = __FUNC_10CC_
	registerVal8.Disabled = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_112E_(arg0)
		arg0.StartMenuframenoBG0:close()
		arg0.FocusBarB:close()
		arg0.FocusBarT:close()
		arg0.verticalScrollingTextBox:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_112E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

