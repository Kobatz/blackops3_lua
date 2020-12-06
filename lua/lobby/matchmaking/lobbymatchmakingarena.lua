-- Decompiled with CoDLUIDecompiler by JariK

require("lua.Lobby.Common.LobbyCore")
require("lua.Shared.LobbyData")
require("lua.Lobby.Matchmaking.LobbyMatchmaking")
Lobby.MatchmakingArena = {}
function Lobby.MatchmakingArena.HandleMerge(arg0)
	if arg0 == Lobby.Matchmaking.SearchStage.DEDICATED_ON_PLAYLIST_1 then
		Lobby.MatchmakingArena.DoDedicatedSearch(arg0)
	else
		Lobby.MatchmakingArena.DoListenSearch(arg0)
	end
end

function Lobby.MatchmakingArena.HandleDedicatedSearchStage(arg0)
	Lobby.MatchmakingArena.DoDedicatedSearch(arg0)
end

function Lobby.MatchmakingArena.HandleDedicatedParkedStage(arg0)
	local registerVal1 = Lobby.MatchmakingArena.CanHostAnyLobby()
	if not registerVal1 then
		Lobby.MatchmakingArena.DoDedicatedSearch(arg0)
		return 
	end
	local registerVal2 = Engine.GetPlaylistID()
	local registerVal3 = Engine.GetParkingPlaylistForRealPlaylist(registerVal2)
	if registerVal3 ~= Lobby.Matchmaking.INVALID_PARKING_PLAYLIST then
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("Lobby.MatchmakingArena.HandleDedicatedParkedStage: No sessions found in playlistID<" .. registerVal2 .. ">, looking in parkingPlaylist<" .. registerVal3 .. ">
"))
		Lobby.Matchmaking.SetMapPacksOriginal()
		Lobby.Matchmaking.SetPlaylistInfo(registerVal3)
	end
	Lobby.Matchmaking.SetIsEmpty(Lobby.Matchmaking.SessionEmpty.IS_EMPTY)
	local registerVal4 = Lobby.Matchmaking.SetServerLocation(Enum.QueryID.QUERYID_SEARCH_SESSION_DEDICATED_PARKED, arg0)
	if registerVal4 ~= true then
		Engine.PrintWarning(Enum.consoleLabel.LABEL_LOBBY, "Lobby.MatchmakingArena.HandleDedicatedParkedStage: Failed to set server location, doing a listen search instead
")
		Lobby.MatchmakingArena.DoListenSearch(arg0)
	else
		Lobby.Matchmaking.SetSkillWeight(0.000000)
		Lobby.Matchmaking.SetQueryId(Enum.QueryID.QUERYID_SEARCH_SESSION_DEDICATED_PARKED)
	end
end

function Lobby.MatchmakingArena.HandleListenStage(arg0)
end

function Lobby.MatchmakingArena.DoDedicatedSearch(arg0)
	local registerVal2 = Lobby.Matchmaking.SetServerLocation(Enum.QueryID.QUERYID_SEARCH_SESSION_DEDICATED, arg0)
	if registerVal2 == true then
		Lobby.Matchmaking.SetPingBandWeight(1.000000)
		Lobby.Matchmaking.SetIsEmpty(Lobby.Matchmaking.SessionEmpty.IS_NOT_EMPTY)
		Lobby.Matchmaking.SetQueryId(Enum.QueryID.QUERYID_SEARCH_SESSION_DEDICATED)
	else
		Engine.PrintWarning(Enum.consoleLabel.LABEL_LOBBY, "Lobby.MatchmakingArena.DoDedicatedSearch: Failed to set server location, doing a listen search instead
")
		registerVal2 = Dvar.arena_enableListenHosting:exists()
		registerVal2 = Dvar.arena_enableListenHosting:get()
		if registerVal2 and registerVal2 then
			Lobby.MatchmakingArena.DoListenSearch(arg0)
		end
	end
end

function Lobby.MatchmakingArena.DoListenSearch(arg0)
	local registerVal1 = Dvar.arena_enableListenHosting:exists()
	registerVal1 = Dvar.arena_enableListenHosting:get()
	if registerVal1 and registerVal1 then
		Lobby.Matchmaking.SetQueryId(Enum.QueryID.QUERYID_SEARCH_SESSIONS_ALL)
	else
		Lobby.MatchmakingArena.DoDedicatedSearch(arg0)
	end
end

function Lobby.MatchmakingArena.SetupConnectionInfo(arg0)
	local registerVal1 = Lobby.Matchmaking.GetConnection(arg0)
	local registerVal2 = Dvar.excellentPing:get()
	local registerVal3 = Dvar.goodPing:get()
	local registerVal4 = Dvar.terriblePing:get()
	if registerVal1 == Lobby.Matchmaking.Connection.BEST then
		Lobby.Matchmaking.PingRange(1.000000, registerVal2)
		Lobby.Matchmaking.MinGeoMatch(1.000000)
	else
		if registerVal1 == Lobby.Matchmaking.Connection.NORMAL then
			Lobby.Matchmaking.PingRange(registerVal2, registerVal3)
			Lobby.Matchmaking.MinGeoMatch(1.000000)
		else
			Lobby.Matchmaking.PingRange(registerVal3, 999.000000)
			Lobby.Matchmaking.MinGeoMatch(0.000000)
		end
	end
	local registerVal8 = tostring(registerVal1)
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, ("Lobby.MatchmakingArena.SetupConnectionInfo: Connection: " .. registerVal8 .. "
"))
end

function Lobby.MatchmakingArena.SetupMatchmakingStage(arg0)
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, "Lobby.MatchmakingArena.SetupMatchmakingStage: Setting up arena matchmaking stage
")
	Lobby.Matchmaking.SetShowInMatchmaking(Enum.ShowInMatchmaking.SHOW_IN_MATCHMAKING_TRUE)
	Lobby.Matchmaking.SetNetcodeVersion()
	Lobby.Matchmaking.SetGeoLocation()
	Lobby.Matchmaking.SetIsEmpty(Lobby.Matchmaking.SessionEmpty.IS_NOT_EMPTY)
	Lobby.Matchmaking.SetGeoWeightTiered(0.200000)
	Lobby.Matchmaking.SetSkillWeight(0.010000)
	local registerVal1 = Lobby.Matchmaking.NextStage()
	if registerVal1 == Lobby.Matchmaking.SearchStage.DONE then
		return false
	end
	local registerVal5 = tostring(registerVal1)
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, ("Lobby.MatchmakingArena.SetupMatchmakingStage: Next Stage: " .. registerVal5 .. "
"))
	Lobby.Matchmaking.SetPlaylistInfo(Engine.GetPlaylistID())
	if Lobby.Matchmaking.SearchParams.mode == Lobby.Matchmaking.SearchMode.ARENA then
		if registerVal1 < Lobby.Matchmaking.SearchStage.DEDICATED_PARKED then
			Lobby.MatchmakingArena.HandleDedicatedSearchStage(registerVal1)
		else
			if registerVal1 == Lobby.Matchmaking.SearchStage.DEDICATED_PARKED then
				Lobby.MatchmakingArena.HandleDedicatedParkedStage(registerVal1)
			else
				if registerVal1 == Lobby.Matchmaking.SearchStage.LISTEN then
					Lobby.MatchmakingArena.HandleListenStage(registerVal1)
				else
					if Lobby.Matchmaking.SearchParams.mode == Lobby.Matchmaking.SearchMode.LOBBY_MERGE then
						Lobby.MatchmakingArena.HandleMerge(registerVal1)
					else
						Engine.PrintError(Enum.consoleLabel.LABEL_LOBBY, "Lobby.MatchmakingArena.SetupMatchmakingStage Called with Unhandled Search Mode.
")
					end
				end
			end
		end
	end
	local registerVal2 = Lobby.Matchmaking.GetNumSlotsNeededOnTeam(registerVal1)
	Lobby.Matchmaking.SetTeamSize(registerVal2)
	local registerVal3 = Engine.GetPlaylistID()
	local registerVal7 = Engine.GetDLCBitsForLobby(Enum.LobbyType.LOBBY_TYPE_GAME)
	Dvar.lobbySearchMapPacks:set(Lobby.Matchmaking.GetMapPackBits(registerVal7, registerVal3))
	Lobby.MatchmakingArena.SetupConnectionInfo(arg0)
	return true
end

function Lobby.MatchmakingArena.CanHostAnyLobby()
	local registerVal1 = Dvar.arena_minHostSkillRange:exists()
	if registerVal1 then
		registerVal1 = Dvar.arena_minHostSkillRange:get()
	end
	if Lobby.Matchmaking.SearchParams.searchInfo.maxQOSedRange then
		if registerVal1 >= Lobby.Matchmaking.SearchParams.searchInfo.maxQOSedRange then
		end
		return true
	end
	local registerVal2 = Lobby.MatchmakingArena.GetArenaSkillRange()
	if registerVal1 >= (registerVal2 / 2.000000) then
	end
	return true
end

function Lobby.MatchmakingArena.GetArenaSkillRange(arg0)
	if Lobby.Matchmaking.SearchParams.searchInfo.startTime == nil then
		return 0.000000
	end
	local registerVal2 = Engine.milliseconds()
	local registerVal6 = Dvar.arena_qosSkillStart:exists()
	if registerVal6 then
		registerVal6 = Dvar.arena_qosSkillStart:get()
	end
	local registerVal7 = Dvar.arena_qosBrodenSkillStep:exists()
	if registerVal7 then
		registerVal7 = Dvar.arena_qosBrodenSkillStep:get()
	end
	local registerVal8 = Dvar.arena_qosBrodenSkillFrequency:exists()
	if registerVal8 then
		registerVal8 = Dvar.arena_qosBrodenSkillFrequency:get()
	end
	local registerVal9 = Engine.GetMaxArenaPoints()
	local registerVal10 = math.min((registerVal6 + ((((registerVal2 - Lobby.Matchmaking.SearchParams.searchInfo.startTime) / 1000.000000) / registerVal8) * registerVal7)), registerVal9)
	if arg0 == true then
		Lobby.Matchmaking.SearchParams.searchInfo.maxQOSedRange = registerVal10
	end
	local registerVal13 = tostring(((registerVal2 - Lobby.Matchmaking.SearchParams.searchInfo.startTime) / 1000.000000))
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("Lobby.MatchmakingArena.GetArenaSkillRange: Search Time " .. registerVal13 .. " seconds. Skill Range: " .. registerVal10 .. " points
"))
	return registerVal10
end

function Lobby.MatchmakingArena.GetLobbyArenaSkill()
	local registerVal2 = Engine.LobbyGetSessionClients(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal3, registerVal4, registerVal5 = ipairs(registerVal2.sessionClients)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		if not {}[value7.simpleLobbyID] then
			{}[value7.simpleLobbyID] = value7.arenaPoints
		else
			local registerVal9 = math.max({}[value7.simpleLobbyID], value7.arenaPoints)
			{}[value7.simpleLobbyID] = registerVal9
		end
	end
	if (0.000000 + 1.000000) == 0.000000 then
		return 0.000000
	end
	table.sort({}, arenaSkillSort)
	registerVal4 = math.fmod(#arenaSkillSort, 2.000000)
	if registerVal4 == 0.000000 then
	else
		registerVal4 = math.ceil((#{}[((##arenaSkillSort / 2.000000) + 1.000000)] / 2.000000))
	end
	return {}[registerVal4]
end

