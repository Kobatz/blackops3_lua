-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Background")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.menus.Leaderboard.Leaderboard_GameMode")
require("ui.uieditor.widgets.Leaderboard.Leaderboard_GameModeButton")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.playercard.SelfIdentityBadge")
require("ui.uieditor.widgets.Lobby.Common.FE_TabBar")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
local function __FUNC_418_(arg0, arg1)
	local function __FUNC_4CD_(arg2)
		local registerVal1 = Engine.GetModel(arg2, "tabCategory")
		local registerVal2 = Engine.GetModelValue(registerVal1)
		SetGlobalModelValue("leaderboardCategoryName", registerVal2)
		if arg0.ButtonList ~= nil then
			UpdateDataSource(arg0, arg0.ButtonList, arg1)
		end
	end

	arg0:linkToElementModel(arg0.tabList.Tabs.grid, nil, false, __FUNC_4CD_)
end

local function __FUNC_62F_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Leaderboard_Main")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "CAC_PrimaryWeapon"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Leaderboard_Main.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.StartMenu_Background.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "InGame"
	local function __FUNC_17AD_(arg0, arg1, arg2)
		return IsInGame()
	end

	registerVal7.condition = __FUNC_17AD_
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
	local registerVal5 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, -11.000000, 1285.000000)
	registerVal5:setTopBottom(true, false, 115.910000, 733.910000)
	registerVal5:setAlpha(0.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.FEButtonPanelShaderContainer0 = registerVal5
	registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal6:setTopBottom(false, false, -275.000000, -236.000000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.CategoryListPanel = registerVal6
	registerVal7 = LUI.UIList.new(registerVal1, arg0, 6.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal7:makeFocusable()
	registerVal7:setLeftRight(true, false, 71.000000, 1195.000000)
	registerVal7:setTopBottom(true, false, 149.500000, 596.500000)
	registerVal7:setWidgetType(CoD.Leaderboard_GameModeButton)
	registerVal7:setHorizontalCount(5.000000)
	registerVal7:setVerticalCount(3.000000)
	registerVal7:setSpacing(6.000000)
	registerVal7:setVerticalCounter(CoD.verticalCounter)
	registerVal7:setDataSource("LeaderboardGameModeButton")
	local function __FUNC_17F6_(arg1, arg2)
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

	registerVal7:registerEventHandler("gain_focus", __FUNC_17F6_)
	local function __FUNC_1987_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_1987_)
	local function __FUNC_1A56_(arg0, arg1, arg2, arg3)
		Leaderboard_SetLeaderboardDef(registerVal1, arg0, arg2)
		OpenOverlay(registerVal1, "Leaderboard_GameMode", arg2, "", "")
		PlaySoundAlias("uin_paint_decal_nav")
		return true
	end

	local function __FUNC_1B5D_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal7, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1A56_, __FUNC_1B5D_, false)
	registerVal1:addElement(registerVal7)
	registerVal1.ButtonList = registerVal7
	local registerVal8 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal8.titleLabel:setText(Engine.Localize("MENU_LEADERBOARDS_CAPS"))
	registerVal8.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_LEADERBOARDS_CAPS"))
	registerVal8.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_character"))
	local function __FUNC_1C5A_(arg0, arg1)
		ShowHeaderIconOnly(registerVal1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("menu_opened", __FUNC_1C5A_)
	registerVal1:addElement(registerVal8)
	registerVal1.MenuFrame = registerVal8
	local registerVal9 = CoD.SelfIdentityBadge.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 871.000000, 1216.000000)
	registerVal9:setTopBottom(true, false, 23.000000, 83.000000)
	local function __FUNC_1CED_(arg1)
		registerVal9:setModel(arg1, arg0)
	end

	registerVal9:subscribeToGlobalModel(arg0, "PerController", "identityBadge", __FUNC_1CED_)
	local function __FUNC_1D3E_(arg1)
		registerVal9.CallingCard.CallingCardsFrameWidget:setModel(arg1, arg0)
	end

	registerVal9:subscribeToGlobalModel(arg0, "PerController", nil, __FUNC_1D3E_)
	registerVal1:addElement(registerVal9)
	registerVal1.SelfIdentityBadge = registerVal9
	local registerVal10 = CoD.FE_TabBar.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 0.000000, 2560.000000)
	registerVal10:setTopBottom(true, false, 83.000000, 124.000000)
	registerVal10.Tabs.grid:setHorizontalCount(8.000000)
	registerVal10.Tabs.grid:setDataSource("LeaderboardTabType")
	local function __FUNC_1DDC_(arg1, arg2)
		Leaderboard_TabChanged(registerVal1, arg1, arg0)
		return nil
	end

	registerVal10:registerEventHandler("list_active_changed", __FUNC_1DDC_)
	registerVal1:addElement(registerVal10)
	registerVal1.tabList = registerVal10
	local registerVal11 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal11:setTopBottom(true, false, 92.000000, 709.250000)
	registerVal1:addElement(registerVal11)
	registerVal1.FEMenuLeftGraphics = registerVal11
	local function __FUNC_1E44_(arg0, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_1E44_)
	local function __FUNC_1EB1_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_1F04_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1EB1_, __FUNC_1F04_, false)
	registerVal7.id = "ButtonList"
	registerVal8:setModel(registerVal1.buttonModel, arg0)
	local registerVal14 = {}
	registerVal14.name = "menu_loaded"
	registerVal14.controller = arg0
	registerVal1:processEvent(registerVal14)
	registerVal14 = {}
	registerVal14.name = "update_state"
	registerVal14.menu = registerVal1
	registerVal1:processEvent(registerVal14)
	local registerVal12 = registerVal1:restoreState()
	if not registerVal12 then
		registerVal14 = {}
		registerVal14.name = "gain_focus"
		registerVal14.controller = arg0
		registerVal1.ButtonList:processEvent(registerVal14)
	end
	local function __FUNC_2001_(arg1)
		arg1.StartMenuBackground0:close()
		arg1.FEButtonPanelShaderContainer0:close()
		arg1.ButtonList:close()
		arg1.MenuFrame:close()
		arg1.SelfIdentityBadge:close()
		arg1.tabList:close()
		arg1.FEMenuLeftGraphics:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Leaderboard_Main.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_2001_)
	if __FUNC_418_ then
		__FUNC_418_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.Leaderboard_Main = __FUNC_62F_
