-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.backgrounds.MP_Background")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.PC.ServerBrowser.ServerBrowserDetails")
require("ui.uieditor.widgets.PC.ServerBrowser.ServerBrowserRow")
require("ui.uieditor.widgets.Scrollbars.verticalScrollbar")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.PC.ServerBrowser.ServerBrowserHeader")
require("ui.uieditor.widgets.Lobby.Common.FE_TabBar")
local function __FUNC_495_(arg0)
	local registerVal4 = {}
	local registerVal5 = {}
	registerVal5.tabIcon = CoD.buttonStrings.shoulderl
	registerVal4.models = registerVal5
	registerVal5 = {}
	registerVal5.m_mouseDisabled = true
	registerVal4.properties = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.tabName = "MENU_MULTIPLAYER_CAPS"
	registerVal5.serverType = Enum.SteamServerRequestType.STEAM_SERVER_REQUEST_TYPE_INTERNET
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.tabName = "MENU_ZOMBIES_CAPS"
	registerVal5.serverType = Enum.SteamServerRequestType.STEAM_SERVER_REQUEST_TYPE_ZOMBIES
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.tabName = "MENU_LAN"
	registerVal5.serverType = Enum.SteamServerRequestType.STEAM_SERVER_REQUEST_TYPE_LAN
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.tabName = "MENU_RECENT_CAPS"
	registerVal5.serverType = Enum.SteamServerRequestType.STEAM_SERVER_REQUEST_TYPE_HISTORY
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.tabName = "MENU_FRIENDS_CAPS"
	registerVal5.serverType = Enum.SteamServerRequestType.STEAM_SERVER_REQUEST_TYPE_FRIENDS
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.tabName = "MENU_FAVORITES_CAPS"
	registerVal5.serverType = Enum.SteamServerRequestType.STEAM_SERVER_REQUEST_TYPE_FAVORITES
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.tabIcon = CoD.buttonStrings.shoulderr
	registerVal4.models = registerVal5
	registerVal5 = {}
	registerVal5.m_mouseDisabled = true
	registerVal4.properties = registerVal5
	table.insert({}, registerVal4)
	return {}
end

local registerVal1 = ListHelper_SetupDataSource("ServerBrowserCategories", __FUNC_495_, true)
DataSources.ServerBrowserCategories = registerVal1
local function __FUNC_9C3_(arg0, arg1)
	arg0.Tabs.Tabs.grid:setDataSource("ServerBrowserCategories")
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "serverBrowser")
	registerVal3 = Engine.CreateModel(registerVal2, "serverListUpdatedCount")
	local function __FUNC_C77_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			arg0.updatingText:setText(Engine.Localize("PLATFORM_RETRIEVING_SERVERS", registerVal1))
		end
	end

	local registerVal5 = arg0.updatingText:subscribeToModel(registerVal3, __FUNC_C77_)
	arg0.updatingText.subscription = registerVal5
	local function __FUNC_D79_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			arg0.serverType = registerVal1
			Engine.SteamServerBrowser_RequestServers(arg0.serverType)
			if arg0.serverType == Enum.SteamServerRequestType.STEAM_SERVER_REQUEST_TYPE_FAVORITES then
				arg0.ServerDetails:setState("NoServers")
			else
				arg0.ServerDetails:setState("DefaultState")
			end
		end
	end

	arg0:linkToElementModel(arg0.Tabs.Tabs.grid, "serverType", true, __FUNC_D79_)
	local function __FUNC_F73_(arg0)
		Engine.SteamServerBrowser_CancelServerRequest()
	end

	LUI.OverrideFunction_CallOriginalSecond(arg0, "close", __FUNC_F73_)
end

local function __FUNC_FF0_(arg0, arg1)
	arg0.serverType = Enum.SteamServerRequestType.STEAM_SERVER_REQUEST_TYPE_INTERNET
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "serverBrowser")
	registerVal3 = Engine.CreateModel(registerVal2, "serverListCount")
	Engine.SetModelValue(registerVal3, 0.000000)
	local registerVal4 = Engine.CreateModel(registerVal2, "serverListUpdatedCount")
	Engine.SetModelValue(registerVal4, 0.000000)
end

local function __FUNC_11EF_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("LobbyServerBrowserOnline")
	if __FUNC_FF0_ then
		__FUNC_FF0_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "LobbyServerBrowserOnline.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.MP_Background.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.MPBackground = registerVal3
	local registerVal4 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal4:setTopBottom(true, false, 95.000000, 712.250000)
	registerVal1:addElement(registerVal4)
	registerVal1.FEMenuLeftGraphics = registerVal4
	local registerVal5 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5.titleLabel:setText(Engine.Localize("MENU_SERVER_BROWSER_CAPS"))
	registerVal5.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_SERVER_BROWSER_CAPS"))
	registerVal1:addElement(registerVal5)
	registerVal1.MenuFrame = registerVal5
	local registerVal6 = CoD.ServerBrowserDetails.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 799.500000, 1199.500000)
	registerVal6:setTopBottom(true, false, 152.000000, 652.000000)
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "NoServers"
	local function __FUNC_286C_(arg0, arg1, arg2)
		return IsSteamServerBrowserEmpty()
	end

	registerVal10.condition = __FUNC_286C_
	local registerVal11 = {}
	registerVal11.stateName = "Favorites"
	local function __FUNC_28C7_(arg0, arg1, arg2)
		return SteamServerIsCurrentServerTypeFavorites(arg1)
	end

	registerVal11.condition = __FUNC_28C7_
	local registerVal12 = {}
	registerVal12.stateName = "History"
	local function __FUNC_2931_(arg0, arg1, arg2)
		return SteamServerIsCurrentServerTypeHistory(arg1)
	end

	registerVal12.condition = __FUNC_2931_
	registerVal9 = {registerVal10, registerVal11, registerVal12}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetGlobalModel()
	registerVal9 = Engine.GetModel(registerVal10, "serverBrowser.serverListCount")
	local function __FUNC_299B_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "serverBrowser.serverListCount"
		registerVal1:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:subscribeToModel(registerVal9, __FUNC_299B_)
	registerVal10 = Engine.GetGlobalModel()
	registerVal9 = Engine.GetModel(registerVal10, "serverBrowser.serverListUpdatedCount")
	local function __FUNC_2ACB_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "serverBrowser.serverListUpdatedCount"
		registerVal1:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:subscribeToModel(registerVal9, __FUNC_2ACB_)
	registerVal1:addElement(registerVal6)
	registerVal1.ServerDetails = registerVal6
	local registerVal7 = LUI.UIList.new(registerVal1, arg0, 4.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal7:makeFocusable()
	registerVal7:setLeftRight(true, false, 64.000000, 764.000000)
	registerVal7:setTopBottom(true, false, 185.000000, 649.000000)
	registerVal7:setWidgetType(CoD.ServerBrowserRow)
	registerVal7:setVerticalCount(18.000000)
	registerVal7:setSpacing(4.000000)
	registerVal7:setVerticalScrollbar(CoD.verticalScrollbar)
	registerVal7:setVerticalCounter(CoD.verticalCounter)
	registerVal7:setDataSource("LobbyServer")
	local function __FUNC_2C02_(arg0, arg1)
		ServerBrowserRequestPlayersList(arg0, arg1)
		return nil
	end

	registerVal7:registerEventHandler("list_item_gain_focus", __FUNC_2C02_)
	local function __FUNC_2C6D_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal7:registerEventHandler("gain_focus", __FUNC_2C6D_)
	local function __FUNC_2ECD_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_2ECD_)
	local function __FUNC_2F9E_(arg0, arg1, arg2, arg3)
		ServerBrowserCancelRequest(registerVal1)
		JoinServerBrowser(registerVal1, arg0, arg2, arg1)
		return true
	end

	local function __FUNC_3033_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "PLATFORM_JOIN_SERVER_CAPS")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal7, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "J", __FUNC_2F9E_, __FUNC_3033_, false)
	local function __FUNC_313D_(arg0, arg1, arg2, arg3)
		local registerVal4 = SteamServerIsCurrentServerTypeFavorites(arg0)
		if registerVal4 then
			ServerBrowserSetFavorite(registerVal1, arg0, arg1, arg3)
			return true
		else
			registerVal4 = SteamServerIsCurrentServerTypeHistory(arg0)
			if registerVal4 then
				ServerBrowserSetFavorite(registerVal1, arg0, arg1, arg3)
				return true
			else
				ServerBrowserSetFavorite(registerVal1, arg0, arg1, arg3)
				return true
			end
		end
	end

	local function __FUNC_327A_(arg0, arg1, arg2)
		local registerVal3 = SteamServerIsCurrentServerTypeFavorites(arg0)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "PLATFORM_REMOVE_FROM_FAVORITES_CAPS")
			return true
		else
			registerVal3 = SteamServerIsCurrentServerTypeHistory(arg0)
			if registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "PLATFORM_REMOVE_FROM_HISTORY_CAPS")
				return true
			else
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "MENU_ADD_TO_FAVORITES_CAPS")
				return true
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal7, arg0, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "F", __FUNC_313D_, __FUNC_327A_, false)
	local function __FUNC_3510_(arg0, arg1, arg2, arg3)
		ServerBrowserRefreshServer(registerVal1, arg0, arg1, arg3)
		return true
	end

	local function __FUNC_3580_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_REFRESH_CAPS")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal7, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_3510_, __FUNC_3580_, false)
	registerVal1:addElement(registerVal7)
	registerVal1.Servers = registerVal7
	local registerVal8 = CoD.ServerBrowserHeader.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 64.000000, 764.000000)
	registerVal8:setTopBottom(true, false, 152.000000, 180.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.ServerBrowserHeader = registerVal8
	registerVal9 = CoD.FE_TabBar.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 0.000000, 2464.000000)
	registerVal9:setTopBottom(true, false, 85.000000, 126.000000)
	registerVal9.Tabs.grid:setHorizontalCount(8.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.Tabs = registerVal9
	registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, false, 564.000000, 764.000000)
	registerVal10:setTopBottom(true, false, 652.000000, 677.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setText(Engine.Localize("PLATFORM_RETRIEVING_SERVERS"))
	registerVal10:setTTF("fonts/default.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal10)
	registerVal1.updatingText = registerVal10
	registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, false, 314.000000, 514.000000)
	registerVal11:setTopBottom(true, false, 377.000000, 402.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setText(Engine.Localize("PLATFORM_NO_SERVERS_FOUND"))
	registerVal11:setTTF("fonts/default.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal11)
	registerVal1.noServersText = registerVal11
	local function __FUNC_3684_(arg1)
		registerVal6:setModel(arg1, arg0)
	end

	registerVal6:linkToElementModel(registerVal7, nil, false, __FUNC_3684_)
	registerVal12 = {}
	registerVal12.left = registerVal7
	registerVal6.navigation = registerVal12
	registerVal12 = {}
	registerVal12.right = registerVal6
	registerVal7.navigation = registerVal12
	registerVal12 = {}
	local registerVal13 = {}
	local function __FUNC_36D6_()
		registerVal1:setupElementClipCounter(4.000000)
		registerVal6:completeAnimation()
		registerVal1.ServerDetails:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.Servers:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal10:completeAnimation()
		registerVal1.updatingText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal1.noServersText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_36D6_
	registerVal12.DefaultState = registerVal13
	registerVal13 = {}
	local function __FUNC_38E8_()
		registerVal1:setupElementClipCounter(4.000000)
		registerVal6:completeAnimation()
		registerVal1.ServerDetails:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.Servers:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal10:completeAnimation()
		registerVal1.updatingText:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal1.noServersText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_38E8_
	registerVal12.Updating = registerVal13
	registerVal13 = {}
	local function __FUNC_3AFC_()
		registerVal1:setupElementClipCounter(4.000000)
		registerVal6:completeAnimation()
		registerVal1.ServerDetails:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.Servers:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal10:completeAnimation()
		registerVal1.updatingText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal1.noServersText:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_3AFC_
	registerVal12.NoServers = registerVal13
	registerVal1.clipsPerState = registerVal12
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "Updating"
	local function __FUNC_3D10_(arg0, arg1, arg2)
		return IsSteamServerBrowserUpdating()
	end

	registerVal15.condition = __FUNC_3D10_
	local registerVal16 = {}
	registerVal16.stateName = "NoServers"
	local function __FUNC_3D6E_(arg0, arg1, arg2)
		return IsSteamServerBrowserEmpty()
	end

	registerVal16.condition = __FUNC_3D6E_
	registerVal14 = {registerVal15, registerVal16}
	registerVal1:mergeStateConditions(registerVal14)
	registerVal15 = Engine.GetGlobalModel()
	registerVal14 = Engine.GetModel(registerVal15, "serverBrowser.serverListUpdatedCount")
	local function __FUNC_3DC7_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "serverBrowser.serverListUpdatedCount"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal14, __FUNC_3DC7_)
	registerVal15 = Engine.GetGlobalModel()
	registerVal14 = Engine.GetModel(registerVal15, "serverBrowser.serverListCount")
	local function __FUNC_3EFE_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "serverBrowser.serverListCount"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal14, __FUNC_3EFE_)
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_402F_(arg0, arg1)
		RefreshLobbyServerBrowser(registerVal1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_402F_)
	local function __FUNC_40C8_(arg0, arg1, arg2, arg3)
		ServerBrowserCancelRequest(registerVal1)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_414C_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK_CAPS")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_40C8_, __FUNC_414C_, false)
	local function __FUNC_424E_(arg0, arg1, arg2, arg3)
		RefreshLobbyServerBrowser(registerVal1)
		PlaySoundSetSound(registerVal1, "partyease_slide_right")
		return true
	end

	local function __FUNC_42F9_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "PLATFORM_REFRESH_ALL_CAPS")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "R", __FUNC_424E_, __FUNC_42F9_, false)
	local function __FUNC_4407_(arg0, arg1, arg2, arg3)
		OpenServerBrowserFilters(registerVal1, arg0, arg2, "", arg1)
		return true
	end

	local function __FUNC_4480_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_FILTER_SERVERS_CAPS")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_START, "E", __FUNC_4407_, __FUNC_4480_, false)
	registerVal5:setModel(registerVal1.buttonModel, arg0)
	registerVal6.id = "ServerDetails"
	registerVal7.id = "Servers"
	registerVal14 = {}
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
		registerVal1.Servers:processEvent(registerVal14)
	end
	local function __FUNC_4585_(arg1)
		arg1.MPBackground:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.MenuFrame:close()
		arg1.ServerDetails:close()
		arg1.Servers:close()
		arg1.ServerBrowserHeader:close()
		arg1.Tabs:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "LobbyServerBrowserOnline.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_4585_)
	if __FUNC_9C3_ then
		__FUNC_9C3_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.LobbyServerBrowserOnline = __FUNC_11EF_
