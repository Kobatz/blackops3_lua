-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Options_PrivacySettings_CheckBoxButton")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.StartMenu.StartMenu_Options_PrivacySettingsPageCounter")
local function __FUNC_2EF_(arg0, arg1)
	DataSources.PrivacySettingManagementForm.getModel(arg1)
end

local function __FUNC_389_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("StartMenu_Options_PrivacySettings")
	if __FUNC_2EF_ then
		__FUNC_2EF_(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "StartMenu_Options_PrivacySettings.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -2.000000, -2.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.060000, 0.060000, 0.060000)
	registerVal1:addElement(registerVal3)
	registerVal1.Background = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_fe_cp_background"))
	registerVal1:addElement(registerVal4)
	registerVal1.BlackBG = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -651.000000, 653.000000)
	registerVal5:setTopBottom(true, false, 80.000000, 88.000000)
	registerVal5:setRGB(0.900000, 0.900000, 0.900000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal5)
	registerVal1.CategoryListLine = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 115.000000, 638.000000)
	registerVal6:setTopBottom(true, false, 140.000000, 176.000000)
	registerVal6:setText(Engine.Localize("MENU_PRIVACY_SETTINGS"))
	registerVal6:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal6)
	registerVal1.PrivacySettingsTitle = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(false, false, -525.000000, -21.000000)
	registerVal7:setTopBottom(true, false, 176.000000, 198.000000)
	registerVal7:setText(Engine.Localize("MENU_PRIVACY_SETTINGS_DESC"))
	registerVal7:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal7)
	registerVal1.PrivacySettingsDesc = registerVal7
	local registerVal8 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal8:makeFocusable()
	registerVal8:setLeftRight(false, false, -525.000000, -21.000000)
	registerVal8:setTopBottom(true, false, 249.500000, 490.500000)
	registerVal8:setWidgetType(CoD.StartMenu_Options_PrivacySettings_CheckBoxButton)
	registerVal8:setVerticalCount(9.000000)
	registerVal8:setDataSource("PrivacySettingOptionList")
	local function __FUNC_1A32_(arg1, arg2)
		OnPrivacySettingItemFocusChange(arg0, arg1, registerVal1)
		return nil
	end

	registerVal8:registerEventHandler("list_item_gain_focus", __FUNC_1A32_)
	local function __FUNC_1AA1_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal8:registerEventHandler("gain_focus", __FUNC_1AA1_)
	local function __FUNC_1C33_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("lose_focus", __FUNC_1C33_)
	local function __FUNC_1D02_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_1D63_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal8, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1D02_, __FUNC_1D63_, false)
	registerVal1:addElement(registerVal8)
	registerVal1.ButtonList = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(false, false, 24.000000, 566.000000)
	registerVal9:setTopBottom(true, false, 144.000000, 166.000000)
	registerVal9:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1E5E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg0, "PrivacySettingManagementForm", "descText", __FUNC_1E5E_)
	registerVal1:addElement(registerVal9)
	registerVal1.DescriptionText = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, -11.000000, 13.000000)
	registerVal10:setTopBottom(true, false, 80.000000, 88.000000)
	registerVal10:setRGB(0.900000, 0.900000, 0.900000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal10)
	registerVal1.CategoryListLine0 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 381.000000, 917.000000)
	registerVal11:setTopBottom(true, false, 382.000000, 390.000000)
	registerVal11:setRGB(0.900000, 0.900000, 0.900000)
	registerVal11:setZRot(90.000000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal11)
	registerVal1.CategoryListLineVertical = registerVal11
	local registerVal12 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal12:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal12.titleLabel:setText(LocalizeToUpperString("MENU_PRIVACY_SETTINGS"))
	registerVal12.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(LocalizeToUpperString("MENU_PRIVACY_SETTINGS"))
	registerVal12.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_option"))
	registerVal1:addElement(registerVal12)
	registerVal1.MenuFrame = registerVal12
	local registerVal13 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal13:setTopBottom(true, false, 86.000000, 703.250000)
	registerVal1:addElement(registerVal13)
	registerVal1.FEMenuLeftGraphics0 = registerVal13
	local registerVal14 = CoD.StartMenu_Options_PrivacySettingsPageCounter.new(registerVal1, arg0)
	registerVal14:setLeftRight(false, true, -385.000000, -305.000000)
	registerVal14:setTopBottom(false, true, -169.500000, -151.500000)
	registerVal1:addElement(registerVal14)
	registerVal1.PageCounter = registerVal14
	local function __FUNC_1F16_(arg1, arg2)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_RB)
	end

	registerVal1:registerEventHandler("<datasourceChange>PrivacySettingManagementForm.currentPage", __FUNC_1F16_)
	local function __FUNC_1FF8_(arg1, arg2)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_RB)
	end

	registerVal1:registerEventHandler("<datasourceChange>PrivacySettingManagementForm.lastPage", __FUNC_1FF8_)
	local registerVal18 = Engine.GetModelForController(arg0)
	local registerVal17 = Engine.GetModel(registerVal18, "PrivacySettingManagementForm.currentPage")
	local function __FUNC_20DC_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "PrivacySettingManagementForm.currentPage"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_LB)
	end

	registerVal1:subscribeToModel(registerVal17, __FUNC_20DC_)
	registerVal18 = Engine.GetModelForController(arg0)
	registerVal17 = Engine.GetModel(registerVal18, "PrivacySettingManagementForm.lastPage")
	local function __FUNC_22B0_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "PrivacySettingManagementForm.lastPage"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_LB)
	end

	registerVal1:subscribeToModel(registerVal17, __FUNC_22B0_)
	local function __FUNC_2481_(arg0, arg1)
		ShowHeaderIconOnly(registerVal1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_2481_)
	local function __FUNC_2515_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_2568_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_2515_, __FUNC_2568_, false)
	local function __FUNC_2665_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsOnLastPrivacySettingsDescPage(arg2)
		if not registerVal4 then
			ChangePrivacySettingDescPage(arg2, arg1, "1")
			return true
		end
	end

	local function __FUNC_271A_(arg0, arg1, arg2)
		local registerVal3 = IsOnLastPrivacySettingsDescPage(arg2)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RB, "PLATFORM_CHANGE_PAGES")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RB, nil, __FUNC_2665_, __FUNC_271A_, false)
	local function __FUNC_285C_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsModelValueGreaterThan(arg2, "PrivacySettingManagementForm.currentPage", 1.000000)
		if registerVal4 then
			ChangePrivacySettingDescPage(arg2, arg1, "-1")
			return true
		else
			registerVal4 = IsModelValueGreaterThan(arg2, "PrivacySettingManagementForm.lastPage", 1.000000)
			if registerVal4 then
				return true
			end
		end
	end

	local function __FUNC_29A1_(arg0, arg1, arg2)
		local registerVal3 = IsModelValueGreaterThan(arg2, "PrivacySettingManagementForm.currentPage", 1.000000)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LB, "PLATFORM_CHANGE_PAGES")
			return true
		else
			registerVal3 = IsModelValueGreaterThan(arg2, "PrivacySettingManagementForm.lastPage", 1.000000)
			if registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LB, "PLATFORM_CHANGE_PAGES")
				return true
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_LB, nil, __FUNC_285C_, __FUNC_29A1_, false)
	registerVal8.id = "ButtonList"
	registerVal12:setModel(registerVal1.buttonModel, arg0)
	registerVal17 = {}
	registerVal17.name = "menu_loaded"
	registerVal17.controller = arg0
	registerVal1:processEvent(registerVal17)
	registerVal17 = {}
	registerVal17.name = "update_state"
	registerVal17.menu = registerVal1
	registerVal1:processEvent(registerVal17)
	local registerVal15 = registerVal1:restoreState()
	if not registerVal15 then
		registerVal17 = {}
		registerVal17.name = "gain_focus"
		registerVal17.controller = arg0
		registerVal1.ButtonList:processEvent(registerVal17)
	end
	local function __FUNC_2BB6_(arg1)
		arg1.ButtonList:close()
		arg1.MenuFrame:close()
		arg1.FEMenuLeftGraphics0:close()
		arg1.PageCounter:close()
		arg1.DescriptionText:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "StartMenu_Options_PrivacySettings.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_2BB6_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.StartMenu_Options_PrivacySettings = __FUNC_389_
