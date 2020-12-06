-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BorderBakedBlur")
require("ui.uieditor.widgets.BorderBakedMask")
require("ui.uieditor.widgets.BorderBakedSolid")
require("ui.uieditor.widgets.BorderBaked")
require("ui.uieditor.widgets.Craft.EmblemEditor.EmblemLayer")
require("ui.uieditor.widgets.Craft.EmblemEditor.EmblemLayerArrows")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
local function __FUNC_3E6_(arg0, arg1)
	local function __FUNC_47F_(arg1, arg2)
		if arg2 == "EditMode_Selected" then
			arg0.m_skipMouseFocus = true
		else
			arg0.m_skipMouseFocus = nil
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "setState", __FUNC_47F_)
end

local function __FUNC_4FC_(arg0, arg1)
	if CoD.isPC then
		__FUNC_3E6_(arg0, arg1)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.EmblemLayerContainer = registerVal3
local function __FUNC_56B_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.EmblemLayerContainer)
	registerVal2.id = "EmblemLayerContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 120.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.BorderBakedBlur.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 7.500000, -6.500000)
	registerVal3:setTopBottom(true, true, 7.500000, -7.500000)
	registerVal3:setAlpha(0.400000)
	registerVal2:addElement(registerVal3)
	registerVal2.BorderBakedBlur0 = registerVal3
	local registerVal4 = CoD.BorderBakedMask.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 7.500000, -6.500000)
	registerVal4:setTopBottom(true, true, 7.500000, -7.500000)
	registerVal4:setRGB(0.050000, 0.050000, 0.050000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BorderBakedMask0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 7.500000, -7.500000)
	registerVal5:setTopBottom(true, true, 8.500000, -7.500000)
	registerVal5:setRGB(0.740000, 0.750000, 0.830000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setZRot(180.000000)
	registerVal5:setImage(RegisterImage("uie_img_t7_menu_customclass_gradient01"))
	registerVal2:addElement(registerVal5)
	registerVal2.BackingGradient = registerVal5
	local registerVal6 = CoD.BorderBakedSolid.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 7.500000, -6.500000)
	registerVal6:setTopBottom(true, true, 7.500000, -7.500000)
	registerVal6:setAlpha(0.500000)
	registerVal2:addElement(registerVal6)
	registerVal2.BorderBakedSolid0 = registerVal6
	local registerVal7 = CoD.BorderBaked.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 7.500000, -6.500000)
	registerVal7:setTopBottom(true, true, 7.500000, -7.500000)
	registerVal7:setAlpha(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.BorderBaked0 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, 9.500000, -9.500000)
	registerVal8:setTopBottom(true, true, 9.500000, -9.500000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_clock_normal"))
	registerVal8:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.backgroundMask = registerVal8
	local registerVal9 = CoD.EmblemLayer.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal9.layerIcon:setAlpha(0.800000)
	local function __FUNC_1553_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:linkToElementModel(registerVal2, nil, false, __FUNC_1553_)
	registerVal2:addElement(registerVal9)
	registerVal2.emblemLayer = registerVal9
	local registerVal10 = CoD.EmblemLayerArrows.new(arg0, arg1)
	registerVal10:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal10:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.arrows = registerVal10
	local registerVal11 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal11:setLeftRight(true, true, 6.000000, -5.000000)
	registerVal11:setTopBottom(false, true, -9.500000, -5.500000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setZoom(1.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.FocusBarB = registerVal11
	local registerVal12 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal12:setLeftRight(true, true, 6.000000, -5.000000)
	registerVal12:setTopBottom(true, false, 4.000000, 8.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setZoom(1.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.FocusBarT = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, true, 7.500000, -5.000000)
	registerVal13:setTopBottom(true, false, -2.000000, 11.500000)
	registerVal13:setRGB(1.000000, 0.090000, 0.000000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.glitch = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, true, 6.000000, -6.500000)
	registerVal14:setTopBottom(false, true, -14.500000, 0.500000)
	registerVal14:setRGB(1.000000, 0.150000, 0.000000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.glitch2 = registerVal14
	local registerVal15 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal15:setLeftRight(true, true, 7.500000, -8.000000)
	registerVal15:setTopBottom(false, false, -52.000000, 52.500000)
	registerVal2:addElement(registerVal15)
	registerVal2.FETitleNumBrdr1 = registerVal15
	local registerVal16 = {}
	local registerVal17 = {}
	local function __FUNC_15A2_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedBlur0:setLeftRight(true, true, 6.000000, -6.000000)
		registerVal2.BorderBakedBlur0:setTopBottom(true, true, 6.000000, -6.000000)
		registerVal2.BorderBakedBlur0:setAlpha(0.400000)
		registerVal2.BorderBakedBlur0:setScale(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BorderBakedMask0:setLeftRight(true, true, 6.000000, -6.000000)
		registerVal2.BorderBakedMask0:setTopBottom(true, true, 6.000000, -6.000000)
		registerVal2.BorderBakedMask0:setAlpha(0.000000)
		registerVal2.BorderBakedMask0:setZoom(0.000000)
		registerVal2.BorderBakedMask0:setScale(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BackingGradient:setLeftRight(true, true, 6.000000, -6.000000)
		registerVal2.BackingGradient:setTopBottom(true, true, 6.000000, -6.000000)
		registerVal2.BackingGradient:setAlpha(0.000000)
		registerVal2.BackingGradient:setScale(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BorderBakedSolid0:setLeftRight(true, true, 6.000000, -6.000000)
		registerVal2.BorderBakedSolid0:setTopBottom(true, true, 6.000000, -6.000000)
		registerVal2.BorderBakedSolid0:setAlpha(0.500000)
		registerVal2.BorderBakedSolid0:setZoom(0.000000)
		registerVal2.BorderBakedSolid0:setScale(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BorderBaked0:setLeftRight(true, true, 6.000000, -6.000000)
		registerVal2.BorderBaked0:setTopBottom(true, true, 6.000000, -6.000000)
		registerVal2.BorderBaked0:setAlpha(0.000000)
		registerVal2.BorderBaked0:setZoom(0.000000)
		registerVal2.BorderBaked0:setScale(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.backgroundMask:setScale(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal9.layerIcon:completeAnimation()
		registerVal2.emblemLayer:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.emblemLayer:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.emblemLayer:setAlpha(1.000000)
		registerVal2.emblemLayer:setZoom(0.000000)
		registerVal2.emblemLayer:setScale(0.800000)
		registerVal2.emblemLayer.layerIcon:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.FocusBarB:setScale(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.FocusBarT:setScale(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.glitch:setScale(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.glitch2:setScale(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FETitleNumBrdr1:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.FETitleNumBrdr1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_15A2_
	local function __FUNC_1EE1_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedBlur0:setLeftRight(true, true, 6.000000, -6.000000)
		registerVal2.BorderBakedBlur0:setTopBottom(true, true, 6.000000, -6.000000)
		registerVal2.BorderBakedBlur0:setAlpha(0.400000)
		registerVal2.BorderBakedBlur0:setScale(1.200000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BorderBakedMask0:setLeftRight(true, true, 6.000000, -6.000000)
		registerVal2.BorderBakedMask0:setTopBottom(true, true, 6.000000, -6.000000)
		registerVal2.BorderBakedMask0:setRGB(0.050000, 0.050000, 0.050000)
		registerVal2.BorderBakedMask0:setAlpha(1.000000)
		registerVal2.BorderBakedMask0:setZoom(0.000000)
		registerVal2.BorderBakedMask0:setScale(1.200000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BackingGradient:setLeftRight(true, true, 6.000000, -6.000000)
		registerVal2.BackingGradient:setTopBottom(true, true, 6.000000, -6.000000)
		registerVal2.BackingGradient:setRGB(0.740000, 0.750000, 0.830000)
		registerVal2.BackingGradient:setAlpha(0.000000)
		registerVal2.BackingGradient:setXRot(0.000000)
		registerVal2.BackingGradient:setYRot(0.000000)
		registerVal2.BackingGradient:setZRot(180.000000)
		registerVal2.BackingGradient:setZoom(0.000000)
		registerVal2.BackingGradient:setScale(1.200000)
		registerVal2.BackingGradient:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BorderBakedSolid0:setLeftRight(true, true, 3.000000, -5.000000)
		registerVal2.BorderBakedSolid0:setTopBottom(true, true, 5.000000, -4.000000)
		registerVal2.BorderBakedSolid0:setAlpha(0.700000)
		registerVal2.BorderBakedSolid0:setZoom(0.000000)
		registerVal2.BorderBakedSolid0:setScale(1.200000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BorderBaked0:setLeftRight(true, true, 6.000000, -6.000000)
		registerVal2.BorderBaked0:setTopBottom(true, true, 6.000000, -6.000000)
		registerVal2.BorderBaked0:setAlpha(0.700000)
		registerVal2.BorderBaked0:setZoom(0.000000)
		registerVal2.BorderBaked0:setScale(1.200000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.backgroundMask:setAlpha(1.000000)
		registerVal2.backgroundMask:setScale(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal9.layerIcon:completeAnimation()
		registerVal2.emblemLayer:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.emblemLayer:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.emblemLayer:setAlpha(1.000000)
		registerVal2.emblemLayer:setZoom(0.000000)
		registerVal2.emblemLayer:setScale(1.000000)
		registerVal2.emblemLayer.layerIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.arrows:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, 3.000000, -5.000000)
		registerVal2.FocusBarB:setTopBottom(false, true, 2.000000, 6.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.FocusBarB:setScale(1.200000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, 3.000000, -5.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -7.000000, 1.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.FocusBarT:setScale(1.200000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.glitch:setLeftRight(true, true, 1.000000, -3.000000)
		registerVal2.glitch:setTopBottom(true, false, -10.000000, 4.000000)
		registerVal2.glitch:setAlpha(1.000000)
		registerVal2.glitch:setScale(1.200000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.glitch2:setLeftRight(true, true, 1.000000, -5.000000)
		registerVal2.glitch2:setTopBottom(false, true, -3.000000, 11.000000)
		registerVal2.glitch2:setAlpha(1.000000)
		registerVal2.glitch2:setScale(1.200000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FETitleNumBrdr1:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.FETitleNumBrdr1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal17.Focus = __FUNC_1EE1_
	local function __FUNC_2BA4_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedBlur0:setLeftRight(true, true, 6.000000, -6.000000)
		registerVal2.BorderBakedBlur0:setTopBottom(true, true, 6.000000, -6.000000)
		registerVal2.BorderBakedBlur0:setAlpha(0.400000)
		registerVal2.BorderBakedBlur0:setScale(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BorderBakedMask0:setLeftRight(true, true, 6.000000, -6.000000)
		registerVal2.BorderBakedMask0:setTopBottom(true, true, 6.000000, -6.000000)
		registerVal2.BorderBakedMask0:setAlpha(0.000000)
		registerVal2.BorderBakedMask0:setZoom(0.000000)
		registerVal2.BorderBakedMask0:setScale(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BackingGradient:setLeftRight(true, true, 6.000000, -6.000000)
		registerVal2.BackingGradient:setTopBottom(true, true, 6.000000, -6.000000)
		registerVal2.BackingGradient:setAlpha(0.000000)
		registerVal2.BackingGradient:setScale(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BorderBakedSolid0:setLeftRight(true, true, 6.000000, -6.000000)
		registerVal2.BorderBakedSolid0:setTopBottom(true, true, 6.000000, -6.000000)
		registerVal2.BorderBakedSolid0:setAlpha(0.500000)
		registerVal2.BorderBakedSolid0:setZoom(0.000000)
		registerVal2.BorderBakedSolid0:setScale(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BorderBaked0:setLeftRight(true, true, 6.000000, -6.000000)
		registerVal2.BorderBaked0:setTopBottom(true, true, 6.000000, -6.000000)
		registerVal2.BorderBaked0:setAlpha(0.000000)
		registerVal2.BorderBaked0:setZoom(0.000000)
		registerVal2.BorderBaked0:setScale(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.backgroundMask:setScale(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal9.layerIcon:completeAnimation()
		registerVal2.emblemLayer:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.emblemLayer:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.emblemLayer:setAlpha(1.000000)
		registerVal2.emblemLayer:setZoom(0.000000)
		registerVal2.emblemLayer:setScale(0.800000)
		registerVal2.emblemLayer.layerIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.FocusBarB:setScale(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.FocusBarT:setScale(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.glitch:setScale(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.glitch2:setScale(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FETitleNumBrdr1:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.FETitleNumBrdr1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal17.Over = __FUNC_2BA4_
	registerVal16.DefaultState = registerVal17
	registerVal17 = {}
	local function __FUNC_34E5_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedBlur0:setLeftRight(true, true, 6.000000, -6.000000)
		registerVal2.BorderBakedBlur0:setTopBottom(true, true, 6.000000, -6.000000)
		registerVal2.BorderBakedBlur0:setAlpha(1.000000)
		registerVal2.BorderBakedBlur0:setScale(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BorderBakedMask0:setLeftRight(true, true, 6.000000, -6.000000)
		registerVal2.BorderBakedMask0:setTopBottom(true, true, 6.000000, -6.000000)
		registerVal2.BorderBakedMask0:setAlpha(1.000000)
		registerVal2.BorderBakedMask0:setZoom(0.000000)
		registerVal2.BorderBakedMask0:setScale(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BackingGradient:setLeftRight(true, true, 6.000000, -6.000000)
		registerVal2.BackingGradient:setTopBottom(true, true, 6.000000, -6.000000)
		registerVal2.BackingGradient:setAlpha(0.000000)
		registerVal2.BackingGradient:setZoom(0.000000)
		registerVal2.BackingGradient:setScale(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BorderBakedSolid0:setLeftRight(true, true, 6.000000, -6.000000)
		registerVal2.BorderBakedSolid0:setTopBottom(true, true, 6.000000, -6.000000)
		registerVal2.BorderBakedSolid0:setAlpha(0.200000)
		registerVal2.BorderBakedSolid0:setZoom(0.000000)
		registerVal2.BorderBakedSolid0:setScale(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BorderBaked0:setLeftRight(true, true, 7.000000, -7.000000)
		registerVal2.BorderBaked0:setTopBottom(true, true, 7.000000, -7.000000)
		registerVal2.BorderBaked0:setAlpha(0.200000)
		registerVal2.BorderBaked0:setZoom(0.000000)
		registerVal2.BorderBaked0:setScale(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.backgroundMask:setAlpha(1.000000)
		registerVal2.backgroundMask:setScale(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal9.layerIcon:completeAnimation()
		registerVal2.emblemLayer:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.emblemLayer:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.emblemLayer:setAlpha(0.250000)
		registerVal2.emblemLayer:setZoom(0.000000)
		registerVal2.emblemLayer:setScale(0.800000)
		registerVal2.emblemLayer.layerIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.arrows:setScale(1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal17.DefaultClip = __FUNC_34E5_
	local function __FUNC_3C63_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedBlur0:setLeftRight(true, true, 6.000000, -6.000000)
		registerVal2.BorderBakedBlur0:setTopBottom(true, true, 6.000000, -6.000000)
		registerVal2.BorderBakedBlur0:setAlpha(0.400000)
		registerVal2.BorderBakedBlur0:setScale(1.200000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BorderBakedMask0:setLeftRight(true, true, 6.000000, -6.000000)
		registerVal2.BorderBakedMask0:setTopBottom(true, true, 6.000000, -6.000000)
		registerVal2.BorderBakedMask0:setAlpha(0.700000)
		registerVal2.BorderBakedMask0:setZoom(0.000000)
		registerVal2.BorderBakedMask0:setScale(1.200000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BackingGradient:setLeftRight(true, true, 6.000000, -6.000000)
		registerVal2.BackingGradient:setTopBottom(true, true, 6.000000, -6.000000)
		registerVal2.BackingGradient:setAlpha(0.000000)
		registerVal2.BackingGradient:setZRot(0.000000)
		registerVal2.BackingGradient:setZoom(0.000000)
		registerVal2.BackingGradient:setScale(1.200000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BorderBakedSolid0:setLeftRight(true, true, 3.000000, -5.000000)
		registerVal2.BorderBakedSolid0:setTopBottom(true, true, 5.000000, -4.000000)
		registerVal2.BorderBakedSolid0:setAlpha(0.700000)
		registerVal2.BorderBakedSolid0:setZoom(0.000000)
		registerVal2.BorderBakedSolid0:setScale(1.200000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BorderBaked0:setLeftRight(true, true, 6.000000, -6.000000)
		registerVal2.BorderBaked0:setTopBottom(true, true, 6.000000, -6.000000)
		registerVal2.BorderBaked0:setAlpha(1.000000)
		registerVal2.BorderBaked0:setZoom(0.000000)
		registerVal2.BorderBaked0:setScale(1.200000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.emblemLayer:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.emblemLayer:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.emblemLayer:setAlpha(1.000000)
		registerVal2.emblemLayer:setZoom(0.000000)
		registerVal2.emblemLayer:setScale(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.arrows:setZoom(50.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal17.Active = __FUNC_3C63_
	registerVal16.EditMode_Selected = registerVal17
	registerVal2.clipsPerState = registerVal16
	local function __FUNC_4350_(arg0)
		arg0.BorderBakedBlur0:close()
		arg0.BorderBakedMask0:close()
		arg0.BorderBakedSolid0:close()
		arg0.BorderBaked0:close()
		arg0.emblemLayer:close()
		arg0.arrows:close()
		arg0.FocusBarB:close()
		arg0.FocusBarT:close()
		arg0.FETitleNumBrdr1:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_4350_)
	if __FUNC_4FC_ then
		__FUNC_4FC_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.EmblemLayerContainer.new = __FUNC_56B_