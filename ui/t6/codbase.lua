-- Decompiled with CoDLUIDecompiler by JariK

if CoD == nil then
	CoD = {}
end
function CoD.NullFunction()
end

local registerVal0 = {}
local function __FUNC_F068_(arg0, arg1)
	print(("LUI_NULL_FUNCTION: " .. arg1))
	return CoD.NullFunction
end

registerVal0.__index = __FUNC_F068_
if Engine ~= nil then
	setmetatable(Engine, registerVal0)
end
require("ui.T7.Utility.OverlayUtility")
require("lua.Shared.CoDShared")
CoD.LANGUAGE_ENGLISH = 0
CoD.LANGUAGE_FRENCH = 1
CoD.LANGUAGE_FRENCHCANADIAN = 2
CoD.LANGUAGE_GERMAN = 3
CoD.LANGUAGE_AUSTRIAN = 4
CoD.LANGUAGE_ITALIAN = 5
CoD.LANGUAGE_SPANISH = 6
CoD.LANGUAGE_BRITISH = 7
CoD.LANGUAGE_RUSSIAN = 8
CoD.LANGUAGE_POLISH = 9
CoD.LANGUAGE_KOREAN = 10
CoD.LANGUAGE_JAPANESE = 11
CoD.LANGUAGE_CZECH = 12
CoD.LANGUAGE_FULLJAPANESE = 13
CoD.LANGUAGE_PORTUGUESE = 14
CoD.LANGUAGE_MEXICANSPANISH = 15
CoD.LANGUAGE_ARABIC = 16
CoD.LANGUAGE_TRADITIONALCHINESE = 17
CoD.LANGUAGE_SIMPLIFIEDCHINESE = 18
CoD.LANGUAGE_ENGLISHGERMAN = 19
CoD.LANGUAGE_ENGLISHJAPANESE = 20
CoD.LANGUAGE_HEBREW = 21
CoD.LANGUAGE_ENGLISHARABIC = 22
CoD.XC_LOCALE_UNITED_STATES = 36
CoD.UIMENU_NONE = 0
CoD.UIMENU_MAIN = 1
CoD.UIMENU_MAINLOBBY = 2
CoD.UIMENU_INGAME = 3
CoD.UIMENU_PREGAME = 4
CoD.UIMENU_POSTGAME = 5
CoD.UIMENU_WM_QUICKMESSAGE = 6
CoD.UIMENU_SCRIPT_POPUP = 7
CoD.UIMENU_SCOREBOARD = 8
CoD.UIMENU_GAMERCARD = 9
CoD.UIMENU_MUTEERROR = 10
CoD.UIMENU_SPLITSCREENGAMESETUP = 11
CoD.UIMENU_SYSTEMLINKJOINGAME = 12
CoD.UIMENU_PARTY = 13
CoD.UIMENU_LEAGUE_PARTY = 15
CoD.UIMENU_GAMELOBBY = 16
CoD.UIMENU_PRIVATELOBBY = 18
CoD.UIMENU_LEAGUELOBBY = 19
local registerVal1 = Engine.GetCurrentPlatform()
if registerVal1 ~= "durango" then
end
CoD.isDurango = true
if registerVal1 ~= "pc" then
end
CoD.isPC = true
if registerVal1 ~= "orbis" then
end
CoD.isPS4 = true
CoD.mapsStructTable = "maps"
local registerVal3 = Engine.GetGDTMapsTable()
CoD.mapsTable = registerVal3
CoD.codcasterTeamIdentityColorTable = "mp_codcaster_color_list"
CoD.codcasterTeamIdentityLogoTable = "mp_codcaster_logo_list"
CoD.completeCollectiblesAssetName = "completecollectibleslist"
CoD.NotEnoughLD = false
registerVal3 = {}
registerVal3.PSNZMDLC1 = 100020
registerVal3.PSNZMDLC2 = 100021
registerVal3.PSNZMDLC3 = 100022
registerVal3.PSNZMDLC4 = 100023
registerVal3.XB1ZMDLC1 = 110020
registerVal3.XB1ZMDLC2 = 110021
registerVal3.XB1ZMDLC3 = 110022
registerVal3.XB1ZMDLC4 = 110023
CoD.ZMDLCProductIDs = registerVal3
registerVal3 = {}
registerVal3.CONTENT_UNKNOWN = Enum.ContentFlagBits.CONTENT_UNKNOWN
registerVal3.CONTENT_ORIGINALMAPS = Enum.ContentFlagBits.CONTENT_ORIGINALMAPS
registerVal3.CONTENT_DLC0ZM = Enum.ContentFlagBits.CONTENT_DLC0ZM
registerVal3.CONTENT_DLC0MP = Enum.ContentFlagBits.CONTENT_DLC0MP
registerVal3.CONTENT_DLC1 = Enum.ContentFlagBits.CONTENT_DLC1
registerVal3.CONTENT_DLC2 = Enum.ContentFlagBits.CONTENT_DLC2
registerVal3.CONTENT_DLC3 = Enum.ContentFlagBits.CONTENT_DLC3
registerVal3.CONTENT_DLC4 = Enum.ContentFlagBits.CONTENT_DLC4
registerVal3.CONTENT_DLC5 = Enum.ContentFlagBits.CONTENT_DLC5
registerVal3.CONTENT_DLC1ZM = Enum.ContentFlagBits.CONTENT_DLC1ZM
registerVal3.CONTENT_DLC2ZM = Enum.ContentFlagBits.CONTENT_DLC2ZM
registerVal3.CONTENT_DLC3ZM = Enum.ContentFlagBits.CONTENT_DLC3ZM
registerVal3.CONTENT_DLC4ZM = Enum.ContentFlagBits.CONTENT_DLC4ZM
registerVal3.CONTENT_DLC6 = Enum.ContentFlagBits.CONTENT_DLC6
CoD.DLCBits = registerVal3
CoD.DLCFocus = 0
registerVal3 = {}
registerVal3[CoD.DLCBits.CONTENT_DLC0MP] = "MPUI_NUKETOWN_X"
registerVal3[CoD.DLCBits.CONTENT_DLC0ZM] = "ZMUI_FACTORY"
registerVal3[CoD.DLCBits.CONTENT_DLC1] = "MENU_DLC1_NAME_SHORT"
registerVal3[CoD.DLCBits.CONTENT_DLC2] = "MENU_DLC2_NAME_SHORT"
registerVal3[CoD.DLCBits.CONTENT_DLC3] = "MENU_DLC3_NAME_SHORT"
registerVal3[CoD.DLCBits.CONTENT_DLC4] = "MENU_DLC4_NAME_SHORT"
registerVal3[CoD.DLCBits.CONTENT_DLC5] = "MENU_DLC5_NAME_SHORT"
registerVal3[CoD.DLCBits.CONTENT_DLC1ZM] = "MENU_DLC1ZM_NAME_SHORT"
registerVal3[CoD.DLCBits.CONTENT_DLC2ZM] = "MENU_DLC2ZM_NAME_SHORT"
registerVal3[CoD.DLCBits.CONTENT_DLC3ZM] = "MENU_DLC3ZM_NAME_SHORT"
registerVal3[CoD.DLCBits.CONTENT_DLC4ZM] = "MENU_DLC4ZM_NAME_SHORT"
registerVal3[CoD.DLCBits.CONTENT_DLC6] = "MENU_DLC6_NAME_SHORT"
CoD.DLCNames = registerVal3
registerVal3 = {}
registerVal3[CoD.DLCBits.CONTENT_DLC0MP] = "t7_store_product_nuk3town"
registerVal3[CoD.DLCBits.CONTENT_DLC0ZM] = "t7_store_product_giant_zombie_map"
registerVal3[CoD.DLCBits.CONTENT_DLC1] = "t7_store_product_awakening"
registerVal3[CoD.DLCBits.CONTENT_DLC2] = "t7_store_product_eclipse"
registerVal3[CoD.DLCBits.CONTENT_DLC3] = "t7_store_product_descent"
registerVal3[CoD.DLCBits.CONTENT_DLC4] = "t7_store_product_salvation"
registerVal3[CoD.DLCBits.CONTENT_DLC5] = "t7_store_product_zmhd"
registerVal3[CoD.DLCBits.CONTENT_DLC1ZM] = "t7_store_product_der_eisendrache"
registerVal3[CoD.DLCBits.CONTENT_DLC2ZM] = "t7_store_product_zersubou_no_shima"
registerVal3[CoD.DLCBits.CONTENT_DLC3ZM] = "t7_store_product_gorod_krovi"
registerVal3[CoD.DLCBits.CONTENT_DLC4ZM] = "t7_store_product_revelations"
registerVal3[CoD.DLCBits.CONTENT_DLC6] = "t7_store_product_mphd"
CoD.DLCImages = registerVal3
registerVal3 = {}
registerVal3[CoD.DLCBits.CONTENT_DLC0ZM] = "DLC0ZM"
registerVal3[CoD.DLCBits.CONTENT_DLC1] = "DLC1"
registerVal3[CoD.DLCBits.CONTENT_DLC2] = "DLC2"
registerVal3[CoD.DLCBits.CONTENT_DLC3] = "DLC3"
registerVal3[CoD.DLCBits.CONTENT_DLC4] = "DLC4"
registerVal3[CoD.DLCBits.CONTENT_DLC5] = "DLC5"
registerVal3[CoD.DLCBits.CONTENT_DLC1ZM] = "DLC1ZM"
registerVal3[CoD.DLCBits.CONTENT_DLC2ZM] = "DLC2ZM"
registerVal3[CoD.DLCBits.CONTENT_DLC3ZM] = "DLC3ZM"
registerVal3[CoD.DLCBits.CONTENT_DLC4ZM] = "DLC4ZM"
registerVal3[CoD.DLCBits.CONTENT_DLC6] = "DLC6"
CoD.DLCPackFromBit = registerVal3
registerVal3 = {}
registerVal3[CoD.DLCBits.CONTENT_DLC0ZM] = Enum.dlcIndex_t.CONTENT_DLC0ZM_INDEX
registerVal3[CoD.DLCBits.CONTENT_DLC1] = Enum.dlcIndex_t.CONTENT_DLC1_INDEX
registerVal3[CoD.DLCBits.CONTENT_DLC2] = Enum.dlcIndex_t.CONTENT_DLC2_INDEX
registerVal3[CoD.DLCBits.CONTENT_DLC3] = Enum.dlcIndex_t.CONTENT_DLC3_INDEX
registerVal3[CoD.DLCBits.CONTENT_DLC4] = Enum.dlcIndex_t.CONTENT_DLC4_INDEX
registerVal3[CoD.DLCBits.CONTENT_DLC5] = Enum.dlcIndex_t.CONTENT_DLC5_INDEX
registerVal3[CoD.DLCBits.CONTENT_DLC1ZM] = Enum.dlcIndex_t.CONTENT_DLC1ZM_INDEX
registerVal3[CoD.DLCBits.CONTENT_DLC2ZM] = Enum.dlcIndex_t.CONTENT_DLC2ZM_INDEX
registerVal3[CoD.DLCBits.CONTENT_DLC3ZM] = Enum.dlcIndex_t.CONTENT_DLC3ZM_INDEX
registerVal3[CoD.DLCBits.CONTENT_DLC4ZM] = Enum.dlcIndex_t.CONTENT_DLC4ZM_INDEX
registerVal3[CoD.DLCBits.CONTENT_DLC6] = Enum.dlcIndex_t.CONTENT_DLC6_INDEX
CoD.DLCIndexFromBit = registerVal3
registerVal3 = {}
local registerVal5 = {}
local registerVal6 = {}
registerVal6[CoD.DLCBits.CONTENT_DLC1] = "dlc1"
registerVal6[CoD.DLCBits.CONTENT_DLC2] = "dlc2"
registerVal6[CoD.DLCBits.CONTENT_DLC3] = "dlc3"
registerVal6[CoD.DLCBits.CONTENT_DLC4] = "dlc4"
registerVal6[CoD.DLCBits.CONTENT_DLC6] = "dlc6"
registerVal5.products = registerVal6
registerVal5.known = 0
registerVal3[Enum.eModes.MODE_MULTIPLAYER] = registerVal5
registerVal5 = {}
registerVal6 = {}
registerVal6[CoD.DLCBits.CONTENT_DLC0ZM] = "giant"
registerVal6[CoD.DLCBits.CONTENT_DLC1] = "dlc1"
registerVal6[CoD.DLCBits.CONTENT_DLC2] = "dlc2"
registerVal6[CoD.DLCBits.CONTENT_DLC3] = "dlc3"
registerVal6[CoD.DLCBits.CONTENT_DLC4] = "dlc4"
registerVal6[CoD.DLCBits.CONTENT_DLC5] = "dlc5"
registerVal6[CoD.DLCBits.CONTENT_DLC1ZM] = "dlc1zm"
registerVal6[CoD.DLCBits.CONTENT_DLC2ZM] = "dlc2zm"
registerVal6[CoD.DLCBits.CONTENT_DLC3ZM] = "dlc3zm"
registerVal6[CoD.DLCBits.CONTENT_DLC4ZM] = "dlc4zm"
registerVal5.products = registerVal6
registerVal5.known = 0
registerVal3[Enum.eModes.MODE_ZOMBIES] = registerVal5
registerVal5 = {}
registerVal5.products = {}
registerVal5.known = 0
registerVal3[Enum.eModes.MODE_CAMPAIGN] = registerVal5
registerVal5 = {}
registerVal5.products = {}
registerVal5.known = 0
registerVal3[Enum.eModes.MODE_INVALID] = registerVal5
CoD.ProductFromBit = registerVal3
CoD.ContractWeaponTiers = {}
registerVal3 = {}
registerVal3.melee_boxing = true
CoD.WeaponsNotInCP = registerVal3
CoD.LoginRewardCamo = true
CoD.LoginRewardTitle = "MENU_LOGIN_REWARD_SUMMER_CAMO_TITLE"
CoD.LoginRewardDesc = "MENU_LOGIN_REWARD_SUMMER_CAMO_DESC"
CoD.LoginRewardOverlayImage = "t7_crm_motd_watermelon_camo"
CoD.LoginRewardEntitlementString = "watermelon_camo"
CoD.LoginRewardItemReference = "mtl_t7_camo_summertime_wpn"
CoD.LoginRewardToastImage = "t7_callingcard_soldier_raft"
CoD.LoginRewardItemID = 2119988000
CoD.LoginRewardSKU = 90136
CoD.RewardRedeemBtnInfoList = {}
registerVal3 = {}
registerVal3.DOUBLEXP_EVERYONE = 0
registerVal3.DOUBLEXP_PREORDER = 1
registerVal3.DOUBLEXP_GROUP_PARTY2 = 2
registerVal3.DOUBLEXP_GROUP_PARTY3 = 3
registerVal3.DOUBLEXP_GROUP_PARTY4 = 4
registerVal3.DOUBLEXP_GROUP_PARTY5 = 5
registerVal3.DOUBLEXP_GROUP_PARTY6 = 6
registerVal3.DOUBLEXP_GROUP_DLCALL = 7
registerVal3.DOUBLEXP_GROUP_DLCANY = 8
registerVal3.DOUBLEXP_GROUP_DLC0 = 9
registerVal3.DOUBLEXP_GROUP_DLC_FIRST = 9
registerVal3.DOUBLEXP_GROUP_DLCZM0 = 10
registerVal3.DOUBLEXP_GROUP_DLC1 = 11
registerVal3.DOUBLEXP_GROUP_DLC2 = 12
registerVal3.DOUBLEXP_GROUP_DLC3 = 13
registerVal3.DOUBLEXP_GROUP_DLC4 = 14
registerVal3.DOUBLEXP_GROUP_DLC5 = 15
registerVal3.DOUBLEXP_GROUP_DLCSEASONPASS = 16
registerVal3.DOUBLEXP_GROUP_DLC_LAST = 16
registerVal3.DOUBLEXP_GROUP_OWN_DLCALL = 17
registerVal3.DOUBLEXP_GROUP_OWN_DLCANY = 18
registerVal3.DOUBLEXP_GROUP_OWN_DLC0 = 19
registerVal3.DOUBLEXP_GROUP_OWN_DLC_FIRST = 19
registerVal3.DOUBLEXP_GROUP_OWN_DLCZM0 = 20
registerVal3.DOUBLEXP_GROUP_OWN_DLC1 = 21
registerVal3.DOUBLEXP_GROUP_OWN_DLC2 = 22
registerVal3.DOUBLEXP_GROUP_OWN_DLC3 = 23
registerVal3.DOUBLEXP_GROUP_OWN_DLC4 = 24
registerVal3.DOUBLEXP_GROUP_OWN_DLC5 = 25
registerVal3.DOUBLEXP_GROUP_OWN_DLCSEASONPASS = 26
registerVal3["DOUBLEXP_GROUP_OWN_DLC_LAST"] = 26
registerVal3["DOUBLEXP_GROUP_CE_NUKETOWN_2025"] = 27
registerVal3["DOUBLEXP_GROUP_CE_NUKETOWN_Z"] = 28
registerVal3["DOUBLEXP_GROUP_CE_CAMO"] = 29
registerVal3["DOUBLEXP_GROUP_PHANTOM"] = 30
registerVal3["DOUBLEXP_GROUP_ZM_DORITOS_PROMO"] = 31
registerVal3["DOUBLEXP_GROUP_COUNT"] = 32
CoD.XPGROUPS = registerVal3
local registerVal4 = {}
registerVal5 = {}
registerVal5["itemId"] = 90041
registerVal5["backgroundDescription"] = "EM_BACK_MP_bo4_preview"
registerVal6 = {}
registerVal6["itemId"] = 90043
registerVal6["backgroundDescription"] = "EM_BACK_flying_bee"
local registerVal7 = {}
registerVal7["itemId"] = 90045
registerVal7["backgroundDescription"] = "EM_BACK_soldier_raft"
registerVal4 = {registerVal5, registerVal6, registerVal7}
CoD["SpecialCallingCards"] = registerVal4
local function __FUNC_F10B_(arg0)
	local registerVal2, registerVal3, registerVal4 = pairs(CoD.RewardRedeemBtnInfoList)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		value6.isFocus = false
		if value6.redeemBtn.m_focusable and not false then
			local registerVal9 = {}
			registerVal9.name = "gain_focus"
			registerVal9.controller = controller
			value6.redeemBtn:processEvent(registerVal9)
			value6.isFocus = true
		end
	end
end

CoD["TurnOnRedeemBtnFocus"] = __FUNC_F10B_
local function __FUNC_F27A_(arg0, arg1, arg2)
	if CoD.isPS4 then
	else
		if CoD.isDurango then
		else
			if CoD.isPC then
			else
			end
		end
	end
	return nil
end

CoD["OrbisDurangoPCValue"] = __FUNC_F27A_
local function __FUNC_F349_(arg0)
	if arg0 ~= nil then
		local registerVal2 = CoD.GetKnownDLCBits()
		local registerVal1 = CoD.BitUtility.IsBitwiseAndNonZero(registerVal2, arg0)
	else
	end
	return true
end

CoD["IsKnownDLC"] = __FUNC_F349_
local function __FUNC_F41C_(arg0)
	if CoD.DLCPackFromBit[arg0] then
	end
	return (not CoD.ProductIsKnown[arg0])
end

CoD["IsHiddenDLC"] = __FUNC_F41C_
local function __FUNC_F4D5_()
	local registerVal1 = CoD.OrbisDurangoPCValue(2, 3, 4)
	CoD.ProductIsKnown = {}
	CoD.ProductBitFromId = {}
	local function __FUNC_F7F1_(arg0)
		if arg0 ~= nil and arg0 ~= "" then
		end
		return true
	end

	local registerVal4 = Engine.DvarInt(nil, "tu9_highestAvailableDLC")
	local registerVal5, registerVal6, registerVal7 = pairs(CoD.ProductFromBit)
	for index8,value9 in registerVal5, registerVal6, registerVal7 do
		local registerVal10, registerVal11, registerVal12 = pairs(value9.products)
		for index13,value14 in registerVal10, registerVal11, registerVal12 do
			CoD.ProductBitFromId[value14] = index13
			if CoD.ProductIsKnown[index13] then
				value9.known = (value9.known | index13)
			else
				local registerVal15 = __FUNC_F7F1_(Engine.TableLookup(nil, "gamedata/store/common/fpentitlement.csv", 5, value14, registerVal1))
				if registerVal1 or value14 == "dlc6" then
					if CoD.DLCIndexFromBit[index13] and CoD.DLCIndexFromBit[index13] <= registerVal4 then
						CoD.ProductIsKnown[index13] = true
						value9.known = (value9.known | index13)
					end
				end
			end
		end
	end
end

CoD["ParseKnownDLC"] = __FUNC_F4D5_
CoD["ParseKnownDLC"]()
local function __FUNC_F843_(arg0)
	local registerVal1 = Engine.GetPlaylistInfoByID(arg0)
	if registerVal1 and registerVal1.playlist then
		return registerVal1.playlist.usedDLCMask
	end
end

CoD["GetRequiredDLCBitsFromPlaylist"] = __FUNC_F843_
local function __FUNC_F910_()
	local registerVal1 = Engine.CurrentSessionMode()
	return CoD.ProductFromBit[registerVal1].known
end

CoD["GetKnownDLCBits"] = __FUNC_F910_
local function __FUNC_F9DC_(arg0, arg1)
	local registerVal2 = Engine.IsZombiesGame()
	if registerVal2 then
		local registerVal3 = LuaUtils.UpdateZMDLCBits(arg0)
		registerVal3 = LuaUtils.UpdateZMDLCBits(arg1)
	end
	if (registerVal3 & 16769540) == ((registerVal3 & 16769540) & (registerVal3 & 16769540)) then
	end
	return true
end

CoD["IsClientMissingDLC"] = __FUNC_F9DC_
local function __FUNC_FACF_(arg0)
	local registerVal1, registerVal2, registerVal3 = pairs(CoD.mapsTable)
	for index4,value5 in registerVal1, registerVal2, registerVal3 do
		if value5.unique_id == arg0 then
			return value5
		end
	end
end

CoD["GetMapDataFromMapID"] = __FUNC_FACF_
local function __FUNC_FB7F_(arg0)
	local registerVal1, registerVal2, registerVal3 = pairs(CoD.mapsTable)
	for index4,value5 in registerVal1, registerVal2, registerVal3 do
		if value5.unique_id == arg0 then
			return index4
		end
	end
end

CoD["GetMapIDFromMapUniqueID"] = __FUNC_FB7F_
local function __FUNC_FC2F_(arg0, arg1, arg2)
	if CoD.mapsTable[arg0] ~= nil and CoD.mapsTable[arg0][arg1] ~= nil then
		return CoD.mapsTable[arg0][arg1]
	end
	return arg2
end

CoD["GetMapValue"] = __FUNC_FC2F_
local function __FUNC_FCFD_(arg0, arg1, arg2)
	local registerVal3, registerVal4, registerVal5 = pairs(CoD.mapsTable)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		if value7.unique_id == arg0 then
			return value7[arg1]
		end
	end
	return arg2
end

CoD["GetMapValueFromMapId"] = __FUNC_FCFD_
local function __FUNC_FDBF_(arg0, arg1)
	local registerVal2 = Engine.StructTableLookupString(CoDShared.gametypesStructTable, "name", arg0, "name_ref")
	local registerVal3 = CoD.GetMapValue(arg1, "mapName", arg1)
	return Engine.Localize("MENU_X_ON_X", registerVal2, registerVal3)
end

CoD["GetGameModeOnMapNameString"] = __FUNC_FDBF_
local function __FUNC_FF38_(arg0)
	if arg0 == "clean" then
		local registerVal1 = Dvar.fracture_enabled:exists()
		if registerVal1 then
			registerVal1 = Dvar.fracture_enabled:get()
			registerVal1 = Dvar.fracture_enabled:get()
			registerVal1 = Dvar.fracture_enabled:get()
			if registerVal1 ~= 1 and registerVal1 ~= "1" and registerVal1 ~= true then
			end
		end
		return true
	end
	return true
end

CoD["AllowGameType"] = __FUNC_FF38_
CoD["profileKey_gametype"] = "gametype"
CoD["profileKey_map"] = "map"
CoD["profileKey_map_fr"] = "map_fr"
CoD["rankTable"] = "gamedata/tables/mp/mp_ranktable.csv"
CoD["rankIconTable"] = "gamedata/tables/mp/mp_rankicontable.csv"
CoD["paragonRankTable"] = "gamedata/tables/mp/mp_paragonranktable.csv"
CoD["attachmentTable"] = "gamedata/weapons/common/attachmentTable.csv"
CoD["backgroundsTable"] = "gamedata/emblems/backgrounds.csv"
CoD["didYouKnowTable"] = "gamedata/tables/mp/didYouKnow.csv"
CoD["fileShareTable"] = "gamedata/fileshare/fileshare_categories.csv"
CoD["musicPlayerTable"] = "gamedata/tables/common/music_player.csv"
CoD["rankIconTable_cp"] = "gamedata/tables/cp/cp_rankicontable.csv"
CoD["rankIconTable_mp"] = "gamedata/tables/mp/mp_rankicontable.csv"
CoD["rankIconTable_zm"] = "gamedata/tables/zm/zm_rankicontable.csv"
CoD["contractTable_mp"] = "gamedata/tables/mp/mp_contractTable.csv"
CoD["maxRankByMode"] = {}
registerVal4 = tonumber(Engine["TableLookup"](0, "gamedata/tables/cp/cp_ranktable.csv", 0, "maxrank", 1))
CoD["maxRankByMode"]["CP"] = registerVal4
registerVal4 = tonumber(Engine["TableLookup"](0, "gamedata/tables/mp/mp_ranktable.csv", 0, "maxrank", 1))
CoD["maxRankByMode"]["MP"] = registerVal4
registerVal4 = tonumber(Engine["TableLookup"](0, "gamedata/tables/zm/zm_ranktable.csv", 0, "maxrank", 1))
CoD["maxRankByMode"]["ZM"] = registerVal4
CoD["isSinglePlayer"] = false
local registerVal2 = Engine["GetCurrentExe"]()
if registerVal2 == "singleplayer" then
	CoD["isSinglePlayer"] = true
	CoD["protoMapsTable"] = "gamedata/tables/sp/sp_prototypeMapsTable.csv"
	CoD["gameMode"] = "SP"
end
local function __FUNC_10066_()
	if CoD.curLobbyTrack then
		Engine.StopSound(CoD.curLobbyTrack.alias)
	end
end

CoD["Shutdown"] = __FUNC_10066_
CoD["curLobbyMusic"] = ""
CoD["curLobbyTrack"] = nil
CoD["musicTracks"] = {}
CoD["musicTracks"]["queue"] = {}
registerVal4 = {}
registerVal4 = {"mp_frontend", "cp_frontend", "zm_frontend", "zm_cp_frontend", "free_run"}
CoD["musicTracks"]["allowInLobbies"] = registerVal4
local function __FUNC_1012E_()
	local registerVal1 = Engine.GetPrimaryController()
	local registerVal2 = Engine.StorageGetBuffer(registerVal1, Enum.StorageFileType.STORAGE_COMMON_SETTINGS)
	local registerVal3 = registerVal2.snd_frontendTracksState:get()
	if registerVal2 and registerVal3 == Enum.FrontendMusicTrackStates.FRONTEND_MUSIC_STATE_ON then
		registerVal3 = Engine.GetTableRowCount(CoD.musicPlayerTable)
		for index4=0, (registerVal3 - 1), 1 do
			local registerVal8 = registerVal2.snd_playMPFrontendMusicTrack[index4]:get()
			if registerVal8 == 1 then
				registerVal8 = Engine.TableLookup(nil, CoD.musicPlayerTable, Enum.MusicPlayerTableColumn.MUSIC_PLAYER_COLUMN_INDEX, index4, Enum.MusicPlayerTableColumn.MUSIC_PLAYER_COLUMN_ALIAS)
				local registerVal11 = {}
				registerVal11.alias = registerVal8
				registerVal11.loop = true
				table.insert({}, registerVal11)
			end
		end
	end
	LuaUtils.shuffle({})
	return {}
end

CoD["GetMusicTracks"] = __FUNC_1012E_
local function __FUNC_10536_(arg0)
	local registerVal2 = CoD.GetMusicTracks()
	CoD.musicTracks.queue = registerVal2
	if LUI.primaryRoot.musicTrackTimer and not arg0 then
		if CoD.curLobbyTrack then
			Engine.StopSound(CoD.curLobbyTrack.alias)
		end
		CoD.NextMenuTrack()
	end
end

CoD["SetupMusicTracks"] = __FUNC_10536_
local function __FUNC_106F4_(arg0, arg1)
	CoD.curLobbyTrack = nil
	local registerVal3 = table.remove(CoD.musicTracks.queue, 1)
	CoD.curLobbyTrack = registerVal3
	if 0 < #CoD.musicTracks.queue and CoD.curLobbyTrack.loop then
		table.insert(CoD.musicTracks.queue, CoD.curLobbyTrack)
	end
	Engine.PlaySound(CoD.curLobbyTrack.alias)
	if CoD.curLobbyTrack and not arg1 then
		if not arg1 or 1 < #CoD.musicTracks.queue then
			local registerVal2 = Engine.TableLookup(nil, CoD.musicPlayerTable, Enum.MusicPlayerTableColumn.MUSIC_PLAYER_COLUMN_ALIAS, CoD.curLobbyTrack.alias, Enum.MusicPlayerTableColumn.MUSIC_PLAYER_COLUMN_TITLE)
			if registerVal2 ~= "" then
				local registerVal5 = Engine.Localize("MENU_NOW_PLAYING")
				CoD.OverlayUtility.ShowToast("NewMusicTrack", registerVal5, registerVal2, "t7_icon_toast_musictracks", nil, nil, nil)
			end
		end
	end
	if LUI.primaryRoot then
		if CoD.curLobbyTrack then
			registerVal3 = Engine.GetSoundPlaybackTime(CoD.curLobbyTrack.alias)
		end
		if LUI.primaryRoot.musicTrackTimer then
			LUI.primaryRoot.musicTrackTimer.interval = (200 + registerVal3)
			LUI.primaryRoot.musicTrackTimer:reset()
		else
			local function __FUNC_10D41_()
				CoD.NextMenuTrack()
			end

			local registerVal4 = LUI.UITimer.newElementTimer((200 + registerVal3), false, __FUNC_10D41_)
			LUI.primaryRoot.musicTrackTimer = registerVal4
			LUI.primaryRoot:addElement(LUI.primaryRoot.musicTrackTimer)
		end
	end
end

CoD["NextMenuTrack"] = __FUNC_106F4_
local function __FUNC_10DA4_(arg0, arg1)
	if arg1 or CoD.curLobbyTrack.alias ~= arg0 then
		local registerVal5 = {}
		registerVal5.alias = arg0
		registerVal5.loop = arg1
		table.insert(CoD.musicTracks.queue, 1, registerVal5)
	else
		local registerVal4 = {}
		registerVal4.alias = arg0
		registerVal4.loop = arg1
		table.insert(CoD.musicTracks.queue, registerVal4)
	end
end

CoD["AddMusicTrack"] = __FUNC_10DA4_
local function __FUNC_10F15_()
	Engine.StopSound(CoD.curLobbyTrack.alias)
	CoD.curLobbyTrack = nil
	if CoD.curLobbyTrack and LUI.primaryRoot and LUI.primaryRoot.musicTrackTimer then
		LUI.primaryRoot.musicTrackTimer:close()
		LUI.primaryRoot.musicTrackTimer = nil
	end
end

CoD["EndCurrentTrack"] = __FUNC_10F15_
local function __FUNC_110A5_(arg0, arg1, arg2)
	if arg0 then
		if CoD.curLobbyMusic == arg0 and not arg1 then
			return 
		end
	end
	CoD.curLobbyMusic = arg0
	local registerVal3 = Engine.GetPrimaryController()
	local registerVal5 = LuaUtils.FindItemInArray(CoD.musicTracks.allowInLobbies, CoD.curLobbyMusic)
	if registerVal5 == nil then
	end
	local registerVal6 = Engine.StorageGetBuffer(registerVal3, Enum.StorageFileType.STORAGE_COMMON_SETTINGS)
	local registerVal7 = registerVal6.snd_frontendTracksState:get()
	if registerVal6 and registerVal7 == Enum.FrontendMusicTrackStates.FRONTEND_MUSIC_STATE_ON and CoD.curLobbyTrack and true and not arg1 then
		return 
	end
	if registerVal7 == Enum.FrontendMusicTrackStates.FRONTEND_MUSIC_STATE_DEFAULT or not true then
		CoD.EndCurrentTrack()
		Engine.PlayMenuMusic(CoD.curLobbyMusic)
	else
		if registerVal7 == Enum.FrontendMusicTrackStates.FRONTEND_MUSIC_STATE_ON then
			CoD.SetupMusicTracks(arg2)
			Engine.PlayMenuMusic("")
			if not arg2 then
				CoD.EndCurrentTrack()
			end
			if not CoD.curLobbyTrack then
				CoD.NextMenuTrack(arg1, (not ))
			else
				Engine.PlayMenuMusic("")
				CoD.EndCurrentTrack()
			end
		end
	end
end

CoD["PlayMenuMusic_Internal"] = __FUNC_110A5_
local function __FUNC_1158A_(arg0)
	if arg0 == nil then
		if CoD.isCampaign then
		else
			if CoD.isMultiplayer then
			else
				if CoD.isZombie then
				end
			end
		end
	end
	CoD.PlayMenuMusic_Internal("zm_frontend", false)
end

CoD["PlayFrontendMusic"] = __FUNC_1158A_
local function __FUNC_116F7_(arg0)
	local registerVal1 = LobbyData:UITargetFromId(arg0)
	CoD.PlayMenuMusic_Internal(registerVal1.menuMusic, false)
end

CoD["PlayFrontendMusicForLobby"] = __FUNC_116F7_
local function __FUNC_117CB_()
	Engine.PlayMenuMusic("")
	Engine.StopSound(CoD.curLobbyTrack.alias)
	CoD.curLobbyTrack = nil
	if CoD.curLobbyTrack and LUI.primaryRoot and LUI.primaryRoot.musicTrackTimer then
		LUI.primaryRoot.musicTrackTimer:close()
		LUI.primaryRoot.musicTrackTimer = nil
	end
end

CoD["StopFrontendMusic"] = __FUNC_117CB_
local function __FUNC_11992_(arg0)
	CoD.PlayMenuMusic_Internal(CoD.curLobbyMusic, true, arg0)
end

CoD["ResetFrontendMusic"] = __FUNC_11992_
CoD["rankTableCP"] = "gamedata/tables/cp/cp_ranktable.csv"
CoD["rankTableMP"] = "gamedata/tables/mp/mp_ranktable.csv"
CoD["rankTableZM"] = "gamedata/tables/zm/zm_ranktable.csv"
CoD["paragonRankTableMP"] = "gamedata/tables/mp/mp_paragonranktable.csv"
CoD["paragonRankTableZM"] = "gamedata/tables/zm/zm_paragonranktable.csv"
CoD["scoreInfoTableMP"] = "gamedata/tables/mp/scoreinfo.csv"
local function __FUNC_11A2C_(arg0)
	CoD.isCampaign = false
	CoD.isMultiplayer = false
	CoD.isZombie = false
	CoD.isModeSelected = false
	CoD.isSafehouse = false
	CoD.gameModeEnum = nil
	if arg0.abbreviation == nil then
		return 
	end
	local registerVal2 = Engine.GetCurrentMap()
	if registerVal2 ~= "core_frontend" then
	end
	CoD.isFrontend = true
	local registerVal1 = IsGameTypeDOA()
	if registerVal1 then
		Engine.SetDvar("ui_blocksaves", "1")
	end
	CoD.UnlockablesTable = nil
	registerVal1 = Engine.IsMultiplayerGame()
	if registerVal1 then
		CoD.isMultiplayer = true
		CoD.scoreInfoTable = CoD.scoreInfoTableMP
		CoD.rankTable = CoD.rankTableMP
		CoD.rankIconTable = CoD.rankIconTable_mp
		CoD.weaponAttributes = "gamedata/weapons/mp/mp_attributesTable.csv"
		CoD.statsMilestonePath = "gamedata/stats/mp/statsmilestones"
		CoD.statsTable = "gamedata/stats/mp/mp_statsTable.csv"
		CoD.gunLevelsTable = "gamedata/weapons/mp/mp_gunlevels.csv"
		CoD.emblemIconsTable = "gamedata/emblems/emblemIcons.csv"
		CoD.gameMode = "MP"
		CoD.profileKey_gametype = "gametype"
		CoD.profileKey_map = "map"
		CoD.isModeSelected = true
		CoD.gameModeEnum = Enum.eModes.MODE_MULTIPLAYER
	end
	registerVal1 = Engine.IsCampaignGame()
	if registerVal1 then
		CoD.isCampaign = true
		CoD.protoMapsTable = "gamedata/tables/cp/cp_prototypeMapsTable.csv"
		CoD.rankTable = CoD.rankTableCP
		CoD.rankIconTable = CoD.rankIconTable_cp
		CoD.statsMilestonePath = "gamedata/stats/cp/statsmilestones"
		CoD.scoreInfoTable = "gamedata/tables/cp/scoreInfo.csv"
		CoD.statsTable = "gamedata/stats/cp/cp_statsTable.csv"
		CoD.weaponAttributes = "gamedata/weapons/cp/cp_attributesTable.csv"
		CoD.statsMilestone = "gamedata/stats/cp/statsmilestones1.csv"
		CoD.gunLevelsTable = "gamedata/weapons/cp/cp_gunlevels.csv"
		CoD.gameMode = "CP"
		CoD.isModeSelected = true
		local registerVal3 = Engine.GetCurrentMap()
		if not registerVal3 then
			registerVal3 = Dvar.ui_mapname:get()
		end
		registerVal2 = LUI.startswith(registerVal3, "cp_sh_")
		CoD.isSafehouse = registerVal2
		CoD.profileKey_gametype = "gametype_cp"
		CoD.profileKey_map = "map_cp"
		CoD.gameModeEnum = Enum.eModes.MODE_CAMPAIGN
		if CoD.isSafehouse then
			registerVal2 = Engine.GetModelForController(arg0.controller)
			registerVal1 = Engine.CreateModel(registerVal2, "safehouse")
			registerVal3 = Engine.CreateModel(registerVal1, "inClientBunk")
			Engine.SetModelValue(registerVal3, 0)
			local registerVal4 = Engine.GetGlobalModel()
			registerVal3 = Engine.CreateModel(registerVal4, "lobbyRoot.headingKickerMode")
			Engine.SetModelValue(registerVal3, "")
			registerVal4 = Engine.GetGlobalModel()
			registerVal3 = Engine.CreateModel(registerVal4, "lobbyRoot.headingKickerText")
			Engine.SetModelValue(registerVal3, "")
		end
	end
	registerVal1 = Engine.IsZombiesGame()
	if registerVal1 then
		CoD.isZombie = true
		CoD.rankTable = CoD.rankTableZM
		CoD.paragonRankTable = CoD.paragonRankTableZM
		CoD.rankIconTable = CoD.rankIconTable_zm
		CoD.statsMilestonePath = "gamedata/stats/zm/statsmilestones"
		CoD.profileKey_gametype = "gametype_zm"
		CoD.profileKey_map = "map_zm"
		CoD.gameMode = "ZM"
		CoD.isModeSelected = true
		CoD.gameModeEnum = Enum.eModes.MODE_ZOMBIES
		CoD.gunLevelsTable = "gamedata/weapons/zm/zm_gunlevels.csv"
		CoD.emblemIconsTable = "gamedata/emblems/emblemIcons.csv"
		CoD.statsTable = "gamedata/stats/zm/zm_statsTable.csv"
	end
	registerVal2 = tonumber(Engine.TableLookup(0, CoD.rankTable, 0, "maxrank", 1))
	CoD.MAX_RANK = registerVal2
	registerVal2 = tonumber(Engine.TableLookup(0, CoD.rankIconTable, 0, "maxprestige", 1))
	CoD.MAX_PRESTIGE = registerVal2
	registerVal2 = tonumber(Engine.TableLookup(0, CoD.rankTable, 0, CoD.MAX_RANK, 7))
	CoD.MAX_RANKXP = registerVal2
	registerVal2 = tonumber(Engine.TableLookup(0, CoD.paragonRankTable, 0, "maxrank", 1))
	CoD.MAX_PARAGON_RANK = registerVal2
	registerVal2 = tonumber(Engine.TableLookup(0, CoD.paragonRankTable, 0, CoD.MAX_PARAGON_RANK, 7))
	CoD.MAX_PARAGON_RANKXP = registerVal2
	registerVal2 = tonumber(Engine.TableLookup(0, CoD.rankTable, 0, "maxrankstarterpack", 1))
	CoD.MAX_RANK_STARTER_PACK = registerVal2
end

CoD["SetupMode"] = __FUNC_11A2C_
if CoD["perController"] == nil then
	CoD["perController"] = {}
	for index2=0, 3, 1 do
		CoD["perController"][index2] = {}
	end
end
if CoD["fonts"] == nil then
	CoD["fonts"] = {}
end
local function __FUNC_12A45_(arg0, arg1)
	if not arg1 then
		local registerVal2 = Engine.CurrentSessionMode()
	end
	if registerVal2 == Enum.eModes.MODE_CAMPAIGN then
		return ("gamedata/stats/cp/statsmilestones" .. arg0 .. ".csv")
	else
		if registerVal2 == Enum.eModes.MODE_MULTIPLAYER then
			return ("gamedata/stats/mp/statsmilestones" .. arg0 .. ".csv")
		else
			if registerVal2 == Enum.eModes.MODE_ZOMBIES then
				return ("gamedata/stats/zm/statsmilestones" .. arg0 .. ".csv")
			end
		end
	end
end

CoD["getStatsMilestoneTable"] = __FUNC_12A45_
registerVal2 = Dvar["loc_language"]:"get"()
registerVal2 = Dvar["loc_language"]:"get"()
if registerVal2 == CoD.LANGUAGE_JAPANESE or registerVal2 == CoD.LANGUAGE_FULLJAPANESE then
	registerVal6 = Engine["DvarInt"](nil, "r_fontResolution")
	registerVal4 = RegisterFont(("fonts/" .. registerVal6 .. "/normalFont"))
	CoD["fonts"]["Condensed"] = registerVal4
	CoD["fonts"]["Default"] = CoD["fonts"]["Condensed"]
	CoD["fonts"]["Big"] = CoD["fonts"]["Condensed"]
	CoD["fonts"]["Morris"] = CoD["fonts"]["Condensed"]
	CoD["fonts"]["ExtraSmall"] = CoD["fonts"]["Condensed"]
	registerVal6 = Engine["DvarInt"](nil, "r_fontResolution")
	registerVal4 = RegisterFont(("fonts/" .. registerVal6 .. "/italicFont"))
	CoD["fonts"]["Italic"] = registerVal4
	CoD["fonts"]["SmallItalic"] = CoD["fonts"]["Italic"]
else
	registerVal6 = Engine["DvarInt"](nil, "r_fontResolution")
	registerVal4 = RegisterFont(("fonts/" .. registerVal6 .. "/smallFont"))
	CoD["fonts"]["Default"] = registerVal4
	registerVal6 = Engine["DvarInt"](nil, "r_fontResolution")
	registerVal4 = RegisterFont(("fonts/" .. registerVal6 .. "/normalFont"))
	CoD["fonts"]["Condensed"] = registerVal4
	registerVal6 = Engine["DvarInt"](nil, "r_fontResolution")
	registerVal4 = RegisterFont(("fonts/" .. registerVal6 .. "/italicFont"))
	CoD["fonts"]["Italic"] = registerVal4
	registerVal6 = Engine["DvarInt"](nil, "r_fontResolution")
	registerVal4 = RegisterFont(("fonts/" .. registerVal6 .. "/bigFont"))
	CoD["fonts"]["Big"] = registerVal4
	registerVal6 = Engine["DvarInt"](nil, "r_fontResolution")
	registerVal4 = RegisterFont(("fonts/" .. registerVal6 .. "/extraBigFont"))
	CoD["fonts"]["Morris"] = registerVal4
	registerVal6 = Engine["DvarInt"](nil, "r_fontResolution")
	registerVal4 = RegisterFont(("fonts/" .. registerVal6 .. "/extraSmallFont"))
	CoD["fonts"]["ExtraSmall"] = registerVal4
	registerVal6 = Engine["DvarInt"](nil, "r_fontResolution")
	registerVal4 = RegisterFont(("fonts/" .. registerVal6 .. "/smallItalicFont"))
	CoD["fonts"]["SmallItalic"] = registerVal4
end
registerVal4 = RegisterFont("fonts/distFont")
CoD["fonts"]["Dist"] = registerVal4
LUI["DefaultFont"] = CoD["fonts"]["Default"]
CoD["textSize"] = {}
registerVal2 = Dvar["loc_language"]:"get"()
if registerVal2 == CoD.LANGUAGE_RUSSIAN then
	CoD["textSize"]["ExtraSmall"] = 20
	CoD["textSize"]["SmallItalic"] = 20
	CoD["textSize"]["Default"] = 21
	CoD["textSize"]["Italic"] = 21
	CoD["textSize"]["Condensed"] = 24
	CoD["textSize"]["Big"] = 36
	CoD["textSize"]["Morris"] = 42
else
	registerVal2 = Dvar["loc_language"]:"get"()
	if registerVal2 == CoD.LANGUAGE_POLISH then
		CoD["textSize"]["ExtraSmall"] = 16
		CoD["textSize"]["SmallItalic"] = 16
		CoD["textSize"]["Default"] = 19
		CoD["textSize"]["Italic"] = 21
		CoD["textSize"]["Condensed"] = 21
		CoD["textSize"]["Big"] = 32
		CoD["textSize"]["Morris"] = 42
	else
		registerVal2 = Dvar["loc_language"]:"get"()
		registerVal2 = Dvar["loc_language"]:"get"()
		if registerVal2 == CoD.LANGUAGE_JAPANESE or registerVal2 == CoD.LANGUAGE_FULLJAPANESE then
			CoD["textSize"]["ExtraSmall"] = 15
			CoD["textSize"]["SmallItalic"] = 15
			CoD["textSize"]["Default"] = 17
			CoD["textSize"]["Italic"] = 17
			CoD["textSize"]["Condensed"] = 22
			CoD["textSize"]["Big"] = 40
			CoD["textSize"]["Morris"] = 52
		else
			CoD["textSize"]["ExtraSmall"] = 20
			CoD["textSize"]["SmallItalic"] = 20
			CoD["textSize"]["Default"] = 25
			CoD["textSize"]["Italic"] = 25
			CoD["textSize"]["Condensed"] = 30
			CoD["textSize"]["Big"] = 48
			CoD["textSize"]["Morris"] = 60
		end
	end
end
local function __FUNC_12C60_(arg0)
	local registerVal1 = LUI.ShallowCopy(CoD.textSize)
	registerVal1.SmallItalic = nil
	registerVal1.Italic = nil
	local registerVal7, registerVal8, registerVal9 = pairs(registerVal1)
	for index10,value11 in registerVal7, registerVal8, registerVal9 do
		local registerVal14 = {}
		registerVal14.name = index10
		registerVal14.size = value11
		table.insert({}, registerVal14)
	end
	local function __FUNC_12E93_(arg0, arg1)
		if arg0.size >= arg1.size then
		end
		return true
	end

	table.sort({}, __FUNC_12E93_)
	registerVal7, registerVal8, registerVal9 = ipairs({})
	for index10,value11 in registerVal7, registerVal8, registerVal9 do
		if not nil then
		end
		if arg0 <= ((value11.size + CoD.textSize[value11.name]) / 2) then
		else
		end
	end
	if value11.name then
		return CoD.fonts[value11.name]
	end
end

CoD["GetFontBasedOnSize"] = __FUNC_12C60_
CoD["buttonStrings"] = {}
CoD["buttonStrings"]["primary"] = "^BBUTTON_LUI_PRIMARY^"
CoD["buttonStrings"]["secondary"] = "^BBUTTON_LUI_SECONDARY^"
CoD["buttonStrings"]["alt1"] = "^BBUTTON_LUI_ALT1^"
CoD["buttonStrings"]["alt2"] = "^BBUTTON_LUI_ALT2^"
CoD["buttonStrings"]["select"] = "^BBUTTON_LUI_SELECT^"
CoD["buttonStrings"]["start"] = "^BBUTTON_LUI_START^"
CoD["buttonStrings"]["shoulderl"] = "^BBUTTON_LUI_SHOULDERL^"
CoD["buttonStrings"]["shoulderr"] = "^BBUTTON_LUI_SHOULDERR^"
CoD["buttonStrings"]["right_stick"] = "^BBUTTON_LUI_RIGHT_STICK^"
CoD["buttonStrings"]["left_stick_up"] = "^BBUTTON_LUI_LEFT_STICK_UP^"
CoD["buttonStrings"]["right_trigger"] = "^BBUTTON_LUI_RIGHT_TRIGGER^"
CoD["buttonStrings"]["left_trigger"] = "^BBUTTON_LUI_LEFT_TRIGGER^"
CoD["buttonStrings"]["dpad_all"] = "^BBUTTON_LUI_DPAD_ALL^"
CoD["buttonStrings"]["dpad_ud"] = "^BBUTTON_LUI_DPAD_UD^"
CoD["buttonStrings"]["dpad_lr"] = "^BBUTTON_LUI_DPAD_RL^"
CoD["buttonStrings"]["left"] = "^BBUTTON_LUI_DPAD_L^"
CoD["buttonStrings"]["up"] = "^BBUTTON_LUI_DPAD_U^"
CoD["buttonStrings"]["down"] = "^BBUTTON_LUI_DPAD_D^"
CoD["buttonStrings"]["right"] = "^BBUTTON_LUI_DPAD_R^"
CoD["buttonStrings"]["emblem_move"] = "^BBUTTON_EMBLEM_MOVE^"
CoD["buttonStrings"]["emblem_scale"] = "^BBUTTON_EMBLEM_SCALE^"
CoD["buttonStrings"]["right_stick_pressed"] = "^BBUTTON_LUI_RIGHT_STICK^"
if CoD.isPC == true then
	CoD["buttonStringsShortCut"] = {}
	CoD["buttonStringsShortCut"]["primary"] = "@KEY_ENTER"
	CoD["buttonStringsShortCut"]["secondary"] = "@KEY_ESC_SHORT"
	CoD["buttonStringsShortCut"]["alt1"] = "unnasigned_alt1"
	CoD["buttonStringsShortCut"]["alt2"] = "unnasigned_alt2"
	CoD["buttonStringsShortCut"]["select"] = "@KEY_TAB"
	CoD["buttonStringsShortCut"]["start"] = "unnasigned_start"
	CoD["buttonStringsShortCut"]["shoulderl"] = "^BBUTTON_CYCLE_LEFT^"
	CoD["buttonStringsShortCut"]["shoulderr"] = "^BBUTTON_CYCLE_RIGHT^"
	CoD["buttonStringsShortCut"]["right_stick"] = "+lookstick"
	CoD["buttonStringsShortCut"]["left_stick_up"] = "unnasigned_lsu"
	CoD["buttonStringsShortCut"]["right_trigger"] = "unnasigned_rt"
	CoD["buttonStringsShortCut"]["left_trigger"] = "unnasigned_lt"
	CoD["buttonStringsShortCut"]["dpad_all"] = "@KEY_ARROWS"
	CoD["buttonStringsShortCut"]["dpad_ud"] = "@KEY_UP_DOWN_ARROWS"
	CoD["buttonStringsShortCut"]["dpad_lr"] = "@KEY_LEFT_RIGHT_ARROWS"
	CoD["buttonStringsShortCut"]["left"] = "@KEY_LEFTARROW"
	CoD["buttonStringsShortCut"]["up"] = "@KEY_UPARROW"
	CoD["buttonStringsShortCut"]["down"] = "@KEY_DOWNARROW"
	CoD["buttonStringsShortCut"]["actiondown"] = "+actionslot 2"
	CoD["buttonStringsShortCut"]["actionup"] = "+actionslot 1"
	CoD["buttonStringsShortCut"]["actionleft"] = "+actionslot 3"
	CoD["buttonStringsShortCut"]["actionright"] = "+actionslot 4"
	CoD["buttonStringsShortCut"]["mouse"] = "^BBUTTON_MOUSE_CLICK^"
	CoD["buttonStringsShortCut"]["mouse1"] = "^BBUTTON_MOUSE_LEFT^"
	CoD["buttonStringsShortCut"]["mouse2"] = "^BBUTTON_MOUSE_RIGHT^"
	CoD["buttonStringsShortCut"]["mouse3"] = "^BBUTTON_MOUSE_MIDDLE^"
	CoD["buttonStringsShortCut"]["mouse_edit"] = "^BBUTTON_MOUSE_EDIT^"
	CoD["buttonStringsShortCut"]["wheelup"] = "^BMOUSE_WHEEL_UP^"
	CoD["buttonStringsShortCut"]["wheeldown"] = "^BMOUSE_WHEEL_DOWN^"
	CoD["buttonStringsShortCut"]["space"] = "@KEY_SPACE"
	CoD["buttonStringsShortCut"]["backspace"] = "@KEY_BACKSPACE"
	CoD["buttonStringsShortCut"]["emblem_move"] = "^BBUTTON_EMBLEM_MOVE^"
	CoD["buttonStringsShortCut"]["emblem_scale"] = "^BBUTTON_EMBLEM_SCALE^"
end
CoD["white"] = {}
CoD["white"]["r"] = 1
CoD["white"]["g"] = 1
CoD["white"]["b"] = 1
CoD["red"] = {}
CoD["red"]["r"] = 0.730000
CoD["red"]["g"] = 0.250000
CoD["red"]["b"] = 0.250000
CoD["brightRed"] = {}
CoD["brightRed"]["r"] = 1
CoD["brightRed"]["g"] = 0.190000
CoD["brightRed"]["b"] = 0.190000
CoD["yellow"] = {}
CoD["yellow"]["r"] = 1
CoD["yellow"]["g"] = 1
CoD["yellow"]["b"] = 0.500000
CoD["yellowGlow"] = {}
CoD["yellowGlow"]["r"] = 0.900000
CoD["yellowGlow"]["g"] = 0.690000
CoD["yellowGlow"]["b"] = 0.200000
CoD["green"] = {}
CoD["green"]["r"] = 0.420000
CoD["green"]["g"] = 0.680000
CoD["green"]["b"] = 0.460000
CoD["brightGreen"] = {}
CoD["brightGreen"]["r"] = 0.420000
CoD["brightGreen"]["g"] = 0.900000
CoD["brightGreen"]["b"] = 0.460000
CoD["blue"] = {}
CoD["blue"]["r"] = 0.350000
CoD["blue"]["g"] = 0.630000
CoD["blue"]["b"] = 0.750000
CoD["blueGlow"] = {}
CoD["blueGlow"]["r"] = 0.680000
CoD["blueGlow"]["g"] = 0.860000
CoD["blueGlow"]["b"] = 1
CoD["lightBlue"] = {}
CoD["lightBlue"]["r"] = 0.150000
CoD["lightBlue"]["g"] = 0.550000
CoD["lightBlue"]["b"] = 1
CoD["greenBlue"] = {}
CoD["greenBlue"]["r"] = 0.260000
CoD["greenBlue"]["g"] = 0.590000
CoD["greenBlue"]["b"] = 0.540000
CoD["visorBlue"] = {}
CoD["visorBlue"]["r"] = 0.630000
CoD["visorBlue"]["g"] = 0.790000
CoD["visorBlue"]["b"] = 0.780000
CoD["visorDeepBlue"] = {}
CoD["visorDeepBlue"]["r"] = 0.230000
CoD["visorDeepBlue"]["g"] = 0.370000
CoD["visorDeepBlue"]["b"] = 0.360000
CoD["visorBlue1"] = {}
CoD["visorBlue1"]["r"] = 0.403922
CoD["visorBlue1"]["g"] = 0.545098
CoD["visorBlue1"]["b"] = 0.513726
CoD["visorBlue2"] = {}
CoD["visorBlue2"]["r"] = 0.403922
CoD["visorBlue2"]["g"] = 0.545098
CoD["visorBlue2"]["b"] = 0.513726
CoD["visorBlue3"] = {}
CoD["visorBlue3"]["r"] = 0.941177
CoD["visorBlue3"]["g"] = 1
CoD["visorBlue3"]["b"] = 0.996078
CoD["visorBlue4"] = {}
CoD["visorBlue4"]["r"] = 0.909804
CoD["visorBlue4"]["g"] = 1
CoD["visorBlue4"]["b"] = 0.976471
CoD["offWhite"] = {}
CoD["offWhite"]["r"] = 1
CoD["offWhite"]["g"] = 1
CoD["offWhite"]["b"] = 1
CoD["gray"] = {}
CoD["gray"]["r"] = 0.390000
CoD["gray"]["g"] = 0.380000
CoD["gray"]["b"] = 0.360000
CoD["offGray"] = {}
CoD["offGray"]["r"] = 0.270000
CoD["offGray"]["g"] = 0.280000
CoD["offGray"]["b"] = 0.240000
CoD["black"] = {}
CoD["black"]["r"] = 0
CoD["black"]["g"] = 0
CoD["black"]["b"] = 0
CoD["orange"] = {}
CoD["orange"]["r"] = 0.960000
CoD["orange"]["g"] = 0.580000
CoD["orange"]["b"] = 0.110000
CoD["trueOrange"] = {}
CoD["trueOrange"]["r"] = 1
CoD["trueOrange"]["g"] = 0.500000
CoD["trueOrange"]["b"] = 0
CoD["BOIIOrange"] = {}
CoD["BOIIOrange"]["r"] = 1
CoD["BOIIOrange"]["g"] = 0.400000
CoD["BOIIOrange"]["b"] = 0
CoD["playerYellow"] = {}
CoD["playerYellow"]["r"] = 0.920000
CoD["playerYellow"]["g"] = 0.800000
CoD["playerYellow"]["b"] = 0.310000
CoD["playerBlue"] = {}
CoD["playerBlue"]["r"] = 0.350000
CoD["playerBlue"]["g"] = 0.630000
CoD["playerBlue"]["b"] = 0.900000
CoD["playerRed"] = {}
CoD["playerRed"]["r"] = 0.730000
CoD["playerRed"]["g"] = 0.250000
CoD["playerRed"]["b"] = 0.250000
CoD["ConsoleColors"] = {}
registerVal2 = IsLuaCodeVersionAtLeast(18)
if registerVal2 then
	local function __FUNC_12EF6_(arg0)
		CoD.ConsoleColors[arg0.controller] = arg0.colors
	end

	CoD["UpdateConsoleColors"] = __FUNC_12EF6_
else
	registerVal3 = Engine["GetMaxControllerCount"]()
	for index2=0, (registerVal3 - 1), 1 do
		registerVal7 = {}
		local registerVal8 = {}
		registerVal8["r"] = 0
		registerVal8["g"] = 0
		registerVal8["b"] = 0
		registerVal8["a"] = 1
		local registerVal9 = {}
		registerVal9["r"] = 1
		registerVal9["g"] = 0.200000
		registerVal9["b"] = 0.200000
		registerVal9["a"] = 1
		local registerVal10 = {}
		registerVal10["r"] = 0
		registerVal10["g"] = 1
		registerVal10["b"] = 0
		registerVal10["a"] = 1
		local registerVal11 = {}
		registerVal11["r"] = 1
		registerVal11["g"] = 1
		registerVal11["b"] = 0.500000
		registerVal11["a"] = 1
		local registerVal12 = {}
		registerVal12["r"] = 0
		registerVal12["g"] = 0
		registerVal12["b"] = 1
		registerVal12["a"] = 1
		local registerVal13 = {}
		registerVal13["r"] = 0
		registerVal13["g"] = 1
		registerVal13["b"] = 1
		registerVal13["a"] = 1
		local registerVal14 = {}
		registerVal14["r"] = 1
		registerVal14["g"] = 0.360000
		registerVal14["b"] = 1
		registerVal14["a"] = 1
		local registerVal15 = {}
		registerVal15["r"] = 1
		registerVal15["g"] = 1
		registerVal15["b"] = 1
		registerVal15["a"] = 1
		local registerVal16 = {}
		registerVal16["r"] = 0.584000
		registerVal16["g"] = 0.839000
		registerVal16["b"] = 0.867000
		registerVal16["a"] = 1
		local registerVal17 = {}
		registerVal17["r"] = 0.867000
		registerVal17["g"] = 0.302000
		registerVal17["b"] = 0.188000
		registerVal17["a"] = 1
		local registerVal18 = {}
		registerVal18["r"] = 0.584000
		registerVal18["g"] = 0.839000
		registerVal18["b"] = 0.867000
		registerVal18["a"] = 1
		local registerVal19 = {}
		registerVal19["r"] = 0.867000
		registerVal19["g"] = 0.302000
		registerVal19["b"] = 0.188000
		registerVal19["a"] = 1
		registerVal7 = {registerVal8, registerVal9, registerVal10, registerVal11, registerVal12, registerVal13, registerVal14, registerVal15, registerVal16, registerVal17, registerVal18, registerVal19}
		CoD["ConsoleColors"][index2] = registerVal7
	end
end
CoD["DefaultConsoleColorIndex"] = 8
CoD["RTSColors"] = {}
CoD["RTSColors"]["red"] = {}
CoD["RTSColors"]["red"]["r"] = 0.600000
CoD["RTSColors"]["red"]["g"] = 0
CoD["RTSColors"]["red"]["b"] = 0
CoD["RTSColors"]["blue"] = {}
CoD["RTSColors"]["blue"]["r"] = 0.230000
CoD["RTSColors"]["blue"]["g"] = 0.860000
CoD["RTSColors"]["blue"]["b"] = 0.850000
CoD["RTSColors"]["magenta"] = {}
CoD["RTSColors"]["magenta"]["r"] = 0.850000
CoD["RTSColors"]["magenta"]["g"] = 0.040000
CoD["RTSColors"]["magenta"]["b"] = 0.360000
CoD["RTSColors"]["yellow"] = {}
CoD["RTSColors"]["yellow"]["r"] = 0.800000
CoD["RTSColors"]["yellow"]["g"] = 0.740000
CoD["RTSColors"]["yellow"]["b"] = 0.210000
CoD["MenuTitleColor"] = {}
CoD["MenuTitleColor"]["r"] = 0.709804
CoD["MenuTitleColor"]["g"] = 0.756863
CoD["MenuTitleColor"]["b"] = 0.784314
if CoD["isSinglePlayer"] then
	CoD["DefaultTextColor"] = CoD["visorBlue4"]
	CoD["ButtonTextColor"] = CoD["visorBlue4"]
	CoD["DisabledTextColor"] = CoD["visorBlue1"]
	CoD["DisabledAlpha"] = 1
else
	CoD["DefaultTextColor"] = CoD["offWhite"]
	registerVal4 = {}
	registerVal4["r"] = 0.709804
	registerVal4["g"] = 0.756863
	registerVal4["b"] = 0.784314
	CoD["ButtonTextColor"] = registerVal4
	CoD["DisabledTextColor"] = CoD["offWhite"]
	CoD["DisabledAlpha"] = 0.500000
end
CoD["SCOREBOARD_SORT_DEFAULT"] = 0
CoD["SCOREBOARD_SORT_SCORE"] = 0
CoD["SCOREBOARD_SORT_ALPHABETICAL"] = 1
CoD["SCOREBOARD_SORT_CLIENTNUM"] = 2
CoD["teamColorFriendly"] = {}
registerVal8, registerVal9, registerVal10 = Dvar["g_TeamColor_MyTeam"]:"get"()
CoD["teamColorFriendly"]["b"] = registerVal10
CoD["teamColorFriendly"]["g"] = registerVal9
CoD["teamColorFriendly"]["r"] = registerVal8
CoD["teamColorEnemy"] = {}
registerVal8, registerVal9, registerVal10 = Dvar["g_TeamColor_EnemyTeam"]:"get"()
CoD["teamColorEnemy"]["b"] = registerVal10
CoD["teamColorEnemy"]["g"] = registerVal9
CoD["teamColorEnemy"]["r"] = registerVal8
CoD["teamColor"] = {}
CoD["teamColor"][Enum["team_t"]["TEAM_FREE"]] = {}
CoD["teamColor"][Enum["team_t"]["TEAM_FREE"]]["r"] = 1
CoD["teamColor"][Enum["team_t"]["TEAM_FREE"]]["g"] = 1
CoD["teamColor"][Enum["team_t"]["TEAM_FREE"]]["b"] = 1
CoD["teamColor"][Enum["team_t"]["TEAM_ALLIES"]] = {}
CoD["teamColor"][Enum["team_t"]["TEAM_AXIS"]] = {}
CoD["teamColor"][Enum["team_t"]["TEAM_NEUTRAL"]] = {}
if CoD["isZombie"] == true then
	CoD["teamColor"][Enum["team_t"]["TEAM_ALLIES"]]["r"] = ColorSet["FactionAllies"]["r"]
	CoD["teamColor"][Enum["team_t"]["TEAM_ALLIES"]]["g"] = ColorSet["FactionAllies"]["g"]
	CoD["teamColor"][Enum["team_t"]["TEAM_ALLIES"]]["b"] = ColorSet["FactionAllies"]["b"]
	CoD["teamColor"][Enum["team_t"]["TEAM_AXIS"]]["r"] = ColorSet["FactionAxis"]["r"]
	CoD["teamColor"][Enum["team_t"]["TEAM_AXIS"]]["g"] = ColorSet["FactionAxis"]["g"]
	CoD["teamColor"][Enum["team_t"]["TEAM_AXIS"]]["b"] = ColorSet["FactionAxis"]["b"]
else
	CoD["teamColor"][Enum["team_t"]["TEAM_ALLIES"]]["r"] = ColorSet["FactionAllies"]["r"]
	CoD["teamColor"][Enum["team_t"]["TEAM_ALLIES"]]["g"] = ColorSet["FactionAllies"]["g"]
	CoD["teamColor"][Enum["team_t"]["TEAM_ALLIES"]]["b"] = ColorSet["FactionAllies"]["b"]
	CoD["teamColor"][Enum["team_t"]["TEAM_AXIS"]]["r"] = ColorSet["FactionAxis"]["r"]
	CoD["teamColor"][Enum["team_t"]["TEAM_AXIS"]]["g"] = ColorSet["FactionAxis"]["g"]
	CoD["teamColor"][Enum["team_t"]["TEAM_AXIS"]]["b"] = ColorSet["FactionAxis"]["b"]
	CoD["teamColor"][Enum["team_t"]["TEAM_NEUTRAL"]]["r"] = 0.100000
	CoD["teamColor"][Enum["team_t"]["TEAM_NEUTRAL"]]["g"] = 0.500000
	CoD["teamColor"][Enum["team_t"]["TEAM_NEUTRAL"]]["b"] = 0.300000
end
CoD["teamColor"][Enum["team_t"]["TEAM_SPECTATOR"]] = {}
CoD["teamColor"][Enum["team_t"]["TEAM_SPECTATOR"]]["r"] = 0.745000
CoD["teamColor"][Enum["team_t"]["TEAM_SPECTATOR"]]["g"] = 0.745000
CoD["teamColor"][Enum["team_t"]["TEAM_SPECTATOR"]]["b"] = 0.745000
registerVal4 = string["char"](20)
CoD["GMLOC_ON"] = registerVal4
registerVal4 = string["char"](21)
CoD["GMLOC_OFF"] = registerVal4
CoD["factionColor"] = {}
CoD["factionColor"]["seals"] = {}
CoD["factionColor"]["seals"][Enum["team_t"]["TEAM_FREE"]] = CoD["teamColor"][Enum["team_t"]["TEAM_FREE"]]
CoD["factionColor"]["seals"][Enum["team_t"]["TEAM_ALLIES"]] = CoD["teamColor"][Enum["team_t"]["TEAM_ALLIES"]]
CoD["factionColor"]["seals"][Enum["team_t"]["TEAM_AXIS"]] = CoD["teamColor"][Enum["team_t"]["TEAM_AXIS"]]
CoD["factionColor"]["seals"][Enum["team_t"]["TEAM_NEUTRAL"]] = CoD["teamColor"][Enum["team_t"]["TEAM_NEUTRAL"]]
CoD["factionColor"]["seals"][Enum["team_t"]["TEAM_SPECTATOR"]] = CoD["teamColor"][Enum["team_t"]["TEAM_SPECTATOR"]]
CoD["teamName"] = {}
registerVal4 = Engine["Localize"]("MPUI_AUTOASSIGN")
CoD["teamName"][Enum["team_t"]["TEAM_FREE"]] = registerVal4
CoD["teamName"][Enum["team_t"]["TEAM_NEUTRAL"]] = "Neutral"
registerVal4 = Engine["Localize"]("MPUI_SHOUTCASTER")
CoD["teamName"][Enum["team_t"]["TEAM_SPECTATOR"]] = registerVal4
if not CoD["isMultiplayer"] then
	CoD["teamName"][Enum["team_t"]["TEAM_NEUTRAL"]] = "NEUTRAL"
	CoD["teamName"][Enum["team_t"]["TEAM_DEAD"]] = "DEAD"
end
registerVal4 = {}
registerVal4["Linear"] = 0
registerVal4["Elastic"] = 1
registerVal4["Back"] = 2
registerVal4["Bounce"] = 3
CoD["TweenType"] = registerVal4
CoD["textAlpha"] = 0.700000
CoD["textAlphaBlackDark"] = 0.700000
CoD["textAlphaBlackLight"] = 0.200000
CoD["frameSubtitleHeight"] = CoD["textSize"]["Default"]
CoD["frameSubtitleFont"] = CoD["fonts"]["Default"]
CoD["SDSafeWidth"] = 864
CoD["SDSafeHeight"] = 648
CoD["HDSafeWidth"] = 1152
CoD["HDSafeHeight"] = CoD["SDSafeHeight"]
registerVal4 = {}
registerVal4["r"] = 1
registerVal4["g"] = 1
registerVal4["b"] = 1
CoD["HUDBaseColor"] = registerVal4
CoD["HUDAlphaEmpty"] = 0.600000
CoD["HUDAlphaFull"] = 1
CoD["LEVEL_FIRST"] = "angola"
CoD["LEVEL_COOP_FIRST"] = "cp_mi_eth_prologue"
CoD["THUMBSTICK_DEFAULT"] = 0
CoD["THUMBSTICK_SOUTHPAW"] = 1
CoD["THUMBSTICK_LEGACY"] = 2
CoD["THUMBSTICK_LEGACYSOUTHPAW"] = 3
CoD["BUTTONS_DEFAULT"] = 0
CoD["BUTTONS_EXPERIMENTAL"] = 1
CoD["BUTTONS_LEFTY"] = 2
CoD["BUTTONS_NOMAD"] = 3
CoD["BUTTONS_CHARLIE"] = 4
CoD["BUTTONS_GUNSLINGER"] = 5
CoD["BUTTONS_BUMPERJUMPER"] = 6
CoD["BUTTONS_BUMPERTACTICAL"] = 7
CoD["BUTTONS_STICKMOVE"] = 8
CoD["TRIGGERS_DEFAULT"] = 0
CoD["TRIGGERS_FLIPPED"] = 1
CoD["START_GAME_CAMPAIGN"] = 0
CoD["START_GAME_MULTIPLAYER"] = 1
CoD["START_GAME_ZOMBIES"] = 2
CoD["DEMO_CONTROLLER_CONFIG_DEFAULT"] = 0
CoD["DEMO_CONTROLLER_CONFIG_DIGITAL"] = 1
CoD["DEMO_CONTROLLER_CONFIG_BADBOT"] = 2
CoD["PS3_INSTALL_NOT_PRESENT"] = 0
CoD["PS3_INSTALL_PRESENT"] = 1
CoD["PS3_INSTALL_UNAVAILABLE"] = 2
CoD["PS3_INSTALL_CORRUPT_OR_OUTDATED"] = 3
CoD["SENSITIVITY_1"] = 0.400000
CoD["SENSITIVITY_2"] = 0.600000
CoD["SENSITIVITY_3"] = 0.800000
CoD["SENSITIVITY_4"] = 1
CoD["SENSITIVITY_5"] = 1.200000
CoD["SENSITIVITY_6"] = 1.400000
CoD["SENSITIVITY_7"] = 1.600000
CoD["SENSITIVITY_8"] = 1.800000
CoD["SENSITIVITY_9"] = 2
CoD["SENSITIVITY_10"] = 2.250000
CoD["SENSITIVITY_11"] = 2.500000
CoD["SENSITIVITY_12"] = 3
CoD["SENSITIVITY_13"] = 3.500000
CoD["SENSITIVITY_14"] = 4
CoD["DIFFICULTY"] = {}
CoD["DIFFICULTY"][0] = "MENU_RECRUIT"
CoD["DIFFICULTY"][1] = "MENU_REGULAR"
CoD["DIFFICULTY"][2] = "MENU_HARDENED"
CoD["DIFFICULTY"][3] = "MENU_VETERAN"
CoD["DIFFICULTY"][4] = "MENU_HEROIC"
CoD["DIFFICULTY_DESC"] = {}
CoD["DIFFICULTY_DESC"][0] = "MENU_DIFF_RECRUIT_DESC"
CoD["DIFFICULTY_DESC"][1] = "MENU_DIFF_REGULAR_DESC"
CoD["DIFFICULTY_DESC"][2] = "MENU_DIFF_HARDENED_DESC"
CoD["DIFFICULTY_DESC"][3] = "MENU_DIFF_VETERAN_DESC"
CoD["DIFFICULTY_DESC"][4] = "MENU_DIFF_HEROIC_DESC"
CoD["DIFFICULTY_ICON"] = {}
CoD["DIFFICULTY_ICON"][0] = "playlist_sp_recr"
CoD["DIFFICULTY_ICON"][1] = "playlist_sp_reg"
CoD["DIFFICULTY_ICON"][2] = "playlist_sp_hard"
CoD["DIFFICULTY_ICON"][3] = "playlist_sp_vet"
CoD["DIFFICULTY_ICON"][4] = "playlist_sp_real"
CoD["BRIGHTNESS_1"] = 0.100000
CoD["BRIGHTNESS_2"] = 0.200000
CoD["BRIGHTNESS_3"] = 0.300000
CoD["BRIGHTNESS_4"] = 0.400000
CoD["BRIGHTNESS_5"] = 0.500000
CoD["BRIGHTNESS_6"] = 0.600000
CoD["BRIGHTNESS_7"] = 0.700000
CoD["BRIGHTNESS_8"] = 0.800000
CoD["BRIGHTNESS_9"] = 0.900000
CoD["BRIGHTNESS_10"] = 1
if CoD["isWIIU"] then
	CoD["BIND_PLAYER"] = 0
	CoD["BIND_PLAYER2"] = 1
	CoD["BIND_VEHICLE"] = 2
	CoD["BIND_TWIST"] = 3
else
	CoD["BIND_PLAYER"] = 0
	CoD["BIND_VEHICLE"] = 1
end
CoD["SESSIONMODE_OFFLINE"] = 0
CoD["SESSIONMODE_SYSTEMLINK"] = 1
CoD["SESSIONMODE_ONLINE"] = 2
CoD["GAMEMODE_PUBLIC_MATCH"] = 0
CoD["GAMEMODE_PRIVATE_MATCH"] = 1
CoD["GAMEMODE_LOCAL_SPLITSCREEN"] = 2
CoD["GAMEMODE_LEAGUE_MATCH"] = 3
CoD["GAMEMODE_FREERUN"] = 4
CoD["GAMEMODE_THEATER"] = 5
CoD["GAMEMODE_MANUAL_PLAYLIST"] = 6
CoD["GAMEMODE_RTS"] = 7
CoD["OBJECTIVESTATE_EMPTY"] = 0
CoD["OBJECTIVESTATE_ACTIVE"] = 1
CoD["OBJECTIVESTATE_INVISIBLE"] = 2
CoD["OBJECTIVESTATE_DONE"] = 3
CoD["OBJECTIVESTATE_CURRENT"] = 4
CoD["OBJECTIVESTATE_FAILED"] = 5
CoD["FRIEND_NOTJOINABLE"] = 0
CoD["FRIEND_JOINABLE"] = 1
CoD["FRIEND_AUTOJOINABLE"] = 2
CoD["FRIEND_AUTOJOINED"] = 3
CoD["MaxPlayerListRows"] = 19
registerVal4 = {}
registerVal4["friend"] = 0
registerVal4["recentPlayer"] = 1
registerVal4["party"] = 2
registerVal4["platform"] = 3
registerVal4["facebook"] = 4
registerVal4["elite"] = 5
registerVal4["gameInvites"] = 6
registerVal4["clan"] = 7
registerVal4["friendRequest"] = 8
registerVal4["leagueFriend"] = 9
registerVal4["leaderboard"] = -1
CoD["playerListType"] = registerVal4
CoD["STATS_LOCATION_NORMAL"] = 0
CoD["STATS_LOCATION_FORCE_NORMAL"] = 1
CoD["STATS_LOCATION_STABLE"] = 2
CoD["STATS_LOCATION_OTHERPLAYER"] = 3
CoD["MILESTONE_GLOBAL"] = 0
CoD["MILESTONE_WEAPON"] = 1
CoD["MILESTONE_GAMEMODE"] = 2
CoD["MILESTONE_GROUP"] = 3
CoD["MILESTONE_ATTACHMENTS"] = 4
CoD["MILESTONE_SPECIALIST"] = 5
CoD["MILESTONE_DAILY"] = 6
CoD["LB_FILTER_NONE"] = 0
CoD["LB_FILTER_FRIENDS"] = 1
CoD["LB_FILTER_LOBBY_MEMBERS"] = 2
CoD["LB_FILTER_ELITE"] = 3
CoD["LB_FILTER_FACEBOOK_FRIENDS"] = 4
CoD["REQUEST_MULTI_LB_READ_COMBAT_RECORD_DATA"] = 1
CoD["REQUEST_MULTI_LB_READ_MINI_LBS"] = 2
CoD["MaxMomentum"] = 0
CoD["SplitscreenMultiplier"] = 2
CoD["SplitscreenNotificationMultiplier"] = 1.500000
if not CoD["LeaguesData"] then
	CoD["LeaguesData"] = {}
	CoD["LeaguesData"]["CurrentTeamInfo"] = {}
	CoD["LeaguesData"]["CurrentTeamSubdivisionInfo"] = {}
	CoD["LeaguesData"]["TeamSubdivisionInfo"] = {}
	CoD["LeaguesData"]["TeamSubdivisionInfo"]["fetchStatus"] = {}
	CoD["LeaguesData"]["TeamSubdivisionInfo"]["data"] = {}
end
CoD["LeaguesData"]["LEAGUE_OUTCOME_BASE"] = 0
CoD["LeaguesData"]["LEAGUE_OUTCOME_WINNER"] = 1
CoD["LeaguesData"]["LEAGUE_OUTCOME_LOSER"] = 2
CoD["LeaguesData"]["LEAGUE_OUTCOME_PRE_LOSER"] = 3
CoD["LeaguesData"]["LEAGUE_OUTCOME_RESET"] = 4
CoD["LeaguesData"]["LEAGUE_OUTCOME_DRAW"] = 5
CoD["LeaguesData"]["LEAGUE_STAT_FLOAT_SKILL"] = 0
CoD["LeaguesData"]["LEAGUE_STAT_FLOAT_VARIANCE"] = 1
CoD["LeaguesData"]["LEAGUE_STAT_FLOAT_PLACEMENT_SKILL"] = 2
CoD["LeaguesData"]["LEAGUE_STAT_FLOAT_COUNT"] = 3
CoD["LeaguesData"]["LEAGUE_STAT_INT_RANKPOINTS"] = 0
CoD["LeaguesData"]["LEAGUE_STAT_INT_PLAYED"] = 1
CoD["LeaguesData"]["LEAGUE_STAT_INT_WINS"] = 2
CoD["LeaguesData"]["LEAGUE_STAT_INT_LOSSES"] = 3
CoD["LeaguesData"]["LEAGUE_STAT_INT_BONUS_USED"] = 4
CoD["LeaguesData"]["LEAGUE_STAT_INT_BONUS_TIME"] = 5
CoD["LeaguesData"]["LEAGUE_STAT_INT_STREAK"] = 6
CoD["LeaguesData"]["LEAGUE_STAT_INT_CAREER_WINS"] = 7
CoD["LeaguesData"]["LEAGUE_STAT_INT_COUNT"] = 8
CoD["PARTYHOST_STATE_NONE"] = 0
CoD["PARTYHOST_STATE_EDITING_GAME_OPTIONS"] = 1
CoD["PARTYHOST_STATE_MODIFYING_CAC"] = 2
CoD["PARTYHOST_STATE_MODIFYING_REWARDS"] = 3
CoD["PARTYHOST_STATE_VIEWING_PLAYERCARD"] = 4
CoD["PARTYHOST_STATE_SELECTING_PLAYLIST"] = 5
CoD["PARTYHOST_STATE_SELECTING_MAP"] = 6
CoD["PARTYHOST_STATE_SELECTING_GAMETYPE"] = 7
CoD["PARTYHOST_STATE_VIEWING_COD_TV"] = 8
CoD["PARTYHOST_STATE_COUNTDOWN_CANCELLED"] = 9
CoD["partyHostStateText"] = {}
CoD["partyHostStateText"][CoD["PARTYHOST_STATE_NONE"]] = ""
registerVal4 = Engine["Localize"]("MENU_EDITING_GAME_OPTIONS")
CoD["partyHostStateText"][CoD["PARTYHOST_STATE_EDITING_GAME_OPTIONS"]] = registerVal4
registerVal4 = Engine["Localize"]("MENU_MODIFYING_CAC")
CoD["partyHostStateText"][CoD["PARTYHOST_STATE_MODIFYING_CAC"]] = registerVal4
registerVal4 = Engine["Localize"]("MENU_MODIFYING_REWARDS")
CoD["partyHostStateText"][CoD["PARTYHOST_STATE_MODIFYING_REWARDS"]] = registerVal4
registerVal4 = Engine["Localize"]("MENU_VIEWING_PLAYERCARD")
CoD["partyHostStateText"][CoD["PARTYHOST_STATE_VIEWING_PLAYERCARD"]] = registerVal4
registerVal4 = Engine["Localize"]("MENU_VIEWING_PLAYLISTS")
CoD["partyHostStateText"][CoD["PARTYHOST_STATE_SELECTING_PLAYLIST"]] = registerVal4
registerVal4 = Engine["Localize"]("MENU_SELECTING_MAP")
CoD["partyHostStateText"][CoD["PARTYHOST_STATE_SELECTING_MAP"]] = registerVal4
registerVal4 = Engine["Localize"]("MENU_SELECTING_GAMETYPE")
CoD["partyHostStateText"][CoD["PARTYHOST_STATE_SELECTING_GAMETYPE"]] = registerVal4
registerVal4 = Engine["Localize"]("MENU_VIEWING_COD_TV")
CoD["partyHostStateText"][CoD["PARTYHOST_STATE_VIEWING_COD_TV"]] = registerVal4
registerVal4 = Engine["Localize"]("MENU_COUNTDOWN_CANCELLED")
CoD["partyHostStateText"][CoD["PARTYHOST_STATE_COUNTDOWN_CANCELLED"]] = registerVal4
CoD["SESSION_REJOIN_CANCEL_JOIN_SESSION"] = 0
CoD["SESSION_REJOIN_CHECK_FOR_SESSION"] = 1
CoD["SESSION_REJOIN_JOIN_SESSION"] = 2
CoD["FEATURE_BAN_LIVE_MP"] = 1
CoD["FEATURE_BAN_LIVE_ZOMBIE"] = 2
CoD["FEATURE_BAN_LEADERBOARD_WRITE_MP"] = 3
CoD["FEATURE_BAN_LEADERBOARD_WRITE_ZOMBIE"] = 4
CoD["FEATURE_BAN_MP_SPLIT_SCREEN"] = 5
CoD["FEATURE_BAN_EMBLEM_EDITOR"] = 6
CoD["FEATURE_BAN_PIRACY"] = 7
CoD["FEATURE_BAN_PRESTIGE"] = 8
CoD["FEATURE_BAN_LIVE_STREAMING"] = 9
CoD["FEATURE_BAN_LIVE_STREAMING_CAMERA"] = 10
CoD["FEATURE_BAN_LEAGUES_GAMEPLAY"] = 11
CoD["FEATURE_BAN_HOSTING"] = 12
CoD["FEATURE_BAN_PRESTIGE_EXTRAS"] = 13
CoD["SYSINFO_VERSION_NUMBER"] = 0
CoD["SYSINFO_CONNECTIVITY_INFO"] = 1
CoD["SYSINFO_NAT_TYPE"] = 2
CoD["SYSINFO_CUSTOMER_SUPPORT_LINK"] = 3
CoD["SYSINFO_BANDWIDTH"] = 4
CoD["SYSINFO_IP_ADDRESS"] = 5
CoD["SYSINFO_EXTERNAL_IP_ADDRESS"] = 6
CoD["SYSINFO_INTERNAL_IP_ADDRESS"] = 7
CoD["SYSINFO_GEOGRAPHICAL_REGION"] = 8
CoD["SYSINFO_Q"] = 9
CoD["SYSINFO_CONSOLE_ID"] = 10
CoD["SYSINFO_MAC_ADDRESS"] = 11
CoD["SYSINFO_NAT_TYPE_LOBBY"] = 12
CoD["SYSINFO_CONNECTION_TYPE"] = 13
CoD["RECORD_EVENT_DW_EREG_ENTRY_ERROR"] = 46
CoD["RECORD_EVENT_RATE_MATCH"] = 400
CoD["RECORD_EVENT_VOTE_MTX"] = 425
CoD["CodCaster_TeamIdentity"] = {}
CoD["EMBLEM"] = 0
CoD["BACKING"] = 1
CoD["emblem"] = {}
CoD["emblem"]["INVALID_ID"] = -1
CoD["emblem"]["MAX_COLOR_COMPONENT_VALUE"] = 255
CoD["emblem"]["MAX_GRADIENT_SLIDER_VALUE"] = 100
registerVal4 = {}
registerVal4["FULL"] = 0
registerVal4["EMPTY"] = 1
CoD["emblem"]["CLIPBOARDSTATE"] = registerVal4
registerVal4 = {}
registerVal4["REPLACE"] = 0
registerVal4["INSERT"] = 1
CoD["emblem"]["ADDDECAL"] = registerVal4
CoD["Paintshop"] = {}
CoD["Paintshop"]["ChooseWeapon"] = {}
registerVal4 = {}
registerVal4["WEAPONLIST"] = 1
registerVal4["PAINTJOBS"] = 2
CoD["Paintshop"]["ChooseWeapon"] = registerVal4
CoD["Paintshop"]["View"] = {}
registerVal4 = {}
registerVal5 = {}
registerVal5["view_name"] = "left"
registerVal5["customization_type"] = Enum["CustomizationType"]["CUSTOMIZATION_TYPE_PAINTSHOP_VIEW_LEFT"]
registerVal5["view_string_ref"] = "MENU_PAINTSHOP_VIEW_LEFT"
registerVal5["edit_side_ref"] = "MENU_PAINTSHOP_EDIT_LAYER"
registerVal6 = {}
registerVal6["view_name"] = "top"
registerVal6["customization_type"] = Enum["CustomizationType"]["CUSTOMIZATION_TYPE_PAINTSHOP_VIEW_TOP"]
registerVal6["view_string_ref"] = "MENU_PAINTSHOP_VIEW_TOP"
registerVal6["edit_side_ref"] = "MENU_PAINTSHOP_EDIT_LAYER"
registerVal7 = {}
registerVal7["view_name"] = "right"
registerVal7["customization_type"] = Enum["CustomizationType"]["CUSTOMIZATION_TYPE_PAINTSHOP_VIEW_RIGHT"]
registerVal7["view_string_ref"] = "MENU_PAINTSHOP_VIEW_RIGHT"
registerVal7["edit_side_ref"] = "MENU_PAINTSHOP_EDIT_LAYER"
registerVal4 = {registerVal5, registerVal6, registerVal7}
CoD["Paintshop"]["View"] = registerVal4
CoD["emblem"]["BlackMarketDecalCategory"] = 5
registerVal4 = {}
registerVal5 = {}
registerVal5["type"] = "ICON"
registerVal5["displayName"] = "MENU_EMBLEM_SELECTOR_ICONS_TAB"
registerVal5["category"] = 1
registerVal6 = {}
registerVal6["type"] = "PATTERNS"
registerVal6["displayName"] = "MENU_EMBLEM_SELECTOR_PATTERNS_TAB"
registerVal6["category"] = 2
registerVal7 = {}
registerVal7["type"] = "TOOLS"
registerVal7["displayName"] = "MENU_EMBLEM_SELECTOR_TOOLS_TAB"
registerVal7["category"] = 3
registerVal8 = {}
registerVal8["type"] = "TYPE"
registerVal8["displayName"] = "MENU_EMBLEM_SELECTOR_TYPE_TAB"
registerVal8["category"] = 4
registerVal9 = {}
registerVal9["type"] = "BLACKMARKET"
registerVal9["displayName"] = "MENU_BLACK_MARKET"
registerVal9["category"] = 5
registerVal4 = {registerVal5, registerVal6, registerVal7, registerVal8, registerVal9}
CoD["emblem"]["DECALTABS"] = registerVal4
CoD["emblem"]["BlackMarketEmblemCategory"] = 3
registerVal4 = {}
registerVal5 = {}
registerVal5["category"] = 1
registerVal5["type"] = "general"
registerVal5["name"] = "MENU_EMBLEM_MATERIAL_GENERAL"
registerVal6 = {}
registerVal6["category"] = 2
registerVal6["type"] = "camo"
registerVal6["name"] = "MENU_EMBLEM_MATERIAL_CAMO"
registerVal7 = {}
registerVal7["category"] = 3
registerVal7["type"] = "loot"
registerVal7["name"] = "MENU_BLACK_MARKET"
registerVal4 = {registerVal5, registerVal6, registerVal7}
CoD["emblem"]["MaterialCategory"] = registerVal4
CoD["Craft"] = {}
registerVal4 = {}
registerVal5 = {}
registerVal5["index"] = 1
registerVal5["weapon_category"] = "weapon_smg"
registerVal5["lowercaseName"] = "MPUI_SUB_MACHINE_GUNS"
registerVal5["name"] = "MPUI_WEAPON_SMG_ABBR_CAPS_WITH_S"
registerVal5["loadout_slot"] = "primary"
registerVal5["weapon_image"] = "t7_wpn_build_kit_smg"
registerVal6 = {}
registerVal6["index"] = 2
registerVal6["weapon_category"] = "weapon_assault"
registerVal6["lowercaseName"] = "MPUI_ASSAULT_RIFLES"
registerVal6["name"] = "MPUI_WEAPON_ASSAULT_CAPS"
registerVal6["loadout_slot"] = "primary"
registerVal6["weapon_image"] = "t7_wpn_build_kit_ar"
registerVal7 = {}
registerVal7["index"] = 3
registerVal7["weapon_category"] = "weapon_cqb"
registerVal7["lowercaseName"] = "MPUI_CQBS"
registerVal7["name"] = "MPUI_CQBS_CAPS"
registerVal7["loadout_slot"] = "primary"
registerVal7["weapon_image"] = "t7_wpn_build_kit_shotgun"
registerVal8 = {}
registerVal8["index"] = 4
registerVal8["weapon_category"] = "weapon_lmg"
registerVal8["lowercaseName"] = "MPUI_LIGHT_MACHINE_GUNS"
registerVal8["name"] = "MPUI_WEAPON_LMG_ABBR_CAPS_WITH_S"
registerVal8["loadout_slot"] = "primary"
registerVal8["weapon_image"] = "t7_wpn_build_kit_lmg"
registerVal9 = {}
registerVal9["index"] = 5
registerVal9["weapon_category"] = "weapon_sniper"
registerVal9["lowercaseName"] = "MPUI_SNIPER_RIFLES"
registerVal9["name"] = "MPUI_WEAPON_SNIPER_CAPS"
registerVal9["loadout_slot"] = "primary"
registerVal9["weapon_image"] = "t7_wpn_build_kit_sniper"
registerVal10 = {}
registerVal10["index"] = 6
registerVal10["weapon_category"] = "secondary"
registerVal10["lowercaseName"] = "MPUI_WEAPON_SECONDARIES"
registerVal10["name"] = "MPUI_WEAPON_SECONDARIES_CAPS"
registerVal10["loadout_slot"] = "secondary"
registerVal10["weapon_image"] = "t7_wpn_build_kit_pistol"
registerVal4 = {registerVal5, registerVal6, registerVal7, registerVal8, registerVal9, registerVal10}
CoD["Craft"]["WeaponGroupNames"] = registerVal4
registerVal4 = {}
registerVal5 = {}
registerVal5["index"] = 1
registerVal5["weapon_category"] = ""
registerVal5["disabled"] = false
registerVal5["name"] = "MENU_ALL_CAPS"
registerVal5["loadout_slot"] = ""
registerVal6 = {}
registerVal6["index"] = 2
registerVal6["weapon_category"] = "weapon_smg"
registerVal6["disabled"] = true
registerVal6["name"] = "MPUI_WEAPON_SMG_ABBR_CAPS_WITH_S"
registerVal6["loadout_slot"] = "primary"
registerVal7 = {}
registerVal7["index"] = 3
registerVal7["weapon_category"] = "weapon_assault"
registerVal7["disabled"] = true
registerVal7["name"] = "MPUI_WEAPON_ASSAULT_CAPS"
registerVal7["loadout_slot"] = "primary"
registerVal8 = {}
registerVal8["index"] = 4
registerVal8["weapon_category"] = "weapon_cqb"
registerVal8["disabled"] = true
registerVal8["name"] = "MPUI_CQBS_CAPS"
registerVal8["loadout_slot"] = "primary"
registerVal9 = {}
registerVal9["index"] = 5
registerVal9["weapon_category"] = "weapon_lmg"
registerVal9["disabled"] = true
registerVal9["name"] = "MPUI_WEAPON_LMG_ABBR_CAPS_WITH_S"
registerVal9["loadout_slot"] = "primary"
registerVal10 = {}
registerVal10["index"] = 6
registerVal10["weapon_category"] = "weapon_sniper"
registerVal10["disabled"] = true
registerVal10["name"] = "MPUI_WEAPON_SNIPER_CAPS"
registerVal10["loadout_slot"] = "primary"
registerVal11 = {}
registerVal11["index"] = 7
registerVal11["weapon_category"] = "weapon_launcher"
registerVal11["disabled"] = true
registerVal11["name"] = "MPUI_WEAPON_LAUNCHER_CAPS"
registerVal11["loadout_slot"] = "secondary"
registerVal12 = {}
registerVal12["index"] = 8
registerVal12["weapon_category"] = "weapon_knife"
registerVal12["disabled"] = true
registerVal12["name"] = "MPUI_WEAPON_KNIFE_CAPS"
registerVal12["loadout_slot"] = "secondary"
registerVal4 = {registerVal5, registerVal6, registerVal7, registerVal8, registerVal9, registerVal10, registerVal11, registerVal12}
CoD["Craft"]["PublishedPaintjobsGroupNames"] = registerVal4
registerVal4 = {}
registerVal4["NumBuffsPerPack"] = 5
registerVal4["NumPacks"] = 10
CoD["BubbleGumBuffs"] = registerVal4
CoD["StoreFeaturedCategory"] = "FEATURED"
CoD["CONTENT_DEV_MAP_INDEX"] = -1
CoD["CONTENT_ORIGINAL_MAP_INDEX"] = 0
CoD["CONTENT_DLC0_INDEX"] = 1
CoD["CONTENT_DLCZM0_INDEX"] = 2
CoD.CONTENT_DLC1_INDEX = 3
CoD.CONTENT_DLC2_INDEX = 4
CoD.CONTENT_DLC3_INDEX = 5
CoD.CONTENT_DLC4_INDEX = 6
CoD.CONTENT_DLC5_INDEX = 7
CoD.CONTENT_DLC6_INDEX = 12
CoD["CONTENT_MODS_INDEX"] = 999
CoD["DLC_CAMO_MENU_VIEWED"] = 0
CoD["DLC_BACKINGS_MENU_VIEWED"] = 1
CoD["DLC_RETICLES_MENU_VIEWED"] = 2
CoD["INGAMESTORE_MENU_VIEWED"] = 3
CoD["UI_SCREENSHOT_TYPE_SCREENSHOT"] = 0
CoD["UI_SCREENSHOT_TYPE_THUMBNAIL"] = 1
CoD["UI_SCREENSHOT_TYPE_MOTD"] = 2
CoD["UI_SCREENSHOT_TYPE_EMBLEM"] = 3
CoD["EntityType"] = {}
CoD["EntityType"]["ET_GENERAL"] = 0
CoD["EntityType"]["ET_PLAYER"] = 1
CoD["EntityType"]["ET_PLAYER_CORPSE"] = 2
CoD["EntityType"]["ET_ITEM"] = 3
CoD["EntityType"]["ET_MISSILE"] = 4
CoD["EntityType"]["ET_INVISIBLE"] = 5
CoD["EntityType"]["ET_SCRIPTMOVER"] = 6
CoD["EntityType"]["ET_SOUND_BLEND"] = 7
CoD["EntityType"]["ET_FX"] = 8
CoD["EntityType"]["ET_LOOP_FX"] = 9
CoD["EntityType"]["ET_PRIMARY_LIGHT"] = 10
CoD["EntityType"]["ET_TURRET"] = 11
CoD["EntityType"]["ET_HELICOPTER"] = 12
CoD["EntityType"]["ET_PLANE"] = 13
CoD["EntityType"]["ET_VEHICLE"] = 14
CoD["EntityType"]["ET_VEHICLE_CORPSE"] = 15
CoD["EntityType"]["ET_ACTOR"] = 16
CoD["EntityType"]["ET_ACTOR_SPAWNER"] = 17
CoD["EntityType"]["ET_ACTOR_CORPSE"] = 18
CoD["EntityType"]["ET_STREAMER_HINT"] = 19
CoD["EntityType"]["ET_ZBARRIER"] = 20
CoD["SupplyDrop"] = {}
CoD["SupplyDrop"]["SUPPLY_DROP_CRATE_STATE_NONE"] = 0
CoD["SupplyDrop"]["SUPPLY_DROP_CRATE_STATE_CAPTURE"] = 1
CoD["SupplyDrop"]["SUPPLY_DROP_CRATE_STATE_HACK"] = 2
CoD["SupplyDrop"]["SUPPLY_DROP_CRATE_STATE_DISARM"] = 3
local function __FUNC_12F94_()
	local registerVal0 = Engine.GameModeIsMode(CoD.GAMEMODE_LEAGUE_MATCH)
	if not registerVal0 then
		registerVal0 = Engine.GameModeIsMode(CoD.GAMEMODE_PRIVATE_MATCH)
	end
	return registerVal0
end

CoD["IsLeagueOrCustomMatch"] = __FUNC_12F94_
local function __FUNC_13088_()
	local registerVal0 = LUI.UIElement.new()
	registerVal0:setLeftRight(true, true, 0, 0)
	registerVal0:setTopBottom(true, true, 0, 0)
	registerVal0:setPriority(100)
	registerVal0:setRGB(0, 0, 1)
	registerVal0:setAlpha(0.500000)
	if not CoD.isPC then
		registerVal0:setupSafeAreaBoundary()
	end
	return registerVal0
end

CoD["SetupSafeAreaOverlay"] = __FUNC_13088_
local function __FUNC_13232_(arg0)
	if arg0 == nil then
		return ""
	end
	local registerVal1 = Engine.CanViewContent()
	if registerVal1 == false then
		return ""
	end
	return arg0
end

CoD["getClanTag"] = __FUNC_13232_
local function __FUNC_132C9_(arg0)
	return CoD.partyHostStateText[arg0]
end

CoD["getPartyHostStateText"] = __FUNC_132C9_
local function __FUNC_1333D_(arg0, arg1, arg2)
	if not arg2 then
		local registerVal3 = Engine.CurrentSessionMode()
	end
	if arg1 == 0 then
		return Engine.GetRankName(arg0, registerVal3)
	else
		registerVal3 = Engine.GetPrestigeCap(registerVal3)
		if arg1 == registerVal3 then
			return Engine.Localize("MENU_PRESTIGE_MASTER")
		end
	end
	return Engine.Localize("MPUI_PRESTIGE_N", arg1)
end

CoD["GetRankName"] = __FUNC_1333D_
local function __FUNC_134B7_(arg0, arg1, arg2, arg3)
	if arg0 < 0 or arg1 < 0 then
		return ""
	end
	local registerVal4 = IsGameModeParagonCapable(arg3)
	registerVal4 = Engine.GetPrestigeCap(arg3)
	if registerVal4 and arg1 == registerVal4 and arg2 ~= CoD.PrestigeUtility.INVALID_PARAGON_ICON_ID then
		return Engine.GetParagonIconById(arg2, arg3)
	end
	return Engine.GetRankIcon(arg0, arg1, arg3)
end

CoD["GetRankOrParagonIcon"] = __FUNC_134B7_
local function __FUNC_13665_(arg0)
	if arg0 == "mp" then
		return Enum.eModes.MODE_MULTIPLAYER
	else
		if arg0 == "cp" then
			return Enum.eModes.MODE_CAMPAIGN
		else
			if arg0 == "zm" then
				return Enum.eModes.MODE_ZOMBIES
			else
				return Enum.eModes.MODE_INVALID
			end
		end
	end
end

CoD["ModeStringToMode"] = __FUNC_13665_
local function __FUNC_137D3_(arg0)
	if arg0 == Enum.eModes.MODE_MULTIPLAYER then
		return "mp"
	else
		if arg0 == Enum.eModes.MODE_CAMPAIGN then
			return "cp"
		else
			if arg0 == Enum.eModes.MODE_ZOMBIES then
				return "zm"
			end
		end
	end
end

CoD["ModeToModeString"] = __FUNC_137D3_
local function __FUNC_13911_(arg0)
	if arg0 == "zm" then
		return Enum.WeaponOptionFilter.WEAPONOPTION_FILTER_ZM
	else
		if arg0 == "mp" then
			return Enum.WeaponOptionFilter.WEAPONOPTION_FILTER_CP
		else
			if arg0 == "cp" then
				return Enum.WeaponOptionFilter.WEAPONOPTION_FILTER_ZM
			else
				if arg0 == "loot" then
					return Enum.WeaponOptionFilter.WEAPONOPTION_FILTER_BM
				else
					return Enum.WeaponOptionFilter.WEAPONOPTION_FILTER_COUNT
				end
			end
		end
	end
end

CoD["WeaponOptionFilterStringToEnum"] = __FUNC_13911_
local function __FUNC_13AEB_(arg0)
	if arg0 == Enum.WeaponOptionFilter.WEAPONOPTION_FILTER_ZM then
		return "zm"
	else
		if arg0 == Enum.WeaponOptionFilter.WEAPONOPTION_FILTER_MP then
			return "mp"
		else
			if arg0 == Enum.WeaponOptionFilter.WEAPONOPTION_FILTER_CP then
				return "cp"
			else
				if arg0 == Enum.WeaponOptionFilter.WEAPONOPTION_FILTER_BM then
					return "loot"
				else
					if arg0 == Enum.WeaponOptionFilter.WEAPONOPTION_FILTER_EXTRAS then
						return "extras"
					end
				end
			end
		end
	end
end

CoD["WeaponOptionFilterToString"] = __FUNC_13AEB_
CoD["useController"] = true
registerVal2 = Engine["IsUsingCursor"]()
if registerVal2 == true then
	CoD["useController"] = false
end
CoD["useMouse"] = false
if CoD.isPC == true then
	CoD["useMouse"] = true
	CoD["useController"] = true
end
local function __FUNC_13D10_()
	local registerVal0 = Engine.SessionMode_IsOnlineGame()
	if registerVal0 then
		return true
	end
	return false
end

CoD["isOnlineGame"] = __FUNC_13D10_
local function __FUNC_13D9A_()
	local registerVal0 = CoD.isOnlineGame()
	if registerVal0 == true then
		registerVal0 = Engine.GameModeIsMode(CoD.GAMEMODE_PRIVATE_MATCH)
	else
	end
	return true
end

CoD["isRankedGame"] = __FUNC_13D9A_
local function __FUNC_13E85_()
	local registerVal0 = Engine.DvarBool(nil, "sv_running")
	return registerVal0
end

CoD["isHost"] = __FUNC_13E85_
local function __FUNC_13F06_(arg0)
	local registerVal1 = Engine.CanPauseGame()
	if registerVal1 then
		if CoD.InGameMenu.m_unpauseDisabled and CoD.InGameMenu.m_unpauseDisabled[(arg0 + 1)] ~= nil and 0 < CoD.InGameMenu.m_unpauseDisabled[(arg0 + 1)] then
			return false
		end
		registerVal1 = CoD.isRankedGame()
		local registerVal2 = CoD.isHost()
		local registerVal3 = Engine.HostMigrationWaitingForPlayers()
		local registerVal4 = Engine.DvarInt(nil, "g_gameEnded")
		if registerVal1 and registerVal2 and not registerVal3 and registerVal4 ~= 1 then
			return false
		end
	end
	registerVal1 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_ROUND_END_KILLCAM)
	if not registerVal1 then
		registerVal1 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_FINAL_KILLCAM)
	else
	end
	return true
end

CoD["canLeaveGame"] = __FUNC_13F06_
local function __FUNC_14242_()
	if CoD.isSinglePlayer then
		Engine.ExecNow(nil, "exec gamedata/configs/common/default_xboxlive_sp.cfg")
	else
		Engine.ExecNow(nil, "exec gamedata/configs/common/default_xboxlive.cfg")
	end
	Engine.GameModeResetModes()
	Engine.Exec(nil, "freedemomemory")
end

CoD["resetGameModes"] = __FUNC_14242_
local function __FUNC_143F1_()
	local registerVal0 = Engine.PrivatePartyHost()
	if not registerVal0 then
		registerVal0 = Engine.InPrivateParty()
	end
	return (not registerVal0)
end

CoD["isPartyHost"] = __FUNC_143F1_
local function __FUNC_14496_(arg0)
	local registerVal1 = Engine.InPrivateParty()
	if registerVal1 then
		registerVal1 = Engine.IsXuidPrivatePartyHost(arg0)
		if registerVal1 ~= true then
		end
	end
	return true
end

CoD["isXuidPrivatePartyHost"] = __FUNC_14496_
local function __FUNC_14552_(arg0)
	local registerVal1 = string.format("%.0f", arg0)
	local registerVal2 = string.len(registerVal1)
	for index4=registerVal2, 1, -3 do
		if (index4 - 2) < 1 then
		end
		if nil == nil then
			local registerVal9 = string.sub(registerVal1, 1, index4)
		else
			registerVal9 = string.sub(registerVal1, 1, index4)
		end
	end
	return (registerVal9 .. "," .. registerVal9)
end

CoD["separateNumberWithCommas"] = __FUNC_14552_
local function __FUNC_1469B_(arg0, arg1)
	if arg0 ~= nil and arg1 ~= nil then
		local registerVal5 = tonumber(Engine.TableLookupGetColumnValueForRow(arg0, arg1, 1))
		local registerVal6 = tonumber(Engine.TableLookupGetColumnValueForRow(arg0, (arg1 + 1), 1))
		if 0 < registerVal5 or registerVal6 == 1 then
		end
		if true == true then
			local registerVal7 = Engine.Localize(("CHALLENGE_TIER_" .. registerVal5))
		end
	end
	return registerVal7
end

CoD["GetLocalizedTierText"] = __FUNC_1469B_
local function __FUNC_14805_(arg0, arg1, arg2)
	if arg1 ~= nil and arg2 ~= nil then
		local registerVal3 = tonumber(Engine.TableLookupGetColumnValueForRow(arg1, arg2, 1))
		local registerVal4 = tonumber(Engine.TableLookupGetColumnValueForRow(arg1, (arg2 + 1), 1))
		if 0 < registerVal3 or registerVal4 == 1 then
			return true
		end
	end
	return false
end

CoD["IsTieredChallenge"] = __FUNC_14805_
local function __FUNC_14906_(arg0, arg1, arg2, arg3)
	local registerVal4 = Engine.GetItemUnlockLevel(arg1, arg3)
	local registerVal5 = CoD.GetRankName(registerVal4, 0, arg3)
	return Engine.Localize(arg2, registerVal5, (registerVal4 + 1))
end

CoD["GetUnlockRankAndLevelForItemIndex"] = __FUNC_14906_
local function __FUNC_149FA_(arg0, arg1, arg2)
	if not arg2 then
		local registerVal3 = CoD.PrestigeUtility.GetPermanentUnlockMode()
	end
	registerVal3 = Engine.HasDLCForItem(arg0, arg1, registerVal3)
	registerVal3 = Engine.GetDLCNameForItem(arg1)
	if not registerVal3 and registerVal3 then
		return Engine.Localize(("MENU_" .. registerVal3 .. "_REQUIRED_HINT"))
	end
	return CoD.GetUnlockRankAndLevelForItemIndex(arg0, arg1, "MENU_UNLOCKED_AT", registerVal3)
end

CoD["GetUnlockStringForItemIndex"] = __FUNC_149FA_
local function __FUNC_14BEE_(arg0, arg1)
	local registerVal2 = Engine.GetItemIndex(arg1)
	return CoD.GetUnlockStringForItemIndex(arg0, registerVal2)
end

CoD["GetUnlockLevelString"] = __FUNC_14BEE_
local function __FUNC_14CA8_(arg0)
	local registerVal1 = IsStarterPack(arg0)
	if registerVal1 then
		return false
	end
	registerVal1 = Engine.GetStatByName(arg0, "PLEVEL")
	local registerVal2 = Engine.GetStatByName(arg0, "RANKXP")
	local registerVal3 = tonumber(registerVal1)
	local registerVal4 = tonumber(CoD.MAX_PRESTIGE)
	registerVal3 = tonumber(registerVal2)
	if registerVal3 >= (registerVal4 - 1) or CoD.MAX_RANKXP > registerVal3 then
	end
	return true
end

CoD["PrestigeAvail"] = __FUNC_14CA8_
local function __FUNC_14E34_(arg0)
	local registerVal1 = IsStarterPack(arg0)
	if registerVal1 then
		return false
	end
	registerVal1 = tonumber(Engine.GetStatByName(arg0, "RANK"))
	local registerVal2 = tonumber(CoD.MAX_RANK)
	local registerVal3 = tonumber(Engine.GetStatByName(arg0, "PLEVEL"))
	local registerVal4 = tonumber(CoD.MAX_PRESTIGE)
	if registerVal3 >= registerVal4 or registerVal1 ~= registerVal2 then
	end
	return true
end

CoD["PrestigeNext"] = __FUNC_14E34_
local function __FUNC_14FB3_(arg0)
	local registerVal1 = tonumber(Engine.GetStatByName(arg0, "PLEVEL"))
	local registerVal2 = tonumber(CoD.MAX_PRESTIGE)
	if (registerVal2 - 1) <= registerVal1 then
	end
	return ""
end

CoD["PrestigeNextLevelText"] = __FUNC_14FB3_
local function __FUNC_150AB_(arg0)
	local registerVal1 = Engine.GetStatByName(arg0, "PLEVEL")
	local registerVal2 = tonumber(registerVal1)
	local registerVal3 = tonumber(CoD.MAX_PRESTIGE)
	if (registerVal3 - 1) > registerVal2 then
	end
	return true
end

CoD["PrestigeFinish"] = __FUNC_150AB_
local function __FUNC_1519D_(arg0)
	local registerVal1 = tonumber(Engine.GetStatByName(arg0, "RANK"))
	local registerVal2 = tonumber(CoD.MAX_RANK)
	local registerVal3 = tonumber(Engine.GetStatByName(arg0, "PLEVEL"))
	local registerVal4 = tonumber(CoD.MAX_PRESTIGE)
	local registerVal5 = IsStarterPack(arg0)
	if registerVal5 then
		registerVal5 = tonumber(CoD.MAX_RANK_STARTER_PACK)
		if registerVal1 < registerVal5 and registerVal1 >= registerVal2 or registerVal3 ~= 0 then
		end
		return true
	end
	if registerVal1 < registerVal2 or registerVal3 < registerVal4 then
		if registerVal4 <= registerVal3 then
		end
	end
	return true
end

CoD["CanRankUp"] = __FUNC_1519D_
local function __FUNC_1537B_(arg0)
	local registerVal1 = IsStarterPack(arg0)
	if registerVal1 then
		return tonumber(CoD.MAX_RANK_STARTER_PACK)
	end
	return tonumber(CoD.MAX_RANK)
end

CoD["GetMaxRankCap"] = __FUNC_1537B_
local function __FUNC_15457_(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = Engine.GetItemIndex(arg2)
	if arg1 == nil then
		local registerVal7 = Engine.IsItemLockedForAll(registerVal5)
		registerVal7 = Engine.IsItemLocked(arg1, registerVal5)
		if registerVal7 and registerVal7 then
		end
	end
	if true == true then
		arg0:lock()
		registerVal7 = CoD.GetUnlockLevelString(arg1, arg2)
		arg0.hintText = registerVal7
	else
		registerVal7 = Engine.Localize(arg3)
		arg0.hintText = registerVal7
		arg0:registerEventHandler("button_action", arg4)
	end
	arg0.itemName = arg2
end

CoD["SetupButtonLock"] = __FUNC_15457_
local function __FUNC_15657_(arg0, arg1)
	if arg0.itemName == nil then
		return false
	end
	local registerVal2 = Engine.GetItemIndex(arg0.itemName)
	if arg1 == nil then
		local registerVal4 = Engine.IsItemLockedForAll(registerVal2)
		registerVal4 = Engine.IsItemLocked(arg1, registerVal2)
		if registerVal4 and registerVal4 then
		end
	end
	return true
end

CoD["CheckButtonLock"] = __FUNC_15657_
local function __FUNC_15787_(arg0, arg1)
	if false then
		return false
	end
	local registerVal3 = Engine.IsFriendFromXUID(arg0, arg1)
	if CoD.isPC and registerVal3 ~= true then
		return false
	end
	registerVal3 = IsInTheaterMode()
	if registerVal3 then
		return false
	end
	registerVal3 = Dvar.partyPrivacyEnabled:get()
	registerVal3 = Engine.GetPartyPrivacy()
	if registerVal3 == true and registerVal3 == Enum.PartyPrivacy.PARTY_PRIVACY_CLOSED then
		return false
	end
	local registerVal4 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal4 then
	end
	registerVal4 = Engine.IsPlayerInvitable(arg0, arg1)
	local registerVal5 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal6 = Engine.GetLobbyMaxClients(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal7 = Engine.GetLobbyClientCount(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal7 >= registerVal6 then
	end
	return true
end

CoD["canInviteToGame"] = __FUNC_15787_
local function __FUNC_15B1E_(arg0, arg1)
	if false then
		return false
	end
	local registerVal3 = Engine.IsMemberInParty(arg0, arg1)
	if registerVal3 then
		return false
	end
	registerVal3 = Engine.GetPlayerJoinState(arg0, arg1)
	if registerVal3 ~= CoD.FRIEND_JOINABLE then
	end
	return true
end

CoD["canJoinSession"] = __FUNC_15B1E_
local function __FUNC_15C33_(arg0, arg1)
	return Engine.IsPlayerInTitle(arg0, arg1)
end

CoD["isInTitle"] = __FUNC_15C33_
local function __FUNC_15CA5_(arg0, arg1)
	local registerVal2 = Engine.IsPlayerJoinable(arg0, arg1)
	if registerVal2 ~= CoD.FRIEND_AUTOJOINABLE then
	end
	return true
end

CoD["canAutoJoinSession"] = __FUNC_15CA5_
local function __FUNC_15D64_(arg0, arg1)
	local registerVal2 = Engine.GetXUID(arg0)
	if registerVal2 ~= arg1 then
	end
	local registerVal3 = Engine.IsPlayerInCurrentSession(arg0, arg1)
	if true then
		return false
	end
	if not registerVal3.inCurrentSession then
		return false
	end
	return true
end

CoD["canMutePlayer"] = __FUNC_15D64_
local function __FUNC_15E65_(arg0, arg1)
	local registerVal2 = Engine.GetMutedStatus(arg0, arg1)
	if registerVal2 ~= 1 then
	end
	return true
end

CoD["isPlayerMuted"] = __FUNC_15E65_
local function __FUNC_15EED_(arg0, arg1)
	if CoD.isPC then
		return false
	end
	local registerVal2 = Engine.IsGuestByXuid(arg1)
	if registerVal2 == true then
		return false
	end
	registerVal2 = Engine.GetXUID(arg0)
	if registerVal2 ~= arg1 then
		registerVal2 = Engine.IsFriendFromXUID(arg0, arg1)
	else
	end
	return true
end

CoD["canSendFriendRequest"] = __FUNC_15EED_
local function __FUNC_1601F_(arg0)
	local registerVal2 = Engine.GetPlayersInLobby()
	if registerVal2 == nil then
		registerVal2 = Engine.LobbyIsPlayerInLobby(Enum.LobbyType.LOBBY_TYPE_GAME, arg0)
		if registerVal2 then
			return true
		end
		return false
	end
	registerVal2, registerVal3, registerVal4 = pairs(registerVal2)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		if value6.xuid == arg0 then
			return true
		end
	end
	return false
end

CoD["isPlayerInLobby"] = __FUNC_1601F_
local function __FUNC_16195_(arg0, arg1)
	local registerVal2 = Engine.IsGuestByXuid(arg1)
	if registerVal2 == true then
		return false
	end
	registerVal2 = Engine.GetXUID(arg0)
	if registerVal2 == arg1 then
		return false
	end
	registerVal2 = Engine.InLobby()
	local registerVal3 = Engine.GameHost()
	local registerVal4 = Engine.IsInGame()
	local registerVal5 = Engine.GameModeIsMode(CoD.GAMEMODE_PRIVATE_MATCH)
	registerVal5 = Engine.GameModeIsMode(CoD.GAMEMODE_THEATER)
	if registerVal5 ~= true and registerVal5 ~= true then
	end
	local registerVal6 = Engine.PrivatePartyHost()
	local registerVal7 = Engine.IsMemberInParty(arg0, arg1)
	if registerVal7 ~= true then
	end
	local registerVal8 = CoD.isPlayerInLobby(arg1)
	if registerVal4 then
		return false
	end
	if not registerVal8 then
		return false
	end
	if registerVal2 and not true then
		return false
	end
	if registerVal2 and registerVal3 and true then
		return true
	end
	if not registerVal6 then
		return false
	end
	if not true then
		return false
	end
	return true
end

CoD["canKickPlayer"] = __FUNC_16195_
local function __FUNC_1649E_(arg0, arg1, arg2)
	local registerVal3 = CoD.canInviteToGame(arg0, arg1)
	if registerVal3 then
		Engine.SendInviteByXuid(arg0, arg1, 0)
	else
		DebugPrint("^1LUI: ^2cannot send invite.")
	end
end

CoD["invitePlayer"] = __FUNC_1649E_
local function __FUNC_165AB_(arg0, arg1, arg2)
	if CoD.perController[arg0].invites == nil then
		CoD.perController[arg0].invites = {}
	end
	local registerVal4, registerVal5, registerVal6 = pairs(CoD.perController[arg0].invites)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		if value8.xuid == arg1 then
		else
		end
	end
	if value8 == nil then
		registerVal6 = {}
		registerVal6.xuid = arg1
		local registerVal7 = Engine.seconds()
		registerVal6.timestamp = registerVal7
		table.insert(CoD.perController[arg0].invites, registerVal6)
	else
		registerVal5 = Engine.seconds()
		if (value8.timestamp + 15) < registerVal5 then
			registerVal4 = Engine.seconds()
			value8.timestamp = registerVal4
		else
			return 
		end
	end
	registerVal4 = CoD.canInviteToGame(arg0, arg1)
	if registerVal4 then
		registerVal4 = {}
		registerVal4.controller = arg0
		registerVal4.xuid = arg1
		registerVal4.gamertag = arg2
		Engine.LobbyVM_CallFunc("Invite", registerVal4)
	else
		DebugPrint("^1LUI: ^2cannot send invite.")
	end
end

CoD["invitePlayerByGamertag"] = __FUNC_165AB_
local function __FUNC_168E6_(arg0, arg1)
	local registerVal2 = CoD.canJoinSession(arg0, arg1)
	if registerVal2 then
		Engine.JoinPlayerSessionByXuid(arg0, arg1)
	end
end

CoD["joinPlayer"] = __FUNC_168E6_
local function __FUNC_169A6_(arg0, arg1)
	local registerVal2 = CoD.canSendFriendRequest(arg0, arg1)
	if registerVal2 then
		if CoD.isXBOX then
			Engine.Exec(arg0, ("xaddfriend " .. arg1))
		else
			if not arg1 or CoD.isWIIU then
				Engine.Exec(arg0, ("xaddfriend " .. arg1))
			end
		end
	end
end

CoD["sendFriendRequest"] = __FUNC_169A6_
local function __FUNC_16B15_(arg0, arg1)
	Engine.Exec(arg1.controller, "disableallclients")
	Engine.Exec(arg1.controller, "setclientbeingusedandprimary")
	Engine.ExecNow(arg1.controller, "initiatedemonwareconnect")
	local registerVal2 = CoD.OverlayUtility.CreateOverlay(controller, arg0, "ConnectingToDemonware")
	registerVal2.inviteAccepted = true
	registerVal2.callingMenu = arg0
end

CoD["inviteAccepted"] = __FUNC_16B15_
local function __FUNC_16D10_(arg0, arg1, arg2, arg3)
	if not arg1 or CoD.isPC then
		local registerVal7 = tostring(arg2)
		Engine.Exec(arg0, ("xshowgamercard " .. registerVal7))
	else
		if CoD.isPS3 then
			if arg3 == CoD.playerListType.friend then
				Engine.Exec(arg0, ("xshowgamercard " .. arg2))
			else
				if arg3 == CoD.playerListType.recentPlayer then
					registerVal7 = tostring(arg2)
					Engine.Exec(arg0, ("xshowrecentplayersgamercard " .. registerVal7))
				else
					Engine.Exec(arg0, ("xshowgamercardbyname " .. arg1))
				end
			end
		end
	end
end

CoD["viewGamerCard"] = __FUNC_16D10_
local function __FUNC_16F7E_(arg0, arg1)
	if not arg1 or CoD.isPC then
		Engine.Exec(arg0, ("acceptgameinvite " .. arg1))
	end
end

CoD["acceptGameInvite"] = __FUNC_16F7E_
local function __FUNC_17060_(arg0, arg1, arg2)
	if CoD.isWIIU then
		Engine.Exec(arg0, ("acceptfriendrequest " .. arg1 .. " " .. arg2))
	end
end

CoD["acceptFriendRequest"] = __FUNC_17060_
local function __FUNC_17134_(arg0, arg1)
	local registerVal2 = Engine.GetSelectedLayerIconID(arg0, arg1)
	if registerVal2 == CoD.emblem.INVALID_ID then
		return true
	end
	return false
end

CoD["IsLayerEmpty"] = __FUNC_17134_
local function __FUNC_17211_(arg0, arg1, arg2)
	local registerVal3 = DataSources.Customization.getModel(arg0)
	local registerVal4 = Engine.CreateModel(registerVal3, arg2)
	Engine.SetModelValue(registerVal4, arg1)
end

CoD["SetCustomization"] = __FUNC_17211_
local function __FUNC_17312_(arg0, arg1)
	local registerVal2 = DataSources.Customization.getModel(arg0)
	local registerVal3 = Engine.CreateModel(registerVal2, arg1)
	return Engine.GetModelValue(registerVal3)
end

CoD["GetCustomization"] = __FUNC_17312_
local function __FUNC_17412_(arg0, arg1, arg2)
	local registerVal3 = DataSources.EmblemProperties.getModel(arg0)
	local registerVal4 = Engine.CreateModel(registerVal3, arg2)
	Engine.SetModelValue(registerVal4, arg1)
end

CoD["SetEditorProperties"] = __FUNC_17412_
local function __FUNC_17515_(arg0, arg1)
	local registerVal2 = DataSources.EmblemProperties.getModel(arg0)
	local registerVal3 = Engine.CreateModel(registerVal2, arg1)
	return Engine.GetModelValue(registerVal3)
end

CoD["GetEditorProperties"] = __FUNC_17515_
local function __FUNC_17619_(arg0)
	local registerVal1 = CoD.GetEditorProperties(arg0, "isGradientMode")
	local registerVal2 = CoD.GetEditorProperties(arg0, "colorNum")
	if registerVal2 ~= nil and registerVal1 ~= nil then
		if registerVal1 == 1 and registerVal2 == Enum.CustomizationColorNum.CUSTOMIZATION_COLOR_1 then
			return Engine.GetSelectedLayerColor1(arg0)
		end
		return Engine.GetSelectedLayerColor(arg0)
	end
	return nil
end

CoD["GetSelectedColor"] = __FUNC_17619_
local function __FUNC_177F1_(arg0)
	local registerVal1 = Engine.GetSelectedLayerColor(arg0)
	local registerVal2 = Engine.GetSelectedLayerColor1(arg0)
	CoD.SetEditorProperties(arg0, 0, "isColor0NoColor")
	CoD.SetEditorProperties(arg0, 0, "isColor1NoColor")
	if registerVal1.red == registerVal2.red and registerVal1.green == registerVal2.green and registerVal1.blue == registerVal2.blue then
		if registerVal1.alpha == 0 then
			CoD.SetEditorProperties(arg0, 1, "isColor0NoColor")
		end
		if registerVal2.alpha == 0 then
			CoD.SetEditorProperties(arg0, 1, "isColor1NoColor")
		end
	end
end

CoD["SetNoColorDataModel"] = __FUNC_177F1_
CoD["slotContainerAlpha"] = 0.035000
CoD["nullSpecialtyName"] = "PERKS_NONE"
CoD["nullKillstreakName"] = "KILLSTREAK_NULL"
CoD["ChangeClassMenuName"] = "ChooseClass_InGame"
CoD["UnlockablesTable"] = nil
CoD["WeaponListSessionMode"] = nil
local function __FUNC_17A42_(arg0, arg1, arg2, arg3)
	arg0:setModel(CoD.perController[arg1].classModel)
	if not arg2 then
	end
	if CoD.perController[arg1].weaponCategory ~= "" then
		DataSources.Unlockables.setCurrentFilterItem(CoD.perController[arg1].weaponCategory)
	end
	local function __FUNC_17BD6_()
		local registerVal0 = DataSources.Unlockables.getCurrentFilterItem()
		if not arg3 then
		end
		if not CoD.PrestigeUtility.isInPermanentUnlockMenu then
			local registerVal3 = Engine.GetModelValue(arg0:getModel(arg1, (registerVal0 .. ".itemIndex")))
		end
		if CoD.perController[arg1].CACSpecficModelValueFocusTable then
			local registerVal5 = arg0.selectionList:findItem(CoD.perController[arg1].CACSpecficModelValueFocusTable, nil, false, nil)
		else
			local registerVal7 = {}
			registerVal7.itemIndex = registerVal3
			registerVal5 = arg0.selectionList:findItem(registerVal7, nil, false, nil)
		end
		registerVal5 = {}
		registerVal5.name = "gain_focus"
		registerVal5.controller = arg1
		if registerVal5 then
			registerVal5.selectIndex = registerVal5.gridInfoTable.zeroBasedIndex
		end
		arg0.selectionList:processEvent(registerVal5)
		return true
	end

	arg0.restoreState = __FUNC_17BD6_
end

CoD["GenericCACSelectionPreLoadFunc"] = __FUNC_17A42_
local function __FUNC_17FA8_(arg0, arg1, arg2)
	if not arg2 then
		local registerVal3 = Engine.CurrentSessionMode()
	end
	local registerVal4, registerVal5, registerVal6 = pairs(arg1)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		local registerVal10, registerVal11, registerVal12 = ipairs(value8)
		for index13,value14 in registerVal10, registerVal11, registerVal12 do
			if {}[value14] == nil then
				{}[value14] = false
				local registerVal15 = CoD.SafeGetModelValue(value14, "isBMItem")
				if registerVal15 then
					registerVal15 = CoD.SafeGetModelValue(value14, "itemIndex")
					if registerVal15 then
						local registerVal17 = CoD.BlackMarketUtility.IsItemLocked(arg0, Engine.GetItemRef(registerVal15, registerVal3))
					end
					registerVal17 = Engine.CreateModel(value14, "isBMClassified")
					local registerVal18 = Engine.GetModelValue(registerVal17)
					if registerVal18 ~= registerVal17 then
						{}[value14] = true
						Engine.SetModelValue(registerVal17, registerVal17)
						registerVal18 = Engine.CreateModel(value14, "name")
						local registerVal19 = Engine.CreateModel(value14, "description")
						if registerVal17 then
							Engine.SetModelValue(registerVal18, CoD.BlackMarketUtility.ClassifiedName(false))
							Engine.SetModelValue(registerVal19, "")
						else
							Engine.SetModelValue(registerVal18, Engine.GetItemName(registerVal15, registerVal3))
							Engine.SetModelValue(registerVal19, Engine.GetItemDesc(registerVal15, registerVal3))
						end
					end
				end
				registerVal15 = CoD.SafeGetModelValue(value14, "ref")
				if registerVal15 and CoD.ContractWeaponTiers[registerVal15] then
					local registerVal16 = Engine.CreateModel(value14, "isContractClassified")
					registerVal17 = IsThermometerUnlockIndexGreaterThanorEqualTo(CoD.ContractWeaponTiers[registerVal15])
					registerVal18 = Engine.GetModelValue(registerVal16)
					if not arg1 or registerVal18 ~= (not registerVal17) then
						{}[value14] = true
						Engine.SetModelValue(registerVal16, (not registerVal17))
						registerVal18 = CoD.SafeGetModelValue(value14, "itemIndex")
						registerVal19 = Engine.CreateModel(value14, "name")
						local registerVal20 = Engine.CreateModel(value14, "description")
						if (not registerVal17) then
							Engine.SetModelValue(registerVal19, CoD.BlackMarketUtility.ClassifiedName(false))
							Engine.SetModelValue(registerVal20, Engine.Localize("MPUI_CONTRACT_ITEM_CLASSIFIED_DESC", "MENU_MELEE_WEAPON"))
						else
							Engine.SetModelValue(registerVal19, Engine.GetItemName(registerVal18, registerVal3))
							Engine.SetModelValue(registerVal20, Engine.GetItemDesc(registerVal18, registerVal3))
						end
					else
						if {}[value14] then
						end
					end
				end
			end
		end
		if true then
			local function __FUNC_1872D_(arg1, arg2)
				return CoD.UnlockablesDataSourceComparisonFunction(arg0, arg1, arg2)
			end

			table.sort(value8, __FUNC_1872D_)
		end
	end
end

CoD["UpdateUnlockableTableBMItems"] = __FUNC_17FA8_
local function __FUNC_187BA_(arg0, arg1)
	local registerVal2 = CoD.GetUnlockablesTable(arg0, arg1, Enum.eModes.MODE_MULTIPLAYER)
	CoD.UpdateUnlockableTableBMItems(arg0, registerVal2, Enum.eModes.MODE_MULTIPLAYER)
	return registerVal2
end

CoD["GetCraftWeaponListTable"] = __FUNC_187BA_
local function __FUNC_188E0_(arg0, arg1, arg2)
	local function __FUNC_1946A_(arg0)
		local registerVal1 = Engine.GetModel(arg0, "group")
		local registerVal2 = Engine.GetModel(arg0, "image")
		local registerVal3 = Engine.GetModel(arg0, "loadoutSlot")
		local registerVal4 = Engine.GetModelValue(registerVal2)
		if arg0 and registerVal1 and registerVal2 and registerVal3 and registerVal4 and registerVal4 ~= CoD.CACUtility.DefaultClassItemImage then
			local registerVal6 = Engine.GetModelValue(registerVal1)
			if registerVal6 == "weapon_grenade" then
			else
				if registerVal6 == "specialty" then
				end
			end
			local registerVal8 = Engine.CreateModel(arg0, "image_big")
			Engine.SetModelValue(registerVal8, (registerVal4 .. ""))
			local registerVal7 = Engine.GetModelValue(registerVal3)
			if registerVal7 then
				if registerVal7 == "primary" or registerVal7 == "secondary" then
				end
				local registerVal10 = Engine.CreateModel(arg0, "image")
				Engine.SetModelValue(registerVal10, (registerVal4 .. ""))
			end
		end
	end

	if not CoD.statsTable then
		CoD.statsTable = "gamedata/stats/mp/mp_statsTable.csv"
	end
	if CoD.PrestigeUtility.isInPermanentUnlockMenu then
		local registerVal6 = CoD.PrestigeUtility.GetPermanentUnlockMode()
		if registerVal6 == Enum.eModes.MODE_ZOMBIES then
			CoD.statsTable = "gamedata/stats/zm/zm_statsTable.csv"
		else
			registerVal6 = CoD.PrestigeUtility.GetPermanentUnlockMode()
			CoD.statsTable = "gamedata/stats/mp/mp_statsTable.csv"
			if registerVal6 == Enum.eModes.MODE_MULTIPLAYER and arg2 then
				if arg2 == Enum.eModes.MODE_ZOMBIES then
					CoD.statsTable = "gamedata/stats/zm/zm_statsTable.csv"
				else
					if arg2 == Enum.eModes.MODE_MULTIPLAYER then
						CoD.statsTable = "gamedata/stats/mp/mp_statsTable.csv"
					else
						CoD.statsTable = "gamedata/stats/cp/cp_statsTable.csv"
					end
				end
			end
		end
	end
	for index6=0, 255, 1 do
		local registerVal11 = CoD.CACUtility.GetIdForItemRef(index6)
		local registerVal12 = CoD.BlackMarketUtility.IsBlackMarketItem(registerVal11)
		if CoD.isCampaign and not CoD.isFrontend then
			if not registerVal12 and not CoD.ContractWeaponTiers[registerVal11] and not CoD.WeaponsNotInCP[registerVal11] then
				if arg2 ~= nil then
					CoD.WeaponListSessionMode = arg2
					local registerVal13 = Engine.GetUnlockableInfoModelByIndex(index6, ("CraftWeaponList." .. index6), arg2)
				else
					registerVal13 = CoD.PrestigeUtility.GetPermanentUnlockMode()
					CoD.WeaponListSessionMode = registerVal13
					local registerVal14 = Engine.GetUnlockableInfoModelByIndex(index6, ("Unlockables." .. index6), registerVal13)
				end
			end
		end
		registerVal14 = CoD.CACUtility.GetDLCIdForBubbleGum(index6)
		local registerVal16 = CoD.IsHiddenDLC(CoD.ProductBitFromId[registerVal14])
		registerVal16 = Engine.HasDLCContent(CoD.DLCIndexFromBit[CoD.ProductBitFromId[registerVal14]])
		if CoD.isZombie and registerVal16 and not registerVal16 then
		end
		registerVal14 = Dvar.ui_enablePromoMenu:get()
		if not registerVal14 and CoD.ContractWeaponTiers[registerVal11] then
		end
		registerVal14 = CoD.BlackMarketUtility.IsUnreleasedBlackMarketItem(registerVal11)
		if false and registerVal12 and registerVal14 then
		end
		__FUNC_1946A_(registerVal14)
		registerVal14 = Engine.GetModelValue(Engine.GetModel(registerVal14, "allocation"))
		if false and registerVal14 and 0 <= registerVal14 then
			registerVal14 = arg1(registerVal14)
			if arg0 or registerVal14 then
				if not {}.filterList then
					{}.filterList = {}
				end
				table.insert({}.filterList, registerVal14)
			end
			registerVal14 = Engine.GetModelValue(Engine.GetModel(registerVal14, "group"))
			if registerVal14 == "weapon_knuckles" or registerVal14 == "weapon_wrench" then
			end
			if "weapon_knife" then
				if not {}["weapon_knife"] then
					{}["weapon_knife"] = {}
				end
				table.insert({}["weapon_knife"], registerVal14)
			end
			local registerVal15 = Engine.GetModelValue(Engine.GetModel(registerVal14, "loadoutSlot"))
			if registerVal15 then
				if not {}[registerVal15] then
					{}[registerVal15] = {}
				end
				table.insert({}[registerVal15], registerVal14)
			end
			local registerVal17 = Engine.CreateModel(registerVal14, "itemType")
			Engine.SetModelValue(registerVal17, Enum.VoteItemType.VOTE_ITEM_TYPE_ITEM)
		end
	end
	CoD.statsTable = CoD.statsTable
	registerVal6, registerVal7, registerVal8 = pairs({})
	for index9,value10 in registerVal6, registerVal7, registerVal8 do
		local function __FUNC_19794_(arg1, arg2)
			return CoD.UnlockablesDataSourceComparisonFunction(arg0, arg1, arg2)
		end

		table.sort(value10, __FUNC_19794_)
	end
	return {}
end

CoD["GetUnlockablesTable"] = __FUNC_188E0_
CoD["CodCaster_TeamIdentity"]["ColorList"] = nil
local function __FUNC_19822_(arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "TeamIdentity.ColorList")
	registerVal3 = Engine.StructTableRowCount(CoD.codcasterTeamIdentityColorTable)
	for index4=0, (registerVal3 - 1), 1 do
		local registerVal8 = Engine.StructTableLookupNumber(CoD.codcasterTeamIdentityColorTable, "id", index4, "colorR")
		local registerVal9 = Engine.StructTableLookupNumber(CoD.codcasterTeamIdentityColorTable, "id", index4, "colorG")
		local registerVal10 = Engine.StructTableLookupNumber(CoD.codcasterTeamIdentityColorTable, "id", index4, "colorB")
		local registerVal11 = Engine.StructTableLookupNumber(CoD.codcasterTeamIdentityColorTable, "id", index4, "colorRAccent")
		local registerVal12 = Engine.StructTableLookupNumber(CoD.codcasterTeamIdentityColorTable, "id", index4, "colorGAccent")
		local registerVal13 = Engine.StructTableLookupNumber(CoD.codcasterTeamIdentityColorTable, "id", index4, "colorBAccent")
		local registerVal14 = Engine.StructTableLookupNumber(CoD.codcasterTeamIdentityColorTable, "id", index4, "colorREffect")
		local registerVal15 = Engine.StructTableLookupNumber(CoD.codcasterTeamIdentityColorTable, "id", index4, "colorGEffect")
		local registerVal16 = Engine.StructTableLookupNumber(CoD.codcasterTeamIdentityColorTable, "id", index4, "colorBEffect")
		local registerVal17 = Engine.StructTableLookupNumber(CoD.codcasterTeamIdentityColorTable, "id", index4, "colorRObituaryFont")
		local registerVal18 = Engine.StructTableLookupNumber(CoD.codcasterTeamIdentityColorTable, "id", index4, "colorGObituaryFont")
		local registerVal19 = Engine.StructTableLookupNumber(CoD.codcasterTeamIdentityColorTable, "id", index4, "colorBObituaryFont")
		local registerVal20 = Engine.CreateModel(registerVal2, ("color_" .. index4))
		local registerVal22 = Engine.CreateModel(registerVal20, "id")
		Engine.SetModelValue(registerVal22, index4)
		registerVal22 = Engine.CreateModel(registerVal20, "color")
		Engine.SetModelValue(registerVal22, string.format("%d %d %d", registerVal8, registerVal9, registerVal10))
		registerVal22 = Engine.CreateModel(registerVal20, "colorAccent")
		Engine.SetModelValue(registerVal22, string.format("%d %d %d", registerVal11, registerVal12, registerVal13))
		registerVal22 = Engine.CreateModel(registerVal20, "colorEffect")
		Engine.SetModelValue(registerVal22, string.format("%d %d %d", registerVal14, registerVal15, registerVal16))
		registerVal22 = Engine.CreateModel(registerVal20, "colorObituaryFont")
		Engine.SetModelValue(registerVal22, string.format("%d %d %d", registerVal17, registerVal18, registerVal19))
		table.insert({}, registerVal20)
	end
	return {}
end

CoD["GetCodCasterTeamColorList"] = __FUNC_19822_
local function __FUNC_19F82_(arg0, arg1, arg2)
	if not CoD.CodCaster_TeamIdentity.ColorList then
		local registerVal4 = CoD.GetCodCasterTeamColorList(arg0)
		CoD.CodCaster_TeamIdentity.ColorList = registerVal4
	end
	registerVal4 = Engine.GetModelForController(arg0)
	local registerVal3 = Engine.GetModel(registerVal4, "TeamIdentity.ColorList")
	registerVal4 = Engine.GetModel(registerVal3, ("color_" .. arg1))
	if not registerVal4 then
		return nil
	end
	local registerVal5 = Engine.GetModel(registerVal4, arg2)
	if not registerVal5 then
		return nil
	end
	return Engine.GetModelValue(registerVal5)
end

CoD["GetCodCasterTeamColorInformation"] = __FUNC_19F82_
CoD["CodCaster_TeamIdentity"]["LogoList"] = nil
local function __FUNC_1A193_(arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "TeamIdentity.LogoList")
	registerVal3 = Engine.StructTableRowCount(CoD.codcasterTeamIdentityLogoTable)
	for index4=0, (registerVal3 - 1), 1 do
		local registerVal8 = Engine.StructTableLookupString(CoD.codcasterTeamIdentityLogoTable, "id", index4, "logo_name")
		local registerVal9 = Engine.StructTableLookupString(CoD.codcasterTeamIdentityLogoTable, "id", index4, "logo_icon")
		local registerVal10 = Engine.CreateModel(registerVal2, ("logo_" .. index4))
		local registerVal12 = Engine.CreateModel(registerVal10, "id")
		Engine.SetModelValue(registerVal12, index4)
		registerVal12 = Engine.CreateModel(registerVal10, "name")
		Engine.SetModelValue(registerVal12, registerVal8)
		registerVal12 = Engine.CreateModel(registerVal10, "ref")
		Engine.SetModelValue(registerVal12, registerVal9)
		table.insert({}, registerVal10)
	end
	return {}
end

CoD["GetCodCasterTeamLogoList"] = __FUNC_1A193_
local function __FUNC_1A4DA_(arg0, arg1, arg2)
	if not CoD.CodCaster_TeamIdentity.LogoList then
		local registerVal4 = CoD.GetCodCasterTeamLogoList(arg0)
		CoD.CodCaster_TeamIdentity.LogoList = registerVal4
	end
	registerVal4 = Engine.GetModelForController(arg0)
	local registerVal3 = Engine.GetModel(registerVal4, "TeamIdentity.LogoList")
	registerVal4 = Engine.GetModel(registerVal3, ("logo_" .. arg1))
	if not registerVal4 then
		return nil
	end
	local registerVal5 = Engine.GetModel(registerVal4, arg2)
	if not registerVal5 then
		return nil
	end
	return Engine.GetModelValue(registerVal5)
end

CoD["GetCodCasterTeamLogoInformation"] = __FUNC_1A4DA_
CoD["emblem"]["ColorList"] = nil
local function __FUNC_1A6E7_(arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Emblem.EmblemColorList")
	for index6=0, ((Enum.CustomizationColorSwatch.CUSTOMIZATION_COLOR_SWATCH_ROWS * Enum.CustomizationColorSwatch.CUSTOMIZATION_COLOR_SWATCH_COLUMNS) - 1), 1 do
		local registerVal12, registerVal13, registerVal14 = Engine.GetEmblemSwatchColor((index6 / Enum.CustomizationColorSwatch.CUSTOMIZATION_COLOR_SWATCH_COLUMNS), (index6 % Enum.CustomizationColorSwatch.CUSTOMIZATION_COLOR_SWATCH_COLUMNS))
		local registerVal15 = Engine.CreateModel(registerVal2, ("color_" .. index6))
		local registerVal17 = Engine.CreateModel(registerVal15, "color")
		Engine.SetModelValue(registerVal17, string.format("%d %d %d", registerVal12, registerVal13, registerVal14))
		table.insert({}, registerVal15)
	end
	return {}
end

CoD["GetEmblemColorList"] = __FUNC_1A6E7_
CoD["GunsmithWeaponOptionsTable"] = nil
local function __FUNC_1A9E8_(arg0, arg1, arg2)
	local registerVal4 = CoD.GetCustomization(arg0, "weapon_index")
	CoD.GetWeaponOptionsTableForCategory(arg0, {}, Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_CAMO, registerVal4, 0, false)
	return {}
end

CoD["GetGunsmithWeaponOptionsTable"] = __FUNC_1A9E8_
CoD["WeaponOptionsTable"] = nil
local function __FUNC_1AB33_(arg0, arg1, arg2, arg3, arg4, arg5)
	local function __FUNC_1D623_(arg0)
		if arg0 ~= "camo_gold" and arg0 ~= "camo_diamond" and arg0 ~= "camo_darkmatter" then
		end
		return true
	end

	local function __FUNC_1D6B2_(arg0, arg1)
		local registerVal2 = IsLive()
		registerVal2 = Engine.GetModelValue(Engine.GetModel(arg1, "weaponOptionTypeName"))
		local registerVal3 = Engine.GetModelValue(Engine.GetModel(arg1, "filterMode"))
		local registerVal4 = Engine.GetModel(arg1, "entitlementString")
		local registerVal5 = Engine.GetModelValue(registerVal4)
		local registerVal6 = CoD.StoreUtility.IsCWLPackageEntitlement(registerVal5)
		registerVal6 = Engine.GetProfileVarInt(arg0, registerVal5)
		if not registerVal2 and registerVal2 and registerVal3 and registerVal2 == "camo" and registerVal3 == "extras" and registerVal5 and registerVal5 ~= "" and registerVal6 and registerVal6 == 1 then
			return true
		end
		return false
	end

	if CoD.CACUtility.EmptyItemIndex < arg3 then
		local registerVal11 = Engine.GetItemRef(arg3)
		local registerVal13 = Engine.GetNumWeaponOptionsForGroup(arg2)
		for index12=0, registerVal13, 1 do
			local registerVal16 = Engine.GetWeaponOptionGroupIndex(index12, arg2)
			if arg2 == Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_CAMO then
				local registerVal20 = Engine.TableLookup(nil, CoD.attachmentTable, Enum.attachmentTableColumn_e.ATTACHMENTTABLE_COLUMN_INDEX, registerVal16, Enum.attachmentTableColumn_e.ATTACHMENTTABLE_COLUMN_ATTACHPOINT, "camo", Enum.attachmentTableColumn_e.ATTACHMENTTABLE_COLUMN_REFERENCE)
				registerVal20 = Engine.TableLookup(nil, CoD.attachmentTable, Enum.attachmentTableColumn_e.ATTACHMENTTABLE_COLUMN_INDEX, registerVal16, Enum.attachmentTableColumn_e.ATTACHMENTTABLE_COLUMN_ATTACHPOINT, "camo", Enum.attachmentTableColumn_e.ATTACHMENTTABLE_COLUMN_WEAPONOPTION_FILTER)
				local registerVal21 = IsProgressionEnabled(arg0)
				if registerVal21 and registerVal20 == "mp" then
					if registerVal20 == "camo_darkmatter" then
						registerVal21 = CoD.getStatsMilestoneTable(1, Enum.eModes.MODE_MULTIPLAYER)
						local registerVal22 = Engine.TableFindRows(registerVal21, Enum.milestoneTableColumns_t.MILESTONE_COLUMN_UNLOCKITEM, "camo_darkmatter")
						local registerVal23, registerVal24, registerVal25 = ipairs(registerVal22)
						for index26,value27 in registerVal23, registerVal24, registerVal25 do
							local registerVal28 = tonumber(Engine.TableLookupGetColumnValueForRow(registerVal21, value27, Enum.milestoneTableColumns_t.MILESTONE_COLUMN_INDEX))
							local registerVal29 = Engine.GetChallengeCompleteForChallengeIndex(Enum.eModes.MODE_MULTIPLAYER, arg0, registerVal28)
							if not registerVal29 then
							else
							end
						end
						registerVal23 = CoD.BlackMarketUtility.IsBlackMarketItem(registerVal11)
						if not false and registerVal23 then
							registerVal23 = CoD.getStatsMilestoneTable(3, Enum.eModes.MODE_MULTIPLAYER)
							registerVal24 = tonumber(Engine.TableLookup(nil, registerVal23, Enum.milestoneTableColumns_t.MILESTONE_COLUMN_UNLOCKITEM, "camo_diamond", Enum.milestoneTableColumns_t.MILESTONE_COLUMN_INCLUDE, registerVal11, Enum.milestoneTableColumns_t.MILESTONE_COLUMN_INDEX))
							registerVal25 = Engine.GetChallengeCompleteForChallengeIndex(Enum.eModes.MODE_MULTIPLAYER, arg0, registerVal24)
							if arg1 or not registerVal25 then
								registerVal25 = CoD.getStatsMilestoneTable(5, Enum.eModes.MODE_MULTIPLAYER)
								registerVal25 = tonumber(Engine.TableLookup(nil, registerVal25, Enum.milestoneTableColumns_t.MILESTONE_COLUMN_UNLOCKITEM, "camo_diamond", Enum.milestoneTableColumns_t.MILESTONE_COLUMN_INCLUDE, registerVal11, Enum.milestoneTableColumns_t.MILESTONE_COLUMN_INDEX))
								registerVal25 = Engine.GetChallengeCompleteForChallengeIndex(Enum.eModes.MODE_MULTIPLAYER, arg0, registerVal25)
								if arg1 or not registerVal25 then
								else
									registerVal21 = __FUNC_1D623_(registerVal20)
								end
							end
						end
					end
				end
			end
			if not registerVal21 then
				registerVal20 = Engine.GetWeaponOptionsInfoModelByIndex(arg0, registerVal16, "WeaponOptions", arg3, arg4)
				registerVal21 = __FUNC_1D623_(registerVal20)
				registerVal21 = Engine.GetModel(registerVal20, "unlockProgressAndTarget")
				if registerVal20 and arg2 == Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_CAMO and registerVal21 and registerVal21 then
					Engine.SetModelValue(registerVal21, "")
				end
				registerVal21 = Engine.GetModelValue(Engine.GetModel(registerVal20, "allocation"))
				registerVal21 = Engine.GetModelValue(Engine.GetModel(registerVal20, "weaponOptionTypeName"))
				registerVal22 = Engine.GetModelValue(Engine.GetModel(registerVal20, "weaponOptionSubIndex"))
				registerVal23 = Engine.CreateModel(registerVal20, "rarityType")
				registerVal24 = Engine.CreateModel(registerVal23, "rarity")
				registerVal25 = Engine.CreateModel(registerVal23, "isBMClassified")
				local registerVal26 = Engine.CreateModel(registerVal23, "duplicateCount")
				if registerVal20 and 0 <= registerVal21 and registerVal21 then
					if not arg1[registerVal21] then
						arg1[registerVal21] = {}
					end
					table.insert(arg1[registerVal21], registerVal20)
					registerVal28 = Engine.CreateModel(registerVal20, "isChallengeClassified")
					Engine.SetModelValue(registerVal28, true)
					registerVal28 = Engine.CreateModel(registerVal20, "isPackage")
					Engine.SetModelValue(registerVal28, false)
					if registerVal22 == 0 and arg5 and arg5 == true then
						for index27=Enum.WeaponOptionFilter.WEAPONOPTION_FILTER_FIRST, (Enum.WeaponOptionFilter.WEAPONOPTION_FILTER_COUNT - 1), 1 do
							local registerVal33 = CoD.WeaponOptionFilterToString(index27)
							if not arg1[(registerVal21 .. "_" .. registerVal33)] then
								arg1[(registerVal21 .. "_" .. registerVal33)] = {}
							end
							registerVal33 = Engine.CreateModel(registerVal20, "isBMClassified")
							Engine.SetModelValue(registerVal33, false)
							table.insert(arg1[(registerVal21 .. "_" .. registerVal33)], registerVal20)
						end
					else
						if registerVal21 == "reticle" then
							registerVal28 = Engine.CurrentSessionMode()
							if registerVal28 == Enum.eModes.MODE_COUNT then
							end
							registerVal29 = Engine.GetAttachmentRefByIndex(arg4)
							local registerVal30 = Engine.TableLookup(arg0, "gamedata/weapons/common/weaponOptions.csv", 2, registerVal29, 0, registerVal22, 3)
							if registerVal30 == "" then
							end
						end
						registerVal28 = Engine.GetModelValue(Engine.GetModel(registerVal20, "filterMode"))
						if true and registerVal28 and registerVal28 ~= "" then
							registerVal30 = Engine.GetModelValue(Engine.GetModel(registerVal20, "ref"))
							local registerVal31 = CoD.WeaponOptionFilterStringToEnum(registerVal28)
							if registerVal31 == Enum.WeaponOptionFilter.WEAPONOPTION_FILTER_BM then
								if registerVal21 == "reticle" then
									if CoD.perController[arg0].customReticleAttachment then
										registerVal33 = Engine.GetModelValue(Engine.GetModel(registerVal20, "weaponOptionSubIndex"))
									else
										if CoD.perController[arg0].editingWeaponBuildKits then
											local registerVal32 = Engine.GetModelForController(arg0)
											registerVal31 = CoD.SafeGetModelValue(registerVal32, "WeaponBuildKitVariant.attachment1")
											registerVal32 = Engine.GetAttachmentRefByIndex(registerVal31)
											local registerVal34 = Engine.GetModelValue(Engine.GetModel(registerVal20, "weaponOptionSubIndex"))
											if registerVal31 and CoD.perController[arg0].gunsmithAttachmentModel then
												registerVal31 = Engine.GetModelValue(CoD.perController[arg0].gunsmithAttachmentModel)
												registerVal32 = Engine.GetAttachmentRefByIndex(registerVal31)
												registerVal34 = Engine.GetModelValue(Engine.GetModel(registerVal20, "weaponOptionSubIndex"))
											end
										end
									end
								end
								registerVal31 = CoD.BlackMarketUtility.IsItemLocked(arg0, (registerVal32 .. "_" .. registerVal34))
								if registerVal31 then
									registerVal32 = Engine.GetModel(registerVal20, "name")
									Engine.SetModelValue(registerVal32, CoD.BlackMarketUtility.ClassifiedName())
								end
								registerVal33 = Engine.CreateModel(registerVal20, "isBMClassified")
								Engine.SetModelValue(registerVal33, registerVal31)
								registerVal32 = CoD.BlackMarketUtility.GetRarityForLootItemFromName((registerVal32 .. "_" .. registerVal34))
								registerVal33 = CoD.BlackMarketUtility.GetItemQuantity(arg0, (registerVal32 .. "_" .. registerVal34))
								Engine.SetModelValue(registerVal24, registerVal32)
								Engine.SetModelValue(registerVal25, registerVal31)
								Engine.SetModelValue(registerVal26, registerVal33)
							else
								registerVal32 = CoD.BlackMarketUtility.IsLimitedBlackMarketItem(registerVal30)
								registerVal33 = Engine.CreateModel(registerVal20, "isLimitedItem")
								Engine.SetModelValue(registerVal33, true)
								registerVal32 = CoD.BlackMarketUtility.IsItemLocked(arg0, registerVal30)
								if registerVal32 and registerVal32 then
									registerVal33 = Engine.GetModel(registerVal20, "name")
									Engine.SetModelValue(registerVal33, CoD.BlackMarketUtility.ClassifiedName())
								end
								registerVal33 = Engine.CreateModel(registerVal20, "isBMClassified")
								Engine.SetModelValue(registerVal33, registerVal32)
								Engine.SetModelValue(registerVal26, 0)
							end
							if not arg1[(registerVal21 .. "_" .. registerVal28)] then
								arg1[(registerVal21 .. "_" .. registerVal28)] = {}
							end
							registerVal32 = CoD.BlackMarketUtility.IsUnreleasedBlackMarketItem((registerVal32 .. "_" .. registerVal34))
							if not registerVal32 then
								registerVal32 = CoD.BlackMarketUtility.IsHiddenLimitedBlackMarketItem(arg0, registerVal30)
								if registerVal32 then
									registerVal32 = CoD.BlackMarketUtility.IsLimitedEditionCamoBundleItem(registerVal30)
									registerVal32 = CoD.BlackMarketUtility.IsHiddenLimitedEditionCamoBundleItem(arg0, registerVal30)
									if registerVal32 and not registerVal32 then
										registerVal32 = Engine.IsWeaponOptionLockedEntitlement(arg0, arg4, registerVal16)
										if registerVal21 ~= "reticle" or registerVal32 then
											registerVal32 = Engine.IsWeaponOptionLockedEntitlement(arg0, CoD.CACUtility.ATTACHMENT_NONE, registerVal16)
											if not registerVal32 then
												registerVal32 = Engine.GetModelValue(Engine.GetModel(registerVal20, "itemIndex"))
												registerVal34 = Engine.TableLookup(arg0, CoD.attachmentTable, 0, registerVal32, 1, registerVal21, 22)
												if registerVal21 == "camo" and registerVal34 ~= nil and registerVal34 ~= "" then
													local registerVal35 = IsLive()
													if not registerVal35 then
													else
														registerVal35 = CoD.GetContractStatValuesForIndex(arg0, LuaUtils.BMContracts.specialContractIndex)
														if registerVal35 ~= nil then
															local registerVal36 = tonumber(registerVal34)
															if registerVal36 == registerVal35.index then
																local registerVal37 = Engine.Localize(registerVal35.descRef, registerVal35.targetValue)
																local registerVal39 = Engine.CreateModel(registerVal20, "unlockDescription")
																Engine.SetModelValue(registerVal39, registerVal37)
																registerVal39 = Engine.CreateModel(registerVal20, "unlockProgressAndTarget")
																Engine.SetModelValue(registerVal39, (registerVal35.progress .. " " .. registerVal35.targetValue))
															else
																registerVal36 = Engine.TableLookup(nil, CoD.contractTable_mp, 0, registerVal34, 8)
																registerVal37 = Engine.GetDStatForMode(arg0, Enum.eModes.MODE_MULTIPLAYER, "playerstatslist", registerVal36, "statvalue")
																if 0 >= registerVal37 then
																end
																if true then
																	local registerVal38 = Engine.TableLookup(nil, CoD.contractTable_mp, 0, registerVal34, 3)
																	if not registerVal38 then
																	end
																	registerVal39 = tonumber(Engine.TableLookup(nil, CoD.contractTable_mp, 0, registerVal34, 2))
																	local registerVal40 = Engine.Localize(("CONTRACT_" .. "" .. "_DESC"), registerVal39)
																	local registerVal41 = Engine.CreateModel(registerVal20, "unlockDescription")
																	Engine.SetModelValue(registerVal41, registerVal40)
																	registerVal41 = Engine.CreateModel(registerVal20, "unlockProgressAndTarget")
																	Engine.SetModelValue(registerVal41, (registerVal39 .. " " .. registerVal39))
																else
																	registerVal38 = Engine.TableLookup(nil, CoD.contractTable_mp, 0, registerVal34, 4)
																	registerVal39 = Engine.Localize("MPUI_CONTRACT_NEED_TO_ACTIVATE", Engine.Localize(("CONTRACT_" .. registerVal38)))
																	registerVal40 = Engine.CreateModel(registerVal20, "unlockDescription")
																	Engine.SetModelValue(registerVal40, registerVal39)
																	registerVal40 = Engine.CreateModel(registerVal20, "unlockProgressAndTarget")
																	Engine.SetModelValue(registerVal40, "")
																end
															end
														end
													end
												end
												table.insert(arg1[(registerVal21 .. "_" .. registerVal28)], registerVal20)
												registerVal32 = Engine.IsWeaponOptionLockedEntitlement(arg0, CoD.CACUtility.ATTACHMENT_NONE, registerVal16)
												registerVal32 = Engine.GetModel(registerVal20, "entitlementString")
												registerVal33 = Engine.GetModelValue(registerVal32)
												if false and registerVal21 == "camo" and registerVal32 and registerVal33 and registerVal33 ~= "" then
													if not {}[registerVal33] then
														{}[registerVal33] = {}
														{}[registerVal33] = ""
														{}[registerVal33] = ""
													end
													registerVal34 = Engine.GetModelValue(Engine.GetModel(registerVal20, "itemIndex"))
													registerVal35 = Engine.GetModelValue(Engine.GetModel(registerVal20, "image"))
													table.insert({}[registerVal33], registerVal34)
													if {}[registerVal33] == "" then
														registerVal37 = tostring(registerVal34)
														{}[registerVal33] = ({}[registerVal33] .. registerVal37)
														{}[registerVal33] = ({}[registerVal33] .. registerVal35)
													else
														registerVal38 = tostring(registerVal34)
														{}[registerVal33] = ({}[registerVal33] .. "," .. registerVal38)
														{}[registerVal33] = ({}[registerVal33] .. "," .. registerVal35)
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
		local function __FUNC_1D939_(arg0, arg1)
			local registerVal2, registerVal3, registerVal4 = pairs(arg0)
			for index5,value6 in registerVal2, registerVal3, registerVal4 do
				local registerVal7 = LUI.endswith(index5, arg1)
				if registerVal7 then
					return value6
				end
			end
		end

		local registerVal12 = CoD.WeaponOptionFilterToString(Enum.WeaponOptionFilter.WEAPONOPTION_FILTER_BM)
		registerVal13 = __FUNC_1D939_(arg1, registerVal12)
		if registerVal13 then
			table.sort(registerVal13, CoD.BlackMarketUtility.SortUnlocksModelWOSubIndex)
		end
		local registerVal14 = __FUNC_1D939_(arg1, CoD.WeaponOptionFilterToString(Enum.WeaponOptionFilter.WEAPONOPTION_FILTER_EXTRAS))
		local registerVal15 = InFrontend()
		registerVal15 = AreCodPointsEnabled(arg0)
		registerVal15 = {}
		registerVal15.weaponOptionType = Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_CAMO
		registerVal15.filterMode = "extras"
		registerVal15.weaponOptionTypeName = "camo"
		registerVal15.unlockSessionMode = Enum.WeaponOptionFilter.WEAPONOPTION_FILTER_MODE_COUNT
		registerVal15.isBMClassified = false
		registerVal15.isChallengeClassified = false
		local registerVal17, registerVal18, registerVal19 = ipairs(CoD.StoreUtility.CWLPackages)
		for index20,value21 in registerVal17, registerVal18, registerVal19 do
			registerVal22 = CoD.StoreUtility.IsInventoryItemVisible(arg0, value21)
			registerVal22 = CoD.StoreUtility.IsInventoryItemPurchased(arg0, value21)
			registerVal22 = CoD.StoreUtility.GetInventoryItemValueByItemName(value21, CoD.StoreUtility.InventoryItems.itemIdColumn)
			registerVal23 = CoD.StoreUtility.GetInventoryItemValueByItemName(value21, CoD.StoreUtility.InventoryItems.nameContextualColumn)
			registerVal24 = CoD.StoreUtility.GetInventoryItemValueByItemName(value21, CoD.StoreUtility.InventoryItems.imageCamoColumn)
			registerVal25 = CoD.StoreUtility.GetInventoryItemValueByItemName(value21, CoD.StoreUtility.InventoryItems.buttonLabelContextualColumn)
			local function __FUNC_1D9D2_(arg0, arg1, arg2, arg3, arg4)
				OpenBuyInventoryItemDialog(arg0, arg1, arg2)
			end

			if registerVal22 and not registerVal22 and {}[value21] then
				registerVal29 = Engine.GetModelForController(arg0)
				registerVal31 = tostring({}[value21][1])
				registerVal28 = Engine.CreateModel(registerVal29, ("WeaponOptions.camo." .. registerVal31))
				LUI.CreateModelAndInitialize(registerVal28, "name", Engine.Localize((registerVal23 .. "_SHORT")))
				LUI.CreateModelAndInitialize(registerVal28, "packageImage", registerVal24)
				LUI.CreateModelAndInitialize(registerVal28, "itemIndex", {}[value21][1])
				LUI.CreateModelAndInitialize(registerVal28, "weaponOptionSubIndex", {}[value21][1])
				LUI.CreateModelAndInitialize(registerVal28, "packageCamoIndices", {}[value21])
				LUI.CreateModelAndInitialize(registerVal28, "packageCamoImages", {}[value21])
				LUI.CreateModelAndInitialize(registerVal28, "skuId", registerVal22)
				LUI.CreateModelAndInitialize(registerVal28, "isPackage", true)
				LUI.CreateModelAndInitialize(registerVal28, "packageLabel", Engine.Localize((registerVal25 .. "_SHORT")))
				LUI.CreateModelsAndInitialize(registerVal28, registerVal15)
				if arg5 and arg5 == true then
					table.insert(registerVal14, (2 + 0), registerVal28)
				else
					table.insert(registerVal14, (1 + 0), registerVal28)
				end
			end
		end
	end

CoD["GetWeaponOptionsTableForCategory"] = __FUNC_1AB33_
local function __FUNC_1DA34_(arg0, arg1, arg2)
	local registerVal6 = Engine.GetModel(CoD.perController[arg0].classModel, (CoD.perController[arg0].weaponCategory .. ".itemIndex"))
	if registerVal6 then
		local registerVal8 = Engine.GetModelValue(registerVal6)
		CoD.GetWeaponOptionsTableForCategory(arg0, {}, Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_CAMO, registerVal8, 0, true)
	end
	local registerVal9 = Engine.GetModelForController(arg0)
	registerVal8 = Engine.GetModel(registerVal9, "WeaponOptions")
	registerVal9 = Engine.CreateModel(registerVal8, "paintjob")
	if not {}.paintjob then
		{}.paintjob = {}
	end
	local function __FUNC_1E2A8_(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
		local registerVal8 = Engine.CreateModel(arg0, arg2)
		local registerVal10 = Engine.CreateModel(registerVal8, "image")
		Engine.SetModelValue(registerVal10, arg1)
		registerVal10 = Engine.CreateModel(registerVal8, "itemIndex")
		Engine.SetModelValue(registerVal10, arg2)
		registerVal10 = Engine.CreateModel(registerVal8, "name")
		Engine.SetModelValue(registerVal10, arg3)
		registerVal10 = Engine.CreateModel(registerVal8, "ref")
		Engine.SetModelValue(registerVal10, arg4)
		registerVal10 = Engine.CreateModel(registerVal8, "weaponOptionTypeName")
		Engine.SetModelValue(registerVal10, arg5)
		registerVal10 = Engine.CreateModel(registerVal8, "weaponOptionType")
		Engine.SetModelValue(registerVal10, Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_PAINTJOB)
		registerVal10 = Engine.CreateModel(registerVal8, "weaponOptionSubIndex")
		Engine.SetModelValue(registerVal10, arg2)
		registerVal10 = Engine.CreateModel(registerVal8, "paintjobIndex")
		Engine.SetModelValue(registerVal10, arg6)
		registerVal10 = Engine.CreateModel(registerVal8, "paintjobSlot")
		Engine.SetModelValue(registerVal10, arg7)
		registerVal10 = Engine.CreateModel(registerVal8, "paintjobSlotAndIndex")
		Engine.SetModelValue(registerVal10, (arg7 .. " " .. arg6))
		local registerVal9 = Engine.CreateModel(registerVal8, "rarityType")
		LUI.CreateModelAndInitialize(registerVal9, "rarity", "")
		LUI.CreateModelAndInitialize(registerVal8, "unlockSessionMode", Enum.eModes.MODE_INVALID)
		table.insert({}[arg5], registerVal8)
	end

	if registerVal6 then
		local registerVal11 = Engine.GetModelValue(registerVal6)
		local registerVal12 = CoD.CraftUtility.Paintjobs.GetCACPaintjobList(registerVal11)
		__FUNC_1E2A8_(registerVal9, "menu_cac_none", 0, "MPUI_NONE", "paintshop_0", "paintjob", Enum.CustomizationPaintjobInvalidID.CUSTOMIZATION_INVALID_PAINTJOB_INDEX, Enum.CustomizationPaintjobInvalidID.CUSTOMIZATION_INVALID_PAINTJOB_SLOT)
		for index13=1, #registerVal9, 1 do
			local registerVal21 = Engine.MarkAsLocalize(registerVal12[index13].paintjobName)
			__FUNC_1E2A8_(registerVal9, "blacktransparent", index13, registerVal21, "paintshop_1", "paintjob", registerVal12[index13].paintjobIndex, registerVal12[index13].paintjobSlot)
		end
	end
	registerVal11 = AllowWeaponPrestige(arg0)
	if registerVal11 then
		if CoD.perController[arg0].weaponCategory == "primary" or CoD.perController[arg0].weaponCategory == "secondary" then
			registerVal11 = Engine.CreateModel(registerVal8, "mpPrestigeAttachments")
			{}[CoD.CACUtility[(CoD.perController[arg0].weaponCategory .. "WeaponPrestigeSlot")]] = {}
			local function __FUNC_1E7E9_(arg1, arg2, arg3, arg4)
				local registerVal4 = Engine.CreateModel(registerVal11, arg1)
				LUI.CreateModelAndInitialize(registerVal4, "ref", arg3)
				LUI.CreateModelAndInitialize(registerVal4, "name", Engine.GetAttachmentName(arg2, arg4))
				if arg4 ~= CoD.CACUtility.EmptyItemIndex then
					local registerVal6 = Engine.GetAttachmentImage(arg2, arg4)
				end
				local registerVal8, registerVal9, registerVal10 = ipairs(CoD.CACUtility.mpPrestigeAttachments)
				if arg3 ==  then
					local registerVal13 = CoD.CACUtility.GetWeaponPLevel(arg0, arg2)
					if registerVal13 >=  then
					end
				else
				end
				if true then
					registerVal9 = Engine.Localize("MENU_REQUIRES_WEAPON_PRESTIGE", arg1)
				else
					if arg3 == CoD.CACUtility.mpPrestigeAttachments[1] then
						registerVal9 = Engine.Localize("MENU_WEAPON_PRESTIGE_CLAN_TAG", Engine.GetItemName(arg2))
					else
						if arg3 == CoD.CACUtility.mpPrestigeAttachments[2] then
							registerVal9 = Engine.Localize("MENU_WEAPON_PRESTIGE_KILL_COUNTER", Engine.GetItemName(arg2))
						end
					end
				end
				LUI.CreateModelAndInitialize(registerVal4, "image", registerVal6)
				LUI.CreateModelAndInitialize(registerVal4, "itemIndex", arg4)
				LUI.CreateModelAndInitialize(registerVal4, "weaponOptionTypeName", CoD.CACUtility[(CoD.perController[arg0].weaponCategory .. "WeaponPrestigeSlot")])
				LUI.CreateModelAndInitialize(registerVal4, "weaponOptionType", Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_INVALID)
				LUI.CreateModelAndInitialize(registerVal4, "weaponOptionSubIndex", arg4)
				LUI.CreateModelAndInitialize(registerVal4, "description", registerVal9)
				LUI.CreateModelAndInitialize(registerVal4, "allocation", Engine.GetAttachmentAllocationCost(arg4))
				LUI.CreateModelAndInitialize(registerVal4, "type", CoD.CACUtility[(CoD.perController[arg0].weaponCategory .. "WeaponPrestigeSlot")])
				LUI.CreateModelAndInitialize(registerVal4, "unlockSessionMode", Enum.eModes.MODE_MULTIPLAYER)
				registerVal9 = Engine.CreateModel(registerVal4, "rarityType")
				LUI.CreateModelAndInitialize(registerVal9, "rarity", "")
				table.insert({}[CoD.CACUtility[(CoD.perController[arg0].weaponCategory .. "WeaponPrestigeSlot")]], registerVal4)
			end

			if registerVal6 then
				local registerVal14 = Engine.GetModelValue(registerVal6)
				__FUNC_1E7E9_(0, registerVal14, "", CoD.CACUtility.EmptyItemIndex)
				local registerVal15, registerVal16, registerVal17 = ipairs(CoD.CACUtility.mpPrestigeAttachments)
				for index18,value19 in registerVal15, registerVal16, registerVal17 do
					local registerVal20 = Engine.GetAttachmentIndexByAttachmentTableIndex(registerVal14, Engine.GetAttachmentIndexByRef(value19))
					if registerVal20 and CoD.CACUtility.EmptyItemIndex < registerVal20 then
						__FUNC_1E7E9_(index18, registerVal14, value19, registerVal20)
					end
				end
				if #{}[CoD.CACUtility[(CoD.perController[arg0].weaponCategory .. "WeaponPrestigeSlot")]] < 2 then
					{}[CoD.CACUtility[(CoD.perController[arg0].weaponCategory .. "WeaponPrestigeSlot")]] = {}
				end
			end
		end
	end
	return {}
end

CoD["GetWeaponOptionsTable"] = __FUNC_1DA34_
local function __FUNC_1EFBC_(arg0, arg1)
	CoD.perController[arg1].enableClassOptions = true
	return OpenOverlay(arg0, "chooseClass", arg1)
end

CoD["OpenCACMenu"] = __FUNC_1EFBC_
local function __FUNC_1F08C_(arg0, arg1)
	CoD.perController[arg1].enableClassOptions = false
	return OpenOverlay(arg0, "chooseClass", arg1)
end

CoD["OpenCACMenuEditClass"] = __FUNC_1F08C_
local function __FUNC_1F15C_(arg0, arg1, arg2, arg3)
	local registerVal4 = CoD.PrestigeUtility.GetPermanentUnlockMode()
	local registerVal5 = Engine.GetItemAllocationCost(arg1, registerVal4)
	if arg1 ~= nil and 0 < arg1 and 0 <= registerVal5 then
		local registerVal7 = Engine.GetItemName(arg1, registerVal4)
		{}.name = registerVal7
		registerVal7 = Engine.GetItemDesc(arg1, registerVal4)
		{}.description = registerVal7
		registerVal7 = Engine.GetItemRef(arg1, registerVal4)
		{}.ref = registerVal7
		{}.cost = registerVal5
		registerVal7 = Engine.GetItemMomentumCost(arg1, registerVal4)
		{}.momentumCost = registerVal7
		{}.itemIndex = arg1
		{}.count = arg2
		{}.loadoutSlot = arg3
		table.insert(arg0, {})
	end
end

CoD["AddClassItemData"] = __FUNC_1F15C_
local function __FUNC_1F40C_(arg0, arg1, arg2)
	local registerVal3 = CoD.PrestigeUtility.GetPermanentUnlockMode()
	local registerVal4 = Engine.GetAttachmentAllocationCost(arg1, arg2, registerVal3)
	if arg1 ~= nil and 0 < arg1 and arg2 ~= nil and 0 < arg2 and 0 <= registerVal4 then
		local registerVal6 = Engine.GetAttachmentNameByIndex(arg2)
		{}.name = registerVal6
		registerVal6 = Engine.GetAttachmentDesc(arg1, arg2, registerVal3)
		{}.description = registerVal6
		{}.cost = registerVal4
		{}.weaponIndex = arg1
		{}.attachmentIndex = arg2
		{}.count = 1
		table.insert(arg0, {})
	end
end

CoD["AddClassAttachmentData"] = __FUNC_1F40C_
local function __FUNC_1F660_(arg0)
	local registerVal1 = Engine.GetNumAttachments(arg0)
	if registerVal1 == nil then
		return nil
	end
	for index3=1, (registerVal1 - 1), 1 do
		{}.weaponItemIndex = arg0
		{}.attachmentIndex = index3
		table.insert({}, {})
	end
	return {}
end

CoD["GetAttachments"] = __FUNC_1F660_
local function __FUNC_1F77A_(arg0, arg1, arg2)
	local registerVal3 = CoD.PrestigeUtility.GetPermanentUnlockMode()
	return Engine.GetClassItem(arg0, arg1, arg2, registerVal3)
end

CoD["GetClassItem"] = __FUNC_1F77A_
local function __FUNC_1F858_(arg0, arg1, arg2, arg3, arg4)
	Engine.SetClassItem(arg0, arg1, arg2, arg3)
	if arg4 ~= nil then
		Engine.SetClassItem(arg0, arg1, (arg2 .. "count"), arg4)
	end
end

CoD["SetClassItem"] = __FUNC_1F858_
local function __FUNC_1F912_(arg0, arg1, arg2)
	local registerVal4, registerVal5, registerVal6 = pairs(CoD.CACUtility.loadoutSlotNames)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		local registerVal9 = CoD.GetClassItem(arg0, arg1, value8)
		if arg2 == registerVal9 then
			CoD.SetClassItem(arg0, arg1, value8, CoD.CACUtility.EmptyItemIndex)
		end
	end
end

CoD["RemoveItemFromClass"] = __FUNC_1F912_
local function __FUNC_1FA62_(arg0, arg1)
	local registerVal2, registerVal3, registerVal4 = pairs(arg1)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		if value6.itemIndex == arg0 then
			if value6.count == nil then
				return 1
			else
				return value6.count
			end
		end
	end
	return 0
end

CoD["HowManyInClassSlot"] = __FUNC_1FA62_
local function __FUNC_1FB2C_(arg0)
	local registerVal1 = Engine.GetLoadoutSlotForItem(arg0)
	if registerVal1 then
		if registerVal1 == CoD.CACUtility.loadoutSlotNames.primaryWeapon or registerVal1 == CoD.CACUtility.loadoutSlotNames.secondaryWeapon then
			return true
		end
	end
	return false
end

CoD["IsWeapon"] = __FUNC_1FB2C_
local function __FUNC_1FC66_(arg0)
	local registerVal1 = Engine.GetLoadoutSlotForItem(arg0)
	if registerVal1 and registerVal1 == CoD.CACUtility.loadoutSlotNames.secondaryWeapon then
		return true
	end
	return false
end

CoD["IsSecondaryWeapon"] = __FUNC_1FC66_
local function __FUNC_1FD73_(arg0)
	local registerVal1 = Engine.GetLoadoutSlotForItem(arg0)
	local registerVal2 = string.find(registerVal1, "specialty")
	if registerVal1 and registerVal2 == 1 then
		return true
	end
	return false
end

CoD["IsPerk"] = __FUNC_1FD73_
local function __FUNC_1FE55_(arg0)
	local registerVal1 = Engine.GetLoadoutSlotForItem(arg0)
	local registerVal2 = string.find(registerVal1, "killstreak")
	if registerVal1 and registerVal2 == 1 then
		return true
	end
	return false
end

CoD["IsReward"] = __FUNC_1FE55_
local function __FUNC_1FF3A_(arg0)
	local registerVal1 = Engine.GetLoadoutSlotForItem(arg0)
	if registerVal1 then
		if registerVal1 == CoD.CACUtility.loadoutSlotNames.primaryGrenade or registerVal1 == CoD.CACUtility.loadoutSlotNames.specialGrenade then
			return true
		end
	end
	return false
end

CoD["IsGrenade"] = __FUNC_1FF3A_
local function __FUNC_20072_(arg0)
	local registerVal1 = Engine.GetLoadoutSlotForItem(arg0)
	if registerVal1 and registerVal1 == CoD.CACUtility.loadoutSlotNames.primaryGrenade then
		return true
	end
	return false
end

CoD["IsLethalGrenade"] = __FUNC_20072_
local function __FUNC_2017E_(arg0)
	local registerVal1 = Engine.GetLoadoutSlotForItem(arg0)
	if registerVal1 and registerVal1 == CoD.CACUtility.loadoutSlotNames.specialGrenade then
		return true
	end
	return false
end

CoD["IsTacticalGrenade"] = __FUNC_2017E_
local function __FUNC_2028A_(arg0)
	local registerVal1 = Engine.GetItemGroup(arg0)
	local registerVal2 = string.find(registerVal1, "bonuscard")
	if registerVal1 and registerVal2 == 1 then
		return true
	end
	return false
end

CoD["IsBonusCard"] = __FUNC_2028A_
local function __FUNC_20364_(arg0, arg1)
	local registerVal2 = Engine.GetItemImage(arg0)
	local registerVal5 = CoD.IsWeapon(arg0)
	if registerVal5 then
		if arg1 == true then
		else
			registerVal5 = CoD.IsBonusCard(arg0)
			if registerVal5 then
			else
				registerVal5 = CoD.IsReward(arg0)
				if registerVal5 then
					if arg1 == true and arg1 == true then
					end
				end
			end
		end
	end
	return (((registerVal2 .. "_big") .. "_menu") .. "_256"), CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

CoD["GetItemMaterialNameWidthAndHeight"] = __FUNC_20364_
local function __FUNC_20513_(arg0)
	local registerVal2, registerVal3, registerVal4 = pairs(arg0)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		if value6.count ~= nil then
		end
	end
	return (0 + (value6.cost * value6.count))
end

CoD["SumClassItemCosts"] = __FUNC_20513_
local function __FUNC_205CB_(arg0, arg1)
	local registerVal2 = Engine.GetItemAllocationCost(arg0)
	local registerVal3 = Engine.GetItemAllocationCost(arg1)
	if registerVal2 >= registerVal3 then
	end
	return true
end

CoD["CACItemComparisonFunction"] = __FUNC_205CB_
local function __FUNC_20667_(arg0, arg1)
	local registerVal2 = Engine.GetAttachmentAllocationCost(arg0.weaponItemIndex, arg0.attachmentIndex)
	local registerVal3 = Engine.GetAttachmentAllocationCost(arg1.weaponItemIndex, arg1.attachmentIndex)
	if registerVal2 >= registerVal3 then
	end
	return true
end

CoD["CACAttachmentComparisonFunction"] = __FUNC_20667_
local function __FUNC_20763_(arg0, arg1)
	{}.weaponItemIndex = arg0.weaponItemIndex
	local registerVal4 = Engine.GetModelValue(Engine.GetModel(arg0.model, "itemIndex"))
	{}.attachmentIndex = registerVal4
	{}.weaponItemIndex = arg1.weaponItemIndex
	registerVal4 = Engine.GetModelValue(Engine.GetModel(arg1.model, "itemIndex"))
	{}.attachmentIndex = registerVal4
	registerVal4 = Engine.GetAttachmentAllocationCost({}.weaponItemIndex, {}.attachmentIndex)
	local registerVal5 = Engine.GetAttachmentAllocationCost({}.weaponItemIndex, {}.attachmentIndex)
	if registerVal4 >= registerVal5 then
	end
	return true
end

CoD["CACAttachmentComparisonDataSourceFunction"] = __FUNC_20763_
local function __FUNC_2094A_(arg0, arg1)
	local registerVal2 = CoD.PrestigeUtility.GetPermanentUnlockMode()
	local registerVal3 = Engine.GetItemAllocationCost(arg0, registerVal2)
	local registerVal4 = Engine.GetItemAllocationCost(arg1, registerVal2)
	if registerVal3 == registerVal4 then
		local registerVal5 = Engine.GetItemMomentumCost(arg0, registerVal2)
		local registerVal6 = Engine.GetItemMomentumCost(arg1, registerVal2)
		if registerVal5 >= registerVal6 then
		end
		return true
	else
		if registerVal3 >= registerVal4 then
		end
		return true
	end
end

CoD["CACRewardComparisonFunction"] = __FUNC_2094A_
local function __FUNC_20ACA_(arg0, arg1)
	return CoD.factionColor[arg0][arg1]
end

CoD["GetFactionColor"] = __FUNC_20ACA_
local function __FUNC_20B43_()
	return "seals"
end

CoD["GetFaction"] = __FUNC_20B43_
local function __FUNC_20B83_(arg0, arg1)
	local registerVal2 = CoD.IsShoutcaster(arg0)
	registerVal2 = CoD.ShoutcasterProfileVarBool(arg0, "shoutcaster_flip_scorepanel")
	if registerVal2 and registerVal2 then
		if arg1 == Enum.team_t.TEAM_ALLIES then
		else
			if Enum.team_t.TEAM_AXIS == Enum.team_t.TEAM_AXIS then
			end
		end
	end
	return CoD.GetTeamFactionColor(Enum.team_t.TEAM_ALLIES)
end

CoD["GetTeamColor"] = __FUNC_20B83_
local function __FUNC_20D5F_(arg0)
	local registerVal1 = Engine.GetTeamIDByXUID(Engine.GetXUID64(arg0))
	if registerVal1 then
		return registerVal1
	end
	local registerVal2 = Engine.LobbyGetSessionClients(Enum.LobbyModule.LOBBY_MODULE_CLIENT, Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal2 and registerVal2.sessionClients then
		local registerVal3, registerVal4, registerVal5 = ipairs(registerVal2.sessionClients)
		for index6,value7 in registerVal3, registerVal4, registerVal5 do
			local registerVal10 = Engine.GetXUID64(arg0)
			if registerVal10 == value7.xuid then
				return value7.team
			end
		end
	else
		return Enum.team_t.TEAM_BAD
	end
end

CoD["GetTeamID"] = __FUNC_20D5F_
local function __FUNC_20FD6_(arg0)
	if arg0 == Enum.team_t.TEAM_ALLIES then
		return "MPUI_ALLIES"
	else
		if arg0 == Enum.team_t.TEAM_AXIS then
			return "MPUI_AXIS"
		end
	end
	if not arg0 or CoD.isCampaign then
		if arg0 == Enum.team_t.TEAM_SPECTATOR then
			return CoD.teamName[Enum.team_t.TEAM_SPECTATOR]
		else
			if arg0 == Enum.team_t.TEAM_FREE then
				return CoD.teamName[Enum.team_t.TEAM_FREE]
			end
		end
		local registerVal1 = Engine.GameModeIsMode(CoD.GAMEMODE_LEAGUE_MATCH)
		if registerVal1 then
			registerVal1 = Dvar.g_customTeamName_Allies:get()
			if arg0 == Enum.team_t.TEAM_ALLIES and registerVal1 ~= "" then
				return Dvar.g_customTeamName_Allies:get()
			else
				registerVal1 = Dvar.g_customTeamName_Axis:get()
				if arg0 == Enum.team_t.TEAM_AXIS and registerVal1 ~= "" then
					return Dvar.g_customTeamName_Axis:get()
				end
			end
		end
		return Engine.GetFactionForTeam(arg0)
	end
	if arg0 == Enum.team_t.TEAM_ALLIES then
		return Dvar.g_TeamName_Allies:get()
	else
		if arg0 == Enum.team_t.TEAM_AXIS then
			return Dvar.g_TeamName_Axis:get()
		else
			if arg0 == Enum.team_t.TEAM_SPECTATOR then
				return CoD.teamName[Enum.team_t.TEAM_SPECTATOR]
			else
				return CoD.teamName[arg0]
			end
		end
	end
	if CoD.isZombie == true then
		if arg0 == Enum.team_t.TEAM_ALLIES then
			return "ZMUI_CDC_SHORT"
		else
			if arg0 == Enum.team_t.TEAM_AXIS then
				return "ZMUI_CIA_SHORT"
			end
		end
	end
	return CoD.teamName[arg0]
end

CoD["GetDefaultTeamName"] = __FUNC_20FD6_
local function __FUNC_2161E_(arg0)
	if arg0 == Enum.team_t.TEAM_ALLIES then
	else
		if arg0 == Enum.team_t.TEAM_AXIS then
		else
			if arg0 == Enum.team_t.TEAM_SPECTATOR then
			end
		end
	end
	return string.format("%d %d %d", (ColorSet.CodCaster.r * 255), (ColorSet.CodCaster.g * 255), (ColorSet.CodCaster.b * 255))
end

CoD["GetDefaultTeamFactionColor"] = __FUNC_2161E_
local function __FUNC_2184F_(arg0)
	if arg0 == Enum.team_t.TEAM_ALLIES then
		return "faction_allies"
	else
		if arg0 == Enum.team_t.TEAM_AXIS then
			return "faction_axis"
		end
	end
	return ""
end

CoD["GetDefaultTeamFactionIcon"] = __FUNC_2184F_
function ShouldUseCustomTeamIdentity(arg0)
	local registerVal1 = CoD.IsShoutcaster(arg0)
	if not registerVal1 then
		return false
	end
	registerVal1 = CoD.ShoutcasterProfileVarBool(arg0, "shoutcaster_fe_team_identity")
	if not registerVal1 then
		return false
	end
	return true
end

local function __FUNC_21A4D_(arg0)
	local registerVal1 = CoD.IsShoutcaster(arg0)
	if not registerVal1 then
		return false
	end
	registerVal1 = CoD.ShoutcasterProfileVarBool(arg0, "shoutcaster_team_identity")
	if registerVal1 then
		return false
	end
	return true
end

local function __FUNC_21B3E_(arg0)
	if arg0 == "team2" then
		return Engine.Localize("CODCASTER_TEAM2")
	else
		return Engine.Localize("CODCASTER_TEAM1")
	end
end

local function __FUNC_21C0F_(arg0, arg1)
	if arg1 == Enum.team_t.TEAM_ALLIES then
	else
		if arg1 == Enum.team_t.TEAM_AXIS then
		end
	end
	local registerVal4 = CoD.ShoutcasterProfileVarValue(arg0, ("shoutcaster_fe_" .. "team2" .. "_name"))
	if "team2" and registerVal4 ~= nil then
		if registerVal4 == "" then
			return __FUNC_21B3E_("team2")
		else
			return registerVal4
		end
	end
	CoD.GetDefaultTeamName(arg1)
	return Engine.Localize(CoD.GetDefaultTeamName)
end

CoD["GetCodCasterTeamName"] = __FUNC_21C0F_
local function __FUNC_21E22_(arg0, arg1)
	if arg1 == Enum.team_t.TEAM_ALLIES then
	else
		if arg1 == Enum.team_t.TEAM_AXIS then
		end
	end
	local registerVal6 = CoD.ShoutcasterProfileVarValue(arg0, ("shoutcaster_fe_" .. "team2" .. "_color"))
	local registerVal4 = CoD.GetCodCasterTeamColorInformation(arg0, registerVal6, "color")
	if "team2" and registerVal4 ~= nil then
		return registerVal4
	end
	return CoD.GetDefaultTeamFactionColor(arg1)
end

CoD["GetCodCasterTeamColor"] = __FUNC_21E22_
local function __FUNC_22038_(arg0, arg1)
	if arg1 == Enum.team_t.TEAM_ALLIES then
	else
		if arg1 == Enum.team_t.TEAM_AXIS then
		end
	end
	local registerVal6 = CoD.ShoutcasterProfileVarValue(arg0, ("shoutcaster_fe_" .. "team2" .. "_color"))
	local registerVal4 = CoD.GetCodCasterTeamColorInformation(arg0, registerVal6, "colorEffect")
	if "team2" and registerVal4 ~= nil then
		return registerVal4
	end
	return CoD.GetDefaultTeamFactionColor(arg1)
end

CoD["GetCodCasterTeamEffectColor"] = __FUNC_22038_
local function __FUNC_22256_(arg0, arg1)
	if arg1 == Enum.team_t.TEAM_ALLIES then
	else
		if arg1 == Enum.team_t.TEAM_AXIS then
		end
	end
	local registerVal6 = CoD.ShoutcasterProfileVarValue(arg0, ("shoutcaster_fe_" .. "team2" .. "_color"))
	local registerVal4 = CoD.GetCodCasterTeamColorInformation(arg0, registerVal6, "colorObituaryFont")
	if "team2" and registerVal4 ~= nil then
		return registerVal4
	end
	return CoD.GetDefaultTeamFactionColor(arg1)
end

CoD["GetCodCasterTeamObituaryFontColor"] = __FUNC_22256_
local function __FUNC_22478_(arg0)
	if arg0 == Enum.team_t.TEAM_ALLIES then
		return "uie_t7_codcaster_faction1"
	else
		if arg0 == Enum.team_t.TEAM_AXIS then
			return "uie_t7_codcaster_faction2"
		end
	end
	return ""
end

CoD["GetDefaultCodCasterFactionIcon"] = __FUNC_22478_
local function __FUNC_2259E_(arg0, arg1)
	if arg1 == Enum.team_t.TEAM_ALLIES then
	else
		if arg1 == Enum.team_t.TEAM_AXIS then
		end
	end
	local registerVal6 = CoD.ShoutcasterProfileVarValue(arg0, ("shoutcaster_fe_" .. "team2" .. "_icon"))
	local registerVal4 = CoD.GetCodCasterTeamLogoInformation(arg0, registerVal6, "ref")
	if "team2" and registerVal4 ~= nil then
		return registerVal4
	end
	return CoD.GetDefaultCodCasterFactionIcon(arg1)
end

CoD["GetCodCasterFactionIcon"] = __FUNC_2259E_
local function __FUNC_227B4_(arg0)
	local registerVal1 = Engine.GetPrimaryController()
	local registerVal2 = CoD.IsShoutcaster(registerVal1)
	if registerVal2 then
		registerVal2 = ShouldUseCustomTeamIdentity(registerVal1)
		if registerVal2 then
			return CoD.GetCodCasterTeamName(registerVal1, arg0)
		else
			CoD.GetDefaultTeamName(arg0)
			return Engine.Localize(CoD.GetDefaultTeamName)
		end
	end
	return CoD.GetDefaultTeamName(arg0)
end

CoD["GetTeamName"] = __FUNC_227B4_
local function __FUNC_2295B_(arg0)
	local registerVal1 = Engine.GetPrimaryController()
	local registerVal2 = CoD.IsShoutcaster(registerVal1)
	if registerVal2 then
		registerVal2 = ShouldUseCustomTeamIdentity(registerVal1)
		if registerVal2 then
			return CoD.GetCodCasterTeamColor(registerVal1, arg0)
		else
			if arg0 == Enum.team_t.TEAM_ALLIES then
				local registerVal3 = CoD.GetColorBlindColorForPlayer(registerVal1, "FriendlyBlue")
			else
				if arg0 == Enum.team_t.TEAM_SPECTATOR then
				else
					registerVal3 = CoD.GetColorBlindColorForPlayer(registerVal1, "EnemyOrange")
				end
			end
			return string.format("%d %d %d", (registerVal3.r * 255), (registerVal3.g * 255), (registerVal3.b * 255))
		end
	end
	return CoD.GetDefaultTeamFactionColor(arg0)
end

CoD["GetTeamFactionColor"] = __FUNC_2295B_
local function __FUNC_22CDA_(arg0)
	local registerVal1 = Engine.GetPrimaryController()
	local registerVal2 = CoD.IsShoutcaster(registerVal1)
	if registerVal2 then
		registerVal2 = ShouldUseCustomTeamIdentity(registerVal1)
		if registerVal2 then
			return CoD.GetCodCasterTeamEffectColor(registerVal1, arg0)
		else
			return CoD.GetTeamFactionColor(arg0)
		end
	end
	return CoD.GetDefaultTeamFactionColor(arg0)
end

CoD["GetTeamFactionColorEffect"] = __FUNC_22CDA_
local function __FUNC_22E85_(arg0)
	local registerVal1 = Engine.GetPrimaryController()
	local registerVal2 = CoD.IsShoutcaster(registerVal1)
	if registerVal2 then
		registerVal2 = ShouldUseCustomTeamIdentity(registerVal1)
		if registerVal2 then
			return CoD.GetCodCasterTeamObituaryFontColor(registerVal1, arg0)
		else
			return CoD.GetTeamFactionColor(arg0)
		end
	end
	return CoD.GetDefaultTeamFactionColor(arg0)
end

CoD["GetTeamFactionColorObituaryFont"] = __FUNC_22E85_
local function __FUNC_23037_(arg0)
	local registerVal1 = Engine.GetPrimaryController()
	local registerVal2 = CoD.IsShoutcaster(registerVal1)
	if registerVal2 then
		registerVal2 = __FUNC_21A4D_(registerVal1)
		if registerVal2 then
			return "blacktransparent"
		else
			registerVal2 = ShouldUseCustomTeamIdentity(registerVal1)
			if registerVal2 then
				return CoD.GetCodCasterFactionIcon(registerVal1, arg0)
			else
				return CoD.GetDefaultCodCasterFactionIcon(arg0)
			end
		end
	end
	return CoD.GetDefaultTeamFactionIcon(arg0)
end

CoD["GetTeamFactionIcon"] = __FUNC_23037_
local function __FUNC_23221_(arg0)
	local registerVal1 = Engine.GameModeIsMode(CoD.GAMEMODE_LEAGUE_MATCH)
	if registerVal1 then
		registerVal1 = Dvar.g_customTeamName_Allies:get()
		if arg0 == Enum.team_t.TEAM_ALLIES and registerVal1 ~= "" then
			Dvar.g_customTeamName_Allies:get()
			return Engine.ToUpper(Dvar.g_customTeamName_Allies:get)
		else
			registerVal1 = Dvar.g_customTeamName_Axis:get()
			if arg0 == Enum.team_t.TEAM_AXIS and registerVal1 ~= "" then
				Dvar.g_customTeamName_Axis:get()
				return Engine.ToUpper(Dvar.g_customTeamName_Axis:get)
			end
		end
	end
	registerVal1 = CoD.IsShoutcaster(Engine.GetPrimaryController())
	if registerVal1 then
		registerVal1 = CoD.GetTeamName(arg0)
		if registerVal1 ~= "" then
			return Engine.ToUpper(registerVal1)
		else
			return registerVal1
		end
	end
	registerVal1 = CoD.GetTeamName(arg0)
	if arg0 == Enum.team_t.TEAM_SPECTATOR then
	end
	return Engine.Localize("MPUI_SHOUTCASTER_SHORT_CAPS")
end

CoD["GetTeamNameCaps"] = __FUNC_23221_
local function __FUNC_235F4_(arg0)
	local registerVal1 = CoD.GetNumValuesFromSpaceSeparatedString(arg0)
	if #arg0 ~= 3 then
		return 
	end
	for index3=1, #, 1 do
		if 1 < registerVal1[index3] then
			registerVal1[index3] = (registerVal1[index3] * 0.003922)
		else
			registerVal1[index3] = (registerVal1[index3] * 1)
		end
	end
	local registerVal3 = {}
	registerVal3.r = registerVal1[1]
	registerVal3.g = registerVal1[2]
	registerVal3.b = registerVal1[3]
	return registerVal3
end

CoD["GetColorFromFormattedColorString"] = __FUNC_235F4_
local function __FUNC_23748_(arg0)
	if not arg0 then
	end
	if not {}.r then
	end
	if not {}.g then
	end
	if not {}.b then
	end
	return 0, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

CoD["ExplodeColor"] = __FUNC_23748_
local function __FUNC_237F6_(arg0, arg1)
	if not ColorSet[arg0] then
		return 
	end
	local registerVal2 = CoD.GetColorFromFormattedColorString(arg1)
	ColorSet[arg0] = registerVal2
	Engine.UpdateColorSet(arg0, registerVal2)
end

CoD["UpdateColorSet"] = __FUNC_237F6_
local function __FUNC_238E9_(arg0, arg1)
	local registerVal3 = CoD.IsShoutcaster(arg0)
	if registerVal3 then
		if arg1 == Enum.team_t.TEAM_ALLIES then
		else
			if arg1 == Enum.team_t.TEAM_AXIS then
			else
				registerVal3 = CoD.GetColorBlindColorForPlayer(arg0, "FriendlyBlue")
			end
		end
	end
	return registerVal3
end

CoD["GetColorSetFriendlyColor"] = __FUNC_238E9_
local function __FUNC_23ADC_(arg0, arg1)
	local registerVal3 = CoD.IsShoutcaster(arg0)
	if registerVal3 then
		if arg1 == Enum.team_t.TEAM_ALLIES then
		else
			if arg1 == Enum.team_t.TEAM_AXIS then
			else
				registerVal3 = CoD.GetColorBlindColorForPlayer(arg0, "EnemyOrange")
			end
		end
	end
	return registerVal3
end

CoD["GetColorSetEnemyColor"] = __FUNC_23ADC_
local function __FUNC_23CCF_(arg0)
	local registerVal2 = CoD.IsShoutcaster(arg0)
	if registerVal2 then
	else
		registerVal2 = CoD.GetColorBlindColorForPlayer(arg0, "FriendlyBlue")
	end
	return registerVal2
end

CoD["GetColorSetFriendlyOrShoutCasterColor"] = __FUNC_23CCF_
local function __FUNC_23DE5_(arg0)
	local registerVal2 = CoD.IsShoutcaster(arg0)
	if registerVal2 then
	else
		registerVal2 = CoD.GetColorBlindColorForPlayer(arg0, "EnemyOrange")
	end
	return registerVal2
end

CoD["GetColorSetEnemyOrShoutCasterColor"] = __FUNC_23DE5_
local function __FUNC_23EFA_(arg0)
	local registerVal2 = CoD.IsShoutcaster(arg0)
	if registerVal2 then
	else
		registerVal2 = CoD.GetColorBlindColorForPlayer(arg0, "FriendlyBlue")
	end
	return registerVal2
end

CoD["GetColorSetFriendlyOrShoutCasterAltColor"] = __FUNC_23EFA_
local function __FUNC_2401D_(arg0)
	local registerVal2 = CoD.IsShoutcaster(arg0)
	if registerVal2 then
	else
		registerVal2 = CoD.GetColorBlindColorForPlayer(arg0, "EnemyOrange")
	end
	return registerVal2
end

CoD["GetColorSetEnemyOrShoutCasterAltColor"] = __FUNC_2401D_
local function __FUNC_2413E_()
	local registerVal0 = Dvar.ui_gametype:get()
	return Engine.StructTableLookupString(CoDShared.gametypesStructTable, "name", registerVal0, "image")
end

CoD["GetLoadingScreenGameTypeIconName"] = __FUNC_2413E_
local function __FUNC_24263_()
	local registerVal0 = Dvar.ui_gametype:get()
	return Engine.StructTableLookupString(CoDShared.gametypesStructTable, "name", registerVal0, "image")
end

CoD["GetGameTypeIconName"] = __FUNC_24263_
local function __FUNC_24387_()
	local registerVal0 = Engine.GameModeIsMode(CoD.GAMEMODE_PUBLIC_MATCH)
	if registerVal0 then
		return false
	end
	registerVal0 = Engine.GetGametypeSetting("allowSpectating")
	if registerVal0 == 1 then
		return true
	end
	return false
end

CoD["IsSpectatingAllowed"] = __FUNC_24387_
local function __FUNC_244A2_()
	local registerVal0 = Engine.GameModeIsMode(CoD.GAMEMODE_PUBLIC_MATCH)
	if registerVal0 then
		return false
	end
	registerVal0 = Engine.GetGametypeSetting("allowInGameTeamChange")
	if registerVal0 == 1 then
		return true
	end
	return false
end

CoD["IsTeamChangeAllowed"] = __FUNC_244A2_
local function __FUNC_245C4_(arg0)
	local registerVal1, registerVal2 = Engine.GetUserSafeArea()
	local registerVal3 = {}
	registerVal3.leftAnchor = false
	registerVal3.rightAnchor = false
	registerVal3.left = (-registerVal1 / 2)
	registerVal3.right = (registerVal1 / 2)
	registerVal3.topAnchor = false
	registerVal3.bottomAnchor = false
	registerVal3.top = (-registerVal2 / 2)
	registerVal3.bottom = (registerVal2 / 2)
	return registerVal3
end

CoD["GetAnimationStateForUserSafeArea"] = __FUNC_245C4_
local function __FUNC_24700_()
	local registerVal0 = {}
	registerVal0.leftAnchor = true
	registerVal0.rightAnchor = true
	registerVal0.left = 0
	registerVal0.right = 0
	registerVal0.topAnchor = true
	registerVal0.bottomAnchor = true
	registerVal0.top = 0
	registerVal0.bottom = 0
	return registerVal0
end

CoD["GetDefaultAnimationState"] = __FUNC_24700_
local function __FUNC_247E7_()
	return Engine.IsMultiplayerGame()
end

CoD["ShowNewLoadingScreen"] = __FUNC_247E7_
local function __FUNC_24853_()
	local registerVal0 = Engine.IsMultiplayerGame()
	registerVal0 = Dvar.ui_gametype:get()
	if registerVal0 and registerVal0 == "fr" then
		return false
	end
	return true
end

CoD["ShowNewScoreboard"] = __FUNC_24853_
local function __FUNC_2492F_(arg0, arg1)
	if arg1 ~= nil then
	end
	local registerVal7 = {}
	registerVal7.leftAnchor = true
	registerVal7.rightAnchor = true
	registerVal7.left = 0
	registerVal7.right = 0
	registerVal7.topAnchor = true
	registerVal7.bottomAnchor = true
	registerVal7.top = 0
	registerVal7.bottom = 0
	registerVal7.red = arg1.r
	registerVal7.green = arg1.g
	registerVal7.blue = arg1.b
	registerVal7.alpha = arg1.a
	local registerVal6 = LUI.UIImage.new(registerVal7)
	arg0:addElement(registerVal6)
end

CoD["AddDebugBackground"] = __FUNC_2492F_
local function __FUNC_24B42_(arg0)
	local registerVal1 = Engine.GetCustomClass(arg0, CoD.perController[arg0].classNum)
	CoD.previousAllocationAmount = registerVal1.allocationSpent
end

CoD["SetPreviousAllocation"] = __FUNC_24B42_
local function __FUNC_24C59_(arg0)
	local registerVal1 = Engine.Localize(CoD.MPZM("MPUI_BARRACKS_DESC", "ZMUI_LEADERBOARDS_DESC"))
	arg0.hintText = registerVal1
end

CoD["SetupBarracksLock"] = __FUNC_24C59_
local function __FUNC_24D43_(arg0)
	arg0:registerEventHandler("barracks_closed", CoD.SetupBarracksNew)
	arg0:showNewIcon(Engine.IsAnyEmblemIconNew(Engine.GetPrimaryController()))
end

CoD["SetupBarracksNew"] = __FUNC_24D43_
local function __FUNC_24E75_(arg0)
	local registerVal1 = Engine.Localize(CoD.MPZM("MPUI_PLAYER_MATCH_DESC", "ZMUI_PLAYER_MATCH_DESC"))
	arg0.hintText = registerVal1
end

CoD["SetupMatchmakingLock"] = __FUNC_24E75_
local function __FUNC_24F63_(arg0)
	local registerVal1 = Engine.IsBetaBuild()
	if registerVal1 then
		arg0:lock()
		registerVal1 = Engine.Localize("FEATURE_CUSTOM_GAMES_LOCKED")
		arg0.hintText = registerVal1
	else
		registerVal1 = Engine.Localize(CoD.MPZM("MPUI_CUSTOM_MATCH_DESC", "ZMUI_CUSTOM_MATCH_DESC"))
		arg0.hintText = registerVal1
	end
end

CoD["SetupCustomGamesLock"] = __FUNC_24F63_
local function __FUNC_250DB_(arg0)
	local registerVal1 = Engine.IsDemoPlaying()
	if registerVal1 then
		registerVal1 = Engine.IsDemoShoutcaster()
		if registerVal1 then
			return true
		else
			local registerVal2 = Engine.GetModelForController(arg0)
			registerVal1 = Engine.GetModel(registerVal2, "factions.isCoDCaster")
			local registerVal3 = Engine.GetModelValue(registerVal1)
			if registerVal1 and registerVal3 ~= nil then
			end
			if registerVal3 then
				registerVal3 = CoD.GetTeamID(arg0)
				registerVal3 = Engine.IsShoutcaster(arg0)
				if registerVal3 == Enum.team_t.TEAM_SPECTATOR or registerVal3 then
					return true
				end
			end
		end
	end
	return false
end

CoD["IsShoutcaster"] = __FUNC_250DB_
local function __FUNC_25332_(arg0, arg1)
	if arg1 then
		return Engine.GetPlayerStats(arg0, arg1)
	else
		return Engine.GetPlayerStats(arg0)
	end
end

CoD["GetPlayerStats"] = __FUNC_25332_
local function __FUNC_253CC_(arg0, arg1)
	local registerVal2 = Engine.GetPlayerCommonGamerProfile(arg0)
	local registerVal3 = registerVal2[arg1]:get()
	if registerVal2 ~= nil and registerVal2[arg1] ~= nil and registerVal3 == 1 then
		return true
	end
	return false
end

CoD["ExeProfileVarBool"] = __FUNC_253CC_
local function __FUNC_254A0_(arg0, arg1)
	if arg1 == Enum.ColorVisionDeficiencies.CVD_DEUTERANOMALY then
	else
		if arg1 == Enum.ColorVisionDeficiencies.CVD_PROTANOMALY then
		else
			if arg1 == Enum.ColorVisionDeficiencies.CVD_TRITANOMALY then
			end
		end
	end
	if not ColorSet[(((arg0 .. "_Deuteranopia") .. "_Protanopia") .. "_Tritanopia")] then
	end
	return ColorSet[arg0]
end

CoD["GetColorBlindSafeColorForSetting"] = __FUNC_254A0_
local function __FUNC_25663_(arg0, arg1, arg2)
	local registerVal3 = IsLuaCodeVersionAtLeast(17)
	if not registerVal3 then
		return ColorSet[arg1]
	end
	local registerVal4 = Engine.GetPlayerCommonGamerProfile(arg0)
	local registerVal5 = registerVal4.colorBlindMode:get()
	if registerVal4 ~= nil and registerVal4.colorBlindMode ~= nil and arg2 ~= nil then
		arg2.setting = registerVal5
	end
	return CoD.GetColorBlindSafeColorForSetting(arg1, registerVal5)
end

CoD["GetColorBlindColorForPlayer"] = __FUNC_25663_
local function __FUNC_25863_(arg0, arg1)
	local registerVal2 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_PROFILE_SHOUTCASTER)
	local registerVal3 = registerVal2[arg1]:get()
	if registerVal2 ~= nil and registerVal2[arg1] ~= nil and registerVal3 == 1 then
		return true
	end
	return false
end

CoD["ShoutcasterProfileVarBool"] = __FUNC_25863_
local function __FUNC_25991_(arg0, arg1)
	local registerVal2 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_PROFILE_SHOUTCASTER)
	if registerVal2 ~= nil and registerVal2[arg1] ~= nil then
		return registerVal2[arg1]:get()
	end
	return nil
end

CoD["ShoutcasterProfileVarValue"] = __FUNC_25991_
local function __FUNC_25AB0_(arg0, arg1, arg2)
	local registerVal3 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_PROFILE_SHOUTCASTER)
	if registerVal3 ~= nil and registerVal3[arg1] ~= nil then
		registerVal3[arg1]:set(arg2)
	end
	local registerVal5 = Engine.GetModelForController(arg0)
	local registerVal4 = Engine.CreateModel(registerVal5, "CodCaster.profileSettingsUpdated")
	if registerVal4 then
		Engine.ForceNotifyModelSubscriptions(registerVal4)
	end
end

CoD["SetShoutcasterProfileVarValue"] = __FUNC_25AB0_
local function __FUNC_25C9D_(arg0, arg1, arg2)
	local registerVal3 = DataSources.TeamIdentityInformation.getModel(arg1, arg2)
	if arg2 == "team2" then
	end
	local registerVal5 = CoD.GetDefaultTeamName(Enum.team_t.TEAM_AXIS)
	local registerVal6 = CoD.GetDefaultCodCasterFactionIcon(Enum.team_t.TEAM_AXIS)
	local registerVal8 = CoD.GetDefaultTeamFactionColor(Enum.team_t.TEAM_AXIS)
	local registerVal9 = CoD.ShoutcasterProfileVarBool(arg1, "shoutcaster_fe_team_identity")
	if registerVal9 then
		registerVal9 = CoD.ShoutcasterProfileVarValue(arg1, ("shoutcaster_fe_" .. arg2 .. "_name"))
		if registerVal9 == "" then
			registerVal9 = __FUNC_21B3E_(arg2)
		end
		local registerVal11 = CoD.ShoutcasterProfileVarValue(arg1, ("shoutcaster_fe_" .. arg2 .. "_icon"))
		registerVal9 = CoD.GetCodCasterTeamLogoInformation(arg1, registerVal11, "ref")
		registerVal11 = CoD.ShoutcasterProfileVarValue(arg1, ("shoutcaster_fe_" .. arg2 .. "_icon"))
		registerVal9 = CoD.GetCodCasterTeamLogoInformation(arg1, registerVal11, "name")
		registerVal11 = CoD.ShoutcasterProfileVarValue(arg1, ("shoutcaster_fe_" .. arg2 .. "_color"))
		registerVal9 = CoD.GetCodCasterTeamColorInformation(arg1, registerVal11, "color")
	end
	local registerVal10 = Engine.CreateModel(registerVal3, "teamName")
	Engine.SetModelValue(registerVal10, registerVal9)
	registerVal10 = Engine.CreateModel(registerVal3, "teamLogo")
	Engine.SetModelValue(registerVal10, registerVal9)
	registerVal10 = Engine.CreateModel(registerVal3, "teamLogoName")
	Engine.SetModelValue(registerVal10, registerVal9)
	registerVal10 = Engine.CreateModel(registerVal3, "teamColor")
	Engine.SetModelValue(registerVal10, registerVal9)
end

CoD["SetupTeamIdentityInformation"] = __FUNC_25C9D_
local function __FUNC_26262_(arg0)
	local registerVal1 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_OVERTIME)
	if Enum.UIVisibilityBit.BIT_OVERTIME and registerVal1 then
		return true
	end
	return false
end

CoD["IsInOvertime"] = __FUNC_26262_
local function __FUNC_26365_(arg0, arg1)
	if CoD.isZombie == true then
		return arg1
	else
		return arg0
	end
end

CoD["MPZM"] = __FUNC_26365_
local function __FUNC_263D5_(arg0, arg1, arg2)
	if CoD.isSinglePlayer == true then
		return arg0
	else
		if CoD.isZombie == true then
			return arg2
		else
			if CoD.isMultiplayer == true then
				return arg1
			end
		end
	end
	return nil
end

CoD["SPMPZM"] = __FUNC_263D5_
local function __FUNC_264B4_(arg0, arg1, arg2)
	if CoD.isCampaign == true then
		return arg0
	else
		if CoD.isMultiplayer == true then
			return arg1
		else
			if CoD.isZombie == true then
				return arg2
			end
		end
	end
	return nil
end

CoD["CPMPZM"] = __FUNC_264B4_
local function __FUNC_26590_(arg0, arg1, arg2, arg3)
	if CoD.isCampaign == true then
		return arg0
	else
		if CoD.isMultiplayer == true then
			return arg1
		else
			if CoD.isZombie == true then
				return arg2
			end
		end
	end
	return arg3
end

CoD["CPMPZMINV"] = __FUNC_26590_
local function __FUNC_26668_(arg0, arg1)
	local registerVal3, registerVal4, registerVal5 = pairs(arg0)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		table.insert({}, index6)
	end
	table.sort({}, arg1)
	local function __FUNC_26741_()
		if {}[(0 + 1)] == nil then
			return nil
		else
			return {}[(0 + 1)], CoDLUIDecompiler.LuaRegister
		end
	end

	return __FUNC_26741_
end

CoD["pairsByKeys"] = __FUNC_26668_
local function __FUNC_267E2_(arg0, arg1, arg2)
	local registerVal3 = CoD.SafeGetModelValue(arg1, "isBMClassified")
	local registerVal4 = CoD.SafeGetModelValue(arg2, "isBMClassified")
	if registerVal3 and not registerVal4 then
		return false
	else
		if not registerVal3 and registerVal4 then
			return true
		end
	end
	local registerVal5 = CoD.SafeGetModelValue(arg1, "isContractClassified")
	local registerVal6 = CoD.SafeGetModelValue(arg2, "isContractClassified")
	if registerVal5 and not registerVal6 then
		return false
	else
		if not registerVal5 and registerVal6 then
			return true
		end
	end
	local registerVal7 = CoD.SafeGetModelValue(arg1, "itemIndex")
	local registerVal8 = CoD.SafeGetModelValue(arg2, "itemIndex")
	local registerVal9 = CoD.SafeGetModelValue(arg1, "group")
	local registerVal10 = CoD.SafeGetModelValue(arg2, "group")
	local registerVal11 = LuaUtils.FindItemInArray(CoD.CACUtility.BGBBuffGroups, registerVal9)
	registerVal11 = LuaUtils.FindItemInArray(CoD.CACUtility.BGBBuffGroups, registerVal10)
	registerVal11 = CoD.CACUtility.GetDLCIdForBubbleGum(registerVal7)
	local registerVal12 = CoD.CACUtility.GetDLCIdForBubbleGum(registerVal8)
	if CoD.isZombie and registerVal11 and registerVal11 and registerVal11 ~= registerVal12 then
		if registerVal11 ~= "" then
			local registerVal13 = Engine.HasEntitlement(arg0, registerVal11)
		end
		if registerVal12 ~= "" then
			local registerVal14 = Engine.HasEntitlement(arg0, registerVal12)
		end
		if true and not true then
			return true
		else
			if true and not true then
				return false
			else
				if not true and not true then
					local registerVal15 = CoD.SafeGetModelValue(arg1, "dlcIndex")
					local registerVal16 = CoD.SafeGetModelValue(arg2, "dlcIndex")
					if registerVal15 >= registerVal16 then
					end
					return true
				end
			end
		end
	end
	if CoD.WeaponListSessionMode ~= nil then
		registerVal12 = Engine.GetItemSortKey(registerVal7, CoD.WeaponListSessionMode)
		registerVal12 = Engine.GetItemSortKey(registerVal8, CoD.WeaponListSessionMode)
	else
		registerVal12 = Engine.GetItemSortKey(registerVal7)
		registerVal12 = Engine.GetItemSortKey(registerVal8)
	end
	if registerVal12 == registerVal12 then
		if registerVal7 >= registerVal8 then
		end
		return true
	else
		if registerVal12 >= registerVal12 then
		end
		return true
	end
end

CoD["UnlockablesDataSourceComparisonFunction"] = __FUNC_267E2_
local function __FUNC_26D76_(arg0, arg1)
	local registerVal2 = Engine.GetItemSortKey(arg0)
	local registerVal3 = Engine.GetItemSortKey(arg1)
	if registerVal2 == registerVal3 then
		if arg0 >= arg1 then
		end
		return true
	else
		if registerVal2 >= registerVal3 then
		end
		return true
	end
end

CoD["UnlockablesComparisonFunction"] = __FUNC_26D76_
local function __FUNC_26E2C_(arg0)
	local registerVal1 = CoD.PrestigeUtility.GetPermanentUnlockMode()
	local registerVal2 = Engine.GetUnlockablesByGroupName(arg0, registerVal1)
	table.sort(registerVal2, CoD.UnlockablesComparisonFunction)
	return registerVal2
end

CoD["GetUnlockablesByGroupName"] = __FUNC_26E2C_
local function __FUNC_26F7D_(arg0)
	local registerVal1 = Engine.GetUnlockablesBySlotName(arg0)
	table.sort(registerVal1, CoD.UnlockablesComparisonFunction)
	return registerVal1
end

CoD["GetUnlockablesBySlotName"] = __FUNC_26F7D_
local function __FUNC_2706F_()
	local registerVal0 = Engine.AreAllItemsFree()
	return (not registerVal0)
end

CoD["ShouldShowWeaponLevel"] = __FUNC_2706F_
local function __FUNC_270DD_(arg0, arg1, arg2, arg3)
	if arg3 then
		local registerVal5 = LUI.UIStreamedImage.new(nil, nil, true)
	else
		registerVal5 = LUI.UIImage.new()
	end
	registerVal5:setLeftRight(false, false, (-arg0 / 2), (arg0 / 2))
	registerVal5:setTopBottom(false, false, (-arg1 / 2), (arg1 / 2))
	if arg2 then
		registerVal5:setImage(RegisterMaterial(arg2))
	end
	return registerVal5
end

CoD["GetCenteredImage"] = __FUNC_270DD_
local function __FUNC_27261_(arg0, arg1)
	if arg1 then
		local registerVal3 = LUI.UIStreamedImage.new(nil, nil, true)
	else
		registerVal3 = LUI.UIImage.new()
	end
	registerVal3:setLeftRight(true, true, 0, 0)
	registerVal3:setTopBottom(true, true, 0, 0)
	if arg0 then
		registerVal3:setImage(RegisterMaterial(arg0))
	end
	return registerVal3
end

CoD["GetStretchedImage"] = __FUNC_27261_
local function __FUNC_273DD_(arg0, arg1, arg2, arg3, arg4)
	if arg1 then
	end
	if arg0 then
	end
	if arg4 then
	end
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, true, 0, 0)
	registerVal10:setTopBottom(true, false, arg4, (arg4 + CoD.textSize[arg0]))
	registerVal10:setFont(CoD.fonts[arg0])
	registerVal10:setAlignment(LUI.Alignment[arg1])
	if arg2 then
		registerVal10:setText(arg2)
	end
	if arg3 then
		registerVal10:setRGB(arg3.r, arg3.g, arg3.b)
	end
	return registerVal10
end

CoD["GetTextElem"] = __FUNC_273DD_
local function __FUNC_2767A_()
	local registerVal0 = LUI.UIElement.new()
	registerVal0:setLeftRight(true, true, 0, 0)
	registerVal0:setTopBottom(true, true, 0, 0)
	local registerVal1 = LUI.UIImage.new()
	registerVal1:setLeftRight(true, true, 1, -1)
	registerVal1:setTopBottom(true, true, 1, -1)
	registerVal1:setRGB(0, 0, 0)
	registerVal1:setAlpha(0.400000)
	registerVal0:addElement(registerVal1)
	registerVal0.infoContainerBackground = registerVal1
	local registerVal2 = LUI.UIImage.new()
	registerVal2:setLeftRight(true, true, 3, -3)
	registerVal2:setTopBottom(true, true, 3, -3)
	registerVal2:setImage(RegisterMaterial("menu_mp_cac_grad_stretch"))
	registerVal2:setAlpha(0.100000)
	registerVal0:addElement(registerVal2)
	registerVal0.infoContainerBackgroundGrad = registerVal2
	local registerVal3 = LUI.UIElement.new()
	registerVal3:setLeftRight(true, true, 3, -3)
	registerVal3:setTopBottom(true, true, 3, -3)
	registerVal0:addElement(registerVal3)
	registerVal0.imageContainer = registerVal3
	local registerVal4 = CoD.BorderT6.new(1, 1, 1, 1, 0.100000)
	registerVal0.border = registerVal4
	registerVal0:addElement(registerVal0.border)
	return registerVal0
end

CoD["GetInformationContainer"] = __FUNC_2767A_
local function __FUNC_27A42_(arg0)
	if arg0 == nil then
		return arg0
	end
	local registerVal1 = Dvar.loc_language:get()
	registerVal1 = Dvar.loc_language:get()
	if registerVal1 ~= CoD.LANGUAGE_JAPANESE and registerVal1 ~= CoD.LANGUAGE_FULLJAPANESE then
		registerVal1 = string.gsub(arg0, "0", "^BFONT_NUMBER_ZERO^")
		registerVal1 = string.gsub(registerVal1, "I", "^BFONT_CAPITAL_I^")
	end
	return registerVal1
end

CoD["ModifyTextForReadability"] = __FUNC_27A42_
local function __FUNC_27C09_(arg0, arg1)
	if arg1 then
	end
	local registerVal3 = CoD.GetCenteredImage(arg1, arg1, "lui_loader")
	local function __FUNC_27CDA_(arg0, arg1)
		arg0:close()
	end

	registerVal3:registerEventHandler(arg0, __FUNC_27CDA_)
	return registerVal3
end

CoD["GetSpinnerWaitingOnEvent"] = __FUNC_27C09_
local function __FUNC_27D1B_(arg0, arg1)
	if CoD.isZombie then
		local registerVal2 = Engine.StructTableLookupString(CoDShared.gametypesStructTable, "name", arg0, "name_ref")
		local registerVal3 = Engine.Localize(registerVal2)
		local registerVal4 = Engine.Localize((registerVal2 .. "_" .. arg1))
		local registerVal5 = string.match(registerVal4, (registerVal2 .. "_" .. arg1))
		if arg1 ~= nil and registerVal5 == nil then
		end
		return registerVal4
	end
end

CoD["GetZombieGameTypeName"] = __FUNC_27D1B_
local function __FUNC_27EDE_(arg0, arg1)
	if CoD.isZombie then
		local registerVal2 = Engine.StructTableLookupString(CoDShared.gametypesStructTable, "name", arg0, "description")
		local registerVal3 = Engine.Localize(registerVal2)
		local registerVal4 = string.gsub(registerVal2, "_CAPS", "")
		registerVal4 = Engine.Localize((registerVal4 .. "_" .. arg1 .. "_CAPS"))
		local registerVal5 = string.match(registerVal4, (registerVal4 .. "_" .. arg1 .. "_CAPS"))
		if arg1 ~= nil and registerVal5 == nil then
		end
		return registerVal4
	end
end

CoD["GetZombieGameTypeDescription"] = __FUNC_27EDE_
local function __FUNC_280F4_(arg0)
	local registerVal3, registerVal4, registerVal5 = string.gmatch(arg0, "[^%s]+")
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		local registerVal7 = tonumber(index6)
		{}[1] = (registerVal7 / CoD.emblem.MAX_COLOR_COMPONENT_VALUE)
	end
	return {}
end

CoD["NormalizeColor"] = __FUNC_280F4_
local function __FUNC_2820F_(arg0, arg1, arg2)
	return string.format("%d %d %d", (arg0 * CoD.emblem.MAX_COLOR_COMPONENT_VALUE), (arg1 * CoD.emblem.MAX_COLOR_COMPONENT_VALUE), (arg2 * CoD.emblem.MAX_COLOR_COMPONENT_VALUE))
end

CoD["ConvertColor"] = __FUNC_2820F_
local function __FUNC_28326_(arg0, arg1, arg2)
	if arg2 < arg0 then
	else
		if arg2 < arg1 then
		end
	end
	return arg1
end

CoD["ClampColor"] = __FUNC_28326_
local function __FUNC_28370_(arg0, arg1, arg2)
	local registerVal4 = math.max(0, arg2)
	local registerVal3 = math.min(registerVal4, 1)
	{}.r = ((arg0.r * (1 - registerVal3)) + (arg1.r * registerVal3))
	{}.g = ((arg0.g * (1 - registerVal3)) + (arg1.g * registerVal3))
	{}.b = ((arg0.b * (1 - registerVal3)) + (arg1.b * registerVal3))
	return {}
end

CoD["LerpColor"] = __FUNC_28370_
local function __FUNC_284B3_(arg0, arg1)
	local registerVal3 = math.floor(arg0)
	if arg0 or arg1 == 10 then
		return tostring(registerVal3)
	end
	if registerVal3 < 0 then
	end
	local registerVal7 = math.floor((-registerVal3 / arg1))
	table.insert({}, 1, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ":sub(((-registerVal3 % arg1) + 1), ((-registerVal3 % arg1) + 1)))
	registerVal7 = table.concat({}, "")
	return ("-" .. registerVal7)
end

CoD["BaseN"] = __FUNC_284B3_
local function __FUNC_28675_(arg0)
	local registerVal2, registerVal3, registerVal4 = string.gmatch(arg0, "%d+%.*%d*")
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		table.insert({}, tonumber(index5))
	end
	return {}
end

CoD["GetNumValuesFromSpaceSeparatedString"] = __FUNC_28675_
local function __FUNC_28758_(arg0, arg1)
	local registerVal2 = type(arg0)
	if registerVal2 == "string" then
		registerVal2 = CoD.GetNumValuesFromSpaceSeparatedString(arg0)
		if 0 < arg1 and arg1 <= #arg0 then
			return registerVal2[arg1]
		end
		return 0
	else
		if arg1 == 1 then
			return arg0
		else
			return 0
		end
	end
end

CoD["GetVectorComponentFromString"] = __FUNC_28758_
local function __FUNC_2885B_(arg0, arg1, arg2)
	if arg1 then
		local registerVal5 = {}
		registerVal5.name = "lose_focus"
		registerVal5.controller = arg0
		arg1:processEvent(registerVal5)
		arg1:makeNotFocusable()
	end
	if arg2 then
		arg2:makeFocusableWithoutResettingNavigation()
		registerVal5 = {}
		registerVal5.name = "gain_focus"
		registerVal5.controller = arg0
		arg2:processEvent(registerVal5)
	end
end

CoD["SwapFocusableElements"] = __FUNC_2885B_
local function __FUNC_28977_(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = arg1:getModel(arg0, arg2)
	local registerVal6 = arg3:getModel(arg0, arg4)
	if registerVal5 and registerVal6 then
		Engine.SetModelValue(registerVal6, Engine.GetModelValue(registerVal5))
	end
end

CoD["CopyModelValue"] = __FUNC_28977_
local function __FUNC_28A50_(arg0)
	local registerVal2 = math.floor((arg0 / 60000))
	return string.format("%d:%02d", registerVal2, ((arg0 - ((registerVal2 * 60) * 1000)) / 1000))
end

CoD["GetTimeText"] = __FUNC_28A50_
local function __FUNC_28B29_(arg0, arg1)
	if arg1 <= 0 then
		return arg0
	end
	local registerVal3, registerVal4 = math.modf((arg0 / arg1))
	local registerVal5 = math.floor((registerVal4 * 100))
	return (registerVal3 .. "." .. registerVal5)
end

CoD["GetKDRatio"] = __FUNC_28B29_
local function __FUNC_28BF0_(arg0)
	if not CoD.RandomPlayerCardsImageNames then
		local registerVal2 = {}
		registerVal2 = {"uie_t7_icon_callingcard_temp1_lrg", "uie_t7_icon_callingcard_temp2_lrg", "uie_t7_icon_callingcard_temp3_lrg", "uie_t7_icon_callingcard_temp4_lrg"}
		CoD.RandomPlayerCardsImageNames = registerVal2
	end
	if not CoD.RandomPlayerCardMapping then
		CoD.RandomPlayerCardMapping = {}
	end
	if not CoD.RandomPlayerCardMapping[arg0] then
		local registerVal3 = math.random(1, 2)
		CoD.RandomPlayerCardMapping[arg0] = registerVal3
	end
	return CoD.RandomPlayerCardsImageNames[CoD.RandomPlayerCardMapping[arg0]]
end

CoD["GetRandomPlayerCardBackingForPlayer"] = __FUNC_28BF0_
local function CoD.SafeGetModelValue(arg0, arg1)
	local registerVal2 = Engine.GetModel(arg0, arg1)
	local registerVal3 = Engine.GetModelValue(registerVal2)
	return registerVal3
end

local function CoD.GetScriptNotifyData(data)

	local model = Engine.GetModel(data, "numArgs")
	local value = Engine.GetModelValue(model)

	if value ~= nil and 0 < value then end

	for i=1, value, 1 do
		table.insert({}, CoD.SafeGetModelValue(data, ("arg" .. i)))
	end

	return {}

end

local function __FUNC_29065_(arg0, arg1, arg2, arg3, arg4)
	if not arg2 then
		local registerVal5 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	end
	if not registerVal5 then
		return nil
	end
	if arg3 then
	end
	if arg1 or #arg0 <= arg1 then
		return nil
	end
	local registerVal8 = registerVal5.contractsAAR[arg1].active:get()
	{}.isActive = registerVal8
	registerVal8 = registerVal5.contractsAAR[arg1].award_given:get()
	if registerVal8 ~= 1 then
	end
	{}.isAwardGiven = true
	registerVal8 = registerVal5.contractsAAR[arg1].index:get()
	{}.index = registerVal8
	registerVal8 = registerVal5.contractsAAR[arg1].progress:get()
	{}.progress = registerVal8
	registerVal8 = tonumber(Engine.TableLookup(arg0, CoD.contractTable_mp, 0, {}.index, 2))
	if not registerVal8 then
	end
	{}.targetValue = 0
	registerVal8 = tonumber(Engine.TableLookup(arg0, CoD.contractTable_mp, 0, {}.index, 6))
	if not registerVal8 then
	end
	{}.cost = 0
	registerVal8 = Engine.TableLookup(arg0, CoD.contractTable_mp, 0, {}.index, 3)
	local registerVal9 = Engine.TableLookup(arg0, CoD.contractTable_mp, 0, {}.index, 4)
	local registerVal10 = Engine.TableLookup(nil, CoD.contractTable_mp, 0, {}.index, 7)
	local registerVal11 = Engine.TableLookup(nil, CoD.contractTable_mp, 0, {}.index, 8)
	local registerVal12 = Engine.TableLookup(nil, CoD.contractTable_mp, 0, {}.index, 14)
	local registerVal13 = Engine.TableLookup(nil, CoD.contractTable_mp, 0, {}.index, 15)
	if registerVal8 == "" then
	end
	{}.descRef = ("CONTRACT_" .. "NULL" .. "_DESC")
	if registerVal9 ~= "" then
	end
	{}.titleRef = ("CONTRACT_" .. registerVal9)
	{}.category = ""
	{}.image = ""
	{}.backgroundId = 0
	{}.camoName = ""
	if registerVal10 ~= "" then
		local registerVal16 = CoD.getStatsMilestoneTable(6, Enum.eModes.MODE_MULTIPLAYER)
		local registerVal14 = Engine.TableLookup(nil, registerVal16, 4, registerVal10, 12)
		local registerVal15 = tonumber(Engine.TableLookup(nil, CoD.backgroundsTable, 4, registerVal14, 1))
		{}.backgroundId = registerVal15
		{}.category = "calling_card"
	else
		registerVal16 = CoD.getStatsMilestoneTable(6, Enum.eModes.MODE_MULTIPLAYER)
		registerVal14 = Engine.TableLookup(nil, registerVal16, 4, registerVal11, 9)
		registerVal15 = Engine.TableLookup(nil, CoD.attachmentTable, Enum.attachmentTableColumn_e.ATTACHMENTTABLE_COLUMN_REFERENCE, registerVal14, Enum.attachmentTableColumn_e.ATTACHMENTTABLE_COLUMN_IMAGE)
		{}.image = registerVal15
		registerVal15 = Engine.TableLookup(nil, CoD.attachmentTable, Enum.attachmentTableColumn_e.ATTACHMENTTABLE_COLUMN_REFERENCE, registerVal14, Enum.attachmentTableColumn_e.ATTACHMENTTABLE_COLUMN_NAME)
		{}.camoName = registerVal15
		{}.category = "camo"
		if registerVal11 ~= "" and arg4 then
			{}.image = ({}.image .. "_menu")
		end
	end
	if registerVal12 ~= "" then
		{}.image = registerVal12
	end
	if registerVal13 ~= "" then
		{}.category = registerVal13
	end
	return {}
end

CoD["GetContractStatValuesForIndex"] = __FUNC_29065_
local function __FUNC_299BF_(arg0, arg1)
	if not arg0 then
		return 
	end
	local registerVal3, registerVal4, registerVal5 = string.gmatch(arg1, "[%w_]+")
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		if not arg0[index6] then
			return 
		end
	end
	if not arg0[index6].statValue then
		return arg0[index6]:get()
	end
	if CoD.CombatRecordMode == "public" then
		registerVal5 = arg0[index6].statValue:get()
		local registerVal6 = arg0[index6].arenaValue:get()
		return (registerVal5 - registerVal6)
		if arg0[index6].arenaValue and CoD.CombatRecordMode == "arena" and arg0[index6].arenaValue then
			return arg0[index6].arenaValue:get()
		end
	end
	return arg0[index6].statValue:get()
end

CoD["GetCombatRecordStatForPath"] = __FUNC_299BF_
local function __FUNC_29B8E_(arg0, arg1)
	local registerVal2 = CoD.GetCombatRecordStatForPath(arg0, arg1)
	if registerVal2 == nil then
		return 0
	end
	return registerVal2
end

CoD["GetCombatRecordStatForPathOrZero"] = __FUNC_29B8E_
local function __FUNC_29C1F_()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = CoD.SafeGetModelValue(registerVal1, "combatRecordMode")
	if registerVal0 == "cp" then
		return Enum.eModes.MODE_CAMPAIGN
	else
		if registerVal0 == "zm" or registerVal0 == "doa" then
			return Enum.eModes.MODE_ZOMBIES
		else
			return Enum.eModes.MODE_MULTIPLAYER
		end
	end
end

CoD["GetCombatRecordMode"] = __FUNC_29C1F_
local function __FUNC_29DE8_()
	local registerVal0 = CoD.GetCombatRecordMode()
	if registerVal0 == Enum.eModes.MODE_MULTIPLAYER then
		return "mp"
	else
		if registerVal0 == Enum.eModes.MODE_CAMPAIGN then
			return "cp"
		else
			if registerVal0 == Enum.eModes.MODE_ZOMBIES then
				return "mp"
			end
		end
	end
end

CoD["GetCombatRecordModeAbbreviation"] = __FUNC_29DE8_
local function __FUNC_29F5B_(arg0)
	if CoD.CombatRecordOtherPlayerStats then
		return Engine.GetOtherPlayerStatsBuffer()
	else
		local registerVal2 = Engine.GetGlobalModel()
		local registerVal1 = CoD.SafeGetModelValue(registerVal2, "combatRecordMode")
		if registerVal1 == "cp" then
			return Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_CP_STATS_ONLINE)
		else
			registerVal2 = Engine.GetGlobalModel()
			registerVal1 = CoD.SafeGetModelValue(registerVal2, "combatRecordMode")
			if registerVal1 == "zm" then
				return Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_ZM_STATS_ONLINE)
			else
				return Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
			end
		end
	end
end

CoD["GetCombatRecordStats"] = __FUNC_29F5B_
local function __FUNC_2A23F_(arg0)
	if CoD.CombatRecordOtherPlayerStats then
		local registerVal2 = Engine.GetGlobalModel()
		local registerVal1 = CoD.SafeGetModelValue(registerVal2, "combatRecordMode")
		if registerVal1 == "cp" then
			return Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_CP_STATS_ONLINE)
		else
			registerVal2 = Engine.GetGlobalModel()
			registerVal1 = CoD.SafeGetModelValue(registerVal2, "combatRecordMode")
			if registerVal1 == "zm" then
				return Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_ZM_STATS_ONLINE)
			else
				return Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
			else
				return Engine.GetOtherPlayerStatsBuffer()
			end
		end
	end
end

CoD["GetCombatRecordComparisonStats"] = __FUNC_2A23F_
local function __FUNC_2A523_(arg0, arg1)
	if arg0 and arg1 then
		if arg1 == 0 then
		end
		if 100 <= (arg0 / 1) then
			return math.floor(((arg0 / 1) + 0.500000))
		else
			local registerVal5 = math.floor((((arg0 / 1) * 100) + 0.500000))
			return string.format("%.2f", (registerVal5 / 100))
		end
	end
	return ""
end

CoD["GetDisplayRatioFromTwoStats"] = __FUNC_2A523_
local function __FUNC_2A645_(arg0)
	if CoD.isFrontend then
		return 0
	end
	return Engine.GetLocalClientNum(arg0)
end

CoD["GetLocalClientAdjustedNum"] = __FUNC_2A645_
local function __FUNC_2A6FD_()
	if not DataSources then
		return 
	end
	local registerVal0 = Dvar.hls_quality:get()
	local registerVal1, registerVal2, registerVal3 = ipairs(CoD.LiveEventQualities)
	for index4,value5 in registerVal1, registerVal2, registerVal3 do
		local registerVal6 = DataSources.LiveEventViewer.getModel()
		local registerVal7 = Engine.GetModel(registerVal6, "currentQuality")
		if value5.qualityId == registerVal0 and registerVal6 and registerVal7 then
			Engine.SetModelValue(registerVal7, value5.display)
		end
	end
end

CoD["LiveEventUpdateCurrentFeed"] = __FUNC_2A6FD_
local function __FUNC_2A916_(arg0)
	StartLiveEvent(arg0.controller, arg0.liveEventStreamerIndex)
end

CoD["StartLiveEventFromData"] = __FUNC_2A916_
registerVal6 = {}
registerVal6["qualityId"] = "autodetect"
registerVal8 = Engine["Localize"]("MENU_MLG_QUALITY_AUTODETECT")
registerVal6["display"] = registerVal8
CoD["LiveEventAutoDetectQuality"] = registerVal6
local function __FUNC_2A9AC_(arg0)
	local registerVal2 = {}
	registerVal2 = {CoD.LiveEventAutoDetectQuality}
	CoD.LiveEventQualities = registerVal2
	local registerVal1 = {}
	registerVal1[CoD.LiveEventAutoDetectQuality.qualityId] = true
	if registerVal1 or arg0.availableQualities == "" then
		CoD.LiveEventUpdateCurrentFeed()
		return 
	end
	local registerVal5 = LUI.splitString(arg0.availableQualities, ";")
	local registerVal6, registerVal7, registerVal8 = ipairs(registerVal5)
	if  ~= "" then
		local registerVal11 = LUI.splitString(, ",")
		if # == 2 then
			local registerVal12 = LUI.splitString(registerVal11[2], "x")
			if #registerVal11[2] == 2 and not registerVal1[registerVal11[1]] then
				registerVal1[registerVal11[1]] = true
				local registerVal16 = IsMLGStream(Engine.GetPrimaryController())
				if false and registerVal16 then
					registerVal16 = Engine.Localize("MENU_MLG_QUALITY_BEST")
				else
					registerVal16 = Engine.Localize("MENU_MLG_QUALITY_NP", registerVal12[2])
					if not true and registerVal12[2] == "720" then
					end
				end
				local registerVal18 = {}
				registerVal18.qualityId = registerVal11[1]
				registerVal18.display = registerVal16
				table.insert(CoD.LiveEventQualities, registerVal18)
			else
				if #registerVal12 == 1 and not registerVal1[registerVal11[1]] then
					registerVal1[registerVal11[1]] = true
					local registerVal15 = {}
					registerVal15.qualityId = registerVal11[1]
					registerVal16 = Engine.Localize(("MENU_VOD_QUALITY_" .. registerVal11[1]))
					registerVal15.display = registerVal16
					table.insert(CoD.LiveEventQualities, registerVal15)
				end
			end
		end
	end
	registerVal6 = Dvar.hls_quality:get()
	if not registerVal1[registerVal6] then
		SelectLiveEventQuality_Internal(CoD.LiveEventAutoDetectQuality.qualityId)
	end
	CoD.LiveEventUpdateCurrentFeed()
	if DataSources and DataSources.LiveEventViewerQualities.Update then
		DataSources.LiveEventViewerQualities.Update()
	end
end

CoD["LiveEventNewQualities"] = __FUNC_2A9AC_
local function __FUNC_2AFBA_(arg0, arg1)
	local function __FUNC_2B29E_(arg0, arg1, arg2)
		arg0.textBox:beginAnimation("move", 0)
		arg0.currentXOffset = arg1
		arg0.updatingScroll = true
		local registerVal3 = IsCurrentLanguageReversed()
		if registerVal3 then
			arg0.textBox:setLeftRight(false, true, (arg0.currentXOffset - arg0.totalTextWidth), arg0.currentXOffset)
		else
			arg0.textBox:setLeftRight(true, false, -arg0.currentXOffset, (arg0.totalTextWidth - arg0.currentXOffset))
		end
		arg0.updatingScroll = false
	end

	local function __FUNC_2B459_(arg0)
		__FUNC_2B29E_(arg0, 0)
	end

	arg0.autoScrollStartDelay = 2500
	arg0.autoScrollSpeed = 0.400000
	arg0.autoScrollEndDelay = 2500
	arg0.rightStickScrollSpeed = 0.700000
	arg0.allowAutoScrolling = true
	arg0.allowRightStickScrolling = false
	arg0.currentXOffset = 0
	arg0.scrollDistance = 0
	local function __FUNC_2B499_()
	end

	__FUNC_2B499_()
	local function __FUNC_2B4E1_()
		local registerVal0 = arg0:getWidth()
		arg0.totalAreaWidth = registerVal0
		local registerVal2 = arg0.textBox:getTextWidth()
		arg0.totalTextWidth = registerVal2
		local registerVal1, registerVal2 = arg0.textBox:getLocalSize()
		arg0.textLineWidth = registerVal1
		arg0.scrollDistance = (arg0.totalTextWidth - registerVal0)
		__FUNC_2B459_(arg0)
		__FUNC_2B499_()
	end

	SetupAutoHorizontalAlignArabicText(arg0.textBox)
	LUI.OverrideFunction_CallOriginalFirst(arg0.textBox, "setText", __FUNC_2B4E1_)
	local function __FUNC_2B63E_()
		__FUNC_2B4E1_()
		if not arg0.updateTimer then
			local registerVal1 = Engine.GetModelForController(arg1)
			local registerVal0 = Engine.GetModel(registerVal1, "RightStick")
			if registerVal0 then
				local registerVal2 = Engine.GetModel(registerVal0, "X")
			end
			local function __FUNC_2B818_(arg1)
				if arg0.allowRightStickScrolling and registerVal2 then
					local registerVal2 = Engine.GetModelValue(registerVal2)
				end
				registerVal2 = math.abs((((-registerVal2 * arg0.rightStickScrollSpeed) / arg1.timeElapsed) * 1000))
				if 0.050000 < registerVal2 then
				else
					if true and arg0.autoScrollStartDelay <= (0 + arg1.timeElapsed) then
					end
				end
				if not false and 0 < arg0.autoScrollSpeed and arg0.allowAutoScrolling then
				end
				local registerVal3 = math.min((arg0.currentXOffset + ((arg0.autoScrollSpeed / arg1.timeElapsed) * 1000)), arg0.scrollDistance)
				registerVal2 = math.max(registerVal3, 0)
				if arg0.scrollDistance <= registerVal2 and not false and arg0.allowAutoScrolling and arg0.autoScrollEndDelay <= (0 + arg1.timeElapsed) then
					__FUNC_2B499_()
				end
				__FUNC_2B29E_(arg0, 0, 0)
			end

			local registerVal3 = LUI.UITimer.newElementTimer(100, false, __FUNC_2B818_)
			arg0.updateTimer = registerVal3
			arg0:addElement(arg0.updateTimer)
		end
	end

	arg0:addElement(LUI.UITimer.newElementTimer(0, true, __FUNC_2B63E_))
end

CoD["setupHorizontalScrollingWidget"] = __FUNC_2AFBA_
CoD["incentivesTable"] = "gamedata/store/common/incentives.csv"
local function __FUNC_2BBD8_(arg0)
	local registerVal3 = Engine.TableLookup(nil, CoD.incentivesTable, 2, arg0, 8)
	return registerVal3
end

CoD["GetPromoUnlockValue"] = __FUNC_2BBD8_
local function __FUNC_2BC99_(arg0)
	local registerVal2 = tonumber(CoD.GetPromoUnlockValue("bgbcc_tier1"))
	local registerVal3 = tonumber(CoD.GetPromoUnlockValue("bgbcc_tier2"))
	local registerVal4 = tonumber(CoD.GetPromoUnlockValue("bgbcc_tier3"))
	local registerVal5 = tonumber(CoD.GetPromoUnlockValue("bgbcc_tier4"))
	if registerVal5 and registerVal5 <= arg0 then
	else
		if registerVal4 and registerVal4 < arg0 then
		else
			if registerVal3 and registerVal3 < arg0 then
			else
				if registerVal2 and registerVal2 < arg0 then
				end
			end
		end
	end
	return 2
end

CoD["GetThermometerMilestoneTier"] = __FUNC_2BC99_
local function __FUNC_2BE51_(arg0)
	local registerVal5 = CoD.GetThermometerMilestoneTier(arg0)
	local registerVal6 = tonumber(CoD.GetPromoUnlockValue("bgbcc_tier1"))
	local registerVal7 = tonumber(CoD.GetPromoUnlockValue("bgbcc_tier2"))
	local registerVal8 = tonumber(CoD.GetPromoUnlockValue("bgbcc_tier3"))
	local registerVal9 = tonumber(CoD.GetPromoUnlockValue("bgbcc_tier4"))
	if registerVal5 ~= 1 or not registerVal6 then
		if registerVal5 == 2 and registerVal6 and not registerVal7 then
		end
	else
		if registerVal5 == 2 and registerVal6 and registerVal7 then
		else
			if registerVal5 == 3 and registerVal7 and registerVal8 then
			else
				if registerVal5 == 4 or registerVal5 == 5 then
					if registerVal8 and registerVal9 then
					end
				end
			end
		end
	end
	if 0 < (registerVal9 - registerVal8) then
	end
	return math.min(((((registerVal5 - 1) * 1) + (((arg0 - registerVal8) / (registerVal9 - registerVal8)) * 1)) / 4), 1)
end

CoD["CalculateThermometerProgress"] = __FUNC_2BE51_
local function __FUNC_2C102_()
	local registerVal0 = Dvar.ui_enablePromoMenu:get()
	if registerVal0 then
		registerVal0 = Dvar.ui_promoThermometerPercent:exists()
		registerVal0 = Dvar.ui_promoThermometerPercent:get()
		if registerVal0 and 0 < registerVal0 then
			return Dvar.ui_promoThermometerPercent:get()
		else
			registerVal0 = tonumber(Engine.GetCounterValue("zm_bgb_consumed"))
			local registerVal1 = CoD.CalculateThermometerProgress(registerVal0)
			local registerVal2 = math.floor((registerVal1 * 10000))
			return (registerVal2 / 10000)
		end
	end
	return 0
end

CoD["GetThermometerProgress"] = __FUNC_2C102_
local function __FUNC_2C325_()
	local registerVal0 = Dvar.ui_enablePromoMenu:get()
	if registerVal0 then
		registerVal0 = Dvar.ui_promoItemUnlockIndex:exists()
		registerVal0 = Dvar.ui_promoItemUnlockIndex:get()
		if registerVal0 and 0 < registerVal0 then
			return Dvar.ui_promoItemUnlockIndex:get()
		else
			registerVal0 = tonumber(Engine.GetCounterValue("zm_bgb_consumed"))
			local registerVal1 = CoD.GetThermometerMilestoneTier(registerVal0)
			return (registerVal1 - 1)
		end
	end
	return 0
end

CoD["GetThermometerUnlockIndex"] = __FUNC_2C325_
local function __FUNC_2C510_(arg0, arg1)
	local function __FUNC_2C78A_(arg0, arg1, arg2)
		arg0.textBox:beginAnimation("move", 0)
		arg0.currentYOffset = arg1
		arg0.updatingScroll = true
		arg0.textBox:setTopBottom(true, false, -arg0.currentYOffset, (arg0.textLineHeight - arg0.currentYOffset))
		arg0.updatingScroll = false
	end

	local function __FUNC_2C8CA_(arg0)
		__FUNC_2C78A_(arg0, 0)
	end

	arg0.autoScrollStartDelay = 5000
	arg0.autoScrollSpeed = 0.400000
	arg0.autoScrollEndDelay = 3000
	arg0.rightStickScrollSpeed = 0.700000
	arg0.allowAutoScrolling = true
	arg0.allowRightStickScrolling = true
	arg0.currentYOffset = 0
	arg0.scrollDistance = 0
	local function __FUNC_2C909_()
	end

	__FUNC_2C909_()
	local function __FUNC_2C951_()
		local registerVal0, registerVal1 = arg0:getLocalSize()
		arg0.totalAreaHeight = registerVal1
		local registerVal3 = arg0.textBox:getTextHeightForWidth(registerVal0)
		arg0.totalTextHeight = registerVal3
		local registerVal2, registerVal3 = arg0.textBox:getLocalSize()
		arg0.textLineHeight = registerVal3
		arg0.scrollDistance = (arg0.totalTextHeight - registerVal1)
		__FUNC_2C8CA_(arg0)
		__FUNC_2C909_()
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0.textBox, "setText", __FUNC_2C951_)
	local function __FUNC_2CAAC_()
		__FUNC_2C951_()
		if not arg0.updateTimer then
			local registerVal1 = Engine.GetModelForController(arg1)
			local registerVal0 = Engine.GetModel(registerVal1, "RightStick")
			if registerVal0 then
				local registerVal2 = Engine.GetModel(registerVal0, "Y")
			end
			local function __FUNC_2CC88_(arg1)
				if arg0.allowRightStickScrolling and registerVal2 then
					local registerVal2 = Engine.GetModelValue(registerVal2)
				end
				registerVal2 = math.abs((((-registerVal2 * arg0.rightStickScrollSpeed) / arg1.timeElapsed) * 1000))
				if 0.050000 < registerVal2 then
				else
					if true and arg0.autoScrollStartDelay <= (0 + arg1.timeElapsed) then
					end
				end
				if not false and 0 < arg0.autoScrollSpeed and arg0.allowAutoScrolling then
				end
				local registerVal3 = math.min((arg0.currentYOffset + ((arg0.autoScrollSpeed / arg1.timeElapsed) * 1000)), arg0.scrollDistance)
				registerVal2 = math.max(registerVal3, 0)
				if arg0.scrollDistance <= registerVal2 and not false and arg0.allowAutoScrolling and arg0.autoScrollEndDelay <= (0 + arg1.timeElapsed) then
					__FUNC_2C909_()
				end
				__FUNC_2C78A_(arg0, 0, 0)
			end

			local registerVal3 = LUI.UITimer.newElementTimer(100, false, __FUNC_2CC88_)
			arg0.updateTimer = registerVal3
			arg0:addElement(arg0.updateTimer)
		end
	end

	arg0:registerEventHandler("menu_loaded", __FUNC_2CAAC_)
end

CoD["setupVerticalScrollingTextWidget"] = __FUNC_2C510_
local function __FUNC_2D048_(arg0, arg1)
	if arg0[arg1] then
		arg0[arg1]:close()
		local registerVal2 = LUI.UIElement.new()
		arg0[arg1] = registerVal2
		arg0:addElement(arg0[arg1])
	end
end

CoD["ReplaceElementWithNothing"] = __FUNC_2D048_
require("ui.T6.Border")
require("ui.T6.ButtonLayoutOptions")
require("ui.T6.ButtonList")
require("ui.T6.ButtonPrompt")
require("ui.T6.CoDMenu")
require("ui.T6.CoDMetrics")
require("ui.T6.DvarLeftRightSelector")
require("ui.T6.DvarLeftRightSlider")
require("ui.T6.HintText")
require("ui.T6.Popup")
require("ui.T6.SplitscreenScaler")
require("ui.T6.StickLayoutOptions")
if CoD.isPC then
	require("ui.T6.Menus.KeyboardTextField")
end
CoD["disableRewards"] = true
