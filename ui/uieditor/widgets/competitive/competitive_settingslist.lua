-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_OptionHighlight")
require("ui.uieditor.widgets.Controls.Slider_Small")
local function __FUNC_266_(arg0, arg1, arg2)
	if CoD.isPC then
		arg0:setHandleMouseButton(false)
		arg0:setForceMouseEventDispatch(true)
	end
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.Competitive_SettingsList = registerVal2
local function __FUNC_31D_(arg0, arg1)
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
	registerVal2:setClass(CoD.Competitive_SettingsList)
	registerVal2.id = "Competitive_SettingsList"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 670.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 110.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	registerVal3 = CoD.StartMenu_OptionHighlight.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 41.000000, 539.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 37.000000)
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal3.DescTitle:setText(LocalizeToUpperString("DRAFT SETTINGS"))
	registerVal2:addElement(registerVal3)
	registerVal2.Title = registerVal3
	local registerVal4 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(true, false, 0.000000, 670.000000)
	registerVal4:setTopBottom(true, false, 37.000000, 103.000000)
	registerVal4:setWidgetType(CoD.Slider_Small)
	registerVal4:setVerticalCount(2.000000)
	local function __FUNC_B8A_(arg2, arg3)
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

	registerVal4:registerEventHandler("gain_focus", __FUNC_B8A_)
	local function __FUNC_D15_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_D15_)
	local function __FUNC_DE6_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsPerControllerTablePropertyValue(arg2, "disableGameSettingsOptions", true)
		if not registerVal4 then
			OpenGameSettingsOptionsMenu(registerVal2, arg0, arg2, arg1)
			return true
		end
	end

	local function __FUNC_EC0_(arg0, arg1, arg2)
		local registerVal3 = IsPerControllerTablePropertyValue(arg2, "disableGameSettingsOptions", true)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_OPTIONS")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_START, "O", __FUNC_DE6_, __FUNC_EC0_, false)
	registerVal2:addElement(registerVal4)
	registerVal2.ButtonList = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_102C_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Title:setLeftRight(true, false, 40.000000, 382.000000)
		registerVal2.Title:setTopBottom(true, false, 0.000000, 40.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal6.DefaultClip = __FUNC_102C_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_1181_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Title:setLeftRight(true, false, 40.000000, 382.000000)
		registerVal2.Title:setTopBottom(true, false, 0.000000, 10.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal6.DefaultClip = __FUNC_1181_
	registerVal5.NoHeader = registerVal6
	registerVal2.clipsPerState = registerVal5
	registerVal4.id = "ButtonList"
	local function __FUNC_12DA_(arg0, arg1)
		local registerVal2 = arg0.ButtonList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_12DA_)
	local function __FUNC_13DE_(arg0)
		arg0.Title:close()
		arg0.ButtonList:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_13DE_)
	if __FUNC_266_ then
		__FUNC_266_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.Competitive_SettingsList.new = __FUNC_31D_
