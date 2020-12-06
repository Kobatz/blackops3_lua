-- Decompiled with CoDLUIDecompiler by JariK

require("lua.Lobby.Common.LobbyCore")
require("lua.Lobby.Process.LobbyProcessNavigate")
require("lua.Lobby.Process.LobbyProcess")
require("lua.Lobby.LobbyPregameManager")
require("lua.Shared.LobbyData")
require("lua.Shared.LuaEnums")
Lobby.Timer = {}
Lobby.Timer.MATCH_START_INVALID = -1.000000
local registerVal1 = {}
registerVal1.NOT_RUNNING = -1.000000
registerVal1.IDLE = 0.000000
registerVal1.WAIT_FOR_LOBBY_LOCK = 1.000000
registerVal1.VOTING = 2.000000
registerVal1.BEGIN = 3.000000
registerVal1.RESET_TO_NEED = 4.000000
registerVal1.NEED_PLAYERS = 5.000000
registerVal1.NEED_BALANCE = 6.000000
registerVal1.NEED_READYUP = 7.000000
registerVal1.STARTING = 8.000000
registerVal1.POST_GAME = 9.000000
registerVal1.FIND_NEW_LOBBY = 10.000000
Lobby.Timer.LOBBY_STATUS = registerVal1
registerVal1 = {}
registerVal1[Lobby.Timer.LOBBY_STATUS.NOT_RUNNING] = "NOT RUNNING"
registerVal1[Lobby.Timer.LOBBY_STATUS.IDLE] = "IDLE"
registerVal1[Lobby.Timer.LOBBY_STATUS.WAIT_FOR_LOBBY_LOCK] = "WAIT FOR LOBBY LOCK"
registerVal1[Lobby.Timer.LOBBY_STATUS.VOTING] = "VOTING"
registerVal1[Lobby.Timer.LOBBY_STATUS.BEGIN] = "BEGIN"
registerVal1[Lobby.Timer.LOBBY_STATUS.RESET_TO_NEED] = "RESET TO NEED"
registerVal1[Lobby.Timer.LOBBY_STATUS.NEED_PLAYERS] = "NEED PLAYERS"
registerVal1[Lobby.Timer.LOBBY_STATUS.NEED_BALANCE] = "NEED BALANCE"
registerVal1[Lobby.Timer.LOBBY_STATUS.NEED_READYUP] = "NEED READYUP"
registerVal1[Lobby.Timer.LOBBY_STATUS.STARTING] = "STARTING"
registerVal1[Lobby.Timer.LOBBY_STATUS.POST_GAME] = "POST GAME"
registerVal1[Lobby.Timer.LOBBY_STATUS.FIND_NEW_LOBBY] = "FIND NEW LOBBY"
Lobby.Timer.LOBBY_STATUS_STRING = registerVal1
Lobby.Timer.lastValue = 0.000000
Lobby.Timer.lobbyTimer = nil
function Lobby.Timer.ResetUIModel()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.CreateModel(registerVal1, "lobbyRoot.lobbyTimeRemaining")
	Engine.SetModelValue(registerVal0, 0.000000)
end

function Lobby.Timer.OnSessionStart(arg0)
	if arg0.lobbyType == Enum.LobbyType.LOBBY_TYPE_GAME then
		local registerVal5 = Engine.GetGlobalModel()
		local registerVal4 = Engine.CreateModel(registerVal5, "lobbyRoot.lobbyStatus")
		Engine.SetModelValue(registerVal4, "")
	end
end

function Lobby.Timer.OnSessionEnd(arg0)
	Lobby.Timer.ResetUIModel()
end

function Lobby.Timer.OnMatchStart(arg0)
	Lobby.Timer.Clear(true)
	Lobby.Pregame.OnMatchStart(arg0)
end

function Lobby.Timer.OnMatchEnd(arg0)
	local registerVal4 = Engine.IsLobbyHostActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	if arg0.lobbyModule == Enum.LobbyModule.LOBBY_MODULE_HOST and arg0.lobbyType ~= Enum.LobbyType.LOBBY_TYPE_GAME or not registerVal4 then
		return 
	end
	registerVal4 = Engine.GetLobbyHostControllerIndex(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal4 == -1.000000 then
	end
	local registerVal5 = Engine.GetLobbyUIScreen()
	local registerVal6 = LobbyData:UITargetFromId(registerVal5)
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "Lobby.Timer.MatchEnd: Game must have ended, start host timer.
")
	local registerVal7 = {}
	registerVal7.controller = 0.000000
	registerVal7.lobbyType = arg0.lobbyType
	registerVal7.mainMode = registerVal6.mainMode
	registerVal7.lobbyTimerType = registerVal6.lobbyTimerType
	registerVal7.matchEnded = true
	Lobby.Timer.HostingLobby(registerVal7)
	Lobby.Pregame.OnMatchEnd(registerVal7)
end

function Lobby.Timer.OnClientRemoved(arg0)
	if Lobby.Timer.lobbyTimer == nil then
		return 
	end
	local registerVal1 = LuaUtils.IsArenaMode()
	registerVal1 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal1 and registerVal1 and Lobby.Timer.lobbyTimer.status <= Lobby.Timer.LOBBY_STATUS.STARTING then
		Lobby.Timer.lobbyTimer.status = Lobby.Timer.LOBBY_STATUS.IDLE
		Lobby.Timer.lobbyTimer.endTime = Lobby.Timer.MATCH_START_INVALID
		Engine.SetGameLobbyStatusInfo(Lobby.Timer.lobbyTimer.status, 0.000000)
		Lobby.TeamSelection.ClearTeam(Enum.team_t.TEAM_FREE)
	end
end

function Lobby.Timer.LockInLobby(arg0)
	local registerVal1 = LuaUtils.IsArenaMode()
	if registerVal1 then
		registerVal1 = Lobby.Timer.LobbyIsLocked()
		registerVal1 = Engine.DvarBool(0.000000, "probation_league_enabled")
		if not registerVal1 and registerVal1 then
			Engine.SetArenaPregameMatchHistory(arg0)
		end
		local registerVal2 = Engine.GetGlobalModel()
		registerVal1 = Engine.GetModel(registerVal2, "lobbyRoot")
		registerVal2 = Engine.CreateModel(registerVal1, "lobbyLockedIn")
		Engine.SetModelValue(registerVal2, true)
	end
end

function Lobby.Timer.LobbyIsLocked()
	local registerVal0 = LuaUtils.IsArenaMode()
	if registerVal0 then
		return LuaUtils.LobbyIsLocked()
	end
	return false
end

function Lobby.Timer.UnlockLobby(arg0, arg1)
	local registerVal2 = Lobby.Timer.LobbyIsLocked()
	registerVal2 = Engine.DvarBool(0.000000, "probation_league_enabled")
	if registerVal2 and arg1 == true and registerVal2 then
		Engine.RollbackArenaPregameMatchHistory(arg0)
	end
	LuaUtils.UnlockLobby()
end

function Lobby.Timer.UpdateAdvertising(arg0)
	local registerVal1 = Engine.DvarBool(nil, "lobbyAdvertiseShowInMatchmaking")
	if registerVal1 == arg0 then
		return 
	end
	if arg0 then
		Lobby.Matchmaking.ChangeAdvertisedStatus(Enum.ShowInMatchmaking.SHOW_IN_MATCHMAKING_TRUE, true)
	else
		Lobby.Matchmaking.ChangeAdvertisedStatus(Enum.ShowInMatchmaking.SHOW_IN_MATCHMAKING_FALSE, true)
	end
end

function Lobby.Timer.Clear(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.CreateModel(registerVal2, "lobbyRoot.lobbyStatus")
	Engine.SetModelValue(registerVal1, "")
	if Lobby.Timer.lobbyTimer then
		if Lobby.Timer.lobbyTimer.lobbyTimerType == LuaEnums.TIMER_TYPE.AUTO_ZM or Lobby.Timer.lobbyTimer.lobbyTimerType == LuaEnums.TIMER_TYPE.AUTO_CP then
			Engine.ClearReadyUpData(Enum.LobbyModule.LOBBY_MODULE_HOST)
			Engine.ClearReadyUpData(Enum.LobbyModule.LOBBY_MODULE_CLIENT)
		end
	end
	Lobby.Timer.ResetUIModel()
	if arg0 == true then
		Engine.SetGameLobbyStatusInfo(Lobby.Timer.LOBBY_STATUS.IDLE, 0.000000)
	end
	Lobby.Timer.lastValue = 0.000000
	Lobby.Timer.lobbyTimer = nil
end

function Lobby.Timer.GetTimerType()
	if Lobby.Timer.lobbyTimer == nil then
		return LuaEnums.TIMER_TYPE.INVALID
	end
	return Lobby.Timer.lobbyTimer.lobbyTimerType
end

function Lobby.Timer.GetTimerStatus()
	if Lobby.Timer.lobbyTimer == nil then
		return Lobby.Timer.LOBBY_STATUS.NOT_RUNNING
	end
	return Lobby.Timer.lobbyTimer.status
end

function Lobby.Timer.AutoCPPump()
	if Lobby.Timer.lobbyTimer == nil then
		return 
	end
	local registerVal6 = Engine.GetLobbyClientCount(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal6 ~= 0.000000 then
	end
	Lobby.MapVote.ShowLockedIn()
	local registerVal9 = Engine.GetGlobalModel()
	local registerVal8 = Engine.CreateModel(registerVal9, "MapVote.timerActive")
	local registerVal10 = Engine.GetGlobalModel()
	registerVal9 = Engine.CreateModel(registerVal10, "lobbyRoot.lobbyTimeRemaining")
	local registerVal11 = Dvar.party_minplayers:get()
	local registerVal12 = Engine.GetLobbyClientCount(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_GAME, Enum.LobbyClientType.LOBBY_CLIENT_TYPE_ALL)
	local registerVal15 = Engine.GetLobbySessionGameData(Enum.LobbyModule.LOBBY_MODULE_HOST)
	local registerVal16, registerVal17, registerVal18 = pairs(registerVal15.clients)
	for index19,value20 in registerVal16, registerVal17, registerVal18 do
		if value20.readyUp == true then
		end
	end
	if registerVal12 < registerVal11 then
	end
	registerVal18 = Dvar.lobby_readyUpPercentRequired:get()
	registerVal17 = math.ceil((registerVal18 * registerVal11))
	registerVal16 = math.floor((registerVal17 - (0.000000 + 1.000000)))
	if true then
	else
		if Lobby.Timer.MATCH_START_INVALID == Lobby.Timer.MATCH_START_INVALID then
			registerVal17 = Dvar.lobbyCPTimerStartInterval:get()
			registerVal18 = Engine.milliseconds()
			registerVal18 = Engine.IsCampaignModeZombies()
			registerVal18 = Dvar.ui_gametype:get()
			if not Enum.LobbyType.LOBBY_TYPE_GAME or registerVal18 == "doa" then
				registerVal18 = Dvar.lobbyCPZMTimerStartInterval.exists()
				if registerVal18 then
					registerVal18 = Dvar.lobbyCPZMTimerStartInterval:get()
					registerVal18 = Engine.milliseconds()
				end
			end
			registerVal18 = Dvar.ui_gametype:get()
			if registerVal18 == "doa" then
				Engine.GameLobbySetMap("cp_doa_bo3")
			else
				if Lobby.Timer.LOBBY_STATUS.NEED_READYUP == Lobby.Timer.LOBBY_STATUS.NEED_READYUP then
					registerVal17 = Dvar.lobby_readyUpPercentRequired:get()
					if 0.000000 < registerVal17 then
						if 0.000000 < registerVal16 then
							registerVal18 = Engine.GetGlobalModel()
							registerVal17 = Engine.CreateModel(registerVal18, "lobbyRoot.lobbyStatus")
							if registerVal16 == 1.000000 then
								Engine.SetModelValue(registerVal17, Engine.Localize("MENU_WAITING_FOR_PLAYER_TO_BE_READY"))
							else
								Engine.SetModelValue(registerVal17, Engine.Localize("MENU_WAITING_FOR_PLAYERS_TO_BE_READY", registerVal16))
							end
						else
							registerVal17 = Dvar.lobbyCPTimerStartInterval:get()
							registerVal18 = Engine.milliseconds()
						else
						else
							if (registerVal18 + registerVal17) ~= Lobby.Timer.MATCH_START_INVALID then
								registerVal18 = Engine.GetGlobalModel()
								registerVal17 = Engine.CreateModel(registerVal18, "lobbyRoot.lobbyStatus")
								local registerVal19 = Engine.milliseconds()
								registerVal18 = math.floor((((registerVal18 + registerVal17) - registerVal19) / 1000.000000))
								if 0.000000 < registerVal18 then
									Engine.SetModelValue(registerVal17, Engine.Localize("MENU_GAME_STARTING_IN", registerVal18))
								else
									Engine.SetModelValue(registerVal17, "")
								end
								registerVal18 = Dvar.ui_gametype:get()
								registerVal18 = Dvar.lobby_readyUpPercentRequired:get()
								if registerVal18 == "doa" and 0.000000 < registerVal18 and 0.000000 < registerVal16 then
								end
								Lobby.Timer.lastValue = registerVal18
								Engine.PlaySound(LobbyData.Sounds.TimerTick)
								Engine.SetModelValue(registerVal8, 1.000000)
								if registerVal18 ~= Lobby.Timer.lastValue and registerVal18 <= 10.000000 then
									Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("Time left: " .. registerVal18 .. "
"))
								end
								if Engine.IsLobbyMigratActive then
									registerVal19 = Engine.IsLobbyMigratActive(Enum.LobbyType.LOBBY_TYPE_GAME)
								end
								registerVal19 = Lobby.ProcessQueue.IsQueueEmpty()
								registerVal19 = LobbyVM.LaunchGameExec(Lobby.Timer.lobbyTimer.controller, Enum.LobbyType.LOBBY_TYPE_GAME)
								if registerVal19 and registerVal19 == false and registerVal18 <= 0.000000 and registerVal19 == true then
									Engine.SetModelValue(registerVal17, "")
									Lobby.Timer.Clear(true)
									return 
								end
								registerVal19 = math.max(registerVal18, 0.000000)
							else
								Lobby.Timer.lastValue = 0.000000
								Engine.SetModelValue(registerVal8, 0.000000)
							end
						end
					end
				end
			end
		end
	end
	Engine.SetModelValue(registerVal9, registerVal18)
	Engine.SetGameLobbyStatusInfo(Lobby.Timer.LOBBY_STATUS.NEED_READYUP, registerVal19)
	Lobby.Timer.lobbyTimer.status = Lobby.Timer.LOBBY_STATUS.NEED_READYUP
	Lobby.Timer.lobbyTimer.endTime = Lobby.Timer.MATCH_START_INVALID
end

function Lobby.Timer.AutoCPPumpEnd()
	if Lobby.Timer.lobbyTimer == nil then
		return true
	end
	Lobby.MapVote.Hide()
	Lobby.Timer.Clear(false)
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "Lobby.Timer.AutoMPPumpEnd: Kill lobby timer.
")
	return true
end

function Lobby.Timer.AutoCPPumpClient(arg0)
	local registerVal6 = Engine.GetGlobalModel()
	local registerVal5 = Engine.CreateModel(registerVal6, "lobbyRoot.lobbyStatus")
	local registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.CreateModel(registerVal7, "lobbyRoot.lobbyTimeRemaining")
	if arg0.status ~= Lobby.Timer.LOBBY_STATUS.STARTING then
		Lobby.Timer.lastValue = 0.000000
	end
	Lobby.MapVote.ShowLockedIn()
	if arg0.status == Lobby.Timer.LOBBY_STATUS.IDLE then
		Engine.SetModelValue(registerVal5, "")
	else
		if arg0.status == Lobby.Timer.LOBBY_STATUS.STARTING then
			if 0.000000 < arg0.statusValue then
				Engine.SetModelValue(registerVal5, Engine.Localize("MENU_GAME_STARTING_IN", arg0.statusValue))
			else
				Engine.SetModelValue(registerVal5, "")
			end
			Lobby.Timer.lastValue = arg0.statusValue
			Engine.PlaySound(LobbyData.Sounds.TimerTick)
			Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYCLIENT, ("client time left: " .. arg0.statusValue .. "
"))
			if arg0.statusValue ~= Lobby.Timer.lastValue and arg0.status == Lobby.Timer.LOBBY_STATUS.NEED_READYUP then
				if arg0.statusValue == 1.000000 then
					Engine.SetModelValue(registerVal5, Engine.Localize("MENU_WAITING_FOR_PLAYER_TO_BE_READY"))
				else
					Engine.SetModelValue(registerVal5, Engine.Localize("MENU_WAITING_FOR_PLAYERS_TO_BE_READY", arg0.statusValue))
				end
			end
		end
	end
	Engine.SetModelValue(registerVal6, arg0.statusValue)
end

function Lobby.Timer.AutoMPPump()
	if Lobby.Timer.lobbyTimer == nil then
		return 
	end
	local registerVal8 = Engine.GetLobbyClientCount(Lobby.Timer.lobbyTimer.lobbyType)
	local registerVal9 = Dvar.party_minplayers:get()
	local registerVal10 = math.max(0.000000, (registerVal9 - registerVal8))
	if registerVal8 ~= 0.000000 then
	end
	local registerVal13 = Engine.GetGlobalModel()
	local registerVal12 = Engine.CreateModel(registerVal13, "lobbyRoot.lobbyStatus")
	local registerVal14 = Engine.GetGlobalModel()
	registerVal13 = Engine.CreateModel(registerVal14, "lobbyRoot.lobbyTimeRemaining")
	LobbyVM.CheckSpecialPlaylistRules(Lobby.Timer.lobbyTimer.controller)
	if Lobby.Timer.lobbyTimer.endTime ~= Lobby.Timer.MATCH_START_INVALID then
		local registerVal18 = Engine.milliseconds()
		local registerVal16 = math.max(0.000000, (Lobby.Timer.lobbyTimer.endTime - registerVal18))
		registerVal16 = math.floor((registerVal16 / 1000.000000))
	end
	if Lobby.Timer.lobbyTimer.status ~= Lobby.Timer.LOBBY_STATUS.STARTING then
		Lobby.Timer.lastValue = 0.000000
	end
	if not Lobby.Timer.lobbyTimer.lobbyType or Lobby.Timer.lobbyTimer.status == Lobby.Timer.LOBBY_STATUS.IDLE then
		Lobby.MapVote.Hide()
		registerVal16 = LuaUtils.IsArenaMode()
		if registerVal16 then
		else
			registerVal16 = LuaUtils.Mods_IsUsingMods()
			if registerVal16 then
			else
			end
		end
	else
		if Lobby.Timer.LOBBY_STATUS.VOTING == Lobby.Timer.LOBBY_STATUS.WAIT_FOR_LOBBY_LOCK then
			Lobby.Timer.UnlockLobby(Lobby.Timer.lobbyTimer.controller, true)
			if 0.000000 < registerVal10 then
				if registerVal10 == 1.000000 then
					Engine.SetModelValue(registerVal12, Engine.Localize("MENU_WAITING_FOR_1_MORE_PLAYER"))
				else
					Engine.SetModelValue(registerVal12, Engine.Localize("MENU_WAITING_FOR_MORE_PLAYERS", registerVal10))
				end
			else
				Lobby.Timer.LockInLobby(Lobby.Timer.lobbyTimer.controller)
				Lobby.TeamSelection.AutoSplitTeam(true, true)
				Lobby.MapVote.UpdateMapVoteInfo()
				Lobby.MapVote.LockedInVote()
				Engine.LobbyHost_SetAllClientsPregameState(Lobby.Pregame.ClientState.IDLE)
			else
				if Lobby.Timer.LOBBY_STATUS.BEGIN == Lobby.Timer.LOBBY_STATUS.VOTING then
					Lobby.MapVote.ShowVote()
					if Lobby.Timer.MATCH_START_INVALID == Lobby.Timer.MATCH_START_INVALID then
						registerVal16 = Engine.milliseconds()
						local registerVal17 = Dvar.lobbyTimerStatusVotingInterval:get()
						registerVal16 = LuaUtils.IsArenaMode()
						if registerVal16 then
							registerVal16 = Engine.GetGametypeSetting("pregameItemVoteEnabled")
							if registerVal16 ~= 1.000000 then
							end
							registerVal17 = Engine.GetGametypeSetting("pregameDraftEnabled")
							if registerVal17 ~= 1.000000 then
							end
							registerVal18 = Engine.milliseconds()
							local registerVal19 = Engine.DvarInt(0.000000, "lobbyTimerStatusVotingInterval_Arena")
							Lobby.TeamSelection.ClearTeam(Enum.team_t.TEAM_FREE)
							registerVal18 = Engine.Localize("MENU_VOTINGTIMEREMAINING")
							Engine.SetModelValue(registerVal12, (registerVal18 .. ": " .. registerVal16))
							registerVal18 = Engine.milliseconds()
							registerVal16 = math.max(0.000000, ((registerVal18 + registerVal19) - registerVal18))
							if true and true and 0.000000 == registerVal16 then
								Lobby.MapVote.LockedInVote()
							else
								if Lobby.Timer.LOBBY_STATUS.BEGIN == Lobby.Timer.LOBBY_STATUS.BEGIN then
									Lobby.MapVote.ShowLockedIn()
									if Lobby.Timer.MATCH_START_INVALID == Lobby.Timer.MATCH_START_INVALID then
										registerVal16 = Engine.milliseconds()
										registerVal17 = Dvar.lobbyTimerStatusBeginInterval:get()
									else
										Engine.SetModelValue(registerVal12, Engine.Localize("MENU_MATCH_WILL_BEGIN"))
										registerVal18 = Engine.milliseconds()
										registerVal16 = math.max(0.000000, ((registerVal16 + registerVal17) - registerVal18))
										registerVal16 = LuaUtils.IsArenaMode()
										if 0.000000 == registerVal16 and registerVal16 then
										else
											if Lobby.Timer.LOBBY_STATUS.STARTING == Lobby.Timer.LOBBY_STATUS.RESET_TO_NEED then
												registerVal16 = LuaUtils.IsArenaMode()
												if registerVal16 then
													Lobby.MapVote.Hide()
													Engine.SetModelValue(registerVal12, "")
													Lobby.Timer.UpdateAdvertising(true)
												else
													if Lobby.Timer.LOBBY_STATUS.WAIT_FOR_LOBBY_LOCK == Lobby.Timer.LOBBY_STATUS.NEED_PLAYERS then
														Lobby.MapVote.ShowLockedIn()
														if 0.000000 < registerVal10 then
															if registerVal10 == 1.000000 then
																Engine.SetModelValue(registerVal12, Engine.Localize("MENU_WAITING_FOR_1_MORE_PLAYER"))
															else
																Engine.SetModelValue(registerVal12, Engine.Localize("MENU_WAITING_FOR_MORE_PLAYERS", registerVal10))
															end
														else
															registerVal17 = Engine.milliseconds()
															Lobby.Timer.lobbyTimer.balanceStartTime = registerVal17
															Lobby.TeamSelection.ClearTeam(Enum.team_t.TEAM_FREE)
														else
															if Lobby.Timer.LOBBY_STATUS.NEED_BALANCE == Lobby.Timer.LOBBY_STATUS.NEED_BALANCE then
																Lobby.MapVote.ShowLockedIn()
																if 0.000000 < registerVal10 then
																	Lobby.TeamSelection.ClearTeam(Enum.team_t.TEAM_FREE)
																else
																	registerVal17 = Engine.milliseconds()
																	if 10000.000000 < (registerVal17 - Lobby.Timer.lobbyTimer.balanceStartTime) then
																		registerVal18 = Engine.milliseconds()
																		Lobby.Timer.lobbyTimer.balanceStartTime = registerVal18
																	end
																	registerVal17 = Lobby.TeamSelection.AutoSplitTeam(true, true)
																	if registerVal17 then
																		registerVal18 = Dvar.lobbyMigrate_migrateToBestGameHostEnabled:get()
																		if registerVal18 == true then
																			Engine.MigrateToBestGameHost(Lobby.Timer.lobbyTimer.controller)
																		else
																			Engine.SetModelValue(registerVal12, Engine.Localize("MENU_WAITING_FOR_MORE_PLAYERS_TEAMS"))
																		else
																			if Lobby.Timer.LOBBY_STATUS.NEED_BALANCE == Lobby.Timer.LOBBY_STATUS.STARTING then
																				Lobby.MapVote.ShowLockedIn()
																				if 0.000000 < registerVal10 then
																					registerVal16 = LuaUtils.IsArenaMode()
																					if registerVal16 then
																						Lobby.TeamSelection.ClearTeam(Enum.team_t.TEAM_FREE)
																						Lobby.Timer.UnlockLobby(Lobby.Timer.lobbyTimer.controller, true)
																					else
																						Lobby.TeamSelection.ClearTeam(Enum.team_t.TEAM_FREE)
																					else
																						registerVal16 = LuaUtils.IsArenaMode()
																						registerVal16 = Lobby.TeamSelection.AutoSplitTeam(true, false)
																						if not registerVal16 and registerVal16 == false then
																							registerVal17 = Engine.milliseconds()
																							Lobby.Timer.lobbyTimer.balanceStartTime = registerVal17
																						else
																							if Lobby.Timer.MATCH_START_INVALID == Lobby.Timer.MATCH_START_INVALID then
																								registerVal16 = Engine.milliseconds()
																								registerVal17 = Dvar.lobbyTimerStatusStartInterval:get()
																							else
																								if 0.000000 < registerVal16 then
																									Engine.SetModelValue(registerVal12, Engine.Localize("MENU_GAME_STARTING_IN", registerVal16))
																								else
																									Engine.SetModelValue(registerVal12, "")
																								end
																								if registerVal16 ~= Lobby.Timer.lastValue then
																									Lobby.Timer.lastValue = registerVal16
																									Engine.PlaySound(LobbyData.Sounds.TimerTick)
																									Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("Time left: " .. registerVal16 .. "
"))
																								end
																								registerVal16 = LuaUtils.AllClientsSpectating()
																								if not registerVal16 then
																									registerVal16 = Engine.GetGametypeSetting(Lobby.Pregame.Settings.VOTE_ENABLED)
																									registerVal16 = Engine.GetGametypeSetting(Lobby.Pregame.Settings.DRAFT_ENABLED)
																									if registerVal16 == 1.000000 or registerVal16 == 1.000000 then
																										if registerVal16 <= 0.000000 then
																											Lobby.Timer.UpdateAdvertising(false)
																											Lobby.Pregame.Start()
																											Lobby.Timer.Clear(false)
																											return 
																										end
																									end
																								end
																								if Engine.IsLobbyMigratActive then
																									registerVal17 = Engine.IsLobbyMigratActive(Enum.LobbyType.LOBBY_TYPE_GAME)
																								end
																								registerVal17 = Lobby.ProcessQueue.IsQueueEmpty()
																								if registerVal17 and registerVal17 == false and registerVal16 <= 0.000000 then
																									registerVal17 = LuaUtils.IsArenaMode()
																									if not registerVal17 then
																										Lobby.TeamSelection.AutoSplitTeam(true, true)
																									end
																									registerVal17 = LobbyVM.LaunchGameExec(Lobby.Timer.lobbyTimer.controller, Lobby.Timer.lobbyTimer.lobbyType)
																									if registerVal17 == true then
																										Lobby.Timer.lobbyTimer.endFunc()
																										Lobby.Timer.Clear(true)
																										registerVal18 = Engine.GetPrimaryController()
																										Lobby.Timer.UnlockLobby(registerVal18, false)
																										return 
																									else
																										if Lobby.Timer.LOBBY_STATUS.STARTING == Lobby.Timer.LOBBY_STATUS.POST_GAME then
																											Lobby.MapVote.ShowEndResult()
																											if (registerVal16 + registerVal17) == Lobby.Timer.MATCH_START_INVALID then
																												registerVal16 = Engine.milliseconds()
																												registerVal17 = Dvar.lobbyTimerStatusPostGameInterval:get()
																											else
																												registerVal18 = Engine.Localize("MENU_GAME_ENDED")
																												Engine.SetModelValue(registerVal12, (registerVal18 .. ": " .. registerVal16))
																												registerVal18 = Engine.milliseconds()
																												registerVal16 = math.max(0.000000, ((registerVal16 + registerVal17) - registerVal18))
																												if registerVal16 == 0.000000 then
																													registerVal16 = LuaUtils.IsArenaMode()
																													if registerVal16 then
																														Engine.LobbyHost_SetAllClientsPregameState(Lobby.Pregame.ClientState.END)
																													else
																													else
																														if Lobby.Timer.LOBBY_STATUS.IDLE == Lobby.Timer.LOBBY_STATUS.FIND_NEW_LOBBY then
																															registerVal16 = Engine.LobbyGetSessionClients(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_GAME)
																															registerVal18, registerVal19, registerVal20 = ipairs(registerVal16.sessionClients)
																															for index21,value22 in registerVal18, registerVal19, registerVal20 do
																																if {}[value22.simpleLobbyID] == nil then
																																	{}[value22.simpleLobbyID] = {}
																																end
																																table.insert({}[value22.simpleLobbyID], value22)
																															end
																															registerVal18 = Engine.IsDedicatedServer()
																															if registerVal18 then
																																registerVal20, registerVal21, registerVal22 = pairs({})
																																for index23,value24 in registerVal20, registerVal21, registerVal22 do
																																	if 0.000000 < #value22 then
																																	end
																																end
																																registerVal20, registerVal21, registerVal22 = ipairs({})
																																local registerVal25, registerVal26, registerVal27 = pairs(value24)
																																for index28,value29 in registerVal25, registerVal26, registerVal27 do
																																	Engine.LobbyHost_DisconnectClient(Lobby.Timer.lobbyTimer.controller, Enum.LobbyType.LOBBY_TYPE_GAME, value29.xuid, Enum.LobbyDisconnectClient.LOBBY_DISCONNECT_CLIENT_HOSTRELOAD)
																																end
																															else
																																registerVal18, registerVal19, registerVal20 = ipairs({})
																																for index21,value22 in registerVal18, registerVal19, registerVal20 do
																																	local registerVal23, registerVal24, registerVal25 = pairs(value22)
																																	for index26,value27 in registerVal23, registerVal24, registerVal25 do
																																		Engine.LobbyHost_DisconnectClient(Lobby.Timer.lobbyTimer.controller, Enum.LobbyType.LOBBY_TYPE_GAME, value27.xuid, Enum.LobbyDisconnectClient.LOBBY_DISCONNECT_CLIENT_HOSTRELOAD)
																																	end
																																end
																															end
																															Lobby.TeamSelection.Clear()
																															Lobby.MapVote.Hide()
																															Lobby.Timer.UpdateAdvertising(true)
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
	if Lobby.Timer.lobbyTimer.status ~= Lobby.Timer.LOBBY_STATUS.IDLE then
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("Lobby.Timer.AutoMPPump status update: " .. Lobby.Timer.LOBBY_STATUS_STRING[Lobby.Timer.LOBBY_STATUS.IDLE] .. ".
"))
	end
	Lobby.Timer.lobbyTimer.status = Lobby.Timer.LOBBY_STATUS.IDLE
	Lobby.Timer.lobbyTimer.endTime = Lobby.Timer.MATCH_START_INVALID
	Engine.SetModelValue(registerVal13, registerVal16)
	Engine.SetGameLobbyStatusInfo(Lobby.Timer.lobbyTimer.status, registerVal10)
end

function Lobby.Timer.AutoMPPumpEnd()
	if Lobby.Timer.lobbyTimer == nil then
		return true
	end
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.CreateModel(registerVal1, "MapVote", true)
	Engine.SetModelValue(registerVal0, 0.000000)
	Lobby.Timer.Clear(false)
	local registerVal2 = Engine.GetPrimaryController()
	Lobby.Timer.UnlockLobby(registerVal2, false)
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "Lobby.Timer.AutoMPPumpEnd: Kill lobby timer.
")
	return true
end

function Lobby.Timer.AutoMPPumpClient(arg0)
	local registerVal6 = Engine.IsLobbyHost(arg0.lobbyType)
	if registerVal6 then
		return 
	end
	local registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.CreateModel(registerVal7, "lobbyRoot.lobbyStatus")
	local registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.CreateModel(registerVal8, "lobbyRoot.lobbyTimeRemaining")
	if arg0.status ~= Lobby.Timer.LOBBY_STATUS.STARTING then
		Lobby.Timer.lastValue = 0.000000
	end
	if arg0.status == Lobby.Timer.LOBBY_STATUS.IDLE then
		Lobby.MapVote.Hide()
		Engine.SetModelValue(registerVal6, "")
	else
		if arg0.status == Lobby.Timer.LOBBY_STATUS.WAIT_FOR_LOBBY_LOCK then
			Lobby.Timer.UnlockLobby(arg0.controller, true)
		else
			if arg0.status == Lobby.Timer.LOBBY_STATUS.RESET_TO_NEED then
				Lobby.Timer.UnlockLobby(arg0.controller, true)
			else
				if arg0.status == Lobby.Timer.LOBBY_STATUS.VOTING then
					local registerVal9 = LuaUtils.IsArenaMode()
					if registerVal9 then
						Lobby.Timer.LockInLobby(arg0.controller)
					end
					Lobby.MapVote.ShowVote()
					local registerVal11 = Engine.Localize("MENU_VOTINGTIMEREMAINING")
					Engine.SetModelValue(registerVal6, (registerVal11 .. ": " .. arg0.statusValue))
				else
					if arg0.status == Lobby.Timer.LOBBY_STATUS.BEGIN then
						registerVal9 = LuaUtils.IsArenaMode()
						if registerVal9 then
							Lobby.Timer.LockInLobby(arg0.controller)
						end
						Lobby.MapVote.ShowLockedIn()
						Engine.SetModelValue(registerVal6, Engine.Localize("MENU_MATCH_WILL_BEGIN"))
					else
						if arg0.status == Lobby.Timer.LOBBY_STATUS.NEED_PLAYERS then
							Lobby.MapVote.ShowLockedIn()
							if arg0.statusValue == 1.000000 then
								Engine.SetModelValue(registerVal6, Engine.Localize("MENU_WAITING_FOR_1_MORE_PLAYER"))
							else
								Engine.SetModelValue(registerVal6, Engine.Localize("MENU_WAITING_FOR_MORE_PLAYERS", arg0.statusValue))
							else
								if arg0.status == Lobby.Timer.LOBBY_STATUS.NEED_BALANCE then
									Lobby.MapVote.ShowLockedIn()
									Engine.SetModelValue(registerVal6, Engine.Localize("MENU_WAITING_FOR_MORE_PLAYERS_TEAMS"))
								else
									if arg0.status == Lobby.Timer.LOBBY_STATUS.STARTING then
										Lobby.MapVote.ShowLockedIn()
										if 0.000000 < arg0.statusValue then
											Engine.SetModelValue(registerVal6, Engine.Localize("MENU_GAME_STARTING_IN", arg0.statusValue))
										else
											Engine.SetModelValue(registerVal6, "")
										end
										if arg0.statusValue ~= Lobby.Timer.lastValue then
											Lobby.Timer.lastValue = arg0.statusValue
											Engine.PlaySound(LobbyData.Sounds.TimerTick)
											Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYCLIENT, ("client time left: " .. arg0.statusValue .. "
"))
										else
											if arg0.status == Lobby.Timer.LOBBY_STATUS.POST_GAME then
												local registerVal10 = Engine.GetPrimaryController()
												Lobby.Timer.UnlockLobby(registerVal10, false)
												Lobby.MapVote.ShowEndResult()
												if 0.000000 < arg0.statusValue then
													registerVal11 = Engine.Localize("MENU_GAME_ENDED")
													Engine.SetModelValue(registerVal6, (registerVal11 .. ": " .. arg0.statusValue))
												else
													Engine.SetModelValue(registerVal6, "")
												else
													if arg0.status == Lobby.Timer.LOBBY_STATUS.FIND_NEW_LOBBY then
														Lobby.MapVote.Hide()
														Engine.SetModelValue(registerVal6, "")
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
	Engine.SetModelValue(registerVal7, arg0.statusValue)
end

function Lobby.Timer.AutoZMPump()
	if Lobby.Timer.lobbyTimer == nil then
		return 
	end
	local registerVal6 = Engine.GetLobbyClientCount(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal7 = Dvar.party_minplayers:get()
	local registerVal8 = math.max(0.000000, (registerVal7 - registerVal6))
	if registerVal6 ~= 0.000000 then
	end
	Lobby.MapVote.ShowLockedIn()
	local registerVal11 = Engine.GetGlobalModel()
	local registerVal10 = Engine.CreateModel(registerVal11, "lobbyRoot.lobbyStatus")
	local registerVal12 = Engine.GetGlobalModel()
	registerVal11 = Engine.CreateModel(registerVal12, "MapVote.timerActive")
	local registerVal13 = Engine.GetGlobalModel()
	registerVal12 = Engine.CreateModel(registerVal13, "lobbyRoot.lobbyTimeRemaining")
	local registerVal14 = Engine.GetLobbyMaxClients(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal15 = Engine.GetLobbyClientCount(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_GAME, Enum.LobbyClientType.LOBBY_CLIENT_TYPE_ALL)
	local registerVal18 = Engine.GetLobbySessionGameData(Enum.LobbyModule.LOBBY_MODULE_HOST)
	local registerVal19, registerVal20, registerVal21 = pairs(registerVal18.clients)
	for index22,value23 in registerVal19, registerVal20, registerVal21 do
		if value23.readyUp == true then
		end
	end
	if registerVal15 < registerVal7 then
	end
	registerVal21 = Dvar.lobby_readyUpPercentRequired:get()
	registerVal20 = math.ceil((registerVal21 * registerVal7))
	registerVal19 = math.floor((registerVal20 - (0.000000 + 1.000000)))
	if true then
	else
		if Lobby.Timer.LOBBY_STATUS.IDLE == Lobby.Timer.LOBBY_STATUS.IDLE then
		else
			if Lobby.Timer.LOBBY_STATUS.NEED_PLAYERS == Lobby.Timer.LOBBY_STATUS.NEED_PLAYERS then
				if 0.000000 < registerVal8 then
					if registerVal8 == 1.000000 then
						Engine.SetModelValue(registerVal10, Engine.Localize("MENU_WAITING_FOR_1_MORE_PLAYER"))
					else
						Engine.SetModelValue(registerVal10, Engine.Localize("MENU_WAITING_FOR_MORE_PLAYERS", registerVal8))
					end
				else
				else
					if Lobby.Timer.LOBBY_STATUS.NEED_READYUP == Lobby.Timer.LOBBY_STATUS.NEED_READYUP then
						registerVal20 = Dvar.lobby_readyUpPercentRequired:get()
						if 0.000000 < registerVal20 then
							if 0.000000 < registerVal8 then
							else
								if 0.000000 < registerVal19 then
									if registerVal19 == 1.000000 then
										Engine.SetModelValue(registerVal10, Engine.Localize("MENU_WAITING_FOR_PLAYER_TO_BE_READY"))
									else
										Engine.SetModelValue(registerVal10, Engine.Localize("MENU_WAITING_FOR_PLAYERS_TO_BE_READY", registerVal19))
									end
								else
									registerVal20 = Dvar.lobbyTimerZMStartInterval:get()
									registerVal21 = Engine.milliseconds()
								else
									registerVal20 = Dvar.lobbyTimerZMStartInterval:get()
									registerVal21 = Engine.milliseconds()
								else
									if Lobby.Timer.LOBBY_STATUS.STARTING == Lobby.Timer.LOBBY_STATUS.STARTING then
										if 0.000000 < registerVal8 then
										else
											registerVal20 = Dvar.lobby_readyUpPercentRequired:get()
											if 0.000000 < registerVal20 and 0.000000 < registerVal19 then
											else
												registerVal21 = Engine.milliseconds()
												registerVal20 = math.floor((((registerVal21 + registerVal20) - registerVal21) / 1000.000000))
												if 0.000000 < registerVal20 then
													Engine.SetModelValue(registerVal10, Engine.Localize("MENU_GAME_STARTING_IN", registerVal20))
												else
													Engine.SetModelValue(registerVal10, "")
												end
												Lobby.Timer.lastValue = registerVal20
												Engine.SetModelValue(registerVal11, 1.000000)
												if registerVal20 ~= Lobby.Timer.lastValue and registerVal20 <= 10.000000 then
													Engine.PlaySound(LobbyData.Sounds.TimerTick)
													Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("Time left: " .. registerVal20 .. "
"))
												end
												if Engine.IsLobbyMigratActive then
													registerVal21 = Engine.IsLobbyMigratActive(Enum.LobbyType.LOBBY_TYPE_GAME)
												end
												registerVal21 = Lobby.ProcessQueue.IsQueueEmpty()
												registerVal21 = LobbyVM.LaunchGameExec(Lobby.Timer.lobbyTimer.controller, Enum.LobbyType.LOBBY_TYPE_GAME)
												if registerVal21 and registerVal21 == false and registerVal20 <= 0.000000 and registerVal21 == true then
													Engine.SetModelValue(registerVal10, "")
													Lobby.Timer.Clear(true)
													return 
												end
												registerVal21 = math.max(registerVal20, 0.000000)
											else
												Lobby.Timer.lastValue = 0.000000
												Engine.SetModelValue(registerVal11, 0.000000)
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
	Lobby.Timer.lobbyTimer.status = Lobby.Timer.LOBBY_STATUS.NEED_READYUP
	Lobby.Timer.lobbyTimer.endTime = Lobby.Timer.MATCH_START_INVALID
	Engine.SetModelValue(registerVal12, registerVal20)
	Engine.SetGameLobbyStatusInfo(Lobby.Timer.LOBBY_STATUS.NEED_READYUP, registerVal21)
end

function Lobby.Timer.AutoZMPumpEnd()
	if Lobby.Timer.lobbyTimer == nil then
		return true
	end
	Lobby.MapVote.Hide()
	Lobby.Timer.Clear(false)
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "Lobby.Timer.AutoMPPumpEnd: Kill lobby timer.
")
	return true
end

function Lobby.Timer.AutoZMPumpClient(arg0)
	local registerVal6 = Engine.GetGlobalModel()
	local registerVal5 = Engine.CreateModel(registerVal6, "lobbyRoot.lobbyStatus")
	local registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.CreateModel(registerVal7, "lobbyRoot.lobbyTimeRemaining")
	if arg0.status ~= Lobby.Timer.LOBBY_STATUS.STARTING then
		Lobby.Timer.lastValue = 0.000000
	end
	Lobby.MapVote.ShowLockedIn()
	if arg0.status == Lobby.Timer.LOBBY_STATUS.IDLE then
		Engine.SetModelValue(registerVal5, "")
	else
		if arg0.status == Lobby.Timer.LOBBY_STATUS.NEED_PLAYERS then
			if arg0.statusValue == 1.000000 then
				Engine.SetModelValue(registerVal5, Engine.Localize("MENU_WAITING_FOR_1_MORE_PLAYER"))
			else
				Engine.SetModelValue(registerVal5, Engine.Localize("MENU_WAITING_FOR_MORE_PLAYERS", arg0.statusValue))
			else
				if arg0.status == Lobby.Timer.LOBBY_STATUS.NEED_READYUP then
					if arg0.statusValue == 1.000000 then
						Engine.SetModelValue(registerVal5, Engine.Localize("MENU_WAITING_FOR_PLAYER_TO_BE_READY"))
					else
						Engine.SetModelValue(registerVal5, Engine.Localize("MENU_WAITING_FOR_PLAYERS_TO_BE_READY", arg0.statusValue))
					else
						if arg0.status == Lobby.Timer.LOBBY_STATUS.STARTING then
							if 0.000000 < arg0.statusValue then
								Engine.SetModelValue(registerVal5, Engine.Localize("MENU_GAME_STARTING_IN", arg0.statusValue))
							else
								Engine.SetModelValue(registerVal5, "")
							end
							Lobby.Timer.lastValue = arg0.statusValue
							if arg0.statusValue ~= Lobby.Timer.lastValue and arg0.statusValue <= 10.000000 then
								Engine.PlaySound(LobbyData.Sounds.TimerTick)
								Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYCLIENT, ("client time left: " .. arg0.statusValue .. "
"))
							end
						end
					end
				end
			end
		end
	end
	Engine.SetModelValue(registerVal6, arg0.statusValue)
end

function Lobby.Timer.ManualPump()
	if Lobby.Timer.lobbyTimer == nil then
		return 
	end
	local registerVal5 = Engine.GetLobbyClientCount(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal5 ~= 0.000000 then
	end
	Lobby.MapVote.ShowLockedIn()
	local registerVal8 = Engine.GetGlobalModel()
	local registerVal7 = Engine.CreateModel(registerVal8, "MapVote.timerActive")
	local registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.CreateModel(registerVal9, "lobbyRoot.lobbyTimeRemaining")
	if true then
		Lobby.Timer.lobbyTimer.status = Lobby.Timer.LOBBY_STATUS.IDLE
		Lobby.Timer.lobbyTimer.endTime = Lobby.Timer.MATCH_START_INVALID
	else
		if Lobby.Timer.lobbyTimer.endTime ~= Lobby.Timer.MATCH_START_INVALID then
			local registerVal11 = Engine.GetGlobalModel()
			local registerVal10 = Engine.CreateModel(registerVal11, "lobbyRoot.lobbyStatus")
			local registerVal12 = Engine.milliseconds()
			registerVal12 = math.floor(((Lobby.Timer.lobbyTimer.endTime - registerVal12) / 1000.000000))
			Lobby.Timer.lobbyTimer.status = Lobby.Timer.LOBBY_STATUS.STARTING
			if 0.000000 < registerVal12 then
				Engine.SetModelValue(registerVal10, Engine.Localize("MENU_GAME_STARTING_IN", registerVal12))
			else
				Engine.SetModelValue(registerVal10, "")
			end
			if registerVal12 ~= Lobby.Timer.lastValue then
				Lobby.Timer.lastValue = registerVal12
				Engine.PlaySound(LobbyData.Sounds.TimerTick)
				Engine.SetModelValue(registerVal7, 1.000000)
				Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("Time left: " .. registerVal12 .. "
"))
			end
			registerVal12 = CoDShared.IsLobbyMode(Enum.LobbyMode.LOBBY_MODE_THEATER)
			registerVal12 = LuaUtils.AllClientsSpectating()
			if not registerVal12 and not registerVal12 then
				registerVal12 = Engine.GetGametypeSetting(Lobby.Pregame.Settings.VOTE_ENABLED)
				registerVal12 = Engine.GetGametypeSetting(Lobby.Pregame.Settings.DRAFT_ENABLED)
				if registerVal12 == 1.000000 or registerVal12 == 1.000000 then
					if registerVal12 <= 0.000000 then
						Lobby.Pregame.Start()
						Lobby.Timer.Clear(false)
						return 
					end
				end
			end
			if Engine.IsLobbyMigratActive then
				local registerVal13 = Engine.IsLobbyMigratActive(Enum.LobbyType.LOBBY_TYPE_GAME)
			end
			registerVal13 = Lobby.ProcessQueue.IsQueueEmpty()
			if registerVal13 and registerVal13 == false and registerVal12 <= 0.000000 then
				registerVal13 = Lobby.Timer.GetTimerType()
				if registerVal13 == LuaEnums.TIMER_TYPE.THEATER then
					Engine.SetModelValue(registerVal10, "")
					Lobby.Timer.lobbyTimer.endTime = Lobby.Timer.MATCH_START_INVALID
					LobbyVM.LaunchDemoExec(Lobby.Timer.lobbyTimer.controller, Enum.LobbyType.LOBBY_TYPE_GAME)
					return 
				else
					registerVal13 = LobbyVM.LaunchGameExec(Lobby.Timer.lobbyTimer.controller, Enum.LobbyType.LOBBY_TYPE_GAME)
					if registerVal13 == true then
						Engine.SetModelValue(registerVal10, "")
						Lobby.Timer.lobbyTimer.endTime = Lobby.Timer.MATCH_START_INVALID
						return 
					end
				end
			end
			registerVal13 = math.max(registerVal12, 0.000000)
		else
			Lobby.Timer.lastValue = 0.000000
			Engine.SetModelValue(registerVal7, 0.000000)
		end
	end
	Engine.SetModelValue(registerVal8, registerVal12)
	Engine.SetGameLobbyStatusInfo(Lobby.Timer.LOBBY_STATUS.STARTING, registerVal13)
end

function Lobby.Timer.ManualPumpEnd()
	if Lobby.Timer.lobbyTimer == nil then
		return 
	end
	Lobby.MapVote.ShowLockedIn()
	if Lobby.Timer.lobbyTimer.endTime ~= Lobby.Timer.MATCH_START_INVALID then
		Lobby.Timer.lobbyTimer.endTime = Lobby.Timer.MATCH_START_INVALID
		local registerVal1 = Engine.GetGlobalModel()
		local registerVal0 = Engine.CreateModel(registerVal1, "lobbyRoot.lobbyStatus")
		Engine.SetModelValue(registerVal0, "")
		registerVal1 = Engine.GetGametypeSetting("teamAssignment")
		if registerVal1 == LuaEnums.TEAM_ASSIGNMENT.AUTO then
			Lobby.TeamSelection.ClearTeam(Enum.team_t.TEAM_ALLIES)
			Lobby.TeamSelection.ClearTeam(Enum.team_t.TEAM_AXIS)
		end
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "Lobby.Timer.ManualPumpEnd: Stop lobby timer.
")
		return false
	end
	Lobby.Timer.Clear(false)
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "Lobby.Timer.ManualPumpEnd: Kill lobby timer.
")
	return true
end

function Lobby.Timer.ManualPumpClient(arg0)
	local registerVal6 = Engine.GetGlobalModel()
	local registerVal5 = Engine.CreateModel(registerVal6, "lobbyRoot.lobbyStatus")
	local registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.CreateModel(registerVal7, "lobbyRoot.lobbyTimeRemaining")
	if arg0.status ~= Lobby.Timer.LOBBY_STATUS.STARTING then
		Lobby.Timer.lastValue = 0.000000
	end
	Lobby.MapVote.ShowLockedIn()
	if arg0.status == Lobby.Timer.LOBBY_STATUS.IDLE then
		Engine.SetModelValue(registerVal5, "")
	else
		if arg0.status == Lobby.Timer.LOBBY_STATUS.STARTING then
			if 0.000000 < arg0.statusValue then
				Engine.SetModelValue(registerVal5, Engine.Localize("MENU_GAME_STARTING_IN", arg0.statusValue))
			else
				Engine.SetModelValue(registerVal5, "")
			end
			if arg0.statusValue ~= Lobby.Timer.lastValue then
				Lobby.Timer.lastValue = arg0.statusValue
				Engine.PlaySound(LobbyData.Sounds.TimerTick)
				Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYCLIENT, ("client time left: " .. arg0.statusValue .. "
"))
			end
		end
	end
	Engine.SetModelValue(registerVal6, arg0.statusValue)
end

function Lobby.Timer.ModLoadPumpClient(arg0)
end

function Lobby.Timer.ModLoadPump()
	if Lobby.Timer.lobbyTimer == nil then
		return 
	end
	local registerVal0 = Lobby.ProcessQueue.IsQueueEmpty()
	registerVal0 = Lobby.ProcessQueue.GetQueueHead()
	if not registerVal0 and registerVal0.name == "LoadMod" then
		return 
	end
	LobbyVM.LaunchGameExec(Lobby.Timer.lobbyTimer.controller, Enum.LobbyType.LOBBY_TYPE_GAME)
	Lobby.Timer.ModLoadEnd()
end

function Lobby.Timer.ModLoadEnd()
	if Lobby.Timer.lobbyTimer == nil then
		return true
	end
	Lobby.Timer.Clear(false)
	local registerVal1 = Engine.GetPrimaryController()
	Lobby.Timer.UnlockLobby(registerVal1, false)
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "Lobby.Timer.ModLoadEndClient: Kill lobby timer.
")
	return true
end

function Lobby.Timer.ManualCPPump()
	if Lobby.Timer.lobbyTimer == nil then
		return 
	end
	local registerVal5 = Engine.GetLobbyClientCount(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal5 ~= 0.000000 then
	end
	Lobby.MapVote.ShowLockedIn()
	local registerVal8 = Engine.GetGlobalModel()
	local registerVal7 = Engine.CreateModel(registerVal8, "MapVote.timerActive")
	local registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.CreateModel(registerVal9, "lobbyRoot.lobbyTimeRemaining")
	if true then
		Lobby.Timer.lobbyTimer.status = Lobby.Timer.LOBBY_STATUS.IDLE
		Lobby.Timer.lobbyTimer.endTime = Lobby.Timer.MATCH_START_INVALID
	else
		if Lobby.Timer.lobbyTimer.endTime ~= Lobby.Timer.MATCH_START_INVALID then
			local registerVal11 = Engine.GetGlobalModel()
			local registerVal10 = Engine.CreateModel(registerVal11, "lobbyRoot.lobbyStatus")
			if registerVal5 == 1.000000 then
				Engine.SetModelValue(registerVal10, "")
				Lobby.Timer.lobbyTimer.endTime = Lobby.Timer.MATCH_START_INVALID
				LobbyVM.LaunchGameExec(Lobby.Timer.lobbyTimer.controller, Enum.LobbyType.LOBBY_TYPE_GAME)
			else
				local registerVal12 = Engine.milliseconds()
				registerVal12 = math.floor(((Lobby.Timer.lobbyTimer.endTime - registerVal12) / 1000.000000))
				if 0.000000 < registerVal12 then
					Engine.SetModelValue(registerVal10, Engine.Localize("MENU_GAME_STARTING_IN", registerVal12))
				else
					Engine.SetModelValue(registerVal10, "")
				end
				if registerVal12 ~= Lobby.Timer.lastValue then
					Lobby.Timer.lastValue = registerVal12
					Engine.PlaySound(LobbyData.Sounds.TimerTick)
					Engine.SetModelValue(registerVal7, 1.000000)
					Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("Time left: " .. registerVal12 .. "
"))
				end
				if Engine.IsLobbyMigratActive then
					local registerVal13 = Engine.IsLobbyMigratActive(Enum.LobbyType.LOBBY_TYPE_GAME)
				end
				registerVal13 = Lobby.ProcessQueue.IsQueueEmpty()
				registerVal13 = LobbyVM.LaunchGameExec(Lobby.Timer.lobbyTimer.controller, Enum.LobbyType.LOBBY_TYPE_GAME)
				if registerVal13 and registerVal13 == false and registerVal12 <= 0.000000 and registerVal13 == true then
					Engine.SetModelValue(registerVal10, "")
					Lobby.Timer.lobbyTimer.endTime = Lobby.Timer.MATCH_START_INVALID
					return 
				end
				registerVal13 = math.max(registerVal12, 0.000000)
			else
				Lobby.Timer.lastValue = 0.000000
				Engine.SetModelValue(registerVal7, 0.000000)
			end
		end
	end
	Engine.SetModelValue(registerVal8, registerVal12)
	Engine.SetGameLobbyStatusInfo(Lobby.Timer.LOBBY_STATUS.STARTING, registerVal13)
end

function Lobby.Timer.ManualCPPumpEnd()
	if Lobby.Timer.lobbyTimer == nil then
		return 
	end
	Lobby.MapVote.ShowLockedIn()
	if Lobby.Timer.lobbyTimer.endTime ~= Lobby.Timer.MATCH_START_INVALID then
		Lobby.Timer.lobbyTimer.endTime = Lobby.Timer.MATCH_START_INVALID
		local registerVal1 = Engine.GetGlobalModel()
		local registerVal0 = Engine.CreateModel(registerVal1, "lobbyRoot.lobbyStatus")
		Engine.SetModelValue(registerVal0, "")
		registerVal1 = Engine.GetGametypeSetting("teamAssignment")
		if registerVal1 == LuaEnums.TEAM_ASSIGNMENT.AUTO then
			Lobby.TeamSelection.Clear()
		end
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "Lobby.Timer.ManualPumpEnd: Stop lobby timer.
")
		return false
	end
	Lobby.Timer.Clear(false)
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "Lobby.Timer.ManualPumpEnd: Kill lobby timer.
")
	return true
end

function Lobby.Timer.ManualCPPumpClient(arg0)
	local registerVal6 = Engine.GetGlobalModel()
	local registerVal5 = Engine.CreateModel(registerVal6, "lobbyRoot.lobbyStatus")
	local registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.CreateModel(registerVal7, "lobbyRoot.lobbyTimeRemaining")
	if arg0.status ~= Lobby.Timer.LOBBY_STATUS.STARTING then
		Lobby.Timer.lastValue = 0.000000
	end
	Lobby.MapVote.ShowLockedIn()
	if arg0.status == Lobby.Timer.LOBBY_STATUS.IDLE then
		Engine.SetModelValue(registerVal5, "")
	else
		if arg0.status == Lobby.Timer.LOBBY_STATUS.STARTING then
			if 0.000000 < arg0.statusValue then
				Engine.SetModelValue(registerVal5, Engine.Localize("MENU_GAME_STARTING_IN", arg0.statusValue))
			else
				Engine.SetModelValue(registerVal5, "")
			end
			if arg0.statusValue ~= Lobby.Timer.lastValue then
				Lobby.Timer.lastValue = arg0.statusValue
				Engine.PlaySound(LobbyData.Sounds.TimerTick)
				Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYCLIENT, ("client time left: " .. arg0.statusValue .. "
"))
			end
		end
	end
	Engine.SetModelValue(registerVal6, arg0.statusValue)
end

function Lobby.Timer.TestingPump()
	if Lobby.Timer.lobbyTimer == nil then
		return 
	end
	local registerVal5 = Engine.GetLobbyClientCount(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal5 ~= 0.000000 then
	end
	Lobby.MapVote.ShowLockedIn()
	local registerVal8 = Engine.GetGlobalModel()
	local registerVal7 = Engine.CreateModel(registerVal8, "MapVote.timerActive")
	local registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.CreateModel(registerVal9, "lobbyRoot.lobbyTimeRemaining")
	if true then
		Lobby.Timer.lobbyTimer.status = Lobby.Timer.LOBBY_STATUS.IDLE
		Lobby.Timer.lobbyTimer.endTime = Lobby.Timer.MATCH_START_INVALID
	else
		if Lobby.Timer.lobbyTimer.endTime == Lobby.Timer.MATCH_START_INVALID then
			local registerVal12 = Engine.milliseconds()
			Lobby.Timer.lobbyTimer.endTime = (registerVal12 + 30000.000000)
		else
			if Lobby.Timer.lobbyTimer.endTime ~= Lobby.Timer.MATCH_START_INVALID then
				local registerVal11 = Engine.GetGlobalModel()
				local registerVal10 = Engine.CreateModel(registerVal11, "lobbyRoot.lobbyStatus")
				local registerVal13 = Engine.milliseconds()
				registerVal11 = math.floor(((Lobby.Timer.lobbyTimer.endTime - registerVal13) / 1000.000000))
				if 0.000000 < registerVal11 then
					Engine.SetModelValue(registerVal10, Engine.Localize("MENU_GAME_STARTING_IN", registerVal11))
				else
					Engine.SetModelValue(registerVal10, "")
				end
				Lobby.Timer.lastValue = registerVal11
				Engine.PlaySound(LobbyData.Sounds.TimerTick)
				Engine.SetModelValue(registerVal7, 1.000000)
				if registerVal11 ~= Lobby.Timer.lastValue and registerVal11 <= 10.000000 then
					Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("Time left: " .. registerVal11 .. "
"))
				end
				if registerVal11 <= 0.000000 then
					Engine.SetModelValue(registerVal10, "")
					Lobby.Timer.lobbyTimer.endTime = Lobby.Timer.MATCH_START_INVALID
					LobbyVM.LaunchGameExec(Lobby.Timer.lobbyTimer.controller, Enum.LobbyType.LOBBY_TYPE_GAME)
					Lobby.Timer.Clear(true)
					return 
				end
			else
				Lobby.Timer.lastValue = 0.000000
				Engine.SetModelValue(registerVal7, 0.000000)
			end
		end
	end
	Engine.SetModelValue(registerVal8, registerVal11)
	Engine.SetGameLobbyStatusInfo(Lobby.Timer.LOBBY_STATUS.STARTING, registerVal11)
end

function Lobby.Timer.TestingPumpEnd()
	if Lobby.Timer.lobbyTimer == nil then
		return true
	end
	Lobby.MapVote.Hide()
	Lobby.Timer.Clear(false)
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "Lobby.Timer.TestingPumpEnd: Kill lobby timer.
")
	return true
end

function Lobby.Timer.TestingPumpClient(arg0)
	local registerVal6 = Engine.GetGlobalModel()
	local registerVal5 = Engine.CreateModel(registerVal6, "lobbyRoot.lobbyStatus")
	local registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.CreateModel(registerVal7, "lobbyRoot.lobbyTimeRemaining")
	if arg0.status ~= Lobby.Timer.LOBBY_STATUS.STARTING then
		Lobby.Timer.lastValue = 0.000000
	end
	Lobby.MapVote.ShowLockedIn()
	if arg0.status == Lobby.Timer.LOBBY_STATUS.IDLE then
		Engine.SetModelValue(registerVal5, "")
	else
		if arg0.status == Lobby.Timer.LOBBY_STATUS.STARTING then
			if 0.000000 < arg0.statusValue then
				Engine.SetModelValue(registerVal5, Engine.Localize("MENU_GAME_STARTING_IN", arg0.statusValue))
			else
				Engine.SetModelValue(registerVal5, "")
			end
			if arg0.statusValue ~= Lobby.Timer.lastValue then
				Lobby.Timer.lastValue = arg0.statusValue
				Engine.PlaySound(LobbyData.Sounds.TimerTick)
				Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYCLIENT, ("client time left: " .. arg0.statusValue .. "
"))
			end
		end
	end
	Engine.SetModelValue(registerVal6, arg0.statusValue)
end

function Lobby.Timer.NonePump()
end

function Lobby.Timer.NonePumpEnd()
	Lobby.Timer.Clear(false)
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "Lobby.Timer.NonePumpEnd: Kill lobby timer.
")
	return true
end

function Lobby.Timer.NonePumpClient(arg0)
end

function Lobby.Timer.UpdateLobbyStatusInfo(arg0)
	local registerVal6 = Engine.IsLobbyHost(arg0.lobbyType)
	if registerVal6 then
		return 
	end
	registerVal6 = Engine.GetLobbyUIScreen()
	local registerVal7 = LobbyData:UITargetFromId(registerVal6)
	if registerVal7.lobbyTimerType == LuaEnums.TIMER_TYPE.NONE then
	else
		if registerVal7.lobbyTimerType == LuaEnums.TIMER_TYPE.AUTO_CP then
			Lobby.Timer.AutoCPPumpClient(arg0)
		else
			if registerVal7.lobbyTimerType == LuaEnums.TIMER_TYPE.AUTO_MP then
				Lobby.Timer.AutoMPPumpClient(arg0)
			else
				if registerVal7.lobbyTimerType == LuaEnums.TIMER_TYPE.AUTO_ZM then
					Lobby.Timer.AutoZMPumpClient(arg0)
				else
					if registerVal7.lobbyTimerType == LuaEnums.TIMER_TYPE.MANUAL then
						Lobby.Timer.ManualPumpClient(arg0)
					else
						if registerVal7.lobbyTimerType == LuaEnums.TIMER_TYPE.MANUAL_CP then
							Lobby.Timer.ManualCPPumpClient(arg0)
						else
							if registerVal7.lobbyTimerType == LuaEnums.TIMER_TYPE.READYUP then
								Lobby.Timer.ManualPumpClient(arg0)
							else
								if registerVal7.lobbyTimerType == LuaEnums.TIMER_TYPE.THEATER then
									Lobby.Timer.ManualPumpClient(arg0)
								else
									if registerVal7.lobbyTimerType == LuaEnums.TIMER_TYPE.MOD_LOAD then
										Lobby.Timer.ModLoadPumpClient(arg0)
									else
										if registerVal7.lobbyTimerType == LuaEnums.TIMER_TYPE.TESTING then
											Lobby.Timer.TestingPumpClient(arg0)
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

function Lobby.Timer.HostingLobby(arg0)
	if arg0.lobbyType ~= Enum.LobbyType.LOBBY_TYPE_GAME then
		return false
	end
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "Lobby.Timer.HostingLobby: Creating a lobby timer.
")
	Lobby.Pregame.Shutdown(arg0.controller)
	Lobby.Timer.Clear(true)
	Lobby.Timer.lobbyTimer = {}
	Lobby.Timer.lobbyTimer.controller = arg0.controller
	Lobby.Timer.lobbyTimer.lobbyType = arg0.lobbyType
	Lobby.Timer.lobbyTimer.mainMode = arg0.mainMode
	Lobby.Timer.lobbyTimer.lobbyTimerType = arg0.lobbyTimerType
	local registerVal6 = LuaUtils.IsArenaMode()
	if registerVal6 and arg0.matchEnded then
		Lobby.Timer.lobbyTimer.status = Lobby.Timer.LOBBY_STATUS.POST_GAME
		Lobby.Timer.UpdateAdvertising(false)
	else
		Lobby.Timer.lobbyTimer.status = Lobby.Timer.LOBBY_STATUS.IDLE
	end
	Lobby.Timer.lobbyTimer.endTime = Lobby.Timer.MATCH_START_INVALID
	Lobby.Timer.lobbyTimer.balanceStartTime = 0.000000
	if arg0.status ~= nil then
		if arg0.status == Lobby.Timer.LOBBY_STATUS.RESET_TO_NEED then
			Lobby.Timer.lobbyTimer.status = arg0.status
			Engine.SetGameLobbyStatusInfo(arg0.status, 0.000000)
		else
			if arg0.status ~= Lobby.Timer.LOBBY_STATUS.IDLE then
				Lobby.Timer.lobbyTimer.status = arg0.status
				if arg0.status == Lobby.Timer.LOBBY_STATUS.STARTING and arg0.statusValue < 5.000000 then
					registerVal6 = Dvar.lobbyTimerStatusStartInterval:get()
					arg0.statusValue = (registerVal6 / 1000.000000)
				end
				local registerVal7 = Engine.milliseconds()
				Lobby.Timer.lobbyTimer.endTime = (registerVal7 + (arg0.statusValue * 1000.000000))
				Engine.SetGameLobbyStatusInfo(arg0.status, arg0.statusValue)
			end
		end
	end
	if arg0.lobbyTimerType == LuaEnums.TIMER_TYPE.NONE then
		Lobby.Timer.lobbyTimer.pumpFunc = Lobby.Timer.NonePump
		Lobby.Timer.lobbyTimer.endFunc = Lobby.Timer.NonePumpEnd
	else
		if arg0.lobbyTimerType == LuaEnums.TIMER_TYPE.MOD_LOAD then
			Lobby.Timer.lobbyTimer.pumpFunc = Lobby.Timer.ModLoadPump
			Lobby.Timer.lobbyTimer.endFunc = Lobby.Timer.ModLoadEnd
		else
			if arg0.lobbyTimerType == LuaEnums.TIMER_TYPE.AUTO_CP then
				Lobby.Timer.lobbyTimer.pumpFunc = Lobby.Timer.AutoCPPump
				Lobby.Timer.lobbyTimer.endFunc = Lobby.Timer.AutoCPPumpEnd
			else
				if arg0.lobbyTimerType == LuaEnums.TIMER_TYPE.AUTO_MP then
					Lobby.Timer.lobbyTimer.pumpFunc = Lobby.Timer.AutoMPPump
					Lobby.Timer.lobbyTimer.endFunc = Lobby.Timer.AutoMPPumpEnd
				else
					if arg0.lobbyTimerType == LuaEnums.TIMER_TYPE.AUTO_ZM then
						Lobby.Timer.lobbyTimer.pumpFunc = Lobby.Timer.AutoZMPump
						Lobby.Timer.lobbyTimer.endFunc = Lobby.Timer.AutoZMPumpEnd
					else
						if arg0.lobbyTimerType ~= LuaEnums.TIMER_TYPE.MANUAL and arg0.lobbyTimerType == LuaEnums.TIMER_TYPE.READYUP or arg0.lobbyTimerType == LuaEnums.TIMER_TYPE.THEATER then
							Lobby.Timer.lobbyTimer.pumpFunc = Lobby.Timer.ManualPump
							Lobby.Timer.lobbyTimer.endFunc = Lobby.Timer.ManualPumpEnd
						else
							if arg0.lobbyTimerType == LuaEnums.TIMER_TYPE.MANUAL_CP then
								Lobby.Timer.lobbyTimer.pumpFunc = Lobby.Timer.ManualCPPump
								Lobby.Timer.lobbyTimer.endFunc = Lobby.Timer.ManualCPPumpEnd
							else
								if arg0.lobbyTimerType == LuaEnums.TIMER_TYPE.TESTING then
									Lobby.Timer.lobbyTimer.pumpFunc = Lobby.Timer.TestingPump
									Lobby.Timer.lobbyTimer.endFunc = Lobby.Timer.TestingPumpEnd
								end
							end
						end
					end
				end
			end
		end
	end
	return true
end

function Lobby.Timer.HostingLobbyEnd(arg0)
	if arg0.lobbyType ~= Enum.LobbyType.LOBBY_TYPE_GAME or Lobby.Timer.lobbyTimer == nil then
		return true
	end
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "lobbyRoot.lobbyStatus")
	Engine.SetModelValue(registerVal2, "")
	local registerVal4 = Engine.GetGlobalModel()
	registerVal3 = Engine.CreateModel(registerVal4, "lobbyRoot.hideMenusForGameStart")
	Engine.SetModelValue(registerVal3, 0.000000)
	return Lobby.Timer.lobbyTimer.endFunc()
end

function Lobby.Timer.LaunchGame(arg0)
	if Lobby.Timer.lobbyTimer == nil then
		return 
	end
	Lobby.Timer.lobbyTimer.data = arg0
	if Lobby.Timer.lobbyTimer.lobbyTimerType ~= LuaEnums.TIMER_TYPE.MANUAL and Lobby.Timer.lobbyTimer.lobbyTimerType == LuaEnums.TIMER_TYPE.READYUP or Lobby.Timer.lobbyTimer.lobbyTimerType == LuaEnums.TIMER_TYPE.THEATER then
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "Launch Game: setting game timer.
")
		local registerVal5 = Engine.milliseconds()
		local registerVal6 = Dvar.lobbyTimerStartInterval:get()
		Lobby.Timer.lobbyTimer.endTime = (registerVal5 + registerVal6)
		local registerVal4 = Engine.GetGametypeSetting("teamAssignment")
		registerVal4 = LuaUtils.IsArenaMode()
		if Lobby.Timer.lobbyTimer.endTime == Lobby.Timer.MATCH_START_INVALID and registerVal4 == LuaEnums.TEAM_ASSIGNMENT.AUTO and not registerVal4 and Lobby.Timer.lobbyTimer.lobbyTimerType ~= LuaEnums.TIMER_TYPE.THEATER then
			Lobby.TeamSelection.AutoSplitTeam(false)
		else
			if Lobby.Timer.lobbyTimer.lobbyTimerType == LuaEnums.TIMER_TYPE.MANUAL_CP then
				Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "Launch Game: setting CP game timer.
")
				registerVal5 = Engine.milliseconds()
				registerVal6 = Dvar.lobbyCPTimerStartInterval:get()
				Lobby.Timer.lobbyTimer.endTime = (registerVal5 + registerVal6)
				if Lobby.Timer.lobbyTimer.endTime == Lobby.Timer.MATCH_START_INVALID and Lobby.Timer.lobbyTimer.lobbyTimerType == LuaEnums.TIMER_TYPE.NONE then
					registerVal4 = Lobby.ProcessQueue.IsQueueEmpty()
					registerVal4 = Lobby.ProcessQueue.GetQueueHead()
					if not registerVal4 and registerVal4.name == "LoadMod" then
						registerVal6 = {}
						registerVal6.controller = Lobby.Timer.lobbyTimer.controller
						registerVal6.lobbyType = Lobby.Timer.lobbyTimer.lobbyType
						registerVal6.mainMode = Lobby.Timer.lobbyTimer.mainMode
						registerVal6.lobbyTimerType = LuaEnums.TIMER_TYPE.MOD_LOAD
						registerVal6.status = Lobby.Timer.LOBBY_STATUS_IDLE
						registerVal6.statusValue = statusValue
						Lobby.Timer.HostingLobby(registerVal6)
						return 
					end
					Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "Launch Game: starting game.
")
					LobbyVM.LaunchGameExec(Lobby.Timer.lobbyTimer.controller, Lobby.Timer.lobbyTimer.lobbyType)
					Lobby.Timer.Clear(true)
					registerVal5 = Engine.GetPrimaryController()
					Lobby.Timer.UnlockLobby(registerVal5, false)
				end
			end
		end
	end
end

function Lobby.Timer.Pump()
	LobbyVM.LobbyMonitor()
	LobbyVM.IngameMonitor()
	if Lobby.Timer.lobbyTimer == nil then
		return 
	end
	local registerVal0 = Engine.IsLobbyHostActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	if not registerVal0 then
		registerVal0 = Engine.IsLobbyClientActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	end
	if Lobby.Timer.lobbyTimer.pumpFunc == nil or Lobby.Timer.lobbyTimer.endFunc == nil then
		local registerVal4 = Util.IsNil(Lobby.Timer.lobbyTimer.pumpFunc)
		local registerVal6 = Util.IsNil(Lobby.Timer.lobbyTimer.endFunc)
		Engine.PrintError(Enum.consoleLabel.LABEL_LOBBYHOST, ("Lobby.Timer.Pump: (Lobby.Timer.lobbyTimer.pumpFunc == nil) == " .. registerVal4 .. ", (Lobby.Timer.lobbyTimer.endFunc == nil) == " .. registerVal6 .. ".
"))
		Engine.PrintError(Enum.consoleLabel.LABEL_LOBBYHOST, ("Lobby.Timer.Pump: lobbyType(" .. Lobby.Timer.lobbyTimer.lobbyType .. "), mainMode(" .. Lobby.Timer.lobbyTimer.mainMode .. "), lobbyTimerType(" .. Lobby.Timer.lobbyTimer.lobbyTimerType .. ").
"))
		local registerVal2 = Util.IsNil(Lobby.Timer.lobbyTimer.pumpFunc)
		Lobby.Timer.lobbyTimer.pumpFunc = registerVal2
		registerVal2 = Util.IsNil(Lobby.Timer.lobbyTimer.endFunc)
		Lobby.Timer.lobbyTimer.endFunc = registerVal2
		LuaUtils.LogQoS("timer_pump_issue", Lobby.Timer.lobbyTimer)
		Lobby.Timer.Clear(true)
		registerVal2 = Engine.GetPrimaryController()
		Lobby.Timer.UnlockLobby(registerVal2, false)
		return 
	end
	if registerVal0 then
		Lobby.Timer.lobbyTimer.pumpFunc()
		if Lobby.Timer.lobbyTimer.pumpFunc ~= nil and Lobby.Timer.lobbyTimer.endFunc ~= nil then
			Lobby.Timer.lobbyTimer.endFunc()
		end
	end
end

