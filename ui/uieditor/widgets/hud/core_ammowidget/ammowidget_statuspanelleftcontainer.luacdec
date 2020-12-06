-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.AmmoWidget_StatusPanelLeftWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_StatusPanelLeftContainer = registerVal1
function CoD.AmmoWidget_StatusPanelLeftContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_StatusPanelLeftContainer)
	registerVal2.id = "AmmoWidget_StatusPanelLeftContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 48.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 48.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.AmmoWidget_StatusPanelLeftWidget.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 48.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 48.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.AmmoWidgetStatusPanelLeftWidget = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_5DC_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_5DC_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_63E_(arg0)
		arg0.AmmoWidgetStatusPanelLeftWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_63E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

