-- Decompiled with CoDLUIDecompiler by JariK

require("lua.Lobby.Common.LobbyCore")
require("lua.Shared.LobbyData")
require("lua.Lobby.Matchmaking.LobbyMatchmaking")
Lobby.MatchmakingZM = {}
function Lobby.MatchmakingZM.SetupMatchmakingStage(arg0)
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, "Setting up ZM matchmaking stage.
")
	Lobby.Matchmaking.SetShowInMatchmaking(Enum.ShowInMatchmaking.SHOW_IN_MATCHMAKING_TRUE)
	Lobby.Matchmaking.SetNetcodeVersion()
	Lobby.Matchmaking.SetGeoLocation()
	Lobby.Matchmaking.SetIsEmpty(Lobby.Matchmaking.SessionEmpty.IS_NOT_EMPTY)
	Lobby.Matchmaking.SetQueryId(Enum.QueryID.QUERYID_SEARCH_SESSIONS_ALL)
	Lobby.Matchmaking.SetGeoWeightTiered(0.200000)
	Lobby.Matchmaking.SetSkillWeight(1.000000)
	Lobby.Matchmaking.SetMapPacksAll()
	Lobby.Matchmaking.MinGeoMatch(0.000000)
	local registerVal1 = Engine.GetPlaylistID()
	Lobby.Matchmaking.SetPlaylistInfo(registerVal1)
	local registerVal2 = Engine.GetLobbyClientCount(Enum.LobbyType.LOBBY_TYPE_GAME)
	Lobby.Matchmaking.SetTeamSize(registerVal2)
	local registerVal3 = Lobby.Matchmaking.GetConnection(arg0)
	local registerVal4 = Dvar.excellentPing:get()
	local registerVal5 = Dvar.goodPing:get()
	local registerVal6 = Dvar.terriblePing:get()
	if registerVal3 == Lobby.Matchmaking.Connection.BEST then
		Lobby.Matchmaking.PingRange(1.000000, registerVal4)
	else
		if registerVal3 == Lobby.Matchmaking.Connection.NORMAL then
			Lobby.Matchmaking.PingRange(registerVal4, registerVal5)
		else
			Lobby.Matchmaking.PingRange(registerVal5, 999.000000)
		end
	end
	local registerVal7 = Lobby.Matchmaking.NextStage()
	if Lobby.Matchmaking.SearchParams.mode == Lobby.Matchmaking.SearchMode.LOBBY_MERGE then
		if 0.000000 < registerVal7 then
			return false
		end
		return true
	else
		if Lobby.Matchmaking.SearchParams.mode == Lobby.Matchmaking.SearchMode.PUBLIC then
			if (registerVal7 % 3.000000) == 1.000000 and registerVal3 == Lobby.Matchmaking.Connection.NORMAL then
				Lobby.Matchmaking.PingRange(registerVal5, registerVal6)
				return true
			else
				if (registerVal7 % 3.000000) == 0.000000 then
					return true
				else
					return false
				end
			end
		end
	end
	return false
end

