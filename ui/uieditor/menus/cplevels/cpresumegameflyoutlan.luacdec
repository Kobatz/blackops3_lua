-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.menus.StartMenu.StartMenu_Main")
require("ui.uieditor.widgets.Lobby.Common.FE_List1ButtonLarge_PH")
function LUI.createMenu.CPResumeGameFlyoutLAN(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("CPResumeGameFlyoutLAN")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "CPResumeGameFlyoutLAN.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FE_List1ButtonLarge_PH.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 243.430000, 565.430000)
	registerVal3:setTopBottom(true, false, 162.000000, 194.000000)
	registerVal3:setYRot(25.000000)
	registerVal3.btnDisplayText:setText(Engine.Localize("MENU_RESUME_FROM_SAFEHOUSE_CAPS"))
	registerVal3.btnDisplayTextStroke:setText(Engine.Localize("MENU_RESUME_FROM_SAFEHOUSE_CAPS"))
	local function __FUNC_C33_(arg1, arg2)
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

	registerVal3:registerEventHandler("gain_focus", __FUNC_C33_)
	local function __FUNC_DC3_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_DC3_)
	local function __FUNC_E92_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_EE4_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal3, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_E92_, __FUNC_EE4_, false)
	registerVal1:addElement(registerVal3)
	registerVal1.ResumeInSafehouseBtn = registerVal3
	local registerVal4 = CoD.FE_List1ButtonLarge_PH.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 243.000000, 565.000000)
	registerVal4:setTopBottom(true, false, 132.000000, 164.000000)
	registerVal4:setYRot(25.000000)
	registerVal4.btnDisplayText:setText(Engine.Localize("MENU_RESUME_FROM_CHECKPOINT_CAPS"))
	registerVal4.btnDisplayTextStroke:setText(Engine.Localize("MENU_RESUME_FROM_CHECKPOINT_CAPS"))
	local function __FUNC_FE2_(arg1, arg2)
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

	registerVal4:registerEventHandler("gain_focus", __FUNC_FE2_)
	local function __FUNC_1173_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_1173_)
	local function __FUNC_1242_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		ResumeFromCheckpoint(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_12C6_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal4, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1242_, __FUNC_12C6_, false)
	registerVal1:addElement(registerVal4)
	registerVal1.ResumeFromCheckpointBtn = registerVal4
	local registerVal5 = {}
	registerVal5.left = registerVal4
	registerVal5.up = registerVal4
	registerVal3.navigation = registerVal5
	registerVal5 = {}
	registerVal5.right = registerVal3
	registerVal5.down = registerVal3
	registerVal4.navigation = registerVal5
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_13C2_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_1414_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_13C2_, __FUNC_1414_, false)
	local function __FUNC_1508_(arg0, arg1, arg2, arg3)
		GoBackAndOpenOverlayOnParent(registerVal1, "StartMenu_Main", arg2)
		return true
	end

	local function __FUNC_158E_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_MENU")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_START, "M", __FUNC_1508_, __FUNC_158E_, false)
	registerVal3.id = "ResumeInSafehouseBtn"
	registerVal4.id = "ResumeFromCheckpointBtn"
	local registerVal7 = {}
	registerVal7.name = "menu_loaded"
	registerVal7.controller = arg0
	registerVal1:processEvent(registerVal7)
	registerVal7 = {}
	registerVal7.name = "update_state"
	registerVal7.menu = registerVal1
	registerVal1:processEvent(registerVal7)
	registerVal5 = registerVal1:restoreState()
	if not registerVal5 then
		registerVal7 = {}
		registerVal7.name = "gain_focus"
		registerVal7.controller = arg0
		registerVal1.ResumeFromCheckpointBtn:processEvent(registerVal7)
	end
	local function __FUNC_1682_(arg1)
		arg1.ResumeInSafehouseBtn:close()
		arg1.ResumeFromCheckpointBtn:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "CPResumeGameFlyoutLAN.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1682_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

