-- Decompiled with CoDLUIDecompiler by JariK

require("lua.Shared.LuaReadOnlyTables")
{}.INVALID_CONTROLLER_PORT = -1.000000
{}.INVALID_CLIENT_INDEX = -1.000000
{}.MAX_CLIENTS = 18.000000
local registerVal1 = Engine.GetMaxControllerCount()
{}.MAX_CONTROLLER_COUNT = registerVal1
{}.INVALID_XUID = 0.000000
{}.LEADERBOARD_MAX_ROWS = 101.000000
{}.BD_NOT_CONNECTED = 2.000000
{}.PS_PLUS_CHECK_TIME = 45000.000000
{}.INVITE_TOAST_POPUP_ICON = "uie_t7_icon_menu_invite_sent"
{}.INVITE_TOAST_POPUP_ERROR_ICON = "uie_t7_icon_menu_invite_fail"
{}.INVITE_TOAST_POPUP_ACCEPTED_ICON = "t7_mp_icon_groups_invite_accepted"
{}.INVITE_TOAST_POPUP_REJECTED_ICON = "t7_mp_icon_groups_invite_rejected"
{}.MODS_BASE_PATH = "mods"
{}.USERMAP_BASE_PATH = "usermaps"
{}.DEFAULT_MOD_NAME = {}.USERMAP_BASE_PATH
registerVal1 = {}
registerVal1.FORCE_LOCAL_MODE = 1.000000
{}.LOBBYVM_REQUEST = registerVal1
registerVal1 = {}
registerVal1.INVALID = 0.000000
registerVal1.NONE = 1.000000
registerVal1.AUTO_CP = 2.000000
registerVal1.AUTO_MP = 3.000000
registerVal1.AUTO_ZM = 4.000000
registerVal1.MANUAL = 5.000000
registerVal1.MANUAL_CP = 6.000000
registerVal1.READYUP = 7.000000
registerVal1.THEATER = 8.000000
registerVal1.MOD_LOAD = 9.000000
registerVal1.TESTING = 100.000000
{}.TIMER_TYPE = registerVal1
registerVal1 = {}
registerVal1.HIDDEN = 0.000000
registerVal1.VOTING = 1.000000
registerVal1.LOCKEDIN = 2.000000
registerVal1.RESULT = 3.000000
{}.MAP_VOTE_STATE = registerVal1
registerVal1 = {}
registerVal1.CLIENT = 0.000000
registerVal1.HOST = 1.000000
registerVal1.AUTO = 2.000000
{}.TEAM_ASSIGNMENT = registerVal1
registerVal1 = {}
registerVal1.WITHOUT = 0.000000
registerVal1.WITH = 1.000000
{}.LEAVE_WITH_PARTY = registerVal1
registerVal1 = {}
registerVal1.NONE = 0.000000
registerVal1.NONE_LEAVE_WITH_PARTY = 1.000000
registerVal1.LEAVE_PARTY = 2.000000
registerVal1.LEAVE_AND_DISBAND_PARTY = 3.000000
registerVal1.LEAVE_LOBBY = 4.000000
registerVal1.LEAVE_LOBBY_AND_PARTY = 5.000000
registerVal1.BRING_PARTY_LEAVE_ALONE = 6.000000
registerVal1.MANAGE_PARTY_LEAVE = 6.000000
{}.LEAVE_LOBBY_POPUP = registerVal1
registerVal1 = {}
registerVal1.LBCOL_TYPE_NUMBER = 0.000000
registerVal1.LBCOL_TYPE_TIME = 1.000000
registerVal1.LBCOL_TYPE_LEVELXP = 2.000000
registerVal1.LBCOL_TYPE_PRESTIGE = 3.000000
registerVal1.LBCOL_TYPE_BIGNUMBER = 4.000000
registerVal1.LBCOL_TYPE_PERCENT = 5.000000
registerVal1.LBCOL_TYPE_TIME_FULL = 6.000000
registerVal1.LBCOL_TYPE_COUNT = 7.000000
{}.LBCOL_TYPE = registerVal1
registerVal1 = {}
registerVal1.LIVE_ZM = 1.000000
registerVal1.LIVE_MP = 2.000000
registerVal1.LIVE_CP = 3.000000
registerVal1.LEADERBOARD_WRITE_ZM = 4.000000
registerVal1.LEADERBOARD_WRITE_MP = 5.000000
registerVal1.LEADERBOARD_WRITE_CP = 6.000000
registerVal1.ZM_SPLIT_SCREEN = 7.000000
registerVal1.MP_SPLIT_SCREEN = 8.000000
registerVal1.CP_SPLIT_SCREEN = 9.000000
registerVal1.ZM_HOSTING = 10.000000
registerVal1.MP_HOSTING = 11.000000
registerVal1.CP_HOSTING = 12.000000
registerVal1.ARENA_GAMEPLAY = 13.000000
registerVal1.USER_GENERATED_CONTENT = 14.000000
registerVal1.PRESTIGE = 15.000000
registerVal1.PRESTIGE_EXTRAS = 16.000000
registerVal1.PIRACY = 17.000000
registerVal1.LOOT = 18.000000
registerVal1.FREERUN = 19.000000
registerVal1.MP_PUBLIC_MATCH = 20.000000
registerVal1.COUNT = 21.000000
{}.FEATURE_BAN = registerVal1
registerVal1 = {}
registerVal1.ZM = 1.000000
registerVal1.MP = 2.000000
registerVal1.UGC = 3.000000
registerVal1.LOOT = 4.000000
registerVal1.ARENA = 5.000000
{}.ANTICHEAT_MESSAGE_GROUPS = registerVal1
{}.DW_REPUTATION_BAN = 100.000000
registerVal1 = {}
registerVal1.FIRST_TIME = 1.000000
registerVal1.LOBBY = 2.000000
registerVal1.DRAFT = 3.000000
{}.CHOOSE_CHARACTER_OPENED_FROM = registerVal1
registerVal1 = {}
registerVal1.TASK_MISMATCHED = 1.000000
registerVal1.NONRUNNING_TASK = 2.000000
{}.ERROR_CODE = registerVal1
registerVal1 = {}
registerVal1.ALLTIME = 25.000000
registerVal1.MONTHLY = 25.000000
registerVal1.WEEKLY = 5.000000
{}.LB_MP_GAMES_NEEDED = registerVal1
registerVal1 = {}
registerVal1.START = 0.000000
registerVal1.END = 1.000000
registerVal1.ABORT = 2.000000
registerVal1.LEAVE = 3.000000
registerVal1.FAILED = 4.000000
{}.JB_MATCHMAKING_EVENT = registerVal1
function {}.createEnum(...)
	local registerVal1 = {}
	local registerVal2 = select("#", ...)
	registerVal1.n = registerVal2
	registerVal1 = {}
	registerVal2, registerVal3, registerVal4 = ipairs(registerVal1)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		{}[value6] = (index5 - 1.000000)
	end
	return LuaReadOnlyTables.ReadOnlyTable({})
end

registerVal1 = LuaReadOnlyTables.ReadOnlyTable({})
LuaEnums = registerVal1
