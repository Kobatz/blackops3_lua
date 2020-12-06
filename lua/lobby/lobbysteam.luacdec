-- Decompiled with CoDLUIDecompiler by JariK

require("lua.Shared.LuaEnums")
require("lua.Shared.LuaUtils")
Lobby.Steam = {}
function Lobby.Steam.OnSessionStart(arg0)
	if arg0.lobbyModule == Enum.LobbyModule.LOBBY_MODULE_HOST and arg0.lobbyType == Enum.LobbyType.LOBBY_TYPE_GAME then
		Engine.LiveSteamServer_Start()
	end
end

function Lobby.Steam.OnSessionEnd(arg0)
	if arg0.lobbyModule == Enum.LobbyModule.LOBBY_MODULE_HOST and arg0.lobbyType == Enum.LobbyType.LOBBY_TYPE_GAME then
		Engine.LiveSteamServer_Stop()
	end
end

function Lobby.Steam.OnMatchChangeMap(arg0)
	local registerVal1 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	registerVal1 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal1 and registerVal1 then
		Engine.LiveSteamServer_SetMapName(arg0.nextMap)
	end
end

function Lobby.Steam.OnMatchChangeGameType(arg0)
	local registerVal1 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	registerVal1 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal1 and registerVal1 then
		Engine.LiveSteamLobby_SetLobbyData("gametype", arg0.gameType)
		Engine.LiveSteamServer_AddKvpToGameTags("gametype", arg0.gameType)
	end
end

function Lobby.Steam.OnLobbyServerListRetrieved(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.GetModel(registerVal2, "serverBrowser")
	registerVal2 = Engine.CreateModel(registerVal1, "serverListCount")
	local registerVal3 = Engine.SetModelValue(registerVal2, arg0.count)
	if registerVal3 == false then
		Engine.ForceNotifyModelSubscriptions(registerVal2)
	end
end

function Lobby.Steam.OnLobbyServerCountUpdated(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.GetModel(registerVal2, "serverBrowser")
	registerVal2 = Engine.CreateModel(registerVal1, "serverListUpdatedCount")
	local registerVal3 = Engine.SetModelValue(registerVal2, arg0.count)
	if registerVal3 == false then
		Engine.ForceNotifyModelSubscriptions(registerVal2)
	end
end

function Lobby.Steam.OnLobbyServerListSorted(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.GetModel(registerVal2, "serverBrowser")
	registerVal2 = Engine.CreateModel(registerVal1, "serverListSortType")
	local registerVal3 = Engine.SetModelValue(registerVal2, arg0.sortType)
	if registerVal3 == false then
		Engine.ForceNotifyModelSubscriptions(registerVal2)
	end
end

function Lobby.Steam.OnSessionModeChanged(arg0)
	local registerVal1 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	registerVal1 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal1 and registerVal1 then
		Engine.LiveSteamLobby_SetLobbyData("sessionmode", arg0.mode)
	end
end

function Lobby.Steam.OnMatchStart(arg0)
	local registerVal1 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	registerVal1 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal1 and registerVal1 then
		Engine.LiveSteamLobby_SetLobbyData("ingame", 1.000000)
	end
end

function Lobby.Steam.OnMatchEnd(arg0)
	local registerVal1 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	registerVal1 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal1 and registerVal1 then
		Engine.LiveSteamLobby_SetLobbyData("ingame", 0.000000)
	end
end

function Lobby.Steam.OnPartyPrivacyChange(arg0)
	local registerVal1 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	registerVal1 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal1 and registerVal1 then
		Engine.LiveSteamLobby_SetLobbyData("privacy", arg0.partyPrivacy)
	end
end

function Lobby.Steam.OnMaxClientsChanged(arg0)
	local registerVal1 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	registerVal1 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal1 and registerVal1 then
		Engine.LiveSteamLobby_SetLobbyData("maxclients", arg0.nextMaxClients)
		Engine.LiveSteamServer_SetMaxPlayerCount(arg0.nextMaxClients)
	end
end

function Lobby.Steam.OnClientAdded(arg0)
	local registerVal1 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	registerVal1 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal1 and registerVal1 then
		registerVal1 = Engine.GetLobbyClientCount(Enum.LobbyType.LOBBY_TYPE_GAME)
		Engine.LiveSteamLobby_SetLobbyData("clients", registerVal1)
	end
end

function Lobby.Steam.OnClientRemoved(arg0)
	local registerVal1 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	registerVal1 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal1 and registerVal1 then
		registerVal1 = Engine.GetLobbyClientCount(Enum.LobbyType.LOBBY_TYPE_GAME)
		Engine.LiveSteamLobby_SetLobbyData("clients", registerVal1)
	end
end

