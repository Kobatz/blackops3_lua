-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.menus.StartMenu.StartMenu_Main")
require("ui.uieditor.widgets.Lobby.Common.FE_List1ButtonLarge_PH")
function LUI.createMenu.GameSettingsFlyoutZM(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("GameSettingsFlyoutZM")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "GameSettingsFlyoutZM.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FE_List1ButtonLarge_PH.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 243.430000, 523.430000)
	registerVal3:setTopBottom(true, false, 195.560000, 227.560000)
	registerVal3:setAlpha(0.300000)
	registerVal3:setYRot(25.000000)
	registerVal3.btnDisplayText:setText(Engine.Localize("MPUI_EDIT_GAME_RULES_CAPS"))
	registerVal3.btnDisplayTextStroke:setText(Engine.Localize("MPUI_EDIT_GAME_RULES_CAPS"))
	registerVal1:addElement(registerVal3)
	registerVal1.EditGameRules = registerVal3
	local registerVal4 = CoD.FE_List1ButtonLarge_PH.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 243.430000, 523.430000)
	registerVal4:setTopBottom(true, false, 165.560000, 197.560000)
	registerVal4:setYRot(25.000000)
	registerVal4.btnDisplayText:setText(Engine.Localize("MPUI_CHANGE_MAP_CAPS"))
	registerVal4.btnDisplayTextStroke:setText(Engine.Localize("MPUI_CHANGE_MAP_CAPS"))
	local function __FUNC_B96_(arg1, arg2)
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

	registerVal4:registerEventHandler("gain_focus", __FUNC_B96_)
	local function __FUNC_D27_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_D27_)
	local function __FUNC_DF6_(arg0, arg1, arg2, arg3)
		OpenZMMapSelectSelect(registerVal1, arg0, arg2, "", arg1)
		return true
	end

	local function __FUNC_E6D_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal4, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_DF6_, __FUNC_E6D_, false)
	registerVal1:addElement(registerVal4)
	registerVal1.ChangeMap = registerVal4
	local registerVal5 = {}
	registerVal5.up = registerVal4
	registerVal3.navigation = registerVal5
	registerVal5 = {}
	registerVal5.down = registerVal3
	registerVal4.navigation = registerVal5
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_F6A_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		ClearMenuSavedState(arg1)
		return true
	end

	local function __FUNC_FE5_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_F6A_, __FUNC_FE5_, false)
	local function __FUNC_10D8_(arg0, arg1, arg2, arg3)
		GoBackAndOpenOverlayOnParent(registerVal1, "StartMenu_Main", arg2)
		return true
	end

	local function __FUNC_115E_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_MENU")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_START, "M", __FUNC_10D8_, __FUNC_115E_, false)
	registerVal3.id = "EditGameRules"
	registerVal4.id = "ChangeMap"
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
		registerVal1.ChangeMap:processEvent(registerVal7)
	end
	local function __FUNC_1252_(arg1)
		arg1.EditGameRules:close()
		arg1.ChangeMap:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "GameSettingsFlyoutZM.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1252_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

