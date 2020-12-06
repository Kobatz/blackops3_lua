-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.menus.Leaderboard.Leaderboard_Filters")
require("ui.uieditor.widgets.StartMenu.StartMenu_Background")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.playercard.SelfIdentityBadge")
require("ui.uieditor.widgets.Leaderboard.Leaderboard_GameModeTabWidget")
require("ui.uieditor.widgets.Leaderboard.Leaderboard_WarningText")
local function __FUNC_39C_(arg0, arg1)
	local function __FUNC_501_(arg2)
		if not arg2 then
			return 
		end
		local registerVal1 = Engine.GetModel(arg2, "lbDef")
		local registerVal2 = Engine.GetModelValue(registerVal1)
		SetGlobalModelValue("leaderboardDef", registerVal2)
		arg0.GameModeTabs.Internal.IndicatorsGrid:updateDataSource()
		LoadLeaderboard(arg0, arg1)
	end

	arg0:linkToElementModel(arg0.GameModeTabs.Internal.Tabs, nil, false, __FUNC_501_)
	local registerVal5 = Engine.GetGlobalModel()
	local registerVal4 = Engine.CreateModel(registerVal5, "FilterInfo")
	local function __FUNC_6AC_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		arg0.CurrentFilterInfo:setText(registerVal1)
		arg0.TabFrame:changeFrameWidget(("CoD." .. arg0.TabFrame.framedWidget.id))
	end

	arg0:subscribeToModel(registerVal4, __FUNC_6AC_)
end

local function __FUNC_804_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Leaderboard_GameMode")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "CAC_PrimaryWeapon"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Leaderboard_GameMode.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.StartMenu_Background.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "InGame"
	local function __FUNC_1B58_(arg0, arg1, arg2)
		return IsInGame()
	end

	registerVal7.condition = __FUNC_1B58_
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
	registerVal6 = LUI.UIFrame.new(registerVal1, arg0, 0.000000, 0.000000, false)
	registerVal6:setLeftRight(false, false, -574.000000, 576.000000)
	registerVal6:setTopBottom(false, false, -225.000000, 295.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.TabFrame = registerVal6
	registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal7:setTopBottom(false, false, -275.000000, -236.000000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setAlpha(0.500000)
	registerVal1:addElement(registerVal7)
	registerVal1.CategoryListPanel = registerVal7
	local registerVal8 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal8.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_barracks_leaderboard"))
	local function __FUNC_1BA2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.titleLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg0, "LeaderboardMenuTitle", "title", __FUNC_1BA2_)
	local function __FUNC_1C7A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg0, "LeaderboardMenuTitle", "title", __FUNC_1C7A_)
	local function __FUNC_1DE1_(arg0, arg1)
		ShowHeaderIconOnly(registerVal1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("menu_opened", __FUNC_1DE1_)
	registerVal1:addElement(registerVal8)
	registerVal1.MenuFrame = registerVal8
	local registerVal9 = CoD.SelfIdentityBadge.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 871.000000, 1216.000000)
	registerVal9:setTopBottom(true, false, 23.000000, 83.000000)
	local function __FUNC_1E75_(arg1)
		registerVal9:setModel(arg1, arg0)
	end

	registerVal9:subscribeToGlobalModel(arg0, "PerController", "identityBadge", __FUNC_1E75_)
	local function __FUNC_1EC6_(arg1)
		registerVal9.CallingCard.CallingCardsFrameWidget:setModel(arg1, arg0)
	end

	registerVal9:subscribeToGlobalModel(arg0, "PerController", nil, __FUNC_1EC6_)
	registerVal1:addElement(registerVal9)
	registerVal1.SelfIdentityBadge = registerVal9
	local registerVal10 = CoD.Leaderboard_GameModeTabWidget.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 86.000000, 416.000000)
	registerVal10:setTopBottom(true, false, 85.000000, 125.000000)
	registerVal10.Internal.IndicatorsGrid:setDataSource("LeaderboardGameModeTabs")
	registerVal10.Internal.Tabs:setDataSource("LeaderboardGameModeTabs")
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "Disabled"
	local function __FUNC_1F64_(arg1, arg2, arg3)
		return IsLobbyLeaderboard(arg0)
	end

	registerVal14.condition = __FUNC_1F64_
	registerVal13 = {registerVal14}
	registerVal10:mergeStateConditions(registerVal13)
	registerVal1:addElement(registerVal10)
	registerVal1.GameModeTabs = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, false, 655.500000, 855.500000)
	registerVal11:setTopBottom(true, false, 91.910000, 115.910000)
	registerVal11:setText(Engine.Localize("MPUI_X_SLASH_Y"))
	registerVal11:setTTF("fonts/escom.ttf")
	registerVal11:setLetterSpacing(0.500000)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal11)
	registerVal1.CurrentFilterInfo = registerVal11
	local registerVal12 = CoD.Leaderboard_WarningText.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal12:setTopBottom(false, true, -86.000000, -36.000000)
	registerVal12.Text:setText(Engine.Localize(""))
	local function __FUNC_1FBC_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal12:registerEventHandler("menu_loaded", __FUNC_1FBC_)
	local registerVal15 = {}
	local registerVal16 = {}
	registerVal16.stateName = "Visible"
	local function __FUNC_2051_(arg1, arg2, arg3)
		return IsMPGameModeLeaderboard(arg0)
	end

	registerVal16.condition = __FUNC_2051_
	local registerVal17 = {}
	registerVal17.stateName = "Hidden"
	local function __FUNC_20AD_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal17.condition = __FUNC_20AD_
	registerVal15 = {registerVal16, registerVal17}
	registerVal12:mergeStateConditions(registerVal15)
	registerVal16 = Engine.GetGlobalModel()
	registerVal15 = Engine.GetModel(registerVal16, "leaderboardDef")
	local function __FUNC_20F8_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "leaderboardDef"
		registerVal1:updateElementState(registerVal12, registerVal4)
	end

	registerVal12:subscribeToModel(registerVal15, __FUNC_20F8_)
	registerVal1:addElement(registerVal12)
	registerVal1.LeaderboardWarningText = registerVal12
	local function __FUNC_221C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:changeFrameWidget(registerVal1)
		end
	end

	registerVal6:linkToElementModel(registerVal10.Internal.Tabs, "tabWidget", true, __FUNC_221C_)
	local function __FUNC_22BA_(arg1, arg2)
		local registerVal3 = IsLobbyLeaderboard(arg0)
		if registerVal3 then
			ShowHeaderKickerAndIcon(registerVal1)
			SetHeadingKickerText("MENU_CUSTOM_LOBBY_LEADERBOARDS")
			PlaySoundAlias("uin_paint_decal_nav")
		else
			ShowHeaderKickerAndIcon(registerVal1)
			CombatRecordSetHeadingKickerTextToCombatRecordGameMode("")
			PlaySoundAlias("uin_paint_decal_nav")
		end
		if not nil then
			registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_22BA_)
	local function __FUNC_2487_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		PlaySoundAlias("uin_paint_decal_nav")
		return true
	end

	local function __FUNC_2519_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_2487_, __FUNC_2519_, false)
	local function __FUNC_2615_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsCustomLeaderboard(arg2)
		if not registerVal4 then
			OpenPopup(registerVal1, "Leaderboard_Filters", arg2, "", "")
			PlaySoundAlias("uin_paint_decal_nav")
			return true
		else
			registerVal4 = IsCustomLeaderboard(arg2)
			if registerVal4 then
				OpenPopup(registerVal1, "Leaderboard_Filters", arg2, "", "")
				PlaySoundAlias("uin_paint_decal_nav")
				return true
			end
		end
	end

	local function __FUNC_2758_(arg0, arg1, arg2)
		local registerVal3 = IsCustomLeaderboard(arg2)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "MENU_LB_CHANGE_FILTER")
			return true
		else
			registerVal3 = IsCustomLeaderboard(arg2)
			if registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "MENU_LB_CHANGE_RESET_FILTER")
				return true
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "F", __FUNC_2615_, __FUNC_2758_, false)
	registerVal6.id = "TabFrame"
	registerVal8:setModel(registerVal1.buttonModel, arg0)
	registerVal15 = {}
	registerVal15.name = "menu_loaded"
	registerVal15.controller = arg0
	registerVal1:processEvent(registerVal15)
	registerVal15 = {}
	registerVal15.name = "update_state"
	registerVal15.menu = registerVal1
	registerVal1:processEvent(registerVal15)
	registerVal13 = registerVal1:restoreState()
	if not registerVal13 then
		registerVal15 = {}
		registerVal15.name = "gain_focus"
		registerVal15.controller = arg0
		registerVal1.TabFrame:processEvent(registerVal15)
	end
	local function __FUNC_2925_(arg1)
		arg1.StartMenuBackground0:close()
		arg1.FEButtonPanelShaderContainer0:close()
		arg1.MenuFrame:close()
		arg1.SelfIdentityBadge:close()
		arg1.GameModeTabs:close()
		arg1.LeaderboardWarningText:close()
		arg1.TabFrame:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Leaderboard_GameMode.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_2925_)
	if __FUNC_39C_ then
		__FUNC_39C_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.Leaderboard_GameMode = __FUNC_804_
