-- Decompiled with CoDLUIDecompiler by JariK

require("ui.T6.CoD9Button")
CoD.CACUtility = {}
CoD.CACUtility.slotContainerAlpha = 0.035000
CoD.CACUtility.defaultCustomClassCount = 5.000000
CoD.CACUtility.maxAbilities = 7.000000
CoD.CACUtility.maxAbilityWheelItems = 6.000000
CoD.CACUtility.maxContextualAbilityItems = 2.000000
CoD.CACUtility.maxCustomClass = 5.000000
CoD.CACUtility.maxGrenades = 2.000000
CoD.CACUtility.maxGadgets = 2.000000
CoD.CACUtility.maxGadgetsMods = 3.000000
CoD.CACUtility.maxSpecialtySlots = 6.000000
CoD.CACUtility.maxPerks = 12.000000
CoD.CACUtility.maxRewards = 3.000000
CoD.CACUtility.maxRewardSlots = 3.000000
CoD.CACUtility.maxPrimaryAttachments = 6.000000
CoD.CACUtility.maxSecondaryAttachments = 4.000000
CoD.CACUtility.maxAttachments = 2.000000
CoD.CACUtility.maxPerkCategories = 3.000000
CoD.CACUtility.maxPerksInEachCategory = 2.000000
CoD.CACUtility.maxBonusCards = 3.000000
CoD.CACUtility.maxDefaultClass = 5.000000
CoD.CACUtility.maxMTXWeaponPacks = 10.000000
CoD.CACUtility.maxPrimaryGunfighters = 3.000000
CoD.CACUtility.maxSecondaryGunfighters = 1.000000
CoD.CACUtility.maxScorestreaks = 4.000000
CoD.CACUtility.maxWeaponPrestige = 2.000000
local registerVal1 = {}
registerVal1 = {"gmod6", "gmod7"}
CoD.CACUtility.mpPrestigeAttachments = registerVal1
CoD.CACUtility.primaryWeaponPrestigeSlot = ("attachment" .. (CoD.CACUtility.maxPrimaryAttachments + 1.000000))
CoD.CACUtility.secondaryWeaponPrestigeSlot = ("attachment" .. (CoD.CACUtility.maxSecondaryAttachments + 1.000000))
CoD.CACUtility.ButtonGridLockImageSize = 40.000000
CoD.CACUtility.LockImageMaterial = "menu_mp_lobby_locked"
CoD.CACUtility.ButtonGridBigLockImageSize = 64.000000
CoD.CACUtility.ButtonGridNewImageWidth = 64.000000
CoD.CACUtility.ButtonGridNewImageHeight = 32.000000
CoD.CACUtility.ButtonGridNewImageRightAlignWidth = 32.000000
CoD.CACUtility.LockImageBigMaterial = "menu_mp_lobby_locked_big"
CoD.CACUtility.NewImageMaterial = "menu_mp_lobby_new"
CoD.CACUtility.DefaultLoadoutImage = "blacktransparent"
CoD.CACUtility.DefaultClassItemImage = "menu_mp_lobby_none_selected"
CoD.CACUtility.removeSFX = "cac_cmn_item_remove"
CoD.CACUtility.denySFX = "cac_cmn_deny"
CoD.CACUtility.carouselLRSFX = "cac_slide_nav_lr"
CoD.CACUtility.carouselUpSFX = "cac_slide_nav_up"
CoD.CACUtility.carouselDownSFX = "cac_slide_nav_down"
CoD.CACUtility.carouselEquipSFX = "cac_slide_equip_item"
CoD.CACUtility.EquipImageMaterial = "mutually_excl"
CoD.CACUtility.GainFocusSFX = "cac_loadout_nav"
CoD.CACUtility.WildcardGainFocusSFX = "cac_loadout_wildcard_nav"
CoD.CACUtility.classModels = {}
CoD.CACUtility.unlockTokenModel = {}
registerVal1 = {}
registerVal1.primaryWeapon = "primary"
registerVal1.secondaryWeapon = "secondary"
registerVal1.primaryGrenade = "primarygrenade"
registerVal1.specialGrenade = "specialgrenade"
registerVal1.primaryGadget = "primarygadget"
registerVal1.primaryGadgetAttachment1 = "primarygadgetattachment1"
registerVal1.primaryGadgetAttachment2 = "primarygadgetattachment2"
registerVal1.primaryGadgetAttachment3 = "primarygadgetattachment3"
registerVal1.secondaryGadget = "secondarygadget"
registerVal1.primaryAttachment1 = "primaryattachment1"
registerVal1.primaryAttachment2 = "primaryattachment2"
registerVal1.primaryAttachment3 = "primaryattachment3"
registerVal1.primaryAttachment4 = "primaryattachment4"
registerVal1.primaryAttachment5 = "primaryattachment5"
registerVal1.primaryAttachment6 = "primaryattachment6"
registerVal1.secondaryAttachment1 = "secondaryattachment1"
registerVal1.secondaryAttachment2 = "secondaryattachment2"
registerVal1.secondaryAttachment3 = "secondaryattachment3"
registerVal1.secondaryAttachment4 = "secondaryattachment4"
registerVal1.secondaryAttachment5 = "secondaryattachment5"
registerVal1.secondaryAttachment6 = "secondaryattachment6"
registerVal1.specialty1 = "specialty1"
registerVal1.specialty2 = "specialty2"
registerVal1.specialty3 = "specialty3"
registerVal1.specialty4 = "specialty4"
registerVal1.specialty5 = "specialty5"
registerVal1.specialty6 = "specialty6"
registerVal1.bonuscard1 = "bonuscard1"
registerVal1.bonuscard2 = "bonuscard2"
registerVal1.bonuscard3 = "bonuscard3"
registerVal1.reward1 = "killstreak1"
registerVal1.reward2 = "killstreak2"
registerVal1.reward3 = "killstreak3"
registerVal1.heroWeapon = "heroweapon"
registerVal1.cybercore = "cybercore"
registerVal1.cybercomAbility1 = "cybercom_ability1"
registerVal1.cybercomAbility2 = "cybercom_ability2"
registerVal1.cybercomAbility3 = "cybercom_ability3"
registerVal1.cybercomTacRig1 = "cybercom_tacrig1"
registerVal1.cybercomTacRigt2 = "cybercom_tacrig2"
CoD.CACUtility.loadoutSlotNames = registerVal1
registerVal1 = {}
registerVal1 = {"primary", "primaryattachment1", "primaryattachment2", "primaryattachment3", "primaryattachment4", "primaryattachment5", "primaryattachment6", "secondary", "secondaryattachment1", "secondaryattachment2", "secondaryattachment3", "secondaryattachment4", "secondaryattachment5", "secondaryattachment6", "primarygadget", "primarygadgetattachment1", "primarygadgetattachment2", "primarygadgetattachment3", "secondarygadget", "secondarygadgetattachment1", "secondarygadgetattachment2", "secondarygadgetattachment3", "specialgadget", "specialgadgetattachment1", "specialgadgetattachment2", "specialgadgetattachment3", "specialty1", "specialty2", "specialty3", "specialty4", "specialty5", "specialty6", "bonuscard1", "bonuscard2", "bonuscard3", "cybercom_tacrig1", "cybercom_tacrig2"}
CoD.CACUtility.loadoutSlotOrder = registerVal1
registerVal1 = {}
registerVal1 = {"primary", "primarycamo", "primaryreticle", "primaryreticlecolor", "primarylens", "primaryemblem", "primarytag", "primarygunsmithvariant", "primaryattachment1", "primaryattachment2", "primaryattachment3", "primaryattachment4", "primaryattachment5", "primaryattachment6", "primaryattachment1cosmeticvariant", "primaryattachment2cosmeticvariant", "primaryattachment3cosmeticvariant", "primaryattachment4cosmeticvariant", "primaryattachment5cosmeticvariant", "primaryattachment6cosmeticvariant", "secondary", "secondarycamo", "secondaryreticle", "secondaryreticlecolor", "secondarylens", "secondaryemblem", "secondarytag", "secondarygunsmithvariant", "secondaryattachment1", "secondaryattachment2", "secondaryattachment3", "secondaryattachment4", "secondaryattachment5", "secondaryattachment6", "secondaryattachment1cosmeticvariant", "secondaryattachment2cosmeticvariant", "secondaryattachment3cosmeticvariant", "secondaryattachment4cosmeticvariant", "secondaryattachment5cosmeticvariant", "secondaryattachment6cosmeticvariant", "primarygadget", "primarygadgetattachment1", "primarygadgetattachment2", "primarygadgetattachment3", "secondarygadget", "secondarygadgetattachment1", "secondarygadgetattachment2", "secondarygadgetattachment3", "specialgadget", "specialgadgetattachment1"}
registerVal1 = {"specialgadgetattachment2", "specialgadgetattachment3", "specialty1", "specialty2", "specialty3", "specialty4", "specialty5", "specialty6", "bonuscard1", "bonuscard2", "bonuscard3", "cybercom_tacrig1", "cybercom_tacrig2"}
CoD.CACUtility.clearLoadoutSlotOrder = registerVal1
registerVal1 = {}
registerVal1 = {"primary", "primaryattachment1", "primaryattachment2", "primaryattachment3", "primaryattachment4", "primaryattachment5", "primaryattachment6", "secondary", "secondaryattachment1", "secondaryattachment2", "secondaryattachment3", "secondaryattachment4", "primarygadget", "primarygadgetattachment1", "secondarygadget", "secondarygadgetattachment1", "specialty1", "specialty4", "specialty2", "specialty5", "specialty3", "specialty6", "bonuscard1", "bonuscard2", "bonuscard3"}
CoD.CACUtility.overCapacityLoadoutSlotOrder = registerVal1
registerVal1 = {}
registerVal1.primary = "t7_menu_mp_weapons_primary_big"
registerVal1.primaryattachment1 = "t7_menu_mp_weapons_primary_big"
registerVal1.primaryattachment2 = "t7_menu_mp_weapons_primary_big"
registerVal1.primaryattachment3 = "t7_menu_mp_weapons_primary_big"
registerVal1.primaryattachment4 = "t7_menu_mp_weapons_primary_big"
registerVal1.primaryattachment5 = "t7_menu_mp_weapons_primary_big"
registerVal1.primaryattachment6 = "t7_menu_mp_weapons_primary_big"
registerVal1.secondary = "t7_menu_mp_weapons_secondary_big"
registerVal1.secondaryattachment1 = "t7_menu_mp_weapons_secondary_big"
registerVal1.secondaryattachment2 = "t7_menu_mp_weapons_secondary_big"
registerVal1.secondaryattachment3 = "t7_menu_mp_weapons_secondary_big"
registerVal1.secondaryattachment4 = "t7_menu_mp_weapons_secondary_big"
registerVal1.secondaryattachment5 = "t7_menu_mp_weapons_secondary_big"
registerVal1.secondaryattachment6 = "t7_menu_mp_weapons_secondary_big"
registerVal1.primarygadget = "t7_menu_mp_weapons_lethal_big"
registerVal1.primarygadgetattachment1 = "t7_menu_mp_weapons_lethal_big"
registerVal1.secondarygadget = "t7_menu_mp_weapons_tactical_big"
registerVal1.secondarygadgetattachment1 = "t7_menu_mp_weapons_tactical_big"
registerVal1.specialty1 = "t7_menu_mp_weapons_perk1_big"
registerVal1.specialty2 = "t7_menu_mp_weapons_perk2_big"
registerVal1.specialty3 = "t7_menu_mp_weapons_perk3_big"
registerVal1.specialty4 = "t7_menu_mp_weapons_perk1_big"
registerVal1.specialty5 = "t7_menu_mp_weapons_perk2_big"
registerVal1.specialty6 = "t7_menu_mp_weapons_perk3_big"
registerVal1.bonuscard1 = "t7_menu_mp_weapons_wildcard_big"
registerVal1.bonuscard2 = "t7_menu_mp_weapons_wildcard_big"
registerVal1.bonuscard3 = "t7_menu_mp_weapons_wildcard_big"
CoD.CACUtility.emptyImageSlotList = registerVal1
registerVal1 = {}
registerVal1.primary_gunfighter = "bonuscard_primary_gunfighter"
registerVal1.primary_gunfighter_2 = "bonuscard_primary_gunfighter_2"
registerVal1.primary_gunfighter_3 = "bonuscard_primary_gunfighter_3"
registerVal1.secondary_gunfighter = "bonuscard_secondary_gunfighter"
registerVal1.overkill = "bonuscard_overkill"
registerVal1.perk_1_greed = "bonuscard_perk_1_greed"
registerVal1.perk_2_greed = "bonuscard_perk_2_greed"
registerVal1.perk_3_greed = "bonuscard_perk_3_greed"
registerVal1.danger_close = "bonuscard_danger_close"
registerVal1.two_tacticals = "bonuscard_two_tacticals"
CoD.CACUtility.bonuscards = registerVal1
registerVal1 = {}
registerVal1 = {"bonuscard_primary_gunfighter", "bonuscard_primary_gunfighter_2", "bonuscard_primary_gunfighter_3"}
CoD.CACUtility.PrimaryGunfighterWildcards = registerVal1
registerVal1 = {}
registerVal1 = {"melee_knuckles", "melee_butterfly", "melee_wrench", "melee_crowbar", "melee_sword", "melee_bat", "melee_dagger", "melee_bowie", "melee_mace", "melee_fireaxe", "melee_boneglass", "melee_improvise", "melee_shockbaton", "melee_nunchuks", "melee_boxing", "melee_katana", "melee_shovel", "melee_prosthetic", "melee_chainsaw", "melee_crescent"}
CoD.CACUtility.LootMeleeWeapons = registerVal1
registerVal1 = {}
registerVal1.knife_loadout = true
registerVal1.melee_butterfly = true
registerVal1.melee_knuckles = true
registerVal1.melee_wrench = true
registerVal1.pistol_shotgun = true
registerVal1.melee_crowbar = true
registerVal1.melee_sword = true
registerVal1.ar_garand = true
registerVal1.special_crossbow = true
registerVal1.melee_bat = true
registerVal1.melee_bowie = true
registerVal1.melee_dagger = true
registerVal1.smg_mp40 = true
registerVal1.sniper_quickscope = true
registerVal1.melee_mace = true
registerVal1.melee_fireaxe = true
registerVal1.ar_famas = true
registerVal1.launcher_multi = true
registerVal1.melee_boneglass = true
registerVal1.melee_improvise = true
registerVal1.pistol_energy = true
registerVal1.shotgun_energy = true
registerVal1.lmg_infinite = true
registerVal1.sniper_double = true
registerVal1["ar_peacekeeper"] = true
registerVal1.melee_shockbaton = true
registerVal1.melee_nunchuks = true
registerVal1.melee_boxing = true
registerVal1.melee_katana = true
registerVal1.melee_shovel = true
registerVal1["smg_nailgun"] = true
registerVal1["special_discgun"] = true
registerVal1.melee_prosthetic = true
registerVal1.melee_chainsaw = true
registerVal1["ar_pulse"] = true
registerVal1["smg_rechamber"] = true
registerVal1.melee_crescent = true
registerVal1["ar_m16"] = true
registerVal1["smg_ppsh"] = true
registerVal1["ar_galil"] = true
registerVal1["knife_ballistic"] = true
registerVal1["smg_ak74u"] = true
registerVal1["pistol_m1911"] = true
registerVal1["ar_an94"] = true
registerVal1["launcher_ex41"] = true
registerVal1["smg_msmc"] = true
registerVal1["shotgun_olympia"] = true
registerVal1["sniper_xpr50"] = true
registerVal1["smg_sten2"] = true
registerVal1["lmg_rpk"] = true
registerVal1["ar_m14"] = true
registerVal1["sniper_mosin"] = true
CoD.CACUtility.WeaponsWithNoCPCamos = registerVal1
local registerVal2 = {}
registerVal2["bowie_knife"] = true
registerVal2["launcher_standard_df"] = true
CoD.CACUtility["WeaponsWithNoMPCamos"] = registerVal2
registerVal2 = {}
registerVal2["pistol_standard"] = true
registerVal2.knife_loadout = true
registerVal2["launcher_lockonly"] = true
registerVal2["smg_longrange"] = true
registerVal2["ar_fastburst"] = true
registerVal2["sniper_chargeshot"] = true
registerVal2["launcher_standard_df"] = true
registerVal2.melee_knuckles = true
registerVal2.melee_butterfly = true
registerVal2.melee_wrench = true
registerVal2.pistol_shotgun = true
registerVal2.melee_crowbar = true
registerVal2.melee_sword = true
registerVal2.ar_garand = true
registerVal2.special_crossbow = true
registerVal2.melee_bat = true
registerVal2.melee_bowie = true
registerVal2.melee_dagger = true
registerVal2.smg_mp40 = true
registerVal2.sniper_quickscope = true
registerVal2.melee_mace = true
registerVal2.melee_fireaxe = true
registerVal2.ar_famas = true
registerVal2.launcher_multi = true
registerVal2.melee_boneglass = true
registerVal2.melee_improvise = true
registerVal2.pistol_energy = true
registerVal2.shotgun_energy = true
registerVal2.lmg_infinite = true
registerVal2.sniper_double = true
registerVal2["ar_peacekeeper"] = true
registerVal2.melee_shockbaton = true
registerVal2.melee_nunchuks = true
registerVal2.melee_boxing = true
registerVal2.melee_katana = true
registerVal2.melee_shovel = true
registerVal2["smg_nailgun"] = true
registerVal2["special_discgun"] = true
registerVal2.melee_prosthetic = true
registerVal2.melee_chainsaw = true
registerVal2["ar_pulse"] = true
registerVal2["smg_rechamber"] = true
registerVal2.melee_crescent = true
registerVal2["ar_m16"] = true
registerVal2["smg_ppsh"] = true
registerVal2["ar_galil"] = true
registerVal2["knife_ballistic"] = true
registerVal2["smg_ak74u"] = true
registerVal2["pistol_m1911"] = true
registerVal2["ar_an94"] = true
registerVal2["launcher_ex41"] = true
registerVal2["smg_msmc"] = true
registerVal2["shotgun_olympia"] = true
registerVal2["sniper_xpr50"] = true
registerVal2["smg_sten2"] = true
registerVal2["lmg_rpk"] = true
registerVal2["ar_m14"] = true
registerVal2["sniper_mosin"] = true
CoD.CACUtility["WeaponsWithNoZMCamos"] = registerVal2
registerVal2 = {}
local registerVal3 = {}
local registerVal5 = {}
registerVal5.primary = true
registerVal5.secondary = true
registerVal3["filters"] = registerVal5
registerVal3["title"] = "MPUI_WEAPONS_CAPS"
local registerVal4 = {}
local registerVal6 = {}
registerVal6.attachment = true
registerVal4["filters"] = registerVal6
registerVal4["title"] = "MPUI_ATTACHMENTS_CAPS"
registerVal5 = {}
local registerVal7 = {}
registerVal7.primarygadget = true
registerVal7.secondarygadget = true
registerVal5["filters"] = registerVal7
registerVal5["title"] = "MPUI_EQUIPMENT_CAPS"
registerVal6 = {}
local registerVal8 = {}
registerVal8.heroweapon = true
registerVal8["herogadget"] = true
registerVal8.specialgadget = true
registerVal6["filters"] = registerVal8
registerVal6["title"] = "MPUI_HEROES_CAPS"
registerVal7 = {}
local registerVal9 = {}
registerVal9.specialty1 = true
registerVal9.specialty2 = true
registerVal9.specialty3 = true
registerVal7["filters"] = registerVal9
registerVal7["title"] = "MPUI_PERKS_CAPS"
registerVal8 = {}
local registerVal10 = {}
registerVal10.bonuscard1 = true
registerVal10.bonuscard2 = true
registerVal10.bonuscard3 = true
registerVal8["filters"] = registerVal10
registerVal8["title"] = "MENU_WILDCARDS_CAPS"
registerVal9 = {}
local registerVal11 = {}
registerVal11.killstreak1 = true
registerVal11.killstreak2 = true
registerVal11.killstreak3 = true
registerVal9["filters"] = registerVal11
registerVal9["title"] = "MENU_SCORESTREAKS_CAPS"
registerVal2 = {registerVal3, registerVal4, registerVal5, registerVal6, registerVal7, registerVal8, registerVal9}
CoD.CACUtility["PregameLoadoutFilters"] = registerVal2
local function __FUNC_7FB6_(arg0, arg1, arg2)
	for index4=arg1, arg2, 1.000000 do
		table.insert({}, (arg0 .. index4))
	end
	return {}
end

CoD.CACUtility["CreateList"] = __FUNC_7FB6_
local function __FUNC_8044_(arg0, arg1, arg2, arg3)
	for index5=arg2, arg3, 1.000000 do
		table.insert({}, (arg0 .. index5 .. arg1))
	end
	return {}
end

CoD.CACUtility["CreateList2"] = __FUNC_8044_
registerVal2 = {}
registerVal2 = {"primary"}
CoD.CACUtility["PrimaryWeaponSlotNameList"] = registerVal2
registerVal2 = CoD.CACUtility["CreateList"]("primaryattachment", 1.000000, CoD.CACUtility.maxPrimaryAttachments)
CoD.CACUtility["PrimaryAttachmentSlotNameList"] = registerVal2
table["insert"](CoD.CACUtility["PrimaryAttachmentSlotNameList"], ("primary" .. CoD.CACUtility.primaryWeaponPrestigeSlot))
registerVal2 = CoD.CACUtility["CreateList2"]("primaryattachment", "cosmeticvariant", 1.000000, CoD.CACUtility.maxPrimaryAttachments)
CoD.CACUtility["PrimaryAttachmentCVSlotNameList"] = registerVal2
table["insert"](CoD.CACUtility["PrimaryAttachmentCVSlotNameList"], ("primary" .. CoD.CACUtility.primaryWeaponPrestigeSlot .. "cosmeticvariant"))
registerVal2 = {}
registerVal2 = {"secondary"}
CoD.CACUtility["SecondaryWeaponSlotNameList"] = registerVal2
registerVal2 = CoD.CACUtility["CreateList"]("secondaryattachment", 1.000000, CoD.CACUtility.maxSecondaryAttachments)
CoD.CACUtility["SecondaryAttachmentSlotNameList"] = registerVal2
table["insert"](CoD.CACUtility["SecondaryAttachmentSlotNameList"], ("secondary" .. CoD.CACUtility.secondaryWeaponPrestigeSlot))
registerVal2 = CoD.CACUtility["CreateList2"]("secondaryattachment", "cosmeticvariant", 1.000000, CoD.CACUtility.maxSecondaryAttachments)
CoD.CACUtility["SecondaryAttachmentCVSlotNameList"] = registerVal2
table["insert"](CoD.CACUtility["SecondaryAttachmentCVSlotNameList"], ("secondary" .. CoD.CACUtility.secondaryWeaponPrestigeSlot .. "cosmeticvariant"))
registerVal2 = {}
registerVal2 = {"primarygadget"}
CoD.CACUtility["PrimaryGadgetWeaponSlotNameList"] = registerVal2
registerVal2 = CoD.CACUtility["CreateList"]("primarygadgetattachment", 1.000000, CoD.CACUtility.maxGadgetsMods)
CoD.CACUtility["PrimaryGadgetAttachmentSlotNameList"] = registerVal2
registerVal2 = {}
registerVal2 = {"secondarygadget"}
CoD.CACUtility["SecondaryGadgetWeaponSlotNameList"] = registerVal2
registerVal2 = CoD.CACUtility["CreateList"]("secondarygadgetattachment", 1.000000, CoD.CACUtility.maxGadgetsMods)
CoD.CACUtility["SecondaryGadgetAttachmentSlotNameList"] = registerVal2
registerVal2 = {}
registerVal2 = {"specialgadget"}
CoD.CACUtility["SpecialGadgetWeaponSlotNameList"] = registerVal2
registerVal2 = CoD.CACUtility["CreateList"]("specialgadgetattachment", 1.000000, CoD.CACUtility.maxGadgetsMods)
CoD.CACUtility["SpecialGadgetAttachmentSlotNameList"] = registerVal2
registerVal2 = {}
registerVal2 = {"specialty1", "specialty4"}
CoD.CACUtility["Perk1SlotNameList"] = registerVal2
registerVal2 = {}
registerVal2 = {"specialty2", "specialty5"}
CoD.CACUtility["Perk2SlotNameList"] = registerVal2
registerVal2 = {}
registerVal2 = {"specialty3", "specialty6"}
CoD.CACUtility["Perk3SlotNameList"] = registerVal2
registerVal2 = CoD.CACUtility["CreateList"]("specialty", 1.000000, (CoD.CACUtility.maxPerkCategories * CoD.CACUtility.maxPerksInEachCategory))
CoD.CACUtility["CompletePerkSlotNameList"] = registerVal2
registerVal2 = CoD.CACUtility["CreateList"]("bonuscard", 1.000000, CoD.CACUtility.maxBonusCards)
CoD.CACUtility["BonuscardSlotNameList"] = registerVal2
registerVal2 = {}
registerVal2 = {"bonuscard3", "bonuscard1", "bonuscard2"}
CoD.CACUtility["BonuscardSlotNameCACCardList"] = registerVal2
registerVal2 = CoD.CACUtility["CreateList"]("killstreak", 1.000000, CoD.CACUtility.maxRewards)
CoD.CACUtility["KillstreakNameList"] = registerVal2
registerVal2 = {}
registerVal2 = {"cybercore"}
CoD.CACUtility["CybercoreList"] = registerVal2
registerVal2 = {}
registerVal2 = {"cybercom_tacrig1", "cybercom_tacrig2"}
CoD.CACUtility["TacticalRigList"] = registerVal2
registerVal2 = {}
registerVal2 = {CoD.CACUtility["PrimaryWeaponSlotNameList"], CoD.CACUtility["PrimaryAttachmentSlotNameList"], CoD.CACUtility["SecondaryWeaponSlotNameList"], CoD.CACUtility["SecondaryAttachmentSlotNameList"], CoD.CACUtility["PrimaryGadgetWeaponSlotNameList"], CoD.CACUtility["PrimaryGadgetAttachmentSlotNameList"], CoD.CACUtility["SecondaryGadgetWeaponSlotNameList"], CoD.CACUtility["SecondaryGadgetAttachmentSlotNameList"], CoD.CACUtility["SpecialGadgetWeaponSlotNameList"], CoD.CACUtility["SpecialGadgetAttachmentSlotNameList"], CoD.CACUtility["Perk1SlotNameList"], CoD.CACUtility["Perk2SlotNameList"], CoD.CACUtility["Perk3SlotNameList"], CoD.CACUtility["BonuscardSlotNameList"], CoD.CACUtility["KillstreakNameList"], CoD.CACUtility["CybercoreList"], CoD.CACUtility["TacticalRigList"]}
CoD.CACUtility["SlotLists"] = registerVal2
CoD.CACUtility["EmptyItemIndex"] = 0.000000
registerVal2 = {}
registerVal3 = {}
registerVal3["index"] = 1.000000
registerVal3["weapon_category"] = "weapon_smg"
registerVal3["name"] = "MPUI_WEAPON_SMG_CAPS"
registerVal4 = {}
registerVal4["index"] = 2.000000
registerVal4["weapon_category"] = "weapon_assault"
registerVal4["name"] = "MPUI_WEAPON_ASSAULT_CAPS"
registerVal5 = {}
registerVal5["index"] = 3.000000
registerVal5["weapon_category"] = "weapon_cqb"
registerVal5["name"] = "MPUI_WEAPON_CQB_CAPS"
registerVal6 = {}
registerVal6["index"] = 4.000000
registerVal6["weapon_category"] = "weapon_lmg"
registerVal6["name"] = "MPUI_WEAPON_LMG_CAPS"
registerVal7 = {}
registerVal7["index"] = 5.000000
registerVal7["weapon_category"] = "weapon_sniper"
registerVal7["name"] = "MPUI_WEAPON_SNIPER_CAPS"
registerVal2 = {registerVal3, registerVal4, registerVal5, registerVal6, registerVal7}
CoD.CACUtility["PrimaryWeaponGroupNames"] = registerVal2
registerVal2 = {}
registerVal3 = {}
registerVal3["index"] = 6.000000
registerVal3["weapon_category"] = "weapon_pistol"
registerVal3["name"] = "MPUI_WEAPON_PISTOL_CAPS"
registerVal4 = {}
registerVal4["index"] = 7.000000
registerVal4["weapon_category"] = "weapon_launcher"
registerVal4["name"] = "MPUI_WEAPON_LAUNCHER_CAPS"
registerVal5 = {}
registerVal5["index"] = 8.000000
registerVal5["weapon_category"] = "weapon_knife"
registerVal5["name"] = "MPUI_WEAPON_KNIFE_CAPS"
registerVal6 = {}
registerVal6["index"] = 9.000000
registerVal6["weapon_category"] = "weapon_special"
registerVal6["name"] = "MPUI_WEAPON_SPECIAL_CAPS"
registerVal2 = {registerVal3, registerVal4, registerVal5, registerVal6}
CoD.CACUtility["SecondaryWeaponGroupNames"] = registerVal2
registerVal2 = {}
registerVal2[Enum["eWeaponOptionGroup"]["WEAPONOPTION_GROUP_CAMO"]] = "camo"
registerVal2[Enum["eWeaponOptionGroup"]["WEAPONOPTION_GROUP_TAG"]] = "tag"
registerVal2[Enum["eWeaponOptionGroup"]["WEAPONOPTION_GROUP_EMBLEM"]] = "emblem"
registerVal2[Enum["eWeaponOptionGroup"]["WEAPONOPTION_GROUP_PAINTJOB"]] = "paintjob"
registerVal2[Enum["eWeaponOptionGroup"]["WEAPONOPTION_GROUP_RETICLE"]] = "reticle"
registerVal2[Enum["eWeaponOptionGroup"]["WEAPONOPTION_GROUP_LENS"]] = "lens"
registerVal2[Enum["eWeaponOptionGroup"]["WEAPONOPTION_GROUP_RETICLE_COLOR"]] = "reticle_color"
CoD.CACUtility["weaponOptionGroupNames"] = registerVal2
CoD.CACUtility["MulticoreUnlockLevel"] = 20.000000
registerVal2 = {}
registerVal3 = {}
registerVal3["index"] = 0.000000
registerVal3["itemRef"] = "cybercore_control"
registerVal3["name"] = "MENU_CONTROL"
registerVal4 = {}
registerVal4["index"] = 1.000000
registerVal4["itemRef"] = "cybercore_martial"
registerVal4["name"] = "MENU_MARTIAL"
registerVal5 = {}
registerVal5["index"] = 2.000000
registerVal5["itemRef"] = "cybercore_chaos"
registerVal5["name"] = "MENU_CHAOS"
registerVal2 = {registerVal3, registerVal4, registerVal5}
CoD.CACUtility["CybercoreGroupNames"] = registerVal2
registerVal2 = {}
registerVal3 = {}
registerVal3["itemRef"] = "cybercore_control"
registerVal3["side"] = "left"
registerVal3["name"] = "CPUI_CYBERCORE_CONTROL_LBRANCH"
registerVal4 = {}
registerVal4["itemRef"] = "cybercore_control"
registerVal4["side"] = "right"
registerVal4["name"] = "CPUI_CYBERCORE_CONTROL_RBRANCH"
registerVal5 = {}
registerVal5["itemRef"] = "cybercore_martial"
registerVal5["side"] = "left"
registerVal5["name"] = "CPUI_CYBERCORE_MARTIAL_LBRANCH"
registerVal6 = {}
registerVal6["itemRef"] = "cybercore_martial"
registerVal6["side"] = "right"
registerVal6["name"] = "CPUI_CYBERCORE_MARTIAL_RBRANCH"
registerVal7 = {}
registerVal7["itemRef"] = "cybercore_chaos"
registerVal7["side"] = "left"
registerVal7["name"] = "CPUI_CYBERCORE_CHAOS_LBRANCH"
registerVal8 = {}
registerVal8["itemRef"] = "cybercore_chaos"
registerVal8["side"] = "right"
registerVal8["name"] = "CPUI_CYBERCORE_CHAOS_RBRANCH"
registerVal2 = {registerVal3, registerVal4, registerVal5, registerVal6, registerVal7, registerVal8}
CoD.CACUtility["CybercoreGroupBranchHeaders"] = registerVal2
registerVal2 = {}
registerVal2 = {1.000000, 2.000000, 6.000000, 3.000000, 5.000000, 4.000000}
CoD.CACUtility["abilityButtonNumMapping"] = registerVal2
CoD.CACUtility["maxWeaponCustomizationCategories"] = 3.000000
CoD.CACUtility["ATTACHMENT_NONE"] = 1.000000
CoD.CACUtility["ATTACHMENT_ACOG"] = 2.000000
CoD.CACUtility["ATTACHMENT_DAMAGE"] = 3.000000
CoD.CACUtility["ATTACHMENT_DUALOPTIC"] = 4.000000
CoD.CACUtility["ATTACHMENT_DW"] = 5.000000
CoD.CACUtility["ATTACHMENT_FASTADS"] = 6.000000
CoD.CACUtility["ATTACHMENT_GL"] = 7.000000
CoD.CACUtility["ATTACHMENT_GADGET_MOD_0"] = 8.000000
CoD.CACUtility["ATTACHMENT_GADGET_MOD_1"] = 9.000000
CoD.CACUtility["ATTACHMENT_GADGET_MOD_2"] = 10.000000
CoD.CACUtility["ATTACHMENT_GADGET_MOD_3"] = 11.000000
CoD.CACUtility["ATTACHMENT_GADGET_MOD_4"] = 12.000000
CoD.CACUtility["ATTACHMENT_GADGET_MOD_5"] = 13.000000
CoD.CACUtility["ATTACHMENT_GADGET_MOD_6"] = 14.000000
CoD.CACUtility["ATTACHMENT_GADGET_MOD_7"] = 15.000000
CoD.CACUtility["ATTACHMENT_HOLO"] = 16.000000
CoD.CACUtility["ATTACHMENT_IR"] = 17.000000
CoD.CACUtility["ATTACHMENT_IRONSIGHTS"] = 18.000000
CoD.CACUtility["ATTACHMENT_MK"] = 19.000000
CoD.CACUtility["ATTACHMENT_MMS"] = 20.000000
CoD.CACUtility["ATTACHMENT_PRECISION"] = 21.000000
CoD.CACUtility["ATTACHMENT_QUICKDRAW"] = 22.000000
CoD.CACUtility["ATTACHMENT_RANGEFINDER"] = 23.000000
CoD.CACUtility["ATTACHMENT_RECON"] = 24.000000
CoD.CACUtility["ATTACHMENT_REFLEX"] = 25.000000
CoD.CACUtility["ATTACHMENT_STACKFIRE"] = 26.000000
CoD.CACUtility["ATTACHMENT_STEADYAIM"] = 27.000000
CoD.CACUtility["ATTACHMENT_SUPPLY"] = 28.000000
CoD.CACUtility["ATTACHMENT_SUPPRESSED"] = 29.000000
CoD.CACUtility["ATTACHMENT_SWAYREDUC"] = 30.000000
CoD.CACUtility["ATTACHMENT_TACKNIFE"] = 31.000000
CoD.CACUtility["ATTACHMENT_VZOOM"] = 32.000000
CoD.CACUtility["ATTACHMENT_TYPE_COUNT"] = 33.000000
CoD.CACUtility["ATTACHMENT_INVALID"] = 33.000000
registerVal2 = {}
registerVal2 = {"none", "acog", "damage", "dualoptic", "dw", "fastads", "gl", "gmod0", "gmod1", "gmod2", "gmod3", "gmod4", "gmod5", "gmod6", "gmod7", "holo", "ir", "is", "mk", "mms", "precision", "quickdraw", "rangefinder", "recon", "reflex", "stackfire", "steadyaim", "supply", "suppressed", "swayreduc", "tacknife", "vzoom"}
CoD.CACUtility["attachmentReferences"] = registerVal2
registerVal2 = {}
registerVal2["acog"] = true
registerVal2["dualoptic"] = true
registerVal2["ir"] = true
registerVal2["reflex"] = true
CoD.CACUtility["attachmentsWithCustReticle"] = registerVal2
registerVal2 = {}
registerVal2 = {"class_custom_assault", "class_custom_smg", "class_custom_lmg", "class_custom_cqb", "class_custom_sniper"}
CoD.CACUtility["defaultClassNames"] = registerVal2
registerVal2 = {}
registerVal2 = {"class_custom_assault_arena", "class_custom_smg_arena", "class_custom_lmg_arena", "class_custom_cqb_arena", "class_custom_sniper_arena"}
CoD.CACUtility["defaultArenaClassNames"] = registerVal2
registerVal2 = {}
registerVal2 = {"bubblegum", "bubblegum_consumable"}
CoD.CACUtility["BGBBuffGroups"] = registerVal2
CoD.CACUtility["CustomClass_LastClassNum"] = 0.000000
CoD.CACUtility["CustomClass_LastSelection"] = "primary"
CoD.CACUtility["CustomClass_PerClassLastSelection"] = {}
CoD.CACUtility["CACStatusAvailable"] = {}
CoD.CACUtility["CACStatusAvailable"]["NOT_AVAILABLE"] = 1.000000
CoD.CACUtility["CACStatusAvailable"]["REQUIRES_WILDCARD"] = 2.000000
CoD.CACUtility["CACStatusAvailable"]["AVAILABLE"] = 3.000000
local function __FUNC_80D8_(arg0)
	local function __FUNC_8FBA_(arg0, arg1)
		local registerVal2 = LUI.getTableFromPath(arg1, arg0)
		if arg0 and registerVal2 then
			return registerVal2:get()
		end
		return nil
	end

	local function __FUNC_9058_(arg1, arg2)
		local registerVal2 = Engine.GetItemRef(arg1)
		local registerVal3 = Engine.TableLookup(nil, CoD.attachmentTable, Enum.attachmentTableColumn_e.ATTACHMENTTABLE_COLUMN_INDEX, arg2, Enum.attachmentTableColumn_e.ATTACHMENTTABLE_COLUMN_ATTACHPOINT, "camo", Enum.attachmentTableColumn_e.ATTACHMENTTABLE_COLUMN_WEAPONOPTION_FILTER)
		local registerVal4 = CoD.WeaponOptionFilterToString(Enum.WeaponOptionFilter.WEAPONOPTION_FILTER_ZM)
		if registerVal3 == registerVal4 and CoD.CACUtility.WeaponsWithNoZMCamos[registerVal2] then
			return true
		else
			registerVal4 = CoD.WeaponOptionFilterToString(Enum.WeaponOptionFilter.WEAPONOPTION_FILTER_MP)
			if registerVal3 == registerVal4 and CoD.CACUtility.WeaponsWithNoMPCamos[registerVal2] then
				return true
			else
				registerVal4 = CoD.WeaponOptionFilterToString(Enum.WeaponOptionFilter.WEAPONOPTION_FILTER_CP)
				if registerVal3 == registerVal4 and CoD.CACUtility.WeaponsWithNoCPCamos[registerVal2] then
					return true
				else
					registerVal4 = CoD.WeaponOptionFilterToString(Enum.WeaponOptionFilter.WEAPONOPTION_FILTER_BM)
					if registerVal3 == registerVal4 then
						if CoD.BlackMarketUtility.WeaponsWithNoBMCamos[registerVal2] then
							return true
						end
						registerVal4 = Engine.TableLookup(nil, CoD.attachmentTable, Enum.attachmentTableColumn_e.ATTACHMENTTABLE_COLUMN_INDEX, arg2, Enum.attachmentTableColumn_e.ATTACHMENTTABLE_COLUMN_ATTACHPOINT, "camo", Enum.attachmentTableColumn_e.ATTACHMENTTABLE_COLUMN_REFERENCE)
						local registerVal5 = CoD.BlackMarketUtility.IsItemLocked(arg0, (registerVal4 .. ";" .. registerVal2))
						if registerVal5 then
							return true
						end
					end
				end
			end
		end
		return false
	end

	local function __FUNC_9691_(arg1)
		if not arg1 then
			return 
		end
		local registerVal1 = {}
		local registerVal2 = {}
		registerVal2.slotName = "primary"
		registerVal2.attachments = CoD.CACUtility.PrimaryAttachmentSlotNameList
		local registerVal3 = {}
		registerVal3.slotName = "secondary"
		registerVal3.attachments = CoD.CACUtility.SecondaryAttachmentSlotNameList
		registerVal1 = {registerVal2, registerVal3}
		registerVal2, registerVal3, registerVal4 = ipairs(registerVal1)
		for index5,value6 in registerVal2, registerVal3, registerVal4 do
			local registerVal7 = __FUNC_8FBA_(arg1, value6.slotName)
			if registerVal7 and registerVal7 ~= CoD.CACUtility.EmptyItemIndex then
				local registerVal8 = Engine.GetItemRef(registerVal7, Enum.eModes.MODE_MULTIPLAYER)
				if (registerVal8 .. "_mp") == "gadget_heat_wave_mp" then
					arg1[value6.slotName]:set(0.000000)
				end
				local registerVal9, registerVal10, registerVal11 = ipairs(value6.attachments)
				for index12,value13 in registerVal9, registerVal10, registerVal11 do
					local registerVal14 = __FUNC_8FBA_(arg1, value13)
					local registerVal15 = __FUNC_8FBA_(arg1, (value13 .. "cosmeticvariant"))
					if registerVal14 and registerVal14 ~= CoD.CACUtility.EmptyItemIndex and registerVal15 and registerVal15 ~= CoD.CACUtility.EmptyItemIndex then
						local registerVal16 = Engine.GetAttachmentRef(registerVal7, registerVal14, Enum.eModes.MODE_MULTIPLAYER)
						local registerVal18 = Engine.GetAttachmentCosmeticVariantTable(((registerVal8 .. "_mp") .. "+" .. registerVal16))
						local registerVal19 = CoD.BlackMarketUtility.IsItemLocked(arg0, registerVal18[registerVal16].variants[registerVal15].acvName)
						if registerVal18 and registerVal18[registerVal16] and registerVal18[registerVal16].variants and registerVal1 or registerVal19 then
							registerVal19 = LUI.getTableFromPath((value13 .. "cosmeticvariant"), arg1)
							registerVal19:set(CoD.CACUtility.EmptyItemIndex)
						end
					end
				end
				if value6.slotName == "secondary" then
					for index9=4.000000, 8.000000, 1.000000 do
						registerVal14 = __FUNC_8FBA_(arg1, ("secondaryattachment" .. index9))
						registerVal15 = LuaUtils.FindItemInArray(CoD.CACUtility.mpPrestigeAttachments, Engine.GetAttachmentRef(registerVal7, registerVal14, Enum.eModes.MODE_MULTIPLAYER))
						if registerVal14 ~= nil and registerVal14 ~= 0.000000 and not registerVal15 then
							arg1[("secondaryattachment" .. index9)]:set(0.000000)
						end
						registerVal15 = __FUNC_8FBA_(arg1, (("secondaryattachment" .. index9) .. "cosmeticvariant"))
						if registerVal15 ~= nil and registerVal15 ~= 0.000000 then
							arg1[(("secondaryattachment" .. index9) .. "cosmeticvariant")]:set(0.000000)
						end
					end
				end
			end
		end
		registerVal2 = __FUNC_8FBA_(arg1, "primarygadget")
		registerVal3 = Engine.GetItemRef(registerVal2, Enum.eModes.MODE_MULTIPLAYER)
		if CoD.ContractWeaponTiers[registerVal3] then
			arg1.primarygadget:set(0.000000)
		end
		registerVal4 = {}
		local registerVal5 = {}
		registerVal5.slotName = "primaryreticle"
		local registerVal6 = __FUNC_8FBA_(arg1, "primary")
		registerVal5.weaponIndex = registerVal6
		registerVal6 = __FUNC_8FBA_(arg1, "primaryattachment1")
		registerVal5.attachmentIndex = registerVal6
		registerVal6 = {}
		registerVal6.slotName = "secondaryreticle"
		registerVal7 = __FUNC_8FBA_(arg1, "secondary")
		registerVal6.weaponIndex = registerVal7
		registerVal7 = __FUNC_8FBA_(arg1, "secondaryattachment1")
		registerVal6.attachmentIndex = registerVal7
		registerVal4 = {registerVal5, registerVal6}
		registerVal5, registerVal6, registerVal7 = ipairs(registerVal4)
		for index8,value9 in registerVal5, registerVal6, registerVal7 do
			registerVal10 = __FUNC_8FBA_(arg1, value9.slotName)
			registerVal11 = Engine.TableLookup(arg0, CoD.attachmentTable, Enum.attachmentTableColumn_e.ATTACHMENTTABLE_COLUMN_REFERENCE, ("reticle_" .. registerVal10), Enum.attachmentTableColumn_e.ATTACHMENTTABLE_COLUMN_INDEX)
			local registerVal12 = Engine.GetAttachmentRef(value9.weaponIndex, value9.attachmentIndex)
			local registerVal13 = Engine.GetAttachmentIndexByRef(registerVal12)
			registerVal14 = Engine.IsWeaponOptionLockedEntitlement(arg0, registerVal13, registerVal11)
			if registerVal10 and registerVal14 then
				arg1[value9.slotName]:set(0.000000)
			end
		end
		registerVal5 = {}
		registerVal6 = {}
		registerVal6.slotName = "primarycamo"
		registerVal7 = __FUNC_8FBA_(arg1, "primary")
		registerVal6.weaponIndex = registerVal7
		registerVal6.attachmentIndex = CoD.CACUtility.ATTACHMENT_NONE
		registerVal7 = {}
		registerVal7.slotName = "secondarycamo"
		registerVal8 = __FUNC_8FBA_(arg1, "secondary")
		registerVal7.weaponIndex = registerVal8
		registerVal7.attachmentIndex = CoD.CACUtility.ATTACHMENT_NONE
		registerVal5 = {registerVal6, registerVal7}
		registerVal6, registerVal7, registerVal8 = ipairs(registerVal5)
		for index9,value10 in registerVal6, registerVal7, registerVal8 do
			registerVal11 = __FUNC_8FBA_(arg1, value10.slotName)
			if registerVal11 then
				registerVal12 = Engine.IsWeaponOptionLockedEntitlement(arg0, value10.attachmentIndex, registerVal11)
				registerVal12 = __FUNC_9058_(value10.weaponIndex, registerVal11)
				if not registerVal1 or registerVal12 then
					arg1[value10.slotName]:set(0.000000)
				end
			end
		end
		registerVal6 = {}
		registerVal7 = {}
		registerVal7.slotName = "specialty1"
		registerVal7.expectedType = "specialty1"
		registerVal8 = {}
		registerVal8.slotName = "specialty2"
		registerVal8.expectedType = "specialty2"
		registerVal9 = {}
		registerVal9.slotName = "specialty3"
		registerVal9.expectedType = "specialty3"
		registerVal10 = {}
		registerVal10.slotName = "specialty4"
		registerVal10.expectedType = "specialty1"
		registerVal11 = {}
		registerVal11.slotName = "specialty5"
		registerVal11.expectedType = "specialty2"
		registerVal12 = {}
		registerVal12.slotName = "specialty6"
		registerVal12.expectedType = "specialty3"
		registerVal6 = {registerVal7, registerVal8, registerVal9, registerVal10, registerVal11, registerVal12}
		registerVal7, registerVal8, registerVal9 = ipairs(registerVal6)
		for index10,value11 in registerVal7, registerVal8, registerVal9 do
			registerVal12 = __FUNC_8FBA_(arg1, value11.slotName)
			registerVal13 = Engine.GetLoadoutSlotForItem(registerVal12)
			if registerVal12 and registerVal13 ~= value11.expectedType then
				arg1[value11.slotName]:set(0.000000)
			end
		end
	end

	Engine.ExecNow(arg0, "emblemGetProfile")
	ValidateEmblemBackground(arg0, Engine.GetEmblemBackgroundId())
	local registerVal5 = {}
	registerVal5 = {Enum.eModes.MODE_MULTIPLAYER, Enum.eModes.MODE_CAMPAIGN, Enum.eModes.MODE_ZOMBIES}
	local registerVal4, registerVal5, registerVal6 = ipairs(registerVal5)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		local registerVal9 = Engine.GetHeroList(value8)
		for index10=0.000000, (# - 1.000000), 1.000000 do
			local registerVal14 = Engine.GetHeroShowcaseWeaponAttribute(arg0, value8, index10, "camoIndex")
			local registerVal15 = Engine.IsWeaponOptionLockedEntitlement(arg0, CoD.CACUtility.ATTACHMENT_NONE, registerVal14)
			if registerVal15 then
				Engine.SetHeroShowcaseWeaponAttribute(arg0, value8, index10, "camoIndex", 0.000000)
			end
		end
	end
	registerVal4 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_LOADOUTS)
	registerVal5 = {}
	registerVal5 = {"leagueCacLoadouts", "customMatchCacLoadouts", "cacLoadouts"}
	registerVal6, registerVal7, registerVal8 = ipairs(registerVal5)
	for index9,value10 in registerVal6, registerVal7, registerVal8 do
		if registerVal4[value10] then
			for index12=0.000000, 9.000000, 1.000000 do
				__FUNC_9691_(registerVal4[value10].customclass[index12])
			end
		end
	end
	registerVal5 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_CLASS_SETS)
	registerVal6 = {}
	registerVal6 = {"publicMatchClassSets", "customMatchClassSets", "leagueMatchClassSets"}
	registerVal7, registerVal8, registerVal9 = ipairs(registerVal6)
	for index10,value11 in registerVal7, registerVal8, registerVal9 do
		if registerVal5[value11] then
			for index13=0.000000, 9.000000, 1.000000 do
				for index17=0.000000, 9.000000, 1.000000 do
					__FUNC_9691_(registerVal5[value11][index13].customclass[index17])
				end
			end
		end
	end
	registerVal7 = CoD.CraftUtility.GetDDLRoot(arg0, Enum.StorageFileType.STORAGE_GUNSMITH)
	CoD.CraftUtility.Gunsmith.FileType = Enum.StorageFileType.STORAGE_GUNSMITH
	if registerVal7 ~= nil then
		registerVal9 = CoD.CraftUtility.Gunsmith.GetMaxVariantCount(arg0, Enum.StorageFileType.STORAGE_GUNSMITH)
		for index10=0.000000, (registerVal9 - 1.000000), 1.000000 do
			registerVal15 = __FUNC_8FBA_(registerVal7.variant[index10], "reticleIndex")
			local registerVal16 = __FUNC_8FBA_(registerVal7.variant[index10], "attachment.0")
			local registerVal17 = Engine.TableLookup(arg0, CoD.attachmentTable, Enum.attachmentTableColumn_e.ATTACHMENTTABLE_COLUMN_REFERENCE, ("reticle_" .. registerVal15), Enum.attachmentTableColumn_e.ATTACHMENTTABLE_COLUMN_INDEX)
			local registerVal18 = Engine.IsWeaponOptionLockedEntitlement(arg0, registerVal16, registerVal17)
			if registerVal15 and registerVal18 then
				registerVal7.variant[index10].reticleIndex:set(0.000000)
			end
			registerVal17 = __FUNC_8FBA_(registerVal7.variant[index10], "weaponIndex")
			for index18=1.000000, CoD.CACUtility.maxPrimaryAttachments, 1.000000 do
				local registerVal22 = __FUNC_8FBA_(registerVal7.variant[index10], ("attachment." .. index18))
				local registerVal23 = __FUNC_8FBA_(registerVal7.variant[index10], ("attachmentVariant." .. index18))
				if registerVal22 and registerVal22 ~= CoD.CACUtility.EmptyItemIndex and registerVal23 and registerVal23 ~= CoD.CACUtility.EmptyItemIndex then
					local registerVal24 = Engine.GetItemRef(registerVal17)
					local registerVal25 = Engine.GetAttachmentRefByIndex(registerVal22)
					local registerVal27 = Engine.GetAttachmentCosmeticVariantTable(((registerVal24 .. "_mp") .. "+" .. registerVal25))
					local registerVal28 = CoD.BlackMarketUtility.IsItemLocked(arg0, registerVal27[registerVal25].variants[registerVal23].acvName)
					if registerVal27 and registerVal27[registerVal25] and registerVal27[registerVal25].variants and __FUNC_8FBA_ or registerVal28 then
						registerVal7.variant[index10].attachmentVariant[index18]:set(0.000000)
					end
				end
			end
			registerVal18 = CoD.CACUtility.GetLoadoutSlotForGunsmithWeapon(registerVal17)
			if registerVal18 == "secondary" then
				for index18=3.000000, 7.000000, 1.000000 do
					registerVal22 = __FUNC_8FBA_(registerVal7.variant[index10], ("attachment." .. index18))
					if registerVal22 ~= nil and registerVal22 ~= 0.000000 then
						registerVal7.variant[index10].attachment[index18]:set(0.000000)
					end
					registerVal23 = __FUNC_8FBA_(registerVal7.variant[index10], ("attachmentVariant." .. index18))
					if registerVal23 ~= nil and registerVal23 ~= 0.000000 then
						registerVal7.variant[index10].attachmentVariant[index18]:set(0.000000)
					end
				end
			end
			registerVal18 = __FUNC_8FBA_(registerVal7.variant[index10], "camoIndex")
			if registerVal18 then
				local registerVal19 = Engine.IsWeaponOptionLockedEntitlement(arg0, CoD.CACUtility.ATTACHMENT_NONE, registerVal18)
				registerVal19 = __FUNC_9058_(registerVal17, registerVal18)
				if not __FUNC_8FBA_ or registerVal19 then
					registerVal7.variant[index10].camoIndex:set(0.000000)
				end
			end
		end
	end
	if true then
		CoD.CraftUtility.UploadBuffer(arg0, Enum.StorageFileType.STORAGE_GUNSMITH)
	end
end

CoD.CACUtility["ValidateMPClasses"] = __FUNC_80D8_
local function __FUNC_A4CB_(arg0)
	local function __FUNC_A6AF_(arg1, arg2)
		local registerVal4, registerVal5, registerVal6 = ipairs(arg1)
		for index7,value8 in registerVal4, registerVal5, registerVal6 do
			local registerVal9 = Engine.TableLookupGetColumnValueForRow(CoD.BlackMarketUtility.lootTableName, value8, 0.000000)
			local registerVal10 = CoD.CACUtility.GetMPItemIndexForItemRefString(registerVal9)
			if registerVal10 ~= nil and registerVal10 ~= "" then
				local registerVal11 = CoD.BlackMarketUtility.GetItemQuantity(arg0, registerVal9)
				if registerVal11 == 0.000000 then
					local registerVal13 = LUI.getTableFromPath(("itemstats." .. registerVal10 .. ".purchased"), arg2)
					local registerVal14 = registerVal13:get()
					registerVal13:set(0.000000)
					registerVal13 = LUI.getTableFromPath(("itemstats." .. registerVal10 .. ".purchased"), arg2)
					registerVal14 = registerVal13:get()
					if registerVal13 and registerVal14 ~= 0.000000 and registerVal13 and registerVal14 == 0.000000 then
						registerVal13:set(1.000000)
					end
				end
			end
		end
		return true
	end

	local registerVal2 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	local registerVal5 = CoD.BlackMarketUtility.GetLootTypeRows("melee_weapon")
	local registerVal4 = __FUNC_A6AF_(registerVal5, registerVal2)
	registerVal5 = CoD.BlackMarketUtility.GetLootTypeRows("weapon")
	registerVal4 = __FUNC_A6AF_(registerVal5, registerVal2)
	if registerVal2 and (registerVal4 or registerVal5) then
		UploadStats(nil, arg0)
	end
end

CoD.CACUtility["ValidateMPLootWeapons"] = __FUNC_A4CB_
local function __FUNC_A990_(arg0)
	for index1=0.000000, 9.000000, 1.000000 do
		for index5=0.000000, 4.000000, 1.000000 do
			local registerVal9 = Engine.GetBubbleGumBuff(arg0, index1, index5)
			local registerVal10 = CoD.CACUtility.GetDLCIdForBubbleGum(registerVal9)
			local registerVal11 = Engine.HasEntitlementByOwnership(arg0, registerVal10)
			if registerVal10 and registerVal10 ~= "" and not registerVal11 then
				Engine.Exec(arg0, ("resetBubbleGumPackOnline " .. index1 .. " MENU_BGB_PACK_" .. (index1 + 1.000000)))
			else
			end
		end
	end
end

CoD.CACUtility["ValidateZMBGBEntitlement"] = __FUNC_A990_
local function __FUNC_AB80_(arg0)
	return Engine.TableLookup(nil, "gamedata/stats/zm/zm_statsTable.csv", 0.000000, arg0, 15.000000)
end

CoD.CACUtility["GetDLCIdForBubbleGum"] = __FUNC_AB80_
local function __FUNC_AC3C_(arg0)
	return Engine.TableLookup(nil, "gamedata/stats/mp/mp_statsTable.csv", 0.000000, arg0, 13.000000)
end

CoD.CACUtility["GetLoadoutSlotForGunsmithWeapon"] = __FUNC_AC3C_
registerVal2 = {}
registerVal2["menuName"] = "SystemOverlay_Full"
registerVal2["frameWidget"] = "CoD.systemOverlay_UnlockFrame"
registerVal4 = Engine["Localize"]("MPUI_CONFIRM_PURCHASE_CAPS")
registerVal2["title"] = registerVal4
local function __FUNC_ACF8_(arg0, arg1, arg2, arg3)
	if arg1 or not "CPUI_UNLOCK_ITEM" then
	end
	if arg2 then
		local registerVal7 = Engine.GetItemName(arg1)
		return Engine.Localize("MPUI_UNLOCK_ITEM", (registerVal7 .. "_UPGRADED"))
	end
	Engine.GetItemName(arg1)
	return Engine.Localize("MPUI_UNLOCK_ITEM", Engine.GetItemName)
end

registerVal2["description"] = __FUNC_ACF8_
local function __FUNC_AE63_(arg0, arg1, arg2, arg3)
	Engine.GetItemName(arg1)
	return Engine.Localize(Engine.GetItemName)
end

registerVal2["supportText"] = __FUNC_AE63_
local function __FUNC_AEF3_(arg0, arg1, arg2, arg3)
	if CoD.perController[arg0].weaponCategory == "specialist" then
		return Engine.GetItemImage(arg1, CoD.CCUtility.customizationMode)
	else
		local registerVal6 = LUI.startswith(CoD.perController[arg0].weaponCategory, "killstreak")
		if CoD.perController[arg0].weaponCategory and registerVal6 then
		else
			registerVal6 = LUI.startswith(CoD.perController[arg0].weaponCategory, "specialty")
			if arg1 or not registerVal6 then
				if CoD.perController[arg0].weaponCategory == "primarygadget" or CoD.perController[arg0].weaponCategory == "secondarygadget" then
				end
			else
				registerVal6 = LUI.startswith(CoD.perController[arg0].weaponCategory, "cybercom_ability")
				if CoD.perController[arg0].weaponCategory and registerVal6 then
				end
			end
		end
	end
	registerVal6 = Engine.GetItemImage(arg1)
	return (registerVal6 .. "_LR_tu1")
end

registerVal2["image"] = __FUNC_AEF3_
registerVal2["categoryType"] = CoD["OverlayUtility"]["OverlayTypes"]["Unlock"]
local function __FUNC_B1CC_(arg0, arg1, arg2, arg3)
	local function __FUNC_B294_(arg0)
		if not CoD.perController[arg0].isInCybercoreUpgrade then
		end
		local function __FUNC_B946_(arg0, arg3)
			local registerVal2 = {}
			local registerVal3 = {}
			registerVal3.displayText = arg0
			registerVal3.itemIndex = arg1
			registerVal3.upgradeItemIndex = arg2
			registerVal2.models = registerVal3
			registerVal3 = {}
			registerVal3.action = arg3
			registerVal2.properties = registerVal3
			return registerVal2
		end

		local function __FUNC_BA16_(arg0, arg1, arg2, arg3, arg4)
			UnlockItem(arg4, arg1, arg2)
			local registerVal5 = GoBackAndUpdateStateOnPreviousMenu(arg4, arg2)
			if CoD.perController[arg0].weaponCategory == "specialist" and registerVal5.characterCarousel then
				local registerVal8 = {}
				registerVal8.name = "update_state"
				registerVal8.controller = arg2
				registerVal5.characterCarousel.activeWidget:processEvent(registerVal8)
			end
			if false then
				UpdateCybercoreTree(registerVal5, registerVal5, arg2)
			end
		end

		local function __FUNC_BBC0_(arg0, arg1, arg2, arg3, arg4)
			UnlockItem(arg4, arg1, arg2)
			if arg4.acceptData.variantInfoElement then
				local registerVal6 = GoBack(arg4, arg2)
				SetWeaponVariant(registerVal6, arg4.acceptData.variantInfoElement, arg2)
			end
		end

		local function __FUNC_BCB2_(arg0, arg1, arg2, arg3, arg4)
			local registerVal6 = UnlockAndEquipItem(arg4, arg1, arg2)
			if CoD.perController[arg2].weaponCategory == "specialist" then
				local registerVal7 = GoBack(arg4, arg2)
				SendClientScriptMenuChangeNotify(arg2, registerVal7, false)
				GoBack(registerVal7, arg2)
			else
				if registerVal6 then
					GoBackToCustomClassMenu(registerVal6, arg2)
				else
					registerVal7 = GoBack(arg4, arg2)
					local registerVal10 = {}
					registerVal10.name = "update_state"
					registerVal10.menu = registerVal7
					registerVal7:processEvent(registerVal10)
				end
			end
		end

		local function __FUNC_BEA7_(arg0, arg2, arg3, arg4, arg5)
			local registerVal6 = CoD.CCUtility.GetHeroEquippedSlot(arg3, arg1)
			local registerVal7 = GoBack(arg5, arg3)
			if registerVal6 then
				arg2.itemIndex = arg1
				if not arg4 then
				end
				{}.previousMenu = registerVal7
				UnlockAndEquipHeroForMPFirstTimeSetup(arg0, arg2, arg3, {}, arg5)
			end
			GoBackToMenu(registerVal7, arg3, "Lobby")
		end

		local function __FUNC_C079_(arg0, arg1, arg2, arg3, arg4)
			PermanentlyUnlockItem(arg4, arg1, arg2)
			local registerVal5 = GoBackAndUpdateStateOnPreviousMenu(arg4, arg2)
		end

		local function __FUNC_C113_(arg0, arg1, arg2, arg3, arg4)
			GoBack(arg4, arg2)
		end

		local registerVal12 = IsFirstTimeSetup(arg0, Enum.eModes.MODE_MULTIPLAYER)
		if CoD.CCUtility.customizationMode == Enum.eModes.MODE_MULTIPLAYER and registerVal12 then
			table.insert({}, __FUNC_B946_("MENU_UNLOCK_AND_EQUIP", __FUNC_BEA7_))
		else
			if false then
				table.insert({}, __FUNC_B946_("MENU_UNLOCK", __FUNC_BA16_))
				table.insert({}, __FUNC_B946_("MENU_CANCEL_UNLOCK", __FUNC_C113_))
			else
				if arg2 ~= nil then
					local registerVal13 = CoD.CACUtility.GetSlotListWithSlot(CoD.perController[arg0].weaponCategory)
					local registerVal14, registerVal15, registerVal16 = ipairs(registerVal13)
					for index17,value18 in registerVal14, registerVal15, registerVal16 do
						local registerVal19 = CoD.CACUtility.GetItemEquippedInSlot(value18, arg0)
						if registerVal19 == arg1 then
						end
					end
					if true then
						table.insert({}, __FUNC_B946_("MENU_UNLOCK", __FUNC_BCB2_))
					else
						table.insert({}, __FUNC_B946_("MENU_UNLOCK", __FUNC_BA16_))
						table.insert({}, __FUNC_B946_("MENU_UNLOCK_AND_EQUIP", __FUNC_BCB2_))
					end
					table.insert({}, __FUNC_B946_("MENU_CANCEL_UNLOCK", __FUNC_C113_))
				else
					if arg3 then
						table.insert({}, __FUNC_B946_("MENU_UNLOCK_AND_EQUIP", __FUNC_BBC0_))
						table.insert({}, __FUNC_B946_("MENU_CANCEL_UNLOCK", __FUNC_C113_))
					else
						registerVal12 = HavePermanentUnlockTokens(arg0)
						if CoD.CCUtility.customizationMode == Enum.eModes.MODE_MULTIPLAYER and registerVal12 then
							table.insert({}, __FUNC_B946_("MENU_UNLOCK", __FUNC_BA16_))
							table.insert({}, __FUNC_B946_("MENU_UNLOCK_AND_EQUIP", __FUNC_BCB2_))
							table.insert({}, __FUNC_B946_("MENU_PERMANENTLY_UNLOCK", __FUNC_C079_, false))
							table.insert({}, __FUNC_B946_("MENU_CANCEL_UNLOCK", __FUNC_C113_))
						else
							table.insert({}, __FUNC_B946_("MENU_UNLOCK", __FUNC_BA16_))
							table.insert({}, __FUNC_B946_("MENU_UNLOCK_AND_EQUIP", __FUNC_BCB2_))
							table.insert({}, __FUNC_B946_("MENU_CANCEL_UNLOCK", __FUNC_C113_))
						end
					end
				end
			end
		end
		return {}
	end

	local registerVal5 = DataSourceHelpers.ListSetup("UnlockTokenMenuList", __FUNC_B294_, true)
	DataSources.UnlockTokenMenuList = registerVal5
	return "UnlockTokenMenuList"
end

registerVal2["listDatasource"] = __FUNC_B1CC_
registerVal2[CoD["OverlayUtility"]["GoBackPropertyName"]] = CoD["OverlayUtility"]["DefaultGoBack"]
CoD["OverlayUtility"]["AddSystemOverlay"]("UnlockClassItem", registerVal2)
registerVal2 = {}
registerVal2["menuName"] = "SystemOverlay_Full"
registerVal2["frameWidget"] = "CoD.systemOverlay_Full_BasicFrame_Prestige"
local function __FUNC_C15C_(arg0, arg1)
	local registerVal5 = CoD.CACUtility.GetWeaponPLevel(arg0, Engine.GetModelValue(arg1))
	Engine.Localize("MENU_ENTER_WEAPON_PRESTIGE_X", (registerVal5 + 1.000000))
	return Engine.ToUpper(Engine.Localize)
end

registerVal2["title"] = __FUNC_C15C_
local function __FUNC_C2A7_(arg0, arg1)
	local registerVal4 = CoD.CACUtility.GetWeaponPLevel(arg0, Engine.GetModelValue(arg1))
	Engine.GetItemName(Engine.GetModelValue(arg1))
	return Engine.Localize(("MENU_WEAPON_PRESTIGE_MESSAGE_" .. (registerVal4 + 1.000000)), Engine.GetItemName)
end

registerVal2["description"] = __FUNC_C2A7_
local function __FUNC_C410_(arg0, arg1)
	Engine.GetItemName(Engine.GetModelValue(arg1))
	return Engine.Localize(Engine.GetItemName)
end

registerVal2["supportText"] = __FUNC_C410_
local function __FUNC_C4CE_(arg0, arg1)
	Engine.GetModelValue(arg1)
	return Engine.GetItemImage(Engine.GetModelValue)
end

registerVal2["image"] = __FUNC_C4CE_
registerVal2["categoryType"] = CoD["OverlayUtility"]["OverlayTypes"]["Unlock"]
local function __FUNC_C565_(arg0, arg1)
	local function __FUNC_C62A_(arg0)
		local function __FUNC_C76A_(arg0, arg1)
			local registerVal2 = {}
			local registerVal3 = {}
			registerVal3.displayText = arg0
			registerVal2.models = registerVal3
			registerVal3 = {}
			registerVal3.action = arg1
			registerVal2.properties = registerVal3
			return registerVal2
		end

		local function __FUNC_C7FD_(arg0, arg2, arg3, arg4, arg5)
			local registerVal5 = Engine.GetCustomClassCount(arg3)
			local registerVal7 = Engine.GetModelForController(arg3)
			local registerVal6 = Engine.GetModel(registerVal7, "CustomClassList")
			registerVal7 = Engine.GetModelValue(arg1)
			for index8=1.000000, registerVal5, 1.000000 do
				local registerVal13 = Engine.GetModel(registerVal6, ("class" .. index8))
				local registerVal14 = CoD.SafeGetModelValue(registerVal13, "primary.itemIndex")
				if registerVal14 == registerVal7 then
					for index14=1.000000, CoD.CACUtility.maxPrimaryAttachments, 1.000000 do
						Engine.SetClassItem(arg3, (index8 - 1.000000), ("primaryattachment" .. index14), CoD.CACUtility.EmptyItemIndex)
					end
				end
				registerVal14 = CoD.SafeGetModelValue(registerVal13, "secondary.itemIndex")
				if registerVal14 == registerVal7 then
					for index14=1.000000, CoD.CACUtility.maxSecondaryAttachments, 1.000000 do
						Engine.SetClassItem(arg3, (index8 - 1.000000), ("secondaryattachment" .. index14), CoD.CACUtility.EmptyItemIndex)
					end
				end
			end
			local registerVal8 = Engine.GetNumberOfClassSetsOwned(arg3)
			for index9=1.000000, registerVal8, 1.000000 do
				for index14=1.000000, registerVal5, 1.000000 do
					local registerVal19 = Engine.GetClassSetItem(arg3, (index9 - 1.000000), (index14 - 1.000000), "primary")
					local registerVal20 = Engine.GetClassSetItem(arg3, (index9 - 1.000000), (index14 - 1.000000), "secondary")
					if registerVal19 == registerVal7 then
						for index21=1.000000, CoD.CACUtility.maxPrimaryAttachments, 1.000000 do
							Engine.SetClassSetItem(arg3, (index9 - 1.000000), (index14 - 1.000000), ("primaryattachment" .. index21), CoD.CACUtility.EmptyItemIndex)
						end
					end
					if registerVal20 == registerVal7 then
						for index21=1.000000, CoD.CACUtility.maxPrimaryAttachments, 1.000000 do
							Engine.SetClassSetItem(arg3, (index9 - 1.000000), (index14 - 1.000000), ("secondaryattachment" .. index21), CoD.CACUtility.EmptyItemIndex)
						end
					end
				end
			end
			local registerVal9 = Engine.GetPlayerStats(arg3)
			local registerVal10 = Engine.GetModelValue(arg1)
			registerVal9.itemstats[registerVal10].xp:set(0.000000)
			registerVal13 = registerVal9.itemstats[registerVal10].pLevel:get()
			registerVal9.itemstats[registerVal10].pLevel:set(math.min((registerVal13 + 1.000000), CoD.CACUtility.maxWeaponPrestige))
			UploadStats(arg5, arg3)
			SaveLoadout(arg5, arg3)
			Engine.ForceModelSubscriptions(arg1)
			GoBack(arg5, arg3)
		end

		table.insert({}, __FUNC_C76A_("MENU_ENTER_WEAPON_PRESTIGE", __FUNC_C7FD_))
		table.insert({}, __FUNC_C76A_("MENU_CANCEL", CoD.OverlayUtility.DefaultButtonAction))
		return {}
	end

	local registerVal3 = DataSourceHelpers.ListSetup("PrestigeWeaponOptionsList", __FUNC_C62A_, true)
	DataSources.PrestigeWeaponOptionsList = registerVal3
	return "PrestigeWeaponOptionsList"
end

registerVal2["listDatasource"] = __FUNC_C565_
registerVal2[CoD["OverlayUtility"]["GoBackPropertyName"]] = CoD["OverlayUtility"]["DefaultGoBack"]
CoD["OverlayUtility"]["AddSystemOverlay"]("PrestigeWeapon", registerVal2)
local function __FUNC_CFAA_(arg0, arg1)
	local registerVal4, registerVal5, registerVal6 = string.gmatch(arg0, "[^+]+")
	if  == "suppressed" then
	else
		if  == "extbarrel" then
		end
	end
	if arg1 ~= nil and arg1 then
	end
	if 1.000000 == 1.000000 then
		if 1.000000 == 1.000000 then
		else
		else
			if 1.000000 == 1.000000 then
			else
			end
		end
	end
	return ("gunsmith" .. "01")
end

CoD.CACUtility["GetCameraNameForAttachments"] = __FUNC_CFAA_
local function __FUNC_D161_(arg0)
	return Engine.TableLookup(nil, CoD.statsTable, 0.000000, arg0, 6.000000)
end

CoD.CACUtility["GetImageForItemRef"] = __FUNC_D161_
local function __FUNC_D218_(arg0)
	return Engine.TableLookup(nil, CoD.statsTable, 0.000000, arg0, 3.000000)
end

CoD.CACUtility["GetNameForItemRef"] = __FUNC_D218_
local function __FUNC_D2D0_(arg0)
	return Engine.TableLookup(nil, CoD.statsTable, 0.000000, arg0, 4.000000)
end

CoD.CACUtility["GetIdForItemRef"] = __FUNC_D2D0_
local function __FUNC_D388_(arg0)
	return Engine.TableLookup(nil, CoD.statsTable, 6.000000, arg0, 3.000000)
end

CoD.CACUtility["GetNameForStatsTableImage"] = __FUNC_D388_
local function __FUNC_D444_(arg0)
	return Engine.TableLookup(nil, CoD.statsTable, 4.000000, arg0, 6.000000)
end

CoD.CACUtility["GetImageForItemRefString"] = __FUNC_D444_
local function __FUNC_D500_(arg0)
	return Engine.TableLookup(nil, CoD.statsTable, 4.000000, arg0, 3.000000)
end

CoD.CACUtility["GetNameForItemRefString"] = __FUNC_D500_
local function __FUNC_D5BC_(arg0)
	return Engine.TableLookup(nil, CoD.statsTable, 4.000000, arg0, 0.000000)
end

CoD.CACUtility["GetItemIndexForItemRefString"] = __FUNC_D5BC_
local function __FUNC_D678_(arg0)
	return Engine.TableLookup(nil, "gamedata/stats/mp/mp_statsTable.csv", 4.000000, arg0, 0.000000)
end

CoD.CACUtility["GetMPItemIndexForItemRefString"] = __FUNC_D678_
local function __FUNC_D738_(arg0, arg1)
	local registerVal2 = CoD.GetCombatRecordStats(arg0)
	local registerVal3 = CoD.GetCombatRecordStatForPath(registerVal2, arg1)
	if registerVal3 then
		return registerVal3
	end
	return ""
end

CoD.CACUtility["CombatRecordGetFullNameStat"] = __FUNC_D738_
local function __FUNC_D805_(arg0, arg1)
	local registerVal2, registerVal3, registerVal4 = ipairs(arg0)
	if  == arg1 then
		return true
	end
	return false
end

CoD.CACUtility["IsSlotNameInList"] = __FUNC_D805_
local function __FUNC_D870_(arg0)
	local registerVal1, registerVal2, registerVal3 = ipairs(CoD.CACUtility.SlotLists)
	for index4,value5 in registerVal1, registerVal2, registerVal3 do
		local registerVal6 = CoD.CACUtility.IsSlotNameInList(value5, arg0)
		if registerVal6 then
			return value5
		end
	end
	return {}
end

CoD.CACUtility["GetSlotListWithSlot"] = __FUNC_D870_
local function __FUNC_D966_(arg0)
	local registerVal1 = CoD.CACUtility.IsSlotNameInList(CoD.CACUtility.SecondaryAttachmentSlotNameList, arg0)
	if registerVal1 then
		return CoD.CACUtility.loadoutSlotNames.secondaryWeapon
	end
	return CoD.CACUtility.loadoutSlotNames.primaryWeapon
end

CoD.CACUtility["GetWeaponSlotForAttachmentSlot"] = __FUNC_D966_
local function __FUNC_DADE_(arg0)
	local registerVal1 = LUI.startswith(arg0, "primarygadget")
	if registerVal1 then
		return CoD.CACUtility.PrimaryGadgetAttachmentSlotNameList
	else
		registerVal1 = LUI.startswith(arg0, "secondarygadget")
		if registerVal1 then
			return CoD.CACUtility.SecondaryGadgetAttachmentSlotNameList
		else
			registerVal1 = LUI.startswith(arg0, "primary")
			if registerVal1 then
				return CoD.CACUtility.PrimaryAttachmentSlotNameList
			else
				registerVal1 = LUI.startswith(arg0, "secondary")
				if registerVal1 then
					return CoD.CACUtility.SecondaryAttachmentSlotNameList
				end
			end
		end
	end
	return {}
end

CoD.CACUtility["GetAttachmentListForSlot"] = __FUNC_DADE_
local function __FUNC_DD6E_(arg0)
	if arg0 == "primary" then
		return CoD.CACUtility.PrimaryAttachmentCVSlotNameList
	else
		if arg0 == "secondary" then
			return CoD.CACUtility.SecondaryAttachmentCVSlotNameList
		end
	end
	return {}
end

CoD.CACUtility["GetCACWeaponACVList"] = __FUNC_DD6E_
local function __FUNC_DE8D_(arg0)
	local registerVal1 = CoD.SumClassItemCosts(arg0.primaryWeapon)
	local registerVal2 = CoD.SumClassItemCosts(arg0.primaryAttachments)
	registerVal2 = CoD.SumClassItemCosts(arg0.secondaryWeapon)
	registerVal2 = CoD.SumClassItemCosts(arg0.secondaryAttachments)
	registerVal2 = CoD.SumClassItemCosts(arg0.grenades)
	registerVal2 = CoD.SumClassItemCosts(arg0.gadgets)
	registerVal2 = CoD.SumClassItemCosts(arg0.perks)
	registerVal2 = CoD.SumClassItemCosts(arg0.rewards)
	return (((((((registerVal1 + registerVal2) + registerVal2) + registerVal2) + registerVal2) + registerVal2) + registerVal2) + registerVal2)
end

CoD.CACUtility["GetAllocationSpentFromClassData"] = __FUNC_DE8D_
local function __FUNC_E0AD_(arg0, arg1)
	local registerVal2 = CoD.HowManyInClassSlot(arg0, arg1.primaryWeapon)
	local registerVal3 = CoD.HowManyInClassSlot(arg0, arg1.secondaryWeapon)
	registerVal3 = CoD.HowManyInClassSlot(arg0, arg1.grenades)
	registerVal3 = CoD.HowManyInClassSlot(arg0, arg1.gadgets)
	registerVal3 = CoD.HowManyInClassSlot(arg0, arg1.perks)
	registerVal3 = CoD.HowManyInClassSlot(arg0, arg1.rewards)
	return (((((registerVal2 + registerVal3) + registerVal3) + registerVal3) + registerVal3) + registerVal3)
end

CoD.CACUtility["HowManyInClassData"] = __FUNC_E0AD_
local function __FUNC_E264_(arg0, arg1)
	if arg1 == nil then
	end
	{}.primaryWeapon = {}
	CoD.AddClassItemData({}.primaryWeapon, CoD.GetClassItem(arg0, CoD.perController[arg0].classNumInternal, CoD.CACUtility.loadoutSlotNames.primaryWeapon))
	{}.secondaryWeapon = {}
	CoD.AddClassItemData({}.secondaryWeapon, CoD.GetClassItem(arg0, CoD.perController[arg0].classNumInternal, CoD.CACUtility.loadoutSlotNames.secondaryWeapon))
	{}.primaryAttachments = {}
	{}.secondaryAttachments = {}
	local registerVal4 = CoD.GetClassItem(arg0, CoD.perController[arg0].classNumInternal, CoD.CACUtility.loadoutSlotNames.primaryWeapon)
	local registerVal5 = CoD.GetClassItem(arg0, CoD.perController[arg0].classNumInternal, CoD.CACUtility.loadoutSlotNames.secondaryWeapon)
	for index6=0.000000, 2.000000, 1.000000 do
		CoD.AddClassAttachmentData({}.primaryAttachments, registerVal4, CoD.GetClassItem(arg0, CoD.perController[arg0].classNumInternal, (CoD.CACUtility.loadoutSlotNames.primaryWeapon .. "attachment" .. (index6 + 1.000000))))
		CoD.AddClassAttachmentData({}.secondaryAttachments, registerVal5, CoD.GetClassItem(arg0, CoD.perController[arg0].classNumInternal, (CoD.CACUtility.loadoutSlotNames.secondaryWeapon .. "attachment" .. (index6 + 1.000000))))
	end
	{}.grenades = {}
	local registerVal8 = CoD.GetClassItem(arg0, CoD.perController[arg0].classNumInternal, CoD.CACUtility.loadoutSlotNames.primaryGrenade)
	local registerVal9 = CoD.GetClassItem(arg0, CoD.perController[arg0].classNumInternal, "primarygrenadecount")
	CoD.AddClassItemData({}.grenades, registerVal8, registerVal9, CoD.CACUtility.loadoutSlotNames.primaryGrenade)
	registerVal8 = CoD.GetClassItem(arg0, CoD.perController[arg0].classNumInternal, CoD.CACUtility.loadoutSlotNames.specialGrenade)
	registerVal9 = CoD.GetClassItem(arg0, CoD.perController[arg0].classNumInternal, "specialgrenadecount")
	CoD.AddClassItemData({}.grenades, registerVal8, registerVal9, CoD.CACUtility.loadoutSlotNames.specialGrenade)
	{}.gadgets = {}
	CoD.AddClassItemData({}.gadgets, CoD.GetClassItem(arg0, CoD.perController[arg0].classNumInternal, CoD.CACUtility.loadoutSlotNames.primaryGadget))
	CoD.AddClassItemData({}.gadgets, CoD.GetClassItem(arg0, CoD.perController[arg0].classNumInternal, CoD.CACUtility.loadoutSlotNames.secondaryGadget))
	{}.perks = {}
	for index7=1.000000, CoD.CACUtility.maxSpecialtySlots, 1.000000 do
		CoD.AddClassItemData({}.perks, CoD.GetClassItem(arg0, CoD.perController[arg0].classNumInternal, CoD.CACUtility.loadoutSlotNames[("specialty" .. index7)]))
	end
	{}.rewards = {}
	for index8=1.000000, CoD.CACUtility.maxRewards, 1.000000 do
		CoD.AddClassItemData({}.rewards, CoD.GetClassItem(arg0, CoD.perController[arg0].classNumInternal, ("killstreak" .. index8)))
	end
	local function __FUNC_E9FA_(arg0, arg1)
		if arg0.momentumCost >= arg1.momentumCost then
		end
		return true
	end

	table.sort({}.rewards, __FUNC_E9FA_)
	return {}
end

CoD.CACUtility["GetClassData"] = __FUNC_E264_
local function __FUNC_EA66_(arg0)
	local registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_LOADOUTS_OFFLINE)
	return registerVal1.cacLoadouts
end

CoD.CACUtility["GetLoadoutsMPOffline"] = __FUNC_EA66_
local function __FUNC_EB5F_(arg0)
	local registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_LOADOUTS)
	return registerVal1.cacLoadouts
end

CoD.CACUtility["GetLoadoutsMPOnlinePublic"] = __FUNC_EB5F_
local function __FUNC_EC4F_(arg0)
	local registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_LOADOUTS)
	return registerVal1.customMatchCacLoadouts
end

CoD.CACUtility["GetLoadoutsMPOnlineCustom"] = __FUNC_EC4F_
local function __FUNC_ED4A_(arg0)
	local registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_LOADOUTS)
	return registerVal1.leagueCacLoadouts
end

CoD.CACUtility["GetLoadoutsMPOnlineLeague"] = __FUNC_ED4A_
local function __FUNC_EE41_(arg0)
	local registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_CP_LOADOUTS_OFFLINE)
	return registerVal1.cacLoadouts
end

CoD.CACUtility["GetLoadoutsCPOffline"] = __FUNC_EE41_
local function __FUNC_EF3B_(arg0)
	local registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_CP_LOADOUTS)
	return registerVal1.cacLoadouts
end

CoD.CACUtility["GetLoadoutsCPOnline"] = __FUNC_EF3B_
local function __FUNC_F02B_(arg0)
	local registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_ZM_LOADOUTS_OFFLINE)
	return registerVal1.cacLoadouts
end

CoD.CACUtility["GetLoadoutsZMOffline"] = __FUNC_F02B_
local function __FUNC_F123_(arg0)
	local registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_ZM_LOADOUTS)
	return registerVal1.cacLoadouts
end

CoD.CACUtility["GetLoadoutsZMOnline"] = __FUNC_F123_
local function __FUNC_F213_(arg0)
	local registerVal1 = CoD.isOnlineGame()
	if registerVal1 ~= true then
		local registerVal2 = CoD.GetPlayerStats(arg0)
		CoD.perController[arg0].cacRoot = registerVal2.cacLoadouts
	else
		registerVal1 = Engine.GameModeIsMode(CoD.GAMEMODE_LEAGUE_MATCH)
		if registerVal1 then
			registerVal2 = CoD.GetPlayerStats(arg0)
			CoD.perController[arg0].cacRoot = registerVal2.leagueCacLoadouts
		else
			registerVal1 = Engine.GameModeIsMode(CoD.GAMEMODE_PRIVATE_MATCH)
			if registerVal1 then
				registerVal2 = CoD.GetPlayerStats(arg0)
				CoD.perController[arg0].cacRoot = registerVal2.customMatchCacLoadouts
			else
				registerVal2 = CoD.GetPlayerStats(arg0)
				CoD.perController[arg0].cacRoot = registerVal2.cacLoadouts
			end
		end
	end
end

CoD.CACUtility["SetDefaultCACRootOld"] = __FUNC_F213_
local function __FUNC_F4E8_(arg0)
	local registerVal2 = CoD.isOnlineGame()
	if registerVal2 ~= true then
		registerVal2 = CoD.CPMPZM(CoD.CACUtility.GetLoadoutsCPOffline, CoD.CACUtility.GetLoadoutsMPOffline, CoD.CACUtility.GetLoadoutsZMOffline)
	else
		registerVal2 = Engine.GameModeIsMode(CoD.GAMEMODE_LEAGUE_MATCH)
		if registerVal2 then
			registerVal2 = CoD.CPMPZM(nil, CoD.CACUtility.GetLoadoutsMPOnlineLeague, nil)
		else
			registerVal2 = Engine.GameModeIsMode(CoD.GAMEMODE_PRIVATE_MATCH)
			if registerVal2 then
				registerVal2 = CoD.CPMPZM(CoD.CACUtility.GetLoadoutsCPOnline, CoD.CACUtility.GetLoadoutsMPOnlineCustom, CoD.CACUtility.GetLoadoutsZMOnline)
			else
				registerVal2 = CoD.CPMPZM(CoD.CACUtility.GetLoadoutsCPOnline, CoD.CACUtility.GetLoadoutsMPOnlinePublic, CoD.CACUtility.GetLoadoutsZMOnline)
			end
		end
	end
	if registerVal2 ~= nil then
		local registerVal3 = registerVal2(arg0)
		CoD.perController[arg0].cacRoot = registerVal3
	else
		error("LUI Error: could not set up loadout root - no valid game mode set")
	end
end

CoD.CACUtility["SetDefaultCACRoot"] = __FUNC_F4E8_
local function __FUNC_F98C_(arg0, arg1)
	if arg1 == Enum.team_t.TEAM_FREE then
	else
	end
	local registerVal4 = Engine.GetGametypeSettings()
	CoD.perController[arg0].cacRoot = registerVal4.cacLoadouts[((arg1 - Enum.team_t.TEAM_FIRST_PLAYING_TEAM) + 1.000000)]
end

CoD.CACUtility["SetGametypeSettingsCACRoot"] = __FUNC_F98C_
local function __FUNC_FB2B_(arg0)
	return CoD.perController[arg0].cacRoot
end

CoD.CACUtility["GetCACRoot"] = __FUNC_FB2B_
local function __FUNC_FBB5_(arg0)
	local registerVal1 = CoD.CACUtility.GetCACRoot(arg0)
	if registerVal1 then
		return registerVal1.customClassName
	end
	return nil
end

CoD.CACUtility["GetLoadoutNames"] = __FUNC_FBB5_
local function __FUNC_FC72_(arg0, arg1)
	local registerVal2 = CoD.CACUtility.GetLoadoutNames(arg0)
	if registerVal2 then
		return registerVal2[arg1]
	end
	return nil
end

CoD.CACUtility["GetLoadoutNameFromIndex"] = __FUNC_FC72_
local function __FUNC_FD1A_(arg0)
	if arg0 < 1.000000 or CoD.CACUtility.maxDefaultClass < arg0 then
		error(("LUI Error: Default loadout out with index " .. arg0 .. " doesn't exist."))
	end
	return CoD.CACUtility.defaultClassNames[arg0]
end

CoD.CACUtility["GetDefaultLoadoutNameFromIndex"] = __FUNC_FD1A_
local function __FUNC_FE6A_(arg0)
	if arg0 < 1.000000 or CoD.CACUtility.maxDefaultClass < arg0 then
		error(("LUI Error: Default loadout out with index " .. arg0 .. " doesn't exist."))
	end
	return CoD.CACUtility.defaultArenaClassNames[arg0]
end

CoD.CACUtility["GetDefaultArenaLoadoutNameFromIndex"] = __FUNC_FE6A_
local function __FUNC_FFBF_(arg0)
	CoD.SetupButtonLock(arg0, nil, "FEATURE_CREATE_A_CLASS", "FEATURE_CREATE_A_CLASS_DESC")
end

CoD.CACUtility["SetupCACLock"] = __FUNC_FFBF_
local function __FUNC_10077_(arg0, arg1)
	local registerVal2 = CoD.PrestigeUtility.GetPermanentUnlockMode()
	local registerVal3 = Engine.GetItemIndexFromReference(arg1, registerVal2)
	for index4=1.000000, CoD.CACUtility.maxBonusCards, 1.000000 do
		if registerVal3 ~= nil and arg0[("bonuscard" .. index4)] == registerVal3 then
			return true
		end
	end
	return false
end

CoD.CACUtility["IsBonusCardEquippedByName"] = __FUNC_10077_
local function __FUNC_101FD_(arg0, arg1)
	for index2=1.000000, CoD.CACUtility.maxBonusCards, 1.000000 do
		if arg1 ~= nil and arg0[("bonuscard" .. index2)] == arg1 then
			return true
		end
	end
	return false
end

CoD.CACUtility["IsBonusCardEquippedByIndex"] = __FUNC_101FD_
local function __FUNC_102DD_(arg0, arg1)
	for index2=1.000000, CoD.CACUtility.maxBonusCards, 1.000000 do
		if arg1 ~= nil and arg0[("bonuscard" .. index2)] == arg1 then
			return ("bonuscard" .. index2)
		end
	end
end

CoD.CACUtility["GetBonusCardLoadoutSlot"] = __FUNC_102DD_
local function __FUNC_103B1_(arg0, arg1, arg2)
	local registerVal4 = LUI.startswith(arg1, "secondary")
	if registerVal4 then
	end
	registerVal4, registerVal5, registerVal6 = ipairs(CoD.CACUtility.SecondaryAttachmentSlotNameList)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		local registerVal9 = Engine.GetModel(arg0, value8)
		local registerVal10 = Engine.GetModel(registerVal9, "ref")
		local registerVal11 = Engine.GetModelValue(registerVal10)
		if registerVal9 and registerVal10 and registerVal11 == arg2 then
			return value8
		end
	end
	return nil
end

CoD.CACUtility["GetLoadoutSlotForAttachmentName"] = __FUNC_103B1_
local function __FUNC_105BF_(arg0, arg1)
	local registerVal3 = LUI.startswith(arg1, "secondary")
	if registerVal3 then
	end
	local registerVal4, registerVal5, registerVal6 = ipairs(CoD.CACUtility.SecondaryAttachmentSlotNameList)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		local registerVal9 = Engine.GetModel(arg0, value8)
		local registerVal10 = Engine.GetModel(registerVal9, "ref")
		local registerVal11 = Engine.GetModelValue(registerVal10)
		local registerVal12 = Engine.GetModel(arg0, (value8 .. "cosmeticvariant.itemIndex"))
		if registerVal9 and registerVal10 and registerVal11 ~= "" and registerVal12 then
			local registerVal13 = Engine.GetModelValue(registerVal12)
			local registerVal16 = {}
			registerVal16.ref = registerVal11
			registerVal16.attachmentIndex = registerVal13
			table.insert({}, registerVal16)
		end
	end
	return {}
end

CoD.CACUtility["GetAttachmentVariantForAttachmentList"] = __FUNC_105BF_
local function __FUNC_10894_(arg0)
	for index1=0.000000, (#CoD.CACUtility.weaponOptionGroupNames - 1.000000), 1.000000 do
		if CoD.CACUtility.weaponOptionGroupNames[index1] == arg0 then
			return true
		end
	end
	return false
end

CoD.CACUtility["IsAttachmentRefWeaponOption"] = __FUNC_10894_
local function __FUNC_1097F_(arg0)
	for index1=0.000000, (#CoD.CACUtility.weaponOptionGroupNames - 1.000000), 1.000000 do
		if CoD.CACUtility.weaponOptionGroupNames[index1] == arg0 then
			return index1
		end
	end
	return nil
end

CoD.CACUtility["GetWeaponOptionTypeForName"] = __FUNC_1097F_
local function __FUNC_10A63_(arg0, arg1, arg2)
	if CoD.perController[arg0].weaponCategory == "primary" then
	else
		if CoD.perController[arg0].weaponCategory == "secondary" then
		else
			return 
		end
	end
	local registerVal7 = Engine.GetModel(CoD.perController[arg0].classModel, (CoD.perController[arg0].weaponCategory .. ".itemIndex"))
	if registerVal7 then
		local registerVal8 = Engine.GetModelValue(registerVal7)
		local registerVal9 = Engine.GetItemRef(registerVal8)
		local registerVal11 = CoD.gameMode:lower()
		local registerVal10 = Engine.GetAttachmentRef(registerVal8, arg2)
		local registerVal13, registerVal14, registerVal15 = ipairs(CoD.CACUtility.SecondaryAttachmentSlotNameList)
		for index16,value17 in registerVal13, registerVal14, registerVal15 do
			local registerVal18 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg0].classModel, (value17 .. ".itemIndex")))
			if CoD.CACUtility.EmptyItemIndex < registerVal18 then
				if value17 ~= (CoD.perController[arg0].weaponCategory .. arg1) then
					local registerVal19 = Engine.GetAttachmentRef(registerVal8, registerVal18)
					local registerVal20 = {}
					registerVal20.index = registerVal18
					registerVal20.ref = registerVal19
					table.insert({}, registerVal20)
				else
				end
			end
		end
		registerVal13, registerVal14, registerVal15 = ipairs({})
		for index16,value17 in registerVal13, registerVal14, registerVal15 do
			registerVal20 = Engine.IsOptic(registerVal8, arg2)
			local registerVal21 = Engine.IsOptic(registerVal8, value17.index)
			if arg1 or not registerVal21 then
				local registerVal22 = Engine.AreAttachmentsCompatible(registerVal8, arg2, value17.index)
				if registerVal22 then
				end
			end
		end
		if (((registerVal9 .. "_" .. registerVal11) .. "+" .. value17.ref) .. "+" .. registerVal10) and (((registerVal9 .. "_" .. registerVal11) .. "+" .. value17.ref) .. "+" .. registerVal10) ~= "" then
			registerVal13 = CoD.CACUtility.GetACVariantsFromClassExcludeAttachment(arg0, CoD.perController[arg0].classModel, (CoD.perController[arg0].weaponCategory .. arg1), registerVal10)
			registerVal15 = CoD.CACUtility.GetWeaponOptionsFromClass(arg0, CoD.perController[arg0].classModel, CoD.perController[arg0].weaponCategory)
			registerVal19 = CoD.GetLocalClientAdjustedNum(arg0)
			Engine.SendClientScript(arg0, ("CustomClass_focus" .. registerVal19), CoD.perController[arg0].weaponCategory, (((registerVal9 .. "_" .. registerVal11) .. "+" .. value17.ref) .. "+" .. registerVal10), registerVal10, registerVal15, (registerVal13 .. (registerVal10 .. "," .. 0.000000)), true)
		end
	end
end

CoD.CACUtility["UpdateWeaponPrestigeAttachment"] = __FUNC_10A63_
local function __FUNC_1112C_(arg0, arg1, arg2)
	local registerVal3, registerVal4, registerVal5 = ipairs(arg2)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		local registerVal8 = Engine.GetModel(arg0, value7)
		local registerVal9 = Engine.GetModel(registerVal8, "itemIndex")
		local registerVal10 = Engine.GetModelValue(registerVal9)
		if registerVal8 and registerVal9 and registerVal10 == arg1 then
			return value7
		end
	end
	return nil
end

CoD.CACUtility["GetAttachedItemSlot"] = __FUNC_1112C_
local function __FUNC_11240_(arg0, arg1)
	local registerVal2, registerVal3, registerVal4 = ipairs(arg1)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		local registerVal7 = Engine.GetModel(arg0, value6)
		local registerVal8 = Engine.GetModel(registerVal7, "itemIndex")
		local registerVal9 = Engine.GetModelValue(registerVal8)
		if registerVal7 and registerVal8 and registerVal9 <= CoD.CACUtility.EmptyItemIndex then
			return value6
		end
	end
	return nil
end

CoD.CACUtility["FindFirstEmptySlotInList"] = __FUNC_11240_
local function __FUNC_113A9_(arg0, arg1)
	if not arg1 then
		return false
	end
	local registerVal2, registerVal3, registerVal4 = ipairs(CoD.CACUtility.BonuscardSlotNameList)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		local registerVal7 = Engine.GetModel(arg1, value6)
		local registerVal8 = Engine.GetModel(registerVal7, "itemIndex")
		local registerVal9 = Engine.GetModelValue(registerVal8)
		local registerVal10 = Engine.GetItemRef(registerVal9)
		if registerVal7 and registerVal8 and registerVal10 == arg0 then
			return true
		end
	end
	return false
end

CoD.CACUtility["IsBonusCardEquipped"] = __FUNC_113A9_
local function __FUNC_1155C_(arg0, arg1)
	local registerVal3 = Engine.GetItemIndexFromReference(arg1)
	local registerVal4, registerVal5, registerVal6 = ipairs(CoD.CACUtility.BonuscardSlotNameList)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		local registerVal9 = Engine.GetModel(arg0, (value8 .. ".itemIndex"))
		local registerVal10 = Engine.GetModelValue(registerVal9)
		local registerVal12 = Engine.GetItemRef(registerVal10)
		local registerVal11 = LUI.startswith(registerVal12, arg1)
		if registerVal9 and CoD.CACUtility.EmptyItemIndex < registerVal10 and registerVal11 then
		end
	end
	registerVal4 = math.max((0.000000 + 1.000000), 0.000000)
	registerVal3 = math.min(registerVal4, CoD.CACUtility.maxBonusCards)
	return registerVal3
end

CoD.CACUtility["SpecificWildcardEquippedCount"] = __FUNC_1155C_
local function __FUNC_1182A_(arg0)
	local registerVal2, registerVal3, registerVal4 = ipairs(CoD.CACUtility.PrimaryGunfighterWildcards)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		local registerVal7 = CoD.CACUtility.IsBonusCardEquipped(value6, arg0)
		if registerVal7 then
		end
	end
	registerVal3 = math.max((0.000000 + 1.000000), 0.000000)
	return math.min(registerVal3, CoD.CACUtility.maxPrimaryGunfighters)
end

CoD.CACUtility["PrimaryGunfighterEquippedCount"] = __FUNC_1182A_
local function __FUNC_119CF_(arg0, arg1, arg2)
	if not arg1 then
		return ""
	end
	local registerVal4, registerVal5, registerVal6 = ipairs(CoD.CACUtility.BonuscardSlotNameList)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		local registerVal9 = Engine.GetModel(CoD.perController[arg1].classModel, value8)
		local registerVal10 = Engine.GetModel(registerVal9, "itemIndex")
		local registerVal11 = Engine.GetModelValue(registerVal10)
		local registerVal12 = Engine.GetItemRef(registerVal11)
		if registerVal9 and registerVal10 and registerVal12 == arg0 then
			return value8
		end
	end
	return ""
end

CoD.CACUtility["SearchForBonusCard"] = __FUNC_119CF_
local function __FUNC_11BE1_(arg0, arg1, arg2)
	if not arg1 then
		return 
	end
	if CoD.perController[arg1].classModel then
		return CoD.SafeGetModelValue(CoD.perController[arg1].classModel, (arg0 .. ".itemIndex"))
	end
	return 
end

CoD.CACUtility["GetItemIndexEquippedInSlot"] = __FUNC_11BE1_
local function __FUNC_11CE3_(arg0, arg1, arg2)
	if not arg1 then
		return 
	end
	if CoD.perController[arg1].classModel then
		return CoD.SafeGetModelValue(CoD.perController[arg1].classModel, (arg0 .. ".ref"))
	end
	return 
end

CoD.CACUtility["GetItemRefEquippedInSlot"] = __FUNC_11CE3_
local function __FUNC_11DDD_(arg0, arg1)
	local registerVal2, registerVal3, registerVal4 = ipairs(arg1)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		local registerVal7 = CoD.CACUtility.ItemEquippedInSlot(value6, nil, arg0)
		if registerVal7 then
			return true
		end
	end
	return false
end

CoD.CACUtility["IsItemEquippedInAnySlot"] = __FUNC_11DDD_
local function __FUNC_11EB1_(arg0, arg1, arg2)
	if not arg2 and arg1 then
	end
	local registerVal4 = Engine.GetModel(CoD.perController[arg1].classModel, arg0)
	local registerVal5 = Engine.GetModel(registerVal4, "itemIndex")
	if CoD.perController[arg1].classModel and registerVal4 and registerVal5 then
		return Engine.GetModelValue(registerVal5)
	end
	return CoD.CACUtility.EmptyItemIndex
end

CoD.CACUtility["GetItemEquippedInSlot"] = __FUNC_11EB1_
local function __FUNC_12054_(arg0, arg1, arg2)
	local registerVal3 = CoD.CACUtility.GetItemEquippedInSlot(arg0, arg1, arg2)
	if CoD.CACUtility.EmptyItemIndex >= registerVal3 then
	end
	return true
end

CoD.CACUtility["ItemEquippedInSlot"] = __FUNC_12054_
local function __FUNC_12134_(arg0, arg1, arg2)
	if arg0 ~= "primary" and arg0 ~= "secondary" then
		return false
	end
	local registerVal3 = Engine.GetModel(arg2, arg0)
	local registerVal4 = Engine.GetModelValue(Engine.GetModel(registerVal3, "itemIndex"))
	local registerVal5 = CoD.CACUtility.GetAttachmentListForSlot(arg0)
	local registerVal6, registerVal7, registerVal8 = ipairs(registerVal5)
	for index9,value10 in registerVal6, registerVal7, registerVal8 do
		local registerVal11 = Engine.GetModelValue(Engine.GetModel(arg2, (value10 .. ".itemIndex")))
		local registerVal12 = Engine.GetAttachmentRef(registerVal4, registerVal11)
		if CoD.CACUtility.EmptyItemIndex < registerVal11 and registerVal12 and registerVal12 == "dw" then
			return true
		end
	end
	return false
end

CoD.CACUtility["DoesWeaponHaveDWInSlot"] = __FUNC_12134_
local function __FUNC_123D9_(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModel(arg2, arg0)
	local registerVal4 = Engine.GetModelValue(Engine.GetModel(registerVal3, "itemIndex"))
	local registerVal5 = Engine.GetNumAttachments(registerVal4)
	if registerVal3 and CoD.CACUtility.EmptyItemIndex < registerVal4 and 1.000000 < registerVal5 then
		return true
	end
	return false
end

CoD.CACUtility["DoesWeaponHaveAnyAttachments"] = __FUNC_123D9_
local function __FUNC_12551_(arg0, arg1, arg2)
	if not arg2 and arg1 then
	end
	local registerVal4 = Engine.GetModel(CoD.perController[arg1].classModel, arg0)
	local registerVal5 = Engine.GetModel(registerVal4, "name")
	if CoD.perController[arg1].classModel and registerVal4 and registerVal5 then
		return Engine.GetModelValue(registerVal5)
	end
	return ""
end

CoD.CACUtility["GetItemName"] = __FUNC_12551_
local function __FUNC_126B5_(arg0, arg1)
	local registerVal2 = Engine.GetModel(arg0, "itemIndex")
	if registerVal2 then
		local registerVal3 = Engine.GetModelValue(registerVal2)
		return Engine.GetItemRef(registerVal3)
	end
	return ""
end

CoD.CACUtility["GetItemReferenceName"] = __FUNC_126B5_
local function __FUNC_127AA_(arg0)
	local registerVal1 = CoD.CACUtility.SearchForBonusCard("bonuscard_danger_close", arg0)
	registerVal1 = CoD.CACUtility.SearchForBonusCard("bonuscard_two_tacticals", arg0)
	if registerVal1 == "" and registerVal1 == "" then
	end
	return true
end

CoD.CACUtility["AllowTwoPrimaryTacticals"] = __FUNC_127AA_
local function __FUNC_128C8_(arg0, arg1, arg2, arg3)
	local registerVal4 = Engine.GetItemRef(arg2)
	if not arg3 then
	end
	local function __FUNC_13204_(arg0, arg1, arg2)
		local registerVal3 = LUI.endswith(registerVal4, "_pro")
		local registerVal6 = string.len("_pro")
		registerVal3 = string.sub(registerVal4, 1.000000, (-registerVal6 - 1.000000))
		local registerVal4 = Engine.GetItemIndexFromReference(registerVal3)
		local registerVal5 = CoD.CACUtility.GetItemEquippedInSlot(arg1, arg0, CoD.perController[arg1].classModel)
		if registerVal3 and registerVal5 == registerVal4 then
			return arg1
		end
		return ""
	end

	local registerVal7 = LUI.startswith(arg0, "bonuscard")
	if registerVal7 then
		if registerVal4 == "bonuscard_danger_close" then
			table.insert({}, CoD.CACUtility.SearchForBonusCard("bonuscard_two_tacticals", arg1))
		else
			if registerVal4 == "bonuscard_two_tacticals" then
				table.insert({}, CoD.CACUtility.SearchForBonusCard("bonuscard_danger_close", arg1))
			else
				registerVal7 = CoD.CACUtility.SearchForBonusCard("bonuscard_two_tacticals", arg1)
				if registerVal7 and arg0 == "primarygadget" then
					registerVal7 = CoD.CACUtility.GetItemEquippedInSlot("secondarygadget", arg1, CoD.perController[arg1].classModel)
					if registerVal7 == arg2 then
						table.insert({}, "secondarygadget")
					else
						registerVal7 = CoD.CACUtility.SearchForBonusCard("bonuscard_two_tacticals", arg1)
						if registerVal7 and arg0 == "secondarygadget" then
							registerVal7 = CoD.CACUtility.GetItemEquippedInSlot("primarygadget", arg1, CoD.perController[arg1].classModel)
							if registerVal7 == arg2 then
								table.insert({}, "primarygadget")
							else
								registerVal7 = CoD.CACUtility.SearchForBonusCard("bonuscard_overkill", arg1)
								if registerVal7 and arg0 == "primary" then
									registerVal7 = CoD.CACUtility.GetItemEquippedInSlot("secondary", arg1, CoD.perController[arg1].classModel)
									if registerVal7 == arg2 then
										table.insert({}, "secondary")
									else
										registerVal7 = CoD.CACUtility.SearchForBonusCard("bonuscard_overkill", arg1)
										if registerVal7 and arg0 == "secondary" then
											registerVal7 = CoD.CACUtility.GetItemEquippedInSlot("primary", arg1, CoD.perController[arg1].classModel)
											if registerVal7 == arg2 then
												table.insert({}, "primary")
											else
												registerVal7 = CoD.CACUtility.IsSlotNameInList(CoD.CACUtility.PrimaryAttachmentSlotNameList, arg0)
												registerVal7 = CoD.CACUtility.IsSlotNameInList(CoD.CACUtility.SecondaryAttachmentSlotNameList, arg0)
												if not arg1 or registerVal7 then
													registerVal7 = CoD.CACUtility.GetAttachmentListForSlot(arg0)
													local registerVal9 = LUI.startswith(arg0, "secondary")
													if registerVal9 then
													end
													registerVal9 = CoD.CACUtility.GetItemEquippedInSlot("secondary", arg1, CoD.perController[arg1].classModel)
													local registerVal10, registerVal11, registerVal12 = ipairs(registerVal7)
													for index13,value14 in registerVal10, registerVal11, registerVal12 do
														local registerVal15 = CoD.CACUtility.GetItemEquippedInSlot(value14, arg1, CoD.perController[arg1].classModel)
														local registerVal16 = Engine.AreAttachmentsCompatible(registerVal9, registerVal15, arg2)
														if registerVal15 ~= arg2 and not registerVal16 then
															registerVal16 = Engine.IsOptic(registerVal9, registerVal15)
															registerVal16 = Engine.IsOptic(registerVal9, arg2)
															if arg1 or not registerVal16 then
																table.insert({}, value14)
															end
														end
													end
												else
													if arg0 == "cybercom_tacrig1" then
														registerVal7 = CoD.CACUtility.GetItemEquippedInSlot("cybercom_tacrig2", arg1, CoD.perController[arg1].classModel)
														if registerVal7 == arg2 then
															table.insert({}, "cybercom_tacrig2")
														end
														registerVal7 = __FUNC_13204_(arg1, "cybercom_tacrig2", arg2)
														table.insert({}, registerVal7)
														if registerVal7 ~= "" and arg0 == "cybercom_tacrig2" then
															registerVal7 = CoD.CACUtility.GetItemEquippedInSlot("cybercom_tacrig1", arg1, CoD.perController[arg1].classModel)
															if registerVal7 == arg2 then
																table.insert({}, "cybercom_tacrig1")
															end
															registerVal7 = __FUNC_13204_(arg1, "cybercom_tacrig1", arg2)
															if registerVal7 ~= "" then
																table.insert({}, registerVal7)
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
	return {}
end

CoD.CACUtility["GetMutuallyExclusiveSlotName"] = __FUNC_128C8_
local function __FUNC_133C1_(arg0)
	if CoD.CACUtility.attachmentsWithCustReticle[arg0] == nil then
	end
	return true
end

CoD.CACUtility["AttachmentHasCustomReticle"] = __FUNC_133C1_
local function __FUNC_1346E_(arg0)
	return Engine.TableLookup(nil, CoD.attachmentTable, 0.000000, arg0, 16.000000)
end

CoD.CACUtility["GetWeaponOptionMTXName"] = __FUNC_1346E_
local function __FUNC_13525_(arg0)
	return Engine.TableLookup(nil, CoD.attachmentTable, 0.000000, arg0, 4.000000)
end

CoD.CACUtility["GetWeaponOptionId"] = __FUNC_13525_
local function __FUNC_135DD_(arg0)
	return Engine.TableLookup(nil, "gamedata/emblems/emblemsOrBackings.csv", 0.000000, "background", 1.000000, arg0, 10.000000)
end

CoD.CACUtility["GetBackingMTXName"] = __FUNC_135DD_
local function __FUNC_136B4_(arg0)
	local registerVal1 = CoD.CACUtility.GetWeaponOptionMTXName(arg0)
	if registerVal1 == "" then
	end
	return true
end

CoD.CACUtility["IsWeaponOptionMTX"] = __FUNC_136B4_
local function __FUNC_1376B_(arg0)
	local registerVal1 = CoD.CACUtility.GetBackingMTXName(arg0)
	if registerVal1 == "" then
	end
	return true
end

CoD.CACUtility["IsBackingMTX"] = __FUNC_1376B_
local function __FUNC_1381A_()
	for index0=0.000000, CoD.CACUtility.maxMTXWeaponPacks, 1.000000 do
		local registerVal4 = Engine.IsMTXAvailable(("mtx_weapon" .. index0))
		if registerVal4 then
			return true
		end
	end
	return false
end

CoD.CACUtility["IsAnyWeaponMTXAvailable"] = __FUNC_1381A_
local function __FUNC_1392A_(arg0)
	for index1=0.000000, CoD.CACUtility.maxMTXWeaponPacks, 1.000000 do
		local registerVal5 = Engine.HasMTX(arg0, ("mtx_weapon" .. index1))
		if registerVal5 then
			return true
		end
	end
	return false
end

CoD.CACUtility["HasAnyWeaponMTX"] = __FUNC_1392A_
local function __FUNC_13A36_(arg0, arg1)
	local registerVal2 = CoD.CACUtility.GetWeaponOptionMTXName(arg1)
	local registerVal3 = Engine.SkipMTXItem(registerVal2)
	if registerVal3 == true then
		return false
	else
		return true
	end
end

CoD.CACUtility["ShouldDisplayWeaponOptionMTX"] = __FUNC_13A36_
local function __FUNC_13B20_(arg0)
	local registerVal1 = Engine.TableLookup(nil, "mp/mtxitems.csv", 1.000000, arg0, 3.000000)
	return ("MPUI_" .. registerVal1 .. "_MSG")
end

CoD.CACUtility["GetMTXPurchaseMsg"] = __FUNC_13B20_
CoD.CACUtility["SelectedClassIndex"] = {}
local function __FUNC_13BED_()
	local registerVal0 = Engine.GameModeIsMode(CoD.GAMEMODE_LOCAL_SPLITSCREEN)
	registerVal0 = Engine.SessionMode_IsSystemlinkGame()
	if registerVal0 == false and not registerVal0 then
		return true
	else
		return false
	end
end

CoD.CACUtility["IsOnlineGame"] = __FUNC_13BED_
local function __FUNC_13CF5_(arg0, arg1)
	local registerVal3 = CoD.CACUtility.IsOnlineGame()
	if registerVal3 == true then
		registerVal3 = Engine.GameModeIsMode(CoD.GAMEMODE_LEAGUE_MATCH)
		if registerVal3 then
		else
		end
	end
	Engine.SetProfileVar(arg0, "lastLoadoutOnline", arg1)
	Engine.CommitProfileChanges(arg0)
	CoD.CACUtility.SelectedClassIndex[arg0] = arg1
end

CoD.CACUtility["SetProfileLoadoutChoice"] = __FUNC_13CF5_
local function __FUNC_13F02_(arg0, arg1)
	if false then
		if arg0 == CoD.CACUtility.loadoutSlotNames.primaryGadget then
			local registerVal4 = Engine.Localize("MPUI_PRIMARY_GADGET_CAPS")
		else
			if arg0 == CoD.CACUtility.loadoutSlotNames.secondaryGadget then
				registerVal4 = Engine.Localize("MPUI_SECONDARY_GADGET_CAPS")
			else
				if arg0 == CoD.CACUtility.loadoutSlotNames.primaryGadget then
					registerVal4 = CoD.CACUtility.IsBonusCardEquippedByName(arg1, "bonuscard_two_tacticals")
					if arg1 ~= nil and registerVal4 then
						registerVal4 = Engine.Localize("MPUI_SECOND_SPECIAL_GRENADE_CAPS")
					else
						registerVal4 = Engine.Localize("MPUI_PRIMARY_GRENADE_CAPS")
					else
						if arg0 == CoD.CACUtility.loadoutSlotNames.secondaryGadget then
							registerVal4 = Engine.Localize("MPUI_SPECIAL_GRENADE_CAPS")
						end
					end
				end
			end
		end
	end
	return registerVal4
end

CoD.CACUtility["GetEquipmentLabel"] = __FUNC_13F02_
local function __FUNC_14279_(arg0, arg1, arg2, arg3)
	local registerVal4 = CoD.PrestigeUtility.GetPermanentUnlockMode()
	local registerVal5 = Engine.GetCustomClass(arg0, arg1, registerVal4, arg3)
	local registerVal9 = CoD.CACUtility.IsBonusCardEquippedByName(registerVal5, "bonuscard_overkill")
	if registerVal9 == true then
	end
	local registerVal10 = CoD.CACUtility.IsBonusCardEquippedByName(registerVal5, "bonuscard_two_tacticals")
	if registerVal10 == true then
	end
	local registerVal12 = Engine.CreateModel(arg2, "secondary.headerName")
	Engine.SetModelValue(registerVal12, "MPUI_SECOND_PRIMARY_CAPS")
	registerVal12 = Engine.CreateModel(arg2, "primarygadget.headerName")
	Engine.SetModelValue(registerVal12, "MPUI_SECOND_SPECIAL_GRENADE_CAPS")
	registerVal12 = Engine.CreateModel(arg2, "primarygadgetattachment1.headerName")
	Engine.SetModelValue(registerVal12, "MPUI_SECOND_SPECIAL_GRENADE_CAPS")
	registerVal12 = Engine.CreateModel(arg2, "secondarygadget.headerName")
	Engine.SetModelValue(registerVal12, "MPUI_FIRST_SPECIAL_GRENADE_CAPS")
	registerVal12 = Engine.CreateModel(arg2, "secondarygadgetattachment1.headerName")
	Engine.SetModelValue(registerVal12, "MPUI_FIRST_SPECIAL_GRENADE_CAPS")
	local registerVal11 = Engine.GetModel(arg2, "primary.headerName")
	registerVal12 = Engine.CreateModel(arg2, "primary.headerName")
	Engine.SetModelValue(registerVal12, "MPUI_PRIMARY_WEAPON_CAPS")
	registerVal11, registerVal12, registerVal13 = ipairs(CoD.CACUtility.PrimaryAttachmentSlotNameList)
	if "primary.headerName" == 1.000000 then
		local registerVal17 = Engine.CreateModel(arg2, ( .. ".headerName"))
		Engine.SetModelValue(registerVal17, "MPUI_PRIMARY_OPTIC_CAPS")
	else
		registerVal17 = Engine.CreateModel(arg2, ( .. ".headerName"))
		Engine.SetModelValue(registerVal17, "MPUI_PRIMARY_ATTACHMENT_CAPS")
	end
	registerVal11, registerVal12, registerVal13 = ipairs(CoD.CACUtility.SecondaryAttachmentSlotNameList)
	if "primary.headerName" == 1.000000 then
		registerVal17 = Engine.CreateModel(arg2, ( .. ".headerName"))
		Engine.SetModelValue(registerVal17, "MPUI_SECONDARY_OPTIC_CAPS")
	else
		registerVal17 = Engine.CreateModel(arg2, ( .. ".headerName"))
		Engine.SetModelValue(registerVal17, "MPUI_SECONDARY_ATTACHMENT_CAPS")
	end
	registerVal11, registerVal12, registerVal13 = ipairs(CoD.CACUtility.Perk1SlotNameList)
	for index14,value15 in registerVal11, registerVal12, registerVal13 do
		registerVal17 = Engine.CreateModel(arg2, (value15 .. ".headerName"))
		Engine.SetModelValue(registerVal17, "MPUI_PERK1_CAPS")
	end
	registerVal11, registerVal12, registerVal13 = ipairs(CoD.CACUtility.Perk2SlotNameList)
	for index14,value15 in registerVal11, registerVal12, registerVal13 do
		registerVal17 = Engine.CreateModel(arg2, (value15 .. ".headerName"))
		Engine.SetModelValue(registerVal17, "MPUI_PERK2_CAPS")
	end
	registerVal11, registerVal12, registerVal13 = ipairs(CoD.CACUtility.Perk3SlotNameList)
	for index14,value15 in registerVal11, registerVal12, registerVal13 do
		registerVal17 = Engine.CreateModel(arg2, (value15 .. ".headerName"))
		Engine.SetModelValue(registerVal17, "MPUI_PERK3_CAPS")
	end
	registerVal11, registerVal12, registerVal13 = ipairs(CoD.CACUtility.BonuscardSlotNameList)
	for index14,value15 in registerVal11, registerVal12, registerVal13 do
		registerVal17 = Engine.CreateModel(arg2, (value15 .. ".headerName"))
		Engine.SetModelValue(registerVal17, "MENU_WILDCARD_CAPS")
	end
	registerVal13 = Engine.CreateModel(arg2, "cybercom_tacrig1.headerName")
	Engine.SetModelValue(registerVal13, "MENU_TACTICAL_RIG_CAPS")
	registerVal13 = Engine.CreateModel(arg2, "cybercom_tacrig2.headerName")
	Engine.SetModelValue(registerVal13, "MENU_TACTICAL_RIG_CAPS")
end

CoD.CACUtility["UpdateHeaderNames"] = __FUNC_14279_
local function __FUNC_14D8A_(arg0, arg1, arg2, arg3)
	local registerVal4 = Engine.GetModel(arg1, arg2)
	if not registerVal4 then
		return 
	end
	local registerVal5 = Engine.GetModel(registerVal4, "image")
	local registerVal6 = Engine.GetModelValue(registerVal5)
	if registerVal5 and registerVal6 then
		if registerVal6 == CoD.CACUtility.DefaultLoadoutImage then
		end
		local registerVal8 = Engine.CreateModel(registerVal4, "image_big")
		Engine.SetModelValue(registerVal8, (registerVal6 .. ""))
	end
end

CoD.CACUtility["AddBigImagesToCustomClassModel"] = __FUNC_14D8A_
local function __FUNC_14F53_(arg0, arg1, arg2)
	local registerVal3 = Engine.GetItemIndexFromReference(arg1, arg2)
	local registerVal4 = Engine.GetItemUnlockLevel(registerVal3, arg2)
	local registerVal5 = Engine.GetItemName(registerVal3, arg2)
	return Engine.Localize(arg0, registerVal5, (registerVal4 + 1.000000))
end

CoD.CACUtility["GetBonucardUnlockHint"] = __FUNC_14F53_
local function __FUNC_1506F_(arg0)
	local registerVal1 = Engine.GetItemRef(arg0)
	local registerVal2 = IsCampaign()
	if registerVal2 then
		if registerVal1 ~= "hero_annihilator" and registerVal1 ~= "hero_pineapplegun" then
		end
	end
	return true
end

CoD.CACUtility["IsCPHeroWeapon"] = __FUNC_1506F_
local function __FUNC_15149_(arg0, arg1, arg2)
	local registerVal7 = CoD.PrestigeUtility.GetPermanentUnlockMode()
	local registerVal8 = CoD.CACUtility.ItemEquippedInSlot(arg2, arg0, arg1)
	if registerVal8 then
		local registerVal9 = Engine.LastInput_Gamepad(arg0)
		if not registerVal9 then
			local registerVal10 = Engine.Localize("MPUI_PERSONALIZE_CAPS")
		end
		if arg2 == "primary" or arg2 == "secondary" then
			registerVal9 = CoD.CACUtility.GetItemEquippedInSlot(arg2, arg0, arg1)
			registerVal10 = CoD.CACUtility.IsCPHeroWeapon(registerVal9)
			if registerVal10 then
			else
			else
				registerVal9 = LUI.startswith(arg2, "primaryattachment")
				registerVal9 = LUI.startswith(arg2, "secondaryattachment")
				if not arg1 or registerVal9 then
					if arg2 == "primaryattachment1" or arg2 == "secondaryattachment1" then
						registerVal9 = CoD.CACUtility.GetItemRefEquippedInSlot(arg2, arg0, arg1)
						registerVal9 = CoD.CACUtility.GetWeaponSlotForAttachmentSlot(arg2)
						registerVal10 = CoD.CACUtility.GetItemRefEquippedInSlot(registerVal9, arg0, arg1)
						local registerVal11 = CoD.CACUtility.GetItemIndexEquippedInSlot(registerVal9, arg0, arg1)
						local registerVal12 = CoD.CACUtility.GetItemIndexEquippedInSlot(arg2, arg0, arg1)
						local registerVal13 = Engine.GetItemAttachment(registerVal11, registerVal12)
						local registerVal14 = Engine.GetAttachmentCosmeticVariantCountForAttachment(registerVal10, registerVal13)
						if CoD.CACUtility.attachmentsWithCustReticle[registerVal9] and registerVal9 and registerVal14 and 0.000000 < registerVal14 then
						else
							if arg2 == "primary" or arg2 == "secondary" then
							else
								if arg2 == "primarygadget" then
									registerVal8 = CoD.CACUtility.SearchForBonusCard("bonuscard_two_tacticals", arg0)
									if registerVal8 ~= "" then
									else
									else
										if arg2 == "secondarygadget" then
										else
											registerVal8 = LUI.startswith(arg2, "specialty")
											if registerVal8 then
												if arg2 == "specialty4" then
													registerVal8 = IsNonAttachmentItemLocked(arg0, "bonuscard_perk_1_greed")
													if registerVal8 then
														registerVal8 = CoD.CACUtility.GetBonucardUnlockHint("MPUI_ITEM_UNLOCKS_AT_LVL", "bonuscard_perk_1_greed", registerVal7)
													else
														registerVal8 = CoD.CACUtility.SearchForBonusCard("bonuscard_perk_1_greed", arg0, arg1)
														if registerVal8 == "" then
														else
															if arg2 == "specialty5" then
																registerVal8 = IsNonAttachmentItemLocked(arg0, "bonuscard_perk_2_greed")
																if registerVal8 then
																	registerVal8 = CoD.CACUtility.GetBonucardUnlockHint("MPUI_ITEM_UNLOCKS_AT_LVL", "bonuscard_perk_2_greed", registerVal7)
																else
																	registerVal8 = CoD.CACUtility.SearchForBonusCard("bonuscard_perk_2_greed", arg0, arg1)
																	if registerVal8 == "" and arg2 == "specialty6" then
																		registerVal8 = IsNonAttachmentItemLocked(arg0, "bonuscard_perk_3_greed")
																		if registerVal8 then
																			registerVal8 = CoD.CACUtility.GetBonucardUnlockHint("MPUI_ITEM_UNLOCKS_AT_LVL", "bonuscard_perk_3_greed", registerVal7)
																		else
																			registerVal8 = CoD.CACUtility.SearchForBonusCard("bonuscard_perk_3_greed", arg0, arg1)
																			if registerVal8 == "" then
																			else
																				registerVal8 = LUI.startswith(arg2, "primaryattachment")
																				if registerVal8 then
																					registerVal8 = CoD.CACUtility.GetItemEquippedInSlot("primary", arg0, arg1)
																					registerVal9 = Engine.GetNumAttachments(registerVal8, registerVal7)
																					if arg2 == "primaryattachment1" then
																					else
																					end
																					if registerVal8 <= CoD.CACUtility.EmptyItemIndex then
																						if arg2 == "primaryattachment1" then
																						else
																						else
																							registerVal10 = Engine.GetNumOptics(registerVal8, registerVal7)
																							if arg2 == "primaryattachment1" and registerVal10 <= 1.000000 then
																							else
																								if arg2 == "primaryattachment2" or arg2 == "primaryattachment3" then
																									if registerVal9 <= 1.000000 then
																									else
																									else
																										if arg2 ~= "primaryattachment4" and arg2 == "primaryattachment5" or arg2 == "primaryattachment6" then
																											if registerVal9 <= 1.000000 then
																											else
																												registerVal10 = IsCACPrimaryAttachmentSlotLockedByWildcard(arg0)
																												if registerVal10 then
																													registerVal10 = CoD.CACUtility.GetBonucardUnlockHint("MPUI_ITEM_UNLOCKS_AT_LVL", "bonuscard_primary_gunfighter", registerVal7)
																												else
																													registerVal10 = CoD.CACUtility.PrimaryGunfighterEquippedCount(arg1)
																													if arg2 ~= "primaryattachment4" or registerVal10 >= 1.000000 then
																														if arg2 ~= "primaryattachment5" or registerVal10 >= 2.000000 then
																															if arg2 == "primaryattachment6" and registerVal10 < 3.000000 then
																															else
																																registerVal8 = LUI.startswith(arg2, "secondaryattachment")
																																if registerVal8 then
																																	registerVal8 = CoD.CACUtility.GetItemEquippedInSlot("secondary", arg0, arg1)
																																	registerVal9 = Engine.GetNumAttachments(registerVal8, registerVal7)
																																	if arg2 == "secondaryattachment1" then
																																	else
																																	end
																																	if registerVal8 <= CoD.CACUtility.EmptyItemIndex then
																																		if arg2 == "secondaryattachment1" then
																																		else
																																		else
																																			registerVal10 = Engine.GetNumOptics(registerVal8, registerVal7)
																																			if arg2 == "secondaryattachment1" and registerVal10 <= 1.000000 then
																																			else
																																				if arg2 == "secondaryattachment2" and registerVal9 <= 1.000000 then
																																				else
																																					if arg2 == "secondaryattachment3" then
																																						if registerVal9 <= 1.000000 then
																																						else
																																							registerVal10 = IsNonAttachmentItemLocked(arg0, "bonuscard_secondary_gunfighter")
																																							if registerVal10 then
																																								registerVal10 = CoD.CACUtility.GetBonucardUnlockHint("MPUI_ITEM_UNLOCKS_AT_LVL", "bonuscard_secondary_gunfighter", registerVal7)
																																							else
																																								registerVal10 = CoD.CACUtility.SearchForBonusCard("bonuscard_secondary_gunfighter", arg0, arg1)
																																								if registerVal10 == "" then
																																								else
																																									registerVal8 = LUI.startswith(arg2, "primarygadgetattachment")
																																									if registerVal8 then
																																										registerVal8 = CoD.CACUtility.GetItemEquippedInSlot("primarygadget", arg0, arg1)
																																										registerVal9 = CoD.CACUtility.GetItemName("primarygadget", arg0, arg1)
																																										if arg1 or registerVal8 <= CoD.CACUtility.EmptyItemIndex then
																																										else
																																											registerVal10 = IsNonAttachmentItemLocked(arg0, "bonuscard_danger_close")
																																											if registerVal10 then
																																												registerVal10 = CoD.CACUtility.GetBonucardUnlockHint("MPUI_ITEM_UNLOCKS_AT_LVL", "bonuscard_danger_close", registerVal7)
																																											else
																																												registerVal10 = CoD.CACUtility.SearchForBonusCard("bonuscard_danger_close", arg0)
																																												registerVal10 = CoD.CACUtility.SearchForBonusCard("bonuscard_two_tacticals", arg0)
																																												if registerVal10 == "" and registerVal10 == "" then
																																												else
																																													registerVal8 = LUI.startswith(arg2, "secondarygadgetattachment")
																																													if registerVal8 then
																																														registerVal8 = CoD.CACUtility.GetItemEquippedInSlot("secondarygadget", arg0, arg1)
																																														registerVal9 = CoD.CACUtility.GetItemName("secondarygadget", arg0, arg1)
																																														registerVal10 = Engine.GadgetHasTakeTwoAttachment(registerVal8, registerVal7)
																																														if registerVal8 <= CoD.CACUtility.EmptyItemIndex or not registerVal10 then
																																														else
																																															registerVal8 = LUI.startswith(arg2, "bonuscard")
																																															if registerVal8 then
																																															else
																																																registerVal8 = LUI.startswith(arg2, "cybercom_tacrig")
																																																if registerVal8 then
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
	return CoD.CACUtility.CACStatusAvailable.NOT_AVAILABLE, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

CoD.CACUtility["GetCACSlotStatus"] = __FUNC_15149_
local function __FUNC_16A0C_(arg0)
	local registerVal1, registerVal2, registerVal3 = ipairs(CoD.CACUtility.PrimaryGunfighterWildcards)
	for index4,value5 in registerVal1, registerVal2, registerVal3 do
		local registerVal6 = CoD.CACUtility.IsBonusCardEquipped(value5, arg0)
		if not registerVal6 then
			return value5
		end
	end
	return ""
end

CoD.CACUtility["GetNextAvailablePrimaryGunfighter"] = __FUNC_16A0C_
local function __FUNC_16B28_(arg0, arg1)
	if arg1 == "specialty4" then
		local registerVal6 = IsNonAttachmentItemLocked(arg0, "bonuscard_perk_1_greed")
	else
		if arg1 == "specialty5" then
			registerVal6 = IsNonAttachmentItemLocked(arg0, "bonuscard_perk_2_greed")
		else
			if arg1 == "specialty6" then
				registerVal6 = IsNonAttachmentItemLocked(arg0, "bonuscard_perk_3_greed")
			else
				if arg1 ~= "primaryattachment4" and arg1 == "primaryattachment5" or arg1 == "primaryattachment6" then
					registerVal6 = CoD.CACUtility.GetNextAvailablePrimaryGunfighter(CoD.perController[arg0].classModel)
					registerVal6 = CoD.CACUtility.ItemEquippedInSlot("primary", arg0, CoD.perController[arg0].classModel)
					registerVal6 = IsNonAttachmentItemLocked(arg0, registerVal6)
				else
					if arg1 == "secondaryattachment3" then
						registerVal6 = CoD.CACUtility.GetItemEquippedInSlot("secondary", arg0, CoD.perController[arg0].classModel)
						local registerVal7 = Engine.GetNumAttachments(registerVal6)
						if 1.000000 < registerVal7 then
							local registerVal8 = CoD.CACUtility.ItemEquippedInSlot("secondary", arg0, CoD.perController[arg0].classModel)
						else
						end
						registerVal8 = IsNonAttachmentItemLocked(arg0, "bonuscard_secondary_gunfighter")
					else
						if arg1 == "primarygadgetattachment1" then
							registerVal6 = CoD.CACUtility.ItemEquippedInSlot("primarygadget", arg0, CoD.perController[arg0].classModel)
							registerVal6 = IsNonAttachmentItemLocked(arg0, "bonuscard_danger_close")
						end
					end
				end
			end
		end
	end
	return "bonuscard_danger_close", CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

CoD.CACUtility["WildcardNeededForSlot"] = __FUNC_16B28_
local function __FUNC_1704C_(arg0, arg1, arg2)
	local function __FUNC_170CC_(arg1)
		local registerVal1 = Engine.CreateModel(arg2, (arg1 .. ".modifiedName"))
		local registerVal2 = CoD.CACUtility.ItemEquippedInSlot(arg1, arg0, arg2)
		if registerVal2 then
			registerVal2 = Engine.GetModel(arg2, (arg1 .. ".name"))
			if registerVal2 and registerVal1 then
				local registerVal3 = Engine.GetModelValue(registerVal2)
				local registerVal4 = CoD.CACUtility.ItemEquippedInSlot((arg1 .. "attachment1"), arg0, arg2)
				if registerVal4 then
					registerVal4 = Engine.Localize("MPUI_X2_GRENADE", registerVal3)
				end
				Engine.SetModelValue(registerVal1, registerVal4)
			else
				Engine.SetModelValue(registerVal1, "")
			end
		end
	end

	__FUNC_170CC_("primarygadget")
	__FUNC_170CC_("secondarygadget")
end

CoD.CACUtility["UpdateGrenadeNames"] = __FUNC_1704C_
local function __FUNC_17346_(arg0, arg1, arg2)
	local registerVal3 = CoD.PrestigeUtility.GetPermanentUnlockMode()
	local registerVal4 = Engine.GetCustomClass(arg0, arg1, registerVal3)
	local registerVal5 = CoD.CACUtility.IsBonusCardEquippedByName(registerVal4, "bonuscard_overkill")
	local registerVal6 = CoD.CACUtility.IsBonusCardEquippedByName(registerVal4, "bonuscard_two_tacticals")
	local registerVal7, registerVal8, registerVal9 = pairs(CoD.CACUtility.emptyImageSlotList)
	for index10,value11 in registerVal7, registerVal8, registerVal9 do
		local registerVal12 = Engine.GetModel(arg2, index10)
		if registerVal12 then
			if index10 == "secondary" and registerVal5 == true then
			else
				local registerVal13 = LUI.startswith(index10, "primarygadget")
				if registerVal13 and registerVal6 == true then
				end
			end
			local registerVal14 = Engine.CreateModel(registerVal12, "emptyImage")
			Engine.SetModelValue(registerVal14, CoD.CACUtility.emptyImageSlotList.secondarygadget)
		end
	end
end

CoD.CACUtility["UpdateEmptySlotImages"] = __FUNC_17346_
local function __FUNC_176EE_(arg0, arg1, arg2, arg3)
	local registerVal4 = CoD.PrestigeUtility.GetPermanentUnlockMode()
	Engine.GetCustomClassModel(arg0, arg1, arg2, registerVal4, arg3)
	local registerVal6 = Engine.CreateModel(arg2, "classNum")
	Engine.SetModelValue(registerVal6, arg1)
	if CoD.perController[arg0].isPreset == true then
		local registerVal5 = Engine.GetModel(arg2, "customClassName")
		registerVal6 = Engine.GetModelValue(registerVal5)
		Engine.SetModelValue(registerVal5, Engine.Localize(registerVal6))
	end
	registerVal5 = IsCampaign()
	if registerVal5 and 5.000000 <= arg1 and arg1 <= 8.000000 then
		registerVal5 = Engine.GetModel(arg2, "customClassName")
		Engine.SetModelValue(registerVal5, Engine.Localize("CPUI_FIELD_OPS_KIT"))
	end
	if 10.000000 <= arg1 then
		registerVal6 = Engine.CreateModel(arg2, "defaultClassName")
		Engine.SetModelValue(registerVal6, Engine.GetDefaultClassName((arg1 - 10.000000)))
	end
	CoD.CACUtility.UpdateHeaderNames(arg0, arg1, arg2, arg3)
	local function __FUNC_182AF_(arg1)
		local registerVal1 = Engine.GetModel(arg2, (arg1 .. "gunsmithvariant"))
		if registerVal1 then
			local registerVal2 = Engine.CreateModel(arg2, (arg1 .. ".variantName"))
			local registerVal3 = Engine.GetModelValue(Engine.GetModel(registerVal1, "itemIndex"))
			if CoD.CACUtility.EmptyItemIndex < registerVal3 then
				local registerVal4 = CoD.CraftUtility.Gunsmith.GetVariantIndexFromCACVaraintIndex(arg0, registerVal3)
				if registerVal4 then
					Engine.SetModelValue(registerVal2, registerVal4.variantName)
				else
					Engine.SetModelValue(registerVal2, "")
				end
			end
		end
	end

	registerVal6 = Engine.IsInGame()
	if not registerVal6 then
		__FUNC_182AF_("primary")
		__FUNC_182AF_("secondary")
	end
	local function __FUNC_1854F_(arg0)
		local registerVal1 = Engine.GetModel(arg2, arg0)
		if not registerVal1 then
			return 
		end
		local registerVal2 = Engine.GetModel(registerVal1, "image")
		local registerVal3 = Engine.GetModelValue(registerVal2)
		if registerVal2 and registerVal3 and registerVal3 ~= CoD.CACUtility.DefaultLoadoutImage then
			Engine.SetModelValue(registerVal2, registerVal3)
		end
	end

	__FUNC_1854F_("primary")
	__FUNC_1854F_("secondary")
	local function __FUNC_186C1_(arg3, arg4, arg5)
		local registerVal3, registerVal4, registerVal5 = ipairs(arg4)
		for index6,value7 in registerVal3, registerVal4, registerVal5 do
			local registerVal8 = Engine.GetModelValue(Engine.GetModel(arg2, (value7 .. ".itemIndex")))
			local registerVal9 = Engine.GetModelValue(Engine.GetModel(arg2, (arg5[index6] .. ".itemIndex")))
			local registerVal10 = Engine.GetModelValue(Engine.GetModel(arg2, (arg3 .. ".itemIndex")))
			local registerVal11 = Engine.GetWeaponString(arg0, arg1, arg3)
			local registerVal12 = Engine.GetItemAttachment(registerVal10, registerVal8)
			local registerVal13 = Engine.GetAttachmentCosmeticVariant(registerVal11, registerVal12)
			if CoD.CACUtility.EmptyItemIndex < registerVal8 and CoD.CACUtility.EmptyItemIndex < registerVal9 and registerVal13 then
				local registerVal14 = Engine.GetModel(arg2, (value7 .. ".image"))
				Engine.SetModelValue(registerVal14, registerVal13.image)
				local registerVal15 = Engine.GetModel(arg2, (value7 .. "cosmeticvariant.image"))
				Engine.SetModelValue(registerVal15, registerVal13.image)
				local registerVal16 = Engine.GetModel(arg2, (value7 .. "cosmeticvariant.name"))
				Engine.SetModelValue(registerVal16, registerVal13.name)
			end
		end
	end

	__FUNC_186C1_("primary", CoD.CACUtility.PrimaryAttachmentSlotNameList, CoD.CACUtility.PrimaryAttachmentCVSlotNameList)
	__FUNC_186C1_("secondary", CoD.CACUtility.SecondaryAttachmentSlotNameList, CoD.CACUtility.SecondaryAttachmentCVSlotNameList)
	CoD.CACUtility.AddBigImagesToCustomClassModel(arg0, arg2, "primary", "_big")
	CoD.CACUtility.AddBigImagesToCustomClassModel(arg0, arg2, "secondary", "_big")
	CoD.CACUtility.AddBigImagesToCustomClassModel(arg0, arg2, "primarygadget", "_256")
	CoD.CACUtility.AddBigImagesToCustomClassModel(arg0, arg2, "secondarygadget", "_256")
	CoD.CACUtility.AddBigImagesToCustomClassModel(arg0, arg2, "specialgadget", "_256")
	DataSources.CustomClassMenu.updateWeaponAttachmentList(arg0, arg2, "primary", CoD.CACUtility.maxPrimaryAttachments)
	DataSources.CustomClassMenu.updateWeaponAttachmentList(arg0, arg2, "secondary", CoD.CACUtility.maxSecondaryAttachments)
	DataSources.CustomClassMenu.updateCustomSlotModel(arg2, "primarygadget", arg0)
	DataSources.CustomClassMenu.updateCustomSlotModel(arg2, "secondarygadget", arg0)
	CoD.CACUtility.UpdateGrenadeNames(arg0, arg1, arg2)
	CoD.CACUtility.UpdateEmptySlotImages(arg0, arg1, arg2)
	local registerVal8, registerVal9, registerVal10 = ipairs(CoD.CACUtility.loadoutSlotOrder)
	for index11,value12 in registerVal8, registerVal9, registerVal10 do
		local registerVal13 = Engine.GetModel(arg2, value12)
		local registerVal14 = Engine.CreateModel(registerVal13, "hintText")
		if registerVal13 and registerVal14 then
			local registerVal15, registerVal16, registerVal17, registerVal18 = CoD.CACUtility.GetCACSlotStatus(arg0, arg2, value12)
			if arg1 or registerVal17 == "" then
				Engine.SetModelValue(registerVal14, "")
			else
				if registerVal18 ~= nil then
					Engine.SetModelValue(registerVal14, Engine.Localize(registerVal17, registerVal18))
				else
					Engine.SetModelValue(registerVal14, Engine.Localize(registerVal17))
				end
			end
		end
	end
	registerVal9 = Engine.CreateModel(arg2, "disabled")
	Engine.SetModelValue(registerVal9, CoD.BlackMarketUtility.ClassContainsLockedItems(arg0, arg2))
end

CoD.CACUtility["GetCustomClassModel"] = __FUNC_176EE_
local function __FUNC_18AA5_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg0)
	local function __FUNC_18C36_(arg0, arg1, arg2)
		local registerVal3 = Engine.GetModelForController(arg0)
		for index4=0.000000, (#CoD.CACUtility.weaponOptionGroupNames - 1.000000), 1.000000 do
			local registerVal10 = Engine.GetModel(arg1, ((arg2 .. CoD.CACUtility.weaponOptionGroupNames[index4]) .. ".itemIndex"))
			local registerVal11 = Engine.GetModelValue(registerVal10)
			local registerVal12 = Engine.GetModel(registerVal3, ("WeaponOptions." .. CoD.CACUtility.weaponOptionGroupNames[index4] .. "." .. registerVal11))
			local registerVal13 = Engine.GetModel(arg1, ((arg2 .. CoD.CACUtility.weaponOptionGroupNames[index4]) .. ".name"))
			local registerVal14 = Engine.GetModel(arg1, ((arg2 .. CoD.CACUtility.weaponOptionGroupNames[index4]) .. ".image"))
			if registerVal10 and registerVal12 and registerVal13 and registerVal14 then
				Engine.SetModelValue(registerVal13, Engine.GetModelValue(Engine.GetModel(registerVal12, "name")))
				Engine.SetModelValue(registerVal14, Engine.GetModelValue(Engine.GetModel(registerVal12, "image")))
			end
		end
	end

	__FUNC_18C36_(arg0, arg1, "primary")
	__FUNC_18C36_(arg0, arg1, "secondary")
	CoD.CACUtility.UpdateWeaponCustomizationCategoryList(arg0, arg1)
end

CoD.CACUtility["UpdateWeaponOptions"] = __FUNC_18AA5_
local function __FUNC_18F6D_(arg0, arg1)
	local function __FUNC_1905D_(arg0, arg1)
		local registerVal2, registerVal3, registerVal4 = pairs(arg1)
		for index5,value6 in registerVal2, registerVal3, registerVal4 do
			local registerVal8 = Engine.GetModel(arg0, value6)
			local registerVal9 = Engine.GetModel(arg0, (value6 .. "cosmeticvariant"))
			local registerVal10 = Engine.GetModel(registerVal9, "itemIndex")
			local registerVal11 = Engine.GetModel(registerVal8, "itemIndex")
			local registerVal12 = Engine.GetModelValue(registerVal10)
			local registerVal13 = Engine.GetModelValue(registerVal11)
			local registerVal14 = Engine.GetModel(registerVal9, "name")
			local registerVal15 = Engine.GetModel(registerVal9, "image")
			local registerVal16 = Engine.GetModel(registerVal9, "ref")
			local registerVal17 = Engine.GetModel(registerVal8, "ref")
			local registerVal18 = Engine.GetModelValue(registerVal17)
			if registerVal9 and registerVal8 and registerVal10 and registerVal11 and 0.000000 < registerVal12 and 0.000000 < registerVal13 and registerVal14 and registerVal15 and registerVal16 and registerVal17 and CoD.WC_Category.ACV.attachmentTable[registerVal18] then
				if arg1 or not CoD.WC_Category.ACV.attachmentTable[registerVal18].variants[registerVal12].name then
				end
				Engine.SetModelValue(registerVal14, "")
				if arg1 or not CoD.WC_Category.ACV.attachmentTable[registerVal18].variants[registerVal12].image then
				end
				Engine.SetModelValue(registerVal15, "")
				Engine.SetModelValue(registerVal16, registerVal18)
			end
		end
	end

	__FUNC_1905D_(arg1, CoD.CACUtility.PrimaryAttachmentSlotNameList)
	__FUNC_1905D_(arg1, CoD.CACUtility.SecondaryAttachmentSlotNameList)
end

CoD.CACUtility["UpdateAttachmentCosmeticVariants"] = __FUNC_18F6D_
local function __FUNC_19456_(arg0, arg1)
	local registerVal2 = Engine.GetModelForController(arg0)
	local registerVal4 = Engine.GetModel(registerVal2, "WeaponCustomizationCategory")
	if registerVal4 then
		for index5=1.000000, CoD.CACUtility.maxWeaponCustomizationCategories, 1.000000 do
			local registerVal9 = Engine.GetModel(registerVal4, index5)
			local registerVal10 = Engine.GetModel(registerVal9, "type")
			if registerVal9 and registerVal10 then
				local registerVal11 = Engine.GetModelValue(registerVal10)
				if registerVal11 == "paintjob" then
					local registerVal12 = Engine.GetModel(arg1, (CoD.perController[arg0].weaponCategory .. "paintjobindex.itemIndex"))
					local registerVal13 = Engine.GetModelValue(registerVal12)
					local registerVal15 = Engine.GetModel(registerVal9, "paintjobIndex")
					Engine.SetModelValue(registerVal15, registerVal13)
					local registerVal14 = Engine.GetModel(arg1, (CoD.perController[arg0].weaponCategory .. "paintjobslot.itemIndex"))
					registerVal15 = Engine.GetModelValue(registerVal14)
					local registerVal17 = Engine.GetModel(registerVal9, "paintjobSlot")
					Engine.SetModelValue(registerVal17, registerVal15)
					registerVal17 = Engine.GetModel(registerVal9, "paintjobSlotAndIndex")
					Engine.SetModelValue(registerVal17, (registerVal15 .. " " .. registerVal13))
				else
					registerVal12 = Engine.GetModel(arg1, (CoD.perController[arg0].weaponCategory .. registerVal11))
					if registerVal12 then
						registerVal13 = Engine.GetModelValue(Engine.GetModel(registerVal12, "name"))
						registerVal14 = Engine.GetModelValue(Engine.GetModel(registerVal12, "image"))
						local registerVal16 = Engine.GetModel(registerVal9, "name")
						Engine.SetModelValue(registerVal16, registerVal13)
						registerVal16 = Engine.GetModel(registerVal9, "image")
						Engine.SetModelValue(registerVal16, registerVal14)
					end
				end
			end
		end
	end
end

CoD.CACUtility["UpdateWeaponCustomizationCategoryList"] = __FUNC_19456_
local function __FUNC_19977_(arg0)
	local registerVal1 = Engine.GetCustomClassCount(arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal3, "CustomClassList")
	for index3=1.000000, registerVal1, 1.000000 do
		local registerVal8 = Engine.GetModel(registerVal2, ("class" .. index3))
		CoD.CACUtility.GetCustomClassModel(arg0, (index3 - 1.000000), registerVal8)
	end
end

CoD.CACUtility["UpdateAllClasses"] = __FUNC_19977_
local function __FUNC_19B19_(arg0, arg1, arg2)
	if not arg1 then
	end
	local registerVal3 = Engine.GetModel(CoD.perController[arg0].classModel, (arg2 .. "camo.itemIndex"))
	local registerVal4 = Engine.GetModel(CoD.perController[arg0].classModel, (arg2 .. "reticle.itemIndex"))
	local registerVal5 = Engine.GetModel(CoD.perController[arg0].classModel, (arg2 .. "paintjobslot.itemIndex"))
	local registerVal6 = Engine.GetModel(CoD.perController[arg0].classModel, (arg2 .. "paintjobindex.itemIndex"))
	if registerVal3 then
		local registerVal9 = Engine.GetModelValue(registerVal3)
	end
	if registerVal4 then
		registerVal9 = Engine.GetModelValue(registerVal4)
	end
	registerVal9 = IsLive()
	if registerVal9 then
		if registerVal5 and registerVal6 then
			registerVal9 = Engine.GetModelValue(registerVal5)
			local registerVal10 = Engine.GetModelValue(registerVal6)
			Engine.SetupPaintjobData(arg0, registerVal9, registerVal10)
		else
			Engine.ClearPaintjobLayerData()
		end
	end
	return (registerVal9 .. "," .. registerVal9 .. ",1")
end

CoD.CACUtility["GetWeaponOptionsFromClass"] = __FUNC_19B19_
local function __FUNC_19E46_()
	return ("0" .. "," .. "0" .. ",0")
end

CoD.CACUtility["EmptyWeaponOptions"] = __FUNC_19E46_
local function __FUNC_19EB2_(arg0, arg1, arg2)
	if not arg1 then
	end
	local registerVal4 = CoD.CACUtility.GetAttachmentVariantForAttachmentList(CoD.perController[arg0].classModel, arg2)
	for index5=1.000000, #arg2, 1.000000 do
	end
	return (("" .. registerVal4[index5].ref .. ",") .. registerVal4[index5].attachmentIndex .. ",")
end

CoD.CACUtility["GetAttachmentCosmeticVariantsFromClass"] = __FUNC_19EB2_
local function __FUNC_1A053_(arg0, arg1, arg2, arg3)
	if not arg1 then
	end
	local registerVal5 = CoD.CACUtility.GetAttachmentVariantForAttachmentList(CoD.perController[arg0].classModel, arg2)
	for index6=1.000000, #arg2, 1.000000 do
		if registerVal5[index6].ref ~= arg3 then
		end
	end
	return (("" .. registerVal5[index6].ref .. ",") .. registerVal5[index6].attachmentIndex .. ",")
end

CoD.CACUtility["GetACVariantsFromClassExcludeAttachment"] = __FUNC_1A053_
local function __FUNC_1A213_(arg0, arg1)
	if arg1.camoIndex then
	end
	if arg1.reticleIndex then
	end
	if arg1.paintjobSlot and arg1.paintjobIndex then
		Engine.SetupPaintjobData(arg0, arg1.paintjobSlot, arg1.paintjobIndex)
	end
	return (arg1.camoIndex .. "," .. arg1.reticleIndex .. ",1")
end

CoD.CACUtility["GetWeaponOptionsFromVariantInfo"] = __FUNC_1A213_
local function __FUNC_1A397_(arg0)
	local registerVal2, registerVal3, registerVal4 = ipairs(arg0.attachmentVariant)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		if CoD.CACUtility.EmptyItemIndex < arg0.attachment[index5] then
			local registerVal8 = Engine.GetAttachmentRefByIndex(arg0.attachment[index5])
		end
	end
	return (("" .. registerVal8 .. ",") .. value6 .. ",")
end

CoD.CACUtility["GetAttachmentCosmeticVariantsFromVariantInfo"] = __FUNC_1A397_
local function __FUNC_1A51A_(arg0)
	local registerVal2 = LUI.startswith(arg0, "specialty")
	registerVal2 = LUI.startswith(arg0, "bonuscard")
	if arg0 ~= "primary" and arg0 ~= "secondary" and arg0 ~= "primarygadget" and arg0 ~= "secondarygadget" and arg0 ~= "cybercore" and not nil or registerVal2 then
	else
		registerVal2 = LUI.startswith(arg0, "primaryattachment")
		if registerVal2 then
		else
			registerVal2 = LUI.startswith(arg0, "secondaryattachment")
			if registerVal2 then
			else
				registerVal2 = LUI.startswith(arg0, "primarygadgetattachment")
				if registerVal2 then
				else
					registerVal2 = LUI.startswith(arg0, "secondarygadgetattachment")
					if registerVal2 then
					else
						registerVal2 = LUI.startswith(arg0, "cybercom_")
						if registerVal2 then
						end
					end
				end
			end
		end
	end
	return "cybercom"
end

CoD.CACUtility["GetBaseWeaponLoadoutSlotName"] = __FUNC_1A51A_
local function __FUNC_1A7EB_(arg0, arg1)
	local registerVal5 = arg1:getModel(arg0, "weaponSlot")
	if registerVal5 then
		local registerVal6 = Engine.GetModelValue(registerVal5)
	end
	if registerVal6 then
		registerVal6 = LUI.startswith(registerVal6, "primaryattachment")
		registerVal6 = LUI.startswith(registerVal6, "secondaryattachment")
		if not arg1 or registerVal6 then
			registerVal6 = Engine.GetModel(CoD.perController[arg0].classModel, (CoD.perController[arg0].weaponSlot .. ".itemIndex"))
			if CoD.perController[arg0].weaponSlot and registerVal6 then
				return Engine.GetModelValue(registerVal6)
			end
		end
	end
	if arg1 then
		registerVal6 = arg1:getModel(arg0, "itemIndex")
		if registerVal6 then
			return Engine.GetModelValue(registerVal6)
		end
		local registerVal7 = arg1:getModel(arg0, "weaponIndex")
		if registerVal7 then
			return Engine.GetModelValue(registerVal7)
		end
	end
	return CoD.CACUtility.EmptyItemIndex
end

CoD.CACUtility["GetGunLevelWeaponIndex"] = __FUNC_1A7EB_
local function __FUNC_1AB68_(arg0, arg1, arg2)
	if arg1 == "secondary" then
	end
	local registerVal5, registerVal6, registerVal7 = ipairs(CoD.CACUtility.SecondaryAttachmentSlotNameList)
	for index8,value9 in registerVal5, registerVal6, registerVal7 do
		local registerVal10 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg0].classModel, (value9 .. ".itemIndex")))
		if registerVal10 == arg2 then
			return index8
		end
	end
end

CoD.CACUtility["AttachmentEquippedInCACSlot"] = __FUNC_1AB68_
local function __FUNC_1AD64_(arg0, arg1)
	local function __FUNC_1AED6_(arg2, arg3)
		local registerVal2 = Engine.GetModelValue(Engine.GetModel(arg1, (arg2 .. "gunsmithvariant.itemIndex")))
		if registerVal2 ~= nil and CoD.CACUtility.EmptyItemIndex < registerVal2 then
			local registerVal3 = CoD.CraftUtility.Gunsmith.GetVariantByIndex(arg0, (registerVal2 - 1.000000))
			local registerVal5 = Engine.GetModelValue(Engine.GetModel(arg1, (arg2 .. ".itemIndex")))
			local registerVal6, registerVal7, registerVal8 = ipairs(registerVal3.attachment)
			for index9,value10 in registerVal6, registerVal7, registerVal8 do
				local registerVal12 = Engine.GetAttachmentIndexByAttachmentTableIndex(registerVal3.weaponIndex, value10)
				if CoD.CACUtility.EmptyItemIndex < registerVal12 then
					local registerVal13, registerVal14, registerVal15 = ipairs(arg3)
					for index16,value17 in registerVal13, registerVal14, registerVal15 do
						local registerVal18 = Engine.GetModelValue(Engine.GetModel(arg1, (value17 .. ".itemIndex")))
						if registerVal12 == registerVal18 then
						else
						end
					end
					if not true then
					else
					else
					end
				end
			end
			if true then
				CoD.SetClassItem(arg0, CoD.perController[arg0].classNum, (arg2 .. "gunsmithvariant"), CoD.CACUtility.EmptyItemIndex)
			end
		end
	end

	__FUNC_1AED6_("primary", CoD.CACUtility.PrimaryAttachmentSlotNameList)
	__FUNC_1AED6_("secondary", CoD.CACUtility.SecondaryAttachmentSlotNameList)
end

CoD.CACUtility["ValidateWeaponVariantForClass"] = __FUNC_1AD64_
local function __FUNC_1B29C_(arg0)
	if not CoD.CACUtility.unlockTokenModel[arg0] then
		local registerVal3 = Engine.GetModelForController(arg0)
		local registerVal2 = Engine.CreateModel(registerVal3, "UnlockTokenInfo")
		CoD.CACUtility.unlockTokenModel[arg0] = registerVal2
		Engine.CreateModel(CoD.CACUtility.unlockTokenModel[arg0], "itemIndex")
		local registerVal1 = Engine.CreateModel(CoD.CACUtility.unlockTokenModel[arg0], "xpBarInfo")
		Engine.CreateModel(registerVal1, "rankXP")
		Engine.CreateModel(registerVal1, "xpEarned")
		Engine.CreateModel(registerVal1, "xpNeeded")
		Engine.CreateModel(registerVal1, "currLevel")
		Engine.CreateModel(registerVal1, "currLevelIcon")
		Engine.CreateModel(registerVal1, "nextLevel")
		Engine.CreateModel(registerVal1, "nextLevelIcon")
	end
	registerVal2 = Engine.GetModelForController(arg0)
	registerVal1 = Engine.GetModel(registerVal2, "unlockTokensCount")
	if not CoD.CCUtility.customizationMode then
		local registerVal4 = CoD.PrestigeUtility.GetPermanentUnlockMode()
	end
	Engine.SetModelValue(registerVal1, Engine.GetCurrentTokens(arg0, "weapon_smg", registerVal4))
end

CoD.CACUtility["CreateUnlockTokenModels"] = __FUNC_1B29C_
local function __FUNC_1B75F_(arg0, arg1)
	local registerVal3 = Engine.GetItemImage(arg0, arg1)
	return ("p7_perk_" .. registerVal3)
end

CoD.CACUtility["GetPerkXModel"] = __FUNC_1B75F_
local function __FUNC_1B7E8_(arg0, arg1)
	local registerVal3 = Engine.GetItemRef(arg0, arg1)
	return ("p7_" .. registerVal3)
end

CoD.CACUtility["GetBonuscardXModel"] = __FUNC_1B7E8_
local function __FUNC_1B86D_(arg0, arg1)
	local registerVal3 = Engine.GetItemImage(arg0, arg1)
	return ("p7_core_" .. registerVal3)
end

CoD.CACUtility["GetCybercoreXModel"] = __FUNC_1B86D_
local function __FUNC_1B8F8_(arg0, arg1)
	local registerVal2 = DataSources.Unlockables:getCurrentFilterItem()
	if arg0.weaponList.activeWidget and arg0.lastSelectionTable and arg0.lastSelectionTable[registerVal2] then
		arg0.lastSelectionTable[registerVal2] = (arg0.weaponList.activeWidget.gridInfoTable.zeroBasedIndex + 1.000000)
	end
end

CoD.CACUtility["WeaponSelectFocusOnLastSelectedWeapon"] = __FUNC_1B8F8_
local function __FUNC_1BA96_(arg0, arg1, arg2)
	if not arg1 then
		return 
	end
	if not arg1.filter then
		local registerVal4 = DataSources.Unlockables:getCurrentFilterItem()
	end
	DataSources.Unlockables.setCurrentFilterItem(registerVal4)
	arg0.weaponList:updateDataSource(true)
	if not arg0.performingSetup then
		if arg0.lastSelectionTable and arg0.lastSelectionTable[registerVal4] then
		end
		local registerVal5 = arg0.weaponList:getItemAt(arg0.lastSelectionTable[registerVal4])
		if registerVal5 then
			arg0.weaponList:setActiveItem(registerVal5, 0.000000, true, true)
		end
	end
end

CoD.CACUtility["WeaponSelectFocusOnLastSelectedCategory"] = __FUNC_1BA96_
local function __FUNC_1BCED_(arg0)
	local registerVal1 = Engine.CurrentSessionMode()
	local registerVal2 = Engine.GetEquippedHero(arg0, registerVal1)
	local registerVal3 = Engine.GetEquippedHeroInfo(arg0, registerVal1)
	local registerVal4 = Engine.GetLoadoutTypeForHero(arg0, registerVal2)
	if registerVal3 and registerVal2 and registerVal4 then
		local registerVal6 = Engine.GetModelForController(arg0)
		local registerVal5 = Engine.GetModel(registerVal6, "CACMenu")
		if registerVal5 then
			if registerVal4 == Enum.heroLoadoutTypes_e.HERO_LOADOUT_TYPE_GADGET then
			end
			local registerVal8 = Engine.GetModel(registerVal5, "currentHeroImage")
			Engine.SetModelValue(registerVal8, registerVal3.defaultHeroRenderAbility)
			registerVal8 = Engine.GetModel(registerVal5, "currentHeroName")
			Engine.SetModelValue(registerVal8, registerVal3.displayName)
		end
		registerVal6 = Engine.GetLoadoutInfoForHero(registerVal1, registerVal2, registerVal4)
		if registerVal6 then
			registerVal8 = Engine.GetModel(registerVal5, "currentHeroLoadout")
			Engine.SetModelValue(registerVal8, Engine.Localize(registerVal6.itemName))
		end
	end
end

CoD.CACUtility["SetCACMenuHeroInfoModels"] = __FUNC_1BCED_
local function __FUNC_1C0FE_(arg0, arg1, arg2, arg3)
	local registerVal5 = Engine.GetModelForController(arg0)
	local registerVal4 = Engine.GetModel(registerVal5, "CustomClassList")
	local registerVal6 = Engine.GetCustomClassCount(arg0)
	for index5=1.000000, registerVal6, 1.000000 do
		local registerVal10 = Engine.GetModel(registerVal4, ("class" .. index5))
		local registerVal11 = CoD.CACUtility.GetMutuallyExclusiveSlotName(arg1, arg0, arg2, registerVal10)
		local function __FUNC_1C318_(arg1)
			local registerVal1 = Engine.GetModel(registerVal10, arg1)
			local registerVal2 = Engine.GetModel(registerVal1, "itemIndex")
			local registerVal3 = Engine.GetModelValue(registerVal2)
			if arg1 ~= nil and registerVal1 and registerVal2 and registerVal3 == arg2 then
				CoD.SetClassItem(arg0, (index5 - 1.000000), arg1, arg3)
			end
		end

		__FUNC_1C318_(arg1)
		for index13=1.000000, #arg1, 1.000000 do
			if registerVal11[index13] and registerVal11[index13] ~= "" then
				__FUNC_1C318_(registerVal11[index13])
			end
		end
	end
end

CoD.CACUtility["UpgradeEquippedCACItems"] = __FUNC_1C0FE_
local function __FUNC_1C44C_(arg0, arg1)
	if arg0 ~= true and CoD.CACUtility.Items then
		return unpack(CoD.CACUtility.Items)
	end
	local registerVal2 = Engine.GetHeroList(Enum.eModes.MODE_MULTIPLAYER)
	local registerVal5, registerVal6, registerVal7 = ipairs(registerVal2)
	for index8,value9 in registerVal5, registerVal6, registerVal7 do
		local registerVal10 = CoDShared.IsLootHero(value9)
		if registerVal10 then
			registerVal10 = Engine.GetLoadoutInfoForHero(Enum.eModes.MODE_MULTIPLAYER, value9.bodyIndex, Enum.heroLoadoutTypes_e.HERO_LOADOUT_TYPE_WEAPON)
			if registerVal10 then
			end
			local registerVal11 = Engine.GetLoadoutInfoForHero(Enum.eModes.MODE_MULTIPLAYER, value9.bodyIndex, Enum.heroLoadoutTypes_e.HERO_LOADOUT_TYPE_GADGET)
		else
		end
	end
	for index6=0.000000, 43.000000, 1.000000 do
		registerVal11 = Engine.IsAttachmentRestrictedForAllWeapons(index6)
		if registerVal11 == true then
		end
		{}.index = index6
		local registerVal12 = Engine.GetAttachmentDescByAttachmentIndex(index6)
		{}.desc = registerVal12
		registerVal12 = Engine.GetAttachmentNameByIndex(index6)
		{}.name = registerVal12
		registerVal12 = Engine.GetAttachmentImageByIndex(index6)
		{}.image = registerVal12
		registerVal12 = Engine.IsOpticByAttachmentIndex(index6)
		{}.isOptic = registerVal12
		{}.restrictionState = Enum.ItemRestrictionState.ITEM_RESTRICTION_STATE_RESTRICTED
		{}.items = {}
		{}[index6] = {}
	end
	registerVal7 = CoD.PrestigeUtility.GetPermanentUnlockMode()
	for index8=0.000000, 255.000000, 1.000000 do
		if CoD.statsTable then
			registerVal12 = CoD.CACUtility.GetIdForItemRef(index8)
		end
		local registerVal13 = Engine.ItemIndexValid(index8, registerVal7)
		registerVal13 = CoD.BlackMarketUtility.IsUnreleasedBlackMarketItem(registerVal12)
		registerVal13 = Engine.GetUnlockableInfoByIndex(index8, registerVal7)
		if index8 ~= registerVal10.itemIndex and index8 ~= registerVal11.itemIndex and registerVal13 and not registerVal13 and 0.000000 <= registerVal13.allocation then
			{}.index = index8
			{}.name = registerVal13.name
			{}.image = registerVal13.image
			{}.groupIndex = registerVal13.groupIndex
			{}.groupName = registerVal13.group
			{}.loadoutSlot = registerVal13.loadoutSlot
			{}.loadoutSlotIndex = registerVal13.loadoutSlotIndex
			{}.unlockLevel = registerVal13.unlockLevel
			{}.momentum = registerVal13.momentum
			{}.restrictionState = registerVal13.restrictionState
			{}.allocation = registerVal13.allocation
			local registerVal15 = LuaUtils.StartsWith({}.loadoutSlot, "hero")
			if not arg1 or {}.loadoutSlot == "specialgadget" then
				{}.image = registerVal13.image
			end
			registerVal15 = LuaUtils.StartsWith({}.loadoutSlot, "killstreak")
			if registerVal15 then
				{}.image = (registerVal13.image .. "_menu")
			end
			if {}.loadoutSlot == "primary" or {}.loadoutSlot == "secondary" then
				registerVal15 = Engine.GetNumAttachments(index8)
				if 0.000000 < registerVal15 then
					{}.attachments = {}
					for index16=0.000000, (registerVal15 - 1.000000), 1.000000 do
						local registerVal20 = Engine.GetItemAttachment(index8, index16)
						if CoD.CACUtility.EmptyItemIndex < registerVal20 then
							local registerVal22 = {}
							registerVal22.attachmentIndex = registerVal20
							local registerVal23 = Engine.GetAttachmentRestrictionState(registerVal20, index8, false)
							registerVal22.restrictionState = registerVal23
							{}.attachments[registerVal20] = registerVal22
							registerVal23 = {}
							registerVal23.itemIndex = index8
							table.insert({}[registerVal20].items, registerVal23)
						end
					end
				end
			end
			{}[index8] = {}
		end
	end
	if arg1 == true then
		local function __FUNC_1D1C5_(arg0, arg1)
			if {}[arg0].isOptic and {}[arg1].isOptic then
				local registerVal2 = Engine.Localize({}[arg0].name)
				local registerVal3 = Engine.Localize({}[arg1].name)
				if registerVal2 >= registerVal3 then
				end
				return true
			else
				if not arg1 or {}[arg1].isOptic then
					return {}[arg0].isOptic
				else
					registerVal2 = Engine.Localize({}[arg0].name)
					registerVal3 = Engine.Localize({}[arg1].name)
					if registerVal2 >= registerVal3 then
					end
					return true
				end
			end
		end

		registerVal11, registerVal12, registerVal13 = LUI.IterateTableBySortedKeys({}, __FUNC_1D1C5_, nil)
		for index14,value15 in registerVal11, registerVal12, registerVal13 do
			{}[1.000000] = value15
		end
		local function __FUNC_1D3D1_(arg0, arg1)
			local registerVal2 = LuaUtils.StartsWith({}[arg0].loadoutSlot, "hero")
			registerVal2 = LuaUtils.StartsWith({}[arg1].loadoutSlot, "hero")
			if not registerVal2 and {}[arg0].loadoutSlot ~= "specialgadget" and not arg1 or {}[arg1].loadoutSlot == "specialgadget" then
				local registerVal6, registerVal7, registerVal8 = ipairs(registerVal2)
				for index9,value10 in registerVal6, registerVal7, registerVal8 do
					local registerVal12 = Engine.CurrentSessionMode()
					local registerVal11 = Engine.GetLoadoutItemIndexForHero(registerVal12, (index9 - 1.000000), Enum.heroLoadoutTypes_e.HERO_LOADOUT_TYPE_WEAPON)
					local registerVal13 = Engine.CurrentSessionMode()
					registerVal12 = Engine.GetLoadoutItemIndexForHero(registerVal13, (index9 - 1.000000), Enum.heroLoadoutTypes_e.HERO_LOADOUT_TYPE_GADGET)
					if {}[arg0].index == registerVal11 then
					else
						if {}[arg0].index == registerVal12 then
						end
					end
					if {}[arg1].index == registerVal11 then
					else
						if {}[arg1].index == registerVal12 then
						end
					end
				end
				if index9 == index9 then
					if Enum.heroLoadoutTypes_e.HERO_LOADOUT_TYPE_GADGET >= Enum.heroLoadoutTypes_e.HERO_LOADOUT_TYPE_GADGET then
					end
					return true
				else
					if index9 >= index9 then
					end
					return true
				end
			end
			registerVal2 = LUI.startswith({}[arg0].loadoutSlot, "killstreak")
			registerVal2 = LUI.startswith({}[arg1].loadoutSlot, "killstreak")
			if not arg1 or registerVal2 then
				if {}[arg0].momentum >= {}[arg1].momentum then
				end
				return true
			end
			if {}[arg0].groupIndex ~= {}[arg1].groupIndex then
				if {}[arg0].groupIndex >= {}[arg1].groupIndex then
				end
				return true
			end
			if {}[arg0].loadoutSlot == {}[arg1].loadoutSlot then
				registerVal2 = Engine.Localize({}[arg0].name)
				local registerVal3 = Engine.Localize({}[arg1].name)
				if registerVal2 >= registerVal3 then
				end
				return true
			end
			registerVal2 = Engine.Localize({}[arg0].loadoutSlot)
			registerVal3 = Engine.Localize({}[arg1].loadoutSlot)
			if registerVal2 >= registerVal3 then
			end
			return true
		end

		registerVal13, registerVal14, registerVal15 = LUI.IterateTableBySortedKeys({}, __FUNC_1D3D1_, nil)
		for index16,value17 in registerVal13, registerVal14, registerVal15 do
			{}[1.000000] = value17
		end
		registerVal14 = {}
		registerVal14 = {{}, {}}
		CoD.CACUtility.Items = registerVal14
		return unpack(CoD.CACUtility.Items)
	end
	local registerVal9 = {}
	registerVal9 = {{}, {}}
	CoD.CACUtility.Items = registerVal9
	return unpack(CoD.CACUtility.Items)
end

CoD.CACUtility["GetAllItems"] = __FUNC_1C44C_
local function __FUNC_1DB4D_(arg0, arg1)
	{}.weapons = {}
	{}.primaryAttachments = {}
	{}.secondaryAttachments = {}
	{}.equipment = {}
	{}.perks = {}
	{}.wildcards = {}
	{}.other = {}
	{}.streaks = {}
	local registerVal3 = Engine.CurrentSessionMode()
	if registerVal3 == Enum.eModes.MODE_INVALID then
		return {}
	end
	registerVal3 = Engine.GetCustomClass(arg0, arg1)
	local registerVal4, registerVal5, registerVal6 = pairs(registerVal3)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		local registerVal9 = LUI.startswith(index7, "primaryattachment")
		if registerVal9 then
			registerVal9 = Engine.GetItemAttachment(registerVal3.primary, value8)
			table.insert({}.primaryAttachments, registerVal9)
		else
			registerVal9 = LUI.startswith(index7, "secondaryattachment")
			if registerVal9 then
				registerVal9 = Engine.GetItemAttachment(registerVal3.secondary, value8)
				table.insert({}.secondaryAttachments, registerVal9)
			else
				registerVal9 = LUI.startswith(index7, "killstreak")
				if registerVal9 then
					{}.streaks[index7] = value8
				else
					registerVal9 = LUI.startswith(index7, "hero")
					if not arg1 or index7 == "specialgadget" then
						{}.heroItem = value8
					else
						registerVal9 = LUI.startswith(index7, "specialty")
						if registerVal9 then
							{}.perks[index7] = value8
						else
							registerVal9 = LUI.startswith(index7, "bonuscard")
							if registerVal9 then
								{}.wildcards[index7] = value8
							else
								if index7 == "primary" or index7 == "secondary" then
									{}.weapons[index7] = value8
								else
									if index7 == "primarygadget" or index7 == "secondarygadget" then
										{}.equipment[index7] = value8
									else
										{}.other[index7] = value8
									end
								end
							end
						end
					end
				end
			end
		end
	end
	return {}
end

CoD.CACUtility["GetLoadout"] = __FUNC_1DB4D_
local function __FUNC_1E0C3_(arg0)
	{}.classes = {}
	local registerVal2 = Engine.GetCustomClassCount(arg0)
	for index3=0.000000, (registerVal2 - 1.000000), 1.000000 do
		local registerVal7 = CoD.CACUtility.GetLoadout(arg0, index3)
		if {}.streaks == nil then
			{}.streaks = registerVal7.streaks
		end
		if {}.heroItem == nil then
			{}.heroItem = registerVal7.heroItem
		end
		table.insert({}.classes, registerVal7)
	end
	return {}
end

CoD.CACUtility["GetFullLoadout"] = __FUNC_1E0C3_
local function __FUNC_1E27C_(arg0, arg1)
	local registerVal2 = CoD.PrestigeUtility.GetPermanentUnlockMode()
	local registerVal5 = Engine.GetModelForController(arg0)
	local registerVal4 = Engine.GetModel(registerVal5, "CustomClassList")
	registerVal5 = Engine.GetModel(registerVal4, ("class" .. (arg1 + 1.000000)))
	local registerVal6 = Engine.GetEquippedHero(arg0, registerVal2)
	local registerVal7 = Engine.GetModel(registerVal5, "primary")
	local registerVal8 = Engine.GetModel(registerVal7, "variantName")
	if registerVal8 then
		Engine.SetHeroShowcaseWeaponVariantName(arg0, registerVal2, registerVal6, Engine.GetModelValue(registerVal8))
	end
	local registerVal9 = CoD.CACUtility.GetItemEquippedInSlot("primary", arg0, registerVal5)
	if CoD.CACUtility.EmptyItemIndex < registerVal9 then
		Engine.SetHeroShowcaseWeaponAttribute(arg0, registerVal2, registerVal6, "weaponIndex", registerVal9)
	end
	for index10=1.000000, CoD.CACUtility.maxPrimaryAttachments, 1.000000 do
		local registerVal15 = CoD.CACUtility.GetItemEquippedInSlot(("primaryattachment" .. index10), arg0, registerVal5)
		if CoD.CACUtility.EmptyItemIndex < registerVal15 then
			Engine.SetHeroShowcaseWeaponAttribute(arg0, registerVal2, registerVal6, "attachment", registerVal15, (index10 - 1.000000))
		end
	end
	local registerVal10 = CoD.CACUtility.GetAttachmentVariantForAttachmentList(registerVal5, "primary")
	for index11=1.000000, #"primary", 1.000000 do
		Engine.SetHeroShowcaseWeaponAttribute(arg0, registerVal2, registerVal6, "attachmentVariant", registerVal10[index11].attachmentIndex, (index11 - 1.000000))
	end
	local registerVal11 = CoD.CACUtility.GetItemEquippedInSlot("primaryCamo", arg0, registerVal5)
	Engine.SetHeroShowcaseWeaponAttribute(arg0, registerVal2, registerVal6, "camoIndex", registerVal11)
	local registerVal12 = CoD.CACUtility.GetItemEquippedInSlot("primarypaintjobslot", arg0, registerVal5)
	Engine.SetHeroShowcaseWeaponAttribute(arg0, registerVal2, registerVal6, "paintjobSlot", registerVal12)
	local registerVal13 = CoD.CACUtility.GetItemEquippedInSlot("primarypaintjobindex", arg0, registerVal5)
	Engine.SetHeroShowcaseWeaponAttribute(arg0, registerVal2, registerVal6, "paintjobIndex", registerVal13)
	MarkCACPaintshopDataDirty(nil, arg0)
end

CoD.CACUtility["SetShowcaseWeaponToClassPrimary"] = __FUNC_1E27C_
function AnyItemBanned(arg0)
	local registerVal1, registerVal2, registerVal3 = pairs(arg0)
	for index4,value5 in registerVal1, registerVal2, registerVal3 do
		local registerVal6 = Engine.IsItemIndexRestricted(value5, false)
		if registerVal6 then
			return true
		end
	end
	return false
end

function AnyAttachmentBanned(arg0, arg1)
	local registerVal2, registerVal3, registerVal4 = ipairs(arg1)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		local registerVal7 = Engine.IsAttachmentRestricted(value6, arg0, false)
		if registerVal7 == true then
			return true
		end
	end
	return false
end

local function __FUNC_1EAFA_(arg0)
	local registerVal1 = Engine.GetCustomClassCount(arg0)
	for index2=0.000000, (registerVal1 - 1.000000), 1.000000 do
		local registerVal6 = CoD.CACUtility.ClassContainsRestrictedItems(arg0, index2)
		if registerVal6 then
			return true
		end
	end
	return false
end

CoD.CACUtility["AnyClassContainsRestrictedItems"] = __FUNC_1EAFA_
local function __FUNC_1EC0E_(arg0)
	local registerVal1 = CoD.CACUtility.GetFullLoadout(arg0)
	return AnyItemBanned(registerVal1.streaks)
end

CoD.CACUtility["AnyEquippedScorestreaksBanned"] = __FUNC_1EC0E_
local function __FUNC_1ECD5_(arg0, arg1)
	local registerVal2 = CoD.CACUtility.GetLoadout(arg0, arg1)
	local registerVal3 = AnyItemBanned(registerVal2.weapons)
	if registerVal3 then
		return true
	end
	registerVal3 = AnyItemBanned(registerVal2.equipment)
	if registerVal3 then
		return true
	end
	registerVal3 = AnyItemBanned(registerVal2.perks)
	if registerVal3 then
		return true
	end
	registerVal3 = AnyItemBanned(registerVal2.wildcards)
	if registerVal3 then
		return true
	end
	registerVal3 = AnyAttachmentBanned(registerVal2.weapons.primary, registerVal2.primaryAttachments)
	if registerVal2.weapons.primary ~= nil and registerVal3 then
		return true
	end
	registerVal3 = AnyAttachmentBanned(registerVal2.weapons.secondary, registerVal2.secondaryAttachments)
	if registerVal2.weapons.secondary ~= nil and registerVal3 then
		return true
	end
	return false
end

CoD.CACUtility["ClassContainsRestrictedItems"] = __FUNC_1ECD5_
local function __FUNC_1EF86_()
	local registerVal1 = Engine.GetPregameItemVotes()
	local registerVal2, registerVal3, registerVal4 = ipairs(registerVal1)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		if value6.voteType == Enum.VoteType.VOTE_TYPE_BAN then
			table.insert({}, value6)
		end
	end
	registerVal2, registerVal3 = CoD.CACUtility.GetAllItems(true, true)
	registerVal4, registerVal5, registerVal6 = pairs(registerVal2)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		local registerVal9 = Engine.GetItemRestrictionState(value8.index)
		if registerVal9 == Enum.ItemRestrictionState.ITEM_RESTRICTION_STATE_RESTRICTED then
			local registerVal11 = {}
			registerVal11.itemType = Enum.VoteItemType.VOTE_ITEM_TYPE_ITEM
			registerVal11.itemIndex = value8.index
			registerVal11.itemGroup = -1.000000
			registerVal11.attachmentIndex = -1.000000
			registerVal11.voteType = Enum.VoteType.VOTE_TYPE_BAN
			table.insert({}, registerVal11)
		end
	end
	registerVal4, registerVal5, registerVal6 = pairs(registerVal3)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		registerVal9 = Engine.IsAttachmentRestrictedForAnyWeapon(value8.index)
		if registerVal9 == true then
			registerVal11 = {}
			registerVal11.itemType = Enum.VoteItemType.VOTE_ITEM_TYPE_ATTACHMENT
			registerVal11.itemIndex = value8.index
			registerVal11.itemGroup = -1.000000
			registerVal11.attachmentIndex = -1.000000
			registerVal11.voteType = Enum.VoteType.VOTE_TYPE_BAN
			table.insert({}, registerVal11)
		end
	end
	return {}
end

CoD.CACUtility["GetAllRestrictedItems"] = __FUNC_1EF86_
local function __FUNC_1F419_()
	local registerVal0 = CoD.CACUtility.GetAllRestrictedItems()
	local registerVal1, registerVal2, registerVal3 = ipairs(registerVal0)
	for index4,value5 in registerVal1, registerVal2, registerVal3 do
		if value5.voteType == Enum.VoteType.VOTE_TYPE_BAN then
			if value5.itemType == Enum.VoteItemType.VOTE_ITEM_TYPE_ITEM then
				local registerVal6 = Engine.GetUnlockableInfoByIndex(value5.itemIndex)
				local registerVal7 = LuaUtils.StartsWith(registerVal6.loadoutSlot, "hero")
				registerVal7 = LuaUtils.StartsWith(registerVal6.loadoutSlot, "killstreak")
				if not registerVal7 and not registerVal7 and registerVal6.loadoutSlot ~= "specialgadget" then
					return true
				else
					if value5.itemType == Enum.VoteItemType.VOTE_ITEM_TYPE_ATTACHMENT then
						return true
					else
						if value5.itemType == Enum.VoteItemType.VOTE_ITEM_TYPE_ITEM_ATTACHMENT then
							return true
						else
							if value5.itemType == Enum.VoteItemType.VOTE_ITEM_TYPE_ATTACHMENT_GROUP then
								return true
							end
						end
					end
				end
			end
		end
	end
	return false
end

CoD.CACUtility["AnyCACItemsBanned"] = __FUNC_1F419_
local function __FUNC_1F837_()
	local registerVal0 = CoD.CACUtility.GetAllRestrictedItems()
	local registerVal1, registerVal2, registerVal3 = ipairs(registerVal0)
	for index4,value5 in registerVal1, registerVal2, registerVal3 do
		local registerVal6 = Engine.GetUnlockableInfoByIndex(value5.itemIndex)
		local registerVal7 = LUI.startswith(registerVal6.loadoutSlot, "killstreak")
		if value5.voteType == Enum.VoteType.VOTE_TYPE_BAN and value5.itemType == Enum.VoteItemType.VOTE_ITEM_TYPE_ITEM and registerVal7 then
			return true
		end
	end
	return false
end

CoD.CACUtility["AnyStreaksBanned"] = __FUNC_1F837_
local function __FUNC_1FAC1_()
	local registerVal0, registerVal1 = CoD.CACUtility.GetAllItems(false, true)
	local registerVal2, registerVal3, registerVal4 = pairs(registerVal0)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		local registerVal7 = LuaUtils.StartsWith(value6.loadoutSlot, "hero")
		registerVal7 = Engine.IsItemIndexRestricted(value6.index, false)
		if registerVal7 and registerVal7 then
			return true
		end
	end
	return false
end

CoD.CACUtility["AnySpecialistBanned"] = __FUNC_1FAC1_
local function __FUNC_1FC60_(arg0)
	local registerVal1 = CoD.CACUtility.GetFullLoadout(arg0)
	if registerVal1.heroItem then
		return Engine.IsItemIndexRestricted(registerVal1.heroItem, false)
	end
	return false
end

CoD.CACUtility["EquippedSpecialistBanned"] = __FUNC_1FC60_
local function __FUNC_1FD6E_(arg0, arg1)
	if not arg0 then
		return false
	end
	if arg0 or arg1 <= 0.000000 then
		return false
	end
	local registerVal2 = CoD.PrestigeUtility.GetPermanentUnlockMode()
	local registerVal5 = {}
	local registerVal6 = Engine.GetItemIndexFromReference(CoD.CACUtility.bonuscards.primary_gunfighter, registerVal2)
	local registerVal7 = Engine.GetItemIndexFromReference(CoD.CACUtility.bonuscards.primary_gunfighter_2, registerVal2)
	Engine.GetItemIndexFromReference(CoD.CACUtility.bonuscards.primary_gunfighter_3, registerVal2)
	registerVal5 = {}
	if arg0 == CoD.CACUtility.loadoutSlotNames.secondaryWeapon then
		registerVal6 = Engine.GetUnlockableInfoByIndex(arg1, registerVal2)
		if registerVal6.loadoutSlot == CoD.CACUtility.loadoutSlotNames.primaryWeapon then
			registerVal7 = Engine.GetItemIndexFromReference(CoD.CACUtility.bonuscards.overkill, registerVal2)
		else
			if arg0 == CoD.CACUtility.loadoutSlotNames.primaryAttachment4 then
			else
				if arg0 == CoD.CACUtility.loadoutSlotNames.primaryAttachment5 then
				else
					if arg0 == CoD.CACUtility.loadoutSlotNames.primaryAttachment6 then
					else
						if arg0 ~= CoD.CACUtility.loadoutSlotNames.secondaryAttachment1 and arg0 ~= CoD.CACUtility.loadoutSlotNames.secondaryAttachment2 and arg0 ~= CoD.CACUtility.loadoutSlotNames.secondaryAttachment3 and arg0 ~= CoD.CACUtility.loadoutSlotNames.secondaryAttachment4 and arg0 == CoD.CACUtility.loadoutSlotNames.secondaryAttachment5 or arg0 == CoD.CACUtility.loadoutSlotNames.secondaryAttachment6 then
							registerVal6 = Engine.GetUnlockableInfoByIndex(arg1, registerVal2)
							if registerVal6.loadoutSlot == CoD.CACUtility.loadoutSlotNames.primaryWeapon then
								registerVal7 = Engine.GetItemIndexFromReference(CoD.CACUtility.bonuscards.overkill, registerVal2)
							else
								if arg0 ~= CoD.CACUtility.loadoutSlotNames.secondaryAttachment1 and arg0 ~= CoD.CACUtility.loadoutSlotNames.secondaryAttachment2 then
									registerVal7 = Engine.GetItemIndexFromReference(CoD.CACUtility.bonuscards.secondary_gunfighter, registerVal2)
								else
									if arg0 == CoD.CACUtility.loadoutSlotNames.specialty4 then
										registerVal6 = Engine.GetItemIndexFromReference(CoD.CACUtility.bonuscards.perk_1_greed, registerVal2)
									else
										if arg0 == CoD.CACUtility.loadoutSlotNames.specialty5 then
											registerVal6 = Engine.GetItemIndexFromReference(CoD.CACUtility.bonuscards.perk_2_greed, registerVal2)
										else
											if arg0 == CoD.CACUtility.loadoutSlotNames.specialty6 then
												registerVal6 = Engine.GetItemIndexFromReference(CoD.CACUtility.bonuscards.perk_3_greed, registerVal2)
											else
												if arg0 == CoD.CACUtility.loadoutSlotNames.primaryGadgetAttachment1 then
													registerVal6 = Engine.GetItemIndexFromReference(CoD.CACUtility.bonuscards.danger_close, registerVal2)
												else
													registerVal6 = Engine.GetUnlockableInfoByIndex(arg1, registerVal2)
													if arg0 == CoD.CACUtility.loadoutSlotNames.primaryGadget and registerVal6.loadoutSlot == CoD.CACUtility.loadoutSlotNames.secondaryGadget then
														registerVal7 = Engine.GetItemIndexFromReference(CoD.CACUtility.bonuscards.two_tacticals, registerVal2)
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
	if 0.000000 < 3.000000 then
		for index7=1.000000, #CoD.CACUtility.bonuscards.two_tacticals, 1.000000 do
			local registerVal11 = Engine.IsItemIndexRestricted(registerVal5[index7], false)
			if registerVal11 then
			end
		end
		if (3.000000 - 1.000000) >= 3.000000 then
		end
		return true
	end
	registerVal6 = Engine.IsItemIndexRestricted(registerVal7, false)
	if registerVal7 and registerVal6 then
		return true
	end
	return false
end

CoD.CACUtility["ItemSlotBannedByBonuscard"] = __FUNC_1FD6E_
local function __FUNC_209BE_(arg0, arg1)
	local registerVal3 = Engine.GetModel(arg1, "itemType")
	if arg1 and registerVal3 then
		local registerVal4 = Engine.GetModelValue(registerVal3)
		{}.itemType = registerVal4
		registerVal4 = Engine.GetModel(arg1, "itemIndex")
		if registerVal4 then
			local registerVal5 = Engine.GetModelValue(registerVal4)
			{}.itemIndex = registerVal5
		end
		registerVal5 = Engine.GetModel(arg1, "weaponIndex")
		local registerVal6 = Engine.GetModelValue(registerVal5)
		if registerVal5 and 0.000000 < registerVal6 then
			{}.itemIndex = registerVal6
		end
		registerVal6 = Engine.GetModel(arg1, "attachmentIndex")
		if registerVal6 then
			local registerVal7 = Engine.GetModelValue(registerVal6)
			{}.attachmentIndex = registerVal7
		end
		registerVal7 = Engine.GetModel(arg1, "itemGroup")
		if registerVal7 then
			local registerVal8 = Engine.GetModelValue(registerVal7)
			{}.itemGroup = registerVal8
		end
		registerVal8 = Engine.GetModel(arg1, "weaponSlot")
		if registerVal8 then
			local registerVal9 = Engine.GetModelValue(registerVal8)
			{}.weaponSlot = registerVal9
		end
		registerVal9 = Engine.GetModel(arg1, "loadoutSlot")
		if registerVal9 then
			local registerVal10 = Engine.GetModelValue(registerVal9)
			{}.loadoutSlot = registerVal10
		end
		registerVal10 = Engine.GetModel(arg1, "restrictionState")
		if registerVal10 then
			local registerVal11 = Engine.GetModelValue(registerVal10)
			{}.restrictionState = registerVal11
		end
		return {}
	end
end

CoD.CACUtility["GetItemInfoFromElementModel"] = __FUNC_209BE_
local function __FUNC_20CE7_(arg0)
	if CoD.isCampaign then
		local registerVal1 = Engine.GetModelForController(arg0)
		local registerVal3 = Engine.GetModelForController(arg0)
		local registerVal2 = Engine.GetModel(registerVal3, "CustomClassList.prepared")
		if registerVal2 then
			Engine.UnsubscribeAndFreeModel(registerVal2)
		end
		registerVal3 = Engine.GetModel(registerVal1, "CustomClassList")
		if registerVal3 then
			for index4=1.000000, 6.000000, 1.000000 do
				local registerVal8 = Engine.GetModel(registerVal3, ("class" .. index4))
				if registerVal8 ~= nil then
					Engine.UnsubscribeAndFreeModel(registerVal8)
				end
			end
		end
	end
end

CoD.CACUtility["ResetCPCustomClasses"] = __FUNC_20CE7_
local function __FUNC_20EE4_(arg0)
	local registerVal1 = Engine.GetPregameItemVotes()
	local registerVal3, registerVal4, registerVal5 = ipairs(registerVal1)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		if value7.itemType == Enum.VoteItemType.VOTE_ITEM_TYPE_ITEM and arg0.itemType == Enum.VoteItemType.VOTE_ITEM_TYPE_ITEM then
			if value7.itemIndex == arg0.itemIndex then
				return value7.gamertag
			else
				if value7.itemType == Enum.VoteItemType.VOTE_ITEM_TYPE_ATTACHMENT and arg0.itemType == Enum.VoteItemType.VOTE_ITEM_TYPE_ATTACHMENT then
					if value7.attachmentIndex == arg0.attachmentIndex then
						return value7.gamertag
					else
						if value7.itemType == Enum.VoteItemType.VOTE_ITEM_TYPE_ITEM_ATTACHMENT and arg0.itemType == Enum.VoteItemType.VOTE_ITEM_TYPE_ITEM_ATTACHMENT then
							return value7.gamertag
							if value7.itemIndex == arg0.itemIndex and value7.attachmentIndex == arg0.attachmentIndex and value7.itemType == Enum.VoteItemType.VOTE_ITEM_TYPE_ATTACHMENT_GROUP and arg0.itemType == Enum.VoteItemType.VOTE_ITEM_TYPE_ATTACHMENT_GROUP and value7.itemGroup == arg0.itemGroup then
								return value7.gamertag
							end
						end
					end
				end
			end
		end
	end
	return ""
end

CoD.CACUtility["GetItemVotedBy"] = __FUNC_20EE4_
local function __FUNC_21313_(arg0, arg1)
	local registerVal2 = arg1:getModel()
	return CoD.CACUtility.GetItemInfoFromElementModel(arg0, registerVal2)
end

CoD.CACUtility["GetItemInfoFromElement"] = __FUNC_21313_
local function __FUNC_213C8_(arg0)
	local registerVal1 = Engine.CurrentSessionMode()
	if registerVal1 == Enum.eModes.MODE_INVALID then
		return false
	end
	registerVal1 = Engine.GetItemGroup(arg0)
	if registerVal1 ~= "bubblegum_consumable" then
	end
	return true
end

CoD.CACUtility["IsItemConsumable"] = __FUNC_213C8_
local function __FUNC_214F4_(arg0, arg1, arg2)
	local registerVal4 = Engine.GetDStatForMode(arg0, arg2, "itemstats", arg1, "xp")
	return registerVal4
end

CoD.CACUtility["GetCurrentWeaponXP"] = __FUNC_214F4_
local function __FUNC_2159C_(arg0, arg1)
	local registerVal2 = Engine.GetPlayerStats(arg0)
	return registerVal2.itemstats[arg1].pLevel:get()
end

CoD.CACUtility["GetWeaponPLevel"] = __FUNC_2159C_
local function __FUNC_21668_(arg0, arg1)
	{}.damage = "0"
	{}.range = "0"
	{}.fireRate = "0"
	{}.accuracy = "0"
	if CoD.CACUtility.EmptyItemIndex >= arg1.weaponIndex then
		return {}
	end
	local registerVal4 = Engine.GetItemRef(arg1.weaponIndex)
	local registerVal6 = Engine.GetGlobalModel()
	local registerVal5 = Engine.GetModel(registerVal6, "Unlockables")
	registerVal6 = Engine.GetModel(registerVal5, (arg1.weaponIndex .. ".weaponAttributes"))
	local registerVal7 = LuaUtils.IsTableEmpty(arg1.attachment)
	if registerVal7 then
		registerVal7 = CoD.SafeGetModelValue(registerVal6, "damage")
		local registerVal8 = CoD.SafeGetModelValue(registerVal6, "range")
		local registerVal9 = CoD.SafeGetModelValue(registerVal6, "fireRate")
		local registerVal10 = CoD.SafeGetModelValue(registerVal6, "accuracy")
		{}.damage = (registerVal7 .. "," .. registerVal7)
		{}.range = (registerVal8 .. "," .. registerVal8)
		{}.fireRate = (registerVal9 .. "," .. registerVal9)
		{}.accuracy = (registerVal10 .. "," .. registerVal10)
		return {}
	end
	local registerVal13 = {}
	registerVal13.damage = 0.000000
	registerVal13.range = 0.000000
	registerVal13.fireRate = 0.000000
	registerVal13.accuracy = 0.000000
	local registerVal14, registerVal15, registerVal16 = ipairs(arg1.attachment)
	for index17,value18 in registerVal14, registerVal15, registerVal16 do
		if CoD.CACUtility.EmptyItemIndex < value18 then
			local registerVal19 = Engine.GetAttachmentRefByIndex(value18)
			local registerVal20 = Engine.TableLookup(nil, CoD.weaponAttributes, Enum.WeaponAttributesColumn.WEAPONATTRIBUTES_REFERENCE, registerVal19, Enum.WeaponAttributesColumn.WEAPONATTRIBUTES_WEAPON_NAME, registerVal4, Enum.WeaponAttributesColumn.WEAPONATTRIBUTES_DAMAGE)
			local registerVal21 = Engine.TableLookup(nil, CoD.weaponAttributes, Enum.WeaponAttributesColumn.WEAPONATTRIBUTES_REFERENCE, registerVal19, Enum.WeaponAttributesColumn.WEAPONATTRIBUTES_WEAPON_NAME, registerVal4, Enum.WeaponAttributesColumn.WEAPONATTRIBUTES_RANGE)
			local registerVal22 = Engine.TableLookup(nil, CoD.weaponAttributes, Enum.WeaponAttributesColumn.WEAPONATTRIBUTES_REFERENCE, registerVal19, Enum.WeaponAttributesColumn.WEAPONATTRIBUTES_WEAPON_NAME, registerVal4, Enum.WeaponAttributesColumn.WEAPONATTRIBUTES_FIRE_RATE)
			local registerVal23 = Engine.TableLookup(nil, CoD.weaponAttributes, Enum.WeaponAttributesColumn.WEAPONATTRIBUTES_REFERENCE, registerVal19, Enum.WeaponAttributesColumn.WEAPONATTRIBUTES_WEAPON_NAME, registerVal4, Enum.WeaponAttributesColumn.WEAPONATTRIBUTES_ACCURACY)
			if registerVal20 ~= "" or not 0.000000 then
			end
			registerVal13.damage = (registerVal13.damage + registerVal20)
			if registerVal21 ~= "" or not 0.000000 then
			end
			registerVal13.range = (registerVal13.range + registerVal21)
			if registerVal22 ~= "" or not 0.000000 then
			end
			registerVal13.fireRate = (registerVal13.fireRate + registerVal22)
			if registerVal23 ~= "" or not 0.000000 then
			end
			registerVal13.accuracy = (registerVal13.accuracy + registerVal23)
		end
		local function __FUNC_21E3F_(arg0, arg1)
			local registerVal2 = Engine.GetModelValue(Engine.GetModel(registerVal6, arg0))
			if registerVal2 == "" then
			end
			return (0.000000 .. "," .. (0.000000 + registerVal13[arg0]))
		end

		registerVal20 = __FUNC_21E3F_("damage", Enum.WeaponAttributesColumn.WEAPONATTRIBUTES_DAMAGE)
		{}.damage = registerVal20
		registerVal20 = __FUNC_21E3F_("range", Enum.WeaponAttributesColumn.WEAPONATTRIBUTES_RANGE)
		{}.range = registerVal20
		registerVal20 = __FUNC_21E3F_("fireRate", Enum.WeaponAttributesColumn.WEAPONATTRIBUTES_FIRE_RATE)
		{}.fireRate = registerVal20
		registerVal20 = __FUNC_21E3F_("accuracy", Enum.WeaponAttributesColumn.WEAPONATTRIBUTES_ACCURACY)
		{}.accuracy = registerVal20
	end
	return {}
end

CoD.CACUtility["GetWeaponAttributeValuesForVariant"] = __FUNC_21668_
local function __FUNC_21F1B_(arg0)
	local function __FUNC_22BFF_(arg0, arg1, arg2, arg3)
		if arg3 then
			local registerVal6 = LUI.startswith(arg0, "primaryattachment")
			if registerVal6 then
				registerVal6 = Engine.GetModel(CoD.perController[arg0].classModel, "primary")
			else
				registerVal6 = LUI.startswith(arg0, "secondaryattachment")
				if registerVal6 then
					registerVal6 = Engine.GetModel(CoD.perController[arg0].classModel, "secondary")
				end
			end
			registerVal6 = Engine.GetModelValue(Engine.GetModel(registerVal6, "headerName"))
		end
		local registerVal5 = Engine.GetModelValue(Engine.GetModel(arg1, "name"))
		registerVal6 = Engine.GetModelValue(Engine.GetModel(arg1, "image"))
		local registerVal7 = Engine.GetModelValue(Engine.GetModel(arg1, "ref"))
		local registerVal8 = {}
		local registerVal9 = {}
		registerVal9.headerName = registerVal6
		registerVal9.name = registerVal5
		registerVal9.image = "blacktransparent"
		registerVal9.itemSlot = arg0
		registerVal8.models = registerVal9
		registerVal9 = {}
		registerVal9.itemRef = registerVal7
		registerVal9.spacing = -2.000000
		registerVal8.properties = registerVal9
		return registerVal8
	end

	if CoD.perController[arg0].overCapacityItemIndex then
		local registerVal9 = Engine.GetItemRef(CoD.perController[arg0].overCapacityItemIndex)
	end
	registerVal9, registerVal10, registerVal11 = ipairs(CoD.CACUtility.overCapacityLoadoutSlotOrder)
	for index12,value13 in registerVal9, registerVal10, registerVal11 do
		local registerVal14 = Engine.GetModel(CoD.perController[arg0].classModel, value13)
		if 0.000000 < #value13 then
		end
		local registerVal20 = LUI.startswith(CoD.perController[arg0].weaponCategory, "primaryattachment")
		if registerVal20 and value13 == "primary" then
		else
			registerVal20 = LUI.startswith(CoD.perController[arg0].weaponCategory, "secondaryattachment")
			if registerVal20 and value13 == "secondary" then
			else
				registerVal20 = LUI.startswith(CoD.perController[arg0].weaponCategory, "primarygadgetattachment")
				if registerVal20 then
					if value13 ~= "primarygadget" then
						registerVal20 = CoD.CACUtility.GetItemReferenceName(registerVal14, value13)
						if registerVal20 == "bonuscard_danger_close" then
						else
						else
							registerVal20 = LUI.startswith(CoD.perController[arg0].weaponCategory, "secondarygadgetattachment")
							if registerVal20 and value13 == "secondarygadget" then
							else
								registerVal20 = LUI.startswith(registerVal9, "bonuscard_primary_gunfighter")
								if registerVal20 then
									if value13 ~= "primary" then
										registerVal20 = LUI.startswith(value13, "primaryattachment")
										if registerVal20 then
										else
										else
											if registerVal9 == "bonuscard_secondary_gunfighter" then
												if value13 ~= "secondary" then
													registerVal20 = LUI.startswith(value13, "secondaryattachment")
													if registerVal20 then
													else
													else
														registerVal20 = Engine.GetModel(registerVal14, "itemIndex")
														local registerVal21 = Engine.GetModelValue(registerVal20)
														local registerVal22 = Engine.GetItemRef(registerVal21)
														if registerVal14 and registerVal20 and CoD.CACUtility.EmptyItemIndex < registerVal21 then
															local registerVal23 = LUI.startswith(value13, "primarygadgetattachment")
															if registerVal23 then
																registerVal23 = Engine.GetModel(CoD.perController[arg0].classModel, "primarygadget.itemIndex")
																if registerVal23 then
																	local registerVal24 = Engine.GetModelValue(registerVal23)
																	local registerVal25 = Engine.GetModel(CoD.perController[arg0].classModel, "primarygadgetattachment1")
																	if {}[#value13].models.itemSlot and {}[#value13].models.itemSlot == "primarygadget" then
																		{}[#value13].properties.spacing = -2.000000
																	end
																	table.insert({}, __FUNC_22BFF_(value13, registerVal25, 10.000000, false))
																else
																	registerVal23 = LUI.startswith(value13, "secondarygadgetattachment")
																	if registerVal23 then
																		registerVal23 = Engine.GetModel(CoD.perController[arg0].classModel, "secondarygadget.itemIndex")
																		if registerVal23 then
																			registerVal24 = Engine.GetModelValue(registerVal23)
																			registerVal25 = Engine.GetModel(CoD.perController[arg0].classModel, "secondarygadgetattachment1")
																			if {}[#value13].models.itemSlot and {}[#value13].models.itemSlot == "secondarygadget" then
																				{}[#value13].properties.spacing = -2.000000
																			end
																			table.insert({}, __FUNC_22BFF_(value13, registerVal25, 10.000000, false))
																		else
																			if CoD.perController[arg0].weaponCategory == "specialty4" and registerVal22 == "bonuscard_perk_1_greed" then
																			else
																				if CoD.perController[arg0].weaponCategory == "specialty5" and registerVal22 == "bonuscard_perk_2_greed" then
																				else
																					if CoD.perController[arg0].weaponCategory == "specialty6" and registerVal22 == "bonuscard_perk_3_greed" then
																					else
																						if CoD.perController[arg0].weaponCategory ~= "primaryattachment4" and CoD.perController[arg0].weaponCategory == "primaryattachment5" or CoD.perController[arg0].weaponCategory == "primaryattachment6" then
																							registerVal23 = LUI.startswith(registerVal22, "bonuscard_primary_gunfighter")
																							if registerVal23 then
																							else
																							else
																								if CoD.perController[arg0].weaponCategory == "secondary" and registerVal22 == "bonuscard_overkill" then
																								else
																									registerVal23 = LUI.startswith(CoD.perController[arg0].weaponCategory, "secondaryattachment")
																									if {} or registerVal22 ~= "bonuscard_overkill" then
																										if CoD.perController[arg0].weaponCategory == "secondaryattachment3" and registerVal22 == "bonuscard_secondary_gunfighter" then
																										else
																											if CoD.perController[arg0].weaponCategory == "primarygadget" and registerVal22 == "bonuscard_two_tacticals" then
																											else
																												if CoD.perController[arg0].weaponCategory == "primarygadgetattachment2" and registerVal22 == "bonuscard_danger_close" then
																												else
																													registerVal23 = LUI.startswith(CoD.perController[arg0].weaponCategory, "primarygadgetattachment")
																													if registerVal23 and registerVal22 == "bonuscard_two_tacticals" then
																													else
																														if {}[#value13].models.itemSlot then
																															registerVal23 = LUI.startswith(value13, "primaryattachment")
																															registerVal23 = LUI.startswith(value13, "secondaryattachment")
																															if not registerVal23 and not registerVal23 then
																																if {}[#value13].models.itemSlot ~= "specialty1" or value13 ~= "specialty4" then
																																	if {}[#value13].models.itemSlot ~= "specialty2" or value13 ~= "specialty5" then
																																		if {}[#value13].models.itemSlot ~= "specialty3" or value13 ~= "specialty6" then
																																			registerVal23 = LUI.startswith({}[#value13].models.itemSlot, "bonuscard")
																																			registerVal23 = LUI.startswith(value13, "bonuscard")
																																			if registerVal23 and registerVal23 then
																																				{}[#value13].properties.spacing = -2.000000
																																			end
																																		end
																																	end
																																end
																															end
																														end
																														table.insert({}, __FUNC_22BFF_(value13, registerVal14, 10.000000, false))
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
	return {}
end

CoD.CACUtility["PrepareOverCapactiyList"] = __FUNC_21F1B_
local registerVal0 = {}
local function __FUNC_22F40_(arg0, arg1)
	if arg0[arg0.dataSourceName][arg1] then
		return arg0[arg0.dataSourceName][arg1].properties.spacing
	end
	return -2.000000
end

registerVal0["getSpacerAfterColumn"] = __FUNC_22F40_
local function __FUNC_2300A_(arg0)
	local registerVal2 = CoD.CACUtility.PrepareOverCapactiyList(arg0)
	for index4=#, 1.000000, -1.000000 do
		local registerVal9 = LUI.startswith(registerVal2[index4].models.itemSlot, (CoD.perController[arg0].weaponCategory .. "attachment"))
		if CoD.perController[arg0].weaponCategory == registerVal2[index4].models.itemSlot or registerVal9 then
			table.remove(registerVal2, index4)
		end
	end
	if CoD.perController[arg0].weaponCategory ~= "primary" then
	end
	if not true then
	end
	for index6=#-1.000000, 1.000000, -1.000000 do
		local registerVal11 = LUI.startswith(registerVal2[index6].properties.itemRef, "bonuscard_secondary_gunfighter")
		if registerVal11 then
			table.remove(registerVal2, index6)
		end
	end
	return registerVal2
end

CoD.CACUtility["RemoveItemFromClassList"] = __FUNC_2300A_
registerVal3 = DataSourceHelpers["ListSetup"]("RemoveItemFromClassList", CoD.CACUtility["RemoveItemFromClassList"], true, registerVal0)
DataSources["RemoveItemFromClassList"] = registerVal3
registerVal3 = DataSourceHelpers["ListSetup"]("OverCapacityList", CoD.CACUtility["PrepareOverCapactiyList"], true, registerVal0)
DataSources["OverCapacityList"] = registerVal3
local function __FUNC_2331D_(arg0)
	local function __FUNC_23732_(arg0, arg1, arg2, arg3)
		local registerVal4 = {}
		local registerVal5 = {}
		registerVal5.name = arg0
		registerVal5.image = "blacktransparent"
		registerVal5.itemSlot = arg2
		registerVal4.models = registerVal5
		registerVal5 = {}
		registerVal5.itemIndex = arg3
		registerVal4.properties = registerVal5
		return registerVal4
	end

	if CoD.perController[arg0].weaponCategory ~= "primary" then
	end
	if not true then
	end
	local registerVal7, registerVal8, registerVal9 = ipairs(CoD.CACUtility.BonuscardSlotNameCACCardList)
	for index10,value11 in registerVal7, registerVal8, registerVal9 do
		local registerVal12 = Engine.GetModel(CoD.perController[arg0].classModel, value11)
		local registerVal13 = Engine.GetModelValue(Engine.GetModel(registerVal12, "name"))
		local registerVal14 = Engine.GetModelValue(Engine.GetModel(registerVal12, "image"))
		local registerVal15 = Engine.GetModelValue(Engine.GetModel(registerVal12, "itemIndex"))
		local registerVal16 = Engine.GetModelValue(Engine.GetModel(registerVal12, "ref"))
		local registerVal17 = LUI.startswith(registerVal16, "bonuscard_secondary_gunfighter")
		if registerVal16 ~= "" and not registerVal17 then
			table.insert({}, __FUNC_23732_(registerVal13, registerVal14, value11, registerVal15))
		end
	end
	return {}
end

CoD.CACUtility["PrepareWildcardOverCapactiyList"] = __FUNC_2331D_
registerVal3 = DataSourceHelpers["ListSetup"]("WildcardOvercapacityList", CoD.CACUtility["PrepareWildcardOverCapactiyList"], true)
DataSources["WildcardOvercapacityList"] = registerVal3
local function __FUNC_23810_(arg0, arg1, arg2)
	local function __FUNC_23917_(arg0)
		local registerVal4, registerVal5, registerVal6 = ipairs(arg2.attachmentsByIndex)
		for index7,value8 in registerVal4, registerVal5, registerVal6 do
			if CoD.CACUtility.EmptyItemIndex < value8 then
				local registerVal11 = {}
				local registerVal12 = {}
				local registerVal13 = Engine.GetAttachmentImage(arg2.weaponIndex, value8)
				registerVal12.image = (registerVal13 .. "_wv_icon")
				registerVal11.models = registerVal12
				registerVal12 = {}
				registerVal13 = IsItemAttachmentLocked(arg0, arg2.weaponIndex, value8, "CILDS")
				registerVal12.isLocked = registerVal13
				registerVal11.properties = registerVal12
				table.insert({}, registerVal11)
			end
		end
		if CoD.perController[arg0].isShowcaseWeaponMenu then
			return {}
		end
		if CoD.perController[arg0].weaponCategory == "secondary" then
			local registerVal7 = {}
			registerVal7 = {"bonuscard_secondary_gunfighter"}
		end
		for index7=1.000000, arg2.wildcardNeededFromVariantCount, 1.000000 do
			registerVal11 = Engine.GetItemIndexFromReference(registerVal7[index7])
			registerVal12 = Engine.IsItemLocked(arg0, registerVal11)
			if not {}[((#arg0 - #registerVal11) + 1.000000)].properties.isLocked then
			end
			{}[((#arg0 - #registerVal11) + 1.000000)].properties.isLocked = registerVal12
			local registerVal17 = {}
			local registerVal18 = {}
			registerVal18.image = "cac_mods_secondary_gunfighter_wv_icon"
			registerVal17.models = registerVal18
			registerVal18 = {}
			registerVal18.isLocked = registerVal12
			registerVal17.properties = registerVal18
			table.insert({}, registerVal17)
		end
		return {}
	end

	local registerVal5 = DataSourceHelpers.ListSetup(("WeaponVariantAttachmentList" .. arg1.properties.index), __FUNC_23917_, true)
	DataSources[("WeaponVariantAttachmentList" .. arg1.properties.index)] = registerVal5
	return ("WeaponVariantAttachmentList" .. arg1.properties.index)
end

CoD.CACUtility["CreateItemListDataSource"] = __FUNC_23810_
local function __FUNC_23E56_(arg0, arg1)
	local registerVal2 = CoD.CACUtility.GetWeaponAttributeValuesForVariant(arg0, arg1)
	local registerVal3 = {}
	local registerVal4 = {}
	registerVal4.index = arg1.index
	registerVal4.variantIndex = arg1.variantIndex
	registerVal4.variantName = arg1.variantName
	registerVal4.variantNameBig = arg1.variantNameBig
	registerVal4.weaponItemIndex = arg1.weaponIndex
	registerVal4.cacVariantIndex = arg1.cacVariantIndex
	local registerVal5 = Engine.Localize("MPUI_VARIANT_CONTAINS_LOCKED_ITEMS_DESC")
	registerVal4.hintText = registerVal5
	registerVal5 = {}
	registerVal5.damage = registerVal2.damage
	registerVal5.range = registerVal2.range
	registerVal5.fireRate = registerVal2.fireRate
	registerVal5.accuracy = registerVal2.accuracy
	registerVal4.weaponAttributes = registerVal5
	registerVal3.models = registerVal4
	registerVal4 = {}
	registerVal4.index = arg1.index
	registerVal4.weaponVariantInfo = arg1
	registerVal5 = CoD.CACUtility.IsVariantEquippedToClass(CoD.perController[arg0].classModel, CoD.perController[arg0].weaponCategory, arg1.weaponIndex, arg1.cacVariantIndex)
	registerVal4.selectIndex = registerVal5
	registerVal3.properties = registerVal4
	registerVal5 = CoD.CACUtility.CreateItemListDataSource(arg0, registerVal3, arg1)
	registerVal3.models.listDataSource = registerVal5
	return registerVal3
end

CoD.CACUtility["GetWeaponVariantListModels"] = __FUNC_23E56_
local function __FUNC_242FB_(arg0)
	local registerVal2, registerVal3, registerVal4 = ipairs(arg0)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		if CoD.CACUtility.EmptyItemIndex < value6 then
		end
	end
	return (0.000000 + 1.000000)
end

CoD.CACUtility["GetNonZeroNumberOfAttachment"] = __FUNC_242FB_
local function __FUNC_243BF_(arg0, arg1, arg2, arg3)
	if arg0 then
		if arg1 == "primary" or arg1 == "secondary" then
			local registerVal4 = CoD.SafeGetModelValue(arg0, (arg1 .. ".itemIndex"))
			local registerVal5 = CoD.SafeGetModelValue(arg0, (arg1 .. "gunsmithvariant.itemIndex"))
			if registerVal4 ~= arg2 or registerVal5 ~= arg3 then
			end
			return true
		end
	end
	return false
end

CoD.CACUtility["IsVariantEquippedToClass"] = __FUNC_243BF_
local function __FUNC_244FF_(arg0)
	local registerVal3 = {}
	local registerVal4 = Engine.Localize(Engine.GetItemName(CoD.perController[arg0].weaponIndexForVariant))
	registerVal3.variantName = registerVal4
	registerVal3.variantNameBig = ""
	registerVal3.variantIndex = CoD.CACUtility.EmptyItemIndex
	registerVal3.weaponIndex = CoD.perController[arg0].weaponIndexForVariant
	registerVal3.index = 0.000000
	registerVal3.attachmentsByIndex = {}
	registerVal3.unlockedAttachmentsByIndex = {}
	registerVal3.attachmentVariant = {}
	registerVal3.camoIndex = 0.000000
	registerVal3.reticleIndex = 0.000000
	registerVal3.paintjobIndex = Enum.CustomizationPaintjobInvalidID.CUSTOMIZATION_INVALID_PAINTJOB_INDEX
	registerVal3.paintjobSlot = Enum.CustomizationPaintjobInvalidID.CUSTOMIZATION_INVALID_PAINTJOB_SLOT
	registerVal3.cacVariantIndex = 0.000000
	registerVal3.wildcardNeededCount = 0.000000
	registerVal3.wildcardNeededFromVariantCount = 0.000000
	registerVal3.isVariantLinkBroken = false
	registerVal3.hasLockedAttachments = false
	registerVal3.hasLockedItems = false
	table.insert({}, CoD.CACUtility.GetWeaponVariantListModels(arg0, registerVal3))
	local function __FUNC_25095_(arg0, arg1)
		if arg0 then
			if CoD.CACUtility.EmptyItemIndex < arg1[4.000000] then
			end
			if CoD.CACUtility.EmptyItemIndex < arg1[5.000000] then
			end
			if CoD.CACUtility.EmptyItemIndex < arg1[6.000000] and CoD.CACUtility.EmptyItemIndex < arg1[3.000000] then
			end
		end
		return ((((0.000000 + 1.000000) + 1.000000) + 1.000000) + 1.000000)
	end

	local registerVal5 = CoD.CraftUtility.Gunsmith.GetSortedWeaponVariantList(CoD.perController[arg0].weaponIndexForVariant)
	local registerVal6, registerVal7, registerVal8 = ipairs(registerVal5)
	for index9,value10 in registerVal6, registerVal7, registerVal8 do
		local registerVal11 = CoD.CraftUtility.Gunsmith.GetVariantByIndex(arg0, value10.variantIndex)
		if CoD.CACUtility.EmptyItemIndex < registerVal11.weaponIndex then
			local registerVal15 = CoD.CACUtility.GetNonZeroNumberOfAttachment(registerVal11.attachment)
			if CoD.perController[arg0].weaponCategory ~= "primary" then
			end
			if not true then
			end
			local registerVal25, registerVal26, registerVal27 = ipairs(registerVal11.attachment)
			for index28,value29 in registerVal25, registerVal26, registerVal27 do
				if CoD.CACUtility.EmptyItemIndex < value29 then
					local registerVal30 = Engine.GetAttachmentIndexByAttachmentTableIndex(registerVal11.weaponIndex, value29)
					local registerVal31 = Engine.IsOptic(registerVal11.weaponIndex, registerVal30)
					if registerVal31 then
					end
					table.insert({}, registerVal30)
					registerVal31 = IsItemAttachmentLocked(arg0, registerVal11.weaponIndex, registerVal30, "WVLP")
					if not registerVal31 then
						local registerVal33 = {}
						registerVal33.indexSlot = index28
						registerVal33.index = registerVal30
						table.insert({}, registerVal33)
					else
						registerVal33 = {}
						registerVal33.indexSlot = index28
						registerVal33.index = CoD.CACUtility.EmptyItemIndex
						table.insert({}, registerVal33)
					else
						table.insert({}, CoD.CACUtility.EmptyItemIndex)
						local registerVal32 = {}
						registerVal32.indexSlot = index28
						registerVal32.index = CoD.CACUtility.EmptyItemIndex
						table.insert({}, registerVal32)
					end
				end
			end
			local function __FUNC_251FB_(arg0, arg1)
				if arg0.indexSlot == 1.000000 or arg1.indexSlot == 1.000000 then
					if arg0.indexSlot >= arg1.indexSlot then
					end
					return true
				end
				if arg0.index == CoD.CACUtility.EmptyItemIndex or arg1.index == CoD.CACUtility.EmptyItemIndex then
					if arg1.index >= arg0.index then
					end
					return true
				end
				if arg0.indexSlot >= arg1.indexSlot then
				end
				return true
			end

			table.sort({}, __FUNC_251FB_)
			registerVal25, registerVal26, registerVal27 = ipairs({})
			for index28,value29 in registerVal25, registerVal26, registerVal27 do
				table.insert({}, value29.index)
			end
			registerVal25 = IsProgressionEnabled(arg0)
			if registerVal25 then
				registerVal25 = __FUNC_25095_(true, {})
			end
			registerVal25 = __FUNC_25095_(true, {})
			if not true then
				registerVal26 = {}
				registerVal26 = {"bonuscard_secondary_gunfighter"}
			end
			for index27=1.000000, registerVal25, 1.000000 do
				registerVal31 = Engine.GetItemIndexFromReference(registerVal26[index27])
				registerVal32 = Engine.IsItemLocked(arg0, registerVal31)
				if registerVal32 then
				else
				end
			end
			registerVal11.variantNameBig = registerVal11.variantName
			registerVal11.attachmentsByIndex = {}
			registerVal11.unlockedAttachmentsByIndex = {}
			registerVal11.index = index9
			registerVal11.wildcardNeededCount = registerVal25
			registerVal11.wildcardNeededFromVariantCount = registerVal25
			registerVal11.isVariantLinkBroken = true
			registerVal11.hasLockedAttachments = true
			registerVal11.hasLockedItems = true
			table.insert({}, CoD.CACUtility.GetWeaponVariantListModels(arg0, registerVal11))
		end
	end
	return {}
end

CoD.CACUtility["WeaponVariantListPrepare"] = __FUNC_244FF_
local function __FUNC_25390_(arg0, arg1)
	local registerVal5 = Engine.GetModelForController(arg1)
	local registerVal4 = Engine.GetModel(registerVal5, "currentWeapon")
	if registerVal4 == nil then
		return 0.000000, CoDLUIDecompiler.LuaRegister
	end
	for index5=1.000000, 4.000000, 1.000000 do
		local registerVal9 = Engine.GetModel(registerVal4, ("attachmentName" .. index5))
		local registerVal10 = Engine.GetModelValue(registerVal9)
		if registerVal9 and registerVal10 ~= "" then
		end
		if arg0[("currentAttachment" .. index5)] ~= registerVal10 then
			arg0[("currentAttachment" .. index5)] = registerVal10
		end
	end
	registerVal5 = Engine.GetModelValue(Engine.GetModel(registerVal4, "weaponName"))
	arg0.currentWeapon = registerVal5
	return (0.000000 + 1.000000), CoDLUIDecompiler.LuaRegister
end

CoD.CACUtility["GetWeaponAndAttachments"] = __FUNC_25390_
local function __FUNC_255B0_(arg0)
	if arg0.currentAttachment1 ~= nil and arg0.currentAttachment1 ~= "" then
		local registerVal2 = Engine.Localize(arg0.currentAttachment1)
	end
	if arg0.currentAttachment2 ~= nil and arg0.currentAttachment2 ~= "" then
		local registerVal4 = Engine.Localize(arg0.currentAttachment2)
	end
	if arg0.currentAttachment3 ~= nil and arg0.currentAttachment3 ~= "" then
		registerVal4 = Engine.Localize(arg0.currentAttachment3)
	end
	return ((registerVal2 .. " + " .. registerVal4) .. " + " .. registerVal4)
end

CoD.CACUtility["GetLocalizedAttachmentsString"] = __FUNC_255B0_
CoD.CACUtility["ForceStreamedWeaponImages"] = {}
local function __FUNC_25766_(arg0)
	local registerVal4 = {}
	registerVal4 = {"cacLoadouts"}
	local registerVal5 = Engine.CurrentSessionMode()
	if CoD.isFrontend then
		local registerVal6 = CoD.isOnlineGame()
		if registerVal6 then
			table.insert({}, Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_LOADOUTS))
			if CoD.isZombie then
				table.insert({}, Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_ZM_LOADOUTS))
			end
			table.insert(registerVal4, "leagueCacLoadouts")
			table.insert(registerVal4, "customMatchCacLoadouts")
		else
			table.insert({}, Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_LOADOUTS_OFFLINE))
			table.insert({}, Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_ZM_LOADOUTS_OFFLINE))
		else
			if registerVal5 == Enum.eModes.MODE_MULTIPLAYER then
				local registerVal10 = CoD.isOnlineGame()
				if {} or not Enum.StorageFileType.STORAGE_MP_LOADOUTS then
				end
				table.insert({}, Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_LOADOUTS_OFFLINE))
				registerVal6 = Engine.GameModeIsMode(CoD.GAMEMODE_LEAGUE_MATCH)
				if registerVal6 then
					registerVal6 = {}
					registerVal6 = {"leagueCacLoadouts"}
				else
					registerVal6 = Engine.GameModeIsMode(CoD.GAMEMODE_PRIVATE_MATCH)
					registerVal6 = CoD.isOnlineGame()
					if registerVal6 and registerVal6 then
						registerVal6 = {}
						registerVal6 = {"customMatchCacLoadouts"}
					else
						if registerVal5 == Enum.eModes.MODE_ZOMBIES then
							registerVal10 = CoD.isOnlineGame()
							if {} or not Enum.StorageFileType.STORAGE_ZM_LOADOUTS then
							end
							table.insert({}, Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_ZM_LOADOUTS_OFFLINE))
						else
							if registerVal5 == Enum.eModes.MODE_CAMPAIGN then
								registerVal10 = CoD.isOnlineGame()
								if {} or not Enum.StorageFileType.STORAGE_CP_LOADOUTS then
								end
								table.insert({}, Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_CP_LOADOUTS_OFFLINE))
							end
						end
					end
				end
			end
		end
	end
	local function __FUNC_265F7_(arg0)
		if arg0 and arg0 ~= 0.000000 then
			{}[arg0] = true
		end
	end

	local function __FUNC_2663F_(arg0, arg1)
		if arg1 and arg1 ~= 0.000000 then
			{}[arg0] = true
		end
	end

	local registerVal8, registerVal9, registerVal10 = ipairs({})
	for index11,value12 in registerVal8, registerVal9, registerVal10 do
		local registerVal13, registerVal14, registerVal15 = ipairs(registerVal6)
		for index16,value17 in registerVal13, registerVal14, registerVal15 do
			if value12[value17] then
				local registerVal20 = Engine.GetModelForController(arg0)
				local registerVal19 = Engine.GetModel(registerVal20, "CustomClassList")
				if registerVal5 ~= Enum.eModes.MODE_INVALID then
					local registerVal21 = Engine.GetCustomClassCount(arg0)
				end
				if CoD.isFrontend then
					for index21=0.000000, (registerVal21 - 1.000000), 1.000000 do
						__FUNC_265F7_(value12[value17].customclass[index21].primary:get())
						__FUNC_265F7_(value12[value17].customclass[index21].secondary:get())
					end
				end
				if registerVal19 then
					if CoD.isFrontend then
						local registerVal23 = math.max((10.000000 - registerVal21), 0.000000)
						local registerVal22 = math.min(registerVal23, 5.000000)
						for index22=1.000000, registerVal22, 1.000000 do
							local registerVal26 = Engine.GetModel(registerVal19, ("class" .. (10.000000 + index22)))
							__FUNC_265F7_(CoD.SafeGetModelValue(registerVal26, "primary.itemIndex"))
							__FUNC_265F7_(CoD.SafeGetModelValue(registerVal26, "secondary.itemIndex"))
						end
					end
					for index21=1.000000, 15.000000, 1.000000 do
						local registerVal25 = Engine.GetModel(registerVal19, ("class" .. index21))
						if registerVal25 then
							for index26=1.000000, 8.000000, 1.000000 do
								local registerVal30 = Engine.GetModel(registerVal25, ("primaryattachment" .. index26))
								if registerVal30 then
									local registerVal32 = CoD.SafeGetModelValue(registerVal30, "image")
									__FUNC_2663F_(registerVal32, CoD.SafeGetModelValue(registerVal30, "itemIndex"))
								end
								local registerVal31 = Engine.GetModel(registerVal25, ("secondaryattachment" .. index26))
								if index26 <= 3.000000 and registerVal31 then
									registerVal32 = CoD.SafeGetModelValue(registerVal31, "image")
									__FUNC_2663F_(registerVal32, CoD.SafeGetModelValue(registerVal31, "itemIndex"))
								end
							end
						end
					end
				end
			end
		end
	end
	registerVal8, registerVal9, registerVal10 = pairs({})
	for index11,value12 in registerVal8, registerVal9, registerVal10 do
		registerVal13 = Engine.GetNumAttachments(index11)
		for index14=1.000000, (registerVal13 - 1.000000), 1.000000 do
			local registerVal18 = Engine.GetAttachmentUniqueImageByIndex(index11, index14)
			if registerVal18 and registerVal18 ~= "" then
				{}[registerVal18] = true
			end
		end
	end
	registerVal8, registerVal9, registerVal10 = pairs({})
	for index11,value12 in registerVal8, registerVal9, registerVal10 do
		Engine.StreamForceImage(index11)
	end
	registerVal8, registerVal9, registerVal10 = pairs(CoD.CACUtility.ForceStreamedWeaponImages)
	for index11,value12 in registerVal8, registerVal9, registerVal10 do
		if not {}[index11] then
			Engine.StreamStopForcingImage(index11)
		end
	end
	CoD.CACUtility.ForceStreamedWeaponImages = {}
end

CoD.CACUtility["ForceStreamAttachmentImages"] = __FUNC_25766_
registerVal3 = DataSourceHelpers["ListSetup"]("WeaponVariantList", CoD.CACUtility["WeaponVariantListPrepare"], false)
DataSources["WeaponVariantList"] = registerVal3
CoD["WGSV_Category"] = {}
CoD["WGSV_Category"]["WEAPON"] = 1.000000
CoD["WGSV_Category"]["GUNSMITH_VARIANT"] = 2.000000
registerVal4 = Engine["GetGlobalModel"]()
registerVal3 = Engine["CreateModel"](registerVal4, "WGSV_Category")
DataSources["WGSV_Category"] = registerVal3
