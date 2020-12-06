-- Decompiled with CoDLUIDecompiler by JariK

require("lua.Shared.LuaReadOnlyTables")
{}.gametypesStructTable = "game_types"
local function __FUNC_560_(arg0, arg1)
	if not arg0 then
		local registerVal2 = Dvar.ui_gametype:get()
	end
	if registerVal2 == "infect" then
		return arg1
	end
	if registerVal2 == nil then
		return nil
	end
	registerVal2 = Engine.StructTableLookupString({}.gametypesStructTable, "name", registerVal2, "is_team_based")
	if registerVal2 == nil then
		return false
	end
	local registerVal3 = Engine.ToUpper(registerVal2)
	if registerVal3 == "NO" then
		return false
	end
	return true
end

{}.IsGametypeTeamBased = __FUNC_560_
local function __FUNC_726_(arg0)
	if not arg0 then
		local registerVal1 = Dvar.ui_gametype:get()
	end
	registerVal1 = Engine.StructTableLookupString({}.gametypesStructTable, "name", registerVal1, "hardcore_available")
	if registerVal1 and registerVal1 == "YES" then
		return true
	end
	return false
end

{}.IsHardcoreGametypeAvailable = __FUNC_726_
function {}.ChunkAnyDownloading()
	if not  or LuaUtils.isXbox then
		local registerVal0 = Engine.IsMpStillDownloading()
		registerVal0 = Engine.IsZmStillDownloading()
		registerVal0 = Engine.IsCpStillDownloading()
		registerVal0 = Engine.IsZmInitialStillDownloading()
		registerVal0 = Engine.IsMpInitialStillDownloading()
		if not registerVal0 and not registerVal0 and not registerVal0 and not  or registerVal0 then
			return true
		end
	end
	return false
end

function {}.IsTeamBasedGame()
	local registerVal0 = Engine.IsDedicatedServer()
	if registerVal0 then
		registerVal0 = Engine.GetGametypeSetting("teamCount")
		if 1.000000 >= registerVal0 then
		end
		return true
	end
	registerVal0 = Engine.IsInGame()
	if registerVal0 then
		return CoDShared.IsGametypeTeamBased()
	else
		Engine.GetCurrentGameType()
		return CoDShared.IsGametypeTeamBased(Engine.GetCurrentGameType)
	end
end

function {}.IsLobbyMode(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.CreateModel(registerVal2, "lobbyRoot.lobbyNav")
	registerVal2 = Engine.GetModelValue(registerVal1)
	if registerVal2 then
		local registerVal3 = LobbyData:UITargetFromId(registerVal2)
		if registerVal3.lobbyMode ~= arg0 then
		end
		return true
	end
end

function {}.IsOnlineGame()
	local registerVal0 = Engine.SessionMode_IsOnlineGame()
	if registerVal0 then
		return true
	end
	return false
end

local function __FUNC_DC6_()
	local registerVal0 = {}.IsOnlineGame()
	registerVal0 = Engine.GameModeIsMode(Enum.eGameModes.MODE_GAME_MATCHMAKING_MANUAL)
	if registerVal0 == true and not registerVal0 then
		registerVal0 = Engine.GameModeIsMode(Enum.eGameModes.MODE_GAME_MANUAL_PLAYLIST)
	else
	end
	return true
end

{}.IsRankedGame = __FUNC_DC6_
function {}.IsHost()
	local registerVal0 = Engine.DvarBool(nil, "sv_running")
	return registerVal0
end

function {}.GetTeamDifference(arg0)
	if arg0 ~= Enum.team_t.TEAM_ALLIES and arg0 ~= Enum.team_t.TEAM_AXIS then
		return 0.000000
	end
	local registerVal1 = Engine.LobbyGetSessionClients(Enum.LobbyModule.LOBBY_MODULE_CLIENT, Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal5, registerVal6, registerVal7 = ipairs(registerVal1.sessionClients)
	for index8,value9 in registerVal5, registerVal6, registerVal7 do
		if value9.team == Enum.team_t.TEAM_ALLIES then
		else
			if value9.team == Enum.team_t.TEAM_AXIS then
			end
		end
	end
	if arg0 == Enum.team_t.TEAM_ALLIES then
		return ((0.000000 + 1.000000) - (0.000000 + 1.000000))
	else
		return ((0.000000 + 1.000000) - (0.000000 + 1.000000))
	end
end

local function __FUNC_125C_(arg0)
	local registerVal1 = Engine.GetXUID64(arg0)
	local registerVal2 = Engine.GetTeamForXUID(registerVal1)
	local registerVal3 = Dvar.arena_unfairTeamGap:get()
	local registerVal4 = {}.GetTeamDifference(registerVal2)
	if (registerVal3 * -1.000000) == 0.000000 or (registerVal3 * -1.000000) < registerVal4 then
		return false
	end
	return true
end

{}.IsTeamOverwhelmed = __FUNC_125C_
local function __FUNC_13A4_(arg0, arg1)
	local registerVal2 = Engine.IsRunningUILevel()
	if registerVal2 then
		return true
	end
	registerVal2 = Engine.GetLobbyClientCount(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_GAME, Enum.LobbyClientType.LOBBY_CLIENT_TYPE_ALL)
	local registerVal3 = Engine.GetLobbyClientCount(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_GAME, Enum.LobbyClientType.LOBBY_CLIENT_TYPE_LOCAL)
	local registerVal4 = Engine.GetLobbyHostInfo(Enum.LobbyModule.LOBBY_MODULE_CLIENT, Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal4 ~= nil then
		if LobbyVM ~= nil then
			local registerVal6 = {}
			registerVal6.hostSecId = registerVal4.secIdint
			LobbyVM.MatchmakingPriorityQuit(registerVal6)
		else
			local registerVal7 = {}
			registerVal7.hostSecId = registerVal4.secIdint
			Engine.LobbyVM_CallFunc("MatchmakingPriorityQuit", registerVal7)
		end
	end
	local registerVal5 = {}.IsLobbyMode(Enum.LobbyMode.LOBBY_MODE_THEATER)
	if registerVal5 == true then
		registerVal5 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
		if not registerVal5 then
			Engine.GameModeResetModes()
			Engine.SessionModeResetModes()
			Engine.Exec(arg0, "disconnect")
		else
			Engine.Exec(arg0, "xpartystopdemo")
		end
		return true
	end
	registerVal5 = {}.IsRankedGame()
	registerVal5 = {}.IsHost()
	registerVal5 = Engine.DvarInt(nil, "g_gameEnded")
	if not registerVal5 and registerVal5 and registerVal5 ~= 1.000000 then
		Engine.SendMenuResponse(arg0, "popup_leavegame", "endround")
	else
		registerVal5 = {}.IsHost()
		if not registerVal5 then
			if arg1 then
				Engine.UpdateStatsForQuitUnbalancedTeam(arg0, false)
			else
				Engine.UpdateStatsForQuit(arg0, false)
			end
			registerVal5 = Engine.IsZombiesGame()
			if registerVal5 then
				{}.IncrementZMDashboardQuitType(arg0, "quit", 1.000000)
			end
			Engine.Exec(arg0, "disconnect")
		else
			registerVal5 = {}.IsRankedGame()
			registerVal5 = {}.IsHost()
			registerVal5 = Engine.HostMigrationWaitingForPlayers()
			registerVal5 = Engine.DvarInt(nil, "g_gameEnded")
			if registerVal5 and registerVal5 and not registerVal5 and registerVal5 ~= 1.000000 then
				Engine.UpdateStatsForQuit(arg0, true)
				registerVal5 = Engine.IsZombiesGame()
				registerVal5 = {}.IsGameTypeDOA()
				registerVal5 = Engine.GameModeIsMode(Enum.eGameModes.MODE_GAME_FREERUN)
				if not registerVal5 and not arg1 or registerVal5 then
					registerVal5 = Dvar.migration_minclientcount:get()
					if registerVal2 < registerVal5 or registerVal2 == registerVal3 then
						Engine.SendMenuResponse(arg0, "popup_leavegame", "endround")
					else
					else
						registerVal5 = Engine.IsMultiplayerGame()
						registerVal5 = Engine.IsZombiesGame()
						registerVal5 = {}.IsGameTypeDOA()
						if not registerVal5 and not arg1 or registerVal5 then
							registerVal5 = Engine.IsZombiesGame()
							if registerVal5 then
								{}.IncrementZMDashboardQuitType(arg0, "quit", 1.000000)
							end
							Engine.Exec(arg0, "hostmigration_start")
							return false
						else
							Engine.SendMenuResponse(arg0, "popup_leavegame", "endround")
						end
					end
				end
			end
		end
	end
	return true
end

{}.QuitGame = __FUNC_13A4_
function {}.IsGameTypeDOA()
	local registerVal0 = Dvar.ui_gametype:get()
	if Dvar.ui_gametype == nil or registerVal0 ~= "doa" then
		registerVal0 = Engine.GetCurrentMap()
		registerVal0 = Engine.GetCurrentMap()
		if registerVal0 == nil or registerVal0 ~= "cp_doa_bo3" then
			registerVal0 = LuaUtils.IsDOATarget(Engine.GetLobbyUIScreen())
		end
	end
	return true
end

function {}.IsLootHero(arg0)
	if arg0 ~= nil and arg0.assetName ~= nil and arg0.assetName == "pbt_mp_blackmarket" then
		return true
	end
	return false
end

function {}.GetLootItemVersion(arg0)
	local registerVal4 = Engine.TableFindRows("gamedata/loot/mplootitems.csv", 1.000000, arg0)
	if registerVal4 == nil or #"gamedata/loot/mplootitems.csv" == 0.000000 then
		return -1.000000
	end
	local registerVal5 = Engine.TableLookupGetColumnValueForRow("gamedata/loot/mplootitems.csv", registerVal4[1.000000], 6.000000)
	if registerVal5 == nil or registerVal5 == "" then
		return -1.000000
	end
	return tonumber(registerVal5)
end

function {}.GetLootItemCategory(arg0)
	local registerVal4 = Engine.TableFindRows("gamedata/loot/mplootitems.csv", 1.000000, arg0)
	if registerVal4 == nil or #"gamedata/loot/mplootitems.csv" == 0.000000 then
		return -1.000000
	end
	local registerVal5 = Engine.TableLookupGetColumnValueForRow("gamedata/loot/mplootitems.csv", registerVal4[1.000000], 2.000000)
	if registerVal5 == nil then
		return -1.000000
	end
	return registerVal5
end

function {}.IsInExperiment(arg0, arg1)
	local registerVal2 = Engine.GetPrimaryController()
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.GetModel(registerVal4, "autoevents")
	registerVal4 = Engine.GetModel(registerVal3, "targetController")
	if registerVal3 ~= nil and registerVal4 ~= nil then
		local registerVal5 = Engine.GetModelValue(registerVal4)
	end
	registerVal4 = Engine.ExperimentsGetVariant(registerVal5, arg0)
	if registerVal4 ~= nil and registerVal4 == "" or registerVal4 == -1.000000 then
		return false
	end
	registerVal5 = tonumber(registerVal4)
	registerVal5, registerVal6, registerVal7 = string.gmatch(arg1, "([^;]+)")
	local registerVal9 = tonumber()
	if  ~= nil and  ~= "" and registerVal5 == registerVal9 then
		return true
	end
	return false
end

local registerVal3 = {}
registerVal3.dashboard = 0.000000
registerVal3.timeout = 1.000000
registerVal3.quit = 3.000000
registerVal3.completed = 4.000000
{}.zmDashboardStatsQuitTypes = registerVal3
local function __FUNC_25A3_(arg0)
	local registerVal1 = {}
	local registerVal2 = arg0.lastGameWasHosted:get()
	if registerVal2 ~= 1.000000 or not "HOSTED" then
	end
	registerVal1.hosted = "PLAYED"
	registerVal2 = arg0.lastGameUsedConsumable:get()
	if registerVal2 ~= 1.000000 or not "USED" then
	end
	registerVal1.usedConsumable = "UNUSED"
	registerVal2 = arg0.lastGameWasCoop:get()
	if registerVal2 ~= 0.000000 or not "SOLO" then
	end
	registerVal1.wasCoop = "COOP"
	return registerVal1
end

local function __FUNC_2762_(arg0, arg1, arg2)
	return arg0.gameSizeHistory[arg1.wasCoop].consumablesHistory[arg1.usedConsumable].periodHistory[arg1.hosted][arg2]:get()
end

local function __FUNC_28A2_(arg0, arg1, arg2, arg3)
	local registerVal4 = __FUNC_2762_(arg0, arg1, arg2)
	arg0.gameSizeHistory[arg1.wasCoop].consumablesHistory[arg1.usedConsumable].periodHistory[arg1.hosted][arg2]:set((registerVal4 + arg3))
	local registerVal5 = arg0.statsSinceLastComscoreEvent[arg2]:get()
	arg0.statsSinceLastComscoreEvent[arg2]:set((registerVal5 + arg3))
end

local function __FUNC_2A70_(arg0, arg1)
	local registerVal3 = arg0.currentDashboardingTrackingHistoryIndex:get()
	arg0.quitType[registerVal3]:set({}.zmDashboardStatsQuitTypes[arg1])
	if ((registerVal3 + 1.000000) % 32.000000) == 0.000000 then
		arg0.bufferFull:set(1.000000)
	end
	arg0.currentDashboardingTrackingHistoryIndex:set(((registerVal3 + 1.000000) % 32.000000))
end

local function __FUNC_2BD3_(arg0, arg1)
	local registerVal2 = __FUNC_2762_(arg0, arg1, "started")
	local registerVal4, registerVal5, registerVal6 = pairs({}.zmDashboardStatsQuitTypes)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		local registerVal9 = __FUNC_2762_(arg0, arg1, index7)
	end
	return (registerVal2 - (0.000000 + registerVal9))
end

local function __FUNC_2CA0_(arg0)
	for index2=0.000000, 255.000000, 1.000000 do
		local registerVal6 = Engine.GetItemGroup(index2, Enum.eModes.MODE_ZOMBIES)
		if registerVal6 == "bubblegum_consumable" then
			registerVal6 = tonumber(Engine.GetItemMomentumCost(index2, Enum.eModes.MODE_ZOMBIES))
			if not {}[registerVal6] then
				{}[registerVal6] = 0.000000
			end
			local registerVal7 = Engine.IsLootReady(arg0)
			registerVal7 = Engine.IsInventoryBusy(arg0)
			if registerVal7 and not registerVal7 then
				registerVal7 = Engine.GetItemRef(index2, Enum.eModes.MODE_ZOMBIES)
				local registerVal8 = Engine.GetLootItemQuantity(arg0, registerVal7, Enum.eModes.MODE_ZOMBIES)
				{}[registerVal6] = ({}[registerVal6] + registerVal8)
			end
		end
	end
	return {}
end

local function __FUNC_2F4D_(arg0)
	local registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_ZM_STATS_ONLINE)
	if not registerVal1 then
		return 
	end
	local registerVal5 = Engine.GetXUID64(arg0)
	local registerVal6 = registerVal1.dashboardingTrackingHistory.statsSinceLastComscoreEvent.started:get()
	local registerVal7 = registerVal1.dashboardingTrackingHistory.statsSinceLastComscoreEvent.quit:get()
	local registerVal8 = registerVal1.dashboardingTrackingHistory.statsSinceLastComscoreEvent.dashboard:get()
	local registerVal9 = registerVal1.dashboardingTrackingHistory.statsSinceLastComscoreEvent.timeout:get()
	local registerVal10 = registerVal1.dashboardingTrackingHistory.statsSinceLastComscoreEvent.completed:get()
	local registerVal11 = registerVal1.PlayerStatsList.TOTAL_GAMES_PLAYED.statValue:get()
	local registerVal12 = registerVal1.PlayerStatsList.TIME_PLAYED_TOTAL.statValue:get()
	local registerVal13 = Engine.IsLootReady(arg0)
	registerVal13 = Engine.GetZMVials(arg0)
	if registerVal1 or not registerVal13 then
	end
	local registerVal14 = __FUNC_2CA0_(arg0)
	local registerVal15 = Dvar.zm_dash_stats_use_aggregated_comscore:exists()
	registerVal15 = tonumber(Dvar.zm_dash_stats_use_aggregated_comscore:get())
	if registerVal15 and 0.000000 >= registerVal15 or not "zm_dash_quit_types_aggregated" then
	end
	Engine.RecordComScoreEvent(arg0, "zm_dash_quit_types", "xuid", registerVal5, "started", registerVal6, "quit", registerVal7, "dashboard", registerVal8, "timeout", registerVal9, "gamesPlayed", registerVal11, "timePlayed", registerVal12, "vialsCount", -1.000000, "megaCount", registerVal14[1.000000], "rareCount", registerVal14[2.000000], "ultraCount", registerVal14[3.000000])
	registerVal1.dashboardingTrackingHistory.statsSinceLastComscoreEvent.started:set(0.000000)
	registerVal1.dashboardingTrackingHistory.statsSinceLastComscoreEvent.quit:set(0.000000)
	registerVal1.dashboardingTrackingHistory.statsSinceLastComscoreEvent.dashboard:set(0.000000)
	registerVal1.dashboardingTrackingHistory.statsSinceLastComscoreEvent.timeout:set(0.000000)
	registerVal1.dashboardingTrackingHistory.statsSinceLastComscoreEvent.completed:set(0.000000)
end

local function __FUNC_365C_(arg0, arg1, arg2)
	local registerVal3 = {}.IsOnlineGame()
	registerVal3 = Engine.IsZombiesGame()
	registerVal3 = Engine.IsSignedInToDemonware(arg0)
	registerVal3 = Dvar.zm_dash_stats_enable_tracking:exists()
	registerVal3 = tonumber(Dvar.zm_dash_stats_enable_tracking:get())
	if registerVal3 and registerVal3 and registerVal3 and registerVal3 and registerVal3 == 1.000000 then
		registerVal3 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_ZM_STATS_ONLINE)
		if registerVal3.dashboardingTrackingHistory == nil then
			return 
		end
		local registerVal4 = __FUNC_25A3_(registerVal3.dashboardingTrackingHistory)
		local registerVal5 = __FUNC_2BD3_(registerVal3.dashboardingTrackingHistory, registerVal4)
		if registerVal5 == 0.000000 then
			return 
		end
		__FUNC_28A2_(registerVal3.dashboardingTrackingHistory, registerVal4, arg1, arg2)
		__FUNC_2A70_(registerVal3.dashboardingTrackingHistory, arg1)
	end
end

{}.IncrementZMDashboardQuitType = __FUNC_365C_
local function __FUNC_3916_(arg0)
	local registerVal1 = {}.IsOnlineGame()
	registerVal1 = Engine.IsZombiesGame()
	registerVal1 = Engine.IsSignedInToDemonware(arg0)
	registerVal1 = Dvar.zm_dash_stats_enable_tracking:exists()
	registerVal1 = tonumber(Dvar.zm_dash_stats_enable_tracking:get())
	if registerVal1 and registerVal1 and registerVal1 and registerVal1 and registerVal1 == 1.000000 then
		registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_ZM_STATS_ONLINE)
		if registerVal1.dashboardingTrackingHistory == nil then
			return 
		end
		local registerVal2 = registerVal1.dashboardingTrackingHistory.trackedFirstGame:get()
		if registerVal2 == 0.000000 then
			return 
		end
		registerVal2 = __FUNC_25A3_(registerVal1.dashboardingTrackingHistory)
		local registerVal3 = __FUNC_2BD3_(registerVal1.dashboardingTrackingHistory, registerVal2)
		for index4=1.000000, registerVal3, 1.000000 do
			{}.IncrementZMDashboardQuitType(arg0, "dashboard", 1.000000)
		end
		__FUNC_2F4D_(arg0)
	end
end

{}.UpdateZMDashboardStat = __FUNC_3916_
local registerVal10 = LuaReadOnlyTables.ReadOnlyTable({})
CoDShared = registerVal10
