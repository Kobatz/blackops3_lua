-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.menus.AccountLink.Success")
require("ui.uieditor.menus.AccountLink.Failure")
require("ui.uieditor.widgets.GenericPopups.DialogBackground")
require("ui.uieditor.widgets.button")
require("ui.uieditor.widgets.RegisterField")
require("ui.uieditor.widgets.AccountLink.GenderList")
require("ui.uieditor.widgets.AccountLink.MonthList")
require("ui.uieditor.widgets.AccountLink.RegionList")
require("ui.uieditor.widgets.AccountLink.YearList")
require("ui.uieditor.widgets.AccountLink.DayList")
function LUI.createMenu.UmbrellaRegister(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("UmbrellaRegister")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "UmbrellaRegister.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.DialogBackground.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 164.000000, 1116.000000)
	registerVal3:setTopBottom(true, false, 50.000000, 670.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.bg = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 524.000000, 756.000000)
	registerVal4:setTopBottom(true, false, 101.000000, 149.000000)
	registerVal4:setText(Engine.Localize("ACCOUNT_LINK_REGISTER"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal4)
	registerVal1.CreateAccountLabel = registerVal4
	local registerVal5 = CoD.button.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, 992.000000, 1086.000000)
	registerVal5:setTopBottom(true, false, 612.500000, 642.500000)
	registerVal5.buttoninternal0.Text0:setText(Engine.Localize("MENU_CONFIRM_CAPS"))
	local function __FUNC_1E9E_(arg1, arg2)
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

	registerVal5:registerEventHandler("gain_focus", __FUNC_1E9E_)
	local function __FUNC_202F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_202F_)
	local function __FUNC_20FE_(arg0, arg1, arg2, arg3)
		AccountLink_Register(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_2162_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal5, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_20FE_, __FUNC_2162_, false)
	registerVal1:addElement(registerVal5)
	registerVal1.confirm = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 194.000000, 394.000000)
	registerVal6:setTopBottom(true, false, 474.500000, 510.500000)
	registerVal6:setText(Engine.Localize("ACCOUNT_LINK_DOB"))
	registerVal6:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal6)
	registerVal1.DOBLabel = registerVal6
	local registerVal7 = CoD.RegisterField.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 194.000000, 1086.000000)
	registerVal7:setTopBottom(true, false, 168.500000, 202.500000)
	registerVal7.Label:setText(Engine.Localize("ACCOUNT_LINK_FNAME"))
	local function __FUNC_225E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.Value:setText(registerVal1)
		end
	end

	registerVal7:subscribeToGlobalModel(arg0, "AccountLinkRegister", "firstName", __FUNC_225E_)
	local function __FUNC_230B_(arg1, arg2)
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

	registerVal7:registerEventHandler("gain_focus", __FUNC_230B_)
	local function __FUNC_249B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_249B_)
	local function __FUNC_256A_(arg0, arg1, arg2, arg3)
		ShowKeyboard(registerVal1, arg0, arg2, "KEYBOARD_TYPE_REGISTER_FIRST_NAME")
		return true
	end

	local function __FUNC_25F5_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal7, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_256A_, __FUNC_25F5_, false)
	registerVal1:addElement(registerVal7)
	registerVal1.firstName = registerVal7
	local registerVal8 = CoD.RegisterField.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 194.000000, 1086.000000)
	registerVal8:setTopBottom(true, false, 202.500000, 236.500000)
	registerVal8.Label:setText(Engine.Localize("ACCOUNT_LINK_LNAME"))
	local function __FUNC_26F2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.Value:setText(registerVal1)
		end
	end

	registerVal8:subscribeToGlobalModel(arg0, "AccountLinkRegister", "lastName", __FUNC_26F2_)
	local function __FUNC_279F_(arg1, arg2)
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

	registerVal8:registerEventHandler("gain_focus", __FUNC_279F_)
	local function __FUNC_292F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("lose_focus", __FUNC_292F_)
	local function __FUNC_29FE_(arg0, arg1, arg2, arg3)
		ShowKeyboard(registerVal1, arg0, arg2, "KEYBOARD_TYPE_REGISTER_LAST_NAME")
		return true
	end

	local function __FUNC_2A88_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal8, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_29FE_, __FUNC_2A88_, false)
	registerVal1:addElement(registerVal8)
	registerVal1.lastName = registerVal8
	local registerVal9 = CoD.RegisterField.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 194.000000, 1086.000000)
	registerVal9:setTopBottom(true, false, 270.500000, 304.500000)
	registerVal9.Label:setText(Engine.Localize("ACCOUNT_LINK_ZIPCODE"))
	local function __FUNC_2B86_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.Value:setText(registerVal1)
		end
	end

	registerVal9:subscribeToGlobalModel(arg0, "AccountLinkRegister", "zipCode", __FUNC_2B86_)
	local function __FUNC_2C33_(arg1, arg2)
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

	registerVal9:registerEventHandler("gain_focus", __FUNC_2C33_)
	local function __FUNC_2DC3_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("lose_focus", __FUNC_2DC3_)
	local function __FUNC_2E92_(arg0, arg1, arg2, arg3)
		ShowKeyboard(registerVal1, arg0, arg2, "KEYBOARD_TYPE_REGISTER_ZIP_CODE")
		return true
	end

	local function __FUNC_2F1B_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal9, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2E92_, __FUNC_2F1B_, false)
	registerVal1:addElement(registerVal9)
	registerVal1.zip = registerVal9
	local registerVal10 = CoD.RegisterField.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 194.000000, 1086.000000)
	registerVal10:setTopBottom(true, false, 406.500000, 440.500000)
	registerVal10.Label:setText(Engine.Localize("ACCOUNT_LINK_CONFIRMPASS"))
	local function __FUNC_3016_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.Value:setText(registerVal1)
		end
	end

	registerVal10:subscribeToGlobalModel(arg0, "AccountLinkRegister", "confirmStars", __FUNC_3016_)
	local function __FUNC_30C3_(arg1, arg2)
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

	registerVal10:registerEventHandler("gain_focus", __FUNC_30C3_)
	local function __FUNC_3253_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal10:registerEventHandler("lose_focus", __FUNC_3253_)
	local function __FUNC_3322_(arg0, arg1, arg2, arg3)
		ShowKeyboard(registerVal1, arg0, arg2, "KEYBOARD_TYPE_CONFIRM_PASSWORD")
		return true
	end

	local function __FUNC_33AA_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal10, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_3322_, __FUNC_33AA_, false)
	registerVal1:addElement(registerVal10)
	registerVal1.confirmPassword = registerVal10
	local registerVal11 = CoD.RegisterField.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 194.000000, 1086.000000)
	registerVal11:setTopBottom(true, false, 372.500000, 406.500000)
	registerVal11.Label:setText(Engine.Localize("ACCOUNT_LINK_PASSWORD"))
	local function __FUNC_34A6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.Value:setText(registerVal1)
		end
	end

	registerVal11:subscribeToGlobalModel(arg0, "AccountLinkRegister", "stars", __FUNC_34A6_)
	local function __FUNC_3553_(arg1, arg2)
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

	registerVal11:registerEventHandler("gain_focus", __FUNC_3553_)
	local function __FUNC_36E3_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal11:registerEventHandler("lose_focus", __FUNC_36E3_)
	local function __FUNC_37B2_(arg0, arg1, arg2, arg3)
		ShowKeyboard(registerVal1, arg0, arg2, "KEYBOARD_TYPE_REGISTER_PASSWORD")
		return true
	end

	local function __FUNC_383B_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal11, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_37B2_, __FUNC_383B_, false)
	registerVal1:addElement(registerVal11)
	registerVal1.password = registerVal11
	local registerVal12 = CoD.RegisterField.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 194.000000, 1086.000000)
	registerVal12:setTopBottom(true, false, 338.500000, 372.500000)
	registerVal12.Label:setText(Engine.Localize("ACCOUNT_LINK_EMAIL"))
	local function __FUNC_3936_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.Value:setText(registerVal1)
		end
	end

	registerVal12:subscribeToGlobalModel(arg0, "AccountLinkRegister", "email", __FUNC_3936_)
	local function __FUNC_39E3_(arg1, arg2)
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

	registerVal12:registerEventHandler("gain_focus", __FUNC_39E3_)
	local function __FUNC_3B73_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal12:registerEventHandler("lose_focus", __FUNC_3B73_)
	local function __FUNC_3C42_(arg0, arg1, arg2, arg3)
		ShowKeyboard(registerVal1, arg0, arg2, "KEYBOARD_TYPE_REGISTER_EMAIL")
		return true
	end

	local function __FUNC_3CC8_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal12, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_3C42_, __FUNC_3CC8_, false)
	registerVal1:addElement(registerVal12)
	registerVal1.email = registerVal12
	local registerVal13 = CoD.RegisterField.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 194.000000, 1086.000000)
	registerVal13:setTopBottom(true, false, 304.500000, 338.500000)
	registerVal13.Label:setText(Engine.Localize("ACCOUNT_LINK_USERNAME"))
	local function __FUNC_3DC6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.Value:setText(registerVal1)
		end
	end

	registerVal13:subscribeToGlobalModel(arg0, "AccountLinkRegister", "username", __FUNC_3DC6_)
	local function __FUNC_3E73_(arg1, arg2)
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

	registerVal13:registerEventHandler("gain_focus", __FUNC_3E73_)
	local function __FUNC_4003_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal13:registerEventHandler("lose_focus", __FUNC_4003_)
	local function __FUNC_40D2_(arg0, arg1, arg2, arg3)
		ShowKeyboard(registerVal1, arg0, arg2, "KEYBOARD_TYPE_REGISTER_USERNAME")
		return true
	end

	local function __FUNC_415B_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal13, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_40D2_, __FUNC_415B_, false)
	registerVal1:addElement(registerVal13)
	registerVal1.username = registerVal13
	local registerVal14 = CoD.GenderList.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, 192.940000, 1086.000000)
	registerVal14:setTopBottom(true, false, 440.500000, 474.500000)
	registerVal14.DropdownRoot.Text:setText(Engine.Localize("ACCOUNT_LINK_GENDER"))
	local function __FUNC_4256_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14.SelectedValue:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal14:subscribeToGlobalModel(arg0, "AccountLinkRegister", "gender", __FUNC_4256_)
	registerVal1:addElement(registerVal14)
	registerVal1.gender = registerVal14
	local registerVal15 = CoD.MonthList.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, false, 192.940000, 1086.000000)
	registerVal15:setTopBottom(true, false, 507.760000, 541.760000)
	registerVal15.DropdownRoot.Text:setText(Engine.Localize("ACCOUNT_LINK_MONTH"))
	local function __FUNC_4331_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15.SelectedValue:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal15:subscribeToGlobalModel(arg0, "AccountLinkRegister", "month", __FUNC_4331_)
	registerVal1:addElement(registerVal15)
	registerVal1.month = registerVal15
	local registerVal16 = CoD.RegionList.new(registerVal1, arg0)
	registerVal16:setLeftRight(true, false, 194.000000, 1086.000000)
	registerVal16:setTopBottom(true, false, 236.500000, 270.500000)
	registerVal16.DropdownRoot.Text:setText(Engine.Localize("ACCOUNT_LINK_REGION"))
	local function __FUNC_440D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16.SelectedValue:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal16:subscribeToGlobalModel(arg0, "AccountLinkRegister", "region", __FUNC_440D_)
	registerVal1:addElement(registerVal16)
	registerVal1.region = registerVal16
	local registerVal17 = CoD.YearList.new(registerVal1, arg0)
	registerVal17:setLeftRight(true, false, 194.000000, 1086.000000)
	registerVal17:setTopBottom(true, false, 578.500000, 612.500000)
	registerVal17.DropdownRoot.Text:setText(Engine.Localize("ACCOUNT_LINK_YEAR"))
	local function __FUNC_44E9_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.SelectedValue:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal17:subscribeToGlobalModel(arg0, "AccountLinkRegister", "year", __FUNC_44E9_)
	registerVal1:addElement(registerVal17)
	registerVal1.year = registerVal17
	local registerVal18 = CoD.DayList.new(registerVal1, arg0)
	registerVal18:setLeftRight(true, false, 194.000000, 1086.000000)
	registerVal18:setTopBottom(true, false, 541.760000, 575.760000)
	registerVal18.DropdownRoot.Text:setText(Engine.Localize("ACCOUNT_LINK_DAY"))
	local function __FUNC_45C5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal18.SelectedValue:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal18:subscribeToGlobalModel(arg0, "AccountLinkRegister", "day", __FUNC_45C5_)
	registerVal1:addElement(registerVal18)
	registerVal1.day = registerVal18
	local registerVal19 = {}
	registerVal19.up = registerVal17
	registerVal5.navigation = registerVal19
	registerVal19 = {}
	registerVal19.down = registerVal8
	registerVal7.navigation = registerVal19
	registerVal19 = {}
	registerVal19.up = registerVal7
	registerVal19.down = registerVal16
	registerVal8.navigation = registerVal19
	registerVal19 = {}
	registerVal19.up = registerVal16
	registerVal19.down = registerVal13
	registerVal9.navigation = registerVal19
	registerVal19 = {}
	registerVal19.up = registerVal11
	registerVal19.down = registerVal14
	registerVal10.navigation = registerVal19
	registerVal19 = {}
	registerVal19.up = registerVal12
	registerVal19.down = registerVal10
	registerVal11.navigation = registerVal19
	registerVal19 = {}
	registerVal19.up = registerVal13
	registerVal19.down = registerVal11
	registerVal12.navigation = registerVal19
	registerVal19 = {}
	registerVal19.up = registerVal9
	registerVal19.down = registerVal12
	registerVal13.navigation = registerVal19
	registerVal19 = {}
	registerVal19.up = registerVal10
	registerVal19.down = registerVal15
	registerVal14.navigation = registerVal19
	registerVal19 = {}
	registerVal19.up = registerVal14
	registerVal19.down = registerVal18
	registerVal15.navigation = registerVal19
	registerVal19 = {}
	registerVal19.up = registerVal8
	registerVal19.down = registerVal9
	registerVal16.navigation = registerVal19
	registerVal19 = {}
	registerVal19.up = registerVal18
	registerVal19.down = registerVal5
	registerVal17.navigation = registerVal19
	registerVal19 = {}
	registerVal19.up = registerVal15
	registerVal19.down = registerVal17
	registerVal18.navigation = registerVal19
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_46A1_(arg1, arg2)
		AccountLink_HandleRegisterKeyboardComplete(registerVal1, arg1, arg0, arg2)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("ui_keyboard_input", __FUNC_46A1_)
	local function __FUNC_4759_(arg1, arg2)
		GoBackAndOpenOverlayOnParent(registerVal1, "Success", arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("account_link_success", __FUNC_4759_)
	local function __FUNC_4810_(arg1, arg2)
		GoBackAndOpenOverlayOnParent(registerVal1, "Failure", arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("account_link_failure", __FUNC_4810_)
	local function __FUNC_48C8_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_491C_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_48C8_, __FUNC_491C_, false)
	local function __FUNC_4A19_(arg0, arg1, arg2, arg3)
		AccountLink_SetAccountLinkViewed(registerVal1, arg0, arg2)
		GoBack(registerVal1, arg2)
		LobbyBeginPlay(registerVal1, arg2)
		PlaySoundSetSound(registerVal1, "action")
		LoadSaveGameData(registerVal1, arg2)
		return true
	end

	local function __FUNC_4B37_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "skip")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, nil, __FUNC_4A19_, __FUNC_4B37_, false)
	registerVal5.id = "confirm"
	registerVal7.id = "firstName"
	registerVal8.id = "lastName"
	registerVal9.id = "zip"
	registerVal10.id = "confirmPassword"
	registerVal11.id = "password"
	registerVal12.id = "email"
	registerVal13.id = "username"
	registerVal14.id = "gender"
	registerVal15.id = "month"
	registerVal16.id = "region"
	registerVal17.id = "year"
	registerVal18.id = "day"
	local registerVal21 = {}
	registerVal21.name = "menu_loaded"
	registerVal21.controller = arg0
	registerVal1:processEvent(registerVal21)
	registerVal21 = {}
	registerVal21.name = "update_state"
	registerVal21.menu = registerVal1
	registerVal1:processEvent(registerVal21)
	registerVal19 = registerVal1:restoreState()
	if not registerVal19 then
		registerVal21 = {}
		registerVal21.name = "gain_focus"
		registerVal21.controller = arg0
		registerVal1.firstName:processEvent(registerVal21)
	end
	local function __FUNC_4C2E_(arg1)
		arg1.bg:close()
		arg1.confirm:close()
		arg1.firstName:close()
		arg1.lastName:close()
		arg1.zip:close()
		arg1.confirmPassword:close()
		arg1.password:close()
		arg1.email:close()
		arg1.username:close()
		arg1.gender:close()
		arg1.month:close()
		arg1.region:close()
		arg1.year:close()
		arg1.day:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "UmbrellaRegister.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_4C2E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

