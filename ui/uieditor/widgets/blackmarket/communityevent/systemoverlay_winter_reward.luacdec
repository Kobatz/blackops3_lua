-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.SystemOverlays.systemOverlay_supportWidget")
require("ui.uieditor.widgets.SystemOverlays.SystemOverlaySpinner")
require("ui.uieditor.widgets.SystemOverlays.systemOverlay_FadeMask")
require("ui.uieditor.widgets.SystemOverlays.systemOverlay_Layout_GenericForeground")
local function __FUNC_32C_(arg0, arg1, arg2)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.SystemOverlay_Winter_Reward = registerVal2
local function __FUNC_358_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SystemOverlay_Winter_Reward)
	registerVal2.id = "SystemOverlay_Winter_Reward"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 191.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, true, -315.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.500000, -0.500000)
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	local function __FUNC_B5D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "image", true, __FUNC_B5D_)
	registerVal2:addElement(registerVal3)
	registerVal2.largeImage = registerVal3
	local registerVal4 = CoD.systemOverlay_supportWidget.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 366.000000)
	registerVal4:setTopBottom(false, true, -24.000000, 0.000000)
	local function __FUNC_C10_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_C10_)
	registerVal2:addElement(registerVal4)
	registerVal2.supportInfo = registerVal4
	local registerVal5 = CoD.SystemOverlaySpinner.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 426.400000, 725.400000)
	registerVal5:setTopBottom(true, false, 68.500000, 82.500000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.SystemOverlaySpinner = registerVal5
	local registerVal6 = CoD.systemOverlay_FadeMask.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 169.000000, 500.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 191.000000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.systemOverlayFadeMask = registerVal6
	local registerVal7 = CoD.systemOverlay_Layout_GenericForeground.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, -30.000000, 1280.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_C62_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, nil, false, __FUNC_C62_)
	registerVal2:addElement(registerVal7)
	registerVal2.foreground = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_CB2_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.largeImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.SystemOverlaySpinner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.systemOverlayFadeMask:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.DefaultClip = __FUNC_CB2_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_E77_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.largeImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.SystemOverlaySpinner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.systemOverlayFadeMask:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.DefaultClip = __FUNC_E77_
	registerVal8.Purchasing = registerVal9
	registerVal2.clipsPerState = registerVal8
	registerVal7.id = "foreground"
	local function __FUNC_103B_(arg0, arg1)
		local registerVal2 = arg0.foreground:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_103B_)
	local function __FUNC_113E_(arg0)
		arg0.supportInfo:close()
		arg0.SystemOverlaySpinner:close()
		arg0.systemOverlayFadeMask:close()
		arg0.foreground:close()
		arg0.largeImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_113E_)
	if __FUNC_32C_ then
		__FUNC_32C_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.SystemOverlay_Winter_Reward.new = __FUNC_358_
