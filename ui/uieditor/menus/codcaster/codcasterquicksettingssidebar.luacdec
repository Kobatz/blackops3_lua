-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CodCaster.CodCasterQuickSettingsListButton")
local function __FUNC_21B_(arg0, arg1)
	arg0.disableBlur = true
	arg0.disableDarkenElement = true
	arg0.animateInFromOffset = -225.000000
end

LUI.hudMenuType.CodCasterQuickSettingsSideBar = "hud"
local function __FUNC_2A7_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("CodCasterQuickSettingsSideBar")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "CodCasterQuickSettingsSideBar.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -11.000000, 289.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.920000)
	registerVal1:addElement(registerVal3)
	registerVal1.black = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -11.000000, 289.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal4:setAlpha(0.750000)
	registerVal4:setImage(RegisterImage("uie_t7_codcaster_texturebacking"))
	registerVal1:addElement(registerVal4)
	registerVal1.texture = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -11.000000, 289.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 72.050000)
	registerVal5:setImage(RegisterImage("uie_t7_codcaster_quicksetting"))
	registerVal1:addElement(registerVal5)
	registerVal1.titlebacking = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 65.000000, 277.000000)
	registerVal6:setTopBottom(true, false, 46.020000, 66.020000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setText(LocalizeToUpperString("CODCASTER_QUICK_SETTINGS"))
	registerVal6:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	registerVal1:addElement(registerVal6)
	registerVal1.Title = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 70.000000, 279.000000)
	registerVal7:setTopBottom(true, false, 389.000000, 407.000000)
	registerVal7:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal7)
	registerVal1.Desc = registerVal7
	local registerVal8 = LUI.UIList.new(registerVal1, arg0, 4.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal8:makeFocusable()
	registerVal8:setLeftRight(true, false, 42.000000, 282.000000)
	registerVal8:setTopBottom(true, false, 83.020000, 367.020000)
	registerVal8:setWidgetType(CoD.CodCasterQuickSettingsListButton)
	registerVal8:setVerticalCount(8.000000)
	registerVal8:setSpacing(4.000000)
	registerVal8:setDataSource("CodCasterQuickSettingsButtonList")
	local function __FUNC_10D9_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_NONE)
		return registerVal3
	end

	registerVal8:registerEventHandler("gain_focus", __FUNC_10D9_)
	local function __FUNC_12C9_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("lose_focus", __FUNC_12C9_)
	local function __FUNC_139A_(arg0, arg1, arg2, arg3)
		ToggleCodCasterQuickSettings(registerVal1, arg0, arg2, "")
		ToggleControllerModelValueNumber(arg2, "CodCaster.profileSettingsUpdated")
		return true
	end

	local function __FUNC_1478_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal8, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_139A_, __FUNC_1478_, false)
	local function __FUNC_156B_(arg0, arg1, arg2, arg3)
		ToggleCodCasterQuickSettings(registerVal1, arg0, arg2, "")
		ToggleControllerModelValueNumber(arg2, "CodCaster.profileSettingsUpdated")
		return true
	end

	local function __FUNC_1648_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_NONE, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal8, arg0, Enum.LUIButton.LUI_KEY_NONE, "ENTER", __FUNC_156B_, __FUNC_1648_, false, true)
	registerVal1:addElement(registerVal8)
	registerVal1.ButtonList = registerVal8
	local function __FUNC_1734_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal8, "hintText", true, __FUNC_1734_)
	local function __FUNC_17EE_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsRepeatButtonPress(arg3)
		if not registerVal4 then
			ToggleControllerModelValueNumber(arg2, "CodCaster.showQuickSettingsSideBar")
			SaveShoutcasterSettings(registerVal1, arg0, arg2)
			GoBack(registerVal1, arg2)
			SetLuiKeyCatcher(false)
			return true
		end
	end

	local function __FUNC_1932_(arg0, arg1, arg2)
		local registerVal4 = IsRepeatButtonPress(nil)
		if not registerVal4 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LTRIG, "MENU_BACK")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_LTRIG, "Q", __FUNC_17EE_, __FUNC_1932_, false)
	local function __FUNC_1A63_(arg0, arg1, arg2, arg3)
		ToggleControllerModelValueNumber(arg2, "CodCaster.showQuickSettingsSidebar")
		SaveShoutcasterSettings(registerVal1, arg0, arg2)
		GoBack(registerVal1, arg2)
		SetLuiKeyCatcher(false)
		return true
	end

	local function __FUNC_1B75_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_NONE, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_NONE, "Q", __FUNC_1A63_, __FUNC_1B75_, false, true)
	registerVal8.id = "ButtonList"
	local registerVal11 = {}
	registerVal11.name = "menu_loaded"
	registerVal11.controller = arg0
	registerVal1:processEvent(registerVal11)
	registerVal11 = {}
	registerVal11.name = "update_state"
	registerVal11.menu = registerVal1
	registerVal1:processEvent(registerVal11)
	local registerVal9 = registerVal1:restoreState()
	if not registerVal9 then
		registerVal11 = {}
		registerVal11.name = "gain_focus"
		registerVal11.controller = arg0
		registerVal1.ButtonList:processEvent(registerVal11)
	end
	local function __FUNC_1C60_(arg1)
		arg1.ButtonList:close()
		arg1.Desc:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "CodCasterQuickSettingsSideBar.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1C60_)
	if __FUNC_21B_ then
		__FUNC_21B_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.CodCasterQuickSettingsSideBar = __FUNC_2A7_
