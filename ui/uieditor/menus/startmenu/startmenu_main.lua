-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.menus.Social.Social_Main")
require("ui.uieditor.widgets.StartMenu.StartMenu_Background")
require("ui.uieditor.widgets.StartMenu.CP.StartMenu_CampaignBG")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.playercard.SelfIdentityBadge")
require("ui.uieditor.widgets.Lobby.Common.FE_TabBar")
require("ui.uieditor.widgets.StartMenu.StartMenu_CurrencyCounts")
local function __FUNC_3B7_(arg0, arg1)
	local function __FUNC_6B4_()
		return true
	end

	arg0:registerEventHandler("menu_opened", __FUNC_6B4_)
	arg0.disableLeaderChangePopupShutdown = true
	if CoD.isCampaign then
		local registerVal5 = Engine.GetModelForController(arg1)
		arg0:setModel(Engine.CreateModel(registerVal5, "StartMenu_Main"))
	end
	if CoD.isZombie then
		arg0.disableDarkenElement = true
	end
	local function __FUNC_6E8_(arg0, arg2)
		CloseAllOccludingMenus(arg0, arg1)
		StartMenuResumeGame(arg0, arg2.controller)
		GoBack(arg0, arg2.controller)
	end

	arg0:registerEventHandler("open_migration_menu", __FUNC_6E8_)
	local registerVal2 = CoD.isOnlineGame()
	if CoD.isSafehouse and registerVal2 then
		SetGlobalModelValue("combatRecordMode", "cp")
	end
	SetControllerModelValue(arg1, "forceScoreboard", 0.000000)
end

local function __FUNC_7B5_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("StartMenu_Main")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "StartMenu_Main.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.StartMenu_Background.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "InGame"
	local function __FUNC_1DD4_(arg0, arg1, arg2)
		return IsInGame()
	end

	registerVal7.condition = __FUNC_1DD4_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal1:addElement(registerVal3)
	registerVal1.StartMenuBackground0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_fe_cp_background"))
	registerVal1:addElement(registerVal4)
	registerVal1.BlackBG = registerVal4
	local registerVal5 = CoD.StartMenu_CampaignBG.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setAlpha(0.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.StartMenuCampaignBG = registerVal5
	registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(false, false, -336.000000, -276.000000)
	registerVal6:setRGB(0.120000, 0.130000, 0.190000)
	registerVal6:setAlpha(0.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.MenuTitleBackground = registerVal6
	registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 64.000000, 1280.000000)
	registerVal7:setTopBottom(true, false, 31.000000, 75.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setText(Engine.Localize("Menu"))
	registerVal7:setTTF("fonts/escom.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal7)
	registerVal1.TitleText = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, -3.630000, 0.000000)
	registerVal8:setTopBottom(false, false, 302.000000, 332.000000)
	registerVal8:setRGB(0.120000, 0.130000, 0.190000)
	registerVal8:setAlpha(0.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.ButtonBarBackground = registerVal8
	local registerVal9 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal9:setTopBottom(true, false, 86.000000, 703.250000)
	registerVal1:addElement(registerVal9)
	registerVal1.FEMenuLeftGraphics = registerVal9
	local registerVal10 = LUI.UIFrame.new(registerVal1, arg0, 0.000000, 0.000000, false)
	registerVal10:setLeftRight(false, false, -574.000000, 576.000000)
	registerVal10:setTopBottom(false, false, -221.000000, 299.000000)
	registerVal1:addElement(registerVal10)
	registerVal1.TabFrame = registerVal10
	local registerVal11 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal11:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal11.titleLabel:setText(Engine.Localize("MENU_MENU_CAPS"))
	registerVal11.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_MENU_CAPS"))
	registerVal1:addElement(registerVal11)
	registerVal1.MenuFrame = registerVal11
	local registerVal12 = CoD.SelfIdentityBadge.new(registerVal1, arg0)
	registerVal12:setLeftRight(false, true, -435.000000, -92.000000)
	registerVal12:setTopBottom(true, false, 24.000000, 84.000000)
	local function __FUNC_1E1E_(arg1)
		registerVal12:setModel(arg1, arg0)
	end

	registerVal12:subscribeToGlobalModel(arg0, "PerController", "identityBadge", __FUNC_1E1E_)
	local function __FUNC_1E6E_(arg1)
		registerVal12.CallingCard.CallingCardsFrameWidget:setModel(arg1, arg0)
	end

	registerVal12:subscribeToGlobalModel(arg0, "PerController", nil, __FUNC_1E6E_)
	registerVal1:addElement(registerVal12)
	registerVal1.SelfIdentityBadge = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal13:setTopBottom(false, false, -274.000000, -235.000000)
	registerVal13:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal13)
	registerVal1.CategoryListPanel = registerVal13
	local registerVal14 = CoD.FE_TabBar.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, true, 0.000000, 1217.000000)
	registerVal14:setTopBottom(true, false, 85.000000, 126.000000)
	registerVal14.Tabs.grid:setHorizontalCount(8.000000)
	registerVal14.Tabs.grid:setDataSource("StartMenuTabs")
	registerVal1:addElement(registerVal14)
	registerVal1.FETabBar = registerVal14
	local registerVal15 = CoD.StartMenu_CurrencyCounts.new(registerVal1, arg0)
	registerVal15:setLeftRight(false, true, -653.810000, -449.810000)
	registerVal15:setTopBottom(true, false, 37.000000, 67.000000)
	registerVal1:addElement(registerVal15)
	registerVal1.StartMenuCurrencyCounts = registerVal15
	local function __FUNC_1F0C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:changeFrameWidget(registerVal1)
		end
	end

	registerVal10:linkToElementModel(registerVal14.Tabs.grid, "tabWidget", true, __FUNC_1F0C_)
	local registerVal16 = {}
	local registerVal17 = {}
	local function __FUNC_1FAA_()
		registerVal1:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal1.StartMenuBackground0:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.BlackBG:setAlpha(0.900000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.StartMenuCampaignBG:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal15:completeAnimation()
		registerVal1.StartMenuCurrencyCounts:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_1FAA_
	registerVal16.DefaultState = registerVal17
	registerVal17 = {}
	local function __FUNC_21D9_()
		registerVal1:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal1.StartMenuBackground0:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.BlackBG:setAlpha(0.900000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.StartMenuCampaignBG:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal15:completeAnimation()
		registerVal1.StartMenuCurrencyCounts:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_21D9_
	registerVal16.IsFrontEnd = registerVal17
	registerVal17 = {}
	local function __FUNC_2409_()
		registerVal1:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal1.StartMenuBackground0:setAlpha(0.900000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.BlackBG:setAlpha(0.600000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.StartMenuCampaignBG:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal15:completeAnimation()
		registerVal1.StartMenuCurrencyCounts:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_2409_
	registerVal16.Zombies = registerVal17
	registerVal17 = {}
	local function __FUNC_2639_()
		registerVal1:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal1.BlackBG:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.StartMenuCampaignBG:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal15:completeAnimation()
		registerVal1.StartMenuCurrencyCounts:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_2639_
	registerVal16.Campaign = registerVal17
	registerVal17 = {}
	local function __FUNC_2802_()
		registerVal1:setupElementClipCounter(1.000000)
		registerVal15:completeAnimation()
		registerVal1.StartMenuCurrencyCounts:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_2802_
	registerVal16.Ingame = registerVal17
	registerVal1.clipsPerState = registerVal16
	local registerVal18 = {}
	local registerVal19 = {}
	registerVal19.stateName = "IsFrontEnd"
	local function __FUNC_290F_(arg0, arg1, arg2)
		return InFrontend()
	end

	registerVal19.condition = __FUNC_290F_
	local registerVal20 = {}
	registerVal20.stateName = "Zombies"
	local function __FUNC_2958_(arg0, arg1, arg2)
		return IsZombies()
	end

	registerVal20.condition = __FUNC_2958_
	local registerVal21 = {}
	registerVal21.stateName = "Campaign"
	local function __FUNC_29A3_(arg0, arg1, arg2)
		return IsCampaign()
	end

	registerVal21.condition = __FUNC_29A3_
	local registerVal22 = {}
	registerVal22.stateName = "Ingame"
	local function __FUNC_29EC_(arg0, arg1, arg2)
		return IsInGame()
	end

	registerVal22.condition = __FUNC_29EC_
	registerVal18 = {registerVal19, registerVal20, registerVal21, registerVal22}
	registerVal1:mergeStateConditions(registerVal18)
	registerVal19 = Engine.GetGlobalModel()
	registerVal18 = Engine.GetModel(registerVal19, "lobbyRoot.lobbyNav")
	local function __FUNC_2A36_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal18, __FUNC_2A36_)
	local function __FUNC_2B5C_(arg1, arg2)
		PlaySoundSetSound(registerVal1, "menu_enter")
		FileshareGetSlots(registerVal1, arg1, arg0)
		SetHeadingKickerTextToGameMode("")
		PrepareOpenMenuInSafehouse(arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_2B5C_)
	local function __FUNC_2CA5_(arg0, arg1, arg2, arg3)
		RefreshLobbyRoom(arg1, arg2)
		StartMenuGoBack(arg1, arg2)
		return true
	end

	local function __FUNC_2D2B_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_2CA5_, __FUNC_2D2B_, false)
	local function __FUNC_2E25_(arg0, arg1, arg2, arg3)
		RefreshLobbyRoom(arg1, arg2)
		StartMenuGoBack(arg1, arg2)
		return true
	end

	local function __FUNC_2EAB_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_DISMISS_MENU")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_START, "M", __FUNC_2E25_, __FUNC_2EAB_, false)
	local function __FUNC_2FA6_(arg0, arg1, arg2, arg3)
		PlaySoundSetSound(registerVal1, "list_action")
		return true
	end

	local function __FUNC_3018_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_2FA6_, __FUNC_3018_, false)
	local function __FUNC_3116_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsInGame()
		registerVal4 = IsLobbyNetworkModeLAN()
		registerVal4 = IsDemoPlaying()
		if registerVal4 and not registerVal4 and not registerVal4 then
			OpenPopup(registerVal1, "Social_Main", arg2, "", "")
			return true
		end
	end

	local function __FUNC_320E_(arg0, arg1, arg2)
		local registerVal3 = IsInGame()
		registerVal3 = IsLobbyNetworkModeLAN()
		registerVal3 = IsDemoPlaying()
		if registerVal3 and not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "MENU_SOCIAL")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "S", __FUNC_3116_, __FUNC_320E_, false)
	local function __FUNC_338D_(arg0, arg1, arg2, arg3)
		RefreshLobbyRoom(arg1, arg2)
		StartMenuGoBack(arg1, arg2)
		return true
	end

	local function __FUNC_3413_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_NONE, "")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_NONE, "ESCAPE", __FUNC_338D_, __FUNC_3413_, false, true)
	registerVal10.id = "TabFrame"
	registerVal11:setModel(registerVal1.buttonModel, arg0)
	registerVal18 = {}
	registerVal18.name = "menu_loaded"
	registerVal18.controller = arg0
	registerVal1:processEvent(registerVal18)
	registerVal18 = {}
	registerVal18.name = "update_state"
	registerVal18.menu = registerVal1
	registerVal1:processEvent(registerVal18)
	registerVal16 = registerVal1:restoreState()
	if not registerVal16 then
		registerVal18 = {}
		registerVal18.name = "gain_focus"
		registerVal18.controller = arg0
		registerVal1.TabFrame:processEvent(registerVal18)
	end
	local function __FUNC_34FC_(arg1)
		arg1.StartMenuBackground0:close()
		arg1.StartMenuCampaignBG:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.MenuFrame:close()
		arg1.SelfIdentityBadge:close()
		arg1.FETabBar:close()
		arg1.StartMenuCurrencyCounts:close()
		arg1.TabFrame:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "StartMenu_Main.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_34FC_)
	if __FUNC_3B7_ then
		__FUNC_3B7_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.StartMenu_Main = __FUNC_7B5_
