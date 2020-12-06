-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.GenericPopups.DialogBackground")
require("ui.uieditor.widgets.ListButton")
require("ui.uieditor.menus.AccountLink.UmbrellaSignIn")
require("ui.uieditor.menus.AccountLink.TermsOfService")
function LUI.createMenu.UmbrellaNewUserBegin(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("UmbrellaNewUserBegin")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "FrontendMain"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "UmbrellaNewUserBegin.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.DialogBackground.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 164.000000, 1116.000000)
	registerVal3:setTopBottom(true, false, 86.000000, 634.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.DialogBackground0 = registerVal3
	local registerVal4 = CoD.ListButton.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 477.000000, 837.000000)
	registerVal4:setTopBottom(true, false, 528.000000, 563.000000)
	registerVal4.Text.Text0:setText(Engine.Localize("ACCOUNT_LINK_SIGNIN"))
	local function __FUNC_D79_(arg1, arg2)
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

	registerVal4:registerEventHandler("gain_focus", __FUNC_D79_)
	local function __FUNC_F0B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_F0B_)
	local function __FUNC_FDA_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsInDefaultState(arg0)
		if registerVal4 then
			GoBackAndOpenOverlayOnParent(registerVal1, "UmbrellaSignIn", arg2)
			return true
		end
	end

	local function __FUNC_108C_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsInDefaultState(arg0)
		if registerVal3 then
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal4, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_FDA_, __FUNC_108C_, false)
	registerVal1:addElement(registerVal4)
	registerVal1.ListButton0 = registerVal4
	local registerVal5 = CoD.ListButton.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, 477.000000, 837.000000)
	registerVal5:setTopBottom(false, true, -157.000000, -122.000000)
	registerVal5.Text.Text0:setText(Engine.Localize("ACCOUNT_LINK_CREATE"))
	local function __FUNC_11C0_(arg1, arg2)
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

	registerVal5:registerEventHandler("gain_focus", __FUNC_11C0_)
	local function __FUNC_1353_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_1353_)
	local function __FUNC_1422_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsInDefaultState(arg0)
		if registerVal4 then
			GoBackAndOpenOverlayOnParent(registerVal1, "TermsOfService", arg2)
			return true
		end
	end

	local function __FUNC_14D4_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsInDefaultState(arg0)
		if registerVal3 then
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal5, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1422_, __FUNC_14D4_, false)
	registerVal1:addElement(registerVal5)
	registerVal1.ListButton1 = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 485.000000, 795.000000)
	registerVal6:setTopBottom(true, false, 122.760000, 170.760000)
	registerVal6:setText(Engine.Localize("ACCOUNT_LINK_MARKETING"))
	registerVal6:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal6)
	registerVal1.Label0 = registerVal6
	local registerVal7 = {}
	registerVal7.down = registerVal5
	registerVal4.navigation = registerVal7
	registerVal7 = {}
	registerVal7.up = registerVal4
	registerVal5.navigation = registerVal7
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_1608_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_165C_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1608_, __FUNC_165C_, false)
	local function __FUNC_1759_(arg0, arg1, arg2, arg3)
		AccountLink_SetAccountLinkViewed(registerVal1, arg0, arg2)
		GoBack(registerVal1, arg2)
		LobbyBeginPlay(registerVal1, arg2)
		PlaySoundSetSound(registerVal1, "action")
		LoadSaveGameData(registerVal1, arg2)
		return true
	end

	local function __FUNC_1877_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "Skip")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, nil, __FUNC_1759_, __FUNC_1877_, false)
	registerVal4.id = "ListButton0"
	registerVal5.id = "ListButton1"
	local registerVal9 = {}
	registerVal9.name = "menu_loaded"
	registerVal9.controller = arg0
	registerVal1:processEvent(registerVal9)
	registerVal9 = {}
	registerVal9.name = "update_state"
	registerVal9.menu = registerVal1
	registerVal1:processEvent(registerVal9)
	registerVal7 = registerVal1:restoreState()
	if not registerVal7 then
		registerVal9 = {}
		registerVal9.name = "gain_focus"
		registerVal9.controller = arg0
		registerVal1.ListButton0:processEvent(registerVal9)
	end
	local function __FUNC_196E_(arg1)
		arg1.DialogBackground0:close()
		arg1.ListButton0:close()
		arg1.ListButton1:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "UmbrellaNewUserBegin.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_196E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

