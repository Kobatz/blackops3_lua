-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Craft.EmblemEditor.EmblemEditorFrame")
require("ui.uieditor.widgets.Craft.EmblemEditor.ColorPicker.EmblemEditorColorMixerPointer")
local function __FUNC_29B_(arg0, arg1, arg2)
	arg0.m_forceMouseEventDispatch = true
	local function __FUNC_36B_(arg1, arg2)
		local registerVal2, registerVal3, registerVal4, registerVal5 = arg0:getRect()
		local registerVal7 = CoD.ClampColor((arg2.x - registerVal2), 0.000000, (registerVal4 - registerVal2))
		return (registerVal7 / (registerVal4 - registerVal2))
	end

	local function __FUNC_41A_(arg0, arg2)
		local registerVal2 = __FUNC_36B_(arg0, arg2)
		EmblemGradient_SetGradientFill(arg0, arg0, registerVal2, arg1)
		return true
	end

	arg0:registerEventHandler("leftmouseup", __FUNC_41A_)
	local function __FUNC_49C_(arg0, arg2)
		local registerVal2 = __FUNC_36B_(arg0, arg2)
		EmblemGradient_SetGradientFill(arg0, arg0, registerVal2, arg1)
		return true
	end

	arg0:registerEventHandler("mousedrag", __FUNC_49C_)
end

local function __FUNC_520_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_29B_(arg0, arg1, arg2)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.EmblemEditorGradientSliderBar = registerVal3
local function __FUNC_593_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.EmblemEditorGradientSliderBar)
	registerVal2.id = "EmblemEditorGradientSliderBar"
	registerVal2.soundSet = "SelectColor_ColorMixer"
	registerVal2:setLeftRight(true, false, 0.000000, 551.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.EmblemEditorFrame.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal3:setTopBottom(true, true, -3.000000, 3.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.barBg = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal4:setTopBottom(true, true, -3.000000, -20.000000)
	registerVal4:setRGB(1.000000, 0.410000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.barBg1 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_gradient"))
	registerVal5:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 1.000000)
	registerVal5:setShaderVector(1.000000, 1.000000, 1.000000, 1.000000, 1.000000)
	registerVal5:setShaderVector(2.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.bar = registerVal5
	local registerVal6 = CoD.EmblemEditorColorMixerPointer.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 0.000000, 2.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.pointer = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, true, -6.500000, 25.500000)
	registerVal7:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal7:setZRot(90.000000)
	registerVal7:setImage(RegisterImage("uie_t7_hud_minimap_arrow"))
	registerVal2:addElement(registerVal7)
	registerVal2.rightArrow = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, -25.000000, 7.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal8:setZRot(-90.000000)
	registerVal8:setImage(RegisterImage("uie_t7_hud_minimap_arrow"))
	registerVal2:addElement(registerVal8)
	registerVal2.leftArrow = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal9:setTopBottom(true, true, 20.000000, 3.000000)
	registerVal9:setRGB(1.000000, 0.410000, 0.000000)
	registerVal9:setAlpha(0.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.barBg2 = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_EB2_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.barBg:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.barBg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.barBg1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.pointer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.rightArrow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.rightArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.leftArrow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.leftArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.barBg2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_EB2_
	local function __FUNC_11DA_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.barBg:setLeftRight(true, true, -4.000000, 4.000000)
		registerVal2.barBg:setTopBottom(true, true, -3.000000, 4.000000)
		registerVal2.barBg:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.barBg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.barBg1:setLeftRight(true, true, -2.000000, 2.000000)
		registerVal2.barBg1:setTopBottom(true, true, -3.000000, -32.000000)
		registerVal2.barBg1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.pointer:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.rightArrow:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.rightArrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.leftArrow:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.leftArrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.barBg2:setLeftRight(true, true, -2.000000, 2.000000)
		registerVal2.barBg2:setTopBottom(true, true, 32.000000, 3.000000)
		registerVal2.barBg2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.Focus = __FUNC_11DA_
	registerVal10.DefaultState = registerVal11
	registerVal2.clipsPerState = registerVal10
	local function __FUNC_1653_(arg0)
		arg0.barBg:close()
		arg0.pointer:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1653_)
	if __FUNC_520_ then
		__FUNC_520_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.EmblemEditorGradientSliderBar.new = __FUNC_593_
