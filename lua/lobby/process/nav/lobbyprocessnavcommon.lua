-- Decompiled with CoDLUIDecompiler by JariK

require("lua.Shared.LuaUtils")
require("lua.Lobby.Process.LobbyProcess")
local function __FUNC_9DA_(arg0, arg1, arg2)
	return Lobby.ProcessNavigate.CreatePrivateLobby(arg0, arg1, arg2)
end

Lobby.Core.AddProcessForward(LobbyData.UITargets.UI_MAIN, LobbyData.UITargets.UI_MODESELECT, __FUNC_9DA_)
local function __FUNC_A78_(arg0, arg1, arg2)
	return Lobby.ProcessNavigate.CreatePrivateLobby(arg0, arg1, arg2)
end

Lobby.Core.AddProcessForward(LobbyData.UITargets.UI_MAIN, LobbyData.UITargets.UI_MPLOBBYONLINE, __FUNC_A78_)
local function __FUNC_B18_(arg0, arg1, arg2)
	return Lobby.ProcessNavigate.CreateGameLobby(arg0, arg1, arg2)
end

Lobby.Core.AddProcessForward(LobbyData.UITargets.UI_MODESELECT, LobbyData.UITargets.UI_CPLOBBYONLINE, __FUNC_B18_)
local function __FUNC_BB5_(arg0, arg1, arg2)
	return Lobby.ProcessNavigate.CreateGameLobby(arg0, arg1, arg2)
end

Lobby.Core.AddProcessForward(LobbyData.UITargets.UI_MODESELECT, LobbyData.UITargets.UI_CPLOBBYLANGAME, __FUNC_BB5_)
local function __FUNC_C51_(arg0, arg1, arg2)
	return Lobby.ProcessNavigate.CreateGameLobby(arg0, arg1, arg2)
end

Lobby.Core.AddProcessForward(LobbyData.UITargets.UI_MODESELECT, LobbyData.UITargets.UI_CP2LOBBYONLINE, __FUNC_C51_)
local function __FUNC_CED_(arg0, arg1, arg2)
	return Lobby.ProcessNavigate.CreateGameLobby(arg0, arg1, arg2)
end

Lobby.Core.AddProcessForward(LobbyData.UITargets.UI_MODESELECT, LobbyData.UITargets.UI_CP2LOBBYLANGAME, __FUNC_CED_)
local function __FUNC_D89_(arg0, arg1, arg2)
	return Lobby.ProcessNavigate.CreateGameLobby(arg0, arg1, arg2)
end

Lobby.Core.AddProcessForward(LobbyData.UITargets.UI_MODESELECT, LobbyData.UITargets.UI_DOALOBBYONLINE, __FUNC_D89_)
local function __FUNC_E25_(arg0, arg1, arg2)
	return Lobby.ProcessNavigate.CreateGameLobby(arg0, arg1, arg2)
end

Lobby.Core.AddProcessForward(LobbyData.UITargets.UI_MODESELECT, LobbyData.UITargets.UI_DOALOBBYLANGAME, __FUNC_E25_)
local function __FUNC_EC1_(arg0, arg1, arg2)
	return Lobby.Process.Navigate(arg0, arg1, arg2, "mp")
end

Lobby.Core.AddProcessForward(LobbyData.UITargets.UI_MODESELECT, LobbyData.UITargets.UI_MPLOBBYMAIN, __FUNC_EC1_)
local function __FUNC_F5E_(arg0, arg1, arg2)
	return Lobby.ProcessNavigate.CreateGameLobby(arg0, arg1, arg2)
end

Lobby.Core.AddProcessForward(LobbyData.UITargets.UI_MODESELECT, LobbyData.UITargets.UI_MPLOBBYLANGAME, __FUNC_F5E_)
local function __FUNC_FF9_(arg0, arg1, arg2)
	return Lobby.ProcessNavigate.CreateGameLobby(arg0, arg1, arg2)
end

Lobby.Core.AddProcessForward(LobbyData.UITargets.UI_MODESELECT, LobbyData.UITargets.UI_ZMLOBBYONLINE, __FUNC_FF9_)
local function __FUNC_1095_(arg0, arg1, arg2)
	return Lobby.ProcessNavigate.CreateGameLobby(arg0, arg1, arg2)
end

Lobby.Core.AddProcessForward(LobbyData.UITargets.UI_MODESELECT, LobbyData.UITargets.UI_ZMLOBBYLANGAME, __FUNC_1095_)
local function __FUNC_1131_(arg0, arg1, arg2)
	return Lobby.ProcessNavigate.CreateGameLobby(arg0, arg1, arg2)
end

Lobby.Core.AddProcessForward(LobbyData.UITargets.UI_MODESELECT, LobbyData.UITargets.UI_FRLOBBYONLINEGAME, __FUNC_1131_)
local function __FUNC_11CD_(arg0, arg1, arg2)
	return Lobby.ProcessNavigate.CreateGameLobby(arg0, arg1, arg2)
end

Lobby.Core.AddProcessForward(LobbyData.UITargets.UI_MODESELECT, LobbyData.UITargets.UI_FRLOBBYLANGAME, __FUNC_11CD_)
local function __FUNC_1269_(arg0, arg1, arg2, arg3)
	return Lobby.ProcessNavigate.LeaveGameLobby(arg0, arg1, arg2, arg3)
end

Lobby.Core.AddProcessBack(LobbyData.UITargets.UI_FRLOBBYLANGAME, LobbyData.UITargets.UI_MODESELECT, __FUNC_1269_)
if not LuaUtils.isPC then
	local function __FUNC_1308_(arg0, arg1, arg2)
		return Lobby.ProcessNavigate.LeavePrivateLobby(arg0, arg1, arg2)
	end

	Lobby.Core.AddProcessBack(LobbyData.UITargets.UI_MODESELECT, LobbyData.UITargets.UI_MAIN, __FUNC_1308_)
else
	local function __FUNC_13A7_(arg0, arg1, arg2)
		Engine.GetLobbyNetworkMode()
		return Lobby.Process.ReloadPrivateLobby(arg0, Engine.GetLobbyNetworkMode)
	end

	Lobby.Core.AddProcessBack(LobbyData.UITargets.UI_MODESELECT, LobbyData.UITargets.UI_MODESELECT, __FUNC_13A7_)
end
