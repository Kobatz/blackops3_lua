-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.backgrounds.MP_Background")
require("ui.uieditor.widgets.Lobby.Common.FE_TabIdle")
require("ui.uieditor.widgets.Lobby.LANServerBrowser.LANServerBrowserDetails")
require("ui.uieditor.widgets.Lobby.LocalServerRow")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
local function __FUNC_381_(arg0, arg1)
	local registerVal2 = Dvar.ui_execdemo_gamescom:get()
	if CoD.isPC and registerVal2 then
		arg0.Title:setText(Engine.Localize("MENU_FIND_GAME_CAPS"))
		arg0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_FIND_GAME_CAPS"))
	end
	CoD.LobbyBase.LobbyLANServerBrowserFilterUpdateEvent(arg0, arg1)
	local registerVal3 = {}
	registerVal3.leftAnchor = false
	registerVal3.rightAnchor = false
	registerVal3.left = -640.000000
	registerVal3.right = 640.000000
	registerVal3.topAnchor = false
	registerVal3.bottomAnchor = false
	registerVal3.top = -360.000000
	registerVal3.bottom = 360.000000
	registerVal3.red = 0.000000
	registerVal3.green = 0.000000
	registerVal3.blue = 0.000000
	registerVal3.alpha = 1.000000
	registerVal2 = LUI.UIImage.new(registerVal3)
	registerVal2:setPriority(-100.000000)
	arg0:addElement(registerVal2)
end

local function __FUNC_77A_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("LobbyServerBrowserOverlay")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "LobbyServerBrowserOverlay.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.MP_Background.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.MPBackground = registerVal3
	local registerVal4 = CoD.FE_TabIdle.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, true, -3.000000, 1277.000000)
	registerVal4:setTopBottom(true, false, 82.500000, 124.500000)
	registerVal1:addElement(registerVal4)
	registerVal1.FETabIdle0 = registerVal4
	local registerVal5 = CoD.LANServerBrowserDetails.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, 770.500000, 1216.500000)
	registerVal5:setTopBottom(true, false, 138.000000, 684.000000)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Invisible"
	local function __FUNC_1F5D_(arg0, arg1, arg2)
		return IsLANServerBrowserEmpty()
	end

	registerVal9.condition = __FUNC_1F5D_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "serverListRoot.count")
	local function __FUNC_1FB5_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "serverListRoot.count"
		registerVal1:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_1FB5_)
	registerVal1:addElement(registerVal5)
	registerVal1.LANServerBrowserDetails = registerVal5
	local registerVal6 = LUI.UIList.new(registerVal1, arg0, 4.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(true, false, 64.000000, 754.000000)
	registerVal6:setTopBottom(true, false, 148.000000, 608.000000)
	registerVal6:setWidgetType(CoD.LocalServerRow)
	registerVal6:setVerticalCount(16.000000)
	registerVal6:setSpacing(4.000000)
	registerVal6:setVerticalCounter(CoD.verticalCounter)
	registerVal6:setDataSource("LocalServer")
	local function __FUNC_20DE_(arg1, arg2)
		LobbyLANServerPlayerListRefresh(registerVal1, arg1, arg0)
		return nil
	end

	registerVal6:registerEventHandler("list_item_gain_focus", __FUNC_20DE_)
	local function __FUNC_214D_(arg1, arg2)
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

	registerVal6:registerEventHandler("gain_focus", __FUNC_214D_)
	local function __FUNC_22DF_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_22DF_)
	local function __FUNC_23AE_(arg0, arg1, arg2, arg3)
		JoinSystemLinkServer(registerVal1, arg0, arg2)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_2432_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal6, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_23AE_, __FUNC_2432_, false)
	registerVal1:addElement(registerVal6)
	registerVal1.Servers = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, true, 616.750000, -526.000000)
	registerVal7:setTopBottom(true, false, 93.500000, 117.500000)
	registerVal7:setScale(LanguageOverrideNumber("japanese", 0.750000, 1.000000))
	registerVal7:setText(Engine.Localize("MENU_STATUS_CAPS"))
	registerVal7:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal7)
	registerVal1.StatusTextBox = registerVal7
	registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, true, 432.000000, -674.000000)
	registerVal8:setTopBottom(true, false, 94.500000, 118.500000)
	registerVal8:setScale(LanguageOverrideNumber("japanese", 0.750000, 1.000000))
	registerVal8:setText(Engine.Localize("MENU_GAMETYPE_CAPS"))
	registerVal8:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal8)
	registerVal1.GameTypeTextBox = registerVal8
	registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, true, 336.000000, -848.000000)
	registerVal9:setTopBottom(true, false, 95.000000, 118.500000)
	registerVal9:setScale(LanguageOverrideNumber("japanese", 0.750000, 1.000000))
	registerVal9:setText(Engine.Localize("MENU_NUMPLAYERS_CAPS"))
	registerVal9:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal9)
	registerVal1.PlayerCountText = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, true, 75.000000, -966.000000)
	registerVal10:setTopBottom(true, false, 94.500000, 118.500000)
	registerVal10:setScale(LanguageOverrideNumber("japanese", 0.750000, 1.000000))
	registerVal10:setText(Engine.Localize("MENU_HOST_CAPS"))
	registerVal10:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal10)
	registerVal1.HostNameText = registerVal10
	local registerVal11 = LUI.UITightText.new()
	registerVal11:setLeftRight(true, false, -192.000000, 64.000000)
	registerVal11:setTopBottom(true, false, -183.000000, -129.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setText(Engine.Localize("MPUI_LOCAL_GAMES_CAPS"))
	registerVal11:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal1:addElement(registerVal11)
	registerVal1.Title = registerVal11
	local registerVal12 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal12:setTopBottom(true, false, 95.000000, 712.250000)
	registerVal1:addElement(registerVal12)
	registerVal1.FEMenuLeftGraphics = registerVal12
	local registerVal13 = LUI.UIText.new()
	registerVal13:setLeftRight(true, true, 775.000000, -69.000000)
	registerVal13:setTopBottom(true, false, 93.500000, 117.500000)
	registerVal13:setScale(LanguageOverrideNumber("japanese", 0.750000, 1.000000))
	registerVal13:setText(Engine.Localize("MENU_DETAILS_CAPS"))
	registerVal13:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal13)
	registerVal1.DetailsTextBox = registerVal13
	local registerVal14 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal14:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal14.titleLabel:setText(Engine.Localize("MPUI_LOCAL_GAMES_CAPS"))
	registerVal14.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MPUI_LOCAL_GAMES_CAPS"))
	registerVal1:addElement(registerVal14)
	registerVal1.MenuFrame = registerVal14
	local function __FUNC_252E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.MapImage:setImage(RegisterImage(MapNameToMapImage(registerVal1)))
		end
	end

	registerVal5:linkToElementModel(registerVal6, "mapName", true, __FUNC_252E_)
	local function __FUNC_2621_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.GameType:setText(GameTypeToLocalizedGameType(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal6, "gameType", true, __FUNC_2621_)
	local function __FUNC_26FF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.MapName:setText(MapNameToLocalizedMapName(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal6, "mapName", true, __FUNC_26FF_)
	local registerVal15 = {}
	registerVal15.left = registerVal6
	registerVal5.navigation = registerVal15
	registerVal15 = {}
	registerVal15.right = registerVal5
	registerVal6.navigation = registerVal15
	local function __FUNC_27D8_(arg1, arg2)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal1:registerEventHandler("filter_mode_changed", __FUNC_27D8_)
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_28C8_(arg1, arg2)
		SetLobbyServerBrowserFilterForE3(registerVal1, arg1, arg0)
		RefreshServerList(registerVal1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_28C8_)
	local function __FUNC_299E_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_29F0_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MP_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_299E_, __FUNC_29F0_, false)
	local function __FUNC_2AEB_(arg0, arg1, arg2, arg3)
		RefreshServerList(registerVal1, arg2)
		PlaySoundSetSound(registerVal1, "partyease_slide_right")
		return true
	end

	local function __FUNC_2B91_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_REFRESH")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "X", __FUNC_2AEB_, __FUNC_2B91_, false)
	local function __FUNC_2C90_(arg0, arg1, arg2, arg3)
		local registerVal4 = LANServerBrowserCheckFilterTest(arg1, "all")
		if registerVal4 then
			LobbyLANServerBrowserSetMainModeFilter(registerVal1, arg2)
			RefreshServerList(registerVal1, arg2)
			PlaySoundSetSound(registerVal1, "toggle")
			return true
		else
			registerVal4 = LANServerBrowserCheckFilterTest(arg1, "cp")
			if registerVal4 then
				LobbyLANServerBrowserSetMainModeFilter(registerVal1, arg2)
				RefreshServerList(registerVal1, arg2)
				PlaySoundSetSound(registerVal1, "toggle")
				return true
			else
				registerVal4 = LANServerBrowserCheckFilterTest(arg1, "mp")
				if registerVal4 then
					LobbyLANServerBrowserSetMainModeFilter(registerVal1, arg2)
					RefreshServerList(registerVal1, arg2)
					PlaySoundSetSound(registerVal1, "toggle")
					return true
				else
					registerVal4 = LANServerBrowserCheckFilterTest(arg1, "zm")
					if registerVal4 then
						LobbyLANServerBrowserSetMainModeFilter(registerVal1, arg2)
						RefreshServerList(registerVal1, arg2)
						PlaySoundSetSound(registerVal1, "toggle")
						return true
					end
				end
			end
		end
	end

	local function __FUNC_2ED8_(arg0, arg1, arg2)
		local registerVal3 = LANServerBrowserCheckFilterTest(arg1, "all")
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "MENU_LAN_FILTER_ALL")
			return true
		else
			registerVal3 = LANServerBrowserCheckFilterTest(arg1, "cp")
			if registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "MENU_LAN_FILTER_CAMPAIGN")
				return true
			else
				registerVal3 = LANServerBrowserCheckFilterTest(arg1, "mp")
				if registerVal3 then
					CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "MENU_LAN_FILTER_MULTIPLAYER")
					return true
				else
					registerVal3 = LANServerBrowserCheckFilterTest(arg1, "zm")
					if registerVal3 then
						CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "MENU_LAN_FILTER_ZOMBIES")
						return true
					end
				end
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "Y", __FUNC_2C90_, __FUNC_2ED8_, false)
	registerVal5.id = "LANServerBrowserDetails"
	registerVal6.id = "Servers"
	registerVal14:setModel(registerVal1.buttonModel, arg0)
	local registerVal17 = {}
	registerVal17.name = "menu_loaded"
	registerVal17.controller = arg0
	registerVal1:processEvent(registerVal17)
	registerVal17 = {}
	registerVal17.name = "update_state"
	registerVal17.menu = registerVal1
	registerVal1:processEvent(registerVal17)
	registerVal15 = registerVal1:restoreState()
	if not registerVal15 then
		registerVal17 = {}
		registerVal17.name = "gain_focus"
		registerVal17.controller = arg0
		registerVal1.Servers:processEvent(registerVal17)
	end
	local function __FUNC_31FB_(arg1)
		arg1.MPBackground:close()
		arg1.FETabIdle0:close()
		arg1.LANServerBrowserDetails:close()
		arg1.Servers:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.MenuFrame:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "LobbyServerBrowserOverlay.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_31FB_)
	if __FUNC_381_ then
		__FUNC_381_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.LobbyServerBrowserOverlay = __FUNC_77A_
