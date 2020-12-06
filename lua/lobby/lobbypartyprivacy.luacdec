-- Decompiled with CoDLUIDecompiler by JariK

require("lua.Lobby.Common.LobbyCore")
require("lua.Lobby.Process.LobbyProcess")
Lobby.PartyPrivacy = {}
Lobby.PartyPrivacy.checkTime = 0.000000
Lobby.PartyPrivacy.ON_SESSION_START_RECHECK_TIME = 500.000000
function Lobby.PartyPrivacy.GetGameLobbyPartyPrivacy()
	local registerVal0 = Engine.GetLobbyUIScreen()
	if registerVal0 ~= LobbyData.UITargets.UI_CPLOBBYONLINECUSTOMGAME.id and registerVal0 == LobbyData.UITargets.UI_CP2LOBBYONLINECUSTOMGAME.id or registerVal0 == LobbyData.UITargets.UI_MPLOBBYONLINECUSTOMGAME.id then
		local registerVal2 = Engine.GetPrimaryController()
		local registerVal1 = Engine.GetProfileVarInt(registerVal2, "party_privacyStatus")
		return registerVal1
	end
	if registerVal0 == LobbyData.UITargets.UI_FRLOBBYONLINEGAME.id then
		return Enum.PartyPrivacy.PARTY_PRIVACY_CLOSED
	end
	if registerVal0 == LobbyData.UITargets.UI_ZMLOBBYONLINE.id then
		registerVal1 = LobbyVM.IsHostLaunching()
		registerVal1 = Engine.IsInGame()
		registerVal1 = Engine.IsRunningUILevel()
		if not registerVal1 and not registerVal0 or not registerVal1 then
			return Enum.PartyPrivacy.PARTY_PRIVACY_CLOSED
		end
	end
	registerVal1 = Engine.IsCampaignGame()
	if registerVal1 then
	else
		registerVal1 = Engine.IsMultiplayerGame()
		if registerVal1 then
			registerVal1 = Engine.SessionMode_IsPublicOnlineGame()
			registerVal1 = Engine.GetPlaylistID()
			registerVal2 = Engine.GetPlaylistMaxPartySize(registerVal1)
			if registerVal1 and registerVal2 == 1.000000 then
				return Enum.PartyPrivacy.PARTY_PRIVACY_CLOSED
			end
			registerVal1 = LuaUtils.IsArenaMode()
			if registerVal1 then
				registerVal1 = Engine.GetGametypeSetting("pregameItemVoteEnabled")
				if registerVal1 ~= 1.000000 then
				end
				registerVal2 = Engine.GetGametypeSetting("pregameDraftEnabled")
				if registerVal2 ~= 1.000000 then
				end
				if not registerVal0 or true then
					local registerVal3 = Engine.SessionMode_IsPublicOnlineGame()
					if registerVal3 then
						registerVal3 = Engine.IsRunningUILevel()
						registerVal3 = Engine.IsInGame()
						registerVal3 = LobbyVM.IsHostLaunching()
						if registerVal3 and not true or registerVal3 then
							return Enum.PartyPrivacy.PARTY_PRIVACY_CLOSED
						end
					end
				end
				registerVal3 = Lobby.Timer.LobbyIsLocked()
				return Enum.PartyPrivacy.PARTY_PRIVACY_CLOSED
				registerVal1 = Engine.IsZombiesGame()
				if registerVal3 and registerVal1 then
					registerVal1 = LobbyVM.IsHostLaunching()
					registerVal1 = Engine.IsInGame()
					registerVal1 = Engine.IsRunningUILevel()
					if not registerVal1 and not registerVal0 or not registerVal1 then
						registerVal1 = Engine.SessionMode_IsOnlineGame()
						registerVal1 = Dvar.zm_private_rankedmatch:get()
						if registerVal1 and registerVal1 then
							return Enum.PartyPrivacy.PARTY_PRIVACY_CLOSED
						end
						registerVal1 = Engine.SessionMode_IsPublicOnlineGame()
						if registerVal1 then
							return Enum.PartyPrivacy.PARTY_PRIVACY_CLOSED
						end
					end
				end
			end
		end
	end
	registerVal1 = LobbyVM.IsInTheaterLobby()
	if registerVal1 then
		return Enum.PartyPrivacy.PARTY_PRIVACY_CLOSED
	end
	return Enum.PartyPrivacy.PARTY_PRIVACY_OPEN
end

function Lobby.PartyPrivacy.SetPartyPrivacy()
	local registerVal0 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal1 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal2 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal3 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal4 = Engine.GetLobbyUIScreen()
	local registerVal5 = LobbyData:UITargetFromId(registerVal4)
	if registerVal0 then
		local registerVal9 = Engine.GetPrimaryController()
		local registerVal8 = Engine.GetProfileVarInt(registerVal9, "party_privacyStatus")
		Engine.SetSessionPartyPrivacy(Enum.LobbyType.LOBBY_TYPE_PRIVATE, registerVal8)
	else
		if registerVal1 then
			registerVal8 = Engine.GetSessionPartyPrivacy(Enum.LobbyModule.LOBBY_MODULE_CLIENT, Enum.LobbyType.LOBBY_TYPE_PRIVATE)
		end
	end
	if registerVal2 then
		registerVal8 = Lobby.PartyPrivacy.GetGameLobbyPartyPrivacy()
		Engine.SetSessionPartyPrivacy(Enum.LobbyType.LOBBY_TYPE_GAME, registerVal8)
	else
		if registerVal3 then
			registerVal8 = Engine.GetSessionPartyPrivacy(Enum.LobbyModule.LOBBY_MODULE_CLIENT, Enum.LobbyType.LOBBY_TYPE_GAME)
		end
	end
	registerVal8 = math.max(registerVal8, registerVal8)
	Engine.SetPartyPrivacy(registerVal8)
	registerVal9 = LobbyData.PartyPrivacyToString(registerVal8)
	local registerVal11 = Engine.GetGlobalModel()
	local registerVal10 = Engine.CreateModel(registerVal11, "PartyPrivacy")
	if registerVal10 then
		local registerVal12 = Engine.CreateModel(registerVal10, "privacyStatus")
		Engine.SetModelValue(registerVal12, registerVal9)
	end
end

function Lobby.PartyPrivacy.SetLobbyMaxClients(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "PartyPrivacy")
	registerVal3 = Engine.GetLobbyMaxClients(arg1)
	local registerVal4 = Engine.GetProfileVarInt(arg0, "party_maxplayers")
	local registerVal6 = math.max(1.000000, registerVal4)
	local registerVal5 = math.min(registerVal6, registerVal3)
	Engine.SetLobbyMaxClients(arg1, registerVal5)
	local registerVal7 = Engine.CreateModel(registerVal2, "maxPlayers")
	Engine.SetModelValue(registerVal7, registerVal5)
end

function Lobby.PartyPrivacy.OnSessionStart(arg0)
	local registerVal4 = Dvar.partyPrivacyEnabled:get()
	if registerVal4 == false then
		return 
	end
	registerVal4 = Engine.IsDedicatedServer()
	registerVal4 = Engine.GetLobbyNetworkMode()
	registerVal4 = Engine.GetLobbyNetworkMode()
	if registerVal4 ~= true and arg0.lobbyModule == Enum.LobbyModule.LOBBY_MODULE_HOST and registerVal4 == Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LOCAL or registerVal4 == Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LAN then
		return 
	end
	local registerVal5 = Engine.GetGlobalModel()
	registerVal4 = Engine.CreateModel(registerVal5, "PartyPrivacy")
	registerVal5 = Engine.GetPrimaryController()
	local registerVal6 = Engine.GetProfileVarInt(registerVal5, "party_privacyStatus")
	if arg0.lobbyType == Enum.LobbyType.LOBBY_TYPE_GAME then
		if arg0.lobbyMode == Enum.LobbyMode.LOBBY_MODE_PUBLIC or arg0.lobbyMode == Enum.LobbyMode.LOBBY_MODE_ARENA then
		else
		else
			Lobby.PartyPrivacy.SetLobbyMaxClients(registerVal5, arg0.lobbyType)
		end
	end
	local registerVal8 = math.max(Enum.PartyPrivacy.PARTY_PRIVACY_OPEN, Enum.PartyPrivacy.PARTY_PRIVACY_OPEN)
	local registerVal7 = math.min(registerVal8, Enum.PartyPrivacy.PARTY_PRIVACY_CLOSED)
	registerVal7 = Dvar.tu4_partyPrivacyUseGlobal:get()
	if registerVal7 == true then
		Engine.SetPartyPrivacy(registerVal7)
	else
		Engine.SetSessionPartyPrivacy(arg0.lobbyType, registerVal7)
	end
	registerVal7 = LobbyData.PartyPrivacyToString(registerVal7)
	if registerVal4 then
		local registerVal9 = Engine.CreateModel(registerVal4, "privacyStatus")
		Engine.SetModelValue(registerVal9, registerVal7)
	end
	local registerVal10 = Engine.milliseconds()
	Lobby.PartyPrivacy.checkTime = (Lobby.PartyPrivacy.ON_SESSION_START_RECHECK_TIME + registerVal10)
end

function Lobby.PartyPrivacy.OnJoinPartyPrivacyCheck(arg0)
	if arg0.joinType == Enum.JoinType.JOIN_TYPE_PARTY or arg0.joinType == Enum.JoinType.JOIN_TYPE_PLAYLIST then
		return Enum.JoinResult.JOIN_RESULT_SUCCESS
	end
	local registerVal4 = Engine.GetPartyPrivacy()
	if registerVal4 == Enum.PartyPrivacy.PARTY_PRIVACY_CLOSED then
		local registerVal8 = tostring(arg0.fromXUID)
		Engine.PrintError(Enum.consoleLabel.LABEL_LOBBYHOST, ("Rejecting join request from xuid(" .. registerVal8 .. ") because we are not joinable, session party privacy is closed.
"))
		return Enum.JoinResult.JOIN_RESULT_NOT_JOINABLE_CLOSED
	else
		if registerVal4 == Enum.PartyPrivacy.PARTY_PRIVACY_INVITE_ONLY and arg0.joinType ~= Enum.JoinType.JOIN_TYPE_INVITE then
			registerVal8 = tostring(arg0.fromXUID)
			Engine.PrintError(Enum.consoleLabel.LABEL_LOBBYHOST, ("Rejecting join request from xuid(" .. registerVal8 .. ") because we are not joinable, session party privacy is invite only.
"))
			return Enum.JoinResult.JOIN_RESULT_NOT_JOINABLE_INVITE_ONLY
		else
			if registerVal4 == Enum.PartyPrivacy.PARTY_PRIVACY_FRIENDS_ONLY and arg0.joinType ~= Enum.JoinType.JOIN_TYPE_INVITE and arg0.joinType ~= Enum.JoinType.JOIN_TYPE_FRIEND then
				registerVal8 = tostring(arg0.fromXUID)
				Engine.PrintError(Enum.consoleLabel.LABEL_LOBBYHOST, ("Rejecting join request from xuid(" .. registerVal8 .. ") because we are not joinable, session party privacy is friends only.
"))
				return Enum.JoinResult.JOIN_RESULT_NOT_JOINABLE_FRIENDS_ONLY
			end
		end
	end
	return Enum.JoinResult.JOIN_RESULT_SUCCESS
end

function Lobby.PartyPrivacy.Pump()
	local registerVal0 = Dvar.partyPrivacyEnabled:get()
	registerVal0 = Dvar.partyPrivacyPumpEnabled:get()
	if registerVal0 == false or registerVal0 == false then
		return 
	end
	local registerVal1 = Engine.milliseconds()
	if registerVal1 < Lobby.PartyPrivacy.checkTime then
		return 
	end
	registerVal1 = Dvar.partyPrivacyCheckInterval:get()
	local registerVal2 = Engine.milliseconds()
	Lobby.PartyPrivacy.checkTime = (registerVal1 + registerVal2)
	Lobby.PartyPrivacy.SetPartyPrivacy()
end

