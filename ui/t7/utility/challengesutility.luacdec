-- Decompiled with CoDLUIDecompiler by JariK

CoD.ChallengesUtility = {}
CoD.ChallengesUtility.NearCompletionMaxNumChallengesShown = 10.000000
CoD.ChallengesUtility.NearCompletionLists = {}
CoD.ChallengesUtility.GameModeIcons = {}
CoD.ChallengesUtility.GameModeIcons.CP = "uie_t7_menu_frontend_iconmodecp"
CoD.ChallengesUtility.GameModeIcons.MP = "uie_t7_menu_frontend_iconmodemp"
CoD.ChallengesUtility.GameModeIcons.ZM = "uie_t7_menu_frontend_iconmodezm"
CoD.ChallengesUtility.IndexCol = 0.000000
CoD.ChallengesUtility.TierIdCol = 1.000000
CoD.ChallengesUtility.TargetValCol = 2.000000
CoD.ChallengesUtility.StatTypeCol = 3.000000
CoD.ChallengesUtility.StatsNameCol = 4.000000
CoD.ChallengesUtility.NameStringCol = 5.000000
CoD.ChallengesUtility.XpEarnedCol = 6.000000
CoD.ChallengesUtility.ChallengeStatNameCol = 10.000000
CoD.ChallengesUtility.UnlockRankCol = 11.000000
CoD.ChallengesUtility.UnlockPLevelCol = 14.000000
CoD.ChallengesUtility.CategoryCol = 16.000000
CoD.ChallengesUtility.IsMasteryCol = 18.000000
CoD.ChallengesUtility.VialsEarnedCol = 24.000000
local registerVal1 = {}
registerVal1.cp = {}
local registerVal2 = {}
local registerVal3 = {}
registerVal3 = {"bootcamp", "killer", "humiliation", "career", "gamevictories", "gameheroics"}
registerVal2.operations = registerVal3
registerVal3 = {}
registerVal3 = {"weapons", "abilities", "killjoys"}
registerVal2.specialist = registerVal3
registerVal3 = {}
registerVal3 = {"airassault", "groundassault", "support", "returnfire"}
registerVal2.scorestreaks = registerVal3
registerVal3 = {}
registerVal3 = {"combathandling", "combatefficiency", "perks1", "perks2", "perks3", "lethals", "tacticals", "wildcards"}
registerVal2.prestige = registerVal3
registerVal1.mp = registerVal2
registerVal1.zm = {}
CoD.ChallengesUtility.ChallengeCategoryTable = registerVal1
registerVal1 = {}
registerVal3 = {}
registerVal3.missions = 0.000000
registerVal3.tott = 1.000000
registerVal3.career = 2.000000
registerVal1[Enum.eModes.MODE_CAMPAIGN] = registerVal3
registerVal3 = {}
registerVal3.bootcamp = 0.000000
registerVal3.killer = 1.000000
registerVal3.humiliation = 2.000000
registerVal3.career = 3.000000
registerVal3.gamevictories = 4.000000
registerVal3.gameheroics = 5.000000
registerVal3.darkops = 6.000000
registerVal3.weapons = 7.000000
registerVal3.abilities = 8.000000
registerVal3.killjoys = 9.000000
registerVal3.airassault = 10.000000
registerVal3.groundassault = 11.000000
registerVal3.support = 12.000000
registerVal3.returnfire = 13.000000
registerVal3.combathandling = 14.000000
registerVal3.combatefficiency = 15.000000
registerVal3.perks1 = 16.000000
registerVal3.perks2 = 17.000000
registerVal3.perks3 = 18.000000
registerVal3.lethals = 19.000000
registerVal3.tacticals = 20.000000
registerVal3.wildcards = 21.000000
registerVal3.arenavet = 22.000000
registerVal3.onehundredpercent = 23.000000
registerVal1[Enum.eModes.MODE_MULTIPLAYER] = registerVal3
registerVal3 = {}
registerVal3.zombiehunter = 0.000000
registerVal3.survivalist = 1.000000
registerVal3.gumgobbler = 2.000000
registerVal3.darkops = 3.000000
registerVal1[Enum.eModes.MODE_ZOMBIES] = registerVal3
CoD.ChallengesUtility.ChallengeCategoryValues = registerVal1
registerVal1 = {}
registerVal1 = {"specialcontract", "mp_action"}
CoD.ChallengesUtility.SpecialContractCategories = registerVal1
registerVal1 = {}
registerVal1.t7_callingcard_zm_hunter_master = "CallingCards_ZMHunterWidget"
CoD.ChallengesUtility.AnimatedCallingCards = registerVal1
function CoD.ChallengesUtility.IsLegendaryCallingCard(arg0)
	local registerVal1 = CoD.BlackMarketUtility.GetRarityTypeForLootItemFromName(arg0)
	if registerVal1 ~= "legendary" then
	end
	return true
end

function CoD.ChallengesUtility.SetCallingCardForWidget(arg0, arg1, arg2)
	if CoD[arg1] and CoD[arg1].new and arg2 ~= "Menu.PersonalDataVaultMenu" then
		arg0:changeFrameWidget(CoD[arg1])
	else
		local registerVal3 = Engine.IsInGame()
		if registerVal3 then
			if not arg1 or CoD.isZombie then
				local registerVal5 = Engine.TableLookup(nil, CoD.backgroundsTable, 3.000000, arg1, 11.000000)
				if registerVal5 and registerVal5 ~= "" then
				end
			end
		end
		registerVal3 = CoD.ChallengesUtility.IsLegendaryCallingCard(registerVal5)
		if registerVal3 then
			arg0:changeFrameWidget(CoD.CallingCards_LegendaryImage)
		else
			arg0:changeFrameWidget(CoD.CallingCards_BasicImage)
		end
		arg0.framedWidget.CardIcon:setImage(RegisterImage(registerVal5))
	end
end

function CoD.ChallengesUtility.IsBackgroundLockByChallenge(arg0, arg1)
	local registerVal2 = Engine.GetEmblemBackgroundId()
	local registerVal3 = Engine.GetChallengeInfoByEmblemOrBackingId(arg0, registerVal2, 1.000000, arg1)
	if not registerVal3 then
		return false
	end
	return registerVal3[1.000000].isLocked
end

function CoD.ChallengesUtility.ResetCategoryStats(arg0)
	DataSources.ChallengesCPCategoryStats.init(arg0)
	DataSources.ChallengesMPCategoryStats.init(arg0)
	DataSources.ChallengesZMCategoryStats.init(arg0)
end

function CoD.ChallengesUtility.ResetNearCompletion(arg0)
	local registerVal1, registerVal2, registerVal3 = pairs(CoD.ChallengesUtility.NearCompletionLists)
	for index4,value5 in registerVal1, registerVal2, registerVal3 do
		local registerVal6, registerVal7, registerVal8 = pairs(value5)
		for index9,value10 in registerVal6, registerVal7, registerVal8 do
			value5[index9] = nil
		end
		CoD.ChallengesUtility.NearCompletionLists[index4] = nil
	end
	DataSources.ChallengesCPNearCompletion.init(arg0)
	DataSources.ChallengesMPNearCompletion.init(arg0)
	DataSources.ChallengesZMNearCompletion.init(arg0)
end

function CoD.ChallengesUtility.GetGameModeInfo()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.GetModel(registerVal1, "challengeGameMode")
	if not registerVal0 then
		return nil
	end
	registerVal1 = Engine.GetModelValue(registerVal0)
	if registerVal1 ~= "cp" and registerVal1 ~= "mp" and registerVal1 ~= "zm" then
		return nil
	end
	{}.name = registerVal1
	{}.index = Enum.eModes.MODE_INVALID
	if registerVal1 == "cp" then
		{}.index = Enum.eModes.MODE_CAMPAIGN
	else
		if registerVal1 == "mp" then
			{}.index = Enum.eModes.MODE_MULTIPLAYER
		else
			if registerVal1 == "zm" then
				{}.index = Enum.eModes.MODE_ZOMBIES
			end
		end
	end
	return {}
end

function CoD.ChallengesUtility.GetLocalizedNameAndDescriptionForChallengeInfo(arg0)
	if arg0.mode == Enum.eModes.MODE_CAMPAIGN then
	else
		if arg0.mode == Enum.eModes.MODE_ZOMBIES then
		end
	end
	local registerVal3 = Engine.TableLookupGetColumnValueForRow(("gamedata/stats/" .. "zm" .. "/statsmilestones" .. (arg0.tableNum + 1.000000) .. ".csv"), arg0.challengeRow, CoD.ChallengesUtility.NameStringCol)
	local registerVal5 = Engine.TableLookupGetColumnValueForRow(("gamedata/stats/" .. "zm" .. "/statsmilestones" .. (arg0.tableNum + 1.000000) .. ".csv"), arg0.challengeRow, CoD.ChallengesUtility.CategoryCol)
	if registerVal5 == "sidebet" then
		local registerVal6 = Engine.TableLookupGetColumnValueForRow(("gamedata/stats/" .. "zm" .. "/statsmilestones" .. (arg0.tableNum + 1.000000) .. ".csv"), arg0.challengeRow, 12.000000)
	end
	if arg0.challengeType == CoD.MILESTONE_WEAPON then
		local registerVal7 = Engine.Localize(Engine.GetItemName(arg0.itemIndex, arg0.mode))
	else
		if arg0.challengeType == CoD.MILESTONE_GROUP then
			local registerVal9 = Engine.GetItemGroupByIndex(arg0.itemIndex)
			registerVal7 = Engine.Localize(("CHALLENGE_TYPE_" .. registerVal9))
		else
			if arg0.challengeType == CoD.MILESTONE_ATTACHMENTS then
				registerVal7 = Engine.Localize(Engine.GetAttachmentNameByIndex(arg0.itemIndex))
			else
				if arg0.challengeType == CoD.MILESTONE_GAMEMODE then
					registerVal9 = Engine.GetGametypeName(arg0.itemIndex)
					registerVal7 = Engine.Localize(("CHALLENGE_TYPE_" .. registerVal9))
				end
			end
		end
	end
	registerVal7 = CoD.GetLocalizedTierText(("gamedata/stats/" .. "zm" .. "/statsmilestones" .. (arg0.tableNum + 1.000000) .. ".csv"), arg0.challengeRow)
	local registerVal8 = Engine.TableLookupGetColumnValueForRow(("gamedata/stats/" .. "zm" .. "/statsmilestones" .. (arg0.tableNum + 1.000000) .. ".csv"), arg0.challengeRow, CoD.ChallengesUtility.TargetValCol)
	registerVal9 = Engine.Localize(registerVal6, "", registerVal7, registerVal7)
	local registerVal10 = Engine.Localize((registerVal3 .. "_DESC"), registerVal8, registerVal7)
	local registerVal11 = CoD.ChallengesUtility.IsSpecialContractChallenge(arg0.challengeType, arg0.tableNum, arg0.challengeRow)
	if registerVal11 then
		local registerVal13 = CoD.getStatsMilestoneTable((arg0.tableNum + 1.000000), arg0.mode)
		registerVal11 = Engine.Localize(Engine.TableLookupGetColumnValueForRow(registerVal13, arg0.challengeRow, Enum.milestoneTableColumns_t.MILESTONE_COLUMN_UNLOCKIMAGE))
		registerVal11 = Engine.Localize("MENU_UNLOCKED_BY_SPECIAL_CONTRACT")
	end
	return registerVal11, CoDLUIDecompiler.LuaRegister
end

function CoD.ChallengesUtility.GetChallengeTable(arg0, arg1, arg2, arg3, arg4, arg5)
	local registerVal7 = Engine.GetChallengeInfoForImages(arg0, arg3, arg1)
	if not registerVal7 then
		return {}
	end
	local registerVal8 = Engine.GetPlayerStats(arg0, CoD.STATS_LOCATION_NORMAL, arg1)
	local registerVal9 = registerVal8.PlayerStatsList.RANK.StatValue:get()
	local registerVal10 = registerVal8.PlayerStatsList.PLEVEL.StatValue:get()
	if arg4 then
		table.sort(registerVal7, arg4)
	end
	local registerVal11, registerVal12, registerVal13 = ipairs(registerVal7)
	for index14,value15 in registerVal11, registerVal12, registerVal13 do
		if value15.challengeRow ~= nil then
			if arg1 or CoD.ChallengesUtility.ChallengeCategoryValues[arg1][value15.challengeCategory] ~= nil then
				local registerVal35 = tonumber(Engine.TableLookupGetColumnValueForRow(("gamedata/stats/" .. arg2 .. "/statsmilestones" .. (value15.tableNum + 1.000000) .. ".csv"), value15.challengeRow, CoD.ChallengesUtility.TierIdCol))
				local registerVal36 = Engine.TableLookupGetColumnValueForRow(("gamedata/stats/" .. arg2 .. "/statsmilestones" .. (value15.tableNum + 1.000000) .. ".csv"), value15.challengeRow, CoD.ChallengesUtility.TargetValCol)
				local registerVal37 = Engine.TableLookupGetColumnValueForRow(("gamedata/stats/" .. arg2 .. "/statsmilestones" .. (value15.tableNum + 1.000000) .. ".csv"), value15.challengeRow, CoD.ChallengesUtility.NameStringCol)
				local registerVal38 = Engine.TableLookupGetColumnValueForRow(("gamedata/stats/" .. arg2 .. "/statsmilestones" .. (value15.tableNum + 1.000000) .. ".csv"), value15.challengeRow, CoD.ChallengesUtility.NameStringCol)
				local registerVal39 = Engine.TableLookupGetColumnValueForRow(("gamedata/stats/" .. arg2 .. "/statsmilestones" .. (value15.tableNum + 1.000000) .. ".csv"), value15.challengeRow, CoD.ChallengesUtility.XpEarnedCol)
				local registerVal40 = Engine.TableLookupGetColumnValueForRow(("gamedata/stats/" .. arg2 .. "/statsmilestones" .. (value15.tableNum + 1.000000) .. ".csv"), value15.challengeRow, CoD.ChallengesUtility.UnlockRankCol)
				local registerVal41 = Engine.TableLookupGetColumnValueForRow(("gamedata/stats/" .. arg2 .. "/statsmilestones" .. (value15.tableNum + 1.000000) .. ".csv"), value15.challengeRow, CoD.ChallengesUtility.UnlockPLevelCol)
				local registerVal42 = CoD.GetLocalizedTierText(("gamedata/stats/" .. arg2 .. "/statsmilestones" .. (value15.tableNum + 1.000000) .. ".csv"), value15.challengeRow)
				local registerVal43 = Engine.TableLookupGetColumnValueForRow(("gamedata/stats/" .. arg2 .. "/statsmilestones" .. (value15.tableNum + 1.000000) .. ".csv"), value15.challengeRow, Enum.milestoneTableColumns_t.MILESTONE_COLUMN_ISEXPERT)
				if registerVal43 ~= "1" then
				end
				if registerVal40 ~= "" then
					local registerVal44 = tonumber(registerVal40)
				end
				if registerVal41 ~= "" then
					registerVal44 = tonumber(registerVal41)
				end
				if value15.challengeType == CoD.MILESTONE_WEAPON then
					registerVal44 = Engine.Localize(Engine.GetItemName(value15.itemIndex, arg1))
				else
					if value15.challengeType == CoD.MILESTONE_GROUP then
						local registerVal46 = Engine.GetItemGroupByIndex(value15.itemIndex)
						registerVal44 = Engine.Localize(("CHALLENGE_TYPE_" .. registerVal46))
					else
						if value15.challengeType == CoD.MILESTONE_ATTACHMENTS then
							registerVal44 = Engine.Localize(Engine.GetAttachmentNameByIndex(value15.itemIndex))
						else
							if value15.challengeType == CoD.MILESTONE_GAMEMODE then
								registerVal46 = Engine.GetGametypeName(value15.itemIndex)
								registerVal44 = Engine.Localize(("CHALLENGE_TYPE_" .. registerVal46))
							end
						end
					end
				end
				if registerVal42 ~= "" then
				end
				if not value15.isMastery then
					if registerVal10 < registerVal44 then
						registerVal44 = Engine.Localize("CLASS_PRESTIGE_UNLOCK_DESC", registerVal44)
					else
						if registerVal10 == 0.000000 and registerVal9 < registerVal44 then
							registerVal44 = CoD.GetRankName(registerVal44, 0.000000, arg1)
							local registerVal45 = Engine.Localize("MENU_UNLOCKED_AT", registerVal44, (registerVal44 + 1.000000))
						end
					end
				end
				if true and true then
					registerVal44 = Engine.Localize(("CHALLENGE_TIER_" .. 0.000000))
				end
				registerVal45 = Engine.TableLookupGetColumnValueForRow(("gamedata/stats/" .. arg2 .. "/statsmilestones" .. (value15.tableNum + 1.000000) .. ".csv"), value15.currentChallengeRow, CoD.ChallengesUtility.NameStringCol)
				if value15.currentChallengeRow and true then
					registerVal45 = tonumber(Engine.TableLookupGetColumnValueForRow(("gamedata/stats/" .. arg2 .. "/statsmilestones" .. (value15.tableNum + 1.000000) .. ".csv"), value15.currentChallengeRow, CoD.ChallengesUtility.TierIdCol))
					registerVal45 = Engine.TableLookupGetColumnValueForRow(("gamedata/stats/" .. arg2 .. "/statsmilestones" .. (value15.tableNum + 1.000000) .. ".csv"), value15.currentChallengeRow, CoD.ChallengesUtility.TargetValCol)
					registerVal45 = Engine.TableLookupGetColumnValueForRow(("gamedata/stats/" .. arg2 .. "/statsmilestones" .. (value15.tableNum + 1.000000) .. ".csv"), value15.currentChallengeRow, CoD.ChallengesUtility.XpEarnedCol)
					registerVal45 = CoD.GetLocalizedTierText(("gamedata/stats/" .. arg2 .. "/statsmilestones" .. (value15.tableNum + 1.000000) .. ".csv"), value15.currentChallengeRow)
				end
				registerVal45 = Engine.Localize(registerVal37, "", registerVal44, registerVal45)
				if not registerVal45 then
					registerVal45 = Engine.Localize((registerVal45 .. "_DESC"), registerVal45, registerVal44)
				end
				if value15.challengeCategory == "darkops" and value15.isLocked then
					registerVal45 = Engine.Localize("MENU_CLASSIFIED")
					registerVal45 = Engine.Localize("MENU_CHALLENGES_DARKOPS_LOCKED_DESC")
				end
				local registerVal47 = {}
				local registerVal48 = {}
				registerVal48.title = registerVal45
				registerVal48.description = registerVal45
				registerVal48.iconId = value15.imageID
				registerVal48.maxTier = registerVal35
				registerVal48.currentTier = registerVal45
				registerVal48.statPercent = (value15.currChallengeStatValue / registerVal45)
				local registerVal49 = Engine.Localize("MPUI_X_SLASH_Y", value15.currChallengeStatValue, registerVal45)
				registerVal48.statFractionText = registerVal49
				registerVal49 = Engine.Localize("CHALLENGE_TIER_STATUS", (registerVal45 + 1.000000), (registerVal35 + 1.000000))
				registerVal48.tierStatus = registerVal49
				registerVal48.xp = registerVal45
				registerVal48.percentComplete = (value15.currChallengeStatValue / registerVal45)
				registerVal48.isLocked = value15.isLocked
				registerVal48.hideProgress = false
				registerVal47.models = registerVal48
				registerVal48 = {}
				registerVal48.isMastery = value15.isMastery
				if value15.challengeCategory ~= "darkops" then
				end
				registerVal48.isDarkOps = true
				registerVal48.isExpert = true
				registerVal47.properties = registerVal48
				table.insert({}, registerVal47)
			end
		end
	end
	return {}
end

function CoD.ChallengesUtility.GetDailyChallenge(arg0, arg1, arg2)
	if arg1 == Enum.eModes.MODE_MULTIPLAYER then
	end
	local registerVal4 = IsLive()
	registerVal4 = Mods_IsUsingMods()
	if arg1 or registerVal4 then
		return nil
	end
	registerVal4 = Engine.GetPlayerStats(arg0, CoD.STATS_LOCATION_NORMAL, Enum.eModes.MODE_ZOMBIES)
	local registerVal5 = registerVal4.PlayerStatsList.ZM_CURRENT_DAILY_CHALLENGE.statValue:get()
	if arg2 then
	end
	local registerVal6 = Engine.GetDailyChallengeInfo(arg0, arg1, arg2)
	if registerVal6[1.000000] ~= nil then
		local registerVal9 = tonumber(Engine.TableLookupGetColumnValueForRow(("gamedata/stats/" .. "mp" .. "/statsmilestones" .. (registerVal6[1.000000].tableNum + 1.000000) .. ".csv"), registerVal6[1.000000].challengeRow, CoD.ChallengesUtility.TierIdCol))
		local registerVal10 = Engine.TableLookupGetColumnValueForRow(("gamedata/stats/" .. "mp" .. "/statsmilestones" .. (registerVal6[1.000000].tableNum + 1.000000) .. ".csv"), registerVal6[1.000000].challengeRow, CoD.ChallengesUtility.TargetValCol)
		local registerVal11 = Engine.TableLookupGetColumnValueForRow(("gamedata/stats/" .. "mp" .. "/statsmilestones" .. (registerVal6[1.000000].tableNum + 1.000000) .. ".csv"), registerVal6[1.000000].challengeRow, CoD.ChallengesUtility.NameStringCol)
		local registerVal12 = Engine.TableLookupGetColumnValueForRow(("gamedata/stats/" .. "mp" .. "/statsmilestones" .. (registerVal6[1.000000].tableNum + 1.000000) .. ".csv"), registerVal6[1.000000].challengeRow, CoD.ChallengesUtility.NameStringCol)
		local registerVal13 = Engine.TableLookupGetColumnValueForRow(("gamedata/stats/" .. "mp" .. "/statsmilestones" .. (registerVal6[1.000000].tableNum + 1.000000) .. ".csv"), registerVal6[1.000000].challengeRow, CoD.ChallengesUtility.XpEarnedCol)
		local registerVal14 = Engine.TableLookupGetColumnValueForRow(("gamedata/stats/" .. "mp" .. "/statsmilestones" .. (registerVal6[1.000000].tableNum + 1.000000) .. ".csv"), registerVal6[1.000000].challengeRow, CoD.ChallengesUtility.VialsEarnedCol)
		registerVal6[1.000000].maxChallengeTier = registerVal9
		local registerVal17 = tonumber(registerVal10)
		registerVal6[1.000000].targetVal = registerVal17
		registerVal17 = Engine.Localize(registerVal11)
		registerVal6[1.000000].challengeName = registerVal17
		registerVal17 = Engine.Localize((registerVal12 .. "_DESC"), registerVal10)
		registerVal6[1.000000].challengeDescription = registerVal17
		registerVal6[1.000000].xpReward = registerVal13
		registerVal6[1.000000].vialReward = registerVal14
		registerVal6[1.000000].percentComplete = (registerVal6[1.000000].currChallengeStatValue / registerVal10)
		if registerVal14 and registerVal14 ~= "" then
			registerVal17 = IsZMDoubleVialActive(arg0)
			if registerVal17 then
				local registerVal18 = tonumber(registerVal6[1.000000].vialReward)
				local registerVal19 = Engine.GetZMVialScale(arg0)
				registerVal6[1.000000].vialReward = (registerVal18 * registerVal19)
			end
			registerVal6[1.000000].image = "uie_t7_icon_zm_double_vial_backer"
			registerVal18 = Engine.Localize("ZMUI_BGB_TOKENS_GAINED_REWARD", registerVal6[1.000000].vialReward)
			registerVal6[1.000000].rewardText = registerVal18
		else
			registerVal6[1.000000].image = "t7_hud_mp_notifications_xp_blue"
			registerVal17 = Engine.Localize("CHALLENGE_UNLOCK_REWARD", registerVal6[1.000000].xpReward)
			registerVal6[1.000000].rewardText = registerVal17
		end
		return registerVal6[1.000000]
	end
	return nil
end

function CoD.ChallengesUtility.UpdateDailyChallengeModel(arg0, arg1, arg2, arg3)
	local registerVal4 = CoD.ChallengesUtility.GetDailyChallenge(arg0, arg2, arg3)
	if not registerVal4 then
		local registerVal6 = Engine.CreateModel(arg1, "description")
		Engine.SetModelValue(registerVal6, "")
		registerVal6 = Engine.CreateModel(arg1, "fractionText")
		Engine.SetModelValue(registerVal6, "0/1")
		registerVal6 = Engine.CreateModel(arg1, "image")
		Engine.SetModelValue(registerVal6, "")
		registerVal6 = Engine.CreateModel(arg1, "progressPercentage")
		Engine.SetModelValue(registerVal6, 0.000000)
		registerVal6 = Engine.CreateModel(arg1, "rewardText")
		Engine.SetModelValue(registerVal6, "")
		registerVal6 = Engine.CreateModel(arg1, "title")
		Engine.SetModelValue(registerVal6, "")
		return 
	end
	registerVal6 = Engine.CreateModel(arg1, "description")
	Engine.SetModelValue(registerVal6, registerVal4.challengeDescription)
	registerVal6 = Engine.CreateModel(arg1, "fractionText")
	Engine.SetModelValue(registerVal6, Engine.Localize("MPUI_X_SLASH_Y", registerVal4.currChallengeStatValue, registerVal4.targetVal))
	registerVal6 = Engine.CreateModel(arg1, "image")
	Engine.SetModelValue(registerVal6, registerVal4.image)
	registerVal6 = Engine.CreateModel(arg1, "progressPercentage")
	Engine.SetModelValue(registerVal6, registerVal4.percentComplete)
	registerVal6 = Engine.CreateModel(arg1, "rewardText")
	Engine.SetModelValue(registerVal6, registerVal4.rewardText)
	registerVal6 = Engine.CreateModel(arg1, "title")
	Engine.SetModelValue(registerVal6, registerVal4.challengeName)
end

local function __FUNC_453F_(arg0)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.GetModel(registerVal3, "challengeCategory")
	if not registerVal2 then
		return {}
	end
	registerVal3 = Engine.GetModelValue(registerVal2)
	if not registerVal3 then
		return {}
	end
	local registerVal4 = CoD.ChallengesUtility.GetGameModeInfo()
	if not registerVal4 then
		return {}
	end
	local function __FUNC_4917_(arg0, arg1)
		local registerVal2 = tonumber(arg0.imageID)
		local registerVal3 = tonumber(arg1.imageID)
		if registerVal2 >= registerVal3 then
		end
		return true
	end

	local registerVal6 = CoD.ChallengesUtility.GetChallengeTable(arg0, registerVal4.index, registerVal4.name, registerVal3, __FUNC_4917_, true)
	local registerVal10, registerVal11, registerVal12 = ipairs(registerVal6)
	for index13,value14 in registerVal10, registerVal11, registerVal12 do
		if value14.properties.isMastery then
		else
			table.insert({}, value14)
			if not value14.models.isLocked then
			end
		end
	end
	if value14 then
		DataSources.MasterCallingCard.setModelValues(arg0, value14.models.title, value14.models.description, value14.models.iconId, ((0.000000 + 1.000000) / (0.000000 + 1.000000)))
	end
	return {}
end

registerVal1 = DataSourceHelpers.ListSetup("CallingCards", __FUNC_453F_, true)
DataSources.CallingCards = registerVal1
local function __FUNC_499F_(arg0)
	local registerVal2 = CoD.ChallengesUtility.GetGameModeInfo()
	if not registerVal2 then
		return {}
	end
	local function __FUNC_5018_(arg0, arg1)
		if arg0.isLocked ~= arg1.isLocked then
			return arg1.isLocked
		end
		if arg0.challengeCategory ~= arg1.challengeCategory then
			if CoD.ChallengesUtility.ChallengeCategoryValues[registerVal2.index][arg0.challengeCategory] and CoD.ChallengesUtility.ChallengeCategoryValues[registerVal2.index][arg1.challengeCategory] then
				if CoD.ChallengesUtility.ChallengeCategoryValues[registerVal2.index][arg0.challengeCategory] >= CoD.ChallengesUtility.ChallengeCategoryValues[registerVal2.index][arg1.challengeCategory] then
				end
				return true
			else
				if CoD.ChallengesUtility.ChallengeCategoryValues[registerVal2.index][arg0.challengeCategory] == nil then
				end
				return true
			end
		end
		local registerVal2 = tonumber(arg0.imageID)
		local registerVal3 = tonumber(arg1.imageID)
		if registerVal2 >= registerVal3 then
		end
		return true
	end

	local registerVal5 = ArenaChallengesEnabled()
	if registerVal5 then
		if registerVal2.index ~= Enum.eModes.MODE_MULTIPLAYER then
		end
	end
	if registerVal2.index ~= Enum.eModes.MODE_MULTIPLAYER and registerVal2.index ~= Enum.eModes.MODE_ZOMBIES then
	end
	local registerVal9 = CoD.ChallengesUtility.GetChallengeTable(arg0, registerVal2.index, registerVal2.name, nil, __FUNC_5018_, true)
	local registerVal10, registerVal11, registerVal12 = ipairs(registerVal9)
	for index13,value14 in registerVal10, registerVal11, registerVal12 do
		if true and not false and value14.models.isLocked then
			CoD.ArenaUtility.AddArenaVetCallingCards(arg0, {}, true, false)
			CoD.ArenaUtility.AddArenaBestCallingCards(arg0, {}, true, false)
		end
		if true and not false and value14.models.isLocked then
			CoD.PrestigeUtility.AddPrestigeCallingCards(arg0, registerVal2.index, {})
		end
		if not value14.properties.isMastery then
			if {} or 1.000000 <= value14.models.statPercent then
				table.insert({}, value14)
			end
		end
	end
	if true and not true then
		CoD.ArenaUtility.AddArenaVetCallingCards(arg0, {}, true, false)
		CoD.ArenaUtility.AddArenaBestCallingCards(arg0, {}, true, false)
	end
	if true and not true then
		CoD.PrestigeUtility.AddPrestigeCallingCards(arg0, registerVal2.index, {})
	end
	if true then
		CoD.ArenaUtility.AddArenaVetCallingCards(arg0, {}, false, true)
		CoD.ArenaUtility.AddArenaBestCallingCards(arg0, {}, false, true)
	end
	return {}
end

registerVal1 = DataSourceHelpers.ListSetup("CallingCardsSorted", __FUNC_499F_, true)
DataSources.CallingCardsSorted = registerVal1
local function __FUNC_51E9_(arg0)
	local registerVal2 = CoD.ChallengesUtility.GetGameModeInfo()
	if not registerVal2 then
		return {}
	end
	local function __FUNC_5575_(arg0, arg1)
		local registerVal2 = tonumber(arg0.imageID)
		local registerVal3 = tonumber(arg1.imageID)
		if registerVal2 >= registerVal3 then
		end
		return true
	end

	if CoD.ChallengesUtility.NearCompletionLists[registerVal2.index] ~= nil then
		return CoD.ChallengesUtility.NearCompletionLists[registerVal2.index]
	end
	local registerVal4 = CoD.ChallengesUtility.GetChallengeTable(arg0, registerVal2.index, registerVal2.name, nil, __FUNC_5575_, true)
	local function __FUNC_55FF_(arg0, arg1)
		if arg0.models.statPercent ~= arg1.models.statPercent then
			if arg1.models.statPercent >= arg0.models.statPercent then
			end
			return true
		end
		if arg0.models.iconId >= arg1.models.iconId then
		end
		return true
	end

	table.sort(registerVal4, __FUNC_55FF_)
	local registerVal5, registerVal6, registerVal7 = ipairs(registerVal4)
	for index8,value9 in registerVal5, registerVal6, registerVal7 do
		table.insert({}, value9)
		if not value9.properties.isMastery and not value9.properties.isDarkOps and value9.models.statPercent < 1.000000 and CoD.ChallengesUtility.NearCompletionMaxNumChallengesShown <= #table.insert then
		else
		end
	end
	CoD.ChallengesUtility.NearCompletionLists[registerVal2.index] = {}
	return {}
end

registerVal1 = DataSourceHelpers.ListSetup("ChallengesNearCompletionList", __FUNC_51E9_, true)
DataSources.ChallengesNearCompletionList = registerVal1
local function __FUNC_571D_(arg0)
	local function __FUNC_5840_(arg0, arg1)
		local registerVal2 = tonumber(arg0.imageID)
		local registerVal3 = tonumber(arg1.imageID)
		if registerVal2 >= registerVal3 then
		end
		return true
	end

	local registerVal3 = CoD.ChallengesUtility.GetChallengeTable(arg0, Enum.eModes.MODE_MULTIPLAYER, "mp", "darkops", __FUNC_5840_, true)
	return registerVal3
end

registerVal1 = DataSourceHelpers.ListSetup("DarkOpsCallingCards", __FUNC_571D_, true)
DataSources.DarkOpsCallingCards = registerVal1
local function __FUNC_58CB_(arg0)
	local function __FUNC_59E8_(arg0, arg1)
		local registerVal2 = tonumber(arg0.imageID)
		local registerVal3 = tonumber(arg1.imageID)
		if registerVal2 >= registerVal3 then
		end
		return true
	end

	local registerVal3 = CoD.ChallengesUtility.GetChallengeTable(arg0, Enum.eModes.MODE_ZOMBIES, "zm", "darkops", __FUNC_59E8_, true)
	return registerVal3
end

registerVal1 = DataSourceHelpers.ListSetup("DarkOpsCallingCardsZM", __FUNC_58CB_, true)
DataSources.DarkOpsCallingCardsZM = registerVal1
local function __FUNC_5A73_(arg0)
	CoD.ArenaUtility.AddArenaBestCallingCards(arg0, {})
	return {}
end

registerVal1 = DataSourceHelpers.ListSetup("ArenaBestCallingCards", __FUNC_5A73_, true)
DataSources.ArenaBestCallingCards = registerVal1
local function __FUNC_5B11_(arg0)
	CoD.ArenaUtility.AddArenaVetCallingCards(arg0, {})
	local registerVal2 = CoD.ArenaUtility.GetArenaVetMasterCard(arg0)
	DataSources.MasterCallingCard.setModelValues(arg0, registerVal2.models.title, registerVal2.models.description, registerVal2.models.iconId, registerVal2.models.percentComplete)
	return {}
end

registerVal1 = DataSourceHelpers.ListSetup("ArenaVetCallingCards", __FUNC_5B11_, true)
DataSources.ArenaVetCallingCards = registerVal1
function CoD.ChallengesUtility.GetEmblemBackgroundImageText(arg0, arg1)
	local registerVal2, registerVal3 = Engine.GetChallengeUnlockEmblemInfo(arg0, arg1)
	if registerVal2 < 0.000000 then
		return registerVal3
	end
	local registerVal6 = {}
	registerVal6 = {11.000000, 3.000000}
	if registerVal3 then
		local registerVal7 = {}
		registerVal7 = {3.000000}
	end
	local registerVal8, registerVal9, registerVal10 = ipairs(registerVal7)
	for index11,value12 in registerVal8, registerVal9, registerVal10 do
		local registerVal13 = Engine.TableLookupGetColumnValueForRow(CoD.emblemIconsTable, registerVal2, value12)
		if registerVal13 ~= "" then
		else
		end
	end
	return registerVal3, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

function CoD.ChallengesUtility.IsSpecialistTransmissionChallenge(arg0, arg1, arg2)
	if arg0 == Enum.statsMilestoneTypes_t.MILESTONE_SPECIALIST then
		local registerVal4 = CoD.getStatsMilestoneTable((arg1 + 1.000000))
		local registerVal3 = Engine.TableLookupGetColumnValueForRow(registerVal4, arg2, Enum.milestoneTableColumns_t.MILESTONE_COLUMN_STATNAME)
		registerVal4 = LUI.startswith(registerVal3, "transmission")
		return true
		if registerVal4 and arg0 == Enum.statsMilestoneTypes_t.MILESTONE_GLOBAL then
			registerVal4 = CoD.getStatsMilestoneTable((arg1 + 1.000000))
			registerVal3 = Engine.TableLookupGetColumnValueForRow(registerVal4, arg2, Enum.milestoneTableColumns_t.MILESTONE_COLUMN_STATNAME)
			if registerVal3 == "specialist_transmissions" or registerVal3 == "hero_transmissions" then
				return true
			end
		end
	end
	return false
end

function CoD.ChallengesUtility.IsTerribleKnifeChallenge(arg0, arg1, arg2)
	local registerVal4 = CoD.getStatsMilestoneTable((arg1 + 1.000000))
	local registerVal3 = Engine.TableLookupGetColumnValueForRow(registerVal4, arg2, Enum.milestoneTableColumns_t.MILESTONE_COLUMN_INCLUDE)
	if arg0 == Enum.statsMilestoneTypes_t.MILESTONE_GROUP and registerVal3 == "weapon_knife" then
		return true
	end
	return false
end

function CoD.ChallengesUtility.IsHiddenPostShipChallenge(arg0, arg1, arg2)
	local registerVal3 = {}
	registerVal3 = {"melee_knuckles", "melee_butterfly", "melee_wrench", "pistol_shotgun", "melee_crowbar", "melee_sword", "ar_garand", "special_crossbow", "melee_bat", "melee_dagger", "smg_mp40", "sniper_quickscope", "melee_mace", "melee_fireaxe", "ar_famas", "launcher_multi", "melee_boneglass", "melee_improvise", "pistol_energy", "shotgun_energy", "lmg_infinite", "sniper_double", "ar_peacekeeper", "melee_shockbaton", "melee_nunchuks", "melee_boxing", "melee_katana", "melee_shovel", "smg_nailgun", "special_discgun", "melee_prosthetic", "melee_chainsaw", "ar_pulse", "smg_rechamber", "melee_crescent", "ar_m16", "smg_ppsh", "ar_galil", "knife_ballistic", "smg_ak74u", "pistol_m1911", "ar_an94", "launcher_ex41", "smg_msmc", "shotgun_olympia", "sniper_xpr50", "smg_sten2", "lmg_rpk", "ar_m14", "sniper_mosin"}
	local registerVal4 = {}
	registerVal4 = {"_gold", "_for_diamond"}
	local registerVal6 = CoD.getStatsMilestoneTable((arg1 + 1.000000))
	local registerVal5 = Engine.TableLookupGetColumnValueForRow(registerVal6, arg2, Enum.milestoneTableColumns_t.MILESTONE_COLUMN_CHALLENGESTATNAME)
	if registerVal5 ~= "" and registerVal5 == "challenges" or registerVal5 == "challenges_tu" then
		return false
	end
	registerVal6, registerVal7, registerVal8 = ipairs(registerVal3)
	for index9,value10 in registerVal6, registerVal7, registerVal8 do
		local registerVal11, registerVal12, registerVal13 = ipairs(registerVal4)
		for index14,value15 in registerVal11, registerVal12, registerVal13 do
			if registerVal5 == (value10 .. value15) then
				return true
			end
			local registerVal16 = LUI.startswith(registerVal5, "z_weap_")
			registerVal16 = LUI.endswith(registerVal5, value15)
			if registerVal16 and registerVal16 then
				return true
			end
		end
	end
	if registerVal5 == "bowie_knife_gold" or registerVal5 == "bowie_knife_for_diamond" then
		return true
	end
	registerVal7 = CoD.getStatsMilestoneTable((arg1 + 1.000000))
	registerVal6 = Engine.TableLookupGetColumnValueForRow(registerVal7, arg2, Enum.milestoneTableColumns_t.MILESTONE_COLUMN_INCLUDE)
	if registerVal5 == "weapons_mastery" and registerVal6 ~= "knife_loadout" then
		return true
	end
	if registerVal5 == "secondary_mastery" and registerVal6 ~= "weapon_knife" then
		return true
	end
	return false
end

function CoD.ChallengesUtility.IsSpecialContractChallenge(arg0, arg1, arg2)
	local registerVal4 = CoD.getStatsMilestoneTable((arg1 + 1.000000), Enum.eModes.MODE_MULTIPLAYER)
	local registerVal3 = Engine.TableLookupGetColumnValueForRow(registerVal4, arg2, Enum.milestoneTableColumns_t.MILESTONE_COLUMN_CATEGORY)
	registerVal4, registerVal5, registerVal6 = ipairs(CoD.ChallengesUtility.SpecialContractCategories)
	if  == registerVal3 then
		return true
	end
	return false
end

function CoD.ChallengesUtility.IsSideBetMasteryChallenge(arg0, arg1, arg2)
	local registerVal4 = CoD.getStatsMilestoneTable((arg1 + 1.000000), Enum.eModes.MODE_MULTIPLAYER)
	local registerVal3 = Engine.TableLookupGetColumnValueForRow(registerVal4, arg2, Enum.milestoneTableColumns_t.MILESTONE_COLUMN_STATNAME)
	if registerVal3 ~= "tscc_challenge_mastery" then
	end
	return true
end

registerVal1 = LuaEnums.createEnum("Default", "Epic", "CompletionEpic")
CoD.ChallengesUtility.SpecialistRewardTiers = registerVal1
registerVal1 = LuaEnums.createEnum("Default", "Gold", "Diamond", "DarkMatter")
CoD.ChallengesUtility.CamoRewardTiers = registerVal1
registerVal1 = LuaEnums.createEnum("Default", "Mastery")
CoD.ChallengesUtility.EmblemRewardTiers = registerVal1
registerVal1 = LuaEnums.createEnum("Default")
CoD.ChallengesUtility.DefaultRewardTiers = registerVal1
function CoD.ChallengesUtility.GetChallengeRewardDisplayTier(arg0)
	local registerVal3 = IsMultiplayer()
	if registerVal3 then
		if arg0.specialistInfo then
			if arg0.specialistInfo.unlockItemIndex == 9.000000 then
			else
				if arg0.specialistInfo.unlockItemIndex == 8.000000 then
				else
				else
					if arg0.camoInfo then
						if arg0.camoInfo.camoRef == "camo_darkmatter" then
						else
							if arg0.camoInfo.camoRef == "camo_diamond" then
							else
								if arg0.camoInfo.camoRef == "camo_gold" then
								else
								else
									if arg0.reticleInfo then
									else
										if arg0.emblemInfo then
											if arg0.emblemInfo.isMastery then
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
	return CoD.ChallengesUtility.EmblemRewardTiers.Default, CoDLUIDecompiler.LuaRegister
end

function CoD.ChallengesUtility.GetChallengeRewardInfo(arg0, arg1, arg2, arg3, arg4, arg5)
	local registerVal6 = CoD.getStatsMilestoneTable((arg1 + 1.000000))
	local registerVal7 = Engine.TableLookupGetColumnValueForRow(registerVal6, arg2, Enum.milestoneTableColumns_t.MILESTONE_COLUMN_STRING)
	local registerVal8 = tonumber(Engine.TableLookupGetColumnValueForRow(registerVal6, arg2, Enum.milestoneTableColumns_t.MILESTONE_COLUMN_TIERID))
	local registerVal9 = tonumber(Engine.TableLookupGetColumnValueForRow(registerVal6, (arg2 + 1.000000), Enum.milestoneTableColumns_t.MILESTONE_COLUMN_TIERID))
	local registerVal10 = tonumber(Engine.TableLookupGetColumnValueForRow(registerVal6, arg2, Enum.milestoneTableColumns_t.MILESTONE_COLUMN_TARGETVALUE))
	if not registerVal10 then
	end
	local registerVal11 = Engine.TableLookupGetColumnValueForRow(registerVal6, arg2, Enum.milestoneTableColumns_t.MILESTONE_COLUMN_UNLOCKITEM)
	local registerVal12 = Engine.TableLookupGetColumnValueForRow(registerVal6, arg2, Enum.milestoneTableColumns_t.MILESTONE_COLUMN_UNLOCKIMAGE)
	local registerVal13 = Engine.TableLookupGetColumnValueForRow(registerVal6, arg2, Enum.milestoneTableColumns_t.MILESTONE_COLUMN_UNLOCKHEROITEM)
	local registerVal14 = Engine.TableLookupGetColumnValueForRow(registerVal6, arg2, Enum.milestoneTableColumns_t.MILESTONE_COLUMN_CHALLENGESTATNAME)
	local registerVal16 = Engine.TableLookupGetColumnValueForRow(registerVal6, arg2, Enum.milestoneTableColumns_t.MILESTONE_COLUMN_CATEGORY)
	local registerVal17 = tonumber(Engine.TableLookupGetColumnValueForRow(registerVal6, arg2, Enum.milestoneTableColumns_t.MILESTONE_COLUMN_XPEARNED))
	local registerVal18 = tonumber(Engine.TableLookupGetColumnValueForRow(registerVal6, arg2, Enum.milestoneTableColumns_t.MILESTONE_COLUMN_VIALSEARNED))
	if registerVal8 and 0.000000 < registerVal8 then
	else
		if registerVal9 and registerVal9 == 1.000000 then
		end
	end
	if registerVal11 ~= "" then
	else
	end
	if true == true then
		local registerVal22 = Engine.Localize(("CHALLENGE_TIER_" .. registerVal8))
		if registerVal16 then
		else
			local registerVal24 = tonumber(Engine.TableLookupGetColumnValueForRow(registerVal6, (arg2 + 1.000000), Enum.milestoneTableColumns_t.MILESTONE_COLUMN_TIERID))
			if not registerVal24 then
			end
			if -1.000000 <= registerVal8 then
			else
				local registerVal25 = Engine.TableLookupGetColumnValueForRow(registerVal6, (arg2 + 1.000000), Enum.milestoneTableColumns_t.MILESTONE_COLUMN_CATEGORY)
			end
		end
		if not registerVal25 then
		end
	end
	if CoD.isMultiplayer then
	end
	if CoD.isZombie == true then
		if arg3 == Enum.statsMilestoneTypes_t.MILESTONE_DAILY then
		else
			if "" == "darkops" then
			else
			end
		end
	end
	if arg3 == Enum.statsMilestoneTypes_t.MILESTONE_GLOBAL then
		local registerVal26 = Engine.Localize(registerVal7, 0.000000, "", registerVal22)
		registerVal26 = Engine.Localize((registerVal7 .. "_DESC"), 0.000000, "", registerVal22)
	else
		if arg3 == Enum.statsMilestoneTypes_t.MILESTONE_DAILY then
			registerVal26 = Engine.Localize(registerVal7)
		else
			if arg3 == Enum.statsMilestoneTypes_t.MILESTONE_GROUP then
				local registerVal28 = Engine.GetItemGroupByIndex(arg4)
				registerVal26 = Engine.Localize(("CHALLENGE_TYPE_" .. registerVal28))
				local registerVal27 = Engine.Localize(registerVal7, 0.000000, registerVal26, registerVal22)
				registerVal27 = Engine.Localize((registerVal7 .. "_DESC"), 0.000000, registerVal26, registerVal22)
			else
				if arg3 == Enum.statsMilestoneTypes_t.MILESTONE_GAMEMODE then
					registerVal26 = Engine.GetCurrentGameType()
					registerVal27 = Dvar.scr_hardcore:get()
					if registerVal27 ~= 0.000000 then
					end
					registerVal27 = Engine.Localize(("CHALLENGE_TYPE_" .. ("hc" .. registerVal26)))
					registerVal28 = Engine.Localize(registerVal7, 0.000000, registerVal27, registerVal22)
					registerVal28 = Engine.Localize((registerVal7 .. "_DESC"), 0.000000, registerVal27, registerVal22)
				else
					if arg3 == Enum.statsMilestoneTypes_t.MILESTONE_WEAPON then
						registerVal26 = Engine.GetItemName(arg4)
						registerVal27 = Engine.Localize(registerVal7, 0.000000, registerVal26, registerVal22)
						registerVal27 = Engine.Localize((registerVal7 .. "_DESC"), 0.000000, registerVal26, registerVal22)
					else
						if arg3 == Enum.statsMilestoneTypes_t.MILESTONE_ATTACHMENTS then
							registerVal26 = Engine.GetAttachmentNameByIndex(arg4)
							registerVal27 = Engine.Localize(registerVal7, 0.000000, registerVal26, registerVal22)
							registerVal27 = Engine.Localize((registerVal7 .. "_DESC"), 0.000000, registerVal26, registerVal22)
							registerVal28 = Engine.GetAttachmentRefByIndex(arg4)
							local registerVal29 = string.len("reticle_")
							registerVal27 = string.sub(registerVal11, (registerVal29 + 1.000000))
							registerVal28 = Engine.TableLookup(arg0, CoD.attachmentTable, Enum.attachmentTableColumn_e.ATTACHMENTTABLE_COLUMN_NAME, registerVal26, Enum.attachmentTableColumn_e.ATTACHMENTTABLE_COLUMN_REFERENCE)
							registerVal29 = {}
							local registerVal30 = Engine.Localize(("MPUI_RETICLE_" .. registerVal28 .. "_" .. registerVal27))
							registerVal29.displayString = registerVal30
							registerVal29.image = (registerVal28 .. "_" .. registerVal27)
							if registerVal11 and registerVal11 ~= "" and arg3 == Enum.statsMilestoneTypes_t.MILESTONE_SPECIALIST then
								registerVal27 = Engine.CurrentSessionMode()
								registerVal26 = Engine.GetHeroInfo(registerVal27, arg5)
								registerVal28 = Engine.CurrentSessionMode()
								registerVal27 = Engine.GetHeroBundleInfo(registerVal28, arg5)
								registerVal28 = Engine.Localize(registerVal7, "", registerVal26.displayName)
								registerVal28 = Engine.Localize((registerVal7 .. "_DESC"), 0.000000, registerVal26.displayName, registerVal22)
							end
						end
					end
				end
			end
		end
	end
	registerVal27 = LUI.startswith(registerVal11, "camo_")
	if registerVal27 then
		registerVal27 = Engine.TableLookup(arg0, CoD.attachmentTable, Enum.attachmentTableColumn_e.ATTACHMENTTABLE_COLUMN_REFERENCE, registerVal11, Enum.attachmentTableColumn_e.ATTACHMENTTABLE_COLUMN_NAME)
		registerVal28 = Engine.Localize(registerVal7, registerVal27)
		if arg3 == Enum.statsMilestoneTypes_t.MILESTONE_GLOBAL then
			registerVal28 = Engine.TableLookupGetColumnValueForRow(registerVal6, arg2, Enum.milestoneTableColumns_t.MILESTONE_COLUMN_INCLUDE)
			if registerVal28 ~= "ar_garand" and registerVal28 ~= "ar_famas" and registerVal28 ~= "ar_peacekeeper" and registerVal28 ~= "ar_pulse" and registerVal28 ~= "ar_m16" and registerVal28 ~= "ar_galil" and registerVal28 == "ar_an94" or registerVal28 == "ar_m14" then
			else
				if registerVal28 ~= "pistol_shotgun" and registerVal28 == "pistol_energy" or registerVal28 == "pistol_m1911" then
				else
					if registerVal28 ~= "sniper_quickscope" and registerVal28 ~= "sniper_double" and registerVal28 == "sniper_xpr50" or registerVal28 == "sniper_mosin" then
					else
						if registerVal28 == "lmg_infinite" or registerVal28 == "lmg_rpk" then
						else
							if registerVal28 ~= "smg_mp40" and registerVal28 ~= "smg_nailgun" and registerVal28 ~= "smg_rechamber" and registerVal28 ~= "smg_ppsh" and registerVal28 ~= "smg_ak74u" and registerVal28 == "smg_msmc" or registerVal28 == "smg_sten2" then
							else
								if registerVal28 == "launcher_multi" or registerVal28 == "launcher_ex41" then
								else
									if registerVal28 == "shotgun_energy" or registerVal28 == "shotgun_olympia" then
									else
									else
										if arg3 == Enum.statsMilestoneTypes_t.MILESTONE_GROUP then
											registerVal29 = Engine.GetItemGroupByIndex(arg4)
										else
											registerVal28 = Engine.GetItemImage(arg4)
										end
									end
								end
							end
						end
					end
				end
			end
		end
		registerVal28 = {}
		registerVal29 = Engine.Localize(registerVal27)
		registerVal28.displayString = registerVal29
		registerVal29 = Engine.TableLookup(arg0, CoD.attachmentTable, Enum.attachmentTableColumn_e.ATTACHMENTTABLE_COLUMN_REFERENCE, registerVal11, Enum.attachmentTableColumn_e.ATTACHMENTTABLE_COLUMN_IMAGE)
		registerVal28.image = registerVal29
		registerVal28.camoRef = registerVal11
	end
	local function __FUNC_9AAC_(arg0, arg1)
		local registerVal2 = Engine.TableLookupGetColumnValueForRow(arg0, arg1, Enum.milestoneTableColumns_t.MILESTONE_COLUMN_ISMASTERY)
		registerVal2 = Engine.TableLookupGetColumnValueForRow(arg0, arg1, Enum.milestoneTableColumns_t.MILESTONE_COLUMN_ISEXPERT)
		if registerVal2 ~= "1" and registerVal2 ~= "1" then
		end
		return true
	end

	if arg4 then
		registerVal30 = tonumber(Engine.TableLookupGetColumnValueForRow(registerVal6, arg2, Enum.milestoneTableColumns_t.MILESTONE_COLUMN_INDEX))
		registerVal29, registerVal30, registerVal31 = CoD.ChallengesUtility.GetEmblemBackgroundImageText(registerVal30, arg4)
		if arg1 or not "" then
		end
		if "" == "sidebet" then
		end
		if registerVal30 then
			local registerVal33 = {}
			local registerVal34 = Engine.Localize(registerVal31)
			registerVal33.displayString = registerVal34
			registerVal33.image = registerVal30
			registerVal33.rewardSize = "CallingCard"
			registerVal34 = __FUNC_9AAC_(registerVal6, arg2)
			registerVal33.isMastery = registerVal34
			registerVal33.category = ""
		end
	end
	registerVal30 = LUI.startswith("", "EM_")
	registerVal30 = {}
	registerVal31 = {}
	registerVal31.table = CoD.backgroundsTable
	registerVal31.title = "MENU_CALLING_CARD"
	registerVal31.descriptionColumn = 4.000000
	local registerVal32 = {}
	registerVal32 = {11.000000, 3.000000}
	registerVal31.imageNameColumn = registerVal32
	registerVal31.rewardSize = "CallingCard"
	registerVal32 = {}
	registerVal32.table = CoD.emblemIconsTable
	registerVal32.title = "MENU_EMBLEM"
	registerVal32.descriptionColumn = 4.000000
	registerVal33 = {}
	registerVal33 = {3.000000}
	registerVal32.imageNameColumn = registerVal33
	registerVal32.rewardSize = ""
	registerVal30 = {registerVal31, registerVal32}
	registerVal31, registerVal32, registerVal33 = ipairs(registerVal30)
	for index34,value35 in registerVal31, registerVal32, registerVal33 do
		local registerVal37, registerVal38, registerVal39 = ipairs(value35.imageNameColumn)
		for index40,value41 in registerVal37, registerVal38, registerVal39 do
			local registerVal42 = Engine.TableLookup(nil, value35.table, value35.descriptionColumn, "", value41)
			if registerVal42 and registerVal42 ~= "" then
			else
			end
		end
		if registerVal42 and registerVal42 ~= "" then
			registerVal37 = {}
			registerVal38 = Engine.Localize("")
			registerVal37.displayString = registerVal38
			registerVal37.image = registerVal42
			registerVal37.rewardSize = value35.rewardSize
			registerVal38 = __FUNC_9AAC_(registerVal6, arg2)
			registerVal37.isMastery = registerVal38
		else
		end
	end
	registerVal31 = {}
	registerVal32 = {}
	registerVal32.prefix = "body_"
	registerVal32.type = Enum.CharacterItemType.CHARACTER_ITEM_TYPE_BODY
	registerVal32.locString = "HEROES_X_BODY"
	registerVal33 = {}
	registerVal33.prefix = "helmet_"
	registerVal33.type = Enum.CharacterItemType.CHARACTER_ITEM_TYPE_HELMET
	registerVal33.locString = "HEROES_X_HELMET"
	registerVal31 = {registerVal32, registerVal33}
	registerVal32 = Engine.GetEquippedHero(arg0, Engine.CurrentSessionMode())
	registerVal33, registerVal34, registerVal35 = ipairs(registerVal31)
	for index36,value37 in registerVal33, registerVal34, registerVal35 do
		registerVal38 = LUI.startswith(registerVal13, value37.prefix)
		if registerVal38 then
			local registerVal41 = value37.prefix:len()
			registerVal38 = tonumber(registerVal13:sub((registerVal41 + 1.000000)))
			local registerVal40 = Engine.CurrentSessionMode()
			registerVal39 = Engine.GetHeroItemInfo(registerVal40, registerVal32, value37.type, (registerVal38 - 1.000000))
			registerVal40 = {}
			registerVal41 = Engine.Localize(value37.locString, registerVal39.name)
			registerVal40.displayString = registerVal41
			registerVal40.image = registerVal39.icon
			registerVal40.unlockItemIndex = (registerVal38 - 1.000000)
		else
		end
	end
	registerVal34 = LUI.startswith(registerVal14, "transmission")
	registerVal34 = Engine.GetEquippedHero(arg0, Engine.CurrentSessionMode())
	registerVal38 = "transmission":len()
	registerVal35 = tonumber(registerVal14:sub((registerVal38 + 1.000000)))
	local registerVal36, registerVal37 = Engine.IsSpecialistTransmissionLocked(arg0, registerVal34, registerVal35)
	if registerVal14 and registerVal14 ~= "" and registerVal34 and not registerVal36 then
		registerVal38 = {}
		local registerVal43 = Engine.CurrentSessionMode()
		registerVal39 = Engine.Localize("CHALLENGE_TRANSMISSION_N_FOR_X", registerVal35, Engine.GetHeroName(registerVal43, arg5))
		registerVal38.displayString = registerVal39
		registerVal38.image = "t7_hud_hero_icon_filetype_audio"
	end
	if registerVal17 and 0.000000 < registerVal17 then
		registerVal35 = {}
		registerVal38 = Engine.GetXPScale(arg0)
		registerVal36 = Engine.Localize("RANK_XP", (registerVal17 * registerVal38))
		registerVal35.displayString = registerVal36
		registerVal35.image = "t7_hud_mp_notifications_xp_blue"
	end
	if registerVal18 and 0.000000 < registerVal18 then
		registerVal36 = {}
		registerVal39 = IsZMDoubleVialActive(arg0)
		registerVal39 = Engine.GetZMVialScale(arg0)
		if arg1 or not registerVal39 then
		end
		registerVal37 = Engine.Localize("ZMUI_BGB_TOKENS_GAINED_REWARD", (registerVal18 * 1.000000))
		registerVal36.displayString = registerVal37
		registerVal37 = IsZMDoubleVialActive(arg0)
		if arg1 or not "uie_t7_icon_zm_double_vial_backer" then
		end
		registerVal36.image = "t7_hud_zm_vial_256"
	end
	registerVal36 = {}
	registerVal36.challengeString = registerVal7
	registerVal36.challengeAwardString = registerVal7
	registerVal36.localizedTierText = registerVal22
	registerVal36.titleText = registerVal28
	registerVal36.subtitleText = registerVal28
	registerVal36.icon = "uie_t7_hud_aar_bm_challenge"
	registerVal36.reticleInfo = registerVal29
	registerVal36.camoInfo = registerVal28
	registerVal36.emblemInfo = registerVal37
	registerVal36.specialistInfo = registerVal40
	registerVal36.transmissionInfo = registerVal38
	registerVal36.xpInfo = registerVal35
	registerVal36.vialInfo = registerVal36
	return registerVal36
end

function CoD.ChallengesUtility.GetSideBetCallingCards(arg0, arg1)
	return CoD.ChallengesUtility.GetChallengeTable(arg0, Enum.eModes.MODE_MULTIPLAYER, "mp", "sidebet", arg1, false)
end

