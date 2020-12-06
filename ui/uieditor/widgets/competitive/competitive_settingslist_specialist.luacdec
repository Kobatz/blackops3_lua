-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_OptionHighlight")
require("ui.uieditor.widgets.Controls.Slider_Small")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Competitive_SettingsList_Specialist = registerVal1
function CoD.Competitive_SettingsList_Specialist.new(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 0.000000
	local registerVal2 = LUI.UIVerticalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Top)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Competitive_SettingsList_Specialist)
	registerVal2.id = "Competitive_SettingsList_Specialist"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 670.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 110.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	registerVal3 = CoD.StartMenu_OptionHighlight.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 41.000000, 539.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 37.000000)
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.Title = registerVal3
	local registerVal4 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(true, false, 0.000000, 670.000000)
	registerVal4:setTopBottom(true, false, 37.000000, 103.000000)
	registerVal4:setWidgetType(CoD.Slider_Small)
	registerVal4:setVerticalCount(2.000000)
	local function __FUNC_A86_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_START)
		return registerVal3
	end

	registerVal4:registerEventHandler("gain_focus", __FUNC_A86_)
	local function __FUNC_C11_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_C11_)
	local function __FUNC_CE2_(arg0, arg1, arg2, arg3)
		OpenGameSettingsOptionsMenu(registerVal2, arg0, arg2, arg1)
		return true
	end

	local function __FUNC_D51_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_OPTIONS")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_START, "O", __FUNC_CE2_, __FUNC_D51_, false)
	registerVal2:addElement(registerVal4)
	registerVal2.Options = registerVal4
	local function __FUNC_E49_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.DescTitle:setText(Engine.Localize(LocalizeToUpperString(registerVal1)))
		end
	end

	registerVal2.Title:linkToElementModel(registerVal2, "name", true, __FUNC_E49_)
	local function __FUNC_F48_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setDataSource(registerVal1)
		end
	end

	registerVal2.Options:linkToElementModel(registerVal2, "optionsDatasource", true, __FUNC_F48_)
	registerVal4.id = "Options"
	local function __FUNC_FE2_(arg0, arg1)
		local registerVal2 = arg0.Options:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_FE2_)
	local function __FUNC_10E3_(arg0)
		arg0.Title:close()
		arg0.Options:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_10E3_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

