-- Decompiled with CoDLUIDecompiler by JariK

require("lua.Lobby.Common.LobbyCore")
require("lua.Shared.LobbyData")
Lobby.UGC = {}
Lobby.UGC.OFFENSIVE_EMBLEMS_LIST_SIZE = 200.000000
Lobby.UGC.offensiveEmblems = {}
function Lobby.UGC.OffensiveEmblemAdd(arg0)
	local registerVal4, registerVal5, registerVal6 = pairs(Lobby.UGC.offensiveEmblems)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		if value8.xuid == arg0.xuid then
		else
		end
	end
	if true == false then
		if Lobby.UGC.OFFENSIVE_EMBLEMS_LIST_SIZE < #Lobby.UGC.offensiveEmblems then
			table.remove(Lobby.UGC.offensiveEmblems, 1.000000)
		end
		registerVal6 = {}
		registerVal6.xuid = arg0.xuid
		table.insert(Lobby.UGC.offensiveEmblems, registerVal6)
	end
	Engine.PCacheInvalidatePlayerEmblem(arg0.controller, arg0.xuid)
end

function Lobby.UGC.EmblemsGenerateForceDefault(arg0)
	local registerVal3, registerVal4, registerVal5 = pairs(Lobby.UGC.offensiveEmblems)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		if value7.xuid == arg0.xuid then
			return true
		end
	end
	return false
end

