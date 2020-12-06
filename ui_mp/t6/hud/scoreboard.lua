-- Decompiled with CoDLUIDecompiler by JariK

local registerVal22 = {}
registerVal22.name = "row_selected"
local registerVal41 = CoD.MPZM(0.000000, (4.000000 * 27.000000))
local registerVal43 = CoD.MPZM(37.000000, 8.000000)
local registerVal44 = CoD.MPZM(15.000000, 4.000000)
local registerVal50 = InheritFrom(LUI.UIElement)
CoD.ScoreboardRow = registerVal50
local function __FUNC_8B5_(arg0, arg1)
	arg0.m_ownerController = arg1
end

local function __FUNC_8FF_(arg0)
	return arg0.m_ownerController
end

local function __FUNC_953_(arg0)
	local registerVal1 = Dvar.ui_gametype:get()
	if registerVal1 == CoD.Zombie.GAMETYPE_ZCLEANSED and arg0 == "MPUI_DOWNS" then
		return "MPUI_RETURNS"
	end
	return arg0
end

local function __FUNC_A5F_(arg0)
	if arg0.mode == "theater" then
		local registerVal3 = Engine.Localize("MENU_THEATER_PARTY")
	else
		if arg0.frontEndOnly then
			local registerVal5 = Engine.GetAARScoreboard(arg0.m_ownerController)
		else
			registerVal5 = Dvar.ui_gametype:get()
			registerVal5 = Dvar.ui_mapname:get()
		end
		local registerVal6 = Engine.LobbyConnectedToDedicatedHost()
		if registerVal6 then
		else
		end
		registerVal6 = {}
		local registerVal7 = Engine.Localize(Engine.StructTableLookupString(CoDShared.gametypesStructTable, "name", registerVal5, "name_ref"))
		CoD.GetMapValue(registerVal5, "mapName", registerVal5)
		registerVal6 = {}
		if CoD.isZombie then
			registerVal7 = CoD.GetZombieGameTypeName(registerVal5, registerVal5)
			registerVal6[1.000000] = registerVal7
		end
		registerVal7 = Engine.GameModeIsMode(CoD.GAMEMODE_LOCAL_SPLITSCREEN)
		registerVal7 = Engine.GetGametypeSetting("roundLimit")
		local registerVal8 = Engine.GetRoundsPlayed(arg0.m_ownerController)
		if not arg0.frontEndOnly and CoD.isZombie == false and registerVal7 == false and registerVal8 ~= nil and registerVal7 ~= 1.000000 then
			table.insert(registerVal6, " - ")
			local registerVal9 = CoD.IsInOvertime(arg0.m_ownerController)
			if registerVal9 then
				table.insert(registerVal6, Engine.Localize("MP_OVERTIME"))
			else
				if registerVal7 == 0.000000 then
					table.insert(registerVal6, Engine.Localize("MPUI_ROUND_X", (registerVal8 + 1.000000)))
				else
					table.insert(registerVal6, Engine.Localize("MPUI_ROUND_X_OF_Y", (registerVal8 + 1.000000), registerVal7))
				end
			end
		end
		registerVal7 = table.concat(registerVal6)
	end
	return registerVal7
end

local function __FUNC_1100_(arg0, arg1, arg2)
	arg0.m_ownerController = arg1
	arg0.setOwner = __FUNC_8B5_
	arg0.getOwner = __FUNC_8FF_
	arg0:setOwner(arg1)
	arg0.frontEndOnly = arg2
	arg0.mode = "game"
	local registerVal4 = RegisterMaterial("ping_bar_01")
	{}[1.000000] = registerVal4
	registerVal4 = RegisterMaterial("ping_bar_02")
	{}[2.000000] = registerVal4
	registerVal4 = RegisterMaterial("ping_bar_03")
	{}[3.000000] = registerVal4
	registerVal4 = RegisterMaterial("ping_bar_04")
	{}[4.000000] = registerVal4
	local registerVal3 = {}
	registerVal3.rightAnchor = true
	registerVal3.leftAnchor = true
	registerVal3.left = 0.000000
	registerVal3.right = 0.000000
	registerVal3.topAnchor = true
	registerVal3.bottomAnchor = false
	registerVal3.top = 0.000000
	registerVal3.bottom = 0.000000
	registerVal4 = CoD.SplitscreenScaler.new(registerVal3, 1.350000)
	arg0.scoreboardContainer = registerVal4
	arg0:addElement(arg0.scoreboardContainer)
	if not arg2 then
		arg0.leftButtonPromptBar:close()
		arg0.rightButtonPromptBar:close()
		arg0.scoreboardContainer:addElement(arg0.leftButtonPromptBar)
		arg0.scoreboardContainer:addElement(arg0.rightButtonPromptBar)
	end
	registerVal4 = LUI.UIElement.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 32.000000)
	arg0.scoreboardContainer:addElement(registerVal4)
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.700000)
	registerVal4:addElement(registerVal5)
	local registerVal6 = Engine.GameModeIsMode(CoD.GAMEMODE_LOCAL_SPLITSCREEN)
	if registerVal6 == false then
		registerVal6 = LUI.UIImage.new()
		registerVal6:setLeftRight(true, true, 2.000000, -2.000000)
		registerVal6:setTopBottom(true, false, 2.000000, 7.000000)
		registerVal6:setImage(RegisterMaterial("white"))
		registerVal6:setAlpha(0.060000)
		registerVal4:addElement(registerVal6)
	end
	registerVal6 = __FUNC_A5F_(arg0)
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 80.000000, 80.000000)
	registerVal7:setTopBottom(false, false, (-CoD.textSize.Default / 2.000000), (CoD.textSize.Default / 2.000000))
	registerVal7:setFont(CoD.fonts.Default)
	registerVal7:setText(registerVal6)
	registerVal7:setRGB(CoD.offWhite.r, CoD.offWhite.g, CoD.offWhite.b)
	registerVal4:addElement(registerVal7)
	arg0.headerTitle = registerVal7
	local registerVal8 = LUI.UIContainer.new()
	registerVal4:addElement(registerVal8)
	arg0.columnHeaderContainer = registerVal8
	arg0.columnHeaders = {}
	local registerVal11 = Engine.GameModeIsMode(CoD.GAMEMODE_LOCAL_SPLITSCREEN)
	if registerVal11 == true then
	end
	for index11=0.000000, ((5.000000 - 2.000000) - 1.000000), 1.000000 do
		local registerVal15 = LUI.UIText.new()
		registerVal15:setLeftRight(true, false, (((((190.000000 - 27.000000) + 337.000000) - 18.000000) - (27.000000 * 2.000000)) - 82.000000), ((((((190.000000 - 27.000000) + 337.000000) - 18.000000) - (27.000000 * 2.000000)) - 82.000000) + 66.000000))
		registerVal15:setTopBottom(false, false, (-CoD.textSize["ExtraSmall"] / 2.000000), (CoD.textSize["ExtraSmall"] / 2.000000))
		registerVal15:setFont(CoD.fonts["ExtraSmall"])
		registerVal15:setAlignment(LUI.Alignment.Center)
		registerVal15:setRGB(CoD.offWhite.r, CoD.offWhite.g, CoD.offWhite.b)
		registerVal15:setAlpha(0.500000)
		if CoD.isZombie then
			registerVal15:setText(Engine.Localize(__FUNC_953_(Engine.GetScoreBoardColumnName(arg1, index11))))
		else
			registerVal15:setText(Engine.Localize(Engine.GetScoreBoardColumnName(arg1, index11)))
		end
		registerVal8:addElement(registerVal15)
		arg0.columnHeaders[(index11 + 1.000000)] = registerVal15
	end
	registerVal11 = Dvar.cg_ScoresPing_Interval:get()
	if registerVal11 == 1.000000 and not arg2 then
		local registerVal12 = LUI.UIText.new()
		registerVal12:setLeftRight(true, false, ((((((190.000000 - 27.000000) + 337.000000) - 18.000000) - (27.000000 * 2.000000)) - 82.000000) + 66.000000), ((((((((190.000000 - 27.000000) + 337.000000) - 18.000000) - (27.000000 * 2.000000)) - 82.000000) + 66.000000) + 27.000000) + 5.000000))
		registerVal12:setTopBottom(false, false, (-CoD.textSize["ExtraSmall"] / 2.000000), (CoD.textSize["ExtraSmall"] / 2.000000))
		registerVal12:setFont(CoD.fonts["ExtraSmall"])
		registerVal12:setAlignment(LUI.Alignment.Right)
		registerVal12:setRGB(CoD.offWhite.r, CoD.offWhite.g, CoD.offWhite.b)
		registerVal12:setAlpha(0.500000)
		registerVal12:setText(Engine.Localize("CGAME_SB_PING"))
		registerVal8:addElement(registerVal12)
	end
	arg0.teamElements = {}
	registerVal11 = Engine.GetGametypeSetting("teamCount")
	registerVal12 = Dvar.ui_gametype:get()
	if CoD.isZombie and registerVal12 == CoD.Zombie.GAMETYPE_ZCLEANSED then
	end
	if arg2 then
		registerVal12 = Engine.GetAARScoreboard(arg1)
	end
	for index12=1.000000, registerVal12.teamCount, 1.000000 do
		local registerVal16 = nil()
		table.insert(arg0.teamElements, registerVal16)
		arg0.scoreboardContainer:addElement(registerVal16)
	end
	local registerVal13 = Engine.GameModeIsMode(CoD.GAMEMODE_LOCAL_SPLITSCREEN)
	registerVal13 = Dvar.ui_gametype:get()
	if registerVal13 == true and CoD.isZombie then
		if registerVal13 == CoD.Zombie.GAMETYPE_ZGRIEF or registerVal13 == CoD.Zombie.GAMETYPE_ZCLEANSED then
		end
	end
	arg0.rows = {}
	for index13=1.000000, 8.000000, 1.000000 do
		local registerVal17 = CoD.ScoreboardRow.new(arg1, index13)
		arg0.scoreboardContainer:addElement(registerVal17)
		table.insert(arg0.rows, registerVal17)
	end
	if not arg0.frontEndOnly then
		registerVal13 = Engine.IsDemoPlaying()
		if registerVal13 then
			registerVal13 = CoD.ButtonPrompt.new("primary", "", arg0, "button_prompt_spectate_demo_player")
			arg0.spectatePlayerButtonPrompt = registerVal13
		else
			registerVal15 = Engine.Localize("MENU_MUTE")
			registerVal13 = CoD.ButtonPrompt.new("alt1", registerVal15, arg0, "button_prompt_toggle_mute")
			arg0.muteButtonPrompt = registerVal13
		end
		registerVal13 = Engine.IsDemoPlaying()
		if registerVal13 then
			registerVal13 = CoD.ButtonPrompt.new("alt1", "", arg0, "button_prompt_switch_scoreboard_mode", false, nil, false, nil, "S")
			arg0.switchScoreboardMode = registerVal13
		end
		registerVal15 = Engine.Localize("MENU_LB_VIEW_PLAYER_CARD")
		registerVal13 = CoD.ButtonPrompt.new("alt2", registerVal15, arg0, "button_prompt_show_gamercard", false, nil, false, nil, "P")
		arg0.showGamerCardButtonPrompt = registerVal13
	end
	nil(arg0)
end

CreateScoreBoardBody = __FUNC_1100_
local function __FUNC_2538_(arg0, arg1)
	if arg0.spectatePlayerButtonPrompt then
		arg0.spectatePlayerButtonPrompt:processEvent(arg1)
	end
	if arg0.muteButtonPrompt then
		arg0.muteButtonPrompt:processEvent(arg1)
	end
	arg0:dispatchEventToChildren(arg1)
end

local function __FUNC_263D_(arg0)
	if CoD.isZombie == true then
		local registerVal1 = CoD.Zombie.IsDLCMap(CoD.Zombie.DLC2Maps)
		registerVal1 = CoD.Zombie.IsDLCMap(CoD.Zombie.DLC4Maps)
		registerVal1 = Dvar.ui_gametype:get()
		if registerVal1 ~= CoD.Zombie.GAMETYPE_ZCLASSIC then
		end
		registerVal1 = CoD.Zombie.GetUIMapName()
		if registerVal1 ~= CoD.Zombie.MAP_ZM_ZOD then
		end
	end
	registerVal1 = Engine.GameModeIsMode(CoD.GAMEMODE_LOCAL_SPLITSCREEN)
	if registerVal1 == true then
	end
	Unhandled OpCode: HKS_OPCODE_SETUPVAL_R1 (1, 10, 0, 0x4E)
	if registerVal1 ~= true and registerVal1 == true or true == true then
		if true == true then
		end
	end
	registerVal1 = Engine.IsSplitscreen()
	if registerVal1 then
	end
	registerVal1 = CoD.Menu.NewFromState("Scoreboard")
	registerVal1:setLeftRight(false, false, ((-CoD.SDSafeWidth / 2.000000) + (((((2.000000 * 66.000000) + 82.000000) + 18.000000) + (27.000000 * 3.000000)) / 2.000000)), ((CoD.SDSafeWidth / 2.000000) - (((((2.000000 * 66.000000) + 82.000000) + 18.000000) + (27.000000 * 3.000000)) / 2.000000)))
	registerVal1:setTopBottom(false, false, ((-CoD.SDSafeHeight / 2.000000) + ((registerVal41 + 75.000000) + 27.000000)), (CoD.SDSafeHeight / 2.000000))
	registerVal1:setOwner(arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Scoreboard.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	if registerVal1 == true or registerVal1 == true then
		if true == true then
			local registerVal4 = Engine.GameModeIsMode(CoD.GAMEMODE_LOCAL_SPLITSCREEN)
			if registerVal4 == true then
			end
			if registerVal1 == true then
				CoD.ScoreboardCraftablesZombie.new(registerVal1, (((((190.000000 - 27.000000) + 337.000000) - 18.000000) - (27.000000 * 2.000000)) - 82.000000))
			else
				if registerVal1 == true then
					CoD.ScoreboardCraftablesTombZombie.new(registerVal1, (((((190.000000 - 27.000000) + 337.000000) - 18.000000) - (27.000000 * 2.000000)) - 82.000000))
				end
			end
		end
	end
	CreateScoreBoardBody(registerVal1, arg0)
	registerVal1.close = nil
	registerVal1:registerEventHandler("close_all_ingame_menus", registerVal1.close)
	registerVal1:registerEventHandler("close_scoreboard_menu", registerVal1.close)
	registerVal1:registerEventHandler("row_selected", nil)
	registerVal1:registerEventHandler("update_scoreboard", nil)
	registerVal1:registerEventHandler("update_scoreboard_columns", nil)
	registerVal1:registerEventHandler("button_prompt_show_gamercard", nil)
	registerVal1:registerEventHandler("button_prompt_toggle_mute", nil)
	registerVal1:registerEventHandler("button_prompt_spectate_demo_player", SwitchPlayer)
	registerVal1:registerEventHandler("button_prompt_switch_scoreboard_mode", SwitchScoreboardMode)
	registerVal1:registerEventHandler("fullscreen_viewport_start", FullscreenStart)
	registerVal1:registerEventHandler("fullscreen_viewport_stop", FullscreenStop)
	if CoD.isPC then
		registerVal1:registerEventHandler("input_source_changed", __FUNC_2538_)
	end
	return registerVal1
end

LUI.createMenu.Scoreboard = __FUNC_263D_
local function __FUNC_305A_(arg0, arg1)
	arg0.focusableRowIndex = nil
	arg0.selectedClientNum = nil
	arg0.selectedScoreboardIndex = nil
	CoD.Menu.close(arg0)
end

local function __FUNC_3136_(arg0)
	local registerVal1 = LUI.UIElement.new()
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setUseStencil(true)
	registerVal1:setAlpha(0.000000)
	local registerVal2 = Engine.GameModeIsMode(CoD.GAMEMODE_LOCAL_SPLITSCREEN)
	if registerVal2 == false then
		registerVal2 = LUI.UIImage.new()
		registerVal2:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2:setImage(RegisterMaterial(CoD.MPZM("menu_mp_cac_grad_stretch", "menu_zm_cac_grad_stretch")))
		registerVal2:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2:setAlpha(0.500000)
		registerVal1:addElement(registerVal2)
	end
	registerVal2 = Engine.GameModeIsMode(CoD.GAMEMODE_LOCAL_SPLITSCREEN)
	if registerVal2 == false then
		registerVal2 = LUI.UIImage.new()
		registerVal1.highlightGlow = registerVal2
		registerVal1.highlightGlow:setLeftRight(true, false, 2.000000, (((190.000000 - 27.000000) + 27.000000) - 2.000000))
		registerVal1.highlightGlow:setTopBottom(false, true, -45.000000, -2.000000)
		registerVal1.highlightGlow:setImage(RegisterMaterial(CoD.MPZM("menu_mp_cac_grad_stretch", "menu_zm_cac_grad_stretch")))
		registerVal1.highlightGlow:setAlpha(0.400000)
		registerVal1:addElement(registerVal1.highlightGlow)
	end
	registerVal2 = LUI.UIImage.new()
	registerVal1.background = registerVal2
	registerVal1.background:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1.background:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1.background:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1.background:setAlpha(0.700000)
	registerVal1:addElement(registerVal1.background)
	registerVal2 = Engine.GameModeIsMode(CoD.GAMEMODE_LOCAL_SPLITSCREEN)
	if registerVal2 == false then
		registerVal2 = LUI.UIImage.new()
		registerVal2:setLeftRight(true, false, 2.000000, (((190.000000 - 27.000000) + 27.000000) - 2.000000))
		registerVal2:setTopBottom(true, false, 2.000000, 9.000000)
		registerVal2:setImage(RegisterMaterial("white"))
		registerVal2:setAlpha(0.060000)
		registerVal1:addElement(registerVal2)
	end
	local registerVal5 = LUI.UIImage.new()
	registerVal1.factionIcon = registerVal5
	registerVal1.factionIcon:setLeftRight(true, false, (((((190.000000 - 27.000000) + 27.000000) - 2.000000) / 2.000000) - (128.000000 / 2.000000)), ((((((190.000000 - 27.000000) + 27.000000) - 2.000000) / 2.000000) - (128.000000 / 2.000000)) + 128.000000))
	registerVal1.factionIcon:setTopBottom(false, false, (-128.000000 / 2.000000), (128.000000 / 2.000000))
	registerVal1.factionIcon:setAlpha(0.700000)
	registerVal1:addElement(registerVal1.factionIcon)
	local registerVal6 = LUI.UIText.new()
	registerVal1.teamScore = registerVal6
	registerVal1.teamScore:setLeftRight(true, false, 5.000000, 5.000000)
	registerVal1.teamScore:setTopBottom(true, false, -4.000000, (CoD.textSize.Big - 4.000000))
	registerVal1.teamScore:setFont(CoD.fonts.Big)
	registerVal1.teamScore:setRGB(CoD.offWhite.r, CoD.offWhite.g, CoD.offWhite.b)
	registerVal1:addElement(registerVal1.teamScore)
	local registerVal7 = LUI.UIText.new()
	registerVal1.factionName = registerVal7
	registerVal1.factionName:setLeftRight(true, false, 5.000000, 5.000000)
	registerVal1.factionName:setTopBottom(true, false, 38.000000, (38.000000 + CoD.textSize.ExtraSmall))
	registerVal1.factionName:setFont(CoD.fonts.ExtraSmall)
	registerVal1.factionName:setRGB(CoD.offWhite.r, CoD.offWhite.g, CoD.offWhite.b)
	registerVal1:addElement(registerVal1.factionName)
	return registerVal1
end

local function __FUNC_3B0F_(arg0, arg1)
	if arg0.frontEndOnly then
		return 
	end
	arg0.focusableRowIndex = arg1.row.focusableRowIndex
	arg0.selectedClientNum = arg1.row.clientNum
	arg0.selectedScoreboardIndex = arg1.row.scoreboardIndex
	local registerVal3 = Engine.IsSplitscreen()
	if registerVal3 and arg0.forcedFullscreen ~= true then
		registerVal3 = Engine.GameModeIsMode(CoD.GAMEMODE_LOCAL_SPLITSCREEN)
		if not registerVal3 then
			if 9.000000 < arg0.focusableRowIndex then
				if arg0.focusableRowIndex < 13.000000 then
				else
				end
			end
		end
		arg0:setTopBottom(false, false, (((-CoD.SDSafeHeight / 2.000000) + registerVal41) - ((13.000000 - 9.000000) * 27.000000)), (CoD.SDSafeHeight / 2.000000))
	end
	registerVal3 = Engine.GetClientNum(arg0:getOwner())
	nil(arg0, registerVal3)
	if arg0.showGamerCardButtonPrompt ~= nil then
		local registerVal5 = arg1.row.playerName.gamertag:len()
		local registerVal6 = arg1.row.playerName.gamertag:sub(registerVal5, registerVal5)
		if 3.000000 < registerVal5 and registerVal6 == ")" then
			arg0.showGamerCardButtonPrompt:hide()
		else
			arg0.showGamerCardButtonPrompt:show()
		end
	end
end

local function __FUNC_3F82_(arg0, arg1)
	if arg0.frontEndOnly then
		return 
	end
	Engine.BlockGameFromKeyEvent()
	local registerVal3 = Engine.GetMatchScoreboardClientXuid(arg0.selectedClientNum)
	CoD.FriendPopup.SelectedPlayerXuid = registerVal3
	registerVal3 = Engine.GetFullGamertagForScoreboardIndex(arg0.selectedScoreboardIndex)
	CoD.FriendPopup.SelectedPlayerName = registerVal3
	if arg0.selectedClientNum and CoD.FriendPopup.SelectedPlayerXuid and CoD.FriendPopup.SelectedPlayerXuid ~= 0.000000 then
		local registerVal2 = arg0:openPopup("FriendPopup", arg1.controller)
		registerVal2:setClass(CoD.InGameMenu)
		registerVal2.isInGameMenu = true
	end
end

local function __FUNC_4266_(arg0, arg1)
	if arg0.frontEndOnly then
		return 
	end
	if arg0.selectedClientNum then
		local registerVal3 = arg0:getOwner()
		Engine.TogglePlayerMute(registerVal3, arg0.selectedClientNum)
		Engine.BlockGameFromKeyEvent()
		nil(arg0)
	end
end

local function __FUNC_4390_(arg0, arg1)
	if arg0.frontEndOnly then
		return 
	end
	if arg0.selectedClientNum then
		Engine.Exec(arg0.m_ownerController, ("demo_switchplayer 0 " .. arg0.selectedClientNum))
		Engine.BlockGameFromKeyEvent()
		nil(arg0)
	end
end

SwitchPlayer = __FUNC_4390_
local function __FUNC_44E3_(arg0, arg1)
	if arg0.frontEndOnly then
		return 
	end
	if arg0.mode == "game" then
		arg0.mode = "theater"
	else
		arg0.mode = "game"
	end
	Engine.BlockGameFromKeyEvent()
	nil(arg0)
end

SwitchScoreboardMode = __FUNC_44E3_
function FullscreenStart(arg0, arg1)
	arg0.forcedFullscreen = true
	arg0:dispatchEventToChildren(arg1)
end

function FullscreenStop(arg0, arg1)
	arg0.forcedFullscreen = false
	arg0:dispatchEventToChildren(arg1)
end

local function __FUNC_46C5_(arg0, arg1)
	if arg0.frontEndOnly then
		return 
	end
	local registerVal2 = Engine.IsDemoPlaying()
	if registerVal2 then
		if arg0.mode == "theater" then
			arg0.switchScoreboardMode:setText(Engine.Localize("MENU_VIEW_GAME_SCOREBOARD"))
			arg0.spectatePlayerButtonPrompt:close()
		else
			arg0.switchScoreboardMode:setText(Engine.Localize("MENU_VIEW_THEATER_PARTY"))
			registerVal2 = Engine.GetFullGamertagForScoreboardIndex(arg0.selectedScoreboardIndex)
			arg0.spectatePlayerButtonPrompt:setText(Engine.Localize("MENU_SPECTATE_DEMO_PLAYER", registerVal2))
			local registerVal3 = Engine.IsDemoClipPlaying()
			if arg0.selectedScoreboardIndex ~= nil and not registerVal3 then
				arg0:addLeftButtonPrompt(arg0.spectatePlayerButtonPrompt)
			end
		end
		arg0:addRightButtonPrompt(arg0.switchScoreboardMode)
	else
		if arg0.selectedClientNum and arg0.selectedClientNum ~= arg1 then
			local registerVal4 = arg0:getOwner()
			registerVal3 = Engine.IsPlayerMuteToggled(registerVal4, arg0.selectedClientNum)
		end
		registerVal3 = Engine.GameModeIsMode(CoD.GAMEMODE_LOCAL_SPLITSCREEN)
		if registerVal3 ~= nil and not registerVal3 then
			if registerVal3 then
				arg0.muteButtonPrompt:setText(Engine.Localize("MENU_UNMUTE"))
			else
				arg0.muteButtonPrompt:setText(Engine.Localize("MENU_MUTE"))
			end
			arg0:addLeftButtonPrompt(arg0.muteButtonPrompt)
		else
			arg0.muteButtonPrompt:close()
		end
		registerVal3 = Engine.IsUserGuest(arg0.m_ownerController)
		registerVal3 = Engine.IsSplitscreen()
		registerVal3 = Engine.SessionModeIsMode(CoD.SESSIONMODE_OFFLINE)
		registerVal3 = Engine.SessionModeIsMode(CoD.SESSIONMODE_SYSTEMLINK)
		if not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
			registerVal3 = Engine.GetLobbyClientCount(Enum.LobbyType.LOBBY_TYPE_GAME)
			if CoD.isZombie == true and registerVal3 <= 1.000000 then
			end
		end
		if true and not CoD.isPC then
			arg0:addRightButtonPrompt(arg0.showGamerCardButtonPrompt)
		else
			arg0.showGamerCardButtonPrompt:close()
		end
	end
end

local function __FUNC_4E9F_(arg0)
	local registerVal2 = Dvar.ui_gametype:get()
	if CoD.isZombie and registerVal2 == CoD.Zombie.GAMETYPE_ZCLEANSED then
		local registerVal3 = arg0:getOwner()
		registerVal2 = Engine.GetTeamPositions(registerVal3, 2.000000)
	else
		registerVal2 = Engine.GetTeamPositions(arg0:getOwner())
	end
	if arg0.frontEndOnly then
		registerVal3 = arg0:getOwner()
		local registerVal4 = Engine.GetAARScoreboard(arg0:getOwner())
		registerVal2 = Engine.GetTeamPositions(registerVal3, registerVal4.teamCount)
	end
	arg0.headerTitle:setText(__FUNC_A5F_(arg0))
	arg0.columnHeaderContainer:setAlpha(1.000000)
	local registerVal9, registerVal10, registerVal11 = ipairs(registerVal2)
	for index12,value13 in registerVal9, registerVal10, registerVal11 do
		local registerVal14 = Engine.GetMatchScoreboardClientCount(value13.team)
		value13.numClients = registerVal14
		if 0.000000 < value13.numClients then
		end
	end
	registerVal10 = CoD.MPZM(2.000000, 4.000000)
	registerVal11 = Engine.GameModeIsMode(CoD.GAMEMODE_LOCAL_SPLITSCREEN)
	if registerVal11 == true then
	end
	registerVal11 = math.floor((registerVal44 / #CoD.GAMEMODE_LOCAL_SPLITSCREEN))
	if value13.numClients <= registerVal11 then
		local registerVal12 = math.max(registerVal10, value13.numClients)
	end
	if not arg0.frontEndOnly then
		local registerVal13 = Engine.GetClientNum(arg0:getOwner())
	end
	local registerVal18, registerVal19, registerVal20 = ipairs(registerVal2)
	for index21,value22 in registerVal18, registerVal19, registerVal20 do
		if arg0.teamElements[1.000000] and 0.000000 < value22.numClients then
			local registerVal25 = Engine.GetFactionForTeam(value22.team)
			if arg0.frontEndOnly then
				registerVal25 = Engine.GetFactionForTeam(value22.team)
			end
			if registerVal25 then
				registerVal25, registerVal26, registerVal27 = Engine.GetFactionColor(registerVal25)
				if value22.team == Enum.team_t.TEAM_FREE then
				end
				if CoD.isZombie == true then
					local registerVal28 = Engine.DvarString(nil, "ui_zm_gamemodegroup")
					if registerVal28 == CoD.Zombie.GAMETYPEGROUP_ZCLASSIC then
					else
						local registerVal29 = Dvar.ui_gametype:get()
						if registerVal28 == CoD.Zombie.GAMETYPEGROUP_ZSURVIVAL and registerVal29 == CoD.Zombie.GAMETYPE_ZCLEANSED and value22.team == Enum.team_t.TEAM_AXIS then
						end
					end
				end
				local registerVal35 = math.max(registerVal12, value22.numClients)
				nil(arg0.teamElements[1.000000], registerVal25, CoD.Zombie.SingleTeamColor.r, CoD.Zombie.SingleTeamColor.g, CoD.Zombie.SingleTeamColor.b, value22, registerVal35, (32.000000 + 4.000000))
				for index28=0.000000, (value22.numClients - 1.000000), 1.000000 do
					local registerVal33 = arg0.rows[1.000000]:setClient(CoD.Zombie.SingleTeamColor.r, CoD.Zombie.SingleTeamColor.g, CoD.Zombie.SingleTeamColor.b, ((32.000000 + 4.000000) + 2.000000), arg0.mode, registerVal13, 1.000000, index28, value22, arg0.frontEndOnly)
					if arg0.rows[1.000000].clientNum == registerVal13 then
					end
					if not arg0.frontEndOnly then
						if 1.000000 == arg0.focusableRowIndex then
							arg0.rows[1.000000]:processEvent(LUI.UIButton.GainFocusEvent)
						else
							if arg0.rows[1.000000] ~= arg0.rows[1.000000] or arg0.focusableRowIndex then
								registerVal33 = arg0.rows[1.000000]:isInFocus()
								if registerVal33 then
									arg0.rows[1.000000]:processEvent(LUI.UIButton.LoseFocusEvent)
								end
							end
						end
					end
					arg0.rows[1.000000].navigation.up = nil
					if nil then
						nil.navigation.down = arg0.rows[1.000000]
					end
					if not nil then
					end
				end
				for index28=(value22.numClients + 1.000000), registerVal12, 1.000000 do
					registerVal33 = arg0.rows[(1.000000 + 1.000000)]:isInFocus()
					if registerVal33 and not arg0.frontEndOnly then
						arg0.rows[(1.000000 + 1.000000)]:processEvent(LUI.UIButton.LoseFocusEvent)
					end
					registerVal33 = arg0.rows[(1.000000 + 1.000000)]:setClient(CoD.Zombie.SingleTeamColor.r, CoD.Zombie.SingleTeamColor.g, CoD.Zombie.SingleTeamColor.b, registerVal33, arg0.mode)
				end
			end
		end
	end
	if arg0.rows[1.000000] then
		if arg0.rows[1.000000] ~= arg0.rows[1.000000] then
			arg0.rows[1.000000].navigation.up = arg0.rows[1.000000]
			arg0.rows[1.000000].navigation.down = arg0.rows[1.000000]
		else
			arg0.rows[1.000000].navigation.up = nil
			arg0.rows[1.000000].navigation.down = nil
		end
	end
	if not arg0.rows[1.000000] and arg0.rows[1.000000] and not arg0.frontEndOnly then
		arg0.rows[1.000000]:processEvent(LUI.UIButton.GainFocusEvent)
	end
	arg0.teamElements[(1.000000 + 1.000000)]:setAlpha(0.000000)
	registerVal18 = Engine.IsSplitscreen()
	if registerVal2 or arg0.forcedFullscreen == true then
		if ((1.000000 + 1.000000) + 1.000000) <= 13.000000 then
			arg0:setTopBottom(false, false, ((-460.000000 / 2.000000) + registerVal41), (460.000000 / 2.000000))
		else
			if not arg0.frontEndOnly then
				arg0:setTopBottom(false, false, ((-CoD.SDSafeHeight / 2.000000) + registerVal41), (CoD.SDSafeHeight / 2.000000))
			end
		end
	end
	arg0.rows[((1.000000 + 1.000000) + 1.000000)]:setAlpha(0.000000)
	if not arg0.frontEndOnly then
		arg0.leftButtonPromptBar:setTopBottom(true, false, (registerVal33 + 4.000000), ((registerVal33 + 4.000000) + CoD.ButtonPrompt.Height))
		arg0.rightButtonPromptBar:setTopBottom(true, false, (registerVal33 + 4.000000), ((registerVal33 + 4.000000) + CoD.ButtonPrompt.Height))
	end
	__FUNC_46C5_(arg0, registerVal13)
end

UpdateGameScoreboard = __FUNC_4E9F_
local function __FUNC_5E95_(arg0)
	arg0.headerTitle:setText(__FUNC_A5F_(arg0))
	arg0.columnHeaderContainer:setAlpha(0.000000)
	local registerVal9 = Engine.GetLobbyClientCount(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal11 = CoD.MPZM(2.000000, 4.000000)
	local registerVal12 = math.max(registerVal11, registerVal9)
	if arg0.focusableRowIndex == nil then
		arg0.focusableRowIndex = 1.000000
	end
	if registerVal9 < arg0.focusableRowIndex then
		arg0.focusableRowIndex = registerVal9
	end
	local registerVal17 = Engine.GetPlayersInLobby()
	local registerVal25 = math.max(registerVal12, registerVal9)
	nil(arg0.teamElements[1.000000], registerVal17[arg0.focusableRowIndex].xuid, CoD.offWhite.r, CoD.offWhite.g, CoD.offWhite.b, nil, registerVal25, (32.000000 + 4.000000))
	for index18=0.000000, (registerVal9 - 1.000000), 1.000000 do
		local registerVal23 = arg0.rows[1.000000]:setClient(CoD.offWhite.r, CoD.offWhite.g, CoD.offWhite.b, (((32.000000 + 4.000000) + 4.000000) - 2.000000), arg0.mode, clientNum, 1.000000, index18, nil, arg0.frontEndOnly)
		if 1.000000 == 1.000000 then
		end
		if not arg0.frontEndOnly then
			if 1.000000 == arg0.focusableRowIndex then
				arg0.rows[1.000000]:processEvent(LUI.UIButton.GainFocusEvent)
			else
				if arg0.rows[1.000000][1.000000] ~= arg0.rows[1.000000] or arg0.focusableRowIndex then
					registerVal23 = arg0.rows[1.000000]:isInFocus()
					if registerVal23 then
						arg0.rows[1.000000]:processEvent(LUI.UIButton.LoseFocusEvent)
					end
				end
			end
		end
		arg0.rows[1.000000].navigation.up = nil
		if nil then
			nil.navigation.down = arg0.rows[1.000000]
		end
		if not nil then
		end
	end
	for index18=(registerVal9 + 1.000000), registerVal12, 1.000000 do
		registerVal23 = arg0.rows[(1.000000 + 1.000000)]:isInFocus()
		if registerVal23 and not arg0.frontEndOnly then
			arg0.rows[(1.000000 + 1.000000)]:processEvent(LUI.UIButton.LoseFocusEvent)
		end
		registerVal23 = arg0.rows[(1.000000 + 1.000000)]:setClient(CoD.offWhite.r, CoD.offWhite.g, CoD.offWhite.b, registerVal23, arg0.mode)
	end
	if arg0.rows[1.000000] then
		if arg0.rows[1.000000] ~= arg0.rows[1.000000] then
			arg0.rows[1.000000].navigation.up = arg0.rows[1.000000]
			arg0.rows[1.000000].navigation.down = arg0.rows[1.000000]
		else
			arg0.rows[1.000000].navigation.up = nil
			arg0.rows[1.000000].navigation.down = nil
		end
	end
	if not arg0.rows[1.000000] and arg0.rows[1.000000][1.000000] and not arg0.frontEndOnly then
		arg0.rows[1.000000][1.000000]:processEvent(LUI.UIButton.GainFocusEvent)
	end
	arg0.teamElements[(1.000000 + 1.000000)]:setAlpha(0.000000)
	local registerVal18 = Engine.IsSplitscreen()
	if not arg0.teamElements or arg0.forcedFullscreen ~= true then
		if ((1.000000 + 1.000000) + 1.000000) <= 13.000000 then
			arg0:setTopBottom(false, false, ((-460.000000 / 2.000000) + registerVal41), (460.000000 / 2.000000))
		else
			if not arg0.frontEndOnly then
				arg0:setTopBottom(false, false, ((-CoD.SDSafeHeight / 2.000000) + registerVal41), (CoD.SDSafeHeight / 2.000000))
			end
		end
	end
	arg0.rows[((1.000000 + 1.000000) + 1.000000)]:setAlpha(0.000000)
	if not arg0.frontEndOnly then
		arg0.leftButtonPromptBar:setTopBottom(true, false, registerVal23, (registerVal23 + CoD.ButtonPrompt.Height))
		arg0.rightButtonPromptBar:setTopBottom(true, false, registerVal23, (registerVal23 + CoD.ButtonPrompt.Height))
	end
end

UpdateTheaterScoreboard = __FUNC_5E95_
local function __FUNC_6841_(arg0)
	if arg0.mode == "theater" and not arg0.frontEndOnly then
		UpdateTheaterScoreboard(arg0)
	else
		UpdateGameScoreboard(arg0)
	end
end

local function __FUNC_6924_(arg0)
	local registerVal2, registerVal3, registerVal4 = ipairs(arg0.columnHeaders)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		if CoD.isZombie then
			value6:setText(Engine.Localize(__FUNC_953_(Engine.GetScoreBoardColumnName(arg0.m_ownerController, (index5 - 1.000000)))))
		else
			value6:setText(Engine.Localize(Engine.GetScoreBoardColumnName(arg0.m_ownerController, (index5 - 1.000000))))
		end
	end
	registerVal2, registerVal3, registerVal4 = ipairs(arg0.rows)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		value6:addColumns(arg0.m_ownerController, index5)
	end
end

local function __FUNC_6B1C_(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
	arg0:setTopBottom(true, false, arg7, (arg7 + ((arg6 * 27.000000) + ((arg6 + 1.000000) * 2.000000))))
	arg0:setAlpha(1.000000)
	if arg5 == nil then
		if CoD.isZombie == false then
			arg0.factionIcon:setupPlayerEmblemByXUID(arg1)
			arg0.factionIcon:setAlpha(0.700000)
		else
			arg0.factionIcon:setAlpha(0.000000)
		end
		arg0.factionName:setText("")
		arg0.teamScore:setAlpha(0.000000)
	else
		if arg5.team ~= Enum.team_t.TEAM_FREE then
			if arg0.highlightGlow then
				arg0.highlightGlow:setRGB(arg2, arg3, arg4)
				arg0.highlightGlow:setTopBottom(false, true, -2.000000, (-((arg6 * 27.000000) + ((arg6 + 1.000000) * 2.000000)) / 2.000000))
			end
			if arg5.leagueTeamID and arg5.leagueTeamID ~= "0" then
				arg0.factionIcon:setupLeagueEmblem(arg5.leagueTeamID)
				arg0.factionIcon:setAlpha(0.700000)
			else
				arg0.factionIcon:setImage(RegisterMaterial(("faction_" .. arg1)))
				arg0.factionIcon:setupUIImage()
				arg0.factionIcon:setAlpha(0.700000)
			end
			local registerVal9 = CoD.MPZM("MPUI_", "ZMUI_")
			local registerVal10 = Engine.Localize((registerVal9 .. arg1 .. "_SHORT_CAPS"))
			local registerVal11 = Engine.GameModeIsMode(CoD.GAMEMODE_LEAGUE_MATCH)
			if registerVal11 then
				registerVal11 = Dvar.g_customTeamName_Allies:get()
				if arg5.team == Enum.team_t.TEAM_ALLIES and registerVal11 ~= "" then
					registerVal11 = Engine.ToUpper(Dvar.g_customTeamName_Allies:get())
				else
					registerVal11 = Dvar.g_customTeamName_Axis:get()
					if arg5.team == Enum.team_t.TEAM_AXIS and registerVal11 ~= "" then
						registerVal11 = Engine.ToUpper(Dvar.g_customTeamName_Axis:get())
					end
				end
			end
			arg0.factionName:setText(registerVal11)
			arg0.teamScore:setText(arg5.score)
			if CoD.isZombie == true then
				registerVal11 = Engine.DvarString(nil, "ui_zm_gamemodegroup")
				if registerVal11 == CoD.Zombie.GAMETYPEGROUP_ZCLASSIC then
					local registerVal12 = CoD.Zombie.GetUIMapName()
					if CoD.Zombie.MAP_ZM_TOMB == registerVal12 then
						arg0.factionIcon:setImage(RegisterMaterial("faction_tomb"))
					else
						if CoD.Zombie.MAP_ZM_BURIED == registerVal12 then
							arg0.factionIcon:setImage(RegisterMaterial("faction_buried"))
						else
							if CoD.Zombie.MAP_ZM_PRISON == registerVal12 then
								arg0.factionIcon:setImage(RegisterMaterial("faction_prison"))
							else
								if CoD.Zombie.MAP_ZM_HIGHRISE == registerVal12 then
									arg0.factionIcon:setImage(RegisterMaterial("faction_highrise"))
								else
									arg0.factionIcon:setImage(RegisterMaterial("faction_tranzit"))
								else
									if registerVal11 == CoD.Zombie.GAMETYPEGROUP_ZSURVIVAL then
										registerVal12 = Dvar.ui_gametype:get()
										arg0.factionIcon:setImage(RegisterMaterial("faction_zombie"))
										if registerVal12 == CoD.Zombie.GAMETYPE_ZCLEANSED and arg5.team == Enum.team_t.TEAM_AXIS and registerVal11 == CoD.Zombie.GAMETYPEGROUP_ZENCOUNTER then
											registerVal12 = Dvar.ui_gametype:get()
											if registerVal12 == CoD.Zombie.GAMETYPE_ZCLEANSED and arg5.team == Enum.team_t.TEAM_AXIS then
												arg0.factionIcon:setImage(RegisterMaterial("faction_zombie"))
											else
												registerVal12 = Dvar.ui_gametype:get()
												if registerVal12 == CoD.Zombie.GAMETYPE_ZMEAT and arg5.team == Enum.team_t.TEAM_AXIS then
													arg0.factionIcon:setImage(RegisterMaterial("faction_cia"))
												end
											end
										end
									end
								end
							end
						end
					end
				end
				arg0.factionName:setAlpha(0.000000)
				arg0.teamScore:setAlpha(0.000000)
			else
				registerVal9 = CoD.MPZM(CoD.SCOREBOARD_SORT_DEFAULT, CoD.SCOREBOARD_SORT_CLIENTNUM)
				registerVal10 = Dvar.ui_gametype:get()
				if CoD.isZombie and registerVal10 == CoD.Zombie.GAMETYPE_ZCLEANSED then
				end
				registerVal10, registerVal11 = Engine.GetMatchScoreboardIndexAndClientNumForTeam(0.000000, arg5.team, CoD.SCOREBOARD_SORT_DEFAULT)
				registerVal12 = Engine.GetCalloutPlayerData(nil, registerVal11)
				if arg0.highlightGlow then
					arg0.highlightGlow:setRGB(arg2, arg3, arg4)
					arg0.highlightGlow:setTopBottom(false, true, -2.000000, (-((arg6 * 27.000000) + ((arg6 + 1.000000) * 2.000000)) / 2.000000))
				end
				arg0.factionIcon:setAlpha(0.700000)
				arg0.factionName:setText(registerVal12.playerName)
				arg0.teamScore:setAlpha(1.000000)
				arg0.teamScore:setText(Engine.GetScoreboardColumnForScoreboardIndex(registerVal10, 0.000000))
			end
		end
	end
end

function CoD.ScoreboardRow.GetRowTextColor(arg0)
	if CoD.isZombie == true then
		return CoD.Zombie.PlayerColors[(((arg0 - 1.000000) % 4.000000) + 1.000000)].r, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
	else
		return CoD.offWhite.r, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
	end
end

function CoD.ScoreboardRow.removeColumns(arg0)
	local registerVal1, registerVal2, registerVal3 = ipairs(arg0.columnBackgrounds)
	for index4,value5 in registerVal1, registerVal2, registerVal3 do
		value5:close()
	end
	registerVal1, registerVal2, registerVal3 = ipairs(arg0.columns)
	for index4,value5 in registerVal1, registerVal2, registerVal3 do
		value5:close()
	end
	arg0.columnBackgrounds = {}
	arg0.columns = {}
end

local function __FUNC_7D3F_(arg0, arg1, arg2, arg3)
	arg0:removeColumns()
	local registerVal6 = Engine.GameModeIsMode(CoD.GAMEMODE_LOCAL_SPLITSCREEN)
	if registerVal6 == true then
	end
	local registerVal7, registerVal8, registerVal9 = CoD.ScoreboardRow.GetRowTextColor(arg2)
	for index10=1.000000, (5.000000 - 2.000000), 1.000000 do
		local registerVal14 = Engine.GetScoreBoardColumnName(arg1, (index10 - 1.000000))
		if registerVal14 ~= "" then
			registerVal14 = Engine.GameModeIsMode(CoD.GAMEMODE_LOCAL_SPLITSCREEN)
			if registerVal14 == false and (index10 % 2.000000) == 1.000000 then
				registerVal14 = LUI.UIImage.new()
				registerVal14:setLeftRight(true, false, (((337.000000 - 18.000000) - (27.000000 * 2.000000)) - 82.000000), ((((337.000000 - 18.000000) - (27.000000 * 2.000000)) - 82.000000) + 66.000000))
				registerVal14:setTopBottom(true, true, 0.000000, 0.000000)
				registerVal14:setAlpha(0.200000)
				arg0:addElement(registerVal14)
				table.insert(arg0.columnBackgrounds, registerVal14)
			end
			registerVal14 = LUI.UIText.new()
			registerVal14:setLeftRight(true, false, (((337.000000 - 18.000000) - (27.000000 * 2.000000)) - 82.000000), ((((337.000000 - 18.000000) - (27.000000 * 2.000000)) - 82.000000) + 66.000000))
			registerVal14:setTopBottom(false, false, (-CoD.textSize["ExtraSmall"] / 2.000000), (CoD.textSize["ExtraSmall"] / 2.000000))
			registerVal14:setFont(arg3)
			registerVal14:setAlignment(LUI.Alignment.Center)
			registerVal14:setRGB(registerVal7, registerVal8, registerVal9)
			arg0:addElement(registerVal14)
			arg0.columns[index10] = registerVal14
		end
	end
	return ((((337.000000 - 18.000000) - (27.000000 * 2.000000)) - 82.000000) + 66.000000)
end

CoD.ScoreboardRow.addColumns = __FUNC_7D3F_
local function __FUNC_81F2_(arg0, arg1)
	local registerVal2, registerVal3, registerVal4 = CoD.ScoreboardRow.GetRowTextColor(arg1)
	local registerVal5 = LUI.UIElement.new()
	registerVal5:setClass(CoD.ScoreboardRow)
	registerVal5:makeFocusable()
	registerVal5:setLeftRight(true, true, (190.000000 - 27.000000), 0.000000)
	registerVal5:setAlpha(0.000000)
	local registerVal6 = Engine.GameModeIsMode(CoD.GAMEMODE_LOCAL_SPLITSCREEN)
	if registerVal6 == false then
		registerVal6 = LUI.UIImage.new()
		registerVal6:setLeftRight(true, true, 27.000000, -35.000000)
		registerVal6:setTopBottom(true, false, 0.000000, 7.000000)
		registerVal6:setImage(RegisterMaterial("white"))
		registerVal6:setAlpha(0.060000)
		registerVal5:addElement(registerVal6)
	end
	local registerVal7 = LUI.UIImage.new()
	registerVal5.statusIcon = registerVal7
	registerVal5.statusIcon:setLeftRight(true, false, 0.000000, (0.000000 + 27.000000))
	registerVal5.statusIcon:setTopBottom(false, false, (-27.000000 / 2.000000), (27.000000 / 2.000000))
	registerVal5.statusIcon:setAlpha(0.000000)
	registerVal5:addElement(registerVal5.statusIcon)
	local registerVal9 = Engine.GameModeIsMode(CoD.GAMEMODE_LOCAL_SPLITSCREEN)
	if registerVal9 == false and not CoD.isZombie then
		registerVal9 = LUI.UIText.new()
		registerVal5.rankText = registerVal9
		registerVal5.rankText:setLeftRight(true, false, (0.000000 + 27.000000), ((0.000000 + 27.000000) + 18.000000))
		registerVal5.rankText:setTopBottom(false, false, (-CoD.textSize["ExtraSmall"] / 2.000000), (CoD.textSize["ExtraSmall"] / 2.000000))
		registerVal5.rankText:setFont(CoD.fonts["ExtraSmall"])
		registerVal5.rankText:setAlignment(LUI.Alignment.Right)
		registerVal5.rankText:setRGB(registerVal2, registerVal3, registerVal4)
		registerVal5:addElement(registerVal5.rankText)
	end
	registerVal9 = Engine.GameModeIsMode(CoD.GAMEMODE_LOCAL_SPLITSCREEN)
	if registerVal9 == false then
		registerVal9 = LUI.UIImage.new()
		registerVal5.rankIcon = registerVal9
		registerVal5.rankIcon:setLeftRight(true, false, (((0.000000 + 27.000000) + 18.000000) + 2.000000), ((((0.000000 + 27.000000) + 18.000000) + 2.000000) + 27.000000))
		registerVal5.rankIcon:setTopBottom(false, false, (-27.000000 / 2.000000), (27.000000 / 2.000000))
		registerVal5.rankIcon:setAlpha(0.000000)
		registerVal5:addElement(registerVal5.rankIcon)
	end
	local registerVal10 = Engine.GameModeIsMode(CoD.GAMEMODE_LOCAL_SPLITSCREEN)
	if registerVal10 == true then
	end
	registerVal10 = LUI.UIText.new()
	registerVal5.playerName = registerVal10
	registerVal5.playerName:setLeftRight(true, false, (((((0.000000 + 27.000000) + 18.000000) + 2.000000) + 27.000000) + 4.000000), ((((((0.000000 + 27.000000) + 18.000000) + 2.000000) + 27.000000) + 4.000000) + 82.000000))
	registerVal5.playerName:setTopBottom(false, false, (-CoD.textSize["ExtraSmall"] / 2.000000), (CoD.textSize["ExtraSmall"] / 2.000000))
	registerVal5.playerName:setFont(CoD.fonts["ExtraSmall"])
	registerVal5.playerName:setRGB(registerVal2, registerVal3, registerVal4)
	registerVal5:addElement(registerVal5.playerName)
	registerVal10 = Engine.GameModeIsMode(CoD.GAMEMODE_LOCAL_SPLITSCREEN)
	if registerVal10 == false then
		registerVal10 = LUI.UIImage.new()
		registerVal5.voipIcon = registerVal10
		registerVal5.voipIcon:setLeftRight(true, false, ((((((0.000000 + 27.000000) + 18.000000) + 2.000000) + 27.000000) + 4.000000) + 82.000000), (((((((0.000000 + 27.000000) + 18.000000) + 2.000000) + 27.000000) + 4.000000) + 82.000000) + 27.000000))
		registerVal5.voipIcon:setTopBottom(false, false, (-27.000000 / 2.000000), (27.000000 / 2.000000))
		registerVal5.voipIcon:setAlpha(0.000000)
		registerVal5:addElement(registerVal5.voipIcon)
	end
	registerVal5.columnBackgrounds = {}
	registerVal5.columns = {}
	registerVal10 = registerVal5:addColumns(arg0, arg1, CoD.fonts["ExtraSmall"])
	registerVal10 = Engine.GameModeIsMode(CoD.GAMEMODE_LOCAL_SPLITSCREEN)
	if registerVal10 == false then
		registerVal10 = Dvar.cg_ScoresPing_Interval:get()
		if registerVal10 == 1.000000 then
			registerVal10 = LUI.UIText.new()
			registerVal5.pingValue = registerVal10
			registerVal5.pingValue:setLeftRight(true, false, (registerVal10 + 3.000000), ((registerVal10 + 3.000000) + 27.000000))
			registerVal5.pingValue:setTopBottom(false, false, (-CoD.textSize["ExtraSmall"] / 2.000000), (CoD.textSize["ExtraSmall"] / 2.000000))
			registerVal5.pingValue:setFont(CoD.fonts["ExtraSmall"])
			registerVal5.pingValue:setAlignment(LUI.Alignment.Right)
			registerVal5.pingValue:setRGB(registerVal2, registerVal3, registerVal4)
			registerVal5:addElement(registerVal5.pingValue)
		else
			registerVal10 = LUI.UIImage.new()
			registerVal5.pingBars = registerVal10
			registerVal5.pingBars:setLeftRight(true, false, (registerVal10 + 3.000000), ((registerVal10 + 3.000000) + 27.000000))
			registerVal5.pingBars:setTopBottom(false, false, (-27.000000 / 2.000000), (27.000000 / 2.000000))
			registerVal5:addElement(registerVal5.pingBars)
		end
	end
	local registerVal13 = Engine.GameModeIsMode(CoD.GAMEMODE_LOCAL_SPLITSCREEN)
	if registerVal13 == true then
	end
	registerVal13 = CoD.BorderT6.new(2.000000, CoD.BOIIOrange.r, CoD.BOIIOrange.g, CoD.BOIIOrange.b, 1.000000, -2.000000)
	registerVal5.border = registerVal13
	registerVal5.border:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5.border:setAlpha(0.000000)
	registerVal5:addElement(registerVal5.border)
	return registerVal5
end

CoD.ScoreboardRow.new = __FUNC_81F2_
local function __FUNC_8EE9_(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
	if arg5 ~= "theater" then
	end
	local registerVal21 = Engine.GameModeIsMode(CoD.GAMEMODE_LOCAL_SPLITSCREEN)
	if registerVal21 == true then
	end
	arg0:beginAnimation("move_row")
	arg0:setTopBottom(true, false, arg4, (arg4 + 27.000000))
	arg0:setAlpha(1.000000)
	if true then
		registerVal21, registerVal22, registerVal23 = ipairs(arg0.columnBackgrounds)
		for index24,value25 in registerVal21, registerVal22, registerVal23 do
			value25:setAlpha(0.000000)
		end
	else
		registerVal21, registerVal22, registerVal23 = ipairs(arg0.columnBackgrounds)
		for index24,value25 in registerVal21, registerVal22, registerVal23 do
			value25:setRGB(arg1, arg2, arg3)
			value25:setAlpha(0.200000)
		end
	end
	if arg8 then
		if true then
			registerVal21 = Engine.GetPlayersInLobby()
			arg0.clientNum = nil
			arg0.scoreboardIndex = nil
			if registerVal21[arg7].clantag ~= "" then
				registerVal22 = CoD.getClanTag(registerVal21[arg7].clantag)
			else
				registerVal21 = CoD.MPZM(CoD.SCOREBOARD_SORT_DEFAULT, CoD.SCOREBOARD_SORT_CLIENTNUM)
				registerVal22 = Dvar.ui_gametype:get()
				if CoD.isZombie and registerVal22 == CoD.Zombie.GAMETYPE_ZCLEANSED then
				end
				registerVal22, registerVal23 = Engine.GetMatchScoreboardIndexAndClientNumForTeam(arg8, arg9.team, CoD.SCOREBOARD_SORT_DEFAULT)
				arg0.clientNum = registerVal23
				arg0.scoreboardIndex = registerVal22
				registerVal22 = CoD.isOnlineGame()
				registerVal22 = Engine.GameModeIsMode(CoD.GAMEMODE_LEAGUE_MATCH)
				if registerVal22 and not registerVal22 then
					registerVal22 = Engine.GetRankForScoreboardIndex(registerVal22)
					registerVal22 = Engine.GetRankIconForScoreboardIndex(registerVal22)
					registerVal22 = Engine.GetPrestigeForScoreboardIndex(registerVal22)
				end
				registerVal22 = Engine.GetFullGamertagForScoreboardIndex(registerVal22)
			end
		end
		arg0.focusableRowIndex = arg7
		if registerVal23 ~= nil and not arg10 and not true then
			registerVal21 = Engine.GetStatusIconForClient(registerVal23)
			if registerVal21 then
				arg0.statusIcon:setImage(registerVal21)
				arg0.statusIcon:setAlpha(1.000000)
			else
				arg0.statusIcon:setAlpha(0.000000)
			else
				arg0.statusIcon:setAlpha(0.000000)
			end
		end
		if arg0.rankText ~= nil then
			registerVal21 = tonumber(CoD.MAX_PRESTIGE)
			if registerVal22 and registerVal22 == registerVal21 then
				arg0.rankText:setText("")
			else
				if registerVal22 and arg0.rankText ~= nil then
					arg0.rankText:setText(registerVal22)
				end
			end
		end
		if arg0.rankIcon ~= nil then
			if registerVal22 then
				arg0.rankIcon:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
				arg0.rankIcon:setImage(registerVal22)
				arg0.rankIcon:setAlpha(1.000000)
			else
				arg0.rankIcon:setAlpha(0.000000)
			end
		end
		arg0.playerName:setText(registerVal22)
		arg0.playerName.gamertag = registerVal22
		if registerVal23 == arg6 then
			arg0.playerName:setRGB(CoD.playerYellow.r, CoD.playerYellow.g, CoD.playerYellow.b)
		else
			arg0.playerName:setRGB(1.000000, 1.000000, 1.000000)
		end
		if registerVal23 ~= nil and not true then
			if arg0.voipIcon ~= nil then
				if not arg10 then
					arg0.voipIcon:setupVoipImage(registerVal23)
					arg0:addElement(arg0.voipIcon)
				else
					arg0.voipIcon:close()
				end
			end
			for index21=1.000000, (5.000000 - 2.000000), 1.000000 do
				if arg0.columns[index21] then
					local registerVal25 = Engine.GetScoreboardColumnForScoreboardIndex(registerVal22, (index21 - 1.000000))
					arg0.columns[index21]:setText(registerVal25)
				end
			end
			if arg0.pingBars ~= nil then
				if not arg10 then
					registerVal21 = Engine.GetPingForScoreboardIndex(registerVal22)
					registerVal25 = math.floor((registerVal21 / 100.000000))
					registerVal22 = math.max(1.000000, (#{} - registerVal25))
					arg0.pingBars:setImage({}[registerVal22])
					arg0.pingBars:setAlpha(1.000000)
				else
					arg0.pingBars:setAlpha(0.000000)
				end
			end
			if arg0.pingValue ~= nil then
				if not arg10 then
					registerVal21 = Engine.GetPingForScoreboardIndex(registerVal22)
					arg0.pingValue:setText(registerVal21)
					arg0.pingValue:setAlpha(1.000000)
				else
					arg0.pingValue:setAlpha(0.000000)
				else
					if arg0.voipIcon ~= nil then
						arg0.voipIcon:close()
					end
					for index21=1.000000, (5.000000 - 2.000000), 1.000000 do
						if arg0.columns[index21] then
							arg0.columns[index21]:setText("")
						end
					end
					if arg0.pingBars ~= nil then
						arg0.pingBars:setAlpha(0.000000)
					end
					if arg0.pingValue ~= nil then
						arg0.pingValue:setAlpha(0.000000)
					else
						arg0.clientNum = nil
						arg0.focusableRowIndex = nil
						arg0.statusIcon:setAlpha(0.000000)
						if arg0.rankText ~= nil then
							arg0.rankText:setText("")
						end
						if arg0.rankIcon ~= nil then
							arg0.rankIcon:setAlpha(0.000000)
						end
						arg0.playerName:setText("")
						if arg0.voipIcon ~= nil then
							arg0.voipIcon:close()
						end
						for index21=1.000000, (5.000000 - 2.000000), 1.000000 do
							if arg0.columns[index21] then
								arg0.columns[index21]:setText("")
							end
						end
						if arg0.pingBars ~= nil then
							arg0.pingBars:setAlpha(0.000000)
						end
						if arg0.pingValue ~= nil then
							arg0.pingValue:setAlpha(0.000000)
						end
					end
				end
			end
		end
	end
	return ((arg4 + 27.000000) + 2.000000)
end

CoD.ScoreboardRow.setClient = __FUNC_8EE9_
local function __FUNC_9F94_(arg0, arg1)
	local registerVal2 = CoD.ScoreboardRow.super.gainFocus(arg0, arg1)
	arg0.border:setAlpha(1.000000)
	arg0:dispatchEventToChildren(arg1)
	registerVal22.row = arg0
	arg0:dispatchEventToParent(registerVal22)
	return registerVal2
end

CoD.ScoreboardRow.gainFocus = __FUNC_9F94_
function CoD.ScoreboardRow.loseFocus(arg0, arg1)
	CoD.ScoreboardRow.super.loseFocus(arg0, arg1)
	arg0.border:setAlpha(0.000000)
	arg0:dispatchEventToChildren(arg1)
end

function CoD.ScoreboardRow.focusClient(arg0, arg1)
	if arg0.clientNum == arg1.clientNum then
		arg0:processEvent(LUI.UIButton.GainFocusEvent)
	else
		local registerVal2 = arg0:isInFocus()
		if registerVal2 then
			arg0:processEvent(LUI.UIButton.LoseFocusEvent)
		end
	end
end

CoD.ScoreboardRow:registerEventHandler("gain_focus", CoD.ScoreboardRow.gainFocus)
CoD.ScoreboardRow:registerEventHandler("lose_focus", CoD.ScoreboardRow.loseFocus)
CoD.ScoreboardRow:registerEventHandler("focus_client", CoD.ScoreboardRow.focusClient)
