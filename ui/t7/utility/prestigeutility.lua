-- Decompiled with CoDLUIDecompiler by JariK

CoD.PrestigeUtility = {}
CoD.PrestigeUtility.INVALID_PARAGON_ICON_ID = 0.000000
CoD.PrestigeUtility.DEFAULT_PARAGON_ICON_ID = 11.000000
CoD.PrestigeUtility.PRESTIGE_MASTER_MAX_TIERS = 10.000000
CoD.PrestigeUtility.LEADERBOARD_RESET_FILE_MP = "leaderboards/mp_leaderboards_reset.csv"
CoD.PrestigeUtility.isInPermanentUnlockMenu = false
CoD.PrestigeUtility.previousGameMode = nil
CoD.PrestigeUtility.previousStatsMilestonePath = nil
function CoD.PrestigeUtility.GetPrestigeGameMode()
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.GetModel(registerVal2, "prestigeGameMode")
	if registerVal1 == nil then
		return Enum.eModes.MODE_MULTIPLAYER
	end
	registerVal2 = Engine.GetModelValue(registerVal1)
	if registerVal2 == nil or registerVal2 == Enum.eModes.MODE_INVALID then
	end
	return Enum.eModes.MODE_MULTIPLAYER
end

function CoD.PrestigeUtility.GetMaxRankByMode(arg0)
	if arg0 == Enum.eModes.MODE_CAMPAIGN then
		return CoD.maxRankByMode.CP
	else
		if arg0 == Enum.eModes.MODE_MULTIPLAYER then
			return CoD.maxRankByMode.MP
		else
			if arg0 == Enum.eModes.MODE_ZOMBIES then
				return CoD.maxRankByMode.ZM
			end
		end
	end
	return 0.000000
end

function CoD.PrestigeUtility.GetPrestigeGameModeString()
	local registerVal0 = CoD.PrestigeUtility.GetPrestigeGameMode()
	if registerVal0 == Enum.eModes.MODE_ZOMBIES then
		return "zm"
	end
	return "mp"
end

function CoD.PrestigeUtility.GetStringForMode(arg0)
	local registerVal1 = CoD.PrestigeUtility.GetPrestigeGameMode()
	if registerVal1 == Enum.eModes.MODE_ZOMBIES then
		return ("MENU_ZM_" .. arg0)
	end
	return ("MENU_" .. arg0)
end

function CoD.PrestigeUtility.GetCurrentPLevel(arg0, arg1)
	if not arg1 then
		local registerVal2 = CoD.PrestigeUtility.GetPrestigeGameMode()
	end
	registerVal2 = Engine.GetPlayerStats(arg0, CoD.STATS_LOCATION_NORMAL, registerVal2)
	if registerVal2 ~= nil then
		return registerVal2.PlayerStatsList.PLEVEL.StatValue:get()
	else
		return 1.000000
	end
end

function CoD.PrestigeUtility.GetBackgroundIdByPLevel(arg0, arg1, arg2)
	if not arg2 then
		local registerVal3 = CoD.PrestigeUtility.GetPrestigeGameMode()
	end
	registerVal3 = Engine.GetPrestigeCap(registerVal3)
	if registerVal3 < arg1 then
		return 0.000000
	end
	registerVal3 = Engine.GetBackgroundsForCategoryName(arg0, "prestige")
	if #arg0 < arg1 then
		return 0.000000
	end
	return registerVal3[arg1].id
end

function CoD.PrestigeUtility.GetPermanentUnlockMode()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.GetModel(registerVal1, "prestigeGameMode")
	registerVal1 = Engine.GetModelValue(registerVal0)
	if registerVal0 ~= nil and registerVal1 ~= nil and registerVal1 ~= Enum.eModes.MODE_INVALID then
		return registerVal1
	end
	return Engine.CurrentSessionMode()
end

function CoD.PrestigeUtility.CreatePermanentUnlockTokenModel(arg0)
	local registerVal2 = Engine.GetModelForController(arg0)
	local registerVal1 = Engine.GetModel(registerVal2, "permanentUnlockTokensCount")
	registerVal2 = CoD.PrestigeUtility.GetPermanentUnlockMode()
	Engine.SetModelValue(registerVal1, Engine.GetPermanentUnlockCount(arg0, registerVal2))
end

function CoD.PrestigeUtility.IsPrestigeBackground(arg0)
	local registerVal1 = Engine.GetEmblemBackgroundId()
	local registerVal2 = Engine.GetBackgroundsForCategoryName(arg0, "prestige")
	local registerVal4, registerVal5, registerVal6 = pairs(registerVal2)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		if value8.id == registerVal1 then
		else
		end
	end
	registerVal4 = Engine.GetBackgroundsForCategoryName(arg0, "zmprestige")
	registerVal5, registerVal6, registerVal7 = pairs(registerVal4)
	for index8,value9 in registerVal5, registerVal6, registerVal7 do
		if value9.id == registerVal1 then
		else
		end
	end
	return true
end

function CoD.PrestigeUtility.ResetChallengeDatasources(arg0)
	CoD.ChallengesUtility.ResetCategoryStats(arg0)
	CoD.ChallengesUtility.ResetNearCompletion(arg0)
	local registerVal1 = CoD.ChallengesUtility.IsBackgroundLockByChallenge(arg0, CoD.PrestigeUtility.GetPrestigeGameMode())
	registerVal1 = CoD.PrestigeUtility.IsPrestigeBackground(arg0)
	if not arg0 or registerVal1 then
		Engine.ExecNow(arg0, "emblemSetRandomDefaultBackground")
	end
end

function CoD.PrestigeUtility.ResetToFirstSelectedCharacterLoadout(arg0, arg1, arg2)
	if 10.000000 <= arg1 then
	end
	Engine.ExecNow(arg0, ("resetMPCharacterLoadout " .. 0.000000 .. " " .. arg2))
	Engine.SetHeroForCACType(arg0, Enum.eModes.MODE_MULTIPLAYER, Enum.CACType.CAC_TYPE_MP_PUBLIC, 0.000000)
	Engine.SetHeroLoadoutItemForCACType(arg0, Enum.eModes.MODE_MULTIPLAYER, Enum.CACType.CAC_TYPE_MP_PUBLIC, 0.000000, arg2)
	Engine.SetFirstTimeComplete(arg0, Enum.eModes.MODE_MULTIPLAYER, true)
end

function CoD.PrestigeUtility.EnterPrestigeActionMP(arg0, arg1, arg2)
	local registerVal7 = Engine.StorageGetBuffer(arg1, Enum.StorageFileType.STORAGE_MP_LOADOUTS)
	if registerVal7 then
		local registerVal8 = registerVal7.leagueCacLoadouts.herogadget:get()
		registerVal8 = registerVal7.leagueCacLoadouts.heroweapon:get()
		registerVal8 = registerVal7.customMatchCacLoadouts.herogadget:get()
		registerVal8 = registerVal7.customMatchCacLoadouts.heroweapon:get()
	end
	registerVal8 = Engine.GetFirstSelectedHeroLoadout(arg1, Enum.CACType.CAC_TYPE_MP_PUBLIC)
	local registerVal9 = CoD.PrestigeUtility.GetCurrentPLevel(arg1, Enum.eModes.MODE_MULTIPLAYER)
	LUI.CoDMetrics.PrestigeEvent(arg1, registerVal9, (registerVal9 + 1.000000), "mp")
	Engine.ExecNow(arg1, "exec gamedata/configs/mp/prestige_reset.cfg")
	local registerVal13 = tostring(Enum.eModes.MODE_MULTIPLAYER)
	Engine.ExecNow(arg1, ("PrestigeAddCAC " .. registerVal13))
	CoD.PrestigeUtility.ResetToFirstSelectedCharacterLoadout(arg1, registerVal8.characterType, registerVal8.loadoutSlot)
	CoD.PrestigeUtility.ResetChallengeDatasources(arg1)
	local registerVal10 = Engine.StorageGetBuffer(arg1, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	if registerVal10 ~= nil then
		registerVal10.validationEvent:set("pres")
	end
	local registerVal11 = Engine.StorageGetBuffer(arg1, Enum.StorageFileType.STORAGE_MP_LOADOUTS)
	if registerVal11 and registerVal8 and registerVal8 and registerVal8 and registerVal8 then
		registerVal11.leagueCacLoadouts.herogadget:set(registerVal8)
		registerVal11.leagueCacLoadouts.heroweapon:set(registerVal8)
		registerVal11.customMatchCacLoadouts.herogadget:set(registerVal8)
		registerVal11.customMatchCacLoadouts.heroweapon:set(registerVal8)
	end
	SaveLoadout(arg0, arg1)
	local registerVal15 = tostring(Enum.eModes.MODE_MULTIPLAYER)
	Engine.Exec(arg1, ("uploadstats " .. registerVal15))
	Engine.Exec(arg1, "savegamerprofilestats")
	DataSources.PrestigeStats.getModel(arg1)
	local registerVal12 = GoBack(arg2, arg1)
	OpenSystemOverlay(arg0, registerVal12, arg1, "PrestigeFanfare", nil)
end

function CoD.PrestigeUtility.SavePermanentlyUnlockedWeaponVariants(arg0, arg1)
	if arg1 == Enum.eModes.MODE_ZOMBIES then
		local registerVal4 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_ZM_STATS_ONLINE)
		for index6=0.000000, (#registerVal4.prestigeTokens - 1.000000), 1.000000 do
			local registerVal11 = registerVal4.prestigeTokens[index6].itemUnlocked:get()
			if registerVal11 ~= 0.000000 then
				registerVal11 = {}
				local registerVal12 = registerVal4.prestigeTokens[index6].itemUnlocked:get()
				registerVal11.itemIndex = registerVal12
				table.insert({}, registerVal11)
			end
		end
		local registerVal6 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_ZM_LOADOUTS)
		for index8=0.000000, (#registerVal6.cacLoadouts.variant - 1.000000), 1.000000 do
			local registerVal14, registerVal15, registerVal16 = ipairs({})
			for index17,value18 in registerVal14, registerVal15, registerVal16 do
				local registerVal20 = registerVal6.cacLoadouts.variant[index8].weaponIndex:get()
				if value18.itemIndex == registerVal20 then
				end
			end
			if value18 then
				registerVal14 = registerVal6.cacLoadouts.variant[index8].variantName:get()
				value18.variantName = registerVal14
				value18.attachment = {}
				for index15=0.000000, (#registerVal6.cacLoadouts.variant[index8].attachment - 1.000000), 1.000000 do
					registerVal20 = registerVal6.cacLoadouts.variant[index8].attachment[index15]:get()
					value18.attachment[index15] = registerVal20
				end
				value18.attachmentVariant = {}
				for index16=0.000000, (#registerVal6.cacLoadouts.variant[index8].attachmentVariant - 1.000000), 1.000000 do
					local registerVal21 = registerVal6.cacLoadouts.variant[index8].attachmentVariant[index16]:get()
					value18.attachmentVariant[index16] = registerVal21
				end
				registerVal16 = registerVal6.cacLoadouts.variant[index8].reticleIndex:get()
				value18.reticleIndex = registerVal16
				registerVal16 = registerVal6.cacLoadouts.variant[index8].camoIndex:get()
				value18.camoIndex = registerVal16
				registerVal16 = registerVal6.cacLoadouts.variant[index8].paintjobSlot:get()
				value18.paintjobSlot = registerVal16
				registerVal16 = registerVal6.cacLoadouts.variant[index8].paintjobIndex:get()
				value18.paintjobIndex = registerVal16
				registerVal16 = registerVal6.cacLoadouts.variant[index8].weaponIndex:get()
				value18.weaponIndex = registerVal16
				registerVal16 = registerVal6.cacLoadouts.variant[index8].variantIndex:get()
				value18.variantIndex = registerVal16
				registerVal16 = registerVal6.cacLoadouts.variant[index8].sortIndex:get()
				value18.sortIndex = registerVal16
				registerVal16 = registerVal6.cacLoadouts.variant[index8].readOnly:get()
				value18.readOnly = registerVal16
				registerVal16 = registerVal6.cacLoadouts.variant[index8].createTime:get()
				value18.createTime = registerVal16
				table.insert({}, value18)
			end
		end
	end
	return {}
end

function CoD.PrestigeUtility.RestorePermanentlyUnlockedWeaponVariants(arg0, arg1, arg2)
	local registerVal3 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_ZM_LOADOUTS)
	local registerVal4, registerVal5, registerVal6 = ipairs(arg2)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		local registerVal9 = LuaUtils.IsTableEmpty(value8)
		if not registerVal9 then
			registerVal3.cacLoadouts.variant[(index7 - 1.000000)].variantName:set(value8.variantName)
			for index11=0.000000, (#value8.attachment - 1.000000), 1.000000 do
				registerVal3.cacLoadouts.variant[(index7 - 1.000000)].attachment[index11]:set(value8.attachment[index11])
			end
			for index12=0.000000, (#value8.attachmentVariant - 1.000000), 1.000000 do
				registerVal3.cacLoadouts.variant[(index7 - 1.000000)].attachmentVariant[index12]:set(value8.attachmentVariant[index12])
			end
			registerVal3.cacLoadouts.variant[(index7 - 1.000000)].reticleIndex:set(value8.reticleIndex)
			registerVal3.cacLoadouts.variant[(index7 - 1.000000)].camoIndex:set(value8.camoIndex)
			registerVal3.cacLoadouts.variant[(index7 - 1.000000)].paintjobSlot:set(value8.paintjobSlot)
			registerVal3.cacLoadouts.variant[(index7 - 1.000000)].paintjobIndex:set(value8.paintjobIndex)
			registerVal3.cacLoadouts.variant[(index7 - 1.000000)].weaponIndex:set(value8.weaponIndex)
			registerVal3.cacLoadouts.variant[(index7 - 1.000000)].variantIndex:set(value8.variantIndex)
			registerVal3.cacLoadouts.variant[(index7 - 1.000000)].sortIndex:set(value8.sortIndex)
			registerVal3.cacLoadouts.variant[(index7 - 1.000000)].readOnly:set(value8.readOnly)
			registerVal3.cacLoadouts.variant[(index7 - 1.000000)].createTime:set(value8.createTime)
		end
	end
end

function CoD.PrestigeUtility.EnterPrestigeActionZM(arg0, arg1, arg2)
	local registerVal3 = CoD.PrestigeUtility.GetCurrentPLevel(arg1)
	LUI.CoDMetrics.PrestigeEvent(arg1, registerVal3, (registerVal3 + 1.000000), "zm")
	local registerVal4 = CoD.PrestigeUtility.SavePermanentlyUnlockedWeaponVariants(arg1, Enum.eModes.MODE_ZOMBIES)
	Engine.ExecNow(arg1, "exec gamedata/configs/zm/zm_prestige_reset.cfg")
	local registerVal8 = tostring(Enum.eModes.MODE_ZOMBIES)
	Engine.ExecNow(arg1, ("PrestigeAddCAC " .. registerVal8))
	CoD.PrestigeUtility.ResetChallengeDatasources(arg1)
	CoD.PrestigeUtility.RestorePermanentlyUnlockedWeaponVariants(arg1, Enum.eModes.MODE_ZOMBIES, registerVal4)
	SaveLoadout(arg0, arg1)
	registerVal8 = tostring(Enum.eModes.MODE_ZOMBIES)
	Engine.Exec(arg1, ("uploadstats " .. registerVal8))
	Engine.Exec(arg1, "savegamerprofilestats")
	DataSources.PrestigeStats.getModel(arg1)
	local registerVal5 = GoBack(arg2, arg1)
	OpenSystemOverlay(arg0, registerVal5, arg1, "PrestigeFanfare", nil)
end

function CoD.PrestigeUtility.FreshStartActionMP(arg0, arg1, arg2)
	local registerVal3 = Engine.GetFirstSelectedHeroLoadout(arg1, Enum.CACType.CAC_TYPE_MP_PUBLIC)
	local function __FUNC_5863_(arg0, arg1)
		local registerVal4 = {}
		registerVal4 = {"contracts", arg1, "active"}
		table.insert(arg0, registerVal4)
		registerVal4 = {}
		registerVal4 = {"contracts", arg1, "award_given"}
		table.insert(arg0, registerVal4)
		registerVal4 = {}
		registerVal4 = {"contracts", arg1, "index"}
		table.insert(arg0, registerVal4)
		registerVal4 = {}
		registerVal4 = {"contracts", arg1, "progress"}
		table.insert(arg0, registerVal4)
	end

	local function __FUNC_59B4_(arg0, arg1)
		local registerVal4 = {}
		registerVal4 = {"consumables", arg1, "awarded"}
		table.insert(arg0, registerVal4)
		registerVal4 = {}
		registerVal4 = {"consumables", arg1, "consumed"}
		table.insert(arg0, registerVal4)
	end

	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7 = {"blackMarketShowBreadcrumb"}
	local registerVal8 = {}
	registerVal8 = {"codPointMsgSeen"}
	local registerVal9 = {}
	registerVal9 = {"retailIncentiveMsgSeen"}
	local registerVal10 = {}
	registerVal10 = {"digitalIncentiveMsgSeen"}
	local registerVal11 = {}
	registerVal11 = {"spIncentiveMsgSeen"}
	local registerVal12 = {}
	registerVal12 = {"weaponContractData", "currentValue"}
	local registerVal13 = {}
	registerVal13 = {"weaponContractData", "matchesPlayed"}
	local registerVal14 = {}
	registerVal14 = {"weaponContractData", "startTimestamp"}
	local registerVal15 = {}
	registerVal15 = {"weaponContractData", "completeTimestamp"}
	local registerVal16 = {}
	registerVal16 = {"blackjack_contract_count"}
	local registerVal17 = {}
	registerVal17 = {"blackjack_purchase_count"}
	local registerVal18 = {}
	registerVal18 = {"ui_seen_community_contract"}
	local registerVal19 = {}
	registerVal19 = {"ui_community_contract_milestone"}
	local registerVal20 = {}
	registerVal20 = {"ui_seen_new_contracts"}
	local registerVal21 = {}
	registerVal21 = {"lastSeenThermometerValue"}
	local registerVal22 = {}
	registerVal22 = {"TenthSpecialistContract", "working_towards_special_card_number"}
	local registerVal23 = {}
	registerVal23 = {"TenthSpecialistContract", "special_card_earned"}
	local registerVal24 = {}
	registerVal24 = {"PlayerStatsList", "BLACKJACK_CHALLENGE", "statValue"}
	local registerVal25 = {}
	registerVal25 = {"PlayerStatsList", "BLACKJACK_CHALLENGE", "challengeValue"}
	local registerVal26 = {}
	registerVal26 = {"PlayerStatsList", "TSCC_CHALLENGE_MASTERY", "statValue"}
	local registerVal27 = {}
	registerVal27 = {"PlayerStatsList", "TSCC_CHALLENGE_MASTERY", "challengeValue"}
	local registerVal28 = {}
	registerVal28 = {"PlayerStatsList", "CONTRACT_HUGE_AR_KILLS", "statValue"}
	local registerVal29 = {}
	registerVal29 = {"PlayerStatsList", "CONTRACT_HUGE_AR_KILLS", "challengeValue"}
	local registerVal30 = {}
	registerVal30 = {"PlayerStatsList", "CONTRACT_HUGE_LMG_KILLS", "statValue"}
	local registerVal31 = {}
	registerVal31 = {"PlayerStatsList", "CONTRACT_HUGE_LMG_KILLS", "challengeValue"}
	local registerVal32 = {}
	registerVal32 = {"PlayerStatsList", "CONTRACT_HUGE_MELEE_WEAPON_KILLS", "statValue"}
	local registerVal33 = {}
	registerVal33 = {"PlayerStatsList", "CONTRACT_HUGE_MELEE_WEAPON_KILLS", "challengeValue"}
	local registerVal34 = {}
	registerVal34 = {"PlayerStatsList", "CONTRACT_HUGE_SHOTGUN_KILLS", "statValue"}
	local registerVal35 = {}
	registerVal35 = {"PlayerStatsList", "CONTRACT_HUGE_SHOTGUN_KILLS", "challengeValue"}
	local registerVal36 = {}
	registerVal36 = {"PlayerStatsList", "CONTRACT_HUGE_SMG_KILLS", "statValue"}
	local registerVal37 = {}
	registerVal37 = {"PlayerStatsList", "CONTRACT_HUGE_SMG_KILLS", "challengeValue"}
	local registerVal38 = {}
	registerVal38 = {"PlayerStatsList", "CONTRACT_HUGE_SNIPER_KILLS", "statValue"}
	local registerVal39 = {}
	registerVal39 = {"PlayerStatsList", "CONTRACT_HUGE_SNIPER_KILLS", "challengeValue"}
	local registerVal40 = {}
	registerVal40 = {"PlayerStatsList", "CONTRACT_HUGE_SPECIALIST_WEAPON_KILLS", "statValue"}
	local registerVal41 = {}
	registerVal41 = {"PlayerStatsList", "CONTRACT_HUGE_SPECIALIST_WEAPON_KILLS", "challengeValue"}
	local registerVal42 = {}
	registerVal42 = {"extraBools", 2.000000}
	local registerVal43 = {}
	registerVal43 = {"PlayerStatsList", "ARENA_MAX_RANK", "statValue"}
	local registerVal44 = {}
	registerVal44 = {"extraBools", 3.000000}
	local registerVal45 = {}
	registerVal45 = {"extraBools", 4.000000}
	local registerVal46 = {}
	registerVal46 = {"extraBytes", 1.000000}
	local registerVal47 = {}
	registerVal47 = {"extraBools", 7.000000}
	local registerVal48 = {}
	registerVal48 = {"extraBools", 8.000000}
	local registerVal49 = {}
	registerVal49 = {"extraBools", 9.000000}
	local registerVal50 = {}
	registerVal50 = {"extraBools", 10.000000}
	local registerVal51 = {}
	registerVal51 = {"extraBytes", 2.000000}
	local registerVal52 = {}
	registerVal52 = {"extraBytes", 3.000000}
	local registerVal53 = {}
	registerVal53 = {"extraBools", 11.000000}
	local registerVal54 = {}
	registerVal54 = {"extraBools", 12.000000}
	local registerVal55 = {}
	registerVal55 = {"extraBools", 13.000000}
	local registerVal56 = {}
	registerVal56 = {"extraBools", 14.000000}
	registerVal6 = {registerVal7, registerVal8, registerVal9, registerVal10, registerVal11, registerVal12, registerVal13, registerVal14, registerVal15, registerVal16, registerVal17, registerVal18, registerVal19, registerVal20, registerVal21, registerVal22, registerVal23, registerVal24, registerVal25, registerVal26, registerVal27, registerVal28, registerVal29, registerVal30, registerVal31, registerVal32, registerVal33, registerVal34, registerVal35, registerVal36, registerVal37, registerVal38, registerVal39, registerVal40, registerVal41, registerVal42, registerVal43, registerVal44, registerVal45, registerVal46, registerVal47, registerVal48, registerVal49, registerVal50, registerVal51, registerVal52, registerVal53, registerVal54, registerVal55, registerVal56}
	registerVal7 = {}
	registerVal7 = {"extraBools", 15.000000}
	registerVal8 = {}
	registerVal8 = {"extraBytes", 4.000000}
	registerVal9 = {}
	registerVal9 = {"extraBytes", 5.000000}
	registerVal10 = {}
	registerVal10 = {"extraBytes", 6.000000}
	registerVal11 = {}
	registerVal11 = {"extraBytes", 7.000000}
	registerVal12 = {}
	registerVal12 = {"extraBytes", 8.000000}
	registerVal13 = {}
	registerVal13 = {"extraBytes", 9.000000}
	registerVal14 = {}
	registerVal14 = {"extraBytes", 10.000000}
	registerVal15 = {}
	registerVal15 = {"extraBytes", 11.000000}
	registerVal16 = {}
	registerVal16 = {"extraBytes", 12.000000}
	registerVal17 = {}
	registerVal17 = {"extraBytes", 13.000000}
	registerVal18 = {}
	registerVal18 = {"extraBools", 16.000000}
	registerVal19 = {}
	registerVal19 = {"extraBools", 17.000000}
	registerVal20 = {}
	registerVal20 = {"extraBools", 18.000000}
	registerVal21 = {}
	registerVal21 = {"extraBools", 19.000000}
	registerVal6 = {registerVal7, registerVal8, registerVal9, registerVal10, registerVal11, registerVal12, registerVal13, registerVal14, registerVal15, registerVal16, registerVal17, registerVal18, registerVal19, registerVal20, registerVal21}
	registerVal7, registerVal8, registerVal9 = pairs(LuaUtils.BMContracts)
	for index10,value11 in registerVal7, registerVal8, registerVal9 do
		__FUNC_5863_(registerVal6, value11)
	end
	registerVal8 = Engine.GetPlayerStats(arg1, CoD.STATS_LOCATION_NORMAL, CoD.PrestigeUtility.GetPrestigeGameMode())
	registerVal9 = registerVal8.PlayerStatsList.STATRESETCOUNT.StatValue:get()
	for index10=0.000000, (#registerVal8.consumables - 1.000000), 1.000000 do
		__FUNC_59B4_(registerVal6, index10)
	end
	registerVal10, registerVal11, registerVal12 = pairs(registerVal6)
	for index13,value14 in registerVal10, registerVal11, registerVal12 do
		registerVal17, registerVal18, registerVal19 = pairs(value14)
		for index20,value21 in registerVal17, registerVal18, registerVal19 do
		end
		registerVal17 = registerVal8[value21]:get()
		{}[("" .. value21)] = registerVal17
	end
	registerVal13 = tostring(Enum.eModes.MODE_MULTIPLAYER)
	Engine.ExecNow(arg1, ("PrestigeStatsResetAll " .. registerVal13))
	Engine.ExecNow(arg1, ("resetLeaderboards " .. CoD.PrestigeUtility.LEADERBOARD_RESET_FILE_MP .. " LEADERBOARD_RESET_FAILED"))
	registerVal10, registerVal11, registerVal12 = pairs(registerVal6)
	for index13,value14 in registerVal10, registerVal11, registerVal12 do
		registerVal17, registerVal18, registerVal19 = pairs(value14)
		for index20,value21 in registerVal17, registerVal18, registerVal19 do
		end
		registerVal8[value21]:set({}[("" .. value21)])
	end
	Engine.ExecNow(arg1, "RemoveLockedCamosMP")
	Engine.ExecNow(arg1, "RemoveLockedReticlesMP")
	CoD.PrestigeUtility.ResetToFirstSelectedCharacterLoadout(arg1, registerVal3.characterType, registerVal3.loadoutSlot)
	CoD.PrestigeUtility.ResetChallengeDatasources(arg1)
	registerVal10 = Engine.StorageGetBuffer(arg1, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	if registerVal10 ~= nil then
		registerVal10.validationEvent:set("fresh")
	end
	registerVal8.PlayerStatsList.STATRESETCOUNT.StatValue:set((registerVal9 + 1.000000))
	SaveLoadout(arg0, arg1)
	registerVal14 = tostring(Enum.eModes.MODE_MULTIPLAYER)
	Engine.Exec(arg1, ("uploadstats " .. registerVal14))
	Engine.Exec(arg1, "savegamerprofilestats")
	CoD.mpFreshStartPerformed = true
	SetIsInPrestigeMenu(false)
	CloseStartMenu(arg2, arg1)
end

function CoD.PrestigeUtility.FreshStartActionZM(arg0, arg1, arg2)
	local registerVal6 = tostring(Enum.eModes.MODE_ZOMBIES)
	Engine.ExecNow(arg1, ("PrestigeStatsResetAll " .. registerVal6))
	Engine.ExecNow(arg1, "RemoveLockedCamosZM")
	Engine.ExecNow(arg1, "RemoveLockedReticlesZM")
	CoD.PrestigeUtility.ResetChallengeDatasources(arg1)
	SaveLoadout(arg0, arg1)
	registerVal6 = tostring(Enum.eModes.MODE_ZOMBIES)
	Engine.Exec(arg1, ("uploadstats " .. registerVal6))
	Engine.Exec(arg1, "savegamerprofilestats")
	CoD.zmFreshStartPerformed = true
	SetIsInPrestigeMenu(false)
	CloseStartMenu(arg2, arg1)
end

function CoD.PrestigeUtility.ResetForStarterPack(arg0, arg1, arg2)
	local registerVal4 = IsStarterPack(arg1)
	if not arg1 or not registerVal4 then
		return 
	end
	registerVal4 = CoD.PrestigeUtility.GetCurrentPLevel(arg1, Enum.eModes.MODE_MULTIPLAYER)
	if registerVal4 <= 0.000000 then
		return 
	end
	local registerVal9 = tostring(Enum.eModes.MODE_MULTIPLAYER)
	Engine.ExecNow(arg1, ("StarterPackPrestigeReset " .. registerVal9))
	registerVal9 = tostring(Enum.eModes.MODE_MULTIPLAYER)
	Engine.Exec(arg1, ("uploadstats " .. registerVal9))
end

CoD.PrestigeUtility.ChooseClassSets = {}
CoD.PrestigeUtility.ChooseClassSets.Default = 0.000000
CoD.PrestigeUtility.ChooseClassSets.Custom = 1.000000
CoD.PrestigeUtility.ContentCategory = {}
CoD.PrestigeUtility.ContentCategory.SPECIALISTS = 1.000000
CoD.PrestigeUtility.ContentCategory.WEAPONS = 2.000000
CoD.PrestigeUtility.ContentCategory.LETHAL = 3.000000
CoD.PrestigeUtility.ContentCategory.TACTICAL = 4.000000
CoD.PrestigeUtility.ContentCategory.PERK1 = 5.000000
CoD.PrestigeUtility.ContentCategory.PERK2 = 6.000000
CoD.PrestigeUtility.ContentCategory.PERK3 = 7.000000
CoD.PrestigeUtility.ContentCategory.WILDCARDS = 8.000000
CoD.PrestigeUtility.ContentCategory.SCORESTREAKS = 9.000000
CoD.PrestigeUtility.ContentCategory.GOBBLEGUM = 10.000000
function CoD.PrestigeUtility.GetContentCategoryData(arg0)
	if arg0 == CoD.PrestigeUtility.ContentCategory.SPECIALISTS then
		local registerVal1 = {}
		registerVal1.menuName = "ChooseCharacterLoadout"
		registerVal1.weaponCategory = ""
		return registerVal1
	else
		if arg0 == CoD.PrestigeUtility.ContentCategory.WEAPONS then
			registerVal1 = {}
			registerVal1.menuName = "PrimaryWeaponSelect"
			registerVal1.weaponCategory = "primary"
			return registerVal1
		else
			if arg0 == CoD.PrestigeUtility.ContentCategory.LETHAL then
				registerVal1 = {}
				registerVal1.menuName = "LethalEquipmentSelect"
				registerVal1.weaponCategory = "primarygadget"
				return registerVal1
			else
				if arg0 == CoD.PrestigeUtility.ContentCategory.TACTICAL then
					registerVal1 = {}
					registerVal1.menuName = "TacticalEquipmentSelect"
					registerVal1.weaponCategory = "secondarygadget"
					return registerVal1
				else
					if arg0 == CoD.PrestigeUtility.ContentCategory.PERK1 then
						registerVal1 = {}
						registerVal1.menuName = "PerkSelect"
						registerVal1.weaponCategory = "specialty1"
						return registerVal1
					else
						if arg0 == CoD.PrestigeUtility.ContentCategory.PERK2 then
							registerVal1 = {}
							registerVal1.menuName = "PerkSelect"
							registerVal1.weaponCategory = "specialty2"
							return registerVal1
						else
							if arg0 == CoD.PrestigeUtility.ContentCategory.PERK3 then
								registerVal1 = {}
								registerVal1.menuName = "PerkSelect"
								registerVal1.weaponCategory = "specialty3"
								return registerVal1
							else
								if arg0 == CoD.PrestigeUtility.ContentCategory.WILDCARDS then
									registerVal1 = {}
									registerVal1.menuName = "WildcardSelect"
									registerVal1.weaponCategory = "bonuscard1"
									return registerVal1
								else
									if arg0 == CoD.PrestigeUtility.ContentCategory.SCORESTREAKS then
										registerVal1 = {}
										registerVal1.menuName = "Scorestreaks"
										registerVal1.weaponCategory = ""
										return registerVal1
									else
										if arg0 == CoD.PrestigeUtility.ContentCategory.GOBBLEGUM then
											registerVal1 = {}
											registerVal1.menuName = "BubblegumBuffSelect"
											registerVal1.weaponCategory = ""
											return registerVal1
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

function CoD.PrestigeUtility.AddPrestigeChallenges(arg0, arg1, arg2)
	CoD.PrestigeUtility.AddPrestigeCallingCards(arg0, arg1, {})
	local registerVal4, registerVal5, registerVal6 = ipairs({})
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		local registerVal11 = {}
		registerVal11.challengeRow = 0.000000
		registerVal11.imageID = value8.models.iconId
		registerVal11.isLocked = value8.models.isLocked
		registerVal11.isMastery = false
		table.insert(arg2, registerVal11)
	end
end

function CoD.PrestigeUtility.AddPrestigeCallingCards(arg0, arg1, arg2)
	local registerVal3 = type(arg2)
	if registerVal3 ~= "table" then
		return 
	end
	registerVal3 = CoD.PrestigeUtility.GetCurrentPLevel(arg0, arg1)
	local registerVal4 = Engine.GetPrestigeCap(arg1)
	if arg1 == Enum.eModes.MODE_ZOMBIES then
		if registerVal3 ~= registerVal4 then
			return 
		end
		local registerVal5 = Engine.GetBackgroundsForCategoryName(arg0, "zmprestige")
		if #arg0 == 0.000000 then
			return 
		end
		local registerVal8 = {}
		local registerVal9 = {}
		local registerVal11 = CoD.ModeToModeString(arg1)
		local registerVal10 = GetPrestigeTitleForPLevelAndMode(registerVal11, registerVal4)
		registerVal9.title = registerVal10
		registerVal10 = Engine.Localize("CLASS_PRESTIGE_MASTER_UNLOCK_DESC")
		registerVal9.description = registerVal10
		registerVal9.iconId = registerVal5[1.000000].id
		registerVal9.maxTier = 0.000000
		registerVal9.currentTier = 0.000000
		registerVal9.statPercent = 1.000000
		registerVal9.statFractionText = ""
		registerVal9.tierStatus = ""
		registerVal9.xp = ""
		registerVal9.percentComplete = 1.000000
		registerVal9.isLocked = false
		registerVal9.hideProgress = false
		registerVal8.models = registerVal9
		registerVal9 = {}
		registerVal9.isPrestige = true
		registerVal8.properties = registerVal9
		table.insert(arg2, registerVal8)
		return 
	end
	for index5=1.000000, registerVal3, 1.000000 do
		registerVal9 = Engine.Localize("CLASS_PRESTIGE_UNLOCK_DESC", index5)
		if index5 == registerVal4 then
			registerVal10 = Engine.Localize("CLASS_PRESTIGE_MASTER_UNLOCK_DESC")
		end
		local registerVal12 = {}
		local registerVal13 = {}
		local registerVal15 = CoD.ModeToModeString(arg1)
		local registerVal14 = GetPrestigeTitleForPLevelAndMode(registerVal15, index5)
		registerVal13.title = registerVal14
		registerVal13.description = registerVal10
		registerVal14 = CoD.PrestigeUtility.GetBackgroundIdByPLevel(arg0, index5, arg1)
		registerVal13.iconId = registerVal14
		registerVal13.maxTier = 0.000000
		registerVal13.currentTier = 0.000000
		registerVal13.statPercent = 1.000000
		registerVal13.statFractionText = ""
		registerVal13.tierStatus = ""
		registerVal13.xp = ""
		registerVal13.percentComplete = 1.000000
		registerVal13.isLocked = false
		registerVal13.hideProgress = false
		registerVal12.models = registerVal13
		registerVal13 = {}
		registerVal13.isPrestige = true
		registerVal12.properties = registerVal13
		table.insert(arg2, registerVal12)
	end
end

local registerVal1 = {}
registerVal1.displayText = "MENU_SPECIALISTS"
registerVal1.description = "MENU_PERMANENT_UNLOCKS_SPECIALISTS_DESC"
registerVal1.image = "t7_icon_pbt_mp_battery_head1_skin1_rwd"
registerVal1.action = OpenChooseCharacterLoadout
registerVal1.param = ""
{}.SPECIALISTS = registerVal1
registerVal1 = {}
registerVal1.displayText = "MENU_WEAPONS"
registerVal1.description = "MENU_PERMANENT_UNLOCKS_WEAPONS_DESC"
registerVal1.image = "t7_icon_weapon_ar_standard_rwd"
registerVal1.action = OpenPermanentWeaponUnlockCategoryMenu
registerVal1.param = CoD.PrestigeUtility.ContentCategory.WEAPONS
{}.WEAPONS = registerVal1
registerVal1 = {}
registerVal1.displayText = "MPUI_PRIMARYGADGET"
registerVal1.description = "MENU_PERMANENT_UNLOCKS_LETHALS_DESC"
registerVal1.image = "t7_hud_icon_menu_frag_rwd"
registerVal1.action = OpenPermanentUnlockCategoryMenu
registerVal1.param = CoD.PrestigeUtility.ContentCategory.LETHAL
{}.LETHAL = registerVal1
registerVal1 = {}
registerVal1.displayText = "MENU_TACTICAL"
registerVal1.description = "MENU_PERMANENT_UNLOCKS_TACTICALS_DESC"
registerVal1.image = "t7_hud_icon_menu_concussion_rwd"
registerVal1.action = OpenPermanentUnlockCategoryMenu
registerVal1.param = CoD.PrestigeUtility.ContentCategory.TACTICAL
{}.TACTICAL = registerVal1
registerVal1 = {}
registerVal1.displayText = "MPUI_PERK1"
registerVal1.description = "MENU_PERMANENT_UNLOCKS_PERK1_DESC"
registerVal1.image = "t7_hud_perk_jetcharge_rwd"
registerVal1.action = OpenPermanentUnlockCategoryMenu
registerVal1.param = CoD.PrestigeUtility.ContentCategory.PERK1
{}.PERK1 = registerVal1
registerVal1 = {}
registerVal1.displayText = "MPUI_PERK2"
registerVal1.description = "MENU_PERMANENT_UNLOCKS_PERK2_DESC"
registerVal1.image = "t7_hud_perk_fasthands_rwd"
registerVal1.action = OpenPermanentUnlockCategoryMenu
registerVal1.param = CoD.PrestigeUtility.ContentCategory.PERK2
{}.PERK2 = registerVal1
registerVal1 = {}
registerVal1.displayText = "MPUI_PERK3"
registerVal1.description = "MENU_PERMANENT_UNLOCKS_PERK3_DESC"
registerVal1.image = "t7_hud_perk_gungho_rwd"
registerVal1.action = OpenPermanentUnlockCategoryMenu
registerVal1.param = CoD.PrestigeUtility.ContentCategory.PERK3
{}.PERK3 = registerVal1
registerVal1 = {}
registerVal1.displayText = "MENU_WILDCARDS"
registerVal1.description = "MENU_PERMANENT_UNLOCKS_WILDCARDS_DESC"
registerVal1.image = "t7_hud_cac_wildcards_perk3greed_256_rwd"
registerVal1.action = OpenPermanentUnlockCategoryMenu
registerVal1.param = CoD.PrestigeUtility.ContentCategory.WILDCARDS
{}.WILDCARDS = registerVal1
registerVal1 = {}
registerVal1.displayText = "MENU_SCORESTREAKS"
registerVal1.description = "MENU_PERMANENT_UNLOCKS_SCORESTREAKS_DESC"
registerVal1.image = "t7_hud_ks_drone_attack_rwd"
registerVal1.action = OpenScorestreaks
registerVal1.param = ""
{}.SCORESTREAKS = registerVal1
registerVal1 = {}
registerVal1.displayText = "MENU_STORE_BUBBLEGUM_BUFFS"
registerVal1.description = "MENU_PERMANENT_UNLOCKS_GOBBLEGUM_DESC"
registerVal1.image = "uie_t7_menu_gobblegum_comsumable"
registerVal1.action = OpenPermanentUnlockCategoryMenu
registerVal1.param = CoD.PrestigeUtility.ContentCategory.GOBBLEGUM
{}.GOBBLEGUM = registerVal1
registerVal1 = {}
registerVal1 = {{}.SPECIALISTS, {}.WEAPONS, {}.LETHAL, {}.TACTICAL, {}.PERK1, {}.PERK2, {}.PERK3, {}.WILDCARDS, {}.SCORESTREAKS}
local registerVal2 = {}
registerVal2 = {{}.WEAPONS, {}.GOBBLEGUM}
local function __FUNC_6C9C_(arg0)
	local registerVal3 = CoD.PrestigeUtility.GetPrestigeGameMode()
	if registerVal3 == Enum.eModes.MODE_ZOMBIES then
	end
	registerVal3, registerVal4, registerVal5 = pairs(registerVal2)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		local registerVal10 = {}
		local registerVal11 = {}
		registerVal11.displayText = value7.displayText
		registerVal11.description = value7.description
		registerVal11.image = value7.image
		registerVal11.action = value7.action
		registerVal11.param = value7.param
		registerVal10.models = registerVal11
		table.insert({}, registerVal10)
	end
	return {}
end

CoD.PrestigeUtility.PermanentUnlockCategoryListPrepare = __FUNC_6C9C_
local registerVal4 = DataSourceHelpers.ListSetup("PermanentUnlockCategoryList", CoD.PrestigeUtility.PermanentUnlockCategoryListPrepare, true)
DataSources.PermanentUnlockCategoryList = registerVal4
local registerVal5 = {}
registerVal5.menuName = "SystemOverlay_Full"
registerVal5.frameWidget = "CoD.systemOverlay_Prestige"
local function __FUNC_6EB5_(arg0)
	local registerVal1 = CoD.PrestigeUtility.GetCurrentPLevel(arg0)
	return Engine.Localize("MENU_PRESTIGE_ENTER_LEVEL_QUESTION", (registerVal1 + 1.000000))
end

registerVal5.title = __FUNC_6EB5_
local function __FUNC_6FBB_()
	CoD.PrestigeUtility.GetStringForMode("PRESTIGE_MODE_DESC_3")
	return Engine.Localize(CoD.PrestigeUtility.GetStringForMode)
end

registerVal5.description = __FUNC_6FBB_
registerVal5.supportText = ""
local function __FUNC_70A0_(arg0)
	local registerVal1 = CoD.PrestigeUtility.GetCurrentPLevel(arg0)
	local registerVal2 = Engine.GetRankIcon(0.000000, (registerVal1 + 1.000000), CoD.PrestigeUtility.GetPrestigeGameMode())
	return GetRankIconLarge(registerVal2)
end

registerVal5.image = __FUNC_70A0_
registerVal5.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
local function __FUNC_71E6_(arg0)
	local function __FUNC_72A0_(arg0)
		local registerVal2 = CoD.PrestigeUtility.GetCurrentPLevel(arg0)
		local function __FUNC_7436_(arg0, arg1, arg2)
			local registerVal3 = {}
			local registerVal4 = {}
			registerVal4.displayText = arg0
			registerVal3.models = registerVal4
			registerVal4 = {}
			registerVal4.action = arg1
			registerVal4.selectIndex = arg2
			registerVal3.properties = registerVal4
			return registerVal3
		end

		local function __FUNC_74E2_(arg0, arg1, arg2, arg3, arg4)
			local registerVal5 = CheckIfFeatureIsBanned(arg2, LuaEnums.FEATURE_BAN.PRESTIGE)
			if registerVal5 then
				LuaUtils.UI_ShowErrorMessageDialog(arg2, GetFeatureBanInfo(arg2, LuaEnums.FEATURE_BAN.PRESTIGE))
				return 
			end
			registerVal5 = CoD.PrestigeUtility.GetPrestigeGameMode()
			if registerVal5 == Enum.eModes.MODE_ZOMBIES then
				CoD.PrestigeUtility.EnterPrestigeActionZM(arg0, arg2, arg4)
			else
				CoD.PrestigeUtility.EnterPrestigeActionMP(arg0, arg2, arg4)
			end
		end

		local function __FUNC_777E_(arg0, arg1, arg2, arg3, arg4)
			GoBack(arg4, arg2)
		end

		local registerVal9 = Engine.Localize("MENU_PRESTIGE_ENTER_LEVEL", (registerVal2 + 1.000000))
		table.insert({}, __FUNC_7436_(registerVal9, __FUNC_74E2_, false))
		table.insert({}, __FUNC_7436_("MENU_CANCEL", __FUNC_777E_, true))
		return {}
	end

	local registerVal2 = DataSourceHelpers.ListSetup("UnlockTokenMenuList", __FUNC_72A0_, true)
	DataSources.UnlockTokenMenuList = registerVal2
	return "UnlockTokenMenuList"
end

registerVal5.listDatasource = __FUNC_71E6_
registerVal5[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
CoD.OverlayUtility.AddSystemOverlay("EnterPrestigeMode", registerVal5)
registerVal5 = {}
registerVal5.menuName = "SystemOverlay_Full"
registerVal5.frameWidget = "CoD.systemOverlay_PrestigeFanfare"
local function __FUNC_77C8_(arg0)
	local registerVal1 = CoD.PrestigeUtility.GetCurrentPLevel(arg0)
	return Engine.Localize("MPUI_PRESTIGE_N", registerVal1)
end

registerVal5.title = __FUNC_77C8_
local function __FUNC_78B3_(arg0)
	local registerVal1 = CoD.PrestigeUtility.GetCurrentPLevel(arg0)
	return Engine.Localize("MENU_PRESTIGE_FANFARE_DESC", registerVal1)
end

registerVal5.description = __FUNC_78B3_
local function __FUNC_79A6_(arg0)
	local registerVal1 = CoD.PrestigeUtility.GetCurrentPLevel(arg0)
	local registerVal2 = Engine.GetRankIcon(0.000000, registerVal1, CoD.PrestigeUtility.GetPrestigeGameMode())
	return GetRankIconLarge(registerVal2)
end

registerVal5.image = __FUNC_79A6_
local function __FUNC_7AE1_(arg0)
	local registerVal1 = CoD.PrestigeUtility.GetCurrentPLevel(arg0)
	return CoD.PrestigeUtility.GetBackgroundIdByPLevel(arg0, registerVal1)
end

registerVal5.backgroundId = __FUNC_7AE1_
local function __FUNC_7BBD_()
	local function __FUNC_7BF0_(arg0, arg1, arg2, arg3)
		CoD.PrestigeUtility.CreatePermanentUnlockTokenModel(arg2)
		GoBackAndUpdateStateOnPreviousMenu(arg3, arg2)
	end

	return __FUNC_7BF0_
end

registerVal5[CoD.OverlayUtility.ContinuePropertyName] = __FUNC_7BBD_
CoD.OverlayUtility.AddSystemOverlay("PrestigeFanfare", registerVal5)
registerVal5 = {}
registerVal5.menuName = "SystemOverlay_Full"
registerVal5.frameWidget = "CoD.systemOverlay_Prestige"
local registerVal6 = Engine.Localize("MENU_PRESTIGE_USE_REFUND_QUESTION")
registerVal5.title = registerVal6
registerVal6 = Engine.Localize("MENU_PRESTIGE_USE_REFUND_DESC")
registerVal5.description = registerVal6
registerVal5.supportText = ""
registerVal5.image = "t7_icons_prestige_mp_refund"
registerVal5.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
local function __FUNC_7CCB_(arg0)
	local function __FUNC_7D84_(arg0)
		local function __FUNC_7E9F_(arg0, arg1, arg2)
			local registerVal3 = {}
			local registerVal4 = {}
			registerVal4.displayText = arg0
			registerVal3.models = registerVal4
			registerVal4 = {}
			registerVal4.action = arg1
			registerVal4.selectIndex = arg2
			registerVal3.properties = registerVal4
			return registerVal3
		end

		local function __FUNC_7F4A_(arg0, arg1, arg2, arg3, arg4)
			local registerVal5 = CheckIfFeatureIsBanned(arg2, LuaEnums.FEATURE_BAN.PRESTIGE_EXTRAS)
			if registerVal5 then
				LuaUtils.UI_ShowErrorMessageDialog(arg2, GetFeatureBanInfo(arg2, LuaEnums.FEATURE_BAN.PRESTIGE_EXTRAS))
				return 
			end
			registerVal5 = Engine.GetFirstSelectedHeroLoadout(arg2, Enum.CACType.CAC_TYPE_MP_PUBLIC)
			local registerVal9 = tostring(CoD.PrestigeUtility.GetPrestigeGameMode())
			Engine.ExecNow(arg2, ("PrestigeRespec " .. registerVal9))
			Engine.ExecNow(arg2, "exec gamedata/configs/mp/mp_reset_class_sets.cfg")
			CoD.PrestigeUtility.ResetToFirstSelectedCharacterLoadout(arg2, registerVal5.characterType, registerVal5.loadoutSlot)
			CoD.PrestigeUtility.ResetChallengeDatasources(arg2)
			SaveLoadout(arg0, arg2)
			registerVal9 = tostring(CoD.PrestigeUtility.GetPrestigeGameMode())
			Engine.Exec(arg2, ("uploadstats " .. registerVal9))
			Engine.Exec(arg2, "savegamerprofilestats")
			local registerVal6 = GoBackAndUpdateStateOnPreviousMenu(arg4, arg2)
			SetFocusToElement(registerVal6, "RefundButton", arg2)
		end

		local function __FUNC_8483_(arg0, arg1, arg2, arg3, arg4)
			GoBack(arg4, arg2)
		end

		local registerVal8 = Engine.Localize("MENU_USE_REFUND")
		table.insert({}, __FUNC_7E9F_(registerVal8, __FUNC_7F4A_, false))
		table.insert({}, __FUNC_7E9F_("MENU_CANCEL", __FUNC_8483_, true))
		return {}
	end

	local registerVal2 = DataSourceHelpers.ListSetup("UnlockTokenMenuList", __FUNC_7D84_, true)
	DataSources.UnlockTokenMenuList = registerVal2
	return "UnlockTokenMenuList"
end

registerVal5.listDatasource = __FUNC_7CCB_
registerVal5[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
CoD.OverlayUtility.AddSystemOverlay("PrestigeRefundTokens", registerVal5)
registerVal5 = {}
registerVal5.menuName = "SystemOverlay_Full"
registerVal5.frameWidget = "CoD.systemOverlay_Prestige"
registerVal6 = Engine.Localize("MENU_PRESTIGE_FRESH_START_QUESTION")
registerVal5.title = registerVal6
local function __FUNC_84CC_()
	CoD.PrestigeUtility.GetStringForMode("PRESTIGE_FRESH_START_DESC")
	return Engine.Localize(CoD.PrestigeUtility.GetStringForMode)
end

registerVal5.description = __FUNC_84CC_
registerVal5.supportText = ""
registerVal5.image = "t7_icons_prestige_mp_freshstart"
registerVal5.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
local function __FUNC_85B9_(arg0)
	local function __FUNC_8674_(arg0)
		local function __FUNC_8794_(arg0, arg1, arg2)
			local registerVal3 = {}
			local registerVal4 = {}
			registerVal4.displayText = arg0
			registerVal3.models = registerVal4
			registerVal4 = {}
			registerVal4.action = arg1
			registerVal4.selectIndex = arg2
			registerVal3.properties = registerVal4
			return registerVal3
		end

		local function __FUNC_8842_(arg0, arg1, arg2, arg3, arg4)
			local registerVal5 = CheckIfFeatureIsBanned(arg2, LuaEnums.FEATURE_BAN.PRESTIGE_EXTRAS)
			if registerVal5 then
				LuaUtils.UI_ShowErrorMessageDialog(arg2, GetFeatureBanInfo(arg2, LuaEnums.FEATURE_BAN.PRESTIGE_EXTRAS))
				return 
			end
			registerVal5 = GoBack(arg4, arg2)
			OpenSystemOverlay(arg0, registerVal5, arg2, "PrestigeFreshStart2", nil)
		end

		local function __FUNC_8A04_(arg0, arg1, arg2, arg3, arg4)
			GoBack(arg4, arg2)
		end

		local registerVal8 = Engine.Localize("MENU_USE_FRESH_START")
		table.insert({}, __FUNC_8794_(registerVal8, __FUNC_8842_, false))
		table.insert({}, __FUNC_8794_("MENU_CANCEL", __FUNC_8A04_, true))
		return {}
	end

	local registerVal2 = DataSourceHelpers.ListSetup("UnlockTokenMenuList", __FUNC_8674_, true)
	DataSources.UnlockTokenMenuList = registerVal2
	return "UnlockTokenMenuList"
end

registerVal5.listDatasource = __FUNC_85B9_
registerVal5[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
CoD.OverlayUtility.AddSystemOverlay("PrestigeFreshStart1", registerVal5)
registerVal5 = {}
registerVal5.menuName = "SystemOverlay_Full"
registerVal5.frameWidget = "CoD.systemOverlay_Prestige"
registerVal6 = Engine.Localize("MENU_ARE_YOU_SURE")
registerVal5.title = registerVal6
local function __FUNC_8A50_()
	CoD.PrestigeUtility.GetStringForMode("PRESTIGE_FRESH_START_WARNING")
	return Engine.Localize(CoD.PrestigeUtility.GetStringForMode)
end

registerVal5.description = __FUNC_8A50_
registerVal5.supportText = ""
registerVal5.image = "t7_icons_prestige_mp_freshstart"
registerVal5.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
local function __FUNC_8B40_(arg0)
	local function __FUNC_8BFC_(arg0)
		local function __FUNC_8D1C_(arg0, arg1, arg2)
			local registerVal3 = {}
			local registerVal4 = {}
			registerVal4.displayText = arg0
			registerVal4.itemIndex = itemIndex
			registerVal3.models = registerVal4
			registerVal4 = {}
			registerVal4.action = arg1
			registerVal4.selectIndex = arg2
			registerVal3.properties = registerVal4
			return registerVal3
		end

		local function __FUNC_8DE5_(arg0, arg1, arg2, arg3, arg4)
			local registerVal5 = CheckIfFeatureIsBanned(arg2, LuaEnums.FEATURE_BAN.PRESTIGE_EXTRAS)
			if registerVal5 then
				LuaUtils.UI_ShowErrorMessageDialog(arg2, GetFeatureBanInfo(arg2, LuaEnums.FEATURE_BAN.PRESTIGE_EXTRAS))
				return 
			end
			registerVal5 = CoD.PrestigeUtility.GetPrestigeGameMode()
			if registerVal5 == Enum.eModes.MODE_ZOMBIES then
				CoD.PrestigeUtility.FreshStartActionZM(arg0, arg2, arg4)
			else
				CoD.PrestigeUtility.FreshStartActionMP(arg0, arg2, arg4)
			end
		end

		local function __FUNC_9083_(arg0, arg1, arg2, arg3, arg4)
			GoBack(arg4, arg2)
		end

		local registerVal8 = Engine.Localize("MENU_USE_FRESH_START")
		table.insert({}, __FUNC_8D1C_(registerVal8, __FUNC_8DE5_, false))
		table.insert({}, __FUNC_8D1C_("MENU_CANCEL", __FUNC_9083_, true))
		return {}
	end

	local registerVal2 = DataSourceHelpers.ListSetup("UnlockTokenMenuList", __FUNC_8BFC_, true)
	DataSources.UnlockTokenMenuList = registerVal2
	return "UnlockTokenMenuList"
end

registerVal5.listDatasource = __FUNC_8B40_
registerVal5[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
CoD.OverlayUtility.AddSystemOverlay("PrestigeFreshStart2", registerVal5)
registerVal5 = {}
registerVal5.menuName = "SystemOverlay_Full"
registerVal5.frameWidget = "CoD.Prestige_PermanentUnlockConfirmationOverlay"
registerVal6 = Engine.Localize("MENU_CONFIRM_PERMANENT_UNLOCK_CAPS")
registerVal5.title = registerVal6
local function __FUNC_90CC_(arg0, arg1, arg2, arg3)
	local registerVal4 = CoD.PrestigeUtility.GetPermanentUnlockMode()
	Engine.GetItemName(arg1, registerVal4)
	return Engine.Localize("MPUI_PERMANENT_UNLOCK_ITEM", Engine.GetItemName)
end

registerVal5.description = __FUNC_90CC_
local function __FUNC_91F1_(arg0, arg1, arg2, arg3)
	local registerVal4 = CoD.PrestigeUtility.GetPermanentUnlockMode()
	Engine.GetItemName(arg1, registerVal4)
	return Engine.Localize(Engine.GetItemName)
end

registerVal5.supportText = __FUNC_91F1_
local function __FUNC_92ED_(arg0, arg1, arg2, arg3)
	local registerVal4 = CoD.PrestigeUtility.GetPermanentUnlockMode()
	if CoD.perController[arg0].weaponCategory == "specialist" then
		return Engine.GetItemImage(arg1, CoD.CCUtility.customizationMode)
	else
		local registerVal7 = LUI.startswith(CoD.perController[arg0].weaponCategory, "killstreak")
		if CoD.perController[arg0].weaponCategory and registerVal7 then
		else
			registerVal7 = LUI.startswith(CoD.perController[arg0].weaponCategory, "specialty")
			if arg1 or not registerVal7 then
				if CoD.perController[arg0].weaponCategory == "primarygadget" or CoD.perController[arg0].weaponCategory == "secondarygadget" then
				end
			end
		end
	end
	registerVal7 = Engine.GetItemImage(arg1, registerVal4)
	return (registerVal7 .. "_256")
end

registerVal5.image = __FUNC_92ED_
registerVal5.categoryType = CoD.OverlayUtility.OverlayTypes.Unlock
local function __FUNC_95C6_(arg0, arg1, arg2, arg3)
	local function __FUNC_9684_(arg0)
		local function __FUNC_97D9_(arg0, arg2, arg3)
			local registerVal3 = {}
			local registerVal4 = {}
			registerVal4.displayText = arg0
			registerVal4.itemIndex = arg1
			registerVal3.models = registerVal4
			registerVal4 = {}
			registerVal4.action = arg2
			registerVal4.selectIndex = arg3
			registerVal3.properties = registerVal4
			return registerVal3
		end

		local function __FUNC_98A1_(arg0, arg1, arg2, arg3, arg4)
			local registerVal5 = CheckIfFeatureIsBanned(arg2, LuaEnums.FEATURE_BAN.PRESTIGE_EXTRAS)
			if registerVal5 then
				LuaUtils.UI_ShowErrorMessageDialog(arg2, GetFeatureBanInfo(arg2, LuaEnums.FEATURE_BAN.PRESTIGE_EXTRAS))
				return 
			end
			PermanentlyUnlockItem(arg4, arg1, arg2)
			local registerVal7 = {}
			registerVal7.name = "used_permanent_unlock_token"
			registerVal7.controller = arg2
			arg4:dispatchEventToRoot(registerVal7)
			GoBackAndUpdateStateOnPreviousMenu(arg4, arg2)
		end

		local function __FUNC_9AD7_(arg0, arg1, arg2, arg3, arg4)
			GoBack(arg4, arg2)
		end

		table.insert({}, __FUNC_97D9_("MENU_PERMANENTLY_UNLOCK", __FUNC_98A1_, false))
		table.insert({}, __FUNC_97D9_("MENU_CANCEL", __FUNC_9AD7_, true))
		return {}
	end

	local registerVal5 = DataSourceHelpers.ListSetup("UnlockTokenMenuList", __FUNC_9684_, true)
	DataSources.UnlockTokenMenuList = registerVal5
	return "UnlockTokenMenuList"
end

registerVal5.listDatasource = __FUNC_95C6_
registerVal5[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
CoD.OverlayUtility.AddSystemOverlay("PermanentUnlockClassItem", registerVal5)
registerVal5 = {}
registerVal5.menuName = "SystemOverlay_Full"
registerVal5.frameWidget = "CoD.systemOverlay_Prestige"
registerVal6 = Engine.Localize("MENU_PRESTIGE_MASTER")
registerVal5.title = registerVal6
local function __FUNC_9B20_()
	if CoD.isZombie == true then
		return Engine.Localize("MENU_ZM_PRESTIGE_MASTER_NOTIFICATION")
	else
		return Engine.Localize("MENU_PRESTIGE_MASTER_NOTIFICATION")
	end
end

registerVal5.description = __FUNC_9B20_
registerVal5.supportText = ""
local function __FUNC_9C3C_(arg0)
	if CoD.isZombie == true then
	end
	local registerVal4 = Engine.GetPrestigeCap(Enum.eModes.MODE_ZOMBIES)
	local registerVal2 = Engine.GetRankIcon(0.000000, registerVal4, Enum.eModes.MODE_ZOMBIES)
	return GetRankIconLarge(registerVal2)
end

registerVal5.image = __FUNC_9C3C_
registerVal5.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
registerVal5.listDatasource = nil
registerVal5[CoD.OverlayUtility.ContinuePropertyName] = CoD.OverlayUtility.DefaultGoBack
CoD.OverlayUtility.AddSystemOverlay("PrestigeMasterNotification", registerVal5)
