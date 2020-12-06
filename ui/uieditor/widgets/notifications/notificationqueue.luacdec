-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Notifications.NotificationQueueWidgets.NotificationRewardQueue")
local registerVal7 = {}
registerVal7.CamoChallenges = "184 234 255"
registerVal7.ReticleChallenges = "239 88 57"
registerVal7.Challenges = "230 222 134"
registerVal7.WeaponLevelUp = "107 42 187"
registerVal7.RankUp = "69 218 255"
registerVal7.SpecialistChallenges = "247 204 15"
registerVal7.DailyContract = "168 162 124"
registerVal7.WeeklyContract = "168 162 124"
registerVal7.SideBetChallenges = "168 162 124"
registerVal7.SpecialContract = "168 162 124"
local registerVal8 = {}
registerVal8.Medal = 3.000000
local registerVal9 = {}
registerVal9.Medal = 2300.000000
registerVal9.CamoChallenges = 2000.000000
registerVal9.ReticleChallenges = 2000.000000
registerVal9.Challenges = 2000.000000
registerVal9.WeaponLevelUp = 2000.000000
registerVal9.RankUp = 3000.000000
registerVal9.SpecialistChallenges = 2000.000000
registerVal9.TrialComplete = 3000.000000
registerVal9.DailyContract = 2000.000000
registerVal9.WeeklyContract = 2000.000000
registerVal9.SideBetChallenges = 2000.000000
registerVal9.SpecialContract = 2000.000000
local registerVal10 = {}
registerVal10.Medal = 1.000000
registerVal10.CamoChallenges = 2.000000
registerVal10.ReticleChallenges = 3.000000
registerVal10.Challenges = 4.000000
registerVal10.WeaponLevelUp = 5.000000
registerVal10.SpecialistChallenges = 6.000000
registerVal10.RankUp = 7.000000
registerVal10.TrialComplete = 8.000000
registerVal10.DailyContract = 9.000000
registerVal10.WeeklyContract = 10.000000
registerVal10.SideBetChallenges = 11.000000
registerVal10.SpecialContract = 12.000000
local function __FUNC_670_(arg0, arg1)
	local registerVal2 = IsMultiplayer()
	if not registerVal2 then
		return false
	end
	registerVal2, registerVal3 = CoD.ChallengesUtility.GetChallengeRewardDisplayTier(arg0.rewardInfo)
	local registerVal4, registerVal5 = CoD.ChallengesUtility.GetChallengeRewardDisplayTier(arg1.rewardInfo)
	if registerVal3 == registerVal5 then
		if registerVal4 >= registerVal2 then
		end
		return true
	end
	return false
end

local registerVal12 = {}
registerVal12.CamoChallenges = __FUNC_670_
registerVal12.ReticleChallenges = __FUNC_670_
registerVal12.Challenges = __FUNC_670_
registerVal12.SpecialistChallenges = __FUNC_670_
local function __FUNC_7AA_(arg0, arg1)
	local registerVal2 = CoD.IsShoutcaster(arg1.controller)
	registerVal2 = CoD.ShoutcasterProfileVarBool(arg1.controller, "shoutcaster_playernotifications")
	if arg1 or registerVal2 then
		registerVal2 = Engine.IsVisibilityBitSet(arg0.controller, Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
		registerVal2 = Engine.IsVisibilityBitSet(arg0.controller, Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN)
		if not arg1 or registerVal2 then
			arg0:setAlpha(0.000000)
		end
	else
		arg0:setAlpha(1.000000)
	end
end

local function __FUNC_A0C_(arg0, arg1, arg2)
	arg0.controller = arg1
	arg0.menu = arg2
	local registerVal6 = Engine.GetModelForController(arg1)
	arg0:setModel(Engine.CreateModel(registerVal6, "NotificationQueue"))
	arg0.clearNotificationQueue = nil
	local registerVal4 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.CreateModel(registerVal4, "NotificationQueueEmpty")
	arg0.notificationQueueEmptyModel = registerVal3
	Engine.SetModelValue(arg0.notificationQueueEmptyModel, true)
	arg0.availableNotificationModels = {}
	registerVal4, registerVal5, registerVal6 = pairs(registerVal8)
	if 0.000000 <  then
	end
	for index4=1.000000, ( + 1.000000), 1.000000 do
		local registerVal11 = arg0:getModel()
		table.insert(arg0.availableNotificationModels, Engine.CreateModel(registerVal11, ("Notification" .. index4)))
	end
	arg0.notificationWidgetsBeingShown = {}
	arg0.notificationQueue = {}
	arg0.streamedImages = {}
	local function __FUNC_10C0_(arg2)
		local registerVal1 = Engine.GetModelValue(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = registerVal1
		local registerVal3 = CoD.GetScriptNotifyData(arg2)
		registerVal2.data = registerVal3
		if registerVal1 == "medal_received" then
			nil(arg0, registerVal2)
		else
			if registerVal1 == "challenge_complete" then
				registerVal3 = {}
				registerVal3.challengeID = registerVal2.data[1.000000]
				registerVal3.itemIndex = registerVal2.data[2.000000]
				registerVal3.challengeType = registerVal2.data[3.000000]
				registerVal3.tableNumber = registerVal2.data[4.000000]
				registerVal3.row = registerVal2.data[5.000000]
				registerVal3.maxVal = registerVal2.data[6.000000]
				registerVal3.rewardXP = registerVal2.data[7.000000]
				registerVal3.type = "Challenges"
				local registerVal4 = CoD.ChallengesUtility.IsSpecialistTransmissionChallenge(registerVal3.challengeType, registerVal3.tableNumber, registerVal3.row)
				registerVal4 = CoD.ChallengesUtility.IsTerribleKnifeChallenge(registerVal3.challengeType, registerVal3.tableNumber, registerVal3.row)
				registerVal4 = CoD.ChallengesUtility.IsHiddenPostShipChallenge(registerVal3.challengeType, registerVal3.tableNumber, registerVal3.row)
				registerVal4 = CoD.ChallengesUtility.IsSpecialContractChallenge(registerVal3.challengeType, registerVal3.tableNumber, registerVal3.row)
				if not registerVal4 and not registerVal4 and not registerVal1 or registerVal4 then
					return 
				end
				registerVal4 = CoD.ChallengesUtility.GetChallengeRewardInfo(arg1, registerVal3.tableNumber, registerVal3.row, registerVal3.challengeType, registerVal3.itemIndex, Engine.GetEquippedHero(arg1, Engine.CurrentSessionMode()))
				registerVal3.rewardInfo = registerVal4
				if registerVal3.challengeType == Enum.statsMilestoneTypes_t.MILESTONE_DAILY then
					registerVal4 = Engine.GetPlayerStats(arg1, CoD.STATS_LOCATION_NORMAL, Enum.eModes.MODE_ZOMBIES)
					local registerVal5 = registerVal4.PlayerStatsList.ZM_DAILY_CHALLENGE_START_TIME.statValue:get()
					local registerVal6 = registerVal4.PlayerStatsList.ZM_DAILY_CHALLENGE_INGAME_TIME.statValue:get()
					local registerVal7 = registerVal4.PlayerStatsList.ZM_DAILY_CHALLENGE_GAMES_PLAYED.statValue:get()
					Engine.RecordDailyChallengeCompleted(arg1, registerVal3.challengeID, registerVal5, registerVal6, registerVal7)
				end
				registerVal7 = {}
				registerVal7 = {registerVal3.rewardInfo.icon}
				nil(arg0, registerVal3, registerVal7)
			else
				if registerVal1 == "gun_level_complete" then
					registerVal5 = {}
					registerVal5.rank = registerVal2.data[1.000000]
					registerVal5.itemIndex = registerVal2.data[2.000000]
					registerVal5.attachmentIndex = registerVal2.data[3.000000]
					registerVal5.rewardXP = registerVal2.data[4.000000]
					registerVal5.type = "WeaponLevelUp"
					nil(arg0, registerVal5)
				else
					if registerVal1 == "rank_up" then
						registerVal5 = {}
						registerVal5.rank = registerVal2.data[1.000000]
						registerVal5.prestige = registerVal2.data[2.000000]
						registerVal5.unlockTokensAdded = registerVal2.data[3.000000]
						registerVal5.type = "RankUp"
						nil(arg0, registerVal5)
					else
						if registerVal1 == "trial_complete" then
							registerVal5 = {}
							registerVal5.name = registerVal2.data[1.000000]
							registerVal5.description = registerVal2.data[2.000000]
							registerVal5.icon = registerVal2.data[3.000000]
							registerVal5.type = "TrialComplete"
							nil(arg0, registerVal5)
						else
							if registerVal1 == "clear_notification_queue" then
								nil(arg0)
							else
								if registerVal1 == "mp_daily_challenge_complete" then
									registerVal5 = {}
									registerVal5.index = registerVal2.data[1.000000]
									if registerVal2.data[2.000000] == 0.000000 then
									end
									registerVal5.showRewards = true
									registerVal5.type = "DailyContract"
									nil(arg0, registerVal5)
								else
									if registerVal1 == "mp_weekly_challenge_complete" then
										registerVal5 = {}
										registerVal5.index = registerVal2.data[1.000000]
										if registerVal2.data[2.000000] == 0.000000 then
										end
										registerVal5.showRewards = true
										registerVal5.type = "WeeklyContract"
										nil(arg0, registerVal5)
									else
										if registerVal1 == "mp_special_contract_complete" then
											registerVal5 = {}
											registerVal5.index = registerVal2.data[1.000000]
											if registerVal2.data[2.000000] == 0.000000 then
											end
											registerVal5.showRewards = true
											registerVal5.type = "SpecialContract"
											nil(arg0, registerVal5)
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

	arg0:subscribeToGlobalModel(arg1, "PerController", "scriptNotify", __FUNC_10C0_)
	local function __FUNC_1E06_(arg0, arg1)
		if arg1.notificationContainer.fadingOffQueue then
			return 
		end
		arg1.notificationContainer.timeUp = true
		local registerVal2 = arg1.notificationContainer.widget:hasClip("TimeUp")
		if registerVal2 then
			arg1.notificationContainer.widget:playClip("TimeUp")
			local function __FUNC_2062_(arg1, arg2)
				nil(arg0)
			end

			arg1.notificationContainer.widget:registerEventHandler("clip_over", __FUNC_2062_)
		else
			arg1.notificationContainer:beginAnimation("time_up", 500.000000)
			arg1.notificationContainer:setAlpha(0.000000)
			local function __FUNC_2098_(arg1, arg2)
				nil(arg0)
			end

			arg1.notificationContainer:registerEventHandler("transition_complete_time_up", __FUNC_2098_)
		end
	end

	arg0:registerEventHandler("notification_time_up", __FUNC_1E06_)
	local function __FUNC_20D0_(arg0, arg1)
		arg0.queueAnimating = nil
		nil(arg0)
	end

	arg0:registerEventHandler("queue_done_animating", __FUNC_20D0_)
	local function __FUNC_2125_(arg2)
		local registerVal3 = {}
		registerVal3.controller = arg1
		__FUNC_7AA_(arg0, registerVal3)
	end

	registerVal5 = IsMultiplayer()
	if registerVal5 then
		registerVal5 = Engine.GetModelForController(arg1)
		local registerVal8 = Engine.GetModel(registerVal5, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM))
		arg0:subscribeToModel(registerVal8, __FUNC_2125_)
		registerVal8 = Engine.GetModel(registerVal5, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN))
		arg0:subscribeToModel(registerVal8, __FUNC_2125_)
		registerVal8 = Engine.GetModel(registerVal5, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_TEAM_SPECTATOR))
		arg0:subscribeToModel(registerVal8, __FUNC_2125_)
		registerVal8 = Engine.GetModel(registerVal5, "CodCaster.profileSettingsUpdated")
		arg0:subscribeToModel(registerVal8, __FUNC_2125_)
	end
end

local function __FUNC_217C_(arg0, arg1)
	local registerVal2 = Engine.IsVisibilityBitSet(arg0.controller, Enum.UIVisibilityBit.BIT_GAME_ENDED)
	if registerVal2 then
		return 
	end
	arg1.priority = registerVal10[arg1.type]
	if arg1.priority < arg0.notificationQueue[1.000000].priority then
	else
		local registerVal4 = registerVal12[arg1.type](arg1, arg0.notificationQueue[1.000000])
		if arg1.type == arg0.notificationQueue[1.000000].type and registerVal12[arg1.type] and registerVal4 then
		end
	else
	end
	table.insert(arg0.notificationQueue, (1.000000 + 1.000000), arg1)
	nil(arg0)
end

local function __FUNC_23FE_(arg0, arg1, arg2)
	if arg1 or not # then
	end
	local registerVal6, registerVal7, registerVal8 = ipairs(arg2)
	if  and  ~= "" then
		local registerVal11 = LUI.UIImage.new()
		arg0.streamedImages[registerVal11] = true
		table.insert({}, registerVal11)
		registerVal11:setAlpha(0.000000)
		registerVal11:setImage(RegisterImage())
		registerVal11:setupUIStreamedImage(4000.000000)
		local function __FUNC_26A7_(arg2, arg3)
			arg0.streamedImages[registerVal11] = nil
			if (0.000000 - 1.000000) == 0.000000 then
				local registerVal2 = LUI.ShallowCopy(arg1)
				registerVal2.streamedImages = {}
				__FUNC_217C_(arg0, registerVal2)
			end
		end

		registerVal11:registerEventHandler("streamed_image_ready", __FUNC_26A7_)
		local function __FUNC_2775_(arg1, arg2)
			local registerVal2, registerVal3, registerVal4 = ipairs({})
			for index5,value6 in registerVal2, registerVal3, registerVal4 do
				arg0.streamedImages[value6] = nil
				value6:close()
			end
		end

		registerVal11:registerEventHandler("streamed_image_timed_out", __FUNC_2775_)
		arg0:addElement(registerVal11)
	end
	if not true then
		__FUNC_217C_(arg0, arg1)
	end
end

local function __FUNC_280C_(arg0, arg1)
	if not arg0.numStacks then
		arg0.numStacks = 2.000000
	else
		arg0.numStacks = (arg0.numStacks + 1.000000)
	end
	local registerVal3 = arg0.widget:getModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "subtitle")
	Engine.SetModelValue(registerVal2, ("x" .. arg0.numStacks))
end

{}.Medal = __FUNC_280C_
local function __FUNC_2958_(arg0, arg1, arg2)
	local registerVal3, registerVal4, registerVal5, registerVal6 = nil(arg1.scoreInfoIndex)
	local registerVal7 = Engine.CreateModel(arg2, "backing")
	local registerVal8 = Engine.CreateModel(arg2, "icon")
	local registerVal9 = Engine.CreateModel(arg2, "title")
	local registerVal10 = Engine.CreateModel(arg2, "subtitle")
	Engine.SetModelValue(registerVal9, registerVal3)
	Engine.SetModelValue(registerVal10, "")
	Engine.SetModelValue(registerVal8, registerVal4)
	Engine.SetModelValue(registerVal7, registerVal5)
	return CoD[registerVal6].new(arg0.menu, arg0.controller)
end

{}.Medal = __FUNC_2958_
local function __FUNC_2B8E_(arg0, arg1, arg2)
	local registerVal3 = Engine.CreateModel(arg2, "icon")
	local registerVal4 = Engine.CreateModel(arg2, "title")
	local registerVal5 = Engine.CreateModel(arg2, "subtitle")
	local registerVal6 = Engine.CreateModel(arg2, "color")
	Engine.SetModelValue(registerVal4, Engine.Localize(Engine.GetItemName(arg1.itemIndex)))
	Engine.SetModelValue(registerVal5, Engine.Localize("MPUI_LEVEL_N", (arg1.rank + 2.000000)))
	local registerVal9 = Engine.GetItemImage(arg1.itemIndex)
	Engine.SetModelValue(registerVal3, (registerVal9 .. "_pu"))
	Engine.SetModelValue(registerVal6, registerVal7[arg1.type])
	if arg1.rewardXP and 0.000000 < arg1.rewardXP then
		local registerVal14 = Engine.GetXPScale(arg0.controller)
		arg0.NotificationRewardQueue:addReward(registerVal7[arg1.type], "t7_hud_mp_notifications_xp_blue", Engine.Localize("RANK_XP", (arg1.rewardXP * registerVal14)))
	end
	if arg1.attachmentIndex and arg1.attachmentIndex ~= 0.000000 then
		registerVal9 = Engine.CurrentSessionMode()
		local registerVal8 = Engine.GetAttachmentUniqueImageByAttachmentIndex(registerVal9, arg1.itemIndex, arg1.attachmentIndex)
		registerVal9 = Engine.GetAttachmentNameByIndex(arg1.attachmentIndex)
		arg0.NotificationRewardQueue:addReward(registerVal7[arg1.type], (registerVal8 .. "_rwd"), Engine.Localize(registerVal9))
	end
	return CoD.WeaponLevelUpNotification.new(arg0.menu, arg0.controller)
end

{}.WeaponLevelUp = __FUNC_2B8E_
local function __FUNC_313D_(arg0, arg1, arg2)
	local registerVal3 = Engine.CreateModel(arg2, "icon")
	local registerVal4 = Engine.CreateModel(arg2, "title")
	local registerVal5 = Engine.CreateModel(arg2, "subtitle")
	local registerVal6 = Engine.CreateModel(arg2, "color")
	local registerVal7 = IsInParagonCapableGameMode()
	if registerVal7 then
		local registerVal8 = Engine.GetPrestigeCap()
		if arg1.prestige ~= registerVal8 then
		end
	end
	if true then
		local registerVal10 = Engine.GetParagonRankDisplayLevel(arg1.rank)
		registerVal10 = Engine.GetDStat(arg0.controller, "playerstatslist", "paragon_icon_id", "statvalue")
		if registerVal10 ~= CoD.PrestigeUtility.INVALID_PARAGON_ICON_ID then
			local registerVal11 = Engine.GetParagonIconById(registerVal10)
		else
			registerVal11 = Engine.GetRankIcon(0.000000, arg1.prestige)
		else
			registerVal10 = Engine.GetRankDisplayLevel(arg1.rank)
			registerVal10 = Engine.GetRankIcon(arg1.rank, arg1.prestige)
		end
	end
	Engine.SetModelValue(registerVal4, Engine.Localize(CoD.GetRankName(arg1.rank, arg1.prestige)))
	Engine.SetModelValue(registerVal5, Engine.Localize("MPUI_LEVEL_N", registerVal10))
	Engine.SetModelValue(registerVal3, GetRankIconLarge(registerVal10))
	Engine.SetModelValue(registerVal6, registerVal7[arg1.type])
	if arg1.unlockTokensAdded and arg1.unlockTokensAdded ~= 0.000000 then
		arg0.NotificationRewardQueue:addReward(registerVal7[arg1.type], "t7_hud_mp_token_reward", Engine.Localize("MPUI_UNLOCK_TOKEN"))
	end
	if arg1.rewardXP and 0.000000 < arg1.rewardXP then
		local registerVal17 = Engine.GetXPScale(arg0.controller)
		arg0.NotificationRewardQueue:addReward(registerVal7[arg1.type], "t7_hud_mp_notifications_xp_blue", Engine.Localize("RANK_XP", (arg1.rewardXP * registerVal17)))
	end
	registerVal10 = Engine.GetUnlockedItemsForLevel(arg0.controller, arg1.rank)
	local registerVal12, registerVal13, registerVal14 = ipairs(registerVal10)
	for index15,value16 in registerVal12, registerVal13, registerVal14 do
		if value16.isHeroUnlocked then
			if value16.loadoutType == "heroweapon" then
				registerVal17 = Engine.CurrentSessionMode()
				local registerVal18 = Engine.GetHeroList(registerVal17)
				local registerVal19, registerVal20, registerVal21 = ipairs(registerVal18)
				for index22,value23 in registerVal19, registerVal20, registerVal21 do
					local registerVal24 = Engine.GetLoadoutInfoForHero(registerVal17, value23.bodyIndex, Enum.heroLoadoutTypes_e.HERO_LOADOUT_TYPE_WEAPON)
					if value16.itemIndex == registerVal24.itemIndex then
						arg0.NotificationRewardQueue:addReward(registerVal7[arg1.type], value23.defaultHeroRender, Engine.Localize(value23.displayName))
					else
					end
				else
					registerVal18 = IsZombies()
					if arg1 or value16.loadoutType ~= "equippedbubblegumpack" then
					end
					arg0.NotificationRewardQueue:addReward(registerVal7[arg1.type], (value16.itemImage .. "_rwd"), Engine.Localize(value16.itemName))
				end
			end
		end
	end
	return CoD.RankUpNotification.new(arg0.menu, arg0.controller)
end

{}.RankUp = __FUNC_313D_
local function __FUNC_3CB4_(arg0, arg1, arg2)
	local registerVal5 = Engine.CreateModel(arg2, "icon")
	local registerVal6 = Engine.CreateModel(arg2, "title")
	local registerVal7 = Engine.CreateModel(arg2, "subtitle")
	local registerVal8 = Engine.CreateModel(arg2, "color")
	if arg1.rewardInfo.titleText then
		if arg1.challengeType == Enum.statsMilestoneTypes_t.MILESTONE_ATTACHMENTS and arg1.rewardInfo.reticleInfo then
			arg1.type = "ReticleChallenges"
		end
		if arg1.challengeType == Enum.statsMilestoneTypes_t.MILESTONE_SPECIALIST then
			arg1.type = "SpecialistChallenges"
		end
		if arg1.rewardInfo.camoInfo then
			arg1.type = "CamoChallenges"
		end
		if arg1.rewardInfo.emblemInfo and arg1.rewardInfo.emblemInfo.category == "sidebet" then
			arg1.type = "SideBetChallenges"
		end
		local registerVal10 = {}
		registerVal10 = {"vialInfo", "xpInfo", "transmissionInfo", "specialistInfo", "camoInfo", "emblemInfo", "reticleInfo"}
		local registerVal11, registerVal12, registerVal13 = ipairs(registerVal10)
		for index14,value15 in registerVal11, registerVal12, registerVal13 do
			if arg1.rewardInfo[value15] then
				arg0.NotificationRewardQueue:addReward(registerVal7[arg1.type], arg1.rewardInfo[value15].image, arg1.rewardInfo[value15].displayString, arg1.rewardInfo[value15].rewardSize)
			end
		end
		Engine.SetModelValue(registerVal6, arg1.rewardInfo.titleText)
		Engine.SetModelValue(registerVal7, arg1.rewardInfo.subtitleText)
		Engine.SetModelValue(registerVal5, arg1.rewardInfo.icon)
		Engine.SetModelValue(registerVal8, registerVal7[arg1.type])
		registerVal11 = IsMultiplayer()
		if registerVal11 then
			registerVal11 = CoD.ChallengesUtility.GetChallengeRewardDisplayTier(arg1.rewardInfo)
			if arg1.rewardInfo.specialistInfo then
				if registerVal11 == CoD.ChallengesUtility.SpecialistRewardTiers.CompletionEpic then
				else
					if registerVal11 == CoD.ChallengesUtility.SpecialistRewardTiers.Epic then
					else
					else
						if arg1.rewardInfo.camoInfo then
							if registerVal11 == CoD.ChallengesUtility.CamoRewardTiers.Diamond or registerVal11 == CoD.ChallengesUtility.CamoRewardTiers.DarkMatter then
							else
								if registerVal11 == CoD.ChallengesUtility.CamoRewardTiers.Gold then
								else
								else
									if arg1.rewardInfo.reticleInfo then
									else
										if arg1.rewardInfo.emblemInfo then
											if arg1.rewardInfo.emblemInfo.category == "sidebet" then
											else
												if registerVal11 == CoD.ChallengesUtility.EmblemRewardTiers.Mastery then
												else
												else
												else
													registerVal11 = IsZombies()
													if registerVal11 then
														if arg1.rewardInfo.camoInfo then
														else
															if arg1.rewardInfo.reticleInfo then
															else
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
	if CoD.MPChallengeNotification and CoD.MPChallengeNotification.new then
		return CoD.MPChallengeNotification.new(arg0.menu, arg0.controller)
	else
		return CoD.ChallengesNotification.new(arg0.menu, arg0.controller)
	end
end

{}.Challenges = __FUNC_3CB4_
local function __FUNC_4949_(arg0, arg1, arg2)
	local registerVal3 = Engine.CreateModel(arg2, "icon")
	local registerVal4 = Engine.CreateModel(arg2, "title")
	local registerVal5 = Engine.CreateModel(arg2, "subtitle")
	local registerVal6 = Engine.GetIString(arg1.name, "CS_LOCALIZED_STRINGS")
	arg1.name = registerVal6
	registerVal6 = Engine.GetIString(arg1.description, "CS_LOCALIZED_STRINGS")
	arg1.description = registerVal6
	registerVal6 = GetChallengeIcon(arg1.icon)
	if arg1 or not registerVal6 then
	end
	arg1.icon = "uie_t7_icon_zm_dlc_trials_active"
	Engine.SetModelValue(registerVal3, arg1.icon)
	Engine.SetModelValue(registerVal4, Engine.Localize(arg1.name))
	Engine.SetModelValue(registerVal5, Engine.Localize(arg1.description))
	return CoD.TrialCompleteNotification.new(arg0.menu, arg0.controller)
end

{}.TrialComplete = __FUNC_4949_
local function __FUNC_4C95_(arg0, arg1, arg2)
	local registerVal3 = Engine.CreateModel(arg2, "title")
	local registerVal4 = Engine.CreateModel(arg2, "subtitle")
	local registerVal5 = Engine.CreateModel(arg2, "color")
	local registerVal6 = Engine.TableLookup(nil, CoD.contractTable_mp, 0.000000, arg1.index, 2.000000)
	local registerVal7 = Engine.TableLookup(nil, CoD.contractTable_mp, 0.000000, arg1.index, 3.000000)
	local registerVal8 = Engine.TableLookup(nil, CoD.contractTable_mp, 0.000000, arg1.index, 4.000000)
	if registerVal8 == "" then
		arg1.name = ("CONTRACT_" .. registerVal7)
	else
		arg1.name = ("CONTRACT_" .. registerVal8)
	end
	arg1.description = ("CONTRACT_" .. registerVal7 .. "_DESC")
	Engine.SetModelValue(registerVal3, Engine.Localize(arg1.name, registerVal6))
	Engine.SetModelValue(registerVal4, Engine.Localize(arg1.description, registerVal6))
	Engine.SetModelValue(registerVal5, registerVal7[arg1.type])
	if arg1.showRewards then
		local registerVal9 = IsDoubleDailyContract(arg0.controller)
		if arg1 or not "uie_t7_icon_blackmarket_doubleloot_small" then
		end
		arg0.NotificationRewardQueue:addReward(registerVal7[arg1.type], "t7_icon_cryptokeys_rwd", Engine.Localize("MPUI_BM_CRYPTOKEY_COUNT", Dvar.daily_contract_cryptokey_reward_count:get()))
	end
	return CoD.MPDailyContractNotification.new(arg0.menu, arg0.controller)
end

{}.DailyContract = __FUNC_4C95_
local function __FUNC_5247_(arg0, arg1, arg2)
	local registerVal3 = Engine.CreateModel(arg2, "title")
	local registerVal4 = Engine.CreateModel(arg2, "subtitle")
	local registerVal5 = Engine.CreateModel(arg2, "color")
	local registerVal6 = Engine.TableLookup(nil, CoD.contractTable_mp, 0.000000, arg1.index, 2.000000)
	local registerVal7 = Engine.TableLookup(nil, CoD.contractTable_mp, 0.000000, arg1.index, 3.000000)
	local registerVal8 = Engine.TableLookup(nil, CoD.contractTable_mp, 0.000000, arg1.index, 4.000000)
	if registerVal8 == "" then
		arg1.name = ("CONTRACT_" .. registerVal7)
	else
		arg1.name = ("CONTRACT_" .. registerVal8)
	end
	arg1.description = ("CONTRACT_" .. registerVal7 .. "_DESC")
	Engine.SetModelValue(registerVal3, Engine.Localize(arg1.name, registerVal6))
	Engine.SetModelValue(registerVal4, Engine.Localize(arg1.description, registerVal6))
	Engine.SetModelValue(registerVal5, registerVal7[arg1.type])
	if arg1.showRewards then
		arg0.NotificationRewardQueue:addReward(registerVal7[arg1.type], "uie_t7_icon_blackmarket_cryptokey", Engine.Localize("MPUI_BM_CRYPTOKEY_COUNT", Dvar.weekly_contract_cryptokey_reward_count:get()))
		arg0.NotificationRewardQueue:addReward(registerVal7[arg1.type], "uie_t7_icon_blackmarket_cryptokey", Engine.Localize("MPUI_BM_CONTRACT_BLACKJACK_CONTRACT"))
	end
	return CoD.MPWeeklyContractNotification.new(arg0.menu, arg0.controller)
end

{}.WeeklyContract = __FUNC_5247_
local function __FUNC_5800_(arg0, arg1, arg2)
	local registerVal3 = Engine.CreateModel(arg2, "title")
	local registerVal4 = Engine.CreateModel(arg2, "subtitle")
	local registerVal5 = Engine.CreateModel(arg2, "color")
	local registerVal6 = Engine.TableLookup(nil, CoD.contractTable_mp, 0.000000, arg1.index, 2.000000)
	local registerVal7 = Engine.TableLookup(nil, CoD.contractTable_mp, 0.000000, arg1.index, 3.000000)
	local registerVal8 = Engine.TableLookup(nil, CoD.contractTable_mp, 0.000000, arg1.index, 4.000000)
	if registerVal8 == "" then
		arg1.name = ("CONTRACT_" .. registerVal7)
	else
		arg1.name = ("CONTRACT_" .. registerVal8)
	end
	arg1.description = ("CONTRACT_" .. registerVal7 .. "_DESC")
	Engine.SetModelValue(registerVal3, Engine.Localize(arg1.name, registerVal6))
	Engine.SetModelValue(registerVal4, Engine.Localize(arg1.description, registerVal6))
	Engine.SetModelValue(registerVal5, registerVal7[arg1.type])
	if arg1.showRewards then
		local registerVal9 = CoD.getStatsMilestoneTable(6.000000, Enum.eModes.MODE_MULTIPLAYER)
		local registerVal10 = Engine.TableLookup(nil, CoD.contractTable_mp, 0.000000, arg1.index, 7.000000)
		local registerVal11 = Engine.TableLookup(nil, CoD.contractTable_mp, 0.000000, arg1.index, 8.000000)
		if registerVal10 ~= "" then
			local registerVal12 = Engine.TableLookup(nil, registerVal9, 4.000000, registerVal10, 12.000000)
			local registerVal13 = Engine.TableLookup(nil, CoD.backgroundsTable, 4.000000, registerVal12, 3.000000)
			local registerVal18 = Engine.Localize("MENU_CALLING_CARD")
			arg0.NotificationRewardQueue:addReward(registerVal7[arg1.type], registerVal13, registerVal18, "CallingCard")
		end
		if registerVal11 ~= "" then
			registerVal12 = Engine.TableLookup(nil, registerVal9, 4.000000, registerVal11, 9.000000)
			registerVal13 = Engine.TableLookup(nil, CoD.attachmentTable, Enum.attachmentTableColumn_e.ATTACHMENTTABLE_COLUMN_REFERENCE, registerVal12, Enum.attachmentTableColumn_e.ATTACHMENTTABLE_COLUMN_NAME)
			local registerVal14 = Engine.TableLookup(nil, CoD.attachmentTable, Enum.attachmentTableColumn_e.ATTACHMENTTABLE_COLUMN_REFERENCE, registerVal12, Enum.attachmentTableColumn_e.ATTACHMENTTABLE_COLUMN_IMAGE)
			arg0.NotificationRewardQueue:addReward(registerVal7[arg1.type], registerVal14, Engine.Localize(registerVal13))
		end
	end
	return CoD.MPSpecialContractNotification.new(arg0.menu, arg0.controller)
end

{}.SpecialContract = __FUNC_5800_
local function __FUNC_6057_(arg0, arg1)
	if arg0.scoreInfoIndex ~= arg1.scoreInfoIndex then
	end
	return true
end

{}.Medal = __FUNC_6057_
local function __FUNC_60C4_(arg0)
	local registerVal3 = Engine.TableLookupGetColumnValueForRow(CoD.scoreInfoTable, arg0, 2.000000)
	local registerVal4 = Engine.TableLookupGetColumnValueForRow(CoD.scoreInfoTable, arg0, 3.000000)
	local registerVal5 = Engine.GetMedalInfo(registerVal4)
	if registerVal5 then
		return registerVal3, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
	else
		return registerVal3, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
	end
end

local function __FUNC_6287_(arg0, arg1)
	local registerVal3, registerVal4, registerVal5, registerVal6 = __FUNC_60C4_(arg1.data[1.000000])
	local registerVal9 = {}
	registerVal9.scoreInfoIndex = arg1.data[1.000000]
	registerVal9.type = "Medal"
	local registerVal10 = {}
	registerVal10 = {registerVal4, registerVal5}
	__FUNC_23FE_(arg0, registerVal9, registerVal10)
end

local function __FUNC_6344_(arg0, arg1)
	arg1.widget:close()
	arg1:close()
	table.insert(arg0.availableNotificationModels, arg1.widget:getModel())
end

local function __FUNC_6435_(arg0)
	local registerVal1 = table.remove(arg0.notificationWidgetsBeingShown, 1.000000)
	__FUNC_6344_(arg0, registerVal1)
	nil(arg0)
end

local function __FUNC_64EB_(arg0)
	if #arg0.availableNotificationModels == 0.000000 then
		return false
	end
	if #arg0.notificationQueue == 0.000000 then
		return false
	end
	if #arg0.notificationWidgetsBeingShown == 0.000000 then
		return true
	end
	if arg0.notificationQueue[1.000000].type ~= arg0.notificationWidgetsBeingShown[1.000000].notification.type then
		return false
	end
	local registerVal2 = {}[arg0.notificationQueue[1.000000].type](arg0.notificationWidgetsBeingShown[#arg0.notificationWidgetsBeingShown].notification, arg0.notificationQueue[1.000000])
	if {}[arg0.notificationQueue[1.000000].type] and registerVal2 then
		return true
	end
	if arg0.queueAnimating then
		return false
	end
	if registerVal8[arg0.notificationQueue[1.000000].type] then
		return true
	end
	return false
end

local function __FUNC_6761_(arg0)
	local registerVal1 = __FUNC_64EB_(arg0)
	if not registerVal1 then
		if #arg0.notificationWidgetsBeingShown == 0.000000 then
			Engine.SetModelValue(arg0.notificationQueueEmptyModel, true)
		end
		return 
	end
	Engine.SetModelValue(arg0.notificationQueueEmptyModel, false)
	registerVal1 = table.remove(arg0.notificationQueue, 1.000000)
	local registerVal3 = {}[registerVal1.type](arg0.notificationWidgetsBeingShown[#arg0.notificationWidgetsBeingShown].notification, registerVal1)
	if arg0.notificationWidgetsBeingShown[#arg0.notificationWidgetsBeingShown] and not arg0.notificationWidgetsBeingShown[#arg0.notificationWidgetsBeingShown].timeUp and {}[registerVal1.type] and registerVal3 then
		{}[registerVal1.type](arg0.notificationWidgetsBeingShown[#arg0.notificationWidgetsBeingShown], registerVal1)
		arg0.notificationWidgetsBeingShown[#arg0.notificationWidgetsBeingShown].timeUpTimer:reset()
		arg0.notificationWidgetsBeingShown[#arg0.notificationWidgetsBeingShown].widget:playClip("Combined")
		return 
	end
	if registerVal1.streamedImages then
		registerVal3, registerVal4, registerVal5 = ipairs(registerVal1.streamedImages)
		for index6,value7 in registerVal3, registerVal4, registerVal5 do
			value7:close()
		end
		registerVal1.streamedImages = {}
	end
	registerVal3 = table.remove(arg0.availableNotificationModels)
	registerVal4 = {}[registerVal1.type](arg0, registerVal1, registerVal3)
	registerVal5, registerVal6 = registerVal4:getLocalSize()
	registerVal4:setLeftRight(false, false, (-registerVal5 / 2.000000), (registerVal5 / 2.000000))
	registerVal4:setTopBottom(true, false, 0.000000, registerVal6)
	registerVal4:setModel(registerVal3)
	local registerVal9 = {}
	registerVal9.name = "update_state"
	registerVal9.controller = arg0.controller
	registerVal9.menu = arg0.menu
	registerVal4:processEvent(registerVal9)
	local registerVal7 = LUI.UIElement.new()
	registerVal7:setLeftRight(false, false, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 0.000000)
	registerVal7:setAlpha(1.000000)
	registerVal7:setScale(1.000000)
	registerVal7.notification = registerVal1
	registerVal7.widget = registerVal4
	registerVal7:addElement(registerVal4)
	local registerVal10 = {}
	registerVal10.name = "notification_time_up"
	registerVal10.notificationContainer = registerVal7
	local registerVal8 = LUI.UITimer.new(registerVal9[registerVal1.type], registerVal10, true, arg0)
	registerVal7.timeUpTimer = registerVal8
	registerVal7:addElement(registerVal7.timeUpTimer)
	table.insert(arg0.notificationWidgetsBeingShown, registerVal7)
	arg0:addElement(registerVal7)
	registerVal8, registerVal9 = registerVal4:getLocalSize()
	for index9=(#arg0.notificationWidgetsBeingShown - 1.000000), 1.000000, -1.000000 do
		local registerVal14, registerVal15 = arg0.notificationWidgetsBeingShown[index9].widget:getLocalSize()
		arg0.notificationWidgetsBeingShown[index9]:beginAnimation("notification_queue_move", 250.000000, true, true)
		arg0.notificationWidgetsBeingShown[index9]:setLeftRight(false, false, ((registerVal8 / 2.000000) + ((registerVal14 / 2.000000) * 0.650000)), ((registerVal8 / 2.000000) + ((registerVal14 / 2.000000) * 0.650000)))
		arg0.notificationWidgetsBeingShown[index9]:setAlpha(0.750000)
		arg0.notificationWidgetsBeingShown[index9]:setScale(0.650000)
	end
	if 1.000000 < #arg0.notificationWidgetsBeingShown and registerVal8[registerVal1.type] < #arg0.notificationWidgetsBeingShown then
		arg0.notificationWidgetsBeingShown[1.000000].timeUpTimer:close()
		arg0.notificationWidgetsBeingShown[1.000000]:setAlpha(0.000000)
		arg0.notificationWidgetsBeingShown[1.000000]:setScale(0.000000)
		arg0.notificationWidgetsBeingShown[1.000000].fadingOffQueue = true
		local function __FUNC_7150_(arg1, arg2)
			__FUNC_6435_(arg0)
		end

		arg0.notificationWidgetsBeingShown[1.000000]:registerEventHandler("transition_complete_notification_queue_move", __FUNC_7150_)
	end
	arg0:addElement(LUI.UITimer.new(250.000000, "queue_done_animating", true, arg0))
	arg0.queueAnimating = true
end

local function __FUNC_7188_(arg0)
	local registerVal1, registerVal2, registerVal3 = pairs(arg0.notificationQueue)
	for index4,value5 in registerVal1, registerVal2, registerVal3 do
		local registerVal6, registerVal7, registerVal8 = ipairs(value5.streamedImages)
		for index9,value10 in registerVal6, registerVal7, registerVal8 do
			value10:close()
		end
	end
	arg0.notificationQueue = {}
	Engine.SetModelValue(arg0.notificationQueueEmptyModel, true)
	registerVal1, registerVal2, registerVal3 = ipairs(arg0.notificationWidgetsBeingShown)
	for index4,value5 in registerVal1, registerVal2, registerVal3 do
		__FUNC_6344_(arg0, value5)
	end
	arg0.notificationWidgetsBeingShown = {}
	registerVal1, registerVal2, registerVal3 = pairs(arg0.streamedImages)
	for index4,value5 in registerVal1, registerVal2, registerVal3 do
		index4:close()
	end
	arg0.streamedImages = {}
end

local registerVal29 = InheritFrom(LUI.UIElement)
CoD.NotificationQueue = registerVal29
local function __FUNC_7378_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.NotificationQueue)
	registerVal2.id = "NotificationQueue"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	local registerVal3 = CoD.NotificationRewardQueue.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, -596.000000, -20.000000)
	registerVal3:setTopBottom(true, false, 142.000000, 340.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.NotificationRewardQueue = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_7813_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.NotificationRewardQueue:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_7813_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_791A_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.NotificationRewardQueue:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_791A_
	registerVal4.MPSplitscreen = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "MPSplitscreen"
	local function __FUNC_7A27_(arg0, arg2, arg3)
		local registerVal3 = IsMultiplayer()
		if registerVal3 then
			registerVal3 = IsSplitscreenAndInGame(arg1)
		end
		return registerVal3
	end

	registerVal7.condition = __FUNC_7A27_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "lobbyRoot.lobbyNav")
	local function __FUNC_7AA7_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_7AA7_)
	local function __FUNC_7BCC_(arg0)
		arg0.NotificationRewardQueue:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_7BCC_)
	if __FUNC_A0C_ then
		__FUNC_A0C_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.NotificationQueue.new = __FUNC_7378_
