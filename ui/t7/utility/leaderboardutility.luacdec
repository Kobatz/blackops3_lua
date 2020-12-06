-- Decompiled with CoDLUIDecompiler by JariK

CoD.LeaderboardUtility = {}
CoD.LeaderboardUtility.PLAYER_POSITION_IN_LEADERBOARD = 6.000000
CoD.LeaderboardUtility.DEFAULT_ZM_MAPS_NUM_PLAYERS = 1.000000
CoD.LeaderboardUtility.DEFAULT_DOA_NUM_PLAYERS = 0.000000
CoD.LeaderboardUtility.TOP = 0.000000
CoD.LeaderboardUtility.BOTTOM = 1.000000
local registerVal1 = {}
registerVal1 = {Enum.LbTrackType.LB_TRK_ALLTIME, Enum.LbTrackType.LB_TRK_MONTHLY, Enum.LbTrackType.LB_TRK_WEEKLY}
CoD.LeaderboardUtility.DefaultTrackTypes = registerVal1
registerVal1 = {}
local registerVal2 = {}
registerVal2.title = ""
registerVal2.icon = "playlist_gungame"
registerVal2.gameType = ""
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_CP_TRAINING_SIM = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_LB_CAREER"
registerVal2.icon = "uie_t7_menu_mp_icons_gamemode_graphic_career"
registerVal2.gameType = "career"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GB_SCORE = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_TDM_CAPS"
registerVal2.icon = "playlist_tdm"
registerVal2.gameType = "tdm"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GM_TDM = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_DM_CAPS"
registerVal2.icon = "playlist_ffa"
registerVal2.gameType = "dm"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GM_DM = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_DOM_CAPS"
registerVal2.icon = "playlist_domination"
registerVal2.gameType = "dom"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GM_DOM = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_SD_CAPS"
registerVal2.icon = "playlist_search_destroy"
registerVal2.gameType = "sd"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GM_SD = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_CTF_CAPS"
registerVal2.icon = "playlist_ctf"
registerVal2.gameType = "ctf"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GM_CTF = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_DEM_CAPS"
registerVal2.icon = "playlist_demolition"
registerVal2.gameType = "dem"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GM_DEM = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_KOTH_CAPS"
registerVal2.icon = "playlist_koth"
registerVal2.gameType = "koth"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GM_KOTH = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_CONF_CAPS"
registerVal2.icon = "playlist_kill_confirm"
registerVal2.gameType = "conf"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GM_CONF = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_BALL_CAPS"
registerVal2.icon = "playlist_ball"
registerVal2.gameType = "ball"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GM_BALL = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_ESCORT_CAPS"
registerVal2.icon = "playlist_escort"
registerVal2.gameType = "escort"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GM_ESCORT = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_GUN_CAPS"
registerVal2.icon = "playlist_gungame"
registerVal2.gameType = "gun"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GM_GUN = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_CLEAN_CAPS"
registerVal2.icon = "playlist_clean"
registerVal2.gameType = "clean"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GM_CLEAN = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_INFECT_CAPS"
registerVal2.icon = "playlist_infect"
registerVal2.gameType = "infect"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GM_INFECT = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_PH_CAPS"
registerVal2.icon = "playlist_prop_hunt"
registerVal2.gameType = "prop"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GM_PROP = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_SAS_CAPS"
registerVal2.icon = "playlist_sticksnstones"
registerVal2.gameType = "sas"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GM_SAS = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_SNIPERONLY_CAPS"
registerVal2.icon = "playlist_sniper_only"
registerVal2.gameType = "sniperonly"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GM_SNIPERONLY = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_LB_CAREER"
registerVal2.icon = "uie_t7_menu_mp_icons_gamemode_graphic_career"
registerVal2.gameType = "career"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GB_SCORE_HC = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_TDM_CAPS"
registerVal2.icon = "playlist_tdm"
registerVal2.gameType = "tdm"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GM_TDM_HC = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_DM_CAPS"
registerVal2.icon = "playlist_ffa"
registerVal2.gameType = "dm"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GM_DM_HC = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_DOM_CAPS"
registerVal2.icon = "playlist_domination"
registerVal2.gameType = "dom"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GM_DOM_HC = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_SD_CAPS"
registerVal2.icon = "playlist_search_destroy"
registerVal2.gameType = "sd"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GM_SD_HC = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_CTF_CAPS"
registerVal2.icon = "playlist_ctf"
registerVal2.gameType = "ctf"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GM_CTF_HC = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_DEM_CAPS"
registerVal2.icon = "playlist_demolition"
registerVal2.gameType = "dem"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GM_DEM_HC = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_KOTH_CAPS"
registerVal2.icon = "playlist_koth"
registerVal2.gameType = "koth"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GM_KOTH_HC = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_CONF_CAPS"
registerVal2.icon = "playlist_kill_confirm"
registerVal2.gameType = "conf"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GM_CONF_HC = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_BALL_CAPS"
registerVal2.icon = "playlist_ball"
registerVal2.gameType = "ball"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GM_BALL_HC = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_ESCORT_CAPS"
registerVal2.icon = "playlist_escort"
registerVal2.gameType = "escort"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GM_ESCORT_HC = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_GUN_CAPS"
registerVal2.icon = "playlist_gungame"
registerVal2.gameType = "gun"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GM_GUN_HC = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_CLEAN_CAPS"
registerVal2.icon = "playlist_clean"
registerVal2.gameType = "clean"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GM_CLEAN_HC = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_LB_CAREER"
registerVal2.icon = "uie_t7_menu_mp_icons_gamemode_graphic_career"
registerVal2.gameType = "career"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GB_SCORE_ARENA = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_TDM_CAPS"
registerVal2.icon = "playlist_tdm"
registerVal2.gameType = "tdm"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GM_TDM_ARENA = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_DM_CAPS"
registerVal2.icon = "playlist_ffa"
registerVal2.gameType = "dm"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GM_DM_ARENA = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_CONF_CAPS"
registerVal2.icon = "playlist_kill_confirm"
registerVal2.gameType = "conf"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GM_CONF_ARENA = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_DOM_CAPS"
registerVal2.icon = "playlist_domination"
registerVal2.gameType = "dom"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GM_DOM_ARENA = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_KOTH_CAPS"
registerVal2.icon = "playlist_koth"
registerVal2.gameType = "koth"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GM_KOTH_ARENA = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_SD_CAPS"
registerVal2.icon = "playlist_search_destroy"
registerVal2.gameType = "sd"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GM_SD_ARENA = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_DEM_CAPS"
registerVal2.icon = "playlist_demolition"
registerVal2.gameType = "dem"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GM_DEM_ARENA = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_CTF_CAPS"
registerVal2.icon = "playlist_ctf"
registerVal2.gameType = "ctf"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GM_CTF_ARENA = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_BALL_CAPS"
registerVal2.icon = "playlist_ball"
registerVal2.gameType = "ball"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GM_BALL_ARENA = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_ESCORT_CAPS"
registerVal2.icon = "playlist_escort"
registerVal2.gameType = "escort"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GM_ESCORT_ARENA = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_GUN_CAPS"
registerVal2.icon = "playlist_gungame"
registerVal2.gameType = "gun"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GM_GUN_ARENA = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_CLEAN_CAPS"
registerVal2.icon = "playlist_clean"
registerVal2.gameType = "clean"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GM_CLEAN_ARENA = registerVal2
registerVal2 = {}
registerVal2.title = "MENU_PRO_SERIES_CAPS"
registerVal2.icon = "playlist_arena_champions"
registerVal2.gameType = ""
local registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_MONTHLY}
registerVal2.trackTypes = registerVal3
registerVal1.LB_MP_ARENA_MASTERS_00 = registerVal2
registerVal2 = {}
registerVal2.title = "MENU_MOSHPIT_CAPS"
registerVal2.icon = "playlist_arena_moshpit"
registerVal2.gameType = ""
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_MONTHLY}
registerVal2.trackTypes = registerVal3
registerVal1.LB_MP_ARENA_MASTERS_01 = registerVal2
registerVal2 = {}
registerVal2.title = ""
registerVal2.icon = ""
registerVal2.gameType = ""
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_ARENA_MASTERS_02 = registerVal2
registerVal2 = {}
registerVal2.title = ""
registerVal2.icon = ""
registerVal2.gameType = ""
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_ARENA_MASTERS_03 = registerVal2
registerVal2 = {}
registerVal2.title = ""
registerVal2.icon = ""
registerVal2.gameType = ""
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_ARENA_MASTERS_04 = registerVal2
registerVal2 = {}
registerVal2.title = ""
registerVal2.icon = ""
registerVal2.gameType = ""
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_ARENA_MASTERS_05 = registerVal2
registerVal2 = {}
registerVal2.title = ""
registerVal2.icon = ""
registerVal2.gameType = ""
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_ARENA_MASTERS_06 = registerVal2
registerVal2 = {}
registerVal2.title = ""
registerVal2.icon = ""
registerVal2.gameType = ""
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_ARENA_MASTERS_07 = registerVal2
registerVal2 = {}
registerVal2.title = ""
registerVal2.icon = ""
registerVal2.gameType = ""
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_ARENA_MASTERS_08 = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_FREERUN_01"
registerVal2.icon = "t7_icons_leaderboards_freerun_alpha"
registerVal2.gameType = "fr"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GM_FR_FREERUN_01 = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_FREERUN_02"
registerVal2.icon = "t7_icons_leaderboards_freerun_sidewinder"
registerVal2.gameType = "fr"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GM_FR_FREERUN_02 = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_FREERUN_03"
registerVal2.icon = "t7_icons_leaderboards_freerun_infected"
registerVal2.gameType = "fr"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GM_FR_FREERUN_03 = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_FREERUN_04"
registerVal2.icon = "t7_icons_leaderboards_freerun_blackout"
registerVal2.gameType = "fr"
registerVal2.trackTypes = CoD.LeaderboardUtility.DefaultTrackTypes
registerVal1.LB_MP_GM_FR_FREERUN_04 = registerVal2
registerVal2 = {}
registerVal2.title = "MENU_LB_GENERAL"
registerVal2.icon = "uie_t7_menu_mp_icons_gamemode_graphic_career"
registerVal2.gameType = "career"
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_DAILY}
registerVal2.trackTypes = registerVal3
registerVal1.LB_MP_CG_GENERAL = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_TDM_CAPS"
registerVal2.icon = "playlist_tdm"
registerVal2.gameType = "tdm"
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_DAILY}
registerVal2.trackTypes = registerVal3
registerVal1.LB_MP_CG_TDM = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_DM_CAPS"
registerVal2.icon = "playlist_ffa"
registerVal2.gameType = "dm"
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_DAILY}
registerVal2.trackTypes = registerVal3
registerVal1.LB_MP_CG_DM = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_DOM_CAPS"
registerVal2.icon = "playlist_domination"
registerVal2.gameType = "dom"
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_DAILY}
registerVal2.trackTypes = registerVal3
registerVal1.LB_MP_CG_DOM = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_SD_CAPS"
registerVal2.icon = "playlist_search_destroy"
registerVal2.gameType = "sd"
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_DAILY}
registerVal2.trackTypes = registerVal3
registerVal1.LB_MP_CG_SD = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_CTF_CAPS"
registerVal2.icon = "playlist_ctf"
registerVal2.gameType = "ctf"
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_DAILY}
registerVal2.trackTypes = registerVal3
registerVal1.LB_MP_CG_CTF = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_DEM_CAPS"
registerVal2.icon = "playlist_demolition"
registerVal2.gameType = "dem"
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_DAILY}
registerVal2.trackTypes = registerVal3
registerVal1.LB_MP_CG_DEM = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_KOTH_CAPS"
registerVal2.icon = "playlist_koth"
registerVal2.gameType = "koth"
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_DAILY}
registerVal2.trackTypes = registerVal3
registerVal1.LB_MP_CG_KOTH = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_CONF_CAPS"
registerVal2.icon = "playlist_kill_confirm"
registerVal2.gameType = "conf"
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_DAILY}
registerVal2.trackTypes = registerVal3
registerVal1.LB_MP_CG_CONF = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_BALL_CAPS"
registerVal2.icon = "playlist_ball"
registerVal2.gameType = "ball"
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_DAILY}
registerVal2.trackTypes = registerVal3
registerVal1.LB_MP_CG_BALL = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_ESCORT_CAPS"
registerVal2.icon = "playlist_escort"
registerVal2.gameType = "escort"
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_DAILY}
registerVal2.trackTypes = registerVal3
registerVal1.LB_MP_CG_ESCORT = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_GUN_CAPS"
registerVal2.icon = "playlist_gungame"
registerVal2.gameType = "gun"
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_DAILY}
registerVal2.trackTypes = registerVal3
registerVal1.LB_MP_CG_GUN = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_CLEAN_CAPS"
registerVal2.icon = "playlist_clean"
registerVal2.gameType = "clean"
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_DAILY}
registerVal2.trackTypes = registerVal3
registerVal1.LB_MP_CG_CLEAN = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_INFECT_CAPS"
registerVal2.icon = "playlist_tdm"
registerVal2.gameType = "infect"
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_DAILY}
registerVal2.trackTypes = registerVal3
registerVal1.LB_MP_CG_INFECT = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_PH_CAPS"
registerVal2.icon = "playlist_prop_hunt"
registerVal2.gameType = "prop"
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_DAILY}
registerVal2.trackTypes = registerVal3
registerVal1.LB_MP_CG_PROP = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_SAS_CAPS"
registerVal2.icon = "playlist_tdm"
registerVal2.gameType = "sas"
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_DAILY}
registerVal2.trackTypes = registerVal3
registerVal1.LB_MP_CG_SAS = registerVal2
registerVal2 = {}
registerVal2.title = "MPUI_SNIPERONLY_CAPS"
registerVal2.icon = "playlist_tdm"
registerVal2.gameType = "sniperonly"
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_DAILY}
registerVal2.trackTypes = registerVal3
registerVal1.LB_MP_CG_SNIPERONLY = registerVal2
registerVal2 = {}
registerVal2.title = "MENU_LB_ZMGLOBAL_KILLS"
registerVal2.icon = "t7_icons_leaderboards_zm_kills"
registerVal2.gameType = ""
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_ALLTIME}
registerVal2.trackTypes = registerVal3
registerVal1.LB_ZM_GB_KILLS = registerVal2
registerVal2 = {}
registerVal2.title = "MENU_LB_ZMGLOBAL_SHOTS_FIRED"
registerVal2.icon = "t7_icons_leaderboards_zm_shotsfired"
registerVal2.gameType = ""
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_ALLTIME}
registerVal2.trackTypes = registerVal3
registerVal1.LB_ZM_GB_BULLETS_FIRED = registerVal2
registerVal2 = {}
registerVal2.title = "MENU_LB_ZMGLOBAL_SHOTS_HIT"
registerVal2.icon = "t7_icons_leaderboards_zm_shotsontarget"
registerVal2.gameType = ""
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_ALLTIME}
registerVal2.trackTypes = registerVal3
registerVal1.LB_ZM_GB_BULLETS_HIT = registerVal2
registerVal2 = {}
registerVal2.title = "MENU_LB_ZMGLOBAL_HEADSHOTS"
registerVal2.icon = "t7_icons_leaderboards_zm_headshots"
registerVal2.gameType = ""
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_ALLTIME}
registerVal2.trackTypes = registerVal3
registerVal1.LB_ZM_GB_HEADSHOTS = registerVal2
registerVal2 = {}
registerVal2.title = "MENU_LB_ZMGLOBAL_EXPLOSIVE_KILLS"
registerVal2.icon = "t7_icons_leaderboards_zm_explosivekills"
registerVal2.gameType = ""
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_ALLTIME}
registerVal2.trackTypes = registerVal3
registerVal1.LB_ZM_GB_GRENADE_KILLS = registerVal2
registerVal2 = {}
registerVal2.title = "MENU_LB_ZMGLOBAL_REVIVES"
registerVal2.icon = "t7_icons_leaderboards_zm_revives"
registerVal2.gameType = ""
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_ALLTIME}
registerVal2.trackTypes = registerVal3
registerVal1.LB_ZM_GB_REVIVES = registerVal2
registerVal2 = {}
registerVal2.title = "MENU_LB_ZMGLOBAL_DISTANCE_TRAVELED"
registerVal2.icon = "t7_icons_leaderboards_zm_distancetraveled"
registerVal2.gameType = ""
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_ALLTIME}
registerVal2.trackTypes = registerVal3
registerVal1.LB_ZM_GB_DISTANCE_TRAVELED = registerVal2
registerVal2 = {}
registerVal2.title = "MENU_LB_ZMGLOBAL_DOORS_OPENED"
registerVal2.icon = "t7_icons_leaderboards_zm_doorsopened"
registerVal2.gameType = ""
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_ALLTIME}
registerVal2.trackTypes = registerVal3
registerVal1.LB_ZM_GB_DOORS_PURCHASED = registerVal2
registerVal2 = {}
registerVal2.title = "MENU_LB_ZMGLOBAL_PERKS_DRANK"
registerVal2.icon = "t7_icons_leaderboards_zm_perkcolas"
registerVal2.gameType = ""
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_ALLTIME}
registerVal2.trackTypes = registerVal3
registerVal1.LB_ZM_GB_PERKS_DRANK = registerVal2
registerVal2 = {}
registerVal2.title = "MENU_LB_ZMGLOBAL_KILLS"
registerVal2.icon = "t7_icons_leaderboards_zm_kills"
registerVal2.gameType = ""
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_ALLTIME}
registerVal2.trackTypes = registerVal3
registerVal1.LB_ZM_GB_KILLS_AT = registerVal2
registerVal2 = {}
registerVal2.title = "MENU_LB_ZMGLOBAL_SHOTS_FIRED"
registerVal2.icon = "t7_icons_leaderboards_zm_shotsfired"
registerVal2.gameType = ""
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_ALLTIME}
registerVal2.trackTypes = registerVal3
registerVal1.LB_ZM_GB_BULLETS_FIRED_AT = registerVal2
registerVal2 = {}
registerVal2.title = "MENU_LB_ZMGLOBAL_SHOTS_HIT"
registerVal2.icon = "t7_icons_leaderboards_zm_shotsontarget"
registerVal2.gameType = ""
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_ALLTIME}
registerVal2.trackTypes = registerVal3
registerVal1.LB_ZM_GB_BULLETS_HIT_AT = registerVal2
registerVal2 = {}
registerVal2.title = "MENU_LB_ZMGLOBAL_HEADSHOTS"
registerVal2.icon = "t7_icons_leaderboards_zm_headshots"
registerVal2.gameType = ""
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_ALLTIME}
registerVal2.trackTypes = registerVal3
registerVal1.LB_ZM_GB_HEADSHOTS_AT = registerVal2
registerVal2 = {}
registerVal2.title = "MENU_LB_ZMGLOBAL_EXPLOSIVE_KILLS"
registerVal2.icon = "t7_icons_leaderboards_zm_explosivekills"
registerVal2.gameType = ""
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_ALLTIME}
registerVal2.trackTypes = registerVal3
registerVal1.LB_ZM_GB_GRENADE_KILLS_AT = registerVal2
registerVal2 = {}
registerVal2.title = "MENU_LB_ZMGLOBAL_REVIVES"
registerVal2.icon = "t7_icons_leaderboards_zm_revives"
registerVal2.gameType = ""
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_ALLTIME}
registerVal2.trackTypes = registerVal3
registerVal1.LB_ZM_GB_REVIVES_AT = registerVal2
registerVal2 = {}
registerVal2.title = "MENU_LB_ZMGLOBAL_DISTANCE_TRAVELED"
registerVal2.icon = "t7_icons_leaderboards_zm_distancetraveled"
registerVal2.gameType = ""
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_ALLTIME}
registerVal2.trackTypes = registerVal3
registerVal1.LB_ZM_GB_DISTANCE_TRAVELED_AT = registerVal2
registerVal2 = {}
registerVal2.title = "MENU_LB_ZMGLOBAL_DOORS_OPENED"
registerVal2.icon = "t7_icons_leaderboards_zm_doorsopened"
registerVal2.gameType = ""
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_ALLTIME}
registerVal2.trackTypes = registerVal3
registerVal1.LB_ZM_GB_DOORS_PURCHASED_AT = registerVal2
registerVal2 = {}
registerVal2.title = "MENU_LB_ZMGLOBAL_PERKS_DRANK"
registerVal2.icon = "t7_icons_leaderboards_zm_perkcolas"
registerVal2.gameType = ""
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_ALLTIME}
registerVal2.trackTypes = registerVal3
registerVal1.LB_ZM_GB_PERKS_DRANK_AT = registerVal2
registerVal2 = {}
registerVal2.title = "ZMUI_FACTORY"
registerVal2.icon = "t7_menu_zombies_icon_giant"
registerVal2.gameType = ""
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_ALLTIME}
registerVal2.trackTypes = registerVal3
registerVal2.dlcBit = CoD.DLCBits.CONTENT_DLC0ZM
registerVal1.LB_ZM_MAP_FACTORY = registerVal2
registerVal2 = {}
registerVal2.title = "ZMUI_ZOD"
registerVal2.icon = "t7_menu_zombies_icon_shadowsofevil"
registerVal2.gameType = ""
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_ALLTIME}
registerVal2.trackTypes = registerVal3
registerVal1.LB_ZM_MAP_ZOD = registerVal2
registerVal2 = {}
registerVal2.title = "ZMUI_CASTLE"
registerVal2.icon = "t7_menu_zombies_icon_castle"
registerVal2.gameType = ""
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_ALLTIME}
registerVal2.trackTypes = registerVal3
registerVal2.dlcBit = CoD.DLCBits.CONTENT_DLC1
registerVal1.LB_ZM_MAP_CASTLE = registerVal2
registerVal2 = {}
registerVal2.title = "ZMUI_ISLAND"
registerVal2.icon = "t7_menu_zombies_icon_island"
registerVal2.gameType = ""
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_ALLTIME}
registerVal2.trackTypes = registerVal3
registerVal2.dlcBit = CoD.DLCBits.CONTENT_DLC2
registerVal1.LB_ZM_MAP_ISLAND = registerVal2
registerVal2 = {}
registerVal2.title = "DLC3_STALINGRAD"
registerVal2.icon = "t7_menu_zombies_icon_stalingrad"
registerVal2.gameType = ""
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_ALLTIME}
registerVal2.trackTypes = registerVal3
registerVal2.dlcBit = CoD.DLCBits.CONTENT_DLC3
registerVal1.LB_ZM_MAP_STALINGRAD = registerVal2
registerVal2 = {}
registerVal2.title = "DLC4_GENESIS"
registerVal2.icon = "t7_menu_zombies_icon_genesis"
registerVal2.gameType = ""
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_ALLTIME}
registerVal2.trackTypes = registerVal3
registerVal2.dlcBit = CoD.DLCBits.CONTENT_DLC4
registerVal1.LB_ZM_MAP_GENESIS = registerVal2
registerVal2 = {}
registerVal2.title = "DLC5_PROTOTYPE"
registerVal2.icon = "t7_menu_zombies_icon_prototype"
registerVal2.gameType = ""
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_ALLTIME}
registerVal2.trackTypes = registerVal3
registerVal2.dlcBit = CoD.DLCBits.CONTENT_DLC5
registerVal1.LB_ZM_MAP_PROTOTYPE = registerVal2
registerVal2 = {}
registerVal2.title = "DLC5_ASYLUM"
registerVal2.icon = "t7_menu_zombies_icon_asylum"
registerVal2.gameType = ""
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_ALLTIME}
registerVal2.trackTypes = registerVal3
registerVal2.dlcBit = CoD.DLCBits.CONTENT_DLC5
registerVal1.LB_ZM_MAP_ASYLUM = registerVal2
registerVal2 = {}
registerVal2.title = "DLC5_SUMPF"
registerVal2.icon = "t7_menu_zombies_icon_swamp"
registerVal2.gameType = ""
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_ALLTIME}
registerVal2.trackTypes = registerVal3
registerVal2.dlcBit = CoD.DLCBits.CONTENT_DLC5
registerVal1.LB_ZM_MAP_SUMPF = registerVal2
registerVal2 = {}
registerVal2.title = "DLC5_THEATER"
registerVal2.icon = "t7_menu_zombies_icon_theater"
registerVal2.gameType = ""
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_ALLTIME}
registerVal2.trackTypes = registerVal3
registerVal2.dlcBit = CoD.DLCBits.CONTENT_DLC5
registerVal1.LB_ZM_MAP_THEATER = registerVal2
registerVal2 = {}
registerVal2.title = "DLC5_COSMODROME"
registerVal2.icon = "t7_menu_zombies_icon_cosmodrome"
registerVal2.gameType = ""
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_ALLTIME}
registerVal2.trackTypes = registerVal3
registerVal2.dlcBit = CoD.DLCBits.CONTENT_DLC5
registerVal1.LB_ZM_MAP_COSMODROME = registerVal2
registerVal2 = {}
registerVal2.title = "DLC5_TEMPLE"
registerVal2.icon = "t7_menu_zombies_icon_temple"
registerVal2.gameType = ""
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_ALLTIME}
registerVal2.trackTypes = registerVal3
registerVal2.dlcBit = CoD.DLCBits.CONTENT_DLC5
registerVal1.LB_ZM_MAP_TEMPLE = registerVal2
registerVal2 = {}
registerVal2.title = "DLC5_MOON"
registerVal2.icon = "t7_menu_zombies_icon_moon"
registerVal2.gameType = ""
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_ALLTIME}
registerVal2.trackTypes = registerVal3
registerVal2.dlcBit = CoD.DLCBits.CONTENT_DLC5
registerVal1.LB_ZM_MAP_MOON = registerVal2
registerVal2 = {}
registerVal2.title = "DLC5_TOMB"
registerVal2.icon = "t7_menu_zombies_icon_tomb"
registerVal2.gameType = ""
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_ALLTIME}
registerVal2.trackTypes = registerVal3
registerVal2.dlcBit = CoD.DLCBits.CONTENT_DLC5
registerVal1.LB_ZM_MAP_TOMB = registerVal2
registerVal2 = {}
registerVal2.title = "MENU_LB_DOA_ROUND"
registerVal2.icon = "t7_icons_leaderboards_doa_round"
registerVal2.gameType = ""
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_ALLTIME}
registerVal2.trackTypes = registerVal3
registerVal1.LB_CP_DOA_BO3_ROUND = registerVal2
registerVal2 = {}
registerVal2.title = "MENU_LB_DOA_SCORE"
registerVal2.icon = "t7_icons_leaderboards_doa_score"
registerVal2.gameType = ""
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_ALLTIME}
registerVal2.trackTypes = registerVal3
registerVal1.LB_CP_DOA_BO3_SCORE = registerVal2
registerVal2 = {}
registerVal2.title = "MENU_LB_DOA_SILVERBACK_KILLS"
registerVal2.icon = "t7_icons_leaderboards_doa_silverback"
registerVal2.gameType = ""
registerVal3 = {}
registerVal3 = {Enum.LbTrackType.LB_TRK_ALLTIME}
registerVal2.trackTypes = registerVal3
registerVal1.LB_CP_DOA_BO3_SILVERBACKS = registerVal2
registerVal3 = {}
registerVal3.title = "MENU_LB_DOA_GEMS"
registerVal3.icon = "t7_icons_leaderboards_doa_gems"
registerVal3.gameType = ""
local registerVal4 = {}
registerVal4 = {Enum.LbTrackType.LB_TRK_ALLTIME}
registerVal3.trackTypes = registerVal4
registerVal1["LB_CP_DOA_BO3_GEMS"] = registerVal3
registerVal3 = {}
registerVal3.title = "MENU_LB_DOA_SKULLS"
registerVal3.icon = "t7_icons_leaderboards_doa_skulls"
registerVal3.gameType = ""
registerVal4 = {}
registerVal4 = {Enum.LbTrackType.LB_TRK_ALLTIME}
registerVal3.trackTypes = registerVal4
registerVal1["LB_CP_DOA_BO3_SKULLS"] = registerVal3
CoD.LeaderboardUtility.leaderboardInfo = registerVal1
registerVal2 = {}
registerVal3 = {}
registerVal4 = {}
registerVal4["columnStr"] = "MENU_SCORE"
registerVal4["offset"] = 0.000000
registerVal4["lbSortType"] = ""
local registerVal5 = {}
registerVal5["columnStr"] = "MENU_LB_SCORE_PER_MINUTE"
registerVal5["offset"] = 200.000000
registerVal5["lbSortType"] = "SPM"
local registerVal6 = {}
registerVal6["columnStr"] = "MENU_LB_GAMES_PLAYED"
registerVal6["offset"] = 300.000000
registerVal6["lbSortType"] = "GAMES_PLAYED"
local registerVal7 = {}
registerVal7["columnStr"] = "MENU_LB_TIME_PLAYED"
registerVal7["offset"] = 400.000000
registerVal7["lbSortType"] = "TIME_PLAYED"
registerVal3 = {registerVal4, registerVal5, registerVal6, registerVal7}
registerVal2.LB_MP_GB_SCORE = registerVal3
registerVal3 = {}
registerVal4 = {}
registerVal4["columnStr"] = "MENU_SCORE_PER_MINUTE"
registerVal4["offset"] = 0.000000
registerVal4["lbSortType"] = ""
registerVal5 = {}
registerVal5["columnStr"] = "MENU_LB_KILLS"
registerVal5["offset"] = 200.000000
registerVal5["lbSortType"] = "KILLS"
registerVal6 = {}
registerVal6["columnStr"] = "MENU_LB_ASSISTS"
registerVal6["offset"] = 400.000000
registerVal6["lbSortType"] = "ASSISTS"
registerVal3 = {registerVal4, registerVal5, registerVal6}
registerVal2.LB_MP_GM_TDM = registerVal3
registerVal3 = {}
registerVal4 = {}
registerVal4["columnStr"] = "MENU_SCORE_PER_MINUTE"
registerVal4["offset"] = 0.000000
registerVal4["lbSortType"] = ""
registerVal5 = {}
registerVal5["columnStr"] = "MENU_LB_KILLS"
registerVal5["offset"] = 200.000000
registerVal5["lbSortType"] = "KILLS"
registerVal6 = {}
registerVal6["columnStr"] = "MENU_LB_SCORE"
registerVal6["offset"] = 400.000000
registerVal6["lbSortType"] = "SCORE"
registerVal3 = {registerVal4, registerVal5, registerVal6}
registerVal2.LB_MP_GM_DM = registerVal3
registerVal3 = {}
registerVal4 = {}
registerVal4["columnStr"] = "MENU_SCORE_PER_MINUTE"
registerVal4["offset"] = 0.000000
registerVal4["lbSortType"] = ""
registerVal5 = {}
registerVal5["columnStr"] = "MENU_LB_KILLS"
registerVal5["offset"] = 200.000000
registerVal5["lbSortType"] = "KILLS"
registerVal6 = {}
registerVal6["columnStr"] = "MENU_LB_CAPTURES"
registerVal6["offset"] = 300.000000
registerVal6["lbSortType"] = "CAPTURES"
registerVal7 = {}
registerVal7["columnStr"] = "MENU_LB_DEFENDS"
registerVal7["offset"] = 400.000000
registerVal7["lbSortType"] = "DEFENDS"
registerVal3 = {registerVal4, registerVal5, registerVal6, registerVal7}
registerVal2.LB_MP_GM_DOM = registerVal3
registerVal3 = {}
registerVal4 = {}
registerVal4["columnStr"] = "MENU_SCORE_PER_MINUTE"
registerVal4["offset"] = 0.000000
registerVal4["lbSortType"] = ""
registerVal5 = {}
registerVal5["columnStr"] = "MENU_LB_KILLS"
registerVal5["offset"] = 200.000000
registerVal5["lbSortType"] = "KILLS"
registerVal6 = {}
registerVal6["columnStr"] = "MENU_LB_PLANTS"
registerVal6["offset"] = 300.000000
registerVal6["lbSortType"] = "PLANTS"
registerVal7 = {}
registerVal7["columnStr"] = "MENU_LB_DEFUSES"
registerVal7["offset"] = 400.000000
registerVal7["lbSortType"] = "DEFUSES"
registerVal3 = {registerVal4, registerVal5, registerVal6, registerVal7}
registerVal2.LB_MP_GM_SD = registerVal3
registerVal3 = {}
registerVal4 = {}
registerVal4["columnStr"] = "MENU_SCORE_PER_MINUTE"
registerVal4["offset"] = 0.000000
registerVal4["lbSortType"] = ""
registerVal5 = {}
registerVal5["columnStr"] = "MENU_LB_KILLS"
registerVal5["offset"] = 200.000000
registerVal5["lbSortType"] = "KILLS"
registerVal6 = {}
registerVal6["columnStr"] = "MENU_LB_CAPTURES"
registerVal6["offset"] = 300.000000
registerVal6["lbSortType"] = "CAPTURES"
registerVal7 = {}
registerVal7["columnStr"] = "MENU_LB_RETURNS"
registerVal7["offset"] = 400.000000
registerVal7["lbSortType"] = "RETURNS"
registerVal3 = {registerVal4, registerVal5, registerVal6, registerVal7}
registerVal2.LB_MP_GM_CTF = registerVal3
registerVal3 = {}
registerVal4 = {}
registerVal4["columnStr"] = "MENU_SCORE_PER_MINUTE"
registerVal4["offset"] = 0.000000
registerVal4["lbSortType"] = ""
registerVal5 = {}
registerVal5["columnStr"] = "MENU_LB_KILLS"
registerVal5["offset"] = 200.000000
registerVal5["lbSortType"] = "KILLS"
registerVal6 = {}
registerVal6["columnStr"] = "MENU_LB_PLANTS"
registerVal6["offset"] = 300.000000
registerVal6["lbSortType"] = "PLANTS"
registerVal7 = {}
registerVal7["columnStr"] = "MENU_LB_DEFUSES"
registerVal7["offset"] = 400.000000
registerVal7["lbSortType"] = "DEFUSES"
registerVal3 = {registerVal4, registerVal5, registerVal6, registerVal7}
registerVal2.LB_MP_GM_DEM = registerVal3
registerVal3 = {}
registerVal4 = {}
registerVal4["columnStr"] = "MENU_SCORE_PER_MINUTE"
registerVal4["offset"] = 0.000000
registerVal4["lbSortType"] = ""
registerVal5 = {}
registerVal5["columnStr"] = "MENU_LB_KILLS"
registerVal5["offset"] = 200.000000
registerVal5["lbSortType"] = "KILLS"
registerVal6 = {}
registerVal6["columnStr"] = "MENU_LB_AVG_TIME"
registerVal6["offset"] = 300.000000
registerVal6["lbSortType"] = "AVG_TIME"
registerVal7 = {}
registerVal7["columnStr"] = "MENU_LB_DEFENDS"
registerVal7["offset"] = 400.000000
registerVal7["lbSortType"] = "DEFENDS"
registerVal3 = {registerVal4, registerVal5, registerVal6, registerVal7}
registerVal2.LB_MP_GM_KOTH = registerVal3
registerVal3 = {}
registerVal4 = {}
registerVal4["columnStr"] = "MENU_SCORE_PER_MINUTE"
registerVal4["offset"] = 0.000000
registerVal4["lbSortType"] = ""
registerVal5 = {}
registerVal5["columnStr"] = "MENU_LB_KILLS"
registerVal5["offset"] = 200.000000
registerVal5["lbSortType"] = "KILLS"
registerVal6 = {}
registerVal6["columnStr"] = "MENU_LB_CONFIRMS"
registerVal6["offset"] = 300.000000
registerVal6["lbSortType"] = "CONFIRMS"
registerVal7 = {}
registerVal7["columnStr"] = "MENU_LB_DENIES"
registerVal7["offset"] = 400.000000
registerVal7["lbSortType"] = "DENIES"
registerVal3 = {registerVal4, registerVal5, registerVal6, registerVal7}
registerVal2.LB_MP_GM_CONF = registerVal3
registerVal3 = {}
registerVal4 = {}
registerVal4["columnStr"] = "MENU_SCORE_PER_MINUTE"
registerVal4["offset"] = 0.000000
registerVal4["lbSortType"] = ""
registerVal5 = {}
registerVal5["columnStr"] = "MENU_LB_KILLS"
registerVal5["offset"] = 200.000000
registerVal5["lbSortType"] = "KILLS"
registerVal6 = {}
registerVal6["columnStr"] = "MENU_LB_CARRIES"
registerVal6["offset"] = 300.000000
registerVal6["lbSortType"] = "CARRIES"
registerVal7 = {}
registerVal7["columnStr"] = "MENU_LB_THROWS"
registerVal7["offset"] = 400.000000
registerVal7["lbSortType"] = "THROWS"
registerVal3 = {registerVal4, registerVal5, registerVal6, registerVal7}
registerVal2.LB_MP_GM_BALL = registerVal3
registerVal3 = {}
registerVal4 = {}
registerVal4["columnStr"] = "MENU_SCORE_PER_MINUTE"
registerVal4["offset"] = 0.000000
registerVal4["lbSortType"] = ""
registerVal5 = {}
registerVal5["columnStr"] = "MENU_LB_KILLS"
registerVal5["offset"] = 200.000000
registerVal5["lbSortType"] = "KILLS"
registerVal6 = {}
registerVal6["columnStr"] = "MENU_LB_AVG_TIME"
registerVal6["offset"] = 300.000000
registerVal6["lbSortType"] = "AVG_TIME"
registerVal7 = {}
registerVal7["columnStr"] = "MENU_LB_DISABLES"
registerVal7["offset"] = 400.000000
registerVal7["lbSortType"] = "DISABLES"
registerVal3 = {registerVal4, registerVal5, registerVal6, registerVal7}
registerVal2.LB_MP_GM_ESCORT = registerVal3
registerVal3 = {}
registerVal4 = {}
registerVal4["columnStr"] = "MENU_SCORE_PER_MINUTE"
registerVal4["offset"] = 0.000000
registerVal4["lbSortType"] = ""
registerVal5 = {}
registerVal5["columnStr"] = "MENU_LB_KILLS"
registerVal5["offset"] = 200.000000
registerVal5["lbSortType"] = "KILLS"
registerVal6 = {}
registerVal6["columnStr"] = "MENU_LB_MELEES"
registerVal6["offset"] = 300.000000
registerVal6["lbSortType"] = "MELEES"
registerVal7 = {}
registerVal7["columnStr"] = "MENU_LB_SETBACKS"
registerVal7["offset"] = 400.000000
registerVal7["lbSortType"] = "SETBACKS"
registerVal3 = {registerVal4, registerVal5, registerVal6, registerVal7}
registerVal2.LB_MP_GM_GUN = registerVal3
registerVal3 = {}
registerVal4 = {}
registerVal4["columnStr"] = "MENU_SCORE_PER_MINUTE"
registerVal4["offset"] = 0.000000
registerVal4["lbSortType"] = ""
registerVal5 = {}
registerVal5["columnStr"] = "MENU_LB_KILLS"
registerVal5["offset"] = 200.000000
registerVal5["lbSortType"] = "KILLS"
registerVal6 = {}
registerVal6["columnStr"] = "MENU_LB_DENIES"
registerVal6["offset"] = 300.000000
registerVal6["lbSortType"] = "DENIES"
registerVal7 = {}
registerVal7["columnStr"] = "MENU_LB_DEPOSITS"
registerVal7["offset"] = 400.000000
registerVal7["lbSortType"] = "DEPOSITS"
registerVal3 = {registerVal4, registerVal5, registerVal6, registerVal7}
registerVal2.LB_MP_GM_CLEAN = registerVal3
registerVal3 = {}
registerVal4 = {}
registerVal4["columnStr"] = "MENU_SCORE_PER_MINUTE"
registerVal4["offset"] = 0.000000
registerVal4["lbSortType"] = ""
registerVal5 = {}
registerVal5["columnStr"] = "MENU_LB_KILLS"
registerVal5["offset"] = 200.000000
registerVal5["lbSortType"] = "KILLS"
registerVal6 = {}
registerVal6["columnStr"] = "MENU_LB_SCORE"
registerVal6["offset"] = 400.000000
registerVal6["lbSortType"] = "SCORE"
registerVal3 = {registerVal4, registerVal5, registerVal6}
registerVal2.LB_MP_GM_INFECT = registerVal3
registerVal3 = {}
registerVal4 = {}
registerVal4["columnStr"] = "MENU_SCORE_PER_MINUTE"
registerVal4["offset"] = 0.000000
registerVal4["lbSortType"] = ""
registerVal5 = {}
registerVal5["columnStr"] = "MENU_LB_KILLS"
registerVal5["offset"] = 200.000000
registerVal5["lbSortType"] = "KILLS"
registerVal6 = {}
registerVal6["columnStr"] = "MENU_LB_SCORE"
registerVal6["offset"] = 400.000000
registerVal6["lbSortType"] = "SCORE"
registerVal3 = {registerVal4, registerVal5, registerVal6}
registerVal2.LB_MP_GM_PROP = registerVal3
registerVal3 = {}
registerVal4 = {}
registerVal4["columnStr"] = "MENU_SCORE_PER_MINUTE"
registerVal4["offset"] = 0.000000
registerVal4["lbSortType"] = ""
registerVal5 = {}
registerVal5["columnStr"] = "MENU_LB_KILLS"
registerVal5["offset"] = 200.000000
registerVal5["lbSortType"] = "KILLS"
registerVal6 = {}
registerVal6["columnStr"] = "MENU_LB_AXES"
registerVal6["offset"] = 300.000000
registerVal6["lbSortType"] = "AXES"
registerVal7 = {}
registerVal7["columnStr"] = "MENU_LB_SETBACKS"
registerVal7["offset"] = 400.000000
registerVal7["lbSortType"] = "SETBACKS"
registerVal3 = {registerVal4, registerVal5, registerVal6, registerVal7}
registerVal2.LB_MP_GM_SAS = registerVal3
registerVal3 = {}
registerVal4 = {}
registerVal4["columnStr"] = "MENU_SCORE_PER_MINUTE"
registerVal4["offset"] = 0.000000
registerVal4["lbSortType"] = ""
registerVal5 = {}
registerVal5["columnStr"] = "MENU_LB_KILLS"
registerVal5["offset"] = 200.000000
registerVal5["lbSortType"] = "KILLS"
registerVal6 = {}
registerVal6["columnStr"] = "MENU_LB_ASSISTS"
registerVal6["offset"] = 400.000000
registerVal6["lbSortType"] = "ASSISTS"
registerVal3 = {registerVal4, registerVal5, registerVal6}
registerVal2.LB_MP_GM_SNIPERONLY = registerVal3
CoD.LeaderboardUtility["sortColumns"] = registerVal2
registerVal2 = {}
registerVal2 = {"LB_CP_TRAINING_SIM"}
CoD.LeaderboardUtility["leaderboardListTrainingSim"] = registerVal2
registerVal2 = {}
registerVal2 = {"LB_MP_GB_SCORE", "LB_MP_GM_TDM", "LB_MP_GM_DM", "LB_MP_GM_CONF", "LB_MP_GM_DOM", "LB_MP_GM_KOTH", "LB_MP_GM_SD", "LB_MP_GM_DEM", "LB_MP_GM_CTF", "LB_MP_GM_BALL", "LB_MP_GM_ESCORT", "LB_MP_GM_GUN", "LB_MP_GM_CLEAN", "LB_MP_GM_INFECT", "LB_MP_GM_PROP", "LB_MP_GM_SAS", "LB_MP_GM_SNIPERONLY"}
CoD.LeaderboardUtility["leaderboardListCore"] = registerVal2
registerVal2 = {}
registerVal2 = {"LB_MP_GB_SCORE", "LB_MP_GM_TDM", "LB_MP_GM_DM", "LB_MP_GM_CONF", "LB_MP_GM_DOM", "LB_MP_GM_SD", "LB_MP_GM_CTF"}
CoD.LeaderboardUtility["leaderboardListHardcore"] = registerVal2
registerVal2 = {}
registerVal2 = {"LB_MP_GB_SCORE_ARENA", "LB_MP_GM_KOTH_ARENA", "LB_MP_GM_SD_ARENA", "LB_MP_GM_CTF_ARENA", "LB_MP_GM_BALL_ARENA"}
CoD.LeaderboardUtility["leaderboardListArena"] = registerVal2
registerVal2 = {}
registerVal2 = {"LB_MP_GM_FR_FREERUN_01", "LB_MP_GM_FR_FREERUN_02", "LB_MP_GM_FR_FREERUN_03", "LB_MP_GM_FR_FREERUN_04"}
CoD.LeaderboardUtility["leaderboardListFreerun"] = registerVal2
registerVal2 = {}
registerVal2 = {"LB_MP_CG_GENERAL", "LB_MP_CG_TDM", "LB_MP_CG_DM", "LB_MP_CG_DOM", "LB_MP_CG_SD", "LB_MP_CG_CTF", "LB_MP_CG_DEM", "LB_MP_CG_KOTH", "LB_MP_CG_CONF", "LB_MP_CG_BALL", "LB_MP_CG_ESCORT", "LB_MP_CG_GUN", "LB_MP_CG_CLEAN"}
CoD.LeaderboardUtility["leaderboardListCustom"] = registerVal2
registerVal2 = {}
registerVal2 = {"LB_ZM_GB_KILLS", "LB_ZM_GB_BULLETS_FIRED", "LB_ZM_GB_BULLETS_HIT", "LB_ZM_GB_HEADSHOTS", "LB_ZM_GB_GRENADE_KILLS", "LB_ZM_GB_REVIVES", "LB_ZM_GB_DISTANCE_TRAVELED", "LB_ZM_GB_DOORS_PURCHASED", "LB_ZM_GB_PERKS_DRANK"}
CoD.LeaderboardUtility["leaderboardListZMGlobal"] = registerVal2
registerVal2 = {}
registerVal2 = {"LB_ZM_MAP_FACTORY", "LB_ZM_MAP_ZOD", "LB_ZM_MAP_CASTLE", "LB_ZM_MAP_ISLAND", "LB_ZM_MAP_STALINGRAD", "LB_ZM_MAP_GENESIS", "LB_ZM_MAP_PROTOTYPE", "LB_ZM_MAP_ASYLUM", "LB_ZM_MAP_SUMPF", "LB_ZM_MAP_THEATER", "LB_ZM_MAP_COSMODROME", "LB_ZM_MAP_TEMPLE", "LB_ZM_MAP_MOON", "LB_ZM_MAP_TOMB"}
CoD.LeaderboardUtility["leaderboardListZMMaps"] = registerVal2
registerVal2 = {}
registerVal2 = {"LB_CP_DOA_BO3_ROUND", "LB_CP_DOA_BO3_SCORE", "LB_CP_DOA_BO3_SILVERBACKS", "LB_CP_DOA_BO3_GEMS", "LB_CP_DOA_BO3_SKULLS"}
CoD.LeaderboardUtility["leaderboardListDOA"] = registerVal2
registerVal2 = {}
registerVal4 = {}
registerVal4["leaderboardList"] = CoD.LeaderboardUtility["leaderboardListTrainingSim"]
registerVal4["leaderboardSuffix"] = ""
registerVal4["leaderboardHeaderText"] = "MENU_LB_TAB_TRAINING_SIM_CAPS"
registerVal2["trainingSim"] = registerVal4
registerVal4 = {}
registerVal4["leaderboardList"] = CoD.LeaderboardUtility["leaderboardListCore"]
registerVal4["leaderboardSuffix"] = ""
registerVal4["leaderboardHeaderText"] = "MENU_LB_TAB_CORE_CAPS"
registerVal2["core"] = registerVal4
registerVal4 = {}
registerVal4["leaderboardList"] = CoD.LeaderboardUtility["leaderboardListHardcore"]
registerVal4["leaderboardSuffix"] = "_HC"
registerVal4["leaderboardHeaderText"] = "MENU_LB_TAB_HARDCORE_CAPS"
registerVal2["hardcore"] = registerVal4
registerVal4 = {}
registerVal4["leaderboardList"] = CoD.LeaderboardUtility["leaderboardListArena"]
registerVal4["leaderboardSuffix"] = ""
registerVal4["leaderboardHeaderText"] = "MENU_LB_TAB_ARENA_CAPS"
registerVal2["arena"] = registerVal4
registerVal4 = {}
registerVal4["leaderboardList"] = CoD.LeaderboardUtility["leaderboardListFreerun"]
registerVal4["leaderboardSuffix"] = ""
registerVal4["leaderboardHeaderText"] = "MENU_LB_TAB_FREERUN_CAPS"
registerVal2["freerun"] = registerVal4
registerVal4 = {}
registerVal4["leaderboardList"] = CoD.LeaderboardUtility["leaderboardListCustom"]
registerVal4["leaderboardSuffix"] = ""
registerVal4["leaderboardHeaderText"] = "MENU_LB_TAB_CUSTOM_CAPS"
registerVal2["custom"] = registerVal4
registerVal4 = {}
registerVal4["leaderboardList"] = CoD.LeaderboardUtility["leaderboardListZMGlobal"]
registerVal4["leaderboardSuffix"] = "_AT"
registerVal4["leaderboardHeaderText"] = "MENU_LB_TAB_ZMGLOBAL_CAPS"
registerVal2["zm_global"] = registerVal4
registerVal4 = {}
registerVal4["leaderboardList"] = CoD.LeaderboardUtility["leaderboardListZMMaps"]
registerVal4["leaderboardSuffix"] = ""
registerVal4["leaderboardHeaderText"] = "MENU_LB_TAB_ZMMAPS_CAPS"
registerVal2["zm_maps"] = registerVal4
registerVal4 = {}
registerVal4["leaderboardList"] = CoD.LeaderboardUtility["leaderboardListDOA"]
registerVal4["leaderboardSuffix"] = ""
registerVal4["leaderboardHeaderText"] = "MENU_DOA2_TITLE"
registerVal2["doa"] = registerVal4
CoD.LeaderboardUtility["leaderboardTab"] = registerVal2
CoD.LeaderboardUtility["leaderboardGameModeData"] = {}
local function __FUNC_5854_(arg0, arg1)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.GetModel(registerVal4, "leaderboardCategoryName")
	if not registerVal3 then
		return {}
	end
	registerVal4 = Engine.GetModelValue(registerVal3)
	if not registerVal4 then
		return {}
	end
	local registerVal8, registerVal9, registerVal10 = pairs(CoD.LeaderboardUtility.leaderboardTab[registerVal4].leaderboardList)
	for index11,value12 in registerVal8, registerVal9, registerVal10 do
		local registerVal14 = CoD.IsHiddenDLC(CoD.LeaderboardUtility.leaderboardInfo[value12].dlcBit)
		if not registerVal14 then
			local registerVal16 = {}
			local registerVal17 = {}
			local registerVal18 = LocalizeToUpperString(CoD.LeaderboardUtility.leaderboardInfo[value12].title)
			registerVal17.title = registerVal18
			registerVal17.icon = CoD.LeaderboardUtility.leaderboardInfo[value12].icon
			registerVal17.lbDef = (value12 .. CoD.LeaderboardUtility.leaderboardTab[registerVal4].leaderboardSuffix)
			registerVal16.models = registerVal17
			registerVal17 = {}
			if index11 ~= 1.000000 then
			end
			registerVal17.selectIndex = true
			registerVal16.properties = registerVal17
			table.insert({}, registerVal16)
		end
	end
	CoD.LeaderboardUtility.leaderboardGameModeData = {}
	return {}
end

CoD.LeaderboardUtility["LeaderboardGameModeButtonPrepare"] = __FUNC_5854_
local function __FUNC_5C15_(arg0, arg1)
	local registerVal3, registerVal4, registerVal5 = pairs(arg1)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		local registerVal9 = CoD.IsHiddenDLC(CoD.LeaderboardUtility.leaderboardInfo[value7].dlcBit)
		if not registerVal9 then
			local registerVal11 = {}
			local registerVal12 = {}
			local registerVal13 = LocalizeToUpperString(CoD.LeaderboardUtility.leaderboardInfo[value7].title)
			registerVal12.title = registerVal13
			registerVal12.icon = CoD.LeaderboardUtility.leaderboardInfo[value7].icon
			registerVal12.lbDef = value7
			registerVal11.models = registerVal12
			registerVal12 = {}
			if index6 ~= 1.000000 then
			end
			registerVal12.selectIndex = true
			registerVal11.properties = registerVal12
			table.insert({}, registerVal11)
		end
	end
	CoD.LeaderboardUtility.leaderboardGameModeData = {}
	return {}
end

CoD.LeaderboardUtility["CustomLeaderboardButtonPrepare"] = __FUNC_5C15_
registerVal2 = DataSourceHelpers["ListSetup"]("LeaderboardGameModeButton", CoD.LeaderboardUtility["LeaderboardGameModeButtonPrepare"], true)
DataSources["LeaderboardGameModeButton"] = registerVal2
local function __FUNC_5E6F_(arg0)
	local registerVal2 = IsLobbyLeaderboard(arg0)
	if registerVal2 then
		local registerVal3 = Engine.GetGlobalModel()
		registerVal2 = Engine.GetModel(registerVal3, "leaderboardDef")
		if registerVal2 then
			registerVal3 = Engine.GetModelValue(registerVal2)
			local registerVal6 = {}
			local registerVal7 = {}
			registerVal7.tabName = ""
			registerVal7.tabWidget = "CoD.Leaderboard_GameModeFrame"
			registerVal7.tabIcon = ""
			registerVal7.lbDef = registerVal3
			registerVal6.models = registerVal7
			registerVal7 = {}
			registerVal7.selectIndex = true
			registerVal6.properties = registerVal7
			table.insert({}, registerVal6)
		end
		return {}
	end
	registerVal3 = Engine.GetGlobalModel()
	registerVal2 = Engine.GetModel(registerVal3, "leaderboardDef")
	if registerVal2 ~= nil then
		local registerVal4 = Engine.GetModelValue(registerVal2)
	end
	registerVal4, registerVal5, registerVal6 = pairs(CoD.LeaderboardUtility.leaderboardGameModeData)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		local registerVal11 = {}
		local registerVal12 = {}
		registerVal12.tabName = value8.models.title
		registerVal12.tabWidget = "CoD.Leaderboard_GameModeFrame"
		registerVal12.tabIcon = ""
		registerVal12.lbDef = value8.models.lbDef
		registerVal11.models = registerVal12
		registerVal12 = {}
		if value8.models.lbDef ~= registerVal4 then
		end
		registerVal12.selectIndex = true
		registerVal11.properties = registerVal12
		table.insert({}, registerVal11)
	end
	return {}
end

CoD.LeaderboardUtility["LeaderboardGameModeTabsPrepare"] = __FUNC_5E6F_
registerVal2 = DataSourceHelpers["ListSetup"]("LeaderboardGameModeTabs", CoD.LeaderboardUtility["LeaderboardGameModeTabsPrepare"], true)
DataSources["LeaderboardGameModeTabs"] = registerVal2
local function __FUNC_625E_(arg0)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal1 = Engine.GetModelValue(Engine.GetModel(registerVal3, "LeaderboardFilter_LastUsedController"))
	CoD.perController[registerVal1].leaderboardZMMapsNumPlayersFilter = arg0
end

CoD.LeaderboardUtility["SetZMMapsNumPlayersFilter"] = __FUNC_625E_
local function __FUNC_63B6_(arg0)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal1 = Engine.GetModelValue(Engine.GetModel(registerVal3, "LeaderboardFilter_LastUsedController"))
	CoD.perController[registerVal1].leaderboardDOANumPlayersFilter = arg0
end

CoD.LeaderboardUtility["SetDOANumPlayersFilter"] = __FUNC_63B6_
local function __FUNC_650B_(arg0)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal1 = Engine.GetModelValue(Engine.GetModel(registerVal3, "LeaderboardFilter_LastUsedController"))
	CoD.perController[registerVal1].leaderboardPlayerFilter = arg0
end

CoD.LeaderboardUtility["SetPlayerFilter"] = __FUNC_650B_
local function __FUNC_6658_(arg0)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal1 = Engine.GetModelValue(Engine.GetModel(registerVal3, "LeaderboardFilter_LastUsedController"))
	CoD.perController[registerVal1].leaderboardDurationFilter = arg0
end

CoD.LeaderboardUtility["SetDurationFilter"] = __FUNC_6658_
local function __FUNC_67AA_(arg0)
	if arg0 == 1.000000 then
		return Engine.Localize("MENU_SOLO")
	else
		return Engine.Localize("MPUI_SHOUTCASTER_NUMBER_PLAYERS", arg0)
	end
end

CoD.LeaderboardUtility["GetZMMapsNumPlayersFilterString"] = __FUNC_67AA_
local function __FUNC_687F_(arg0)
	if arg0 == 0.000000 then
		return Engine.Localize("MENU_ALL")
	else
		if arg0 == 1.000000 then
			return Engine.Localize("MENU_SOLO")
		else
			return Engine.Localize("MPUI_SHOUTCASTER_NUMBER_PLAYERS", arg0)
		end
	end
end

CoD.LeaderboardUtility["GetDOANumPlayersFilterString"] = __FUNC_687F_
local function __FUNC_6992_(arg0)
	if arg0 == Enum.LbFilter.LB_FILTER_FRIENDS then
		return Engine.Localize("MENU_LB_PFILTER_FRIENDS")
	else
		if arg0 == Enum.LbFilter.LB_FILTER_LOBBY_MEMBERS then
			return Engine.Localize("MENU_LB_PFILTER_LOBBY")
		else
			if arg0 == Enum.LbFilter.LB_FILTER_CUSTOM then
				return Engine.Localize("MENU_LB_PFILTER_RECENT_LOBBY")
			else
				if arg0 == Enum.LbFilter.LB_FILTER_NONE then
					return Engine.Localize("MENU_LB_PFILTER_ALL")
				end
			end
		end
	end
end

CoD.LeaderboardUtility["GetPlayerFilterString"] = __FUNC_6992_
local function __FUNC_6BFB_(arg0)
	if arg0 == Enum.LbTrackType.LB_TRK_ALLTIME then
		return Engine.Localize("MENU_LB_DFILTER_ALL_TIME")
	else
		if arg0 == Enum.LbTrackType.LB_TRK_MONTHLY then
			return Engine.Localize("MENU_LB_DFILTER_MONTHLY")
		else
			if arg0 == Enum.LbTrackType.LB_TRK_WEEKLY then
				return Engine.Localize("MENU_LB_DFILTER_WEEKLY")
			else
				if arg0 == Enum.LbTrackType.LB_TRK_DAILY then
					return Engine.Localize("MENU_LB_DFILTER_DAILY")
				end
			end
		end
	end
end

CoD.LeaderboardUtility["GetDurationFilterString"] = __FUNC_6BFB_
local function __FUNC_6E54_(arg0)
	local registerVal1 = {}
	local registerVal2 = {}
	local registerVal3 = Engine.Localize("MENU_SOLO")
	registerVal2.name = registerVal3
	registerVal2.value = 1.000000
	registerVal3 = {}
	local registerVal4 = Engine.Localize("MPUI_SHOUTCASTER_NUMBER_PLAYERS", 2.000000)
	registerVal3.name = registerVal4
	registerVal3.value = 2.000000
	registerVal4 = {}
	local registerVal5 = Engine.Localize("MPUI_SHOUTCASTER_NUMBER_PLAYERS", 3.000000)
	registerVal4.name = registerVal5
	registerVal4.value = 3.000000
	registerVal5 = {}
	local registerVal6 = Engine.Localize("MPUI_SHOUTCASTER_NUMBER_PLAYERS", 4.000000)
	registerVal5.name = registerVal6
	registerVal5.value = 4.000000
	registerVal1 = {registerVal2, registerVal3, registerVal4, registerVal5}
	registerVal3 = Engine.GetModelForController(arg0)
	registerVal2 = CoD.SafeGetModelValue(registerVal3, "leaderboards.leaderboardZMMapsNumPlayersFilter")
	if not registerVal2 then
	end
	registerVal3 = {}
	registerVal4 = {}
	registerVal4.displayText = "MENU_LB_FILTER_NUMBER_OF_PLAYERS"
	registerVal4.hintText = ""
	registerVal5 = CoD.OptionsUtility.CreateCustomOptionDataSource(arg0, "LeaderboardFilterOptions_ZMMapsNumPlayersFilter", registerVal1, nil, CoD.LeaderboardUtility.SetZMMapsNumPlayersFilter, nil, nil)
	registerVal4.optionsDatasource = registerVal5
	registerVal5 = CoD.OptionsUtility.GetCustomProfileSelection(arg0, registerVal1, CoD.LeaderboardUtility.DEFAULT_ZM_MAPS_NUM_PLAYERS)
	registerVal4.currentSelection = registerVal5
	registerVal3.models = registerVal4
	registerVal3.properties = {}
	return registerVal3
end

CoD.LeaderboardUtility["CreateModels_ZMMapsNumPlayersFilter"] = __FUNC_6E54_
local function __FUNC_72DC_(arg0)
	local registerVal1 = {}
	local registerVal2 = {}
	local registerVal3 = Engine.Localize("MENU_ALL")
	registerVal2.name = registerVal3
	registerVal2.value = 0.000000
	registerVal3 = {}
	local registerVal4 = Engine.Localize("MENU_SOLO")
	registerVal3.name = registerVal4
	registerVal3.value = 1.000000
	registerVal4 = {}
	local registerVal5 = Engine.Localize("MPUI_SHOUTCASTER_NUMBER_PLAYERS", 2.000000)
	registerVal4.name = registerVal5
	registerVal4.value = 2.000000
	registerVal5 = {}
	local registerVal6 = Engine.Localize("MPUI_SHOUTCASTER_NUMBER_PLAYERS", 3.000000)
	registerVal5.name = registerVal6
	registerVal5.value = 3.000000
	registerVal6 = {}
	local registerVal7 = Engine.Localize("MPUI_SHOUTCASTER_NUMBER_PLAYERS", 4.000000)
	registerVal6.name = registerVal7
	registerVal6.value = 4.000000
	registerVal1 = {registerVal2, registerVal3, registerVal4, registerVal5, registerVal6}
	registerVal3 = Engine.GetModelForController(arg0)
	registerVal2 = CoD.SafeGetModelValue(registerVal3, "leaderboards.leaderboardDOANumPlayersFilter")
	if not registerVal2 then
	end
	registerVal3 = {}
	registerVal4 = {}
	registerVal4.displayText = "MENU_LB_FILTER_NUMBER_OF_PLAYERS"
	registerVal4.hintText = ""
	registerVal5 = CoD.OptionsUtility.CreateCustomOptionDataSource(arg0, "LeaderboardFilterOptions_DOANumPlayersFilter", registerVal1, nil, CoD.LeaderboardUtility.SetDOANumPlayersFilter, nil, nil)
	registerVal4.optionsDatasource = registerVal5
	registerVal5 = CoD.OptionsUtility.GetCustomProfileSelection(arg0, registerVal1, CoD.LeaderboardUtility.DEFAULT_DOA_NUM_PLAYERS)
	registerVal4.currentSelection = registerVal5
	registerVal3.models = registerVal4
	registerVal3.properties = {}
	return registerVal3
end

CoD.LeaderboardUtility["CreateModels_DOANumPlayersFilter"] = __FUNC_72DC_
local function __FUNC_7792_(arg0)
	local registerVal1 = IsCustomLeaderboard(arg0)
	local registerVal5 = {}
	local registerVal6 = Engine.Localize("MENU_LB_PFILTER_FRIENDS")
	registerVal5.name = registerVal6
	registerVal5.value = Enum.LbFilter.LB_FILTER_FRIENDS
	table.insert({}, registerVal5)
	registerVal5 = {}
	registerVal6 = Engine.Localize("MENU_LB_PFILTER_LOBBY")
	registerVal5.name = registerVal6
	registerVal5.value = Enum.LbFilter.LB_FILTER_LOBBY_MEMBERS
	table.insert({}, registerVal5)
	if registerVal1 then
		registerVal5 = {}
		registerVal6 = Engine.Localize("MENU_LB_PFILTER_RECENT_LOBBY")
		registerVal5.name = registerVal6
		registerVal5.value = Enum.LbFilter.LB_FILTER_CUSTOM
		table.insert({}, registerVal5)
	end
	if not registerVal1 then
		registerVal5 = {}
		registerVal6 = Engine.Localize("MENU_LB_PFILTER_ALL")
		registerVal5.name = registerVal6
		registerVal5.value = Enum.LbFilter.LB_FILTER_NONE
		table.insert({}, registerVal5)
	end
	return {}
end

CoD.LeaderboardUtility["LeaderboardPlayerFilterList"] = __FUNC_7792_
local function __FUNC_7ACC_(arg0)
	local registerVal1 = CoD.LeaderboardUtility.LeaderboardPlayerFilterList(arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = CoD.SafeGetModelValue(registerVal3, "leaderboards.leaderboardPlayerFilter")
	if not registerVal2 then
	end
	registerVal3 = {}
	local registerVal4 = {}
	registerVal4.displayText = "MENU_LB_FILTER_PLAYERS"
	registerVal4.hintText = ""
	local registerVal5 = CoD.OptionsUtility.CreateCustomOptionDataSource(arg0, "LeaderboardFilterOptions_PlayerFilter", registerVal1, nil, CoD.LeaderboardUtility.SetPlayerFilter, nil, nil)
	registerVal4.optionsDatasource = registerVal5
	registerVal5 = CoD.OptionsUtility.GetCustomProfileSelection(arg0, registerVal1, Enum.LbFilter.LB_FILTER_FRIENDS)
	registerVal4.currentSelection = registerVal5
	registerVal3.models = registerVal4
	registerVal3.properties = {}
	return registerVal3
end

CoD.LeaderboardUtility["CreateModels_PlayerFilter"] = __FUNC_7ACC_
local function __FUNC_7E68_(arg0)
	local registerVal1 = {}
	local registerVal2 = {}
	local registerVal3 = Engine.Localize("MENU_LB_DFILTER_ALL_TIME")
	registerVal2.name = registerVal3
	registerVal2.value = Enum.LbTrackType.LB_TRK_ALLTIME
	registerVal3 = {}
	local registerVal4 = Engine.Localize("MENU_LB_DFILTER_MONTHLY")
	registerVal3.name = registerVal4
	registerVal3.value = Enum.LbTrackType.LB_TRK_MONTHLY
	registerVal4 = {}
	local registerVal5 = Engine.Localize("MENU_LB_DFILTER_WEEKLY")
	registerVal4.name = registerVal5
	registerVal4.value = Enum.LbTrackType.LB_TRK_WEEKLY
	registerVal5 = {}
	local registerVal6 = Engine.Localize("MENU_LB_DFILTER_DAILY")
	registerVal5.name = registerVal6
	registerVal5.value = Enum.LbTrackType.LB_TRK_DAILY
	registerVal1 = {registerVal2, registerVal3, registerVal4, registerVal5}
	registerVal3 = Engine.GetModelForController(arg0)
	registerVal2 = CoD.SafeGetModelValue(registerVal3, "leaderboards.leaderboardDurationFilter")
	if not registerVal2 then
	end
	registerVal5 = Engine.GetGlobalModel()
	registerVal3 = Engine.GetModelValue(Engine.GetModel(registerVal5, "leaderboardDef"))
	registerVal6, registerVal7, registerVal8 = ipairs(CoD.LeaderboardUtility.leaderboardInfo[registerVal3].trackTypes)
	for index9,value10 in registerVal6, registerVal7, registerVal8 do
		local registerVal11, registerVal12, registerVal13 = ipairs(registerVal1)
		for index14,value15 in registerVal11, registerVal12, registerVal13 do
			if value15.value == value10 then
				table.insert({}, registerVal1[index14])
			else
			end
		end
	end
	registerVal6 = {}
	registerVal7 = {}
	registerVal7.displayText = "MENU_LB_FILTER_DURATION"
	registerVal7.hintText = ""
	registerVal8 = CoD.OptionsUtility.CreateCustomOptionDataSource(arg0, "LeaderboardFilterOptions_DurationFilter", {}, nil, CoD.LeaderboardUtility.SetDurationFilter, nil, nil)
	registerVal7.optionsDatasource = registerVal8
	registerVal8 = CoD.OptionsUtility.GetCustomProfileSelection(arg0, {}, Enum.LbTrackType.LB_TRK_ALLTIME)
	registerVal7.currentSelection = registerVal8
	registerVal6.models = registerVal7
	registerVal6.properties = {}
	return registerVal6
end

CoD.LeaderboardUtility["CreateModels_DurationFilter"] = __FUNC_7E68_
local function __FUNC_8555_(arg0)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal2 = Engine.GetModelValue(Engine.GetModel(registerVal4, "leaderboardDef"))
	local registerVal6 = Engine.GetGlobalModel()
	local registerVal5 = Engine.CreateModel(registerVal6, "LeaderboardFilter_LastUsedController")
	Engine.SetModelValue(registerVal5, arg0)
	registerVal4 = IsZMMapsLeaderboard(arg0)
	if registerVal4 then
		table.insert({}, CoD.LeaderboardUtility.CreateModels_ZMMapsNumPlayersFilter(arg0))
	end
	registerVal4 = IsDOALeaderboard(arg0)
	if registerVal4 then
		registerVal4 = LUI.startswith(registerVal2, "LB_CP_DOA_BO3_SCORE")
		registerVal4 = LUI.startswith(registerVal2, "LB_CP_DOA_BO3_ROUND")
		if not {} or registerVal4 then
			table.insert({}, CoD.LeaderboardUtility.CreateModels_DOANumPlayersFilter(arg0))
		end
	end
	registerVal4 = IsLobbyLeaderboard(arg0)
	if not registerVal4 then
		table.insert({}, CoD.LeaderboardUtility.CreateModels_PlayerFilter(arg0))
	end
	if 1.000000 < #CoD.LeaderboardUtility.leaderboardInfo[registerVal2].trackTypes then
		table.insert({}, CoD.LeaderboardUtility.CreateModels_DurationFilter(arg0))
	end
	return {}
end

CoD.LeaderboardUtility["LeaderboardFilterOptionsPrepare"] = __FUNC_8555_
local function __FUNC_8A4A_(arg0)
	local registerVal2 = IsCustomLeaderboard(arg0)
	if registerVal2 == true then
		local registerVal4 = {}
		local registerVal5 = {}
		registerVal5.displayText = "MENU_LB_RESET_ALL_LEADERBOARDS"
		registerVal5.actionText = "MENU_LB_RESET_MY_STATS"
		registerVal5.hintText = "MENU_LB_RESET_ALL_LEADERBOARDS_INFO"
		registerVal5.action = OpenLeaderboardResetOverlay
		registerVal5.param = 0.000000
		registerVal5.disabled = false
		registerVal4.models = registerVal5
		table.insert({}, registerVal4)
		registerVal4 = {}
		registerVal5 = {}
		registerVal5.displayText = "MENU_LB_RESET_CURRENT_LEADERBOARD"
		registerVal5.actionText = "MENU_LB_RESET_MY_STATS"
		registerVal5.hintText = "MENU_LB_RESET_CURRENT_LEADERBOARD_INFO"
		registerVal5.action = OpenLeaderboardResetOverlay
		registerVal5.param = 1.000000
		registerVal5.disabled = false
		registerVal4.models = registerVal5
		table.insert({}, registerVal4)
	end
	return {}
end

CoD.LeaderboardUtility["LeaderboardResetOptionsPrepare"] = __FUNC_8A4A_
local function __FUNC_8CCB_(arg0)
	return "LB_MP_GB_SCORE"
end

CoD.LeaderboardUtility["GetCareerLeaderboardDef"] = __FUNC_8CCB_
registerVal2 = {}
registerVal2["menuName"] = "SystemOverlay_Compact"
registerVal2.title = "MENU_LEADERBOARDS_NOT_AVAILABLE"
registerVal2["description"] = "MENU_LEADERBOARDS_NOT_AVAILABLE_DESC"
registerVal2["categoryType"] = CoD["OverlayUtility"]["OverlayTypes"]["Notice"]
local function __FUNC_8D14_()
	local function __FUNC_8DE3_(arg0)
		local registerVal1 = {}
		local registerVal2 = {}
		local registerVal3 = {}
		registerVal3.displayText = "MENU_OK"
		registerVal2.models = registerVal3
		registerVal3 = {}
		local function __FUNC_8E92_(arg0, arg1, arg2, arg3, arg4)
			GoBack(arg4, arg2)
		end

		registerVal3.action = __FUNC_8E92_
		registerVal2.properties = registerVal3
		registerVal1 = {registerVal2}
		return registerVal1
	end

	local registerVal1 = DataSourceHelpers.ListSetup("LeaderboardsDownForMaintanenceList", __FUNC_8DE3_, true, nil)
	DataSources.LeaderboardsDownForMaintanenceList = registerVal1
	return "LeaderboardsDownForMaintanenceList"
end

registerVal2["listDatasource"] = __FUNC_8D14_
registerVal2[CoD["OverlayUtility"]["GoBackPropertyName"]] = CoD["OverlayUtility"]["DefaultGoBack"]
CoD["OverlayUtility"]["AddSystemOverlay"]("LeaderboardsDownForMaintanence", registerVal2)
registerVal2 = DataSourceHelpers["ListSetup"]("LeaderboardFilterOptions", CoD.LeaderboardUtility["LeaderboardFilterOptionsPrepare"], true)
DataSources["LeaderboardFilterOptions"] = registerVal2
registerVal2 = DataSourceHelpers["ListSetup"]("LeaderboardResetOptions", CoD.LeaderboardUtility["LeaderboardResetOptionsPrepare"], true)
DataSources["LeaderboardResetOptions"] = registerVal2
