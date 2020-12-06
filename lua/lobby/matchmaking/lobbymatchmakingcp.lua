-- Decompiled with CoDLUIDecompiler by JariK

require("lua.Lobby.Common.LobbyCore")
require("lua.Shared.LobbyData")
require("lua.Lobby.Matchmaking.LobbyMatchmaking")
Lobby.MatchmakingCP = {}
function Lobby.MatchmakingCP.SetupMatchmakingStage(arg0)
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, "Setting up CP matchmaking stage.
")
	Lobby.Matchmaking.SetShowInMatchmaking(Enum.ShowInMatchmaking.SHOW_IN_MATCHMAKING_TRUE)
	Lobby.Matchmaking.SetNetcodeVersion()
	Lobby.Matchmaking.SetGeoLocation()
	Lobby.Matchmaking.SetIsEmpty(Lobby.Matchmaking.SessionEmpty.IS_NOT_EMPTY)
	if Lobby.Matchmaking.SearchParams.mode == Lobby.Matchmaking.SearchMode.PUBLIC_CP_ALL then
		Lobby.Matchmaking.SetQueryId(Enum.QueryID.QUERYID_SEARCH_SESSIONS_BY_SERVER_TYPE)
		Dvar.lobbySearchPlaylistVersion:set(Lobby.Matchmaking.GetFfotdPlaylistVersionNumber())
		Dvar.lobbySearchPlaylistNumber:set(LuaUtils.INT_MAX)
	else
		Lobby.Matchmaking.SetQueryId(Enum.QueryID.QUERYID_SEARCH_SESSIONS_ALL)
		local registerVal1 = Engine.GetPlaylistID()
		Lobby.Matchmaking.SetPlaylistInfo(registerVal1)
	end
	registerVal1 = Lobby.Matchmaking.GetServerType()
	Lobby.Matchmaking.SetServerType(registerVal1)
	local registerVal2 = Lobby.Matchmaking.NextStage()
	local registerVal3 = Lobby.Matchmaking.GetConnection(arg0)
	local registerVal4 = Dvar.excellentPing:get()
	local registerVal5 = Dvar.goodPing:get()
	local registerVal6 = Dvar.terriblePing:get()
	Lobby.Matchmaking.SetGeoWeightTiered(0.200000)
	Lobby.Matchmaking.SetSkillWeight(1.000000)
	Lobby.Matchmaking.SetMapPacksAll()
	Lobby.Matchmaking.MinGeoMatch(1.000000)
	local registerVal7 = Engine.GetLobbyClientCount(Enum.LobbyType.LOBBY_TYPE_GAME)
	Lobby.Matchmaking.SetTeamSize(registerVal7)
	if registerVal3 == Lobby.Matchmaking.Connection.BEST then
		Lobby.Matchmaking.PingRange(1.000000, registerVal4)
	else
		if registerVal3 == Lobby.Matchmaking.Connection.NORMAL then
			Lobby.Matchmaking.PingRange(registerVal4, registerVal5)
		else
			Lobby.Matchmaking.PingRange(registerVal5, 999.000000)
		end
	end
	if Lobby.Matchmaking.SearchParams.mode == Lobby.Matchmaking.SearchMode.LOBBY_MERGE then
		if 0.000000 < registerVal2 then
			return false
		end
		return true
	else
		if Lobby.Matchmaking.SearchParams.mode == Lobby.Matchmaking.SearchMode.PUBLIC_CP_ALL or Lobby.Matchmaking.SearchParams.mode == Lobby.Matchmaking.SearchMode.PUBLIC then
			if (registerVal2 % 3.000000) == 1.000000 and registerVal3 == Lobby.Matchmaking.Connection.NORMAL then
				Lobby.Matchmaking.PingRange(registerVal5, registerVal6)
				return true
			else
				if (registerVal2 % 3.000000) == 0.000000 then
					return true
				else
					return false
				end
			end
		end
	end
	return false
end

