-- Decompiled with CoDLUIDecompiler by JariK

require("lua.Lobby.Process.LobbyProcess")
local function __FUNC_93D_(arg0, arg1, arg2, arg3)
	return Lobby.ProcessNavigate.LeaveGameLobby(arg0, arg1, arg2, arg3)
end

Lobby.Core.AddProcessBack(LobbyData.UITargets.UI_MPLOBBYLANGAME, LobbyData.UITargets.UI_MODESELECT, __FUNC_93D_)
local function __FUNC_9DC_(arg0, arg1, arg2)
	return Lobby.Process.Navigate(arg0, arg1, arg2, "mp")
end

Lobby.Core.AddProcessForward(LobbyData.UITargets.UI_MPLOBBYMAIN, LobbyData.UITargets.UI_MPLOBBYONLINE, __FUNC_9DC_)
local function __FUNC_A7A_(arg0, arg1, arg2)
	return Lobby.Process.Navigate(arg0, arg1, arg2, "mp")
end

Lobby.Core.AddProcessForward(LobbyData.UITargets.UI_MPLOBBYMAIN, LobbyData.UITargets.UI_MPLOBBYONLINEARENA, __FUNC_A7A_)
local function __FUNC_B16_(arg0, arg1, arg2)
	return Lobby.ProcessNavigate.CreateGameLobby(arg0, arg1, arg2)
end

Lobby.Core.AddProcessForward(LobbyData.UITargets.UI_MPLOBBYMAIN, LobbyData.UITargets.UI_MPLOBBYONLINECUSTOMGAME, __FUNC_B16_)
local function __FUNC_BB1_(arg0, arg1, arg2)
	local registerVal3 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	if registerVal3 then
		return Lobby.Process.Navigate(arg0, arg1, arg2, "")
	else
		Engine.GetLobbyNetworkMode()
		return Lobby.Process.ReloadPrivateLobby(arg0, Engine.GetLobbyNetworkMode)
	end
end

Lobby.Core.AddProcessBack(LobbyData.UITargets.UI_MPLOBBYMAIN, LobbyData.UITargets.UI_MODESELECT, __FUNC_BB1_)
local function __FUNC_D5F_(arg0, arg1, arg2)
	Lobby.Debug.JBMatchmakingEvent(LuaEnums.JB_MATCHMAKING_EVENT.START)
	return Lobby.ProcessNavigate.CreatePublicGameLobby(arg0, arg1, arg2)
end

Lobby.Core.AddProcessForward(LobbyData.UITargets.UI_MPLOBBYONLINE, LobbyData.UITargets.UI_MPLOBBYONLINEPUBLICGAME, __FUNC_D5F_)
local function __FUNC_EA5_(arg0, arg1, arg2)
	local registerVal3 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	if registerVal3 then
		return Lobby.Process.Navigate(arg0, arg1, arg2, "mp")
	else
		Engine.GetLobbyNetworkMode()
		return Lobby.Process.ReloadPrivateLobby(arg0, Engine.GetLobbyNetworkMode)
	end
end

Lobby.Core.AddProcessBack(LobbyData.UITargets.UI_MPLOBBYONLINE, LobbyData.UITargets.UI_MPLOBBYMAIN, __FUNC_EA5_)
local function __FUNC_1055_(arg0, arg1, arg2)
	return Lobby.ProcessNavigate.CreatePublicGameLobby(arg0, arg1, arg2)
end

Lobby.Core.AddProcessForward(LobbyData.UITargets.UI_MPLOBBYONLINEARENA, LobbyData.UITargets.UI_MPLOBBYONLINEARENAGAME, __FUNC_1055_)
local function __FUNC_10F7_(arg0, arg1, arg2, arg3)
	local registerVal4 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	if registerVal4 then
		return Lobby.Process.Navigate(arg0, arg1, arg2, "mp")
	else
		Engine.GetLobbyNetworkMode()
		return Lobby.Process.ReloadPrivateLobby(arg0, Engine.GetLobbyNetworkMode)
	end
end

Lobby.Core.AddProcessBack(LobbyData.UITargets.UI_MPLOBBYONLINEARENA, LobbyData.UITargets.UI_MPLOBBYMAIN, __FUNC_10F7_)
local function __FUNC_12A5_(arg0, arg1, arg2, arg3)
	return Lobby.ProcessNavigate.LeaveGameLobby(arg0, arg1, arg2, arg3)
end

Lobby.Core.AddProcessBack(LobbyData.UITargets.UI_MPLOBBYONLINEARENAGAME, LobbyData.UITargets.UI_MPLOBBYONLINEARENA, __FUNC_12A5_)
local function __FUNC_1344_(arg0, arg1, arg2, arg3)
	return Lobby.ProcessNavigate.LeaveGameLobby(arg0, arg1, arg2, arg3)
end

Lobby.Core.AddProcessBack(LobbyData.UITargets.UI_MPLOBBYONLINEMODGAME, LobbyData.UITargets.UI_MPLOBBYMAIN, __FUNC_1344_)
local function __FUNC_13E4_(arg0, arg1, arg2, arg3)
	return Lobby.ProcessNavigate.LeaveGameLobby(arg0, arg1, arg2, arg3)
end

Lobby.Core.AddProcessBack(LobbyData.UITargets.UI_MPLOBBYONLINECUSTOMGAME, LobbyData.UITargets.UI_MPLOBBYMAIN, __FUNC_13E4_)
local function __FUNC_1484_(arg0, arg1, arg2, arg3)
	if Lobby.Debug.jbEvent == LuaEnums.JB_MATCHMAKING_EVENT.START then
		Lobby.Debug.JBMatchmakingEvent(LuaEnums.JB_MATCHMAKING_EVENT.ABORT)
	else
		if Lobby.Debug.jbEvent == LuaEnums.JB_MATCHMAKING_EVENT.END then
			Lobby.Debug.JBMatchmakingEvent(LuaEnums.JB_MATCHMAKING_EVENT.LEAVE)
		end
	end
	return Lobby.ProcessNavigate.LeaveGameLobby(arg0, arg1, arg2, arg3)
end

Lobby.Core.AddProcessBack(LobbyData.UITargets.UI_MPLOBBYONLINEPUBLICGAME, LobbyData.UITargets.UI_MPLOBBYONLINE, __FUNC_1484_)
local function __FUNC_16C6_(arg0, arg1, arg2)
	return Lobby.ProcessNavigate.CreateGameLobby(arg0, arg1, arg2)
end

Lobby.Core.AddProcessForward(LobbyData.UITargets.UI_MPLOBBYMAIN, LobbyData.UITargets.UI_FRLOBBYONLINEGAME, __FUNC_16C6_)
local function __FUNC_1761_(arg0, arg1, arg2, arg3)
	return Lobby.ProcessNavigate.LeaveGameLobby(arg0, arg1, arg2, arg3)
end

Lobby.Core.AddProcessBack(LobbyData.UITargets.UI_FRLOBBYONLINEGAME, LobbyData.UITargets.UI_MODESELECT, __FUNC_1761_)
local function __FUNC_1800_(arg0, arg1, arg2)
	return Lobby.ProcessNavigate.CreateGameLobby(arg0, arg1, arg2)
end

Lobby.Core.AddProcessForward(LobbyData.UITargets.UI_MPLOBBYMAIN, LobbyData.UITargets.UI_MPLOBBYONLINETHEATER, __FUNC_1800_)
local function __FUNC_189D_(arg0, arg1, arg2, arg3)
	return Lobby.ProcessNavigate.LeaveGameLobby(arg0, arg1, arg2, arg3)
end

Lobby.Core.AddProcessBack(LobbyData.UITargets.UI_MPLOBBYONLINETHEATER, LobbyData.UITargets.UI_MPLOBBYMAIN, __FUNC_189D_)
