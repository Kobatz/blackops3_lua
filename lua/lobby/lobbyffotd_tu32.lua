-- Decompiled with CoDLUIDecompiler by JariK

require("lua.Lobby.LobbyEvents")
function Lobby.Events.ParseEventsSecure()
	Lobby.Events.ParseEvents()
end

Lobby.Events.ParseEventsSecure()
local registerVal0 = LuaUtils.GetSkuName()
if not LuaUtils.isPC and registerVal0 ~= nil then
	if registerVal0 ~= "ScejFjJa" and registerVal0 ~= "XboxFjJa" then
		Dvar.tu4_enableCodPoints:set(1.000000)
	else
		Dvar.tu9_hideMasterCallingCards:set(1.000000)
	end
end
if LuaUtils.isPC then
	local registerVal1 = Engine.GetLanguage()
	if registerVal1 ~= "japanese" and registerVal1 ~= "fulljapanese" then
		Dvar.tu4_enableCodPoints:set(1.000000)
	else
		Dvar.tu9_hideMasterCallingCards:set(1.000000)
	end
end
