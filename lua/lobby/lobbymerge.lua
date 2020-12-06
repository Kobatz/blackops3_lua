-- Decompiled with CoDLUIDecompiler by JariK

require("lua.Lobby.Common.LobbyCore")
require("lua.Lobby.Process.LobbyProcessNavigate")
require("lua.Lobby.Process.LobbyProcess")
require("lua.Lobby.Process.LobbyProcessQueue")
require("lua.Shared.LobbyData")
Lobby.Merge = {}
Lobby.Merge.mergeData = nil
function Lobby.Merge.Complete()
	if Lobby.Merge.mergeData == nil then
		return 
	end
	Lobby.Merge.mergeData = nil
end

function Lobby.Merge.IsMergingAllowed(arg0)
	local registerVal1 = Engine.IsInGame()
	if registerVal1 then
		return 
	end
	registerVal1 = Lobby.ProcessQueue.IsQueueEmpty()
	if registerVal1 == false then
		return false
	end
	registerVal1 = Engine.LobbyJoinCount()
	if 0.000000 < registerVal1 then
		return false
	end
	registerVal1 = Engine.GetLobbyClientCount(arg0)
	local registerVal2 = Dvar.party_minplayers:get()
	if registerVal2 <= registerVal1 then
		return false
	end
	registerVal1 = Engine.GetSessionStatus(arg0)
	if Engine.GetSessionStatus and registerVal1 ~= Enum.SessionStatus.SESSION_STATUS_IDLE then
		return false
	end
	registerVal1 = Lobby.Timer.GetTimerStatus()
	if registerVal1 ~= Lobby.Timer.LOBBY_STATUS.STARTING and registerVal1 ~= Lobby.Timer.LOBBY_STATUS.IDLE and registerVal1 ~= Lobby.Timer.LOBBY_STATUS.NOT_RUNNING and registerVal1 ~= Lobby.Timer.LOBBY_STATUS.POST_GAME and registerVal1 == Lobby.Timer.LOBBY_STATUS.FIND_NEW_LOBBY or registerVal1 == Lobby.Timer.MATCH_START_INVALID then
		return false
	end
	return true
end

function Lobby.Merge.Update()
	if Lobby.Merge.mergeData == nil then
		return 
	end
	if Lobby.Merge.mergeData.merging == false then
		local registerVal1 = Engine.milliseconds()
		if registerVal1 < Lobby.Merge.mergeData.timer then
			return 
		end
		local registerVal0 = Engine.GetLobbyHostControllerIndex(Enum.LobbyType.LOBBY_TYPE_GAME)
		if registerVal0 == -1.000000 then
		end
		registerVal1 = Engine.IsDedicatedServer()
		if registerVal1 == true then
			registerVal1 = Lobby.Process.MergePublicDedicatedLobby(0.000000)
			Lobby.ProcessQueue.AddToQueue("Merge", registerVal1)
		else
			registerVal1 = Lobby.Process.MergePublicGameLobby(0.000000)
			Lobby.ProcessQueue.AddToQueue("Merge", registerVal1)
		end
		Lobby.Merge.mergeData.merging = true
	end
end

function Lobby.Merge.Pump()
	local registerVal0 = Dvar.lobbyMergeEnabled:get()
	if registerVal0 == false then
		return 
	end
	registerVal0 = Engine.IsDedicatedServer()
	registerVal0 = Dvar.lobbyMergeDedicatedEnabled:get()
	if registerVal0 and registerVal0 == false then
		return 
	end
	registerVal0 = Engine.IsLobbyHostActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal0 == false then
		Lobby.Merge.mergeData = nil
		return 
	end
	local registerVal1 = Lobby.Timer.GetTimerType()
	if registerVal1 ~= LuaEnums.TIMER_TYPE.AUTO_MP then
		Lobby.Merge.mergeData = nil
		return 
	end
	local registerVal2 = Engine.GetLobbyUIScreen()
	if registerVal2 ~= LobbyData.UITargets.UI_MPLOBBYONLINEPUBLICGAME.id and registerVal2 ~= LobbyData.UITargets.UI_MPLOBBYONLINEARENAGAME.id then
		Lobby.Merge.mergeData = nil
		return 
	end
	local registerVal3 = Lobby.Merge.IsMergingAllowed(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal3 then
		if Lobby.Merge.mergeData == nil then
			Lobby.Merge.mergeData = {}
			local registerVal4 = Engine.milliseconds()
			local registerVal5 = Dvar.lobbyMergeInterval:get()
			Lobby.Merge.mergeData.timer = (registerVal4 + registerVal5)
			Lobby.Merge.mergeData.merging = false
		end
		Lobby.Merge.Update()
	else
		Lobby.Merge.mergeData = nil
	end
end

