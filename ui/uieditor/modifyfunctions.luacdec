-- Decompiled with CoDLUIDecompiler by JariK

require("lua.Shared.LobbyData")
require("ui.T6.lobby.presence")
require("ui.uieditor.modifyFunctions_helper")
function FractionToPercentage(arg0)
	local registerVal1 = tonumber(arg0)
	if registerVal1 then
		local registerVal3 = string.format("%.2f", (registerVal1 * 100.000000))
		return Engine.Localize("MPUI_PERCENT", registerVal3)
	end
	return ""
end

function FractionToPercentageRounded(arg0)
	local registerVal2 = math.floor(((arg0 * 100.000000) + 0.500000))
	return Engine.Localize("MPUI_PERCENT", registerVal2)
end

function NumberAsTime(arg0)
	local registerVal1 = math.floor((arg0 / 60000.000000))
	local registerVal2 = math.floor(((arg0 - (registerVal1 * 60000.000000)) / 1000.000000))
	if registerVal2 < 10.000000 then
	end
	if (arg0 % 1000.000000) < 10.000000 then
	else
		if ("00" .. (arg0 % 1000.000000)) < 100.000000 then
		end
	end
	return (registerVal1 .. ":" .. ("0" .. registerVal2) .. "." .. ("0" .. ("00" .. (arg0 % 1000.000000))))
end

function NumberAsTimeNoMS(arg0)
	local registerVal1 = math.floor((arg0 / 60000.000000))
	local registerVal2 = math.floor(((arg0 - (registerVal1 * 60000.000000)) / 1000.000000))
	if registerVal2 < 10.000000 then
	end
	return (registerVal1 .. ":" .. ("0" .. registerVal2))
end

function SecondsAsTime(arg0)
	return NumberAsTimeNoMS((arg0 * 1000.000000))
end

function BoolToNumber(arg0)
	if arg0 then
		return 1.000000
	else
		return 0.000000
	end
end

function SecondsAsTimePlayedString(arg0)
	local registerVal1 = math.floor((arg0 / 86400.000000))
	local registerVal2 = math.floor(((arg0 - (registerVal1 * 86400.000000)) / 3600.000000))
	local registerVal3 = math.floor((((arg0 - (registerVal1 * 86400.000000)) - (registerVal2 * 3600.000000)) / 60.000000))
	return Engine.Localize("MENU_COMBAT_RECORD_TIME_PLAYED", registerVal1, registerVal2, registerVal3, (((arg0 - (registerVal1 * 86400.000000)) - (registerVal2 * 3600.000000)) - (registerVal3 * 60.000000)))
end

function SecondsAsTimePlayedStringShort(arg0)
	local registerVal1 = math.floor((arg0 / 3600.000000))
	if registerVal1 < 10.000000 then
	end
	local registerVal2 = math.floor(((arg0 - (("0" .. registerVal1) * 3600.000000)) / 60.000000))
	if registerVal2 < 10.000000 then
	end
	local registerVal3 = math.floor(((arg0 - (("0" .. registerVal1) * 3600.000000)) - (("0" .. registerVal2) * 60.000000)))
	if registerVal3 < 10.000000 then
	end
	return (("0" .. registerVal1) .. ":" .. ("0" .. registerVal2) .. ":" .. ("0" .. registerVal3))
end

function SecondsAsHourMinutesSeconds(arg0)
	return LuaUtils.SecondsToTimeRemainingString(arg0, true)
end

function GetCenteredCharacter(arg0, arg1, arg2)
	local registerVal5 = arg2:len()
	local registerVal4 = math.floor((registerVal5 / 2.000000))
	registerVal5 = arg2:len()
	if 0.000000 < (arg0 - ((arg1 / 2.000000) - registerVal4)) and (arg0 - ((arg1 / 2.000000) - registerVal4)) <= registerVal5 then
		return arg2:sub((arg0 - ((arg1 / 2.000000) - registerVal4)), (arg0 - ((arg1 / 2.000000) - registerVal4)))
	end
	return ""
end

function GetRightAlignedCharacter(arg0, arg1, arg2)
	local registerVal3 = arg2:len()
	local registerVal4 = arg2:len()
	if 0.000000 < (registerVal3 - (arg1 - arg0)) and (registerVal3 - (arg1 - arg0)) <= registerVal4 then
		return arg2:sub((registerVal3 - (arg1 - arg0)), (registerVal3 - (arg1 - arg0)))
	end
	return ""
end

function SetValueIfEmptyString(arg0, arg1)
	if arg1 == "" then
		return arg0
	end
	return arg1
end

function SetValueIfStringEqualTo(arg0, arg1, arg2)
	if arg2 == arg0 then
		return arg1
	end
	return arg2
end

function SetValueIfNumberEqualTo(arg0, arg1, arg2)
	if arg2 == arg0 then
		return arg1
	end
	return arg2
end

function SetValueIfNumberIsLessThanOrEqualTo(arg0, arg1, arg2)
	local registerVal3 = type(arg2)
	if registerVal3 == "number" and arg2 <= arg0 then
		return arg1
	end
	return arg2
end

function ShowScaledVotes(arg0)
	local registerVal1 = tonumber(arg0)
	if 1000.000000 <= registerVal1 then
		return math.floor((registerVal1 / 1000.000000))
	end
	return registerVal1
end

function SetValueIfNumberIsGreaterThanOrEqualTo(arg0, arg1, arg2)
	local registerVal3 = type(arg2)
	if registerVal3 == "number" and arg0 <= arg2 then
		return arg1
	end
	return arg2
end

function ImageIsEverywhereButOrbis(arg0)
	if arg0 or not "$white" then
	end
	return arg0
end

function ImageIsEverywhereButDurango(arg0)
	if arg0 or not "$white" then
	end
	return arg0
end

function ImageIsEverywhereButPC(arg0)
	if arg0 or not "$white" then
	end
	return arg0
end

function ImageIsOnlyOnOrbis(arg0)
	if CoD.isPS4 then
	else
	end
	return "$white"
end

function ImageIsOnlyOnDurango(arg0)
	if CoD.isDurango then
	else
	end
	return "$white"
end

function ImageIsOnlyOnDurangoOrPc(arg0)
	if not arg0 or CoD.isPC then
	else
	end
	return "$white"
end

function ImageIsOnlyOnPC(arg0)
	if CoD.isPC then
	else
	end
	return "$white"
end

function AppendCurrentSessionMode(arg0)
	local registerVal3 = Engine.GetModeName()
	registerVal3 = registerVal3:lower()
	return (arg0 .. "_" .. registerVal3)
end

function AppendPlatform(arg0)
	local registerVal3 = Engine.GetCurrentPlatform()
	registerVal3 = registerVal3:lower()
	return (arg0 .. "_" .. registerVal3)
end

function NumberAsTimeZeroDashes(arg0)
	if arg0 == 0.000000 then
		return "--:--:--"
	end
	return NumberAsTime(arg0)
end

function NumberAsPercentRounded(arg0)
	local registerVal1 = math.floor(((arg0 * 100.000000) + 0.500000))
	if arg0 < 1.000000 and registerVal1 == 100.000000 then
	else
		if 0.000000 < arg0 and 99.000000 == 0.000000 then
		end
	end
	tostring(1.000000)
	return Engine.Localize("MPUI_PERCENT", tostring)
end

function LocalizeString(arg0)
	return Engine.Localize(arg0)
end

function LocalizeIntoString(arg0, arg1)
	return Engine.Localize(arg0, arg1)
end

function LocalizeIntoStringWithPSTOrPDT(arg0, arg1)
	local registerVal3 = AppendPSTOrPDT(arg0)
	return Engine.Localize(registerVal3, arg1)
end

function LocalizeToUpperString(arg0)
	Engine.Localize(arg0)
	return Engine.ToUpper(Engine.Localize)
end

function ConvertToUpperString(arg0)
	Engine.Localize(arg0)
	return Engine.ToUpper(Engine.Localize)
end

function ToUpper(arg0)
	return Engine.ToUpper(arg0)
end

function ToString(arg0)
	return tostring(arg0)
end

function LocalizePlural(arg0, arg1, arg2)
	if arg2 == 1.000000 then
		return Engine.Localize(arg0, arg2)
	end
	return Engine.Localize(arg1, arg2)
end

function LocalizeIntoStrXIfEqualsElseY(arg0, arg1, arg2, arg3)
	if arg0 == arg3 then
		return Engine.Localize(arg1, arg3)
	end
	return Engine.Localize(arg2, arg3)
end

function AppendString(arg0, arg1)
	return (arg1 .. arg0)
end

function AppendToLocalizedString(arg0, arg1)
	local registerVal2 = Engine.Localize(arg1)
	return (registerVal2 .. arg0)
end

function AppendAndLocalizeString(arg0, arg1)
	return Engine.Localize((arg1 .. arg0))
end

function LanguageOverrideNumber(arg0, arg1, arg2)
	local registerVal3 = IsCurrentLanguageTextEqualTo(arg0)
	if registerVal3 then
	else
	end
	return arg2
end

function LanguageOverrideString(arg0, arg1, arg2)
	local registerVal3 = IsCurrentLanguageTextEqualTo(arg0)
	if registerVal3 then
	else
	end
	return arg2
end

function AppendStringIfRefExists(arg0, arg1)
	local registerVal2 = Engine.LocalizeRefExists((arg1 .. arg0))
	if registerVal2 then
		return (arg1 .. arg0)
	else
		return arg1
	end
end

function AppendLocalizeString(arg0, arg1)
	local registerVal3 = Engine.Localize(arg0)
	return (arg1 .. registerVal3)
end

function AppendLocalizeStringWithSeparator(arg0, arg1, arg2)
	local registerVal5 = Engine.Localize(arg1)
	return (arg2 .. arg0 .. registerVal5)
end

function PrependString(arg0, arg1)
	return (arg0 .. arg1)
end

function PrependLocalizeString(arg0, arg1)
	local registerVal2 = Engine.Localize(arg0)
	return (registerVal2 .. arg1)
end

function PrependToLocalizeStringIfNotEmpty(arg0, arg1)
	local registerVal3 = Engine.Localize(arg1)
	if arg1 == "" or not (arg0 .. registerVal3) then
	end
	return ""
end

function PrependLocalizedStringWithSeparator(arg0, arg1, arg2)
	local registerVal3 = Engine.Localize(arg0)
	return (registerVal3 .. arg1 .. arg2)
end

function SplitString(arg0, arg1)
	LUI.splitString(arg1, arg0)
	return unpack(LUI.splitString)
end

function LocalizeIfStringEqualTo(arg0, arg1)
	if arg0 == arg1 then
		return Engine.Localize(arg1)
	end
	return arg1
end

function StringAsClanTag(arg0)
	if  or arg0 == "" then
		return ""
	else
		return ("[" .. arg0 .. "]")
	end
end

function GetFirstSignedInController(arg0)
	Engine.GetGamertagForController(0.000000)
	return Engine.Localize("MENU_SIGNED_IN_USER", Engine.GetGamertagForController)
end

function GetCurrentAttachmentsString(arg0, arg1)
	CoD.CACUtility.GetWeaponAndAttachments({}, arg0)
	return CoD.CACUtility.GetLocalizedAttachmentsString({})
end

function TimestampToDateTimeString(arg0)
	tonumber(arg0)
	return Engine.SecondsAsTime(tonumber)
end

function GetWeekDayFromIntDvar(arg0, arg1)
	local registerVal2 = {}
	registerVal2 = {"MENU_DAYS_SUN", "MENU_DAYS_MON", "MENU_DAYS_TUE", "MENU_DAYS_WED", "MENU_DAYS_THU", "MENU_DAYS_FRI", "MENU_DAYS_SAT"}
	local registerVal3 = GetDvarValue(arg0, "")
	return registerVal2[((registerVal3 % 7.000000) + 1.000000)]
end

function Negate(arg0)
	return (1.000000 - arg0)
end

function Add(arg0, arg1)
	return (arg1 + arg0)
end

function Multiple(arg0, arg1)
	return (arg1 * arg0)
end

function ZeroIfEqualElseArg(arg0, arg1, arg2)
	if arg2 ~= arg0 or not 0.000000 then
	end
	return arg1
end

function StringOverrideIfLess(arg0, arg1, arg2)
	local registerVal3 = tonumber(arg2)
	if registerVal3 == nil then
		return arg2
	end
	if registerVal3 < arg0 then
	else
	end
	return arg2
end

function FormatNumberAsString(arg0, arg1)
	return string.format(("%." .. arg0 .. "f"), arg1)
end

function RandomAddPercent(arg0, arg1)
	local registerVal2 = math.random()
	return (arg1 + ((registerVal2 * arg0) * 0.010000))
end

function GetOfflineAlpha(arg0)
	if arg0 == Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE then
		return 0.000000
	else
		return 1.000000
	end
end

function GetOnlineAlpha(arg0)
	if arg0 == Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE then
		return 1.000000
	else
		return 0.000000
	end
end

function GamepadShowAlpha(arg0, arg1)
	local registerVal2 = IsGamepad(controller)
	if registerVal2 then
		return arg1
	else
		return 0.000000
	end
end

function NotGamepadShowAlpha(arg0, arg1)
	local registerVal2 = IsGamepad(controller)
	if not registerVal2 then
		return arg1
	else
		return 0.000000
	end
end

function PCShowAlpha(arg0, arg1)
	if CoD.isPC then
		return arg1
	else
		return 0.000000
	end
end

function NotPCShowAlpha(arg0, arg1)
	if not CoD.isPC then
		return arg1
	else
		return 0.000000
	end
end

function GetLocalWarningAlpha(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.GetModel(registerVal2, "lobbyRoot.lobbyMainMode")
	registerVal2 = Engine.GetModelValue(registerVal1)
	if arg0 ~= Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE and registerVal2 == Enum.LobbyMainMode.LOBBY_MAINMODE_INVALID then
		return 1.000000
	end
	return 0.000000
end

function HideIfNotEmptyString(arg0)
	if arg0 ~= nil and arg0 ~= "" then
		return 0.000000
	else
		return 1.000000
	end
end

function HideIfEmptyString(arg0)
	if arg0 ~= nil and arg0 ~= "" then
		return 1.000000
	else
		return 0.000000
	end
end

function HideIfNumEqualTo(arg0, arg1)
	if arg0 == arg1 then
		return 0.000000
	else
		return 1.000000
	end
end

function HideIfNumNotEqualTo(arg0, arg1)
	if arg0 == arg1 then
		return 1.000000
	else
		return 0.000000
	end
end

function HideIfNumIsGreaterThanOrEqualTo(arg0, arg1)
	if arg1 <= arg0 then
		return 0.000000
	else
		return 1.000000
	end
end

function HideIfNumIsLessThanOrEqualTo(arg0, arg1)
	if arg0 <= arg1 then
		return 0.000000
	else
		return 1.000000
	end
end

function NumberToStringNoExponent(arg0)
	return string.format("%.0f", arg0)
end

function BlackTransparentIfNilOrEmpty(arg0)
	if arg0 == nil or arg0 == "" then
		return "blacktransparent"
	end
	return arg0
end

function ConsoleColorFromIndex(arg0, arg1)
	local registerVal3 = CoD.IsShoutcaster(arg0)
	if registerVal3 then
		if arg1 == 8.000000 then
			registerVal3 = CoD.GetColorSetFriendlyOrShoutCasterColor(arg0)
		else
			if arg1 == 9.000000 then
				registerVal3 = CoD.GetColorSetEnemyOrShoutCasterColor(arg0)
			else
				if arg1 == 10.000000 then
					registerVal3 = CoD.GetColorSetFriendlyOrShoutCasterAltColor(arg0)
				else
					if arg1 == 11.000000 then
						registerVal3 = CoD.GetColorSetEnemyOrShoutCasterAltColor(arg0)
					end
				end
			end
		end
	end
	if registerVal3 == nil then
		if arg1 == 3.000000 then
			registerVal3 = CoD.GetColorBlindColorForPlayer(arg0, "PlayerYellow")
		else
		end
	end
	if CoD.ConsoleColors[arg0][(arg1 + 1.000000)] then
		return CoD.ConsoleColors[arg0][(arg1 + 1.000000)].r, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
	end
	return 0.000000, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

function GetColorBlindSafeColorFromBase(arg0, arg1)
	local registerVal2 = CoD.GetColorBlindSafeColorForSetting(arg0, arg1)
	if registerVal2 then
		return CoD.ExplodeColor(registerVal2)
	end
	return 0.000000, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

function Divide(arg0, arg1)
	return (arg1 / arg0)
end

function AddSelectedSessionModeToParam(arg0, arg1)
	return CoD.CCUtility.customizationMode, CoDLUIDecompiler.LuaRegister
end

function AddToVector(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
	return (arg4 + arg0), CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

function SubtractVectorComponentFrom(arg0, arg1, arg2, arg3, arg4, arg5)
	if arg0 == 1.000000 then
	else
		if arg0 == 2.000000 then
		else
			if arg0 == 3.000000 then
			else
				if arg0 == 4.000000 then
				end
			end
		end
	end
	return (arg1 - arg2), CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

function AdjustStartEnd(arg0, arg1, arg2, arg3, arg4, arg5)
	return ((arg2 * (arg1 - arg0)) + arg0), CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

function ScaleVector(arg0, arg1, arg2, arg3, arg4)
	return (arg1 * arg0), CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

function ScaleVectorComponents(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
	return (arg4 * arg0), CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

function SetVectorComponent(arg0, arg1, arg2, arg3, arg4, arg5)
	if arg0 == 1.000000 then
	else
		if arg0 == 2.000000 then
		else
			if arg0 == 3.000000 then
			else
				if arg0 == 4.000000 then
				end
			end
		end
	end
	return arg1, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

function SwapVectorComponents(arg0, arg1, arg2, arg3, arg4, arg5)
	local registerVal6 = {}
	registerVal6 = {arg2, arg3, arg4, arg5}
	registerVal6[arg0] = registerVal6[arg1]
	registerVal6[arg1] = registerVal6[arg0]
	return unpack(registerVal6)
end

function SeparateNumberWithCommas(arg0)
	return CoD.separateNumberWithCommas(0.000000)
end

function GetDvarValue(arg0, arg1)
	return Engine.DvarInt(nil, arg0)
end

function DvarLocalizedIntoString(arg0, arg1)
	GetDvarValue(arg0, "")
	return Engine.Localize(arg1, GetDvarValue)
end

function TruncateTo32Chars(arg0)
	return string.sub(arg0, 0.000000, 32.000000)
end

function TruncateTo64Chars(arg0)
	return string.sub(arg0, 0.000000, 64.000000)
end

function TruncateString(arg0, arg1)
	return string.sub(arg1, 0.000000, arg0)
end

function DvarLocalizedIntoStringMultiplied(arg0, arg1, arg2)
	local registerVal5 = tonumber(Engine.DvarFloat(arg0))
	return Engine.Localize(arg2, (registerVal5 * arg1))
end

function TwoDvarsLocalizedIntoString(arg0, arg1, arg2)
	local registerVal5 = GetDvarValue(arg0, "")
	GetDvarValue(arg1, "")
	return Engine.Localize(arg2, registerVal5, GetDvarValue)
end

function GetDvarString(arg0, arg1)
	return Engine.DvarString(nil, arg0)
end

function GetBubbleGumPackNameFromPackIndex(arg0, arg1)
	return Engine.GetBubbleGumPackName(arg0, arg1)
end

function GetClientName(arg0, arg1)
	local registerVal2 = type(arg1)
	if registerVal2 ~= "number" then
		return ""
	end
	return Engine.GetPlayerNameForClientNum(arg0, arg1)
end

function GetClientClantag(arg0, arg1)
	local registerVal2 = type(arg1)
	if registerVal2 ~= "number" then
		return ""
	end
	return Engine.GetClanTagForClientNum(arg0, arg1)
end

function GetClientNameAndClanTag(arg0, arg1)
	local registerVal2 = GetClientClantag(arg0, arg1)
	local registerVal3 = GetClientName(arg0, arg1)
	return (registerVal2 .. registerVal3)
end

function GetSessionClientName(arg0, arg1)
	local registerVal2 = type(arg1)
	if registerVal2 ~= "number" then
		return ""
	end
	local registerVal3 = Engine.LobbyGetSessionClients(Enum.LobbyModule.LOBBY_MODULE_CLIENT, Enum.LobbyType.LOBBY_TYPE_GAME)
	if arg1 <= 0.000000 or #Enum.LobbyType.LOBBY_TYPE_GAME < arg1 then
		return ""
	end
	return registerVal3.sessionClients[arg1].gamertag
end

function GetPregameVoteFilterString(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Pregame")
	registerVal3 = Engine.CreateModel(registerVal2, "voteFilter")
	local registerVal4 = Engine.GetModelValue(registerVal3)
	return CoD.CACUtility.PregameLoadoutFilters[registerVal4].title
end

function PrependCustomGameName(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.GetModel(registerVal2, "MapVote")
	registerVal2 = Engine.GetModelValue(Engine.GetModel(registerVal1, "mapVoteCustomGameName"))
	local registerVal3 = string.len(registerVal2)
	if registerVal2 and 0.000000 < registerVal3 then
		local registerVal4 = Engine.GetGlobalModel()
		registerVal3 = Engine.GetModel(registerVal4, "MapVote.isOfficialVariant")
		registerVal4 = Engine.GetModelValue(registerVal3)
		if registerVal3 ~= nil and registerVal4 ~= nil and registerVal4 == true then
			local registerVal5 = Engine.Localize(registerVal2)
			return (registerVal5 .. " - " .. arg0)
		end
		return (registerVal2 .. " - " .. arg0)
	end
	return arg0
end

function GetBestTimeForSelectedFreerunMap(arg0, arg1)
	local registerVal2 = Dvar.ui_mapname:get()
	return CoD.MapUtility.GetBestTimeForFreerunMap(arg0, registerVal2)
end

function GetDifficultyForSelectedFreerunMap(arg0, arg1)
	local registerVal2 = Dvar.ui_mapname:get()
	if CoD.mapsTable and CoD.mapsTable[registerVal2] and CoD.mapsTable[registerVal2].mapLocation then
		return CoD.mapsTable[registerVal2].mapLocation
	end
	return ""
end

function PrependSignToFreerunDelta(arg0, arg1)
	local registerVal2 = tonumber(arg1)
	local registerVal3 = NumberAsTime(arg1)
	local registerVal5 = Engine.GetModelForController(arg0)
	local registerVal4 = Engine.CreateModel(registerVal5, "FreeRun.timer.timeAdjustmentNegative")
	registerVal5 = Engine.GetModelValue(registerVal4)
	if 0.000000 < registerVal2 then
		if 0.000000 < registerVal5 then
			return ("-" .. registerVal3)
		end
		return ("+" .. registerVal3)
	else
		return registerVal3
	end
end

function StorageLookup(arg0, arg1, arg2)
	local registerVal3 = Engine.StorageGetBuffer(arg0, arg2)
	if registerVal3 == nil then
		return 
	end
	local registerVal4, registerVal5, registerVal6 = string.gmatch(arg1, "[%w_]+")
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
	end
	registerVal4 = registerVal3[index7]:get()
	return registerVal4
end

function StorageLookupTwoStatRatioRounded(arg0, arg1, arg2, arg3)
	local registerVal4 = StorageLookup(arg0, arg1, arg3)
	local registerVal5 = StorageLookup(arg0, arg2, arg3)
	if registerVal5 == 0.000000 then
	else
	end
	return math.floor(((registerVal4 / registerVal5) + 0.500000))
end

function StorageLookupTwoStatRatio(arg0, arg1, arg2, arg3)
	local registerVal4 = StorageLookup(arg0, arg1, arg3)
	local registerVal5 = StorageLookup(arg0, arg2, arg3)
	return CoD.GetDisplayRatioFromTwoStats(registerVal4, registerVal5)
end

function StorageLookupSPM(arg0, arg1, arg2, arg3)
	local registerVal4 = StorageLookup(arg0, arg1, arg3)
	local registerVal7 = StorageLookup(arg0, arg2, arg3)
	local registerVal5 = math.max(1.000000, (registerVal7 / 60.000000))
	local registerVal6 = math.floor(((registerVal4 / registerVal5) + 0.500000))
	return registerVal6
end

function CombatRecordStatHeaderAlpha(arg0, arg1)
	local registerVal2 = Engine.GetItemRef(arg1, CoD.GetCombatRecordMode())
	local registerVal3 = CoD.BlackMarketUtility.IsBlackMarketItem(registerVal2)
	registerVal3 = CoD.BlackMarketUtility.IsItemLocked(arg0, registerVal2)
	if registerVal3 and registerVal3 then
		return 0.000000
	end
	registerVal3 = Engine.GetItemGroup(arg1, CoD.GetCombatRecordMode())
	if registerVal3 ~= "weapon_launcher" and registerVal3 == "weapon_knife" or registerVal3 == "miscweapon" then
		return 0.000000
	end
	return 1.000000
end

function CombatRecordPelletAccuracyAlpha(arg0, arg1)
	local registerVal2 = Engine.GetShotCountForItem(arg1, CoD.GetCombatRecordMode())
	if not registerVal2 then
	end
	if 1.000000 <= 1.000000 then
		return 0.000000
	end
	local registerVal3 = Engine.GetItemRef(arg1, CoD.GetCombatRecordMode())
	local registerVal4 = CoD.BlackMarketUtility.IsBlackMarketItem(registerVal3)
	registerVal4 = CoD.BlackMarketUtility.IsItemLocked(arg0, registerVal3)
	if registerVal4 and registerVal4 then
		return 0.000000
	end
	return 1.000000
end

function CombatRecordGetStat(arg0, arg1, arg2)
	local registerVal3 = CoD.GetCombatRecordStats(arg0)
	local registerVal4 = CoD.GetCombatRecordStatForPath(registerVal3, arg1)
	if registerVal4 then
		return registerVal4
	end
	return ""
end

function CombatRecordGetTwoStatRatio(arg0, arg1, arg2, arg3)
	local registerVal4 = CoD.GetCombatRecordStats(arg0)
	local registerVal5 = CoD.GetCombatRecordStatForPath(registerVal4, arg1)
	local registerVal6 = CoD.GetCombatRecordStatForPath(registerVal4, arg2)
	return CoD.GetDisplayRatioFromTwoStats(registerVal5, registerVal6)
end

function CombatRecordGetKillsOrAssitsTwoStatRatio(arg0, arg1)
	local registerVal2 = CoD.GetCombatRecordStats(arg0)
	if registerVal2 then
		local registerVal3 = CoD.GetCombatRecordStatForPath(registerVal2, ("ItemStats." .. arg1 .. ".stats.kills"))
		local registerVal4 = CoD.GetCombatRecordStatForPath(registerVal2, ("ItemStats." .. arg1 .. ".stats.assists"))
		local registerVal5 = CoD.GetCombatRecordStatForPath(registerVal2, ("ItemStats." .. arg1 .. ".stats.used"))
		if registerVal3 < registerVal4 then
			return CoD.GetDisplayRatioFromTwoStats(registerVal4, registerVal5)
		else
			return CoD.GetDisplayRatioFromTwoStats(registerVal3, registerVal5)
		end
	end
	return 0.000000
end

function CombatRecordGetTwoStatRatioRounded(arg0, arg1, arg2, arg3)
	local registerVal4 = CoD.GetCombatRecordStats(arg0)
	local registerVal5 = CoD.GetCombatRecordStatForPath(registerVal4, arg1)
	local registerVal6 = CoD.GetCombatRecordStatForPath(registerVal4, arg2)
	if registerVal6 == 0.000000 then
	else
		if registerVal5 and registerVal6 then
			local registerVal8 = math.floor(((registerVal5 / registerVal6) + 0.500000))
		end
	end
	return registerVal8
end

function CombatRecordGetSPM(arg0, arg1, arg2, arg3)
	local registerVal4 = CoD.GetCombatRecordStats(arg0)
	local registerVal5 = CoD.GetCombatRecordStatForPath(registerVal4, arg1)
	local registerVal6 = CoD.GetCombatRecordStatForPath(registerVal4, arg2)
	if registerVal5 and registerVal6 then
		local registerVal7 = math.max(1.000000, (registerVal6 / 60.000000))
		local registerVal8 = math.floor(((registerVal5 / registerVal7) + 0.500000))
		return registerVal8
	end
	return ""
end

function CombatRecordGetRankIcon(arg0, arg1)
	local registerVal2 = CoD.GetCombatRecordStats(arg0)
	local registerVal3 = CoD.GetCombatRecordStatForPath(registerVal2, "playerstatslist.rank")
	local registerVal4 = CoD.GetCombatRecordStatForPath(registerVal2, "playerstatslist.plevel")
	local registerVal5 = CoD.GetCombatRecordMode()
	return Engine.GetRankIcon(registerVal3, registerVal4, registerVal5)
end

function CombatRecordGetRankTitle(arg0, arg1)
	local registerVal2 = CoD.GetCombatRecordStats(arg0)
	local registerVal3 = CoD.GetCombatRecordStatForPath(registerVal2, "playerstatslist.rank")
	local registerVal4 = CoD.GetCombatRecordStatForPath(registerVal2, "playerstatslist.plevel")
	local registerVal5 = CoD.GetCombatRecordMode()
	return CoD.GetRankName(registerVal3, registerVal4, registerVal5)
end

function CombatRecordGetLevelString(arg0, arg1)
	local registerVal2 = CoD.GetCombatRecordStats(arg0)
	local registerVal3 = CoD.GetCombatRecordStatForPath(registerVal2, "playerstatslist.rank")
	local registerVal4 = CoD.GetCombatRecordStatForPath(registerVal2, "playerstatslist.plevel")
	local registerVal5 = CoD.GetCombatRecordMode()
	local registerVal6 = IsGameModeParagonCapable(registerVal5)
	registerVal6 = Engine.GetPrestigeCap(registerVal5)
	if registerVal6 and registerVal6 <= registerVal4 then
		registerVal6 = CoD.GetCombatRecordStatForPath(registerVal2, "playerstatslist.paragon_rank")
		Engine.Localize("RANK_LEVEL_N", Engine.GetParagonRankDisplayLevel(registerVal6, registerVal5))
		return Engine.ToUpper(Engine.Localize)
	end
	Engine.Localize("RANK_LEVEL_N", Engine.GetRankDisplayLevel(registerVal3, registerVal5))
	return Engine.ToUpper(Engine.Localize)
end

function CombatRecordGetItemStatForItemIndex(arg0, arg1, arg2)
	local registerVal3 = CoD.GetCombatRecordStats(arg0)
	local registerVal4 = CoD.GetCombatRecordStatForPath(registerVal3, ("ItemStats." .. arg2 .. ".stats." .. arg1))
	if registerVal4 then
		return registerVal4
	end
	return ""
end

function CombatRecordGetComparisonItemStatForItemIndex(arg0, arg1, arg2)
	local registerVal4 = CoD.GetCombatRecordComparisonStats(arg0)
	if registerVal4 then
		local registerVal5 = CoD.GetCombatRecordStatForPath(registerVal4, ("ItemStats." .. arg2 .. ".stats." .. arg1))
	end
	if registerVal5 then
		return registerVal5
	end
	return ""
end

function CombatRecordGetKillAndOrDestroyStatForItemIndex(arg0, arg1)
	local registerVal3 = CoD.GetCombatRecordStats(arg0)
	local registerVal4 = CoD.GetCombatRecordStatForPath(registerVal3, ("ItemStats." .. arg1 .. ".stats.kills"))
	local registerVal5 = CoD.GetCombatRecordStatForPath(registerVal3, ("ItemStats." .. arg1 .. ".stats.destroyed"))
	local registerVal6 = GetKillsAndOrDestroyedStat(arg1, registerVal4, registerVal5)
	if registerVal6 then
		return registerVal6
	end
	return ""
end

function CombatRecordGetComparisonKillAndOrDestroyStatForItemIndex(arg0, arg1)
	local registerVal3 = CoD.GetCombatRecordComparisonStats(arg0)
	if registerVal3 then
		local registerVal5 = CoD.GetCombatRecordStatForPath(registerVal3, ("ItemStats." .. arg1 .. ".stats.kills"))
		local registerVal6 = CoD.GetCombatRecordStatForPath(registerVal3, ("ItemStats." .. arg1 .. ".stats.destroyed"))
		local registerVal7 = GetKillsAndOrDestroyedStat(arg1, registerVal5, registerVal6)
	end
	if registerVal7 then
		return registerVal7
	end
	return ""
end

function CombatRecordGetTwoStatRatioForItemIndex(arg0, arg1, arg2, arg3)
	local registerVal4 = CoD.GetCombatRecordStats(arg0)
	local registerVal5 = CoD.GetCombatRecordStatForPath(registerVal4, ("ItemStats." .. arg3 .. ".stats." .. arg1))
	local registerVal6 = CoD.GetCombatRecordStatForPath(registerVal4, ("ItemStats." .. arg3 .. ".stats." .. arg2))
	return CoD.GetDisplayRatioFromTwoStats(registerVal5, registerVal6)
end

function CombatRecordGetTwoStatRatioForItemIndexAndSpecificNumerator(arg0, arg1, arg2, arg3)
	local registerVal4 = CoD.GetCombatRecordStats(arg0)
	local registerVal5 = CoD.GetCombatRecordStatForPath(registerVal4, arg1)
	local registerVal6 = CoD.GetCombatRecordStatForPath(registerVal4, ("ItemStats." .. arg3 .. ".stats." .. arg2))
	return CoD.GetDisplayRatioFromTwoStats(registerVal5, registerVal6)
end

function CombatRecordGetComparisonTwoStatRatioForItemIndex(arg0, arg1, arg2, arg3)
	local registerVal6 = CoD.GetCombatRecordComparisonStats(arg0)
	if registerVal6 then
		local registerVal7 = CoD.GetCombatRecordStatForPath(registerVal6, ("ItemStats." .. arg3 .. ".stats." .. arg1))
		registerVal7 = CoD.GetCombatRecordStatForPath(registerVal6, ("ItemStats." .. arg3 .. ".stats." .. arg2))
	end
	return CoD.GetDisplayRatioFromTwoStats(registerVal7, registerVal7)
end

function CombatRecordGetComparisonTwoStatRatioForItemIndexAndSpecificNumerator(arg0, arg1, arg2, arg3)
	local registerVal6 = CoD.GetCombatRecordComparisonStats(arg0)
	if registerVal6 then
		local registerVal7 = CoD.GetCombatRecordStatForPath(registerVal6, arg1)
		registerVal7 = CoD.GetCombatRecordStatForPath(registerVal6, ("ItemStats." .. arg3 .. ".stats." .. arg2))
	end
	return CoD.GetDisplayRatioFromTwoStats(registerVal7, registerVal7)
end

function CombatRecordGetComparisonKillsOrAssitsTwoStatRatioForItemIndex(arg0, arg1)
	local registerVal2 = CoD.GetCombatRecordComparisonStats(arg0)
	if registerVal2 then
		local registerVal3 = CoD.GetCombatRecordStatForPath(registerVal2, ("ItemStats." .. arg1 .. ".stats.kills"))
		local registerVal4 = CoD.GetCombatRecordStatForPath(registerVal2, ("ItemStats." .. arg1 .. ".stats.assists"))
		local registerVal5 = CoD.GetCombatRecordStatForPath(registerVal2, ("ItemStats." .. arg1 .. ".stats.used"))
		if registerVal3 < registerVal4 then
			return CoD.GetDisplayRatioFromTwoStats(registerVal4, registerVal5)
		else
			return CoD.GetDisplayRatioFromTwoStats(registerVal3, registerVal5)
		end
	end
	return 0.000000
end

function CombatRecordGetKillDestoryRatioForItemIndex(arg0, arg1, arg2)
	local registerVal3 = CoD.GetCombatRecordStats(arg0)
	local registerVal4 = CoD.GetCombatRecordStatForPath(registerVal3, ("ItemStats." .. arg2 .. ".stats.kills"))
	local registerVal5 = CoD.GetCombatRecordStatForPath(registerVal3, ("ItemStats." .. arg2 .. ".stats.destroyed"))
	local registerVal6 = GetKillsAndOrDestroyedStat(arg2, registerVal4, registerVal5)
	local registerVal7 = CoD.GetCombatRecordStatForPath(registerVal3, ("ItemStats." .. arg2 .. ".stats." .. arg1))
	return CoD.GetDisplayRatioFromTwoStats(registerVal6, registerVal7)
end

function CombatRecordGetComparisonKillDestroyRatioForItemIndex(arg0, arg1, arg2)
	local registerVal5 = CoD.GetCombatRecordComparisonStats(arg0)
	if registerVal5 then
		local registerVal6 = CoD.GetCombatRecordStatForPath(registerVal5, ("ItemStats." .. arg2 .. ".stats.kills"))
		local registerVal7 = CoD.GetCombatRecordStatForPath(registerVal5, ("ItemStats." .. arg2 .. ".stats.destroyed"))
		local registerVal8 = GetKillsAndOrDestroyedStat(arg2, registerVal6, registerVal7)
		registerVal8 = CoD.GetCombatRecordStatForPath(registerVal5, ("ItemStats." .. arg2 .. ".stats." .. arg1))
	end
	return CoD.GetDisplayRatioFromTwoStats(registerVal8, registerVal8)
end

function CombatRecordGetItemKillsOrAssistsForItemIndex(arg0, arg1)
	local registerVal3 = Engine.IsItemPassive(arg1, CoD.GetCombatRecordMode())
	if registerVal3 then
	end
	registerVal3 = CoD.GetCombatRecordStats(arg0)
	local registerVal4 = CoD.GetCombatRecordStatForPath(registerVal3, ("ItemStats." .. arg1 .. ".stats." .. "assists"))
	if registerVal4 then
		return registerVal4
	end
	return ""
end

function CombatRecordGetComparisonItemKillsOrAssistsForItemIndex(arg0, arg1)
	local registerVal3 = Engine.IsItemPassive(arg1, CoD.GetCombatRecordMode())
	if registerVal3 then
	end
	local registerVal4 = CoD.GetCombatRecordComparisonStats(arg0)
	if registerVal4 then
		local registerVal5 = CoD.GetCombatRecordStatForPath(registerVal4, ("ItemStats." .. arg1 .. ".stats." .. "assists"))
	end
	if registerVal5 then
		return registerVal5
	end
	return ""
end

function CombatRecordGetKillsOrAssistsRatioForItemIndex(arg0, arg1, arg2)
	local registerVal4 = Engine.IsItemPassive(arg2, CoD.GetCombatRecordMode())
	if registerVal4 then
	end
	registerVal4 = CoD.GetCombatRecordStats(arg0)
	local registerVal5 = CoD.GetCombatRecordStatForPath(registerVal4, ("ItemStats." .. arg2 .. ".stats." .. "assists"))
	local registerVal6 = CoD.GetCombatRecordStatForPath(registerVal4, ("ItemStats." .. arg2 .. ".stats." .. arg1))
	return CoD.GetDisplayRatioFromTwoStats(registerVal5, registerVal6)
end

function CombatRecordGetComparisonKillsOrAssistsRatioForItemIndex(arg0, arg1, arg2)
	local registerVal4 = Engine.IsItemPassive(arg2, CoD.GetCombatRecordMode())
	if registerVal4 then
	end
	local registerVal6 = CoD.GetCombatRecordComparisonStats(arg0)
	if registerVal6 then
		local registerVal7 = CoD.GetCombatRecordStatForPath(registerVal6, ("ItemStats." .. arg2 .. ".stats." .. "assists"))
		registerVal7 = CoD.GetCombatRecordStatForPath(registerVal6, ("ItemStats." .. arg2 .. ".stats." .. arg1))
	end
	return CoD.GetDisplayRatioFromTwoStats(registerVal7, registerVal7)
end

function CombatRecordGetAccuracyRatioForItemIndex(arg0, arg1)
	local registerVal2 = CoD.GetCombatRecordStats(arg0)
	local registerVal3 = CoD.GetCombatRecordStatForPath(registerVal2, ("ItemStats." .. arg1 .. ".stats.hits"))
	local registerVal4 = CoD.GetCombatRecordStatForPath(registerVal2, ("ItemStats." .. arg1 .. ".stats.shots"))
	local registerVal5 = Engine.GetShotCountForItem(arg1, CoD.GetCombatRecordMode())
	if not registerVal5 then
	end
	return CoD.GetDisplayRatioFromTwoStats(registerVal3, (registerVal4 * 1.000000))
end

function CombatRecordGetComparisonAccuracyRatioForItemIndex(arg0, arg1)
	local registerVal4 = CoD.GetCombatRecordComparisonStats(arg0)
	if registerVal4 then
		local registerVal5 = CoD.GetCombatRecordStatForPath(registerVal4, ("ItemStats." .. arg1 .. ".stats.hits"))
		registerVal5 = CoD.GetCombatRecordStatForPath(registerVal4, ("ItemStats." .. arg1 .. ".stats.shots"))
		registerVal5 = Engine.GetShotCountForItem(arg1, CoD.GetCombatRecordMode())
		if not registerVal5 then
		end
	end
	return CoD.GetDisplayRatioFromTwoStats(registerVal5, (registerVal5 * 1.000000))
end

function CombatRecordGetParagonColorByRank(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = tonumber(CombatRecordGetStat(arg0, "playerstatslist.plevel", ""))
	local registerVal6 = Engine.GetPrestigeCap(CoD.GetCombatRecordMode())
	if registerVal5 and registerVal6 <= registerVal5 then
	end
	return ((ColorSet.ParagonRank.r * 255.000000) / 255.000000), CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

function CombatRecordGetArenaBestPlaylistName(arg0, arg1)
	local registerVal2 = CoD.GetCombatRecordStats(arg0)
	local registerVal3 = CoD.GetCombatRecordStatForPath(registerVal2, "arenaBestPlaylist")
	if not registerVal3 then
		return ""
	else
		local registerVal4 = tonumber(registerVal3)
		if not registerVal4 then
			return registerVal3
		end
	end
	registerVal4 = Engine.GetTableRowCount(CoD.ArenaUtility.ArenaPlaylistNamesTable)
	for index5=0.000000, (registerVal4 - 1.000000), 1.000000 do
		local registerVal9 = Engine.TableLookupGetColumnValueForRow(CoD.ArenaUtility.ArenaPlaylistNamesTable, index5, CoD.ArenaUtility.ArenaPlaylistIdColumn)
		local registerVal10 = tonumber(registerVal9)
		local registerVal11 = tonumber(registerVal3)
		if registerVal10 == registerVal11 then
			registerVal10 = Engine.TableLookupGetColumnValueForRow(CoD.ArenaUtility.ArenaPlaylistNamesTable, index5, CoD.ArenaUtility.ArenaPlaylistNameColumn)
			return Engine.Localize(registerVal10)
		end
	end
	return ""
end

function RankToLevelNumber(arg0, arg1)
	local registerVal2 = CoD.ModeStringToMode(arg0)
	return Engine.GetRankDisplayLevel(arg1, registerVal2)
end

function RankToLevelString(arg0, arg1)
	local registerVal2 = CoD.ModeStringToMode(arg0)
	local registerVal3 = IsGameModeParagonCapable(registerVal2)
	if registerVal3 then
		Engine.Localize("RANK_LEVEL_N", arg1)
		return Engine.ToUpper(Engine.Localize)
	end
	Engine.Localize("RANK_LEVEL_N", Engine.GetRankDisplayLevel(arg1, registerVal2))
	return Engine.ToUpper(Engine.Localize)
end

function LevelStringFromStorage(arg0, arg1, arg2)
	local registerVal3 = CoD.ModeStringToMode(arg1)
	local registerVal4 = IsGameModeParagonCapable(registerVal3)
	registerVal4 = StorageLookup(arg0, "playerstatslist.plevel.statvalue", arg2)
	local registerVal5 = Engine.GetPrestigeCap(registerVal3)
	if registerVal4 and registerVal5 <= registerVal4 then
		registerVal5 = StorageLookup(arg0, "playerstatslist.paragon_rank.statvalue", arg2)
		Engine.Localize("RANK_LEVEL_N", Engine.GetParagonRankDisplayLevel(registerVal5, registerVal3))
		return Engine.ToUpper(Engine.Localize)
	end
	registerVal4 = StorageLookup(arg0, "playerstatslist.rank.statvalue", arg2)
	Engine.Localize("RANK_LEVEL_N", Engine.GetRankDisplayLevel(registerVal4, registerVal3))
	return Engine.ToUpper(Engine.Localize)
end

function RankToTitleString(arg0, arg1)
	local registerVal2 = CoD.ModeStringToMode(arg0)
	return Engine.GetRankName(arg1, registerVal2)
end

function RankToTitleStringFromSocialPlayerInfo(arg0, arg1, arg2)
	local registerVal3 = CoD.ModeStringToMode(arg1)
	local registerVal4 = tonumber(arg2)
	local registerVal6 = IsGameModeParagonCapable(registerVal3)
	if registerVal6 then
		registerVal6 = math.max(0.000000, (registerVal4 - 1.000000))
		registerVal6 = Engine.GetModelForController(arg0, "socialPlayerInfo")
		if registerVal3 == Enum.eModes.MODE_MULTIPLAYER then
			local registerVal7 = Engine.GetModelValue(Engine.GetModel(registerVal6, "mpPrestige"))
		else
			if registerVal3 == Enum.eModes.MODE_ZOMBIES then
				registerVal7 = Engine.GetModelValue(Engine.GetModel(registerVal6, "zmPrestige"))
			end
		end
	end
	return CoD.GetRankName(registerVal6, registerVal7, registerVal3)
end

function RankTitleFromStorage(arg0, arg1, arg2)
	local registerVal3 = StorageLookup(arg0, "playerstatslist.rank.statvalue", arg2)
	local registerVal4 = StorageLookup(arg0, "playerstatslist.plevel.statvalue", arg2)
	local registerVal5 = CoD.ModeStringToMode(arg1)
	return CoD.GetRankName(registerVal3, registerVal4, registerVal5)
end

function GetRankIcon(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = CoD.ModeStringToMode(arg3)
	local registerVal6 = StorageLookup(arg0, arg1, arg4)
	local registerVal7 = StorageLookup(arg0, arg2, arg4)
	return Engine.GetRankIcon(registerVal6, registerVal7, registerVal5)
end

function GetRankOrParagonIcon(arg0, arg1, arg2, arg3, arg4, arg5)
	local registerVal6 = CoD.ModeStringToMode(arg4)
	local registerVal7 = StorageLookup(arg0, arg1, arg5)
	local registerVal8 = StorageLookup(arg0, arg2, arg5)
	local registerVal9 = IsGameModeParagonCapable(registerVal6)
	registerVal9 = Engine.GetPrestigeCap(registerVal6)
	registerVal9 = StorageLookup(arg0, arg3, arg5)
	if registerVal9 and registerVal8 == registerVal9 and registerVal9 ~= CoD.PrestigeUtility.INVALID_PARAGON_ICON_ID then
		return Engine.GetParagonIconById(registerVal9, registerVal6)
	end
	return Engine.GetRankIcon(registerVal7, registerVal8, registerVal6)
end

function GetRankIconLarge(arg0)
	if arg0 == "" or arg0 == "blacktransparent" then
		return "blacktransparent"
	end
	return (arg0 .. "_lrg")
end

function MessageDialogTypeToString(arg0)
	if arg0 == Enum.MessageDialogType.MESSAGE_DIALOG_TYPE_INFO then
		local registerVal2 = Engine.Localize("MENU_INFO")
	else
		if arg0 == Enum.MessageDialogType.MESSAGE_DIALOG_TYPE_WARNING then
			registerVal2 = Engine.Localize("MENU_WARNING")
		else
			if arg0 == Enum.MessageDialogType.MESSAGE_DIALOG_TYPE_ERROR then
				registerVal2 = Engine.Localize("MENU_ERROR")
			end
		end
	end
	return Engine.ToUpper(registerVal2)
end

function LocalServerStatusToString(arg0)
	if arg0 == 0.000000 or arg0 == "0" then
		return "MENU_LOBBY"
	else
		return "MENU_IN_GAME"
	end
end

function GetStringforGameMode(arg0, arg1, arg2, arg3)
	return CoD.CPMPZM(arg0, arg1, arg2)
end

function GetCybercoreItemIndex(arg0, arg1)
	local registerVal2 = Engine.GetItemIndexFromReference("feature_multicore")
	local registerVal3 = Engine.IsItemLocked(arg0, registerVal2)
	if registerVal2 and not registerVal3 then
		return registerVal2
	else
		registerVal3 = Engine.GetEquippedCybercore(arg0)
		return registerVal3
	end
end

function GetEquippedCybercoreItemIndex(arg0, arg1)
	local registerVal2 = Engine.GetEquippedCybercore(arg0)
	return registerVal2
end

function GetMulticoreActivatedAlpha(arg0, arg1)
	local registerVal2 = IsMulticoreActivated(arg0)
	if registerVal2 then
		return 1.000000
	else
		return 0.000000
	end
end

function GroupPrivacyToString(arg0)
	local registerVal1 = tonumber(arg0)
	if registerVal1 == Enum.GroupPrivacy.GROUP_PRIVACY_PUBLIC then
		return Engine.Localize("GROUPS_PRIVACY_PUBLIC_CAPS")
	else
		if registerVal1 == Enum.GroupPrivacy.GROUP_PRIVACY_PRIVATE then
			return Engine.Localize("GROUPS_PRIVACY_PRIVATE_CAPS")
		end
	end
	return ""
end

function GroupJoinApprovalTypeToString(arg0, arg1)
	local registerVal5 = Engine.GetModelForController(arg0)
	local registerVal3 = Engine.GetModelValue(Engine.GetModel(registerVal5, "groups.fetchGroupJoinApprovalTypeInProgress"))
	if registerVal3 then
		return Engine.Localize("MENU_LOADING_DOTS")
	end
	local registerVal4 = tonumber(arg1)
	if registerVal4 == Enum.GroupJoinApprovalType.GROUP_JOIN_APPROVAL_OFF then
		return ""
	else
		if registerVal4 == Enum.GroupJoinApprovalType.GROUP_JOIN_APPROVAL_ON then
			return Engine.Localize("GROUPS_REQUIRES_JOIN_REQUEST")
		else
			if registerVal4 == Enum.GroupJoinApprovalType.GROUP_JOIN_APPROVAL_INVITE_ONLY then
				return Engine.Localize("GROUPS_REQUIRES_GROUP_INVITE")
			end
		end
	end
	return ""
end

function GroupMemberStatusEnumToString(arg0)
	local registerVal1 = tonumber(arg0)
	if registerVal1 == Enum.GroupMemberStatus.GROUP_MEMBER_STATUS_ADMIN then
		return Engine.Localize("GROUPS_MEMBER_STATUS_ADMIN")
	else
		if registerVal1 == Enum.GroupMemberStatus.GROUP_MEMBER_STATUS_OWNER then
			return Engine.Localize("GROUPS_MEMBER_STATUS_OWNER")
		end
	end
	return ""
end

function PresenceActivityToModeString(arg0)
	local registerVal1 = tonumber(arg0)
	if registerVal1 == Enum.PresenceActivity.PRESENCE_ACTIVITY_OFFLINE then
		return "MENU_OFFLINE"
	else
		if Enum.PresenceActivity.PRESENCE_ACTIVITY_MENU_INLOBBY <= registerVal1 and registerVal1 <= Enum.PresenceActivity.PRESENCE_ACTIVITY_MENU_LAST then
			return "MENU_MAIN_MENU"
		else
			if Enum.PresenceActivity.PRESENCE_ACTIVITY_CP_FIRST <= registerVal1 and registerVal1 <= Enum.PresenceActivity.PRESENCE_ACTIVITY_CP_LAST then
				return "MENU_CAMPAIGN"
			else
				if Enum.PresenceActivity.PRESENCE_ACTIVITY_MP_FIRST <= registerVal1 and registerVal1 <= Enum.PresenceActivity.PRESENCE_ACTIVITY_MP_LAST then
					return "MENU_MULTIPLAYER"
				else
					if Enum.PresenceActivity.PRESENCE_ACTIVITY_ZM_FIRST <= registerVal1 and registerVal1 <= Enum.PresenceActivity.PRESENCE_ACTIVITY_ZM_LAST then
						return "MENU_ZOMBIES"
					end
				end
			end
		end
	end
	return "NULL_EMPTY"
end

function LobbyJoinableToString(arg0)
	local registerVal1 = tonumber(arg0)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = CoD.SafeGetModelValue(registerVal3, "socialRoot.tab")
	if registerVal2 == "friends" then
	end
	if CoD.Presence.LobbyFriendJoinableStrings[registerVal1] ~= nil then
		return CoD.Presence.LobbyFriendJoinableStrings[registerVal1]
	end
	return "PRESENCE_NOT_JOINABLE"
end

function PrimaryPresenceToLocalizedString(arg0)
	local registerVal1 = tonumber(arg0)
	if registerVal1 == Enum.PresencePrimary.PRESENCE_PRIMARY_OFFLINE then
		return "MENU_OFFLINE"
	else
		if registerVal1 == Enum.PresencePrimary.PRESENCE_PRIMARY_ONLINE then
			return "MENU_ONLINE"
		else
			if registerVal1 == Enum.PresencePrimary.PRESENCE_PRIMARY_LOCAL then
				return ""
			else
				if registerVal1 == Enum.PresencePrimary.PRESENCE_PRIMARY_TITLE then
					return ""
				else
					if registerVal1 == Enum.PresencePrimary.PRESENCE_PRIMARY_BLOCKED then
						return "MENU_OFFLINE"
					else
						return "MENU_OFFLINE"
					end
				end
			end
		end
	end
end

function PlatformPresenceToLocalizedString(arg0)
	if arg0 ~= "" then
		if CoD.isDurango then
			if arg0 == "???" or arg0 == "Default Title" then
				return ""
			end
		else
		else
			return Engine.Localize("PRESENCE_PLAYING_TITLE", arg0)
		end
	end
end

function ShowTitlePresence(arg0)
	local registerVal1 = tonumber(arg0)
	if registerVal1 ~= Enum.PresenceActivity.PRESENCE_ACTIVITY_OFFLINE and registerVal1 == Enum.PresenceActivity.PRESENCE_ACTIVITY_NOT_IN_TITLE or registerVal1 == PRESENCE_ACTIVITY_ONLINE_NOT_IN_TITLE then
		return 0.000000
	else
		if Enum.PresenceActivity.PRESENCE_ACTIVITY_MENU_INLOBBY <= registerVal1 and registerVal1 < Enum.PresenceActivity.PRESENCE_CTX_LAST then
			return 1.000000
		else
			return 0.000000
		end
	end
end

function SocialShowPartyHeader(arg0)
	if 0.000000 < arg0 then
		return 1.000000
	else
		return 0.000000
	end
end

function SocialPartyHeader(arg0)
	local registerVal1 = tonumber(arg0)
	return Engine.Localize("PRESENCE_NUMBER_IN_PARTY_MAX", registerVal1, 18.000000)
end

function SocialShowPartyFooter(arg0)
	if 6.000000 < arg0 then
		return 1.000000
	end
	return 0.000000
end

function SocialPartyFooter(arg0)
	local registerVal1 = tonumber(arg0)
	if (registerVal1 - 6.000000) then
		return Engine.Localize("PRESENCE_PLUS_NUM_MORE", (registerVal1 - 6.000000))
	end
	return ""
end

function ShowJoinableIcon(arg0)
	local registerVal1 = tonumber(arg0)
	if 0.000000 < enumValue then
		return 1.000000
	else
		return 0.000000
	end
end

function ShowPlatformPresence(arg0)
	local registerVal1 = tonumber(arg0)
	if enumValue == 0.000000 then
		return 1.000000
	else
		return 0.000000
	end
end

function TitlePresenceToString(arg0)
	local registerVal1 = tonumber(arg0)
	if enumValue == 1.000000 then
		return "MENU_MAIN_MENU"
	else
		if enumValue == 2.000000 then
			return "MENU_CAMPAIGN"
		else
			if enumValue == 3.000000 then
				return "MENU_MULTIPLAYER"
			else
				if enumValue == 4.000000 then
					return "MENU_ZOMBIES"
				else
					if enumValue == 5.000000 then
						return "PRESENCE_LOBBYTHEATER"
					else
						return ""
					end
				end
			end
		end
	end
end

function PresenceActivityToIcon(arg0)
	local registerVal1 = tonumber(arg0)
	if registerVal1 == Enum.PresenceActivity.PRESENCE_ACTIVITY_OFFLINE then
		return "uie_t7_menu_frontend_iconmodebo3"
	else
		if Enum.PresenceActivity.PRESENCE_ACTIVITY_MENU_INLOBBY <= registerVal1 and registerVal1 <= Enum.PresenceActivity.PRESENCE_ACTIVITY_MENU_LAST then
			return "uie_t7_menu_frontend_iconmodebo3"
		else
			if Enum.PresenceActivity.PRESENCE_ACTIVITY_CP_FIRST <= registerVal1 and registerVal1 <= Enum.PresenceActivity.PRESENCE_ACTIVITY_CP_LAST then
				return "uie_t7_menu_frontend_iconmodecp"
			else
				if Enum.PresenceActivity.PRESENCE_ACTIVITY_MP_FIRST <= registerVal1 and registerVal1 <= Enum.PresenceActivity.PRESENCE_ACTIVITY_MP_LAST then
					return "uie_t7_menu_frontend_iconmodemp"
				else
					if Enum.PresenceActivity.PRESENCE_ACTIVITY_ZM_FIRST <= registerVal1 and registerVal1 <= Enum.PresenceActivity.PRESENCE_ACTIVITY_ZM_LAST then
						return "uie_t7_menu_frontend_iconmodezm"
					end
				end
			end
		end
	end
	return "blacktransparent"
end

function LocalizeWithNatType(arg0)
	local registerVal1 = tonumber(arg0)
	if registerVal1 == 1.000000 then
		return Engine.Localize("MENU_SYSINFO_NAT_TYPE", "MENU_SYSINFO_NAT_TYPE_OPEN_LOBBY")
	else
		if registerVal1 == 2.000000 then
			return Engine.Localize("MENU_SYSINFO_NAT_TYPE", "MENU_SYSINFO_NAT_TYPE_MODERATE_LOBBY")
		else
			if registerVal1 == 3.000000 then
				return Engine.Localize("MENU_SYSINFO_NAT_TYPE", "MENU_SYSINFO_NAT_TYPE_STRICT_LOBBY")
			else
				return Engine.Localize("MENU_SYSINFO_NAT_TYPE", "MENU_SYSINFO_NAT_TYPE_UNKNOWN_LOBBY")
			end
		end
	end
end

function PartyPrivacy(arg0)
	local registerVal1 = tonumber(arg0)
	return LobbyData.PartyPrivacyToString(registerVal1)
end

function DivideByScoreLimit(arg0, arg1, arg2, arg3, arg4)
	local registerVal6 = Engine.DvarString(nil, "g_gametype")
	registerVal6 = Engine.DvarString(nil, "g_gametype")
	if registerVal6 == "dom" or registerVal6 == "ball" then
		registerVal6 = Engine.GetGametypeSetting("roundLimit")
		local registerVal7 = Engine.GetGametypeSetting("roundScoreLimit")
	else
		registerVal7 = Engine.GetModelForController(arg0)
		registerVal6 = CoD.SafeGetModelValue(registerVal7, "gameScore.scoreLimit")
	end
	if registerVal6 then
		return (arg1 / registerVal6), CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
	end
	return arg1, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

function PartyPrivacyCaps(arg0)
	local registerVal1 = tonumber(arg0)
	local registerVal2 = LobbyData.PartyPrivacyToString(registerVal1)
	return Engine.ToUpper(registerVal2)
end

function NetworkModeToSwitchNetworkBtnString(arg0)
	local registerVal1 = tonumber(arg0)
	if registerVal1 == Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE then
		return "MENU_PLAY_LOCAL_CAPS"
	else
		return "PLATFORM_XBOX_LIVE_CAPS"
	end
end

function SessionModeToSessionModeImage(arg0)
	if arg0 == Enum.eModes.MODE_ZOMBIES then
	else
		if arg0 == Enum.eModes.MODE_CAMPAIGN then
		end
	end
	return "uie_t7_menu_frontend_iconmodecp"
end

function SessionModeToLocalizedSessionMode(arg0)
	if arg0 == Enum.eModes.MODE_ZOMBIES then
	else
		if arg0 == Enum.eModes.MODE_CAMPAIGN then
		end
	end
	return Engine.Localize("MENU_CAMPAIGN")
end

function SessionModeToUnlocalizedSessionModeCaps(arg0)
	if arg0 == Enum.eModes.MODE_ZOMBIES then
	else
		if arg0 == Enum.eModes.MODE_CAMPAIGN then
		end
	end
	return "MENU_CAMPAIGN_CAPS"
end

function SessionModeToLocalizedSessionModeCaps(arg0)
	if arg0 == Enum.eModes.MODE_ZOMBIES then
	else
		if arg0 == Enum.eModes.MODE_CAMPAIGN then
		end
	end
	return Engine.Localize("MENU_CAMPAIGN_CAPS")
end

function LobbyMainModeToLocalizedModeCaps(arg0)
	if arg0 == Enum.LobbyMainMode.LOBBY_MAINMODE_ZM then
	else
		if arg0 == Enum.LobbyMainMode.LOBBY_MAINMODE_CP then
		end
	end
	return Engine.Localize("MENU_CAMPAIGN_CAPS")
end

function GametypeSettingsGametypeHeader(arg0)
	local registerVal1 = Dvar.ui_gametype:get()
	local registerVal2 = Engine.StructTableLookupString(CoDShared.gametypesStructTable, "name", registerVal1, "name_ref_caps")
	Engine.Localize(registerVal2)
	return Engine.Localize("MENU_GAME_MODE_ADVANCED_CAPS", Engine.Localize)
end

function GametypeSettingsAttachmentHeader(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "GametypeSettings")
	registerVal3 = Engine.CreateModel(registerVal2, "selectedAttachment")
	local registerVal4 = Engine.GetModelValue(registerVal3)
	Engine.GetAttachmentNameByIndex(registerVal4)
	return Engine.Localize(Engine.GetAttachmentNameByIndex)
end

function MapNameToLocalizedMapName(arg0)
	local registerVal1 = Engine.IsUsingUsermap()
	if registerVal1 then
		return Engine.UsingUsermapTitle()
	end
	CoD.GetMapValue(arg0, "mapNameCaps", arg0)
	return Engine.Localize(CoD.GetMapValue)
end

function MapNameToLocalizedMapLocation(arg0)
	CoD.GetMapValue(arg0, "mapLocation", arg0)
	return Engine.Localize(CoD.GetMapValue)
end

function MapNameToMapImage(arg0)
	local registerVal1 = CoD.GetMapValue(arg0, "previewImage", "$black")
	if registerVal1 == "$black" then
		Engine.UpdateModPreviewImage(arg0)
	end
	return "img_t7_mod_preview"
end

function MapImageToModPreview(arg0)
	local registerVal2 = LUI.startswith(arg0, "playlist")
	local registerVal3, registerVal4, registerVal5 = pairs(CoD.mapsTable)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		if value7.previewImage == arg0 or arg0 == "img_mapvote_zm_castle" then
		else
		end
	end
	if not true then
		Engine.UpdateModPreviewImage(arg0)
	end
	return "img_t7_mod_preview"
end

function MapNameToMapLoadingImage(arg0)
	local registerVal1 = Engine.IsUsingUsermap()
	if registerVal1 then
		return "img_t7_mod_loading"
	end
	return CoD.GetMapValue(arg0, "loadingImage", "$black")
end

function GameTypeToLocalizedGameType(arg0)
	local registerVal1 = Engine.StructTableLookupString("game_types", "name", arg0, "name_ref_caps")
	return Engine.Localize(registerVal1)
end

function LocalizedGameType(arg0)
	local registerVal1 = Dvar.ui_gametype:get()
	local registerVal2 = Engine.StructTableLookupString("game_types", "name", registerVal1, "name_ref_caps")
	return Engine.Localize(registerVal2)
end

function GetGameModeOnMapName(arg0)
	local registerVal1 = Dvar.ui_gametype:get()
	local registerVal2 = Dvar.ui_mapname:get()
	return CoD.GetGameModeOnMapNameString(registerVal1, registerVal2)
end

function GetGameMode(arg0)
	local registerVal1 = Dvar.ui_gametype:get()
	return Engine.StructTableLookupString(CoDShared.gametypesStructTable, "name", registerVal1, "name_ref")
end

function GetMapName(arg0)
	local registerVal1 = Dvar.ui_mapname:get()
	return CoD.GetMapValue(registerVal1, "mapName", registerVal1)
end

function PluralizedPrivatePlayerCount(arg0)
	if arg0 == 1.000000 then
		return Engine.Localize("MENU_PRIVATE_PLAYERCOUNT_1")
	else
		return Engine.Localize("MENU_PRIVATE_PLAYERCOUNT_N")
	end
end

function PluralizedGamePlayerCount(arg0)
	if arg0 == 1.000000 then
		return Engine.Localize("MENU_GAME_PLAYERCOUNT_1")
	else
		return Engine.Localize("MENU_GAME_PLAYERCOUNT_N")
	end
end

function GetMissingMapsList(arg0)
	local registerVal1 = tonumber(arg0)
	if registerVal1 then
		local registerVal2 = IsCustomLobby()
		registerVal2 = CoD.LobbyUtility.ShouldShowDLCWarningsBasedOnHost()
		if not registerVal1 or registerVal2 then
			local registerVal3 = IsCustomLobby()
			if registerVal3 then
				local registerVal4 = Engine.GetGlobalModel()
				registerVal3 = CoD.SafeGetModelValue(registerVal4, "MapVote.mapVoteMapNext")
				registerVal4 = Engine.GetDLCBitForMapName(registerVal3)
			else
				registerVal3 = CoD.LobbyUtility.GetHostDLCBits(CoD.LobbyUtility.GetClientList())
				if registerVal3 then
					registerVal3 = CoD.GetKnownDLCBits()
				end
			end
			if (registerVal3 & registerVal3) then
				registerVal4 = Engine.IsZombiesGame()
				if registerVal4 then
					local registerVal5 = LuaUtils.UpdateZMDLCBits((registerVal3 & registerVal3))
					registerVal5 = LuaUtils.UpdateZMDLCBits(registerVal1)
				end
				if (registerVal5 & 16769540.000000) ~= ((registerVal5 & 16769540.000000) & (registerVal5 & 16769540.000000)) then
					registerVal5, registerVal6, registerVal7 = pairs(CoD.DLCNames)
					for index8,value9 in registerVal5, registerVal6, registerVal7 do
						local registerVal10 = CoD.BitUtility.IsBitwiseAndNonZero(index8, (registerVal5 & 16769540.000000))
						registerVal10 = CoD.BitUtility.IsBitwiseAndNonZero(index8, (registerVal5 & 16769540.000000))
						if registerVal10 and not registerVal10 then
							if "" == "" then
								registerVal10 = Engine.Localize(value9)
							else
								local registerVal12 = Engine.Localize(value9)
							end
						end
					end
					return Engine.Localize("MENU_MISSING_MAP_PACKS", (registerVal10 .. ", " .. registerVal12))
				end
			end
		end
	end
	return ""
end

function LocalizeWithEdittingHeroName(arg0, arg1)
	if Engine.GetHeroName and CoD.CCUtility.Heroes.HeroIndexForEdits then
		local registerVal3 = Engine.GetHeroName(CoD.CCUtility.customizationMode, CoD.CCUtility.Heroes.HeroIndexForEdits)
	end
	return Engine.Localize(arg1, registerVal3)
end

function GetHeroIndexForClientNum(arg0, arg1)
	if arg1 == -1.000000 then
		return 0.000000
	end
	local registerVal3 = Engine.GetHeroIndexForClientNum(arg0, arg1)
	if registerVal3 ~= nil then
		return registerVal3
	end
	return 0.000000
end

function GetThiefEndAndStartFill(arg0, arg1)
	local registerVal4 = Engine.GetModelForController(arg0)
	local registerVal3 = CoD.SafeGetModelValue(registerVal4, "playerAbilities.playerGadget3.flashEnd")
	return (registerVal3 / 5.000000), CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

function GetPrestigeTitleForPLevelAndMode(arg0, arg1)
	local registerVal2 = Engine.GetPrestigeCap(CoD.ModeStringToMode(arg0))
	if arg1 == registerVal2 then
		return Engine.Localize("MENU_PRESTIGE_MASTER")
	else
		if 0.000000 < arg1 then
			return Engine.Localize("MPUI_PRESTIGE_N", arg1)
		end
	end
	return ""
end

function GetPrestigeTitleText(arg0, arg1)
	local registerVal2 = IsMaxPrestigeLevel(arg0)
	if registerVal2 then
		return Engine.Localize("MENU_PRESTIGE_CUSTOMIZE_ICON")
	end
	registerVal2 = CoD.PrestigeUtility.GetCurrentPLevel(arg0)
	local registerVal3 = IsAtXPCap(arg0)
	registerVal3 = Engine.GetPrestigeCap(CoD.PrestigeUtility.GetPrestigeGameMode())
	if registerVal3 and (registerVal2 + 1.000000) ~= registerVal3 then
		return Engine.Localize("MENU_PRESTIGE_ENTER_LEVEL", (registerVal2 + 1.000000))
	else
		registerVal3 = Engine.GetPrestigeCap(CoD.PrestigeUtility.GetPrestigeGameMode())
		if (registerVal2 + 1.000000) == registerVal3 then
			return Engine.Localize("MENU_PRESTIGE_MASTER")
		else
			return Engine.Localize("MPUI_PRESTIGE_N", (registerVal2 + 1.000000))
		end
	end
end

function GetPrestigeUnlockText(arg0)
	CoD.PrestigeUtility.GetStringForMode("PRESTIGE_MODE_LOCKED_HINT")
	return Engine.Localize(CoD.PrestigeUtility.GetStringForMode)
end

function HideIfInPermanentUnlockMenu(arg0)
	if CoD.PrestigeUtility.isInPermanentUnlockMenu then
		return 0.000000
	end
	return arg0
end

function ShowIfInPermanentUnlockMenu(arg0)
	if CoD.PrestigeUtility.isInPermanentUnlockMenu then
		return 1.000000
	end
	return arg0
end

function HideIfPrestigeMaster(arg0, arg1)
	local registerVal2 = IsMaxPrestigeLevel(arg0)
	if registerVal2 then
		return 0.000000
	end
	return arg1
end

function SetToDisabledIfNotAtXPCap(arg0, arg1)
	local registerVal2 = IsMaxPrestigeLevel(arg0)
	registerVal2 = IsAtXPCap(arg0)
	if not registerVal2 and not registerVal2 then
	end
	return (arg1 .. "_disabled")
end

function GetPermanentUnlockTokenText(arg0, arg1)
	if arg1 == 1.000000 then
	end
	return Engine.Localize("MPUI_PERMANENT_UNLOCK_AVAILABLE", arg1)
end

function GetMPLevelStringPerController(arg0, arg1)
	local registerVal2 = Engine.GetRank(arg0, Enum.eModes.MODE_MULTIPLAYER)
	return Engine.Localize("MPUI_LEVEL_N_CAPS", (registerVal2 + 1.000000))
end

function SetToParagonColorIfPrestigeMasterByRank(arg0, arg1, arg2, arg3)
	local registerVal4 = IsInParagonCapableGameMode()
	registerVal4 = tonumber(arg3)
	if registerVal4 and registerVal4 and (CoD.MAX_RANK + 1.000000) < registerVal4 then
	end
	return ((ColorSet.ParagonRank.r * 255.000000) / 255.000000), CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

function SetToParagonColorIfPrestigeMasterByRankForMode(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = CoD.ModeStringToMode(arg3)
	local registerVal8 = Engine.ToUpper(arg3)
	local registerVal7 = IsGameModeParagonCapable(registerVal5)
	registerVal7 = tonumber(arg4)
	registerVal8 = tonumber(Engine.TableLookup(0.000000, CoD[("rankTable" .. registerVal8)], 0.000000, "maxrank", 1.000000))
	if CoD[("rankTable" .. registerVal8)] and registerVal7 and registerVal7 and (registerVal8 + 1.000000) < registerVal7 then
	end
	return ((ColorSet.ParagonRank.r * 255.000000) / 255.000000), CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

function SetToParagonColorIfPrestigeMasterByPLevel(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = CoD.ModeStringToMode(arg0)
	local registerVal6 = IsGameModeParagonCapable(registerVal5)
	registerVal6 = Engine.GetPrestigeCap(registerVal5)
	if registerVal6 and arg4 == registerVal6 then
	end
	return ((ColorSet.ParagonRank.r * 255.000000) / 255.000000), CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

function SetToParagonColorIfPrestigeMasterForScoreboard(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = GetScoreboardPlayerRank(arg0, arg4)
	return SetToParagonColorIfPrestigeMasterByRank(arg1, arg2, arg3, registerVal5)
end

function SetToParagonColorIfPrestigeMasterForLeaderboard(arg0, arg1, arg2, arg3)
	local registerVal4 = CoD.GetCombatRecordMode()
	local registerVal5 = IsGameModeParagonCapable(registerVal4)
	registerVal5 = Engine.GetPrestigeCap(registerVal4)
	if registerVal5 and arg3 == registerVal5 then
	end
	return ((ColorSet.ParagonRank.r * 255.000000) / 255.000000), CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

function SetToParagonColorIfPrestigeMasterFromStorage(arg0, arg1, arg2, arg3, arg4, arg5)
	local registerVal6 = CoD.ModeStringToMode(arg1)
	local registerVal7 = IsGameModeParagonCapable(registerVal6)
	registerVal7 = StorageLookup(arg0, "playerstatslist.plevel.statvalue", arg5)
	local registerVal8 = Engine.GetPrestigeCap(registerVal6)
	if registerVal7 and registerVal7 == registerVal8 then
	end
	return ((ColorSet.ParagonRank.r * 255.000000) / 255.000000), CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

function GetPrestigeMasterTierCountByRank(arg0)
	local registerVal2 = IsInParagonCapableGameMode()
	registerVal2 = tonumber(arg0)
	if registerVal2 and registerVal2 and (CoD.MAX_RANK + 1.000000) < registerVal2 then
		local registerVal4 = math.floor((registerVal2 / 100.000000))
	end
	return registerVal4
end

function GetPrestigeMasterTierCountFromStorage(arg0, arg1, arg2)
	local registerVal4 = CoD.ModeStringToMode(arg1)
	local registerVal5 = IsGameModeParagonCapable(registerVal4)
	registerVal5 = StorageLookup(arg0, "playerstatslist.plevel.statvalue", arg2)
	local registerVal6 = Engine.GetPrestigeCap(registerVal4)
	if registerVal5 and registerVal5 == registerVal6 then
		registerVal6 = StorageLookup(arg0, "playerstatslist.paragon_rank.statvalue", arg2)
		local registerVal7 = CoD.PrestigeUtility.GetMaxRankByMode(registerVal4)
		local registerVal8 = math.floor((((registerVal6 + 1.000000) + (registerVal7 + 1.000000)) / 100.000000))
	end
	return registerVal8
end

function GetPrestigeMasterTierCountFromCombatRecord(arg0, arg1, arg2)
	local registerVal4 = CoD.ModeStringToMode(arg1)
	local registerVal5 = IsGameModeParagonCapable(registerVal4)
	registerVal5 = CoD.GetCombatRecordStats(arg0)
	local registerVal6 = CoD.GetCombatRecordStatForPath(registerVal5, "playerstatslist.plevel")
	local registerVal7 = Engine.GetPrestigeCap(registerVal4)
	if registerVal5 and registerVal6 == registerVal7 then
		registerVal7 = CoD.GetCombatRecordStatForPath(registerVal5, "playerstatslist.paragon_rank.statvalue")
		local registerVal8 = CoD.PrestigeUtility.GetMaxRankByMode(registerVal4)
		local registerVal9 = math.floor((((registerVal7 + 1.000000) + (registerVal8 + 1.000000)) / 100.000000))
	end
	return registerVal9
end

function GetPLevelFromStorage(arg0, arg1, arg2)
	local registerVal3 = CoD.ModeStringToMode(arg1)
	return StorageLookup(arg0, "playerstatslist.plevel.statvalue", arg2)
end

function GetPLevelFromCombatRecord(arg0, arg1)
	local registerVal2 = CoD.GetCombatRecordStats(arg0)
	return CoD.GetCombatRecordStatForPath(registerVal2, "playerstatslist.plevel")
end

function ShowIfPrestigeMasterByPLevel(arg0, arg1)
	local registerVal2 = CoD.ModeStringToMode(arg0)
	local registerVal3 = Engine.GetPrestigeCap(registerVal2)
	if arg1 < registerVal3 then
		return 0.000000
	end
	return 1.000000
end

function MissionRecordVault_EngageRangeColor(arg0)
	local registerVal1 = CoD.LerpColor(ColorSet.EngageLow, ColorSet.EngageHigh, arg0)
	return registerVal1.r, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

function MissionRecordVault_ResistanceAmountColor(arg0)
	local registerVal1 = CoD.LerpColor(ColorSet.ResistanceLow, ColorSet.ResistanceHigh, arg0)
	return registerVal1.r, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

function DifficultyIconFromNumber(arg0)
	local registerVal1 = tonumber(arg0)
	if registerVal1 ~= nil and registerVal1 < 0.000000 or 4.000000 < registerVal1 then
		return "blacktransparent"
	end
	local registerVal2 = {}
	registerVal2 = {"playlist_sp_recr", "playlist_sp_reg", "playlist_sp_hard", "playlist_sp_vet", "playlist_sp_real"}
	local registerVal3 = tonumber(arg0)
	return registerVal2[(registerVal3 + 1.000000)]
end

function FileshareIsReadyAlpha(arg0)
	if arg0 == 0.000000 then
		return 0.000000
	end
	return 1.000000
end

function FileshareIsReadyAlphaReverse(arg0)
	if arg0 == 0.000000 then
		return 1.000000
	end
	return 0.000000
end

function FileshareGetSlotCountBGAlpha(arg0)
	if arg0 == 0.000000 then
		return 0.000000
	end
	return 1.000000
end

function FileshareGetSlotCountLowBGAlpha(arg0)
	if arg0 == 0.000000 then
		return 1.000000
	end
	return 0.000000
end

function FileshareGetSlotString(arg0)
	if arg0 == 1.000000 then
		return "MENU_FILESHARE_SLOT_AVAILABLE"
	end
	return "MENU_FILESHARE_SLOTS_AVAILABLE"
end

function FileshareGetCommunityMenuTitle(arg0)
	Engine.Localize(CoD.FileshareUtility.GetCurrentCommunityMenuTitle())
	return Engine.ToUpper(Engine.Localize)
end

function FileshareGetDurationString(arg0)
	local registerVal1 = tonumber(arg0)
	local registerVal2 = math.floor((registerVal1 / 60000.000000))
	return string.format("%02d:%02d", registerVal2, ((registerVal1 - ((registerVal2 * 60.000000) * 1000.000000)) / 1000.000000))
end

function FileshareGetGameModeOnMapName(arg0)
	local registerVal1 = CoD.FileshareUtility.GetSelectedItemProperty("gametypeName")
	local registerVal2 = CoD.FileshareUtility.GetSelectedItemProperty("mapName")
	if arg0 or not registerVal2 then
		return ""
	end
	return CoD.GetGameModeOnMapNameString(registerVal1, registerVal2)
end

function FileshareGetMatchmakingMode(arg0)
	local registerVal1 = tonumber(arg0)
	if not registerVal1 then
		return ""
	end
	if registerVal1 == Enum.eGameModes.MODE_GAME_MATCHMAKING_MANUAL then
	else
		if registerVal1 == Enum.eGameModes.MODE_GAME_LEAGUE then
		else
			if registerVal1 == Enum.eGameModes.MODE_GAME_FREERUN then
			end
		end
	end
	return Engine.Localize("MENU_FILESHARE_MODE", "MENU_FILESHARE_CATEGORY_FREERUN")
end

function FileshareGetShowcaseTitle(arg0, arg1)
	local registerVal2 = Engine.GetXUID64(arg0)
	local registerVal3 = CoD.FileshareUtility.GetCurrentUser()
	if registerVal2 == registerVal3 then
		return Engine.Localize(arg1)
	end
	Engine.Localize("MENU_SHOWCASE")
	return Engine.ToUpper(Engine.Localize)
end

function FileshareGetShowcaseHeaderIcon(arg0, arg1)
	if arg1 and arg1 == 1.000000 then
		return "uie_t7_icon_menu_simple_publish_green"
	end
	local registerVal2 = CoD.FileshareUtility.GetCurrentCategory()
	return CoD.FileshareUtility.GetCategoryImage(registerVal2)
end

function FileshareGetDownloadProgress(arg0)
	local registerVal1 = IsInTheaterMode()
	if not registerVal1 then
		return ""
	end
	local registerVal2 = Engine.GetGlobalModel()
	registerVal1 = Engine.CreateModel(registerVal2, "lobbyRoot.theaterDownloadPercent")
	registerVal2 = Engine.GetModelValue(registerVal1)
	if registerVal1 and registerVal2 ~= nil then
		return Engine.Localize("MPUI_DOWNLOADING_PERCENT", registerVal2)
	end
	return ""
end

function FileshareSlotsTextColor(arg0, arg1)
	if arg1 == 1.000000 then
		return ColorSet.ResistanceHigh.r, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
	end
	return ColorSet.White.r, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

function FileshareSlotsFullWarningIconAlpha(arg0)
	if arg0 == 1.000000 then
		return 1.000000
	end
	return 0.000000
end

function FileshareHideDetailsViewSpinner(arg0)
	if arg0 == LuaEnums.INVALID_XUID or arg0 == nil then
		return 1.000000
	else
		return 0.000000
	end
end

function GetImageViewerParams(arg0, arg1)
	return Enum.ScreenshotViewType[arg0], CoDLUIDecompiler.LuaRegister
end

function HessTypeToString(arg0)
	local registerVal1 = {}
	registerVal1 = {"COOP_HESS_HEAT", "COOP_HESS_FILTER", "COOP_HESS_OXYGEN", "COOP_HESS_RADIATION"}
	if arg0 < 1.000000 or #"COOP_HESS_HEAT" < arg0 then
		return ""
	end
	return registerVal1[arg0]
end

function RoundOutOfString(arg0)
	if 0.000000 < arg0 then
		return ("  /" .. arg0)
	else
		return ""
	end
end

function SecondaryMeleeIcon(arg0)
	local registerVal2 = CoD.gameMode:lower()
	registerVal2, registerVal3, registerVal4 = ipairs(CoD.CACUtility.LootMeleeWeapons)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		if arg0 == (value6 .. ("_" .. registerVal2)) then
			return ("img_t7_hud_icon_" .. value6)
		end
	end
	return "uie_img_t7_hud_icon_knife_proto"
end

function GetRandomHeroAbilityOrWeaponIcon(arg0)
	local registerVal2 = math.random(#CoD.CCUtility.SpecialistAbilityIcons)
	return CoD.CCUtility.SpecialistAbilityIcons[registerVal2]
end

function GetThiefNextWeaponCoinImage(arg0)
	if arg0 == 0.000000 or #CoD.CCUtility.SpecialistWeaponIcons < arg0 then
		return "blacktransparent"
	end
	return CoD.CCUtility.SpecialistWeaponIcons[arg0]
end

function GetAmmoWipePercentageClipFull(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = DataSources.CurrentWeapon.getModel(arg0)
	local registerVal6 = CoD.SafeGetModelValue(registerVal5, "clipMaxAmmo")
	if registerVal5 and registerVal6 then
		return (arg1 / registerVal6), CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
	end
	return 0.000000, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

function ZombieClientScoreboardColor(arg0)
	local registerVal1, registerVal2, registerVal3, registerVal4 = Dvar[("cg_ScoresColor_Gamertag_" .. arg0)]:get()
	return registerVal1, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

function ZombieClientScoreboardGlowColor(arg0)
	local registerVal1, registerVal2, registerVal3, registerVal4 = Dvar[("cg_ScoresColor_Gamertag_" .. arg0)]:get()
	return (registerVal1 * 0.750000), CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

function GetEmblemIndexParams(arg0, arg1)
	return arg0, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

function GetEmblemLayerAndGroupIndex(arg0, arg1)
	local registerVal3, registerVal4, registerVal5 = string.gmatch(arg1, "%S+")
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		{}[(#value7 + 1.000000)] = index6
	end
	registerVal3 = CoD.GetCustomization(arg0, "type")
	return {}[1.000000], CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

function GetEmblemDecalDesc(arg0)
	local registerVal1 = Engine.GetDecalDesc(arg0)
	if registerVal1 ~= nil then
		return Engine.Localize(registerVal1)
	end
	return ""
end

function ConvertPSLayerIdxToLayerNum(arg0)
	local registerVal1 = tonumber(arg0)
	return tostring((registerVal1 + 1.000000))
end

function GetPaintjobCountByWeaponIndex(arg0)
	tonumber(arg0)
	return CoD.CraftUtility.Paintjobs.GetTotalWeaponPaintjobs(tonumber)
end

function GetPaintjobName(arg0)
	if arg0 == "" then
		return Engine.Localize("MENU_PAINTJOB_CREATE_NEW")
	else
		return arg0
	end
end

function LocalizeLayerMOfN(arg0, arg1, arg2)
	local registerVal4 = CoD.GetCustomization(arg1, "type")
	local registerVal5 = Engine.GetUsedLayerCount(arg1, registerVal4, CoD.perController[arg1].totalLayers)
	return Engine.Localize(arg0, arg2, registerVal5)
end

function LocalizePaintjobSlotCount(arg0, arg1, arg2)
	local registerVal3 = CoD.CraftUtility.Paintjobs.GetTotalUsedPaintjobs()
	local registerVal4 = CoD.CraftUtility.Paintjobs.GetTotalAllowedPaintjobs(arg1)
	return Engine.Localize("MENU_EMBLEM_LAYERS_USED_FRACTION", registerVal3, registerVal4)
end

function GetGunsmithAttachmentVariantMenuTitle(arg0, arg1)
	local registerVal2 = Engine.Localize(arg1)
	if CoD.perController[arg0].gunsmithAttachmentModel then
		local registerVal4 = CoD.GetCustomization(arg0, "weapon_index")
		local registerVal5 = Engine.GetModelValue(CoD.perController[arg0].gunsmithAttachmentModel)
		local registerVal6 = Engine.Localize(Engine.GetItemName(registerVal4))
		local registerVal7 = LocalizeToUpperString(Engine.GetAttachmentNameByIndex(registerVal5))
		return (registerVal6 .. " " .. registerVal7 .. " " .. registerVal2)
	end
	return ""
end

function GunsmithAccuracyPercentage(arg0)
	local registerVal1 = string.format("%2.2f", (arg0 * 100.000000))
	return (registerVal1 .. "%")
end

function GetGunsmithCurrentWeaponLevel(arg0, arg1)
	local registerVal3 = CoD.GetCustomization(arg0, "weapon_index")
	local registerVal4 = tonumber(arg1)
	local registerVal6 = CoD.CraftUtility.Gunsmith.GetStatsStorageType(registerVal4)
	local registerVal7 = Engine.GetGunCurrentRank(arg0, registerVal3, registerVal4)
	local registerVal8 = Engine.GetGunNextRank(arg0, registerVal3, registerVal4)
	local registerVal9 = Engine.GetGunCurrentRankXP(arg0, registerVal3, registerVal4)
	local registerVal10 = Engine.StorageGetBuffer(arg0, registerVal6)
	if registerVal10 then
		local registerVal11 = registerVal10.ItemStats[registerVal3].xp:get()
	end
	if registerVal7 == registerVal8 and registerVal9 <= registerVal11 then
		return "MPUI_MAX_CAPS"
	end
	return (registerVal7 + 1.000000)
end

function GetGunsmithNextWeaponLevel(arg0, arg1)
	local registerVal3 = CoD.GetCustomization(arg0, "weapon_index")
	local registerVal4 = tonumber(arg1)
	local registerVal5 = Engine.GetGunCurrentRank(arg0, registerVal3, registerVal4)
	return (registerVal5 + 2.000000)
end

function GetGunsmithCurrentWeaponXP(arg0, arg1, arg2, arg3, arg4)
	local registerVal7 = CoD.GetCustomization(arg0, "weapon_index")
	local registerVal8 = tonumber(arg1)
	local registerVal9 = CoD.CraftUtility.Gunsmith.GetStatsStorageType(registerVal8)
	local registerVal10 = Engine.GetGunPrevRankXP(arg0, registerVal7, registerVal8)
	local registerVal11 = Engine.GetGunCurrentRankXP(arg0, registerVal7, registerVal8)
	local registerVal12 = Engine.StorageGetBuffer(arg0, registerVal9)
	if registerVal12 then
		local registerVal13 = registerVal12.ItemStats[registerVal7].xp:get()
	end
	return ((registerVal13 - registerVal10) / (registerVal11 - registerVal10)), CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

function GetAttachmentImageFromIndex(arg0, arg1, arg2)
	local registerVal3 = tonumber(arg2)
	local registerVal4 = tonumber(arg1)
	local registerVal6 = CoD.GetCustomization(arg0, "weapon_index")
	local registerVal8 = Engine.GetModel(CoD.perController[arg0].gunsmithVariantModel, ("attachmentVariant" .. registerVal4))
	local registerVal9 = Engine.GetModelValue(registerVal8)
	if CoD.CraftUtility.Gunsmith.EMPTY_ITEM_INDEX < registerVal3 then
		if registerVal9 == 0.000000 then
			local registerVal11 = CoD.CraftUtility.GetCraftMode()
			local registerVal10 = Engine.GetAttachmentUniqueImageByAttachmentIndex(registerVal11, registerVal6, registerVal3)
		else
			registerVal10 = CoD.CraftUtility.Gunsmith.GetWeaponPlusAttachmentsForVariant(arg0, CoD.perController[arg0].gunsmithVariantModel)
			registerVal11 = Engine.GetAttachmentCosmeticVariant(registerVal10, registerVal3)
		end
	end
	return registerVal11.image
end

function GetCamoImageFromIndex(arg0, arg1)
	tonumber(arg1)
	return Engine.GetWeaponOptionImage(tonumber)
end

function GetVariantCountByWeaponIndex(arg0)
	tonumber(arg0)
	return CoD.CraftUtility.Gunsmith.GetTotalUsedWeaponVariants(tonumber)
end

function GetSaveVariantExtraCamParameters(arg0, arg1)
	local registerVal3 = CoD.CraftUtility.GetLoadoutSlot(arg0)
	local registerVal4 = CoD.CraftUtility.Gunsmith.GetWeaponPlusAttachmentsForVariant(arg0, CoD.perController[arg0].gunsmithVariantModel)
	local registerVal5 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg0].gunsmithVariantModel, "camoIndex"))
	local registerVal6 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg0].gunsmithVariantModel, "paintjobSlot"))
	local registerVal7 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg0].gunsmithVariantModel, "paintjobIndex"))
	local registerVal9 = CoD.CraftUtility.Gunsmith.GetWeaponAttachmentVariantString(arg0, CoD.perController[arg0].gunsmithVariantModel)
	local registerVal10 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg0].gunsmithVariantModel, "weaponIndex"))
	return registerVal3, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

function GetGunsmithExtraCamParameters(arg0, arg1)
	local registerVal3 = CoD.CraftUtility.Gunsmith.GetVariantByIndex(arg0, arg1)
	local registerVal4 = CoD.CraftUtility.GetLoadoutSlot(arg0)
	local registerVal5 = CoD.CraftUtility.Gunsmith.GetWeaponByVariantIndex(arg0, arg1)
	local registerVal10 = CoD.CraftUtility.Gunsmith.GetAttachmentVariantByVariantIndex(arg0, arg1)
	return registerVal4, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

function GetPaintshopExtraCamParameters(arg0, arg1)
	local registerVal3, registerVal4, registerVal5 = string.gmatch(arg1, "%S+")
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		{}[(#value7 + 1.000000)] = index6
	end
	registerVal5 = CoD.CraftUtility.Paintjobs.GetPaintjobWeaponIndex(arg0, {}[1.000000], {}[2.000000])
	local registerVal6 = Engine.GetItemRef(registerVal5, Enum.eModes.MODE_MULTIPLAYER)
	local registerVal8 = CoD.CraftUtility.GetModeAbbreviation()
	registerVal8 = CoD.CraftUtility.GetLoadoutSlot(arg0)
	local registerVal9 = CoD.CACUtility.GetCameraNameForAttachments((registerVal6 .. registerVal8))
	return registerVal8, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

function GetFileshareExtraCamParameters(arg0, arg1)
	if arg1 ~= "" and arg1 == nil or arg1 == 0.000000 then
		return "primary", CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
	end
	local registerVal3 = tonumber(arg0)
	local registerVal4 = Engine.GetFileshareWeaponIndex(registerVal3, arg1)
	local registerVal5 = Engine.GetItemRef(registerVal4)
	local registerVal7 = CoD.CraftUtility.GetModeAbbreviation()
	registerVal7 = CoD.CraftUtility.GetLoadoutSlot(arg0)
	local registerVal8 = Engine.GetFilesharePaintjobSummaryFileIndex(registerVal3, arg1)
	local registerVal11 = Engine.GetFileshareFileCategory(registerVal3, arg1)
	if registerVal11 == Enum.FileshareFileCategory.FILESHARE_VARIANT then
		local registerVal14 = Engine.GetFileshareWeaponVariantData(registerVal3, arg1)
		local registerVal15 = CoD.CraftUtility.Fileshare.GetWeaponAttachmentVariantString(registerVal14)
		local registerVal16 = CoD.CraftUtility.Fileshare.GetWeaponsAttachmentsString(registerVal14)
	end
	return registerVal7, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

function LocalizeWeaponNameIntoString(arg0, arg1, arg2, arg3)
	local registerVal4 = CoD.ModeStringToMode(arg1)
	local registerVal5 = tonumber(arg3)
	local registerVal6 = Engine.GetItemName(registerVal5, registerVal4)
	if registerVal6 then
		local registerVal7 = Engine.ToUpper(Engine.Localize(Engine.GetItemName(registerVal5, registerVal4)))
		return LocalizeIntoString(arg0, registerVal7)
	end
	return ""
end

function FileshareGetLargeCategoryIcon(arg0)
	local registerVal1 = CoD.FileshareUtility.GetCurrentCategory()
	return CoD.FileshareUtility.GetCategoryLargeImage(registerVal1)
end

function FileshareGetCategoryIcon(arg0)
	if arg0 and arg0 ~= "" then
		return CoD.FileshareUtility.GetCategoryImage(arg0)
	end
	return ""
end

function FileshareGetNoContentString(arg0, arg1)
	local registerVal3 = FileshareIsReady(arg0)
	if not registerVal3 then
		return Engine.Localize("MENU_FILESHARE_LOADING")
	end
	registerVal3 = FileshareIsCurrentUserContext(arg0)
	registerVal3 = FileshareShowcaseIsPublishMode(nil, arg0)
	registerVal3 = FileshareIsCommunityMode(nil, arg0)
	registerVal3 = CoD.FileshareUtility.GetIsGroupsMode(arg0)
	if registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
		registerVal3 = CoD.FileshareUtility.GetCurrentCategory()
		if registerVal3 == "screenshot_private" then
			return Engine.Localize("MENU_NO_LOCAL_SCREENSHOTS")
		else
			if registerVal3 ~= "film" then
				return Engine.Localize("MENU_FILESHARE_SHOWCASE_NO_CONTENT")
			end
		end
	end
	return Engine.Localize("MENU_FILESHARE_NO_CONTENT")
end

function FileshareAppendLocalIfNeeded(arg0, arg1)
	local registerVal2 = FileshareIsLocalCategory(arg0)
	if registerVal2 then
		return (arg1 .. "_LOCAL")
	end
	return arg1
end

function FileshareShowDeleteOptionItem(arg0)
	local registerVal1 = CoD.FileshareUtility.GetCurrentCategory()
	if registerVal1 == "customgame" or registerVal1 == "screenshot" then
		return 0.000000
	end
	return 1.000000
end

function GetWeaponBuildKitsAttachmentDescription(arg0, arg1)
	local registerVal3 = CoD.GetCustomization(arg0, "weapon_index")
	if registerVal3 and arg1 then
		local registerVal5 = Engine.GetAttachmentIndexByAttachmentTableIndex(registerVal3, arg1, Enum.eModes.MODE_ZOMBIES)
		local registerVal6 = IsProgressionEnabled(arg0)
		registerVal6 = IsItemAttachmentLocked(arg0, registerVal3, registerVal5, "GWBKAD", Enum.eModes.MODE_ZOMBIES)
		if registerVal6 and registerVal6 then
			registerVal6 = Engine.GetItemAttachmentRank(registerVal3, registerVal5, Enum.eModes.MODE_ZOMBIES)
			if registerVal6 then
				return Engine.Localize("MPUI_REQUIRES_WEAPON_LEVEL", (registerVal6 + 2.000000))
			else
				return Engine.GetAttachmentDesc(registerVal3, registerVal5, Enum.eModes.MODE_ZOMBIES)
			end
		end
	end
	return ""
end

function GetLocalizedStringForCurrentWeaponCategory(arg0, arg1)
	local registerVal3, registerVal4, registerVal5 = ipairs(CoD.Craft.WeaponGroupNames)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		if value7.weapon_category == CoD.perController[arg0].weaponCategory then
			return Engine.Localize(value7.lowercaseName)
		end
	end
	return ""
end

function GetWeaponCustomizationMenuHeaderName(arg0, arg1)
	local registerVal4 = Engine.GetModel(CoD.perController[arg0].classModel, (CoD.perController[arg0].weaponCategory .. ".name"))
	local registerVal5 = Engine.GetModelValue(registerVal4)
	if registerVal4 and registerVal5 then
		local registerVal6 = Engine.Localize("MPUI_PERSONALIZE_CAPS")
		return (registerVal6 .. " " .. registerVal5)
	end
	return arg1
end

function PersonalizationItemUnlockModeDesc(arg0, arg1)
	if arg1 == Enum.eModes.MODE_ZOMBIES then
	else
		if arg1 == Enum.eModes.MODE_CAMPAIGN then
		end
	end
	return Engine.Localize("MENU_ITEM_EARN_MODE_DESC", "MENU_CAMPAIGN")
end

function GetItemNameFromIndex(arg0)
	local registerVal1 = Engine.GetItemName(arg0)
	return registerVal1
end

function GetItemNameFromIndexMP(arg0)
	local registerVal1 = Engine.GetItemName(arg0, Enum.eModes.MODE_MULTIPLAYER)
	return registerVal1
end

function GetItemNameFromIndexZM(arg0)
	local registerVal1 = Engine.GetItemName(arg0, Enum.eModes.MODE_ZOMBIES)
	return registerVal1
end

function GetItemDescriptionFromIndex(arg0)
	return Engine.GetItemDesc(arg0)
end

function GetItemImageFromIndex(arg0)
	return Engine.GetItemImage(arg0)
end

function GetCybercoreImageByIndexAndMode(arg0, arg1)
	local registerVal2 = Engine.GetLoadoutSlotForItem(arg1, CoD.GetCombatRecordMode())
	if registerVal2 == "cybercom_ability1" then
		return "t7_cp_menu_cac_icon_control"
	else
		if registerVal2 == "cybercom_ability2" then
			return "t7_cp_menu_cac_icon_martial"
		else
			if registerVal2 == "cybercom_ability3" then
				return "t7_cp_menu_cac_icon_chaos"
			end
		end
	end
	return "menu_mp_lobby_none_selected_new"
end

function GetItemNameByIndexAndMode(arg0, arg1)
	local registerVal2 = CoD.ModeStringToMode(arg0)
	return Engine.GetItemName(arg1, registerVal2)
end

function GetGunsmithItemNameByIndex(arg0)
	local registerVal1 = Engine.CurrentSessionMode()
	if CoD.isFrontend then
	end
	local registerVal2 = Engine.GetItemName(arg0, Enum.eModes.MODE_MULTIPLAYER)
	return registerVal2
end

function GetItemImageByIndexAndMode(arg0, arg1)
	local registerVal2 = CoD.ModeStringToMode(arg0)
	return Engine.GetItemImage(arg1, registerVal2)
end

function AppendIfMatch(arg0, arg1, arg2)
	if arg0 ~= arg2 or not (arg0 .. arg1) then
	end
	return arg2
end

function AppendIfNotMatch(arg0, arg1, arg2)
	if arg0 == arg2 or not (arg2 .. arg1) then
	end
	return arg2
end

function AppendPSTOrPDT(arg0)
	local registerVal2 = Engine.DvarBool(nil, "ui_isDaylightSavingsTime")
	if arg0 or not "_PDT" then
	end
	return (arg0 .. "_PST")
end

function GetWeaponImageByIndexAndMode(arg0, arg1)
	local registerVal2 = CoD.ModeStringToMode(arg0)
	return Engine.GetItemImage(arg1, registerVal2)
end

function GetItemImageFromIndexByMode(arg0, arg1)
	if arg1 == 0.000000 then
		return "blacktransparent"
	end
	return Engine.GetItemImage(arg1, arg0)
end

function GetPrimaryAttachmentMenuTitle(arg0, arg1)
	return GetAttachmentMenuSelectTitle(arg0, "primary.name", arg1)
end

function GetSecondaryAttachmentMenuTitle(arg0, arg1)
	return GetAttachmentMenuSelectTitle(arg0, "secondary.name", arg1)
end

function GetAttachmentCosmeticVariantMenuTitle(arg0)
	local registerVal1 = Engine.Localize(arg0)
	local registerVal2 = Engine.Localize(Engine.GetItemName(CoD.WC_Category.ACV.selectedAttachmentWeaponIndex))
	local registerVal3 = LocalizeToUpperString(Engine.GetAttachmentName(CoD.WC_Category.ACV.selectedAttachmentWeaponIndex, CoD.WC_Category.ACV.selectedAttachmentIndex))
	return (registerVal2 .. " " .. registerVal3 .. " " .. registerVal1)
end

function GetReticlesMenuTitle(arg0, arg1)
	local registerVal5 = CoD.CACUtility.GetBaseWeaponLoadoutSlotName(CoD.perController[arg0].weaponCategory)
	local registerVal6 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg0].classModel, (registerVal5 .. ".itemIndex")))
	local registerVal7 = Engine.Localize(Engine.GetItemName(registerVal6))
	local registerVal10 = LocalizeToUpperString("MENU_RETICLES")
	return (registerVal7 .. " " .. registerVal10)
end

function GetConsumableCountFromIndex(arg0, arg1)
	local registerVal3 = Engine.IsZombiesGame()
	if registerVal3 then
		registerVal3 = CoD.BubbleGumBuffUtility.UseTestData()
		if registerVal3 then
			return 11.000000
		end
		registerVal3 = Engine.GetPlayerStats(arg0)
		local registerVal4 = Engine.GetItemRef(arg1)
		local registerVal5 = Engine.GetLootItemQuantity(arg0, registerVal4, Enum.eModes.MODE_ZOMBIES)
		if not registerVal5 then
			return 0.000000
		end
		math.max(registerVal5, 0.000000)
		return math.min(999.000000, math.max)
	else
		return 0.000000
	end
end

function GetWeaponItemImageFromIndex(arg0)
	return Engine.GetItemImage(arg0)
end

function GetItemImageFromIndexPerWeaponCategory(arg0, arg1)
	local registerVal3 = tonumber(arg1)
	local registerVal6 = LUI.startswith(CoD.perController[arg0].weaponCategory, "killstreak")
	if registerVal6 then
	else
		if CoD.perController[arg0].weaponCategory == "primarygadget" or CoD.perController[arg0].weaponCategory == "secondarygadget" then
		end
	end
	registerVal6 = Engine.GetItemImage(registerVal3)
	return (registerVal6 .. "_256")
end

function GetMaxAllocationAmount(arg0, arg1)
	return Engine.GetMaxAllocation(arg0)
end

function GetCustomOverCapacityDescription(arg0, arg1)
	local registerVal2 = Engine.GetMaxAllocation(arg0)
	return Engine.Localize(arg1, registerVal2)
end

function GetUnlockDescription(arg0, arg1)
	local registerVal3 = tonumber(arg1)
	local registerVal6 = LUI.startswith(CoD.perController[arg0].weaponCategory, "primaryattachment")
	if not registerVal6 then
		registerVal6 = LUI.startswith(CoD.perController[arg0].weaponCategory, "secondaryattachment")
	end
	local registerVal7 = CoD.PrestigeUtility.GetPermanentUnlockMode()
	local registerVal8 = Engine.GetItemRef(registerVal3)
	local registerVal9 = IsThermometerUnlockIndexGreaterThanorEqualTo(CoD.ContractWeaponTiers[registerVal8])
	if registerVal8 and CoD.ContractWeaponTiers[registerVal8] and not registerVal9 then
		return Engine.Localize("MPUI_CONTRACT_ITEM_CLASSIFIED_DESC", "MENU_MELEE_WEAPON")
	end
	if not registerVal6 then
		registerVal9 = Engine.IsItemLocked(arg0, registerVal3, registerVal7)
		registerVal9 = IsProgressionEnabled(arg0)
		if arg1 or not registerVal9 then
			return Engine.GetItemDesc(registerVal3, registerVal7)
		end
	end
	local registerVal10 = LUI.startswith(CoD.perController[arg0].weaponCategory, "secondary")
	if registerVal10 then
	end
	local registerVal11 = Engine.GetModel(CoD.perController[arg0].classModel, ("secondary" .. ".itemIndex"))
	if CoD.perController[arg0].classModel and registerVal11 then
		local registerVal12 = Engine.GetModelValue(registerVal11)
	end
	registerVal11 = IsProgressionEnabled(arg0)
	if CoD.CACUtility.EmptyItemIndex < registerVal12 and registerVal6 and registerVal11 then
		registerVal11 = Engine.GetItemAttachmentRank(registerVal12, registerVal3, registerVal7)
		if registerVal11 then
			return Engine.Localize("MPUI_REQUIRES_WEAPON_LEVEL", (registerVal11 + 2.000000))
		end
		return ""
	else
		return CoD.GetUnlockStringForItemIndex(arg0, registerVal3, registerVal7)
	end
end

function GetBGBSplitscreenWarning(arg0, arg1)
	local registerVal3 = tonumber(arg1)
	local registerVal4 = CoD.PrestigeUtility.GetPermanentUnlockMode()
	local registerVal5 = Engine.GetDLCNameForItem(registerVal3, registerVal4)
	if registerVal5 then
		return Engine.Localize(("MENU_" .. registerVal5 .. "_SPLITSCREEN_WARNING"))
	else
		return ""
	end
end

function GetBGBDLCRequiredHint(arg0, arg1)
	local registerVal2 = tonumber(arg1)
	local registerVal3 = CoD.CACUtility.GetDLCIdForBubbleGum(registerVal2)
	local registerVal4 = Engine.HasEntitlementByOwnership(arg0, registerVal3)
	registerVal4 = Engine.GetDLCNameForItem(registerVal2)
	if registerVal3 ~= "" and not registerVal4 and registerVal4 then
		return Engine.Localize(("MENU_" .. registerVal4 .. "_REQUIRED_HINT"))
	end
	return ""
end

function GetBGBDescription(arg0, arg1)
	local registerVal3 = tonumber(arg1)
	local registerVal4 = CoD.PrestigeUtility.GetPermanentUnlockMode()
	local registerVal5 = Engine.GetDLCNameForItem(registerVal3, registerVal4)
	if registerVal5 then
		local registerVal6 = Engine.HasEntitlementByOwnership(arg0, registerVal5)
		if not registerVal6 then
			registerVal6 = Engine.HasEntitlementByOwnership(arg0, "dlc3zm")
			if registerVal5 == "dlc3" and registerVal6 then
				return Engine.GetItemDesc(registerVal3, registerVal4)
			else
				registerVal6 = Engine.HasEntitlementByOwnership(arg0, "dlc4zm")
				if registerVal5 == "dlc4" and registerVal6 then
					return Engine.GetItemDesc(registerVal3, registerVal4)
				end
			end
			local registerVal7 = Engine.GetItemName(registerVal3, registerVal4)
			return Engine.Localize((registerVal7 .. "_LOCKED"))
		else
			return Engine.GetItemDesc(registerVal3, registerVal4)
		else
			return GetUnlockDescription(arg0, arg1)
		end
	end
end

function GetCookbookPipeColorForItemIndex(arg0, arg1)
	local registerVal2 = {}
	registerVal2 = {0.340000, 0.710000, 0.910000}
	local registerVal3 = {}
	registerVal3 = {1.000000, 0.750000, 0.160000}
	local registerVal4 = {}
	registerVal4 = {0.750000, 0.420000, 1.000000}
	local registerVal5 = {}
	registerVal5 = {0.370000, 0.890000, 0.380000}
	local registerVal8 = Engine.TableLookup(arg0, "gamedata/stats/zm/zm_statsTable.csv", 0.000000, arg1, 20.000000)
	if registerVal8 == "round" then
		return registerVal2[1.000000], CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
	else
		if registerVal8 == "event" then
			return registerVal3[1.000000], CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
		else
			if registerVal8 == "activated" then
				return registerVal4[1.000000], CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
			else
				if registerVal8 == "time" then
					return registerVal5[1.000000], CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
				end
			end
		end
	end
end

function GetTokenUnlockDescription(arg0, arg1)
	local registerVal3 = Engine.GetPlayerStats(arg0)
	local registerVal4 = registerVal3.PlayerStatsList.RANK.statValue:get()
	local registerVal5 = registerVal3.PlayerStatsList.PLEVEL.statValue:get()
	local registerVal7 = IsMultiplayer()
	if not registerVal7 then
		registerVal7 = IsCampaign()
		if registerVal7 and registerVal4 < CoD.MAX_RANK then
			registerVal7 = CoD.GetRankName((registerVal4 + 1.000000), registerVal5)
			local registerVal8 = IsCampaign()
			if registerVal8 then
			end
			return "CPUI_OUT_OF_FABRICATION_KITS_DESC", CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
		end
	end
	return ""
end

function GetWeaponOptionProgressTitle(arg0, arg1)
	if Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_CAMO == arg1 then
		return "MENU_CAMO_REQUIREMENTS"
	else
		if Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_RETICLE == arg1 then
			return "MENU_RETICLE_REQUIREMENTS"
		end
	end
	return ""
end

function GetWeaponOptionCompleteTitle(arg0, arg1)
	if Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_CAMO == arg1 then
		return "MENU_CAMO_COMPLETE"
	else
		if Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_RETICLE == arg1 then
			return "MENU_RETICLE_COMPLETE"
		end
	end
	return ""
end

function GetWeaponOptionProgressText(arg0, arg1)
	local registerVal2 = CoD.GetNumValuesFromSpaceSeparatedString(arg1)
	if registerVal2[1.000000] and registerVal2[2.000000] then
	end
	return (registerVal2[1.000000] .. "/" .. registerVal2[2.000000])
end

function GetWeaponOptionProgressBar(arg0, arg1, arg2, arg3, arg4)
	return (arg1 / arg2), CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

function GetRemoveItemTitle(arg0, arg1)
	return GetRemoveItemString(arg0, "MENU_REMOVE_ITEM_FROM_CLASS", "MENU_REMOVE_ITEMS_FROM_CLASS")
end

function GetRemoveItemDescription(arg0, arg1)
	return GetRemoveItemString(arg0, "MENU_REMOVE_ITEM_FROM_CLASS_DESC", "MENU_REMOVE_ITEMS_FROM_CLASS_DESC")
end

function GetWeaponAttributes(arg0, arg1, arg2, arg3, arg4)
	local registerVal7 = Engine.GetModelValue(DataSources.WGSV_Category)
	local registerVal8 = LUI.startswith(CoD.perController[arg0].weaponCategory, "primaryattachment")
	registerVal8 = LUI.startswith(CoD.perController[arg0].weaponCategory, "secondaryattachment")
	if not registerVal8 and not registerVal8 and registerVal7 == CoD.WGSV_Category.GUNSMITH_VARIANT or CoD.perController[arg0].gunsmithAttachmentType then
		if arg2 < arg1 then
		end
		return (arg2 / 100.000000), CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
	else
		return (arg1 / 100.000000), CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
	end
end

function GetWeaponAttributesForAttachment(arg0, arg1, arg2, arg3, arg4)
	local registerVal6 = Engine.GetModelValue(DataSources.WGSV_Category)
	local registerVal7 = Engine.CurrentSessionMode()
	if registerVal7 ~= Enum.eModes.MODE_ZOMBIES then
		if CoD.perController[arg0].weaponCategory == "primary" or CoD.perController[arg0].weaponCategory == "secondary" then
			if registerVal6 ~= CoD.WGSV_Category.GUNSMITH_VARIANT then
				return 0.000000, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
			end
		end
	end
	return (arg1 / 100.000000), CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

function GetAllUnlockTokens(arg0, arg1)
	if arg1 or not "CPUI_FABRICATION_KITS_AVAILABLE" then
	end
	local registerVal4 = IsFirstTimeSetup(arg0, Enum.eModes.MODE_MULTIPLAYER)
	if CoD.CCUtility.customizationMode == Enum.eModes.MODE_MULTIPLAYER and registerVal4 then
		return Engine.Localize("MPUI_UNLOCK_TOKENS_AVAILABLE", 1.000000)
	end
	return Engine.Localize("MPUI_UNLOCK_TOKENS_AVAILABLE", arg1)
end

function GetUnlockTokenItemString(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal3, "UnlockTokenInfo")
	if registerVal2 then
		registerVal3 = Engine.CreateModel(registerVal2, "itemIndex")
		local registerVal4 = Engine.GetModelValue(registerVal3)
		local registerVal5 = Engine.GetItemName(registerVal4)
		return Engine.Localize(arg1, registerVal5)
	end
	return ""
end

function GetBonusXPString(arg0, arg1)
	LocalizeIntoString("CPUI_XP_BONUS", arg1)
	return Engine.Localize(LocalizeIntoString)
end

function GetCurrentWeaponLevelFromLoadout(arg0, arg1)
	local registerVal3 = tonumber(arg1)
	local registerVal4 = CoD.PrestigeUtility.GetPermanentUnlockMode()
	local registerVal5 = CoD.CACUtility.GetGunLevelWeaponIndex(arg0)
	if CoD.CACUtility.EmptyItemIndex < registerVal5 then
	end
	local registerVal6 = Engine.GetGunCurrentRank(arg0, registerVal5, registerVal4)
	local registerVal7 = Engine.GetGunNextRank(arg0, registerVal5, registerVal4)
	local registerVal8 = Engine.GetGunCurrentRankXP(arg0, registerVal5, registerVal4)
	local registerVal9 = CoD.CACUtility.GetCurrentWeaponXP(arg0, registerVal5, registerVal4)
	if registerVal6 == registerVal7 and registerVal8 <= registerVal9 then
		return "MPUI_MAX_CAPS"
	end
	return (registerVal6 + 1.000000)
end

function GetCurrentWeaponLevel(arg0, arg1)
	local registerVal3 = tonumber(arg1)
	local registerVal4 = CoD.PrestigeUtility.GetPermanentUnlockMode()
	local registerVal5 = Engine.GetGunCurrentRank(arg0, registerVal3, registerVal4)
	local registerVal6 = Engine.GetGunNextRank(arg0, registerVal3, registerVal4)
	local registerVal7 = Engine.GetGunCurrentRankXP(arg0, registerVal3, registerVal4)
	local registerVal8 = CoD.CACUtility.GetCurrentWeaponXP(arg0, registerVal3, registerVal4)
	if registerVal5 == registerVal6 and registerVal7 <= registerVal8 then
		return "MPUI_MAX_CAPS"
	end
	return (registerVal5 + 1.000000)
end

function GetNextWeaponLevel(arg0, arg1)
	local registerVal3 = tonumber(arg1)
	local registerVal4 = CoD.PrestigeUtility.GetPermanentUnlockMode()
	local registerVal5 = CoD.CACUtility.GetGunLevelWeaponIndex(arg0)
	if CoD.CACUtility.EmptyItemIndex < registerVal5 then
	end
	local registerVal6 = Engine.GetGunCurrentRank(arg0, registerVal5, registerVal4)
	return (registerVal6 + 2.000000)
end

function GetCurrentWeaponXP(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = tonumber(arg1)
	local registerVal7 = CoD.PrestigeUtility.GetPermanentUnlockMode()
	local registerVal8 = CoD.CACUtility.GetGunLevelWeaponIndex(arg0)
	if CoD.CACUtility.EmptyItemIndex < registerVal8 then
	end
	local registerVal9 = Engine.GetGunPrevRankXP(arg0, registerVal8, registerVal7)
	local registerVal10 = Engine.GetGunCurrentRankXP(arg0, registerVal8, registerVal7)
	local registerVal11 = CoD.CACUtility.GetCurrentWeaponXP(arg0, registerVal8, registerVal7)
	return ((registerVal11 - registerVal9) / (registerVal10 - registerVal9)), CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

function GetWeaponVariantExtraCamParameters(arg0, arg1)
	local registerVal3 = Gunsmith_IsEnabled(nil, arg0)
	if registerVal3 then
		registerVal3 = CoD.CraftUtility.Gunsmith.GetVariantByIndex(arg0, arg1)
		local registerVal4 = CoD.CraftUtility.GetLoadoutSlot(arg0)
		local registerVal5 = CoD.CraftUtility.Gunsmith.GetWeaponByVariantIndex(arg0, arg1)
		local registerVal10 = CoD.CraftUtility.Gunsmith.GetAttachmentVariantByVariantIndex(arg0, arg1)
		return registerVal4, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
	end
	registerVal4 = CoD.CraftUtility.GetModeAbbreviation()
	return "primary", CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

function GetItemUpgradeInfoString(arg0, arg1)
	if not arg1 then
		return ""
	end
	local registerVal3 = Engine.GetItemRef(arg1)
	local registerVal4 = LUI.endswith(registerVal3, "_pro")
	if not registerVal4 then
		local registerVal5 = Engine.GetItemDesc(arg1)
		return Engine.Localize((registerVal5 .. "_UPGRADE"))
	end
	return ""
end

function GetScorestreakMomentumFromIndex(arg0)
	local registerVal1 = CoD.PrestigeUtility.GetPermanentUnlockMode()
	return Engine.GetItemMomentumCost(arg0, registerVal1)
end

function GetClientGameLobbyXUIDForClientNum(arg0)
	if arg0 == LuaEnums.INVALID_CLIENT_INDEX or LuaEnums.MAX_CLIENTS <= arg0 then
		return Engine.NumberToUInt64(LuaEnums.INVALID_XUID)
	end
	return Engine.GetLobbyXUIDForClientNum(Enum.LobbyModule.LOBBY_MODULE_CLIENT, Enum.LobbyType.LOBBY_TYPE_GAME, arg0)
end

function GetScoreboardPlayerName(arg0, arg1)
	if arg1 and arg1 ~= "" then
		local registerVal2 = Engine.GetGamertagForClient(arg0, arg1)
		if not registerVal2 then
		end
		return ""
	end
	return ""
end

function GetScoreboardPlayerRank(arg0, arg1)
	if arg1 and arg1 ~= "" then
		local registerVal2 = Engine.GetRankStringForClient(arg0, arg1)
		if not registerVal2 then
		end
		return ""
	end
	return ""
end

function GetScoreboardPlayerRankIcon(arg0, arg1)
	if arg1 and arg1 ~= "" then
		local registerVal2 = Engine.GetRankIconForClient(arg0, arg1)
		if not registerVal2 then
		end
		return "blacktransparent"
	end
	return ""
end

function GetScoreboardStatusIcon(arg0, arg1)
	local registerVal2 = Engine.GetStatusIconForClient(arg0, arg1)
	if arg1 and arg1 ~= "" and registerVal2 ~= nil then
		return registerVal2
	end
	return ""
end

function GetScoreboardPlayerScoreColumn(arg0, arg1, arg2)
	return Engine.GetScoreboardColumnForClient(arg2, arg1)
end

function GetScoreboardCurrentStreak(arg0, arg1)
	local registerVal2 = tonumber(arg1)
	if registerVal2 == -1.000000 then
		return ""
	end
	return registerVal2
end

function GetScoreboardKDScoreColumn(arg0, arg1, arg2, arg3)
	local registerVal4 = Engine.GetScoreboardColumnForClient(arg3, arg1)
	local registerVal5 = Engine.GetScoreboardColumnForClient(arg3, arg2)
	if registerVal4 == "" and registerVal5 == "" then
		return ""
	end
	if registerVal4 == "" then
	end
	if registerVal5 == "" then
	end
	return ("0" .. " / " .. "0")
end

function GetScoreboardColumnName(arg0, arg1, arg2)
	return Engine.GetScoreBoardColumnName(arg0, arg1)
end

function GetScoreboardPlayerScoreColumn1(arg0)
	local registerVal1, registerVal2 = CoD.ScoreboardUtility.GetTeamEnumAndClientIndex(arg0)
	if arg0 and arg0 ~= "" and registerVal2 and 0.000000 <= registerVal2 then
		return Engine.GetScoreboardPlayerData(registerVal2, registerVal1, Enum.scoreBoardColumns_e.SCOREBOARD_COLUMN_1)
	end
	return ""
end

function GetScoreboardPlayerScoreColumn2(arg0)
	local registerVal1, registerVal2 = CoD.ScoreboardUtility.GetTeamEnumAndClientIndex(arg0)
	if arg0 and arg0 ~= "" and registerVal2 and 0.000000 <= registerVal2 then
		return Engine.GetScoreboardPlayerData(registerVal2, registerVal1, Enum.scoreBoardColumns_e.SCOREBOARD_COLUMN_2)
	end
	return ""
end

function GetScoreboardPlayerScoreColumn3(arg0)
	local registerVal1, registerVal2 = CoD.ScoreboardUtility.GetTeamEnumAndClientIndex(arg0)
	if arg0 and arg0 ~= "" and registerVal2 and 0.000000 <= registerVal2 then
		return Engine.GetScoreboardPlayerData(registerVal2, registerVal1, Enum.scoreBoardColumns_e.SCOREBOARD_COLUMN_3)
	end
	return ""
end

function GetScoreboardPlayerScoreColumn4(arg0)
	local registerVal1, registerVal2 = CoD.ScoreboardUtility.GetTeamEnumAndClientIndex(arg0)
	if arg0 and arg0 ~= "" and registerVal2 and 0.000000 <= registerVal2 then
		return Engine.GetScoreboardPlayerData(registerVal2, registerVal1, Enum.scoreBoardColumns_e.SCOREBOARD_COLUMN_4)
	end
	return ""
end

function GetScoreboardPlayerScoreColumn5(arg0)
	local registerVal1, registerVal2 = CoD.ScoreboardUtility.GetTeamEnumAndClientIndex(arg0)
	if arg0 and arg0 ~= "" and registerVal2 and 0.000000 <= registerVal2 then
		return Engine.GetScoreboardPlayerData(registerVal2, registerVal1, Enum.scoreBoardColumns_e.SCOREBOARD_COLUMN_5)
	end
	return ""
end

function GetScoreboardPlayerPingBarImage(arg0)
	local registerVal1 = Engine.GetPingImageCount()
	if arg0 or not registerVal1 then
	end
	local registerVal2 = Dvar.cg_ScoresPing_Interval:get()
	if 1.000000 < registerVal2 and 0.000000 < arg0 then
		return ("ping_bar_0" .. arg0)
	end
	return "blacktransparent"
end

function GetScoreboardPlayerPingRange(arg0)
	local registerVal1 = Engine.GetPingImageCount()
	if arg0 or not registerVal1 then
	end
	local registerVal2 = Engine.GetPingStepMS()
	if 4.000000 or not registerVal2 then
	end
	if ((4.000000 + 1.000000) - arg0) == 4.000000 then
		return Engine.Localize("MENU_PING_MAX", (100.000000 * (((4.000000 + 1.000000) - arg0) - 1.000000)))
	else
		if ((4.000000 + 1.000000) - arg0) < 4.000000 then
			return Engine.Localize("MENU_PING_RANGE", (100.000000 * (((4.000000 + 1.000000) - arg0) - 1.000000)), ((100.000000 * ((4.000000 + 1.000000) - arg0)) - 1.000000))
		end
	end
	return ""
end

function GetScoreboardPlayerPing(arg0)
	local registerVal1, registerVal2 = CoD.ScoreboardUtility.GetTeamEnumAndClientIndex(arg0)
	if arg0 and arg0 ~= "" and registerVal2 and 0.000000 <= registerVal2 then
		return Engine.GetScoreboardPlayerData(registerVal2, registerVal1, Enum.scoreBoardColumns_e.SCOREBOARD_COLUMN_PING)
	end
	return ""
end

function GetScoreboardTeamBackgroundColor(arg0, arg1)
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

function GetScoreboardPlayerBackgroundColor(arg0)
	if arg0 and arg0 ~= "" then
		local registerVal1, registerVal2 = CoD.ScoreboardUtility.GetTeamEnumAndClientIndex(arg0)
		return CoD.GetTeamFactionColor(registerVal1)
	end
	return CoD.GetTeamFactionColor(Enum.team_t.TEAM_FREE)
end

function GetScoreboardPingBarAlpha(arg0)
	local registerVal1 = Engine.IsInGame()
	registerVal1 = IsScoreboardPingAsBars()
	registerVal1 = IsLive()
	if registerVal1 and registerVal1 and registerVal1 then
		return 1.000000
	end
	return 0.000000
end

function GetScoreboardPingValueAlpha(arg0)
	local registerVal1 = Engine.IsInGame()
	registerVal1 = IsScoreboardPingAsBars()
	registerVal1 = IsLive()
	if registerVal1 and not registerVal1 and registerVal1 then
		return arg0
	end
	return 0.000000
end

function KillCamAllowRespawnToString(arg0, arg1)
	if arg1 ~= 1.000000 or not "PLATFORM_PRESS_TO_RESPAWN" then
	end
	return "PLATFORM_PRESS_TO_SKIP"
end

function GetBackgroundByID(arg0)
	if arg0 < 0.000000 then
	end
	local registerVal4 = Engine.TableLookupGetColumnValueForRow("gamedata/emblems/backgrounds.csv", 0.000000, 3.000000)
	return registerVal4
end

function GetBackgroundNameByID(arg0)
	if arg0 < 0.000000 then
	end
	local registerVal4 = Engine.TableLookupGetColumnValueForRow("gamedata/emblems/backgrounds.csv", 0.000000, 4.000000)
	return registerVal4
end

function GetPlayerBackground(arg0, arg1)
	Engine.GetEmblemBackgroundId()
	return ValidateEmblemBackground(arg0, Engine.GetEmblemBackgroundId)
end

function ZeroIndexedTensDigit(arg0, arg1)
	local registerVal2 = Engine.GetGametypeSetting("startRound")
	local registerVal5 = math.max((arg1 - registerVal2), 0.000000)
	local registerVal4 = math.floor((registerVal5 / 10.000000))
	return (arg0 .. registerVal4)
end

function ZeroIndexedOnesDigit(arg0, arg1)
	local registerVal2 = Engine.GetGametypeSetting("startRound")
	local registerVal4 = math.max((arg1 - registerVal2), 0.000000)
	return (arg0 .. (registerVal4 % 10.000000))
end

function LocalizeWithModeAndMapName(arg0)
	local registerVal1 = Engine.GetCurrentMap()
	local registerVal4 = Engine.GetCurrentGameType()
	local registerVal2 = Engine.Localize(("MPUI_" .. registerVal4))
	local registerVal3 = CoD.GetMapValue(registerVal1, "mapName", registerVal1)
	return Engine.Localize(arg0, registerVal2, registerVal3)
end

function VisibilityStringFromThirdPersonBit(arg0)
	if arg0 == 0.000000 then
		return Engine.Localize("MPUI_THIRD_PERSON_VIEW")
	else
		return Engine.Localize("MPUI_FIRST_PERSON_VIEW")
	end
end

function ShowHideStringFromShowSideControlsValue(arg0)
	if arg0 == 0.000000 then
		return Engine.Localize("MPUI_SHOUTCASTER_CONTROLS")
	else
		return Engine.Localize("MPUI_HIDE_SHOUTCASTER_CONTROLS")
	end
end

function TeamStringFromPlayerIndex(arg0, arg1)
	if arg1 == -1.000000 then
		return ""
	end
	local registerVal3 = Engine.GetTeamID(arg0, arg1)
	local registerVal4 = CoD.IsShoutcaster(arg0)
	registerVal4 = CoDShared.IsGametypeTeamBased()
	if registerVal4 and not registerVal4 and registerVal3 ~= Enum.team_t.TEAM_SPECTATOR then
		return ""
	end
	registerVal4 = CoD.GetTeamNameCaps(registerVal3)
	return Engine.Localize(registerVal4)
end

function TeamColorFromPlayerIndex(arg0, arg1)
	if arg1 == -1.000000 then
		return CoD.GetTeamFactionColor(Enum.team_t.TEAM_FREE)
	end
	local registerVal3 = Engine.GetTeamID(arg0, arg1)
	local registerVal4 = CoD.IsShoutcaster(arg0)
	registerVal4 = CoDShared.IsGametypeTeamBased()
	if registerVal4 and not registerVal4 and registerVal3 ~= Enum.team_t.TEAM_SPECTATOR then
		return CoD.GetTeamFactionColor(Enum.team_t.TEAM_FREE)
	end
	registerVal4 = CoD.IsShoutcaster(arg0)
	registerVal4 = CoD.ShoutcasterProfileVarBool(arg0, "shoutcaster_flip_scorepanel")
	if registerVal4 and registerVal4 then
		if arg1 == Enum.team_t.TEAM_ALLIES then
		else
			if Enum.team_t.TEAM_AXIS == Enum.team_t.TEAM_AXIS then
			end
		end
	end
	return CoD.GetTeamFactionColor(registerVal3)
end

function BlackhatHackingPercentage(arg0)
	local registerVal1 = string.format("%d", (arg0 * 100.000000))
	return (registerVal1 .. "%")
end

function BlackhatHackingPercentageShaderValue(arg0, arg1, arg2, arg3, arg4)
	return arg1, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

function GetCategoryIconForOverlayType(arg0)
	if arg0 == CoD.OverlayUtility.OverlayTypes.Connection then
		return "t7_icon_connect_overlays"
	else
		if arg0 == CoD.OverlayUtility.OverlayTypes.Settings then
			return "t7_icon_options_overlays"
		else
			if arg0 == CoD.OverlayUtility.OverlayTypes.Unlock then
				return "t7_icon_unlock_overlays"
			else
				if arg0 == CoD.OverlayUtility.OverlayTypes.Save then
					return "t7_icon_save_overlays"
				else
					if arg0 == CoD.OverlayUtility.OverlayTypes.Quit then
						return "t7_icon_quit_overlays"
					else
						if arg0 == CoD.OverlayUtility.OverlayTypes.Alert then
							return "t7_icon_error_overlays"
						else
							if arg0 == CoD.OverlayUtility.OverlayTypes.Error then
								return "t7_icon_error_overlays"
							end
						end
					end
				end
			end
		end
	end
	return "blacktransparent"
end

function GetAARMedalName(arg0)
	local registerVal2 = Engine.TableLookupGetColumnValueForRow(CoD.scoreInfoTable, arg0, CoD.AARUtility.medalStringCol)
	return Engine.Localize(registerVal2)
end

function GetAARMedalDesc(arg0)
	local registerVal2 = Engine.TableLookupGetColumnValueForRow(CoD.scoreInfoTable, arg0, CoD.AARUtility.medalStringCol)
	return Engine.Localize((registerVal2 .. "_DESC"))
end

function GetAARMedalHitCount(arg0)
	local registerVal1 = tonumber(arg0)
	if arg0 and 1.000000 < registerVal1 then
		return ("x" .. arg0)
	end
	return ""
end

function GetAARMedalImageSmall(arg0)
	local registerVal1 = GetMedalInfo(arg0)
	if registerVal1 then
		return registerVal1.iconSmall
	end
	return ""
end

function GetAARMedalImageBackingSmall(arg0)
	local registerVal1 = GetMedalInfo(arg0)
	if registerVal1 then
		return registerVal1.backingSmall
	end
	return ""
end

function GetAARMedalImageLarge(arg0)
	local registerVal1 = GetMedalInfo(arg0)
	if registerVal1 then
		return registerVal1.iconLarge
	end
	return ""
end

function GetAARMedalImageBackingLarge(arg0)
	local registerVal1 = GetMedalInfo(arg0)
	if registerVal1 then
		return registerVal1.backingLarge
	end
	return ""
end

function GetAARXpEarned(arg0, arg1)
	local registerVal2 = IsStarterPackMaxLevel(arg0)
	if registerVal2 then
		return Engine.Localize("PLATFORM_STARTER_PACK_XP_EARNED_CAPS")
	else
		return Engine.Localize("MENU_XP_EARNED_CAPS")
	end
end

function GetAARXPNextLevel(arg0, arg1)
	local registerVal2 = IsStarterPackMaxLevel(arg0)
	if registerVal2 then
		return Engine.Localize("PLATFORM_STARTER_PACK_NEXT_LEVEL_XP_NEEDED")
	else
		return Engine.Localize("MENU_NEXT_LEVEL_XP_NEEDED")
	end
end

function GetAARXPStarterPackNotice(arg0, arg1)
	local registerVal2 = IsStarterPackMaxLevel(arg0)
	if registerVal2 then
		return Engine.Localize("PLATFORM_STARTER_PACK_XP_NOTICE")
	else
		return ""
	end
end

function GetPlaylistImage(arg0)
	local registerVal2 = Engine.GetPlaylistIconName(0.000000, arg0)
	if not registerVal2 then
	end
	return "blacktransparent"
end

function PrependArenaSeasonText(arg0)
	local registerVal1 = Engine.Localize("MENU_SEASON_CAPS")
	return (registerVal1 .. " " .. arg0)
end

function ArenaSeasonEndTime(arg0)
	local registerVal1 = math.floor((arg0 / 86400.000000))
	local registerVal2 = math.floor(((arg0 - (registerVal1 * 86400.000000)) / 3600.000000))
	local registerVal3 = math.floor((((arg0 - (registerVal1 * 86400.000000)) - (registerVal2 * 3600.000000)) / 60.000000))
	if 0.000000 < registerVal1 then
		return Engine.Localize("MENU_SEASON_ENDS_IN_DAYS", registerVal1)
	else
		return Engine.Localize("MENU_SEASON_ENDS_IN_HOURS_MINS", registerVal2, registerVal3)
	end
end

function PrependArenaToPlaylist(arg0)
	local registerVal1 = IsArenaMode()
	if registerVal1 then
		registerVal1 = Engine.Localize("MENU_ARENA_CAPS")
		local registerVal3 = Engine.Localize(arg0)
		return (registerVal1 .. " " .. registerVal3)
	else
		return Engine.Localize(arg0)
	end
end

function GetArenaRank(arg0)
	return CoD.ArenaUtility.GetAdjustedRank(arg0)
end

function GetArenaRankName(arg0)
	return CoD.ArenaUtility.GetRankName(arg0)
end

function GetArenaRankIcon(arg0)
	return CoD.ArenaUtility.GetArenaRankIcon(arg0)
end

function GetArenaRankIconLG(arg0)
	local registerVal2 = CoD.ArenaUtility.GetArenaRankIcon(arg0)
	return (registerVal2 .. "_lrg")
end

function GetArenaRankPoints(arg0)
	return CoD.ArenaUtility.GetArenaRankPoints(arg0)
end

function GetArenaPowerRating(arg0)
	local registerVal1 = tonumber(arg0)
	local registerVal2 = LuaUtils.GetArenaPowerRating(registerVal1)
	return Engine.Localize("MENU_ARENA_POWER_RATING", registerVal2)
end

function GetPostMatchScore(arg0, arg1)
	local registerVal2 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	if not registerVal2 then
		return ""
	end
	local registerVal4 = registerVal2.AfterActionReportStats.alliesScore:get()
	local registerVal5 = registerVal2.AfterActionReportStats.axisScore:get()
	local registerVal6 = tostring(registerVal4)
	local registerVal8 = tostring(registerVal5)
	return (registerVal6 .. " - " .. registerVal8)
end

function GetPostMatchGameType(arg0, arg1)
	local registerVal2 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	if not registerVal2 then
		return ""
	end
	local registerVal4 = registerVal2.AfterActionReportStats.gameTypeRef:get()
	local registerVal5 = Engine.StructTableLookupString(CoDShared.gametypesStructTable, "name", registerVal4, "name_ref")
	if registerVal5 then
		return Engine.Localize(registerVal5)
	end
	return ""
end

function GetPostMatchGameTypeImage(arg0, arg1)
	local registerVal2 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	if not registerVal2 then
		return ""
	end
	local registerVal4 = registerVal2.AfterActionReportStats.gameTypeRef:get()
	if registerVal4 then
		return Engine.StructTableLookupString(CoDShared.gametypesStructTable, "name", registerVal4, "image")
	end
	return ""
end

function GetPostMatchMapImage(arg0, arg1)
	local registerVal2 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	if not registerVal2 then
		return ""
	end
	local registerVal4 = registerVal2.AfterActionReportStats.mapname:get()
	if registerVal4 then
		local registerVal5 = CoD.GetMapValueFromMapId(registerVal4, "mapName", "MENU_MAP")
		return MapNameToMapImage(registerVal5)
	end
	return ""
end

function GetCurrentMinimapImageName(arg0)
	local registerVal1 = Engine.GetCurrentMapName()
	return ("i_compass_map_" .. registerVal1 .. "_full")
end

function GetChyronImage(arg0)
	local registerVal1 = Engine.GetCurrentMapName()
	return CoD.GetMapValue(registerVal1, "chyron", arg0)
end

function GetCurrentMapID(arg0)
	return Engine.GetCurrentMap()
end

function GetQuestItemHolderImageFromEnum(arg0)
	if arg0 == CoD.Zombie.ZOD_CRAFTABLE_RITUAL_BOXER_ENUM then
		return "uie_t7_zm_hud_score_char8"
	else
		if arg0 == CoD.Zombie.ZOD_CRAFTABLE_RITUAL_DETECTIVE_ENUM then
			return "uie_t7_zm_hud_score_char6"
		else
			if arg0 == CoD.Zombie.ZOD_CRAFTABLE_RITUAL_FEMME_ENUM then
				return "uie_t7_zm_hud_score_char5"
			else
				if arg0 == CoD.Zombie.ZOD_CRAFTABLE_RITUAL_MAGICIAN_ENUM then
					return "uie_t7_zm_hud_score_char7"
				end
			end
		end
	end
	return ""
end

function GetCastleQuestOwnerImageFromEnum(arg0)
	if arg0 == CoD.Zombie.CASTLE_CRAFTABLE_ELEMENT_OWNER_DEMPSEY then
		return "uie_t7_zm_hud_score_char3"
	else
		if arg0 == CoD.Zombie.CASTLE_CRAFTABLE_ELEMENT_OWNER_NIKOLAI then
			return "uie_t7_zm_hud_score_char1"
		else
			if arg0 == CoD.Zombie.CASTLE_CRAFTABLE_ELEMENT_OWNER_RICHTOFEN then
				return "uie_t7_zm_hud_score_char4"
			else
				if arg0 == CoD.Zombie.CASTLE_CRAFTABLE_ELEMENT_OWNER_TAKEO then
					return "uie_t7_zm_hud_score_char2"
				end
			end
		end
	end
	return "blacktransparent"
end

function ConvertToCastleQuestProgressPercent(arg0, arg1, arg2, arg3)
	return ((arg0 - 1.000000) / 4.000000), CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

function StalingradCylinderImage(arg0, arg1)
	local registerVal2 = {}
	registerVal2[1.000000] = "_red"
	registerVal2[2.000000] = "_blue"
	registerVal2[3.000000] = ""
	if not registerVal2[arg1] then
	end
	return ("uie_t7_icon_inventory_dlc3_controlcylinder" .. "" .. arg0)
end

function GetChallengeIcon(arg0)
	if CoD.Zombie.ChallengeIcons and (arg0 + 1.000000) <= #CoD.Zombie.ChallengeIcons then
		return CoD.Zombie.ChallengeIcons[(arg0 + 1.000000)]
	end
	return "blacktransparent"
end

function GetStalingradWearableDescription(arg0)
	local registerVal1 = LUI.endswith(arg0, "raz")
	if registerVal1 then
		return "ZM_STALINGRAD_WEARABLE_RAZ_MASK_EFFECTS"
	else
		registerVal1 = LUI.endswith(arg0, "sentinel")
		if registerVal1 then
			return "ZM_STALINGRAD_WEARABLE_VALKYRIE_HAT_EFFECTS"
		else
			registerVal1 = LUI.endswith(arg0, "wings")
			if registerVal1 then
				return "ZM_STALINGRAD_WEARABLE_WINGS_EFFECTS"
			end
		end
	end
	return ""
end

function GetGenesisWearableDescription(arg0)
	local registerVal1 = LUI.endswith(arg0, "weaselhat")
	if registerVal1 then
		return "ZM_GENESIS_WEARABLE_WEASELS_HAT_EFFECTS"
	else
		registerVal1 = LUI.endswith(arg0, "apothicon")
		if registerVal1 then
			return "ZM_GENESIS_WEARABLE_APOTHICON_MASK_EFFECTS"
		else
			registerVal1 = LUI.endswith(arg0, "kinghelm")
			if registerVal1 then
				return "ZM_GENESIS_WEARABLE_HELM_OF_THE_KING_EFFECTS"
			else
				registerVal1 = LUI.endswith(arg0, "helm")
				if registerVal1 then
					return "ZM_GENESIS_WEARABLE_HELM_OF_SIEGFRIED_EFFECTS"
				else
					registerVal1 = LUI.endswith(arg0, "keeper")
					if registerVal1 then
						return "ZM_GENESIS_WEARABLE_KEEPER_SKULL_HEAD_EFFECTS"
					else
						registerVal1 = LUI.endswith(arg0, "margwa")
						if registerVal1 then
							return "ZM_GENESIS_WEARABLE_MARGWA_HEAD_EFFECTS"
						else
							registerVal1 = LUI.endswith(arg0, "direwolf")
							if registerVal1 then
								return "ZM_GENESIS_WEARABLE_DIRE_WOLF_HEAD_EFFECTS"
							else
								registerVal1 = LUI.endswith(arg0, "fury")
								if registerVal1 then
									return "ZM_GENESIS_WEARABLE_FURY_HEAD_EFFECTS"
								end
							end
						end
					end
				end
			end
		end
	end
	return ""
end

function MapOverrideString(arg0, arg1, arg2)
	local registerVal3 = Engine.GetCurrentMap()
	if registerVal3 == arg0 then
		return arg1
	else
		return arg2
	end
end

function RarityToColor(arg0)
	if arg0 == "MPUI_BM_RARE" then
	else
		if arg0 == "MPUI_BM_LEGENDARY" then
		else
			if arg0 == "MPUI_BM_EPIC" then
			else
				if arg0 == "MPUI_BM_LIMITED" then
				end
			end
		end
	end
	return ColorSet.BlackMarketLimited.r, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

function GetSpinImageForRarity(arg0)
	if arg0 == "rare" then
		return "uie_t7_blackmarket_rare_backing_spin"
	else
		if arg0 == "epic" then
			return "uie_t7_blackmarket_epic_backing_spin"
		else
			if arg0 == "legendary" then
				return "uie_t7_blackmarket_legendary_backing_spin"
			else
				return "blacktransparent"
			end
		end
	end
end

function GetLootEmblemIndexParams(arg0, arg1)
	return CoD.BlackMarketUtility.GetLootEmblemIndexParams(arg0, arg1)
end

function ApplyLootDiscount(arg0, arg1)
	local registerVal2 = tonumber(arg1)
	if not registerVal2 then
		return arg1
	end
	registerVal2 = Dvar.loot_salePercentOff:get()
	if not registerVal2 then
		return arg1
	end
	local registerVal3 = tonumber(registerVal2)
	local registerVal4 = tonumber(arg1)
	return ((1.000000 - registerVal3) * registerVal4)
end

function GetCostBeforeLootDiscount(arg0, arg1)
	local registerVal2 = tonumber(arg1)
	if not registerVal2 then
		return arg1
	end
	registerVal2 = Dvar.loot_salePercentOff:get()
	if arg1 or registerVal2 == 0.000000 then
		return arg1
	end
	local registerVal3 = tonumber(arg1)
	local registerVal4 = tonumber(registerVal2)
	return (registerVal3 / (1.000000 - registerVal4))
end

function GetLDCostBeforeLootDiscount(arg0, arg1)
	local registerVal2 = tonumber(arg1)
	if not registerVal2 then
		return arg1
	end
	registerVal2 = Dvar.loot_ld_salePercentOff:get()
	local registerVal3 = tonumber(registerVal2)
	if arg1 or registerVal3 == 0.000000 then
		return arg1
	end
	registerVal3 = tonumber(arg1)
	local registerVal4 = tonumber(registerVal2)
	return (registerVal3 / (1.000000 - registerVal4))
end

function GetVialCostBeforeDiscount(arg0, arg1)
	local registerVal2 = tonumber(arg1)
	if not registerVal2 then
		return arg1
	end
	registerVal2 = Dvar.loot_distill_salePercentOff:get()
	local registerVal3 = tonumber(registerVal2)
	if arg1 or registerVal3 == 0.000000 then
		return arg1
	end
	registerVal3 = tonumber(arg1)
	local registerVal4 = tonumber(registerVal2)
	return (registerVal3 / (1.000000 - registerVal4))
end

function ConvertToLootDecalIndexIfDecal(arg0, arg1)
	return CoD.BlackMarketUtility.ConvertToLootDecalIndexIfDecal(arg1)
end

function GetIconForCurrentSupplyDrop(arg0, arg1)
	return CoD.BlackMarketUtility.GetCrateTypeImage(CoD.perController[arg0].supplyDropType)
end

function GetTitleForCurrentPromoItem(arg0, arg1)
	if arg1 ~= "MPUI_BM_TRIFECTA_PACKAGE_DESC" and arg1 == "MPUI_BM_GRAND_SLAM_PACKAGE_DESC" or arg1 == "MPUI_BM_OUTFIT_STORE_TITLE" then
		return arg1
	end
	local registerVal2 = CoD.BlackMarketUtility.GetCurrentBribeTitle()
	if registerVal2 then
		return CoD.BlackMarketUtility.GetCurrentBribeTitle()
	end
	registerVal2 = IsLootSaleActive(arg0)
	if registerVal2 then
		return DvarLocalizedIntoStringMultiplied("loot_salePercentOff", 100.000000, "ZMUI_PERCENT_OFF")
	end
	Dvar.loot_bundle_final_count:get()
	return Engine.Localize("MPUI_BM_BUNDLE_MARKETING_TITLE", Dvar.loot_bundle_final_count:get)
end

function GetDescriptionForCurrentPromoItem(arg0, arg1)
	local registerVal2 = CoD.BlackMarketUtility.GetCurrentBribeDescription()
	if registerVal2 then
		return CoD.BlackMarketUtility.GetCurrentBribeDescription()
	end
	registerVal2 = IsLootSaleActive(arg0)
	if registerVal2 then
		return Engine.Localize("MENU_50_PERCENT_OFF")
	end
	local registerVal4 = Engine.DvarInt(nil, "loot_bundle_final_count")
	Engine.DvarInt(nil, "loot_bundle_initial_count")
	return Engine.Localize("MPUI_BM_BUNDLE_DESC", registerVal4, Engine.DvarInt)
end

function GetImageForCurrentPromoItem(arg0, arg1)
	local registerVal2 = CoD.BlackMarketUtility.GetCurrentBribePromoImage()
	if not registerVal2 then
	end
	return "t7_blackmarket_promo_bribe_taunt"
end

function GetImageForCurrentBribe(arg0, arg1)
	local registerVal2 = CoD.BlackMarketUtility.GetCurrentBribeImage()
	if not registerVal2 then
	end
	return "t7_blackmarket_crate_bribe_chip_taunt"
end

function GetFrameTitleForCurrentBribe(arg0, arg1)
	local registerVal2 = CoD.BlackMarketUtility.GetCurrentBribeFrameTitle()
	if not registerVal2 then
	end
	return "MPUI_BM_BRIBE"
end

function GetSupplyDropOrBundleString(arg0, arg1)
	local registerVal2 = tonumber(arg1)
	if registerVal2 ~= nil and registerVal2 == CoD.BlackMarketUtility.DropTypes.BUNDLE then
		local registerVal3 = IsBundleActive(arg0)
		registerVal3 = IsHundredBundleActive(arg0)
		registerVal3 = IsRareBundle10for5Active(arg0)
		if not registerVal3 and not registerVal3 and not registerVal3 then
			return Engine.Localize("MPUI_BM_RARE_DROP")
		else
			Engine.DvarInt(nil, "loot_bundle_final_count")
			return Engine.Localize(CoD.BlackMarketUtility.BundleSupplySubtitle, Engine.DvarInt)
		else
			if registerVal2 == CoD.BlackMarketUtility.DropTypes.TRIFECTA then
				return Engine.Localize("MPUI_BM_TRIFECTA")
			else
				if registerVal2 == CoD.BlackMarketUtility.DropTypes.HUNDRED_BUNDLE then
					return Engine.Localize(CoD.BlackMarketUtility.BundleSupplySubtitle, 100.000000)
				else
					if registerVal2 == CoD.BlackMarketUtility.DropTypes.RARE_BUNDLE_10FOR5 then
						return Engine.Localize(CoD.BlackMarketUtility.BundleSupplySubtitle, 10.000000)
					else
						if registerVal2 == CoD.BlackMarketUtility.DropTypes.RARE_20BUNDLE then
							return Engine.Localize(CoD.BlackMarketUtility.BundleSupplySubtitle, 20.000000)
						else
							if registerVal2 == CoD.BlackMarketUtility.DropTypes.RARE_15BUNDLE then
								return Engine.Localize(CoD.BlackMarketUtility.BundleAndBribeSupplySubtitle, 15.000000, 3.000000)
							else
								if registerVal2 == CoD.BlackMarketUtility.DropTypes.GRAND_SLAM then
									return Engine.Localize("MPUI_BM_GRAND_SLAM")
								else
									if registerVal2 == CoD.BlackMarketUtility.DropTypes.RARE_20LDBUNDLE then
										return Engine.Localize("MPUI_BM_BRIBE_LDBUNDLE_POPUP")
									end
								end
							end
						end
					end
				end
			end
		end
	end
	return Engine.Localize("MPUI_BM_SUPPLY_DROP")
end

function GetPurchaseCompleteStringForSupplyDropType(arg0, arg1)
	local registerVal2 = tonumber(arg1)
	if registerVal2 == CoD.BlackMarketUtility.DropTypes.BUNDLE then
		Engine.DvarInt(nil, "loot_bundle_final_count")
		return Engine.Localize("MPUI_BM_BUNDLE_SUCCESS", Engine.DvarInt)
	else
		if registerVal2 == CoD.BlackMarketUtility.DropTypes.DAILY_DOUBLE then
			Engine.DvarInt(nil, "loot_dailyDouble_final_count")
			return Engine.Localize("MPUI_BM_DAILY_DOUBLE_SUCCESS", Engine.DvarInt)
		else
			if registerVal2 == CoD.BlackMarketUtility.DropTypes.HUNDRED_BUNDLE then
				return Engine.Localize("MPUI_BM_BUNDLE_SUCCESS", 100.000000)
			else
				if registerVal2 == CoD.BlackMarketUtility.DropTypes.RARE_BUNDLE_10FOR5 then
					return Engine.Localize("MPUI_BM_BUNDLE_SUCCESS", 10.000000)
				else
					if registerVal2 == CoD.BlackMarketUtility.DropTypes.RARE_20BUNDLE then
						return Engine.Localize("MPUI_BM_BUNDLE_SUCCESS", 20.000000)
					else
						if registerVal2 == CoD.BlackMarketUtility.DropTypes.RARE_15BUNDLE then
							return Engine.Localize("MPUI_BM_BUNDLE_SUCCESS", 15.000000)
						else
							if registerVal2 == CoD.BlackMarketUtility.DropTypes.BUNDLE_EXPERIMENT then
								Engine.DvarInt(nil, "loot_3pack_final_count")
								return Engine.Localize("MPUI_BM_BUNDLE_SUCCESS", Engine.DvarInt)
							else
								if registerVal2 == CoD.BlackMarketUtility.DropTypes.NO_DUPES_BUNDLE then
									return Engine.Localize("MPUI_BM_BUNDLE_SUCCESS", 20.000000)
								else
									if registerVal2 == CoD.BlackMarketUtility.DropTypes.GRAND_SLAM then
										return Engine.Localize("MPUI_BM_GRAND_SLAM_PURCHASE_SUCCESS")
									else
										if registerVal2 == CoD.BlackMarketUtility.DropTypes.TRIFECTA then
											return Engine.Localize("MPUI_BM_TRIFECTA_PURCHASE_SUCCESS")
										else
											if registerVal2 == CoD.BlackMarketUtility.DropTypes.RARE_20LDBUNDLE then
												return Engine.Localize("MPUI_BM_BUNDLE_SUCCESS", 20.000000)
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

function GetDecryptionRewardImageForSupplyDropType(arg0, arg1)
	if CoD.perController[arg0].supplyDropType == CoD.BlackMarketUtility.DropTypes.NO_DUPES_RANGE then
		return "t7_blackmarket_bribe_weapon"
	else
		if CoD.perController[arg0].supplyDropType == CoD.BlackMarketUtility.DropTypes.NO_DUPES_MELEE then
			return "t7_blackmarket_bribe_melee"
		else
			if CoD.perController[arg0].supplyDropType == CoD.BlackMarketUtility.DropTypes.WEAPON_3X then
				return "t7_blackmarket_bribe_gold_bribe_3_weapons"
			else
				if CoD.perController[arg0].supplyDropType == CoD.BlackMarketUtility.DropTypes.LIMITED_EDITION_CAMO then
					return "t7_blackmarket_bribe_gold_bribe_camo"
				end
			end
		end
	end
	return "blacktransparent"
end

function GetDecryptionRewardCountForSupplyDropType(arg0, arg1)
	if CoD.perController[arg0].supplyDropType == CoD.BlackMarketUtility.DropTypes.NO_DUPES_RANGE then
		local registerVal3 = DataSources.CryptoKeyProgress.getModel(arg0)
		local registerVal2 = Engine.GetModel(registerVal3, "rangeWeaponNoDupesBundles")
		return Engine.GetModelValue(registerVal2)
		registerVal3 = DataSources.CryptoKeyProgress.getModel(arg0)
		registerVal2 = Engine.GetModel(registerVal3, "meleeWeaponNoDupesBundles")
		if registerVal2 and CoD.perController[arg0].supplyDropType == CoD.BlackMarketUtility.DropTypes.NO_DUPES_MELEE and registerVal2 then
			return Engine.GetModelValue(registerVal2)
		end
	end
	return arg1
end

function GetCurrentContrabandString(arg0, arg1)
	local registerVal5 = Dvar.loot_mpItemCurrentDropStringRef:get()
	if not registerVal5 then
	end
	Engine.Localize("")
	return Engine.Localize("MPUI_CURRENT_CONTRABAND_TITLE", Engine.Localize)
end

function GetLimitedTimePromoTitleIfActive(arg0, arg1)
	local registerVal2 = IsLimitedLootPromoActive(arg0)
	if registerVal2 then
		Engine.DvarString(nil, "loot_limitedTimeItemPromo_promoString")
		return Engine.Localize(Engine.DvarString)
	end
	return arg1
end

function GetLimitedTimePromoDescIfActive(arg0, arg1)
	local registerVal2 = IsLimitedLootPromoActive(arg0)
	if registerVal2 then
		registerVal2 = Engine.DvarString(nil, "loot_limitedTimeItemPromo_promoString")
		registerVal2 = registerVal2:upper()
		if registerVal2 == "MPUI_WPN_M14" then
			return Engine.Localize("MPUI_BM_LIMITED_TIME_WPN_DESC")
		else
			Engine.Localize(Engine.DvarString(nil, "loot_limitedTimeItemPromo_promoString"))
			return Engine.Localize("MPUI_BM_LIMITED_TIME_DESC", Engine.Localize)
		end
	end
	return arg1
end

function GetPlayerListObjective(arg0, arg1)
	local registerVal2 = tonumber(arg1)
	local registerVal3 = Engine.ObjectivesGetPlayerUsing(arg0, registerVal2)
	local registerVal4, registerVal5, registerVal6 = pairs(registerVal3)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		local registerVal9 = ShouldShowObjectiveForPlayer(arg0, registerVal2, value8)
		if registerVal9 then
			return value8
		end
	end
end

function GetPlayerListObjectiveImage(arg0, arg1)
	local registerVal2 = GetPlayerListObjective(arg0, arg1)
	if registerVal2 and registerVal2.name then
		if CoD.T7Hud.ObjectivesTable[registerVal2.name].waypoint_image_neutral then
			return CoD.T7Hud.ObjectivesTable[registerVal2.name].waypoint_image_neutral
		else
			return CoD.T7Hud.ObjectivesTable[registerVal2.name].waypoint_image
		end
	end
	return ""
end

function GetPlayerListObjectiveColor(arg0, arg1)
	local registerVal3 = GetPlayerListObjective(arg0, arg1)
	local registerVal5 = Engine.DvarString(nil, "g_gametype")
	if registerVal5 == "dom" or registerVal5 == "koth" then
	end
	local registerVal6 = ShouldShowColorForObjective(arg0, arg1, registerVal3)
	if registerVal3 and registerVal3.id and registerVal6 then
		registerVal6 = Engine.ObjectiveGetTeamUsingCount(arg0, registerVal3.id)
		local registerVal7 = Engine.GetObjectiveTeam(arg0, registerVal3.id)
		if registerVal7 ~= Enum.team_t.TEAM_FREE and registerVal7 ~= Enum.team_t.TEAM_SPECTATOR and registerVal7 ~= Enum.team_t.TEAM_NEUTRAL then
			if registerVal6 ~= 1.000000 and false == false then
				return ColorSet.White.r, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
			end
		else
			local registerVal8 = Engine.GetObjectiveTeam(arg0, registerVal3.id)
			return CoD.GetTeamFactionColor(registerVal8)
		end
	end
	return ColorSet.White.r, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

function CodcasterGetDisplayPlayerName(arg0, arg1)
	local registerVal2 = GetClientNameAndClanTag(arg0, arg1)
	local registerVal3 = CoD.ShoutcasterProfileVarBool(arg0, "shoutcaster_qs_playernumbers")
	registerVal3 = Engine.GetScoreboardClientOrderIndex(arg0, tonumber(arg1))
	if registerVal3 and 0.000000 <= registerVal3 then
		return (registerVal3 .. " " .. registerVal2)
	end
	return registerVal2
end

function CodcasterGetAccentColorForTeamColor(arg0, arg1, arg2)
	local registerVal3 = ShouldUseCustomTeamIdentity(arg0)
	local registerVal6 = CoD.ShoutcasterProfileVarValue(arg0, ("shoutcaster_fe_" .. arg1 .. "_color"))
	local registerVal4 = CoD.GetCodCasterTeamColorInformation(arg0, registerVal6, "colorAccent")
	if registerVal3 and registerVal4 ~= nil then
		return registerVal4
	end
	return arg2
end

function DemoGetTimeScaleString(arg0)
	local registerVal1 = CoD.DemoUtility.GetRoundedTimeScaleString()
	return registerVal1
end

function DemoGetCurrentDollyCameraTimeScaleString(arg0)
	local registerVal1 = CoD.DemoUtility.GetEditingDollyCameraMarker()
	if not registerVal1 then
		return arg0
	end
	registerVal1 = CoD.DemoUtility.GetRoundedTimeScaleString(arg0)
	return registerVal1
end

function GetBGBDLCStringFromIndex(arg0, arg1)
	local registerVal2 = tonumber(arg1)
	if (registerVal2 - CoD.CONTENT_DLCZM0_INDEX) == 5.000000 then
		if arg0 == "ZMUI_DLC_NUM" then
			return Engine.Localize("ZMUI_ZC")
		else
			return Engine.Localize("ZMUI_BGB_PURCHASE_ZC")
		end
	end
	return Engine.Localize(arg0, (registerVal2 - CoD.CONTENT_DLCZM0_INDEX))
end

function GetLiveEventViewerImage(arg0)
	local registerVal1 = Dvar.currentLiveEvent:get()
	if not registerVal1 then
	end
	local registerVal3 = Engine.TableLookup(nil, "gamedata/tables/common/live_event_streamers.csv", 0.000000, 0.000000, 2.000000)
	if not registerVal3 then
	end
	if 0.000000 or "" == "" then
		return "blacktransparent"
	end
	return ""
end

function GetExperimentPromoFeatureCardTitleByGroup(arg0)
	return "MPUI_EXP_PROMO_GENERIC"
end

function GetExperimentPromoFeatureCardImageByGroup(arg0)
	return "t7_blackmarket_promo_bundle"
end

function GetSkullTypeImage(arg0)
	if arg0 == 0.000000 then
		return "uie_t7_icon_inventory_dlc2_skull_symbol_chaos"
	else
		if arg0 == 1.000000 then
			return "uie_t7_icon_inventory_dlc2_skull_symbol_battle"
		else
			if arg0 == 2.000000 then
				return "uie_t7_icon_inventory_dlc2_skull_symbol_blood"
			else
				if arg0 == 3.000000 then
					return "uie_t7_icon_inventory_dlc2_skull_symbol_doom"
				end
			end
		end
	end
	return "blacktransparent"
end

function GetSkullStateImage(arg0)
	if arg0 == 0.000000 then
		return "blacktransparent"
	else
		if arg0 == 1.000000 then
			return "uie_t7_icon_inventory_dlc2_skull_bloody"
		else
			if arg0 == 2.000000 then
				return "uie_t7_icon_inventory_dlc2_skull_clean"
			else
				if arg0 == 3.000000 then
					return "uie_t7_icon_inventory_dlc2_skull_weapon"
				end
			end
		end
	end
	return "blacktransparent"
end

function GetSkullStateNewImage(arg0)
	local registerVal1 = GetSkullStateImage(arg0)
	local registerVal2 = GetSkullStateImage(-1.000000)
	if registerVal1 ~= registerVal2 then
		return (registerVal1 .. "_new")
	end
	return "blacktransparent"
end

function GetGameTypeDisplayString(arg0)
	local registerVal1 = Engine.StructTableLookupString(CoDShared.gametypesStructTable, "name", arg0, "name_ref_caps")
	if arg0 or registerVal1 == "" then
	end
	return arg0
end

function GetMusicTracksArtist(arg0)
	local registerVal1 = LUI.splitString(arg0, ";")
	if #arg0 == 2.000000 then
		return Engine.Localize("MENU_ARTISTS_X_AND_Y", registerVal1[1.000000], registerVal1[2.000000])
	else
		if #Engine.Localize == 1.000000 then
			return Engine.Localize("MENU_ARTIST_X", registerVal1[1.000000])
		end
	end
	return ""
end

function SetupMoviePlaybackParameters(arg0, arg1, arg2, arg3)
	return arg3, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

function GetPromoThermometerFill(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = CoD.GetThermometerProgress()
	return (1.000000 - registerVal5), CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

function GetPromoThermometerNextRewardFill(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = CoD.GetThermometerProgress()
	local registerVal8, registerVal9, registerVal10 = ipairs(CoD.BlackMarketUtility.PromoRewardCompletionValues)
	for index11,value12 in registerVal8, registerVal9, registerVal10 do
		if registerVal5 < value12.completeValue then
		else
		end
	end
	if value12.completeValue ~= value12.completeValue then
	end
	return (1.000000 - ((value12.completeValue - registerVal5) / (value12.completeValue - value12.completeValue))), CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

function GetPromoCircleFill(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = CoD.GetThermometerProgress()
	return registerVal5, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

function GetPromoCirclePercentText(arg0)
	local registerVal1 = CoD.GetThermometerProgress()
	string.format("%.2f", (registerVal1 * 100.000000))
	return Engine.Localize("MPUI_PERCENT", string.format)
end

