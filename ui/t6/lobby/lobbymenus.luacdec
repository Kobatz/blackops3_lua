-- Decompiled with CoDLUIDecompiler by JariK

require("lua.Shared.LobbyData")
require("ui.T6.lobby.lobbymenubuttons")
CoD.LobbyMenus = {}
CoD.LobbyMenus.History = {}
function CoD.LobbyMenus.AddButtons(arg0, arg1, arg2, arg3)
	local registerVal5 = DataSources.LobbyRoot.getModel(arg0)
	local registerVal4 = Engine.GetModel(registerVal5, arg1)
	if registerVal4 ~= nil then
		local registerVal6 = Engine.GetModelValue(registerVal4)
	end
	if arg3 ~= nil then
		arg3(arg0, arg2, registerVal6)
	else
		print("Error: No function provided to CoD.LobbyMenus.AddButtons")
	end
end

function CoD.LobbyMenus.AddButtonsMPCPZM(arg0, arg1, arg2, arg3, arg4, arg5)
	local registerVal6 = Engine.GetModeName()
	if registerVal6 == "CP" then
		CoD.LobbyMenus.AddButtons(arg0, arg1, arg2, arg4)
	else
		registerVal6 = Engine.GetModeName()
		if registerVal6 == "MP" then
			CoD.LobbyMenus.AddButtons(arg0, arg1, arg2, arg3)
		else
			registerVal6 = Engine.GetModeName()
			if registerVal6 == "ZM" then
				CoD.LobbyMenus.AddButtons(arg0, arg1, arg2, arg5)
			else
				print("Error: no mode name set but AddButtonsMPCPZM called.")
			end
		end
	end
end

function CoD.LobbyMenus.UpdateHistory(arg0, arg1)
	local registerVal2 = LobbyData.GetLobbyNav()
	CoD.LobbyMenus.History[registerVal2] = arg1
end

local function __FUNC_1A26_()
	return Dvar.ui_execdemo_cp:get()
end

local function __FUNC_1A9F_()
	return Dvar.ui_execdemo_gamescom:get()
end

local function __FUNC_1B1D_()
	return Dvar.ui_execdemo_beta:get()
end

local function __FUNC_1B99_(arg0, arg1)
	if arg1 == nil then
		return 
	else
		if arg1 == CoD.LobbyButtons.DISABLED then
			arg0.disabled = true
		else
			if arg1 == CoD.LobbyButtons.HIDDEN then
				arg0.hidden = true
			end
		end
	end
end

local function __FUNC_1C92_(arg0, arg1, arg2, arg3)
	arg2.disabled = false
	arg2.hidden = false
	arg2.selected = false
	arg2.warning = false
	if arg2.defaultState ~= nil then
		if arg2.defaultState == CoD.LobbyButtons.DISABLED then
			arg2.disabled = true
		else
			if arg2.defaultState == CoD.LobbyButtons.HIDDEN then
				arg2.hidden = true
			end
		end
	end
	if arg2.disabledFunc ~= nil then
		local registerVal4 = arg2.disabledFunc(arg0)
		arg2.disabled = registerVal4
	end
	if arg2.visibleFunc ~= nil then
		registerVal4 = arg2.visibleFunc(arg0)
		arg2.hidden = (not registerVal4)
	end
	registerVal4 = __FUNC_1B1D_()
	if registerVal4 then
		__FUNC_1B99_(arg2, arg2.demo_beta)
	else
		registerVal4 = __FUNC_1A9F_()
		if registerVal4 then
			__FUNC_1B99_(arg2, arg2.demo_gamescom)
		end
	end
	if arg2.hidden then
		return 
	end
	registerVal4 = LobbyData.GetLobbyNav()
	if arg2.selectedFunc ~= nil then
		local registerVal5 = arg2.selectedFunc(arg2.selectedParam)
		arg2.selected = registerVal5
	else
		if CoD.LobbyMenus.History[registerVal4] ~= nil then
			if CoD.LobbyMenus.History[registerVal4] ~= arg2.customId then
			end
			arg2.selected = true
		end
	end
	if arg2.newBreadcrumbFunc then
		local registerVal6 = type(arg2.newBreadcrumbFunc)
		if registerVal6 == "string" then
			registerVal6 = LUI.getTableFromPath(arg2.newBreadcrumbFunc)
		end
		if registerVal6 then
			registerVal6 = registerVal6(arg0)
			arg2.isBreadcrumbNew = registerVal6
		end
	end
	if arg2.warningFunc ~= nil then
		registerVal5 = arg2.warningFunc(arg0)
		arg2.warning = registerVal5
	end
	arg2.starterPackUpgrade = true
	registerVal5 = IsStarterPack()
	if arg2.starterPack == CoD.LobbyButtons.STARTERPACK_UPGRADE and registerVal5 then
		arg2.disabled = false
	end
	local registerVal7 = {}
	registerVal7.optionDisplay = arg2.stringRef
	registerVal7.action = arg2.action
	registerVal7.param = arg2.param
	registerVal7.customId = arg2.customId
	registerVal7.isLargeButton = arg3
	registerVal7.isLastButtonInGroup = false
	registerVal7.disabled = arg2.disabled
	registerVal7.selected = arg2.selected
	registerVal7.isBreadcrumbNew = arg2.isBreadcrumbNew
	registerVal7.warning = arg2.warning
	registerVal7.requiredChunk = arg2.selectedParam
	registerVal7.starterPackUpgrade = arg2.starterPackUpgrade
	registerVal7.unloadMod = arg2.unloadMod
	table.insert(arg1, registerVal7)
end

local function __FUNC_23C7_(arg0, arg1, arg2)
	__FUNC_1C92_(arg0, arg1, arg2, true)
end

local function __FUNC_2408_(arg0, arg1, arg2)
	__FUNC_1C92_(arg0, arg1, arg2, false)
end

local function __FUNC_244C_(arg0)
	if 0.000000 < # then
		arg0[##].isLastButtonInGroup = true
	end
end

local function __FUNC_24BC_(arg0, arg1, arg2)
	local registerVal3 = Engine.GetLobbyNetworkMode()
	if registerVal3 == Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE then
		if arg2 == 1.000000 then
			registerVal3 = LuaUtils.IsGamescomBuild()
			if registerVal3 then
				__FUNC_244C_(arg1)
				__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.PLAY_LOCAL)
				__FUNC_244C_(arg1)
			else
				Lobby_SetMaxLocalPlayers(2.000000)
				__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.CP_ONLINE)
				__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.MP_ONLINE)
				__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.ZM_ONLINE)
				__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.BONUSMODES_ONLINE)
				__FUNC_244C_(arg1)
				__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.PLAY_LOCAL)
				__FUNC_244C_(arg1)
			end
		end
		if CoD.isPC then
			__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.STEAM_STORE)
		else
			__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.STORE)
		else
			if arg2 == 1.000000 then
				registerVal3 = LuaUtils.IsGamescomBuild()
				registerVal3 = Dvar.ui_disable_lan:get()
				if registerVal3 and not registerVal3 then
					__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.MP_LAN)
					__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.FIND_LAN_GAME)
					__FUNC_244C_(arg1)
				else
					Lobby_SetMaxLocalPlayers(4.000000)
					__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.CP_LAN)
					__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.MP_LAN)
					__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.ZM_LAN)
					__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.BONUSMODES_LAN)
					__FUNC_244C_(arg1)
					registerVal3 = Dvar.ui_disable_lan:get()
					if not registerVal3 then
						__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.FIND_LAN_GAME)
						__FUNC_244C_(arg1)
					end
					__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.PLAY_ONLINE)
					__FUNC_244C_(arg1)
				end
			end
			if CoD.isPC then
				__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.STEAM_STORE)
			end
		end
	end
	if CoD.isPC then
		registerVal3 = Mods_Enabled()
		if registerVal3 and arg2 == 1.000000 then
			__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.MODS_LOAD)
		end
		__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.QUIT)
	end
end

CoD.LobbyMenus.ModeSelect = __FUNC_24BC_
local function __FUNC_2C40_(arg0, arg1, arg2)
	if arg2 == 1.000000 then
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.CP_DOA_START_GAME)
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.CP_DOA_JOIN_PUBLIC_GAME)
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.CP_DOA_CREATE_PUBLIC_GAME)
		__FUNC_244C_(arg1)
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.CP_DOA_LEADERBOARD)
	else
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.CP_DOA_LEADERBOARD)
	end
end

CoD.LobbyMenus.DOAButtonsOnline = __FUNC_2C40_
local function __FUNC_2E03_(arg0, arg1, arg2)
	__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.ZM_READY_UP)
	__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.CP_DOA_LEADERBOARD)
end

CoD.LobbyMenus.DOAButtonsPublicGame = __FUNC_2E03_
local function __FUNC_2ED8_(arg0, arg1, arg2)
	if arg2 == 1.000000 then
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.CP_DOA_START_GAME)
	end
end

CoD.LobbyMenus.DOAButtonsLAN = __FUNC_2ED8_
local function __FUNC_2F7B_(arg0, arg1, arg2)
	local registerVal3 = IsStarterPack()
	if registerVal3 then
		__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.QUIT)
		return 
	end
	if arg2 == 1.000000 then
		registerVal3 = Engine.IsCPInProgress()
		if registerVal3 then
			__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.CP_RESUME_GAME)
		else
			__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.CP_START_GAME)
		end
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.CP_JOIN_PUBLIC_GAME)
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.CP_SELECT_MISSION)
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.CP_CHOOSE_DIFFICULTY)
	else
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.CP_MISSION_OVERVIEW)
	end
end

CoD.LobbyMenus.CPZMButtonsOnline = __FUNC_2F7B_
local function __FUNC_322F_(arg0, arg1, arg2)
	__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.CP_MISSION_OVERVIEW)
end

CoD.LobbyMenus.CPZMButtonsPublicGame = __FUNC_322F_
local function __FUNC_32C4_(arg0, arg1, arg2)
	local registerVal3 = IsStarterPack()
	if registerVal3 then
		__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.QUIT)
		return 
	end
	if arg2 == 1.000000 then
		registerVal3 = Engine.IsCPInProgress()
		if registerVal3 then
			__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.CP_RESUME_GAME)
		else
			__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.CP_START_GAME)
		end
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.CP_SELECT_MISSION)
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.CP_CHOOSE_DIFFICULTY)
	end
end

CoD.LobbyMenus.CPZMButtonsLAN = __FUNC_32C4_
local function __FUNC_34E5_(arg0, arg1, arg2)
	local registerVal3 = IsStarterPack()
	if registerVal3 then
		__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.QUIT)
		return 
	end
	if arg2 == 1.000000 then
		__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.CP_CUSTOM_START_GAME)
		__FUNC_244C_(arg1)
		__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.CP_MISSION_OVERVIEW)
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.CP_SELECT_MISSION)
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.CP_CHOOSE_DIFFICULTY)
	else
		__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.CP_MISSION_OVERVIEW)
	end
end

CoD.LobbyMenus.CP2ButtonsLANCUSTOM = __FUNC_34E5_
local function __FUNC_3705_(arg0, arg1, arg2)
	local registerVal3 = IsStarterPack()
	if registerVal3 then
		__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.QUIT)
		return 
	end
	if arg2 == 1.000000 then
		registerVal3 = Engine.IsCPInProgress()
		if registerVal3 then
			__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.CP_RESUME_GAME)
		else
			__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.CP_START_GAME)
		end
		__FUNC_244C_(arg1)
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.CP_JOIN_PUBLIC_GAME)
		registerVal3 = HighestMapReachedGreaterThan(arg0, 1.000000)
		if registerVal3 then
			__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.CP_GOTO_SAFEHOUSE)
		end
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.CP_SELECT_MISSION)
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.CP_CHOOSE_DIFFICULTY)
	else
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.CP_MISSION_OVERVIEW)
	end
end

CoD.LobbyMenus.CPButtonsOnline = __FUNC_3705_
local function __FUNC_3A4C_(arg0, arg1, arg2)
	__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.CP_MISSION_OVERVIEW)
end

CoD.LobbyMenus.CPButtonsPublicGame = __FUNC_3A4C_
local function __FUNC_3AE4_(arg0, arg1, arg2)
	local registerVal3 = IsStarterPack()
	if registerVal3 then
		__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.QUIT)
		return 
	end
	if arg2 == 1.000000 then
		__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.CP_CUSTOM_START_GAME)
		__FUNC_244C_(arg1)
		__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.CP_MISSION_OVERVIEW)
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.CP_SELECT_MISSION)
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.CP_CHOOSE_DIFFICULTY)
	else
		__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.CP_MISSION_OVERVIEW)
	end
end

CoD.LobbyMenus.CPButtonsCustomGame = __FUNC_3AE4_
local function __FUNC_3D05_(arg0, arg1, arg2)
	local registerVal3 = IsStarterPack()
	if registerVal3 then
		__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.QUIT)
		return 
	end
	if arg2 == 1.000000 then
		registerVal3 = Engine.IsCPInProgress()
		if registerVal3 then
			__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.CP_RESUME_GAME_LAN)
		else
			__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.CP_LAN_START_GAME)
		end
		__FUNC_244C_(arg1)
		registerVal3 = HighestMapReachedGreaterThan(arg0, 1.000000)
		if registerVal3 then
			__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.CP_GOTO_SAFEHOUSE)
		end
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.CP_SELECT_MISSION)
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.CP_CHOOSE_DIFFICULTY)
	else
		__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.CP_MISSION_OVERVIEW)
	end
end

CoD.LobbyMenus.CPButtonsLAN = __FUNC_3D05_
local function __FUNC_400B_(arg0, arg1, arg2)
	local registerVal3 = IsStarterPack()
	if registerVal3 then
		__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.QUIT)
		return 
	end
	if arg2 == 1.000000 then
		__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.CP_CUSTOM_START_GAME)
		__FUNC_244C_(arg1)
		__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.CP_MISSION_OVERVIEW)
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.CP_SELECT_MISSION)
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.CP_CHOOSE_DIFFICULTY)
	else
		__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.CP_MISSION_OVERVIEW)
	end
end

CoD.LobbyMenus.CPButtonsLANCUSTOM = __FUNC_400B_
local function __FUNC_4229_(arg0, arg1, arg2)
	if arg2 == 1.000000 then
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.MP_PUBLIC_MATCH)
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.MP_ARENA)
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.MP_CUSTOM_GAMES)
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.THEATER_MP)
	end
	__FUNC_244C_(arg1)
	if CoD.isPC then
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.STEAM_STORE)
	else
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.STORE)
	end
end

CoD.LobbyMenus.MPButtonsMain = __FUNC_4229_
local function __FUNC_443E_(arg0, arg1, arg2)
	if arg2 == 1.000000 then
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.MP_FIND_MATCH)
		__FUNC_244C_(arg1)
	end
	__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.MP_CAC_NO_WARNING)
	__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.MP_SPECIALISTS_NO_WARNING)
	__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.MP_SCORESTREAKS)
	local registerVal3 = Dvar.ui_execdemo_beta:get()
	registerVal3 = IsStarterPack()
	if not arg1 or registerVal3 then
		registerVal3 = IsStoreAvailable()
		if registerVal3 then
			if CoD.isPC then
				__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.STEAM_STORE)
			else
				__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.STORE)
			end
		end
	end
	registerVal3 = Engine.DvarBool(nil, "inventory_test_button_visible")
	if registerVal3 then
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.MP_INVENTORY_TEST)
	end
	__FUNC_244C_(arg1)
	registerVal3 = DisableBlackMarket()
	if not registerVal3 then
		__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.BLACK_MARKET)
	end
end

CoD.LobbyMenus.MPButtonsOnline = __FUNC_443E_
local function __FUNC_483C_(arg0, arg1, arg2)
	__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.MP_CAC)
	__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.MP_SPECIALISTS)
	__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.MP_SCORESTREAKS)
	local registerVal3 = Engine.DvarBool(nil, "inventory_test_button_visible")
	if registerVal3 then
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.MP_INVENTORY_TEST)
	end
	registerVal3 = Engine.GetPlaylistInfoByID(Engine.GetPlaylistID())
	if registerVal3 then
		local registerVal5 = Engine.GetPlaylistCategoryIdByName("core")
		registerVal5 = Engine.GetPlaylistCategoryIdByName("hardcore")
		if registerVal3.playlist.category == registerVal5 or registerVal3.playlist.category == registerVal5 then
			__FUNC_244C_(arg1)
			__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.MP_PUBLIC_LOBBY_LEADERBOARD)
		end
	end
	local registerVal4 = DisableBlackMarket()
	if not registerVal4 then
		__FUNC_244C_(arg1)
		__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.BLACK_MARKET)
	end
end

CoD.LobbyMenus.MPButtonsOnlinePublic = __FUNC_483C_
local function __FUNC_4C00_(arg0, arg1, arg2)
	local registerVal3 = Engine.IsStarterPack()
	if registerVal3 then
		__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.QUIT)
		return 
	end
	__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.MP_CAC)
	__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.MP_SPECIALISTS)
	__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.MP_SCORESTREAKS)
end

CoD.LobbyMenus.MPButtonsModGame = __FUNC_4C00_
local function __FUNC_4D95_(arg0, arg1, arg2)
	local registerVal3 = IsStarterPack()
	if registerVal3 then
		__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.QUIT)
		return 
	end
	if arg2 == 1.000000 then
		__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.MP_CUSTOM_START_GAME)
		__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.MP_CUSTOM_SETUP_GAME)
		__FUNC_244C_(arg1)
	end
	__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.MP_CAC)
	__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.MP_SPECIALISTS)
	__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.MP_SCORESTREAKS)
	__FUNC_244C_(arg1)
	__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.MP_CODCASTER_SETTINGS)
	registerVal3 = Engine.DvarBool(nil, "inventory_test_button_visible")
	if registerVal3 then
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.MP_INVENTORY_TEST)
	end
	__FUNC_244C_(arg1)
	__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.MP_CUSTOM_LOBBY_LEADERBOARD)
end

CoD.LobbyMenus.MPButtonsCustomGame = __FUNC_4D95_
local function __FUNC_5122_(arg0, arg1, arg2)
	if arg2 == 1.000000 then
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.MP_ARENA_FIND_MATCH)
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.MP_ARENA_SELECT_ARENA)
		__FUNC_244C_(arg1)
	end
	__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.MP_CAC)
	__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.MP_SPECIALISTS)
	__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.MP_SCORESTREAKS)
	local registerVal3 = DisableBlackMarket()
	if not registerVal3 then
		__FUNC_244C_(arg1)
		__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.BLACK_MARKET)
	end
end

CoD.LobbyMenus.MPButtonsArena = __FUNC_5122_
local function __FUNC_535B_(arg0, arg1, arg2)
	__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.MP_CAC)
	__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.MP_SPECIALISTS)
	__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.MP_SCORESTREAKS)
	local registerVal3 = DisableBlackMarket()
	if not registerVal3 then
		__FUNC_244C_(arg1)
		__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.BLACK_MARKET)
	end
end

CoD.LobbyMenus.MPButtonsArenaGame = __FUNC_535B_
local function __FUNC_54E6_(arg0, arg1, arg2)
	local registerVal3 = IsStarterPack()
	if registerVal3 then
		__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.QUIT)
		return 
	end
	if arg2 == 1.000000 then
		__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.MP_CUSTOM_START_GAME)
		__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.MP_CUSTOM_SETUP_GAME)
		__FUNC_244C_(arg1)
	end
	__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.MP_CAC)
	__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.MP_SPECIALISTS)
	__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.MP_SCORESTREAKS)
	__FUNC_244C_(arg1)
	__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.MP_CODCASTER_SETTINGS)
	registerVal3 = Engine.DvarBool(nil, "inventory_test_button_visible")
	if registerVal3 then
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.MP_INVENTORY_TEST)
	end
end

CoD.LobbyMenus.MPButtonsLAN = __FUNC_54E6_
local function __FUNC_5815_(arg0, arg1, arg2)
	local registerVal3 = IsStarterPack()
	if registerVal3 then
		__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.QUIT)
		return 
	end
	if arg2 == 1.000000 then
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.ZM_SOLO_GAME)
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.ZM_FIND_MATCH)
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.ZM_CUSTOM_GAMES)
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.THEATER_ZM)
		__FUNC_244C_(arg1)
	end
	__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.ZM_BUBBLEGUM_BUFFS)
	__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.ZM_MEGACHEW_FACTORY)
	__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.ZM_GOBBLEGUM_RECIPES)
	__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.ZM_BUILD_KITS)
end

CoD.LobbyMenus.ZMButtonsOnline = __FUNC_5815_
local function __FUNC_5B09_(arg0, arg1)
	local registerVal2 = IsStarterPack()
	if registerVal2 then
		__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.QUIT)
		return 
	end
	__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.ZM_READY_UP)
	__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.ZM_BUBBLEGUM_BUFFS)
	__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.ZM_BUILD_KITS)
end

CoD.LobbyMenus.ZMButtonsPublicGame = __FUNC_5B09_
local function __FUNC_5C88_(arg0, arg1, arg2)
	local registerVal3 = IsStarterPack()
	if registerVal3 then
		__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.QUIT)
		return 
	end
	if arg2 == 1.000000 then
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.ZM_START_CUSTOM_GAME)
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.ZM_CHANGE_MAP)
		__FUNC_244C_(arg1)
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.ZM_CHANGE_RANKED_SETTTINGS)
		registerVal3 = IsServerBrowserEnabled()
		if CoD.isPC and registerVal3 then
			__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.ZM_SERVER_SETTINGS)
		end
		__FUNC_244C_(arg1)
	end
	__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.ZM_BUBBLEGUM_BUFFS)
	__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.ZM_BUILD_KITS)
end

CoD.LobbyMenus.ZMButtonsCustomGame = __FUNC_5C88_
local function __FUNC_5F67_(arg0, arg1, arg2)
	local registerVal3 = IsStarterPack()
	if registerVal3 then
		__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.QUIT)
		return 
	end
	if arg2 == 1.000000 then
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.ZM_START_LAN_GAME)
		__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.ZM_CHANGE_MAP)
		__FUNC_244C_(arg1)
	end
	__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.ZM_BUBBLEGUM_BUFFS)
	__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.ZM_BUILD_KITS)
end

CoD.LobbyMenus.ZMButtonsLAN = __FUNC_5F67_
local function __FUNC_6146_(arg0, arg1, arg2)
	__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.FR_START_RUN_ONLINE)
	__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.FR_CHANGE_MAP)
	__FUNC_244C_(arg1)
	__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.FR_LEADERBOARD)
end

CoD.LobbyMenus.FRButtonsOnlineGame = __FUNC_6146_
local function __FUNC_626F_(arg0, arg1, arg2)
	__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.FR_START_RUN_LAN)
	__FUNC_23C7_(arg0, arg1, CoD.LobbyButtons.FR_CHANGE_MAP)
end

CoD.LobbyMenus.FRButtonsLANGame = __FUNC_626F_
local function __FUNC_6344_(arg0, arg1, arg2)
	if arg2 == 1.000000 then
		__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.TH_START_FILM)
		__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.TH_SELECT_FILM)
		__FUNC_2408_(arg0, arg1, CoD.LobbyButtons.TH_CREATE_HIGHLIGHT)
	end
end

CoD.LobbyMenus.ButtonsTheaterGame = __FUNC_6344_
local registerVal8 = {}
registerVal8[LobbyData.UITargets.UI_MAIN.id] = CoD.LobbyMenus.ModeSelect
registerVal8[LobbyData.UITargets.UI_MODESELECT.id] = CoD.LobbyMenus.ModeSelect
registerVal8[LobbyData.UITargets.UI_CPLOBBYLANGAME.id] = CoD.LobbyMenus.CPButtonsLAN
registerVal8[LobbyData.UITargets.UI_CPLOBBYLANCUSTOMGAME.id] = CoD.LobbyMenus.CPButtonsLANCUSTOM
registerVal8[LobbyData.UITargets.UI_CPLOBBYONLINE.id] = CoD.LobbyMenus.CPButtonsOnline
registerVal8[LobbyData.UITargets.UI_CPLOBBYONLINEPUBLICGAME.id] = CoD.LobbyMenus.CPButtonsPublicGame
registerVal8[LobbyData.UITargets.UI_CPLOBBYONLINECUSTOMGAME.id] = CoD.LobbyMenus.CPButtonsCustomGame
registerVal8[LobbyData.UITargets.UI_CP2LOBBYLANGAME.id] = CoD.LobbyMenus.CPZMButtonsLAN
registerVal8[LobbyData.UITargets.UI_CP2LOBBYLANCUSTOMGAME.id] = CoD.LobbyMenus.CPButtonsLANCUSTOM
registerVal8[LobbyData.UITargets.UI_CP2LOBBYONLINE.id] = CoD.LobbyMenus.CPZMButtonsOnline
registerVal8[LobbyData.UITargets.UI_CP2LOBBYONLINEPUBLICGAME.id] = CoD.LobbyMenus.CPZMButtonsPublicGame
registerVal8[LobbyData.UITargets.UI_CP2LOBBYONLINECUSTOMGAME.id] = CoD.LobbyMenus.CPButtonsCustomGame
registerVal8[LobbyData.UITargets.UI_DOALOBBYLANGAME.id] = CoD.LobbyMenus.DOAButtonsLAN
registerVal8[LobbyData.UITargets.UI_DOALOBBYONLINE.id] = CoD.LobbyMenus.DOAButtonsOnline
registerVal8[LobbyData.UITargets.UI_DOALOBBYONLINEPUBLICGAME.id] = CoD.LobbyMenus.DOAButtonsPublicGame
registerVal8[LobbyData.UITargets.UI_MPLOBBYLANGAME.id] = CoD.LobbyMenus.MPButtonsLAN
registerVal8[LobbyData.UITargets.UI_MPLOBBYMAIN.id] = CoD.LobbyMenus.MPButtonsMain
registerVal8[LobbyData.UITargets.UI_MPLOBBYONLINE.id] = CoD.LobbyMenus.MPButtonsOnline
registerVal8[LobbyData.UITargets.UI_MPLOBBYONLINEPUBLICGAME.id] = CoD.LobbyMenus.MPButtonsOnlinePublic
registerVal8[LobbyData.UITargets.UI_MPLOBBYONLINEMODGAME.id] = CoD.LobbyMenus.MPButtonsModGame
registerVal8[LobbyData.UITargets.UI_MPLOBBYONLINECUSTOMGAME.id] = CoD.LobbyMenus.MPButtonsCustomGame
registerVal8[LobbyData.UITargets.UI_MPLOBBYONLINEARENA.id] = CoD.LobbyMenus.MPButtonsArena
registerVal8[LobbyData.UITargets.UI_MPLOBBYONLINEARENAGAME.id] = CoD.LobbyMenus.MPButtonsArenaGame
registerVal8[LobbyData.UITargets.UI_FRLOBBYONLINEGAME.id] = CoD.LobbyMenus.FRButtonsOnlineGame
registerVal8[LobbyData.UITargets.UI_FRLOBBYLANGAME.id] = CoD.LobbyMenus.FRButtonsLANGame
registerVal8[LobbyData.UITargets.UI_ZMLOBBYLANGAME.id] = CoD.LobbyMenus.ZMButtonsLAN
registerVal8[LobbyData.UITargets.UI_ZMLOBBYONLINE.id] = CoD.LobbyMenus.ZMButtonsOnline
registerVal8[LobbyData.UITargets.UI_ZMLOBBYONLINEPUBLICGAME.id] = CoD.LobbyMenus.ZMButtonsPublicGame
registerVal8[LobbyData.UITargets.UI_ZMLOBBYONLINECUSTOMGAME.id] = CoD.LobbyMenus.ZMButtonsCustomGame
registerVal8[LobbyData.UITargets.UI_MPLOBBYONLINETHEATER.id] = CoD.LobbyMenus.ButtonsTheaterGame
registerVal8[LobbyData.UITargets.UI_ZMLOBBYONLINETHEATER.id] = CoD.LobbyMenus.ButtonsTheaterGame
local function __FUNC_6470_(arg0, arg1)
	local registerVal4 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal4 then
		local registerVal5 = DataSources.LobbyRoot.getModel(arg0)
		registerVal4 = Engine.GetModel(registerVal5, "gameClient.isHost")
	else
		registerVal5 = DataSources.LobbyRoot.getModel(arg0)
		registerVal4 = Engine.GetModel(registerVal5, "privateClient.isHost")
	end
	if registerVal4 ~= nil then
		registerVal5 = Engine.GetModelValue(registerVal4)
	else
	end
	registerVal8[arg1](arg0, {}, 1.000000)
	return {}
end

CoD.LobbyMenus.AddButtonsForTarget = __FUNC_6470_
