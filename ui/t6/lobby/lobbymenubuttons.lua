-- Decompiled with CoDLUIDecompiler by JariK

require("lua.Shared.LobbyData")
require("ui_mp.T6.Menus.CACUtility")
CoD.LobbyButtons = {}
CoD.LobbyButtons.DISABLED = 1.000000
CoD.LobbyButtons.HIDDEN = 2.000000
CoD.LobbyButtons.STARTERPACK_UPGRADE = 3.000000
local function __FUNC_3EA9_(arg0)
	local registerVal1 = Engine.GetMostRecentPlayedMode(Engine.GetPrimaryController())
	local registerVal2 = Engine.ToUpper(Dvar.ui_gametype:get())
	if registerVal1 == Enum.eModes.MODE_CAMPAIGN and registerVal2 == "DOA" then
		return true
	else
		if registerVal1 == Enum.eModes.MODE_CAMPAIGN and registerVal2 == "CPZM" then
			return true
		else
			if registerVal1 == Enum.eModes.MODE_MULTIPLAYER and registerVal2 == "FR" then
				return true
			end
		end
	end
	return false
end

local function __FUNC_40DA_(arg0)
	local registerVal1 = Engine.GetMostRecentPlayedMode(Engine.GetPrimaryController())
	local registerVal2 = __FUNC_3EA9_(arg0)
	if registerVal2 then
		return false
	end
	if registerVal1 ~= arg0 then
	end
	return true
end

IsMostRecentSessionMode = __FUNC_40DA_
function IsMpUnavailable()
	if CoD.isPC then
		local registerVal0 = Engine.IsMpOwned()
		return (not registerVal0)
	else
		return Engine.IsMpInitialStillDownloading()
	end
end

local function __FUNC_4287_()
	if CoD.isPC then
		local registerVal0 = Engine.IsMpOwned()
		local registerVal1 = Engine.GetLobbyNetworkMode()
		if registerVal1 ~= Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE then
		end
		local registerVal2 = Engine.IsShipBuild()
		local registerVal3 = Mods_IsUsingMods()
		if registerVal0 then
			if not registerVal3 and not true then
			else
			end
		end
		return true
	else
		registerVal0 = Engine.IsMpInitialStillDownloading()
		if not registerVal0 then
			registerVal0 = Engine.IsMpStillDownloading()
		end
		return registerVal0
	end
end

local function __FUNC_44B1_()
	if CoD.isPC then
		local registerVal0 = Engine.IsZmOwned()
		return (not registerVal0)
	else
		return Engine.IsZmInitialStillDownloading()
	end
end

local function __FUNC_458F_()
	if CoD.isPC then
		local registerVal0 = Engine.IsZmOwned()
		return (not registerVal0)
	else
		registerVal0 = Engine.IsZmInitialStillDownloading()
		if not registerVal0 then
			registerVal0 = Engine.IsZmStillDownloading()
		end
		return registerVal0
	end
end

function IsCpUnavailable()
	if CoD.isPC then
		local registerVal0 = Engine.IsCpOwned()
		return (not registerVal0)
	else
		return Engine.IsCpStillDownloading()
	end
end

local function __FUNC_477C_()
	local registerVal0 = Engine.IsCpStillDownloading()
	if not registerVal0 then
		registerVal0 = __FUNC_458F_()
	end
	return registerVal0
end

local function __FUNC_47FE_()
	local registerVal0 = IsMpUnavailable()
	if not registerVal0 then
		registerVal0 = Engine.IsMpStillDownloading()
	end
	return registerVal0
end

local function __FUNC_4897_()
	local registerVal0 = __FUNC_44B1_()
	if not registerVal0 then
		registerVal0 = Engine.IsZmStillDownloading()
	end
	return registerVal0
end

local function __FUNC_4916_()
	local registerVal0 = Engine.IsCpStillDownloading()
	registerVal0 = Engine.IsZmStillDownloading()
	if not registerVal0 and not registerVal0 then
		registerVal0 = Engine.IsMpStillDownloading()
	end
	return registerVal0
end

local function __FUNC_49FA_()
	local registerVal0 = Engine.GetLobbyClientCount(Enum.LobbyType.LOBBY_TYPE_GAME)
	registerVal0 = Engine.GetUsedControllerCount()
	registerVal0 = Engine.GetLobbyClientCount(Enum.LobbyType.LOBBY_TYPE_GAME)
	if 1.000000 >= registerVal0 and 1.000000 >= registerVal0 and registerVal0 ~= 0.000000 then
	end
	return true
end

function MPStartCustomButtonDisabled()
	local registerVal0 = MapVoteTimerActive()
	if registerVal0 then
		return true
	end
	registerVal0 = Engine.GetLobbyClientCount(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_GAME, Enum.LobbyClientType.LOBBY_CLIENT_TYPE_SPLITSCREEN_ALL)
	local registerVal1 = CompetitiveSettingsEnabled()
	if 0.000000 < registerVal0 and registerVal1 then
		return true
	end
	return CoD.LobbyUtility.IsSomePlayersDoNotHaveMapTextShowing()
end

function ZMStartCustomButtonDisabled()
	local registerVal0 = MapVoteTimerActive()
	if registerVal0 then
		return true
	end
	return CoD.LobbyUtility.IsSomePlayersDoNotHaveMapTextShowing()
end

local function __FUNC_4E81_()
	return false
end

function StoreButtonOpenSteamStore(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = IsStarterPack(arg2)
	if registerVal5 then
		OpenSteamStore(arg0, arg1, arg2, 437351.000000, arg4)
	else
		OpenSteamStore(arg0, arg1, arg2, arg3, arg4)
	end
end

local registerVal11 = {}
registerVal11.stringRef = "MENU_BONUSMODES"
registerVal11.action = OpenBonusModesFlyout
registerVal11.customId = "btnBonusModes"
registerVal11.selectedFunc = __FUNC_3EA9_
CoD.LobbyButtons.BONUSMODES_ONLINE = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_BONUSMODES"
registerVal11.action = OpenBonusModesFlyout
registerVal11.customId = "btnBonusModes"
registerVal11.selectedFunc = __FUNC_3EA9_
CoD.LobbyButtons.BONUSMODES_LAN = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_MODS_CAPS"
registerVal11.action = Mods_OpenLoadMenu
registerVal11.customId = "btnModsLoad"
registerVal11.starterPack = CoD.LobbyButtons.STARTERPACK_UPGRADE
CoD.LobbyButtons.MODS_LOAD = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_SINGLEPLAYER_CAPS"
registerVal11.action = NavigateCheckForFirstTime
local registerVal12 = {}
registerVal12.targetName = "CPLobbyOnline"
registerVal12.mode = Enum.eModes.MODE_CAMPAIGN
registerVal12.firstTimeFlowAction = OpenCPFirstTimeFlow
registerVal11.param = registerVal12
registerVal11.customId = "btnCP"
registerVal11.selectedFunc = IsMostRecentSessionMode
registerVal11.selectedParam = Enum.eModes.MODE_CAMPAIGN
registerVal11.starterPack = CoD.LobbyButtons.STARTERPACK_UPGRADE
registerVal11.disabledFunc = IsCpUnavailable
CoD.LobbyButtons.CP_ONLINE = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_SINGLEPLAYER_CAPS"
registerVal11.action = NavigateCheckForFirstTime
registerVal12 = {}
registerVal12.targetName = "CPLobbyLANGame"
registerVal12.mode = Enum.eModes.MODE_CAMPAIGN
registerVal12.firstTimeFlowAction = OpenCPFirstTimeFlow
registerVal11.param = registerVal12
registerVal11.customId = "btnCP"
registerVal11.selectedFunc = IsMostRecentSessionMode
registerVal11.selectedParam = Enum.eModes.MODE_CAMPAIGN
registerVal11.demo_gamescom = CoD.LobbyButtons.HIDDEN
registerVal11.starterPack = CoD.LobbyButtons.STARTERPACK_UPGRADE
registerVal11.disabledFunc = IsCpUnavailable
CoD.LobbyButtons.CP_LAN = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_SINGLEPLAYER_NIGHTMARES_CAPS"
registerVal11.action = NavigateToLobby_SelectionListCampaignZombies
registerVal12 = {}
registerVal12.targetName = "CP2LobbyOnline"
registerVal12.mode = Enum.eModes.MODE_CAMPAIGN
registerVal12.firstTimeFlowAction = OpenCPFirstTimeFlow
registerVal11.param = registerVal12
registerVal11.customId = "btnCPZM"
registerVal11.disabledFunc = __FUNC_477C_
registerVal11.starterPack = CoD.LobbyButtons.STARTERPACK_UPGRADE
registerVal11.visibleFunc = ShouldShowNightmares
CoD.LobbyButtons.CPZM_ONLINE = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_SINGLEPLAYER_NIGHTMARES_CAPS"
registerVal11.action = NavigateToLobby_SelectionListCampaignZombies
registerVal12 = {}
registerVal12.targetName = "CP2LobbyLANGame"
registerVal12.mode = Enum.eModes.MODE_CAMPAIGN
registerVal12.firstTimeFlowAction = OpenCPFirstTimeFlow
registerVal11.param = registerVal12
registerVal11.customId = "btnCPZM"
registerVal11.demo_gamescom = CoD.LobbyButtons.HIDDEN
registerVal11.disabledFunc = __FUNC_477C_
registerVal11.starterPack = CoD.LobbyButtons.STARTERPACK_UPGRADE
registerVal11.visibleFunc = ShouldShowNightmares
CoD.LobbyButtons.CPZM_LAN = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_MULTIPLAYER_CAPS"
registerVal11.action = NavigateCheckForFirstTime
registerVal12 = {}
registerVal12.targetName = "MPLobbyMain"
registerVal12.mode = Enum.eModes.MODE_MULTIPLAYER
registerVal12.firstTimeFlowAction = OpenMPFirstTimeFlow
registerVal11.param = registerVal12
registerVal11.customId = "btnMP"
registerVal11.selectedFunc = IsMostRecentSessionMode
registerVal11.selectedParam = Enum.eModes.MODE_MULTIPLAYER
registerVal11.disabledFunc = __FUNC_4287_
CoD.LobbyButtons.MP_ONLINE = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_MATCHMAKING_CAPS"
registerVal11.action = NavigateToLobby_SelectionList
registerVal11.param = "MPLobbyOnline"
registerVal11.customId = "btnPublicMatch"
registerVal11.disabledFunc = __FUNC_4287_
registerVal11.unloadMod = true
CoD.LobbyButtons.MP_PUBLIC_MATCH = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_ARENA_CAPS"
registerVal11.action = NavigateToLobby_SelectionList
registerVal11.param = "MPLobbyOnlineArena"
registerVal11.customId = "btnArena"
registerVal11.unloadMod = true
CoD.LobbyButtons.MP_ARENA = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_MULTIPLAYER_CAPS"
registerVal11.action = NavigateToLobby_SelectionList
registerVal11.param = "MPLobbyLANGame"
registerVal11.customId = "btnMP"
registerVal11.selectedFunc = IsMostRecentSessionMode
registerVal11.selectedParam = Enum.eModes.MODE_MULTIPLAYER
registerVal11.demo_gamescom = CoD.LobbyButtons.HIDDEN
registerVal11.disabledFunc = __FUNC_4287_
CoD.LobbyButtons.MP_LAN = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_ZOMBIES_CAPS"
registerVal11.action = NavigateToLobby_SelectionList
registerVal11.param = "ZMLobbyOnline"
registerVal11.customId = "btnZM"
registerVal11.selectedFunc = IsMostRecentSessionMode
registerVal11.selectedParam = Enum.eModes.MODE_ZOMBIES
registerVal11.disabledFunc = __FUNC_458F_
registerVal11.starterPack = CoD.LobbyButtons.STARTERPACK_UPGRADE
CoD.LobbyButtons.ZM_ONLINE = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_ZOMBIES_CAPS"
registerVal11.action = NavigateToLobby_SelectionList
registerVal11.param = "ZMLobbyLANGame"
registerVal11.customId = "btnZM"
registerVal11.selectedFunc = IsMostRecentSessionMode
registerVal11.selectedParam = Enum.eModes.MODE_ZOMBIES
registerVal11.demo_gamescom = CoD.LobbyButtons.HIDDEN
registerVal11.disabledFunc = __FUNC_44B1_
registerVal11.starterPack = CoD.LobbyButtons.STARTERPACK_UPGRADE
CoD.LobbyButtons.ZM_LAN = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_FREERUN_CAPS"
registerVal11.action = NavigateToLobby_SelectionList
registerVal11.param = "FRLobbyLANGame"
registerVal11.customId = "btnFRLan"
registerVal11.selectedFunc = IsMostRecentSessionMode
registerVal11.selectedParam = Enum.eModes.MODE_MULTIPLAYER
registerVal11.disabledFunc = IsMpUnavailable
CoD.LobbyButtons.FR_LAN = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_THEATER_CAPS"
registerVal11.action = NavigateToLobby_SelectionList
registerVal11.param = "MPLobbyOnlineTheater"
registerVal11.customId = "btnTheater"
registerVal11.disabledFunc = __FUNC_47FE_
registerVal11.unloadMod = true
CoD.LobbyButtons.THEATER_MP = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_THEATER_CAPS"
registerVal11.action = NavigateToLobby_SelectionList
registerVal11.param = "ZMLobbyOnlineTheater"
registerVal11.customId = "btnTheater"
registerVal11.disabledFunc = __FUNC_4897_
registerVal11.unloadMod = true
CoD.LobbyButtons.THEATER_ZM = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_PLAY_LOCAL_CAPS"
registerVal11.action = OpenLobbyToggleNetworkConfirmation
registerVal11.customId = "btnPlayLocal"
CoD.LobbyButtons.PLAY_LOCAL = registerVal11
registerVal11 = {}
registerVal11.stringRef = "XBOXLIVE_PLAY_ONLINE_CAPS"
registerVal11.action = OpenLobbyToggleNetworkConfirmation
registerVal11.customId = "btnPlayLocal"
registerVal11.disabledFunc = CoD.LobbyBase.ChunkAllDownloading
CoD.LobbyButtons.PLAY_ONLINE = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_STORE_CAPS"
registerVal11.action = OpenStore
registerVal11.customId = "btnStore"
registerVal11.param = "StoreButton"
registerVal11.disabledFunc = DisableStore
CoD.LobbyButtons.STORE = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_STORE_CAPS"
registerVal11.action = StoreButtonOpenSteamStore
registerVal11.customId = "btnSteamStore"
registerVal11.param = "StoreButton"
registerVal11.disabledFunc = DisableSteamStore
CoD.LobbyButtons.STEAM_STORE = registerVal11
registerVal11 = {}
registerVal11.stringRef = "PLATFORM_FIND_LAN_GAME"
registerVal11.action = OpenFindLANGame
registerVal11.customId = "btnFindGame"
CoD.LobbyButtons.FIND_LAN_GAME = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_QUIT_CAPS"
registerVal11.action = OpenPCQuit
registerVal11.customId = "btnQuit"
CoD.LobbyButtons.QUIT = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_BLACK_MARKET"
registerVal11.action = OpenBlackMarket
registerVal11.customId = "btnBlackMarket"
registerVal11.newBreadcrumbFunc = IsBlackMarketBreadcrumbActive
registerVal11.disabledFunc = DisableBlackMarket
CoD.LobbyButtons.BLACK_MARKET = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_START_GAME_CAPS"
registerVal11.action = StartNewGame
registerVal11.customId = "btnStartMatch"
registerVal11.starterPack = CoD.LobbyButtons.STARTERPACK_UPGRADE
CoD.LobbyButtons.CP_START_GAME = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_START_GAME_CAPS"
registerVal11.action = StartNewGame
registerVal11.customId = "btnStartMatch"
registerVal11.starterPack = CoD.LobbyButtons.STARTERPACK_UPGRADE
CoD.LobbyButtons.CP_LAN_START_GAME = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_RESUMESTORY_CAPS"
registerVal11.action = ResumeFromCheckpoint
registerVal11.customId = "btnResumeGame"
registerVal11.starterPack = CoD.LobbyButtons.STARTERPACK_UPGRADE
CoD.LobbyButtons.CP_RESUME_GAME = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_GOTO_SAFEHOUSE_CAPS"
registerVal11.action = GotoSafehouse
registerVal11.customId = "btnGotoSafehouse"
registerVal11.starterPack = CoD.LobbyButtons.STARTERPACK_UPGRADE
CoD.LobbyButtons.CP_GOTO_SAFEHOUSE = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_RESUMESTORY_CAPS"
registerVal11.action = ResumeFromCheckpoint
registerVal11.customId = "btnResumeGame"
registerVal11.starterPack = CoD.LobbyButtons.STARTERPACK_UPGRADE
CoD.LobbyButtons.CP_RESUME_GAME_LAN = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_REPLAY_MISSION_CAPS"
registerVal11.action = ReplaySelectedMission
registerVal11.customId = "btnReplayMission"
registerVal11.starterPack = CoD.LobbyButtons.STARTERPACK_UPGRADE
CoD.LobbyButtons.CP_LAN_REPLAY_MISSION = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_JOIN_PUBLIC_GAME_CAPS"
registerVal11.action = OpenPublicGameSelect
registerVal11.customId = "btnJoinPublicGame"
registerVal11.starterPack = CoD.LobbyButtons.STARTERPACK_UPGRADE
registerVal11.unloadMod = true
CoD.LobbyButtons.CP_JOIN_PUBLIC_GAME = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_MISSION_OVERVIEW_CAP"
registerVal11.action = OpenMissionOverview
registerVal11.customId = "btnMissionOverview"
registerVal11.disabledFunc = GrayOutMissionOverviewButton
registerVal11.starterPack = CoD.LobbyButtons.STARTERPACK_UPGRADE
CoD.LobbyButtons.CP_MISSION_OVERVIEW = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_SELECT_MISSION_CAPS"
registerVal11.action = OpenMissionSelect
registerVal11.customId = "btnSelectMission"
registerVal11.disabledFunc = GrayOutReplayMissionButton
registerVal11.starterPack = CoD.LobbyButtons.STARTERPACK_UPGRADE
CoD.LobbyButtons.CP_SELECT_MISSION = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_CHANGE_DIFFICULTY_CAPS"
registerVal11.action = OpenDifficultySelect
registerVal11.customId = "btnChooseDifficulty"
registerVal11.starterPack = CoD.LobbyButtons.STARTERPACK_UPGRADE
CoD.LobbyButtons.CP_CHOOSE_DIFFICULTY = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_START_GAME_CAPS"
registerVal11.action = LobbyOnlineCustomLaunchGame_SelectionList
registerVal11.customId = "btnStartGame"
registerVal11.starterPack = CoD.LobbyButtons.STARTERPACK_UPGRADE
CoD.LobbyButtons.CP_CUSTOM_START_GAME = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_START_GAME_CAPS"
registerVal11.action = StartNewGame
registerVal11.customId = "btnStartMatch"
registerVal11.starterPack = CoD.LobbyButtons.STARTERPACK_UPGRADE
CoD.LobbyButtons.CPZM_START_GAME = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_RESUMESTORY_CAPS"
registerVal11.action = ResumeFromCheckpoint
registerVal11.customId = "btnResumeGame"
registerVal11.starterPack = CoD.LobbyButtons.STARTERPACK_UPGRADE
CoD.LobbyButtons.CPZM_RESUME_GAME = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MPUI_FIND_MATCH_CAPS"
registerVal11.action = OpenFindMatch
registerVal11.customId = "btnFindMatch"
registerVal11.starterPack = CoD.LobbyButtons.STARTERPACK_UPGRADE
registerVal11.unloadMod = true
CoD.LobbyButtons.CPZM_FIND_MATCH = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_SELECT_MISSION_CAPS"
registerVal11.action = OpenMissionSelect
registerVal11.customId = "btnSelectMission"
registerVal11.disabledFunc = GrayOutReplayMissionButton
registerVal11.demo_CP = CoD.LobbyButtons.HIDDEN
registerVal11.starterPack = CoD.LobbyButtons.STARTERPACK_UPGRADE
CoD.LobbyButtons.CPZM_SELECT_MISSION = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MPUI_FIND_MATCH_CAPS"
registerVal11.action = OpenFindMatch
registerVal11.customId = "btnFindMatch"
registerVal11.disabledFunc = __FUNC_4287_
registerVal11.unloadMod = true
CoD.LobbyButtons.MP_FIND_MATCH = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_CUSTOMGAMES_CAPS"
registerVal11.action = NavigateToLobby_SelectionList
registerVal11.param = "MPLobbyOnlineCustomGame"
registerVal11.customId = "btnCustomMatch"
registerVal11.starterPack = CoD.LobbyButtons.STARTERPACK_UPGRADE
CoD.LobbyButtons.MP_CUSTOM_GAMES = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_CREATE_A_CLASS_CAPS"
registerVal11.action = OpenCAC
registerVal11.customId = "btnCAC"
registerVal11.newBreadcrumbFunc = "IsCACAnythingInCACItemNew"
registerVal11.warningFunc = CoD.CACUtility.AnyClassContainsRestrictedItems
CoD.LobbyButtons.MP_CAC = registerVal11
registerVal11 = {}
registerVal11.stringRef = CoD.LobbyButtons.MP_CAC.stringRef
registerVal11.action = CoD.LobbyButtons.MP_CAC.action
registerVal11.customId = CoD.LobbyButtons.MP_CAC.customId
registerVal11.newBreadcrumbFunc = CoD.LobbyButtons.MP_CAC.newBreadcrumbFunc
CoD.LobbyButtons.MP_CAC_NO_WARNING = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MPUI_HEROES_CAPS"
registerVal11.action = OpenChooseCharacterLoadout
registerVal11.param = LuaEnums.CHOOSE_CHARACTER_OPENED_FROM.LOBBY
registerVal11.customId = "btnSpecialists"
registerVal11.newBreadcrumbFunc = IsCACAnySpecialistsNew
registerVal11.warningFunc = EquippedSpecialistBanned
CoD.LobbyButtons.MP_SPECIALISTS = registerVal11
registerVal11 = {}
registerVal11.stringRef = CoD.LobbyButtons.MP_SPECIALISTS.stringRef
registerVal11.action = CoD.LobbyButtons.MP_SPECIALISTS.action
registerVal11.param = CoD.LobbyButtons.MP_SPECIALISTS.param
registerVal11.customId = CoD.LobbyButtons.MP_SPECIALISTS.customId
registerVal11.newBreadcrumbFunc = CoD.LobbyButtons.MP_SPECIALISTS.newBreadcrumbFunc
CoD.LobbyButtons.MP_SPECIALISTS_NO_WARNING = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_SCORE_STREAKS_CAPS"
registerVal11.action = OpenScorestreaks
registerVal11.customId = "btnScorestreaks"
registerVal11.newBreadcrumbFunc = IsCACAnyScorestreaksNew
registerVal11.warningFunc = CoD.CACUtility.AnyEquippedScorestreaksBanned
CoD.LobbyButtons.MP_SCORESTREAKS = registerVal11
registerVal11 = {}
registerVal11.stringRef = "CODCASTER_CAPS"
registerVal11.action = OpenEditCodcasterSettings
registerVal11.customId = "btnCodcasterSettings"
registerVal11.disabledFunc = ShouldDisableEditCodCasterSettingsButton
registerVal11.visibleFunc = ShouldShowEditCodCasterSettingsButton
CoD.LobbyButtons.MP_CODCASTER_SETTINGS = registerVal11
registerVal11 = {}
registerVal11.stringRef = "DW Inventory Test"
registerVal11.action = OpenTest
registerVal11.customId = "btnInventoryTest"
CoD.LobbyButtons.MP_INVENTORY_TEST = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_CUSTOM_LOBBY_LEADERBOARDS_CAPS"
registerVal11.action = OpenMPPublicLobbyLeaderboard
registerVal11.customId = "btnLobbyLeaderboard"
CoD.LobbyButtons.MP_PUBLIC_LOBBY_LEADERBOARD = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_CUSTOM_LOBBY_LEADERBOARDS_CAPS"
registerVal11.action = OpenMPCustomLobbyLeaderboard
registerVal11.customId = "btnLobbyLeaderboard"
CoD.LobbyButtons.MP_CUSTOM_LOBBY_LEADERBOARD = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_START_GAME_CAPS"
registerVal11.action = LobbyOnlineCustomLaunchGame_SelectionList
registerVal11.customId = "btnStartGame"
registerVal11.disabledFunc = MPStartCustomButtonDisabled
registerVal11.starterPack = CoD.LobbyButtons.STARTERPACK_UPGRADE
CoD.LobbyButtons.MP_CUSTOM_START_GAME = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MPUI_SETUP_GAME_CAPS"
registerVal11.action = OpenSetupGameMP
registerVal11.customId = "btnSetupGame"
registerVal11.disabledFunc = MapVoteTimerActive
CoD.LobbyButtons.MP_CUSTOM_SETUP_GAME = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_FIND_ARENA_MATCH_CAPS"
registerVal11.action = NavigateToLobby_SelectionList
registerVal11.param = "MPLobbyOnlineArenaGame"
registerVal11.customId = "btnArenaFindMatch"
registerVal11.disabledFunc = __FUNC_4287_
registerVal11.unloadMod = true
CoD.LobbyButtons.MP_ARENA_FIND_MATCH = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_SELECT_ARENA_CAPS"
registerVal11.action = OpenCompetitivePlaylist
registerVal11.customId = "btnSelectArena"
registerVal11.disabledFunc = __FUNC_4287_
registerVal11.unloadMod = true
CoD.LobbyButtons.MP_ARENA_SELECT_ARENA = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_LEADERBOARDS_CAPS"
registerVal11.action = OpenArenaMasterLeaderboards
registerVal11.actionParam = 0.000000
registerVal11.customId = "btnLeaderboards"
local function __FUNC_4F64_()
	return IsBooleanDvarSet("tu1_build")
end

registerVal11.disabledFunc = __FUNC_4F64_
CoD.LobbyButtons.MP_ARENA_LEADERBOARD = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_FREERUN_CAPS"
registerVal11.action = NavigateToLobby_SelectionList
registerVal11.param = "FRLobbyOnlineGame"
registerVal11.customId = "btnFROnline"
registerVal11.disabledFunc = IsMpUnavailable
CoD.LobbyButtons.FR_ONLINE = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_LEADERBOARDS_CAPS"
registerVal11.action = OpenFreerunLeaderboards
registerVal11.actionParam = 0.000000
registerVal11.customId = "btnLeaderboards"
local function __FUNC_4FCD_()
	return IsBooleanDvarSet("tu1_build")
end

registerVal11.disabledFunc = __FUNC_4FCD_
CoD.LobbyButtons.FR_LEADERBOARD = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_SOLO_GAME_CAPS"
registerVal11.action = OpenZMMapSelectLaunch
registerVal11.customId = "btnSoloMatch"
registerVal11.starterPack = CoD.LobbyButtons.STARTERPACK_UPGRADE
CoD.LobbyButtons.ZM_SOLO_GAME = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_JOIN_PUBLIC_GAME_CAPS"
registerVal11.action = OpenZMFindMatch
registerVal11.customId = "btnFindMatch"
registerVal11.starterPack = CoD.LobbyButtons.STARTERPACK_UPGRADE
registerVal11.unloadMod = true
CoD.LobbyButtons.ZM_FIND_MATCH = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MENU_PRIVATE_GAME_CAPS"
registerVal11.action = NavigateToLobby_SelectionList
registerVal11.param = "ZMLobbyOnlineCustomGame"
registerVal11.customId = "btnCustomMatch"
registerVal11.starterPack = CoD.LobbyButtons.STARTERPACK_UPGRADE
CoD.LobbyButtons.ZM_CUSTOM_GAMES = registerVal11
registerVal11 = {}
registerVal11.stringRef = "MPUI_VOTE_TO_START_CAPS"
registerVal11.action = SetPlayerReady
registerVal11.customId = "btnReadyUp"
registerVal11.disabledFunc = __FUNC_4E81_
CoD.LobbyButtons.ZM_READY_UP = registerVal11
registerVal12 = {}
registerVal12.stringRef = "MENU_BUBBLEGUM_BUFFS_CAPS"
registerVal12.action = OpenBubbleGumPacksMenu
registerVal12.customId = "btnBubblegumBuffs"
registerVal12.newBreadcrumbFunc = IsCACAnyBubblegumNew
registerVal12.starterPack = CoD.LobbyButtons.STARTERPACK_UPGRADE
CoD.LobbyButtons["ZM_BUBBLEGUM_BUFFS"] = registerVal12
registerVal12 = {}
registerVal12.stringRef = "MENU_MEGACHEW_FACTORY_CAPS"
registerVal12.action = OpenMegaChewFactorymenu
registerVal12.customId = "btnMegaChewFactory"
registerVal12.starterPack = CoD.LobbyButtons.STARTERPACK_UPGRADE
CoD.LobbyButtons["ZM_MEGACHEW_FACTORY"] = registerVal12
registerVal12 = {}
registerVal12.stringRef = "MENU_NEWTONS_COOKBOOK_CAPS"
registerVal12.action = OpenGobbleGumCookbookMenu
registerVal12.customId = "btnGobbleGumRecipes"
local function __FUNC_5035_()
	return IsIntDvarNonZero("tu18_enable_newtons_cookbook")
end

registerVal12.visibleFunc = __FUNC_5035_
registerVal12.newBreadcrumbFunc = IsNewtonsCookbookBreadcrumbActive
CoD.LobbyButtons["ZM_GOBBLEGUM_RECIPES"] = registerVal12
registerVal12 = {}
registerVal12.stringRef = "MENU_WEAPON_BUILD_KITS_CAPS"
registerVal12.action = OpenWeaponBuildKits
registerVal12.customId = "btnWeaponBuildKits"
registerVal12.newBreadcrumbFunc = Gunsmith_AnyNewWeaponsOrAttachments
registerVal12.starterPack = CoD.LobbyButtons.STARTERPACK_UPGRADE
CoD.LobbyButtons["ZM_BUILD_KITS"] = registerVal12
registerVal12 = {}
registerVal12.stringRef = "MENU_LOBBY_LEADERBOARD_CAPS"
registerVal12.action = LobbyNoAction
registerVal12.customId = "btnLobbyLeaderboard"
local function __FUNC_50B0_()
	return IsBooleanDvarSet("tu1_build")
end

registerVal12.disabledFunc = __FUNC_50B0_
CoD.LobbyButtons["ZM_LOBBY_LEADERBOARD"] = registerVal12
registerVal12 = {}
registerVal12.stringRef = "MENU_START_GAME_CAPS"
registerVal12.action = LobbyOnlineCustomLaunchGame_SelectionList
registerVal12.customId = "btnStartCustomGame"
registerVal12.disabledFunc = ZMStartCustomButtonDisabled
registerVal12.starterPack = CoD.LobbyButtons.STARTERPACK_UPGRADE
CoD.LobbyButtons["ZM_START_CUSTOM_GAME"] = registerVal12
registerVal12 = {}
registerVal12.stringRef = "MENU_START_GAME_CAPS"
registerVal12.action = LobbyLANLaunchGame
registerVal12.customId = "btnStartLanGame"
registerVal12.disabledFunc = MapVoteTimerActive
registerVal12.starterPack = CoD.LobbyButtons.STARTERPACK_UPGRADE
CoD.LobbyButtons["ZM_START_LAN_GAME"] = registerVal12
registerVal12 = {}
registerVal12.stringRef = "MPUI_CHANGE_MAP_CAPS"
registerVal12.action = OpenChangeMapZM
registerVal12.customId = "btnChangeMap"
registerVal12.disabledFunc = MapVoteTimerActive
registerVal12.starterPack = CoD.LobbyButtons.STARTERPACK_UPGRADE
CoD.LobbyButtons["ZM_CHANGE_MAP"] = registerVal12
registerVal12 = {}
registerVal12.stringRef = "MENU_CHANGE_RANKED_SETTINGS_CAPS"
registerVal12.action = OpenChangeRankedSettingsPopup
registerVal12.customId = "btnChangeRankedSettings"
registerVal12.starterPack = CoD.LobbyButtons.STARTERPACK_UPGRADE
CoD.LobbyButtons["ZM_CHANGE_RANKED_SETTTINGS"] = registerVal12
registerVal12 = {}
registerVal12.stringRef = "PLATFORM_SERVER_SETTINGS_CAPS"
registerVal12.action = OpenServerSettings
registerVal12.customId = "btnServerSettings"
registerVal12.starterPack = CoD.LobbyButtons.STARTERPACK_UPGRADE
CoD.LobbyButtons["ZM_SERVER_SETTINGS"] = registerVal12
registerVal12 = {}
registerVal12.stringRef = "MENU_START_RUN_CAPS"
registerVal12.action = LobbyOnlineCustomLaunchGame_SelectionList
registerVal12.customId = "btnStartRun"
registerVal12.disabledFunc = MapVoteTimerActive
CoD.LobbyButtons["FR_START_RUN_ONLINE"] = registerVal12
registerVal12 = {}
registerVal12.stringRef = "MENU_START_RUN_CAPS"
registerVal12.action = LobbyLANLaunchGame
registerVal12.customId = "btnStartRun"
registerVal12.disabledFunc = MapVoteTimerActive
CoD.LobbyButtons["FR_START_RUN_LAN"] = registerVal12
registerVal12 = {}
registerVal12.stringRef = "MENU_FREERUN_COURSES_CAPS"
registerVal12.action = OpenFreerunMapSelection
registerVal12.customId = "btnChangeMap"
registerVal12.disabledFunc = MapVoteTimerActive
CoD.LobbyButtons["FR_CHANGE_MAP"] = registerVal12
registerVal12 = {}
registerVal12.stringRef = "MENU_START_CAPS"
registerVal12.action = LobbyTheaterStartFilm
registerVal12.customId = "btnStartFilm"
registerVal12.disabledFunc = IsStartFilmButtonDisabled
CoD.LobbyButtons["TH_START_FILM"] = registerVal12
registerVal12 = {}
registerVal12.stringRef = "MENU_SELECT_CAPS"
registerVal12.action = OpenTheaterSelectFilm
registerVal12.customId = "btnSelectFilm"
registerVal12.disabledFunc = MapVoteTimerActive
registerVal12.selectedFunc = IsFilmNotSelected
CoD.LobbyButtons["TH_SELECT_FILM"] = registerVal12
registerVal12 = {}
registerVal12.stringRef = "MPUI_HIGHLIGHT_REEL_CAPS"
registerVal12.action = LobbyTheaterCreateHighlightReel
registerVal12.customId = "btnCreateHighlightReel"
registerVal12.disabledFunc = IsCreateHighlightReelButtonDisabled
CoD.LobbyButtons["TH_CREATE_HIGHLIGHT"] = registerVal12
registerVal12 = {}
registerVal12.stringRef = "MPUI_SHOUTCAST_FILM_CAPS"
registerVal12.action = LobbyTheaterShoutcastFilm
registerVal12.customId = "btnCoDCastFilm"
registerVal12.disabledFunc = IsShoutcastFilmButtonDisabled
CoD.LobbyButtons["TH_SHOUTCAST"] = registerVal12
registerVal12 = {}
registerVal12.stringRef = "MENU_DEMO_RENDER_CLIP_CAPS"
registerVal12.customId = "btnRenderVideo"
registerVal12.disabledFunc = AlwaysTrue
CoD.LobbyButtons["TH_RENDER"] = registerVal12
registerVal12 = {}
registerVal12.stringRef = "MENU_FILM_OPTIONS"
registerVal12.customId = "btnFilmOptions"
registerVal12.disabledFunc = AlwaysTrue
CoD.LobbyButtons["TH_OPTIONS"] = registerVal12
registerVal12 = {}
registerVal12.stringRef = "MENU_START_GAME_CAPS"
registerVal12.action = StartDOAGame
registerVal12.customId = "bthDOAStartMatch"
CoD.LobbyButtons["CP_DOA_START_GAME"] = registerVal12
registerVal12 = {}
registerVal12.stringRef = "MENU_JOIN_PUBLIC_GAME_CAPS"
registerVal12.action = LaunchDOAJoin
registerVal12.customId = "btnJoinPublicGame"
registerVal12.unloadMod = true
CoD.LobbyButtons["CP_DOA_JOIN_PUBLIC_GAME"] = registerVal12
registerVal12 = {}
registerVal12.stringRef = "MENU_CREATE_PUBLIC_GAME_CAPS"
registerVal12.action = LaunchDOACreate
registerVal12.customId = "btnJCreatePublicGame"
registerVal12.unloadMod = true
local function __FUNC_5119_()
	local registerVal0 = Engine.GetPrimaryController()
	local registerVal1 = Engine.GetLobbyMaxClients(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal2, registerVal3 = Engine.CanHostServer(registerVal0, registerVal1)
	return (not registerVal1)
end

registerVal12.disabledFunc = __FUNC_5119_
CoD.LobbyButtons["CP_DOA_CREATE_PUBLIC_GAME"] = registerVal12
registerVal12 = {}
registerVal12.stringRef = "MENU_LEADERBOARDS_CAPS"
registerVal12.action = OpenDOALeaderboards
registerVal12.actionParam = 0.000000
registerVal12.customId = "btnLeaderboards"
local function __FUNC_5247_()
	return IsBooleanDvarSet("tu1_build")
end

registerVal12.disabledFunc = __FUNC_5247_
CoD.LobbyButtons["CP_DOA_LEADERBOARD"] = registerVal12
