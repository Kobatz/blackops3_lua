-- Decompiled with CoDLUIDecompiler by JariK

require("lua.Lobby.Process.LobbyProcess")
local function __FUNC_568_(arg0, arg1, arg2)
	return Lobby.ProcessNavigate.LeaveGameLobby(arg0, arg1, arg2, LuaEnums.LEAVE_WITH_PARTY.WITHOUT, "")
end

Lobby.Core.AddProcessBack(LobbyData.UITargets.UI_ZMLOBBYLANGAME, LobbyData.UITargets.UI_MODESELECT, __FUNC_568_)
local function __FUNC_66B_(arg0, arg1, arg2)
	return Lobby.ProcessNavigate.ChangeToCustomGameLobby(arg0, arg1, arg2)
end

Lobby.Core.AddProcessForward(LobbyData.UITargets.UI_ZMLOBBYONLINE, LobbyData.UITargets.UI_ZMLOBBYONLINECUSTOMGAME, __FUNC_66B_)
local function __FUNC_70D_(arg0, arg1, arg2)
	return Lobby.ProcessNavigate.ChangeToPublicGameLobby(arg0, arg1, arg2)
end

Lobby.Core.AddProcessForward(LobbyData.UITargets.UI_ZMLOBBYONLINE, LobbyData.UITargets.UI_ZMLOBBYONLINEPUBLICGAME, __FUNC_70D_)
local function __FUNC_7B1_(arg0, arg1, arg2, arg3)
	return Lobby.ProcessNavigate.LeaveGameLobby(arg0, arg1, arg2, arg3, "")
end

Lobby.Core.AddProcessBack(LobbyData.UITargets.UI_ZMLOBBYONLINE, LobbyData.UITargets.UI_MODESELECT, __FUNC_7B1_)
local function __FUNC_85E_(arg0, arg1, arg2, arg3)
	return Lobby.ProcessNavigate.ChangeToPrivateGameLobby(arg0, arg1, arg2, arg3)
end

Lobby.Core.AddProcessBack(LobbyData.UITargets.UI_ZMLOBBYONLINEPUBLICGAME, LobbyData.UITargets.UI_ZMLOBBYONLINE, __FUNC_85E_)
local function __FUNC_906_(arg0, arg1, arg2, arg3)
	return Lobby.ProcessNavigate.ChangeToPrivateGameLobby(arg0, arg1, arg2, arg3)
end

Lobby.Core.AddProcessBack(LobbyData.UITargets.UI_ZMLOBBYONLINECUSTOMGAME, LobbyData.UITargets.UI_ZMLOBBYONLINE, __FUNC_906_)
local function __FUNC_9AE_(arg0, arg1, arg2)
	Lobby.Theater.OnSessionStart(arg2)
	return Lobby.ProcessNavigate.ChangeToCustomGameLobby(arg0, arg1, arg2)
end

Lobby.Core.AddProcessForward(LobbyData.UITargets.UI_ZMLOBBYONLINE, LobbyData.UITargets.UI_ZMLOBBYONLINETHEATER, __FUNC_9AE_)
local function __FUNC_A9E_(arg0, arg1, arg2, arg3)
	Lobby.Theater.OnSessionEnd(arg1)
	Lobby.ProcessNavigate.SetupLobbyMapAndGameType(arg0, arg2)
	return Lobby.ProcessNavigate.ChangeToPrivateGameLobby(arg0, arg1, arg2, arg3)
end

Lobby.Core.AddProcessBack(LobbyData.UITargets.UI_ZMLOBBYONLINETHEATER, LobbyData.UITargets.UI_ZMLOBBYONLINE, __FUNC_A9E_)
