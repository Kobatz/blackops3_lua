-- Decompiled with CoDLUIDecompiler by JariK

require("lua.Shared.LuaReadOnlyTables")
require("lua.Shared.LobbyData")
local registerVal1 = Engine.GetCurrentPlatform()
if registerVal1 ~= "orbis" then
end
{}.isPS4 = true
registerVal1 = Engine.GetCurrentPlatform()
if registerVal1 ~= "durango" then
end
{}.isXbox = true
registerVal1 = Engine.GetCurrentPlatform()
if registerVal1 ~= "pc" then
end
{}.isPC = true
registerVal1 = Engine.IsDedicatedServer()
if registerVal1 ~= true then
end
{}.isDedicated = true
{}.LUA_INT_MIN = -8388607.000000
{}.LUA_INT_MAX = 8388607.000000
registerVal1 = Engine.GetLimitValue(Enum.Limit.LIMIT_INT_MAX)
{}.INT_MAX = registerVal1
registerVal1 = Engine.GetLimitValue(Enum.Limit.LIMIT_UINT_MAX)
{}.UINT_MAX = registerVal1
{}.CONNECTINGDW_MAX_WAIT_TIME = 30000.000000
registerVal1 = Engine.GetCurrentPlatform()
if registerVal1 == "orbis" then
	{}.CONNECTINGDW_MAX_WAIT_TIME = 40000.000000
end
registerVal1 = Engine.GetCurrentPlatform()
if registerVal1 == "durango" then
	{}.CONNECTINGDW_MAX_WAIT_TIME = 60000.000000
end
registerVal1 = Engine.GetGDTMapsTable()
{}.mapsTable = registerVal1
function {}.MessageDialogForceSubscriptionFire(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.GetModel(registerVal2, "messageDialog")
	if registerVal1 == nil then
		return 
	end
	registerVal2 = Engine.CreateModel(registerVal1, "messagePending")
	local registerVal3 = Engine.GetModelValue(registerVal2)
	if not arg0 and registerVal3 == 0.000000 then
		return 
	end
	Engine.SetModelValue(registerVal2, (registerVal3 + 1.000000))
end

function {}.ShowMessageDialog(arg0, arg1, arg2, arg3)
	if arg2 == nil then
		error("Invalid message dialog message")
		return 
	end
	local registerVal5 = Engine.GetGlobalModel()
	local registerVal4 = Engine.GetModel(registerVal5, "messageDialog")
	if registerVal4 == nil then
		return 
	end
	registerVal5 = Engine.CreateModel(registerVal4, "messagePending")
	local registerVal6 = Engine.CreateModel(registerVal4, "messageType")
	local registerVal7 = Engine.CreateModel(registerVal4, "message")
	local registerVal8 = Engine.CreateModel(registerVal4, "controller")
	local registerVal9 = Engine.CreateModel(registerVal4, "anyControllerAllowed")
	if registerVal5 ~= nil and registerVal6 ~= nil and registerVal7 ~= nil and registerVal8 == nil or registerVal9 == nil then
		return 
	end
	local registerVal10 = Engine.GetModelValue(registerVal5)
	Engine.SetModelValue(registerVal8, 0.000000)
	Engine.SetModelValue(registerVal9, true)
	if arg3 ~= nil then
		local registerVal11 = Engine.CreateModel(registerVal4, "messageTitle")
		Engine.SetModelValue(registerVal11, arg3)
	end
	Engine.SetModelValue(registerVal6, arg1)
	Engine.SetModelValue(registerVal7, arg2)
	Engine.SetModelValue(registerVal5, (registerVal10 + 1.000000))
end

local function __FUNC_1B04_(arg0, arg1, arg2)
	if arg1 ~= nil then
		local registerVal8 = Engine.Localize(arg1)
		Engine.PrintInfo(Enum.consoleLabel.LABEL_DEFAULT, ("LuaUtils.UI_ShowInfoMessageDialog: (" .. arg1 .. ") - " .. registerVal8 .. ".
"))
	end
	{}.ShowMessageDialog(arg0, Enum.MessageDialogType.MESSAGE_DIALOG_TYPE_INFO, arg1, arg2)
end

{}.UI_ShowInfoMessageDialog = __FUNC_1B04_
local function __FUNC_1CE1_(arg0, arg1, arg2)
	if arg1 ~= nil then
		local registerVal8 = Engine.Localize(arg1)
		Engine.PrintWarning(Enum.consoleLabel.LABEL_DEFAULT, ("LuaUtils.UI_ShowWarningMessageDialog: (" .. arg1 .. ") - " .. registerVal8 .. ".
"))
	end
	{}.ShowMessageDialog(arg0, Enum.MessageDialogType.MESSAGE_DIALOG_TYPE_WARNING, arg1, arg2)
end

{}.UI_ShowWarningMessageDialog = __FUNC_1CE1_
local function __FUNC_1EC6_(arg0, arg1, arg2)
	if arg1 ~= nil then
		local registerVal8 = Engine.Localize(arg1)
		Engine.PrintError(Enum.consoleLabel.LABEL_DEFAULT, ("LuaUtils.UI_ShowErrorMessageDialog: (" .. arg1 .. ") - " .. registerVal8 .. ".
"))
	end
	{}.ShowMessageDialog(arg0, Enum.MessageDialogType.MESSAGE_DIALOG_TYPE_ERROR, arg1, arg2)
end

{}.UI_ShowErrorMessageDialog = __FUNC_1EC6_
function {}.UI_SetSignedInGamertagModel(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.CreateModel(registerVal2, "durango.signedInGamertag", true)
	Engine.SetModelValue(registerVal1, arg0)
end

function {}.UI_ClearErrorMessageDialog()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.GetModel(registerVal1, "messageDialog")
	if registerVal0 ~= nil then
		registerVal1 = Engine.GetModel(registerVal0, "messagePending")
		local registerVal2 = Engine.GetModelValue(registerVal1)
		if registerVal1 ~= nil and 0.000000 < registerVal2 then
			Engine.SetModelValue(registerVal1, 0.000000)
		end
		registerVal2 = Engine.GetModel(registerVal0, "messageTitle")
		if registerVal2 ~= nil then
			Engine.SetModelValue(registerVal2, "")
		end
	end
	Engine.ClearError()
end

function {}.LogQoS(arg0, arg1)
	local registerVal2 = Engine.milliseconds()
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYVM, ("KVS log: " .. arg0 .. ", timestamp: " .. registerVal2 .. ".
"))
	Engine.RecordKVS(0.000000, Enum.KVSChannel.MATCHMAKING_QOS, "_timestamp", registerVal2)
	Engine.RecordKVS(0.000000, Enum.KVSChannel.MATCHMAKING_QOS, arg0, arg1)
end

function {}.FlushQoS()
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYVM, "KVS flushing.
")
	Engine.FlushKVS(0.000000, Enum.KVSChannel.MATCHMAKING_QOS)
end

function {}.LogClientTrack(arg0, arg1)
	local registerVal2 = Engine.milliseconds()
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYVM, ("KVS log: " .. arg0 .. ", timestamp: " .. registerVal2 .. ".
"))
	Engine.RecordKVS(0.000000, Enum.KVSChannel.CLIENT_STATS, "_timestamp", registerVal2)
	Engine.RecordKVS(0.000000, Enum.KVSChannel.CLIENT_STATS, arg0, arg1)
end

function {}.FlushClientTrack()
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYVM, "KVS flushing.
")
	Engine.FlushKVS(0.000000, Enum.KVSChannel.CLIENT_STATS)
end

function {}.IsCPZMTarget(arg0)
	if LobbyData.UITargets.UI_CP2LOBBYONLINE.id <= arg0 and arg0 <= LobbyData.UITargets.UI_CP2LOBBYLANCUSTOMGAME.id then
		return true
	end
	return false
end

function {}.IsDOATarget(arg0)
	if LobbyData.UITargets.UI_DOALOBBYONLINE.id <= arg0 and arg0 <= LobbyData.UITargets.UI_DOALOBBYLANCUSTOMGAME.id then
		return true
	end
	return false
end

function {}.IsCustomGameTarget(arg0)
	local registerVal1 = LobbyData:UITargetFromId(arg0)
	if registerVal1.lobbyType ~= Enum.LobbyType.LOBBY_TYPE_GAME or registerVal1.lobbyMode ~= Enum.LobbyMode.LOBBY_MODE_CUSTOM then
	end
	return true
end

function {}.StartsWith(arg0, arg1)
	local registerVal2 = string.sub(arg0, 1.000000, string.len(arg1))
	if registerVal2 ~= arg1 then
	end
	return true
end

function {}.EndsWith(arg0, arg1)
	local registerVal4 = string.len(arg1)
	local registerVal2 = string.sub(arg0, -registerVal4)
	if registerVal2 ~= arg1 then
	end
	return true
end

function {}.IsTableEmpty(arg0)
	if not arg0 then
		return true
	end
	local registerVal2 = next(arg0)
	return (not registerVal2)
end

function {}.TableClear(arg0)
	for index1=1.000000, #, 1.000000 do
		table.remove(arg0, index1)
	end
end

function {}.ReturnCodeToHEX(arg0)
	if arg0 == 0.000000 then
		return false, CoDLUIDecompiler.LuaRegister
	end
	if arg0 == Lobby.ProcessQueue.EVENT_START_ERROR then
		return true, CoDLUIDecompiler.LuaRegister
	end
	string.format("0x%x", arg0)
	return 
end

function {}.ValueToHex(arg0)
	return string.format("0x%x", arg0)
end

function {}.LobbyProcessQueueEmpty()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.GetModel(registerVal1, "lobbyRoot")
	if not registerVal0 then
		return true
	end
	registerVal1 = Engine.GetModel(registerVal0, "queueEmpty")
	if not registerVal1 then
		return true
	end
	return Engine.GetModelValue(registerVal1)
end

function {}.ForceLobbyButtonUpdate()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.CreateModel(registerVal1, "lobbyRoot.lobbyButtonUpdate")
	Engine.ForceNotifyModelSubscriptions(registerVal0)
end

function {}.IsGamescomBuild()
	local registerVal0 = Dvar.ui_execdemo_gamescom:get()
	if registerVal0 then
		return true
	end
	registerVal0 = Dvar.ui_execdemo_gamescom_host:get()
	if registerVal0 then
		return true
	end
	return false
end

function {}.IsBetaBuild()
	local registerVal0 = Dvar.ui_execdemo_beta:get()
	if registerVal0 then
		return true
	end
	return false
end

function {}.AllClientsSpectating()
	local registerVal0 = Engine.LobbyGetSessionClients(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal1, registerVal2, registerVal3 = pairs(registerVal0.sessionClients)
	for index4,value5 in registerVal1, registerVal2, registerVal3 do
		if value5.team ~= Enum.team_t.TEAM_SPECTATOR then
			return false
		end
	end
	return true
end

function {}.LobbyMainModeToEModes(arg0)
	if arg0 == Enum.LobbyMainMode.LOBBY_MAINMODE_CP then
		return Enum.eModes.MODE_CAMPAIGN
	else
		if arg0 == Enum.LobbyMainMode.LOBBY_MAINMODE_MP then
			return Enum.eModes.MODE_MULTIPLAYER
		else
			if arg0 == Enum.LobbyMainMode.LOBBY_MAINMODE_ZM then
				return Enum.eModes.MODE_ZOMBIES
			end
		end
	end
end

local function __FUNC_3869_(arg0)
	local registerVal1 = {}.LobbyMainModeToEModes(arg0.mainMode)
	if registerVal1 == Enum.eModes.MODE_CAMPAIGN then
		local registerVal2 = Engine.IsCampaignModeZombies()
		if registerVal2 then
			return "cp_mi_sing_sgen"
		else
			return "cp_mi_eth_prologue"
		else
			if registerVal1 == Enum.eModes.MODE_MULTIPLAYER then
				registerVal2 = Engine.IsMpStillDownloading()
				if registerVal2 then
					return "mp_freerun_01"
				end
				if arg0.id == LobbyData.UITargets.UI_FRLOBBYONLINEGAME.id or arg0.id == LobbyData.UITargets.UI_FRLOBBYLANGAME.id then
					return "mp_freerun_01"
				end
				return "mp_sector"
			else
				if registerVal1 == Enum.eModes.MODE_ZOMBIES then
					return "zm_zod"
				end
			end
		end
	end
	return ""
end

{}.GetDefaultMap = __FUNC_3869_
function {}.SkuMatch(arg0, arg1, arg2)
	if arg0.region ~= arg2 then
		return false
	end
	if #arg0.langs ~= # then
		return false
	end
	local registerVal3, registerVal4, registerVal5 = ipairs(arg0.langs)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		if value7 ~= arg1[index6] then
			return false
		end
	end
	return true
end

function {}.GetSkuName()
	local registerVal0 = Dvar.loc_availablelanguages:get()
	if LuaUtils.isPS4 then
		local registerVal2, registerVal3, registerVal4 = string.gmatch(registerVal0, "([^_]+)")
		for index5,value6 in registerVal2, registerVal3, registerVal4 do
			table.insert({}, index5)
		end
	else
		registerVal2, registerVal3, registerVal4 = string.gmatch(registerVal0, "([^,]+)")
		for index5,value6 in registerVal2, registerVal3, registerVal4 do
			table.insert({}, index5)
		end
	end
	table.sort({})
	if LuaUtils.isPS4 then
		registerVal4 = Engine.GetSkuRegion()
	end
	registerVal4, registerVal5, registerVal6 = ipairs(LobbyData.PS4SkuList)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		local registerVal9 = LuaUtils.SkuMatch(value8, {}, registerVal4)
		if registerVal9 then
			return value8.name
		end
	end
	return nil
end

function {}.IsSkuOfflineOnly()
	local registerVal0 = Dvar.skuOnlineOverride:exists()
	registerVal0 = Dvar.skuOnlineOverride:get()
	if  or registerVal0 == "0" then
		return false
	end
	registerVal0 = LuaUtils.GetSkuName()
	if registerVal0 == nil then
		return true
	end
	local registerVal2 = Dvar[("skuOnline" .. registerVal0)]:exists()
	if not registerVal2 then
		return true
	end
	registerVal2 = Dvar[("skuOnline" .. registerVal0)]:get()
	if registerVal2 == "1" then
		return false
	end
	return true
end

function {}.IsArenaMode()
	return Engine.GameModeIsMode(Enum.eGameModes.MODE_GAME_LEAGUE)
end

function {}.GetArenaPlaylistInfo()
	local registerVal1 = Engine.GetPlaylistCategories()
	local registerVal4, registerVal5, registerVal6 = ipairs(registerVal1)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		if value8.ref == "arena" then
		end
	end
	return value8, CoDLUIDecompiler.LuaRegister
end

function {}.GetArenaPowerRating(arg0)
	math.floor(((arg0 * 1000.000000) + 5000.000000))
	return math.max(0.000000, math.floor)
end

local function __FUNC_43B5_()
	local registerVal0 = {}.IsArenaMode()
	local registerVal1 = Engine.GetGlobalModel()
	registerVal0 = Engine.GetModel(registerVal1, "lobbyRoot")
	registerVal1 = Engine.GetModel(registerVal0, "lobbyLockedIn")
	if registerVal0 and registerVal1 then
		return Engine.GetModelValue(registerVal1)
	end
	return false
end

{}.LobbyIsLocked = __FUNC_43B5_
function {}.UnlockLobby()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.GetModel(registerVal1, "lobbyRoot")
	registerVal1 = Engine.CreateModel(registerVal0, "lobbyLockedIn")
	Engine.SetModelValue(registerVal1, false)
end

function {}.GetBanMessageForFeature(arg0, arg1, arg2)
	local registerVal3 = Engine.GetGamertagForController(arg0)
	if Dvar.ui_customerServiceURL ~= nil then
		local registerVal5 = Dvar.ui_customerServiceURL:get()
	end
	if arg1 == LuaEnums.FEATURE_BAN.LIVE_MP then
		if arg2 ~= true or not "EXE_COD_ONLINE_PERM_BAN_PLAYER" then
		end
		return Engine.Localize("EXE_COD_ONLINE_TEMP_BAN_PLAYER", registerVal3, registerVal5)
	else
		if arg1 == LuaEnums.FEATURE_BAN.LIVE_ZM then
			if arg2 ~= true or not "EXE_COD_ONLINE_PERM_BAN_PLAYER" then
			end
			return Engine.Localize("EXE_COD_ONLINE_TEMP_BAN_PLAYER", registerVal3, registerVal5)
		else
			if arg1 == LuaEnums.FEATURE_BAN.LIVE_CP then
				if arg2 ~= true or not "EXE_COD_ONLINE_PERM_BAN_PLAYER" then
				end
				return Engine.Localize("EXE_COD_ONLINE_TEMP_BAN_PLAYER", registerVal3, registerVal5)
			else
				if arg1 == LuaEnums.FEATURE_BAN.LEADERBOARD_WRITE_MP then
					if arg2 ~= true or not "EXE_COD_FEATURE_PERM_BAN_PLAYER" then
					end
					return Engine.Localize("EXE_COD_FEATURE_TEMP_BAN_PLAYER", registerVal3, registerVal5)
				else
					if arg1 == LuaEnums.FEATURE_BAN.LEADERBOARD_WRITE_ZM then
						if arg2 ~= true or not "EXE_COD_FEATURE_PERM_BAN_PLAYER" then
						end
						return Engine.Localize("EXE_COD_FEATURE_TEMP_BAN_PLAYER", registerVal3, registerVal5)
					else
						if arg1 == LuaEnums.FEATURE_BAN.LEADERBOARD_WRITE_CP then
							if arg2 ~= true or not "EXE_COD_FEATURE_PERM_BAN_PLAYER" then
							end
							return Engine.Localize("EXE_COD_FEATURE_TEMP_BAN_PLAYER", registerVal3, registerVal5)
						else
							if arg1 == LuaEnums.FEATURE_BAN.MP_HOSTING then
							else
								if arg1 == LuaEnums.FEATURE_BAN.ZM_HOSTING then
								else
									if arg1 == LuaEnums.FEATURE_BAN.CP_HOSTING then
									else
										if arg1 == LuaEnums.FEATURE_BAN.MP_SPLIT_SCREEN then
											if arg2 ~= true or not "EXE_COD_FEATURE_PERM_BAN_PLAYER" then
											end
											return Engine.Localize("EXE_COD_FEATURE_TEMP_BAN_PLAYER", registerVal3, registerVal5)
										else
											if arg1 == LuaEnums.FEATURE_BAN.ZM_SPLIT_SCREEN then
												if arg2 ~= true or not "EXE_COD_FEATURE_PERM_BAN_PLAYER" then
												end
												return Engine.Localize("EXE_COD_FEATURE_TEMP_BAN_PLAYER", registerVal3, registerVal5)
											else
												if arg1 == LuaEnums.FEATURE_BAN.CP_SPLIT_SCREEN then
													if arg2 ~= true or not "EXE_COD_FEATURE_PERM_BAN_PLAYER" then
													end
													return Engine.Localize("EXE_COD_FEATURE_TEMP_BAN_PLAYER", registerVal3, registerVal5)
												else
													if arg1 == LuaEnums.FEATURE_BAN.ARENA_GAMEPLAY then
														if arg2 ~= true or not "EXE_COD_FEATURE_PERM_BAN_PLAYER" then
														end
														return Engine.Localize("EXE_COD_FEATURE_TEMP_BAN_PLAYER", registerVal3, registerVal5)
													else
														if arg1 == LuaEnums.FEATURE_BAN.USER_GENERATED_CONTENT then
															if arg2 ~= true or not "EXE_COD_FEATURE_PERM_BAN_PLAYER" then
															end
															return Engine.Localize("EXE_COD_FEATURE_TEMP_BAN_PLAYER", registerVal3, registerVal5)
														else
															if arg1 == LuaEnums.FEATURE_BAN.PRESTIGE then
																if arg2 ~= true or not "EXE_COD_FEATURE_PERM_BAN_PLAYER" then
																end
																return Engine.Localize("EXE_COD_FEATURE_TEMP_BAN_PLAYER", registerVal3, registerVal5)
															else
																if arg1 == LuaEnums.FEATURE_BAN.PRESTIGE_EXTRAS then
																	if arg2 ~= true or not "EXE_COD_FEATURE_PERM_BAN_PLAYER" then
																	end
																	return Engine.Localize("EXE_COD_FEATURE_TEMP_BAN_PLAYER", registerVal3, registerVal5)
																else
																	if arg1 == LuaEnums.FEATURE_BAN.PIRACY then
																		if arg2 ~= true or not "EXE_COD_PIRACY_PERM_BAN_PLAYER" then
																		end
																		return Engine.Localize("EXE_COD_PIRACY_TEMP_BAN_PLAYER", registerVal3, registerVal5)
																	else
																		if arg1 == LuaEnums.FEATURE_BAN.LOOT then
																			if arg2 ~= true or not "EXE_COD_FEATURE_PERM_BAN_PLAYER" then
																			end
																			return Engine.Localize("EXE_COD_FEATURE_TEMP_BAN_PLAYER", registerVal3, registerVal5)
																		else
																			if arg1 == LuaEnums.FEATURE_BAN.FREERUN then
																				if arg2 ~= true or not "EXE_COD_FEATURE_PERM_BAN_PLAYER" then
																				end
																				return Engine.Localize("EXE_COD_FEATURE_TEMP_BAN_PLAYER", registerVal3, registerVal5)
																			else
																				if arg1 == LuaEnums.FEATURE_BAN.MP_PUBLIC_MATCH then
																					if arg2 ~= true or not "EXE_COD_FEATURE_PERM_BAN_PLAYER" then
																					end
																					return Engine.Localize("EXE_COD_FEATURE_TEMP_BAN_PLAYER", registerVal3, registerVal5)
																				else
																					return Engine.Localize("PLATFORM_DEMONWARE_DISCONNECT")
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
end

function {}.isOnlineGame()
	local registerVal0 = Engine.SessionMode_IsOnlineGame()
	if registerVal0 then
		return true
	end
	return false
end

local function __FUNC_51C6_()
	local registerVal0 = Engine.GetLobbyUIScreen()
	local registerVal1 = {}.isOnlineGame()
	if registerVal1 then
		if registerVal0 ~= LobbyData.UITargets.UI_CPLOBBYONLINEPUBLICGAME.id then
		end
	end
	return true
end

{}.isRankedGame = __FUNC_51C6_
function {}.isHost()
	local registerVal0 = Engine.DvarBool(nil, "sv_running")
	return registerVal0
end

local function __FUNC_5372_(arg0)
	local registerVal1 = Engine.IsInGame()
	if not registerVal1 then
		return true
	end
	registerVal1 = {}.isHost()
	if registerVal1 then
		registerVal1 = {}.isRankedGame()
		if registerVal1 then
			Engine.UpdateStatsForQuit(arg0, true)
			registerVal1 = Engine.HostMigrationWaitingForPlayers()
			registerVal1 = Engine.DvarInt(nil, "g_gameEnded")
			if not registerVal1 and registerVal1 ~= 1.000000 then
				registerVal1 = Engine.IsZombiesGame()
				registerVal1 = Engine.GetLobbyClientCount(Enum.LobbyType.LOBBY_TYPE_GAME)
				local registerVal2 = Dvar.migration_minclientcount:get()
				if registerVal1 == true and registerVal1 < registerVal2 then
					Engine.SendMenuResponse(arg0, "popup_leavegame", "endround")
					return true
				else
					Engine.Exec(arg0, "hostmigration_start")
					return true
				end
			end
			return false
		end
		Engine.UpdateStatsForQuit(arg0, false)
		Engine.SendMenuResponse(arg0, "popup_leavegame", "endround")
		return true
	end
	Engine.UpdateStatsForQuit(arg0, false)
	Engine.Exec(arg0, "disconnect")
	return true
end

{}.QuitGame = __FUNC_5372_
function {}.SafeComError(arg0, arg1)
	local registerVal2 = Engine.IsInComError()
	if not registerVal2 then
		Engine.ComError(arg0, arg1)
	end
	local registerVal5 = tostring(arg0)
	local registerVal9 = Engine.Localize(arg1)
	Engine.PrintError(Enum.consoleLabel.LABEL_DEFAULT, ("**DOUBLE COM_ERROR** prevented: LuaUtils.SafeComError(" .. registerVal5 .. ", " .. arg1 .. ") - " .. registerVal9 .. ".
"))
end

local function __FUNC_5965_(arg0)
	local registerVal2 = Engine.GetPlaylistCategories()
	local registerVal3, registerVal4, registerVal5 = ipairs(registerVal2)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		local registerVal8 = Engine.IsCampaignModeZombies()
		if {}.mapsTable[arg0] or value7.ref ~= "cp_nightmares_public" then
			registerVal8 = Engine.IsCampaignModeZombies()
		else
			local registerVal9, registerVal10, registerVal11 = ipairs(value7.playlists)
			for index12,value13 in registerVal9, registerVal10, registerVal11 do
				local registerVal14 = string.find(value13.name, arg0)
				if registerVal14 ~= nil then
					return value13.index
				end
			end
		end
	end
	return nil
end

{}.GetPlaylistIDForSelectedCPMission = __FUNC_5965_
function {}.IsGameModeParagonCapable(arg0)
	if arg0 ~= Enum.eModes.MODE_MULTIPLAYER and arg0 ~= Enum.eModes.MODE_ZOMBIES then
	end
	return true
end

function {}.ConvertToPrestigeMerged(arg0, arg1, arg2)
	return (((arg1 * 10000.000000) + (arg2 * 100.000000)) + arg0)
end

function {}.ConvertFromPrestigeMerged(arg0)
	local registerVal1 = math.floor((arg0 / 10000.000000))
	local registerVal3 = math.floor(((arg0 - (registerVal1 * 10000.000000)) / 100.000000))
	return ((arg0 - (registerVal1 * 10000.000000)) - (registerVal3 * 100.000000)), CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

local function __FUNC_5D5B_(arg0)
	if {}.isPC then
		local registerVal1 = Engine.IsStarterPack()
	end
	return registerVal1
end

{}.IsStarterPack = __FUNC_5D5B_
local function __FUNC_5DE9_(arg0)
	if {}.isPC then
		local registerVal1 = Engine.IsStarterPack()
	end
	return registerVal1
end

{}.IsStarterPack = __FUNC_5DE9_
function {}.IsStarterPackParty(arg0)
	local registerVal2 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal2 then
	end
	local registerVal3 = Engine.LobbyGetSessionClients(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal4, registerVal5, registerVal6 = ipairs(registerVal3.sessionClients)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		if value8.isStarterPack == 1.000000 then
			return true
		end
	end
	return false
end

function {}.Mods_Enabled()
	local registerVal0 = Dvar.mods_enabled:get()
	if registerVal0 then
		return true
	end
	return false
end

function {}.Mods_IsUsingMods()
	return Engine.IsUsingMods()
end

function {}.Mods_UsingModsUgcName()
	return Engine.UsingModsUgcName()
end

function {}.Mods_UsingModsVersion()
	return Engine.UsingModsVersion()
end

function {}.Mods_UsingModsInternalName()
	return Engine.UsingModsInternalName()
end

function {}.Mods_IsUsingUsermap()
	return Engine.IsUsingUsermap()
end

function {}.Mods_UsingUsermapUgcName()
	return Engine.UsingUsermapUgcName()
end

function {}.Mods_IsUGC(arg0)
	if arg0.ugcName == "" then
	end
	return true
end

local function __FUNC_6423_(arg0)
	if arg0 == nil then
		{}.ugcName = ""
	end
	local registerVal3 = {}.Mods_UsingModsUgcName()
	if {}.ugcName ~= registerVal3 then
	end
	return true
end

{}.Mods_IsModLoaded = __FUNC_6423_
local function __FUNC_64D3_(arg0)
	local registerVal1 = {}.Mods_IsUGC(arg0)
	if registerVal1 then
		registerVal1 = Engine.Mods_Lists_IsInstalled(arg0.ugcType, arg0.ugcName, arg0.ugcVersion)
	end
	return registerVal1
end

{}.Mods_Lists_IsInstalled = __FUNC_64D3_
function {}.Mods_LoadMod(arg0)
	if arg0 then
		Engine.Mods_SetMod(arg0)
	end
end

function {}.GetSteamServerPasswordModel(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.CreateModel(registerVal2, "steamServerPassword")
	registerVal2 = Engine.CreateModel(registerVal1, arg0)
	return registerVal2
end

local function __FUNC_6712_(arg0)
	local registerVal1 = {}.GetSteamServerPasswordModel("controller")
	Engine.SetModelValue(registerVal1, arg0.controller)
	local registerVal2 = {}.GetSteamServerPasswordModel("xuid")
	Engine.SetModelValue(registerVal2, arg0.xuid)
	local registerVal3 = {}.GetSteamServerPasswordModel("joinType")
	Engine.SetModelValue(registerVal3, arg0.joinType)
	local registerVal4 = {}.GetSteamServerPasswordModel("showPasswordInput")
	local registerVal5 = Engine.GetModelValue(registerVal4)
	Engine.SetModelValue(registerVal4, (registerVal5 + 1.000000))
end

{}.ShowPasswordInput = __FUNC_6712_
local function __FUNC_68F7_()
	local registerVal0 = {}.GetSteamServerPasswordModel("controller")
	local registerVal1 = {}.GetSteamServerPasswordModel("xuid")
	local registerVal2 = {}.GetSteamServerPasswordModel("joinType")
	local registerVal3 = {}
	local registerVal4 = Engine.GetModelValue(registerVal0)
	registerVal3.controller = registerVal4
	registerVal4 = Engine.GetModelValue(registerVal1)
	registerVal3.xuid = registerVal4
	registerVal4 = Engine.GetModelValue(registerVal2)
	registerVal3.joinType = registerVal4
	Engine.LobbyVM_CallFunc("Join", registerVal3)
end

{}.HandleSteamClientPasswordComplete = __FUNC_68F7_
function {}.SetNetworkMode(arg0, arg1)
	Engine.SetLobbyNetworkMode(arg1)
end

local function __FUNC_6AF5_(arg0, arg1)
	if arg1 == Enum.LobbyMainMode.LOBBY_MAINMODE_INVALID then
		return false
	end
	local registerVal2 = Engine.IsLocalClient(arg0.xuid)
	if registerVal2 then
		registerVal2 = Engine.GetChunkStatusForMainMode(arg1)
		if registerVal2 == 3.000000 then
		end
		return true
	end
	if arg1 == Enum.LobbyMainMode.LOBBY_MAINMODE_MP then
		if arg0.mpChunkStatus == 3.000000 then
		end
		return true
	else
		if arg1 == Enum.LobbyMainMode.LOBBY_MAINMODE_CP then
			if arg0.cpChunkStatus == 3.000000 then
			end
			return true
		else
			if arg1 == Enum.LobbyMainMode.LOBBY_MAINMODE_ZM then
				if arg0.zmChunkStatus == 3.000000 then
				end
				return true
			end
		end
	end
	return false
end

local function __FUNC_6DB4_(arg0, arg1)
	if arg1 == Enum.LobbyMainMode.LOBBY_MAINMODE_INVALID then
		return false
	end
	local registerVal3 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal3 then
	end
	local registerVal4 = Engine.LobbyGetSessionClients(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal5, registerVal6, registerVal7 = ipairs(registerVal4.sessionClients)
	for index8,value9 in registerVal5, registerVal6, registerVal7 do
		local registerVal10 = __FUNC_6AF5_(value9, arg1)
		if registerVal10 then
			return true
		end
	end
	return false
end

{}.IsPartyMemberMissingRequiredChunk = __FUNC_6DB4_
function {}.FindItemInArray(arg0, arg1)
	local registerVal2, registerVal3, registerVal4 = ipairs(arg0)
	if  == arg1 then
		return 
	end
	return nil
end

function {}.GetTableKeyForElement(arg0, arg1)
	local registerVal2, registerVal3, registerVal4 = pairs(arg0)
	if  == arg1 then
		return 
	end
	return nil
end

function {}.swap(arg0, arg1, arg2)
	arg0[arg2] = arg0[arg1]
	arg0[arg1] = arg0[arg2]
end

local function __FUNC_713C_(arg0)
	local registerVal2 = math.random(#)
	{}.swap(arg0, registerVal2, #)
end

{}.shuffle = __FUNC_713C_
{}.contractTable_mp = "gamedata/tables/mp/mp_contractTable.csv"
function {}.ValidateBlackjackPurchaseForController(arg0)
	local registerVal1 = Dvar.blackjack_contract_purchasable:exists()
	if not registerVal1 then
		return 
	end
	registerVal1 = Dvar.blackjack_contract_purchasable:get()
	registerVal1 = Engine.AreStatsFetched(arg0)
	registerVal1 = Engine.IsLootReady(arg0)
	if registerVal1 and arg0 or not registerVal1 then
		return 
	end
	registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	local registerVal2 = registerVal1.blackjack_purchase_count:get()
	local registerVal3 = Engine.GetInventoryItemQuantity(arg0, Dvar.blackjack_contract_dwid:get())
	if registerVal1 and registerVal1.blackjack_purchase_count and registerVal2 < registerVal3 then
		local registerVal5 = registerVal1.blackjack_contract_count:get()
		registerVal1.blackjack_purchase_count:set(registerVal3)
		registerVal1.blackjack_contract_count:set((registerVal5 + (registerVal3 - registerVal2)))
		Engine.StorageWrite(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	end
end

function {}.ValidateBlackjackPurchase()
	local registerVal0 = Engine.SessionMode_IsOnlineGame()
	if not registerVal0 then
		return 
	end
	local registerVal1 = Engine.GetMaxControllerCount()
	for index0=0.000000, (registerVal1 - 1.000000), 1.000000 do
		LuaUtils.ValidateBlackjackPurchaseForController(index0)
	end
end

function {}.IsWeaponContractNeeded(arg0)
	local registerVal1 = Dvar.enable_weapon_contract:get()
	registerVal1 = Engine.AreStatsFetched(arg0)
	registerVal1 = Engine.IsLootReady(arg0)
	registerVal1 = Engine.GetInventoryItemQuantity(arg0, Dvar.weapon_contract_incentive_id:get())
	local registerVal2 = Dvar.weapon_contract_max:get()
	registerVal1 = Engine.GetDStat(arg0, "weaponContractData", "completeTimestamp")
	if registerVal1 and registerVal1 and registerVal1 and registerVal1 < registerVal2 and registerVal1 ~= 0.000000 then
		return true
	end
	return false
end

function {}.BuyWeaponContractIfNeeded(arg0)
	local registerVal1 = Dvar.skip_contract_rewards:get()
	registerVal1 = LuaUtils.IsWeaponContractNeeded(arg0)
	if not registerVal1 and registerVal1 then
		Engine.PurchaseWeaponContract(arg0, 1.000000)
	end
end

local function __FUNC_79DD_()
	local registerVal0 = Engine.CurrentSessionMode()
	registerVal0 = Engine.SessionMode_IsPublicOnlineGame()
	if registerVal0 ~= Enum.eModes.MODE_MULTIPLAYER or not registerVal0 then
		return 
	end
	local registerVal1 = Engine.GetMaxControllerCount()
	for index0=0.000000, (registerVal1 - 1.000000), 1.000000 do
		{}.BuyWeaponContractIfNeeded(index0)
	end
end

{}.BuyWeaponContractIfNeededAfterMatch = __FUNC_79DD_
function {}.IsStatPathValueGreaterThanZero(arg0, arg1, arg2, arg3)
	local registerVal4 = Engine.GetPlayerStats(arg0, arg1, arg2)
	local registerVal5, registerVal6, registerVal7 = string.gmatch(arg3, "%S+")
	for index8,value9 in registerVal5, registerVal6, registerVal7 do
	end
	registerVal5 = registerVal4[index8]:get()
	registerVal6 = type(registerVal5)
	if registerVal6 == "number" then
		if 0.000000 >= registerVal5 then
		end
		return true
	else
		registerVal6 = type(registerVal5)
		if registerVal6 == "boolean" then
			return registerVal5
		end
	end
	return false
end

local function __FUNC_7CE2_(arg0, arg1, arg2)
	local registerVal3 = Dvar.enable_weapon_contract:get()
	registerVal3 = Engine.AreStatsFetched(arg0)
	registerVal3 = Engine.IsLootReady(arg0)
	registerVal3 = Engine.GetInventoryItemQuantity(arg0, arg1)
	registerVal3 = {}.IsStatPathValueGreaterThanZero(arg0, 0.000000, Enum.eModes.MODE_MULTIPLAYER, arg2)
	if registerVal3 and registerVal3 and registerVal3 and registerVal3 == 0.000000 and registerVal3 then
		return true
	end
	return false
end

{}.IsSpecialContractRewardNeeded = __FUNC_7CE2_
local function __FUNC_7EE4_(arg0)
	local registerVal1 = Engine.TableFindRows({}.contractTable_mp, 5.000000, "special_contract")
	local registerVal2, registerVal3, registerVal4 = ipairs(registerVal1)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		local registerVal7 = Engine.TableLookupGetColumnValueForRow({}.contractTable_mp, value6, 9.000000)
		local registerVal8 = Engine.TableLookupGetColumnValueForRow({}.contractTable_mp, value6, 10.000000)
		local registerVal9 = Engine.TableLookupGetColumnValueForRow({}.contractTable_mp, value6, 11.000000)
		local registerVal10 = {}.IsSpecialContractRewardNeeded(arg0, registerVal8, registerVal7)
		if registerVal7 ~= "" and registerVal8 ~= "" and registerVal9 ~= "" and registerVal10 then
			Engine.PurchaseDWSKU(arg0, registerVal9)
		end
	end
end

{}.BuySpecialContractRewardsIfNeeded = __FUNC_7EE4_
local function __FUNC_812C_()
	local registerVal0 = Engine.CurrentSessionMode()
	registerVal0 = Engine.SessionMode_IsPublicOnlineGame()
	if registerVal0 ~= Enum.eModes.MODE_MULTIPLAYER or not registerVal0 then
		return 
	end
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.CreateModel(registerVal2, "skipZMHDPopups")
	Engine.SetModelValue(registerVal1, true)
	registerVal1 = Engine.GetMaxControllerCount()
	for index0=0.000000, (registerVal1 - 1.000000), 1.000000 do
		{}.BuySpecialContractRewardsIfNeeded(index0)
	end
end

{}.BuySpecialContractRewardsIfNeededAfterMatch = __FUNC_812C_
function {}.SecondsToTimeRemainingString(arg0, arg1)
	local registerVal2 = math.floor((arg0 / 86400.000000))
	local registerVal3 = math.floor(((arg0 - (registerVal2 * 86400.000000)) / 3600.000000))
	local registerVal4 = math.floor((((arg0 - (registerVal2 * 86400.000000)) - (registerVal3 * 3600.000000)) / 60.000000))
	if registerVal3 < 10.000000 then
	end
	if registerVal4 < 10.000000 then
	end
	if (((arg0 - (registerVal2 * 86400.000000)) - (registerVal3 * 3600.000000)) - (registerVal4 * 60.000000)) < 10.000000 then
	end
	if arg1 and registerVal2 <= 0.000000 then
		return Engine.Localize("MENU_TIMEREMAINING_HMS", ("0" .. registerVal3), ("0" .. registerVal4), ("0" .. (((arg0 - (registerVal2 * 86400.000000)) - (registerVal3 * 3600.000000)) - (registerVal4 * 60.000000))))
	end
	return Engine.Localize("MENU_TIMEREMAINING_DHMS", registerVal2, ("0" .. registerVal3), ("0" .. registerVal4), ("0" .. (((arg0 - (registerVal2 * 86400.000000)) - (registerVal3 * 3600.000000)) - (registerVal4 * 60.000000))))
end

function {}.UpdateContract(arg0, arg1)
	local registerVal2 = arg0.index:get()
	if registerVal2 ~= arg1.id then
		arg0.index:set(arg1.id)
		arg0.progress:set(0.000000)
		arg0.award_given:set(0.000000)
		arg0.active:set(1.000000)
		return true
	end
	return false
end

function {}.SetAARContractStats(arg0, arg1)
	arg1.index:set(arg0.index:get())
	arg1.progress:set(arg0.progress:get())
	arg1.award_given:set(arg0.award_given:get())
	arg1.active:set(arg0.active:get())
end

local registerVal2 = {}
registerVal2.weeklyContractIndex1 = 0.000000
registerVal2.weeklyContractIndex2 = 1.000000
registerVal2.dailyContractIndex = 2.000000
registerVal2.specialContractIndex = 3.000000
{}.BMContracts = registerVal2
local function __FUNC_87B0_()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.CreateModel(registerVal1, "contractWeeklyAIndex")
	local registerVal2 = Engine.GetGlobalModel()
	registerVal1 = Engine.CreateModel(registerVal2, "contractWeeklyBIndex")
	local registerVal3 = Engine.GetGlobalModel()
	registerVal2 = Engine.CreateModel(registerVal3, "contractDailyIndex")
	local registerVal4 = Engine.GetGlobalModel()
	registerVal3 = Engine.CreateModel(registerVal4, "contractWeeklyRemaining")
	local registerVal5 = Engine.GetGlobalModel()
	registerVal4 = Engine.CreateModel(registerVal5, "contractDailyRemaining")
	registerVal5 = Engine.DvarBool(nil, "contracts_enabled_mp")
	if not registerVal5 then
		return 
	end
	registerVal5 = Engine.GetContracts()
	local registerVal6 = Engine.SessionMode_IsOnlineGame()
	if registerVal6 and registerVal5 ~= nil and registerVal5[({}.BMContracts.weeklyContractIndex1 + 1.000000)] ~= nil and registerVal5[({}.BMContracts.weeklyContractIndex2 + 1.000000)] == nil or registerVal5[({}.BMContracts.dailyContractIndex + 1.000000)] == nil then
		return 
	end
	registerVal6 = Engine.DvarBool(nil, "contracts_disable_schedule")
	if not registerVal6 then
		local registerVal7 = Engine.GetMaxControllerCount()
		for index6=0.000000, (registerVal7 - 1.000000), 1.000000 do
			local registerVal11 = Engine.AreStatsFetched(index6)
			registerVal11 = Engine.StorageGetBuffer(index6, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
			local registerVal12, registerVal13, registerVal14 = pairs({}.BMContracts)
			for index15,value16 in registerVal12, registerVal13, registerVal14 do
				local registerVal17 = LuaUtils.UpdateContract(registerVal11.contracts[value16], registerVal5[(value16 + 1.000000)])
				if registerVal5[(value16 + 1.000000)] ~= nil and registerVal17 == true then
					Engine.PrintInfo(Enum.consoleLabel.LABEL_DEFAULT, ("Updated contract slot " .. value16 .. " to " .. registerVal5[(value16 + 1.000000)].id .. " " .. registerVal5[(value16 + 1.000000)].name .. " for controller " .. index6 .. "
"))
					local registerVal20 = registerVal11.contracts[value16].index:get()
					Engine.PrintInfo(Enum.consoleLabel.LABEL_DEFAULT, ("New slot index in stats: " .. registerVal20 .. "
"))
					if value16 == LuaUtils.BMContracts.dailyContractIndex then
						registerVal11.ui_seen_daily_congrats:set(0.000000)
					else
						registerVal11.ui_seen_weekly_congrats:set(0.000000)
					end
				end
			end
		end
	end
	Engine.SetModelValue(registerVal0, registerVal5[({}.BMContracts.weeklyContractIndex1 + 1.000000)].id)
	Engine.SetModelValue(registerVal1, registerVal5[({}.BMContracts.weeklyContractIndex2 + 1.000000)].id)
	Engine.SetModelValue(registerVal2, registerVal5[({}.BMContracts.dailyContractIndex + 1.000000)].id)
	Engine.SetModelValue(registerVal3, LuaUtils.SecondsToTimeRemainingString(registerVal5.timeRemainingWeekly))
	Engine.SetModelValue(registerVal4, LuaUtils.SecondsToTimeRemainingString(registerVal5.timeRemainingDaily))
end

{}.CycleContracts = __FUNC_87B0_
local function __FUNC_920D_()
	local registerVal0 = Engine.DvarBool(nil, "contracts_enabled_mp")
	if not registerVal0 then
		return 
	end
	local registerVal1 = Engine.GetMaxControllerCount()
	for index0=0.000000, (registerVal1 - 1.000000), 1.000000 do
		local registerVal4 = Engine.AreStatsFetched(index0)
		registerVal4 = Engine.StorageGetBuffer(index0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
		local registerVal5, registerVal6, registerVal7 = pairs({}.BMContracts)
		for index8,value9 in registerVal5, registerVal6, registerVal7 do
			{}.SetAARContractStats(registerVal4.contracts[value9], registerVal4.contractsAAR[value9])
		end
	end
end

{}.SaveAfterMatchContractStats = __FUNC_920D_
function {}.GetBlackjackHeroIndex(arg0)
	local registerVal1 = Engine.GetHeroList(arg0)
	local registerVal2, registerVal3, registerVal4 = ipairs(registerVal1)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		local registerVal7 = CoDShared.IsLootHero(value6)
		if registerVal7 then
			return value6.bodyIndex
		end
	end
end

local function __FUNC_9593_(arg0)
	local registerVal1 = Dvar.ui_enableAllHeroes:get()
	if registerVal1 then
		return 
	end
	local registerVal4 = Engine.AreStatsFetched(arg0)
	registerVal4 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	local registerVal5 = Engine.TableLookup(arg0, "gamedata/tables/common/consumables.csv", 1.000000, "blackjack", 0.000000)
	local registerVal6 = registerVal4.consumables[registerVal5].consumed:get()
	local registerVal7 = registerVal4.consumables[registerVal5].awarded:get()
	local registerVal8 = {}.GetBlackjackHeroIndex(Enum.eModes.MODE_MULTIPLAYER)
	local registerVal9 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_LOADOUTS)
	local registerVal10 = {}
	registerVal10[Enum.CACType.CAC_TYPE_MP_PUBLIC] = "lastSelectedCharacterIndex"
	local registerVal11, registerVal12, registerVal13 = pairs(registerVal10)
	for index14,value15 in registerVal11, registerVal12, registerVal13 do
		local registerVal16 = Engine.GetEquippedHeroForCACType(arg0, Enum.eModes.MODE_MULTIPLAYER, index14)
		if registerVal16 == registerVal8 then
			registerVal16 = registerVal9[value15]:get()
			Engine.SetHeroForCACType(arg0, Enum.eModes.MODE_MULTIPLAYER, index14, registerVal16)
		end
	end
end

{}.ResetToLastSelectedSpecialistIfNeeded = __FUNC_9593_
local function __FUNC_9A58_()
	local registerVal0 = Engine.CurrentSessionMode()
	registerVal0 = Engine.SessionMode_IsPublicOnlineGame()
	if registerVal0 ~= Enum.eModes.MODE_MULTIPLAYER or not registerVal0 then
		return 
	end
	local registerVal1 = Engine.GetMaxControllerCount()
	for index0=0.000000, (registerVal1 - 1.000000), 1.000000 do
		{}.ResetToLastSelectedSpecialistIfNeeded(index0)
	end
end

{}.ResetToLastSelectedSpecialistIfNeededAfterMatch = __FUNC_9A58_
function {}.SetLastSelectedSpecialist(arg0, arg1)
	local registerVal2 = Engine.CurrentSessionMode()
	if registerVal2 ~= Enum.eModes.MODE_MULTIPLAYER then
		return 
	end
	registerVal2 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_LOADOUTS)
	if registerVal2 then
		registerVal2.lastSelectedCharacterIndex:set(arg1)
	end
end

function {}.GetCurrentLootVersion()
	local registerVal0 = Dvar.loot_mpItemVersions:get()
	local registerVal2, registerVal3, registerVal4 = string.gmatch(registerVal0, "([^,]+)")
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
	end
	return tonumber(index5)
end

local function __FUNC_9EA4_(arg0)
	local registerVal1 = Engine.IsZombiesGame()
	if registerVal1 then
		registerVal1 = {}.IsBitwiseAndNonZero(arg0, Enum.ContentFlagBits.CONTENT_DLC1ZM)
		if registerVal1 then
		end
		registerVal1 = {}.IsBitwiseAndNonZero((arg0 | Enum.ContentFlagBits.CONTENT_DLC1), Enum.ContentFlagBits.CONTENT_DLC2ZM)
		if registerVal1 then
		end
		registerVal1 = {}.IsBitwiseAndNonZero(((arg0 | Enum.ContentFlagBits.CONTENT_DLC1) | Enum.ContentFlagBits.CONTENT_DLC2), Enum.ContentFlagBits.CONTENT_DLC3ZM)
		if registerVal1 then
		end
		registerVal1 = {}.IsBitwiseAndNonZero((((arg0 | Enum.ContentFlagBits.CONTENT_DLC1) | Enum.ContentFlagBits.CONTENT_DLC2) | Enum.ContentFlagBits.CONTENT_DLC3), Enum.ContentFlagBits.CONTENT_DLC4ZM)
		if registerVal1 then
		end
	end
	return ((((arg0 | Enum.ContentFlagBits.CONTENT_DLC1) | Enum.ContentFlagBits.CONTENT_DLC2) | Enum.ContentFlagBits.CONTENT_DLC3) | Enum.ContentFlagBits.CONTENT_DLC4)
end

{}.UpdateZMDLCBits = __FUNC_9EA4_
function {}.IsBitwiseAndNonZero(arg0, arg1)
	if (arg0 & arg1) == 0.000000 then
	end
	return true
end

registerVal2 = {}
local registerVal4 = {}
registerVal4[Enum.XONLINE_NAT_TYPE.XONLINE_NAT_OPEN] = true
registerVal4[Enum.XONLINE_NAT_TYPE.XONLINE_NAT_MODERATE] = true
registerVal4[Enum.XONLINE_NAT_TYPE.XONLINE_NAT_STRICT] = true
registerVal2[Enum.XONLINE_NAT_TYPE.XONLINE_NAT_OPEN] = registerVal4
registerVal4 = {}
registerVal4[Enum.XONLINE_NAT_TYPE.XONLINE_NAT_OPEN] = true
registerVal4[Enum.XONLINE_NAT_TYPE.XONLINE_NAT_MODERATE] = true
registerVal4[Enum.XONLINE_NAT_TYPE.XONLINE_NAT_STRICT] = false
registerVal2[Enum.XONLINE_NAT_TYPE.XONLINE_NAT_MODERATE] = registerVal4
registerVal4 = {}
registerVal4[Enum.XONLINE_NAT_TYPE.XONLINE_NAT_OPEN] = true
registerVal4[Enum.XONLINE_NAT_TYPE.XONLINE_NAT_MODERATE] = false
registerVal4[Enum.XONLINE_NAT_TYPE.XONLINE_NAT_STRICT] = false
registerVal2[Enum.XONLINE_NAT_TYPE.XONLINE_NAT_STRICT] = registerVal4
local function __FUNC_A1C9_(arg0, arg1)
	if arg1 == nil then
		local registerVal2 = Engine.GetNatType()
	end
	if registerVal2 == Enum.XONLINE_NAT_TYPE.XONLINE_NAT_UNKNOWN or arg0 == Enum.XONLINE_NAT_TYPE.XONLINE_NAT_UNKNOWN then
		return true
	end
	return registerVal2[registerVal2][arg0]
end

{}.IsCompatibleNatConnection = __FUNC_A1C9_
function {}.PlaylistRulesIncludes(arg0, arg1)
	if arg0.playlist then
	end
	if arg0.playlist.rules and arg0.playlist.eventRules then
	end
	local registerVal3, registerVal4, registerVal5 = string.gmatch((arg0.playlist.rules .. arg0.playlist.eventRules), "([^;]+)")
	if  == arg1 then
		return true
	end
	return false
end

function {}.StringSplit(arg0, arg1)
	if arg1 == nil then
	end
	local registerVal3, registerVal4, registerVal5 = string.gmatch(arg0, ("([^" .. "%s" .. "]+)"))
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		{}[index6] = true
	end
	return {}
end

function {}.StringSplitToArray(arg0, arg1)
	if arg1 == nil then
	end
	local registerVal3, registerVal4, registerVal5 = string.gmatch(arg0, ("([^" .. "%s" .. "]+)"))
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		table.insert({}, index6)
	end
	return {}
end

local registerVal3 = LuaReadOnlyTables.ReadOnlyTable({})
LuaUtils = registerVal3
