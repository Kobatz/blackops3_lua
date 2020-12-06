-- Decompiled with CoDLUIDecompiler by JariK

require("lua.Lobby.Common.LobbyCore")
require("lua.Lobby.Process.LobbyProcessNavigate")
require("lua.Lobby.Process.LobbyProcess")
require("lua.Shared.LobbyData")
require("lua.Shared.LuaUtils")
require("lua.Lobby.Matchmaking.LobbyMatchmakingCP")
require("lua.Lobby.Matchmaking.LobbyMatchmakingMP")
require("lua.Lobby.Matchmaking.LobbyMatchmakingZM")
require("lua.Lobby.Matchmaking.LobbyMatchmakingArena")
require("lua.Lobby.Matchmaking.LobbyMatchmakingPriority")
require("lua.Lobby.Matchmaking.LobbyMatchmakingDedicated")
Lobby.Matchmaking = {}
Lobby.Matchmaking.FFOTD_PLAYLIST_VERSION_OFFSET = 100000.000000
Lobby.Matchmaking.INVALID_PARKING_PLAYLIST = 0.000000
Lobby.Matchmaking.MAX_DATACENTERS_IN_QUERY = 5.000000
Lobby.Matchmaking.CachedPingLimit = nil
local registerVal1 = {}
registerVal1.INVALID = 0.000000
registerVal1.PUBLIC = 1.000000
registerVal1.PUBLIC_CP_ALL = 2.000000
registerVal1.ARENA = 3.000000
registerVal1.LOBBY_MERGE = 4.000000
Lobby.Matchmaking.SearchMode = registerVal1
registerVal1 = {}
registerVal1.P2P_SERVER_MP = 1000.000000
registerVal1.P2P_SERVER_ZM = 1001.000000
registerVal1.P2P_SERVER_CP = 1002.000000
registerVal1.P2P_SERVER_CPZM = 1003.000000
registerVal1.P2P_SERVER_CPDOA = 1004.000000
registerVal1.DEDICATED_SERVER = 2000.000000
Lobby.Matchmaking.ServerType = registerVal1
registerVal1 = {}
registerVal1.DEDICATED_ON_PLAYLIST_1 = 1.000000
registerVal1.DEDICATED_ON_PLAYLIST_2 = 2.000000
registerVal1.DEDICATED_ON_PLAYLIST_3 = 3.000000
registerVal1.DEDICATED_PARKED = 4.000000
registerVal1.LISTEN = 5.000000
registerVal1.LISTEN_DESPERATE = 6.000000
registerVal1.DONE = 7.000000
Lobby.Matchmaking.SearchStage = registerVal1
registerVal1 = {}
registerVal1.NORMAL = 0.000000
registerVal1.BEST = 1.000000
registerVal1.ANY = 2.000000
Lobby.Matchmaking.Connection = registerVal1
registerVal1 = {}
registerVal1.CONTENT_ORIGINALMAPS = 2.000000
registerVal1.CONTENT_ALL = 65535.000000
Lobby.Matchmaking.ContentPack = registerVal1
registerVal1 = {}
registerVal1.IS_EMPTY = 1.000000
registerVal1.IS_NOT_EMPTY = 0.000000
Lobby.Matchmaking.SessionEmpty = registerVal1
registerVal1 = {}
registerVal1.ANY = 0.000000
registerVal1.GAMESERVERS = 1.000000
registerVal1.THUNDERHEAD = 2.000000
Lobby.Matchmaking.DatacenterType = registerVal1
registerVal1 = {}
registerVal1.mode = -1.000000
registerVal1.stage = -1.000000
registerVal1.retry = -1.000000
Lobby.Matchmaking.SearchParams = registerVal1
registerVal1 = {}
registerVal1.PerController = {}
Lobby.Matchmaking.ExperimentFlags = registerVal1
function Lobby.Matchmaking.IsExperimentActive(arg0)
	if Lobby.Matchmaking.ExperimentFlags.PerController[arg0.controller] ~= nil then
	end
	return Lobby.Matchmaking.ExperimentFlags.PerController[arg0.controller]
end

function Lobby.Matchmaking.ResetExperiment(arg0)
	Lobby.Matchmaking.ExperimentFlags.PerController[arg0] = false
end

function Lobby.Matchmaking.EnableExperiment(arg0)
	Lobby.Matchmaking.ExperimentFlags.PerController[arg0] = true
end

function Lobby.Matchmaking.OnClientAdded(arg0)
	local registerVal5 = Engine.IsAdvertisedLobby(Enum.LobbyType.LOBBY_TYPE_GAME)
	if arg0.lobbyModule == Enum.LobbyModule.LOBBY_MODULE_HOST and arg0.lobbyType == Enum.LobbyType.LOBBY_TYPE_GAME and registerVal5 then
		Lobby.Matchmaking.UpdateLatencyBand()
		Lobby.Matchmaking.UpdateAdvertising("client joined")
	end
end

function Lobby.Matchmaking.OnClientRemoved(arg0)
	local registerVal4 = Engine.IsAdvertisedLobby(Enum.LobbyType.LOBBY_TYPE_GAME)
	if arg0.lobbyModule == Enum.LobbyModule.LOBBY_MODULE_HOST and arg0.lobbyType == Enum.LobbyType.LOBBY_TYPE_GAME and registerVal4 then
		Lobby.Matchmaking.UpdateLatencyBand()
		Lobby.Matchmaking.UpdateAdvertising("client left")
	end
end

function Lobby.Matchmaking.OnMatchStart(arg0)
	local registerVal4 = Engine.GetLobbyUIScreen()
	local registerVal5 = Engine.IsZombiesGame()
	if arg0.lobbyModule == Enum.LobbyModule.LOBBY_MODULE_HOST and arg0.lobbyType == Enum.LobbyType.LOBBY_TYPE_GAME and registerVal5 and registerVal4 == LobbyData.UITargets.UI_ZMLOBBYONLINEPUBLICGAME.id then
		Lobby.Matchmaking.ChangeAdvertisedStatus(Enum.ShowInMatchmaking.SHOW_IN_MATCHMAKING_FALSE, true)
	end
	Lobby.MatchmakingPriority.OnMatchStart(arg0)
end

function Lobby.Matchmaking.OnMatchEnd(arg0)
	local registerVal1 = LuaUtils.IsArenaMode()
	if registerVal1 then
		Lobby.Matchmaking.ChangeAdvertisedStatus(Enum.ShowInMatchmaking.SHOW_IN_MATCHMAKING_FALSE, true)
	else
		Lobby.Matchmaking.ChangeAdvertisedStatus(Enum.ShowInMatchmaking.SHOW_IN_MATCHMAKING_TRUE, true)
	end
	Lobby.Matchmaking.OnlineAdvertiseOnMatchEnd(arg0)
end

function Lobby.Matchmaking.OnMatchChangeMap(arg0)
	local registerVal1 = Engine.CurrentSessionMode()
	registerVal1 = Engine.IsAdvertisedLobby(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal1 == Enum.eModes.MODE_CAMPAIGN and registerVal1 then
		local registerVal2 = string.sub(arg0.nextMap, 1.000000, 6.000000)
		if registerVal2 == "cp_sh_" then
			registerVal2 = Dvar.cp_queued_level:get()
		end
		registerVal2 = LuaUtils.GetPlaylistIDForSelectedCPMission(registerVal2)
		local registerVal3 = Dvar.lobbyAdvertisePlaylistNumber:get()
		if registerVal2 ~= nil and 0.000000 < registerVal2 and registerVal3 ~= registerVal2 then
			Dvar.lobbyAdvertisePlaylistNumber:set(registerVal2)
			Dvar.lobbyAdvertiseDirty:set(true)
		end
	end
end

function Lobby.Matchmaking.OnLobbyOnlineUpdate(arg0)
	if arg0.errorCode ~= nil and arg0.errorCode == LuaEnums.BD_NOT_CONNECTED then
		return 
	end
	if arg0.type == Enum.LobbyOnlineUpdateEventType.LOBBY_ONLINE_UPDATE_PUMP then
	else
		if arg0.type == Enum.LobbyOnlineUpdateEventType.LOBBY_ONLINE_UPDATE_SUCCESS then
			Lobby.Matchmaking.OnlineAdvertiseSuccess(arg0)
		else
			if arg0.type == Enum.LobbyOnlineUpdateEventType.LOBBY_ONLINE_UPDATE_ERROR then
				Lobby.Matchmaking.OnlineAdvertiseError(arg0)
			end
		end
	end
end

function Lobby.Matchmaking.OnJoinComplete(arg0)
	Lobby.MatchmakingPriority.AddHost(arg0.join.to.secIdint, arg0.join.joinType)
end

function Lobby.Matchmaking.GetFfotdPlaylistVersionNumber()
	local registerVal0 = Engine.GetFFOTDVersion()
	local registerVal1 = Engine.GetPlaylistVersionNumber()
	return ((registerVal0 * Lobby.Matchmaking.FFOTD_PLAYLIST_VERSION_OFFSET) + registerVal1)
end

function Lobby.Matchmaking.ChangeAdvertisedStatus(arg0, arg1)
	Dvar.lobbyAdvertiseShowInMatchmaking:set(arg0)
	if arg1 == true then
		Dvar.lobbyAdvertiseDirty:set(arg1)
	end
end

function Lobby.Matchmaking.GetLobbyAverageSkill()
	local registerVal2 = Engine.LobbyGetSessionClients(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal3, registerVal4, registerVal5 = ipairs(registerVal2.sessionClients)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
	end
	if (0.000000 + 1.000000) == 0.000000 then
		return 0.000000
	end
	return ((0.000000 + value7.skillRating) / (0.000000 + 1.000000))
end

function Lobby.Matchmaking.UpdateAdvertising(arg0)
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("UpdateAdvertising: " .. arg0 .. "
"))
	local registerVal1 = Engine.GetLobbyMaxClients(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal2 = Engine.GetLobbyClientCount(Enum.LobbyType.LOBBY_TYPE_GAME)
	Dvar.lobbyAdvertiseMaxPlayers:set(registerVal1)
	Dvar.lobbyAdvertiseNumPlayers:set(registerVal2)
	if 0.000000 < registerVal2 then
		Dvar.lobbyAdvertiseIsEmpty:set(Lobby.Matchmaking.SessionEmpty.IS_NOT_EMPTY)
	else
		Dvar.lobbyAdvertiseIsEmpty:set(Lobby.Matchmaking.SessionEmpty.IS_EMPTY)
	end
	local registerVal3 = math.max(0.000000, (registerVal1 - registerVal2))
	local registerVal4 = Engine.CurrentSessionMode()
	if registerVal4 == Enum.eModes.MODE_MULTIPLAYER then
		local registerVal5 = Engine.GetPlaylistID()
		local registerVal6 = math.floor((registerVal1 / 2.000000))
		local registerVal7 = Engine.GetPlaylistMaxPartySize(registerVal5)
		local registerVal9 = {}
		registerVal9.lobbyID = -1.000000
		registerVal9.lobbySkill = 0.000000
		registerVal9.skillRating = 0.000000
		registerVal9.arenaPoints = 0.000000
		registerVal9.xuid = 0.000000
		local registerVal11 = math.min(registerVal7, registerVal6)
		local registerVal10 = math.min(registerVal11, (registerVal1 - registerVal2))
		registerVal11 = CoDShared.IsGametypeTeamBased()
		if registerVal11 then
			registerVal11 = Engine.IsInGame()
			local registerVal12 = Engine.LobbyGetSessionClients(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_GAME)
			for index13=registerVal10, 1.000000, -1.000000 do
				if registerVal11 then
					local registerVal17 = {}
					registerVal17 = {index13}
					local registerVal18 = Lobby.TeamSelection.CanSplitInProgress(registerVal12.sessionClients, registerVal17, registerVal1)
					if registerVal18 then
					else
						registerVal18, registerVal19, registerVal20 = ipairs(registerVal12.sessionClients)
						if registerVal11 then
							Lobby.TeamSelection.AddToPrivateLobbyListAsTeam(, registerVal1, {})
						else
							Lobby.TeamSelection.AddToPrivateLobbyList(, registerVal1, {})
						end
						for index18=1.000000, index13, 1.000000 do
							Lobby.TeamSelection.AddToPrivateLobbyList(registerVal9, (index18 + #registerVal12.sessionClients), {})
						end
						registerVal18 = Lobby.TeamSelection.VladSplit({}, registerVal1)
						registerVal19 = math.max(registerVal18.counts[1.000000], registerVal18.counts[2.000000])
						if registerVal19 <= registerVal6 then
						end
					else
					else
					end
				else
					registerVal11 = Engine.GetLobbyClientCount(Enum.LobbyType.LOBBY_TYPE_GAME)
					registerVal12 = math.min(registerVal7, (registerVal1 - registerVal11))
				end
			end
		end
	end
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("UpdateAdvertising: setting max team size to: " .. registerVal12 .. "
"))
	Dvar.lobbyAdvertiseTeamSizeMax:set(registerVal12)
	registerVal6 = LuaUtils.IsArenaMode()
	if registerVal6 then
		registerVal6 = Lobby.MatchmakingArena.GetLobbyArenaSkill()
	else
		registerVal6 = Lobby.Matchmaking.GetLobbyAverageSkill()
	end
	Dvar.lobbyAdvertiseSkill:set(registerVal6)
	Dvar.lobbyAdvertiseDirty:set(true)
end

function Lobby.Matchmaking.UpdateLatencyBand()
	local registerVal0 = Engine.IsDedicatedServer()
	if registerVal0 == false then
		return 
	end
	registerVal0 = Engine.LobbyGetSessionClients(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal1 = Dvar.lobbyAdvertiseLatencyBand:get()
	local registerVal3, registerVal4, registerVal5 = ipairs(registerVal0.sessionClients)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		if value7.pingBand < 255.000000 then
		end
	end
	if registerVal1 == 0.000000 or value7.pingBand < registerVal1 then
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("Latency band: " .. registerVal1 .. " --> " .. value7.pingBand .. "
"))
		Dvar.lobbyAdvertiseLatencyBand:set(value7.pingBand)
	end
end

function Lobby.Matchmaking.GetServerType()
	local registerVal0 = Engine.IsDedicatedServer()
	if registerVal0 == true then
		return Lobby.Matchmaking.ServerType.DEDICATED_SERVER
	end
	registerVal0 = Engine.CurrentSessionMode()
	if registerVal0 == Enum.eModes.MODE_CAMPAIGN then
		local registerVal1 = Engine.IsCampaignModeZombies()
		if not registerVal1 then
			registerVal1 = CoDShared.IsGameTypeDOA()
			if registerVal1 then
				return Lobby.Matchmaking.ServerType.P2P_SERVER_CPDOA
			end
			return Lobby.Matchmaking.ServerType.P2P_SERVER_CP
		else
			return Lobby.Matchmaking.ServerType.P2P_SERVER_CPZM
		else
			if registerVal0 == Enum.eModes.MODE_MULTIPLAYER then
				return Lobby.Matchmaking.ServerType.P2P_SERVER_MP
			else
				if registerVal0 == Enum.eModes.MODE_ZOMBIES then
					return Lobby.Matchmaking.ServerType.P2P_SERVER_ZM
				end
			end
		end
	end
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "No SessionMode was set. Defaulting to Lobby.Matchmaking.ServerType.P2P_SERVER_MP.
")
	return Lobby.Matchmaking.ServerType.P2P_SERVER_MP
end

function Lobby.Matchmaking.SetupAdvertising()
	local registerVal0 = Engine.GetLobbyMaxClients(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal1 = Engine.GetLobbyClientCount(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal2 = Lobby.Matchmaking.GetServerType()
	Dvar.lobbyAdvertiseServerType:set(registerVal2)
	Lobby.Matchmaking.ChangeAdvertisedStatus(Enum.ShowInMatchmaking.SHOW_IN_MATCHMAKING_TRUE, false)
	local registerVal3 = Engine.GetProtocolVersion()
	Dvar.lobbyAdvertiseNetcodeVersion:set(registerVal3)
	local registerVal4 = Engine.GetPlaylistID()
	local registerVal5 = Engine.CurrentSessionMode()
	if registerVal5 == Enum.eModes.MODE_MULTIPLAYER then
		local registerVal8 = Engine.GetDLCBitsForLobby(Enum.LobbyType.LOBBY_TYPE_GAME)
		Dvar.lobbyAdvertiseMapPacks:set(Lobby.Matchmaking.GetMapPackBits(registerVal8, registerVal4))
	else
		Dvar.lobbyAdvertiseMapPacks:set(Lobby.Matchmaking.ContentPack.CONTENT_ALL)
	end
	registerVal5 = Engine.IsDedicatedServer()
	if registerVal5 == true then
		Dvar.lobbyAdvertiseMapPacks:set(Lobby.Matchmaking.ContentPack.CONTENT_ORIGINALMAPS)
		Dvar.lobbyAdvertiseServerLocation:set(Dvar.live_serverLocation:get())
		Dvar.lobbyAdvertiseLatencyBand:set(0.000000)
	end
	Dvar.lobbyAdvertisePlaylistVersion:set(Lobby.Matchmaking.GetFfotdPlaylistVersionNumber())
	registerVal5 = Engine.EncodePlaylistNumber(registerVal4)
	Dvar.lobbyAdvertisePlaylistNumber:set(registerVal5)
	Lobby.Matchmaking.UpdateAdvertising("session creation")
	local registerVal6 = Engine.GetGeoLocation()
	if registerVal6 == nil then
		Dvar.lobbyAdvertiseGeo1:set(0.000000)
		Dvar.lobbyAdvertiseGeo2:set(0.000000)
		Dvar.lobbyAdvertiseGeo3:set(0.000000)
		Dvar.lobbyAdvertiseGeo4:set(0.000000)
	else
		Dvar.lobbyAdvertiseGeo1:set(registerVal6.geo_1)
		Dvar.lobbyAdvertiseGeo2:set(registerVal6.geo_2)
		Dvar.lobbyAdvertiseGeo3:set(registerVal6.geo_3)
		Dvar.lobbyAdvertiseGeo4:set(registerVal6.geo_4)
	end
end

function Lobby.Matchmaking.SetQueryId(arg0)
	Dvar.lobbySearchQueryId:set(arg0)
end

function Lobby.Matchmaking.SetShowInMatchmaking(arg0)
	Dvar.lobbySearchShowInMatchmaking:set(arg0)
end

function Lobby.Matchmaking.SetNetcodeVersion()
	Dvar.lobbySearchNetcodeVersion:set(Engine.GetProtocolVersion())
end

function Lobby.Matchmaking.SetMapPacks(arg0)
	Dvar.lobbySearchMapPacks:set(arg0)
end

function Lobby.Matchmaking.SetMapPacksOriginal()
	Lobby.Matchmaking.SetMapPacks(Lobby.Matchmaking.ContentPack.CONTENT_ORIGINALMAPS)
end

function Lobby.Matchmaking.SetMapPacksAll()
	Lobby.Matchmaking.SetMapPacks(Lobby.Matchmaking.ContentPack.CONTENT_ALL)
end

function Lobby.Matchmaking.GetMapPackBits(arg0, arg1)
	local registerVal3 = Engine.GetPlaylistInfoByID(arg1)
	if registerVal3 then
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, ("Lobby.Matchmaking.GetMapPackBits: Setting dlc bits to " .. ((registerVal3.playlist.usedDLCMask & arg0) | registerVal3.playlist.requiredDLCMask) .. " from client dlcBits " .. arg0 .. ", playlist requiredBits " .. registerVal3.playlist.requiredDLCMask .. " and playlist usedBits " .. registerVal3.playlist.usedDLCMask .. "
"))
	else
		Engine.PrintError(Enum.consoleLabel.LABEL_LOBBY, ("Lobby.Matchmaking.GetMapPackBits: Invalid playlistID " .. arg1 .. ", setting dlc bits to originalmaps!
"))
	end
	return ((registerVal3.playlist.usedDLCMask & arg0) | registerVal3.playlist.requiredDLCMask)
end

function Lobby.Matchmaking.SetTeamSize(arg0)
	Dvar.lobbySearchTeamSize:set(arg0)
end

function Lobby.Matchmaking.SetPlaylistInfo(arg0)
	Dvar.lobbySearchPlaylistVersion:set(Lobby.Matchmaking.GetFfotdPlaylistVersionNumber())
	local registerVal1 = Engine.EncodePlaylistNumber(arg0)
	Dvar.lobbySearchPlaylistNumber:set(registerVal1)
end

function Lobby.Matchmaking.SetServerType(arg0)
	Dvar.lobbySearchServerType:set(arg0)
end

function Lobby.Matchmaking.SetIsEmpty(arg0)
	Dvar.lobbySearchIsEmpty:set(arg0)
end

function Lobby.Matchmaking.SetSkillWeight(arg0)
	local registerVal2 = LuaUtils.IsArenaMode()
	if registerVal2 then
		registerVal2 = Lobby.MatchmakingArena.GetLobbyArenaSkill()
	else
		registerVal2 = Lobby.Matchmaking.GetLobbyAverageSkill()
	end
	Dvar.lobbySearchSkill:set(registerVal2)
	Dvar.lobbySearchSkillWeight:set(arg0)
end

function Lobby.Matchmaking.SetGeoLocation()
	local registerVal0 = Engine.GetGeoLocation()
	if registerVal0 == nil then
		Dvar.lobbySearchGeo1:set(0.000000)
		Dvar.lobbySearchGeo2:set(0.000000)
		Dvar.lobbySearchGeo3:set(0.000000)
		Dvar.lobbySearchGeo4:set(0.000000)
	else
		Dvar.lobbySearchGeo1:set(registerVal0.geo_1)
		Dvar.lobbySearchGeo2:set(registerVal0.geo_2)
		Dvar.lobbySearchGeo3:set(registerVal0.geo_3)
		Dvar.lobbySearchGeo4:set(registerVal0.geo_4)
	end
end

function Lobby.Matchmaking.ClearPingBandWeightsAndServerLocations()
	Dvar.lobbySearchPingBandWeight1:set(0.000000)
	Dvar.lobbySearchPingBandWeight2:set(0.000000)
	Dvar.lobbySearchPingBandWeight3:set(0.000000)
	Dvar.lobbySearchPingBandWeight4:set(0.000000)
	Dvar.lobbySearchPingBandWeight5:set(0.000000)
	Dvar.lobbySearchServerLocation1:set(33.000000)
	Dvar.lobbySearchServerLocation2:set(33.000000)
	Dvar.lobbySearchServerLocation3:set(33.000000)
	Dvar.lobbySearchServerLocation4:set(33.000000)
	Dvar.lobbySearchServerLocation5:set(33.000000)
end

function Lobby.Matchmaking.GetListenCountryCodes()
	local registerVal0 = Engine.DvarString(nil, "lobbySearchListenCountries")
	if registerVal0 ~= "" then
		return LuaUtils.StringSplit(registerVal0, ",")
	else
		return {}
	end
end

function Lobby.Matchmaking.GetPingLimit()
	if Lobby.Matchmaking.CachedPingLimit ~= nil then
		return Lobby.Matchmaking.CachedPingLimit
	end
	local registerVal0 = Engine.GetGeoLocation()
	local registerVal2 = Dvar.goodPing:get()
	local registerVal1 = math.max(registerVal2, Dvar.lobbySearchDediUnparkPingLimit:get())
	registerVal2 = Engine.DvarString(nil, "lobbySearchPingLimits")
	local registerVal3, registerVal4, registerVal5 = pairs(LuaUtils.StringSplit(registerVal2, "_"))
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		local registerVal8 = LuaUtils.StringSplitToArray(index6, "|")
		local registerVal9 = LuaUtils.StringSplit(registerVal8[1.000000], ",")
		if registerVal9[registerVal0.country_code] ~= nil then
			local registerVal10 = tonumber(registerVal8[2.000000])
			Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, ("Lobby.Matchmaking.GetPingLimitForCountryCode: Returning limit of " .. registerVal10 .. "ms, geo.country_code " .. registerVal0.country_code .. " is in country list " .. registerVal8[1.000000] .. "
"))
		else
		end
	end
	Lobby.Matchmaking.CachedPingLimit = registerVal10
	return registerVal10
end

function Lobby.Matchmaking.ShouldForceListen()
	local registerVal1 = Lobby.Matchmaking.GetListenCountryCodes()
	local registerVal2 = Engine.GetGeoLocation()
	if registerVal2 and registerVal1[registerVal2.country_code] ~= nil then
		local registerVal8 = Engine.DvarString(nil, "lobbySearchListenCountries")
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, ("Lobby.Matchmaking.ShouldForceListen: Returning true, geo.country_code " .. registerVal2.country_code .. " is in country list " .. registerVal8 .. "
"))
	end
	return true
end

function Lobby.Matchmaking.SetServerLocation(arg0, arg1)
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, ("Lobby.Matchmaking.SetServerLocation(" .. arg0 .. "," .. arg1 .. ")
"))
	resultsOK = true
	local registerVal2 = Dvar.lobbySearchForceLocation:get()
	forceServer = registerVal2
	if 0.000000 ~= forceServer then
		Engine.PrintWarning(Enum.consoleLabel.LABEL_LOBBY, ("Forcing server to " .. forceServer .. "
"))
		Dvar.lobbySearchServerLocation1:set(forceServer)
		Dvar.lobbySearchPingBand:set(1.000000)
		return resultsOK
	end
	registerVal2 = Engine.GetGeoLocation()
	local registerVal4 = Dvar.lobbySearchDatacenterType:get()
	if registerVal4 ~= Lobby.Matchmaking.DatacenterType.ANY then
		registerVal4 = Dvar.lobbySearchDatacenterType:get()
	end
	if registerVal2 then
		LuaUtils.LogQoS("geolocation", registerVal2)
		registerVal4 = Dvar.lobbySearchDatacenterTypeGeo:get()
		local registerVal5, registerVal6, registerVal7 = pairs(Lobby.Matchmaking.DatacenterType)
		for index8,value9 in registerVal5, registerVal6, registerVal7 do
			if not registerVal2.country_code then
			end
			local registerVal11 = registerVal4:find(("c" .. "?" .. "=" .. index8))
			if registerVal11 then
			end
		end
		registerVal5 = Lobby.Matchmaking.ShouldForceListen()
		if registerVal5 then
			local registerVal14 = Engine.DvarString(nil, "lobbySearchListenCountries")
			Engine.PrintWarning(Enum.consoleLabel.LABEL_LOBBY, ("Lobby.Matchmaking.SetServerLocation(" .. arg0 .. "," .. arg1 .. ") - country code " .. registerVal2.country_code .. " matches list " .. registerVal14 .. " - doing a listen search
"))
			return false
		end
	end
	registerVal4 = Dvar.lobbySearchDatacenterTypeOverride:get()
	if registerVal4 ~= Lobby.Matchmaking.DatacenterType.ANY then
		registerVal4 = Dvar.lobbySearchDatacenterTypeOverride:get()
	end
	registerVal4 = Engine.GetDediQosResultsByType(registerVal4)
	if 0.000000 == registerVal4.numResults then
		registerVal7 = {}
		registerVal7.ok = false
		registerVal7.text = "No dedicated QOS results"
		registerVal7.searchType = registerVal4
		LuaUtils.LogQoS("serverlocation", registerVal7)
		resultsOK = false
		Engine.PrintWarning(Enum.consoleLabel.LABEL_LOBBY, "Tried to get dedicated qos results, but no results available
")
	else
		servers = registerVal4.pingResults
		Lobby.Matchmaking.ClearPingBandWeightsAndServerLocations()
		registerVal5 = Lobby.Matchmaking.GetPingLimit()
		pingCutoff = registerVal5
		if arg0 == Enum.QueryID.QUERYID_SEARCH_SESSION_DEDICATED_PARKED then
			resultsOK = false
			Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, "Looking to unpark a server in:
")
			registerVal5, registerVal6, registerVal7 = ipairs(servers)
			for index8,value9 in registerVal5, registerVal6, registerVal7 do
				if Lobby.Matchmaking.MAX_DATACENTERS_IN_QUERY >= index8 then
					if pingCutoff < value9.ping then
					else
						Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, (index8 .. " " .. value9.location .. " " .. value9.ping .. "ms away
"))
						local registerVal12 = tostring(index8)
						Dvar[("lobbySearchServerLocation" .. registerVal12)]:set(value9.location)
						registerVal12 = tostring(index8)
						Dvar[("lobbySearchPingBandWeight" .. registerVal12)]:set((6.000000 - index8))
						resultsOK = true
					end
				else
					if pingCutoff < servers[1.000000].ping then
						Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, "There are no acceptable datacenters
")
						resultsOK = false
						local registerVal8 = {}
						registerVal8.ok = false
						registerVal8.text = "No good datacenters"
						registerVal8.searchType = registerVal4
						registerVal8.bestPing = servers[1.000000].ping
						LuaUtils.LogQoS("serverlocation", registerVal8)
					else
						if arg1 <= registerVal4.numResults then
						else
						end
						if pingCutoff < servers[1.000000].ping then
							Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, ("Ping for location " .. servers[1.000000].location .. " at " .. servers[1.000000].ping .. "ms is too far away, selecting another suitable datacenter at random
"))
							registerVal8, registerVal9, registerVal10 = ipairs(servers)
							for index11,value12 in registerVal8, registerVal9, registerVal10 do
								if pingCutoff < value12.ping then
								else
								end
							end
							registerVal8 = math.random(index11)
							Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, ("Using index " .. registerVal8 .. " out of a possible " .. index11 .. " good datacenters
"))
							Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, ("Using location " .. servers[registerVal8].location .. " that is " .. servers[registerVal8].ping .. "ms away
"))
						end
						Dvar.lobbySearchServerLocation1:set(servers[registerVal8].location)
						registerVal8 = Engine.DvarBool(0.000000, "lobbySearchPingBandEnabled")
						if registerVal8 then
							Dvar.lobbySearchPingBand:set(0.000000)
							registerVal9 = Engine.DvarInt(0.000000, "lobbySearchExperimentDatacenter")
							registerVal8 = Engine.DvarInt(0.000000, "lobbySearchExperimentDatacenter")
							if servers[registerVal8].location == registerVal9 or 999.000000 == registerVal8 then
								Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, ("lobbySearchPingBandEnabled is true and the experiment DC matches (" .. servers[registerVal8].location .. ") - setting the ping band to " .. servers[registerVal8].ping .. "ms
"))
								Dvar.lobbySearchPingBand:set(servers[registerVal8].ping)
							else
								Dvar.zlobbySearchPingBand:set(servers[registerVal8].ping)
							end
						end
						Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, ("Using datacenter " .. registerVal8 .. " for search stage " .. arg1 .. "
"))
						Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, ("Looking for an active server in " .. servers[registerVal8].location .. " which is " .. servers[registerVal8].ping .. "ms away
"))
						registerVal10 = {}
						registerVal10.ok = true
						registerVal10.text = "Found datacenter"
						registerVal10.searchType = registerVal4
						registerVal10.server = servers[registerVal8]
						LuaUtils.LogQoS("serverlocation", registerVal10)
						resultsOK = true
					end
				end
			end
		end
	end
	return resultsOK
end

function Lobby.Matchmaking.SetPingBand(arg0)
	Dvar.lobbySearchPingBand:set(arg0)
end

function Lobby.Matchmaking.SetPingBandWeight(arg0)
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, ("Ping band weight set to " .. arg0 .. "
"))
	Dvar.lobbySearchPingBandWeight1:set(arg0)
end

function Lobby.Matchmaking.SetGeoWeightFlat(arg0)
	Dvar.lobbySearchGeo1Weight:set(arg0)
	Dvar.lobbySearchGeo2Weight:set(arg0)
	Dvar.lobbySearchGeo3Weight:set(arg0)
	Dvar.lobbySearchGeo4Weight:set(arg0)
end

function Lobby.Matchmaking.SetGeoWeightTiered(arg0)
	Dvar.lobbySearchGeo1Weight:set((arg0 * 4.000000))
	Dvar.lobbySearchGeo2Weight:set((arg0 * 3.000000))
	Dvar.lobbySearchGeo3Weight:set((arg0 * 2.000000))
	Dvar.lobbySearchGeo4Weight:set(arg0)
end

function Lobby.Matchmaking.PingRange(arg0, arg1)
	Dvar.qosPreferredPing:set(1.000000)
	Dvar.qosMaxAllowedPing:set(arg1)
end

function Lobby.Matchmaking.MinGeoMatch(arg0)
	Dvar.lobbySearchGeoMin:set(arg0)
end

function Lobby.Matchmaking.GetConnection(arg0)
	return 0.000000
end

function Lobby.Matchmaking.NextStage()
	local registerVal1 = Engine.CurrentSessionMode()
	if Enum.eModes.MODE_MULTIPLAYER == registerVal1 then
		local registerVal2 = Engine.GetLobbyClientCount(Enum.LobbyType.LOBBY_TYPE_GAME)
		local registerVal3 = Lobby.MatchmakingMP.AllowUnparkSearch(registerVal2)
		if (Lobby.Matchmaking.SearchParams.stage + 1.000000) == Lobby.Matchmaking.SearchStage.DEDICATED_PARKED and not registerVal3 then
			Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, "Matchmaking: Unpark Stage Skipped. Setting stage to DEDICATED_ON_PLAYLIST_1
")
			Lobby.Matchmaking.SearchParams.retry = (Lobby.Matchmaking.SearchParams.retry + 1.000000)
		end
		registerVal3 = Lobby.MatchmakingMP.AllowListenSearch(registerVal2)
		if Lobby.Matchmaking.SearchStage.LISTEN <= Lobby.Matchmaking.SearchStage.DEDICATED_ON_PLAYLIST_1 and Lobby.Matchmaking.SearchStage.DEDICATED_ON_PLAYLIST_1 <= Lobby.Matchmaking.SearchStage.LISTEN_DESPERATE and not registerVal3 then
			Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, "Matchmaking: Listen Host Stage Skipped. Setting stage to DEDICATED_ON_PLAYLIST_1
")
			Lobby.Matchmaking.SearchParams.retry = (Lobby.Matchmaking.SearchParams.retry + 1.000000)
		else
			if 0.000000 == Lobby.Matchmaking.SearchStage.DEDICATED_ON_PLAYLIST_1 then
			else
			end
		end
	end
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, ("NextStage: " .. Lobby.Matchmaking.SearchParams.stage .. "-->" .. (Lobby.Matchmaking.SearchStage.LISTEN + 1.000000) .. "
"))
	Lobby.Matchmaking.SearchParams.stage = (Lobby.Matchmaking.SearchStage.LISTEN + 1.000000)
	return (Lobby.Matchmaking.SearchStage.LISTEN + 1.000000)
end

function Lobby.Matchmaking.GetNumSlotsNeededOnTeam(arg0)
	local registerVal2 = Engine.GetLobbyClientCount(Enum.LobbyType.LOBBY_TYPE_GAME)
	if Lobby.Matchmaking.SearchStage.DEDICATED_PARKED ~= arg0 and registerVal2 < 1.000000 then
		Engine.PrintError(Enum.consoleLabel.LABEL_LOBBY, "numSlotsNeededOnTeam was 0, why?
")
	end
	return 1.000000
end

function Lobby.Matchmaking.ClearSearchInfo()
	Lobby.Matchmaking.SearchParams.searchInfo = {}
end

function Lobby.Matchmaking.SetupMatchmakingQuery(arg0, arg1, arg2)
	if nil == arg1 then
		error("Lobby.Matchmaking.SetupMatchmakingQuery called with nil mode")
	end
	Lobby.Matchmaking.SearchParams.mode = arg1
	Lobby.Matchmaking.SearchParams.stage = 0.000000
	if arg2 == true then
		Lobby.Matchmaking.ClearSearchInfo()
		local registerVal4 = Engine.milliseconds()
		Lobby.Matchmaking.SearchParams.searchInfo.startTime = registerVal4
		Lobby.Matchmaking.SearchParams.retry = 0.000000
	else
		if Lobby.Matchmaking.SearchParams.searchInfo == nil or Lobby.Matchmaking.SearchParams.searchInfo.startTime == nil then
			Lobby.Matchmaking.ClearSearchInfo()
			registerVal4 = Engine.milliseconds()
			Lobby.Matchmaking.SearchParams.searchInfo.startTime = registerVal4
			Lobby.Matchmaking.SearchParams.retry = 0.000000
		end
	end
end

function Lobby.Matchmaking.SetupMatchmakingStage(arg0)
	local registerVal1 = Engine.CurrentSessionMode()
	if registerVal1 == Enum.eModes.MODE_CAMPAIGN then
		return Lobby.MatchmakingCP.SetupMatchmakingStage(arg0)
	else
		if registerVal1 == Enum.eModes.MODE_MULTIPLAYER then
			local registerVal2 = Engine.IsDedicatedServer()
			if registerVal2 == true then
				return Lobby.MatchmakingDedicated.SetupMatchmakingStage(arg0)
			else
				registerVal2 = LuaUtils.IsArenaMode()
				if registerVal2 then
					return Lobby.MatchmakingArena.SetupMatchmakingStage(arg0)
				else
					return Lobby.MatchmakingMP.SetupMatchmakingStage(arg0)
				else
					if registerVal1 == Enum.eModes.MODE_ZOMBIES then
						return Lobby.MatchmakingZM.SetupMatchmakingStage(arg0)
					end
				end
			end
		end
	end
	return false
end

registerVal1 = {}
registerVal1.errorCount = 0.000000
registerVal1.errorTime = -1.000000
registerVal1.reAdvertiseTime = -1.000000
registerVal1.comError = false
registerVal1.RE_ADVERTISE_INTERVAL = 30000.000000
registerVal1.ADVERTISE_ERROR_TIME = 300000.000000
Lobby.Matchmaking.LobbyOnline = registerVal1
function Lobby.Matchmaking.OnlineAdvertiseClear()
	local registerVal1 = {}
	registerVal1.errorCount = 0.000000
	registerVal1.errorTime = -1.000000
	registerVal1.reAdvertiseTime = -1.000000
	registerVal1.comError = false
	registerVal1.RE_ADVERTISE_INTERVAL = 30000.000000
	registerVal1.ADVERTISE_ERROR_TIME = 300000.000000
	Lobby.Matchmaking.LobbyOnline = registerVal1
end

function Lobby.Matchmaking.OnlineAdvertiseSuccess(arg0)
	Lobby.Matchmaking.OnlineAdvertiseClear()
end

function Lobby.Matchmaking.OnlineAdvertiseError(arg0)
	Lobby.Matchmaking.LobbyOnline.errorCount = (Lobby.Matchmaking.LobbyOnline.errorCount + 1.000000)
	local registerVal1 = Engine.IsDedicatedServer()
	if registerVal1 == true then
		if Lobby.Matchmaking.LobbyOnline.errorCount == 1.000000 then
			local registerVal2 = Engine.milliseconds()
			Lobby.Matchmaking.LobbyOnline.errorTime = (registerVal2 + Lobby.Matchmaking.LobbyOnline.ADVERTISE_ERROR_TIME)
		end
		registerVal2 = Engine.milliseconds()
		Lobby.Matchmaking.LobbyOnline.reAdvertiseTime = (registerVal2 + Lobby.Matchmaking.LobbyOnline.RE_ADVERTISE_INTERVAL)
	else
		registerVal1 = Engine.IsInGame()
		if registerVal1 then
			Lobby.Matchmaking.LobbyOnline.comError = true
		else
			Lobby.Matchmaking.OnlineAdvertiseClear()
			LuaUtils.SafeComError(Enum.errorCode.ERROR_DROP, "EXE_DISCONNECTED_FROM_SERVER")
			return 
		end
	end
end

function Lobby.Matchmaking.OnlineAdvertisePump(arg0)
	local registerVal1 = Engine.IsDedicatedServer()
	if registerVal1 == false then
		return 
	end
	if Lobby.Matchmaking.LobbyOnline.errorCount == 0.000000 then
		return 
	end
	registerVal1 = Engine.IsLobbyHostActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal1 == false then
		Lobby.Matchmaking.OnlineAdvertiseClear()
		return 
	end
	registerVal1 = Lobby.ProcessQueue.IsQueueEmpty()
	if 0.000000 < Lobby.Matchmaking.LobbyOnline.errorCount and registerVal1 == true then
		registerVal1 = Engine.milliseconds()
		if Lobby.Matchmaking.LobbyOnline.reAdvertiseTime < registerVal1 then
			registerVal1 = Lobby.Process.ReAdvertiseLobby(controller)
			Lobby.ProcessQueue.AddToQueue("ReAdvertiseLobby", registerVal1)
			local registerVal3 = Engine.milliseconds()
			Lobby.Matchmaking.LobbyOnline.reAdvertiseTime = (registerVal3 + Lobby.Matchmaking.LobbyOnline.RE_ADVERTISE_INTERVAL)
		end
		registerVal1 = Engine.milliseconds()
		if Lobby.Matchmaking.LobbyOnline.errorTime < registerVal1 then
			registerVal1 = Engine.IsInGame()
			if registerVal1 then
				Lobby.Matchmaking.LobbyOnline.comError = true
			else
				Engine.AdvertiseErrorShutdown(Enum.LobbyType.LOBBY_TYPE_GAME)
				Lobby.Matchmaking.OnlineAdvertiseClear()
				LuaUtils.SafeComError(Enum.errorCode.ERROR_DROP, "EXE_DISCONNECTED_FROM_SERVER")
				return 
			end
		end
	end
end

function Lobby.Matchmaking.OnlineAdvertiseOnMatchEnd(arg0)
	if 0.000000 < Lobby.Matchmaking.LobbyOnline.errorCount and Lobby.Matchmaking.LobbyOnline.comError == true then
		Lobby.Matchmaking.OnlineAdvertiseClear()
		LuaUtils.SafeComError(Enum.errorCode.ERROR_DROP, "EXE_DISCONNECTED_FROM_SERVER")
		return 
	end
end

function Lobby.Matchmaking.Pump(arg0)
	Lobby.Matchmaking.OnlineAdvertisePump(arg0)
end

