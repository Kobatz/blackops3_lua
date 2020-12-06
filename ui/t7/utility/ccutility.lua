-- Decompiled with CoDLUIDecompiler by JariK

if not CoD.CCUtility then
	CoD.CCUtility = {}
	CoD.CCUtility.Heroes = {}
	CoD.CCUtility.Heroes.SmallCategory = 0.000000
	CoD.CCUtility.Heroes.LargeCategory = 1.000000
	CoD.CCUtility.Heroes.HeroIndexForEdits = nil
	CoD.CCUtility.Heroes.heroCustomizationTable = nil
	CoD.CCUtility.Heroes.selectionTable = nil
	CoD.CCUtility.Heroes.edittingLoadoutForWidget = nil
	CoD.CCUtility.Heroes.loadoutListItemWidget = nil
	CoD.CCUtility.Heroes.heroUpdateEvent = "updateHero"
	CoD.CCUtility.Heroes.DefaultHelmetBodyOption = 1.000000
	CoD.CCUtility.customizationMode = nil
	local registerVal1 = LuaEnums.createEnum("None", "Overview", "SelectionChanged", "Complete")
	CoD.CCUtility.FirstTimeFlowState = registerVal1
	CoD.CCUtility.PersonalizeHeroData = {}
	registerVal1 = LuaEnums.createEnum("ExploringOptions", "EdittingOption")
	CoD.CCUtility.PersonalizeHeroData.Modes = registerVal1
	CoD.CCUtility.PersonalizeHeroData.EdittingArea = nil
	CoD.CCUtility.PersonalizeHeroData.EdittingAreaItemIndex = nil
	CoD.CCUtility.PersonalizeHeroData.EdittingElement = nil
	CoD.CCUtility.PersonalizeHeroData.CurrentColors = nil
	CoD.CCUtility.PersonalizeHeroData.MaxWeaponAttachments = 8.000000
	CoD.CCUtility.PersonalizeHeroData.SpecialistEpicItemIndex = 9.000000
	CoD.CCUtility.PersonalizeHeroData.CompletionEpicItemIndex = 10.000000
	CoD.CCUtility.PersonalizeHeroData.SpacerRows = {}
	CoD.CCUtility.ShowcaseWeaponCategoryIndex = Enum.CharacterItemType.CHARACTER_ITEM_TYPE_COUNT
	CoD.CCUtility.TauntCategoryIndex = (Enum.CharacterItemType.CHARACTER_ITEM_TYPE_COUNT + 1.000000)
	CoD.CCUtility.TauntsData = {}
	CoD.CCUtility.TauntsData.EdittingTauntOrGestureType = nil
end
registerVal1 = LuaEnums.createEnum("ExploringTaunts", "EdittingTaunt", "EdittingGesture")
CoD.CCUtility.TauntsData.Modes = registerVal1
registerVal1 = {}
registerVal1 = {"GoodGame", "Threaten", "Boast"}
CoD.CCUtility.TauntsData.GestureTypeAWINames = registerVal1
registerVal1 = {}
registerVal1 = {"HEROES_GESTURES_GOOD_GAME", "HEROES_GESTURES_THREATEN", "HEROES_GESTURES_BOAST"}
CoD.CCUtility.TauntsData.GestureTypeDisplayNames = registerVal1
if #CoD.CCUtility.TauntsData.GestureTypeAWINames ~= Enum.CharacterGestureTypes.GESTURE_TYPE_COUNT then
	error(("Need gesture type names to match gesture type enums ( " .. #CoD.CCUtility.TauntsData.GestureTypeAWINames .. " ~= " .. Enum.CharacterGestureTypes.GESTURE_TYPE_COUNT .. " )"))
end
registerVal1 = {}
registerVal1 = {"FirstPlace"}
CoD.CCUtility.TauntsData.TauntTypeAWINames = registerVal1
if #CoD.CCUtility.TauntsData.TauntTypeAWINames ~= Enum.CharacterTauntTypes.TAUNT_TYPE_COUNT then
	error(("Need taunt type names to match taunt type enums ( " .. #CoD.CCUtility.TauntsData.TauntTypeAWINames .. " ~= " .. Enum.CharacterGestureTypes.TAUNT_TYPE_COUNT .. " )"))
end
registerVal1 = {}
registerVal1 = {"first_place"}
CoD.CCUtility.TauntsData.TauntTypeStatArray = registerVal1
if #CoD.CCUtility.TauntsData.TauntTypeStatArray ~= Enum.CharacterTauntTypes.TAUNT_TYPE_COUNT then
	error(("Need taunt stat names to match taunt type enums ( " .. #CoD.CCUtility.TauntsData.TauntTypeAWINames .. " ~= " .. Enum.CharacterGestureTypes.TAUNT_TYPE_COUNT .. " )"))
end
registerVal1 = {}
registerVal1 = {"t7_hud_mp_ability_hero_ironskin_available", "t7_hud_mp_ability_hero_opticcamo_available", "t7_hud_mp_ability_hero_clone_available", "t7_hud_mp_ability_hero_combatefficiency_available", "t7_hud_mp_ability_hero_flashback_available", "t7_hud_mp_ability_hero_heat_wave_available", "t7_hud_mp_ability_hero_resurrect_available", "t7_hud_mp_ability_hero_speedburst_available", "t7_hud_mp_ability_hero_visionpulse_available"}
CoD.CCUtility.SpecialistAbilityIcons = registerVal1
registerVal1 = {}
registerVal1 = {"t7_hud_mp_weapon_hero_gravityspikes_available", "t7_hud_mp_weapon_hero_bowlauncher_available", "t7_hud_mp_weapon_hero_lightninggun_available", "t7_hud_mp_weapon_hero_pineapplegun_available", "t7_hud_mp_weapon_hero_annihilator_available", "t7_hud_mp_weapon_hero_chemgun_available", "t7_hud_mp_weapon_hero_minigun_available", "t7_hud_mp_weapon_hero_armblade_available", "t7_hud_mp_weapon_hero_flamethrower_available"}
CoD.CCUtility.SpecialistWeaponIcons = registerVal1
function CoD.CCUtility.CompletionEpicComplete(arg0, arg1)
	if CoD.isCampaign then
		return false
	end
	local registerVal2 = CoD.PrestigeUtility.GetPermanentUnlockMode()
	for index3=1.000000, #, 1.000000 do
		local registerVal7 = Engine.IsCharacterCustomizationItemLocked(arg0, index3, Enum.CharacterItemType.CHARACTER_ITEM_TYPE_BODY, CoD.CCUtility.PersonalizeHeroData.SpecialistEpicItemIndex, registerVal2)
		registerVal7 = Engine.IsCharacterCustomizationItemLocked(arg0, index3, Enum.CharacterItemType.CHARACTER_ITEM_TYPE_HELMET, CoD.CCUtility.PersonalizeHeroData.SpecialistEpicItemIndex, registerVal2)
		if not arg1 or registerVal7 then
			return false
		end
	end
	return true
end

function CoD.CCUtility.SetEdittingHero(arg0, arg1)
	CoD.CCUtility.Heroes.HeroIndexForEdits = arg1
	if CoD.CCUtility.Heroes.HeroIndexForEdits ~= arg1 and arg1 ~= nil then
		MarkCACPaintshopDataDirtyForEdittingSpecialist(arg0)
	end
end

function CoD.CCUtility.CreatePersonalizeColorDatasource(arg0, arg1, arg2, arg3)
	local function __FUNC_292F_(arg0)
		local registerVal2, registerVal3, registerVal4 = ipairs(DataSources[arg1].colorTable)
		for index5,value6 in registerVal2, registerVal3, registerVal4 do
			local registerVal7 = {}
			local registerVal8 = {}
			registerVal8.color = (value6.red .. " " .. value6.green .. " " .. value6.blue)
			if not value6.icon then
			end
			registerVal8.icon = "$white"
			local registerVal9 = Engine.Localize("MENU_X_OF_Y", index5, #DataSources[arg1].colorTable)
			registerVal8.xOfY = registerVal9
			registerVal7.models = registerVal8
			registerVal8 = {}
			registerVal8.optionIndex = index5
			registerVal7.properties = registerVal8
			registerVal8 = arg3(index5)
			registerVal9, registerVal10, registerVal11 = pairs(registerVal8)
			for index12,value13 in registerVal9, registerVal10, registerVal11 do
				registerVal7.properties[index12] = value13
			end
			table.insert({}, registerVal7)
		end
		return {}
	end

	local registerVal5 = DataSourceHelpers.ListSetup(arg1, __FUNC_292F_, true)
	DataSources[arg1] = registerVal5
	DataSources[arg1].colorTable = arg2
	return arg1
end

function CoD.CCUtility.GetHeaderForLoadoutSlot(arg0)
	if arg0 == Enum.heroLoadoutTypes_e.HERO_LOADOUT_TYPE_WEAPON then
		return "HEROES_HERO_WEAPON_CAPS"
	else
		if arg0 == Enum.heroLoadoutTypes_e.HERO_LOADOUT_TYPE_GADGET then
			return "HEROES_HERO_ABILITY_CAPS"
		end
	end
	return nil
end

function CoD.CCUtility.GetHintTextForLoadoutSlot(arg0)
	if arg0 == Enum.heroLoadoutTypes_e.HERO_LOADOUT_TYPE_WEAPON then
		return "HEROES_HERO_WEAPON_HINT"
	else
		if arg0 == Enum.heroLoadoutTypes_e.HERO_LOADOUT_TYPE_GADGET then
			return "HEROES_HERO_ABILITY_HINT"
		end
	end
	return nil
end

function CoD.CCUtility.CreateCarouselItemLoadoutDatasource(arg0, arg1, arg2)
	local function __FUNC_2F6F_(arg2)
		local registerVal2 = Engine.GetLoadoutTypeForHero(arg2, arg0.properties.heroIndex)
		for index3=0.000000, (Enum.heroLoadoutTypes_e.HERO_LOADOUT_TYPE_COUNT - 1.000000), 1.000000 do
			local registerVal7 = Engine.GetLoadoutInfoForHero(arg1, arg0.properties.heroIndex, index3)
			local registerVal9 = IsProgressionEnabled(arg2)
			if not registerVal9 then
				registerVal9 = IsLive()
				registerVal9 = IsFirstTimeSetup(arg2, Enum.eModes.MODE_MULTIPLAYER)
				if registerVal9 and registerVal9 then
					registerVal9 = Engine.IsItemLocked(arg2, registerVal7.itemIndex, Enum.eModes.MODE_MULTIPLAYER)
				end
			end
			if registerVal7 then
				local registerVal11 = {}
				local registerVal12 = {}
				registerVal12.name = registerVal7.itemName
				registerVal12.gameImageOff = registerVal7.gameImageOff
				registerVal12.gameImageOn = registerVal7.gameImageOn
				registerVal12.description = registerVal7.itemDesc
				local registerVal13 = CoD.CCUtility.GetHeaderForLoadoutSlot(index3)
				registerVal12.header = registerVal13
				registerVal12.equippedSlot = index3
				registerVal12.itemIndex = registerVal7.itemIndex
				registerVal12.disabled = registerVal9
				registerVal12.itemType = Enum.VoteItemType.VOTE_ITEM_TYPE_ITEM
				registerVal11.models = registerVal12
				registerVal12 = {}
				registerVal12.equippedSlot = index3
				registerVal13 = CoD.CCUtility.GetHintTextForLoadoutSlot(index3)
				registerVal12.hintText = registerVal13
				if registerVal2 ~= index3 then
				end
				registerVal12.selectIndex = true
				registerVal12.heroIndex = arg0.properties.heroIndex
				registerVal11.properties = registerVal12
				table.insert({}, registerVal11)
			end
		end
		return {}
	end

	local registerVal5 = DataSourceHelpers.ListSetup(("HeroCarouselItemLoadoutList" .. arg0.properties.heroIndex), __FUNC_2F6F_, true)
	DataSources[("HeroCarouselItemLoadoutList" .. arg0.properties.heroIndex)] = registerVal5
	return ("HeroCarouselItemLoadoutList" .. arg0.properties.heroIndex)
end

function CoD.CCUtility.GetTransmissionNewStatPath(arg0, arg1)
	return ("specialiststats." .. arg0 .. ".transmissionIsOld." .. arg1)
end

function CoD.CCUtility.IsTransmissionNew(arg0, arg1, arg2)
	local registerVal6 = CoD.CCUtility.GetTransmissionNewStatPath(arg1, arg2)
	return IsStorageValueEqualTo(arg0, "stats_mp", registerVal6, 0.000000)
end

function CoD.CCUtility.GetTransmissionNewCount(arg0, arg1, arg2)
	if not arg2.transmissions then
	end
	for index5=0.000000, (0.000000 - 1.000000), 1.000000 do
		local registerVal9, registerVal10 = Engine.IsSpecialistTransmissionLocked(arg0, arg1, (index5 + 1.000000))
		if registerVal9 then
		else
			local registerVal11 = CoD.CCUtility.IsTransmissionNew(arg0, arg1, index5)
			if registerVal11 then
			end
		end
	end
	return (0.000000 + 1.000000)
end

function CoD.CCUtility.CreateCarouselCardBackDatasource(arg0, arg1, arg2, arg3, arg4, arg5)
	local function __FUNC_38E4_(arg3)
		local function __FUNC_5304_(arg0, arg1, arg2, arg3)
			local registerVal4 = {}
			local registerVal5 = {}
			registerVal5.text = arg0
			registerVal5.icon = arg1
			registerVal4.models = registerVal5
			registerVal4.properties = {}
			registerVal5, registerVal6, registerVal7 = pairs(arg2)
			for index8,value9 in registerVal5, registerVal6, registerVal7 do
				registerVal4.models[index8] = value9
			end
			if not registerVal4.models.alias then
			end
			registerVal4.models.alias = ""
			registerVal5, registerVal6, registerVal7 = pairs(arg3)
			for index8,value9 in registerVal5, registerVal6, registerVal7 do
				registerVal4.properties[index8] = value9
			end
			return registerVal4
		end

		local function __FUNC_544C_(arg0, arg1, arg2)
			return Engine.Localize("HEROES_CARD_BACK_ENTRY", arg0, arg1, "")
		end

		local registerVal5 = Engine.GetLoadoutInfoForHero(arg2, arg0.properties.heroIndex, Enum.heroLoadoutTypes_e.HERO_LOADOUT_TYPE_WEAPON)
		local registerVal6 = Engine.GetLoadoutInfoForHero(arg2, arg0.properties.heroIndex, Enum.heroLoadoutTypes_e.HERO_LOADOUT_TYPE_GADGET)
		local registerVal7 = IsProgressionEnabled(arg3)
		if registerVal7 then
			local registerVal8 = __FUNC_544C_(1.000000, 1.000000, "HEROES_SIMULATION")
			local registerVal10 = {}
			registerVal10.cardBackIcon = arg1.cardBackIcon
			registerVal10.realName = arg1.realName
			registerVal10.age = arg1.age
			registerVal10.genderString = arg1.genderString
			registerVal10.frameWidget = "CoD.ChooseCharacterLoadout_CardBack_Stats"
			registerVal7 = __FUNC_5304_(registerVal8, "t7_hud_hero_icon_filetype_stats", registerVal10, nil)
			registerVal8 = CoDShared.IsLootHero(arg1)
			if registerVal8 then
				if registerVal5 then
					registerVal7.models.weaponName = registerVal5.itemName
					registerVal10 = CoD.CACUtility.CombatRecordGetFullNameStat(arg3, ("specialiststats." .. arg0.properties.heroIndex .. ".stats.kills_weapon"))
					registerVal7.models.weaponKills = registerVal10
					registerVal10 = CombatRecordGetTwoStatRatioForItemIndexAndSpecificNumerator(arg3, ("specialiststats." .. arg0.properties.heroIndex .. ".stats.kills_weapon"), "used", registerVal5.itemIndex)
					registerVal7.models.weaponKillsPerUse = registerVal10
					registerVal10 = CombatRecordGetTwoStatRatioForItemIndexAndSpecificNumerator(arg3, ("specialiststats." .. arg0.properties.heroIndex .. ".stats.kills_weapon"), "deathsDuringUse", registerVal5.itemIndex)
					registerVal7.models.weaponKillsPerDeath = registerVal10
				end
				if registerVal6 then
					registerVal7.models.abilityName = registerVal6.itemName
					registerVal10 = CoD.CACUtility.CombatRecordGetFullNameStat(arg3, ("specialiststats." .. arg0.properties.heroIndex .. ".stats.kills_ability"))
					registerVal7.models.abilityKills = registerVal10
					registerVal7.models.abilityKillsLabel = (registerVal6.itemName .. "_KILL_TYPE")
					registerVal10 = CombatRecordGetTwoStatRatioForItemIndexAndSpecificNumerator(arg3, ("specialiststats." .. arg0.properties.heroIndex .. ".stats.kills_ability"), "used", registerVal6.itemIndex)
					registerVal7.models.abilityKillsPerUse = registerVal10
					registerVal7.models.abilityKillsPerUseLabel = (registerVal6.itemName .. "_KILL_TYPE_PER_USE")
				else
					if registerVal5 then
						registerVal7.models.weaponName = registerVal5.itemName
						local registerVal9 = CombatRecordGetItemStatForItemIndex(arg3, "kills", registerVal5.itemIndex)
						registerVal7.models.weaponKills = registerVal9
						registerVal9 = CombatRecordGetTwoStatRatioForItemIndex(arg3, "kills", "used", registerVal5.itemIndex)
						registerVal7.models.weaponKillsPerUse = registerVal9
						registerVal9 = CombatRecordGetTwoStatRatioForItemIndex(arg3, "kills", "deathsDuringUse", registerVal5.itemIndex)
						registerVal7.models.weaponKillsPerDeath = registerVal9
					end
					if registerVal6 then
						registerVal7.models.abilityName = registerVal6.itemName
						registerVal9 = CombatRecordGetItemStatForItemIndex(arg3, "combatRecordStat", registerVal6.itemIndex)
						registerVal7.models.abilityKills = registerVal9
						registerVal7.models.abilityKillsLabel = (registerVal6.itemName .. "_KILL_TYPE")
						registerVal9 = CombatRecordGetTwoStatRatioForItemIndex(arg3, "combatRecordStat", "used", registerVal6.itemIndex)
						registerVal7.models.abilityKillsPerUse = registerVal9
						registerVal7.models.abilityKillsPerUseLabel = (registerVal6.itemName .. "_KILL_TYPE_PER_USE")
					end
				end
			end
			table.insert({}, registerVal7)
		end
		registerVal10 = __FUNC_544C_((1.000000 + 1.000000), 1.000000, "HEROES_BIO")
		local registerVal12 = {}
		registerVal12.cardBackIcon = arg1.cardBackIcon
		registerVal12.realName = arg1.realName
		registerVal12.age = arg1.age
		registerVal12.genderString = arg1.genderString
		registerVal12.bio = arg1.bio
		registerVal12.frameWidget = "CoD.ChooseCharacterLoadout_CardBack_Bio"
		table.insert({}, __FUNC_5304_(registerVal10, "t7_hud_hero_icon_filetype_text", registerVal12, nil))
		if registerVal5 then
			registerVal10 = __FUNC_544C_(((1.000000 + 1.000000) + 1.000000), 1.000000, registerVal5.itemName)
			registerVal12 = {}
			local registerVal13 = __FUNC_544C_(((1.000000 + 1.000000) + 1.000000), 3.000000, arg1.weaponSubItemDesc)
			registerVal12.weaponSubItem = registerVal13
			if not arg1.weaponCardBackIcon then
			end
			registerVal12.weaponCardBackIcon = "blacktransparent"
			if not arg1.weaponCardBackSubIcon then
			end
			registerVal12.weaponCardBackSubIcon = "blacktransparent"
			registerVal12.weaponDesc = arg1.weaponCardBackDesc
			registerVal13 = __FUNC_544C_(((1.000000 + 1.000000) + 1.000000), 2.000000, "HEROES_SCHEMA")
			registerVal12.weaponSchemaTitle = registerVal13
			registerVal12.weaponSchema = arg1.weaponSchema
			registerVal12.frameWidget = "CoD.ChooseCharacterLoadout_CardBack_Weapon"
			table.insert({}, __FUNC_5304_(registerVal10, "t7_hud_hero_icon_filetype_details", registerVal12, nil))
		end
		if registerVal6 then
			registerVal10 = __FUNC_544C_((((1.000000 + 1.000000) + 1.000000) + 1.000000), 1.000000, registerVal6.itemName)
			registerVal12 = {}
			registerVal13 = __FUNC_544C_((((1.000000 + 1.000000) + 1.000000) + 1.000000), 3.000000, arg1.abilitySubItemDesc)
			registerVal12.abilitySubItem = registerVal13
			if not arg1.abilityCardBackIcon then
			end
			registerVal12.abilityCardBackIcon = "blacktransparent"
			if not arg1.abilityCardBackSubIcon then
			end
			registerVal12.abilityCardBackSubIcon = "blacktransparent"
			registerVal12.abilityDesc = arg1.abilityCardBackDesc
			registerVal13 = __FUNC_544C_((((1.000000 + 1.000000) + 1.000000) + 1.000000), 2.000000, "HEROES_SCHEMA")
			registerVal12.abilitySchemaTitle = registerVal13
			registerVal12.abilitySchema = arg1.abilitySchema
			registerVal12.frameWidget = "CoD.ChooseCharacterLoadout_CardBack_Ability"
			table.insert({}, __FUNC_5304_(registerVal10, "t7_hud_hero_icon_filetype_details", registerVal12, nil))
		end
		registerVal7 = IsProgressionEnabled(arg3)
		if registerVal7 then
			local function __FUNC_54F4_(arg0, arg1, arg2, arg3)
				local function __FUNC_55E0_(arg0)
					if not arg4[("transmission" .. arg1 .. "ContactsCount")] then
					end
					for index3=0.000000, (0.000000 - 1.000000), 1.000000 do
						local registerVal9 = {}
						local registerVal10 = {}
						registerVal10.contactIcon = arg4[("transmission" .. arg1 .. "Contact" .. index3 .. "Image")]
						local registerVal11 = Engine.Localize("HEROES_CONTACT_X", arg2, (arg3 + index3), arg4[("transmission" .. arg1 .. "Contact" .. index3 .. "Name")])
						registerVal10.contactName = registerVal11
						registerVal9.models = registerVal10
						table.insert({}, registerVal9)
					end
					return {}
				end

				local registerVal6 = DataSourceHelpers.ListSetup(("TransmissionContactList_" .. arg0 .. "_" .. arg1), __FUNC_55E0_, true)
				DataSources[("TransmissionContactList_" .. arg0 .. "_" .. arg1)] = registerVal6
				return ("TransmissionContactList_" .. arg0 .. "_" .. arg1)
			end

			if not arg4.transmissions then
			end
			for index9=0.000000, (0.000000 - 1.000000), 1.000000 do
				local registerVal15 = Dvar.allItemsUnlocked:get()
				if registerVal15 then
				else
					registerVal15, registerVal16 = Engine.IsSpecialistTransmissionLocked(arg3, arg0.properties.heroIndex, (index9 + 1.000000))
				end
				if not registerVal15 then
					if index9 == 4.000000 then
					else
						if not arg4.characterFrequency then
						end
						if not arg4[("transmission" .. index9 .. "ID")] then
						end
					end
					local registerVal20 = __FUNC_544C_(((((1.000000 + 1.000000) + 1.000000) + 1.000000) + 1.000000), 1.000000, "HEROES_TRANSMISSION")
					local registerVal22 = {}
					registerVal22.cardBackIcon = arg1.cardBackIcon
					if not arg4[("transmission" .. index9 .. "Name")] then
					end
					local registerVal23 = Engine.Localize("HEROES_TRANSMISSION_X", ((((1.000000 + 1.000000) + 1.000000) + 1.000000) + 1.000000), 1.000000, "")
					registerVal22.transmissionName = registerVal23
					registerVal23 = __FUNC_54F4_(arg0.properties.heroIndex, index9, ((((1.000000 + 1.000000) + 1.000000) + 1.000000) + 1.000000), 2.000000)
					registerVal22.contactsListDatasource = registerVal23
					if not arg4[("transmission" .. index9 .. "Synopsis")] then
					end
					registerVal22.transmissionSynopsis = ""
					registerVal22.transmissionFrequency = ("" .. "." .. "")
					registerVal22.alias = arg4[("transmission" .. index9 .. "Alias")]
					registerVal22.frameWidget = "CoD.ChooseCharacterLoadout_CardBack_Transmission"
					registerVal22.playingSound = false
					registerVal23 = CoD.CCUtility.IsTransmissionNew(arg3, arg1.bodyIndex, index9)
					registerVal22.isNew = registerVal23
					registerVal23 = {}
					registerVal23.transmissionIndex = index9
					registerVal23.heroIndex = arg1.bodyIndex
					table.insert({}, __FUNC_5304_(registerVal20, "t7_hud_hero_icon_filetype_audio", registerVal22, registerVal23))
				else
					if registerVal16 then
						local registerVal19 = CoD.getStatsMilestoneTable((registerVal16.challengeTable + 1.000000), CoD.PrestigeUtility.GetPermanentUnlockMode())
						if index9 == 0.000000 then
							local registerVal21 = Engine.TableLookupGetColumnValueForRow(registerVal19, registerVal16.challengeRow, Enum.milestoneTableColumns_t.MILESTONE_COLUMN_STRING)
							registerVal20 = Engine.Localize((registerVal21 .. "_DESC"), registerVal16.targetValue, arg1.displayName)
							registerVal20 = Engine.Localize("MENU_X_SLASH_Y", registerVal16.currentValue, registerVal16.targetValue)
						else
							if index9 ~= 4.000000 then
								if index9 == 3.000000 and not arg5 then
								end
							else
								registerVal21 = Engine.TableLookupGetColumnValueForRow(registerVal19, registerVal16.challengeRow, Enum.milestoneTableColumns_t.MILESTONE_COLUMN_STRING)
								registerVal20 = Engine.Localize(registerVal21, registerVal16.targetValue, arg1.displayName)
							end
						end
						registerVal23 = __FUNC_544C_(((((1.000000 + 1.000000) + 1.000000) + 1.000000) + 1.000000), 1.000000, "MENU_CLASSIFIED")
						local registerVal25 = {}
						registerVal25.cardBackIcon = arg1.cardBackIcon
						local registerVal26 = Engine.Localize("HEROES_TRANSMISSION_X", ((((1.000000 + 1.000000) + 1.000000) + 1.000000) + 1.000000), 1.000000, "MENU_CLASSIFIED")
						registerVal25.transmissionName = registerVal26
						registerVal25.assignmentAccessString = "HEROES_ASSIGNMENT_CLASSIFIED"
						registerVal25.assignment = registerVal20
						registerVal25.assignmentProgress = (registerVal16.currentValue / registerVal16.targetValue)
						registerVal25.assignmentProgressString = registerVal20
						registerVal25.frameWidget = "CoD.ChooseCharacterLoadout_CardBack_LockedTransmission"
						table.insert({}, __FUNC_5304_(registerVal23, "t7_hud_hero_icon_filetype_audio", registerVal25, nil))
					end
				else
				end
			end
		end
		return {}
	end

	local registerVal8 = DataSourceHelpers.ListSetup(("HeroCarouselCardBackList" .. arg0.properties.heroIndex), __FUNC_38E4_, true)
	DataSources[("HeroCarouselCardBackList" .. arg0.properties.heroIndex)] = registerVal8
	return ("HeroCarouselCardBackList" .. arg0.properties.heroIndex)
end

function CoD.CCUtility.CreateSelectedItemModel(arg0, arg1, arg2, arg3, arg4)
	if arg4 == Enum.CharacterItemType.CHARACTER_ITEM_TYPE_BODY then
		if arg1.bodies[(arg2.selectedBody + 1.000000)] then
			local registerVal10, registerVal11, registerVal12 = ipairs(arg2.bodyColors)
			for index13,value14 in registerVal10, registerVal11, registerVal12 do
				table.insert({}, arg1.bodies[(arg2.selectedBody + 1.000000)].accents[index13][(value14 + 1.000000)])
			end
			registerVal10 = CoD.CCUtility.CreatePersonalizeColorDatasource(arg0, ("PersonalizeListSelection_" .. arg3 .. "_" .. arg4), {}, nil)
		else
			if arg4 == Enum.CharacterItemType.CHARACTER_ITEM_TYPE_HELMET then
				if arg1.helmets[(arg2.selectedHelmet + 1.000000)] then
					registerVal10, registerVal11, registerVal12 = ipairs(arg2.helmetColors)
					for index13,value14 in registerVal10, registerVal11, registerVal12 do
						table.insert({}, arg1.helmets[(arg2.selectedHelmet + 1.000000)].accents[index13][(value14 + 1.000000)])
					end
					registerVal10 = CoD.CCUtility.CreatePersonalizeColorDatasource(arg0, ("PersonalizeListSelection_" .. arg3 .. "_" .. arg4), {}, nil)
				else
					return nil
				end
			end
		end
	end
	local registerVal8 = {}
	registerVal8.categoryName = "HEROES_HEAD"
	registerVal8.currentSelectionName = arg1.helmets[(arg2.selectedHelmet + 1.000000)].name
	registerVal8.colorListDatasource = registerVal10
	return registerVal8
end

function CoD.CCUtility.GetHeroEquippedSlot(arg0, arg1)
	for index5=0.000000, (Enum.heroLoadoutTypes_e.HERO_LOADOUT_TYPE_COUNT - 1.000000), 1.000000 do
		local registerVal9 = Engine.GetLoadoutInfoForHero(CoD.CCUtility.customizationMode, CoD.CCUtility.Heroes.HeroIndexForEdits, index5)
		if registerVal9.itemIndex == arg1 then
		else
		end
	end
	return index5
end

function CoD.CCUtility.GetBlackjackHeroIndex()
	return LuaUtils.GetBlackjackHeroIndex(CoD.CCUtility.customizationMode)
end

registerVal1 = {}
registerVal1 = {"standard", "loot"}
CoD.CCUtility.PersonalizeHeroData.HeroCustomizationTabCategories = registerVal1
local function __FUNC_5F44_(arg0)
	local function __FUNC_621A_(arg0, arg1, arg2)
		local registerVal5 = {}
		local registerVal6 = {}
		registerVal6.tabName = arg0
		registerVal6.tabIcon = ""
		registerVal6.breadcrumbCount = 0.000000
		registerVal5.models = registerVal6
		registerVal6 = {}
		registerVal6.isBlackMarket = arg1
		registerVal6.selectIndex = (not )
		registerVal6.filterName = arg2
		registerVal5.properties = registerVal6
		table.insert({}, registerVal5)
	end

	local registerVal5 = {}
	local registerVal6 = {}
	registerVal6.tabIcon = CoD.buttonStrings.shoulderl
	registerVal5.models = registerVal6
	registerVal6 = {}
	registerVal6.m_mouseDisabled = true
	registerVal5.properties = registerVal6
	table.insert({}, registerVal5)
	__FUNC_621A_("MPUI_STANDARD_CAPS", false, CoD.CCUtility.PersonalizeHeroData.HeroCustomizationTabCategories[1.000000])
	local registerVal3 = IsLive()
	if registerVal3 then
		__FUNC_621A_("MENU_BLACK_MARKET", true, CoD.CCUtility.PersonalizeHeroData.HeroCustomizationTabCategories[2.000000])
	end
	registerVal5 = {}
	registerVal6 = {}
	registerVal6.tabIcon = CoD.buttonStrings.shoulderr
	registerVal5.models = registerVal6
	registerVal6 = {}
	registerVal6.m_mouseDisabled = true
	registerVal5.properties = registerVal6
	table.insert({}, registerVal5)
	return {}
end

registerVal1 = DataSourceHelpers.ListSetup("HeroCustomizationTabs", __FUNC_5F44_, false)
DataSources.HeroCustomizationTabs = registerVal1
function CoD.CCUtility.PersonalizeHeroData.StandardFilter(arg0)
	local registerVal1 = CoD.SafeGetModelValue(arg0, "isBMItem")
	if registerVal1 ~= nil then
	end
	return true
end

function CoD.CCUtility.PersonalizeHeroData.BlackMarketFilter(arg0)
	local registerVal1 = CoD.SafeGetModelValue(arg0, "isBMItem")
	if registerVal1 == nil or registerVal1 ~= true then
	end
	return true
end

function CoD.CCUtility.PersonalizeCharacterListPrepare(arg0)
	CoD.CCUtility.PersonalizeHeroData.SpacerRows = {}
	local function __FUNC_7446_(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
		if arg2 then
		end
		if arg3 then
		end
		local registerVal9 = {}
		local registerVal10 = {}
		registerVal10.categoryName = arg1
		registerVal10.categoryImage = arg5
		registerVal10.fullCategoryName = arg1
		registerVal10.categoryDesc = ""
		registerVal10.currentSelectionName = ""
		registerVal10.currentSelectionVariantName = ""
		registerVal10.colorListDatasource = ""
		registerVal10.currentSelectionNameAlpha = 1.000000
		registerVal10.currentSelectionVariantNameAlpha = 1.000000
		registerVal9.models = registerVal10
		registerVal10 = {}
		registerVal10.customizationArea = arg0
		registerVal10.colorRow = false
		registerVal10.disabled = arg6
		registerVal9.properties = registerVal10
		return registerVal9
	end

	local function __FUNC_767F_(arg1, arg2, arg3, arg4, arg5, arg6)
		local function __FUNC_78D7_(arg2)
			if arg1 == Enum.CharacterItemType.CHARACTER_ITEM_TYPE_BODY then
			else
				if arg1 == Enum.CharacterItemType.CHARACTER_ITEM_TYPE_HELMET then
				end
			end
			local registerVal4, registerVal5, registerVal6 = ipairs(CoD.CCUtility.Heroes.selectionTable.helmetColors)
			for index7,value8 in registerVal4, registerVal5, registerVal6 do
				table.insert({}, CoD.CCUtility.Heroes.heroCustomizationTable.helmets[(CoD.CCUtility.Heroes.selectionTable.selectedHelmet + 1.000000)].accents[index7][(value8 + 1.000000)])
			end
			if DataSources[("PersonalizeCharacterColors_" .. arg1)] then
				DataSources[("PersonalizeCharacterColors_" .. arg1)].colorTable = {}
			else
				return CoD.CCUtility.CreatePersonalizeColorDatasource(arg0, ("PersonalizeCharacterColors_" .. arg1), {})
			end
			if arg2 then
				arg2:updateDatasource()
			end
			return ("PersonalizeCharacterColors_" .. arg1)
		end

		if arg3 then
		end
		if arg4 then
		end
		local registerVal11 = {}
		local registerVal12 = {}
		registerVal12.categoryName = arg2
		registerVal12.categoryImage = ""
		registerVal12.fullCategoryName = arg6
		local registerVal13 = __FUNC_78D7_()
		registerVal12.colorListDatasource = registerVal13
		registerVal12.categoryDesc = ""
		registerVal12.currentSelectionName = ""
		registerVal12.currentSelectionVariantName = ""
		registerVal12.currentSelectionNameAlpha = 1.000000
		registerVal12.currentSelectionVariantNameAlpha = 1.000000
		registerVal11.models = registerVal12
		registerVal12 = {}
		registerVal12.customizationArea = arg1
		registerVal12.colorRow = true
		registerVal12.updateColors = __FUNC_78D7_
		registerVal11.properties = registerVal12
		return registerVal11
	end

	local function __FUNC_7E1B_(arg0)
		local registerVal4 = Engine.GetHeroShowcaseWeaponAttribute(arg0, CoD.CCUtility.customizationMode, CoD.CCUtility.Heroes.HeroIndexForEdits, "weaponIndex")
		local registerVal5 = Engine.Localize(Engine.GetItemName(registerVal4))
		{}.baseWeaponName = registerVal5
		registerVal5 = Engine.GetHeroShowcaseWeaponVariantName(arg0, CoD.CCUtility.customizationMode, CoD.CCUtility.Heroes.HeroIndexForEdits)
		{}.variantName = registerVal5
		return {}
	end

	if CoD.CCUtility.Heroes.heroCustomizationTable and CoD.CCUtility.Heroes.selectionTable then
		if CoD.CCUtility.Heroes.heroCustomizationTable.helmets[(CoD.CCUtility.Heroes.selectionTable.selectedHelmet + 1.000000)] then
			if CoD.CCUtility.customizationMode ~= Enum.eModes.MODE_CAMPAIGN or not "HEROES_HELMET" then
			end
			local registerVal7 = __FUNC_7446_(Enum.CharacterItemType.CHARACTER_ITEM_TYPE_HELMET, "HEROES_HEAD", CoD.CCUtility.Heroes.heroCustomizationTable.helmets[(CoD.CCUtility.Heroes.selectionTable.selectedHelmet + 1.000000)].name, nil, nil, "uie_t7_menu_mp_hero_graphic_head")
			local registerVal8 = Engine.CharacterCustomizationNewItemCount(arg0, CoD.CCUtility.Heroes.HeroIndexForEdits, Enum.CharacterItemType.CHARACTER_ITEM_TYPE_HELMET)
			registerVal7.models.breadcrumbCount = registerVal8.total
			table.insert({}, registerVal7)
			if 1.000000 <= #CoD.CCUtility.Heroes.selectionTable.helmetColors and 1.000000 < #CoD.CCUtility.Heroes.heroCustomizationTable.helmets[(CoD.CCUtility.Heroes.selectionTable.selectedHelmet + 1.000000)].accents[1.000000] then
				table.insert({}, __FUNC_767F_(Enum.CharacterItemType.CHARACTER_ITEM_TYPE_HELMET, "HEROES_COLORS", CoD.CCUtility.Heroes.heroCustomizationTable.helmets[(CoD.CCUtility.Heroes.selectionTable.selectedHelmet + 1.000000)].accents[1.000000][(CoD.CCUtility.Heroes.selectionTable.helmetColors[1.000000] + 1.000000)].name, nil, nil, "HEROES_HELMET_COLORS"))
			end
			CoD.CCUtility.PersonalizeHeroData.SpacerRows[#table.insert] = true
		end
		if CoD.CCUtility.Heroes.heroCustomizationTable.bodies[(CoD.CCUtility.Heroes.selectionTable.selectedBody + 1.000000)] then
			registerVal7 = __FUNC_7446_(Enum.CharacterItemType.CHARACTER_ITEM_TYPE_BODY, "HEROES_BODY", CoD.CCUtility.Heroes.heroCustomizationTable.bodies[(CoD.CCUtility.Heroes.selectionTable.selectedBody + 1.000000)].name, nil, nil, "uie_t7_menu_mp_hero_graphic_body")
			registerVal8 = Engine.CharacterCustomizationNewItemCount(arg0, CoD.CCUtility.Heroes.HeroIndexForEdits, Enum.CharacterItemType.CHARACTER_ITEM_TYPE_BODY)
			registerVal7.models.breadcrumbCount = registerVal8.total
			table.insert({}, registerVal7)
			if 1.000000 <= #CoD.CCUtility.Heroes.selectionTable.bodyColors and 1.000000 < #CoD.CCUtility.Heroes.heroCustomizationTable.bodies[(CoD.CCUtility.Heroes.selectionTable.selectedBody + 1.000000)].accents[1.000000] then
				table.insert({}, __FUNC_767F_(Enum.CharacterItemType.CHARACTER_ITEM_TYPE_BODY, "HEROES_COLORS", CoD.CCUtility.Heroes.heroCustomizationTable.bodies[(CoD.CCUtility.Heroes.selectionTable.selectedBody + 1.000000)].accents[1.000000][(CoD.CCUtility.Heroes.selectionTable.bodyColors[1.000000] + 1.000000)].name, nil, nil, "HEROES_BODY_COLORS"))
			end
			CoD.CCUtility.PersonalizeHeroData.SpacerRows[#table.insert] = true
		end
		if CoD.CCUtility.customizationMode == Enum.eModes.MODE_MULTIPLAYER then
			registerVal7 = __FUNC_7E1B_(arg0)
			registerVal8 = Engine.Localize("HEROES_SHOWCASE_WEAPON_DESC", Engine.Localize(Engine.GetHeroName(CoD.CCUtility.customizationMode, CoD.CCUtility.Heroes.HeroIndexForEdits)))
			table.insert({}, __FUNC_7446_(CoD.CCUtility.ShowcaseWeaponCategoryIndex, "HEROES_SHOWCASE_WEAPON", registerVal7.baseWeaponName, registerVal7.variantName, registerVal8, "uie_t7_menu_mp_hero_graphic_showcase"))
			CoD.CCUtility.PersonalizeHeroData.SpacerRows[#{}] = true
			local registerVal9 = Engine.GetHeroBundleInfo(CoD.CCUtility.customizationMode, CoD.CCUtility.Heroes.HeroIndexForEdits)
			local registerVal17 = CoD.CCUtility.TauntsData.CharacterHasAnyGestures(registerVal9)
			if not registerVal17 then
				registerVal17 = CoD.CCUtility.TauntsData.CharacterHasAnyTaunts(registerVal9)
			else
			end
			local registerVal10 = __FUNC_7446_(CoD.CCUtility.TauntCategoryIndex, "HEROES_TAUNTS_AND_GESTURES", nil, nil, nil, "uie_t7_menu_mp_hero_graphic_taunt", true)
			local registerVal12 = CoD.CCUtility.GetTauntsAndGesturesNewCount(arg0, CoD.CCUtility.Heroes.HeroIndexForEdits, registerVal9, CoD.CCUtility.customizationMode)
			registerVal10.models.breadcrumbCount = registerVal12
			table.insert({}, registerVal10)
		end
	end
	if CoD.CCUtility.customizationMode == Enum.eModes.MODE_CAMPAIGN then
		local function __FUNC_8039_(arg0, arg1, arg2)
			local registerVal3 = {}
			local registerVal4 = {}
			registerVal4.categoryName = arg0
			registerVal4.categoryImage = arg1
			registerVal4.fullCategoryName = ""
			registerVal4.categoryDesc = ""
			registerVal4.currentSelectionName = ""
			registerVal4.colorListDatasource = ""
			registerVal4.currentSelectionNameAlpha = 0.000000
			registerVal4.currentSelectionVariantNameAlpha = 0.000000
			registerVal3.models = registerVal4
			registerVal4 = {}
			registerVal4.colorRow = false
			registerVal4.headItem = true
			registerVal4.disabled = arg2
			registerVal3.properties = registerVal4
			return registerVal3
		end

		table.insert({}, __FUNC_8039_("HEROES_CHANGE_CHARACTER", "uie_t7_menu_mp_hero_graphic_face"))
		CoD.CCUtility.PersonalizeHeroData.SpacerRows[#{}] = true
	end
	return {}
end

local registerVal0 = {}
local function __FUNC_81FA_(arg0, arg1, arg2)
	if CoD.CCUtility.PersonalizeHeroData.SpacerRows[arg1] then
		return 7.000000
	end
end

registerVal0.getSpacerAfterRow = __FUNC_81FA_
function CoD.CCUtility.getBasePersonalizationItemModels(arg0, arg1, arg2, arg3)
	local registerVal4 = {}
	local registerVal5 = {}
	registerVal5.name = arg1
	registerVal5.image = "$white"
	registerVal5.color = arg3
	registerVal5.optionIndex = arg0
	registerVal5.isBMPurchasable = false
	registerVal4.models = registerVal5
	registerVal4.properties = {}
	return registerVal4
end

local registerVal2 = DataSourceHelpers.ListSetup("CharacterCustomizationButtonList", CoD.CCUtility.PersonalizeCharacterListPrepare, true, registerVal0)
DataSources.CharacterCustomizationButtonList = registerVal2
function CoD.CCUtility.IsMissionCompleted(arg0, arg1)
	local registerVal2 = Engine.GetPlayerStats(arg0, CoD.STATS_LOCATION_NORMAL, Enum.eModes.MODE_CAMPAIGN)
	local registerVal3 = registerVal2.PlayerStatsByMap[arg1].hasBeenCompleted:get()
	if registerVal3 == 0.000000 then
	end
	return true
end

function CoD.CCUtility.IsBodyOrHelmetAccessible(arg0, arg1, arg2, arg3)
	local registerVal4 = Engine.IsCampaignGame()
	if CoD.CCUtility.customizationMode == Enum.eModes.MODE_CAMPAIGN or registerVal4 then
		registerVal4 = CoD.getStatsMilestoneTable(2.000000, Enum.eModes.MODE_CAMPAIGN)
		local registerVal8 = Engine.TableFindRows(registerVal4, 1.000000, arg1)
		local registerVal9, registerVal10, registerVal11 = ipairs(registerVal8)
		for index12,value13 in registerVal9, registerVal10, registerVal11 do
			local registerVal14 = Engine.TableLookupGetColumnValueForRow(registerVal4, value13, 2.000000)
			local registerVal15 = Engine.TableLookupGetColumnValueForRow(registerVal4, value13, 3.000000)
			if (registerVal14 + 1.000000) == arg2 then
				local registerVal16 = CoD.CCUtility.IsMissionCompleted(arg0, registerVal15)
				if registerVal15 == "none" or registerVal16 then
					return true
				end
			end
		end
		return false
	else
		if CoD.CCUtility.customizationMode == Enum.eModes.MODE_MULTIPLAYER then
			registerVal4 = IsProgressionEnabled(arg0)
			if registerVal4 then
				if arg2 == CoD.CCUtility.PersonalizeHeroData.CompletionEpicItemIndex then
					local registerVal6 = Engine.IsCharacterCustomizationItemLocked(arg0, CoD.CCUtility.Heroes.HeroIndexForEdits, CoD.CCUtility.PersonalizeHeroData.EdittingArea, CoD.CCUtility.PersonalizeHeroData.SpecialistEpicItemIndex)
					return (not registerVal6)
				else
					if arg2 == CoD.CCUtility.PersonalizeHeroData.SpecialistEpicItemIndex or arg2 == CoD.CCUtility.PersonalizeHeroData.CompletionEpicItemIndex then
					end
					return true
				end
			end
			return true
		else
			return true
		end
	end
end

function CoD.CCUtility.HeroOptionsListPrepare(arg0)
	local registerVal2 = Engine.GetHeroList(Enum.eModes.MODE_MULTIPLAYER)
	local registerVal3 = CoD.CCUtility.CompletionEpicComplete(arg0, registerVal2)
	local function __FUNC_941E_(arg1, arg2, arg3, arg4, arg5)
		local registerVal5 = CoD.CCUtility.getBasePersonalizationItemModels(arg1, arg2, "$white", "255 255 255")
		registerVal5.properties.optionIndex = arg1
		if arg4 == nil then
		end
		registerVal5.properties.isColorOption = true
		if arg4 == nil then
		end
		registerVal5.models.isColorOption = true
		registerVal5.properties.selectIndex = arg5
		if not registerVal5.properties.isColorOption then
			registerVal5.models.itemExtraCamInfo = ("" .. CoD.CCUtility.customizationMode .. ":" .. CoD.CCUtility.Heroes.HeroIndexForEdits .. ":" .. CoD.CCUtility.PersonalizeHeroData.EdittingArea .. ":" .. (arg1 - 1.000000) .. ":" .. arg0)
		else
			registerVal5.models.itemExtraCamInfo = ""
		end
		local registerVal8 = IsProgressionEnabled(arg0)
		if registerVal8 and CoD.CCUtility.Heroes.DefaultHelmetBodyOption < arg1 then
			if not registerVal5.properties.isColorOption then
				local registerVal9 = Engine.IsCharacterCustomizationItemLocked(arg0, CoD.CCUtility.Heroes.HeroIndexForEdits, CoD.CCUtility.PersonalizeHeroData.EdittingArea, arg1)
			end
			registerVal5.models.isLocked = registerVal9
			registerVal5.models.isClassified = false
			registerVal9 = IsCampaign()
			registerVal5.models.isClassified = (not registerVal3)
			if not registerVal9 and arg1 == CoD.CCUtility.PersonalizeHeroData.CompletionEpicItemIndex and registerVal5.models.isClassified == true then
				registerVal5.models.name = "MENU_CLASSIFIED"
			end
			registerVal9 = Engine.GetCharacterCustomizationItemUnlockInfo(arg0, CoD.CCUtility.Heroes.HeroIndexForEdits, CoD.CCUtility.PersonalizeHeroData.EdittingArea, arg1)
			if not registerVal5.models.isClassified and registerVal9 then
				registerVal5.models.unlockDescription = registerVal9.unlockDescription
				registerVal5.models.unlockReward = registerVal9.unlockReward
				registerVal5.models.unlockProgressAndTarget = registerVal9.unlockProgressAndTarget
			end
		end
		if CoD.CCUtility.customizationMode == Enum.eModes.MODE_MULTIPLAYER and CoD.CCUtility.PersonalizeHeroData.CompletionEpicItemIndex < arg1 then
			registerVal8 = Engine.GetHeroList(CoD.CCUtility.customizationMode)
			registerVal9 = Engine.GetHeroItemInfo(CoD.CCUtility.customizationMode, CoD.CCUtility.Heroes.HeroIndexForEdits, CoD.CCUtility.PersonalizeHeroData.EdittingArea, (arg1 - 1.000000))
			local registerVal11 = CoD.BlackMarketUtility.IsUnreleasedBlackMarketItem((registerVal9.assetName .. ";" .. registerVal8[(CoD.CCUtility.Heroes.HeroIndexForEdits + 1.000000)].assetName))
			if registerVal11 then
				return nil
			end
			registerVal5.models.isBMItem = true
			local registerVal12 = CoD.BlackMarketUtility.IsItemLocked(arg0, (registerVal9.assetName .. ";" .. registerVal8[(CoD.CCUtility.Heroes.HeroIndexForEdits + 1.000000)].assetName))
			registerVal5.models.isBMClassified = registerVal12
			registerVal5.models.isBMPurchasable = false
			registerVal5.models.insertTop = false
			registerVal12, registerVal13, registerVal14 = ipairs(CoD.BlackMarketUtility.UniqueSpecialistOutfits)
			for index15,value16 in registerVal12, registerVal13, registerVal14 do
				if value16.body == (registerVal9.assetName .. ";" .. registerVal8[(CoD.CCUtility.Heroes.HeroIndexForEdits + 1.000000)].assetName) then
					local registerVal18 = {}
					registerVal18.rarity = "MPUI_BM_LEGENDARY"
					registerVal18.duplicateCount = 0.000000
					registerVal5.models.rarityType = registerVal18
					registerVal5.models.insertTop = true
					local registerVal17 = Engine.GetInventoryItemQuantity(arg0, value16.bodyId)
					registerVal5.models.isBMPurchasable = true
				else
					if value16.head == (registerVal9.assetName .. ";" .. registerVal8[(CoD.CCUtility.Heroes.HeroIndexForEdits + 1.000000)].assetName) then
						registerVal18 = {}
						registerVal18.rarity = "MPUI_BM_LEGENDARY"
						registerVal18.duplicateCount = 0.000000
						registerVal5.models.rarityType = registerVal18
						registerVal5.models.insertTop = true
						registerVal17 = Engine.GetInventoryItemQuantity(arg0, value16.headId)
						registerVal5.models.isBMPurchasable = true
					end
				else
				end
			end
			if registerVal5.models.isBMClassified and not true then
				registerVal13 = CoD.BlackMarketUtility.ClassifiedName()
				registerVal5.models.name = registerVal13
				registerVal13 = {}
				registerVal13.rarity = ""
				registerVal13.duplicateCount = 0.000000
				registerVal5.models.rarityType = registerVal13
			else
				if not true then
					registerVal13 = {}
					registerVal14 = CoD.BlackMarketUtility.GetRarityForLootItemFromName((registerVal9.assetName .. ";" .. registerVal8[(CoD.CCUtility.Heroes.HeroIndexForEdits + 1.000000)].assetName))
					registerVal13.rarity = registerVal14
					registerVal14 = CoD.BlackMarketUtility.GetItemQuantity(arg0, (registerVal9.assetName .. ";" .. registerVal8[(CoD.CCUtility.Heroes.HeroIndexForEdits + 1.000000)].assetName))
					registerVal13.duplicateCount = registerVal14
					registerVal5.models.rarityType = registerVal13
				else
					registerVal9 = {}
					registerVal9.rarity = ""
					registerVal9.duplicateCount = 0.000000
					registerVal5.models.rarityType = registerVal9
				end
			end
		end
		return registerVal5
	end

	if CoD.CCUtility.PersonalizeHeroData.EdittingArea == Enum.CharacterItemType.CHARACTER_ITEM_TYPE_BODY then
		if CoD.CCUtility.PersonalizeHeroData.EdittingAreaItemIndex and CoD.CCUtility.PersonalizeHeroData.EdittingArea == Enum.CharacterItemType.CHARACTER_ITEM_TYPE_HELMET and CoD.CCUtility.PersonalizeHeroData.EdittingAreaItemIndex then
		end
	end
	if CoD.CCUtility.PersonalizeHeroData.EdittingAreaItemIndex then
		local registerVal10, registerVal11, registerVal12 = ipairs(CoD.CCUtility.Heroes.heroCustomizationTable.helmets[(CoD.CCUtility.Heroes.selectionTable.selectedHelmet + 1.000000)].accents[CoD.CCUtility.PersonalizeHeroData.EdittingAreaItemIndex])
		for index13,value14 in registerVal10, registerVal11, registerVal12 do
			if index13 ~= (CoD.CCUtility.Heroes.selectionTable.helmetColors[CoD.CCUtility.PersonalizeHeroData.EdittingAreaItemIndex] + 1.000000) then
			end
			table.insert({}, __FUNC_941E_(index13, value14.name, value14.icon, (value14.red .. " " .. value14.green .. " " .. value14.blue), true))
		end
	else
		local registerVal9, registerVal10, registerVal11 = ipairs(CoD.CCUtility.Heroes.heroCustomizationTable.helmets)
		for index12,value13 in registerVal9, registerVal10, registerVal11 do
			local registerVal14 = CoD.CCUtility.IsBodyOrHelmetAccessible(arg0, "helmetstyle", index12, #index13)
			if value13.name and registerVal14 then
				if (CoD.CCUtility.Heroes.selectionTable.selectedHelmet + 1.000000) ~= index12 then
				end
				registerVal14 = __FUNC_941E_(index12, value13.name, value13.icon, nil, true)
				if registerVal14 ~= nil then
					if registerVal14.models.insertTop then
						table.insert({}, 1.000000, registerVal14)
					else
						table.insert({}, registerVal14)
					end
				end
			end
		end
	end
	return {}
end

registerVal2 = DataSourceHelpers.ListSetup("HeroCustomizationOptionList", CoD.CCUtility.HeroOptionsListPrepare, true)
DataSources.HeroChooseOptionButtonList = registerVal2
function CoD.CCUtility.CharacterCustomizationColorSetListPrepare(arg0)
	local function __FUNC_A79A_(arg0, arg1, arg2, arg3)
		local registerVal4 = CoD.CCUtility.getBasePersonalizationItemModels(arg0, arg1, "$white", "255 255 255")
		registerVal4.properties.optionIndex = arg0
		if arg3 == nil then
		end
		registerVal4.properties.isColorOption = true
		return registerVal4
	end

	if CoD.CCUtility.PersonalizeHeroData.EdittingArea == Enum.CharacterItemType.CHARACTER_ITEM_TYPE_BODY then
	else
		if CoD.CCUtility.PersonalizeHeroData.EdittingArea == Enum.CharacterItemType.CHARACTER_ITEM_TYPE_HELMET then
		end
	end
	local registerVal7, registerVal8, registerVal9 = ipairs(CoD.CCUtility.Heroes.heroCustomizationTable.helmets[(CoD.CCUtility.Heroes.selectionTable.selectedHelmet + 1.000000)].accents)
	for index10,value11 in registerVal7, registerVal8, registerVal9 do
		local registerVal14 = {}
		local registerVal15 = {}
		registerVal15.colorIndex = index10
		local function __FUNC_A8E8_()
			local registerVal0 = {}
			registerVal0.colorTableIndex = index10
			return registerVal0
		end

		local registerVal16 = CoD.CCUtility.CreatePersonalizeColorDatasource(arg0, ("PersonalizeCharacterColorOptions_" .. index10), value11, __FUNC_A8E8_)
		registerVal15.colorListDatasource = registerVal16
		registerVal15.selectedColor = (CoD.CCUtility.Heroes.selectionTable.helmetColors[index10] + 1.000000)
		registerVal14.models = registerVal15
		local registerVal12 = table.insert({}, registerVal14)
	end
	return {}
end

registerVal2 = DataSourceHelpers.ListSetup("CharacterCustomizationColorSetList", CoD.CCUtility.CharacterCustomizationColorSetListPrepare, true)
DataSources.CharacterCustomizationColorSetList = registerVal2
function CoD.CCUtility.PersonalizeHeroData.SetHeroShowcaseWeapon(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
	if not arg2 then
	end
	if arg1 or # == 0.000000 then
		for index10=1.000000, CoD.CCUtility.PersonalizeHeroData.MaxWeaponAttachments, 1.000000 do
			{}[index10] = 0.000000
		end
	end
	if arg1 or #1.000000 == 0.000000 then
		for index10=1.000000, CoD.CCUtility.PersonalizeHeroData.MaxWeaponAttachments, 1.000000 do
			{}[index10] = 0.000000
		end
	end
	if not arg5 then
	end
	if not arg6 then
	end
	if not arg7 then
	end
	Engine.SetHeroShowcaseWeaponVariantName(arg0, CoD.CCUtility.customizationMode, CoD.CCUtility.Heroes.HeroIndexForEdits, "")
	Engine.SetHeroShowcaseWeaponAttribute(arg0, CoD.CCUtility.customizationMode, CoD.CCUtility.Heroes.HeroIndexForEdits, "weaponIndex", arg1)
	for index10=1.000000, CoD.CCUtility.PersonalizeHeroData.MaxWeaponAttachments, 1.000000 do
		Engine.SetHeroShowcaseWeaponAttribute(arg0, CoD.CCUtility.customizationMode, CoD.CCUtility.Heroes.HeroIndexForEdits, "attachment", {}[index10], (index10 - 1.000000))
	end
	for index10=1.000000, CoD.CCUtility.PersonalizeHeroData.MaxWeaponAttachments, 1.000000 do
		Engine.SetHeroShowcaseWeaponAttribute(arg0, CoD.CCUtility.customizationMode, CoD.CCUtility.Heroes.HeroIndexForEdits, "attachmentVariant", {}[index10], (index10 - 1.000000))
	end
	Engine.SetHeroShowcaseWeaponAttribute(arg0, CoD.CCUtility.customizationMode, CoD.CCUtility.Heroes.HeroIndexForEdits, "camoIndex", 0.000000)
	Engine.SetHeroShowcaseWeaponAttribute(arg0, CoD.CCUtility.customizationMode, CoD.CCUtility.Heroes.HeroIndexForEdits, "paintjobSlot", Enum.CustomizationPaintjobInvalidID.CUSTOMIZATION_INVALID_PAINTJOB_SLOT)
	Engine.SetHeroShowcaseWeaponAttribute(arg0, CoD.CCUtility.customizationMode, CoD.CCUtility.Heroes.HeroIndexForEdits, "paintjobIndex", Enum.CustomizationPaintjobInvalidID.CUSTOMIZATION_INVALID_PAINTJOB_INDEX)
end

function CoD.CCUtility.PersonalizeHeroData.GetHeroShowcaseWeaponName(arg0, arg1)
	local registerVal2 = Engine.GetItemRef(arg0)
	local registerVal4 = CoD.gameMode:lower()
	local registerVal3, registerVal4, registerVal5 = ipairs(arg1)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		local registerVal8 = Engine.GetAttachmentRef(arg0, value7)
	end
	return ((registerVal2 .. "_" .. registerVal4) .. "+" .. registerVal8)
end

function CoD.CCUtility.PersonalizeHeroData.GetHeroShowcaseWeaponRenderOptions(arg0, arg1, arg2)
	return (arg0 .. "," .. arg1 .. "," .. arg2)
end

function CoD.CCUtility.PersonalizeHeroData.IsDualWieldWeapon(arg0, arg1)
	local registerVal3 = Engine.GetItemRef(arg0)
	local registerVal4 = Engine.GetItemIndexFromReference((registerVal3 .. "_dw"), CoD.CCUtility.customizationMode)
	if registerVal4 == -1.000000 then
		return false
	end
	local registerVal5, registerVal6, registerVal7 = ipairs(arg1)
	for index8,value9 in registerVal5, registerVal6, registerVal7 do
		local registerVal10 = Engine.GetAttachmentRef(arg0, value9)
		if registerVal10 == "dw" then
			return true
		end
	end
	return false
end

function CoD.CCUtility.PersonalizeHeroData.GetDualWieldVersionOfWeapon(arg0, arg1)
	local registerVal3 = Engine.GetItemRef(arg1)
	return Engine.GetItemIndexFromReference((registerVal3 .. "_dw"), CoD.CCUtility.customizationMode)
end

function CoD.CCUtility.TauntsData.GetGestureXAnim(arg0, arg1, arg2)
	if not arg0[("gestureAnim" .. CoD.CCUtility.TauntsData.GestureTypeAWINames[(arg1 + 1.000000)] .. arg2)] then
	end
	return ""
end

function CoD.CCUtility.TauntsData.GetGestureDisplayName(arg0, arg1, arg2)
	if not arg0[("gestureName" .. CoD.CCUtility.TauntsData.GestureTypeAWINames[(arg1 + 1.000000)] .. arg2)] then
	end
	return ""
end

function CoD.CCUtility.TauntsData.GetGestureCount(arg0, arg1)
	if not arg0[("gestureCount" .. CoD.CCUtility.TauntsData.GestureTypeAWINames[(arg1 + 1.000000)])] then
	end
	return 0.000000
end

function CoD.CCUtility.TauntsData.GetGestureAnimFromEvent(arg0)
	local registerVal1 = Engine.GetHeroBundleInfo(arg0.sessionMode, arg0.characterIndex)
	if registerVal1 then
		return CoD.CCUtility.TauntsData.GetGestureXAnim(registerVal1, arg0.gestureType, arg0.gestureIndex)
	end
	return ""
end

function CoD.CCUtility.TauntsData.CharacterHasAnyGestures(arg0)
	for index1=0.000000, (Enum.CharacterGestureTypes.GESTURE_TYPE_COUNT - 1.000000), 1.000000 do
		local registerVal5 = CoD.CCUtility.TauntsData.GetGestureCount(arg0, index1)
		if 0.000000 < registerVal5 then
			return true
		end
	end
	return false
end

function CoD.CCUtility.GetTauntsAndGesturesNewCount(arg0, arg1, arg2, arg3)
	local registerVal5 = LuaUtils.GetBlackjackHeroIndex(arg3)
	if arg1 == registerVal5 then
		return 0.000000
	end
	registerVal5, registerVal6 = CoD.CCUtility.Heroes.GetHeroUnlockInfo(arg0, arg1, arg3)
	if registerVal5 then
		return 0.000000
	end
	local registerVal7 = CoD.CCUtility.GetTauntNewCount(arg0, arg1, arg2, arg3)
	registerVal7 = CoD.CCUtility.GetGestureNewCount(arg0, arg1, arg2, arg3)
	return ((0.000000 + registerVal7) + registerVal7)
end

function CoD.CCUtility.GetTauntNewCount(arg0, arg1, arg2, arg3)
	local registerVal5 = Engine.GetHeroList(arg3)
	for index6=0.000000, (Enum.CharacterTauntTypes.TAUNT_TYPE_COUNT - 1.000000), 1.000000 do
		local registerVal11 = CoD.CCUtility.TauntsData.GetTauntCount(arg2, index6)
		for index10=0.000000, (registerVal11 - 1.000000), 1.000000 do
			local registerVal14 = CoD.CCUtility.TauntsData.GetTauntXAnim(arg2, index6, index10)
			local registerVal15 = Engine.IsTauntNew(arg0, arg3, arg1, index6, index10, registerVal14)
			if registerVal15 then
			end
		end
	end
	return (0.000000 + 1.000000)
end

function CoD.CCUtility.GetGestureNewCount(arg0, arg1, arg2, arg3)
	local registerVal5 = Engine.GetHeroList(arg3)
	for index6=0.000000, (Enum.CharacterGestureTypes.GESTURE_TYPE_COUNT - 1.000000), 1.000000 do
		local registerVal11 = CoD.CCUtility.TauntsData.GetGestureCount(arg2, index6)
		for index10=0.000000, (registerVal11 - 1.000000), 1.000000 do
			local registerVal14 = CoD.CCUtility.TauntsData.GetGestureXAnim(arg2, index6, index10)
			local registerVal15 = Engine.IsGestureNew(arg0, arg3, arg1, index6, index10, (registerVal14 .. ";" .. registerVal5[(arg1 + 1.000000)].assetName))
			if registerVal14 ~= "" and registerVal15 then
			end
		end
	end
	return (0.000000 + 1.000000)
end

function CoD.CCUtility.GestureTypeOptionsListCreate(arg0, arg1, arg2)
	local function __FUNC_BFF3_(arg3)
		local registerVal3 = CoD.CCUtility.TauntsData.GetGestureCount(arg0, arg1)
		for index2=0.000000, (registerVal3 - 1.000000), 1.000000 do
			local registerVal6 = CoD.CCUtility.TauntsData.GetGestureXAnim(arg0, arg1, index2)
			local registerVal7 = Engine.GetHeroList(Enum.eModes.MODE_MULTIPLAYER)
			if registerVal6 ~= "" and index2 ~= 0.000000 then
				local registerVal10 = CoD.BlackMarketUtility.IsItemLocked(arg3, (registerVal6 .. ";" .. registerVal7[(CoD.CCUtility.Heroes.HeroIndexForEdits + 1.000000)].assetName))
			end
			registerVal10 = CoD.CCUtility.TauntsData.GetGestureDisplayName(arg0, arg1, index2)
			if registerVal10 then
				local registerVal11 = CoD.BlackMarketUtility.ClassifiedName()
			end
			registerVal11 = CoD.BlackMarketUtility.IsUnreleasedBlackMarketItem((registerVal6 .. ";" .. registerVal7[(CoD.CCUtility.Heroes.HeroIndexForEdits + 1.000000)].assetName))
			if not registerVal11 then
				local registerVal13 = {}
				local registerVal14 = {}
				registerVal14.itemName = registerVal11
				registerVal14.isBMClassified = registerVal10
				if registerVal6 == "" then
				end
				registerVal14.canPreview = true
				local registerVal15 = {}
				local registerVal16 = CoD.BlackMarketUtility.GetRarityForLootItemFromName((registerVal6 .. ";" .. registerVal7[(CoD.CCUtility.Heroes.HeroIndexForEdits + 1.000000)].assetName))
				registerVal15.rarity = registerVal16
				registerVal15.isBMClassified = registerVal10
				registerVal16 = CoD.BlackMarketUtility.GetItemQuantity(arg3, (registerVal6 .. ";" .. registerVal7[(CoD.CCUtility.Heroes.HeroIndexForEdits + 1.000000)].assetName))
				registerVal15.duplicateCount = registerVal16
				registerVal14.rarityType = registerVal15
				registerVal13.models = registerVal14
				registerVal14 = {}
				registerVal14.index = index2
				registerVal14.xanim = registerVal6
				registerVal14.heroName = registerVal7[(CoD.CCUtility.Heroes.HeroIndexForEdits + 1.000000)].assetName
				registerVal14.gestureType = arg1
				if index2 ~= arg2 then
				end
				registerVal14.selectIndex = true
				registerVal13.properties = registerVal14
				table.insert({}, registerVal13)
			end
		end
		table.sort({}, CoD.BlackMarketUtility.SortUnlocksPropertyIndex)
		return {}
	end

	local registerVal5 = DataSourceHelpers.ListSetup(("GestureTypeOptions" .. arg1), __FUNC_BFF3_, true)
	DataSources[("GestureTypeOptions" .. arg1)] = registerVal5
	return ("GestureTypeOptions" .. arg1)
end

function CoD.CCUtility.GestureTypesListPrepare(arg0)
	local registerVal2 = Engine.GetHeroBundleInfo(CoD.CCUtility.customizationMode, CoD.CCUtility.Heroes.HeroIndexForEdits)
	local function __FUNC_C8C5_(arg1, arg2)
		local registerVal2 = CoD.CCUtility.TauntsData.GetGestureCount(registerVal2, arg1)
		if 0.000000 < registerVal2 then
			registerVal2 = Engine.GetSelectedGestureForHero(arg0, CoD.CCUtility.customizationMode, CoD.CCUtility.Heroes.HeroIndexForEdits, arg1)
			local registerVal3 = CoD.CCUtility.TauntsData.GetGestureXAnim(registerVal2, arg1, registerVal2)
			local registerVal6 = {}
			local registerVal7 = {}
			registerVal7.categoryName = arg2
			local registerVal8 = CoD.CCUtility.TauntsData.GetGestureDisplayName(registerVal2, arg1, registerVal2)
			registerVal7.selectedItem = registerVal8
			registerVal8 = CoD.CCUtility.GestureTypeOptionsListCreate(registerVal2, arg1, registerVal2)
			registerVal7.optionsDatasource = registerVal8
			if registerVal3 == "" then
			end
			registerVal7.canPreview = true
			registerVal6.models = registerVal7
			registerVal7 = {}
			registerVal7.gestureType = arg1
			registerVal7.xanim = registerVal3
			registerVal6.properties = registerVal7
			table.insert({}, registerVal6)
		end
	end

	__FUNC_C8C5_(Enum.CharacterGestureTypes.GESTURE_TYPE_GOOD_GAME, "HEROES_GESTURES_GOOD_GAME")
	__FUNC_C8C5_(Enum.CharacterGestureTypes.GESTURE_TYPE_THREATEN, "HEROES_GESTURES_THREATEN")
	__FUNC_C8C5_(Enum.CharacterGestureTypes.GESTURE_TYPE_BOAST, "HEROES_GESTURES_BOAST")
	return {}
end

registerVal2 = DataSourceHelpers.ListSetup("GestureTypesList", CoD.CCUtility.GestureTypesListPrepare, true)
DataSources.GestureTypesList = registerVal2
function CoD.CCUtility.TauntsData.GetTauntXAnim(arg0, arg1, arg2)
	if not arg0[("tauntAnim" .. CoD.CCUtility.TauntsData.TauntTypeAWINames[(arg1 + 1.000000)] .. arg2)] then
	end
	return ""
end

function CoD.CCUtility.TauntsData.GetTauntDisplayName(arg0, arg1, arg2)
	if not arg0[("tauntName" .. CoD.CCUtility.TauntsData.TauntTypeAWINames[(arg1 + 1.000000)] .. arg2)] then
	end
	return ""
end

function CoD.CCUtility.TauntsData.GetTauntCount(arg0, arg1)
	if not arg0[("tauntCount" .. CoD.CCUtility.TauntsData.TauntTypeAWINames[(arg1 + 1.000000)])] then
	end
	return 0.000000
end

function CoD.CCUtility.TauntsData.GetTauntAnimFromEvent(arg0)
	local registerVal1 = Engine.GetHeroBundleInfo(arg0.sessionMode, arg0.characterIndex)
	if registerVal1 then
		return CoD.CCUtility.TauntsData.GetTauntXAnim(registerVal1, arg0.tauntType, arg0.tauntIndex)
	end
	return ""
end

function CoD.CCUtility.TauntsData.CharacterHasAnyTaunts(arg0)
	for index1=0.000000, (Enum.CharacterTauntTypes.TAUNT_TYPE_COUNT - 1.000000), 1.000000 do
		local registerVal5 = CoD.CCUtility.TauntsData.GetTauntCount(arg0, index1)
		if 0.000000 < registerVal5 then
			return true
		end
	end
	return false
end

function CoD.CCUtility.TauntTypeOptionsListCreate(arg0, arg1, arg2)
	local function __FUNC_D2F1_(arg3)
		local registerVal3 = CoD.CCUtility.TauntsData.GetTauntCount(arg0, arg1)
		for index2=0.000000, (registerVal3 - 1.000000), 1.000000 do
			local registerVal6 = CoD.CCUtility.TauntsData.GetTauntXAnim(arg0, arg1, index2)
			if registerVal6 ~= "" and index2 ~= 0.000000 then
				local registerVal8 = CoD.BlackMarketUtility.IsItemLocked(arg3, registerVal6)
			end
			registerVal8 = CoD.CCUtility.TauntsData.GetTauntDisplayName(arg0, arg1, index2)
			if registerVal8 then
				local registerVal9 = CoD.BlackMarketUtility.ClassifiedName()
			end
			registerVal9 = CoD.BlackMarketUtility.IsUnreleasedBlackMarketItem(registerVal6)
			if not registerVal9 then
				local registerVal11 = {}
				local registerVal12 = {}
				registerVal12.itemName = registerVal9
				registerVal12.isBMClassified = registerVal8
				if registerVal6 == "" then
				end
				registerVal12.canPreview = true
				local registerVal13 = {}
				local registerVal14 = CoD.BlackMarketUtility.GetRarityForLootItemFromName(registerVal6)
				registerVal13.rarity = registerVal14
				registerVal13.isBMClassified = registerVal8
				registerVal14 = CoD.BlackMarketUtility.GetItemQuantity(arg3, registerVal6)
				registerVal13.duplicateCount = registerVal14
				registerVal12.rarityType = registerVal13
				registerVal11.models = registerVal12
				registerVal12 = {}
				registerVal12.index = index2
				registerVal12.xanim = registerVal6
				registerVal12.tauntType = arg1
				if index2 ~= arg2 then
				end
				registerVal12.selectIndex = true
				registerVal11.properties = registerVal12
				table.insert({}, registerVal11)
			end
		end
		table.sort({}, CoD.BlackMarketUtility.SortUnlocksPropertyIndex)
		return {}
	end

	local registerVal5 = DataSourceHelpers.ListSetup(("TauntTypeOptions" .. arg1), __FUNC_D2F1_, true)
	DataSources[("TauntTypeOptions" .. arg1)] = registerVal5
	return ("TauntTypeOptions" .. arg1)
end

function CoD.CCUtility.TauntTypesListPrepare(arg0)
	local registerVal2 = Engine.GetHeroBundleInfo(CoD.CCUtility.customizationMode, CoD.CCUtility.Heroes.HeroIndexForEdits)
	local function __FUNC_D9AC_(arg1, arg2)
		local registerVal2 = CoD.CCUtility.TauntsData.GetTauntCount(registerVal2, arg1)
		if 0.000000 < registerVal2 then
			registerVal2 = Engine.GetSelectedTauntForHero(arg0, CoD.CCUtility.customizationMode, CoD.CCUtility.Heroes.HeroIndexForEdits, arg1)
			local registerVal3 = CoD.CCUtility.TauntsData.GetTauntXAnim(registerVal2, arg1, registerVal2)
			local registerVal6 = {}
			local registerVal7 = {}
			registerVal7.categoryName = arg2
			local registerVal8 = CoD.CCUtility.TauntsData.GetTauntDisplayName(registerVal2, arg1, registerVal2)
			registerVal7.selectedItem = registerVal8
			registerVal8 = CoD.CCUtility.TauntTypeOptionsListCreate(registerVal2, arg1, registerVal2)
			registerVal7.optionsDatasource = registerVal8
			if registerVal3 == "" then
			end
			registerVal7.canPreview = true
			registerVal6.models = registerVal7
			registerVal7 = {}
			registerVal7.tauntType = arg1
			registerVal8 = CoD.CCUtility.TauntsData.GetTauntXAnim(registerVal2, arg1, registerVal2)
			registerVal7.xanim = registerVal8
			registerVal6.properties = registerVal7
			table.insert({}, registerVal6)
		end
	end

	__FUNC_D9AC_(Enum.CharacterTauntTypes.TAUNT_TYPE_FIRST_PLACE, "HEROES_1ST_PLACE_TAUNT")
	return {}
end

registerVal2 = DataSourceHelpers.ListSetup("TauntTypesList", CoD.CCUtility.TauntTypesListPrepare, true)
DataSources.TauntTypesList = registerVal2
function CoD.CCUtility.GetDisplayNameForTaunt(arg0, arg1)
	local registerVal2 = Engine.GetHeroList(arg0)
	local registerVal3, registerVal4, registerVal5 = ipairs(registerVal2)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		local registerVal8 = Engine.GetHeroBundleInfo(arg0, value7.bodyIndex)
		local registerVal9, registerVal10, registerVal11 = ipairs(CoD.CCUtility.TauntsData.TauntTypeAWINames)
		for index12,value13 in registerVal9, registerVal10, registerVal11 do
			local registerVal14 = CoD.CCUtility.TauntsData.GetTauntCount(registerVal8, (index12 - 1.000000))
			for index15=0.000000, (registerVal14 - 1.000000), 1.000000 do
				local registerVal19 = CoD.CCUtility.TauntsData.GetTauntXAnim(registerVal8, (index12 - 1.000000), index15)
				if registerVal19 == arg1 then
					return CoD.CCUtility.TauntsData.GetTauntDisplayName(registerVal8, (index12 - 1.000000), index15)
				end
			end
		end
	end
	return ""
end

function CoD.CCUtility.GetHeroDisplayNameAndIndexForTaunt(arg0, arg1)
	local registerVal2 = Engine.GetHeroList(arg0)
	local registerVal3, registerVal4, registerVal5 = ipairs(registerVal2)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		local registerVal8 = Engine.GetHeroBundleInfo(arg0, value7.bodyIndex)
		local registerVal9, registerVal10, registerVal11 = ipairs(CoD.CCUtility.TauntsData.TauntTypeAWINames)
		for index12,value13 in registerVal9, registerVal10, registerVal11 do
			local registerVal14 = CoD.CCUtility.TauntsData.GetTauntCount(registerVal8, (index12 - 1.000000))
			for index15=0.000000, (registerVal14 - 1.000000), 1.000000 do
				local registerVal19 = CoD.CCUtility.TauntsData.GetTauntXAnim(registerVal8, (index12 - 1.000000), index15)
				if registerVal19 == arg1 then
					return value7.displayName, CoDLUIDecompiler.LuaRegister
				end
			end
		end
	end
	return ""
end

function CoD.CCUtility.GetTypeIndexAndIndexForTaunt(arg0, arg1)
	local registerVal2 = Engine.GetHeroList(arg0)
	local registerVal3, registerVal4, registerVal5 = ipairs(registerVal2)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		local registerVal8 = Engine.GetHeroBundleInfo(arg0, value7.bodyIndex)
		local registerVal9, registerVal10, registerVal11 = ipairs(CoD.CCUtility.TauntsData.TauntTypeAWINames)
		for index12,value13 in registerVal9, registerVal10, registerVal11 do
			local registerVal14 = CoD.CCUtility.TauntsData.GetTauntCount(registerVal8, (index12 - 1.000000))
			for index15=0.000000, (registerVal14 - 1.000000), 1.000000 do
				local registerVal19 = CoD.CCUtility.TauntsData.GetTauntXAnim(registerVal8, (index12 - 1.000000), index15)
				if registerVal19 == arg1 then
					return (index12 - 1.000000), CoDLUIDecompiler.LuaRegister
				end
			end
		end
	end
	return nil, CoDLUIDecompiler.LuaRegister
end

function CoD.CCUtility.GetTypeNameForGesture(arg0, arg1, arg2)
	local registerVal3 = Engine.GetHeroList(arg0)
	local registerVal4, registerVal5, registerVal6 = ipairs(registerVal3)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		local registerVal9 = Engine.GetHeroBundleInfo(arg0, value8.bodyIndex)
		local registerVal10, registerVal11, registerVal12 = ipairs(CoD.CCUtility.TauntsData.GestureTypeAWINames)
		for index13,value14 in registerVal10, registerVal11, registerVal12 do
			local registerVal15 = CoD.CCUtility.TauntsData.GetGestureCount(registerVal9, (index13 - 1.000000))
			for index16=0.000000, (registerVal15 - 1.000000), 1.000000 do
				local registerVal20 = CoD.CCUtility.TauntsData.GetGestureXAnim(registerVal9, (index13 - 1.000000), index16)
				if registerVal20 == arg2 then
					return CoD.CCUtility.TauntsData.GestureTypeDisplayNames[index13]
				end
			end
		end
	end
	return ""
end

function CoD.CCUtility.GetTypeIndexAndIndexForGesture(arg0, arg1, arg2)
	local registerVal3 = Engine.GetHeroList(arg0)
	local registerVal4, registerVal5, registerVal6 = ipairs(registerVal3)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		local registerVal9 = Engine.GetHeroBundleInfo(arg0, value8.bodyIndex)
		local registerVal10, registerVal11, registerVal12 = ipairs(CoD.CCUtility.TauntsData.GestureTypeAWINames)
		for index13,value14 in registerVal10, registerVal11, registerVal12 do
			local registerVal15 = CoD.CCUtility.TauntsData.GetGestureCount(registerVal9, (index13 - 1.000000))
			for index16=0.000000, (registerVal15 - 1.000000), 1.000000 do
				local registerVal20 = CoD.CCUtility.TauntsData.GetGestureXAnim(registerVal9, (index13 - 1.000000), index16)
				if registerVal20 == arg2 then
					return (index13 - 1.000000), CoDLUIDecompiler.LuaRegister
				end
			end
		end
	end
	return nil, CoDLUIDecompiler.LuaRegister
end

function CoD.CCUtility.GetDisplayNameForGesture(arg0, arg1, arg2)
	local registerVal3 = Engine.GetHeroList(arg0)
	local registerVal4, registerVal5, registerVal6 = ipairs(registerVal3)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		local registerVal9 = Engine.GetHeroBundleInfo(arg0, value8.bodyIndex)
		local registerVal10, registerVal11, registerVal12 = ipairs(CoD.CCUtility.TauntsData.GestureTypeAWINames)
		for index13,value14 in registerVal10, registerVal11, registerVal12 do
			local registerVal15 = CoD.CCUtility.TauntsData.GetGestureCount(registerVal9, (index13 - 1.000000))
			for index16=0.000000, (registerVal15 - 1.000000), 1.000000 do
				local registerVal20 = CoD.CCUtility.TauntsData.GetGestureXAnim(registerVal9, (index13 - 1.000000), index16)
				if registerVal20 == arg2 then
					return CoD.CCUtility.TauntsData.GetGestureDisplayName(registerVal9, (index13 - 1.000000), index16)
				end
			end
		end
	end
	return ""
end

function CoD.CCUtility.GetHeroDisplayNameAndIndex(arg0, arg1)
	local registerVal2 = Engine.GetHeroList(arg0)
	local registerVal3, registerVal4, registerVal5 = ipairs(registerVal2)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		local registerVal8 = Engine.GetHeroBundleInfo(arg0, value7.bodyIndex)
		if value7.assetName == arg1 then
			return value7.displayName, CoDLUIDecompiler.LuaRegister
		end
	end
	return ""
end

function CoD.CCUtility.Heroes.GetHeroUnlockInfo(arg0, arg1, arg2, arg3)
	for index6=Enum.heroLoadoutTypes_e.HERO_LOADOUT_TYPE_FIRST, (Enum.heroLoadoutTypes_e.HERO_LOADOUT_TYPE_COUNT - 1.000000), 1.000000 do
		local registerVal10 = Engine.GetLoadoutItemIndexForHero(CoD.CCUtility.customizationMode, arg1, index6)
		local registerVal11 = IsLive()
		registerVal11 = IsFirstTimeSetup(arg0, Enum.eModes.MODE_MULTIPLAYER)
		if registerVal11 and registerVal11 then
			if true then
				registerVal11 = Engine.IsItemLocked(arg0, registerVal10, Enum.eModes.MODE_MULTIPLAYER)
			end
		else
			registerVal11 = IsProgressionEnabled(arg0)
			if registerVal11 then
				if registerVal11 then
					if not CoD.PrestigeUtility.isInPermanentUnlockMenu then
						registerVal11 = Engine.IsItemLocked(arg0, registerVal10, CoD.CCUtility.customizationMode)
					else
					end
				end
				registerVal11 = CoD.GetUnlockRankAndLevelForItemIndex(arg0, registerVal10, "MENU_UNLOCKED_AT", CoD.CCUtility.customizationMode)
			end
		end
	end
	local registerVal6 = IsProgressionEnabled(arg0)
	if not registerVal6 then
	end
	return false, CoDLUIDecompiler.LuaRegister
end

function CoD.CCUtility.Heroes.GetPersonalizationNewCount(arg0, arg1)
	if arg1 then
		local registerVal4 = Engine.GetHeroBundleInfo(CoD.CCUtility.customizationMode, arg1)
		for index5=0.000000, (Enum.CharacterItemType.CHARACTER_ITEM_TYPE_COUNT - 1.000000), 1.000000 do
			local registerVal9 = Engine.CharacterCustomizationNewItemCount(arg0, arg1, index5, CoD.CCUtility.customizationMode)
		end
		local registerVal5 = CoD.CCUtility.GetTauntsAndGesturesNewCount(arg0, arg1, registerVal4, CoD.CCUtility.customizationMode)
	end
	return ((0.000000 + registerVal9.total) + registerVal5)
end

function CoD.CCUtility.GetHeroModels(arg0, arg1, arg2, arg3)
	local registerVal4 = Engine.GetEquippedInfoForHero(arg2, CoD.CCUtility.customizationMode, arg0.bodyIndex)
	local registerVal5 = Engine.GetHeroCustomizationTable(CoD.CCUtility.customizationMode, arg0.bodyIndex)
	local registerVal6, registerVal7 = CoD.CCUtility.Heroes.GetHeroUnlockInfo(arg2, arg0.bodyIndex)
	if not CoD.CCUtility.Heroes.HeroIndexForEdits then
		local registerVal8 = Engine.GetEquippedHero(arg2, CoD.CCUtility.customizationMode)
	end
	local registerVal9 = Engine.GetHeroBundleInfo(CoD.CCUtility.customizationMode, arg0.bodyIndex)
	if not registerVal9 then
	end
	local registerVal10 = {}
	local registerVal11 = {}
	if not arg0.backgroundWithCharacter then
	end
	registerVal11.backgroundWithCharacter = "blacktransparent"
	registerVal11.lockedBackgroundWithCharacter = arg0.background
	registerVal11.name = arg0.displayName
	registerVal11.unlockDescription = registerVal7
	registerVal11.level = 1.000000
	if not arg0.frozenMomentRender then
	end
	registerVal11.unlockedCharacterSliver = "blacktransparent"
	if not {}.lockedSliverRender then
	end
	registerVal11.lockedCharacterSliver = "blacktransparent"
	if not arg0.disabled then
	end
	registerVal11.disabled = registerVal6
	local registerVal12 = Engine.GetLoadoutTypeForHero(arg2, arg0.bodyIndex)
	registerVal11.equippedSlot = registerVal12
	registerVal12 = CoD.CCUtility.CreateSelectedItemModel(arg2, registerVal5, registerVal4, arg0.bodyIndex, Enum.CharacterItemType.CHARACTER_ITEM_TYPE_HELMET)
	registerVal11.selectedHeadInfo = registerVal12
	registerVal12 = CoD.CCUtility.CreateSelectedItemModel(arg2, registerVal5, registerVal4, arg0.bodyIndex, Enum.CharacterItemType.CHARACTER_ITEM_TYPE_BODY)
	registerVal11.selectedBodyInfo = registerVal12
	registerVal11.selectedShowcaseWeaponInfo = nil
	registerVal11.selectedTauntInfo = nil
	registerVal11.itemType = Enum.VoteItemType.VOTE_ITEM_TYPE_ITEM
	registerVal11.heroIndex = arg0.bodyIndex
	registerVal12 = CoD.CCUtility.Heroes.GetPersonalizationNewCount(arg2, arg0.bodyIndex)
	registerVal11.breadcrumbCount = registerVal12
	registerVal10.models = registerVal11
	registerVal11 = {}
	registerVal11.heroIndex = arg0.bodyIndex
	if arg0.bodyIndex ~= registerVal8 then
	end
	registerVal11.selectIndex = true
	registerVal10.properties = registerVal11
	registerVal11 = CoDShared.IsLootHero(arg0)
	if registerVal11 then
		local function __FUNC_10315_(arg0, arg1)
			local registerVal2 = arg0:exists()
			if registerVal2 then
				arg0:get()
				return tonumber(arg0:get)
			end
			return arg1
		end

		registerVal10.models.contractsRemaining = 0.000000
		registerVal10.models.isActivated = false
		registerVal10.models.activeTimeRemaining = 0.000000
		registerVal12 = Dvar.ui_enableAllHeroes:get()
		if registerVal12 then
			if arg1 or not 1.000000 then
			end
			local registerVal14 = __FUNC_10315_(Dvar.ui_blackjack_contracts, 0.000000)
			registerVal10.models.contractsRemaining = registerVal14
			registerVal14 = __FUNC_10315_(Dvar.ui_blackjack_active, 1.000000)
			if registerVal14 ~= 1.000000 then
			end
			registerVal10.models.isActivated = true
			registerVal14 = __FUNC_10315_(Dvar.ui_blackjack_remainingTime, 29754.000000)
			registerVal10.models.activeTimeRemaining = registerVal14
		else
			local registerVal13 = Engine.StorageGetBuffer(arg2, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
			if registerVal13 and registerVal13.TenthSpecialistContract then
				local registerVal15 = registerVal13.blackjack_contract_count:get()
				registerVal10.models.contractsRemaining = registerVal15
			end
			registerVal14 = Engine.ConsumableGet(arg2, "blackjack", "awarded")
			registerVal15 = Engine.ConsumableGet(arg2, "blackjack", "consumed")
			if 0.000000 >= (registerVal14 - registerVal15) then
			end
			registerVal10.models.isActivated = true
			registerVal10.models.activeTimeRemaining = ((registerVal14 - registerVal15) * 1000.000000)
		end
		registerVal10.models.breadcrumbCount = 0.000000
		registerVal10.properties.customWidgetOverride = CoD.ChooseContractCharacterLoadoutCarouselItem
	end
	if not registerVal10.models.disabled then
		registerVal12 = CoD.CCUtility.CreateCarouselItemLoadoutDatasource(registerVal10, CoD.CCUtility.customizationMode, arg2)
		registerVal10.models.loadoutDatasource = registerVal12
		registerVal12 = CoD.CCUtility.CreateCarouselCardBackDatasource(registerVal10, arg0, CoD.CCUtility.customizationMode, arg2, {}, arg3)
		registerVal10.models.cardBackDatasource = registerVal12
		registerVal12 = CoD.CCUtility.GetTransmissionNewCount(arg2, arg0.bodyIndex, {})
		registerVal10.models.newTransmissions = registerVal12
	end
	return registerVal10
end

function CoD.CCUtility.HeroesListPrepare(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.CreateModel(registerVal2, "autoevents")
	registerVal2 = Engine.CreateModel(registerVal1, "cycled")
	local registerVal3 = Engine.GetHeroList(CoD.CCUtility.customizationMode)
	if CoD.CCUtility.customizationMode == Enum.eModes.MODE_CAMPAIGN then
		local registerVal6 = Engine.GetEquippedGender(arg0, Enum.eModes.MODE_CAMPAIGN)
	end
	registerVal6 = CoD.CCUtility.CompletionEpicComplete(arg0, registerVal3)
	local registerVal8, registerVal9, registerVal10 = ipairs(registerVal3)
	for index11,value12 in registerVal8, registerVal9, registerVal10 do
		if registerVal6 == Enum.CharacterGenderTypes.CHARACTER_GENDER_TYPE_ANY or value12.gender == registerVal6 then
			local registerVal14 = CoDShared.IsLootHero(value12)
			if registerVal14 then
				registerVal14 = AllowLootHero(arg0)
			end
			if not (not false) then
				registerVal14 = CoD.CCUtility.GetHeroModels(value12, index11, arg0, registerVal6)
				local registerVal15 = CoDShared.IsLootHero(value12)
				if registerVal15 then
					table.insert({}, 1.000000, registerVal14)
					registerVal14.shouldIgnoreWhenCounting = true
				else
					table.insert({}, registerVal14)
				end
			end
		end
	end
	registerVal8, registerVal9, registerVal10 = ipairs({})
	for index11,value12 in registerVal8, registerVal9, registerVal10 do
		value12.properties.carouselPos = index11
	end
	registerVal9, registerVal10, registerVal11 = ipairs({})
	for index12,value13 in registerVal9, registerVal10, registerVal11 do
		if not value13.shouldIgnoreWhenCounting then
			registerVal15 = Engine.Localize("MENU_X_OF_Y", 1.000000, (#registerVal14 - (0.000000 + 1.000000)))
			value13.models.count = registerVal15
		end
	end
	return {}
end

registerVal2 = DataSourceHelpers.ListSetup("HeroesList", CoD.CCUtility.HeroesListPrepare, true)
DataSources.HeroesList = registerVal2
function CoD.CCUtility.GenderListPrepare(arg0)
	local registerVal1 = {}
	local registerVal2 = {}
	local registerVal3 = {}
	registerVal3.image = "t7_menu_cp_silhouette_male"
	registerVal3.unfocused_image = "uie_cp_genderselection_male_notinfocus"
	registerVal2.models = registerVal3
	registerVal3 = {}
	registerVal3.gender = Enum.CharacterGenderTypes.CHARACTER_GENDER_TYPE_MALE
	registerVal2.properties = registerVal3
	registerVal3 = {}
	local registerVal4 = {}
	registerVal4.image = "blacktransparent"
	registerVal4.unfocused_image = "blacktransparent"
	registerVal3.models = registerVal4
	registerVal4 = {}
	registerVal4.gender = Enum.CharacterGenderTypes.CHARACTER_GENDER_TYPE_INVALID
	registerVal4.selectIndex = true
	registerVal3.properties = registerVal4
	registerVal4 = {}
	local registerVal5 = {}
	registerVal5.image = "t7_menu_cp_silhouette_female"
	registerVal5.unfocused_image = "uie_cp_genderselection_female_notinfocus"
	registerVal4.models = registerVal5
	registerVal5 = {}
	registerVal5.gender = Enum.CharacterGenderTypes.CHARACTER_GENDER_TYPE_FEMALE
	registerVal4.properties = registerVal5
	registerVal1 = {registerVal2, registerVal3, registerVal4}
	return registerVal1
end

registerVal2 = DataSourceHelpers.ListSetup("GendersList", CoD.CCUtility.GenderListPrepare, true)
DataSources.GendersList = registerVal2
function CoD.CCUtility.HeadListPrepare(arg0)
	local registerVal2 = Engine.GetHeadList(CoD.CCUtility.customizationMode, Engine.GetEquippedGender(arg0, CoD.CCUtility.customizationMode))
	local registerVal4, registerVal5, registerVal6 = ipairs(registerVal2)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		local registerVal11 = {}
		local registerVal12 = {}
		registerVal12.name = value8.displayName
		registerVal12.headExtraCamInfo = ("" .. CoD.CCUtility.customizationMode .. ";" .. value8.headIndex .. ";" .. arg0)
		registerVal11.models = registerVal12
		registerVal12 = {}
		registerVal12.headIndex = value8.headIndex
		registerVal11.properties = registerVal12
		table.insert({}, registerVal11)
	end
	return {}
end

registerVal2 = DataSourceHelpers.ListSetup("HeroFaceButtonList", CoD.CCUtility.HeadListPrepare, true)
DataSources.HeroFaceButtonList = registerVal2
