-- Decompiled with CoDLUIDecompiler by JariK

require("lua.Lobby.Common.LobbyCore")
require("lua.Lobby.Process.LobbyProcessNavigate")
require("lua.Lobby.Process.LobbyProcess")
require("lua.Shared.LobbyData")
Lobby.Pregame = {}
Lobby.Pregame.Timer = {}
local registerVal1 = {}
registerVal1.IDLE = 100.000000
registerVal1.PRESTAGE = 101.000000
registerVal1.ROUND = 102.000000
registerVal1.INTERMISSION = 103.000000
registerVal1.POSTSTAGE = 104.000000
registerVal1.LAUNCH = 105.000000
registerVal1.LAST_STAGE = 106.000000
Lobby.Pregame.Stage = registerVal1
Lobby.Pregame.CurrentState = {}
registerVal1 = {}
registerVal1.IDLE = Enum.LobbyPregameState.LOBBY_PREGAME_STATE_IDLE
registerVal1.VOTE = Enum.LobbyPregameState.LOBBY_PREGAME_STATE_ITEM_VOTE
registerVal1.DRAFT = Enum.LobbyPregameState.LOBBY_PREGAME_STATE_CHARACTER_DRAFT
registerVal1.CAC_EDIT = Enum.LobbyPregameState.LOBBY_PREGAME_STATE_CAC_EDIT
registerVal1.STREAK_EDIT = Enum.LobbyPregameState.LOBBY_PREGAME_STATE_SCORESTREAK_EDIT
registerVal1.LAUNCH_GAME = Enum.LobbyPregameState.LOBBY_PREGAME_STATE_LAUNCH_GAME
registerVal1.COUNT = Enum.LobbyPregameState.LOBBY_PREGAME_STATE_COUNT
Lobby.Pregame.LobbyState = registerVal1
registerVal1 = {}
registerVal1.IDLE = Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_IDLE
registerVal1.SELECTING = Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_SELECTING
registerVal1.SELECTED = Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_SELECTED
registerVal1.FORCED = Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_SELECTION_FORCED
registerVal1.COMPLETE = Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_SELECTION_COMPLETE
registerVal1.RESET = Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_RESET
registerVal1.END = Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_END
registerVal1.COUNT = Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_COUNT
Lobby.Pregame.ClientState = registerVal1
registerVal1 = {}
local registerVal3 = {}
local registerVal5 = {}
registerVal5.setting = "pregamePreStageTime"
registerVal5.statusString = "MENU_STARTING_IN"
registerVal3[Lobby.Pregame.LobbyState.VOTE] = registerVal5
registerVal5 = {}
registerVal5.setting = "pregamePreStageTime"
registerVal5.statusString = "MENU_STARTING_IN"
registerVal3[Lobby.Pregame.LobbyState.DRAFT] = registerVal5
registerVal5 = {}
registerVal5.setting = "pregamePreStageTime"
registerVal5.statusString = "MENU_STARTING_IN"
registerVal3[Lobby.Pregame.LobbyState.CAC_EDIT] = registerVal5
registerVal5 = {}
registerVal5.setting = "pregamePreStageTime"
registerVal5.statusString = "MENU_STARTING_IN"
registerVal3[Lobby.Pregame.LobbyState.STREAK_EDIT] = registerVal5
registerVal5 = {}
registerVal5.setting = "pregamePreStageTime"
registerVal5.statusString = "MENU_STARTING_IN"
registerVal3[Lobby.Pregame.LobbyState.LAUNCH_GAME] = registerVal5
registerVal1[Lobby.Pregame.Stage.PRESTAGE] = registerVal3
registerVal3 = {}
registerVal5 = {}
registerVal5.setting = "pregameItemVoteRoundTime"
registerVal5.statusString = ""
registerVal3[Lobby.Pregame.LobbyState.VOTE] = registerVal5
registerVal5 = {}
registerVal5.setting = "pregameDraftRoundTime"
registerVal5.statusString = ""
registerVal3[Lobby.Pregame.LobbyState.DRAFT] = registerVal5
registerVal5 = {}
registerVal5.setting = "pregameCACModifyTime"
registerVal5.statusString = ""
registerVal3[Lobby.Pregame.LobbyState.CAC_EDIT] = registerVal5
registerVal5 = {}
registerVal5.setting = "pregameScorestreakModifyTime"
registerVal5.statusString = ""
registerVal3[Lobby.Pregame.LobbyState.STREAK_EDIT] = registerVal5
registerVal5 = {}
registerVal5.setting = nil
registerVal5.statusString = ""
registerVal3[Lobby.Pregame.LobbyState.LAUNCH_GAME] = registerVal5
registerVal1[Lobby.Pregame.Stage.ROUND] = registerVal3
registerVal3 = {}
registerVal5 = {}
registerVal5.setting = "pregamePostRoundTime"
registerVal5.statusString = ""
registerVal3[Lobby.Pregame.LobbyState.VOTE] = registerVal5
registerVal5 = {}
registerVal5.setting = "pregamePostRoundTime"
registerVal5.statusString = ""
registerVal3[Lobby.Pregame.LobbyState.DRAFT] = registerVal5
registerVal5 = {}
registerVal5.setting = nil
registerVal5.statusString = ""
registerVal3[Lobby.Pregame.LobbyState.CAC_EDIT] = registerVal5
registerVal5 = {}
registerVal5.setting = nil
registerVal5.statusString = ""
registerVal3[Lobby.Pregame.LobbyState.STREAK_EDIT] = registerVal5
registerVal5 = {}
registerVal5.setting = nil
registerVal5.statusString = ""
registerVal3[Lobby.Pregame.LobbyState.LAUNCH_GAME] = registerVal5
registerVal1[Lobby.Pregame.Stage.INTERMISSION] = registerVal3
registerVal3 = {}
registerVal5 = {}
registerVal5.setting = "pregamePostStageTime"
registerVal5.statusString = "MENU_COMPLETE"
registerVal3[Lobby.Pregame.LobbyState.VOTE] = registerVal5
registerVal5 = {}
registerVal5.setting = "pregamePostStageTime"
registerVal5.statusString = "MENU_COMPLETE"
registerVal3[Lobby.Pregame.LobbyState.DRAFT] = registerVal5
registerVal5 = {}
registerVal5.setting = "pregamePostStageTime"
registerVal5.statusString = "MENU_COMPLETE"
registerVal3[Lobby.Pregame.LobbyState.CAC_EDIT] = registerVal5
registerVal5 = {}
registerVal5.setting = "pregamePostStageTime"
registerVal5.statusString = "MENU_COMPLETE"
registerVal3[Lobby.Pregame.LobbyState.STREAK_EDIT] = registerVal5
registerVal5 = {}
registerVal5.setting = "pregamePostStageTime"
registerVal5.statusString = ""
registerVal3[Lobby.Pregame.LobbyState.LAUNCH_GAME] = registerVal5
registerVal1[Lobby.Pregame.Stage.POSTSTAGE] = registerVal3
registerVal3 = {}
registerVal5 = {}
registerVal5.setting = "pregamePostStageTime"
registerVal5.statusString = ""
registerVal3[Lobby.Pregame.LobbyState.VOTE] = registerVal5
registerVal5 = {}
registerVal5.setting = "pregamePostStageTime"
registerVal5.statusString = ""
registerVal3[Lobby.Pregame.LobbyState.DRAFT] = registerVal5
registerVal5 = {}
registerVal5.setting = "pregamePostStageTime"
registerVal5.statusString = ""
registerVal3[Lobby.Pregame.LobbyState.CAC_EDIT] = registerVal5
registerVal5 = {}
registerVal5.setting = "pregamePostStageTime"
registerVal5.statusString = ""
registerVal3[Lobby.Pregame.LobbyState.STREAK_EDIT] = registerVal5
registerVal5 = {}
registerVal5.setting = "pregamePostStageTime"
registerVal5.statusString = ""
registerVal3[Lobby.Pregame.LobbyState.LAUNCH_GAME] = registerVal5
registerVal1[Lobby.Pregame.Stage.LAUNCH] = registerVal3
Lobby.Pregame.StateInfo = registerVal1
registerVal1 = {}
registerVal1.MAX_VOTE_COUNT = "pregameItemMaxVotes"
registerVal1.VOTE_ENABLED = "pregameItemVoteEnabled"
registerVal1.DRAFT_ENABLED = "pregameDraftEnabled"
registerVal1.ALWAYS_EDIT_CAC = "pregameAlwaysShowCACEdit"
registerVal1.ALWAYS_EDIT_STREAKS = "pregameAlwaysShowStreakEdit"
registerVal1.SORT_ORDER = "pregamePositionSortType"
registerVal1.SHUFFLE_METHOD = "pregamePositionShuffleMethod"
registerVal1.TIMER_WARNING_SOUND = LobbyData.Sounds.ESportsTimerTick
registerVal1.TIMER_WARNING_TIME = 9.000000
registerVal1.TIMER_FINAL_SOUND = LobbyData.Sounds.ESportsTimerTickLast
registerVal1.TIMER_FINAL_TIME = 4.000000
Lobby.Pregame.Settings = registerVal1
function Lobby.Pregame.OnClientAdded(arg0)
	local registerVal1 = Engine.GetLobbyPregameState()
	if registerVal1 == Enum.LobbyPregameState.LOBBY_PREGAME_STATE_IDLE then
		return 
	end
	Engine.LobbyHost_SetClientPregameState(arg0.xuid, Lobby.Pregame.ClientState.SELECTED)
end

function Lobby.Pregame.OnClientRemoved(arg0)
end

function Lobby.Pregame.GetStateInfo(arg0)
	if Lobby.Pregame.StateInfo[arg0] ~= nil then
		return Lobby.Pregame.StateInfo[arg0][Lobby.Pregame.CurrentState]
	end
end

function Lobby.Pregame.GetStatusById(arg0)
	local registerVal1, registerVal2, registerVal3 = pairs(Lobby.Pregame.StateInfo)
	for index4,value5 in registerVal1, registerVal2, registerVal3 do
		if value5.id == arg0 then
			return value5
		end
	end
end

function Lobby.Pregame.GetGlobalRoot()
	local registerVal1 = Engine.GetGlobalModel()
	return Engine.CreateModel(registerVal1, "lobbyRoot.Pregame")
end

function Lobby.Pregame.GetRootModelForController(arg0)
	local registerVal2 = Engine.GetModelForController(arg0)
	return Engine.CreateModel(registerVal2, "Pregame")
end

function Lobby.Pregame.StartTimer(arg0, arg1)
	local registerVal2 = Engine.milliseconds()
	local registerVal4 = Lobby.Pregame.GetStateInfo(arg0)
	local registerVal5 = Engine.GetGametypeSetting(registerVal4.setting)
	if arg1 ~= nil then
	end
	if arg1 == nil then
	end
	Lobby.Pregame.Timer.stage = arg0
	Lobby.Pregame.Timer.startTime = registerVal2
	Lobby.Pregame.Timer.endTime = (registerVal2 + (10.000000 * 1000.000000))
	Lobby.Pregame.Timer.lastTime = -1.000000
	Lobby.Pregame.Timer.timerCompleteProcessed = false
end

function Lobby.Pregame.LaunchGame()
	local registerVal1 = Engine.GetPrimaryController()
	LobbyVM.LaunchGameExec(registerVal1, Enum.LobbyType.LOBBY_TYPE_GAME)
	Lobby.Pregame.SetState(Lobby.Pregame.LobbyState.IDLE)
end

function Lobby.Pregame.GetTeams()
	local registerVal0 = Engine.LobbyGetSessionClients(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal2, registerVal3, registerVal4 = pairs(registerVal0.sessionClients)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		if value6.team ~= Enum.team_t.TEAM_SPECTATOR then
			if {}[value6.team] == nil then
				{}[value6.team] = {}
			end
			table.insert({}[value6.team], value6)
		end
	end
	local function __FUNC_257D_(arg0, arg1)
		if arg0.pregamePosition >= arg1.pregamePosition then
		end
		return true
	end

	registerVal3, registerVal4, registerVal5 = pairs({})
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		table.sort(value7, __FUNC_257D_)
	end
	return {}
end

function Lobby.Pregame.Shuffle(arg0)
	local registerVal2 = table.getn(arg0)
	table.insert({}, table.remove(arg0, math.random(table.getn(arg0))))
	return {}
end

function Lobby.Pregame.AssignTeamPositions()
	local registerVal0 = Lobby.Pregame.GetTeams()
	local registerVal1 = Engine.GetGametypeSetting(Lobby.Pregame.Settings.SORT_ORDER)
	if registerVal1 == Enum.PregameSortType.PREGAME_SORT_TYPE_RANDOM then
		local registerVal2, registerVal3, registerVal4 = pairs(registerVal0)
		for index5,value6 in registerVal2, registerVal3, registerVal4 do
			local registerVal7 = Lobby.Pregame.Shuffle(value6)
			local registerVal8, registerVal9, registerVal10 = ipairs(registerVal7)
			for index11,value12 in registerVal8, registerVal9, registerVal10 do
				Engine.LobbyHost_SetClientPregamePosition(value12.xuid, index11)
			end
		end
	else
		if registerVal1 == Enum.PregameSortType.PREGAME_SORT_TYPE_CLIENTNUM then
			registerVal2, registerVal3, registerVal4 = pairs(registerVal0)
			for index5,value6 in registerVal2, registerVal3, registerVal4 do
				local function __FUNC_2AD3_(arg0, arg1)
					if arg0.joinOrder >= arg1.joinOrder then
					end
					return true
				end

				table.sort(value6, __FUNC_2AD3_)
				registerVal8, registerVal9, registerVal10 = ipairs(value6)
				for index11,value12 in registerVal8, registerVal9, registerVal10 do
					Engine.LobbyHost_SetClientPregamePosition(value12.xuid, index11)
				end
			end
		else
			if registerVal1 == Enum.PregameSortType.PREGAME_SORT_TYPE_CODCASTER then
				error("AssignTeamPositions: Unhandled Sort Type")
			end
		end
	end
end

function Lobby.Pregame.PostVoteShuffle()
	local registerVal0 = Lobby.Pregame.GetTeams()
	local registerVal1 = Engine.GetGametypeSetting(Lobby.Pregame.Settings.SHUFFLE_METHOD)
	if registerVal1 == Enum.PregameShuffleMethod.PREGAME_SHUFFLE_METHOD_NONE then
		return 
	else
		if registerVal1 == Enum.PregameShuffleMethod.PREGAME_SHUFFLE_METHOD_REVERSE then
			local registerVal2, registerVal3, registerVal4 = pairs(registerVal0)
			for index5,value6 in registerVal2, registerVal3, registerVal4 do
				for index8=#, 1.000000, -1.000000 do
					Engine.LobbyHost_SetClientPregamePosition(value6[index8].xuid, 0.000000)
				end
			end
		else
			registerVal2, registerVal3, registerVal4 = pairs(registerVal0)
			for index5,value6 in registerVal2, registerVal3, registerVal4 do
				local registerVal7 = Lobby.Pregame.Shuffle(value6)
				local registerVal8, registerVal9, registerVal10 = ipairs(registerVal7)
				for index11,value12 in registerVal8, registerVal9, registerVal10 do
					Engine.LobbyHost_SetClientPregamePosition(value12.xuid, index11)
				end
			end
		end
	end
end

function Lobby.Pregame.Clear()
	Lobby.Pregame.Timer = {}
	Lobby.Pregame.CurrentState = {}
	Engine.LobbyHost_ClearPregameState()
end

function Lobby.Pregame.Shutdown(arg0)
	Lobby.Timer.UnlockLobby(arg0, true)
	Lobby.Pregame.Clear()
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.CreateModel(registerVal2, "lobbyRoot.Pregame")
	registerVal2 = Engine.CreateModel(registerVal1, "state")
	Engine.SetModelValue(registerVal2, Enum.LobbyPregameState.LOBBY_PREGAME_STATE_IDLE)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.CreateModel(registerVal4, "Pregame.shutdown")
	Engine.ForceNotifyModelSubscriptions(registerVal3)
end

function Lobby.Pregame.SetState(arg0)
	if Lobby.Pregame.CurrentState ~= arg0 then
		Lobby.Pregame.CurrentState = arg0
		Engine.LobbyHost_SetPregameState(arg0)
	end
end

function Lobby.Pregame.OnMatchStart(arg0)
	local registerVal2 = Engine.GetPrimaryController()
	Lobby.Timer.UnlockLobby(registerVal2, false)
	local registerVal1 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal1 then
		Lobby.Pregame.SetState(Lobby.Pregame.LobbyState.IDLE)
	end
end

function Lobby.Pregame.OnMatchEnd(arg0)
	Lobby.Pregame.Clear()
end

function Lobby.Pregame.Start()
	Lobby.Pregame.Clear()
	Lobby.Pregame.AssignTeamPositions()
	local registerVal0 = Engine.GetGametypeSetting(Lobby.Pregame.Settings.VOTE_ENABLED)
	if registerVal0 == 1.000000 then
		Lobby.Pregame.SetState(Enum.LobbyPregameState.LOBBY_PREGAME_STATE_ITEM_VOTE)
	else
		registerVal0 = Engine.GetGametypeSetting(Lobby.Pregame.Settings.DRAFT_ENABLED)
		if registerVal0 == 1.000000 then
			Lobby.Pregame.SetState(Enum.LobbyPregameState.LOBBY_PREGAME_STATE_CHARACTER_DRAFT)
		else
			error("Attempted to start Pregame with unhandled settings.")
			Lobby.Pregame.LaunchGame()
		end
	end
	Lobby.Pregame.StartTimer(Lobby.Pregame.Stage.PRESTAGE)
end

function Lobby.Pregame.GetRandomUnpickedCharacter(arg0)
	local registerVal1 = Engine.GetHeroList(Enum.eModes.MODE_MULTIPLAYER)
	local registerVal3, registerVal4, registerVal5 = pairs(arg0)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		if 0.000000 <= value7.characterDraft.characterIndex and 0.000000 <= value7.characterDraft.loadout then
			if value7.pregameState == Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_SELECTED or value7.pregameState == Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_SELECTION_FORCED then
				if registerVal1[(value7.characterDraft.characterIndex + 1.000000)].loadouts == nil then
					registerVal1[(value7.characterDraft.characterIndex + 1.000000)].loadouts = {}
				end
				registerVal1[(value7.characterDraft.characterIndex + 1.000000)].loadouts[value7.characterDraft.loadout] = {}
			end
		end
	end
	registerVal3, registerVal4, registerVal5 = ipairs(registerVal1)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		local registerVal8 = CoDShared.IsLootHero(value7)
		if value7.disabled == false and registerVal8 == false then
			for index9=0.000000, (Enum.heroLoadoutTypes_e.HERO_LOADOUT_TYPE_COUNT - 1.000000), 1.000000 do
				{}.heroIndex = (index6 - 1.000000)
				{}.loadoutIndex = index9
				local registerVal14 = Engine.GetLoadoutInfoForHero(Enum.eModes.MODE_MULTIPLAYER, {}.heroIndex, index9)
				if registerVal14 and registerVal14.devOnly == false then
					if value7.loadouts == nil or value7.loadouts[index9] == nil then
						local registerVal16 = Engine.GetItemVote(registerVal14.itemIndex)
						registerVal16 = Engine.IsItemIndexRestricted(registerVal14.itemIndex)
						if registerVal16 ~= Enum.VoteType.VOTE_TYPE_BAN and not registerVal16 then
							table.insert({}, {})
						end
					end
				end
			end
		end
	end
	if 0.000000 < #registerVal3 then
		registerVal3 = math.random(1.000000, #registerVal5)
		return {}[registerVal3].heroIndex, CoDLUIDecompiler.LuaRegister
	end
	return -1.000000, CoDLUIDecompiler.LuaRegister
end

function Lobby.Pregame.StartNextRound()
	local registerVal1 = Lobby.Pregame.GetTeams()
	local registerVal2, registerVal3, registerVal4 = pairs(registerVal1)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		local registerVal8, registerVal9, registerVal10 = pairs(value6)
		if not false and .pregameState == Lobby.Pregame.ClientState.IDLE then
			Engine.LobbyHost_SetClientPregameState(.xuid, Lobby.Pregame.ClientState.SELECTING)
		end
	end
	if true then
		Lobby.Pregame.StartTimer(Lobby.Pregame.Stage.ROUND)
	else
		Lobby.Pregame.StartTimer(Lobby.Pregame.Stage.POSTSTAGE)
	end
end

function Lobby.Pregame.StartRoundForAllPlayers()
	local registerVal0 = Lobby.Pregame.GetTeams()
	local registerVal1, registerVal2, registerVal3 = pairs(registerVal0)
	for index4,value5 in registerVal1, registerVal2, registerVal3 do
		local registerVal6, registerVal7, registerVal8 = pairs(value5)
		for index9,value10 in registerVal6, registerVal7, registerVal8 do
			Engine.LobbyHost_SetClientPregameState(value10.xuid, Lobby.Pregame.ClientState.SELECTING)
		end
	end
	Lobby.Pregame.StartTimer(Lobby.Pregame.Stage.ROUND)
end

function Lobby.Pregame.ForcefullyEndRound()
	local registerVal0 = Lobby.Pregame.GetTeams()
	local registerVal2, registerVal3, registerVal4 = pairs(registerVal0)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		local registerVal7, registerVal8, registerVal9 = pairs(value6)
		for index10,value11 in registerVal7, registerVal8, registerVal9 do
			if value11.pregameState == Lobby.Pregame.ClientState.SELECTING then
				if Lobby.Pregame.CurrentState == Lobby.Pregame.LobbyState.VOTE then
					Engine.LobbyHost_ForceClientRoundComplete(value11.xuid)
				else
					if Lobby.Pregame.CurrentState == Lobby.Pregame.LobbyState.DRAFT then
						local registerVal12, registerVal13 = Lobby.Pregame.GetRandomUnpickedCharacter(value6)
						if registerVal12 < 0.000000 or registerVal13 < 0.000000 then
							Engine.LobbyHost_ForceClientRoundComplete(value11.xuid)
						else
							Engine.LobbyHost_ForceClientCharacterSelection(value11.xuid, registerVal12, registerVal13)
						else
							if Lobby.Pregame.CurrentState == Lobby.Pregame.LobbyState.CAC_EDIT or Lobby.Pregame.CurrentState == Lobby.Pregame.LobbyState.STREAK_EDIT then
								Engine.LobbyHost_ForceClientEditComplete(value11.xuid)
							end
						end
					end
				end
			end
		end
	end
	Lobby.Pregame.AdvanceStateIfAllClientsSelected()
end

function Lobby.Pregame.GetAllBannedItems()
	local registerVal1 = Engine.GetPregameItemVotes()
	local registerVal2, registerVal3, registerVal4 = ipairs(registerVal1)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		if value6.voteType == Enum.VoteType.VOTE_TYPE_BAN then
			table.insert({}, value6)
		end
	end
	return {}
end

function Lobby.Pregame.AnyCACItemsBanned()
	local registerVal0 = Lobby.Pregame.GetAllBannedItems()
	local registerVal1, registerVal2, registerVal3 = ipairs(registerVal0)
	for index4,value5 in registerVal1, registerVal2, registerVal3 do
		if value5.voteType == Enum.VoteType.VOTE_TYPE_BAN then
			if value5.itemType == Enum.VoteItemType.VOTE_ITEM_TYPE_ITEM then
				local registerVal6 = Engine.GetUnlockableInfoByIndex(value5.itemIndex)
				local registerVal7 = LuaUtils.StartsWith(registerVal6.loadoutSlot, "hero")
				registerVal7 = LuaUtils.StartsWith(registerVal6.loadoutSlot, "killstreak")
				if not registerVal7 and not registerVal7 and registerVal6.loadoutSlot ~= "specialgadget" then
					return true
				else
					if value5.itemType == Enum.VoteItemType.VOTE_ITEM_TYPE_ATTACHMENT then
						return true
					else
						if value5.itemType == Enum.VoteItemType.VOTE_ITEM_TYPE_ITEM_ATTACHMENT then
							return true
						else
							if value5.itemType == Enum.VoteItemType.VOTE_ITEM_TYPE_ATTACHMENT_GROUP then
								return true
							end
						end
					end
				end
			end
		end
	end
	return false
end

function Lobby.Pregame.AnyStreaksBanned()
	local registerVal0 = Lobby.Pregame.GetAllBannedItems()
	local registerVal1, registerVal2, registerVal3 = ipairs(registerVal0)
	for index4,value5 in registerVal1, registerVal2, registerVal3 do
		local registerVal6 = Engine.GetUnlockableInfoByIndex(value5.itemIndex)
		local registerVal7 = LuaUtils.StartsWith(registerVal6.loadoutSlot, "killstreak")
		if value5.voteType == Enum.VoteType.VOTE_TYPE_BAN and value5.itemType == Enum.VoteItemType.VOTE_ITEM_TYPE_ITEM and registerVal7 then
			return true
		end
	end
	return false
end

function Lobby.Pregame.OnStageEnd(arg0)
	local registerVal1 = Engine.GetGametypeSetting(Lobby.Pregame.Settings.DRAFT_ENABLED)
	local registerVal2 = Engine.GetGametypeSetting(Lobby.Pregame.Settings.VOTE_ENABLED)
	local registerVal3 = Engine.GetGametypeSetting(Lobby.Pregame.Settings.ALWAYS_EDIT_CAC)
	local registerVal4 = Engine.GetGametypeSetting(Lobby.Pregame.Settings.ALWAYS_EDIT_STREAKS)
	Engine.LobbyHost_SetAllClientsPregameState(Lobby.Pregame.ClientState.IDLE)
	if arg0 == Lobby.Pregame.LobbyState.VOTE then
		if registerVal1 == 1.000000 then
			Lobby.Pregame.PostVoteShuffle()
			Lobby.Pregame.SetState(Lobby.Pregame.LobbyState.DRAFT)
			Lobby.Pregame.StartTimer(Lobby.Pregame.Stage.PRESTAGE)
		else
			local registerVal5 = Lobby.Pregame.AnyCACItemsBanned()
			if registerVal3 == 1.000000 or registerVal5 then
				Lobby.Pregame.SetState(Lobby.Pregame.LobbyState.CAC_EDIT)
				Lobby.Pregame.StartTimer(Lobby.Pregame.Stage.PRESTAGE)
			else
				Lobby.Pregame.OnStageEnd(Lobby.Pregame.LobbyState.CAC_EDIT)
			else
				if arg0 == Lobby.Pregame.LobbyState.DRAFT then
					if registerVal2 == 1.000000 then
						registerVal5 = Lobby.Pregame.AnyCACItemsBanned()
						if registerVal3 == 1.000000 or registerVal5 then
							Lobby.Pregame.SetState(Lobby.Pregame.LobbyState.CAC_EDIT)
							Lobby.Pregame.StartTimer(Lobby.Pregame.Stage.PRESTAGE)
						else
							Lobby.Pregame.OnStageEnd(Lobby.Pregame.LobbyState.CAC_EDIT)
						else
							Lobby.Pregame.SetState(Lobby.Pregame.LobbyState.LAUNCH_GAME)
							Lobby.Pregame.StartTimer(Lobby.Pregame.Stage.LAUNCH)
						else
							if arg0 == Lobby.Pregame.LobbyState.CAC_EDIT then
								registerVal5 = Lobby.Pregame.AnyStreaksBanned()
								if registerVal4 == 1.000000 or registerVal5 then
									Lobby.Pregame.SetState(Lobby.Pregame.LobbyState.STREAK_EDIT)
									Lobby.Pregame.StartTimer(Lobby.Pregame.Stage.PRESTAGE)
								else
									Lobby.Pregame.OnStageEnd(Lobby.Pregame.LobbyState.STREAK_EDIT)
								else
									if arg0 == Lobby.Pregame.LobbyState.STREAK_EDIT then
										Lobby.Pregame.SetState(Lobby.Pregame.LobbyState.LAUNCH_GAME)
										Lobby.Pregame.StartTimer(Lobby.Pregame.Stage.LAUNCH)
									else
										error("Lobby.Pregame.OnStageEnd - unhandled lobby state")
									end
								end
							end
						end
					end
				end
			end
		end
	end
end

function Lobby.Pregame.PrestageMonitorSpecialRules()
	local registerVal0 = LuaUtils.IsArenaMode()
	registerVal0 = Dvar.party_minplayers:get()
	local registerVal1 = Engine.GetLobbyClientCount(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal0 and registerVal1 < registerVal0 then
		local registerVal2 = Engine.GetPrimaryController()
		Lobby.Pregame.Shutdown(registerVal2)
		local registerVal3 = Engine.GetLobbyUIScreen()
		Engine.LobbyLaunchClear()
		LobbyVM.HostLaunchClear()
		local registerVal4 = LobbyData:UITargetFromId(registerVal3)
		local registerVal5 = {}
		local registerVal6 = Engine.GetPrimaryController()
		registerVal5.controller = registerVal6
		registerVal5.lobbyType = Enum.LobbyType.LOBBY_TYPE_GAME
		registerVal5.mainMode = registerVal4.mainMode
		registerVal5.lobbyTimerType = registerVal4.lobbyTimerType
		registerVal5.matchEnded = false
		registerVal5.status = Lobby.Timer.LOBBY_STATUS.RESET_TO_NEED
		Lobby.Timer.HostingLobby(registerVal5)
		Engine.LobbyHost_SetAllClientsPregameState(Lobby.Pregame.ClientState.RESET)
		return true
	end
	return false
end

function Lobby.Pregame.Pump()
	local registerVal0 = Engine.GetLobbyPregameState()
	if registerVal0 == Enum.LobbyPregameState.LOBBY_PREGAME_STATE_IDLE then
		return 
	end
	local registerVal1 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
	if not registerVal1 then
		return 
	end
	local registerVal2, registerVal3 = Engine.GetGameLobbyStatusInfo()
	if Lobby.Pregame.Timer or not Lobby.Pregame.Timer.endTime then
		return 
	end
	if Lobby.Pregame.Timer.startTime == Lobby.Pregame.Timer.endTime then
		Engine.SetGameLobbyStatusInfo(Lobby.Pregame.Timer.stage, -1.000000)
		Lobby.Pregame.Timer.lastTime = -1.000000
		return 
	end
	local registerVal4 = Engine.milliseconds()
	if Lobby.Pregame.Timer.endTime < registerVal4 and not Lobby.Pregame.Timer.timerCompleteProcessed then
		Lobby.Pregame.Timer.timerCompleteProcessed = true
		local registerVal6 = Lobby.Pregame.PrestageMonitorSpecialRules()
		if registerVal2 ~= Lobby.Pregame.Stage.INTERMISSION and registerVal2 ~= Lobby.Pregame.Stage.POSTSTAGE and registerVal2 ~= Lobby.Pregame.Stage.PRESTAGE and registerVal6 then
			return 
		end
		if registerVal2 == Lobby.Pregame.Stage.PRESTAGE then
			if Lobby.Pregame.CurrentState == Lobby.Pregame.LobbyState.CAC_EDIT or Lobby.Pregame.CurrentState == Lobby.Pregame.LobbyState.STREAK_EDIT then
				Lobby.Pregame.StartRoundForAllPlayers()
			else
				registerVal6 = Lobby.Pregame.PrestageMonitorSpecialRules()
				if not registerVal6 then
					Lobby.Pregame.StartNextRound()
				else
					if registerVal2 == Lobby.Pregame.Stage.ROUND then
						Lobby.Pregame.ForcefullyEndRound()
					else
						if registerVal2 == Lobby.Pregame.Stage.INTERMISSION then
							Lobby.Pregame.StartNextRound()
						else
							if registerVal2 == Lobby.Pregame.Stage.POSTSTAGE then
								Lobby.Pregame.OnStageEnd(registerVal0)
							else
								if registerVal2 == Lobby.Pregame.Stage.LAUNCH then
									Lobby.Pregame.LaunchGame()
								end
							end
						end
					end
				end
			end
		end
	end
	local registerVal7 = Engine.milliseconds()
	local registerVal5 = math.floor(((Lobby.Pregame.Timer.endTime - (registerVal7 + 1.000000)) / 1000.000000))
	if registerVal5 ~= Lobby.Pregame.Timer.lastTime then
		Lobby.Pregame.Timer.lastTime = registerVal5
		Engine.SetGameLobbyStatusInfo(Lobby.Pregame.Timer.stage, registerVal5)
	end
end

function Lobby.Pregame.AnyClientInState(arg0, arg1)
	local registerVal2, registerVal3, registerVal4 = pairs(arg0)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		local registerVal7, registerVal8, registerVal9 = pairs(value6)
		for index10,value11 in registerVal7, registerVal8, registerVal9 do
			if value11.pregameState == arg1 then
				return true
			end
		end
	end
	return false
end

function Lobby.Pregame.AllClientsInState(arg0, arg1)
	local registerVal2, registerVal3, registerVal4 = pairs(arg0)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		local registerVal7, registerVal8, registerVal9 = pairs(value6)
		for index10,value11 in registerVal7, registerVal8, registerVal9 do
			if arg1[value11.pregameState] == nil then
				return false
			end
		end
	end
	return true
end

function Lobby.Pregame.AdvanceStateIfAllClientsSelected()
	local registerVal0 = Lobby.Pregame.GetTeams()
	local registerVal1 = {}
	registerVal1[Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_SELECTED] = true
	registerVal1[Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_SELECTION_FORCED] = true
	registerVal1[Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_SELECTION_COMPLETE] = true
	local registerVal2 = Lobby.Pregame.AnyClientInState(registerVal0, Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_SELECTING)
	if registerVal2 == false then
		registerVal2 = Lobby.Pregame.AllClientsInState(registerVal0, registerVal1)
		if registerVal2 == true then
			Lobby.Pregame.StartTimer(Lobby.Pregame.Stage.POSTSTAGE)
		else
			Lobby.Pregame.StartTimer(Lobby.Pregame.Stage.INTERMISSION)
		end
	end
end

function Lobby.Pregame.OnClientSelectionReceived(arg0)
	Lobby.Pregame.AdvanceStateIfAllClientsSelected()
end

function Lobby.Pregame.GameLobbyClientDataUpdate(arg0)
	local registerVal1, registerVal2, registerVal3 = pairs(arg0.clients)
	for index4,value5 in registerVal1, registerVal2, registerVal3 do
		local registerVal6 = Engine.IsLocalClient(value5.xuid)
		local registerVal8 = Lobby.Pregame.GetRootModelForController(arg0.controller)
		local registerVal7 = Engine.CreateModel(registerVal8, "clientState")
		Engine.SetModelValue(registerVal7, value5.pregameState)
		registerVal6 = Engine.GetGametypeSetting(Lobby.Pregame.Settings.MAX_VOTE_COUNT)
		local registerVal9 = Lobby.Pregame.GetRootModelForController(arg0.controller)
		registerVal8 = Engine.CreateModel(registerVal9, "maxVotes")
		Engine.SetModelValue(registerVal8, registerVal6)
		if registerVal6 and 0.000000 < registerVal6 then
			local registerVal10 = Lobby.Pregame.GetRootModelForController(arg0.controller)
			registerVal9 = Engine.CreateModel(registerVal10, "remainingVotes")
			Engine.SetModelValue(registerVal9, (registerVal6 - value5.restrictedItemVoteCount))
		end
	end
	registerVal3 = Lobby.Pregame.GetGlobalRoot()
	Engine.ForceNotifyModelSubscriptions(Engine.CreateModel(registerVal3, "Update"))
end

local function __FUNC_7127_(arg0)
	local registerVal1 = Lobby.Pregame.GetGlobalRoot()
	Lobby.Pregame.CurrentState = arg0.pregameState
	if arg0.statusValue < 0.000000 then
	end
	local registerVal6 = Lobby.Pregame.GetRootModelForController(arg0.controller)
	local registerVal5 = Engine.CreateModel(registerVal6, "clientState")
	registerVal6 = Engine.GetModelValue(registerVal5)
	if -1.000000 ~= -1.000000 and arg0.status == Lobby.Pregame.Stage.ROUND and registerVal6 == Lobby.Pregame.ClientState.SELECTING then
		if -1.000000 <= Lobby.Pregame.Settings.TIMER_WARNING_TIME and Lobby.Pregame.Settings.TIMER_FINAL_TIME < -1.000000 then
			Engine.PlaySound(Lobby.Pregame.Settings.TIMER_WARNING_SOUND)
		else
			if -1.000000 <= Lobby.Pregame.Settings.TIMER_FINAL_TIME and 0.000000 <= -1.000000 then
				Engine.PlaySound(Lobby.Pregame.Settings.TIMER_FINAL_SOUND)
			end
		end
	end
	registerVal5 = Lobby.Pregame.GetStateInfo(arg0.status)
	if registerVal5 then
		local registerVal7 = Engine.CreateModel(registerVal1, "status")
		Engine.SetModelValue(registerVal7, registerVal5.statusString)
	end
	registerVal7 = Engine.CreateModel(registerVal1, "stage")
	Engine.SetModelValue(registerVal7, arg0.status)
	registerVal7 = Engine.CreateModel(registerVal1, "state")
	Engine.SetModelValue(registerVal7, arg0.pregameState)
	if -1.000000 == -1.000000 then
		registerVal7 = Engine.CreateModel(registerVal1, "timeleft")
		Engine.SetModelValue(registerVal7, "")
	else
		registerVal7 = Engine.CreateModel(registerVal1, "timeleft")
		Engine.SetModelValue(registerVal7, tostring((-1.000000 + 1.000000)))
	end
end

Lobby.Pregame.UpdateLobbyStatusInfo = __FUNC_7127_
