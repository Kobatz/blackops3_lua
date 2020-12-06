-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CodCaster.codcaster_options_slider_small")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CodCasterSettingsSideBarLoadoutSettings = registerVal1
function CoD.CodCasterSettingsSideBarLoadoutSettings.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CodCasterSettingsSideBarLoadoutSettings)
	registerVal2.id = "CodCasterSettingsSideBarLoadoutSettings"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 450.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 640.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 23.000000, 435.000000)
	registerVal3:setTopBottom(true, false, 267.000000, 289.000000)
	registerVal3:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.Hint = registerVal3
	local registerVal4 = LUI.UIList.new(arg0, arg1, 1.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(true, false, 0.000000, 450.000000)
	registerVal4:setTopBottom(true, false, 1.000000, 245.000000)
	registerVal4:setDataSource("CodCasterLoadoutSettingsButtonList")
	registerVal4:setWidgetType(CoD.codcaster_options_slider_small)
	registerVal4:setVerticalCount(7.000000)
	registerVal4:setSpacing(1.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.ButtonList = registerVal4
	local function __FUNC_950_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal4, "hintText", true, __FUNC_950_)
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_A0A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_A0A_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	registerVal4.id = "ButtonList"
	local function __FUNC_A6A_(arg0, arg1)
		local registerVal2 = arg0.ButtonList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_A6A_)
	local function __FUNC_B6E_(arg0)
		arg0.ButtonList:close()
		arg0.Hint:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_B6E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

