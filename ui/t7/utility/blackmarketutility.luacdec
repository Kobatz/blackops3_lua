-- Decompiled with CoDLUIDecompiler by JariK

require("lua.Shared.LuaEnums")
CoD.BlackMarketUtility = {}
CoD.BlackMarketUtility.CurrentPromotionIndex = 0.000000
local registerVal1 = {}
registerVal1.COMMON = Enum.LootCrateType.LOOT_CRATE_TYPE_COMMON
registerVal1.RARE = Enum.LootCrateType.LOOT_CRATE_TYPE_RARE
registerVal1.BRIBE = Enum.LootCrateType.LOOT_CRATE_TYPE_BRIBE
registerVal1.LEGENDARY = 3.000000
registerVal1.EPIC = 4.000000
registerVal1.BUNDLE = 5.000000
registerVal1.INCENTIVE_WEAPON_BUNDLE = 6.000000
registerVal1.INCENTIVE_RARE_BUNDLE = 7.000000
registerVal1.TRADE_KEYS_FOR_VIALS = 8.000000
registerVal1.TRIFECTA = 9.000000
registerVal1.NO_DUPES_RANGE = 10.000000
registerVal1.NO_DUPES_MELEE = 11.000000
registerVal1.SIX_PACK = 12.000000
registerVal1.DAILY_DOUBLE = 13.000000
registerVal1.DAILY_DOUBLE_RARE_BUNDLE = 14.000000
registerVal1.HUNDRED_BUNDLE = 15.000000
registerVal1.LIMITED = 16.000000
registerVal1.BUNDLE_EXPERIMENT = 17.000000
registerVal1.NO_DUPES_CRATE = 18.000000
registerVal1.NO_DUPES_BUNDLE = 19.000000
registerVal1.CODE_BUNDLE = 20.000000
registerVal1.GRAND_SLAM = 21.000000
registerVal1.WEAPON_3X = 22.000000
registerVal1.LIMITED_EDITION_CAMO = 23.000000
registerVal1.RARE_BUNDLE_10FOR5 = 24.000000
registerVal1.RARE_20BUNDLE = 25.000000
registerVal1.RARE_15BUNDLE = 26.000000
registerVal1.OUTFIT_3BUNDLE = 27.000000
registerVal1.OUTFIT_STORE = 28.000000
registerVal1.RARE_20LDBUNDLE = 29.000000
CoD.BlackMarketUtility.DropTypes = registerVal1
registerVal1 = {}
registerVal1[CoD.BlackMarketUtility.DropTypes.COMMON] = true
CoD.BlackMarketUtility.NoGunMeter = registerVal1
registerVal1 = {}
registerVal1.RARE = 0.000000
CoD.BlackMarketUtility.periodicLadderRaritiesIndex = registerVal1
registerVal1 = {}
registerVal1[CoD.BlackMarketUtility.DropTypes.COMMON] = "MPUI_BM_COMMON"
registerVal1[CoD.BlackMarketUtility.DropTypes.RARE] = "MPUI_BM_RARE"
registerVal1[CoD.BlackMarketUtility.DropTypes.BRIBE] = "MPUI_BM_BRIBE"
registerVal1[CoD.BlackMarketUtility.DropTypes.LEGENDARY] = "MPUI_BM_LEGENDARY"
registerVal1[CoD.BlackMarketUtility.DropTypes.EPIC] = "MPUI_BM_EPIC"
registerVal1[CoD.BlackMarketUtility.DropTypes.BUNDLE] = "MPUI_BM_BUNDLE"
registerVal1[CoD.BlackMarketUtility.DropTypes.INCENTIVE_WEAPON_BUNDLE] = "rare"
registerVal1[CoD.BlackMarketUtility.DropTypes.INCENTIVE_RARE_BUNDLE] = "rare"
registerVal1[CoD.BlackMarketUtility.DropTypes.TRADE_KEYS_FOR_VIALS] = "vials"
registerVal1[CoD.BlackMarketUtility.DropTypes.TRIFECTA] = "trifecta"
registerVal1[CoD.BlackMarketUtility.DropTypes.NO_DUPES_RANGE] = "rare"
registerVal1[CoD.BlackMarketUtility.DropTypes.NO_DUPES_MELEE] = "rare"
registerVal1[CoD.BlackMarketUtility.DropTypes.SIX_PACK] = "MPUI_BM_SIX_PACK"
registerVal1[CoD.BlackMarketUtility.DropTypes.DAILY_DOUBLE] = "MPUI_BM_DAILY_DOUBLE"
registerVal1[CoD.BlackMarketUtility.DropTypes.DAILY_DOUBLE_RARE_BUNDLE] = "rare"
registerVal1[CoD.BlackMarketUtility.DropTypes.HUNDRED_BUNDLE] = "MPUI_BM_BUNDLE"
registerVal1[CoD.BlackMarketUtility.DropTypes.RARE_BUNDLE_10FOR5] = "MPUI_BM_BUNDLE"
registerVal1[CoD.BlackMarketUtility.DropTypes.LIMITED] = "MPUI_BM_LIMITED"
registerVal1[CoD.BlackMarketUtility.DropTypes.BUNDLE_EXPERIMENT] = "MPUI_BM_BUNDLE_EXPERIMENT"
registerVal1[CoD.BlackMarketUtility.DropTypes.NO_DUPES_CRATE] = "MPUI_BM_NO_DUPES_CRATE"
registerVal1[CoD.BlackMarketUtility.DropTypes.NO_DUPES_BUNDLE] = "MPUI_BM_BUNDLE"
registerVal1[CoD.BlackMarketUtility.DropTypes.CODE_BUNDLE] = "MPUI_BM_BUNDLE"
registerVal1[CoD.BlackMarketUtility.DropTypes.GRAND_SLAM] = "grandslam"
registerVal1[CoD.BlackMarketUtility.DropTypes.WEAPON_3X] = "weapon3x"
registerVal1[CoD.BlackMarketUtility.DropTypes.LIMITED_EDITION_CAMO] = "limitededitioncamo"
registerVal1[CoD.BlackMarketUtility.DropTypes.RARE_20BUNDLE] = "MPUI_BM_BUNDLE"
registerVal1[CoD.BlackMarketUtility.DropTypes.RARE_15BUNDLE] = "MPUI_BM_BUNDLE"
registerVal1[CoD.BlackMarketUtility.DropTypes.OUTFIT_3BUNDLE] = "MPUI_BM_BUNDLE"
registerVal1[CoD.BlackMarketUtility.DropTypes.OUTFIT_STORE] = "MPUI_BM_OUTFIT_STORE"
registerVal1[CoD.BlackMarketUtility.DropTypes.RARE_20LDBUNDLE] = "MPUI_BM_BUNDLE"
CoD.BlackMarketUtility.CrateTypeStrings = registerVal1
registerVal1 = {}
registerVal1[CoD.BlackMarketUtility.DropTypes.COMMON] = "MPUI_BM_COMMON_DROP"
registerVal1[CoD.BlackMarketUtility.DropTypes.RARE] = "MPUI_BM_RARE_DROP"
registerVal1[CoD.BlackMarketUtility.DropTypes.BRIBE] = "MPUI_BM_BRIBE_DROP"
registerVal1[CoD.BlackMarketUtility.DropTypes.BUNDLE] = "MPUI_BM_BUNDLE_PROMO_TITLE"
CoD.BlackMarketUtility.CrateTypeSupplyDropStrings = registerVal1
registerVal1 = {}
registerVal1[CoD.BlackMarketUtility.DropTypes.COMMON] = "common"
registerVal1[CoD.BlackMarketUtility.DropTypes.RARE] = "rare"
registerVal1[CoD.BlackMarketUtility.DropTypes.BRIBE] = "bribe"
registerVal1[CoD.BlackMarketUtility.DropTypes.LEGENDARY] = "legendary"
registerVal1[CoD.BlackMarketUtility.DropTypes.EPIC] = "epic"
registerVal1[CoD.BlackMarketUtility.DropTypes.BUNDLE] = "bundle"
registerVal1[CoD.BlackMarketUtility.DropTypes.INCENTIVE_WEAPON_BUNDLE] = "rare"
registerVal1[CoD.BlackMarketUtility.DropTypes.INCENTIVE_RARE_BUNDLE] = "rare"
registerVal1[CoD.BlackMarketUtility.DropTypes.TRADE_KEYS_FOR_VIALS] = "vials"
registerVal1[CoD.BlackMarketUtility.DropTypes.TRIFECTA] = "trifecta"
registerVal1[CoD.BlackMarketUtility.DropTypes.NO_DUPES_RANGE] = "rare"
registerVal1[CoD.BlackMarketUtility.DropTypes.NO_DUPES_MELEE] = "rare"
registerVal1[CoD.BlackMarketUtility.DropTypes.SIX_PACK] = "sixpack"
registerVal1[CoD.BlackMarketUtility.DropTypes.DAILY_DOUBLE] = "dailydouble"
registerVal1[CoD.BlackMarketUtility.DropTypes.DAILY_DOUBLE_RARE_BUNDLE] = "rare"
registerVal1[CoD.BlackMarketUtility.DropTypes.HUNDRED_BUNDLE] = "rare"
registerVal1[CoD.BlackMarketUtility.DropTypes.RARE_BUNDLE_10FOR5] = "rare"
registerVal1[CoD.BlackMarketUtility.DropTypes.LIMITED] = "limited"
registerVal1[CoD.BlackMarketUtility.DropTypes.BUNDLE_EXPERIMENT] = "rare"
registerVal1[CoD.BlackMarketUtility.DropTypes.NO_DUPES_CRATE] = "rare"
registerVal1[CoD.BlackMarketUtility.DropTypes.NO_DUPES_BUNDLE] = "rare"
registerVal1[CoD.BlackMarketUtility.DropTypes.CODE_BUNDLE] = "rare"
registerVal1[CoD.BlackMarketUtility.DropTypes.GRAND_SLAM] = "grandslam"
registerVal1[CoD.BlackMarketUtility.DropTypes.WEAPON_3X] = "rare"
registerVal1[CoD.BlackMarketUtility.DropTypes.LIMITED_EDITION_CAMO] = "rare"
registerVal1[CoD.BlackMarketUtility.DropTypes.RARE_20BUNDLE] = "rare"
registerVal1[CoD.BlackMarketUtility.DropTypes.RARE_15BUNDLE] = "rare"
registerVal1[CoD.BlackMarketUtility.DropTypes.OUTFIT_3BUNDLE] = "rare"
registerVal1[CoD.BlackMarketUtility.DropTypes.RARE_20LDBUNDLE] = "rare"
CoD.BlackMarketUtility.CrateTypeIds = registerVal1
registerVal1 = {}
registerVal1[CoD.BlackMarketUtility.DropTypes.RARE] = "uin_bm_cycle_item_rare_layer"
registerVal1[CoD.BlackMarketUtility.DropTypes.LEGENDARY] = "uin_bm_cycle_item_legend_layer"
registerVal1[CoD.BlackMarketUtility.DropTypes.EPIC] = "uin_bm_cycle_item_epic_layer"
registerVal1[CoD.BlackMarketUtility.DropTypes.LIMITED] = "uin_bm_cycle_item_ltd_layer"
CoD.BlackMarketUtility.CrateTypeRevealAlias = registerVal1
registerVal1 = {}
registerVal1[20.000000] = 3.000000
registerVal1[21.000000] = 8.000000
registerVal1[22.000000] = 5.000000
registerVal1[23.000000] = 1.000000
registerVal1[24.000000] = 2.000000
registerVal1[25.000000] = 6.000000
registerVal1[26.000000] = 0.000000
registerVal1[27.000000] = 4.000000
registerVal1[28.000000] = 7.000000
registerVal1[29.000000] = 9.000000
CoD.BlackMarketUtility.BribeSpecialistIndices = registerVal1
function CoD.BlackMarketUtility.LocalizeForHeroBribe(arg0, arg1)
	local registerVal2 = Engine.GetHeroName(Enum.eModes.MODE_MULTIPLAYER, CoD.BlackMarketUtility.BribeSpecialistIndices[arg0])
	return Engine.Localize(arg1, registerVal2, registerVal2)
end

registerVal1 = {}
registerVal1[3.000000] = "MPUI_BM_BRIBE_OUTFIT"
registerVal1[4.000000] = "MPUI_BM_BRIBE_CALLINGCARD"
registerVal1[5.000000] = "MPUI_BM_BRIBE_TAUNTS"
registerVal1[6.000000] = "MPUI_BM_BRIBE_GESTURES"
registerVal1[7.000000] = "MPUI_BM_BRIBE_ATTACHMENT_VARIANT"
registerVal1[8.000000] = "MPUI_BM_BRIBE_CALLINGCARD_SET"
registerVal1[9.000000] = "MPUI_BM_BRIBE_OUTFIT"
local registerVal2 = CoD.BlackMarketUtility.LocalizeForHeroBribe(20.000000, "MPUI_BM_SPECIALIST_ITEM_BRIBE")
registerVal1[20.000000] = registerVal2
registerVal2 = CoD.BlackMarketUtility.LocalizeForHeroBribe(21.000000, "MPUI_BM_SPECIALIST_ITEM_BRIBE")
registerVal1[21.000000] = registerVal2
registerVal2 = CoD.BlackMarketUtility.LocalizeForHeroBribe(22.000000, "MPUI_BM_SPECIALIST_ITEM_BRIBE")
registerVal1[22.000000] = registerVal2
registerVal2 = CoD.BlackMarketUtility.LocalizeForHeroBribe(23.000000, "MPUI_BM_SPECIALIST_ITEM_BRIBE")
registerVal1[23.000000] = registerVal2
registerVal2 = CoD.BlackMarketUtility.LocalizeForHeroBribe(24.000000, "MPUI_BM_SPECIALIST_ITEM_BRIBE")
registerVal1[24.000000] = registerVal2
registerVal2 = CoD.BlackMarketUtility.LocalizeForHeroBribe(25.000000, "MPUI_BM_SPECIALIST_ITEM_BRIBE")
registerVal1[25.000000] = registerVal2
registerVal2 = CoD.BlackMarketUtility.LocalizeForHeroBribe(26.000000, "MPUI_BM_SPECIALIST_ITEM_BRIBE")
registerVal1[26.000000] = registerVal2
registerVal2 = CoD.BlackMarketUtility.LocalizeForHeroBribe(27.000000, "MPUI_BM_SPECIALIST_ITEM_BRIBE")
registerVal1[27.000000] = registerVal2
registerVal2 = CoD.BlackMarketUtility.LocalizeForHeroBribe(28.000000, "MPUI_BM_SPECIALIST_ITEM_BRIBE")
registerVal1[28.000000] = registerVal2
registerVal2 = CoD.BlackMarketUtility.LocalizeForHeroBribe(29.000000, "MPUI_BM_SPECIALIST_ITEM_BRIBE")
registerVal1[29.000000] = registerVal2
registerVal1[40.000000] = "MPUI_BM_BRIBE_CALLINGCARD_TRIPLE"
registerVal1[52.000000] = "MPUI_BM_BRIBE_OUTFIT_TRIPLE"
registerVal1[53.000000] = "MPUI_BM_BRIBE_3X_GESTURES_TAUNTS"
registerVal1[57.000000] = "MPUI_BM_BRIBE_3X_ATTACHMENT_VARIANT"
registerVal1[58.000000] = "MPUI_BM_BRIBE_LDBUNDLE_BRIBE"
CoD.BlackMarketUtility.BribeStrings = registerVal1
registerVal1 = {}
registerVal1[3.000000] = "MPUI_BM_BRIBE_OUTFIT_DESC"
registerVal1[4.000000] = "MPUI_BM_BRIBE_CALLINGCARD_DESC"
registerVal1[40.000000] = "MPUI_BM_BRIBE_CALLINGCARD_TRIPLE_DESC"
registerVal1[52.000000] = "MPUI_BM_BRIBE_OUTFIT_TRIPLE_DESC"
registerVal1[53.000000] = "MPUI_BM_BRIBE_3X_GESTURES_TAUNTS_DESC"
registerVal1[57.000000] = "MPUI_BM_BRIBE_3X_ATTACHMENT_VARIANT_DESC"
registerVal1[58.000000] = "MPUI_BM_BRIBE_LDBUNDLE_BRIBE_DESC"
CoD.BlackMarketUtility.BribeDescriptions = registerVal1
registerVal1 = {}
registerVal1[3.000000] = "MPUI_BM_BRIBE_OUTFIT_PROMO_TITLE"
registerVal1[4.000000] = "MPUI_BM_BRIBE_CALLINGCARD_PROMO_TITLE"
registerVal1[5.000000] = "MPUI_BM_BRIBE_TAUNTS_PROMO_TITLE"
registerVal1[6.000000] = "MPUI_BM_BRIBE_GESTURES_PROMO_TITLE"
registerVal1[7.000000] = "MPUI_BM_BRIBE_ATTACHMENT_VARIANT_PROMO_TITLE"
registerVal1[8.000000] = "MPUI_BM_BRIBE_CALLINGCARD_SET_PROMO_TITLE"
registerVal1[9.000000] = "MPUI_BM_BRIBE_OUTFIT_PROMO_TITLE"
registerVal2 = CoD.BlackMarketUtility.LocalizeForHeroBribe(20.000000, "MPUI_BM_SPECIALIST_ITEM_BRIBE_PROMO_TITLE")
registerVal1[20.000000] = registerVal2
registerVal2 = CoD.BlackMarketUtility.LocalizeForHeroBribe(21.000000, "MPUI_BM_SPECIALIST_ITEM_BRIBE_PROMO_TITLE")
registerVal1[21.000000] = registerVal2
registerVal2 = CoD.BlackMarketUtility.LocalizeForHeroBribe(22.000000, "MPUI_BM_SPECIALIST_ITEM_BRIBE_PROMO_TITLE")
registerVal1[22.000000] = registerVal2
registerVal2 = CoD.BlackMarketUtility.LocalizeForHeroBribe(23.000000, "MPUI_BM_SPECIALIST_ITEM_BRIBE_PROMO_TITLE")
registerVal1[23.000000] = registerVal2
registerVal2 = CoD.BlackMarketUtility.LocalizeForHeroBribe(24.000000, "MPUI_BM_SPECIALIST_ITEM_BRIBE_PROMO_TITLE")
registerVal1[24.000000] = registerVal2
registerVal2 = CoD.BlackMarketUtility.LocalizeForHeroBribe(25.000000, "MPUI_BM_SPECIALIST_ITEM_BRIBE_PROMO_TITLE")
registerVal1[25.000000] = registerVal2
registerVal2 = CoD.BlackMarketUtility.LocalizeForHeroBribe(26.000000, "MPUI_BM_SPECIALIST_ITEM_BRIBE_PROMO_TITLE")
registerVal1[26.000000] = registerVal2
registerVal2 = CoD.BlackMarketUtility.LocalizeForHeroBribe(27.000000, "MPUI_BM_SPECIALIST_ITEM_BRIBE_PROMO_TITLE")
registerVal1[27.000000] = registerVal2
registerVal2 = CoD.BlackMarketUtility.LocalizeForHeroBribe(28.000000, "MPUI_BM_SPECIALIST_ITEM_BRIBE_PROMO_TITLE")
registerVal1[28.000000] = registerVal2
registerVal2 = CoD.BlackMarketUtility.LocalizeForHeroBribe(29.000000, "MPUI_BM_SPECIALIST_ITEM_BRIBE_PROMO_TITLE")
registerVal1[29.000000] = registerVal2
registerVal1[40.000000] = "MPUI_BM_BRIBE_CALLINGCARD_TRIPLE_PROMO_TITLE"
registerVal1[52.000000] = "MPUI_BM_BRIBE_OUTFIT_TRIPLE_PROMO_TITLE"
registerVal1[53.000000] = "MPUI_BM_BRIBE_3X_GESTURES_TAUNTS_PROMO_TITLE"
registerVal1[57.000000] = "MPUI_BM_BRIBE_3X_ATTACHMENT_VARIANT_PROMO_TITLE"
registerVal1[58.000000] = "MPUI_BM_BRIBE_LDBUNDLE_BRIBE_TITLE"
CoD.BlackMarketUtility.BribeTitles = registerVal1
registerVal1 = {}
registerVal1[3.000000] = "MPUI_BM_BRIBE_OUTFIT_HINT"
registerVal1[4.000000] = "MPUI_BM_BRIBE_CALLINGCARD_HINT"
registerVal1[5.000000] = "MPUI_BM_BRIBE_TAUNTS_HINT"
registerVal1[6.000000] = "MPUI_BM_BRIBE_GESTURES_HINT"
registerVal1[7.000000] = "MPUI_BM_BRIBE_ATTACHMENT_VARIANT_HINT"
registerVal1[8.000000] = "MPUI_BM_BRIBE_CALLINGCARD_SET_HINT"
registerVal1[9.000000] = "MPUI_BM_BRIBE_OUTFIT_HINT"
registerVal1[40.000000] = "MPUI_BM_BRIBE_CALLINGCARD_TRIPLE_HINT"
registerVal1[52.000000] = "MPUI_BM_BRIBE_OUTFIT_TRIPLE_HINT"
registerVal1[53.000000] = "MPUI_BM_BRIBE_3X_GESTURES_TAUNTS_HINT"
registerVal1[57.000000] = "MPUI_BM_BRIBE_3X_ATTACHMENT_VARIANT_HINT"
registerVal1[58.000000] = "MPUI_BM_BRIBE_LDBUNDLE_BRIBE_HINT"
CoD.BlackMarketUtility.BribeHints = registerVal1
registerVal1 = {}
registerVal1[3.000000] = "uie_t7_blackmarket_crate_bribe_chip"
registerVal1[4.000000] = "t7_blackmarket_crate_bribe_chip_callingcard"
registerVal1[5.000000] = "t7_blackmarket_crate_bribe_chip_taunt"
registerVal1[6.000000] = "t7_blackmarket_crate_bribe_chip_gesture"
registerVal1[7.000000] = "t7_blackmarket_crate_bribe_chip_attach"
registerVal1[8.000000] = "t7_blackmarket_crate_bribe_chip_callingcard_color"
registerVal1[9.000000] = "uie_t7_blackmarket_crate_bribe_chip"
registerVal1[20.000000] = "uie_t7_blackmarket_crate_bribe_chip"
registerVal1[21.000000] = "uie_t7_blackmarket_crate_bribe_chip"
registerVal1[22.000000] = "uie_t7_blackmarket_crate_bribe_chip"
registerVal1[23.000000] = "uie_t7_blackmarket_crate_bribe_chip"
registerVal1[24.000000] = "uie_t7_blackmarket_crate_bribe_chip"
registerVal1[25.000000] = "uie_t7_blackmarket_crate_bribe_chip"
registerVal1[26.000000] = "uie_t7_blackmarket_crate_bribe_chip"
registerVal1[27.000000] = "uie_t7_blackmarket_crate_bribe_chip"
registerVal1[28.000000] = "uie_t7_blackmarket_crate_bribe_chip"
registerVal1[29.000000] = "uie_t7_blackmarket_crate_bribe_chip"
registerVal1[40.000000] = "t7_blackmarket_crate_bribe_chip_callingcard"
registerVal1[52.000000] = "uie_t7_blackmarket_crate_bribe_chip"
registerVal1[53.000000] = "t7_blackmarket_crate_bribe_chip_taunt"
registerVal1[57.000000] = "t7_blackmarket_crate_bribe_chip_attach"
registerVal1[58.000000] = "uie_t7_blackmarket_crate_bribe_chip"
CoD.BlackMarketUtility.BribeImages = registerVal1
registerVal1 = {}
registerVal1[3.000000] = "uie_t7_blackmarket_promo_bribe"
registerVal1[4.000000] = "t7_blackmarket_promo_bribe_callingcard"
registerVal1[5.000000] = "t7_blackmarket_promo_bribe_taunt"
registerVal1[6.000000] = "t7_blackmarket_promo_bribe_gesture"
registerVal1[7.000000] = "t7_blackmarket_promo_bribe_attach"
registerVal1[8.000000] = "t7_blackmarket_promo_bribe_callingcard_color"
registerVal1[9.000000] = "uie_t7_blackmarket_promo_bribe"
registerVal1[20.000000] = "uie_t7_blackmarket_promo_bribe"
registerVal1[21.000000] = "uie_t7_blackmarket_promo_bribe"
registerVal1[22.000000] = "uie_t7_blackmarket_promo_bribe"
registerVal1[23.000000] = "uie_t7_blackmarket_promo_bribe"
registerVal1[24.000000] = "uie_t7_blackmarket_promo_bribe"
registerVal1[25.000000] = "uie_t7_blackmarket_promo_bribe"
registerVal1[26.000000] = "uie_t7_blackmarket_promo_bribe"
registerVal1[27.000000] = "uie_t7_blackmarket_promo_bribe"
registerVal1[28.000000] = "uie_t7_blackmarket_promo_bribe"
registerVal1[29.000000] = "uie_t7_blackmarket_promo_bribe"
registerVal1[40.000000] = "t7_blackmarket_promo_bribe_callingcard"
registerVal1[52.000000] = "uie_t7_blackmarket_promo_bribe"
registerVal1[53.000000] = "t7_blackmarket_promo_bribe_taunt"
registerVal1[57.000000] = "t7_blackmarket_promo_bribe_attach"
registerVal1[58.000000] = "uie_t7_blackmarket_promo_bribe"
CoD.BlackMarketUtility.BribePromoImages = registerVal1
registerVal1 = {}
registerVal1[3.000000] = "MPUI_BM_BRIBE_POPUP_OUTFIT_TITLE"
registerVal1[4.000000] = "MPUI_BM_BRIBE_POPUP_CALLINGCARD_TITLE"
registerVal1[5.000000] = "MPUI_BM_BRIBE_POPUP_TAUNTS_TITLE"
registerVal1[6.000000] = "MPUI_BM_BRIBE_POPUP_GESTURES_TITLE"
registerVal1[7.000000] = "MPUI_BM_BRIBE_POPUP_ATTACHMENT_VARIANT_TITLE"
registerVal1[8.000000] = "MPUI_BM_BRIBE_POPUP_CALLINGCARD_SET_TITLE"
registerVal1[9.000000] = "MPUI_BM_BRIBE_POPUP_OUTFIT_TITLE"
registerVal2 = CoD.BlackMarketUtility.LocalizeForHeroBribe(20.000000, "MPUI_BM_SPECIALIST_ITEM_BRIBE_POPUP_TITLE")
registerVal1[20.000000] = registerVal2
registerVal2 = CoD.BlackMarketUtility.LocalizeForHeroBribe(21.000000, "MPUI_BM_SPECIALIST_ITEM_BRIBE_POPUP_TITLE")
registerVal1[21.000000] = registerVal2
registerVal2 = CoD.BlackMarketUtility.LocalizeForHeroBribe(22.000000, "MPUI_BM_SPECIALIST_ITEM_BRIBE_POPUP_TITLE")
registerVal1[22.000000] = registerVal2
registerVal2 = CoD.BlackMarketUtility.LocalizeForHeroBribe(23.000000, "MPUI_BM_SPECIALIST_ITEM_BRIBE_POPUP_TITLE")
registerVal1[23.000000] = registerVal2
registerVal2 = CoD.BlackMarketUtility.LocalizeForHeroBribe(24.000000, "MPUI_BM_SPECIALIST_ITEM_BRIBE_POPUP_TITLE")
registerVal1[24.000000] = registerVal2
registerVal2 = CoD.BlackMarketUtility.LocalizeForHeroBribe(25.000000, "MPUI_BM_SPECIALIST_ITEM_BRIBE_POPUP_TITLE")
registerVal1[25.000000] = registerVal2
registerVal2 = CoD.BlackMarketUtility.LocalizeForHeroBribe(26.000000, "MPUI_BM_SPECIALIST_ITEM_BRIBE_POPUP_TITLE")
registerVal1[26.000000] = registerVal2
registerVal2 = CoD.BlackMarketUtility.LocalizeForHeroBribe(27.000000, "MPUI_BM_SPECIALIST_ITEM_BRIBE_POPUP_TITLE")
registerVal1[27.000000] = registerVal2
registerVal2 = CoD.BlackMarketUtility.LocalizeForHeroBribe(28.000000, "MPUI_BM_SPECIALIST_ITEM_BRIBE_POPUP_TITLE")
registerVal1[28.000000] = registerVal2
registerVal2 = CoD.BlackMarketUtility.LocalizeForHeroBribe(29.000000, "MPUI_BM_SPECIALIST_ITEM_BRIBE_POPUP_TITLE")
registerVal1[29.000000] = registerVal2
registerVal1[40.000000] = "MPUI_BM_BRIBE_POPUP_CALLINGCARD_TRIPLE_TITLE"
registerVal1[52.000000] = "MPUI_BM_BRIBE_POPUP_OUTFIT_TRIPLE_TITLE"
registerVal1[53.000000] = "MPUI_BM_BRIBE_3X_GESTURES_TAUNTS_TITLE"
registerVal1[57.000000] = "MPUI_BM_BRIBE_3X_ATTACHMENT_VARIANT_TITLE"
registerVal1[58.000000] = "MPUI_BM_BRIBE_LDBUNDLE_BRIBE_TITLE"
CoD.BlackMarketUtility.BribePopupTitles = registerVal1
registerVal1 = {}
registerVal1[3.000000] = "MPUI_BM_BRIBE_POPUP_OUTFIT_DESC"
registerVal1[4.000000] = "MPUI_BM_BRIBE_POPUP_CALLINGCARD_DESC"
registerVal1[5.000000] = "MPUI_BM_BRIBE_POPUP_TAUNTS_DESC"
registerVal1[6.000000] = "MPUI_BM_BRIBE_POPUP_GESTURES_DESC"
registerVal1[7.000000] = "MPUI_BM_BRIBE_POPUP_ATTACHMENT_VARIANT_DESC"
registerVal1[8.000000] = "MPUI_BM_BRIBE_POPUP_CALLINGCARD_SET_DESC"
registerVal1[9.000000] = "MPUI_BM_BRIBE_POPUP_OUTFIT_DESC"
registerVal2 = CoD.BlackMarketUtility.LocalizeForHeroBribe(20.000000, "MPUI_BM_SPECIALIST_ITEM_BRIBE_POPUP_DESC")
registerVal1[20.000000] = registerVal2
registerVal2 = CoD.BlackMarketUtility.LocalizeForHeroBribe(21.000000, "MPUI_BM_SPECIALIST_ITEM_BRIBE_POPUP_DESC")
registerVal1[21.000000] = registerVal2
registerVal2 = CoD.BlackMarketUtility.LocalizeForHeroBribe(22.000000, "MPUI_BM_SPECIALIST_ITEM_BRIBE_POPUP_DESC")
registerVal1[22.000000] = registerVal2
registerVal2 = CoD.BlackMarketUtility.LocalizeForHeroBribe(23.000000, "MPUI_BM_SPECIALIST_ITEM_BRIBE_POPUP_DESC")
registerVal1[23.000000] = registerVal2
registerVal2 = CoD.BlackMarketUtility.LocalizeForHeroBribe(24.000000, "MPUI_BM_SPECIALIST_ITEM_BRIBE_POPUP_DESC")
registerVal1[24.000000] = registerVal2
registerVal2 = CoD.BlackMarketUtility.LocalizeForHeroBribe(25.000000, "MPUI_BM_SPECIALIST_ITEM_BRIBE_POPUP_DESC")
registerVal1[25.000000] = registerVal2
registerVal2 = CoD.BlackMarketUtility.LocalizeForHeroBribe(26.000000, "MPUI_BM_SPECIALIST_ITEM_BRIBE_POPUP_DESC")
registerVal1[26.000000] = registerVal2
registerVal2 = CoD.BlackMarketUtility.LocalizeForHeroBribe(27.000000, "MPUI_BM_SPECIALIST_ITEM_BRIBE_POPUP_DESC")
registerVal1[27.000000] = registerVal2
registerVal2 = CoD.BlackMarketUtility.LocalizeForHeroBribe(28.000000, "MPUI_BM_SPECIALIST_ITEM_BRIBE_POPUP_DESC")
registerVal1[28.000000] = registerVal2
registerVal2 = CoD.BlackMarketUtility.LocalizeForHeroBribe(29.000000, "MPUI_BM_SPECIALIST_ITEM_BRIBE_POPUP_DESC")
registerVal1[29.000000] = registerVal2
registerVal1[40.000000] = "MPUI_BM_BRIBE_POPUP_CALLINGCARD_TRIPLE_DESC"
registerVal1[52.000000] = "MPUI_BM_BRIBE_POPUP_OUTFIT_TRIPLE_DESC"
registerVal1[53.000000] = "MPUI_BM_BRIBE_3X_GESTURES_TAUNTS_POPUP_DESC"
registerVal1[57.000000] = "MPUI_BM_BRIBE_3X_ATTACHMENT_VARIANT_POPUP_DESC"
registerVal1[58.000000] = "MPUI_BM_BRIBE_LDBUNDLE_BRIBE_POPUP_DESC"
CoD.BlackMarketUtility.BribePopupDescriptions = registerVal1
registerVal1 = {}
registerVal1[3.000000] = "MPUI_BM_BRIBE"
registerVal1[4.000000] = "MPUI_BM_BRIBE"
registerVal1[5.000000] = "MPUI_BM_BRIBE"
registerVal1[6.000000] = "MPUI_BM_BRIBE"
registerVal1[7.000000] = "MPUI_BM_BRIBE"
registerVal1[8.000000] = "MPUI_BM_BRIBE"
registerVal1[9.000000] = "MPUI_BM_BRIBE"
registerVal1[40.000000] = "MPUI_BM_3_OF_A_KIND"
registerVal1[52.000000] = "MPUI_BM_3_OF_A_KIND"
registerVal1[53.000000] = "MPUI_BM_BRIBE"
registerVal1[57.000000] = "MPUI_BM_3_OF_A_KIND"
registerVal1[58.000000] = "MPUI_BM_BRIBE"
CoD.BlackMarketUtility.BribeFrameTitle = registerVal1
CoD.BlackMarketUtility.BundleString = "MPUI_BM_BUNDLE_SUPPLY_DROP"
CoD.BlackMarketUtility.BundleDescription = "MPUI_BM_BUNDLE_DESC"
CoD.BlackMarketUtility.PromoBundleDesc = "MPUI_BM_BUNDLE_PROMO_DESC"
CoD.BlackMarketUtility.BundleAndBribeDesc = "MPUI_BM_BUNDLE_BRIBE_DESC"
CoD.BlackMarketUtility.BundleTitle = "MPUI_BM_BUNDLE_PROMO_TITLE"
CoD.BlackMarketUtility.BundleAndBribeTitle = "MPUI_BM_BUNDLE_BRIBE_PROMO_TITLE"
CoD.BlackMarketUtility.BundleHint = "MPUI_BM_BUNDLE_HINT"
CoD.BlackMarketUtility.BundleAndBribeHint = "MPUI_BM_BUNDLE_BRIBE_HINT"
CoD.BlackMarketUtility.BundleImage = "uie_t7_blackmarket_crate_bundle"
CoD.BlackMarketUtility.SeasonPassRewardImage = "uie_t7_icon_seasonpassreward"
CoD.BlackMarketUtility.SeasonPassRewardTitle = "MPUI_BM_INCENTIVE_SEASONPASS_TITLE"
CoD.BlackMarketUtility.SeasonPassRewardDesc = "MPUI_BM_INCENTIVE_SEASONPASS_DESC"
CoD.BlackMarketUtility.PrestigeMasterRewardImage = "uie_t7_icon_prestigemasterreward"
CoD.BlackMarketUtility.PrestigeMasterRewardTitle = "MPUI_BM_INCENTIVE_MASTERREWARD_TITLE"
CoD.BlackMarketUtility.PrestigeMasterRewardDesc = "MPUI_BM_INCENTIVE_MASTERREWARD_DESC"
CoD.BlackMarketUtility.IncentiveWeaponBundleTitle = "MPUI_BM_INCENTIVE_WEAPONBRIBE_TITLE"
CoD.BlackMarketUtility.IncentiveWeaponBundleHint = "MPUI_BM_INCENTIVE_WEAPONBRIBE_REMAINING"
CoD.BlackMarketUtility.IncentiveRareBundleTitle = "MPUI_BM_INCENTIVE_BUNDLE_TITLE"
CoD.BlackMarketUtility.IncentiveRareBundleHint = "MPUI_BM_INCENTIVE_BUNDLE_REMAINING"
CoD.BlackMarketUtility.HundredBundleTitle = "MPUI_BM_HUNDRED_BUNDLE_PROMO_TITLE"
CoD.BlackMarketUtility.HundredBundleHint = "MPUI_BM_HUNDRED_BUNDLE_HINT"
CoD.BlackMarketUtility.HundredBundleImage = "uie_t7_blackmarket_crate_bundlebig"
CoD.BlackMarketUtility.RareBundle10for5Title = "MPUI_BM_RARE_BUNDLE_10FOR5_PROMO_TITLE"
CoD.BlackMarketUtility.RareBundle10for5Hint = "MPUI_BM_RARE_BUNDLE_10FOR5_HINT"
CoD.BlackMarketUtility.RareBundle10for5Image = "uie_t7_blackmarket_crate_bundlebig"
CoD.BlackMarketUtility.BundleSupplySubtitle = "MPUI_BM_BUNDLE_SUBTITLE"
CoD.BlackMarketUtility["BundleAndBribeSupplySubtitle"] = "MPUI_BM_BUNDLE_BRIBE_SUBTITLE"
registerVal2 = {}
registerVal2["attachment_variant"] = ""
registerVal2["calling_card"] = "MENU_CALLING_CARD"
registerVal2["camo"] = ""
registerVal2["decal"] = "MPUI_DECAL"
registerVal2["emblem"] = "MENU_EMBLEM_UPPER"
registerVal2["gesture"] = ""
registerVal2["material"] = "MPUI_BM_LOOT_MATERIAL"
registerVal2["paintjob"] = "MENU_PAINTJOB"
registerVal2["specialist_outfit"] = "MENU_SPECIALIST_OUTFIT"
registerVal2["taunt"] = ""
registerVal2["melee_weapon"] = "MPUI_BM_MELEE_WEAPON_CAPS"
registerVal2["weapon"] = "MENU_WEAPON_CAPS"
registerVal2["reticle"] = "MPUI_RETICLE_CAPS"
CoD.BlackMarketUtility["CategoryStrings"] = registerVal2
registerVal2 = {}
registerVal2["t7_loot_gesture_boast_"] = "t7_icon_blackmarket_boast"
registerVal2["t7_loot_gesture_threaten_"] = "t7_icon_blackmarket_threaten"
registerVal2["t7_loot_gesture_goodgame_"] = "t7_icon_blackmarket_goodgame"
CoD.BlackMarketUtility["GestureImages"] = registerVal2
CoD.BlackMarketUtility["XPPerCryptoKey"] = 100.000000
CoD.BlackMarketUtility["loot_hundred_bundle_drop_id"] = 99057.000000
CoD.BlackMarketUtility["loot_hundred_bundle_sku"] = 99058.000000
CoD.BlackMarketUtility["loot_hundred_bundle_crate_dwid"] = 13.000000
CoD.BlackMarketUtility["rare_bundle_10for5_drop_id"] = 99125.000000
CoD.BlackMarketUtility["rare_bundle_10for5_sku"] = 99126.000000
CoD.BlackMarketUtility["rare_bundle_10for5_crate_dwid"] = 51.000000
CoD.BlackMarketUtility["rare_20bundle_drop_id"] = 99128.000000
CoD.BlackMarketUtility["rare_20bundle_sku"] = 99127.000000
CoD.BlackMarketUtility["rare_20bundle_crate_dwid"] = 54.000000
CoD.BlackMarketUtility["rare_20ldbundle_drop_id"] = 99150.000000
CoD.BlackMarketUtility["rare_20ldbundle_sku"] = 99149.000000
CoD.BlackMarketUtility["rare_20ldbundle_crate_dwid"] = 58.000000
CoD.BlackMarketUtility["rare_15bundle_drop_id"] = 99131.000000
CoD.BlackMarketUtility["rare_15bundle_sku"] = 99129.000000
CoD.BlackMarketUtility["outfit_3bundle_drop_id"] = 99132.000000
CoD.BlackMarketUtility["rare_15bundle_crate_dwid"] = 55.000000
CoD.BlackMarketUtility["outfit_3bundle_crate_dwid"] = 56.000000
CoD.BlackMarketUtility["loot_code_bundle_drop_id"] = 99074.000000
CoD.BlackMarketUtility["loot_code_bundle_crate_dwid"] = 41.000000
CoD.BlackMarketUtility["loot_grand_slam_sku"] = 99082.000000
CoD.BlackMarketUtility["loot_grand_slam_drop_id"] = 99083.000000
CoD.BlackMarketUtility["loot_weapon_3x_drop_id"] = 99087.000000
CoD.BlackMarketUtility["loot_weapon_3x_crate_dwid"] = 48.000000
CoD.BlackMarketUtility["loot_limited_edition_camo_drop_id"] = 99086.000000
CoD.BlackMarketUtility["loot_limited_edition_camo_crate_dwid"] = 49.000000
CoD.BlackMarketUtility["winter_challenge_sentinel_tier1"] = 99117.000000
CoD.BlackMarketUtility["winter_challenge_sentinel_tier2"] = 99118.000000
CoD.BlackMarketUtility["winter_challenge_sentinel_tier3"] = 99119.000000
CoD.BlackMarketUtility["winter_challenge_sentinel_tier4"] = 99120.000000
CoD.BlackMarketUtility["winter_challenge_reward_sku_tier1"] = 99121.000000
CoD.BlackMarketUtility["winter_challenge_reward_sku_tier2"] = 99122.000000
CoD.BlackMarketUtility["winter_challenge_reward_sku_tier3"] = 99123.000000
CoD.BlackMarketUtility["winter_challenge_reward_sku_tier4"] = 99124.000000
CoD.BlackMarketUtility["mar2018_challenge_sentinel_tier1"] = -1.000000
CoD.BlackMarketUtility["mar2018_challenge_sentinel_tier2"] = 90035.000000
CoD.BlackMarketUtility["mar2018_challenge_sentinel_tier3"] = 90036.000000
CoD.BlackMarketUtility["mar2018_challenge_sentinel_tier4"] = 90037.000000
CoD.BlackMarketUtility["mar2018_challenge_reward_sku_tier1"] = -1.000000
CoD.BlackMarketUtility["mar2018_challenge_reward_sku_tier2"] = 90038.000000
CoD.BlackMarketUtility["mar2018_challenge_reward_sku_tier3"] = 90039.000000
CoD.BlackMarketUtility["mar2018_challenge_reward_sku_tier4"] = 90040.000000
CoD.BlackMarketUtility["rare20LDPackBundleSentinel"] = 99151.000000
CoD.BlackMarketUtility["crateTable"] = "gamedata/loot/loot_crate.csv"
CoD.BlackMarketUtility["lootEmblemTableName"] = "gamedata/loot/mplootemblems.csv"
CoD.BlackMarketUtility["lootTableName"] = "gamedata/loot/mplootitems.csv"
CoD.BlackMarketUtility["emblemMaterialsTableName"] = "gamedata/emblems/emblemMaterials.csv"
CoD.BlackMarketUtility["emblemIconsTableName"] = "gamedata/emblems/emblemIcons.csv"
CoD.BlackMarketUtility["backgroundsTable"] = "gamedata/emblems/backgrounds.csv"
CoD.BlackMarketUtility["unreleasedLootTableName"] = "gamedata/loot/mpUnreleasedLoot.csv"
CoD.BlackMarketUtility["parsedEmblemDDLs"] = {}
CoD.BlackMarketUtility["SideBetSetName"] = "t7_fakeloot_callingcard_set_side_bet"
CoD.BlackMarketUtility["CallingCardsTable"] = {}
CoD.BlackMarketUtility["CommonCallingCardsTable"] = {}
registerVal2 = {}
registerVal2["dailyContract"] = 0.000000
registerVal2["weeklyContract"] = 1.000000
registerVal2["dailyAndWeeklyContract"] = 2.000000
CoD.BlackMarketUtility["MatchChallengeType"] = registerVal2
registerVal2 = {}
registerVal2["launcher_standard_df"] = true
registerVal2["bowie_knife"] = true
registerVal2["melee_knuckles"] = true
registerVal2["melee_butterfly"] = true
registerVal2["melee_wrench"] = true
registerVal2["pistol_shotgun"] = true
registerVal2["melee_crowbar"] = true
registerVal2["melee_sword"] = true
registerVal2["ar_garand"] = true
registerVal2["special_crossbow"] = true
registerVal2["melee_bat"] = true
registerVal2["melee_bowie"] = true
registerVal2["melee_dagger"] = true
registerVal2["smg_mp40"] = true
registerVal2["sniper_quickscope"] = true
registerVal2["melee_mace"] = true
registerVal2["melee_fireaxe"] = true
registerVal2["ar_famas"] = true
registerVal2["launcher_multi"] = true
registerVal2["melee_boneglass"] = true
registerVal2["melee_improvise"] = true
registerVal2["pistol_energy"] = true
registerVal2["shotgun_energy"] = true
registerVal2["lmg_infinite"] = true
registerVal2["sniper_double"] = true
registerVal2["ar_peacekeeper"] = true
registerVal2["melee_shockbaton"] = true
registerVal2["melee_nunchuks"] = true
registerVal2["melee_boxing"] = true
registerVal2["melee_katana"] = true
registerVal2["melee_shovel"] = true
registerVal2["smg_nailgun"] = true
registerVal2["special_discgun"] = true
registerVal2["melee_prosthetic"] = true
registerVal2["melee_chainsaw"] = true
registerVal2["ar_pulse"] = true
registerVal2["smg_rechamber"] = true
registerVal2["melee_crescent"] = true
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
CoD.BlackMarketUtility["WeaponsWithNoBMCamos"] = registerVal2
registerVal2 = {}
registerVal2["camo_loot_nightmare"] = "archive"
registerVal2["mtl_t7_camo_loot_patricks_03"] = "archive"
registerVal2["camo_dlc4_pap_04"] = "archive"
registerVal2["camo_cherry_fizz"] = "archive"
registerVal2["camo_vip_bubbles"] = "archive"
registerVal2["camo_dlc3_pap_var_02"] = "archive"
registerVal2["camo_dlc3_pap_var_03"] = "archive"
registerVal2["mtl_t7_camo_soviet_winter_blue"] = "archive"
registerVal2["mtl_t7_camo_honeycomb_amber"] = "archive"
registerVal2["mtl_t7_camo_summertime_wpn"] = "archive"
registerVal2["ar_m14"] = "archive"
CoD.BlackMarketUtility["LimitedCountItems"] = registerVal2
registerVal2 = {}
registerVal2["camo_loot_nightmare"] = "t7_icon_blackmarket_promo_valentine"
registerVal2["mtl_t7_camo_loot_patricks_03"] = "t7_icon_blackmarket_promo_patricks"
registerVal2["camo_dlc4_pap_04"] = "t7_icon_blackmarket_promo_punch"
registerVal2["camo_cherry_fizz"] = "t7_icon_blackmarket_promo_summer"
registerVal2["camo_vip_bubbles"] = "t7_icon_blackmarket_promo_empire"
registerVal2["camo_dlc3_pap_var_02"] = "t7_icon_blackmarket_promo_grandslam_green"
registerVal2["camo_dlc3_pap_var_03"] = "t7_icon_blackmarket_promo_grandslam_purple"
registerVal2["mtl_t7_camo_soviet_winter_blue"] = "t7_icon_blackmarket_promo_winter"
registerVal2["mtl_t7_camo_honeycomb_amber"] = "t7_icon_blackmarket_promo_amber"
registerVal2["ar_m14"] = "t7_icon_blackmarket_promo_m14"
CoD.BlackMarketUtility["LootItemImageOverride"] = registerVal2
registerVal2 = {}
registerVal2["camo_dlc3_pap_var_02"] = "grand_slam"
registerVal2["camo_dlc3_pap_var_03"] = "grand_slam"
CoD.BlackMarketUtility["LimitedEditionCamoBundleItems"] = registerVal2
registerVal2 = {}
local registerVal3 = {}
registerVal3["completeValue"] = 0.250000
registerVal3["nearCompleteValue"] = 0.125000
local registerVal4 = {}
registerVal4["completeValue"] = 0.500000
registerVal4["nearCompleteValue"] = 0.375000
local registerVal5 = {}
registerVal5["completeValue"] = 0.750000
registerVal5["nearCompleteValue"] = 0.625000
local registerVal6 = {}
registerVal6["completeValue"] = 1.000000
registerVal6["nearCompleteValue"] = 0.875000
registerVal2 = {registerVal3, registerVal4, registerVal5, registerVal6}
CoD.BlackMarketUtility["PromoRewardCompletionValues"] = registerVal2
CoD.BlackMarketUtility["CooldownTimerBufferSeconds"] = 10.000000
registerVal2 = {}
registerVal3 = {}
registerVal3["body"] = "pbt_loot_theme_mercenary_body3_knightmare;pbt_mp_mercenary"
registerVal3["head"] = "pbt_loot_theme_mercenary_head2_knightmare;pbt_mp_mercenary"
registerVal3["bodyId"] = 90047.000000
registerVal3["headId"] = 90048.000000
registerVal3["productId"] = 90065.000000
registerVal3["productBonusId"] = 90074.000000
registerVal3["skuId"] = 90083.000000
registerVal3["skuBonusId"] = 90092.000000
registerVal3["skuContractId"] = 90101.000000
registerVal3["skuContractRedeemId"] = 90110.000000
registerVal3["contractId"] = 90119.000000
registerVal3["contractRedeemId"] = 90128.000000
registerVal3["contractName"] = "mercenary_outfit_contract"
registerVal3["contractComplete"] = "mercenaryJuneOutfitSentinal"
registerVal3["specialist"] = "mercenary"
registerVal4 = {}
registerVal4["body"] = "pbt_loot_theme_outrider_body2_anhanga;pbt_mp_outrider"
registerVal4["head"] = "pbt_loot_theme_outrider_head3_anhanga;pbt_mp_outrider"
registerVal4["bodyId"] = 90049.000000
registerVal4["headId"] = 90050.000000
registerVal4["productId"] = 90066.000000
registerVal4["productBonusId"] = 90075.000000
registerVal4["skuId"] = 90084.000000
registerVal4["skuBonusId"] = 90093.000000
registerVal4["skuContractId"] = 90102.000000
registerVal4["skuContractRedeemId"] = 90111.000000
registerVal4["contractId"] = 90120.000000
registerVal4["contractRedeemId"] = 90129.000000
registerVal4["contractName"] = "outrider_outfit_contract"
registerVal4["contractComplete"] = "outriderJuneOutfitSentinal"
registerVal4["specialist"] = "outrider"
registerVal5 = {}
registerVal5["body"] = "pbt_loot_theme_technomancer_body2_oracle;pbt_mp_technomancer"
registerVal5["head"] = "pbt_loot_theme_technomancer_head4_oracle;pbt_mp_technomancer"
registerVal5["bodyId"] = 90051.000000
registerVal5["headId"] = 90052.000000
registerVal5["productId"] = 90067.000000
registerVal5["productBonusId"] = 90076.000000
registerVal5["skuId"] = 90085.000000
registerVal5["skuBonusId"] = 90094.000000
registerVal5["skuContractId"] = 90103.000000
registerVal5["skuContractRedeemId"] = 90112.000000
registerVal5["contractId"] = 90121.000000
registerVal5["contractRedeemId"] = 90130.000000
registerVal5["contractName"] = "technomancer_outfit_contract"
registerVal5["contractComplete"] = "technomancerJuneOutfitSentinal"
registerVal5["specialist"] = "technomancer"
registerVal6 = {}
registerVal6["body"] = "pbt_loot_theme_battery_body2_pixel;pbt_mp_battery"
registerVal6["head"] = "pbt_loot_theme_battery_head5_pixel;pbt_mp_battery"
registerVal6["bodyId"] = 90053.000000
registerVal6["headId"] = 90054.000000
registerVal6["productId"] = 90068.000000
registerVal6["productBonusId"] = 90077.000000
registerVal6["skuId"] = 90086.000000
registerVal6["skuBonusId"] = 90095.000000
registerVal6["skuContractId"] = 90104.000000
registerVal6["skuContractRedeemId"] = 90113.000000
registerVal6["contractId"] = 90122.000000
registerVal6["contractRedeemId"] = 90131.000000
registerVal6["contractName"] = "battery_outfit_contract"
registerVal6["contractComplete"] = "batteryJuneOutfitSentinal"
registerVal6["specialist"] = "battery"
local registerVal7 = {}
registerVal7["body"] = "pbt_loot_theme_enforcer_body2_terracotta;pbt_mp_enforcer"
registerVal7["head"] = "pbt_loot_theme_enforcer_head4_terracotta;pbt_mp_enforcer"
registerVal7["bodyId"] = 90055.000000
registerVal7["headId"] = 90056.000000
registerVal7["productId"] = 90069.000000
registerVal7["productBonusId"] = 90078.000000
registerVal7["skuId"] = 90087.000000
registerVal7["skuBonusId"] = 90096.000000
registerVal7["skuContractId"] = 90105.000000
registerVal7["skuContractRedeemId"] = 90114.000000
registerVal7["contractId"] = 90123.000000
registerVal7["contractRedeemId"] = 90132.000000
registerVal7["contractName"] = "enforcer_outfit_contract"
registerVal7["contractComplete"] = "enforcerJuneOutfitSentinal"
registerVal7["specialist"] = "enforcer"
local registerVal8 = {}
registerVal8["body"] = "pbt_loot_theme_trapper_body3_slither;pbt_mp_trapper"
registerVal8["head"] = "pbt_loot_theme_trapper_head4_slither;pbt_mp_trapper"
registerVal8["bodyId"] = 90057.000000
registerVal8["headId"] = 90058.000000
registerVal8["productId"] = 90070.000000
registerVal8["productBonusId"] = 90079.000000
registerVal8["skuId"] = 90088.000000
registerVal8["skuBonusId"] = 90097.000000
registerVal8["skuContractId"] = 90106.000000
registerVal8["skuContractRedeemId"] = 90115.000000
registerVal8["contractId"] = 90124.000000
registerVal8["contractRedeemId"] = 90133.000000
registerVal8["contractName"] = "trapper_outfit_contract"
registerVal8["contractComplete"] = "trapperJuneOutfitSentinal"
registerVal8["specialist"] = "trapper"
local registerVal9 = {}
registerVal9["body"] = "pbt_loot_theme_reaper_body1_mach3;pbt_mp_reaper"
registerVal9["head"] = "pbt_loot_theme_reaper_head1_mach3;pbt_mp_reaper"
registerVal9["bodyId"] = 90059.000000
registerVal9["headId"] = 90060.000000
registerVal9["productId"] = 90071.000000
registerVal9["productBonusId"] = 90080.000000
registerVal9["skuId"] = 90089.000000
registerVal9["skuBonusId"] = 90098.000000
registerVal9["skuContractId"] = 90107.000000
registerVal9["skuContractRedeemId"] = 90116.000000
registerVal9["contractId"] = 90125.000000
registerVal9["contractRedeemId"] = 90134.000000
registerVal9["contractName"] = "reaper_outfit_contract"
registerVal9["contractComplete"] = "reaperJuneOutfitSentinal"
registerVal9["specialist"] = "reaper"
local registerVal10 = {}
registerVal10["body"] = "pbt_loot_theme_spectre_body2_bountyhunter;pbt_mp_spectre"
registerVal10["head"] = "pbt_loot_theme_spectre_head6_bountyhunter;pbt_mp_spectre"
registerVal10["bodyId"] = 90061.000000
registerVal10["headId"] = 90062.000000
registerVal10["productId"] = 90072.000000
registerVal10["productBonusId"] = 90081.000000
registerVal10["skuId"] = 90090.000000
registerVal10["skuBonusId"] = 90099.000000
registerVal10["skuContractId"] = 90108.000000
registerVal10["skuContractRedeemId"] = 90117.000000
registerVal10["contractId"] = 90126.000000
registerVal10["contractRedeemId"] = 90135.000000
registerVal10["contractName"] = "spectre_outfit_contract"
registerVal10["contractComplete"] = "spectreJuneOutfitSentinal"
registerVal10["specialist"] = "spectre"
local registerVal11 = {}
registerVal11["body"] = "pbt_loot_theme_firebreak_body2_flashpoint;pbt_mp_firebreak"
registerVal11["head"] = "pbt_loot_theme_firebreak_head1_flashpoint;pbt_mp_firebreak"
registerVal11["bodyId"] = 90063.000000
registerVal11["headId"] = 90064.000000
registerVal11["productId"] = 90073.000000
registerVal11["productBonusId"] = 90082.000000
registerVal11["skuId"] = 90091.000000
registerVal11["skuBonusId"] = 90100.000000
registerVal11["skuContractId"] = 90109.000000
registerVal11["skuContractRedeemId"] = 90118.000000
registerVal11["contractId"] = 90127.000000
registerVal11["contractRedeemId"] = 90136.000000
registerVal11["contractName"] = "firebreak_outfit_contract"
registerVal11["contractComplete"] = "firebreakJuneOutfitSentinal"
registerVal11["specialist"] = "firebreak"
registerVal2 = {registerVal3, registerVal4, registerVal5, registerVal6, registerVal7, registerVal8, registerVal9, registerVal10, registerVal11}
CoD.BlackMarketUtility["UniqueSpecialistOutfits"] = registerVal2
local function __FUNC_940C_(arg0)
	if CoD.perController[arg0].supplyDropType == CoD.BlackMarketUtility.DropTypes.INCENTIVE_WEAPON_BUNDLE then
		return CoD.BlackMarketUtility.GetCurrentIncentiveWeaponBundleCount(arg0)
	else
		if CoD.perController[arg0].supplyDropType == CoD.BlackMarketUtility.DropTypes.INCENTIVE_RARE_BUNDLE then
			return CoD.BlackMarketUtility.GetCurrentIncentiveRareBundleCount(arg0)
		else
			if CoD.perController[arg0].supplyDropType == CoD.BlackMarketUtility.DropTypes.NO_DUPES_RANGE then
				return CoD.BlackMarketUtility.GetCurrentNoDupeRangeBundleCount(arg0)
			else
				if CoD.perController[arg0].supplyDropType == CoD.BlackMarketUtility.DropTypes.NO_DUPES_MELEE then
					return CoD.BlackMarketUtility.GetCurrentNoDupeMeleeBundleCount(arg0)
				else
					if CoD.perController[arg0].supplyDropType == CoD.BlackMarketUtility.DropTypes.COMMON then
						return CoD.BlackMarketUtility.GetCurrentSixPackCommonBundleCount(arg0)
					else
						if CoD.perController[arg0].supplyDropType == CoD.BlackMarketUtility.DropTypes.DAILY_DOUBLE_RARE_BUNDLE then
							return CoD.BlackMarketUtility.GetCurrentDailyDoubleRareBundleCount(arg0)
						else
							if CoD.perController[arg0].supplyDropType == CoD.BlackMarketUtility.DropTypes.HUNDRED_BUNDLE then
								return CoD.BlackMarketUtility.GetCurrentHundredBundleCount(arg0)
							else
								if CoD.perController[arg0].supplyDropType == CoD.BlackMarketUtility.DropTypes.RARE_BUNDLE_10FOR5 then
									return CoD.BlackMarketUtility.GetCurrentRareBundle10for5Count(arg0)
								else
									if CoD.perController[arg0].supplyDropType == CoD.BlackMarketUtility.DropTypes.BUNDLE_EXPERIMENT then
										return CoD.BlackMarketUtility.GetCurrentBundleExperimentRareBundleCount(arg0)
									else
										if CoD.perController[arg0].supplyDropType == CoD.BlackMarketUtility.DropTypes.NO_DUPES_BUNDLE then
											return CoD.BlackMarketUtility.GetCurrentNoDupesBundleRareBundleCount(arg0)
										else
											if CoD.perController[arg0].supplyDropType == CoD.BlackMarketUtility.DropTypes.CODE_BUNDLE then
												return CoD.BlackMarketUtility.GetCurrentCodeBundleRareBundleCount(arg0)
											else
												if CoD.perController[arg0].supplyDropType == CoD.BlackMarketUtility.DropTypes.WEAPON_3X then
													return CoD.BlackMarketUtility.GetCurrentWeapon3XBundleCount(arg0)
												else
													if CoD.perController[arg0].supplyDropType == CoD.BlackMarketUtility.DropTypes.LIMITED_EDITION_CAMO then
														return CoD.BlackMarketUtility.GetCurrentLimitedEditionCamoBundleCount(arg0)
													else
														if CoD.perController[arg0].supplyDropType == CoD.BlackMarketUtility.DropTypes.RARE_20BUNDLE then
															return CoD.BlackMarketUtility.GetCurrentRare20BundleCount(arg0)
														else
															if CoD.perController[arg0].supplyDropType == CoD.BlackMarketUtility.DropTypes.RARE_15BUNDLE then
																return CoD.BlackMarketUtility.GetCurrentRare15BundleCount(arg0)
															else
																if CoD.perController[arg0].supplyDropType == CoD.BlackMarketUtility.DropTypes.OUTFIT_3BUNDLE then
																	return CoD.BlackMarketUtility.GetCurrentOutfit3BundleCount(arg0)
																else
																	if CoD.perController[arg0].supplyDropType == CoD.BlackMarketUtility.DropTypes.RARE_20LDBUNDLE then
																		return CoD.BlackMarketUtility.GetCurrentRare20LDBundleCount(arg0)
																	else
																		local registerVal1 = IsBundleActive(arg0)
																		if CoD.perController[arg0].supplyDropType == CoD.BlackMarketUtility.DropTypes.RARE and not registerVal1 then
																			registerVal1 = CoD.BlackMarketUtility.GetCurrentBundleCount(arg0)
																			local registerVal2 = CoD.BlackMarketUtility.GetCurrentHundredBundleCount(arg0)
																			registerVal2 = CoD.BlackMarketUtility.GetCurrentRareBundle10for5Count(arg0)
																			registerVal2 = CoD.BlackMarketUtility.GetCurrentRare20BundleCount(arg0)
																			registerVal2 = CoD.BlackMarketUtility.GetCurrentRare20LDBundleCount(arg0)
																			return ((((registerVal1 + registerVal2) + registerVal2) + registerVal2) + registerVal2)
																		else
																			return CoD.BlackMarketUtility.GetCurrentBundleCount(arg0)
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

CoD.BlackMarketUtility["GetBundleCountForCurrentDropType"] = __FUNC_940C_
local function __FUNC_A391_(arg0)
	local registerVal1 = Engine.GetInventoryItemQuantity(arg0, Dvar.rare_crate_bundle_id:get())
	if not registerVal1 then
	end
	return 0.000000
end

CoD.BlackMarketUtility["GetCurrentBundleCount"] = __FUNC_A391_
local function __FUNC_A46C_(arg0)
	local registerVal1 = Engine.GetInventoryItemQuantity(arg0, CoD.BlackMarketUtility.loot_hundred_bundle_drop_id)
	if not registerVal1 then
	end
	return 0.000000
end

CoD.BlackMarketUtility["GetCurrentHundredBundleCount"] = __FUNC_A46C_
local function __FUNC_A561_(arg0)
	local registerVal1 = Engine.GetInventoryItemQuantity(arg0, CoD.BlackMarketUtility.rare_bundle_10for5_drop_id)
	if not registerVal1 then
	end
	return 0.000000
end

CoD.BlackMarketUtility["GetCurrentRareBundle10for5Count"] = __FUNC_A561_
local function __FUNC_A654_(arg0)
	local registerVal1 = Engine.GetInventoryItemQuantity(arg0, CoD.BlackMarketUtility.rare_20bundle_drop_id)
	if not registerVal1 then
	end
	return 0.000000
end

CoD.BlackMarketUtility["GetCurrentRare20BundleCount"] = __FUNC_A654_
local function __FUNC_A743_(arg0)
	local registerVal1 = Engine.GetInventoryItemQuantity(arg0, CoD.BlackMarketUtility.rare_20ldbundle_drop_id)
	if not registerVal1 then
	end
	return 0.000000
end

CoD.BlackMarketUtility["GetCurrentRare20LDBundleCount"] = __FUNC_A743_
local function __FUNC_A831_(arg0)
	local registerVal1 = Engine.GetInventoryItemQuantity(arg0, CoD.BlackMarketUtility.rare_15bundle_drop_id)
	if not registerVal1 then
	end
	return 0.000000
end

CoD.BlackMarketUtility["GetCurrentRare15BundleCount"] = __FUNC_A831_
local function __FUNC_A91F_(arg0)
	local registerVal1 = Engine.GetInventoryItemQuantity(arg0, CoD.BlackMarketUtility.outfit_3bundle_drop_id)
	if not registerVal1 then
	end
	return 0.000000
end

CoD.BlackMarketUtility["GetCurrentOutfit3BundleCount"] = __FUNC_A91F_
local function __FUNC_AA0C_(arg0)
	local registerVal1 = Dvar.ui_incentive_weapons:exists()
	if LUI.DEV and registerVal1 then
		Dvar.ui_incentive_weapons:get()
		return tonumber(Dvar.ui_incentive_weapons:get)
	end
	registerVal1 = Engine.GetInventoryItemQuantity(arg0, Dvar.incentive_weapon_drop_id:get())
	if not registerVal1 then
	end
	return 0.000000
end

CoD.BlackMarketUtility["GetCurrentIncentiveWeaponBundleCount"] = __FUNC_AA0C_
local function __FUNC_ABA2_(arg0)
	local registerVal1 = Dvar.ui_incentive_rares:exists()
	if LUI.DEV and registerVal1 then
		Dvar.ui_incentive_rares:get()
		return tonumber(Dvar.ui_incentive_rares:get)
	end
	registerVal1 = Engine.GetInventoryItemQuantity(arg0, Dvar.incentive_rare_drop_id:get())
	if not registerVal1 then
	end
	return 0.000000
end

CoD.BlackMarketUtility["GetCurrentIncentiveRareBundleCount"] = __FUNC_ABA2_
local function __FUNC_AD32_(arg0)
	local registerVal1 = Dvar.range_weapon_no_dupes_drop_id:exists()
	if not registerVal1 then
		return 0.000000
	end
	registerVal1 = Engine.GetInventoryItemQuantity(arg0, Dvar.range_weapon_no_dupes_drop_id:get())
	if not registerVal1 then
	end
	return 0.000000
end

CoD.BlackMarketUtility["GetCurrentNoDupeRangeBundleCount"] = __FUNC_AD32_
local function __FUNC_AE4D_(arg0)
	local registerVal1 = Dvar.melee_weapon_no_dupes_drop_id:exists()
	if not registerVal1 then
		return 0.000000
	end
	registerVal1 = Engine.GetInventoryItemQuantity(arg0, Dvar.melee_weapon_no_dupes_drop_id:get())
	if not registerVal1 then
	end
	return 0.000000
end

CoD.BlackMarketUtility["GetCurrentNoDupeMeleeBundleCount"] = __FUNC_AE4D_
local function __FUNC_AF69_(arg0)
	local registerVal1 = Engine.DvarInt(nil, "loot_sixPack_drop_id")
	if registerVal1 == 0.000000 then
		return 0.000000
	end
	local registerVal2 = Engine.GetInventoryItemQuantity(arg0, registerVal1)
	if not registerVal2 then
	end
	return 0.000000
end

CoD.BlackMarketUtility["GetCurrentSixPackCommonBundleCount"] = __FUNC_AF69_
local function __FUNC_B052_(arg0)
	local registerVal1 = Engine.DvarInt(nil, "loot_dailyDouble_drop_id")
	if registerVal1 == 0.000000 then
		return 0.000000
	end
	local registerVal2 = Engine.GetInventoryItemQuantity(arg0, registerVal1)
	if not registerVal2 then
	end
	return 0.000000
end

CoD.BlackMarketUtility["GetCurrentDailyDoubleRareBundleCount"] = __FUNC_B052_
local function __FUNC_B13E_(arg0)
	local registerVal1 = Engine.DvarInt(nil, "loot_3pack_bundle_id")
	if registerVal1 == 0.000000 then
		return 0.000000
	end
	local registerVal2 = Engine.GetInventoryItemQuantity(arg0, registerVal1)
	if not registerVal2 then
	end
	return 0.000000
end

CoD.BlackMarketUtility["GetCurrentBundleExperimentRareBundleCount"] = __FUNC_B13E_
local function __FUNC_B226_(arg0)
	local registerVal1 = Engine.DvarInt(nil, "loot_noDupeRare20Bundle_drop_id")
	if registerVal1 == 0.000000 then
		return 0.000000
	end
	local registerVal2 = Engine.GetInventoryItemQuantity(arg0, registerVal1)
	if not registerVal2 then
	end
	return 0.000000
end

CoD.BlackMarketUtility["GetCurrentNoDupesBundleRareBundleCount"] = __FUNC_B226_
local function __FUNC_B319_(arg0)
	local registerVal2 = Engine.GetInventoryItemQuantity(arg0, CoD.BlackMarketUtility.loot_code_bundle_drop_id)
	if not registerVal2 then
	end
	return 0.000000
end

CoD.BlackMarketUtility["GetCurrentCodeBundleRareBundleCount"] = __FUNC_B319_
local function __FUNC_B40E_(arg0)
	local registerVal2 = Engine.GetInventoryItemQuantity(arg0, CoD.BlackMarketUtility.loot_weapon_3x_drop_id)
	if not registerVal2 then
	end
	return 0.000000
end

CoD.BlackMarketUtility["GetCurrentWeapon3XBundleCount"] = __FUNC_B40E_
local function __FUNC_B500_(arg0)
	local registerVal2 = Engine.GetInventoryItemQuantity(arg0, CoD.BlackMarketUtility.loot_limited_edition_camo_drop_id)
	if not registerVal2 then
	end
	return 0.000000
end

CoD.BlackMarketUtility["GetCurrentLimitedEditionCamoBundleCount"] = __FUNC_B500_
local function __FUNC_B5FF_()
	local registerVal0 = Dvar.loot_bribeCrate_dwid:get()
	local registerVal1 = Dvar.incentive_weapon_crate_dwid:get()
	if registerVal0 == registerVal1 then
		if not CoD.BlackMarketUtility.BribePopupTitles[registerVal0] then
		end
		return ""
	end

CoD.BlackMarketUtility["GetCurrentBribePopupTitle"] = __FUNC_B5FF_
local function __FUNC_B743_()
	local registerVal0 = Dvar.loot_bribeCrate_dwid:get()
	local registerVal1 = Dvar.incentive_weapon_crate_dwid:get()
	if registerVal0 == registerVal1 then
		if not CoD.BlackMarketUtility.BribePopupDescriptions[registerVal0] then
		end
		return ""
	end

CoD.BlackMarketUtility["GetCurrentBribePopupDescription"] = __FUNC_B743_
local function __FUNC_B88D_()
	local registerVal0 = Dvar.loot_bribeCrate_dwid:get()
	local registerVal1 = Dvar.incentive_weapon_crate_dwid:get()
	if registerVal0 == registerVal1 then
		return CoD.BlackMarketUtility.BribeStrings[registerVal0]
	end

CoD.BlackMarketUtility["GetCurrentBribeString"] = __FUNC_B88D_
local function __FUNC_B9B9_()
	local registerVal0 = Dvar.loot_bribeCrate_dwid:get()
	local registerVal1 = Dvar.incentive_weapon_crate_dwid:get()
	if registerVal0 == registerVal1 then
		if 20.000000 <= registerVal0 and registerVal0 <= 29.000000 then
			return CoD.BlackMarketUtility.LocalizeForHeroBribe(registerVal0, "MPUI_BM_SPECIALIST_ITEM_BRIBE_HINT")
		end
		return CoD.BlackMarketUtility.BribeHints[registerVal0]
	end

CoD.BlackMarketUtility["GetCurrentBribeHint"] = __FUNC_B9B9_
local function __FUNC_BB73_()
	local registerVal0 = Dvar.loot_bribeCrate_dwid:get()
	local registerVal1 = Dvar.incentive_weapon_crate_dwid:get()
	if registerVal0 == registerVal1 then
		return "t7_blackmarket_crate_bribe_chip_weapon"
	end
	return CoD.BlackMarketUtility.BribeImages[registerVal0]
end

CoD.BlackMarketUtility["GetCurrentBribeImage"] = __FUNC_BB73_
local function __FUNC_BCD4_()
	local registerVal0 = Dvar.loot_bribeCrate_dwid:get()
	local registerVal1 = Dvar.incentive_weapon_crate_dwid:get()
	if registerVal0 == registerVal1 then
		return "t7_blackmarket_promo_bribe_weapon"
	end
	return CoD.BlackMarketUtility.BribePromoImages[registerVal0]
end

CoD.BlackMarketUtility["GetCurrentBribePromoImage"] = __FUNC_BCD4_
local function __FUNC_BE38_()
	local registerVal0 = Dvar.loot_bribeCrate_dwid:get()
	local registerVal1 = Dvar.incentive_weapon_crate_dwid:get()
	if registerVal0 == registerVal1 then
		return CoD.BlackMarketUtility.BribeTitles[registerVal0]
	end

CoD.BlackMarketUtility["GetCurrentBribeTitle"] = __FUNC_BE38_
local function __FUNC_BF64_()
	local registerVal0 = Dvar.loot_bribeCrate_dwid:get()
	local registerVal1 = Dvar.incentive_weapon_crate_dwid:get()
	if registerVal0 == registerVal1 then
		if 20.000000 <= registerVal0 and registerVal0 <= 29.000000 then
			registerVal1 = CoD.BlackMarketUtility.LocalizeForHeroBribe(registerVal0, "MPUI_BM_BRIBE_SPECIALIST_EXPIRY")
			local registerVal3 = Engine.GetGlobalModel()
			local registerVal2 = Engine.GetModel(registerVal3, "Autoevents")
			registerVal3 = Engine.GetModel(registerVal2, "autoevent_timer_bribe")
			local registerVal4 = Engine.GetModelValue(registerVal3)
			return Engine.Localize(registerVal1, "<SPNAME>", registerVal4)
		end
		if CoD.BlackMarketUtility.BribeDescriptions[registerVal0] then
			GetWeekDayFromIntDvar("loot_mp_saleEndDay", "")
			return LocalizeIntoStringWithPSTOrPDT(CoD.BlackMarketUtility.BribeDescriptions[registerVal0], GetWeekDayFromIntDvar)
		else
			return nil
		end
	end

CoD.BlackMarketUtility["GetCurrentBribeDescription"] = __FUNC_BF64_
local function __FUNC_C2E8_()
	local registerVal0 = Dvar.loot_bribeCrate_dwid:get()
	return CoD.BlackMarketUtility.BribeFrameTitle[registerVal0]
end

CoD.BlackMarketUtility["GetCurrentBribeFrameTitle"] = __FUNC_C2E8_
local function __FUNC_C3D3_(arg0)
	if arg0 == CoD.BlackMarketUtility.DropTypes.BRIBE then
		return CoD.BlackMarketUtility.GetCurrentBribeString()
	else
		if arg0 == CoD.BlackMarketUtility.DropTypes.BUNDLE_EXPERIMENT then
			Engine.Localize(Engine.DvarString(nil, "loot_3pack_final_count_string_ref"))
			return Engine.Localize(CoD.BlackMarketUtility.CrateTypeStrings[arg0], Engine.Localize)
		else
			if arg0 == CoD.BlackMarketUtility.DropTypes.GRAND_SLAM then
				return ""
			else
				return CoD.BlackMarketUtility.CrateTypeStrings[arg0]
			end
		end
	end
end

CoD.BlackMarketUtility["GetCrateTypeString"] = __FUNC_C3D3_
local function __FUNC_C67E_(arg0)
	if arg0 == CoD.BlackMarketUtility.DropTypes.BRIBE then
		return CoD.BlackMarketUtility.GetCurrentBribeImage()
	else
		if arg0 == CoD.BlackMarketUtility.DropTypes.RARE or arg0 == CoD.BlackMarketUtility.DropTypes.NO_DUPES_CRATE then
			return "uie_t7_blackmarket_crate_rare_focus"
		else
			return "uie_t7_blackmarket_crate_common_focus"
		end
	end
end

CoD.BlackMarketUtility["GetCrateTypeImage"] = __FUNC_C67E_
local function __FUNC_C85F_(arg0)
	if arg0 == Enum.LootRarityType.LOOT_RARITY_TYPE_COMMON then
		local registerVal1 = Dvar.loot_burnCommonRefund:exists()
		if registerVal1 then
			registerVal1 = Dvar.loot_burnCommonRefund:get()
			return (registerVal1 * 100.000000)
		else
			return 100.000000
		end
	end
	if arg0 == Enum.LootRarityType.LOOT_RARITY_TYPE_RARE then
		registerVal1 = Dvar.loot_burnRareRefund:exists()
		if registerVal1 then
			registerVal1 = Dvar.loot_burnRareRefund:get()
			return (registerVal1 * 100.000000)
		else
			return 300.000000
		end
	end
	if arg0 == Enum.LootRarityType.LOOT_RARITY_TYPE_LEGENDARY then
		registerVal1 = Dvar.loot_burnLegendaryRefund:exists()
		if registerVal1 then
			registerVal1 = Dvar.loot_burnLegendaryRefund:get()
			return (registerVal1 * 100.000000)
		else
			return 700.000000
		end
	end
	if arg0 == Enum.LootRarityType.LOOT_RARITY_TYPE_EPIC then
		registerVal1 = Dvar.loot_burnEpicRefund:exists()
		if registerVal1 then
			registerVal1 = Dvar.loot_burnEpicRefund:get()
			return (registerVal1 * 100.000000)
		else
			return 1000.000000
		end
	end
end

CoD.BlackMarketUtility["BurnReturnXP"] = __FUNC_C85F_
local function __FUNC_CBAB_(arg0)
	local registerVal1, registerVal2, registerVal3 = pairs(CoD.BlackMarketUtility.CrateTypeIds)
	if  == arg0 then
		return 
	end
	return CoD.BlackMarketUtility.DropTypes.COMMON
end

CoD.BlackMarketUtility["GetRarityIDForString"] = __FUNC_CBAB_
local function __FUNC_CCAD_(arg0)
	local registerVal2, registerVal3, registerVal4 = string.gmatch(arg0, "[^%s_]+")
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		if (0.000000 + 1.000000) == 1.000000 and index5 ~= "decal" then
		else
			if (0.000000 + 1.000000) == 2.000000 then
				return index5
			end
		end
	end
	registerVal4 = Engine.TableLookup(nil, CoD.emblemIconsTable, 3.000000, arg0, 1.000000)
	if registerVal4 and registerVal4 ~= "" then
		return registerVal4
	end
	return nil
end

CoD.BlackMarketUtility["ConvertToLootDecalIndex"] = __FUNC_CCAD_
local function __FUNC_CE2E_(arg0)
	local registerVal1 = CoD.BlackMarketUtility.ConvertToLootDecalIndex(arg0)
	if not registerVal1 then
	end
	return arg0
end

CoD.BlackMarketUtility["ConvertToLootDecalIndexIfDecal"] = __FUNC_CE2E_
local function __FUNC_CED6_(arg0)
	local registerVal2, registerVal3, registerVal4 = string.gmatch(arg0, "[^%s;]+")
	if nil == nil then
	else
		return , CoDLUIDecompiler.LuaRegister
	end
	if  ~= nil then
		return , CoDLUIDecompiler.LuaRegister
	end
	return "", CoDLUIDecompiler.LuaRegister
end

CoD.BlackMarketUtility["SplitIdIntoTwoValues"] = __FUNC_CED6_
local function __FUNC_CFA4_(arg0)
	local registerVal4, registerVal5, registerVal6 = string.gmatch(arg0, "[^%s_]+")
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		if (0.000000 + 1.000000) == 1.000000 then
			if index7 ~= "acv" then
				return "", CoDLUIDecompiler.LuaRegister
			else
				if (0.000000 + 1.000000) == 2.000000 then
				else
					if "" == "" then
					else
					end
				end
			end
		end
	end
	return index7, CoDLUIDecompiler.LuaRegister
end

CoD.BlackMarketUtility["SplitAttachmentVariantID"] = __FUNC_CFA4_
local function __FUNC_D0C6_(arg0)
	local registerVal1 = string.find(arg0, "body")
	if registerVal1 then
		return Enum.CharacterItemType.CHARACTER_ITEM_TYPE_BODY
	end
	return Enum.CharacterItemType.CHARACTER_ITEM_TYPE_HELMET
end

CoD.BlackMarketUtility["GetSpecialistThemeType"] = __FUNC_D0C6_
local function __FUNC_D1EF_(arg0, arg1)
	if arg1 == "camo" then
		local registerVal2 = CoD.BlackMarketUtility.IsLimitedBlackMarketItem(arg0)
		if registerVal2 then
			return Engine.Localize("MPUI_CAMO")
		end
		registerVal2, registerVal3 = CoD.BlackMarketUtility.SplitIdIntoTwoValues(arg0)
		local registerVal4 = CoD.CACUtility.GetNameForItemRefString(registerVal3)
		return Engine.Localize("MPUI_BM_WEAPON_CAMO", registerVal4)
	else
		if arg1 == "attachment_variant" then
			registerVal2, registerVal3 = CoD.BlackMarketUtility.SplitAttachmentVariantID(arg0)
			registerVal4 = CoD.CACUtility.GetNameForItemRefString(registerVal3)
			local registerVal5 = Engine.TableLookup(nil, CoD.attachmentTable, 4.000000, registerVal2, 3.000000)
			return Engine.Localize("MPUI_BM_WEAPON_ATTACHMENT_VARIANT", registerVal4, registerVal5)
		else
			if arg1 == "gesture" then
				registerVal2, registerVal3 = CoD.BlackMarketUtility.SplitIdIntoTwoValues(arg0)
				registerVal4, registerVal5 = CoD.CCUtility.GetHeroDisplayNameAndIndex(Enum.eModes.MODE_MULTIPLAYER, registerVal3)
				local registerVal6 = CoD.CCUtility.GetTypeNameForGesture(Enum.eModes.MODE_MULTIPLAYER, registerVal3, registerVal2)
				return Engine.Localize("MPUI_BM_HERO_AND_GESTURE_TYPE", registerVal4, registerVal6)
			else
				if arg1 == "taunt" then
					registerVal2, registerVal3 = CoD.CCUtility.GetHeroDisplayNameAndIndexForTaunt(Enum.eModes.MODE_MULTIPLAYER, arg0)
					return Engine.Localize("MPUI_BM_HERO_TAUNT", registerVal2)
				else
					if arg1 == "specialist_outfit" then
						registerVal2, registerVal3 = CoD.BlackMarketUtility.SplitIdIntoTwoValues(arg0)
						registerVal5 = CoD.BlackMarketUtility.GetSpecialistThemeType(registerVal2)
						if registerVal5 == Enum.CharacterItemType.CHARACTER_ITEM_TYPE_BODY then
						end
						CoD.BlackMarketUtility.GetHeroDisplayNameForAssetName(registerVal3)
						return Engine.Localize("MENU_SPECIALIST_BODY_THEME", CoD.BlackMarketUtility.GetHeroDisplayNameForAssetName)
					else
						registerVal2, registerVal3, registerVal4 = string.gmatch(arg0, "[^%s_]+")
						for index5,value6 in registerVal2, registerVal3, registerVal4 do
							registerVal6 = Engine.LocalizeRefExists(("MPUI_" .. index5 .. "_CAPS"))
							if registerVal6 then
								Engine.Localize(("MPUI_" .. index5 .. "_CAPS"))
								return Engine.Localize("MPUI_BM_RETICLE", Engine.Localize)
							else
								return CoD.BlackMarketUtility.CategoryStrings[arg1]
							end
						end
					end
				end
			end
		end
	end
	return CoD.BlackMarketUtility.CategoryStrings[arg1]
end

CoD.BlackMarketUtility["GetItemTypeStringForLootItem"] = __FUNC_D1EF_
local function __FUNC_DACD_(arg0, arg1)
	if CoD.BlackMarketUtility.LootItemImageOverride[arg0] then
		return CoD.BlackMarketUtility.LootItemImageOverride[arg0]
	end
	if arg1 == "camo" then
		local registerVal2, registerVal3 = CoD.BlackMarketUtility.SplitIdIntoTwoValues(arg0)
		local registerVal4 = CoD.CACUtility.GetImageForItemRefString(registerVal3)
		return (registerVal4 .. "_" .. registerVal2)
	else
		if arg1 == "emblem" then
			return "blacktransparent"
		else
			if arg1 == "attachment_variant" then
				registerVal2 = Engine.GetAttachmentCosmeticVariantImage(arg0, 0.000000)
				if not registerVal2 then
				end
				return "cac_mods_ar_standard_high_caliber_02_sm"
			else
				if arg1 == "material" then
					return arg0
				else
					if arg1 == "gesture" then
						registerVal2, registerVal3, registerVal4 = pairs(CoD.BlackMarketUtility.GestureImages)
						for index5,value6 in registerVal2, registerVal3, registerVal4 do
							local registerVal7 = LUI.startswith(arg0, index5)
							if registerVal7 then
								return value6
							end
						end
					else
						if arg1 == "taunt" then
							registerVal2 = CoD.BlackMarketUtility.GetRarityForLootItemFromName(arg0)
							registerVal3 = CoD.BlackMarketUtility.GetRarityForLootItemFromName(arg0)
							if registerVal3 == "MPUI_BM_EPIC" then
								return "t7_icon_blackmarket_taunt_epic"
							else
								return "t7_icon_blackmarket_taunt"
							else
								if arg1 == "specialist_outfit" then
									registerVal2, registerVal3 = CoD.BlackMarketUtility.SplitIdIntoTwoValues(arg0)
									return CoD.BlackMarketUtility.GetSpecialistOutfitFieldForId(registerVal2, registerVal3, "icon")
								else
									if arg1 == "weapon" or arg1 == "melee_weapon" then
										registerVal3 = CoD.gameMode:lower()
										return Engine.GetHudIconForWeapon((arg0 .. ("_" .. registerVal3)), Enum.eModes.MODE_MULTIPLAYER)
									end
								end
							end
						end
					end
				end
			end
		end
	end
	return arg0
end

CoD.BlackMarketUtility["GetImageForLootItem"] = __FUNC_DACD_
local function __FUNC_E114_(arg0, arg1, arg2)
	if arg2 == "camo" then
		local registerVal3, registerVal4 = CoD.BlackMarketUtility.SplitIdIntoTwoValues(arg1)
		return Engine.TableLookup(nil, CoD.attachmentTable, 4.000000, registerVal3, 3.000000)
	else
		if arg2 == "emblem" then
			registerVal3, registerVal4, registerVal5 = CoD.BlackMarketUtility.GetLootEmblemIndexParams(arg0, arg1)
			CoD.CraftUtility.Emblems.ParseDDL(registerVal3, registerVal5)
			CoD.BlackMarketUtility.parsedEmblemDDLs[registerVal5] = true
			if CoD.CraftUtility.Emblems.CachedEmblems[CoD.CraftUtility.Emblems.CachedEmblemIndexMapping[(registerVal4 + 1.000000)]] ~= nil then
				return CoD.CraftUtility.Emblems.CachedEmblems[CoD.CraftUtility.Emblems.CachedEmblemIndexMapping[(registerVal4 + 1.000000)]].emblemName
			end
			return arg1
		else
			if arg2 == "calling_card" then
				registerVal5 = Engine.TableLookup(nil, CoD.backgroundsTable, 3.000000, arg1, 4.000000)
				if not registerVal5 then
				end
				return ""
			else
				if arg2 == "decal" then
					registerVal3 = CoD.BlackMarketUtility.ConvertToLootDecalIndexIfDecal(arg1)
					if registerVal3 == arg1 then
						return ""
					end
					return GetEmblemDecalDesc(registerVal3)
				else
					if arg2 == "attachment_variant" then
						registerVal3 = Engine.GetAttachmentCosmeticVariantName(arg1, 0.000000)
						if not registerVal3 then
						end
						return "High Caliber 1"
					else
						if arg2 == "material" then
							registerVal5 = Engine.TableLookup(nil, CoD.BlackMarketUtility.emblemMaterialsTableName, 3.000000, arg1, 4.000000)
							if not registerVal5 then
							end
							return ""
						else
							if arg2 == "gesture" then
								registerVal3, registerVal4 = CoD.BlackMarketUtility.SplitIdIntoTwoValues(arg1)
								return CoD.CCUtility.GetDisplayNameForGesture(Enum.eModes.MODE_MULTIPLAYER, registerVal4, registerVal3)
							else
								if arg2 == "taunt" then
									return CoD.CCUtility.GetDisplayNameForTaunt(Enum.eModes.MODE_MULTIPLAYER, arg1)
								else
									if arg2 == "specialist_outfit" then
										registerVal3, registerVal4 = CoD.BlackMarketUtility.SplitIdIntoTwoValues(arg1)
										return CoD.BlackMarketUtility.GetSpecialistOutfitFieldForId(registerVal3, registerVal4, "name")
									else
										if arg2 == "weapon" or arg2 == "melee_weapon" then
											return CoD.CACUtility.GetNameForItemRefString(arg1)
										else
											if arg2 == "reticle" then
												return ("MPUI_RETICLE_" .. arg1)
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
	return arg1
end

CoD.BlackMarketUtility["GetStringRefForLootItem"] = __FUNC_E114_
local function __FUNC_E997_(arg0, arg1, arg2)
	local registerVal4 = Engine.GetHeroList(Enum.eModes.MODE_MULTIPLAYER)
	local registerVal5, registerVal6, registerVal7 = ipairs(registerVal4)
	for index8,value9 in registerVal5, registerVal6, registerVal7 do
		if value9.assetName == arg1 then
			for index10=0.000000, (Enum.CharacterItemType.CHARACTER_ITEM_TYPE_COUNT - 1.000000), 1.000000 do
				for index14=0.000000, 256.000000, 1.000000 do
					local registerVal18 = Engine.GetHeroItemInfo(Enum.eModes.MODE_MULTIPLAYER, value9.bodyIndex, index10, index14)
					if not registerVal18 then
					else
						if registerVal18.assetName ~= nil and registerVal18.assetName == arg0 then
							return registerVal18[arg2]
						end
					end
				end
			end
		end
	end
	return ""
end

CoD.BlackMarketUtility["GetSpecialistOutfitFieldForId"] = __FUNC_E997_
local function __FUNC_EBE0_(arg0, arg1)
	local registerVal3 = Engine.GetHeroList(Enum.eModes.MODE_MULTIPLAYER)
	local registerVal4, registerVal5, registerVal6 = ipairs(registerVal3)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		if value8.assetName == arg1 then
			for index9=0.000000, (Enum.CharacterItemType.CHARACTER_ITEM_TYPE_COUNT - 1.000000), 1.000000 do
				for index13=0.000000, 256.000000, 1.000000 do
					local registerVal17 = Engine.GetHeroItemInfo(Enum.eModes.MODE_MULTIPLAYER, value8.bodyIndex, index9, index13)
					if not registerVal17 then
					else
						if registerVal17.assetName ~= nil and registerVal17.assetName == arg0 then
							return index13
						end
					end
				end
			end
		end
	end
	return ""
end

CoD.BlackMarketUtility["GetSpecialistOutfitIndexForId"] = __FUNC_EBE0_
local function __FUNC_EE20_(arg0)
	return Engine.TableLookup(nil, CoD.BlackMarketUtility.lootTableName, 0.000000, arg0, 4.000000)
end

CoD.BlackMarketUtility["GetCallingCardSetName"] = __FUNC_EE20_
local function __FUNC_EF07_(arg0, arg1)
	local registerVal4 = Engine.TableFindRows(CoD.BlackMarketUtility.lootTableName, 4.000000, arg1)
	if not registerVal4 then
		return 0.000000, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
	end
	for index7=1.000000, #0.000000, 1.000000 do
		local registerVal11 = Engine.TableLookupGetColumnValueForRow(CoD.BlackMarketUtility.lootTableName, registerVal4[index7], 0.000000)
		local registerVal12 = CoD.BlackMarketUtility.IsItemLocked(arg0, registerVal11)
		registerVal12 = CoD.BlackMarketUtility.GetLootCallingCardIndex(arg0, registerVal11)
		local registerVal13 = Engine.IsEmblemBackgroundNew(arg0, registerVal12)
		if not registerVal12 and registerVal12 and registerVal13 then
		end
	end
	return (0.000000 + 1.000000), CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

CoD.BlackMarketUtility["GetNumOwnedAndTotalForCallingCardSet"] = __FUNC_EF07_
local function __FUNC_F175_(arg0, arg1)
	local registerVal2 = CoD.BlackMarketUtility.GetCallingCardSetName(arg1)
	if registerVal2 == nil or registerVal2 == "" then
		return 0.000000, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
	end
	return CoD.BlackMarketUtility.GetNumOwnedAndTotalForCallingCardSet(arg0, registerVal2)
end

CoD.BlackMarketUtility["GetSetNumOwnedAndTotalForCallingCard"] = __FUNC_F175_
local function __FUNC_F296_(arg0)
	local registerVal4 = Engine.TableFindRows(CoD.BlackMarketUtility.lootTableName, 5.000000, arg0)
	if registerVal4 ~= nil then
		local registerVal5 = Engine.TableLookupGetColumnValueForRow(CoD.BlackMarketUtility.lootTableName, registerVal4[1.000000], 0.000000)
		local registerVal6 = Engine.TableLookupGetColumnValueForRow(CoD.BlackMarketUtility.lootTableName, registerVal4[1.000000], 2.000000)
		return registerVal5, CoDLUIDecompiler.LuaRegister
	end
	return nil, CoDLUIDecompiler.LuaRegister
end

CoD.BlackMarketUtility["GetRewardAndCategoryForItem"] = __FUNC_F296_
local function __FUNC_F445_(arg0)
	local registerVal1 = Dvar.loot_unlockUnreleasedLoot:exists()
	registerVal1 = Dvar.loot_unlockUnreleasedLoot:get()
	if registerVal1 and registerVal1 == true then
		return false
	end
	local registerVal2 = Engine.TableLookup(nil, CoD.BlackMarketUtility.unreleasedLootTableName, 0.000000, arg0, 0.000000)
	if arg0 == nil or arg0 ~= registerVal2 then
	end
	return true
end

CoD.BlackMarketUtility["IsUnreleasedBlackMarketItem"] = __FUNC_F445_
local function __FUNC_F5DD_(arg0)
	local registerVal2 = Engine.TableLookup(nil, CoD.BlackMarketUtility.lootTableName, 0.000000, arg0, 0.000000)
	if arg0 ~= registerVal2 then
	end
	return true
end

CoD.BlackMarketUtility["IsBlackMarketItem"] = __FUNC_F5DD_
local function __FUNC_F6CA_(arg0)
	if arg0 ~= nil then
		local registerVal1 = CoD.BlackMarketUtility.IsBlackMarketItem(arg0)
		if registerVal1 then
			registerVal1 = CoD.BlackMarketUtility.IsUnreleasedBlackMarketItem(arg0)
		else
		end
	end
	return true
end

CoD.BlackMarketUtility["IsReleasedBlackMarketItem"] = __FUNC_F6CA_
local function __FUNC_F7CA_(arg0)
	if CoD.BlackMarketUtility.LimitedCountItems[arg0] then
		return true
	end
	return false
end

CoD.BlackMarketUtility["IsLimitedBlackMarketItem"] = __FUNC_F7CA_
local function __FUNC_F878_(arg0)
	if CoD.BlackMarketUtility.LimitedEditionCamoBundleItems[arg0] then
		return true
	end
	return false
end

CoD.BlackMarketUtility["IsLimitedEditionCamoBundleItem"] = __FUNC_F878_
local function __FUNC_F934_(arg0, arg1)
	local registerVal2 = CoD.BlackMarketUtility.IsLimitedBlackMarketItem(arg1)
	if not registerVal2 then
		return false
	end
	registerVal2 = IsLimitedLootPromoActive(arg0)
	registerVal2 = IsGrandSlamActive(arg0)
	if not arg1 or registerVal2 then
		if CoD.BlackMarketUtility.LimitedCountItems[arg1] == "active" then
			return false
		end
	end
	return CoD.BlackMarketUtility.IsItemLocked(arg0, arg1)
end

CoD.BlackMarketUtility["IsHiddenLimitedBlackMarketItem"] = __FUNC_F934_
local function __FUNC_FAE9_(arg0, arg1)
	local registerVal2 = CoD.BlackMarketUtility.IsLimitedEditionCamoBundleItem(arg1)
	if not registerVal2 then
		return false
	end
	registerVal2 = IsGrandSlamActive(arg0)
	if registerVal2 and CoD.BlackMarketUtility.LimitedCountItems[arg1] == "active" then
		return false
	end
	registerVal2 = CoD.BlackMarketUtility.GetCurrentLimitedEditionCamoBundleCount(arg0)
	if 0.000000 < registerVal2 then
		return false
	end
	registerVal2 = CoD.GetContractStatValuesForIndex(arg0, LuaUtils.BMContracts.specialContractIndex)
	if registerVal2 and registerVal2.category == CoD.BlackMarketUtility.LimitedEditionCamoBundleItems[arg1] and not registerVal2.isAwardGiven then
		return false
	end
	return CoD.BlackMarketUtility.IsItemLocked(arg0, arg1)
end

CoD.BlackMarketUtility["IsHiddenLimitedEditionCamoBundleItem"] = __FUNC_FAE9_
local function __FUNC_FE26_(arg0, arg1, arg2, arg3)
	local registerVal4 = Dvar.ui_forcetoast:exists()
	registerVal4 = tonumber(Dvar.ui_forcetoast:get())
	if LUI.DEV and Dvar.ui_forcetoast and registerVal4 and registerVal4 == 1.000000 then
		if arg3 == 2.000000 then
			local registerVal6 = Engine.Localize("MPUI_BM_BONUS_CALLING_CARD_SET_MASTER")
			local registerVal7 = Engine.Localize("MPUI_BM_BONUS_CALLING_CARD_SET_MASTER_DESC", "Aliens")
			CoD.OverlayUtility.ShowToast("LootBonusCallingCard", registerVal6, registerVal7, "t7_callingcard_mp_darkops_chainkiller")
		else
			if arg3 == 3.000000 then
				registerVal7 = Engine.Localize("MPUI_BM_BONUS_DECAL_DESC", "True Monster")
				CoD.OverlayUtility.ShowToast("LootBonusDecal", "MONSTER DECAL", registerVal7, nil, nil, 2.000000)
			end
		end
		return 
	end
	registerVal4 = CoD.BlackMarketUtility.GetItemQuantity(arg0, arg1)
	if registerVal4 == nil or 1.000000 < registerVal4 then
		return 
	end
	if arg2 == "emblem" then
		local registerVal5, registerVal6 = CoD.BlackMarketUtility.GetRewardAndCategoryForItem(arg1)
		if registerVal5 then
			registerVal7 = CoD.BlackMarketUtility.GetStringRefForLootItem(arg0, registerVal5, registerVal6)
			local registerVal8 = CoD.BlackMarketUtility.GetItemTypeStringForLootItem(registerVal5, registerVal6)
			if registerVal6 == "decal" then
				local registerVal11 = tonumber(CoD.BlackMarketUtility.ConvertToLootDecalIndexIfDecal(registerVal5))
			end
			local registerVal14 = Engine.Localize(registerVal8)
			CoD.OverlayUtility.ShowToast("LootBonusDecal", registerVal7, registerVal14, nil, nil, registerVal11)
		else
			registerVal5, registerVal6 = CoD.BlackMarketUtility.GetSetNumOwnedAndTotalForCallingCard(arg0, arg1)
			registerVal7 = BlackMarketHideMasterCallingCards()
			if arg2 == "calling_card" and 0.000000 < registerVal6 and registerVal5 == registerVal6 and not registerVal7 then
				registerVal7 = CoD.BlackMarketUtility.GetCallingCardSetName(arg1)
				registerVal8, registerVal9 = CoD.BlackMarketUtility.GetRewardAndCategoryForItem(registerVal7)
				local registerVal10 = CoD.BlackMarketUtility.GetStringRefForLootItem(arg0, registerVal8, registerVal9)
				registerVal11 = CoD.BlackMarketUtility.GetItemTypeStringForLootItem(registerVal8, registerVal9)
				registerVal14 = Engine.Localize(registerVal10)
				local registerVal15 = Engine.Localize(registerVal11)
				CoD.OverlayUtility.ShowToast("LootBonusCallingCard", registerVal14, registerVal15, nil, nil, nil, registerVal8)
			end
		end
	end
end

CoD.BlackMarketUtility["ShowToastIfApplicable"] = __FUNC_FE26_
local function __FUNC_105A2_(arg0, arg1, arg2)
	local registerVal3, registerVal4 = CoD.BlackMarketUtility.GetSetNumOwnedAndTotalForCallingCard(arg0, arg1)
	if arg2 == "calling_card" and 0.000000 < registerVal4 then
		return Engine.Localize("MPUI_BM_SET_PIECE_X_OF_Y", registerVal3, registerVal4)
	end
	return ""
end

CoD.BlackMarketUtility["GetSetPieceStringForLootItem"] = __FUNC_105A2_
local function __FUNC_106F0_(arg0, arg1, arg2)
	local registerVal3, registerVal4 = CoD.BlackMarketUtility.GetNumOwnedAndTotalForCallingCardSet(arg0, arg1)
	if arg2 == "calling_card" and 0.000000 < registerVal4 then
		return Engine.Localize("MPUI_BM_SET_X_OF_Y", registerVal3, registerVal4)
	end
	return ""
end

CoD.BlackMarketUtility["GetSetPieceStringForLootSet"] = __FUNC_106F0_
local function __FUNC_1083A_(arg0)
	local registerVal1 = Engine.GetPlayerStats(arg0)
	return registerVal1.PlayerStatsList.RANK.statValue:get()
end

CoD.BlackMarketUtility["GetCurrentRank"] = __FUNC_1083A_
local function __FUNC_1091B_(arg0, arg1, arg2)
	if arg2 == "camo" then
		local registerVal4 = CoD.BlackMarketUtility.GetCurrentRank(arg0)
		local registerVal5, registerVal6 = CoD.BlackMarketUtility.SplitIdIntoTwoValues(arg1)
		local registerVal7 = Engine.GetItemIndexFromReference(registerVal6, Enum.eModes.MODE_MULTIPLAYER)
		local registerVal8 = Engine.GetItemUnlockLevel(registerVal7, Enum.eModes.MODE_MULTIPLAYER)
		if registerVal4 < registerVal8 then
			local registerVal9 = CoD.GetRankName(registerVal8, 0.000000, Enum.eModes.MODE_MULTIPLAYER)
			local registerVal11 = Engine.GetItemName(registerVal7, Enum.eModes.MODE_MULTIPLAYER)
			Engine.Localize("MENU_RANK_NAME_FULL", registerVal9, ("" .. (registerVal8 + 1.000000)))
			return 
		else
			if arg2 == "attachment_variant" then
				registerVal4, registerVal5 = CoD.BlackMarketUtility.SplitAttachmentVariantID(arg1)
				registerVal6 = Engine.GetItemIndexFromReference(registerVal5)
				registerVal7 = Engine.TableLookup(nil, CoD.attachmentTable, 4.000000, registerVal4, 0.000000)
				registerVal8 = Engine.GetAttachmentIndexByAttachmentTableIndex(registerVal6, registerVal7, Enum.eModes.MODE_MULTIPLAYER)
				registerVal9 = Engine.GetItemAttachmentRank(registerVal6, registerVal8, Enum.eModes.MODE_MULTIPLAYER)
				local registerVal10 = Engine.GetGunCurrentRank(arg0, registerVal6, Enum.eModes.MODE_MULTIPLAYER)
				registerVal11 = IsItemAttachmentLocked(arg0, registerVal6, registerVal8, "GILTAA", Enum.eModes.MODE_MULTIPLAYER)
				if registerVal11 then
					registerVal11 = Engine.GetItemName(registerVal6, Enum.eModes.MODE_MULTIPLAYER)
					local registerVal12 = Engine.TableLookup(nil, CoD.attachmentTable, 4.000000, registerVal4, 3.000000)
					local registerVal13 = Engine.Localize(registerVal12)
					Engine.Localize("MPUI_WEAPON_RANK", (registerVal9 + 2.000000))
					return 
				else
					if arg2 ~= "taunt" and arg2 == "gesture" or arg2 == "specialist_outfit" then
						if arg2 == "taunt" then
							registerVal5, registerVal6 = CoD.CCUtility.GetHeroDisplayNameAndIndexForTaunt(Enum.eModes.MODE_MULTIPLAYER, arg1)
						else
							registerVal5, registerVal6 = CoD.BlackMarketUtility.SplitIdIntoTwoValues(arg1)
							registerVal7, registerVal8 = CoD.CCUtility.GetHeroDisplayNameAndIndex(Enum.eModes.MODE_MULTIPLAYER, registerVal6)
						end
						registerVal5, registerVal6 = CoD.CCUtility.Heroes.GetHeroUnlockInfo(arg0, registerVal8, Enum.eModes.MODE_MULTIPLAYER, "MENU_RANK_NAME_FULL")
						if registerVal5 then
							return registerVal7, CoDLUIDecompiler.LuaRegister
						end
					end
				end
			end
		end
	end
	return nil, CoDLUIDecompiler.LuaRegister
end

CoD.BlackMarketUtility["GetItemLockedTextAndAvailability"] = __FUNC_1091B_
local function __FUNC_110AF_(arg0, arg1)
	local registerVal4 = Engine.TableLookup(arg0, CoD.BlackMarketUtility.backgroundsTable, 3.000000, arg1, 1.000000)
	return tonumber(registerVal4)
end

CoD.BlackMarketUtility["GetLootCallingCardIndex"] = __FUNC_110AF_
local function __FUNC_111B4_(arg0, arg1)
	local registerVal5 = Engine.TableFindRows(CoD.BlackMarketUtility.lootEmblemTableName, 0.000000, arg1)
	if registerVal5 then
		local registerVal6 = Engine.TableLookupGetColumnValueForRow(CoD.BlackMarketUtility.lootEmblemTableName, registerVal5[1.000000], 3.000000)
		local registerVal8 = tonumber(Engine.TableLookupGetColumnValueForRow(CoD.BlackMarketUtility.lootEmblemTableName, registerVal5[1.000000], 1.000000))
		return arg0, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
	end
	return arg0, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

CoD.BlackMarketUtility["GetLootEmblemIndexParams"] = __FUNC_111B4_
local function __FUNC_11407_(arg0)
	local registerVal3 = Engine.TableLookup(nil, CoD.BlackMarketUtility.lootEmblemTableName, 1.000000, arg0, 0.000000)
	return registerVal3
end

CoD.BlackMarketUtility["GetLootEmblemIDName"] = __FUNC_11407_
local function __FUNC_114F1_(arg0)
	local registerVal3 = Engine.TableLookup(nil, CoD.BlackMarketUtility.lootEmblemTableName, 2.000000, arg0, 0.000000)
	return registerVal3
end

CoD.BlackMarketUtility["GetLootEmblemIDNameFromIndex"] = __FUNC_114F1_
local function __FUNC_115DD_(arg0)
	local registerVal3 = Engine.TableLookup(nil, CoD.BlackMarketUtility.lootEmblemTableName, 1.000000, arg0, 2.000000)
	return registerVal3
end

CoD.BlackMarketUtility["GetLootEmblemSortIndexFromEmblemId"] = __FUNC_115DD_
local function __FUNC_116C9_(arg0, arg1)
	local registerVal4 = Engine.TableLookup(nil, CoD.BlackMarketUtility.emblemIconsTableName, 1.000000, arg1, 3.000000)
	return registerVal4
end

CoD.BlackMarketUtility["GetLootDecalName"] = __FUNC_116C9_
local function __FUNC_117B6_(arg0, arg1)
	local registerVal4 = Engine.TableLookup(nil, CoD.BlackMarketUtility.emblemIconsTableName, 1.000000, arg1, 12.000000)
	local registerVal5 = tonumber(registerVal4)
	if not registerVal5 then
	end
	if 0.000000 >= 0.000000 then
	end
	return true
end

CoD.BlackMarketUtility["IsLootDecalHiddenIfClassified"] = __FUNC_117B6_
local function __FUNC_118E1_(arg0)
	return Engine.TableLookup(nil, CoD.BlackMarketUtility.backgroundsTable, 3.000000, arg0, 4.000000)
end

CoD.BlackMarketUtility["GetCallingCardTitleFromImage"] = __FUNC_118E1_
local function __FUNC_119CA_(arg0)
	return Engine.TableLookup(nil, CoD.BlackMarketUtility.backgroundsTable, 3.000000, arg0, 2.000000)
end

CoD.BlackMarketUtility["GetCallingCardSortKeyFromImage"] = __FUNC_119CA_
local function __FUNC_11AB2_(arg0)
	local registerVal3 = Engine.TableLookup(nil, CoD.BlackMarketUtility.lootTableName, 4.000000, arg0, 3.000000)
	local registerVal5 = CoD.BlackMarketUtility.GetRarityIDForString(registerVal3)
	return CoD.BlackMarketUtility.CrateTypeStrings[registerVal5]
end

CoD.BlackMarketUtility["GetRarityForCallingCardSetFromSetName"] = __FUNC_11AB2_
local function __FUNC_11C1B_(arg0)
	local registerVal3 = Engine.TableLookup(nil, CoD.BlackMarketUtility.lootTableName, 0.000000, arg0, 3.000000)
	return registerVal3
end

CoD.BlackMarketUtility["GetRarityTypeForLootItemFromName"] = __FUNC_11C1B_
local function __FUNC_11CFF_(arg0)
	local registerVal1 = CoD.BlackMarketUtility.GetRarityTypeForLootItemFromName(arg0)
	if registerVal1 == "" then
		return ""
	end
	local registerVal2 = CoD.BlackMarketUtility.IsLimitedBlackMarketItem(arg0)
	if registerVal2 then
	end
	local registerVal3 = CoD.BlackMarketUtility.GetRarityIDForString("limited")
	return CoD.BlackMarketUtility.CrateTypeStrings[registerVal3]
end

CoD.BlackMarketUtility["GetRarityForLootItemFromName"] = __FUNC_11CFF_
local function __FUNC_11EA4_(arg0)
	local registerVal2 = Engine.GetHeroList(Enum.eModes.MODE_MULTIPLAYER)
	local registerVal3, registerVal4, registerVal5 = ipairs(registerVal2)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		if value7.assetName == arg0 then
			return Engine.GetHeroName(Enum.eModes.MODE_MULTIPLAYER, value7.bodyIndex)
		end
	end
	return arg0
end

CoD.BlackMarketUtility["GetHeroDisplayNameForAssetName"] = __FUNC_11EA4_
local function __FUNC_12004_(arg0, arg1)
	local registerVal2 = Engine.TableLookup(0.000000, CoD.BlackMarketUtility.crateTable, 0.000000, arg0, 1.000000)
	local registerVal4 = Engine.DvarString(nil, (registerVal2 .. arg1))
	return tonumber(registerVal4)
end

CoD.BlackMarketUtility["GetCrateDvarVal"] = __FUNC_12004_
local function __FUNC_1213A_(arg0)
	return CoD.BlackMarketUtility.GetCrateDvarVal(arg0, "_cryptoCost")
end

CoD.BlackMarketUtility["GetCrateCryptoKeyCost"] = __FUNC_1213A_
local function __FUNC_121E7_(arg0)
	return CoD.BlackMarketUtility.GetCrateDvarVal(arg0, "_cryptoDiscount")
end

CoD.BlackMarketUtility["GetCrateCryptoKeyDiscount"] = __FUNC_121E7_
local function __FUNC_12297_(arg0, arg1)
	local registerVal2 = CoD.AARUtility.UseTestData()
	if registerVal2 then
		return 20.000000
	end
	local registerVal3 = Engine.SessionMode_IsPublicOnlineGame()
	if registerVal3 then
		registerVal3 = CoD.GetPlayerStats(arg0, CoD.STATS_LOCATION_STABLE)
		local registerVal4 = CoD.GetPlayerStats(arg0)
		if arg1 == CoD.BlackMarketUtility.MatchChallengeType.dailyContract or arg1 == CoD.BlackMarketUtility.MatchChallengeType.dailyAndWeeklyContract then
			local registerVal5 = CoD.GetContractStatValuesForIndex(arg0, LuaUtils.BMContracts.dailyContractIndex, registerVal3, false)
			local registerVal6 = CoD.GetContractStatValuesForIndex(arg0, LuaUtils.BMContracts.dailyContractIndex, registerVal4, true)
			if registerVal5 and registerVal6 and registerVal6.isActive and registerVal5.progress < registerVal5.targetValue and registerVal6.targetValue <= registerVal6.progress then
				local registerVal7 = Dvar.daily_contract_cryptokey_reward_count:get()
			end
		end
		if arg1 == CoD.BlackMarketUtility.MatchChallengeType.weeklyContract or arg1 == CoD.BlackMarketUtility.MatchChallengeType.dailyAndWeeklyContract then
			registerVal5 = CoD.GetContractStatValuesForIndex(arg0, LuaUtils.BMContracts.weeklyContractIndex1, registerVal3, false)
			registerVal6 = CoD.GetContractStatValuesForIndex(arg0, LuaUtils.BMContracts.weeklyContractIndex1, registerVal4, true)
			registerVal7 = CoD.GetContractStatValuesForIndex(arg0, LuaUtils.BMContracts.weeklyContractIndex2, registerVal3, false)
			local registerVal8 = CoD.GetContractStatValuesForIndex(arg0, LuaUtils.BMContracts.weeklyContractIndex2, registerVal4, true)
			if registerVal5 and registerVal6 and registerVal7 and registerVal8 then
				if registerVal6.isActive and registerVal5.progress < registerVal5.targetValue and registerVal6.targetValue <= registerVal6.progress then
					if registerVal7.targetValue > registerVal7.progress then
					end
					if true then
						local registerVal10 = Dvar.weekly_contract_cryptokey_reward_count:get()
					end
				end
				if registerVal8.isActive and registerVal7.progress < registerVal7.targetValue and registerVal8.targetValue <= registerVal8.progress then
					if registerVal6.targetValue > registerVal6.progress then
					end
					if true then
						registerVal10 = Dvar.weekly_contract_cryptokey_reward_count:get()
					end
				end
			end
		end
	end
	return (((0.000000 + registerVal7) + registerVal10) + registerVal10)
end

CoD.BlackMarketUtility["GetCryptoKeysFromMatchChallenges"] = __FUNC_12297_
local function __FUNC_129EB_(arg0, arg1)
	local registerVal2 = arg1.cryptoKeysBeforeMatch:get()
	local registerVal3 = arg1.lootXPBeforeMatch:get()
	local registerVal4 = arg1.lootXPEarned:get()
	local registerVal5 = CoD.BlackMarketUtility.GetCryptoKeysFromMatchChallenges(arg0, CoD.BlackMarketUtility.MatchChallengeType.dailyAndWeeklyContract)
	local registerVal7 = math.floor(((registerVal3 + registerVal4) / CoD.BlackMarketUtility.XPPerCryptoKey))
	return ((registerVal2 + registerVal5) + registerVal7)
end

CoD.BlackMarketUtility["GetCryptoKeyCountPostMatch"] = __FUNC_129EB_
local function __FUNC_12C01_(arg0)
	local registerVal1 = AreCodPointsEnabled(0.000000)
	if not registerVal1 then
		return 0.000000
	end
	return CoD.BlackMarketUtility.GetCrateDvarVal(arg0, "_cpCost")
end

CoD.BlackMarketUtility["GetCrateCODPointCost"] = __FUNC_12C01_
local function __FUNC_12CE9_(arg0)
	local registerVal1 = AreCodPointsEnabled(0.000000)
	if not registerVal1 then
		return 0.000000
	end
	return CoD.BlackMarketUtility.GetCrateDvarVal(arg0, "_cpDiscount")
end

CoD.BlackMarketUtility["GetCrateCODPointDiscount"] = __FUNC_12CE9_
local function __FUNC_12DD5_(arg0)
	local registerVal1 = Dvar.ui_cryptokeys:exists()
	if LUI.DEV and registerVal1 then
		Dvar.ui_cryptokeys:get()
		return tonumber(Dvar.ui_cryptokeys:get)
	end
	if not arg0 then
		registerVal1 = Engine.GetPrimaryController()
	end
	registerVal1 = Engine.GetCryptoKeyCount(registerVal1)
	if not registerVal1 then
	end
	return 0.000000
end

CoD.BlackMarketUtility["GetCurrentCryptoKeyCount"] = __FUNC_12DD5_
local function __FUNC_12F60_(arg0)
	local registerVal1 = Dvar.ui_cryptokeyprogress:exists()
	if LUI.DEV and registerVal1 then
		Dvar.ui_cryptokeyprogress:get()
		return tonumber(Dvar.ui_cryptokeyprogress:get)
	end
	if not arg0 then
		registerVal1 = Engine.GetPrimaryController()
	end
	registerVal1 = Engine.GetCryptoKeyProgress(registerVal1)
	if not registerVal1 then
	end
	return (0.000000 / CoD.BlackMarketUtility.XPPerCryptoKey)
end

CoD.BlackMarketUtility["GetProgressTowardNextKey"] = __FUNC_12F60_
local function __FUNC_13157_(arg0, arg1)
	if LUI.DEV then
		local registerVal2 = Dvar.ui_cryptocommondupes:exists()
		if arg1 == Enum.LootRarityType.LOOT_RARITY_TYPE_COMMON and registerVal2 then
			Dvar.ui_cryptocommondupes:get()
			return tonumber(Dvar.ui_cryptocommondupes:get)
		else
			registerVal2 = Dvar.ui_cryptoraredupes:exists()
			if arg1 == Enum.LootRarityType.LOOT_RARITY_TYPE_RARE and registerVal2 then
				Dvar.ui_cryptoraredupes:get()
				return tonumber(Dvar.ui_cryptoraredupes:get)
			else
				registerVal2 = Dvar.ui_cryptolegendarydupes:exists()
				if arg1 == Enum.LootRarityType.LOOT_RARITY_TYPE_LEGENDARY and registerVal2 then
					Dvar.ui_cryptolegendarydupes:get()
					return tonumber(Dvar.ui_cryptolegendarydupes:get)
				else
					registerVal2 = Dvar.ui_cryptoepicdupes:exists()
					if arg1 == Enum.LootRarityType.LOOT_RARITY_TYPE_EPIC and registerVal2 then
						Dvar.ui_cryptoepicdupes:get()
						return tonumber(Dvar.ui_cryptoepicdupes:get)
					end
				end
			end
		end
	end
	registerVal2 = Engine.GetLootDuplicateCount(arg0, Enum.eModes.MODE_MULTIPLAYER, arg1)
	if registerVal2 == nil then
	end
	return 0.000000
end

CoD.BlackMarketUtility["GetNumDupesForType"] = __FUNC_13157_
local registerVal0 = {}
registerVal1 = {}
registerVal1 = {"camo_ce_bo3;ar_damage", "camo", "common"}
registerVal2 = {}
registerVal2 = {"camo_ce_bo3;ar_fastburst", "camo", "common"}
registerVal3 = {}
registerVal3 = {"camo_ce_bo3;ar_longburst", "camo", "common"}
registerVal4 = {}
registerVal4 = {"camo_ce_bo3;ar_marksman", "camo", "common"}
registerVal5 = {}
registerVal5 = {"camo_ce_bo3;lmg_cqb", "camo", "common"}
registerVal6 = {}
registerVal6 = {"camo_ce_bo3;lmg_heavy", "camo", "common"}
registerVal7 = {}
registerVal7 = {"camo_ce_bo3;lmg_light", "camo", "common"}
registerVal8 = {}
registerVal8 = {"camo_ce_bo3;lmg_slowfire", "camo", "common"}
registerVal9 = {}
registerVal9 = {"camo_ce_bo3;sniper_fastbolt", "camo", "common"}
registerVal10 = {}
registerVal10 = {"camo_ce_bo3;sniper_fastsemi", "camo", "common"}
registerVal11 = {}
registerVal11 = {"camo_ce_bo3;sniper_powerbolt", "camo", "common"}
local registerVal12 = {}
registerVal12 = {"camo_ce_bo3;sniper_chargeshot", "camo", "common"}
local registerVal13 = {}
registerVal13 = {"camo_ce_bo3;shotgun_fullauto", "camo", "rare"}
local registerVal14 = {}
registerVal14 = {"camo_ce_bo3;shotgun_precision", "camo", "epic"}
local registerVal15 = {}
registerVal15 = {"t7_loot_callingcard_dinosaurs_05", "calling_card", "rare"}
local registerVal16 = {}
registerVal16 = {"t7_loot_callingcard_luchalibre_06", "calling_card", "legendary"}
local registerVal17 = {}
registerVal17 = {"t7_loot_callingcard_space_airbrush_04", "calling_card", "rare"}
local registerVal18 = {}
registerVal18 = {"t7_loot_callingcard_tiki", "calling_card", "common"}
local registerVal19 = {}
registerVal19 = {"t7_loot_callingcard_spyposter", "calling_card", "common"}
local registerVal20 = {}
registerVal20 = {"t7_loot_callingcard_twistedcircus_ringmaster", "calling_card", "rare"}
local registerVal21 = {}
registerVal21 = {"t7_loot_callingcard_stylizedtanks", "calling_card", "common"}
local registerVal22 = {}
registerVal22 = {"t7_loot_callingcard_epicspacebattle_6", "calling_card", "legendary"}
local registerVal23 = {}
registerVal23 = {"t7_loot_callingcard_folkheroes", "calling_card", "common"}
local registerVal24 = {}
registerVal24 = {"t7_loot_callingcard_manga_cockpit", "calling_card", "rare"}
local registerVal25 = {}
registerVal25 = {"t7_loot_callingcard_epicspacebattle_12", "calling_card", "legendary"}
local registerVal26 = {}
registerVal26 = {"t7_loot_callingcard_deepsea_f", "calling_card", "legendary"}
local registerVal27 = {}
registerVal27 = {"t7_loot_callingcard_girlpower_01", "calling_card", "legendary"}
local registerVal28 = {}
registerVal28 = {"t7_loot_callingcard_tomb", "calling_card", "common"}
local registerVal29 = {}
registerVal29 = {"t7_loot_callingcard_legendaryanimals_centaur", "calling_card", "rare"}
local registerVal30 = {}
registerVal30 = {"t7_loot_callingcard_space_airbrush_08", "calling_card", "rare"}
local registerVal31 = {}
registerVal31 = {"acv_damage_ar_accurate", "attachment_variant", "common"}
local registerVal32 = {}
registerVal32 = {"acv_damage_ar_cqb", "attachment_variant", "common"}
local registerVal33 = {}
registerVal33 = {"acv_damage_ar_damage", "attachment_variant", "common"}
local registerVal34 = {}
registerVal34 = {"acv_damage_ar_fastburst", "attachment_variant", "common"}
local registerVal35 = {}
registerVal35 = {"acv_damage_ar_longburst", "attachment_variant", "common"}
local registerVal36 = {}
registerVal36 = {"acv_damage_ar_marksman", "attachment_variant", "common"}
local registerVal37 = {}
registerVal37 = {"acv_damage_ar_standard", "attachment_variant", "common"}
local registerVal38 = {}
registerVal38 = {"acv_damage_pistol_burst", "attachment_variant", "common"}
local registerVal39 = {}
registerVal39 = {"acv_damage_pistol_fullauto", "attachment_variant", "common"}
local registerVal40 = {}
registerVal40 = {"acv_damage_pistol_standard", "attachment_variant", "common"}
local registerVal41 = {}
registerVal41 = {"acv_extbarrel_ar_accurate", "attachment_variant", "common"}
local registerVal42 = {}
registerVal42 = {"acv_extbarrel_ar_cqb", "attachment_variant", "common"}
local registerVal43 = {}
registerVal43 = {"acv_extbarrel_ar_damage", "attachment_variant", "common"}
local registerVal44 = {}
registerVal44 = {"acv_extbarrel_ar_fastburst", "attachment_variant", "common"}
local registerVal45 = {}
registerVal45 = {"acv_extbarrel_ar_longburst", "attachment_variant", "common"}
local registerVal46 = {}
registerVal46 = {"acv_extbarrel_ar_marksman", "attachment_variant", "common"}
local registerVal47 = {}
registerVal47 = {"acv_extbarrel_ar_standard", "attachment_variant", "common"}
local registerVal48 = {}
registerVal48 = {"acv_extbarrel_pistol_burst", "attachment_variant", "common"}
local registerVal49 = {}
registerVal49 = {"acv_extbarrel_pistol_fullauto", "attachment_variant", "common"}
local registerVal50 = {}
registerVal50 = {"acv_extbarrel_pistol_standard", "attachment_variant", "rare"}
registerVal0 = {registerVal1, registerVal2, registerVal3, registerVal4, registerVal5, registerVal6, registerVal7, registerVal8, registerVal9, registerVal10, registerVal11, registerVal12, registerVal13, registerVal14, registerVal15, registerVal16, registerVal17, registerVal18, registerVal19, registerVal20, registerVal21, registerVal22, registerVal23, registerVal24, registerVal25, registerVal26, registerVal27, registerVal28, registerVal29, registerVal30, registerVal31, registerVal32, registerVal33, registerVal34, registerVal35, registerVal36, registerVal37, registerVal38, registerVal39, registerVal40, registerVal41, registerVal42, registerVal43, registerVal44, registerVal45, registerVal46, registerVal47, registerVal48, registerVal49, registerVal50}
registerVal1 = {}
registerVal1 = {"acv_extbarrel_shotgun_fullauto", "attachment_variant", "legendary"}
registerVal0 = {registerVal1}
local function __FUNC_13562_(arg0, arg1)
	local registerVal2 = {}
	registerVal2.batchKeys = arg0
	registerVal2.stateName = arg1
	return registerVal2
end

CoD.BlackMarketUtility["CreateBatchKeysBundle"] = __FUNC_13562_
local function __FUNC_135C2_(arg0, arg1, arg2, arg3, arg4, arg5)
	arg0.cryptokeyProgressForNewKey:setShaderVector(0.000000, (arg2 / CoD.BlackMarketUtility.XPPerCryptoKey), 0.000000, 0.000000, 0.000000)
	local registerVal6 = Engine.GetModelForController(arg1)
	local registerVal7 = Engine.CreateModel(registerVal6, "CryptoKeyProgress")
	local registerVal8 = CoD.BlackMarketUtility.GetCurrentCryptoKeyCount(arg1)
	local registerVal9 = math.floor((arg3 / CoD.BlackMarketUtility.XPPerCryptoKey))
	local registerVal10 = math.floor((arg2 / CoD.BlackMarketUtility.XPPerCryptoKey))
	if 0.000000 < #(arg2 / CoD.BlackMarketUtility.XPPerCryptoKey) then
		table.remove(arg4, 1.000000)
	end
	local registerVal12 = Engine.CreateModel(registerVal7, "keyCount")
	Engine.SetModelValue(registerVal12, (registerVal8 - (registerVal9 - registerVal10)))
	registerVal12 = Engine.CreateModel(registerVal7, "challengeCryptoKeys")
	Engine.SetModelValue(registerVal12, 0.000000)
	if arg0.ContractCryptokeyBatch then
		arg0.ContractCryptokeyBatch:setState("DefaultState")
	end
	if 0.000000 < 0.000000 then
		arg0:playClip("NewKeyBatch")
	else
		arg0:playClip("NewKey")
	end
	local function __FUNC_13B6D_()
		if 0.000000 < 0.000000 then
			local registerVal1 = Engine.GetModel(registerVal7, "keyCount")
			Engine.SetModelValue(registerVal1, ((registerVal8 - (registerVal9 - registerVal10)) + 0.000000))
		else
			registerVal1 = Engine.GetModel(registerVal7, "keyCount")
			Engine.SetModelValue(registerVal1, ((registerVal8 - (registerVal9 - registerVal10)) + 1.000000))
		end
	end

	arg0:addElement(LUI.UITimer.newElementTimer(600.000000, true, __FUNC_13B6D_))
	arg0.cryptokeyProgressForNewKey:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_13C71_(arg6, arg7)
		if 0.000000 < 0.000000 then
		else
		end
		if CoD.BlackMarketUtility.XPPerCryptoKey <= ((arg3 - (0.000000 * CoD.BlackMarketUtility.XPPerCryptoKey)) - CoD.BlackMarketUtility.XPPerCryptoKey) then
			CoD.BlackMarketUtility.DoCryptoKeyAnimationSequenceStage(arg0, arg1, 0.000000, ((arg3 - (0.000000 * CoD.BlackMarketUtility.XPPerCryptoKey)) - CoD.BlackMarketUtility.XPPerCryptoKey), arg4, arg5)
		else
			arg0.cryptokeyProgressForNewKey:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:playClip("NewXPNoNewKey")
			arg0.cryptokeyProgressForNewKey:setShaderVector(0.000000, (((arg3 - (0.000000 * CoD.BlackMarketUtility.XPPerCryptoKey)) - CoD.BlackMarketUtility.XPPerCryptoKey) / CoD.BlackMarketUtility.XPPerCryptoKey), 0.000000, 0.000000, 0.000000)
			local function __FUNC_13F1C_(arg1, arg2)
				arg0:registerEventHandler("clip_over", CoD.NullFunction)
				arg0:playClip("DefaultClip")
				if arg5 then
					arg5()
				end
			end

			arg0:registerEventHandler("clip_over", __FUNC_13F1C_)
		end
	end

	arg0:registerEventHandler("clip_over", __FUNC_13C71_)
end

CoD.BlackMarketUtility["DoCryptoKeyAnimationSequenceStage"] = __FUNC_135C2_
local function __FUNC_14007_(arg0, arg1, arg2, arg3, arg4, arg5)
	if arg3 < CoD.BlackMarketUtility.XPPerCryptoKey then
		arg0.cryptokeyProgressForNewKey:setShaderVector(0.000000, (arg2 / CoD.BlackMarketUtility.XPPerCryptoKey), 0.000000, 0.000000, 0.000000)
		arg0:playClip("NewXPNoNewKey")
		arg0.cryptokeyProgressForNewKey:setShaderVector(0.000000, (arg3 / CoD.BlackMarketUtility.XPPerCryptoKey), 0.000000, 0.000000, 0.000000)
		local function __FUNC_14244_(arg1, arg2)
			arg0:registerEventHandler("clip_over", CoD.NullFunction)
			arg0:playClip("DefaultClip")
			if arg5 then
				arg5()
			end
		end

		arg0:registerEventHandler("clip_over", __FUNC_14244_)
	else
		CoD.BlackMarketUtility.DoCryptoKeyAnimationSequenceStage(arg0, arg1, arg2, arg3, arg4, arg5)
	end
end

CoD.BlackMarketUtility["DoCryptoKeyAnimationSequence"] = __FUNC_14007_
CoD.BlackMarketUtility["HasShownAARCryptoKeyAnimation"] = false
local function __FUNC_1432F_(arg0, arg1)
	CoD.BlackMarketUtility.HasShownAARCryptoKeyAnimation = false
	local registerVal2 = CoD.AARUtility.UseTestData()
	if CoD.BlackMarketUtility.HasShownAARCryptoKeyAnimation and not registerVal2 then
		return 
	end
	registerVal2 = CoD.GetPlayerStats(arg1)
	if registerVal2 and arg1 or not registerVal2.AfterActionReportStats.cryptoKeysBeforeMatch then
		local registerVal3 = CoD.AARUtility.UseTestData()
		if not registerVal3 then
			return 
		end
	end
	local registerVal7 = CoD.BlackMarketUtility.GetCryptoKeysFromMatchChallenges(arg1, CoD.BlackMarketUtility.MatchChallengeType.dailyContract)
	local registerVal8 = CoD.BlackMarketUtility.GetCryptoKeysFromMatchChallenges(arg1, CoD.BlackMarketUtility.MatchChallengeType.weeklyContract)
	local registerVal9 = CoD.AARUtility.UseTestData()
	if registerVal9 then
		registerVal9 = CoD.BlackMarketUtility.GetCurrentCryptoKeyCount(arg1)
		registerVal9 = CoD.BlackMarketUtility.GetProgressTowardNextKey(arg1)
	else
		registerVal9 = registerVal2.AfterActionReportStats.cryptoKeysBeforeMatch:get()
		registerVal9 = registerVal2.AfterActionReportStats.lootXPBeforeMatch:get()
		registerVal9 = registerVal2.AfterActionReportStats.lootXPEarned:get()
	end
	local registerVal10 = CoD.BlackMarketUtility.GetCrateCryptoKeyCost(CoD.BlackMarketUtility.DropTypes.COMMON)
	local registerVal11 = math.floor((registerVal9 / registerVal10))
	local registerVal12 = math.floor((((registerVal9 + (registerVal9 + ((registerVal7 + registerVal8) * CoD.BlackMarketUtility.XPPerCryptoKey))) / CoD.BlackMarketUtility.XPPerCryptoKey) / registerVal10))
	if registerVal11 < registerVal12 then
		registerVal11 = CoD.GetPlayerStats(arg1)
		registerVal11.blackMarketShowBreadcrumb:set(1.000000)
	end
	registerVal11 = Dvar.ui_cryptokeys:exists()
	registerVal11 = Dvar.ui_cryptokeyprogress:exists()
	if LUI.DEV and registerVal11 and registerVal11 then
		if CoD.BlackMarketUtility.XPPerCryptoKey < (registerVal9 + (registerVal9 + ((registerVal7 + registerVal8) * CoD.BlackMarketUtility.XPPerCryptoKey))) then
			local registerVal13 = Dvar.ui_cryptokeys:get()
			Dvar.ui_cryptokeys:set((registerVal13 + 1.000000))
		end
		Dvar.ui_cryptokeyprogress:set((((registerVal9 + (registerVal9 + ((registerVal7 + registerVal8) * CoD.BlackMarketUtility.XPPerCryptoKey))) % CoD.BlackMarketUtility.XPPerCryptoKey) / CoD.BlackMarketUtility.XPPerCryptoKey))
		DataSources.CryptoKeyProgress.getModel(arg1)
	end
	registerVal11 = CoD.AARUtility.UseTestData()
	registerVal11 = CoD.BlackMarketUtility.GetCurrentCryptoKeyCount(arg1)
	registerVal12 = CoD.BlackMarketUtility.GetCryptoKeyCountPostMatch(arg1, registerVal2.AfterActionReportStats)
	if not registerVal11 and registerVal11 ~= registerVal12 then
		registerVal11 = CoD.GetPlayerStats(arg1)
		registerVal11.blackMarketShowBreadcrumb:set(0.000000)
	end
	if 0.000000 < 0.000000 then
		table.insert({}, CoD.BlackMarketUtility.CreateBatchKeysBundle(0.000000, "DailyContract"))
	end
	if 0.000000 < 0.000000 then
		table.insert({}, CoD.BlackMarketUtility.CreateBatchKeysBundle(0.000000, "WeeklyContract"))
	end
	local function __FUNC_14DDD_()
		CoD.BlackMarketUtility.HasShownAARCryptoKeyAnimation = true
	end

	CoD.BlackMarketUtility.DoCryptoKeyAnimationSequence(arg0, arg1, ((registerVal9 + (registerVal9 + ((registerVal7 + registerVal8) * CoD.BlackMarketUtility.XPPerCryptoKey))) % CoD.BlackMarketUtility.XPPerCryptoKey), ((registerVal9 + (registerVal9 + ((registerVal7 + registerVal8) * CoD.BlackMarketUtility.XPPerCryptoKey))) % CoD.BlackMarketUtility.XPPerCryptoKey), {}, __FUNC_14DDD_)
end

CoD.BlackMarketUtility["DoAARCryptoKeyAnimation"] = __FUNC_1432F_
local function __FUNC_14E6E_(arg0, arg1, arg2, arg3, arg4)
	CoD.BlackMarketUtility.DoCryptoKeyAnimationSequence(arg0, arg1, arg2, arg3, {}, arg4)
end

CoD.BlackMarketUtility["DoBurnCryptoKeyAnimation"] = __FUNC_14E6E_
local function __FUNC_14F1F_(arg0)
	local registerVal1 = math.random(1.000000, #registerVal0)
	return registerVal0[registerVal1]
end

CoD.BlackMarketUtility["GetFakeItem"] = __FUNC_14F1F_
local function __FUNC_14F9F_(arg0, arg1)
	local registerVal2 = Dvar.ui_cryptokeys:exists()
	if LUI.DEV and registerVal2 then
		registerVal2 = tonumber(Dvar.ui_cryptokeys:get())
		Dvar.ui_cryptokeys:set((registerVal2 - arg1))
	end
end

CoD.BlackMarketUtility["SpendKeysForCrate"] = __FUNC_14F9F_
local function __FUNC_150B7_(arg0)
	local registerVal1 = CoD.BlackMarketUtility.GetNumDupesForType(arg0, Enum.LootRarityType.LOOT_RARITY_TYPE_COMMON)
	local registerVal2 = CoD.BlackMarketUtility.GetNumDupesForType(arg0, Enum.LootRarityType.LOOT_RARITY_TYPE_RARE)
	registerVal2 = CoD.BlackMarketUtility.GetNumDupesForType(arg0, Enum.LootRarityType.LOOT_RARITY_TYPE_LEGENDARY)
	registerVal2 = CoD.BlackMarketUtility.GetNumDupesForType(arg0, Enum.LootRarityType.LOOT_RARITY_TYPE_EPIC)
	return (((registerVal1 + registerVal2) + registerVal2) + registerVal2)
end

CoD.BlackMarketUtility["GetNumDupesTotal"] = __FUNC_150B7_
local function __FUNC_152DE_(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = CoD.BlackMarketUtility.BurnReturnXP(Enum.LootRarityType.LOOT_RARITY_TYPE_COMMON)
	local registerVal6 = CoD.BlackMarketUtility.BurnReturnXP(Enum.LootRarityType.LOOT_RARITY_TYPE_RARE)
	registerVal6 = CoD.BlackMarketUtility.BurnReturnXP(Enum.LootRarityType.LOOT_RARITY_TYPE_LEGENDARY)
	registerVal6 = CoD.BlackMarketUtility.BurnReturnXP(Enum.LootRarityType.LOOT_RARITY_TYPE_EPIC)
	return ((((arg1 * registerVal5) + (arg2 * registerVal6)) + (arg3 * registerVal6)) + (arg4 * registerVal6))
end

CoD.BlackMarketUtility["GetXPEarnedForBurning"] = __FUNC_152DE_
local function __FUNC_15500_(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = CoD.BlackMarketUtility.GetProgressTowardNextKey(arg0)
	local registerVal6 = CoD.BlackMarketUtility.GetXPEarnedForBurning(arg0, arg1, arg2, arg3, arg4)
	local registerVal7 = math.floor((((registerVal5 * CoD.BlackMarketUtility.XPPerCryptoKey) + registerVal6) / CoD.BlackMarketUtility.XPPerCryptoKey))
	return registerVal7
end

CoD.BlackMarketUtility["GetNumKeysEarnedForBurning"] = __FUNC_15500_
local function __FUNC_1567F_(arg0, arg1)
	if arg1 then
		local registerVal2 = Engine.GetLootItemQuantity(arg0, arg1, Enum.eModes.MODE_MULTIPLAYER)
		if registerVal2 then
			return registerVal2
		else
			local registerVal3, registerVal4, registerVal5 = ipairs(CoD.BlackMarketUtility.UniqueSpecialistOutfits)
			for index6,value7 in registerVal3, registerVal4, registerVal5 do
				if value7.body == arg1 then
					return Engine.GetInventoryItemQuantity(arg0, value7.bodyId)
				else
					if value7.head == arg1 then
						return Engine.GetInventoryItemQuantity(arg0, value7.headId)
					end
				end
			end
			return registerVal2
		end
	end
	return 0.000000
end

CoD.BlackMarketUtility["GetItemQuantity"] = __FUNC_1567F_
local function __FUNC_158D2_(arg0, arg1)
	return Engine.IsLootItemUnlockedByPreRequisites(arg0, arg1, Enum.eModes.MODE_MULTIPLAYER)
end

CoD.BlackMarketUtility["UnlockedByPrerequisites"] = __FUNC_158D2_
local function __FUNC_159AB_(arg0, arg1)
	local registerVal2 = Dvar.ui_allLootUnlocked:get()
	if registerVal2 == "1" then
		return false
	end
	if arg1 then
		registerVal2 = CoD.BlackMarketUtility.GetItemQuantity(arg0, arg1)
		local registerVal3 = CoD.BlackMarketUtility.UnlockedByPrerequisites(arg0, arg1)
		if registerVal2 == nil and registerVal3 ~= nil then
			return (not arg0)
		end
		if registerVal2 == nil or registerVal2 == 0.000000 then
			return true
		else
			return false
		end
	end
	return false
end

CoD.BlackMarketUtility["IsItemLocked"] = __FUNC_159AB_
local function __FUNC_15B43_(arg0, arg1)
	local registerVal2 = CoD.SafeGetModelValue(arg1, "primary.ref")
	local registerVal3 = CoD.BlackMarketUtility.GetItemQuantity(arg0, registerVal2)
	if registerVal2 and registerVal2 ~= "" and registerVal3 == 0.000000 then
		return true
	end
	registerVal3 = CoD.SafeGetModelValue(arg1, "secondary.ref")
	local registerVal4 = CoD.BlackMarketUtility.GetItemQuantity(arg0, registerVal3)
	if registerVal3 and registerVal3 ~= "" and registerVal4 == 0.000000 then
		return true
	end
	return false
end

CoD.BlackMarketUtility["ClassContainsLockedItems"] = __FUNC_15B43_
local function __FUNC_15CD4_(arg0)
	if arg0 then
		return Engine.Localize("MENU_CLASSIFIED")
	end
	return "MENU_CLASSIFIED"
end

CoD.BlackMarketUtility["ClassifiedName"] = __FUNC_15CD4_
local function __FUNC_15D67_(arg0)
	local registerVal1, registerVal2, registerVal3 = ipairs(CoD.BlackMarketUtility.CallingCardsTable)
	for index4,value5 in registerVal1, registerVal2, registerVal3 do
		if value5.name == arg0 then
			return value5
		end
	end
end

CoD.BlackMarketUtility["GetCallingCardSetTable"] = __FUNC_15D67_
local function __FUNC_15E3A_()
	local registerVal3 = Engine.TableFindRows(CoD.BlackMarketUtility.lootTableName, 2.000000, "calling_card")
	for index4=#CoD.BlackMarketUtility.lootTableName, 1.000000, -1.000000 do
		local registerVal8 = Engine.TableLookupGetColumnValueForRow(CoD.BlackMarketUtility.lootTableName, registerVal3[index4], 0.000000)
		local registerVal9 = CoD.BlackMarketUtility.IsUnreleasedBlackMarketItem(registerVal8)
		if registerVal9 then
			table.remove(registerVal3, index4)
		end
	end
	return registerVal3
end

CoD.BlackMarketUtility["GetCallingCardRows"] = __FUNC_15E3A_
local function __FUNC_16046_(arg0)
	local registerVal2 = Engine.TableFindRows(CoD.BlackMarketUtility.lootTableName, 2.000000, arg0)
	return registerVal2
end

CoD.BlackMarketUtility["GetLootTypeRows"] = __FUNC_16046_
local function __FUNC_1611C_(arg0, arg1)
	local function __FUNC_167F3_(arg0, arg1)
		local registerVal2 = tonumber(arg0.imageID)
		local registerVal3 = tonumber(arg1.imageID)
		if registerVal2 >= registerVal3 then
		end
		return true
	end

	local registerVal3 = CoD.ChallengesUtility.GetChallengeTable(arg0, Enum.eModes.MODE_MULTIPLAYER, "mp", arg1, __FUNC_167F3_, false)
	local registerVal4 = {}
	registerVal4.name = arg1
	registerVal4.callingCards = {}
	registerVal4.iconId = 0.000000
	registerVal4.newCount = 0.000000
	registerVal4.masterCardIconId = 0.000000
	registerVal4.isSetBMClassified = false
	registerVal4.isSetContractClassified = false
	registerVal4.totalSetCount = (#{} - 1.000000)
	local registerVal5 = Engine.Localize("MPUI_BM_SET_X_OF_Y", 0.000000, 6.000000)
	registerVal4.setCount = registerVal5
	registerVal4.isBMClassified = false
	registerVal4.isContractClassified = true
	registerVal4.rarity = ""
	registerVal4.title = "CONTRACT_MP_ACTION_CALLING_CARD"
	local registerVal6, registerVal7, registerVal8 = ipairs(registerVal3)
	for index9,value10 in registerVal6, registerVal7, registerVal8 do
		if not value10.properties.isExpert then
			if not value10.models.isLocked and registerVal4.iconId == 0.000000 then
				registerVal4.iconId = value10.models.iconId
			end
			local registerVal11 = Engine.IsEmblemBackgroundNew(arg0, value10.models.iconId)
			if not value10.models.isLocked and registerVal11 then
				registerVal4.newCount = (registerVal4.newCount + 1.000000)
			end
			local registerVal13 = {}
			registerVal13.rarity = ""
			local registerVal14 = Engine.TableLookup(nil, CoD.backgroundsTable, 1.000000, value10.models.iconId, 4.000000)
			registerVal13.title = registerVal14
			registerVal13.isBMClassified = false
			registerVal13.isContractClassified = value10.models.isLocked
			registerVal13.isLocked = false
			registerVal13.sortKey = index9
			registerVal13.iconId = value10.models.iconId
			registerVal13.name = arg1
			registerVal13.duplicateCount = 0.000000
			registerVal13.description = value10.models.description
			table.insert(registerVal4.callingCards, registerVal13)
		else
			registerVal4.masterCardIconId = value10.models.iconId
		end
	end
	registerVal4.iconId = registerVal4.masterCardIconId
	registerVal4.isContractClassified = false
	registerVal6 = Engine.IsEmblemBackgroundNew(arg0, registerVal4.masterCardIconId)
	if (0.000000 + 1.000000) == registerVal4.totalSetCount and registerVal6 then
		registerVal4.newCount = (registerVal4.newCount + 1.000000)
	end
	registerVal6 = Engine.Localize("MPUI_BM_SET_X_OF_Y", (0.000000 + 1.000000), registerVal4.totalSetCount)
	registerVal4.setCount = registerVal6
	if (0.000000 + 1.000000) >= 1.000000 then
	end
	registerVal4.isSetContractClassified = true
	registerVal4.isSpecialContractSet = true
	return registerVal4
end

CoD.BlackMarketUtility["AddSpecialContractCallingCardSet"] = __FUNC_1611C_
local function __FUNC_1687B_(arg0)
	CoD.BlackMarketUtility.CallingCardsTable = {}
	CoD.BlackMarketUtility.CommonCallingCardsTable = {}
	local registerVal7 = CoD.BlackMarketUtility.GetCallingCardRows()
	local registerVal11, registerVal12, registerVal13 = ipairs(registerVal7)
	for index14,value15 in registerVal11, registerVal12, registerVal13 do
		local registerVal16 = Engine.TableLookupGetColumnValueForRow(CoD.BlackMarketUtility.lootTableName, value15, 0.000000)
		local registerVal17 = Engine.TableLookupGetColumnValueForRow(CoD.BlackMarketUtility.lootTableName, value15, 4.000000)
		local registerVal18 = Engine.TableLookupGetColumnValueForRow(CoD.BlackMarketUtility.lootTableName, value15, 5.000000)
		local registerVal19 = CoD.BlackMarketUtility.GetCallingCardTitleFromImage(registerVal16)
		local registerVal20 = CoD.BlackMarketUtility.GetLootCallingCardIndex(arg0, registerVal16)
		local registerVal21 = CoD.BlackMarketUtility.GetRarityForLootItemFromName(registerVal16)
		local registerVal22 = CoD.BlackMarketUtility.GetItemQuantity(arg0, registerVal16)
		if registerVal17 ~= "" then
			if not {}[registerVal17] then
				{}[registerVal17] = {}
			end
			local registerVal23 = CoD.BlackMarketUtility.GetCallingCardSortKeyFromImage(registerVal16)
			local registerVal24 = CoD.BlackMarketUtility.IsItemLocked(arg0, registerVal16)
			local registerVal27 = {}
			registerVal27.title = registerVal19
			registerVal27.name = registerVal16
			registerVal27.rarity = registerVal21
			registerVal27.duplicateCount = registerVal22
			registerVal27.iconId = registerVal20
			registerVal27.sortKey = registerVal23
			registerVal27.isBMClassified = registerVal24
			registerVal27.isContractClassified = false
			table.insert({}[registerVal17], registerVal27)
		else
			if registerVal18 ~= "" then
				registerVal24 = CoD.BlackMarketUtility.GetRarityForCallingCardSetFromSetName(registerVal18)
				{}.name = registerVal18
				{}.title = registerVal19
				local registerVal26 = CoD.BlackMarketUtility.GetSetPieceStringForLootSet(arg0, registerVal18, "calling_card")
				{}.setCount = registerVal26
				registerVal26, registerVal27, registerVal28 = CoD.BlackMarketUtility.GetNumOwnedAndTotalForCallingCardSet(arg0, registerVal18)
				{}.newCount = registerVal28
				{}.totalSetCount = registerVal27
				{}.iconId = 0.000000
				{}.masterCardIconId = registerVal20
				{}.rarity = registerVal24
				registerVal26 = Engine.IsEmblemBackgroundNew(arg0, registerVal20)
				registerVal26 = BlackMarketHideMasterCallingCards()
				if registerVal26 and not registerVal26 then
					{}.newCount = ({}.newCount + 1.000000)
				end
				table.insert({}, {})
			else
				registerVal23 = CoD.BlackMarketUtility.IsItemLocked(arg0, registerVal16)
				if not registerVal23 then
				end
				registerVal24 = CoD.BlackMarketUtility.GetLootCallingCardIndex(arg0, registerVal16)
				local registerVal25 = Engine.IsEmblemBackgroundNew(arg0, registerVal24)
				if registerVal24 and registerVal25 then
				end
				registerVal27 = {}
				registerVal27.title = registerVal19
				registerVal27.name = registerVal16
				registerVal27.rarity = registerVal21
				registerVal27.duplicateCount = registerVal22
				registerVal27.iconId = registerVal20
				registerVal27.isBMClassified = registerVal23
				registerVal27.isContractClassified = false
				table.insert(CoD.BlackMarketUtility.CommonCallingCardsTable, registerVal27)
			end
		end
	end
	registerVal11, registerVal12, registerVal13 = pairs({})
	for index14,value15 in registerVal11, registerVal12, registerVal13 do
		if {}[value15.name] then
			value15.callingCards = {}[value15.name]
			registerVal18, registerVal19, registerVal20 = ipairs(value15.callingCards)
			for index21,value22 in registerVal18, registerVal19, registerVal20 do
				if value22.isBMClassified == false then
					if value15.iconId == 0.000000 then
						registerVal23 = CoD.BlackMarketUtility.GetLootCallingCardIndex(arg0, value22.name)
						value15.iconId = registerVal23
					else
					end
				end
			end
			registerVal18 = BlackMarketHideMasterCallingCards()
			if registerVal18 then
			end
			if not value15.iconId then
				value15.iconId = 0.000000
			end
			value15.isBMClassified = true
			value15.isSetBMClassified = false
			value15.isSetContractClassified = false
		end
	end
	registerVal11 = Dvar.ui_disable_side_bet:exists()
	registerVal11 = Dvar.ui_disable_side_bet:get()
	if {} or registerVal11 == "0" then
		local function __FUNC_178FD_(arg0, arg1)
			local registerVal2 = tonumber(arg0.imageID)
			local registerVal3 = tonumber(arg1.imageID)
			if registerVal2 >= registerVal3 then
			end
			return true
		end

		registerVal12 = CoD.ChallengesUtility.GetSideBetCallingCards(arg0, __FUNC_178FD_)
		registerVal13 = {}
		registerVal13.name = CoD.BlackMarketUtility.SideBetSetName
		registerVal13.callingCards = {}
		registerVal13.iconId = registerVal12[1.000000].models.iconId
		registerVal13.newCount = 0.000000
		registerVal13.masterCardIconId = 0.000000
		registerVal13.isSetBMClassified = false
		registerVal13.isSetContractClassified = false
		registerVal13.totalSetCount = (#registerVal12[1.000000].models.iconId - 1.000000)
		local registerVal14 = Engine.Localize("MPUI_BM_SET_X_OF_Y", 0.000000, 6.000000)
		registerVal13.setCount = registerVal14
		registerVal13.isBMClassified = true
		registerVal13.isContractClassified = false
		registerVal13.rarity = ""
		registerVal13.title = "CONTRACT_SIDE_BET_CALLING_CARD"
		local registerVal15, registerVal16, registerVal17 = ipairs(registerVal12)
		for index18,value19 in registerVal15, registerVal16, registerVal17 do
			if not value19.properties.isExpert then
				if not value19.models.isLocked then
					registerVal13.iconId = value19.models.iconId
				end
				registerVal20 = Engine.IsEmblemBackgroundNew(arg0, value19.models.iconId)
				if not value19.models.isLocked and registerVal20 then
					registerVal13.newCount = (registerVal13.newCount + 1.000000)
				end
				registerVal22 = {}
				registerVal22.rarity = ""
				registerVal23 = Engine.TableLookup(nil, CoD.backgroundsTable, 1.000000, value19.models.iconId, 4.000000)
				registerVal22.title = registerVal23
				if (0.000000 + 1.000000) >= (index18 - 1.000000) then
				end
				registerVal22.isBMClassified = true
				registerVal22.isContractClassified = false
				if (0.000000 + 1.000000) >= index18 then
				end
				registerVal22.isLocked = true
				registerVal22.sortKey = index18
				registerVal22.iconId = value19.models.iconId
				registerVal22.name = CoD.BlackMarketUtility.SideBetSetName
				registerVal22.duplicateCount = 0.000000
				registerVal22.description = value19.models.description
				table.insert(registerVal13.callingCards, registerVal22)
			else
				registerVal13.masterCardIconId = value19.models.iconId
				registerVal13.iconId = value19.models.iconId
				registerVal13.isBMClassified = false
				registerVal20 = Engine.IsEmblemBackgroundNew(arg0, value19.models.iconId)
				if not value19.models.isLocked and registerVal20 then
					registerVal13.newCount = (registerVal13.newCount + 1.000000)
				end
			end
		end
		registerVal15 = Engine.Localize("MPUI_BM_SET_X_OF_Y", (0.000000 + 1.000000), registerVal13.totalSetCount)
		registerVal13.setCount = registerVal15
		if (0.000000 + 1.000000) >= 1.000000 then
		end
		registerVal13.isSetBMClassified = true
		table.insert({}, registerVal13)
	end
	table.insert({}, CoD.BlackMarketUtility.AddSpecialContractCallingCardSet(arg0, "mp_action"))
	table.sort({}, CoD.BlackMarketUtility.SortUnlockIconId)
	CoD.BlackMarketUtility.CallingCardsTable = {}
	return (0.000000 + 1.000000), CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

CoD.BlackMarketUtility["BuildCallingCardSets"] = __FUNC_1687B_
local function __FUNC_17987_(arg0, arg1)
	if arg0.isSetBMClassified ~= arg1.isSetBMClassified then
		return arg1.isSetBMClassified
	end
	if arg0.isSetContractClassified ~= arg1.isSetContractClassified then
		return arg1.isSetContractClassified
	end
	if arg0.name == CoD.BlackMarketUtility.SideBetSetName then
		return true
	end
	if arg1.name == CoD.BlackMarketUtility.SideBetSetName then
		return false
	end
	if arg0.isSpecialContractSet ~= arg1.isSpecialContractSet then
		if arg0.isSpecialContractSet ~= true then
		end
		return true
	end
	if arg0.iconId >= arg1.iconId then
	end
	return true
end

CoD.BlackMarketUtility["SortUnlockIconId"] = __FUNC_17987_
local function __FUNC_17BA7_(arg0, arg1)
	if arg0.models.isBMClassified ~= arg1.models.isBMClassified then
		return arg1.models.isBMClassified
	end
	if arg0.models.iconId >= arg1.models.iconId then
	end
	return true
end

CoD.BlackMarketUtility["SortUnlocksModelIconId"] = __FUNC_17BA7_
local function __FUNC_17CA0_(arg0, arg1)
	if arg0.models.isBMClassified ~= arg1.models.isBMClassified then
		return arg1.models.isBMClassified
	end
	if arg0.properties.index >= arg1.properties.index then
	end
	return true
end

CoD.BlackMarketUtility["SortUnlocksPropertyIndex"] = __FUNC_17CA0_
local function __FUNC_17DAF_(arg0, arg1)
	if arg0.models.isBMClassified ~= arg1.models.isBMClassified then
		return arg1.models.isBMClassified
	end
	if arg0.properties.variantIndex >= arg1.properties.variantIndex then
	end
	return true
end

CoD.BlackMarketUtility["SortUnlocksPropertyVariantIndex"] = __FUNC_17DAF_
local function __FUNC_17EC2_(arg0, arg1)
	local registerVal2 = Engine.GetModelValue(Engine.GetModel(arg0, "isBMClassified"))
	local registerVal3 = Engine.GetModelValue(Engine.GetModel(arg1, "isBMClassified"))
	if registerVal2 ~= registerVal3 then
		return registerVal3
	end
	local registerVal4 = Engine.GetModelValue(Engine.GetModel(arg0, "iconID"))
	local registerVal5 = Engine.GetModelValue(Engine.GetModel(arg1, "iconID"))
	if registerVal4 >= registerVal5 then
	end
	return true
end

CoD.BlackMarketUtility["SortUnlocksModelIconID"] = __FUNC_17EC2_
local function __FUNC_1802D_(arg0, arg1)
	local registerVal2 = Engine.GetModelValue(Engine.GetModel(arg0, "isBMClassified"))
	local registerVal3 = Engine.GetModelValue(Engine.GetModel(arg1, "isBMClassified"))
	if registerVal2 ~= registerVal3 then
		return registerVal3
	end
	local registerVal4 = Engine.GetModelValue(Engine.GetModel(arg0, "weaponOptionSubIndex"))
	local registerVal5 = Engine.GetModelValue(Engine.GetModel(arg1, "weaponOptionSubIndex"))
	if registerVal4 >= registerVal5 then
	end
	return true
end

CoD.BlackMarketUtility["SortUnlocksModelWOSubIndex"] = __FUNC_1802D_
local function __FUNC_181A7_(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
	if arg3.supplyDropType ~= CoD.BlackMarketUtility.DropTypes.BUNDLE then
		if arg3.supplyDropType ~= CoD.BlackMarketUtility.DropTypes.HUNDRED_BUNDLE or arg5 == Enum.InventoryCurrency.INVENTORY_CURRENCY_MP_BUNDLE_ITEM then
			if arg3.supplyDropType ~= CoD.BlackMarketUtility.DropTypes.RARE_BUNDLE_10FOR5 or arg5 == Enum.InventoryCurrency.INVENTORY_CURRENCY_MP_BUNDLE_ITEM then
				if arg3.supplyDropType ~= CoD.BlackMarketUtility.DropTypes.RARE_20BUNDLE or arg5 == Enum.InventoryCurrency.INVENTORY_CURRENCY_MP_BUNDLE_ITEM then
					if arg3.supplyDropType ~= CoD.BlackMarketUtility.DropTypes.RARE_15BUNDLE or arg5 == Enum.InventoryCurrency.INVENTORY_CURRENCY_MP_BUNDLE_ITEM then
						if arg3.supplyDropType == CoD.BlackMarketUtility.DropTypes.RARE_20LDBUNDLE and arg5 ~= Enum.InventoryCurrency.INVENTORY_CURRENCY_MP_BUNDLE_ITEM then
							if arg3.supplyDropType ~= CoD.BlackMarketUtility.DropTypes.HUNDRED_BUNDLE then
							end
							if arg3.supplyDropType ~= CoD.BlackMarketUtility.DropTypes.RARE_BUNDLE_10FOR5 then
							end
							if arg3.supplyDropType ~= CoD.BlackMarketUtility.DropTypes.RARE_20BUNDLE then
							end
							if arg3.supplyDropType ~= CoD.BlackMarketUtility.DropTypes.RARE_20LDBUNDLE then
							end
							if arg3.supplyDropType ~= CoD.BlackMarketUtility.DropTypes.RARE_15BUNDLE then
							end
							local registerVal13 = Engine.DvarInt(arg2, "rare_crate_bundle_sku")
							if true then
							else
								if true then
								else
									if true then
									else
										if true then
										else
											if true then
											end
										end
									end
								end
							end
							local registerVal14 = Engine.PurchaseDWSKU(arg2, CoD.BlackMarketUtility.rare_20ldbundle_sku)
							if CoD.BlackMarketUtility.rare_20ldbundle_sku ~= nil and CoD.BlackMarketUtility.rare_20ldbundle_sku == 0.000000 or not registerVal14 then
								GoBack(arg4, arg2)
								LuaUtils.UI_ShowErrorMessageDialog(arg2, "MPUI_BM_BUNDLE_PURCHASE_FAILED", "")
								return 
							end
							arg4[CoD.OverlayUtility.GoBackPropertyName] = nil
							CoD.Menu.UpdateAllButtonPrompts(arg4, arg2)
							arg0:setState("PurchasingBundle")
							arg0.PurchasingBundle:playClip("StartPurchasing")
							arg0.PurchasingBundle.nextClip = "Purchasing"
							arg6.purchasingBundle = true
							arg6:updateDataSource()
							local function __FUNC_19FD9_(arg1, arg3)
								local registerVal2 = Engine.IsInventoryBusy(arg2)
								registerVal2 = Engine.GetPurchaseDWSKUResult(arg2)
								if not arg3 or registerVal2 == Enum.InventoryPurchaseResult.INVENTORY_PURCHASE_RESULT_INPROGRESS then
									LUI.UIElement.clipOver(arg1, arg3)
								else
									registerVal2 = Engine.GetPurchaseDWSKUResult(arg2)
									if registerVal2 == Enum.InventoryPurchaseResult.INVENTORY_PURCHASE_RESULT_FAILURE then
										GoBack(arg4, arg2)
										LuaUtils.UI_ShowErrorMessageDialog(arg2, "MPUI_BM_CRATE_PURCHASED_FAILED", "")
										return 
									end
									local registerVal4 = CoD.OverlayUtility.DefaultGoBack()
									arg4[CoD.OverlayUtility.GoBackPropertyName] = registerVal4
									CoD.Menu.UpdateAllButtonPrompts(arg4, arg2)
									local function __FUNC_1A6C8_(arg0, arg1)
										arg0:registerEventHandler("clip_over", LUI.UIElement.clipOver)
									end

									arg1:registerEventHandler("clip_over", __FUNC_1A6C8_)
									arg1:playClip("StopPurchasing")
									arg0:setState("PurchasedBundle")
									arg6.purchasedBundleType = CoD.BlackMarketUtility.DropTypes.RARE
									if true then
										arg6.purchasedBundleType = CoD.BlackMarketUtility.DropTypes.HUNDRED_BUNDLE
									else
										if true then
											arg6.purchasedBundleType = CoD.BlackMarketUtility.DropTypes.RARE_BUNDLE_10FOR5
										else
											if true then
												arg6.purchasedBundleType = CoD.BlackMarketUtility.DropTypes.RARE_20BUNDLE
											else
												if true then
													arg6.purchasedBundleType = CoD.BlackMarketUtility.DropTypes.RARE_15BUNDLE
												else
													if true then
														arg6.purchasedBundleType = CoD.BlackMarketUtility.DropTypes.RARE_20LDBUNDLE
													end
												end
											end
										end
									end
									arg6.purchasingBundle = false
									arg6.purchasedBundle = true
									arg6:updateDataSource()
								end
							end

							arg0.PurchasingBundle:registerEventHandler("clip_over", __FUNC_19FD9_)
							return 
						end
					end
				end
			end
		end
	end
	if arg3.supplyDropType ~= CoD.BlackMarketUtility.DropTypes.SIX_PACK then
	end
	if arg3.supplyDropType ~= CoD.BlackMarketUtility.DropTypes.DAILY_DOUBLE then
	end
	if arg3.supplyDropType ~= CoD.BlackMarketUtility.DropTypes.BUNDLE_EXPERIMENT then
	end
	if arg3.supplyDropType ~= CoD.BlackMarketUtility.DropTypes.NO_DUPES_BUNDLE then
	end
	if arg3.supplyDropType ~= CoD.BlackMarketUtility.DropTypes.GRAND_SLAM then
	end
	if not true and not true and not true and not arg1 or true then
		if arg5 ~= Enum.InventoryCurrency.INVENTORY_CURRENCY_MP_BUNDLE_ITEM then
			registerVal13 = Engine.DvarInt(nil, "loot_sixPack_crate_dwid")
			if true then
				registerVal14 = Engine.DvarInt(nil, "loot_dailyDouble_dwid")
			else
				if true then
					registerVal14 = Engine.DvarInt(nil, "loot_3pack_bundle_sku")
				else
					if true then
						registerVal14 = Engine.DvarInt(nil, "loot_noduperare20bundle_sku_id")
					else
						if true then
						end
					end
				end
			end
			registerVal14 = Engine.PurchaseDWSKU(arg2, CoD.BlackMarketUtility.loot_grand_slam_sku, true, 2.000000)
			if CoD.BlackMarketUtility.loot_grand_slam_sku ~= nil and CoD.BlackMarketUtility.loot_grand_slam_sku == 0.000000 or not registerVal14 then
				GoBack(arg4, arg2)
				LuaUtils.UI_ShowErrorMessageDialog(arg2, "MPUI_BM_BUNDLE_PURCHASE_FAILED", "")
				return 
			end
			arg4[CoD.OverlayUtility.GoBackPropertyName] = nil
			CoD.Menu.UpdateAllButtonPrompts(arg4, arg2)
			arg0:setState("PurchasingBundle")
			arg0.PurchasingBundle:playClip("StartPurchasing")
			arg0.PurchasingBundle.nextClip = "Purchasing"
			arg6.purchasingBundle = true
			arg6:updateDataSource()
			local function __FUNC_1A77F_(arg1, arg3)
				local registerVal2 = Engine.IsInventoryBusy(arg2)
				registerVal2 = Engine.GetPurchaseDWSKUResult(arg2)
				if not arg3 or registerVal2 == Enum.InventoryPurchaseResult.INVENTORY_PURCHASE_RESULT_INPROGRESS then
					LUI.UIElement.clipOver(arg1, arg3)
				else
					registerVal2 = Engine.GetPurchaseDWSKUResult(arg2)
					if registerVal2 == Enum.InventoryPurchaseResult.INVENTORY_PURCHASE_RESULT_FAILURE then
						GoBack(arg4, arg2)
						LuaUtils.UI_ShowErrorMessageDialog(arg2, "MPUI_BM_BUNDLE_PURCHASE_FAILED", "")
						return 
					end
					local registerVal4 = CoD.OverlayUtility.DefaultGoBack()
					arg4[CoD.OverlayUtility.GoBackPropertyName] = registerVal4
					CoD.Menu.UpdateAllButtonPrompts(arg4, arg2)
					local function __FUNC_1AEA1_(arg0, arg1)
						arg0:registerEventHandler("clip_over", LUI.UIElement.clipOver)
					end

					arg1:registerEventHandler("clip_over", __FUNC_1AEA1_)
					arg1:playClip("StopPurchasing")
					if true then
						arg0:setState("PurchasedSixPack")
						arg6.purchasedBundleType = CoD.BlackMarketUtility.DropTypes.COMMON
					else
						if true then
							arg0:setState("PurchasedBundle")
							arg6.purchasedBundleType = CoD.BlackMarketUtility.DropTypes.DAILY_DOUBLE_RARE_BUNDLE
						else
							if true then
								arg0:setState("PurchasedBundle")
								arg6.purchasedBundleType = CoD.BlackMarketUtility.DropTypes.BUNDLE_EXPERIMENT
							else
								if true then
									arg0:setState("PurchasedBundle")
									arg6.purchasedBundleType = CoD.BlackMarketUtility.DropTypes.NO_DUPES_BUNDLE
								else
									if true then
										arg0:setState("PurchaseComplete")
										arg6.purchasedBundleType = CoD.BlackMarketUtility.DropTypes.GRAND_SLAM
									end
								end
							end
						end
					end
					arg6.purchasingBundle = false
					arg6.purchasedBundle = true
					arg6:updateDataSource()
				end
			end

			arg0.PurchasingBundle:registerEventHandler("clip_over", __FUNC_1A77F_)
			return 
		end
	end
	if arg5 ~= Enum.InventoryCurrency.INVENTORY_CURRENCY_MP_BUNDLE_ITEM then
		registerVal14 = GoBack(arg4, arg2)
	end
	if arg3.supplyDropType == CoD.BlackMarketUtility.DropTypes.SIX_PACK then
	end
	registerVal14 = IsBundleActive(arg2)
	if CoD.BlackMarketUtility.DropTypes.COMMON == CoD.BlackMarketUtility.DropTypes.RARE and arg5 == Enum.InventoryCurrency.INVENTORY_CURRENCY_MP_BUNDLE_ITEM and not registerVal14 then
		registerVal14 = CoD.BlackMarketUtility.GetCurrentBundleCount(arg2)
		registerVal14 = CoD.BlackMarketUtility.GetCurrentHundredBundleCount(arg2)
		if registerVal14 <= 0.000000 and 0.000000 < registerVal14 then
		else
			registerVal14 = CoD.BlackMarketUtility.GetCurrentBundleCount(arg2)
			registerVal14 = CoD.BlackMarketUtility.GetCurrentRareBundle10for5Count(arg2)
			if registerVal14 <= 0.000000 and 0.000000 < registerVal14 then
			else
				registerVal14 = CoD.BlackMarketUtility.GetCurrentBundleCount(arg2)
				registerVal14 = CoD.BlackMarketUtility.GetCurrentRare20BundleCount(arg2)
				if registerVal14 <= 0.000000 and 0.000000 < registerVal14 then
				end
			end
		end
	end
	if CoD.BlackMarketUtility.DropTypes.RARE_20BUNDLE == CoD.BlackMarketUtility.DropTypes.INCENTIVE_RARE_BUNDLE then
		local registerVal15 = Dvar.incentive_rare_crate_dwid:get()
	else
		if registerVal15 == CoD.BlackMarketUtility.DropTypes.INCENTIVE_WEAPON_BUNDLE then
			registerVal15 = Dvar.incentive_weapon_crate_dwid:get()
		else
			if registerVal15 == CoD.BlackMarketUtility.DropTypes.NO_DUPES_RANGE then
				registerVal15 = Dvar.range_weapon_no_dupes_crate_dwid:get()
			else
				if registerVal15 == CoD.BlackMarketUtility.DropTypes.NO_DUPES_MELEE then
					registerVal15 = Dvar.melee_weapon_no_dupes_crate_dwid:get()
				else
					if CoD.BlackMarketUtility.DropTypes.RARE_20BUNDLE == CoD.BlackMarketUtility.DropTypes.DAILY_DOUBLE_RARE_BUNDLE then
						registerVal15 = Dvar.loot_dailyDouble_rare_crate_dwid:get()
					else
						if CoD.BlackMarketUtility.DropTypes.RARE_20BUNDLE == CoD.BlackMarketUtility.DropTypes.HUNDRED_BUNDLE then
							registerVal15 = Engine.DvarInt(nil, "loot_rare100_dwid")
						else
							if CoD.BlackMarketUtility.DropTypes.RARE_20BUNDLE == CoD.BlackMarketUtility.DropTypes.RARE_BUNDLE_10FOR5 then
								registerVal15 = Engine.DvarInt(nil, "rare__bundle_10for5_dwid")
							else
								if CoD.BlackMarketUtility.DropTypes.RARE_20BUNDLE == CoD.BlackMarketUtility.DropTypes.BUNDLE_EXPERIMENT then
									registerVal15 = Engine.DvarInt(nil, "loot_3pack_dwid")
								else
									if CoD.BlackMarketUtility.DropTypes.RARE_20BUNDLE == CoD.BlackMarketUtility.DropTypes.NO_DUPES_CRATE then
										registerVal15 = Engine.DvarInt(nil, "loot_noDupeRare_dwid")
									else
										if CoD.BlackMarketUtility.DropTypes.RARE_20BUNDLE == CoD.BlackMarketUtility.DropTypes.NO_DUPES_BUNDLE then
											registerVal15 = Engine.DvarInt(nil, "loot_noDupeRare20Bundle_dwid")
										else
											if CoD.BlackMarketUtility.DropTypes.RARE_20BUNDLE == CoD.BlackMarketUtility.DropTypes.CODE_BUNDLE then
											else
												if CoD.BlackMarketUtility.DropTypes.RARE_20BUNDLE == CoD.BlackMarketUtility.DropTypes.WEAPON_3X then
												else
													if CoD.BlackMarketUtility.DropTypes.RARE_20BUNDLE == CoD.BlackMarketUtility.DropTypes.LIMITED_EDITION_CAMO then
													else
														if CoD.BlackMarketUtility.DropTypes.RARE_20BUNDLE == CoD.BlackMarketUtility.DropTypes.RARE_20BUNDLE then
														else
															if CoD.BlackMarketUtility.DropTypes.RARE_20BUNDLE == CoD.BlackMarketUtility.DropTypes.RARE_15BUNDLE then
															else
																if CoD.BlackMarketUtility.DropTypes.RARE_20BUNDLE == CoD.BlackMarketUtility.DropTypes.OUTFIT_3BUNDLE then
																else
																	if CoD.BlackMarketUtility.DropTypes.RARE_20BUNDLE == CoD.BlackMarketUtility.DropTypes.RARE_20LDBUNDLE then
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
	registerVal15 = Engine.BuyLootCrate(arg2, CoD.BlackMarketUtility.rare_20ldbundle_crate_dwid, arg5)
	if registerVal15 == false then
		LuaUtils.UI_ShowErrorMessageDialog(arg2, "MPUI_BM_CRATE_PURCHASED_FAILED", "")
	else
		CoD.perController[arg2].cryptokeysToSpend = arg3.itemCost
		CoD.perController[arg2].supplyDropType = CoD.BlackMarketUtility.DropTypes.RARE_20BUNDLE
		CoD.perController[arg2].currencySpent = arg5
		if arg5 == Enum.InventoryCurrency.INVENTORY_CURRENCY_COD_POINTS then
			CoD.perController[arg2].codPointsSpent = arg3.itemCODPointCost
		else
			CoD.perController[arg2].codPointsSpent = 0.000000
		end
		if arg3.again then
			registerVal15 = GoBack(registerVal14, arg2)
			CoD.perController[arg2].supplyDropQuickAnim = true
		else
			if CoD.BlackMarketUtility.CrateTypeIds[CoD.BlackMarketUtility.DropTypes.RARE_20BUNDLE] == "bribe" then
			end
			Engine.SendClientScriptNotify(arg2, "BlackMarket", "crate_camera", "rare")
			SendFrontendControllerZeroMenuResponse(arg2, "BlackMarket", "roll")
			Engine.PlaySound("uin_bm_camera_pan")
			CoD.perController[arg2].supplyDropQuickAnim = false
		end
		OpenOverlay(registerVal15, "BM_Decryption", arg2)
	end
end

CoD.BlackMarketUtility["TradeForCrateAction"] = __FUNC_181A7_
local function __FUNC_1AF57_(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
	if arg3.supplyDropType == CoD.BlackMarketUtility.DropTypes.TRIFECTA then
		local registerVal8 = Engine.DvarString(0.000000, "tu14_skipQuickTrifectaPurchaseHack")
		if registerVal8 == "1" then
			registerVal8 = Engine.PurchaseDWSKU(arg2, arg7)
			if arg7 ~= nil and arg7 == 0.000000 or not registerVal8 then
				GoBack(arg4, arg2)
				LuaUtils.UI_ShowErrorMessageDialog(arg2, "MPUI_BM_TRIFECTA_PURCHASE_FAILED", "")
				return 
			else
				registerVal8 = Engine.PurchaseDWSKU(arg2, arg7, false)
				if arg7 ~= nil and arg7 == 0.000000 or not registerVal8 then
					GoBack(arg4, arg2)
					LuaUtils.UI_ShowErrorMessageDialog(arg2, "MPUI_BM_TRIFECTA_PURCHASE_FAILED", "")
					return 
				end
			end
		end
		arg4[CoD.OverlayUtility.GoBackPropertyName] = nil
		CoD.Menu.UpdateAllButtonPrompts(arg4, arg2)
		arg0:setState("PurchasingBundle")
		arg0.PurchasingBundle:playClip("StartPurchasing")
		arg0.PurchasingBundle.nextClip = "Purchasing"
		arg6.purchasingBundle = true
		arg6:updateDataSource()
		arg0.fullInventoryRefetchRequested = false
		arg0.dwInventoryFetchCompleteEvents = 0.000000
		registerVal8 = Engine.seconds()
		arg0.bailOutTime = (registerVal8 + 5.000000)
		local function __FUNC_1B4E4_(arg1, arg2)
			arg0.dwInventoryFetchCompleteEvents = (arg0.dwInventoryFetchCompleteEvents + 1.000000)
		end

		arg0:registerEventHandler("refresh_dw_inventory_menu", __FUNC_1B4E4_)
		local function __FUNC_1B559_(arg1, arg3)
			local registerVal2 = Engine.IsInventoryBusy(arg2)
			registerVal2 = Engine.GetPurchaseDWSKUResult(arg2)
			if not registerVal2 and registerVal2 ~= Enum.InventoryPurchaseResult.INVENTORY_PURCHASE_RESULT_INPROGRESS then
				registerVal2 = Engine.DvarString(0.000000, "tu14_skipQuickTrifectaPurchaseHack")
				if registerVal2 ~= "1" and arg0.dwInventoryFetchCompleteEvents < 5.000000 and not arg0.fullInventoryRefetchRequested then
					registerVal2 = Engine.DvarString(0.000000, "tu14_skipQuickTrifectaPurchaseHack")
					registerVal2 = Engine.seconds()
					if registerVal2 ~= "1" and not arg0.fullInventoryRefetchRequested and arg0.bailOutTime < registerVal2 then
						arg0.fullInventoryRefetchRequested = true
						Engine.ExecNow(arg2, "refetchInventory")
					end
					LUI.UIElement.clipOver(arg1, arg3)
				end
			else
				registerVal2 = Engine.GetPurchaseDWSKUResult(arg2)
				if registerVal2 == Enum.InventoryPurchaseResult.INVENTORY_PURCHASE_RESULT_FAILURE then
					GoBack(arg4, arg2)
					LuaUtils.UI_ShowErrorMessageDialog(arg2, "MPUI_BM_TRIFECTA_PURCHASE_FAILED", "")
					return 
				end
				local registerVal4 = CoD.OverlayUtility.DefaultGoBack()
				arg4[CoD.OverlayUtility.GoBackPropertyName] = registerVal4
				CoD.Menu.UpdateAllButtonPrompts(arg4, arg2)
				local function __FUNC_1BBDF_(arg0, arg1)
					arg0:registerEventHandler("clip_over", LUI.UIElement.clipOver)
				end

				arg1:registerEventHandler("clip_over", __FUNC_1BBDF_)
				arg1:playClip("StopPurchasing")
				arg0:setState("PurchaseComplete")
				arg6.purchasingBundle = false
				arg6.purchasedBundle = true
				arg6:updateDataSource()
			end
		end

		arg0.PurchasingBundle:registerEventHandler("clip_over", __FUNC_1B559_)
		return 
	end
end

CoD.BlackMarketUtility["TradeForTrifectaAction"] = __FUNC_1AF57_
local function __FUNC_1BC93_(arg0, arg1)
	local registerVal2 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	if registerVal2 == nil then
		return 0.000000
	end
	local registerVal3 = registerVal2.periodicLadderRarities[CoD.BlackMarketUtility.periodicLadderRaritiesIndex.RARE]:get()
	if registerVal3 < arg1 then
		registerVal2.periodicLadderRarities[CoD.BlackMarketUtility.periodicLadderRaritiesIndex.RARE]:set(arg1)
		Engine.StorageWrite(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	end
	if arg1 == 0.000000 then
		return 0.000000
	end
	return math.min(((arg1 - arg1) / arg1), 1.000000)
end

CoD.BlackMarketUtility["GetScaledProgress"] = __FUNC_1BC93_
local function __FUNC_1BF50_(arg0)
	local registerVal1 = Dvar.tu27_showGunMeter:get()
	registerVal1, registerVal2 = Engine.GetItemRarityOccurrences(arg0, "rare", 51.000000)
	if registerVal1 and registerVal1 == true then
		return CoD.BlackMarketUtility.GetScaledProgress(arg0, registerVal2)
	end
	return 0.000000
end

CoD.BlackMarketUtility["GetGunMeterProgress"] = __FUNC_1BF50_
