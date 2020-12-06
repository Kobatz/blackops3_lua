-- Decompiled with CoDLUIDecompiler by JariK

require("lua.Lobby.Common.LobbyCore")
require("lua.Shared.LobbyData")
Lobby.Anticheat = {}
Lobby.Anticheat.MessageGroups = {}
local registerVal2 = {}
local registerVal3 = {}
local registerVal4 = {}
registerVal4.messageId = 0.000000
registerVal4.reference = "EXE_EXT_MSG_PIRATED_CONTENT"
local registerVal5 = Dvar.live_anticheatPiracyPolicy:get()
registerVal4.url = registerVal5
registerVal5 = {}
registerVal5.messageId = 1.000000
registerVal5.reference = "EXE_EXT_MSG_DEVICE_EXTREME"
local registerVal6 = Dvar.live_anticheatPeripheralsPolicy:get()
registerVal5.url = registerVal6
registerVal6 = {}
registerVal6.messageId = 2.000000
registerVal6.reference = "EXE_EXT_MSG_DEVICE_MINOR"
local registerVal7 = Dvar.live_anticheatPeripheralsPolicy:get()
registerVal6.url = registerVal7
registerVal3 = {registerVal4, registerVal5, registerVal6}
registerVal4 = {}
registerVal5 = {}
registerVal5.messageId = 3.000000
registerVal5.reference = "EXE_EXT_MSG_STAT_RESET_ZM"
registerVal6 = Dvar.live_anticheatThirdPartyPolicy:get()
registerVal5.url = registerVal6
registerVal6 = {}
registerVal6.messageId = 4.000000
registerVal6.reference = "EXE_EXT_MSG_STAT_REVERT_ZM"
registerVal7 = Dvar.live_anticheatThirdPartyPolicy:get()
registerVal6.url = registerVal7
registerVal7 = {}
registerVal7.messageId = 5.000000
registerVal7.reference = "EXE_EXT_MSG_STAT_RESET_REQUEST_RESET_ZM"
registerVal7.url = ""
local registerVal8 = {}
registerVal8.messageId = 6.000000
registerVal8.reference = "EXE_EXT_MSG_STAT_RESET_REQUEST_REVERT_ZM"
local registerVal9 = Dvar.ui_customerServiceURL:get()
registerVal8.url = registerVal9
registerVal9 = {}
registerVal9.messageId = 7.000000
registerVal9.reference = "EXE_EXT_MSG_STAT_RESET_REQUEST_UNCOM_ZM"
local registerVal10 = Dvar.ui_customerServiceURL:get()
registerVal9.url = registerVal10
registerVal10 = {}
registerVal10.messageId = 8.000000
registerVal10.reference = "EXE_EXT_MSG_STAT_RESET_REQUEST_DENIED_ZM"
local registerVal11 = Dvar.ui_customerServiceURL:get()
registerVal10.url = registerVal11
registerVal4 = {registerVal5, registerVal6, registerVal7, registerVal8, registerVal9, registerVal10}
registerVal5 = {}
registerVal6 = {}
registerVal6.messageId = 9.000000
registerVal6.reference = "EXE_EXT_MSG_BOOSTING_HEAVY_ZM"
registerVal7 = Dvar.live_anticheatBoostingPolicy:get()
registerVal6.url = registerVal7
registerVal7 = {}
registerVal7.messageId = 10.000000
registerVal7.reference = "EXE_EXT_MSG_BOOSTING_WARNING_ZM"
registerVal8 = Dvar.live_anticheatBoostingPolicy:get()
registerVal7.url = registerVal8
registerVal5 = {registerVal6, registerVal7}
registerVal6 = {}
registerVal7 = {}
registerVal7.messageId = 11.000000
registerVal7.reference = "EXE_EXT_MSG_GLITCHING_EXTREME_OFFENSE_ZM"
registerVal8 = Dvar.live_anticheatGlitchingPolicy:get()
registerVal7.url = registerVal8
registerVal8 = {}
registerVal8.messageId = 12.000000
registerVal8.reference = "EXE_EXT_MSG_GLITCHING_FIRST_OFFENSE_ZM"
registerVal9 = Dvar.live_anticheatGlitchingPolicy:get()
registerVal8.url = registerVal9
registerVal6 = {registerVal7, registerVal8}
registerVal2 = {registerVal3, registerVal4, registerVal5, registerVal6}
Lobby.Anticheat.MessageGroups[LuaEnums.ANTICHEAT_MESSAGE_GROUPS.ZM] = registerVal2
registerVal2 = {}
registerVal3 = {}
registerVal4 = {}
registerVal4.messageId = 0.000000
registerVal4.reference = "EXE_EXT_MSG_PIRATED_CONTENT"
registerVal5 = Dvar.live_anticheatPiracyPolicy:get()
registerVal4.url = registerVal5
registerVal5 = {}
registerVal5.messageId = 1.000000
registerVal5.reference = "EXE_EXT_MSG_DEVICE_EXTREME"
registerVal6 = Dvar.live_anticheatPeripheralsPolicy:get()
registerVal5.url = registerVal6
registerVal6 = {}
registerVal6.messageId = 2.000000
registerVal6.reference = "EXE_EXT_MSG_DEVICE_MINOR"
registerVal7 = Dvar.live_anticheatPeripheralsPolicy:get()
registerVal6.url = registerVal7
registerVal3 = {registerVal4, registerVal5, registerVal6}
registerVal4 = {}
registerVal5 = {}
registerVal5.messageId = 13.000000
registerVal5.reference = "EXE_EXT_MSG_STAT_RESET_MP"
registerVal6 = Dvar.live_anticheatThirdPartyPolicy:get()
registerVal5.url = registerVal6
registerVal6 = {}
registerVal6.messageId = 14.000000
registerVal6.reference = "EXE_EXT_MSG_STAT_REVERT_MP"
registerVal7 = Dvar.live_anticheatThirdPartyPolicy:get()
registerVal6.url = registerVal7
registerVal7 = {}
registerVal7.messageId = 15.000000
registerVal7.reference = "EXE_EXT_MSG_STAT_RESET_REQUEST_RESET_MP"
registerVal7.url = ""
registerVal8 = {}
registerVal8.messageId = 16.000000
registerVal8.reference = "EXE_EXT_MSG_STAT_RESET_REQUEST_REVERT_MP"
registerVal9 = Dvar.ui_customerServiceURL:get()
registerVal8.url = registerVal9
registerVal9 = {}
registerVal9.messageId = 17.000000
registerVal9.reference = "EXE_EXT_MSG_STAT_RESET_REQUEST_UNCOM_MP"
registerVal10 = Dvar.ui_customerServiceURL:get()
registerVal9.url = registerVal10
registerVal10 = {}
registerVal10.messageId = 18.000000
registerVal10.reference = "EXE_EXT_MSG_STAT_RESET_REQUEST_DENIED_MP"
registerVal11 = Dvar.ui_customerServiceURL:get()
registerVal10.url = registerVal11
registerVal4 = {registerVal5, registerVal6, registerVal7, registerVal8, registerVal9, registerVal10}
registerVal5 = {}
registerVal6 = {}
registerVal6.messageId = 19.000000
registerVal6.reference = "EXE_EXT_MSG_BOOSTING_HEAVY_MP"
registerVal7 = Dvar.live_anticheatBoostingPolicy:get()
registerVal6.url = registerVal7
registerVal7 = {}
registerVal7.messageId = 20.000000
registerVal7.reference = "EXE_EXT_MSG_BOOSTING_WARNING_MP"
registerVal8 = Dvar.live_anticheatBoostingPolicy:get()
registerVal7.url = registerVal8
registerVal5 = {registerVal6, registerVal7}
registerVal6 = {}
registerVal7 = {}
registerVal7.messageId = 21.000000
registerVal7.reference = "EXE_EXT_MSG_GLITCHING_EXTREME_OFFENSE_MP"
registerVal8 = Dvar.live_anticheatGlitchingPolicy:get()
registerVal7.url = registerVal8
registerVal8 = {}
registerVal8.messageId = 22.000000
registerVal8.reference = "EXE_EXT_MSG_GLITCHING_FIRST_OFFENSE_MP"
registerVal9 = Dvar.live_anticheatGlitchingPolicy:get()
registerVal8.url = registerVal9
registerVal6 = {registerVal7, registerVal8}
registerVal7 = {}
registerVal8 = {}
registerVal8.messageId = 23.000000
registerVal8.reference = "EXE_EXT_MSG_OFFENSIVE_EXTREME"
registerVal9 = Dvar.live_anticheatOffensiveBehaviorPolicy:get()
registerVal8.url = registerVal9
registerVal9 = {}
registerVal9.messageId = 24.000000
registerVal9.reference = "EXE_EXT_MSG_OFFENSIVE_SECOND"
registerVal10 = Dvar.live_anticheatOffensiveBehaviorPolicy:get()
registerVal9.url = registerVal10
registerVal10 = {}
registerVal10.messageId = 25.000000
registerVal10.reference = "EXE_EXT_MSG_OFFENSIVE_WARNING"
registerVal11 = Dvar.live_anticheatOffensiveBehaviorPolicy:get()
registerVal10.url = registerVal11
registerVal7 = {registerVal8, registerVal9, registerVal10}
registerVal2 = {registerVal3, registerVal4, registerVal5, registerVal6, registerVal7}
Lobby.Anticheat.MessageGroups[LuaEnums.ANTICHEAT_MESSAGE_GROUPS.MP] = registerVal2
registerVal2 = {}
registerVal3 = {}
registerVal4 = {}
registerVal4.messageId = 26.000000
registerVal4.reference = "EXE_EXT_MSG_UGC_VERY_OFFENSIVE"
registerVal5 = Dvar.live_anticheatOffensiveUGCPolicy:get()
registerVal4.url = registerVal5
registerVal5 = {}
registerVal5.messageId = 27.000000
registerVal5.reference = "EXE_EXT_MSG_UGC_WARNING"
registerVal6 = Dvar.live_anticheatOffensiveUGCPolicy:get()
registerVal5.url = registerVal6
registerVal3 = {registerVal4, registerVal5}
registerVal2 = {registerVal3}
Lobby.Anticheat.MessageGroups[LuaEnums.ANTICHEAT_MESSAGE_GROUPS.UGC] = registerVal2
registerVal2 = {}
registerVal3 = {}
registerVal4 = {}
registerVal4.messageId = 28.000000
registerVal4.reference = "EXE_EXT_MSG_LOOT_EXTREME"
registerVal5 = Dvar.live_anticheatUnlockableContentPolicy:get()
registerVal4.url = registerVal5
registerVal5 = {}
registerVal5.messageId = 29.000000
registerVal5.reference = "EXE_EXT_MSG_LOOT_OFFENSE"
registerVal6 = Dvar.live_anticheatUnlockableContentPolicy:get()
registerVal5.url = registerVal6
registerVal6 = {}
registerVal6.messageId = 30.000000
registerVal6.reference = "EXE_EXT_MSG_LOOT_INCIDENT_APPROVED"
registerVal6.url = ""
registerVal7 = {}
registerVal7.messageId = 31.000000
registerVal7.reference = "EXE_EXT_MSG_LOOT_INCIDENT_DENIED"
registerVal8 = Dvar.live_anticheatLootRecoveryPolicy:get()
registerVal7.url = registerVal8
registerVal8 = {}
registerVal8.messageId = 32.000000
registerVal8.reference = "EXE_EXT_MSG_LOOT_ITEMS_REMOVED"
registerVal9 = Dvar.live_anticheatUnlockableContentPolicy:get()
registerVal8.url = registerVal9
registerVal3 = {registerVal4, registerVal5, registerVal6, registerVal7, registerVal8}
registerVal2 = {registerVal3}
Lobby.Anticheat.MessageGroups[LuaEnums.ANTICHEAT_MESSAGE_GROUPS.LOOT] = registerVal2
registerVal2 = {}
registerVal3 = {}
registerVal4 = {}
registerVal4.messageId = 33.000000
registerVal4.reference = "EXE_EXT_MSG_ARENA_EXTREME_OFFENSE_MP"
registerVal5 = Dvar.ui_customerServiceURL:get()
registerVal4.url = registerVal5
registerVal5 = {}
registerVal5.messageId = 34.000000
registerVal5.reference = "EXE_EXT_MSG_ARENA_WARNING_OFFENSE_MP"
registerVal6 = Dvar.ui_customerServiceURL:get()
registerVal5.url = registerVal6
registerVal3 = {registerVal4, registerVal5}
registerVal2 = {registerVal3}
Lobby.Anticheat.MessageGroups[LuaEnums.ANTICHEAT_MESSAGE_GROUPS.ARENA] = registerVal2
local registerVal1 = Engine.NumberToUInt64(630720000.000000)
Lobby.Anticheat.PERMANENT_BAN = registerVal1
Lobby.Anticheat.UINT_MAX = LuaUtils.UINT_MAX
function Lobby.Anticheat.SetupDataModelForController(arg0)
	local registerVal1 = Engine.IsDedicatedServer()
	if registerVal1 then
		return 
	end
	local registerVal2 = Engine.GetModelForController(arg0)
	registerVal1 = Engine.GetModel(registerVal2, "lobbyRoot.anticheat")
	registerVal2 = Engine.GetModelValue(Engine.GetModel(registerVal1, "ready"))
	if registerVal1 ~= nil and registerVal2 then
		return 
	end
	local registerVal3 = Engine.GetModelForController(arg0)
	registerVal2 = Engine.CreateModel(registerVal3, "lobbyRoot.anticheat", true)
	registerVal3 = Engine.CreateModel(registerVal2, "message", true)
	local registerVal5 = Engine.CreateModel(registerVal3, "string", true)
	Engine.SetModelValue(registerVal5, "")
	registerVal5 = Engine.CreateModel(registerVal3, "url", true)
	Engine.SetModelValue(registerVal5, "")
	registerVal5 = Engine.CreateModel(registerVal2, "reputation", true)
	Engine.SetModelValue(registerVal5, 0.000000)
	local registerVal4 = Engine.CreateModel(registerVal2, "featureBans", true)
	for index5=1.000000, (LuaEnums.FEATURE_BAN.COUNT - 1.000000), 1.000000 do
		local registerVal10 = Engine.CreateModel(registerVal4, ("feature_" .. index5 .. "_end"), true)
		Engine.SetModelValue(registerVal10, 0.000000)
	end
	registerVal5 = Engine.CreateModel(registerVal2, "messages", true)
	for index6=1.000000, #Lobby.Anticheat.MessageGroups, 1.000000 do
		registerVal10 = Engine.CreateModel(registerVal5, ("messageGroup_" .. index6), true)
		Engine.SetModelValue(registerVal10, 0.000000)
		local registerVal12 = Engine.CreateModel(registerVal10, "currentIndex", true)
		Engine.SetModelValue(registerVal12, 1.000000)
	end
	local registerVal7 = Engine.CreateModel(registerVal2, "ready", true)
	Engine.SetModelValue(registerVal7, true)
end

function Lobby.Anticheat.OnInit()
	local registerVal0 = Engine.IsDedicatedServer()
	if registerVal0 then
		return 
	end
	for index0=0.000000, (LuaEnums.MAX_CONTROLLER_COUNT - 1.000000), 1.000000 do
		Lobby.Anticheat.SetupDataModelForController(index0)
	end
end

function Lobby.Anticheat.OnControllerSignedOut(arg0)
	local registerVal1 = Engine.IsDedicatedServer()
	if registerVal1 then
		return 
	end
	if arg0 < 0.000000 or 3.000000 < arg0 then
		return 
	end
	Lobby.Anticheat.ClearFeatureBanInfoForController(arg0)
end

function Lobby.Anticheat.GetLocalEndTime(arg0)
	local registerVal1 = Engine.IsDedicatedServer()
	if registerVal1 then
		return 0.000000
	end
	if arg0 < Lobby.Anticheat.PERMANENT_BAN then
		local registerVal2 = Engine.SystemTimeUInt64()
	end
	return (arg0 + registerVal2)
end

function Lobby.Anticheat.ClearFeatureBanInfoForController(arg0)
	local registerVal1 = Engine.IsDedicatedServer()
	if registerVal1 then
		return 
	end
	local registerVal2 = Engine.GetModelForController(arg0)
	registerVal1 = Engine.GetModel(registerVal2, "lobbyRoot.anticheat")
	registerVal2 = Engine.GetModel(registerVal1, "featureBans")
	for index3=1.000000, (LuaEnums.FEATURE_BAN.COUNT - 1.000000), 1.000000 do
		local registerVal8 = Engine.GetModel(registerVal2, ("feature_" .. index3 .. "_end"))
		Engine.SetModelValue(registerVal8, 0.000000)
	end
end

function Lobby.Anticheat.ClearFeatureBanInfo()
	local registerVal0 = Engine.IsDedicatedServer()
	if registerVal0 then
		return 
	end
	for index0=0.000000, (LuaEnums.MAX_CONTROLLER_COUNT - 1.000000), 1.000000 do
		Lobby.Anticheat.ClearFeatureBanInfoForController(index0)
	end
end

function Lobby.Anticheat.CheckIsFeatureBanned(arg0)
	local registerVal1 = Engine.IsDedicatedServer()
	if registerVal1 then
		return false, CoDLUIDecompiler.LuaRegister
	end
	for index1=0.000000, (LuaEnums.MAX_CONTROLLER_COUNT - 1.000000), 1.000000 do
		local registerVal5 = Lobby.Anticheat.CheckIsFeatureBannedForIndex(index1, arg0)
		if registerVal5 then
			local registerVal6 = Engine.GetModelForController(index1)
			registerVal5 = Engine.GetModel(registerVal6, "lobbyRoot.anticheat")
			registerVal6 = Engine.GetModel(featureBansRoot, "featureBans")
			Engine.GetModelValue(Engine.GetModel(registerVal6, ("feature_" .. arg0 .. "_end")))
			return 
		end
	end
	return false, CoDLUIDecompiler.LuaRegister
end

function Lobby.Anticheat.CheckIsFeatureBannedForIndex(arg0, arg1)
	local registerVal2 = Engine.IsDedicatedServer()
	if registerVal2 then
		return false, CoDLUIDecompiler.LuaRegister
	end
	local registerVal3 = Engine.GetModelForController(arg0)
	registerVal2 = Engine.GetModel(registerVal3, "lobbyRoot.anticheat")
	registerVal3 = Engine.GetModel(registerVal2, "featureBans")
	local registerVal4 = Engine.GetModelValue(Engine.GetModel(registerVal3, ("feature_" .. arg1 .. "_end")))
	if registerVal4 == 0.000000 then
		return false, CoDLUIDecompiler.LuaRegister
	end
	if registerVal4 == nil then
		return false, CoDLUIDecompiler.LuaRegister
	end
	local registerVal5 = Engine.SystemTimeUInt64()
	if registerVal4 ~= Lobby.Anticheat.UINT_MAX and registerVal4 < registerVal5 then
		return false, CoDLUIDecompiler.LuaRegister
	end
	return true, CoDLUIDecompiler.LuaRegister
end

function Lobby.Anticheat.BanDisconnect()
	local registerVal0 = Engine.IsDedicatedServer()
	if registerVal0 then
		return 
	end
	Engine.SessionModeSetOffline(true)
	Lobby.Anticheat.ClearFeatureBanInfo()
	for index0=0.000000, (LuaEnums.MAX_CONTROLLER_COUNT - 1.000000), 1.000000 do
		Engine.LiveStorageSetAllStatsNotFetched(index0)
		Engine.LiveMetPlayerUpdateMetPlayerList(index0, Enum.LiveMetPlayerUpdate.LIVE_RECENTLY_MET_PLAYERS_UPDATE_RESET)
	end
end

function Lobby.Anticheat.IsFeatureBanned(arg0, arg1)
	local registerVal2 = Engine.IsDedicatedServer()
	if registerVal2 then
		return false, CoDLUIDecompiler.LuaRegister
	end
	for index2=0.000000, (LuaEnums.MAX_CONTROLLER_COUNT - 1.000000), 1.000000 do
		local registerVal6, registerVal7 = Lobby.Anticheat.CheckIsFeatureBannedForIndex(index2, arg0)
		if registerVal6 then
			local registerVal8 = Engine.GetGamertagForController(index2)
			if registerVal7 < Lobby.Anticheat.UINT_MAX then
				local registerVal13 = Engine.SystemTimeUInt64()
				local registerVal14 = Engine.GetTimeRemainingString((registerVal7 - registerVal13))
			end
			registerVal13 = LuaUtils.GetBanMessageForFeature(index2, arg0, false)
			registerVal13 = string.format("%s

%s", registerVal13, registerVal14)
			if registerVal13 ~= nil then
				if arg1 == true then
					Lobby.Anticheat.BanDisconnect()
					Engine.ComError(Enum.errorCode.ERROR_SOFTRESTART, registerVal13)
				end
				return true, CoDLUIDecompiler.LuaRegister
			end
		end
	end
	return false, CoDLUIDecompiler.LuaRegister
end

function Lobby.Anticheat.OnPlayerBanned(arg0)
	local registerVal1 = Engine.IsDedicatedServer()
	if registerVal1 then
		return 
	end
	local registerVal6 = Engine.GetModelForController(arg0.controller)
	local registerVal5 = Engine.GetModel(registerVal6, "lobbyRoot.anticheat")
	local registerVal7 = Engine.GetModel(registerVal5, "reputation")
	Engine.SetModelValue(registerVal7, arg0.reputationLevel)
	Lobby.Anticheat.BanDisconnect()
	if arg0.userID ~= 0.000000 then
		local registerVal9 = Engine.GetGamertagForController(arg0.controller)
		if arg0.reputationLevel >= LuaEnums.DW_REPUTATION_BAN and arg0.controller == -1.000000 or registerVal9 == "" then
		else
			if arg0.reputationLevel == 1000.000000 then
				local registerVal10 = Engine.Localize("EXE_COD_PROFILE_MAINTENANCE", registerVal9)
			else
				registerVal10 = Engine.Localize("EXE_DEMONWARE_PLAYER_BAN", registerVal9)
			end
		end
	end
	Engine.AnticheatDisconnectAndDisableDemonwareNoReconnect()
	Engine.ComError(Enum.errorCode.ERROR_SOFTRESTART, registerVal10)
end

function Lobby.Anticheat.OnPlayerVacBanned(arg0)
	local registerVal1 = Engine.IsDedicatedServer()
	if registerVal1 then
		return 
	end
	Lobby.Anticheat.BanDisconnect()
	Engine.AnticheatDisconnectAndDisableDemonwareNoReconnect()
	local registerVal6 = Engine.SessionMode_IsOnlineGame()
	if registerVal6 then
		Engine.ComError(Enum.errorCode.ERROR_DROP, "PLATFORM_VACBANNED")
	end
end

function Lobby.Anticheat.OnFeatureBan(arg0)
	local registerVal1 = Engine.IsDedicatedServer()
	if registerVal1 then
		return 
	end
	local registerVal5 = Engine.GetModelForController(arg0.controller)
	local registerVal4 = Engine.GetModel(registerVal5, "lobbyRoot.anticheat")
	registerVal5 = Engine.GetModel(registerVal4, "featureBans")
	local registerVal7 = Engine.GetModel(registerVal5, ("feature_" .. arg0.category .. "_end"))
	Engine.SetModelValue(registerVal7, Lobby.Anticheat.GetLocalEndTime(arg0.secondsRemaining))
end

function Lobby.Anticheat.OnStorageOperationReadResult(arg0)
	local registerVal1 = Engine.IsDedicatedServer()
	if registerVal1 then
		return 
	end
	local registerVal5 = Engine.GetModelForController(arg0.controller)
	local registerVal4 = Engine.GetModel(registerVal5, "lobbyRoot.anticheat")
	registerVal5 = Engine.StorageIsFileReady(arg0.controller, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	registerVal5 = Engine.StorageIsFileReady(arg0.controller, Enum.StorageFileType.STORAGE_EXTERNAL_DATA)
	if registerVal5 and registerVal5 then
		local registerVal6 = Engine.GetModelForController(arg0.controller)
		registerVal5 = Engine.GetModel(registerVal6, "lobbyRoot.anticheat")
		registerVal6 = Engine.GetModel(registerVal5, "messages")
		local registerVal7 = Engine.GetModel(registerVal6, ("messageGroup_" .. LuaEnums.ANTICHEAT_MESSAGE_GROUPS.ZM))
		local registerVal8 = Engine.GetModel(registerVal6, ("messageGroup_" .. LuaEnums.ANTICHEAT_MESSAGE_GROUPS.MP))
		local registerVal9 = Engine.GetModel(registerVal6, ("messageGroup_" .. LuaEnums.ANTICHEAT_MESSAGE_GROUPS.UGC))
		local registerVal10 = Engine.GetModel(registerVal6, ("messageGroup_" .. LuaEnums.ANTICHEAT_MESSAGE_GROUPS.LOOT))
		local registerVal11 = Engine.GetModel(registerVal6, ("messageGroup_" .. LuaEnums.ANTICHEAT_MESSAGE_GROUPS.ARENA))
		local registerVal12 = Engine.StorageGetBuffer(arg0.controller, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
		local registerVal13 = registerVal12.extMsgVersionViewed_MP:get()
		local registerVal14 = registerVal12.extMsgVersionViewed_ZM:get()
		local registerVal15 = registerVal12.extMsgVersionViewed_UGC:get()
		local registerVal16 = registerVal12.extMsgVersionViewed_LOOT:get()
		local registerVal17 = registerVal12.extMsgVersionViewed_ARENA:get()
		local registerVal19 = Engine.CreateModel(registerVal7, "highestVersionViewed")
		Engine.SetModelValue(registerVal19, registerVal14)
		registerVal19 = Engine.CreateModel(registerVal7, "highestVersionAvailable")
		Engine.SetModelValue(registerVal19, registerVal14)
		registerVal19 = Engine.CreateModel(registerVal8, "highestVersionViewed")
		Engine.SetModelValue(registerVal19, registerVal13)
		registerVal19 = Engine.CreateModel(registerVal8, "highestVersionAvailable")
		Engine.SetModelValue(registerVal19, registerVal13)
		registerVal19 = Engine.CreateModel(registerVal9, "highestVersionViewed")
		Engine.SetModelValue(registerVal19, registerVal15)
		registerVal19 = Engine.CreateModel(registerVal9, "highestVersionAvailable")
		Engine.SetModelValue(registerVal19, registerVal15)
		registerVal19 = Engine.CreateModel(registerVal10, "highestVersionViewed")
		Engine.SetModelValue(registerVal19, registerVal16)
		registerVal19 = Engine.CreateModel(registerVal10, "highestVersionAvailable")
		Engine.SetModelValue(registerVal19, registerVal16)
		registerVal19 = Engine.CreateModel(registerVal11, "highestVersionViewed")
		Engine.SetModelValue(registerVal19, registerVal17)
		registerVal19 = Engine.CreateModel(registerVal11, "highestVersionAvailable")
		Engine.SetModelValue(registerVal19, registerVal17)
		local registerVal18 = Engine.StorageGetBuffer(arg0.controller, Enum.StorageFileType.STORAGE_EXTERNAL_DATA)
		for index19=1.000000, #Lobby.Anticheat.MessageGroups, 1.000000 do
			for index23=1.000000, #Lobby.Anticheat.MessageGroups[index19], 1.000000 do
				for index27=1.000000, #Lobby.Anticheat.MessageGroups[index19][index23], 1.000000 do
					local registerVal31 = Engine.GetModel(registerVal6, ("messageGroup_" .. index19))
					local registerVal33 = registerVal18.messages[Lobby.Anticheat.MessageGroups[index19][index23][index27].messageId].state:get()
					local registerVal34 = registerVal18.messages[Lobby.Anticheat.MessageGroups[index19][index23][index27].messageId].version:get()
					local registerVal35 = Engine.GetModelValue(Engine.GetModel(registerVal31, "highestVersionViewed"))
					if registerVal33 == 1.000000 and registerVal35 < registerVal34 then
						registerVal35 = Engine.GetModelValue(Engine.GetModel(registerVal31, "highestVersionAvailable"))
						if registerVal35 < registerVal34 then
							local registerVal36 = Engine.GetModel(registerVal31, "highestVersionAvailable")
							Engine.SetModelValue(registerVal36, registerVal34)
						end
						registerVal35 = Engine.GetModelValue(registerVal31)
						Engine.SetModelValue(registerVal31, (registerVal35 + 1.000000))
						registerVal36 = Engine.CreateModel(registerVal31, ("index_" .. (registerVal35 + 1.000000)))
						local registerVal38 = Engine.CreateModel(registerVal36, "reference")
						Engine.SetModelValue(registerVal38, Lobby.Anticheat.MessageGroups[index19][index23][index27].reference)
						registerVal38 = Engine.CreateModel(registerVal36, "url")
						Engine.SetModelValue(registerVal38, Lobby.Anticheat.MessageGroups[index19][index23][index27].url)
						registerVal38 = Engine.CreateModel(registerVal36, "viewed")
						Engine.SetModelValue(registerVal38, false)
					else
					end
				end
			end
		end
	end
end

function Lobby.Anticheat.OnCheckPrestigeFeatureBan(arg0)
	local registerVal1 = Engine.IsDedicatedServer()
	if registerVal1 then
		return 
	end
	local registerVal2, registerVal3 = Lobby.Anticheat.CheckIsFeatureBannedForIndex(arg0.controller, LuaEnums.FEATURE_BAN.PRESTIGE)
	if registerVal2 then
		local registerVal5 = {}
		registerVal5.controller = arg0.controller
		registerVal5.feature = LuaEnums.FEATURE_BAN.PRESTIGE
		local registerVal4 = LobbyVM.OnIsPermaBanned(registerVal5)
		local registerVal7 = LuaUtils.GetBanMessageForFeature(arg0.controller, LuaEnums.FEATURE_BAN.PRESTIGE, registerVal4)
		if not registerVal4 then
			local registerVal9 = {}
			registerVal9.controller = arg0.controller
			registerVal9.feature = LuaEnums.FEATURE_BAN.PRESTIGE
			local registerVal8 = Lobby.Anticheat.OnGetBanTimeRemaining(registerVal9)
			registerVal9 = Engine.GetTimeRemainingString(registerVal8)
		end
		Engine.ComError(Enum.errorCode.ERROR_SOFTRESTART, string.format("%s

%s", registerVal7, registerVal9))
	end
end

function Lobby.Anticheat.OnIsPermaBanned(arg0)
	local registerVal1 = Engine.IsDedicatedServer()
	if registerVal1 then
		return false
	end
	registerVal1, registerVal2 = Lobby.Anticheat.CheckIsFeatureBannedForIndex(arg0.controller, arg0.feature)
	if registerVal2 ~= Lobby.Anticheat.UINT_MAX then
		return false
	else
		return true
	end
end

function Lobby.Anticheat.OnGetAnticheatReputation(arg0)
	local registerVal1 = Engine.IsDedicatedServer()
	if registerVal1 then
		return 0.000000
	end
	local registerVal2 = Engine.GetModelForController(arg0.controller)
	registerVal1 = Engine.GetModel(registerVal2, "lobbyRoot.anticheat")
	Engine.GetModel(registerVal1, "reputation")
	return Engine.GetModelValue(Engine.GetModel)
end

function Lobby.Anticheat.OnGetBanTimeRemaining(arg0)
	local registerVal1 = Engine.IsDedicatedServer()
	if registerVal1 then
		return 0.000000
	end
	registerVal1, registerVal2 = Lobby.Anticheat.CheckIsFeatureBannedForIndex(arg0.controller, arg0.feature)
	local registerVal3 = Engine.SystemTimeUInt64()
	return (registerVal2 - registerVal3)
end

function Lobby.Anticheat.OnPushAnticheatMessageToUI(arg0)
	local registerVal1 = Engine.IsDedicatedServer()
	if registerVal1 then
		return false
	end
	local registerVal3 = Engine.StorageIsFileReady(arg0.controller, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	registerVal3 = Engine.StorageIsFileReady(arg0.controller, Enum.StorageFileType.STORAGE_EXTERNAL_DATA)
	if arg0.controller or not registerVal3 then
		return false
	end
	local registerVal4 = Engine.GetModelForController(arg0.controller)
	registerVal3 = Engine.GetModel(registerVal4, "lobbyRoot.anticheat")
	registerVal4 = Engine.GetModel(registerVal3, "messages")
	local registerVal5 = Engine.GetModel(registerVal4, ("messageGroup_" .. arg0.messageGroup))
	local registerVal6 = Engine.GetModelValue(registerVal5)
	registerVal6 = Engine.GetModelValue(Engine.GetModel(registerVal5, "highestVersionAvailable"))
	local registerVal7 = Engine.GetModelValue(Engine.GetModel(registerVal5, "highestVersionViewed"))
	local registerVal8 = type(registerVal6)
	registerVal8 = type(registerVal7)
	registerVal8 = Engine.GetModelValue(Engine.GetModel(registerVal5, "currentIndex"))
	local registerVal9 = Engine.GetModelValue(registerVal5)
	registerVal9 = Engine.GetModel(registerVal5, ("index_" .. registerVal8))
	local registerVal10 = Engine.GetModelValue(registerVal9, "viewed")
	if 0.000000 < registerVal6 and registerVal8 == "number" and registerVal8 == "number" and registerVal7 < registerVal6 and registerVal8 <= registerVal9 and not registerVal10 then
		registerVal10 = Engine.GetModel(registerVal3, "message")
		local registerVal11 = Engine.GetModelValue(Engine.GetModel(registerVal9, "reference"))
		local registerVal12 = Engine.GetModelValue(Engine.GetModel(registerVal9, "url"))
		local registerVal14 = Engine.GetModel(registerVal10, "string")
		Engine.SetModelValue(registerVal14, registerVal11)
		registerVal14 = Engine.GetModel(registerVal10, "url")
		Engine.SetModelValue(registerVal14, registerVal12)
		return true
	end
	return false
end

function Lobby.Anticheat.OnPopAnticheatMessage(arg0)
	local registerVal1 = Engine.IsDedicatedServer()
	if registerVal1 then
		return 
	end
	local registerVal4 = Engine.GetModelForController(arg0.controller)
	local registerVal3 = Engine.GetModel(registerVal4, "lobbyRoot.anticheat")
	registerVal4 = Engine.StorageIsFileReady(arg0.controller, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	registerVal4 = Engine.StorageIsFileReady(arg0.controller, Enum.StorageFileType.STORAGE_EXTERNAL_DATA)
	if arg0.controller or not registerVal4 then
		return 
	end
	registerVal4 = Engine.GetModel(registerVal3, "messages")
	local registerVal5 = Engine.GetModel(registerVal4, ("messageGroup_" .. arg0.messageGroup))
	local registerVal6 = Engine.GetModelValue(registerVal5)
	local registerVal7 = Engine.GetModelValue(Engine.GetModel(registerVal5, "currentIndex"))
	local registerVal8 = Engine.GetModel(registerVal5, ("index_" .. registerVal7))
	local registerVal10 = Engine.GetModel(registerVal8, "viewed")
	Engine.SetModelValue(registerVal10, true)
	registerVal10 = Engine.GetModelValue(registerVal5)
	if registerVal10 < (registerVal7 + 1.000000) then
		local registerVal9 = Engine.GetModelValue(Engine.GetModel(registerVal5, "highestVersionAvailable"))
		local registerVal11 = Engine.GetModel(registerVal5, "highestVersionViewed")
		Engine.SetModelValue(registerVal11, registerVal9)
		registerVal10 = Engine.StorageGetBuffer(arg0.controller, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
		if arg0.messageGroup == LuaEnums.ANTICHEAT_MESSAGE_GROUPS.MP then
			registerVal10.extMsgVersionViewed_MP:set(registerVal9)
		else
			if arg0.messageGroup == LuaEnums.ANTICHEAT_MESSAGE_GROUPS.ZM then
				registerVal10.extMsgVersionViewed_ZM:set(registerVal9)
			else
				if arg0.messageGroup == LuaEnums.ANTICHEAT_MESSAGE_GROUPS.UGC then
					registerVal10.extMsgVersionViewed_UGC:set(registerVal9)
				else
					if arg0.messageGroup == LuaEnums.ANTICHEAT_MESSAGE_GROUPS.LOOT then
						registerVal10.extMsgVersionViewed_LOOT:set(registerVal9)
					else
						if arg0.messageGroup == LuaEnums.ANTICHEAT_MESSAGE_GROUPS.ARENA then
							registerVal10.extMsgVersionViewed_ARENA:set(registerVal9)
						end
					end
				end
			end
		end
		Engine.StorageWrite(arg0.controller, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	else
		registerVal10 = Engine.GetModel(registerVal5, "currentIndex")
		Engine.SetModelValue(registerVal10, (registerVal7 + 1.000000))
	end
end

function Lobby.Anticheat.Pump()
	local registerVal0 = Engine.IsDedicatedServer()
	if registerVal0 then
		return 
	end
	registerVal0 = Engine.GetLobbyNetworkMode()
	if registerVal0 ~= Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE then
		return 
	end
	registerVal0 = LobbyData.GetCurrentMenuTarget()
	if registerVal0.mainMode == Enum.LobbyMainMode.LOBBY_MAINMODE_MP then
		Lobby.Anticheat.IsFeatureBanned(LuaEnums.FEATURE_BAN.LIVE_MP, true)
	else
		if registerVal0.mainMode == Enum.LobbyMainMode.LOBBY_MAINMODE_ZM then
			Lobby.Anticheat.IsFeatureBanned(LuaEnums.FEATURE_BAN.LIVE_ZM, true)
		else
			if registerVal0.mainMode == Enum.LobbyMainMode.LOBBY_MAINMODE_CP then
				Lobby.Anticheat.IsFeatureBanned(LuaEnums.FEATURE_BAN.LIVE_CP, true)
			end
		end
	end
end

