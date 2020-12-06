-- Decompiled with CoDLUIDecompiler by JariK

require("lua.Lobby.Common.LobbyCore")
require("lua.Shared.LobbyData")
require("lua.Lobby.Matchmaking.LobbyMatchmaking")
Lobby.MatchmakingPriority = {}
local registerVal1 = {}
registerVal1.DISABLED = 0.000000
registerVal1.SINGLE_PRIORITY_LOW = 1.000000
registerVal1.MULTI_PRIORITY_LOW = 2.000000
registerVal1.SINGLE_IGNORE = 3.000000
registerVal1.MULTI_IGNORE = 4.000000
Lobby.MatchmakingPriority.SETTING = registerVal1
Lobby.MatchmakingPriority.mpPublicGame = {}
Lobby.MatchmakingPriority.doaPublicGame = {}
function Lobby.MatchmakingPriority.GetSettings()
	local registerVal3 = Engine.GetLobbyUIScreen()
	if registerVal3 == LobbyData.UITargets.UI_MPLOBBYONLINEPUBLICGAME.id or registerVal3 == LobbyData.UITargets.UI_MPLOBBYONLINE.id then
		local registerVal4 = Dvar.tu11_matchmakingPriorityMP:exists()
		if registerVal4 then
			registerVal4 = Dvar.tu11_matchmakingPriorityMP:get()
			registerVal4 = Dvar.tu11_matchmakingPriorityMPIgnoreTime:get()
		else
		else
			if registerVal3 == LobbyData.UITargets.UI_DOALOBBYONLINEPUBLICGAME.id or registerVal3 == LobbyData.UITargets.UI_DOALOBBYONLINE.id then
				registerVal4 = Dvar.tu11_matchmakingPriorityDOA:exists()
				if registerVal4 then
					registerVal4 = Dvar.tu11_atchmakingPriorityDOA:get()
					registerVal4 = Dvar.tu11_matchmakingPriorityDOAIgnoreTime:get()
				end
			end
		end
	end
	return registerVal4, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

function Lobby.MatchmakingPriority.AddHost(arg0, arg1)
	local registerVal2, registerVal3, registerVal4 = Lobby.MatchmakingPriority.GetSettings()
	if registerVal2 == Lobby.MatchmakingPriority.SETTING.DISABLED then
		return 
	end
	if arg1 ~= Enum.JoinType.JOIN_TYPE_PLAYLIST then
		return 
	end
	local registerVal6, registerVal7, registerVal8 = pairs(registerVal3)
	for index9,value10 in registerVal6, registerVal7, registerVal8 do
		if value10.secId == arg0 then
		else
		end
	end
	if registerVal2 == Lobby.MatchmakingPriority.SETTING.SINGLE_PRIORITY_LOW or registerVal2 == Lobby.MatchmakingPriority.SETTING.SINGLE_IGNORE then
		LuaUtils.TableClear(registerVal3)
		registerVal8 = {}
		registerVal8.secId = arg0
		local registerVal9 = Engine.seconds()
		registerVal8.joinTime = registerVal9
		registerVal9 = Engine.seconds()
		registerVal8.ignoreUntilTime = (registerVal9 + registerVal4)
		table.insert(registerVal3, registerVal8)
	else
		if registerVal2 == Lobby.MatchmakingPriority.SETTING.MULTI_PRIORITY_LOW or registerVal2 == Lobby.MatchmakingPriority.SETTING.MULTI_IGNORE then
			if value10 == nil then
				registerVal8 = {}
				registerVal8.secId = arg0
				registerVal9 = Engine.seconds()
				registerVal8.joinTime = registerVal9
				registerVal9 = Engine.seconds()
				registerVal8.ignoreUntilTime = (registerVal9 + registerVal4)
				table.insert(registerVal3, registerVal8)
			else
				registerVal6 = Engine.seconds()
				value10.joinTime = registerVal6
				registerVal6 = Engine.seconds()
				value10.ignoreUntilTime = (registerVal6 + registerVal4)
			end
		end
	end
end

function Lobby.MatchmakingPriority.OnMatchStart(arg0)
	local registerVal1, registerVal2, registerVal3 = Lobby.MatchmakingPriority.GetSettings()
	if registerVal1 == Lobby.MatchmakingPriority.SETTING.DISABLED then
		return 
	end
	LuaUtils.TableClear(registerVal2)
end

function Lobby.MatchmakingPriority.IgnoreSearchResult(arg0)
	local registerVal1, registerVal2, registerVal3 = Lobby.MatchmakingPriority.GetSettings()
	if registerVal1 == Lobby.MatchmakingPriority.SETTING.DISABLED then
		return false
	end
	if registerVal1 == Lobby.MatchmakingPriority.SETTING.SINGLE_PRIORITY_LOW or registerVal1 == Lobby.MatchmakingPriority.SETTING.MULTI_PRIORITY_LOW then
		return false
	end
	local registerVal4, registerVal5, registerVal6 = pairs(registerVal2)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		if value8.secId == arg0 then
			local registerVal10 = Engine.seconds()
			if registerVal10 < value8.ignoreUntilTime then
				return true
			end
			table.remove(registerVal2, index7)
		else
		end
	end
	return false
end

function Lobby.MatchmakingPriority.IsPriorityLow(arg0)
	local registerVal1, registerVal2, registerVal3 = Lobby.MatchmakingPriority.GetSettings()
	if registerVal1 == Lobby.MatchmakingPriority.SETTING.DISABLED then
		return false
	end
	if registerVal1 == Lobby.MatchmakingPriority.SETTING.SINGLE_IGNORE or registerVal1 == Lobby.MatchmakingPriority.SETTING.MULTI_IGNORE then
		return false
	end
	local registerVal4, registerVal5, registerVal6 = pairs(registerVal2)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		if value8.secId == arg0 then
			table.remove(registerVal2, index7)
			return true
		end
	end
	return false
end

