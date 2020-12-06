-- Decompiled with CoDLUIDecompiler by JariK

require("lua.Lobby.Common.LobbyCore")
require("lua.Shared.LobbyData")
Lobby.Analytics = {}
function Lobby.Analytics.CWLTracking(arg0)
	local function __FUNC_5E3_()
		local registerVal0 = Engine.GetLobbyNetworkMode()
		if arg0.lobbyType == Enum.LobbyType.LOBBY_TYPE_GAME and registerVal0 == Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE then
			if arg0.lobbyMode == Enum.LobbyMode.LOBBY_MODE_ARENA or arg0.lobbyMode == Enum.LobbyMode.LOBBY_MODE_PUBLIC then
				return true
			end
		end
		return false
	end

	local function __FUNC_7FF_(arg0)
		local registerVal2, registerVal3, registerVal4 = ipairs(arg0)
		for index5,value6 in registerVal2, registerVal3, registerVal4 do
			{}[value6] = true
		end
		registerVal3, registerVal4, registerVal5 = pairs({})
		for index6,value7 in registerVal3, registerVal4, registerVal5 do
			{}[(# + 1.000000)] = index6
		end
		return {}
	end

	local function __FUNC_89A_(arg0)
		local registerVal1 = Engine.TableLookup(nil, "gamedata/weapons/common/attachmentTable.csv", 0.000000, arg0, 1.000000, "camo", 21.000000)
		if registerVal1 ~= "anz_team_mtx" and registerVal1 == "eu_team_mtx" or registerVal1 == "na_team_mtx" then
			return true
		end
		return false
	end

	local function __FUNC_98F_(arg0)
		local registerVal1 = Engine.TableLookup(nil, "gamedata/weapons/common/attachmentTable.csv", 0.000000, arg0, 1.000000, "camo", 4.000000)
		return registerVal1
	end

	local function __FUNC_A1F_(arg0)
		if arg0 == Enum.LobbyMode.LOBBY_MODE_ARENA then
			return "arena"
		else
			if arg0 == Enum.LobbyMode.LOBBY_MODE_PUBLIC then
				return "public"
			end
		end
		return ""
	end

	local function __FUNC_B2B_(arg1)
		local registerVal1 = Engine.StorageGetBuffer(arg1, Enum.StorageFileType.STORAGE_MP_LOADOUTS)
		if registerVal1 and arg0.lobbyMode == Enum.LobbyMode.LOBBY_MODE_PUBLIC then
			return registerVal1.cacLoadouts
		end
		if registerVal1 and arg0.lobbyMode == Enum.LobbyMode.LOBBY_MODE_ARENA then
			return registerVal1.leagueCacLoadouts
		end
		return nil
	end

	local registerVal12 = __FUNC_5E3_()
	if registerVal12 then
		for index12=0.000000, (LuaEnums.MAX_CONTROLLER_COUNT - 1.000000), 1.000000 do
			local registerVal16 = Engine.IsUserActive(index12)
			registerVal16 = __FUNC_B2B_(index12)
			if registerVal16 and registerVal16 then
				for index19=0.000000, 9.000000, 1.000000 do
					local registerVal23 = registerVal16.customclass[index19].primarycamo:get()
					local registerVal24 = registerVal16.customclass[index19].secondarycamo:get()
					local registerVal25 = __FUNC_89A_(registerVal23)
					if registerVal25 then
						{}[(#registerVal25 + 1.000000)] = registerVal23
					end
					registerVal25 = __FUNC_89A_(registerVal24)
					if registerVal25 then
						{}[(#registerVal25 + 1.000000)] = registerVal24
					end
				end
				local registerVal19 = __FUNC_7FF_({})
				if 0.000000 < #registerVal19 then
					local registerVal20, registerVal21, registerVal22 = ipairs(registerVal19)
					if "" == "" then
						registerVal25 = __FUNC_98F_(registerVal24)
					else
						local registerVal27 = __FUNC_98F_(registerVal24)
					end
					registerVal20 = __FUNC_A1F_(arg0.lobbyMode)
					Engine.RecordComScoreEvent(index12, "dw_inventory_cwl_camo_tracking", "camoequipped", (registerVal25 .. "," .. registerVal27), "mode", registerVal20)
				end
			end
		end
	end
end

function Lobby.Analytics.OnMatchEnd(arg0)
	local registerVal3 = Engine.GetModelForController(Engine.GetPrimaryController())
	local registerVal2 = Engine.CreateModel(registerVal3, "lobbyRoot.showPostMatchSurvey")
	Engine.SetModelValue(registerVal2, true)
	local registerVal1 = Engine.IsDedicatedServer()
	if not registerVal1 then
		Lobby.Analytics.CWLTracking(arg0)
	end
end

