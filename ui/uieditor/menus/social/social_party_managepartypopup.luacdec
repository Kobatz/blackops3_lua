-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Social.Social_PlayersList_ManageParty")
local function __FUNC_1E0_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "lobbyRoot.lobbyLockedIn")
	local function __FUNC_2C8_(arg2)
		local registerVal1 = Engine.GetModelValue(arg2)
		if registerVal1 == true then
			ShowSocialPartyWidget(arg1)
			GoBack(arg0, arg1)
		end
	end

	arg0:subscribeToModel(registerVal2, __FUNC_2C8_)
end

local function __FUNC_388_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Social_Party_ManagePartyPopup")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Social_Party_ManagePartyPopup.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.Social_PlayersList_ManageParty.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 54.000000, 699.000000)
	registerVal3:setTopBottom(true, false, 158.000000, 672.000000)
	local function __FUNC_A09_(arg1, arg2)
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

	registerVal3:registerEventHandler("gain_focus", __FUNC_A09_)
	local function __FUNC_B9B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_B9B_)
	local function __FUNC_C6A_(arg0, arg1, arg2, arg3)
		ShowSocialPartyWidget(arg2)
		ManagePartyAction(arg1, registerVal1, arg0, arg2)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_D1A_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal3, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_C6A_, __FUNC_D1A_, false)
	registerVal1:addElement(registerVal3)
	registerVal1.playersManageParty = registerVal3
	local function __FUNC_E16_(arg0, arg1, arg2, arg3)
		ShowSocialPartyWidget(arg2)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_E93_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_E16_, __FUNC_E93_, false)
	registerVal3.id = "playersManageParty"
	local registerVal6 = {}
	registerVal6.name = "menu_loaded"
	registerVal6.controller = arg0
	registerVal1:processEvent(registerVal6)
	registerVal6 = {}
	registerVal6.name = "update_state"
	registerVal6.menu = registerVal1
	registerVal1:processEvent(registerVal6)
	local registerVal4 = registerVal1:restoreState()
	if not registerVal4 then
		registerVal6 = {}
		registerVal6.name = "gain_focus"
		registerVal6.controller = arg0
		registerVal1.playersManageParty:processEvent(registerVal6)
	end
	local function __FUNC_F84_(arg1)
		arg1.playersManageParty:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Social_Party_ManagePartyPopup.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_F84_)
	if __FUNC_1E0_ then
		__FUNC_1E0_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.Social_Party_ManagePartyPopup = __FUNC_388_
