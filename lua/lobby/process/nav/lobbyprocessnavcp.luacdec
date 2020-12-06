-- Decompiled with CoDLUIDecompiler by JariK

require("lua.Lobby.Process.LobbyProcess")
local function __FUNC_BED_(arg0, arg1, arg2)
	return Lobby.ProcessNavigate.ChangeToCPLANCustomGameLobby(arg0, arg1, arg2)
end

Lobby.Core.AddProcessForward(LobbyData.UITargets.UI_CPLOBBYLANGAME, LobbyData.UITargets.UI_CPLOBBYLANCUSTOMGAME, __FUNC_BED_)
local function __FUNC_C96_(arg0, arg1, arg2)
	return Lobby.ProcessNavigate.LeaveGameLobby(arg0, arg1, arg2, LuaEnums.LEAVE_WITH_PARTY.WITH, "")
end

Lobby.Core.AddProcessBack(LobbyData.UITargets.UI_CPLOBBYLANGAME, LobbyData.UITargets.UI_MODESELECT, __FUNC_C96_)
local function __FUNC_D94_(arg0, arg1, arg2)
	return Lobby.ProcessNavigate.LeaveCPLANGameLobby(arg0, arg1, arg2, LuaEnums.LEAVE_WITH_PARTY.WITH, "")
end

Lobby.Core.AddProcessBack(LobbyData.UITargets.UI_CPLOBBYLANCUSTOMGAME, LobbyData.UITargets.UI_CPLOBBYLANGAME, __FUNC_D94_)
local function __FUNC_E99_(arg0, arg1, arg2)
	return Lobby.ProcessNavigate.ChangeToCustomGameLobby(arg0, arg1, arg2)
end

Lobby.Core.AddProcessForward(LobbyData.UITargets.UI_CPLOBBYONLINE, LobbyData.UITargets.UI_CPLOBBYONLINECUSTOMGAME, __FUNC_E99_)
local function __FUNC_F3D_(arg0, arg1, arg2)
	return Lobby.ProcessNavigate.ChangeToCPPublicGameLobby(arg0, arg1, arg2)
end

Lobby.Core.AddProcessForward(LobbyData.UITargets.UI_CPLOBBYONLINE, LobbyData.UITargets.UI_CPLOBBYONLINEPUBLICGAME, __FUNC_F3D_)
local function __FUNC_FE3_(arg0, arg1, arg2, arg3)
	return Lobby.ProcessNavigate.LeaveGameLobby(arg0, arg1, arg2, arg3)
end

Lobby.Core.AddProcessBack(LobbyData.UITargets.UI_CPLOBBYONLINE, LobbyData.UITargets.UI_MODESELECT, __FUNC_FE3_)
local function __FUNC_1080_(arg0, arg1, arg2, arg3)
	return Lobby.ProcessNavigate.ChangeToPrivateGameLobby(arg0, arg1, arg2, arg3)
end

Lobby.Core.AddProcessBack(LobbyData.UITargets.UI_CPLOBBYONLINEPUBLICGAME, LobbyData.UITargets.UI_CPLOBBYONLINE, __FUNC_1080_)
local function __FUNC_112A_(arg0, arg1, arg2, arg3)
	return Lobby.ProcessNavigate.ChangeToPrivateGameLobby(arg0, arg1, arg2, arg3)
end

Lobby.Core.AddProcessBack(LobbyData.UITargets.UI_CPLOBBYONLINECUSTOMGAME, LobbyData.UITargets.UI_CPLOBBYONLINE, __FUNC_112A_)
local function __FUNC_11D2_(arg0, arg1, arg2)
	return Lobby.ProcessNavigate.ChangeToCPLANCustomGameLobby(arg0, arg1, arg2)
end

Lobby.Core.AddProcessForward(LobbyData.UITargets.UI_CP2LOBBYLANGAME, LobbyData.UITargets.UI_CP2LOBBYLANCUSTOMGAME, __FUNC_11D2_)
local function __FUNC_127A_(arg0, arg1, arg2)
	return Lobby.ProcessNavigate.LeaveGameLobby(arg0, arg1, arg2, LuaEnums.LEAVE_WITH_PARTY.WITHOUT, "")
end

Lobby.Core.AddProcessBack(LobbyData.UITargets.UI_CP2LOBBYLANGAME, LobbyData.UITargets.UI_MODESELECT, __FUNC_127A_)
local function __FUNC_137B_(arg0, arg1, arg2, arg3)
	return Lobby.ProcessNavigate.LeaveCPLANGameLobby(arg0, arg1, arg2, arg3, "")
end

Lobby.Core.AddProcessBack(LobbyData.UITargets.UI_CP2LOBBYLANCUSTOMGAME, LobbyData.UITargets.UI_CP2LOBBYLANGAME, __FUNC_137B_)
local function __FUNC_142B_(arg0, arg1, arg2)
	return Lobby.ProcessNavigate.ChangeToCustomGameLobby(arg0, arg1, arg2)
end

Lobby.Core.AddProcessForward(LobbyData.UITargets.UI_CP2LOBBYONLINE, LobbyData.UITargets.UI_CP2LOBBYONLINECUSTOMGAME, __FUNC_142B_)
local function __FUNC_14CD_(arg0, arg1, arg2)
	return Lobby.ProcessNavigate.ChangeToCPPublicGameLobby(arg0, arg1, arg2)
end

Lobby.Core.AddProcessForward(LobbyData.UITargets.UI_CP2LOBBYONLINE, LobbyData.UITargets.UI_CP2LOBBYONLINEPUBLICGAME, __FUNC_14CD_)
local function __FUNC_1573_(arg0, arg1, arg2, arg3)
	return Lobby.ProcessNavigate.LeaveGameLobby(arg0, arg1, arg2, arg3)
end

Lobby.Core.AddProcessBack(LobbyData.UITargets.UI_CP2LOBBYONLINE, LobbyData.UITargets.UI_MODESELECT, __FUNC_1573_)
local function __FUNC_1610_(arg0, arg1, arg2, arg3)
	return Lobby.ProcessNavigate.ChangeToPrivateGameLobby(arg0, arg1, arg2, arg3)
end

Lobby.Core.AddProcessBack(LobbyData.UITargets.UI_CP2LOBBYONLINEPUBLICGAME, LobbyData.UITargets.UI_CP2LOBBYONLINE, __FUNC_1610_)
local function __FUNC_16BA_(arg0, arg1, arg2, arg3)
	return Lobby.ProcessNavigate.ChangeToPrivateGameLobby(arg0, arg1, arg2, arg3)
end

Lobby.Core.AddProcessBack(LobbyData.UITargets.UI_CP2LOBBYONLINECUSTOMGAME, LobbyData.UITargets.UI_CP2LOBBYONLINE, __FUNC_16BA_)
local function __FUNC_1762_(arg0, arg1, arg2)
	return Lobby.ProcessNavigate.ChangeToCPPublicGameLobby(arg0, arg1, arg2)
end

Lobby.Core.AddProcessForward(LobbyData.UITargets.UI_DOALOBBYONLINE, LobbyData.UITargets.UI_DOALOBBYONLINEPUBLICGAME, __FUNC_1762_)
local function __FUNC_1807_(arg0, arg1, arg2, arg3)
	return Lobby.ProcessNavigate.LeaveGameLobby(arg0, arg1, arg2, arg3)
end

Lobby.Core.AddProcessBack(LobbyData.UITargets.UI_DOALOBBYONLINE, LobbyData.UITargets.UI_MODESELECT, __FUNC_1807_)
local function __FUNC_18A4_(arg0, arg1, arg2, arg3)
	return Lobby.ProcessNavigate.ChangeToPrivateGameLobby(arg0, arg1, arg2, arg3)
end

Lobby.Core.AddProcessBack(LobbyData.UITargets.UI_DOALOBBYONLINEPUBLICGAME, LobbyData.UITargets.UI_DOALOBBYONLINE, __FUNC_18A4_)
local function __FUNC_194E_(arg0, arg1, arg2)
	return Lobby.ProcessNavigate.ChangeToCustomGameLobby(arg0, arg1, arg2)
end

Lobby.Core.AddProcessForward(LobbyData.UITargets.UI_DOALOBBYONLINE, LobbyData.UITargets.UI_CPLOBBYONLINECUSTOMGAME, __FUNC_194E_)
local function __FUNC_19F1_(arg0, arg1, arg2)
	return Lobby.ProcessNavigate.ChangeToCPPublicGameLobby(arg0, arg1, arg2)
end

Lobby.Core.AddProcessForward(LobbyData.UITargets.UI_DOALOBBYONLINE, LobbyData.UITargets.UI_CPLOBBYONLINEPUBLICGAME, __FUNC_19F1_)
local function __FUNC_1A97_(arg0, arg1, arg2)
	return Lobby.ProcessNavigate.LeaveGameLobby(arg0, arg1, arg2, LuaEnums.LEAVE_WITH_PARTY.WITHOUT, "")
end

Lobby.Core.AddProcessBack(LobbyData.UITargets.UI_DOALOBBYLANGAME, LobbyData.UITargets.UI_MODESELECT, __FUNC_1A97_)
local function __FUNC_1B97_(arg0, arg1, arg2, arg3)
	return Lobby.ProcessNavigate.LeaveCPLANGameLobby(arg0, arg1, arg2, arg3, "")
end

Lobby.Core.AddProcessBack(LobbyData.UITargets.UI_DOALOBBYLANCUSTOMGAME, LobbyData.UITargets.UI_DOALOBBYLANGAME, __FUNC_1B97_)
