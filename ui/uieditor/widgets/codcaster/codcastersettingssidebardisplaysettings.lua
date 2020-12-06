-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CodCaster.codcaster_options_slider_small")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CodCasterSettingsSideBarDisplaySettings = registerVal1
function CoD.CodCasterSettingsSideBarDisplaySettings.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CodCasterSettingsSideBarDisplaySettings)
	registerVal2.id = "CodCasterSettingsSideBarDisplaySettings"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 450.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 640.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 23.000000, 428.000000)
	registerVal3:setTopBottom(true, false, 527.000000, 549.000000)
	registerVal3:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.Hint = registerVal3
	local registerVal4 = LUI.UIList.new(arg0, arg1, 1.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(true, false, 0.000000, 450.000000)
	registerVal4:setTopBottom(true, false, 0.780000, 489.780000)
	registerVal4:setDataSource("CodCasterDisplaySettingsButtonList")
	registerVal4:setWidgetType(CoD.codcaster_options_slider_small)
	registerVal4:setVerticalCount(14.000000)
	registerVal4:setSpacing(1.000000)
	registerVal4:setVerticalCounter(CoD.verticalCounter)
	registerVal2:addElement(registerVal4)
	registerVal2.ButtonList = registerVal4
	local function __FUNC_9E6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal4, "hintText", true, __FUNC_9E6_)
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_A9E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_A9E_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	registerVal4.id = "ButtonList"
	local function __FUNC_AFE_(arg0, arg1)
		local registerVal2 = arg0.ButtonList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_AFE_)
	local function __FUNC_C02_(arg0)
		arg0.ButtonList:close()
		arg0.Hint:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_C02_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

