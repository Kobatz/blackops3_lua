-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.SystemOverlays.systemOverlay_supportWidget")
require("ui.uieditor.widgets.SystemOverlays.systemOverlay_Connect_Looping")
require("ui.uieditor.widgets.SystemOverlays.systemOverlay_FadeMask")
require("ui.uieditor.widgets.SystemOverlays.systemOverlay_Layout_GenericForeground")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SystemOverlay_GroupsNotification = registerVal1
function CoD.SystemOverlay_GroupsNotification.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SystemOverlay_GroupsNotification)
	registerVal2.id = "SystemOverlay_GroupsNotification"
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
	local function __FUNC_D81_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "image", true, __FUNC_D81_)
	registerVal2:addElement(registerVal3)
	registerVal2.largeImage = registerVal3
	local registerVal4 = CoD.systemOverlay_supportWidget.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 366.000000)
	registerVal4:setTopBottom(false, true, -24.000000, 0.000000)
	local function __FUNC_E34_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_E34_)
	registerVal2:addElement(registerVal4)
	registerVal2.supportInfo = registerVal4
	local registerVal5 = CoD.systemOverlay_Connect_Looping.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 376.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 191.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.systemOverlayConnectLooping = registerVal5
	local registerVal6 = CoD.systemOverlay_FadeMask.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 169.000000, 500.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 191.000000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.systemOverlayFadeMask = registerVal6
	local registerVal7 = CoD.systemOverlay_Layout_GenericForeground.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_E86_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, nil, false, __FUNC_E86_)
	registerVal2:addElement(registerVal7)
	registerVal2.foreground = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 424.400000, 522.400000)
	registerVal8:setTopBottom(true, false, 81.000000, 179.000000)
	registerVal8:setupSpinner()
	registerVal2:addElement(registerVal8)
	registerVal2.Spinner = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_ED6_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal8:completeAnimation()
		registerVal2.Spinner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_ED6_
	local function __FUNC_FD3_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal5:completeAnimation()
		registerVal2.systemOverlayConnectLooping:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.systemOverlayFadeMask:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal10.LoadingLoop = __FUNC_FD3_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_114B_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal8:completeAnimation()
		registerVal2.Spinner:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_114B_
	registerVal9.Processing = registerVal10
	registerVal2.clipsPerState = registerVal9
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "Processing"
	local function __FUNC_1242_(arg0, arg2, arg3)
		return IsModelValueTrue(arg1, "groups.processingTask")
	end

	registerVal12.condition = __FUNC_1242_
	registerVal11 = {registerVal12}
	registerVal2:mergeStateConditions(registerVal11)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "groups.processingTask")
	local function __FUNC_12B9_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.processingTask"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_12B9_)
	registerVal7.id = "foreground"
	local function __FUNC_13E3_(arg0, arg1)
		local registerVal2 = arg0.foreground:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_13E3_)
	local function __FUNC_14E6_(arg0)
		arg0.supportInfo:close()
		arg0.systemOverlayConnectLooping:close()
		arg0.systemOverlayFadeMask:close()
		arg0.foreground:close()
		arg0.largeImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_14E6_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

