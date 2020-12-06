-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.List1ButtonSmall_PH")
local function __FUNC_1D0_(arg0)
	arg0.disableBlur = true
end

local function __FUNC_217_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("GameSettingsFlyout")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "GameSettingsFlyout.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.List1ButtonSmall_PH.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 348.430000, 628.430000)
	registerVal3:setTopBottom(true, false, 202.560000, 234.560000)
	registerVal3:setYRot(10.000000)
	registerVal3.btnDisplayText:setText(Engine.Localize("MPUI_CHANGE_GAME_MODE_CAPS"))
	local function __FUNC_B6C_(arg1, arg2)
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

	registerVal3:registerEventHandler("gain_focus", __FUNC_B6C_)
	local function __FUNC_CFF_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_CFF_)
	local function __FUNC_DCE_(arg0, arg1, arg2, arg3)
		OpenChangeGameMode(registerVal1, arg0, arg2, "", arg1)
		return true
	end

	local function __FUNC_E42_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal3, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_DCE_, __FUNC_E42_, false)
	registerVal1:addElement(registerVal3)
	registerVal1.ChangeGameMode = registerVal3
	local registerVal4 = CoD.List1ButtonSmall_PH.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 348.430000, 628.430000)
	registerVal4:setTopBottom(true, false, 170.560000, 202.560000)
	registerVal4:setYRot(10.000000)
	registerVal4.btnDisplayText:setText(Engine.Localize("MPUI_CHANGE_MAP_CAPS"))
	local function __FUNC_F3E_(arg1, arg2)
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

	registerVal4:registerEventHandler("gain_focus", __FUNC_F3E_)
	local function __FUNC_10CF_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_10CF_)
	local function __FUNC_119E_(arg0, arg1, arg2, arg3)
		OpenChangeMap(registerVal1, arg0, arg2, "", arg1)
		return true
	end

	local function __FUNC_120D_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal4, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_119E_, __FUNC_120D_, false)
	registerVal1:addElement(registerVal4)
	registerVal1.ChangeMap = registerVal4
	local function __FUNC_130A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.btnDisplayTextStroke:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal1.ChangeGameMode:linkToElementModel(registerVal1, "displayText", true, __FUNC_130A_)
	local function __FUNC_13EC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.btnDisplayTextStroke:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal1.ChangeMap:linkToElementModel(registerVal1, "displayText", true, __FUNC_13EC_)
	local registerVal5 = {}
	registerVal5.up = registerVal4
	registerVal3.navigation = registerVal5
	registerVal5 = {}
	registerVal5.down = registerVal3
	registerVal4.navigation = registerVal5
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_14D0_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_1524_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_14D0_, __FUNC_1524_, false)
	registerVal3.id = "ChangeGameMode"
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
	local function __FUNC_1618_(arg1)
		arg1.ChangeGameMode:close()
		arg1.ChangeMap:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "GameSettingsFlyout.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1618_)
	if __FUNC_1D0_ then
		__FUNC_1D0_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.GameSettingsFlyout = __FUNC_217_
