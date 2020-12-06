-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Craft.EmblemEditor.ColorPicker.EmblemEditorColorMixerPointer")
local function __FUNC_249_(arg0, arg1, arg2)
	arg0.m_forceMouseEventDispatch = true
	local function __FUNC_31B_(arg1, arg2)
		local registerVal2, registerVal3, registerVal4, registerVal5 = arg0:getRect()
		local registerVal7 = CoD.ClampColor((arg2.x - registerVal2), 0.000000, (registerVal4 - registerVal2))
		return math.floor((((registerVal7 / (registerVal4 - registerVal2)) * 255.000000) + 0.500000))
	end

	local function __FUNC_40D_(arg0, arg2)
		local registerVal2 = __FUNC_31B_(arg0, arg2)
		EmblemChooseColor_SetColorComponent(arg0.m_colorMixer, arg0, arg1, arg0.m_color, registerVal2)
		return true
	end

	arg0:registerEventHandler("leftmouseup", __FUNC_40D_)
	local function __FUNC_4D0_(arg0, arg2)
		local registerVal2 = __FUNC_31B_(arg0, arg2)
		EmblemChooseColor_SetColorComponent(arg0.m_colorMixer, arg0, arg1, arg0.m_color, registerVal2)
		return true
	end

	arg0:registerEventHandler("mousedrag", __FUNC_4D0_)
end

local function __FUNC_594_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_249_(arg0, arg1, arg2)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.EmblemEditorColorMixerBar = registerVal3
local function __FUNC_607_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.EmblemEditorColorMixerBar)
	registerVal2.id = "EmblemEditorColorMixerBar"
	registerVal2.soundSet = "SelectColor_ColorMixer"
	registerVal2:setLeftRight(true, false, 0.000000, 551.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal3:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal3:setAlpha(0.100000)
	registerVal2:addElement(registerVal3)
	registerVal2.barBg = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_dual_color_gradient"))
	registerVal4:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 1.000000)
	registerVal4:setShaderVector(1.000000, 1.000000, 1.000000, 1.000000, 1.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.bar = registerVal4
	local registerVal5 = CoD.EmblemEditorColorMixerPointer.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 2.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.pointer = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, true, -6.500000, 25.500000)
	registerVal6:setTopBottom(true, false, -6.000000, 26.000000)
	registerVal6:setZRot(90.000000)
	registerVal6:setImage(RegisterImage("uie_t7_hud_minimap_arrow"))
	registerVal2:addElement(registerVal6)
	registerVal2.rightArrow = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, -25.000000, 7.000000)
	registerVal7:setTopBottom(true, false, -6.000000, 26.000000)
	registerVal7:setZRot(-90.000000)
	registerVal7:setImage(RegisterImage("uie_t7_hud_minimap_arrow"))
	registerVal2:addElement(registerVal7)
	registerVal2.leftArrow = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_D8F_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.barBg:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.barBg:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.bar:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.pointer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.rightArrow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.rightArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.leftArrow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.leftArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_D8F_
	local function __FUNC_1064_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.barBg:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.barBg:setTopBottom(true, true, -2.000000, 2.000000)
		registerVal2.barBg:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.barBg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.bar:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.pointer:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.pointer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.rightArrow:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.leftArrow:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.Focus = __FUNC_1064_
	registerVal8.DefaultState = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_13AE_(arg0)
		arg0.pointer:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_13AE_)
	if __FUNC_594_ then
		__FUNC_594_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.EmblemEditorColorMixerBar.new = __FUNC_607_
