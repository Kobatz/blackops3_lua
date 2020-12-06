-- Decompiled with CoDLUIDecompiler by JariK

require("lua.Lobby.Common.LobbyCore")
require("lua.Lobby.Process.LobbyProcess")
Lobby.MapVote = {}
Lobby.MapVote.VoteState = LuaEnums.MAP_VOTE_STATE.HIDDEN
Lobby.MapVote.VoteInfo = nil
Lobby.MapVote.VoteData = nil
Lobby.MapVote.storedNextPrev = false
function Lobby.MapVote.GetMapValue(arg0, arg1)
	if not LuaUtils.mapsTable[arg0] then
		return nil
	end
	return LuaUtils.mapsTable[arg0][arg1]
end

function Lobby.MapVote.SetGameModeName(arg0, arg1, arg2)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.GetModel(registerVal4, "lobbyRoot.lobbyMainMode")
	registerVal4 = Engine.GetModelValue(registerVal3)
	if registerVal4 == Enum.LobbyMainMode.LOBBY_MAINMODE_ZM then
		local registerVal5 = Engine.CreateModel(arg0, arg1)
		Engine.SetModelValue(registerVal5, "")
	else
		registerVal5 = Engine.CreateModel(arg0, arg1)
		Engine.SetModelValue(registerVal5, Engine.Localize(arg2))
	end
end

function Lobby.MapVote.UpdateMapVoteInfo()
	if Lobby.MapVote.VoteState == LuaEnums.MAP_VOTE_STATE.HIDDEN then
		Lobby.MapVote.storedNextPrev = false
	end
	if Lobby.MapVote.VoteState == LuaEnums.MAP_VOTE_STATE.LOCKEDIN then
		local registerVal7 = Engine.GetLobbySessionGameData(Enum.LobbyModule.LOBBY_MODULE_CLIENT)
		local registerVal10 = Engine.StructTableLookupString("game_types", "name", registerVal7.gametype, "name_ref_caps")
	else
		registerVal7 = Engine.GameLobbyGetMapVote()
		if registerVal7 == nil then
			return false
		end
		local registerVal8 = Engine.StructTableLookupString("game_types", "name", registerVal7.nextGametype, "name_ref_caps")
		registerVal8 = Engine.StructTableLookupString("game_types", "name", registerVal7.previousGametype, "name_ref_caps")
		previousGametypeType = registerVal8
		if Lobby.MapVote.storedNextPrev == false then
			Lobby.MapVote.storedNextPrev = true
			Engine.StorePlaylistNextPrev(registerVal7.playlistNext, registerVal7.playlistPrevious)
		end
	end
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.CreateModel(registerVal8, "MapVote", true)
	registerVal8 = Dvar.ui_gametype:get()
	if Dvar.ui_gametype ~= nil and registerVal8 == "doa" then
		Dvar.ui_mapname:set("cp_doa_bo3")
	end
	if "cp_doa_bo3" ~= nil then
		registerVal8 = string.sub("cp_doa_bo3", 1.000000, 6.000000)
		registerVal8 = Dvar.cp_queued_level:get()
		if registerVal8 == "cp_sh_" and registerVal8 and registerVal8 ~= "" then
		end
		registerVal8 = Engine.GetLobbySessionGameData(Enum.LobbyModule.LOBBY_MODULE_CLIENT)
		local registerVal9 = Engine.CurrentSessionMode()
		if registerVal9 == Enum.eModes.MODE_CAMPAIGN and registerVal8.gametype == "coop" then
			if LuaUtils.mapsTable[registerVal8] then
			end
			if LuaUtils.mapsTable[registerVal8].mapLocation and LuaUtils.mapsTable[registerVal8].mapLocation ~= "" then
			end
		end
		registerVal10 = Engine.CreateModel(registerVal7, "mapVoteMapNext")
		Engine.SetModelValue(registerVal10, registerVal8)
		Lobby.MapVote.SetGameModeName(registerVal7, "mapVoteGameModeNext", LuaUtils.mapsTable[registerVal8].mapLocation)
		registerVal9 = Engine.CurrentSessionMode()
		if registerVal9 == Enum.eModes.MODE_ZOMBIES then
			registerVal9 = Engine.SessionMode_IsOnlineGame()
			if registerVal9 then
				registerVal9 = Engine.GameModeIsMode(Enum.eGameModes.MODE_GAME_MATCHMAKING_MANUAL)
			end
			registerVal10 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
			if registerVal9 and registerVal10 then
				local registerVal11 = Dvar.zm_private_rankedmatch:get()
				if registerVal11 then
					local registerVal13 = Engine.GetGlobalModel()
					local registerVal12 = Engine.CreateModel(registerVal13, "MapVote.mapVoteGameModeNext")
					Engine.SetModelValue(registerVal12, Engine.Localize("MENU_RANKED_GAME_CAPS"))
				else
					registerVal13 = Engine.GetGlobalModel()
					registerVal12 = Engine.CreateModel(registerVal13, "MapVote.mapVoteGameModeNext")
					Engine.SetModelValue(registerVal12, Engine.Localize("MENU_NON_RANKED_GAME_CAPS"))
				end
			end
		end
	end
	if previousGametypeType then
		registerVal9 = Engine.CreateModel(registerVal7, "mapVoteMapPreviousGametype")
		Engine.SetModelValue(registerVal9, previousGametypeType)
	end
	if registerVal7.previousMapName ~= nil then
		registerVal9 = Engine.CreateModel(registerVal7, "mapVoteMapPrevious")
		Engine.SetModelValue(registerVal9, registerVal7.previousMapName)
		Lobby.MapVote.SetGameModeName(registerVal7, "mapVoteGameModePrevious", registerVal8)
	end
	return true
end

function Lobby.MapVote.OnSessionStart(arg0)
	if arg0.lobbyType == Enum.LobbyType.LOBBY_TYPE_GAME then
		Lobby.MapVote.Clear()
	end
end

function Lobby.MapVote.OnSessionEnd(arg0)
	if arg0.lobbyType == Enum.LobbyType.LOBBY_TYPE_GAME and arg0.lobbyModule == Enum.LobbyModule.LOBBY_MODULE_HOST then
		Engine.SetPlaylistPrevCount(0.000000)
	end
end

function Lobby.MapVote.Init()
	local registerVal1 = Engine.GetGlobalModel()
	Engine.CreateModel(registerVal1, "lobbyRoot.mapVote", true)
	registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.CreateModel(registerVal1, "MapVote", true)
	Engine.CreateModel(registerVal0, "mapVoteMapNext", true)
	Engine.CreateModel(registerVal0, "mapVoteMapPrevious", true)
	Engine.CreateModel(registerVal0, "mapVoteGameModeNext", true)
	Engine.CreateModel(registerVal0, "mapVoteGameModePrevious", true)
	Engine.CreateModel(registerVal0, "mapVoteCountNext", true)
	Engine.CreateModel(registerVal0, "mapVoteCountPrevious", true)
	Engine.CreateModel(registerVal0, "mapVoteCountRandom", true)
	Engine.CreateModel(registerVal0, "mapVoteGameModeRandom", true)
	Engine.CreateModel(registerVal0, "mapVoteCountRandom", true)
	Engine.CreateModel(registerVal0, "mapVoteMapPreviousGametype", true)
	Engine.CreateModel(registerVal0, "mapVoteCustomGameName", true)
	Engine.CreateModel(registerVal0, "isOfficialVariant", true)
	local registerVal2 = Engine.GetModel(registerVal0, "mapVoteMapNext")
	Engine.SetModelValue(registerVal2, "")
	registerVal2 = Engine.GetModel(registerVal0, "mapVoteMapPrevious")
	Engine.SetModelValue(registerVal2, "")
	registerVal2 = Engine.GetModel(registerVal0, "mapVoteGameModeNext")
	Engine.SetModelValue(registerVal2, "")
	registerVal2 = Engine.GetModel(registerVal0, "mapVoteGameModePrevious")
	Engine.SetModelValue(registerVal2, "")
	registerVal2 = Engine.GetModel(registerVal0, "mapVoteCountNext")
	Engine.SetModelValue(registerVal2, 0.000000)
	registerVal2 = Engine.GetModel(registerVal0, "mapVoteCountPrevious")
	Engine.SetModelValue(registerVal2, 0.000000)
	registerVal2 = Engine.GetModel(registerVal0, "mapVoteCountRandom")
	Engine.SetModelValue(registerVal2, 0.000000)
	registerVal2 = Engine.GetModel(registerVal0, "mapVoteGameModeRandom")
	Engine.SetModelValue(registerVal2, "MENU_MODE_CLASSIFIED_CAPS")
	registerVal2 = Engine.GetModel(registerVal0, "mapVoteCountRandom")
	Engine.SetModelValue(registerVal2, 0.000000)
	registerVal2 = Engine.GetModel(registerVal0, "mapVoteCustomGameName")
	Engine.SetModelValue(registerVal2, "")
	registerVal2 = Engine.GetModel(registerVal0, "isOfficialVariant")
	Engine.SetModelValue(registerVal2, true)
	Lobby.MapVote.Clear()
end

function Lobby.MapVote.SetMapVoteStatus(arg0)
	Lobby.MapVote.VoteState = arg0
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.GetModel(registerVal2, "lobbyRoot.mapVote")
	registerVal2 = Engine.GetModelValue(registerVal1)
	if registerVal2 == arg0 then
		return false
	end
	Engine.SetModelValue(registerVal1, arg0)
	return true
end

function Lobby.MapVote.GameLobbyClientDataUpdate(arg0)
	local registerVal1 = Engine.IsInGame()
	if registerVal1 == true then
		return 
	end
	if arg0.clients ~= nil then
	end
	Lobby.MapVote.VoteData = arg0.clients
	local registerVal5, registerVal6, registerVal7 = pairs(arg0.clients)
	for index8,value9 in registerVal5, registerVal6, registerVal7 do
		if value9.mapVote == Enum.LobbyMapVote.LOBBY_MAPVOTE_NEXT then
		else
			if value9.mapVote == Enum.LobbyMapVote.LOBBY_MAPVOTE_PREVIOUS then
			else
				if value9.mapVote == Enum.LobbyMapVote.LOBBY_MAPVOTE_RANDOM then
				end
			end
		end
	end
	registerVal6 = Engine.GetGlobalModel()
	registerVal5 = Engine.CreateModel(registerVal6, "MapVote", true)
	registerVal7 = Engine.CreateModel(registerVal5, "mapVoteCountNext")
	Engine.SetModelValue(registerVal7, (0.000000 + 1.000000))
	registerVal7 = Engine.CreateModel(registerVal5, "mapVoteCountPrevious")
	Engine.SetModelValue(registerVal7, (0.000000 + 1.000000))
	registerVal7 = Engine.CreateModel(registerVal5, "mapVoteCountRandom")
	Engine.SetModelValue(registerVal7, (0.000000 + 1.000000))
end

function Lobby.MapVote.Hide()
	Lobby.MapVote.Clear()
end

function Lobby.MapVote.ShowVote()
	local registerVal0 = Lobby.MapVote.UpdateMapVoteInfo()
	if registerVal0 == false then
		return 
	end
	Lobby.MapVote.SetMapVoteStatus(LuaEnums.MAP_VOTE_STATE.VOTING)
end

function Lobby.MapVote.UpdateMapInfo()
	local registerVal0 = Lobby.MapVote.UpdateMapVoteInfo()
	if registerVal0 == false then
		return 
	end
	registerVal0 = Engine.GetLobbyMode(Enum.LobbyMode.LOBBY_MODE_CUSTOM)
	registerVal0 = Engine.GetLobbySession(Enum.LobbyModule.LOBBY_MODULE_CLIENT, Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal0 and registerVal0 and registerVal0.lobbyData and registerVal0.lobbyData.lobbyCustomData and registerVal0.lobbyData.lobbyCustomData.customGameDetails then
		local registerVal3 = Engine.GetGlobalModel()
		local registerVal2 = Engine.GetModel(registerVal3, "MapVote")
		local registerVal4 = Engine.CreateModel(registerVal2, "mapVoteCustomGameName")
		Engine.SetModelValue(registerVal4, registerVal0.lobbyData.lobbyCustomData.customGameDetails.name)
		registerVal4 = Engine.CreateModel(registerVal2, "isOfficialVariant")
		Engine.SetModelValue(registerVal4, registerVal0.lobbyData.lobbyCustomData.customGameDetails.isOfficial)
		Engine.ForceNotifyModelSubscriptions(Engine.CreateModel(registerVal2, "mapVoteGameModeNext"))
	end
end

function Lobby.MapVote.ShowLockedIn()
	local registerVal0 = Engine.GetLobbyUIScreen()
	local registerVal1 = LobbyData:UITargetFromId(registerVal0)
	if registerVal1.lobbyModule == Enum.LobbyModule.LOBBY_MODULE_CLIENT then
		local registerVal2 = Lobby.Timer.GetTimerType()
		if registerVal2 == LuaEnums.TIMER_TYPE.THEATER then
		else
			if Lobby.MapVote.VoteData == nil then
				return 
			end
		end
	end
	Lobby.MapVote.SetMapVoteStatus(LuaEnums.MAP_VOTE_STATE.LOCKEDIN)
	Lobby.MapVote.UpdateMapVoteInfo()
end

function Lobby.MapVote.LockedInVote()
	if Lobby.MapVote.VoteState == LuaEnums.MAP_VOTE_STATE.LOCKEDIN then
		return 
	end
	local registerVal7 = Engine.LobbyGetSessionClients(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal8, registerVal9, registerVal10 = ipairs(registerVal7.sessionClients)
	for index11,value12 in registerVal8, registerVal9, registerVal10 do
		if value12.mapVote == Enum.LobbyMapVote.LOBBY_MAPVOTE_NEXT then
		else
			if value12.mapVote == Enum.LobbyMapVote.LOBBY_MAPVOTE_PREVIOUS then
			else
				if value12.mapVote == Enum.LobbyMapVote.LOBBY_MAPVOTE_RANDOM then
				end
			end
		end
	end
	if (0.000000 + 1.000000) < (0.000000 + 1.000000) then
		Engine.GameLobbyChoosePreviousPlaylist()
	end
	if (0.000000 + 1.000000) < (0.000000 + 1.000000) then
		Engine.GameLobbyChooseRandomPlaylist()
		registerVal10 = Engine.GetLobbySessionGameData(Enum.LobbyModule.LOBBY_MODULE_CLIENT)
		local registerVal13 = Lobby.MapVote.GetMapValue(registerVal10.mapname, "previewImage")
		registerVal13 = Lobby.MapVote.GetMapValue(registerVal10.mapname, "mapNameCaps")
		registerVal13 = Engine.StructTableLookupString("game_types", "name", registerVal10.gametype, "name_ref_caps")
	end
	if false then
		local registerVal11 = Engine.GetPlaylistPrevCount()
		Engine.SetPlaylistPrevCount((registerVal11 + 1.000000))
	else
		Engine.SetPlaylistPrevCount(0.000000)
	end
	registerVal11 = Engine.GetGlobalModel()
	registerVal10 = Engine.CreateModel(registerVal11, "MapVote", true)
	local registerVal12 = Engine.CreateModel(registerVal10, "mapVoteCountNext")
	Engine.SetModelValue(registerVal12, (0.000000 + 1.000000))
	registerVal12 = Engine.CreateModel(registerVal10, "mapVoteCountPrevious")
	Engine.SetModelValue(registerVal12, (0.000000 + 1.000000))
	registerVal12 = Engine.CreateModel(registerVal10, "mapVoteCountRandom")
	Engine.SetModelValue(registerVal12, (0.000000 + 1.000000))
end

function Lobby.MapVote.ShowEndResult()
	if Lobby.MapVote.VoteState == LuaEnums.MAP_VOTE_STATE.RESULT then
		return 
	end
	Lobby.MapVote.SetMapVoteStatus(LuaEnums.MAP_VOTE_STATE.RESULT)
end

function Lobby.MapVote.GameLobbyGameServerDataUpdate(arg0)
	local registerVal1 = Engine.IsInGame()
	if registerVal1 == true then
		return 
	end
	Lobby.MapVote.UpdateMapInfo()
end

function Lobby.MapVote.Clear()
	Lobby.MapVote.VoteData = nil
	Lobby.MapVote.storedNextPrev = false
	Lobby.MapVote.SetMapVoteStatus(LuaEnums.MAP_VOTE_STATE.HIDDEN)
	Engine.ClearMapVoteData()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.GetModel(registerVal1, "MapVote")
	local registerVal2 = Engine.GetModel(registerVal0, "mapVoteMapNext")
	Engine.SetModelValue(registerVal2, "")
	registerVal2 = Engine.GetModel(registerVal0, "mapVoteMapPrevious")
	Engine.SetModelValue(registerVal2, "")
	registerVal2 = Engine.GetModel(registerVal0, "mapVoteGameModeNext")
	Engine.SetModelValue(registerVal2, "")
	registerVal2 = Engine.GetModel(registerVal0, "mapVoteGameModePrevious")
	Engine.SetModelValue(registerVal2, "")
	registerVal2 = Engine.GetModel(registerVal0, "mapVoteCountNext")
	Engine.SetModelValue(registerVal2, 0.000000)
	registerVal2 = Engine.GetModel(registerVal0, "mapVoteCountPrevious")
	Engine.SetModelValue(registerVal2, 0.000000)
	registerVal2 = Engine.GetModel(registerVal0, "mapVoteCountRandom")
	Engine.SetModelValue(registerVal2, 0.000000)
	registerVal2 = Engine.GetModel(registerVal0, "mapVoteGameModeRandom")
	Engine.SetModelValue(registerVal2, "MENU_MODE_CLASSIFIED_CAPS")
	registerVal2 = Engine.GetModel(registerVal0, "mapVoteCountRandom")
	Engine.SetModelValue(registerVal2, 0.000000)
	registerVal2 = Engine.GetModel(registerVal0, "mapVoteCustomGameName")
	Engine.SetModelValue(registerVal2, "")
	registerVal2 = Engine.GetModel(registerVal0, "isOfficialVariant")
	Engine.SetModelValue(registerVal2, true)
end

function Lobby.MapVote.Pump()
end

