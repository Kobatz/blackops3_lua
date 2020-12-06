-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Background")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.Groups.GroupsSubTitle")
require("ui.uieditor.widgets.Groups.GroupsInputButtonScroll")
local function __FUNC_2F8_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "steamServer")
	registerVal3 = Engine.CreateModel(registerVal2, "serverName")
	local function __FUNC_53F_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			arg0.nameInput.verticalScrollingTextBox.textBox:setText(registerVal1)
		end
	end

	local registerVal5 = arg0.nameInput:subscribeToModel(registerVal3, __FUNC_53F_)
	arg0.nameInput.subscription = registerVal5
	local registerVal4 = Engine.CreateModel(registerVal2, "gameDescription")
	local function __FUNC_63A_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			arg0.descriptionInput.verticalScrollingTextBox.textBox:setText(registerVal1)
		end
	end

	local registerVal6 = arg0.descriptionInput:subscribeToModel(registerVal4, __FUNC_63A_)
	arg0.descriptionInput.subscription = registerVal6
	registerVal5 = Engine.CreateModel(registerVal2, "serverPassword")
	local function __FUNC_73D_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			arg0.passwordInput.verticalScrollingTextBox.textBox:setText(registerVal1)
		end
	end

	local registerVal7 = arg0.passwordInput:subscribeToModel(registerVal5, __FUNC_73D_)
	arg0.passwordInput.subscription = registerVal7
end

local function __FUNC_83E_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "steamServer")
	registerVal3 = Engine.LiveSteamServer_GetServerName()
	local registerVal4 = Engine.CreateModel(registerVal2, "serverName")
	Engine.SetModelValue(registerVal4, registerVal3)
	local registerVal5 = Engine.LiveSteamServer_GetGameDescription()
	local registerVal6 = Engine.CreateModel(registerVal2, "gameDescription")
	Engine.SetModelValue(registerVal6, registerVal5)
	local registerVal7 = Engine.LiveSteamServer_GetServerPassword()
	local registerVal8 = Engine.CreateModel(registerVal2, "serverPassword")
	Engine.SetModelValue(registerVal8, registerVal7)
end

local function __FUNC_AA4_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("ServerSettings")
	if __FUNC_83E_ then
		__FUNC_83E_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "ServerSettings.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.StartMenu_Background.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.StartMenuBackground0 = registerVal3
	local registerVal4 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.310000, 0.310000, 0.310000)
	registerVal1:addElement(registerVal4)
	registerVal1.FEButtonPanelShaderContainer0 = registerVal4
	local registerVal5 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5.titleLabel:setText(Engine.Localize("PLATFORM_SERVER_SETTINGS_CAPS"))
	registerVal5.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("PLATFORM_SERVER_SETTINGS_CAPS"))
	registerVal1:addElement(registerVal5)
	registerVal1.MenuFrame = registerVal5
	local registerVal6 = CoD.GroupsSubTitle.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 93.000000, 261.000000)
	registerVal6:setTopBottom(true, false, 112.000000, 144.000000)
	registerVal6.weaponNameLabel:setText(Engine.Localize("PLATFORM_EDIT_NAME"))
	registerVal1:addElement(registerVal6)
	registerVal1.nameTitle = registerVal6
	local registerVal7 = CoD.GroupsInputButtonScroll.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 93.000000, 478.000000)
	registerVal7:setTopBottom(true, false, 150.000000, 212.500000)
	registerVal7.verticalScrollingTextBox.textBox:setText(Engine.Localize(""))
	registerVal7.verticalScrollingTextBox.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	local function __FUNC_1BD1_(arg1, arg2)
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

	registerVal7:registerEventHandler("gain_focus", __FUNC_1BD1_)
	local function __FUNC_1D63_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_1D63_)
	local function __FUNC_1E32_(arg0, arg1, arg2, arg3)
		ServerSettingsEditName(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_1E98_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal7, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1E32_, __FUNC_1E98_, false)
	registerVal1:addElement(registerVal7)
	registerVal1.nameInput = registerVal7
	local registerVal8 = CoD.GroupsSubTitle.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 93.000000, 261.000000)
	registerVal8:setTopBottom(true, false, 233.430000, 265.430000)
	registerVal8.weaponNameLabel:setText(Engine.Localize("GROUPS_EDIT_GROUP_DESCRIPTION"))
	registerVal1:addElement(registerVal8)
	registerVal1.descriptionTitle = registerVal8
	local registerVal9 = CoD.GroupsInputButtonScroll.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 93.000000, 478.000000)
	registerVal9:setTopBottom(true, false, 274.000000, 384.000000)
	registerVal9.verticalScrollingTextBox.textBox:setText(Engine.Localize(""))
	registerVal9.verticalScrollingTextBox.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	local function __FUNC_1F96_(arg1, arg2)
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

	registerVal9:registerEventHandler("gain_focus", __FUNC_1F96_)
	local function __FUNC_2127_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("lose_focus", __FUNC_2127_)
	local function __FUNC_21F6_(arg0, arg1, arg2, arg3)
		ServerSettingsEditDescription(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_2263_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal9, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_21F6_, __FUNC_2263_, false)
	registerVal1:addElement(registerVal9)
	registerVal1.descriptionInput = registerVal9
	local registerVal10 = CoD.GroupsSubTitle.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 93.000000, 261.000000)
	registerVal10:setTopBottom(true, false, 403.000000, 435.000000)
	registerVal10.weaponNameLabel:setText(Engine.Localize("PLATFORM_EDIT_PASSWORD"))
	registerVal1:addElement(registerVal10)
	registerVal1.passwordTitle = registerVal10
	local registerVal11 = CoD.GroupsInputButtonScroll.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 93.000000, 478.000000)
	registerVal11:setTopBottom(true, false, 443.000000, 474.500000)
	registerVal11.verticalScrollingTextBox.textBox:setText(Engine.Localize(""))
	registerVal11.verticalScrollingTextBox.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	local function __FUNC_235E_(arg1, arg2)
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

	registerVal11:registerEventHandler("gain_focus", __FUNC_235E_)
	local function __FUNC_24EF_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal11:registerEventHandler("lose_focus", __FUNC_24EF_)
	local function __FUNC_25BE_(arg0, arg1, arg2, arg3)
		ServerSettingsEditPassword(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_2628_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal11, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_25BE_, __FUNC_2628_, false)
	registerVal1:addElement(registerVal11)
	registerVal1.passwordInput = registerVal11
	local registerVal12 = {}
	registerVal12.down = registerVal9
	registerVal7.navigation = registerVal12
	registerVal12 = {}
	registerVal12.up = registerVal7
	registerVal12.down = registerVal11
	registerVal9.navigation = registerVal12
	registerVal12 = {}
	registerVal12.up = registerVal9
	registerVal11.navigation = registerVal12
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_2726_(arg1, arg2)
		ServerSettingsHandleKeyboardComplete(registerVal1, arg1, arg0, arg2)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("ui_keyboard_input", __FUNC_2726_)
	local function __FUNC_27D7_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_2828_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MP_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_27D7_, __FUNC_2828_, false)
	registerVal5:setModel(registerVal1.buttonModel, arg0)
	registerVal7.id = "nameInput"
	registerVal9.id = "descriptionInput"
	registerVal11.id = "passwordInput"
	local registerVal14 = {}
	registerVal14.name = "menu_loaded"
	registerVal14.controller = arg0
	registerVal1:processEvent(registerVal14)
	registerVal14 = {}
	registerVal14.name = "update_state"
	registerVal14.menu = registerVal1
	registerVal1:processEvent(registerVal14)
	registerVal12 = registerVal1:restoreState()
	if not registerVal12 then
		registerVal14 = {}
		registerVal14.name = "gain_focus"
		registerVal14.controller = arg0
		registerVal1.nameInput:processEvent(registerVal14)
	end
	local function __FUNC_2923_(arg1)
		arg1.StartMenuBackground0:close()
		arg1.FEButtonPanelShaderContainer0:close()
		arg1.MenuFrame:close()
		arg1.nameTitle:close()
		arg1.nameInput:close()
		arg1.descriptionTitle:close()
		arg1.descriptionInput:close()
		arg1.passwordTitle:close()
		arg1.passwordInput:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "ServerSettings.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_2923_)
	if __FUNC_2F8_ then
		__FUNC_2F8_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.ServerSettings = __FUNC_AA4_
