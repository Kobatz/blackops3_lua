-- Decompiled with CoDLUIDecompiler by JariK

Lobby.Hopper = {}
Lobby.Hopper.lobbyHopper = nil
local registerVal1 = {}
registerVal1.PARKED = 0.000000
registerVal1.UNPARKED = 1.000000
Lobby.Hopper.HOPPER_STATE = registerVal1
Lobby.Hopper.hopperState = Lobby.Hopper.HOPPER_STATE.UNPARKED
function Lobby.Hopper.UpdateLobbyData(arg0)
	local registerVal2 = Engine.GetPlaylistInfoByID(arg0)
	if arg0 and registerVal2 and 0.000000 <= registerVal2.playlist.arenaSlot then
	end
	Engine.PrintWarning(Enum.consoleLabel.LABEL_LOBBYHOST, ("Updating Lobby Data for Target: " .. LobbyData.UITargets.UI_MPLOBBYONLINEARENAGAME.name .. "
"))
	local registerVal3 = {}
	registerVal3.toTarget = LobbyData.UITargets.UI_MPLOBBYONLINEARENAGAME
	registerVal3.skipSwitchMode = true
	registerVal3.isDevMap = false
	LobbyVM.LobbySettings(registerVal3)
	registerVal3 = {}
	registerVal3.toTarget = LobbyData.UITargets.UI_MPLOBBYONLINEARENAGAME
	LobbyVM.UpdateUI(registerVal3)
	if arg0 then
		local registerVal4 = {}
		registerVal4.controller = 0.000000
		registerVal4.lobbyType = LobbyData.UITargets.UI_MPLOBBYONLINEARENAGAME.lobbyType
		registerVal4.mainMode = LobbyData.UITargets.UI_MPLOBBYONLINEARENAGAME.mainMode
		registerVal4.lobbyTimerType = LobbyData.UITargets.UI_MPLOBBYONLINEARENAGAME.lobbyTimerType
		Lobby.Timer.HostingLobby(registerVal4)
	else
		registerVal4 = {}
		registerVal4.lobbyType = LobbyData.UITargets.UI_MPLOBBYONLINEARENAGAME.lobbyType
		Lobby.Timer.HostingLobbyEnd(registerVal4)
		Lobby.Pregame.Clear()
	end
end

function Lobby.Hopper.ClientJoin(arg0)
	local registerVal1 = Engine.IsDedicatedServer()
	if registerVal1 == false then
		return true
	end
	registerVal1 = LuaUtils.Mods_IsUsingMods()
	if registerVal1 then
		return true
	end
	if arg0.clientPlaylist == 255.000000 then
		return true
	end
	local registerVal2 = Engine.GetParkingPlaylistForRealPlaylist(arg0.clientPlaylist)
	local registerVal3 = Engine.GetPlaylistID()
	if Lobby.Hopper.HOPPER_STATE.PARKED == Lobby.Hopper.hopperState then
		if registerVal3 ~= registerVal2 then
			Engine.PrintWarning(Enum.consoleLabel.LABEL_LOBBYHOST, ("Rejecting client because they want playlist " .. registerVal2 .. " but we're on parkingplaylist " .. registerVal3 .. " for playlist " .. registerVal3 .. "
"))
		else
			Lobby.Hopper.UpdateLobbyData(arg0.clientPlaylist)
			LobbyVM.HostLaunchClear()
			Engine.SetFakeDLCBits(arg0.dlcBits)
			Engine.PrintWarning(Enum.consoleLabel.LABEL_LOBBYHOST, ("Unparking onto playlist " .. arg0.clientPlaylist .. "
"))
			Engine.SwitchPlaylists(arg0.clientPlaylist)
			Lobby.Matchmaking.UpdateLatencyBand()
			Engine.SetPlaylistID(arg0.clientPlaylist)
			Dvar.lobbyAdvertisePlaylistNumber:set(arg0.clientPlaylist)
			local registerVal5 = Lobby.Matchmaking.GetMapPackBits(arg0.dlcBits, arg0.clientPlaylist)
			Dvar.lobbyAdvertiseMapPacks:set(registerVal5)
			local registerVal6 = Dvar.party_maxplayers:get()
			Engine.SetLobbyMaxClients(Enum.LobbyType.LOBBY_TYPE_GAME, registerVal6)
			Lobby.Matchmaking.SetSkillWeight(0.010000)
			Lobby.Matchmaking.UpdateAdvertising(" hopper unpark ")
			Lobby.Hopper.hopperState = Lobby.Hopper.HOPPER_STATE.UNPARKED
		else
			if Lobby.Hopper.HOPPER_STATE.UNPARKED == Lobby.Hopper.hopperState and arg0.clientPlaylist ~= 255.000000 and arg0.clientPlaylist ~= registerVal3 then
				Engine.PrintWarning(Enum.consoleLabel.LABEL_LOBBYHOST, ("Rejecting client because they want playlist " .. arg0.clientPlaylist .. " but we're unparked on playlist " .. registerVal3 .. "
"))
			end
		end
	end
	return false
end

function Lobby.Hopper.OnSessionEnd(arg0)
	if arg0.lobbyType == Enum.LobbyType.LOBBY_TYPE_GAME then
		Dvar.live_dedicatedReady:set(false)
	end
end

function Lobby.Hopper.Pump()
	local registerVal0 = Engine.IsDedicatedServer()
	if registerVal0 == false then
		return 
	end
	registerVal0 = Engine.IsDedicatedServerMods()
	if registerVal0 then
		return 
	end
	registerVal0 = Dvar.live_dedicatedReady:get()
	if registerVal0 == false then
		return 
	end
	if Lobby.Hopper.HOPPER_STATE.UNPARKED == Lobby.Hopper.hopperState then
		registerVal0 = Engine.GetLobbyClientCount(Enum.LobbyType.LOBBY_TYPE_GAME)
		local registerVal1 = Engine.ProcessingJoin(Enum.LobbyType.LOBBY_TYPE_GAME)
		registerVal1 = Dvar.sv_running:get()
		registerVal1 = Dvar.hopper_playlist:get()
		local registerVal2 = Engine.GetPlaylistID()
		local registerVal3 = Engine.GetParkingPlaylistForRealPlaylist(registerVal2)
		Engine.PrintWarning(Enum.consoleLabel.LABEL_LOBBYHOST, ("No clients left and we're currently on playlist " .. registerVal2 .. " - parking on playlist " .. registerVal3 .. "
"))
		Lobby.Hopper.hopperState = Lobby.Hopper.HOPPER_STATE.PARKED
		Lobby.Hopper.UpdateLobbyData()
		Dvar.lobbyAdvertiseLatencyBand:set(0.000000)
		Engine.SwitchPlaylists(registerVal3)
		Engine.SetPlaylistID(registerVal3)
		Dvar.lobbyAdvertisePlaylistNumber:set(registerVal3)
		Dvar.lobbyAdvertiseMapPacks:set(Lobby.Matchmaking.ContentPack.CONTENT_ORIGINALMAPS)
		Dvar.lobbyAdvertiseShowInMatchmaking:set(1.000000)
		Lobby.Matchmaking.UpdateAdvertising(" hopper park ")
		if 0.000000 == registerVal0 and not registerVal1 and registerVal1 == false and 0.000000 == registerVal1 and 0.000000 == registerVal3 or Lobby.Hopper.HOPPER_STATE.PARKED == Lobby.Hopper.hopperState then
		end

function Lobby.Hopper.IsParked()
	if Lobby.Hopper.HOPPER_STATE.PARKED ~= Lobby.Hopper.hopperState then
	end
	return true
end

