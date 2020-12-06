-- Decompiled with CoDLUIDecompiler by JariK

require("lua.Lobby.Common.LobbyCore")
require("lua.Shared.LobbyData")
require("lua.Lobby.Matchmaking.LobbyMatchmaking")
Lobby.MatchmakingMP = {}
function Lobby.MatchmakingMP.DoListenSearch(arg0, arg1)
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, "Matchmaking: Setting up Listen Search Parameters
")
	local registerVal2 = Engine.DvarBool(nil, "lobbySearchAllowForceListen")
	registerVal2 = Lobby.Matchmaking.ShouldForceListen()
	if registerVal2 and registerVal2 then
		Engine.PrintWarning(Enum.consoleLabel.LABEL_LOBBY, "Matchmaking: Forcing listen search
")
		registerVal2 = Lobby.Matchmaking.GetServerType()
		Lobby.Matchmaking.SetServerType(registerVal2)
		Lobby.Matchmaking.SetQueryId(Enum.QueryID.QUERYID_SEARCH_SESSIONS_BY_SERVER_TYPE)
	else
		registerVal2 = Engine.DvarBool(nil, "lobbySearchOnlyListen")
		if registerVal2 then
			Engine.PrintWarning(Enum.consoleLabel.LABEL_LOBBY, "Matchmaking: Doing listen server only query
")
			registerVal2 = Lobby.Matchmaking.GetServerType()
			Lobby.Matchmaking.SetServerType(registerVal2)
			Lobby.Matchmaking.SetQueryId(Enum.QueryID.QUERYID_SEARCH_SESSIONS_BY_SERVER_TYPE)
		else
			Lobby.Matchmaking.SetQueryId(Enum.QueryID.QUERYID_SEARCH_SESSIONS_ALL)
		end
	end
	Lobby.Matchmaking.SetPlaylistInfo(arg1)
end

function Lobby.MatchmakingMP.DoDedicatedSearch(arg0, arg1)
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, "Matchmaking: Setting up Dedicated Search Parameters
")
	if Lobby.Matchmaking.SearchMode.LOBBY_MERGE == Lobby.Matchmaking.SearchParams.mode and Lobby.Matchmaking.SearchStage.DEDICATED_ON_PLAYLIST_1 < arg0 then
		Lobby.MatchmakingMP.DoListenSearch(arg0, arg1)
	else
		local registerVal3 = Lobby.Matchmaking.SetServerLocation(Enum.QueryID.QUERYID_SEARCH_SESSION_DEDICATED, arg0)
		if not registerVal3 then
			Engine.PrintWarning(Enum.consoleLabel.LABEL_LOBBY, "Couldn't get dediqos results, doing an OPS2 search instead")
			Lobby.MatchmakingMP.DoListenSearch(arg0, arg1)
		else
			Lobby.Matchmaking.SetPingBandWeight(1.000000)
			Lobby.Matchmaking.SetIsEmpty(Lobby.Matchmaking.SessionEmpty.IS_NOT_EMPTY)
			Lobby.Matchmaking.SetQueryId(Enum.QueryID.QUERYID_SEARCH_SESSION_DEDICATED)
		end
	end
	Lobby.Matchmaking.SetPlaylistInfo(arg1)
end

function Lobby.MatchmakingMP.UnparkDedicated(arg0, arg1)
	local registerVal3 = Lobby.Matchmaking.SetServerLocation(Enum.QueryID.QUERYID_SEARCH_SESSION_DEDICATED_PARKED, arg0)
	if not registerVal3 then
		Engine.PrintWarning(Enum.consoleLabel.LABEL_LOBBY, "Couldn't get dediqos results, doing an OPS2 search instead")
		Lobby.MatchmakingMP.DoListenSearch(arg0, arg1)
	else
		registerVal3 = Engine.GetParkingPlaylistForRealPlaylist(arg1)
		if registerVal3 ~= nil and registerVal3 ~= Lobby.Matchmaking.INVALID_PARKING_PLAYLIST then
			Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("LobbyMatchmaking.Lobby.Matchmaking.SetPlaylistInfo(): No sessions found in playlistID<" .. arg1 .. ">, looking in parkingPlaylist<" .. registerVal3 .. ">
"))
			Lobby.Matchmaking.SetMapPacksOriginal()
		end
		Lobby.Matchmaking.SetIsEmpty(Lobby.Matchmaking.SessionEmpty.IS_EMPTY)
		Lobby.Matchmaking.SetSkillWeight(0.000000)
		Lobby.Matchmaking.SetQueryId(Enum.QueryID.QUERYID_SEARCH_SESSION_DEDICATED_PARKED)
		Lobby.Matchmaking.SetPlaylistInfo(registerVal3)
	end
end

function Lobby.MatchmakingMP.AllowListenSearch(arg0)
	local registerVal1 = Dvar.lobbyDedicatedSearchSkip:exists()
	registerVal1 = Dvar.lobbyDedicatedSearchSkip:get()
	if registerVal1 and registerVal1 == true then
		return true
	end
	if Lobby.Matchmaking.SearchParams.searchInfo == nil then
		return true
	end
	if Lobby.Matchmaking.SearchParams.searchInfo.startTime == nil then
		return true
	end
	local registerVal2 = Engine.milliseconds()
	local registerVal3 = Engine.DvarInt(nil, "lobbySearchMinDediSearchTime")
	local registerVal4 = Engine.DvarInt(nil, "lobbySearchMinDediSearchClientAdd")
	if (registerVal3 + (registerVal4 * arg0)) >= ((registerVal2 - Lobby.Matchmaking.SearchParams.searchInfo.startTime) / 1000.000000) then
		local registerVal5 = Lobby.Matchmaking.ShouldForceListen()
	end
	local registerVal9 = tostring(((registerVal2 - Lobby.Matchmaking.SearchParams.searchInfo.startTime) / 1000.000000))
	local registerVal11 = tostring(true)
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("Matchmaking: Allow Listen Search Time: " .. registerVal9 .. " seconds. Allow Listen Search: " .. registerVal11 .. " 
"))
	return true
end

function Lobby.MatchmakingMP.AllowUnparkSearch(arg0)
	local registerVal1 = Lobby.MatchmakingMP.AllowListenSearch(arg0)
	if registerVal1 then
		return true
	end
	registerVal1 = Engine.DvarInt(nil, "lobbySearchForceUnparkLobbySize")
	if registerVal1 <= arg0 then
		return true
	end
	local registerVal2 = Engine.DvarFloat("lobbySearchSkipUnparkProbability")
	local registerVal3 = math.random()
	if registerVal2 > registerVal3 then
	end
	return true
end

function Lobby.MatchmakingMP.SetupMatchmakingStage(arg0)
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, "Matchmaking: Setting up multiplayer matchmaking stage.
")
	Lobby.Matchmaking.SetShowInMatchmaking(Enum.ShowInMatchmaking.SHOW_IN_MATCHMAKING_TRUE)
	Lobby.Matchmaking.SetNetcodeVersion()
	Lobby.Matchmaking.SetGeoLocation()
	Lobby.Matchmaking.SetIsEmpty(Lobby.Matchmaking.SessionEmpty.IS_NOT_EMPTY)
	Lobby.Matchmaking.SetGeoWeightTiered(0.200000)
	Lobby.Matchmaking.SetSkillWeight(0.010000)
	local registerVal1 = Lobby.Matchmaking.NextStage()
	local registerVal5 = tostring(registerVal1)
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, ("Matchmaking: SETUP MATCHMAKING STAGE: " .. registerVal5 .. "
"))
	if registerVal1 == Lobby.Matchmaking.SearchStage.DONE then
		return false
	end
	local registerVal2 = Dvar.lobbyDedicatedSearchSkip:exists()
	registerVal2 = Dvar.lobbyDedicatedSearchSkip:get()
	if registerVal2 and registerVal2 == true and registerVal1 ~= Lobby.Matchmaking.SearchStage.LISTEN and registerVal1 ~= Lobby.Matchmaking.SearchStage.LISTEN_DESPERATE and registerVal1 ~= Lobby.Matchmaking.SearchStage.DONE then
	end
	registerVal2 = Lobby.Matchmaking.GetConnection(arg0)
	local registerVal3 = Engine.GetPlaylistID()
	local registerVal7 = Engine.GetDLCBitsForLobby(Enum.LobbyType.LOBBY_TYPE_GAME)
	Dvar.lobbySearchMapPacks:set(Lobby.Matchmaking.GetMapPackBits(registerVal7, registerVal3))
	if Lobby.Matchmaking.SearchStage.LISTEN < Lobby.Matchmaking.SearchStage.DEDICATED_PARKED then
		local registerVal4 = Engine.DvarFloat("lobbySearchSkipDLCProbability")
		registerVal5 = math.random()
		if registerVal5 <= registerVal4 then
			local registerVal6 = Dvar.lobbySearchMapPacks:get()
			registerVal7 = LobbyVM.CheckDLCBit(registerVal6, Enum.ContentFlagBits.CONTENT_ORIGINALMAPS)
			if registerVal7 then
				Dvar.lobbySearchMapPacks:set((registerVal6 & 16776210.000000))
				local registerVal13 = Dvar.lobbySearchMapPacks:get()
				Engine.PrintWarning(Enum.consoleLabel.LABEL_LOBBYCLIENT, ("Dlcbits was " .. registerVal6 .. " now it's " .. registerVal13 .. " for matchmaking search.
"))
			else
				Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYCLIENT, "Diceroll failed, not going to fiddle dlc bits for matchmaking search.
")
			end
		end
		Lobby.MatchmakingMP.DoDedicatedSearch(Lobby.Matchmaking.SearchStage.LISTEN, registerVal3)
	else
		if Lobby.Matchmaking.SearchStage.DEDICATED_PARKED == Lobby.Matchmaking.SearchStage.LISTEN then
			Lobby.MatchmakingMP.UnparkDedicated(Lobby.Matchmaking.SearchStage.LISTEN, registerVal3)
		end
	end
	registerVal4 = Lobby.Matchmaking.GetNumSlotsNeededOnTeam(Lobby.Matchmaking.SearchStage.LISTEN)
	Lobby.Matchmaking.SetTeamSize(registerVal4)
	registerVal6 = Dvar.goodPing:get()
	registerVal5 = math.max(registerVal6, Dvar.lobbySearchDediUnparkPingLimit:get())
	registerVal6 = Engine.GetDediQosResultsByType(Lobby.Matchmaking.DatacenterType.ANY)
	if 0.000000 < registerVal6.numResults then
		registerVal7 = math.max(registerVal5, registerVal6.pingResults[1.000000].ping)
	end
	registerVal7 = Lobby.Matchmaking.GetPingLimit()
	Lobby.Matchmaking.PingRange(1.000000, registerVal7)
	Lobby.Matchmaking.MinGeoMatch(2.000000)
	return true
end

