-- Decompiled with CoDLUIDecompiler by JariK

require("lua.Lobby.Common.LobbyCore")
require("lua.Lobby.Process.LobbyProcess")
Lobby.Theater = {}
function Lobby.Theater.OnSessionStart(arg0)
	if arg0.lobbyMode ~= Enum.LobbyMode.LOBBY_MODE_THEATER then
		return 
	end
	local registerVal3 = Engine.DefaultID64Value()
	Lobby.Theater.fileID = registerVal3
end

function Lobby.Theater.OnSessionEnd(arg0)
	if arg0.lobbyMode ~= Enum.LobbyMode.LOBBY_MODE_THEATER then
		return 
	end
	Lobby.MapVote.Clear()
	local registerVal2 = Engine.GetPrimaryController()
	Engine.ExecNow(registerVal2, "demo_abortfilesharedownload")
	Engine.SwitchMode(registerVal2, "")
	Engine.FreeTheaterMemoryIfAllocated()
	Engine.SetDvar("ui_demoname", "")
	local registerVal4 = Engine.DefaultID64Value()
	Lobby.Theater.fileID = registerVal4
	Lobby.Theater.downloadPercent = 0.000000
	Engine.LobbyClearDemoInformation(registerVal2)
end

function Lobby.Theater.Pump()
	local registerVal0 = Engine.GetLobbyUIScreen()
	local registerVal1 = LobbyData:UITargetFromId(registerVal0)
	if not registerVal1 then
		return 
	end
	if registerVal1.lobbyMode ~= Enum.LobbyMode.LOBBY_MODE_THEATER then
		return 
	end
	local registerVal2 = Engine.IsLobbyHostActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal2 == false then
		return 
	end
	registerVal2 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal2 == false then
		return 
	end
	registerVal2 = Engine.LobbyGetDemoInformation()
	if registerVal2 then
		local registerVal8 = Engine.GetGlobalModel()
		local registerVal7 = Engine.CreateModel(registerVal8, "lobbyRoot.theaterDataDownloaded")
		local registerVal9 = Engine.GetGlobalModel()
		registerVal8 = Engine.CreateModel(registerVal9, "lobbyRoot.theaterDownloadPercent")
		registerVal9 = Engine.GetModelValue(registerVal7)
		registerVal9 = Engine.GetModelValue(registerVal8)
		if registerVal9 == nil or registerVal9 == nil then
		end
		if registerVal2.fileID == Lobby.Theater.fileID and registerVal2.readyForPlayback == Lobby.Theater.readyForPlayback and registerVal2.downloadPercent ~= Lobby.Theater.downloadPercent or true then
			Lobby.Theater.fileID = registerVal2.fileID
			Lobby.Theater.readyForPlayback = registerVal2.readyForPlayback
			Lobby.Theater.downloadPercent = registerVal2.downloadPercent
			Engine.SetModelValue(registerVal7, Lobby.Theater.readyForPlayback)
			Engine.SetModelValue(registerVal8, Lobby.Theater.downloadPercent)
		end
	end
end

