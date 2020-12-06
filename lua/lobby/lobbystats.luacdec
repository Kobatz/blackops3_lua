-- Decompiled with CoDLUIDecompiler by JariK

require("lua.Lobby.Common.LobbyCore")
Lobby.Stats = {}
function Lobby.Stats.WritePlayerStatToMissionStat(arg0, arg1, arg2, arg3)
	local registerVal4 = arg1.PlayerStatsList[arg3].statValue:get()
	arg1.PlayerStatsByMap[arg2].currentStats[arg3]:set(registerVal4)
end

function Lobby.Stats.WriteMissionStats(arg0, arg1, arg2)
	local registerVal3 = {}
	registerVal3 = {"SCORE", "KILLS", "INCAPS", "ASSISTS", "REVIVES"}
	statNames = registerVal3
	registerVal3, registerVal4, registerVal5 = pairs(statNames)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		Lobby.Stats.WritePlayerStatToMissionStat(arg0, arg1, arg2, value7)
	end
	for index3=0.000000, 5.000000, 1.000000 do
		local registerVal7 = arg1.PlayerStatsByMap[arg2].completedDifficulties[index3]:get()
		arg1.PlayerStatsByMap[arg2].previousCompletedDifficulties[index3]:set(registerVal7)
		local registerVal8 = arg1.PlayerStatsByMap[arg2].receivedXPForDifficulty[index3]:get()
		arg1.PlayerStatsByMap[arg2].previousReceivedXPForDifficulty[index3]:set(registerVal8)
	end
end

function Lobby.Stats.WriteCurrentDecorations(arg0, arg1)
	for index2=0.000000, 19.000000, 1.000000 do
		local registerVal6 = arg1.PlayerCPDecorations[index2]:get()
		arg1.currentPlayerCPDecorations[index2]:set(registerVal6)
	end
end

function Lobby.Stats.WriteCurrentRankXP(arg0, arg1)
	local registerVal2 = arg1.PlayerStatsList.RANKXP.statValue:get()
	arg1.currentRankXP:set(registerVal2)
end

function Lobby.Stats.WriteCurrentWeaponLevels(arg0, arg1)
	for index2=1.000000, 58.000000, 1.000000 do
		local registerVal6 = Engine.GetGunCurrentRank(arg0, index2)
		arg1.currentWeaponLevels[index2]:set(registerVal6)
	end
end

function Lobby.Stats.WriteCurrentCPStats(arg0, arg1)
	if arg1 == nil then
		local registerVal2 = Engine.DvarString(nil, "ui_mapname")
	end
	if LuaUtils.mapsTable[registerVal2] ~= nil and LuaUtils.mapsTable[registerVal2].rootMapName ~= nil then
		local registerVal3 = Engine.GetPlayerStats(arg0)
		Lobby.Stats.WriteCurrentWeaponLevels(arg0, registerVal3)
		Lobby.Stats.WriteCurrentRankXP(arg0, registerVal3)
		Lobby.Stats.WriteCurrentDecorations(arg0, registerVal3)
		Lobby.Stats.WriteMissionStats(arg0, registerVal3, LuaUtils.mapsTable[registerVal2].rootMapName)
		Engine.Exec(arg0, "uploadstats")
		Engine.Exec(arg0, "savegamerprofilestats")
	end
end

function Lobby.Stats.OnMatchStart(arg0)
	local registerVal1 = Engine.IsCampaignGame()
	if registerVal1 then
		registerVal1 = Engine.GetPrimaryController()
		local registerVal2 = Engine.GetSavedMap()
		local registerVal3 = Engine.DvarString(nil, "ui_mapname")
		Lobby.Stats.WriteCurrentCPStats(registerVal1)
		registerVal1 = Engine.IsZombiesGame()
		if registerVal2 ~= registerVal3 and registerVal1 then
			registerVal2 = Engine.GetMaxControllerCount()
			for index1=0.000000, (registerVal2 - 1.000000), 1.000000 do
				local registerVal5 = Engine.IsControllerBeingUsed(index1)
				if registerVal5 then
					CoDShared.UpdateZMDashboardStat(index1)
					Engine.Exec(index1, "uploadstats")
				end
			end
		end
	end
end

function Lobby.Stats.OnMatchLaunchClient(arg0)
	local registerVal1 = Engine.IsCampaignGame()
	if registerVal1 then
		registerVal1 = Engine.GetLobbySessionGameData(Enum.LobbyModule.LOBBY_MODULE_CLIENT)
		if registerVal1.mapname ~= nil and registerVal1.mapname ~= "" then
			Engine.SetupFieldOpsKitLoadouts(registerVal1.mapname)
		end
		local registerVal3 = Engine.GetPrimaryController()
		Lobby.Stats.WriteCurrentCPStats(registerVal3)
	end
end

function Lobby.Stats.OnMatchChangeMap(arg0)
	local registerVal1 = Engine.IsCampaignGame()
	if registerVal1 then
		registerVal1 = Engine.GetPrimaryController()
		if arg0.currentMap ~= nil and arg0.currentMap ~= "" then
		end
		if arg0.nextMap ~= nil and arg0.nextMap ~= "" then
		end
		if LuaUtils.mapsTable[arg0.nextMap] == nil then
			return 
		end
		if LuaUtils.mapsTable[arg0.currentMap] ~= nil and LuaUtils.mapsTable[arg0.currentMap].isSafeHouse then
			Lobby.Stats.WriteCurrentCPStats(registerVal1, arg0.nextMap)
			return 
		end
	end
end

function Lobby.Stats.OnServerTimeout(arg0)
	local registerVal1 = Engine.IsZombiesGame()
	if registerVal1 then
		CoDShared.IncrementZMDashboardQuitType(arg0, "timeout", 1.000000)
	end
end

function Lobby.Stats.ClearValidationEvent(arg0)
	local registerVal1 = arg0.validationEvent:get()
	if arg0 ~= nil and registerVal1 ~= "" then
		arg0.validationEvent:set("")
	end
end

function Lobby.Stats.SpecialistErrorDetected(arg0, arg1, arg2)
	arg2.cacloadouts.charactercontext.characterindex:set(0.000000)
	arg2.cacloadouts.herogadget:set(0.000000)
	arg2.cacloadouts.heroweapon:set(113.000000)
end

function Lobby.Stats.IsWeaponValid(arg0, arg1, arg2, arg3)
	if arg2 == 0.000000 then
		return true
	end
	local registerVal6 = Engine.TableLookup(0.000000, "gamedata/stats/mp/mp_statsTable.csv", 0.000000, arg2, 2.000000)
	local registerVal7 = registerVal6:find(arg3)
	if registerVal7 == nil then
		return false
	end
	registerVal7 = Engine.IsLootReady(arg0)
	registerVal7 = Engine.IsInventoryBusy(arg0)
	registerVal7 = Engine.TableLookup(0.000000, "gamedata/stats/mp/mp_statsTable.csv", 0.000000, arg2, 4.000000)
	local registerVal8 = Engine.TableFindRows("gamedata/loot/mplootitems.csv", 0.000000, registerVal7)
	local registerVal9 = Engine.GetLootItemQuantity(arg0, registerVal7, Enum.eModes.MODE_MULTIPLAYER)
	if registerVal7 and not registerVal7 and registerVal8 ~= nil and 0.000000 < #"gamedata/loot/mplootitems.csv" and registerVal9 == 0.000000 then
		return false
	end
	return true
end

function Lobby.Stats.LoadoutErrorDetected(arg0, arg1)
	arg1.primary:set(0.000000)
	arg1.primaryattachment1:set(0.000000)
	arg1.primaryattachment2:set(0.000000)
	arg1.primaryattachment3:set(0.000000)
	arg1.primaryattachment4:set(0.000000)
	arg1.primaryattachment5:set(0.000000)
	arg1.primaryattachment6:set(0.000000)
	arg1.primaryattachment7:set(0.000000)
	arg1.primaryattachment8:set(0.000000)
	arg1.secondary:set(0.000000)
	arg1.secondaryattachment1:set(0.000000)
	arg1.secondaryattachment2:set(0.000000)
	arg1.secondaryattachment3:set(0.000000)
	arg1.secondaryattachment4:set(0.000000)
	arg1.secondaryattachment5:set(0.000000)
	arg1.secondaryattachment6:set(0.000000)
	arg1.secondaryattachment7:set(0.000000)
	arg1.secondaryattachment8:set(0.000000)
end

function Lobby.Stats.KillstreakErrorDetected(arg0, arg1)
	arg1:set(0.000000)
end

function Lobby.Stats.ValidateCustomClass(arg0, arg1, arg2)
	if arg2 then
		local registerVal3 = arg2.primary:get()
		local registerVal4 = arg2.secondary:get()
		if registerVal4 == 100.000000 then
			Lobby.Stats.LoadoutErrorDetected(arg0, arg2)
			return false
		end
		local registerVal5 = Lobby.Stats.IsWeaponValid(arg0, arg1, registerVal3, "weapon_")
		registerVal5 = Lobby.Stats.IsWeaponValid(arg0, arg1, registerVal4, "weapon_")
		if arg1 or not registerVal5 then
			Lobby.Stats.LoadoutErrorDetected(arg0, arg2)
			return false
		end
	end
	return true
end

function Lobby.Stats.ValidateLoadouts(arg0)
	local registerVal1 = Engine.StorageIsFileReady(arg0, Enum.StorageFileType.STORAGE_MP_LOADOUTS)
	if not registerVal1 then
		return 
	end
	registerVal1 = Engine.StorageIsFileReady(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	if not registerVal1 then
		return 
	end
	registerVal1 = Engine.StorageIsFileReady(arg0, Enum.StorageFileType.STORAGE_MP_CLASS_SETS)
	if not registerVal1 then
		return 
	end
	registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	local registerVal2 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_LOADOUTS)
	local registerVal3 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_CLASS_SETS)
	if registerVal1 and registerVal2 then
		local registerVal6 = registerVal1.playerstatslist.rank.statValue:get()
		local registerVal7 = registerVal2.cacloadouts.heroweapon:get()
		local registerVal8 = registerVal2.cacloadouts.herogadget:get()
		local registerVal9 = Lobby.Stats.IsWeaponValid(arg0, registerVal6, registerVal7, "hero")
		registerVal9 = Lobby.Stats.IsWeaponValid(arg0, registerVal6, registerVal7, "weapon_grenade")
		if not registerVal1 or registerVal9 then
			registerVal9 = Lobby.Stats.IsWeaponValid(arg0, registerVal6, registerVal8, "weapon_grenade")
			if not registerVal9 then
				Lobby.Stats.SpecialistErrorDetected(arg0, registerVal1, registerVal2)
			end
		end
		registerVal9 = {}
		registerVal9 = {"publicMatchClassSets", "leagueMatchClassSets"}
		setTypes = registerVal9
		registerVal9, registerVal10, registerVal11 = ipairs(setTypes)
		for index12,value13 in registerVal9, registerVal10, registerVal11 do
			for index14=0.000000, 9.000000, 1.000000 do
				for index19=0.000000, 9.000000, 1.000000 do
					customClass = registerVal3[value13][index14].customclass[index19]
					local registerVal23 = Lobby.Stats.ValidateCustomClass(arg0, registerVal6, customClass)
					if not registerVal23 then
					end
				end
			end
		end
		for index9=0.000000, 9.000000, 1.000000 do
			customClass = registerVal2.cacloadouts.customclass[index9]
			local registerVal13 = Lobby.Stats.ValidateCustomClass(arg0, registerVal6, customClass)
			if not registerVal13 then
			end
		end
		killstreak1 = registerVal2.cacloadouts.killstreak1
		local registerVal12 = killstreak1:get()
		registerVal9 = Lobby.Stats.IsWeaponValid(arg0, registerVal6, registerVal12, "killstreak")
		if not registerVal9 then
			Lobby.Stats.KillstreakErrorDetected(arg0, killstreak1)
		end
		killstreak2 = registerVal2.cacloadouts.killstreak2
		registerVal12 = killstreak2:get()
		registerVal9 = Lobby.Stats.IsWeaponValid(arg0, registerVal6, registerVal12, "killstreak")
		if not registerVal9 then
			Lobby.Stats.KillstreakErrorDetected(arg0, killstreak2)
		end
		killstreak3 = registerVal2.cacloadouts.killstreak3
		registerVal12 = killstreak3:get()
		registerVal9 = Lobby.Stats.IsWeaponValid(arg0, registerVal6, registerVal12, "killstreak")
		if not registerVal9 then
			Lobby.Stats.KillstreakErrorDetected(arg0, killstreak3)
		end
		registerVal9 = Engine.GetHeroList(Enum.eModes.MODE_MULTIPLAYER)
		registerVal10 = {}
		registerVal10 = {"cacloadouts", "customMatchCacLoadouts", "leagueCacLoadouts"}
		registerVal11, registerVal12, registerVal13 = ipairs(registerVal10)
		for index14,value15 in registerVal11, registerVal12, registerVal13 do
			local registerVal17 = registerVal2[value15].characterContext.characterIndex:get()
			if registerVal17 < 0.000000 or #registerVal3[value13][index14] <= registerVal17 then
				registerVal2[value15].characterContext.characterIndex:set(0.000000)
			end
		end
		LuaUtils.ResetToLastSelectedSpecialistIfNeeded(arg0)
	end
	if true == true then
		Engine.StorageWrite(arg0, Enum.StorageFileType.STORAGE_MP_LOADOUTS)
	end
	if true == true then
		Engine.StorageWrite(arg0, Enum.StorageFileType.STORAGE_MP_CLASS_SETS)
	end
end

function Lobby.Stats.OnMPLoadoutsDownloaded(arg0)
	local registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_LOADOUTS)
	local registerVal2 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_LOADOUTS)
	local registerVal4 = Engine.GetHeroList(Enum.eModes.MODE_MULTIPLAYER)
	if registerVal1.cacLoadouts then
		for index5=0.000000, (# - 1.000000), 1.000000 do
			if registerVal1.cacLoadouts.characters[index5].itemList then
				registerVal1.cacLoadouts.characters[index5].itemList.body.items[0.000000].markedOld:set(1.000000)
				registerVal1.cacLoadouts.characters[index5].itemList.helmet.items[0.000000].markedOld:set(1.000000)
			end
			if registerVal1.cacLoadouts.characters[index5].tauntMarkedOld and registerVal1.cacLoadouts.characters[index5].tauntMarkedOld.first_place and registerVal1.cacLoadouts.characters[index5].tauntMarkedOld.first_place.markedOld then
				registerVal1.cacLoadouts.characters[index5].tauntMarkedOld.first_place.markedOld[0.000000]:set(1.000000)
			end
		end
	end
	if registerVal2.leagueCacLoadouts then
		for index5=0.000000, (#(# - 1.000000) - 1.000000), 1.000000 do
			if registerVal2.leagueCacLoadouts.characters[index5].itemList then
				registerVal2.leagueCacLoadouts.characters[index5].itemList.body.items[0.000000].markedOld:set(1.000000)
				registerVal2.leagueCacLoadouts.characters[index5].itemList.helmet.items[0.000000].markedOld:set(1.000000)
			end
			if registerVal2.leagueCacLoadouts.characters[index5].tauntMarkedOld and registerVal2.leagueCacLoadouts.characters[index5].tauntMarkedOld.first_place and registerVal2.leagueCacLoadouts.characters[index5].tauntMarkedOld.first_place.markedOld then
				registerVal2.leagueCacLoadouts.characters[index5].tauntMarkedOld.first_place.markedOld[0.000000]:set(1.000000)
			end
		end
	end
end

function Lobby.Stats.GetPrestigePermanentUnlocks(arg0)
	for index2=0.000000, 19.000000, 1.000000 do
		local registerVal6 = arg0.prestigeTokens[index2].tokenSpent:get()
		registerVal6 = arg0.prestigeTokens[index2].itemunlocked:get()
		if registerVal6 == 1.000000 and 0.000000 < registerVal6 then
		end
	end
	return (0.000000 + 1.000000)
end

function Lobby.Stats.ValidateUnlockTokens(arg0, arg1)
	if arg1 == nil then
		return 
	end
	if arg1.itemStats then
		for index4=0.000000, 255.000000, 1.000000 do
			local registerVal8 = Engine.ItemIndexValid(index4, Enum.eModes.MODE_MULTIPLAYER)
			registerVal8 = Engine.GetItemCost(index4, Enum.eModes.MODE_MULTIPLAYER)
			registerVal8 = arg1.itemStats[index4].purchased:get()
			if registerVal8 and 0.000000 < registerVal8 and 0.000000 < registerVal8 then
			end
		end
	end
	local registerVal4 = arg1.unlocks[0.000000]:get()
	local registerVal6 = Lobby.Stats.GetPrestigePermanentUnlocks(arg1)
	local registerVal7 = arg1.playerstatslist.rank.statvalue:get()
	if 0.000000 < ((((0.000000 + 1.000000) + registerVal4) - (registerVal7 + 1.000000)) - registerVal6) then
		if 255.000000 < ((((0.000000 + 1.000000) + registerVal4) - (registerVal7 + 1.000000)) - registerVal6) then
		end
		arg1.demonwareflags[3.000000]:set(255.000000)
		local registerVal12 = tostring(Enum.eModes.MODE_MULTIPLAYER)
		Engine.Exec(arg0, ("uploadstats " .. registerVal12))
	end
end

function Lobby.Stats.OnMPStatsDownloaded(arg0)
	local registerVal1 = Engine.StorageIsFileReady(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	if not registerVal1 then
		return 
	end
	registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	Lobby.Stats.ClearValidationEvent(registerVal1)
end

function Lobby.Stats.OnMPStatsUploaded(arg0)
	local registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	Lobby.Stats.ClearValidationEvent(registerVal1)
end

function Lobby.Stats.FixXUID(arg0, arg1)
	local registerVal2 = Engine.GetXUID(arg0)
	local registerVal3 = arg1.PlayerXUID:get()
	if arg1.PlayerXUID and registerVal3 ~= registerVal2 then
		arg1.PlayerXUID:set(registerVal2)
		Engine.StorageWrite(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	end
end

function Lobby.Stats.OnMPOnlineStatsDownloaded(arg0)
	local registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	if registerVal1 then
		if registerVal1.itemStats then
			for index3=1.000000, 255.000000, 1.000000 do
				local registerVal7 = Engine.ItemIndexValid(index3, Enum.eModes.MODE_MULTIPLAYER)
				registerVal7 = Engine.GetItemUnlockLevel(index3, Enum.eModes.MODE_MULTIPLAYER)
				registerVal7 = Engine.ItemIndexIsBlackMarket(index3, Enum.eModes.MODE_MULTIPLAYER)
				if registerVal7 and registerVal7 == 0.000000 and not registerVal7 then
					registerVal7 = Engine.ItemIndexHasIncentive(index3, Enum.eModes.MODE_MULTIPLAYER)
					if Engine.ItemIndexHasIncentive == nil or not registerVal7 then
						registerVal1.itemStats[index3].markedOld:set(1.000000)
					end
				end
			end
		end
		Lobby.Stats.ValidateUnlockTokens(arg0, registerVal1)
		Lobby.Stats.FixXUID(arg0, registerVal1)
	end
	Lobby.Stats.ValidateLoadouts(arg0)
end

function Lobby.Stats.OnZMOnlineStatsDownloaded(arg0)
	local registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_ZM_STATS_ONLINE)
	local registerVal2 = registerVal1.extraBools[1.000000]:get()
	if registerVal1 and registerVal2 == 0.000000 then
		for index4=234.000000, 255.000000, 1.000000 do
			local registerVal8 = Engine.GetDLCNameForItem(index4, Enum.eModes.MODE_ZOMBIES)
			local registerVal9 = Engine.HasEntitlementByOwnership(arg0, registerVal8)
			if registerVal1 or not registerVal9 then
				registerVal1.itemStats[index4].markedOld:set(0.000000)
			end
		end
		registerVal1.extraBools[1.000000]:set(1.000000)
		Engine.StorageWrite(arg0, Enum.StorageFileType.STORAGE_ZM_STATS_ONLINE)
	end
end

function Lobby.Stats.OnCPOnlineLoadoutsDownloaded(arg0)
	local registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_CP_LOADOUTS)
	if registerVal1 and registerVal1.cacLoadouts then
		local registerVal4 = Engine.GetHeroList(Enum.eModes.MODE_CAMPAIGN)
		for index5=0.000000, (# - 1.000000), 1.000000 do
			if registerVal1.cacLoadouts.characters[index5].itemList then
				registerVal1.cacLoadouts.characters[index5].itemList.body.items[0.000000].markedOld:set(1.000000)
				registerVal1.cacLoadouts.characters[index5].itemList.helmet.items[0.000000].markedOld:set(1.000000)
				registerVal1.cacLoadouts.characters[index5].itemList.helmet.items[1.000000].markedOld:set(1.000000)
			end
		end
		Engine.StorageWrite(arg0, Enum.StorageFileType.STORAGE_CP_LOADOUTS)
	end
end

function Lobby.Stats.OnProfileCommonStatsDownloaded(arg0)
	local registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_COMMON_SETTINGS)
	if registerVal1 then
		local registerVal2 = Engine.GetLuaCodeVersion()
		registerVal2 = registerVal1.snd_multiplayer_music:get()
		if 11.000000 <= registerVal2 and registerVal2 == 1.000000 then
			registerVal1.snd_multiplayer_music:set(0.000000)
			registerVal1.snd_multiplayer_music_track:set(Enum.MultiplayerMusicTracks.MP_MUSIC_TRACKS_DEFAULT)
			Engine.StorageWrite(arg0, Enum.StorageFileType.STORAGE_COMMON_SETTINGS)
		end
		local registerVal3 = Engine.TableLookup(nil, "gamedata/tables/common/music_player.csv", Enum.MusicPlayerTableColumn.MUSIC_PLAYER_COLUMN_ALIAS, "mus_mp_lobby_intro", Enum.MusicPlayerTableColumn.MUSIC_PLAYER_COLUMN_INDEX)
		if registerVal3 ~= "" then
			local registerVal4 = tonumber(registerVal3)
		else
		end
		registerVal4 = registerVal1.snd_defaultFrontendTracksInitialized:get()
		if registerVal4 == 0.000000 then
			registerVal1.snd_defaultFrontendTracksInitialized:set(1.000000)
			registerVal1.snd_muteMPFrontendMusic:set(0.000000)
			if nil then
				registerVal1.snd_playMPFrontendMusicTrack[nil]:set(1.000000)
			else
				registerVal1.snd_playMPFrontendMusicTrack[0.000000]:set(1.000000)
			end
			Engine.StorageWrite(arg0, Enum.StorageFileType.STORAGE_COMMON_SETTINGS)
		end
		registerVal4 = registerVal1.snd_defaultFrontendTracksInitialized2:get()
		if registerVal4 == 0.000000 then
			registerVal1.snd_defaultFrontendTracksInitialized2:set(1.000000)
			registerVal4 = Engine.GetTableRowCount("gamedata/tables/common/music_player.csv")
			for index7=0.000000, (registerVal4 - 1.000000), 1.000000 do
				local registerVal11 = registerVal1.snd_playMPFrontendMusicTrack[index7]:get()
				if index7 ~= nil and registerVal11 == 1.000000 then
				else
					registerVal11 = registerVal1.snd_playMPFrontendMusicTrack[index7]:get()
					if index7 == nil and registerVal11 == 0.000000 then
					end
				else
				end
			end
			local registerVal7 = registerVal1.snd_muteMPFrontendMusic:get()
			if registerVal7 == 1.000000 then
				registerVal1.snd_frontendTracksState:set(Enum.FrontendMusicTrackStates.FRONTEND_MUSIC_STATE_OFF)
			else
				if true then
					registerVal1.snd_frontendTracksState:set(Enum.FrontendMusicTrackStates.FRONTEND_MUSIC_STATE_ON)
				else
					registerVal1.snd_frontendTracksState:set(Enum.FrontendMusicTrackStates.FRONTEND_MUSIC_STATE_DEFAULT)
				end
			end
			if not true then
				for index7=0.000000, (registerVal4 - 1.000000), 1.000000 do
					registerVal1.snd_playMPFrontendMusicTrack[index7]:set(1.000000)
				end
			end
		end
	end
end

