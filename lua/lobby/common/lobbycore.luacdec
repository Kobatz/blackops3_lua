-- Decompiled with CoDLUIDecompiler by JariK

require("lua.Shared.LobbyData")
require("lua.Shared.CoDShared")
require("lua.Shared.LuaUtils")
Lobby = {}
Lobby.ProcessTree = nil
Lobby.Navigation = {}
Lobby.Core = {}
Lobby.HANDLER_TYPE_FWD = 1.000000
Lobby.HANDLER_TYPE_BACK = 2.000000
function Lobby.Core.AddHandler(arg0, arg1, arg2, arg3)
	if Lobby.Navigation[arg0.name] == nil then
		Lobby.Navigation[arg0.name] = {}
	end
	if Lobby.Navigation[arg0.name][arg2] == nil then
		Lobby.Navigation[arg0.name][arg2] = {}
	end
	Lobby.Navigation[arg0.name][arg2][arg1.name] = arg3
end

function Lobby.Core.AddProcessForward(arg0, arg1, arg2)
	if Lobby.Navigation[arg0.name] ~= nil and Lobby.Navigation[arg0.name][Lobby.HANDLER_TYPE_FWD] ~= nil and Lobby.Navigation[arg0.name][Lobby.HANDLER_TYPE_FWD][arg1.name] ~= nil then
		error(("LobbyVM: A forward handler already exists from '" .. arg0.name .. " to " .. arg1.name))
	end
	Lobby.Core.AddHandler(arg0, arg1, Lobby.HANDLER_TYPE_FWD, arg2)
end

function Lobby.Core.AddProcessBack(arg0, arg1, arg2)
	if Lobby.Navigation[arg0.name] ~= nil and Lobby.Navigation[arg0.name] ~= nil and Lobby.Navigation[arg0.name][Lobby.HANDLER_TYPE_BACK] ~= nil then
		error(("LobbyVM: A back handler already exists for '" .. arg0.name))
	end
	Lobby.Core.AddHandler(arg0, arg1, Lobby.HANDLER_TYPE_BACK, arg2)
end

function Lobby.Core.GetForwardProcessFunc(arg0, arg1)
	if Lobby.Navigation[arg0.name] ~= nil and Lobby.Navigation[arg0.name][Lobby.HANDLER_TYPE_FWD] ~= nil and Lobby.Navigation[arg0.name][Lobby.HANDLER_TYPE_FWD][arg1.name] ~= nil then
		return Lobby.Navigation[arg0.name][Lobby.HANDLER_TYPE_FWD][arg1.name]
	end
	return nil
end

function Lobby.Core.GetBackProcessFunc(arg0)
	local registerVal2, registerVal3, registerVal4 = pairs(Lobby.Navigation[arg0.name][Lobby.HANDLER_TYPE_BACK])
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		local registerVal7 = LobbyData:UITargetFromName(index5)
		return registerVal7, CoDLUIDecompiler.LuaRegister
	end
	return nil, CoDLUIDecompiler.LuaRegister
end

function Lobby.Core.GetMainModeStr(arg0)
	if arg0 == Enum.LobbyMainMode.LOBBY_MAINMODE_MP then
		return "mp"
	else
		if arg0 == Enum.LobbyMainMode.LOBBY_MAINMODE_CP then
			return "cp"
		else
			if arg0 == Enum.LobbyMainMode.LOBBY_MAINMODE_ZM then
				return "zm"
			end
		end
	end
	return ""
end

