-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.SystemOverlays.systemOverlay_alertStatusBar")
require("ui.uieditor.widgets.SystemOverlays.featureOverlay_frameVLayout")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.featureOverlay_Layout = registerVal1
function CoD.featureOverlay_Layout.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.featureOverlay_Layout)
	registerVal2.id = "featureOverlay_Layout"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.800000)
	registerVal2:addElement(registerVal3)
	registerVal2.background = registerVal3
	local registerVal4 = CoD.systemOverlay_alertStatusBar.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 144.000000, 148.000000)
	local function __FUNC_811_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_811_)
	registerVal2:addElement(registerVal4)
	registerVal2.alertStatusBar = registerVal4
	local registerVal5 = CoD.featureOverlay_frameVLayout.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal5:setTopBottom(true, false, 148.000000, 648.000000)
	local function __FUNC_862_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_862_)
	registerVal2:addElement(registerVal5)
	registerVal2.vlayout = registerVal5
	registerVal5.id = "vlayout"
	local function __FUNC_8B2_(arg0, arg1)
		local registerVal2 = arg0.vlayout:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_8B2_)
	local function __FUNC_9B3_(arg0)
		arg0.alertStatusBar:close()
		arg0.vlayout:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_9B3_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

