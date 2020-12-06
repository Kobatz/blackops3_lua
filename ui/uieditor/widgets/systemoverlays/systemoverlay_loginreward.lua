-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.SystemOverlays.systemOverlay_supportWidget")
require("ui.uieditor.widgets.SystemOverlays.systemOverlay_Connect_Looping")
require("ui.uieditor.widgets.SystemOverlays.systemOverlay_FadeMask")
require("ui.uieditor.widgets.SystemOverlays.systemOverlay_Layout_GenericForeground")
require("ui.uieditor.widgets.CAC.cac_PurchasingExtraSlots")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SystemOverlay_LoginReward = registerVal1
function CoD.SystemOverlay_LoginReward.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SystemOverlay_LoginReward)
	registerVal2.id = "SystemOverlay_LoginReward"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 191.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 60.000000, 366.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	local function __FUNC_D1C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "image", true, __FUNC_D1C_)
	registerVal2:addElement(registerVal3)
	registerVal2.largeImage = registerVal3
	local registerVal4 = CoD.systemOverlay_supportWidget.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 60.000000, 366.000000)
	registerVal4:setTopBottom(false, true, -24.000000, -191.000000)
	local function __FUNC_DD0_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_DD0_)
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
	local function __FUNC_E22_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, nil, false, __FUNC_E22_)
	registerVal2:addElement(registerVal7)
	registerVal2.foreground = registerVal7
	local registerVal8 = CoD.cac_PurchasingExtraSlots.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 426.400000, 732.400000)
	registerVal8:setTopBottom(true, false, 83.000000, 179.000000)
	registerVal8.PurchasingText:setText(Engine.Localize("GROUPS_PROCESSING"))
	registerVal2:addElement(registerVal8)
	registerVal2.ProcessingWidget = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_E72_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal8:completeAnimation()
		registerVal2.ProcessingWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_E72_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_F78_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal8:completeAnimation()
		registerVal2.ProcessingWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_F78_
	registerVal9.Purchasing = registerVal10
	registerVal2.clipsPerState = registerVal9
	registerVal7.id = "foreground"
	local function __FUNC_107B_(arg0, arg1)
		local registerVal2 = arg0.foreground:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_107B_)
	local function __FUNC_117E_(arg0)
		arg0.supportInfo:close()
		arg0.systemOverlayConnectLooping:close()
		arg0.systemOverlayFadeMask:close()
		arg0.foreground:close()
		arg0.ProcessingWidget:close()
		arg0.largeImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_117E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

