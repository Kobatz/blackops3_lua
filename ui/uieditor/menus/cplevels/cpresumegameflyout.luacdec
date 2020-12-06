-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.menus.StartMenu.StartMenu_Main")
require("ui.uieditor.widgets.Lobby.Common.FE_List1ButtonLarge_PH")
local function __FUNC_213_(arg0, arg1)
	local registerVal2 = IsDemoBuildCP()
	if registerVal2 then
		arg0.ResumeInSafehouseBtn:close()
		arg0.ResumeInSafehouseBtn.navigation = {}
		arg0.ResumeFromCheckpointBtn.navigation = {}
		arg0.ResumeFromCheckpointBtn.btnDisplayText:setText(Engine.Localize("MENU_START_GAME_CAPS"))
		arg0.ResumeFromCheckpointBtn.btnDisplayTextStroke:setText(Engine.Localize("MENU_START_GAME_CAPS"))
	end
end

local function __FUNC_3F8_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("CPResumeGameFlyout")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "CPResumeGameFlyout.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FE_List1ButtonLarge_PH.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 243.430000, 565.430000)
	registerVal3:setTopBottom(true, false, 179.000000, 211.000000)
	registerVal3:setYRot(25.000000)
	registerVal3.btnDisplayText:setText(Engine.Localize("MENU_RESUME_FROM_SAFEHOUSE_CAPS"))
	registerVal3.btnDisplayTextStroke:setText(Engine.Localize("MENU_RESUME_FROM_SAFEHOUSE_CAPS"))
	local function __FUNC_E03_(arg1, arg2)
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

	registerVal3:registerEventHandler("gain_focus", __FUNC_E03_)
	local function __FUNC_F93_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_F93_)
	local function __FUNC_1062_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_10B4_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal3, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1062_, __FUNC_10B4_, false)
	registerVal1:addElement(registerVal3)
	registerVal1.ResumeInSafehouseBtn = registerVal3
	local registerVal4 = CoD.FE_List1ButtonLarge_PH.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 243.000000, 565.000000)
	registerVal4:setTopBottom(true, false, 151.000000, 183.000000)
	registerVal4:setYRot(25.000000)
	registerVal4.btnDisplayText:setText(Engine.Localize("MENU_RESUME_FROM_CHECKPOINT_CAPS"))
	registerVal4.btnDisplayTextStroke:setText(Engine.Localize("MENU_RESUME_FROM_CHECKPOINT_CAPS"))
	local function __FUNC_11B2_(arg1, arg2)
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

	registerVal4:registerEventHandler("gain_focus", __FUNC_11B2_)
	local function __FUNC_1343_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_1343_)
	local function __FUNC_1412_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		ResumeFromCheckpoint(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_1496_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal4, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1412_, __FUNC_1496_, false)
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
	local function __FUNC_1592_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_15E4_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1592_, __FUNC_15E4_, false)
	local function __FUNC_16D8_(arg0, arg1, arg2, arg3)
		GoBackAndOpenOverlayOnParent(registerVal1, "StartMenu_Main", arg2)
		return true
	end

	local function __FUNC_175E_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_MENU")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_START, "M", __FUNC_16D8_, __FUNC_175E_, false)
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
	local function __FUNC_1852_(arg1)
		arg1.ResumeInSafehouseBtn:close()
		arg1.ResumeFromCheckpointBtn:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "CPResumeGameFlyout.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1852_)
	if __FUNC_213_ then
		__FUNC_213_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.CPResumeGameFlyout = __FUNC_3F8_
