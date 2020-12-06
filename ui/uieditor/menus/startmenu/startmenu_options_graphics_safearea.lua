-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Options_SafeArea_Container")
require("ui.uieditor.widgets.StartMenu.StartMenu_Options_SafeArea_Hints")
CoD.SafeArea = {}
CoD.SafeArea.Maximum = 1.010000
CoD.SafeArea.Minimum = 0.900000
CoD.SafeArea.AdjustAmount = 0.005000
local function __FUNC_2F9_(arg0, arg1)
	arg0.disablePopupOpenCloseAnim = true
end

local function __FUNC_34D_(arg0, arg1)
	arg0.safeArea:sizeToSafeArea(arg1)
end

local function __FUNC_3BA_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("StartMenu_Options_Graphics_SafeArea")
	if __FUNC_2F9_ then
		__FUNC_2F9_(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "StartMenu_Options_Graphics_SafeArea.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.background = registerVal3
	local registerVal4 = CoD.StartMenu_Options_SafeArea_Container.new(registerVal1, arg0)
	registerVal4:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal4:setTopBottom(false, false, -360.000000, 360.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.safeArea = registerVal4
	local registerVal5 = CoD.StartMenu_Options_SafeArea_Hints.new(registerVal1, arg0)
	registerVal5:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal5:setTopBottom(false, false, -360.000000, 360.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.StartMenuOptionsSafeAreaHints = registerVal5
	local function __FUNC_C6C_(arg0, arg1, arg2, arg3)
		DispatchEventToRoot(arg0, "update_safe_area", arg2)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_D0B_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_C6C_, __FUNC_D0B_, false)
	local function __FUNC_E05_(arg0, arg1, arg2, arg3)
		DecreaseSafeAreaHorizontal(registerVal1, arg0, arg2)
		DispatchEventToChildren(arg0, "update_safe_area", arg2)
		return true
	end

	local function __FUNC_EBF_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LEFT, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_LEFT, "LEFTARROW", __FUNC_E05_, __FUNC_EBF_, false)
	local function __FUNC_FA8_(arg0, arg1, arg2, arg3)
		IncreaseSafeAreaVertical(registerVal1, arg0, arg2)
		DispatchEventToChildren(arg0, "update_safe_area", arg2)
		return true
	end

	local function __FUNC_1061_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_UP, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_UP, "UPARROW", __FUNC_FA8_, __FUNC_1061_, false)
	local function __FUNC_114A_(arg0, arg1, arg2, arg3)
		IncreaseSafeAreaHorizontal(registerVal1, arg0, arg2)
		DispatchEventToChildren(arg0, "update_safe_area", arg2)
		return true
	end

	local function __FUNC_1203_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RIGHT, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RIGHT, "RIGHTARROW", __FUNC_114A_, __FUNC_1203_, false)
	local function __FUNC_12ED_(arg0, arg1, arg2, arg3)
		DecreaseSafeAreaVertical(registerVal1, arg0, arg2)
		DispatchEventToChildren(arg0, "update_safe_area", arg2)
		return true
	end

	local function __FUNC_13A5_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_DOWN, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_DOWN, "DOWNARROW", __FUNC_12ED_, __FUNC_13A5_, false)
	local function __FUNC_1490_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsMainFirstTimeSetup(arg2)
		registerVal4 = IsGameInstalled()
		registerVal4 = IsDurango()
		if registerVal4 and not registerVal4 and registerVal4 then
			DispatchEventToRoot(arg0, "update_safe_area", arg2)
			OpenOverlay_NoDependency(registerVal1, "FirstTimeDurangoDownloadSetting", arg2, "", "")
			SetFirstTimeDurangoDownloadSettingDisplayed(arg2)
			return true
		else
			registerVal4 = IsMainFirstTimeSetup(arg2)
			if registerVal4 then
				DispatchEventToRoot(arg0, "update_safe_area", arg2)
				SetProfileVar(arg2, "com_first_time", 0.000000)
				UpdateGamerprofile(registerVal1, arg0, arg2)
				ForceNotifyGlobalModel(arg2, "mainFirstTimeFlowComplete")
				return true
			else
				DispatchEventToRoot(arg0, "update_safe_area", arg2)
				GoBack(registerVal1, arg2)
				return true
			end
		end
	end

	local function __FUNC_177E_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1490_, __FUNC_177E_, false)
	local registerVal8 = {}
	registerVal8.name = "menu_loaded"
	registerVal8.controller = arg0
	registerVal1:processEvent(registerVal8)
	registerVal8 = {}
	registerVal8.name = "update_state"
	registerVal8.menu = registerVal1
	registerVal1:processEvent(registerVal8)
	local function __FUNC_186F_(arg1)
		arg1.safeArea:close()
		arg1.StartMenuOptionsSafeAreaHints:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "StartMenu_Options_Graphics_SafeArea.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_186F_)
	if __FUNC_34D_ then
		__FUNC_34D_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.StartMenu_Options_Graphics_SafeArea = __FUNC_3BA_
