-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.GameSettings.GameSettings_Background")
require("ui.uieditor.widgets.Lobby.Common.FE_TabBar")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
local function __FUNC_266_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	Engine.CreateModel(registerVal3, "GametypeSettings.Update")
	arg0.disablePopupOpenCloseAnim = true
end

local function __FUNC_343_(arg0, arg1)
	arg0.originalOcclusionChange = arg0.m_eventHandlers.occlusion_change
	local function __FUNC_476_(arg0, arg2)
		if not arg2.occluded and arg2.occludedBy.id ~= "Menu.GameSettings_OptionsMenu" and arg2.occludedBy.id ~= "Menu.MessageDialogBox" then
			local registerVal4 = {}
			registerVal4.name = "lose_focus"
			registerVal4.controller = arg1
			arg0:processEvent(registerVal4)
			arg0:restoreState()
		end
		arg0.originalOcclusionChange(arg0, arg2)
	end

	arg0:registerEventHandler("occlusion_change", __FUNC_476_)
	local function __FUNC_627_()
		local registerVal0 = Engine.GetPrimaryController()
		CoD.perController[registerVal0].gamesettingsUpdated = true
		ForceLobbyButtonUpdate(registerVal0)
		local registerVal2 = Engine.GetGlobalModel()
		local registerVal1 = Engine.GetModel(registerVal2, "lobbyRoot.gameClient.update")
		Engine.ForceNotifyModelSubscriptions(registerVal1)
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "close", __FUNC_627_)
end

local function __FUNC_7DB_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("GameSettings_Main")
	if __FUNC_266_ then
		__FUNC_266_(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "GameSettings_Main.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.GameSettings_Background.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3.MenuFrame.titleLabel:setText(Engine.Localize("MPUI_EDIT_GAME_RULES_CAPS"))
	registerVal3.MenuFrame.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MPUI_EDIT_GAME_RULES_CAPS"))
	registerVal3.GameSettingsSelectedItemInfo.ToolTip:setAlpha(0.000000)
	registerVal3.GameSettingsSelectedItemInfo.GameModeInfo:setAlpha(0.000000)
	registerVal3.GameSettingsSelectedItemInfo.GameModeName:setAlpha(0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.GameSettingsBackground = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(false, false, -274.000000, -235.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.CategoryListPanel = registerVal4
	local registerVal5 = LUI.UIFrame.new(registerVal1, arg0, 0.000000, 0.000000, false)
	registerVal5:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal5:setTopBottom(false, false, -225.000000, 360.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.TabFrame = registerVal5
	local registerVal6 = CoD.FE_TabBar.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 0.000000, 2464.000000)
	registerVal6:setTopBottom(true, false, 85.000000, 126.000000)
	registerVal6.Tabs.grid:setDataSource("GameSettingsTabs")
	registerVal1:addElement(registerVal6)
	registerVal1.Tabs = registerVal6
	local registerVal7 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 18.000000, 70.000000)
	registerVal7:setTopBottom(true, false, 91.000000, 708.250000)
	registerVal1:addElement(registerVal7)
	registerVal1.FEMenuLeftGraphics = registerVal7
	local function __FUNC_135B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:changeFrameWidget(registerVal1)
		end
	end

	registerVal5:linkToElementModel(registerVal6.Tabs.grid, "tabWidget", true, __FUNC_135B_)
	local function __FUNC_13F6_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		CustomGameSettingsMenuClosed(registerVal1, arg2)
		ClearSavedState(registerVal1, arg2)
		return true
	end

	local function __FUNC_14A7_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_13F6_, __FUNC_14A7_, false)
	registerVal3.MenuFrame:setModel(registerVal1.buttonModel, arg0)
	registerVal5.id = "TabFrame"
	local registerVal10 = {}
	registerVal10.name = "menu_loaded"
	registerVal10.controller = arg0
	registerVal1:processEvent(registerVal10)
	registerVal10 = {}
	registerVal10.name = "update_state"
	registerVal10.menu = registerVal1
	registerVal1:processEvent(registerVal10)
	local registerVal8 = registerVal1:restoreState()
	if not registerVal8 then
		registerVal10 = {}
		registerVal10.name = "gain_focus"
		registerVal10.controller = arg0
		registerVal1.TabFrame:processEvent(registerVal10)
	end
	local function __FUNC_15A1_(arg1)
		arg1.GameSettingsBackground:close()
		arg1.Tabs:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.TabFrame:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "GameSettings_Main.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_15A1_)
	if __FUNC_343_ then
		__FUNC_343_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.GameSettings_Main = __FUNC_7DB_
