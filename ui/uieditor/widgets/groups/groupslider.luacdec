-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Groups.GroupsFrameNoBG")
require("ui.uieditor.widgets.Groups.GroupsSlider")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
local function __FUNC_29D_(arg0, arg1, arg2)
	arg0:setForceMouseEventDispatch(true)
end

local function __FUNC_2F8_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_29D_(arg0, arg1, arg2)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.GroupSlider = registerVal3
local function __FUNC_36B_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupSlider)
	registerVal2.id = "GroupSlider"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 385.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 34.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.GroupsFrameNoBG.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 385.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 34.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.GroupsFrameNoBG0 = registerVal3
	local registerVal4 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(true, false, 0.000000, 385.000000)
	registerVal4:setTopBottom(true, false, 1.000000, 35.000000)
	registerVal4:setWidgetType(CoD.GroupsSlider)
	registerVal4:setDataSource("GroupPrivacyModes")
	registerVal2:addElement(registerVal4)
	registerVal2.Slider = registerVal4
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
	registerVal7:setAlpha(0.800000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrginactivefull"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal7:setShaderVector(0.000000, 0.041558, 0.470588, 0.357143, 0.357143)
	registerVal7:setupNineSliceShader(16.000000, 16.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.Image = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_C68_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal9.DefaultClip = __FUNC_C68_
	local function __FUNC_CCA_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.Slider:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.FocusBarB:setTopBottom(false, true, -3.500000, 0.000000)
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.LoseFocus = __FUNC_CCA_
	local function __FUNC_EFA_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.Slider:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.Focus = __FUNC_EFA_
	registerVal8.DefaultState = registerVal9
	registerVal2.clipsPerState = registerVal8
	registerVal4.id = "Slider"
	local function __FUNC_10BC_(arg0, arg1)
		local registerVal2 = arg0.Slider:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_10BC_)
	local function __FUNC_11BE_(arg0)
		arg0.GroupsFrameNoBG0:close()
		arg0.Slider:close()
		arg0.FocusBarB:close()
		arg0.FocusBarT:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_11BE_)
	if __FUNC_2F8_ then
		__FUNC_2F8_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.GroupSlider.new = __FUNC_36B_
