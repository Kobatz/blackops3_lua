-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Options_PrivacySettings_UpdatePopupInternal")
require("ui.uieditor.widgets.Footer.fe_LeftContainer_NOTLobby")
function LUI.createMenu.StartMenu_Options_PrivacySettings_UpdatePopup(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("StartMenu_Options_PrivacySettings_UpdatePopup")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "StartMenu_Options_PrivacySettings_UpdatePopup.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.StartMenu_Options_PrivacySettings_UpdatePopupInternal.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3.WorkingTitle:setText(Engine.Localize("MENU_PRIVACY_SETTINGS_STATE_IN_PROGRESS"))
	registerVal3.Title:setText(Engine.Localize(""))
	registerVal3.Subtitle:setText(Engine.Localize(""))
	registerVal3.DoneTitle:setText(Engine.Localize("MENU_PRIVACY_SETTINGS_STATE_COMPLETE"))
	registerVal3.ErrorSubtitle:setText(Engine.Localize("MENU_PRIVACY_SETTINGS_STATE_FAILURE"))
	registerVal1:addElement(registerVal3)
	registerVal1.PrivacySettingsUpdatePopupInternal = registerVal3
	local registerVal4 = CoD.fe_LeftContainer_NOTLobby.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 64.000000, 496.000000)
	registerVal4:setTopBottom(true, false, 531.000000, 563.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.leftButtonBar = registerVal4
	local registerVal8 = Engine.GetModelForController(arg0)
	local registerVal7 = Engine.GetModel(registerVal8, "PrivacySettingManagementForm.updateProgressState")
	local function __FUNC_B7E_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "PrivacySettingManagementForm.updateProgressState"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal1:subscribeToModel(registerVal7, __FUNC_B7E_)
	local function __FUNC_D61_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsModelValueEqualTo(arg2, "PrivacySettingManagementForm.updateProgressState", CoD.OptionsUtility.REGULATION_SET_PREFERENCE_TASK_STATE_IDLE)
		registerVal4 = IsModelValueEqualTo(arg2, "PrivacySettingManagementForm.updateProgressState", CoD.OptionsUtility.REGULATION_SET_PREFERENCE_TASK_STATE_IN_PROGRESS)
		if not registerVal4 and not registerVal4 then
			GoBackMultiple(registerVal1, arg2, "2")
			return true
		end
	end

	local function __FUNC_F1C_(arg0, arg1, arg2)
		local registerVal3 = IsModelValueEqualTo(arg2, "PrivacySettingManagementForm.updateProgressState", CoD.OptionsUtility.REGULATION_SET_PREFERENCE_TASK_STATE_IDLE)
		registerVal3 = IsModelValueEqualTo(arg2, "PrivacySettingManagementForm.updateProgressState", CoD.OptionsUtility.REGULATION_SET_PREFERENCE_TASK_STATE_IN_PROGRESS)
		if not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_CONTINUE")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_D61_, __FUNC_F1C_, false)
	registerVal4:setModel(registerVal1.buttonModel, arg0)
	registerVal7 = {}
	registerVal7.name = "menu_loaded"
	registerVal7.controller = arg0
	registerVal1:processEvent(registerVal7)
	registerVal7 = {}
	registerVal7.name = "update_state"
	registerVal7.menu = registerVal1
	registerVal1:processEvent(registerVal7)
	local function __FUNC_1168_(arg1)
		arg1.PrivacySettingsUpdatePopupInternal:close()
		arg1.leftButtonBar:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "StartMenu_Options_PrivacySettings_UpdatePopup.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1168_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

