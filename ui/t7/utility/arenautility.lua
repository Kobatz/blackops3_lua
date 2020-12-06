-- Decompiled with CoDLUIDecompiler by JariK

CoD.ArenaUtility = {}
CoD.ArenaUtility.ArenaPlaylistNamesTable = "gamedata/tables/mp/arena_playlist_names.csv"
CoD.ArenaUtility.ArenaPlaylistIdColumn = 1.000000
CoD.ArenaUtility.ArenaPlaylistNameColumn = 2.000000
CoD.ArenaUtility.ArenaNewSeasonStats = nil
local registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Full_Arena"
registerVal2.frameWidget = "CoD.systemOverlay_ArenaNewSeason"
local registerVal3 = Engine.Localize("MPUI_PRESTIGE_N", 1.000000)
registerVal2.title = registerVal3
registerVal3 = Engine.Localize("MENU_PRESTIGE_FANFARE_DESC", 1.000000)
registerVal2.description = registerVal3
local function __FUNC_AA2_()
	local function __FUNC_AD4_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsModelValueEqualTo(arg2, "arenaNewSeasonState", "seasonFinale")
		if registerVal4 then
			SetControllerModelValue(arg2, "arenaNewSeasonState", "bonusStars")
		else
			registerVal4 = IsModelValueEqualTo(arg2, "arenaNewSeasonState", "seasonStart")
			if registerVal4 then
				GoBack(arg3, arg2)
			end
		end
	end

	return __FUNC_AD4_
end

registerVal2[CoD.OverlayUtility.ContinuePropertyName] = __FUNC_AA2_
CoD.OverlayUtility.AddSystemOverlay("ArenaNewSeason", registerVal2)
function CoD.ArenaUtility.Init()
	local registerVal1 = Engine.GetArenaInfo()
	CoD.ArenaUtility.Ranks = registerVal1
	for index1=1.000000, #CoD.ArenaUtility.Ranks, 1.000000 do
		if CoD.ArenaUtility.Ranks[index1].points then
			CoD.ArenaUtility.Ranks[index1].minPoints = 0.000000
			CoD.ArenaUtility.Ranks[index1].maxPoints = ((0.000000 + CoD.ArenaUtility.Ranks[index1].points) - 1.000000)
		end
	end
end

function CoD.ArenaUtility.GetRankInfo(arg0)
	if arg0 ~= nil then
		for index1=1.000000, #CoD.ArenaUtility.Ranks, 1.000000 do
			if CoD.ArenaUtility.Ranks[index1].points and CoD.ArenaUtility.Ranks[index1].minPoints <= arg0 and arg0 <= CoD.ArenaUtility.Ranks[index1].maxPoints then
				return CoD.ArenaUtility.Ranks[index1]
			end
		end
	end
	return CoD.ArenaUtility.Ranks[1.000000]
end

function CoD.ArenaUtility.GetRank(arg0)
	local registerVal1 = CoD.ArenaUtility.GetRankInfo(arg0)
	return registerVal1.rank
end

function CoD.ArenaUtility.GetAdjustedRank(arg0)
	local registerVal1 = CoD.ArenaUtility.GetRankInfo(arg0)
	if registerVal1.mode == "stars_locked" then
		return tostring((registerVal1.rank + 1.000000))
	end
	return ""
end

function CoD.ArenaUtility.GetRankName(arg0)
	local registerVal1 = CoD.ArenaUtility.GetRankInfo(arg0)
	if registerVal1.mode == "stars_locked" then
		return Engine.Localize("MENU_RANK_N", (registerVal1.rank + 1.000000))
	else
		if registerVal1.mode == "master" then
			return Engine.Localize("MENU_MASTERS_CAPS")
		end
	end
	return ""
end

function CoD.ArenaUtility.IsMaster(arg0)
	local registerVal1 = CoD.ArenaUtility.GetRankInfo(arg0)
	if registerVal1.mode ~= "master" then
	end
	return true
end

function CoD.ArenaUtility.GetArenaRankIcon(arg0)
	local registerVal1 = CoD.ArenaUtility.GetRankInfo(arg0)
	return registerVal1.icon
end

function CoD.ArenaUtility.GetStarCount(arg0)
	local registerVal1 = CoD.ArenaUtility.GetRankInfo(arg0)
	return (arg0 - registerVal1.minPoints)
end

function CoD.ArenaUtility.GetRankVisibleStars(arg0)
	local registerVal1 = CoD.ArenaUtility.GetRankInfo(arg0)
	return (registerVal1.points - 1.000000)
end

function CoD.ArenaUtility.GetArenaRankPoints(arg0)
	local registerVal1 = CoD.ArenaUtility.GetRankInfo(arg0)
	return registerVal1.points
end

function CoD.ArenaUtility.GetBonusStarCount(arg0)
	local registerVal1 = CoD.ArenaUtility.GetRank(arg0)
	return (registerVal1 * 2.000000)
end

function CoD.ArenaUtility.UpdateArenaBest(arg0, arg1, arg2)
	if arg1.arenaBest then
		local registerVal5 = arg1.arenaBest.points:get()
		local registerVal6 = arg2.points:get()
		if registerVal5 <= registerVal6 then
			arg1.arenaBest.points:set(registerVal6)
			local registerVal7 = arg1.arenaBest.skill:get()
			local registerVal8 = arg2.skill:get()
			arg1.arenaBest.skill:set(registerVal8)
			local registerVal9 = arg1.arenaBest.variance:get()
			local registerVal10 = arg2.variance:get()
			if registerVal7 <= registerVal8 and registerVal10 < registerVal9 then
				arg1.arenaBest.variance:set(registerVal10)
			end
			arg1.arenaBestPlaylist:set(tostring(arg0.index))
		end
		registerVal7 = arg1.arenaBest.wins:get()
		registerVal8 = arg1.arenaPerSeasonStats.wins:get()
		if registerVal7 < registerVal8 then
			arg1.arenaBest.wins:set(registerVal8)
		end
	end
	return true
end

function CoD.ArenaUtility.ClearSlot(arg0, arg1, arg2)
	if arg0 ~= nil then
		arg0.season:set(arg1)
		arg0.points:set(arg2)
		arg0.matchStartPoints:set(0.000000)
		arg0.winStreak:set(0.000000)
		arg0.wins:set(0.000000)
		arg0.losses:set(0.000000)
		arg0.losses_late_join:set(0.000000)
		arg0.ties:set(0.000000)
	end
end

function CoD.ArenaUtility.IsBetaSeason(arg0)
	if 0.000000 > arg0 or arg0 >= 2.000000 then
	end
	return true
end

function CoD.ArenaUtility.TryFixUpSeason(arg0, arg1)
	local registerVal2 = arg0.season:get()
	if arg1 < 11.000000 and registerVal2 ~= nil and registerVal2 == 11.000000 then
		arg0.season:set(2.000000)
	end
end

function CoD.ArenaUtility.IsNewSeasonOverlayNeeded(arg0)
	local registerVal1 = Dvar.arena_enableArenaNewSeasonOverlay:get()
	if not registerVal1 then
		return false
	end
	registerVal1 = Engine.GetCurrentArenaSeason()
	local registerVal3 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	local registerVal5, registerVal6 = LuaUtils.GetArenaPlaylistInfo()
	local registerVal7, registerVal8, registerVal9 = ipairs(registerVal6)
	for index10,value11 in registerVal7, registerVal8, registerVal9 do
		local registerVal14 = registerVal3.arenaStats[value11.arenaSlot].season:get()
		local registerVal15 = CoD.ArenaUtility.GetRank(registerVal3.arenaStats[value11.arenaSlot].points:get())
		if value11.arenaSlot and registerVal3.arenaStats[value11.arenaSlot] and registerVal14 == (registerVal1 - 1.000000) and 0.000000 < registerVal15 then
		else
		end
	end
	return true
end

local function __FUNC_1E64_(arg0, arg1)
	local function __FUNC_1EFF_(arg1)
		local registerVal2 = CoD.ArenaUtility.GetStarCount(arg0)
		local registerVal3 = CoD.ArenaUtility.GetRankInfo(arg0)
		if registerVal3.mode == "stars_locked" then
			for index4=0.000000, (registerVal3.points - 1.000000), 1.000000 do
				local registerVal10 = {}
				local registerVal11 = {}
				if index4 >= registerVal2 then
				end
				registerVal11.earned = true
				registerVal10.models = registerVal11
				table.insert({}, registerVal10)
			end
		end
		return {}
	end

	local registerVal3 = DataSourceHelpers.ListSetup(arg1, __FUNC_1EFF_)
	DataSources[arg1] = registerVal3
	return arg1
end

local function __FUNC_20AF_(arg0)
	local registerVal1 = CoD.ArenaUtility.IsNewSeasonOverlayNeeded(arg0)
	if not registerVal1 then
		return 
	end
	local registerVal2 = Engine.GetCurrentArenaSeason()
	local registerVal3, registerVal4 = LuaUtils.GetArenaPlaylistInfo()
	local registerVal5 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	for index7=0.000000, (# - 1.000000), 1.000000 do
		local registerVal12 = registerVal5.arenaStats[index7].season:get()
		registerVal12 = registerVal5.arenaStats[index7].season:get()
		if registerVal12 == (registerVal2 - 1.000000) or 0.000000 < registerVal12 then
			registerVal12 = registerVal5.arenaStats[index7].points:get()
			local registerVal13 = CoD.ArenaUtility.GetBonusStarCount(registerVal12)
			local registerVal14 = Engine.TableLookupGetColumnValueForRow(CoD.ArenaUtility.ArenaPlaylistNamesTable, index7, CoD.ArenaUtility.ArenaPlaylistNameColumn)
			if 0.000000 < registerVal13 then
				local registerVal17 = {}
				local registerVal18 = {}
				local registerVal19 = Engine.Localize(registerVal14)
				registerVal18.playlistName = registerVal19
				registerVal18.previousSeasonPoints = registerVal12
				local registerVal22 = tostring(index7)
				registerVal19 = __FUNC_1E64_(registerVal12, ("previousSeasonStars" .. registerVal22))
				registerVal18.previousStarsDatasource = registerVal19
				registerVal18.newSeasonPoints = registerVal13
				registerVal22 = tostring(index7)
				registerVal19 = __FUNC_1E64_(registerVal13, ("newSeasonStars" .. registerVal22))
				registerVal18.newStarsDatasource = registerVal19
				registerVal17.models = registerVal18
				table.insert({}, registerVal17)
			end
		end
	end
	CoD.ArenaUtility.ArenaNewSeasonStats = {}
end

CoD.ArenaUtility.SetNewSeasonOverlayStats = __FUNC_20AF_
function CoD.ArenaUtility.CheckSeason(arg0)
	local registerVal1 = IsPlayerConnectedToCodServers(arg0)
	if not registerVal1 then
		return 
	end
	CoD.ArenaUtility.SetNewSeasonOverlayStats(arg0)
	registerVal1 = Engine.GetCurrentArenaSeason()
	local registerVal3 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	if registerVal3 ~= nil then
		local registerVal5, registerVal6 = LuaUtils.GetArenaPlaylistInfo()
		local registerVal7, registerVal8, registerVal9 = ipairs(registerVal6)
		for index10,value11 in registerVal7, registerVal8, registerVal9 do
			CoD.ArenaUtility.TryFixUpSeason(registerVal3.arenaStats[value11.arenaSlot], registerVal1)
			local registerVal14 = registerVal3.arenaStats[value11.arenaSlot].season:get()
			if value11.arenaSlot ~= nil and 0.000000 <= value11.arenaSlot and registerVal3.arenaStats[value11.arenaSlot] ~= nil and registerVal14 ~= nil then
				local registerVal15 = math.abs((registerVal14 - registerVal1))
				if registerVal15 == 1.000000 then
					local registerVal16 = Engine.GetArenaPoints(arg0, value11.arenaSlot)
					local registerVal17 = CoD.ArenaUtility.GetBonusStarCount(registerVal16)
					local registerVal18 = CoD.ArenaUtility.IsBetaSeason(registerVal14)
					if registerVal18 then
						CoD.ArenaUtility.ClearSlot(registerVal3.arenaStats[value11.arenaSlot], registerVal1, 0.000000)
					else
						CoD.ArenaUtility.UpdateArenaBest(value11, registerVal3, registerVal3.arenaStats[value11.arenaSlot])
						CoD.ArenaUtility.ClearSlot(registerVal3.arenaStats[value11.arenaSlot], registerVal1, registerVal17)
					end
				else
					if 1.000000 < registerVal15 then
						registerVal16 = CoD.ArenaUtility.IsBetaSeason(registerVal14)
						if not registerVal16 then
							CoD.ArenaUtility.UpdateArenaBest(value11, registerVal3, registerVal3.arenaStats[value11.arenaSlot])
						end
						CoD.ArenaUtility.ClearSlot(registerVal3.arenaStats[value11.arenaSlot], registerVal1, 0.000000)
					end
				end
			end
		end
		registerVal6 = registerVal3.arenaPerSeasonStats.season:get()
		if registerVal3.arenaPerSeasonStats and registerVal6 and registerVal6 ~= registerVal1 then
			CoD.ArenaUtility.ClearSlot(registerVal3.arenaPerSeasonStats, registerVal1, 0.000000)
		end
	end
	if true == true then
		Engine.Exec(arg0, "uploadstats")
	end
end

function CoD.ArenaUtility.ArenaPregameStart(arg0)
	local registerVal1 = LuaUtils.IsArenaMode()
	if not registerVal1 then
		return 
	end
	registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	local registerVal3 = Engine.GetCurrentArenaSlot()
	if registerVal1 ~= nil and registerVal1.arenaStats ~= nil and registerVal3 ~= -1.000000 and registerVal1.arenaStats[registerVal3] ~= nil then
		local registerVal5 = registerVal1.arenaStats[registerVal3].points:get()
		local registerVal6 = CoD.ArenaUtility.GetRank(registerVal5)
		local registerVal7 = math.max((registerVal5 - 1.000000), 0.000000)
		local registerVal8 = CoD.ArenaUtility.GetRank(registerVal7)
		if registerVal6 == registerVal8 then
			registerVal1.arenaStats[registerVal3].points:set(registerVal7)
		end
		registerVal1.arenaStats[registerVal3].matchStartPoints:set(registerVal5)
		Engine.Exec(arg0, "uploadstats")
	end
end

function CoD.ArenaUtility.ArenaPregameError(arg0)
	local registerVal1 = LuaUtils.IsArenaMode()
	if not registerVal1 then
		return 
	end
	registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	local registerVal3 = Engine.GetCurrentArenaSlot()
	local registerVal5 = registerVal1.arenaStats[registerVal3].points:get()
	local registerVal6 = registerVal1.arenaStats[registerVal3].matchStartPoints:get()
	if registerVal1 ~= nil and registerVal1.arenaStats ~= nil and registerVal3 ~= -1.000000 and registerVal1.arenaStats[registerVal3] ~= nil and registerVal5 ~= registerVal6 then
		registerVal1.arenaStats[registerVal3].points:set(registerVal6)
		Engine.Exec(arg0, "uploadstats")
	end
end

function CoD.ArenaUtility.GetBestArenaPoints(arg0, arg1)
	if arg0 or not arg1.arenaBest then
		return 0.000000
	end
	local registerVal2 = arg1.arenaBest.points:get()
	for index4=0.000000, (# - 1.000000), 1.000000 do
		if arg1.arenaStats[index4] and arg1.arenaStats[index4].points then
			local registerVal9 = math.max(registerVal2, arg1.arenaStats[index4].points:get())
		end
	end
	return registerVal9
end

function CoD.ArenaUtility.AddArenaChallenges(arg0, arg1)
	CoD.ArenaUtility.AddArenaVetCallingCards(arg0, {})
	CoD.ArenaUtility.AddArenaBestCallingCards(arg0, {})
	local registerVal3, registerVal4, registerVal5 = ipairs({})
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		local registerVal10 = {}
		registerVal10.challengeRow = 0.000000
		registerVal10.imageID = value7.models.iconId
		registerVal10.isLocked = value7.models.isLocked
		registerVal10.isMastery = value7.properties.isMastery
		table.insert(arg1, registerVal10)
	end
end

function CoD.ArenaUtility.GetArenaVetCallingCardNameAndDescForBackgroundId(arg0, arg1)
	local registerVal2 = Engine.GetBackgroundsForCategoryName(arg0, "arenavet")
	for index5=1.000000, #, 1.000000 do
		if registerVal2[index5].id == arg1 then
			if index5 == #registerVal2[index5].id then
				local registerVal9 = Engine.Localize("CHALLENGE_ARENA_VET_SEASON_MASTER")
				Engine.Localize(("CHALLENGE_ARENA_VET_SEASON_MASTER" .. "_DESC"))
				return 
			end
			registerVal9 = Dvar.arena_seasonVetChallengeWins:get()
			local registerVal11 = tostring(index5)
			local registerVal10 = Engine.Localize(("CHALLENGE_ARENA_VET_SEASON_" .. registerVal11))
			Engine.Localize((("CHALLENGE_ARENA_VET_SEASON_" .. registerVal11) .. "_DESC"), registerVal9)
			return 
		end
	end
	return "", CoDLUIDecompiler.LuaRegister
end

function CoD.ArenaUtility.GetArenaBestCallingCardNameAndDescForBackgroundId(arg0, arg1)
	local registerVal2 = Engine.GetBackgroundsForCategoryName(arg0, "arenabest")
	local registerVal3, registerVal4, registerVal5 = ipairs(CoD.ArenaUtility.Ranks)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		if # < index6 then
		else
			if registerVal2[index6].id == arg1 then
				if value7.mode == "master" then
					local registerVal8 = Engine.Localize("MENU_ARENA_MASTER")
					Engine.Localize("MENU_CHALLENGES_ARENABEST_RANK_MASTER_DESC")
					return 
				end
				local registerVal9 = Engine.Localize("MENU_RANK_N", (value7.rank + 1.000000))
				Engine.Localize("MENU_CHALLENGES_ARENABEST_RANK_N_DESC", (value7.rank + 1.000000))
				return 
			end
		end
	end
	return "", CoDLUIDecompiler.LuaRegister
end

function CoD.ArenaUtility.AddArenaVetCallingCards(arg0, arg1, arg2, arg3)
	local registerVal4 = type(arg1)
	if registerVal4 ~= "table" then
		return 
	end
	registerVal4 = Dvar.arena_seasonVetChallengeWins:get()
	local registerVal5 = Engine.GetCurrentArenaSeason()
	local registerVal7 = Engine.GetBackgroundsForCategoryName(arg0, "arenavet")
	local registerVal8 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	local registerVal10 = registerVal8.arenaPerSeasonStats.season:get()
	local registerVal11 = registerVal8.arenaPerSeasonStats.wins:get()
	if registerVal10 ~= registerVal5 then
	end
	for index12=1.000000, #, 1.000000 do
		local registerVal18 = tostring(index12)
		local registerVal16 = Engine.Localize(("CHALLENGE_ARENA_VET_SEASON_" .. registerVal18))
		local registerVal19 = tostring(index12)
		local registerVal17 = Engine.Localize(("CHALLENGE_ARENA_VET_SEASON_" .. registerVal19 .. "_DESC"), registerVal4)
		if false then
			local registerVal20 = tostring((index12 - 1.000000))
			registerVal18 = Engine.Localize(("CHALLENGE_ARENA_VET_SEASON_" .. registerVal20))
			registerVal19 = Engine.Localize("CHALLENGE_ARENA_VET_SEASON_N_UNAVAILABLE", registerVal18)
		end
		registerVal18 = registerVal8.arenaChallengeSeasons[(index12 - 1.000000)]:get()
		if registerVal18 ~= 0.000000 then
		end
		if arg2 then
		else
		end
		if not (not (arg3 or registerVal4)) then
			local registerVal23 = {}
			local registerVal24 = {}
			registerVal24.title = registerVal16
			registerVal24.description = registerVal19
			registerVal24.iconId = registerVal7[index12].id
			registerVal24.maxTier = 0.000000
			registerVal24.currentTier = 0.000000
			registerVal24.statPercent = (0.000000 / registerVal4)
			local registerVal25 = Engine.Localize("MPUI_X_SLASH_Y", 0.000000, registerVal4)
			registerVal24.statFractionText = registerVal25
			registerVal24.tierStatus = ""
			registerVal24.xp = ""
			registerVal24.percentComplete = (0.000000 / registerVal4)
			registerVal24.isLocked = true
			registerVal24.hideProgress = false
			registerVal23.models = registerVal24
			registerVal24 = {}
			registerVal24.isMastery = false
			registerVal24.isDarkOps = false
			registerVal24.isPrestige = false
			registerVal23.properties = registerVal24
			table.insert(arg1, registerVal23)
		end
		if not false then
			if registerVal18 ~= registerVal5 then
			end
		end
	end
end

function CoD.ArenaUtility.GetArenaVetMasterCard(arg0)
	local registerVal1 = Engine.GetBackgroundsForCategoryName(arg0, "arenavet")
	local registerVal2 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	for index7=0.000000, (# - 1.000000), 1.000000 do
		local registerVal11 = registerVal2.arenaChallengeSeasons[index7]:get()
		if 0.000000 < registerVal11 then
		else
		end
	end
	local registerVal7 = {}
	local registerVal8 = {}
	local registerVal9 = Engine.Localize("CHALLENGE_ARENA_VET_SEASON_MASTER")
	registerVal8.title = registerVal9
	registerVal9 = Engine.Localize("CHALLENGE_ARENA_VET_SEASON_MASTER_DESC")
	registerVal8.description = registerVal9
	registerVal8.iconId = registerVal1[#registerVal9].id
	registerVal8.maxTier = 0.000000
	registerVal8.currentTier = 0.000000
	registerVal8.statPercent = ((0.000000 + 1.000000) / #)
	registerVal9 = Engine.Localize("MPUI_X_SLASH_Y", (0.000000 + 1.000000), #)
	registerVal8.statFractionText = registerVal9
	registerVal8.tierStatus = ""
	registerVal8.xp = ""
	registerVal8.percentComplete = ((0.000000 + 1.000000) / #)
	registerVal8.isLocked = true
	registerVal8.hideProgress = true
	registerVal8.challengeCategory = "arenavet"
	registerVal8.gameMode = Enum.eModes.MODE_MULTIPLAYER
	registerVal9 = Engine.Localize("MENU_MULTIPLAYER")
	registerVal8.gameModeName = registerVal9
	registerVal8.gameModeIcon = CoD.ChallengesUtility.GameModeIcons.MP
	registerVal7.models = registerVal8
	registerVal8 = {}
	registerVal8.isMastery = true
	registerVal8.isDarkOps = false
	registerVal8.isPrestige = false
	registerVal7.properties = registerVal8
	return registerVal7
end

function CoD.ArenaUtility.AddArenaBestCallingCards(arg0, arg1, arg2, arg3)
	local registerVal4 = type(arg1)
	if registerVal4 ~= "table" then
		return 
	end
	registerVal4 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	local registerVal5 = registerVal4.arenaBest.wins:get()
	local registerVal6 = registerVal4.arenaPerSeasonStats.wins:get()
	local registerVal7 = CoD.ArenaUtility.GetBestArenaPoints(arg0, registerVal4)
	local registerVal8 = CoD.ArenaUtility.GetRank(registerVal7)
	local registerVal9 = Engine.GetBackgroundsForCategoryName(arg0, "arenabest")
	local registerVal10, registerVal11, registerVal12 = ipairs(CoD.ArenaUtility.Ranks)
	for index13,value14 in registerVal10, registerVal11, registerVal12 do
		local registerVal15 = Engine.Localize("MENU_RANK_N", (value14.rank + 1.000000))
		local registerVal16 = Engine.Localize("MENU_CHALLENGES_ARENABEST_RANK_N_DESC", (value14.rank + 1.000000))
		if value14.mode == "master" then
			local registerVal17 = Engine.Localize("MENU_ARENA_MASTER")
			registerVal17 = Engine.Localize("MENU_CHALLENGES_ARENABEST_RANK_MASTER_DESC")
		else
			if value14.rank == 0.000000 then
				registerVal17 = Engine.Localize("MENU_CHALLENGES_ARENABEST_RANK_1_DESC")
			end
		end
		if registerVal8 >= value14.rank then
		end
		if registerVal8 == value14.rank and registerVal8 == 0.000000 then
			if registerVal7 == 0.000000 and registerVal5 ~= 0.000000 or registerVal6 ~= 0.000000 then
			end
		end
		if arg2 then
		else
		end
		if not (not (arg3 or registerVal4)) then
			local registerVal21 = {}
			local registerVal22 = {}
			registerVal22.title = registerVal17
			registerVal22.description = registerVal17
			registerVal22.iconId = registerVal9[index13].id
			registerVal22.maxTier = 0.000000
			registerVal22.currentTier = 0.000000
			registerVal22.statPercent = 0.000000
			registerVal22.statFractionText = ""
			registerVal22.tierStatus = ""
			registerVal22.xp = ""
			registerVal22.percentComplete = 0.000000
			registerVal22.isLocked = true
			registerVal22.hideProgress = true
			registerVal21.models = registerVal22
			registerVal22 = {}
			registerVal22.isMastery = false
			registerVal22.isDarkOps = false
			registerVal22.isPrestige = false
			registerVal21.properties = registerVal22
			table.insert(arg1, registerVal21)
		end
	end
end

function CoD.ArenaUtility.GetRecentArenaVetChallenges(arg0, arg1, arg2, arg3)
	local registerVal5 = arg1.arenaPerSeasonStats.wins:get()
	local registerVal6 = arg2.arenaPerSeasonStats.wins:get()
	local registerVal7 = Dvar.arena_seasonVetChallengeWins:get()
	if registerVal5 ~= registerVal6 and registerVal7 <= registerVal6 then
		CoD.ArenaUtility.AddArenaVetCallingCards(arg0, {})
		for index10=0.000000, (# - 1.000000), 1.000000 do
			local registerVal14 = arg1.arenaChallengeSeasons[index10]:get()
			local registerVal15 = arg2.arenaChallengeSeasons[index10]:get()
			if registerVal14 ~= registerVal15 then
				table.insert({}, {}[(index10 + 1.000000)])
				if not arg3 and index10 == (#table.insert - 1.000000) then
					table.insert({}, CoD.ArenaUtility.GetArenaVetMasterCard(arg0))
				else
				end
			end
		end
	end
	return {}
end

function CoD.ArenaUtility.GetRecentArenaBestChallenges(arg0, arg1, arg2)
	local registerVal4 = arg1.arenaBest.wins:get()
	local registerVal5 = arg1.arenaPerSeasonStats.wins:get()
	local registerVal6 = CoD.ArenaUtility.GetBestArenaPoints(arg0, arg1)
	local registerVal7 = CoD.ArenaUtility.GetBestArenaPoints(arg0, arg2)
	local registerVal8 = CoD.ArenaUtility.GetRank(registerVal6)
	local registerVal9 = CoD.ArenaUtility.GetRank(registerVal7)
	if registerVal8 == registerVal9 then
		if registerVal6 == 0.000000 and 0.000000 < registerVal7 and registerVal4 == 0.000000 and registerVal5 == 0.000000 then
			CoD.ArenaUtility.AddArenaBestCallingCards(arg0, {})
			table.insert({}, {}[(registerVal9 + 1.000000)])
		end
	end
	return {}
end

function CoD.ArenaUtility.PlayRecentArenaChallengeToasts(arg0)
	local registerVal1 = CoD.GetPlayerStats(arg0)
	local registerVal2 = CoD.GetPlayerStats(arg0, CoD.STATS_LOCATION_STABLE)
	local registerVal3 = CoD.ArenaUtility.GetRecentArenaBestChallenges(arg0, registerVal2, registerVal1)
	local registerVal4, registerVal5, registerVal6 = ipairs(registerVal3)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		CoD.OverlayUtility.ShowToast("ArenaChallengeCallingCard", value8.models.title, value8.models.description, nil, nil, nil, GetBackgroundByID(value8.models.iconId))
	end
	registerVal4 = CoD.ArenaUtility.GetRecentArenaVetChallenges(arg0, registerVal2, registerVal1, false)
	registerVal5, registerVal6, registerVal7 = ipairs(registerVal4)
	for index8,value9 in registerVal5, registerVal6, registerVal7 do
		CoD.OverlayUtility.ShowToast("ArenaChallengeCallingCard", value9.models.title, value9.models.description, nil, nil, nil, GetBackgroundByID(value9.models.iconId))
	end
end

CoD.ArenaUtility.Init()
