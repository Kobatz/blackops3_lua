-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.LobbyFriendsListRow")
require("ui.uieditor.widgets.CAC.cac_3dTitleIntermediary")
function LUI.createMenu.LobbyFriendsOverlay(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("LobbyFriendsOverlay")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "FriendsMenu"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "LobbyFriendsOverlay.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 128.000000, 296.000000)
	registerVal3:setTopBottom(true, false, 72.000000, 132.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setText(Engine.Localize("MENU_FRIENDS"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal3)
	registerVal1.lblTitle = registerVal3
	local registerVal4 = LUI.UIList.new(registerVal1, arg0, 4.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(true, false, 320.000000, 936.000000)
	registerVal4:setTopBottom(true, false, 168.000000, 479.000000)
	registerVal4:setDataSource("LobbyFriends")
	registerVal4:setWidgetType(CoD.LobbyFriendsListRow)
	registerVal4:setVerticalCount(9.000000)
	registerVal4:setSpacing(4.000000)
	local function __FUNC_C25_(arg1, arg2)
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

	registerVal4:registerEventHandler("gain_focus", __FUNC_C25_)
	local function __FUNC_DB7_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_DB7_)
	local function __FUNC_E86_(arg0, arg1, arg2, arg3)
		LobbyInviteFriend(registerVal1, arg0, arg2, "")
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_F15_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal4, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_E86_, __FUNC_F15_, false)
	registerVal1:addElement(registerVal4)
	registerVal1.Friends = registerVal4
	local registerVal5 = CoD.cac_3dTitleIntermediary.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, -71.590000, 506.410000)
	registerVal5:setTopBottom(true, false, 0.420000, 146.420000)
	registerVal5.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_FRIENDS"))
	registerVal1:addElement(registerVal5)
	registerVal1.cac3dTitleIntermediary0 = registerVal5
	local function __FUNC_1012_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_1064_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MP_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1012_, __FUNC_1064_, false)
	registerVal4.id = "Friends"
	local registerVal8 = {}
	registerVal8.name = "menu_loaded"
	registerVal8.controller = arg0
	registerVal1:processEvent(registerVal8)
	registerVal8 = {}
	registerVal8.name = "update_state"
	registerVal8.menu = registerVal1
	registerVal1:processEvent(registerVal8)
	local registerVal6 = registerVal1:restoreState()
	if not registerVal6 then
		registerVal8 = {}
		registerVal8.name = "gain_focus"
		registerVal8.controller = arg0
		registerVal1.Friends:processEvent(registerVal8)
	end
	local function __FUNC_115F_(arg1)
		arg1.Friends:close()
		arg1.cac3dTitleIntermediary0:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "LobbyFriendsOverlay.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_115F_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

