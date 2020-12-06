-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.SystemOverlays.systemOverlay_supportWidget")
require("ui.uieditor.widgets.SystemOverlays.SystemOverlaySpinner")
require("ui.uieditor.widgets.SystemOverlays.systemOverlay_Connect_Looping")
require("ui.uieditor.widgets.SystemOverlays.systemOverlay_FadeMask")
require("ui.uieditor.widgets.SystemOverlays.systemOverlay_Layout_GenericForeground")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.systemOverlay_Compact_BasicFrame = registerVal1
function CoD.systemOverlay_Compact_BasicFrame.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.systemOverlay_Compact_BasicFrame)
	registerVal2.id = "systemOverlay_Compact_BasicFrame"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 191.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 366.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	local function __FUNC_C7E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "image", true, __FUNC_C7E_)
	registerVal2:addElement(registerVal3)
	registerVal2.largeImage = registerVal3
	local registerVal4 = CoD.systemOverlay_supportWidget.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 366.000000)
	registerVal4:setTopBottom(false, true, -24.000000, 0.000000)
	local function __FUNC_D30_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_D30_)
	registerVal2:addElement(registerVal4)
	registerVal2.supportInfo = registerVal4
	local registerVal5 = CoD.SystemOverlaySpinner.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 426.400000, 725.400000)
	registerVal5:setTopBottom(true, false, 68.500000, 82.500000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.SystemOverlaySpinner = registerVal5
	local registerVal6 = CoD.systemOverlay_Connect_Looping.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 0.000000, 376.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 191.000000)
	registerVal6:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.systemOverlayConnectLooping = registerVal6
	local registerVal7 = CoD.systemOverlay_FadeMask.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 169.000000, 500.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 191.000000)
	registerVal7:setAlpha(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.systemOverlayFadeMask = registerVal7
	local registerVal8 = CoD.systemOverlay_Layout_GenericForeground.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_D82_(arg0)
		registerVal8:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal2, nil, false, __FUNC_D82_)
	registerVal2:addElement(registerVal8)
	registerVal2.foreground = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_DD2_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal5:completeAnimation()
		registerVal2.SystemOverlaySpinner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.systemOverlayConnectLooping:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.systemOverlayFadeMask:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal10.DefaultClip = __FUNC_DD2_
	local function __FUNC_FA8_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal5:completeAnimation()
		registerVal2.SystemOverlaySpinner:setLeftRight(true, false, 423.400000, 722.400000)
		registerVal2.SystemOverlaySpinner:setTopBottom(true, false, 44.500000, 55.500000)
		registerVal2.SystemOverlaySpinner:setAlpha(0.000000)
		registerVal2.SystemOverlaySpinner:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.systemOverlayConnectLooping:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.systemOverlayFadeMask:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal10.LoadingLoop = __FUNC_FA8_
	registerVal9.DefaultState = registerVal10
	registerVal2.clipsPerState = registerVal9
	registerVal8.id = "foreground"
	local function __FUNC_12B5_(arg0, arg1)
		local registerVal2 = arg0.foreground:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_12B5_)
	local function __FUNC_13BA_(arg0)
		arg0.supportInfo:close()
		arg0.SystemOverlaySpinner:close()
		arg0.systemOverlayConnectLooping:close()
		arg0.systemOverlayFadeMask:close()
		arg0.foreground:close()
		arg0.largeImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_13BA_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

