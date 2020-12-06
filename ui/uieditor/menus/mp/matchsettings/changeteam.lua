-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MP.MatchSettings.InGamePlayerListRow")
require("ui.uieditor.widgets.Lobby.Common.List1ButtonLarge_PH")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
local function __FUNC_393_(arg0, arg1, arg2, arg3, arg4, arg5)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.teamBGColor = arg1
	registerVal7.rankText = arg2
	registerVal7.rankIcon = arg3
	registerVal7.playerNameText = arg4
	registerVal7.playerNameColor = arg5
	registerVal6.models = registerVal7
	registerVal6.properties = {}
	return registerVal6
end

local function __FUNC_476_(arg0, arg1, arg2)
	local registerVal3 = CoD.GetTeamNameCaps(arg2)
	local registerVal4 = Engine.GetInGamePlayerList(arg0, arg2)
	if arg1 or #arg0 == 0.000000 then
		return 
	end
	local registerVal6 = {}
	registerVal6.r = 1.000000
	registerVal6.g = 1.000000
	registerVal6.b = 1.000000
	local registerVal7 = CoD.GetTeamColor(arg0, arg2)
	local registerVal9, registerVal10, registerVal11 = string.gmatch(registerVal7, "%S+")
	for index12,value13 in registerVal9, registerVal10, registerVal11 do
		table.insert({}, index12)
	end
	registerVal9 = {}
	registerVal10 = tonumber({}[1.000000])
	registerVal9.r = (registerVal10 / 255.000000)
	registerVal10 = tonumber({}[2.000000])
	registerVal9.g = (registerVal10 / 255.000000)
	registerVal10 = tonumber({}[3.000000])
	registerVal9.b = (registerVal10 / 255.000000)
	registerVal10, registerVal11, registerVal12 = pairs(registerVal4)
	for index13,value14 in registerVal10, registerVal11, registerVal12 do
		local registerVal15 = CoD.ConvertColor(registerVal9.r, registerVal9.g, registerVal9.b)
		if (index13 % 2.000000) == 1.000000 then
			local registerVal16 = CoD.ConvertColor((registerVal9.r * 0.750000), (registerVal9.g * 0.750000), (registerVal9.b * 0.750000))
		end
		local registerVal17 = Engine.GetRankIcon(value14.rank, 0.000000)
		local registerVal19 = CoD.ConvertColor(registerVal6.r, registerVal6.g, registerVal6.b)
		if value14.isSelf then
			local registerVal20 = CoD.ConvertColor(CoD.yellowGlow.r, CoD.yellowGlow.g, CoD.yellowGlow.b)
		end
		table.insert(arg1, __FUNC_393_(arg0, registerVal16, value14.rank, registerVal17, value14.playerName, registerVal20))
	end
end

local function __FUNC_90A_(arg0, arg1, arg2)
	local registerVal3 = {}
	local registerVal4 = {}
	registerVal4.displayText = arg1
	local function __FUNC_9BC_(arg0, arg1, arg3, arg4, arg5)
		HUD_IngameMenuClosed()
		SendMenuResponse(arg0, "ChangeTeam", arg2, arg3)
		if arg5.previousMenuId then
			LUI.savedMenuStates[arg5.previousMenuId] = nil
		end
		local registerVal6 = Engine.GetModelForController(arg3)
		local registerVal5 = Engine.CreateModel(registerVal6, "factions.isCoDCaster")
		if arg2 == "spectator" then
			Engine.LockInput(arg3, false)
			Engine.SetUIActive(arg3, false)
			Engine.SetModelValue(registerVal5, true)
		else
			Engine.SetModelValue(registerVal5, false)
		end
		local registerVal7 = Engine.GetModelForController(arg3)
		registerVal6 = Engine.CreateModel(registerVal7, "CodCaster")
		registerVal7 = Engine.CreateModel(registerVal6, "showCodCasterScoreboard")
		Engine.SetModelValue(registerVal7, false)
		SetControllerModelValue(arg3, "forceScoreboard", 0.000000)
	end

	registerVal4.action = __FUNC_9BC_
	registerVal4.param = {}
	registerVal3.models = registerVal4
	registerVal3.properties = {}
	return registerVal3
end

local function __FUNC_D1A_(arg0)
	local registerVal2 = Engine.GetGametypeSetting("teamCount")
	for index3=1.000000, registerVal2, 1.000000 do
		__FUNC_476_(arg0, {}, index3)
	end
	return {}
end

local registerVal4 = DataSourceHelpers.ListSetup("InGamePlayerListRowData", __FUNC_D1A_, true)
DataSources.InGamePlayerListRowData = registerVal4
local function __FUNC_DD0_(arg0)
	local registerVal2 = Engine.Team(arg0, "index")
	local registerVal3 = Engine.GetGametypeSetting("spectatetype")
	registerVal3 = Engine.GetGametypeSetting("allowspectating")
	if 1.000000 <= registerVal3 and registerVal3 == 1.000000 then
		registerVal3 = Engine.IsSplitscreen()
	else
	end
	local function __FUNC_1279_(arg0)
		local registerVal1 = CoD.GetTeamNameCaps(arg0)
		if registerVal1 == "" then
			local registerVal2 = Engine.ToUpper(CoD.GetDefaultTeamName(arg0))
		end
		return registerVal2
	end

	local registerVal5 = CoDShared.IsGametypeTeamBased()
	registerVal5 = CoD.IsTeamChangeAllowed()
	if registerVal5 == true and registerVal5 then
		if registerVal2 ~= Enum.team_t.TEAM_ALLIES then
			local registerVal9 = __FUNC_1279_(Enum.team_t.TEAM_ALLIES)
			table.insert({}, __FUNC_90A_(arg0, registerVal9, "allies"))
		end
		if registerVal2 ~= Enum.team_t.TEAM_AXIS then
			registerVal9 = __FUNC_1279_(Enum.team_t.TEAM_AXIS)
			table.insert({}, __FUNC_90A_(arg0, registerVal9, "axis"))
		end
	end
	registerVal5 = CoDShared.IsGametypeTeamBased()
	if registerVal5 == true or registerVal2 == Enum.team_t.TEAM_SPECTATOR then
		table.insert({}, __FUNC_90A_(arg0, "MPUI_AUTOASSIGN_CAPS", "autoassign"))
	end
	if registerVal2 ~= Enum.team_t.TEAM_SPECTATOR and true == true then
		registerVal9 = CoD.GetTeamNameCaps(Enum.team_t.TEAM_SPECTATOR)
		table.insert({}, __FUNC_90A_(arg0, registerVal9, "spectator"))
	end
	return {}
end

registerVal4 = DataSourceHelpers.ListSetup("ChangeTeamOptions", __FUNC_DD0_, true)
DataSources.ChangeTeamOptions = registerVal4
local function __FUNC_1365_(arg0, arg1)
	local registerVal2 = Engine.Team(arg1, "name")
	if registerVal2 == "TEAM_SPECTATOR" or registerVal2 == "TEAM_FREE" then
		if arg0.MenuFrame then
			arg0.MenuFrame.titleLabel:setText(Engine.Localize("MPUI_CHOOSE_TEAM_CAPS"))
			arg0.MenuFrame.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MPUI_CHOOSE_TEAM_CAPS"))
		end
	end
	local function __FUNC_161E_(arg0, arg1)
		arg0:close()
	end

	arg0:registerEventHandler("close_all_ingame_menus", __FUNC_161E_)
	local function __FUNC_165F_(arg0, arg1)
		StartMenuResumeGame(arg0, arg1.controller)
		GoBack(arg0, arg1.controller)
	end

	arg0:registerEventHandler("open_migration_menu", __FUNC_165F_)
end

local function __FUNC_16F9_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("ChangeTeam")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "ChangeTeam.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 600.000000, 1000.000000)
	registerVal3:setTopBottom(true, false, 146.500000, 630.500000)
	registerVal3:setDataSource("InGamePlayerListRowData")
	registerVal3:setWidgetType(CoD.InGamePlayerListRow)
	registerVal3:setVerticalCount(18.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.playerList = registerVal3
	local registerVal4 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(true, false, 78.000000, 358.000000)
	registerVal4:setTopBottom(true, false, 144.500000, 380.500000)
	registerVal4:setDataSource("ChangeTeamOptions")
	registerVal4:setWidgetType(CoD.List1ButtonLarge_PH)
	registerVal4:setVerticalCount(7.000000)
	local function __FUNC_22BD_(arg1, arg2)
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

	registerVal4:registerEventHandler("gain_focus", __FUNC_22BD_)
	local function __FUNC_244F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_244F_)
	local function __FUNC_251E_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_257F_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal4, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_251E_, __FUNC_257F_, false)
	registerVal1:addElement(registerVal4)
	registerVal1.buttonList = registerVal4
	local registerVal5 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5.titleLabel:setText(Engine.Localize("MPUI_CHANGE_TEAM_CAPS"))
	registerVal5.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MPUI_CHANGE_TEAM_CAPS"))
	registerVal1:addElement(registerVal5)
	registerVal1.MenuFrame = registerVal5
	local registerVal6 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal6:setTopBottom(true, false, 86.000000, 703.250000)
	registerVal1:addElement(registerVal6)
	registerVal1.FEMenuLeftGraphics0 = registerVal6
	local registerVal7 = {}
	registerVal7.left = registerVal4
	registerVal3.navigation = registerVal7
	registerVal7 = {}
	registerVal7.right = registerVal3
	registerVal4.navigation = registerVal7
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_267A_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_26CC_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_267A_, __FUNC_26CC_, false)
	registerVal3.id = "playerList"
	registerVal4.id = "buttonList"
	registerVal5:setModel(registerVal1.buttonModel, arg0)
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
		registerVal1.buttonList:processEvent(registerVal9)
	end
	local function __FUNC_27C9_(arg1)
		arg1.playerList:close()
		arg1.buttonList:close()
		arg1.MenuFrame:close()
		arg1.FEMenuLeftGraphics0:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "ChangeTeam.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_27C9_)
	if __FUNC_1365_ then
		__FUNC_1365_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.ChangeTeam = __FUNC_16F9_
