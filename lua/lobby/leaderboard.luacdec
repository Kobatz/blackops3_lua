-- Decompiled with CoDLUIDecompiler by JariK

require("lua.Lobby.Common.LobbyCore")
Lobby.Leaderboard = {}
Lobby.Leaderboard.MP = 0.000000
Lobby.Leaderboard.CALC_NOT_FOUND = -2.000000
local registerVal1 = {}
registerVal1.SUCCESS = 1.000000
registerVal1.FAILURE = 2.000000
Lobby.Leaderboard.ANTICHEAT_CONDITION = registerVal1
registerVal1 = {}
registerVal1.RANK = 65535.000000
registerVal1.RATING = 65534.000000
registerVal1.GAMERTAG = 65533.000000
registerVal1.INCREMENT_BY = 65532.000000
registerVal1.UI_CALCULATE_SCALE_AVG = 65531.000000
registerVal1.RATING_CALCULATE_PERCENTAGE = 65530.000000
Lobby.Leaderboard.STATS_COLUMN = registerVal1
registerVal1 = {}
registerVal1.LOSS = 0.000000
registerVal1.TIE = 1.000000
registerVal1.WIN = 2.000000
Lobby.Leaderboard.GAME_RESULT = registerVal1
Lobby.Leaderboard.MIN_PLAY_TIME = 120.000000
Lobby.Leaderboard.customMatchRecentlyPlayed = {}
function Lobby.Leaderboard.StartsWith(arg0, arg1)
	local registerVal2 = string.sub(arg0, 1.000000, string.len(arg1))
	if registerVal2 ~= arg1 then
	end
	return true
end

function Lobby.Leaderboard.XUIDMismatch(arg0)
	local registerVal1 = Engine.GetPlayerStats(arg0)
	local registerVal2 = Engine.GetXUID(arg0)
	local registerVal3 = registerVal1.playerxuid:get()
	if registerVal3 ~= registerVal2 then
		return 1.000000
	end
	return 0.000000
end

function Lobby.Leaderboard.OnClientAdded(arg0)
	if arg0.lobbyModule ~= Enum.LobbyModule.LOBBY_MODULE_CLIENT then
		return 
	end
	local registerVal1 = Engine.GetLobbyUIScreen()
	if registerVal1 ~= LobbyData.UITargets.UI_MPLOBBYONLINECUSTOMGAME.id then
		return 
	end
	local registerVal3 = Engine.IsLocalClient(arg0.xuid)
	local registerVal4 = Engine.GetPrimaryController()
	registerVal3 = Engine.IsFriendFromXUID(registerVal4, arg0.xuid)
	if registerVal3 == true or registerVal3 == true then
		return 
	end
	registerVal3, registerVal4, registerVal5 = pairs(Lobby.Leaderboard.customMatchRecentlyPlayed)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		if value7.xuid == arg0.xuid then
			table.remove(Lobby.Leaderboard.customMatchRecentlyPlayed, index6)
		else
		end
	end
	if (LuaEnums.LEADERBOARD_MAX_ROWS - 1.000000) <= #Lobby.Leaderboard.customMatchRecentlyPlayed then
		table.remove(Lobby.Leaderboard.customMatchRecentlyPlayed, 1.000000)
	end
	registerVal5 = {}
	registerVal5.xuid = arg0.xuid
	table.insert(Lobby.Leaderboard.customMatchRecentlyPlayed, registerVal5)
end

function Lobby.Leaderboard.PopulateCustomList(arg0)
	local registerVal1 = Engine.GetXUID64(arg0.controller)
	local registerVal4 = {}
	registerVal4.xuid = registerVal1
	table.insert(Lobby.Leaderboard.customMatchRecentlyPlayed, registerVal4)
	Engine.LeaderboardPopulateCustomList(Lobby.Leaderboard.customMatchRecentlyPlayed)
	table.remove(Lobby.Leaderboard.customMatchRecentlyPlayed, #Lobby.Leaderboard.customMatchRecentlyPlayed)
end

function Lobby.Leaderboard.GetScore(arg0)
	local registerVal1 = Engine.Leaderboard_GetDeltaStat(arg0, "playerstatslist", "score", "statvalue")
	return math.max(0.000000, registerVal1)
end

function Lobby.Leaderboard.GetPointsPerGame(arg0, arg1, arg2)
	local registerVal4 = Lobby.Leaderboard.StartsWith(arg0.lbNameID, "LB_MP_GM_")
	if registerVal4 then
		registerVal4 = Lobby.Leaderboard.GetGamesPlayed(arg1)
		local registerVal5 = Engine.Leaderboard_GetCachedByColName(arg1, "Games Played")
		if arg2 == Enum.LbTrackType.LB_TRK_ALLTIME and (registerVal4 + registerVal5) < LuaEnums.LB_MP_GAMES_NEEDED.ALLTIME then
			return -1.000000
		else
			if arg2 == Enum.LbTrackType.LB_TRK_MONTHLY and (registerVal4 + registerVal5) < LuaEnums.LB_MP_GAMES_NEEDED.MONTHLY then
				return -1.000000
			else
				if arg2 == Enum.LbTrackType.LB_TRK_WEEKLY and (registerVal4 + registerVal5) < LuaEnums.LB_MP_GAMES_NEEDED.WEEKLY then
					return -1.000000
				end
			end
		end
	end
	registerVal4 = Engine.Leaderboard_GetDeltaStat(arg1, "playerstatslist", "score", "statvalue")
	registerVal5 = Engine.Leaderboard_GetCachedByColName(arg1, "Points")
	registerVal5 = Lobby.Leaderboard.GetGamesPlayed(arg1)
	local registerVal6 = Engine.Leaderboard_GetCachedByColName(arg1, "Games Played")
	return math.max(0.000000, ((registerVal4 + registerVal5) / (registerVal5 + registerVal6)))
end

function Lobby.Leaderboard.GetScorePerMinute(arg0, arg1, arg2)
	local registerVal4 = Lobby.Leaderboard.StartsWith(arg0.lbNameID, "LB_MP_GM_")
	if registerVal4 then
		registerVal4 = Lobby.Leaderboard.GetGamesPlayed(arg1)
		local registerVal5 = Engine.Leaderboard_GetCachedByColName(arg1, "Games Played")
		if arg2 == Enum.LbTrackType.LB_TRK_ALLTIME and (registerVal4 + registerVal5) < LuaEnums.LB_MP_GAMES_NEEDED.ALLTIME then
			return -1.000000
		else
			if arg2 == Enum.LbTrackType.LB_TRK_MONTHLY and (registerVal4 + registerVal5) < LuaEnums.LB_MP_GAMES_NEEDED.MONTHLY then
				return -1.000000
			else
				if arg2 == Enum.LbTrackType.LB_TRK_WEEKLY and (registerVal4 + registerVal5) < LuaEnums.LB_MP_GAMES_NEEDED.WEEKLY then
					return -1.000000
				end
			end
		end
	end
	registerVal4 = Engine.Leaderboard_GetDeltaStat(arg1, "playerstatslist", "score", "statvalue")
	registerVal5 = Engine.Leaderboard_GetCachedByColName(arg1, "Score")
	registerVal5 = math.max(Lobby.Leaderboard.MIN_PLAY_TIME, Engine.Leaderboard_GetDeltaStat(arg1, "playerstatslist", "time_played_total", "statvalue"))
	local registerVal6 = Engine.Leaderboard_GetCachedByColName(arg1, "Time Played")
	return math.max(0.000000, ((registerVal4 + registerVal5) / ((registerVal5 + registerVal6) / 60.000000)))
end

function Lobby.Leaderboard.GetKillDeathRatio(arg0)
	local registerVal1 = Engine.Leaderboard_GetDeltaStat(arg0, "playerstatslist", "kills", "statvalue")
	local registerVal2 = Engine.Leaderboard_GetCachedByColName(arg0, "Kills")
	registerVal2 = Engine.Leaderboard_GetDeltaStat(arg0, "playerstatslist", "deaths", "statvalue")
	local registerVal3 = Engine.Leaderboard_GetCachedByColName(arg0, "Deaths")
	return math.max(0.000000, (((registerVal1 + registerVal2) / (registerVal2 + registerVal3)) * 100.000000))
end

function Lobby.Leaderboard.GetTimePlayed(arg0)
	local registerVal1 = Engine.Leaderboard_GetDeltaStat(arg0, "playerstatslist", "time_played_total", "statvalue")
	return math.max(Lobby.Leaderboard.MIN_PLAY_TIME, registerVal1)
end

function Lobby.Leaderboard.GetGamesPlayed(arg0)
	return 1.000000
end

function Lobby.Leaderboard.GetPrestige(arg0)
	local registerVal1 = Engine.GetDStat(arg0, "playerstatslist", "plevel", "statvalue")
	local registerVal2 = LuaUtils.IsGameModeParagonCapable(Engine.CurrentSessionMode())
	registerVal2 = Engine.GetPrestigeCap()
	if registerVal2 and registerVal1 == registerVal2 then
		registerVal2 = Engine.GetDStat(arg0, "playerstatslist", "paragon_rank", "statvalue")
		local registerVal3 = Engine.GetDStat(arg0, "playerstatslist", "paragon_icon_id", "statvalue")
		return LuaUtils.ConvertToPrestigeMerged(registerVal1, registerVal2, registerVal3)
	end
	return registerVal1
end

function Lobby.Leaderboard.GeneralCalc(arg0)
	if arg0.lbColName == "Time Played" then
		return Lobby.Leaderboard.GetTimePlayed(arg0.controller)
	else
		if arg0.lbColName == "Score Per Minute" then
			return Lobby.Leaderboard.GetScorePerMinute(arg0, arg0.controller, arg0.lbTrackType)
		else
			if arg0.lbColName == "Games Played" then
				return Lobby.Leaderboard.GetGamesPlayed(arg0.controller)
			else
				if arg0.lbColName == "Points Per Game" then
					return Lobby.Leaderboard.GetPointsPerGame(arg0, arg0.controller, arg0.lbTrackType)
				else
					if arg0.lbColName == "Prestige Level" then
						return Lobby.Leaderboard.GetPrestige(arg0.controller)
					end
				end
			end
		end
	end
	return Lobby.Leaderboard.CALC_NOT_FOUND
end

function Lobby.Leaderboard.IsFreeRunMap(arg0, arg1)
	if arg0[arg1] then
		if arg0[arg1].isFreeRunMap == nil or arg0[arg1].isFreeRunMap ~= true then
		end
		return true
	end
	return false
end

function Lobby.Leaderboard.GetBestTimeForFreerunMap(arg0, arg1)
	local registerVal2 = Engine.GetGDTMapsTable()
	local registerVal3 = Lobby.Leaderboard.IsFreeRunMap(registerVal2, arg1)
	if not registerVal3 then
		return 0.000000
	end
	local registerVal4 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_FR_STATS_ONLINE)
	if arg1 and registerVal4 and registerVal2[arg1] and registerVal2[arg1].freerunTrackIndex then
		local registerVal7 = registerVal4.freerunTrackTimes.track[registerVal2[arg1].freerunTrackIndex].topTimes[0.000000].time:get()
	end
	if registerVal7 == nil then
		return 0.000000
	end
	return registerVal7
end

function Lobby.Leaderboard.Global(arg0)
	local registerVal3 = Lobby.Leaderboard.GeneralCalc(arg0)
	if registerVal3 ~= Lobby.Leaderboard.CALC_NOT_FOUND then
		return registerVal3
	else
	end
	return 0.000000
end

function Lobby.Leaderboard.LB_MP_GM_KOTH(arg0)
	if arg0.lbColName == "KOTH Avg Time" then
		local registerVal3 = Engine.Leaderboard_GetCachedByColName(arg0.controller, "Games Played")
		local registerVal4 = Engine.Leaderboard_GetCachedByColName(arg0.controller, "Captured Time")
		local registerVal5 = Engine.Leaderboard_GetDeltaStat(arg0.controller, "playerstatslist", "objective_time", "statvalue")
		registerVal5 = math.max(1.000000, (registerVal3 + 1.000000))
		return ((registerVal4 + registerVal5) / registerVal5)
	end
	return 0.000000
end

function Lobby.Leaderboard.LB_MP_GM_ESCORT(arg0)
	if arg0.lbColName == "ESCORT Avg Time" then
		local registerVal3 = Engine.Leaderboard_GetCachedByColName(arg0.controller, "Games Played")
		local registerVal4 = Engine.Leaderboard_GetCachedByColName(arg0.controller, "Escort Time")
		local registerVal5 = Engine.Leaderboard_GetDeltaStat(arg0.controller, "playerstatslist", "escorts", "statvalue")
		registerVal5 = math.max(1.000000, (registerVal3 + 1.000000))
		return ((registerVal4 + registerVal5) / registerVal5)
	end
	return 0.000000
end

function Lobby.Leaderboard.LB_MP_GM_FR(arg0)
	if arg0.lbColName == "FREERUN Time" then
		local registerVal5 = Dvar.ui_mapname:get()
		local registerVal6 = Lobby.Leaderboard.GetBestTimeForFreerunMap(arg0.controller, registerVal5)
		local registerVal7 = math.max(0.000000, (LuaUtils.LUA_INT_MAX - registerVal6))
	end
	return registerVal7
end

function Lobby.Leaderboard.Friend(arg0)
	local registerVal4 = Engine.GetLobbySessionGameData(Enum.LobbyModule.LOBBY_MODULE_CLIENT)
	if arg0.lbColName == registerVal4.gametype then
		local registerVal6 = Lobby.Leaderboard.GetScore(arg0.controller)
	end
	return registerVal6
end

function Lobby.Leaderboard.Gamemode(arg0)
	local registerVal3 = Lobby.Leaderboard.GeneralCalc(arg0)
	if registerVal3 ~= Lobby.Leaderboard.CALC_NOT_FOUND then
		return registerVal3
	else
	end
	registerVal3 = Lobby.Leaderboard.StartsWith(arg0.lbNameID, "LB_MP_GM_KOTH")
	if registerVal3 then
		return Lobby.Leaderboard.LB_MP_GM_KOTH(arg0)
	else
		registerVal3 = Lobby.Leaderboard.StartsWith(arg0.lbNameID, "LB_MP_GM_ESCORT")
		if registerVal3 then
			return Lobby.Leaderboard.LB_MP_GM_ESCORT(arg0)
		else
			registerVal3 = Lobby.Leaderboard.StartsWith(arg0.lbNameID, "LB_MP_GM_FR_")
			if registerVal3 then
				return Lobby.Leaderboard.LB_MP_GM_FR(arg0)
			end
		end
	end
	return 0.000000
end

function Lobby.Leaderboard.GetArenaStats(arg0)
	local registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	local registerVal2 = Engine.GetCurrentArenaSlot()
	return registerVal1.arenaStats[registerVal2]
end

function Lobby.Leaderboard.GetArenaSkill(arg0)
	local registerVal1 = Lobby.Leaderboard.GetArenaStats(arg0)
	return registerVal1.skill:get()
end

function Lobby.Leaderboard.GetArenaPowerRating(arg0)
	local registerVal1 = Lobby.Leaderboard.GetArenaStats(arg0)
	local registerVal2 = registerVal1.skill:get()
	return LuaUtils.GetArenaPowerRating(registerVal2)
end

function Lobby.Leaderboard.GetArenaWinPercentage(arg0)
	local registerVal1 = Lobby.Leaderboard.GetArenaStats(arg0)
	local registerVal2 = registerVal1.wins:get()
	local registerVal3 = registerVal1.losses:get()
	local registerVal4 = math.max((registerVal2 + registerVal3), 1.000000)
	return (registerVal2 / registerVal4)
end

function Lobby.Leaderboard.GetArenaAdjustedWinPct(arg0)
	local registerVal1 = Engine.GetCurrentArenaSlot()
	local registerVal2 = Engine.GetAdjustedWinPercentage(arg0, registerVal1)
	return registerVal2
end

function Lobby.Leaderboard.GetArenaScheduleStrength(arg0)
	local registerVal1 = Lobby.Leaderboard.GetArenaStats(arg0)
	local registerVal2 = Lobby.Leaderboard.GetArenaAdjustedWinPct(arg0)
	local registerVal3 = Lobby.Leaderboard.GetArenaWinPercentage(arg0)
	local registerVal4 = math.max(1.000000, registerVal3)
	return (registerVal2 / registerVal4)
end

function Lobby.Leaderboard.GetArenaGamesPlayed(arg0)
	local registerVal1 = Lobby.Leaderboard.GetArenaStats(arg0)
	local registerVal2 = registerVal1.wins:get()
	local registerVal3 = registerVal1.losses:get()
	local registerVal4 = registerVal1.ties:get()
	return ((registerVal2 + registerVal3) + registerVal4)
end

function Lobby.Leaderboard.ArenaMasters(arg0)
	if arg0.lbColName == "Skill" then
		return Lobby.Leaderboard.GetArenaSkill(arg0.controller)
	else
		if arg0.lbColName == "Power Rating" then
			return Lobby.Leaderboard.GetArenaPowerRating(arg0.controller)
		else
			if arg0.lbColName == "Win Pct" then
				return Lobby.Leaderboard.GetArenaWinPercentage(arg0.controller)
			else
				if arg0.lbColName == "Schedule Strength" then
					return Lobby.Leaderboard.GetArenaScheduleStrength(arg0.controller)
				else
					if arg0.lbColName == "Adjusted Win Pct" then
						return Lobby.Leaderboard.GetArenaAdjustedWinPct(arg0.controller)
					else
						if arg0.lbColName == "Games Played" then
							return Lobby.Leaderboard.GetArenaGamesPlayed(arg0.controller)
						end
					end
				end
			end
		end
	end
	return Lobby.Leaderboard.CALC_NOT_FOUND
end

function Lobby.Leaderboard.Anticheat(arg0)
	if arg0.lbColName == "XUID Mismatch" then
		return Lobby.Leaderboard.XUIDMismatch(arg0.controller)
	end
	return 0.000000
end

function Lobby.Leaderboard.CustomData(arg0)
	if arg0.lbColName == "Score Per Minute" then
		local registerVal3 = Engine.Leaderboard_GetScoreboardStat(arg0.controller, "Score")
		local registerVal4 = Engine.Leaderboard_GetCachedByColName(arg0.controller, "Score")
		registerVal4 = math.max(Lobby.Leaderboard.MIN_PLAY_TIME, Engine.Leaderboard_GetScoreboardStat(arg0.controller, "TimePlayed"))
		local registerVal5 = Engine.Leaderboard_GetCachedByColName(arg0.controller, "Time Played")
		return math.max(0.000000, ((registerVal3 + registerVal4) / ((registerVal4 + registerVal5) / 60.000000)))
	else
		if arg0.lbColName == "Time Played" then
			Engine.Leaderboard_GetScoreboardStat(arg0.controller, "TimePlayed")
			return math.max(Lobby.Leaderboard.MIN_PLAY_TIME, Engine.Leaderboard_GetScoreboardStat)
		else
			if arg0.lbColName == "W/L Ratio" then
				registerVal3 = Engine.Leaderboard_GetCachedByColName(arg0.controller, "Wins")
				registerVal4 = Engine.Leaderboard_GetCachedByColName(arg0.controller, "Losses")
				registerVal5 = Engine.Leaderboard_GetScoreboardStat(arg0.controller, "victory")
				if registerVal5 == Lobby.Leaderboard.GAME_RESULT.WIN then
				else
					if registerVal5 == Lobby.Leaderboard.GAME_RESULT.LOSS then
					end
				end
				local registerVal8 = math.max(1.000000, (registerVal4 + 1.000000))
				local registerVal6 = math.max(0.000000, ((registerVal3 + 1.000000) / registerVal8))
				return (registerVal6 * 100.000000)
			else
				if arg0.lbColName == "Wins" then
					registerVal3 = Engine.Leaderboard_GetScoreboardStat(arg0.controller, "victory")
					if registerVal3 == Lobby.Leaderboard.GAME_RESULT.WIN then
						return 1.000000
					end
					return 0.000000
				else
					if arg0.lbColName == "Losses" then
						registerVal3 = Engine.Leaderboard_GetScoreboardStat(arg0.controller, "victory")
						if registerVal3 == Lobby.Leaderboard.GAME_RESULT.LOSS then
							return 1.000000
						end
						return 0.000000
					else
						if arg0.lbColName == "Current Win Streak" then
							registerVal3 = Engine.Leaderboard_GetScoreboardStat(arg0.controller, "victory")
							if registerVal3 == 2.000000 then
								registerVal3 = Engine.Leaderboard_GetCached(arg0.controller, 4.000000)
								return (registerVal3 + 1.000000)
							end
							return 0.000000
						else
							if arg0.lbColName == "Max Win Streak" then
								registerVal3 = Engine.Leaderboard_GetScoreboardStat(arg0.controller, "victory")
								if registerVal3 == 2.000000 then
									registerVal3 = Engine.Leaderboard_GetCached(arg0.controller, 4.000000)
									return (registerVal3 + 1.000000)
								end
								return 0.000000
							else
								if arg0.lbColName == "Shots Hit" then
									return Engine.Leaderboard_GetScoreboardStat(arg0.controller, "shots_hit")
								else
									if arg0.lbColName == "Shots Missed" then
										return Engine.Leaderboard_GetScoreboardStat(arg0.controller, "shots_missed")
									else
										if arg0.lbColName == "Confirms" then
											return Engine.Leaderboard_GetScoreboardStat(arg0.controller, "kills_confirmed")
										else
											if arg0.lbColName == "Denies" then
												return Engine.Leaderboard_GetScoreboardStat(arg0.controller, "kills_denied")
											else
												if arg0.lbColName == "Clean Deposits" then
													return Engine.Leaderboard_GetScoreboardStat(arg0.controller, "clean_deposits")
												else
													if arg0.lbColName == "Clean Denies" then
														return Engine.Leaderboard_GetScoreboardStat(arg0.controller, "clean_denies")
													else
														if arg0.lbColName == "Captured Time" then
															return Engine.Leaderboard_GetScoreboardStat(arg0.controller, "objtime")
														else
															if arg0.lbColName == "KOTH Avg Time" then
																registerVal3 = Engine.Leaderboard_GetCachedByColName(arg0.controller, "Games Played")
																registerVal4 = Engine.Leaderboard_GetCachedByColName(arg0.controller, "Captured Time")
																registerVal5 = Engine.Leaderboard_GetScoreboardStat(arg0.controller, "objtime")
																registerVal5 = math.max(1.000000, (registerVal3 + 1.000000))
																return ((registerVal4 + registerVal5) / registerVal5)
															else
																if arg0.lbColName == "Points Per Game" then
																	registerVal3 = Engine.Leaderboard_GetScoreboardStat(arg0.controller, "points")
																	registerVal4 = Engine.Leaderboard_GetCachedByColName(arg0.controller, "Points")
																	registerVal4 = Lobby.Leaderboard.GetGamesPlayed(arg0.controller)
																	registerVal5 = Engine.Leaderboard_GetCachedByColName(arg0.controller, "Games Played")
																	return math.max(0.000000, ((registerVal3 + registerVal4) / (registerVal4 + registerVal5)))
																else
																	if arg0.lbColName == "Escort Time" then
																		return Engine.Leaderboard_GetScoreboardStat(arg0.controller, "escorts")
																	else
																		if arg0.lbColName == "ESCORT Avg Time" then
																			registerVal3 = Engine.Leaderboard_GetScoreboardStat(arg0.controller, "escorts")
																			registerVal4 = Engine.Leaderboard_GetCachedByColName(arg0.controller, "Escort Time")
																			registerVal4 = Lobby.Leaderboard.GetGamesPlayed(arg0.controller)
																			registerVal5 = Engine.Leaderboard_GetCachedByColName(arg0.controller, "Games Played")
																			registerVal5 = math.max(1.000000, (registerVal4 + registerVal5))
																			return ((registerVal3 + registerVal4) / registerVal5)
																		end
																	end
																end
															end
														end
													end
												end
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
	return Lobby.Leaderboard.CALC_NOT_FOUND
end

function Lobby.Leaderboard.Custom(arg0)
	local registerVal5 = Lobby.Leaderboard.CustomData(arg0)
	if registerVal5 == Lobby.Leaderboard.CALC_NOT_FOUND then
		registerVal5 = Engine.Leaderboard_GetScoreboardStat(arg0.controller, arg0.lbColName)
	end
	return registerVal5
end

function Lobby.Leaderboard.CalculateLBColValue(arg0)
	local registerVal6 = Lobby.Leaderboard.StartsWith(arg0.lbNameID, "LB_MP_GB_")
	if registerVal6 then
		registerVal6 = Lobby.Leaderboard.Global(arg0)
	else
		registerVal6 = Lobby.Leaderboard.StartsWith(arg0.lbNameID, "LB_MP_GM_")
		if registerVal6 then
			registerVal6 = Lobby.Leaderboard.Gamemode(arg0)
		else
			registerVal6 = Lobby.Leaderboard.StartsWith(arg0.lbNameID, "LB_MP_FRIEND_")
			if registerVal6 then
				registerVal6 = Lobby.Leaderboard.Friend(arg0)
			else
				registerVal6 = Lobby.Leaderboard.StartsWith(arg0.lbNameID, "LB_MP_ARENA_MASTERS_")
				if registerVal6 then
					registerVal6 = Lobby.Leaderboard.ArenaMasters(arg0)
					if registerVal6 == Lobby.Leaderboard.CALC_NOT_FOUND then
					else
						registerVal6 = Lobby.Leaderboard.StartsWith(arg0.lbNameID, "LB_MP_ANTICHEAT_GLOBAL")
						if registerVal6 then
							registerVal6 = Lobby.Leaderboard.Anticheat(arg0)
						else
							registerVal6 = Lobby.Leaderboard.StartsWith(arg0.lbNameID, "LB_MP_CG_")
							if registerVal6 then
								registerVal6 = Lobby.Leaderboard.Custom(arg0)
							end
						end
					end
				end
			end
		end
	end
	return registerVal6
end

function Lobby.Leaderboard.ShouldWrite_LB_MP_GB_HEADSHOTS(arg0)
	local registerVal1 = Engine.Leaderboard_GetDeltaStat(arg0.controller, "playerstatslist", "headshots", "statvalue")
	if 0.000000 < registerVal1 then
		return true
	end
	return false
end

function Lobby.Leaderboard.ShouldWriteFriend(arg0)
	local registerVal2 = Engine.GetLobbySessionGameData(Enum.LobbyModule.LOBBY_MODULE_CLIENT)
	local registerVal7 = Lobby.Leaderboard.StartsWith(arg0.lbNameID, "LB_MP_FRIEND_A")
	registerVal7 = string.match("ball conf ctf dem dom escort", registerVal2.gametype)
	registerVal7 = Lobby.Leaderboard.GetScore(arg0.controller)
	if registerVal7 and registerVal7 and 0.000000 < registerVal7 then
		return true
	else
		registerVal7 = Lobby.Leaderboard.StartsWith(arg0.lbNameID, "LB_MP_FRIEND_B")
		registerVal7 = string.match("gun koth sd tdm dm", registerVal2.gametype)
		registerVal7 = Lobby.Leaderboard.GetScore(arg0.controller)
		if registerVal7 and registerVal7 and 0.000000 < registerVal7 then
			return true
		end
	end
	return false
end

function Lobby.Leaderboard.OnShouldWriteLeaderboard(arg0)
	local registerVal4 = Engine.IsDedicatedServer()
	if not registerVal4 then
		if arg0.mode == Enum.eModes.MODE_MULTIPLAYER then
		else
			if arg0.mode == Enum.eModes.MODE_ZOMBIES then
			else
				if arg0.mode == Enum.eModes.MODE_CAMPAIGN then
				end
			end
		end
		local registerVal5, registerVal6 = Lobby.Anticheat.CheckIsFeatureBannedForIndex(arg0.controller, LuaEnums.FEATURE_BAN.LEADERBOARD_WRITE_CP)
		if 0.000000 <= LuaEnums.FEATURE_BAN.LEADERBOARD_WRITE_CP and registerVal5 then
			Engine.PrintInfo(Enum.consoleLabel.LABEL_LEADERBOARDS, ("Controller " .. arg0.controller .. " is banned from writing to this mode's leaderboards
"))
			return false
		end
	end
	if arg0.lbNameID == "LB_MP_GB_HEADSHOTS" then
		registerVal4 = Lobby.Leaderboard.ShouldWrite_LB_MP_GB_HEADSHOTS(arg0)
		if not registerVal4 then
			Engine.PrintInfo(Enum.consoleLabel.LABEL_LEADERBOARDS, ("Not uploading anticheat leaderboard " .. arg0.lbNameID .. " on controller index " .. (arg0.controller - 1.000000) .. ": Leaderboard condition did not pass, or leaderboard is not registered anticheat in lobby.lua
"))
		end
		return registerVal4
	else
		if arg0.lbNameID == "LB_MP_GB_DEATHS" then
			return true
		else
			registerVal4 = Lobby.Leaderboard.StartsWith(arg0.lbNameID, "LB_MP_ARENA_MASTERS_")
			if registerVal4 then
				registerVal4 = Engine.GetCurrentArenaSlot()
				return Engine.IsArenaMaster(arg0.controller, registerVal4)
			else
				registerVal4 = CoDShared.IsGameTypeDOA()
				if registerVal4 then
					registerVal4 = Lobby.Leaderboard.StartsWith(arg0.lbNameID, "LB_CP_DOA_BO3_SCORE_")
					registerVal4 = Lobby.Leaderboard.StartsWith(arg0.lbNameID, "LB_CP_DOA_BO3_ROUND_")
					if not arg0.mode or registerVal4 then
						registerVal4 = Engine.GetPlayerStats(arg0.controller)
						registerVal5 = registerVal4.deadOpsArcade.numPlayers:get()
						registerVal6 = tonumber(string.sub(arg0.lbNameID, 21.000000, -7.000000))
						if registerVal6 ~= registerVal5 then
						end
						return true
					end
				end
			end
		end
	end
	registerVal4 = Lobby.Leaderboard.StartsWith(arg0.lbNameID, "LB_MP_FRIEND_")
	if registerVal4 then
		registerVal4 = Lobby.Leaderboard.ShouldWriteFriend(arg0)
		result = registerVal4
		return result
	end
	return true
end

