-- Decompiled with CoDLUIDecompiler by JariK

CoD.LobbyUtility = {}
function CoD.LobbyUtility.LobbyMemberSort(arg0, arg1)
	if arg0.team < arg1.team then
		return true
	else
		if arg0.team == arg1.team and arg0.lobbyID < arg1.lobbyID then
			return true
		end
	end
	return false
end

function CoD.LobbyUtility.GetClientList()
	local registerVal0 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal2 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal2 then
	end
	registerVal2 = Engine.LobbyGetSessionClients(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal3 = Engine.LobbyGetSessionClients(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	if registerVal0 then
		local registerVal4, registerVal5, registerVal6 = ipairs(registerVal2.sessionClients)
		for index7,value8 in registerVal4, registerVal5, registerVal6 do
			registerVal2.sessionClients[index7].isMember = 0.000000
			registerVal2.sessionClients[index7].isMemberLeader = 0.000000
			registerVal2.sessionClients[index7].isOtherMember = 0.000000
			registerVal2.sessionClients[index7].isMemberTopOrMiddle = 0.000000
			registerVal2.sessionClients[index7].isOtherMemberTopOrMiddle = 0.000000
			local registerVal10, registerVal11, registerVal12 = ipairs(registerVal3.sessionClients)
			for index13,value14 in registerVal10, registerVal11, registerVal12 do
				if value8.xuid == value14.xuid then
					registerVal2.sessionClients[index7].isMember = 1.000000
					registerVal2.sessionClients[index7].isMemberLeader = value14.isLeader
				else
				end
			end
			if true == false then
				registerVal11, registerVal12, registerVal13 = ipairs(registerVal2.sessionClients)
				for index14,value15 in registerVal11, registerVal12, registerVal13 do
					if value8.simpleLobbyID == registerVal2.sessionClients[index14].simpleLobbyID then
					end
				end
				if 1.000000 < (0.000000 + 1.000000) then
					registerVal2.sessionClients[index7].isOtherMember = 1.000000
				end
			end
			registerVal2.sessionClients[index7].dlcBits = value8.dlcBits
		end
		table.sort(registerVal2.sessionClients, CoD.LobbyUtility.LobbyMemberSort)
		registerVal6, registerVal7, registerVal8 = ipairs(registerVal2.sessionClients)
		if nil ~= nil and nil == registerVal2.sessionClients[index7].simpleLobbyID then
			if registerVal2.sessionClients[index7].isMember ~= 1.000000 then
				if registerVal2.sessionClients[index7].isMemberLeader and registerVal2.sessionClients[index7].isMemberLeader ~= 0.000000 then
					nil.isMemberTopOrMiddle = 1.000000
				end
			else
				if registerVal2.sessionClients[index7].isOtherMember == 1.000000 then
					nil.isOtherMemberTopOrMiddle = 1.000000
				end
			end
		end
		return registerVal2.sessionClients
	else
		registerVal5, registerVal6, registerVal7 = ipairs(registerVal3.sessionClients)
		for index8,value9 in registerVal5, registerVal6, registerVal7 do
			registerVal3.sessionClients[index8].isMember = 1.000000
			registerVal3.sessionClients[index8].isMemberLeader = value9.isLeader
			registerVal3.sessionClients[index8].isOtherMember = 0.000000
			registerVal3.sessionClients[index8].isMemberTopOrMiddle = 1.000000
			registerVal3.sessionClients[index8].dlcBits = value9.dlcBits
		end
		if registerVal3.sessionClients[index8] ~= nil then
			registerVal3.sessionClients[index8].isMemberTopOrMiddle = 0.000000
		end
		return registerVal3.sessionClients
	end
end

function CoD.LobbyUtility.GetMaxClientCount()
	local registerVal0 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal0 then
		return Engine.GetLobbyMaxClients(Enum.LobbyModule.LOBBY_MODULE_CLIENT, Enum.LobbyType.LOBBY_TYPE_GAME)
	else
		return Engine.GetLobbyMaxClients(Enum.LobbyModule.LOBBY_MODULE_CLIENT, Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	end
end

function CoD.LobbyUtility.IsSomePlayersDoNotHaveMapTextShowing()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = CoD.SafeGetModelValue(registerVal1, "lobbyRoot.lobbyStatusString3")
	if registerVal0 ~= "MENU_NOT_ALL_PLAYERS_HAVE_MAP" then
	end
	return true
end

function CoD.LobbyUtility.GetHostDLCBits(arg0)
	local registerVal1, registerVal2, registerVal3 = ipairs(arg0)
	for index4,value5 in registerVal1, registerVal2, registerVal3 do
		if value5.isHost then
			return value5.dlcBits
		end
	end
end

function CoD.LobbyUtility.ShouldShowDLCWarningsBasedOnHost()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = CoD.SafeGetModelValue(registerVal1, "lobbyRoot.lobbyNav")
	if registerVal0 ~= LobbyData.UITargets.UI_MPLOBBYONLINE.id and registerVal0 ~= LobbyData.UITargets.UI_MPLOBBYONLINEARENA.id and registerVal0 ~= LobbyData.UITargets.UI_ZMLOBBYONLINE.id then
	end
	return true
end

function CoD.LobbyUtility.RequiredDLCMaskForPlaylist()
	local registerVal0 = Engine.GetPlaylistID()
	return CoD.GetRequiredDLCBitsFromPlaylist(registerVal0)
end

function CoD.LobbyUtility.BitsToComplainAbout(arg0)
	local registerVal2 = IsPublicLobby()
	registerVal2 = CoD.LobbyUtility.RequiredDLCMaskForPlaylist()
	if registerVal2 and registerVal2 then
	end
	return (arg0 & registerVal2)
end

function CoD.LobbyUtility.UpdateMapInstallStatusLine(arg0)
	local registerVal1 = CoD.LobbyUtility.GetClientList()
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = CoD.SafeGetModelValue(registerVal3, "MapVote.mapVoteMapNext")
	local registerVal4 = MapVoteInState("2")
	registerVal4 = IsInTheaterMode()
	registerVal4 = IsFilmSelected()
	if registerVal4 and not registerVal4 then
	else
		if registerVal1 or not registerVal1 then
		else
			registerVal4 = Engine.GetDLCBitForMapName(registerVal2)
			local registerVal5 = LuaUtils.Mods_IsUsingMods()
			registerVal5 = Engine.GetLobbySessionGameData(Enum.LobbyModule.LOBBY_MODULE_CLIENT)
			local registerVal6 = Engine.GetDLCBitForMapName(registerVal5.ugcInfo.ugcName)
			if registerVal4 < 0.000000 and registerVal5 and registerVal5 and registerVal5.ugcInfo and registerVal5.ugcInfo.ugcType == LuaEnums.USERMAP_BASE_PATH and registerVal6 < 0.000000 then
			end
			registerVal5 = CoD.LobbyUtility.BitsToComplainAbout(registerVal6)
			registerVal6, registerVal7, registerVal8 = ipairs(registerVal1)
			for index9,value10 in registerVal6, registerVal7, registerVal8 do
				local registerVal11 = CoD.BitUtility.IsBitwiseAndNonZero(value10.dlcBits, registerVal5)
				if value10.dlcBits and not registerVal11 then
				else
				end
			end
		end
	end
	registerVal5 = Engine.GetGlobalModel()
	registerVal4 = Engine.CreateModel(registerVal5, "lobbyRoot.lobbyStatusString3")
	registerVal6 = Engine.GetGlobalModel()
	registerVal5 = CoD.SafeGetModelValue(registerVal6, "lobbyRoot.lobbyNav")
	registerVal7 = CoD.LobbyUtility.ShouldShowDLCWarningsBasedOnHost()
	if registerVal7 then
		registerVal7 = CoD.LobbyUtility.GetHostDLCBits(registerVal1)
		registerVal8 = CoD.LobbyUtility.BitsToComplainAbout(registerVal7)
		local registerVal9, registerVal10, registerVal11 = ipairs(registerVal1)
		for index12,value13 in registerVal9, registerVal10, registerVal11 do
			if value13.dlcBits and registerVal8 ~= (registerVal8 & value13.dlcBits) then
				local registerVal14 = IsDvarValueEqualTo("ui_freeDLC1", "1")
				if registerVal1 or registerVal8 ~= (registerVal8 & (value13.dlcBits | Enum.ContentFlagBits.CONTENT_DLC1)) then
				else
				else
				end
			end
		end
		if false then
		else
			if registerVal5 == LobbyData.UITargets.UI_MPLOBBYONLINE.id then
			else
			else
				if false then
				else
				end
			end
		end
	end
	registerVal7 = Engine.GetModelValue(registerVal4)
	if registerVal7 ~= "MENU_NOT_ALL_PLAYERS_HAVE_MAP" then
		Engine.SetModelValue(registerVal4, "MENU_NOT_ALL_PLAYERS_HAVE_MAP")
		registerVal9 = Engine.GetGlobalModel()
		Engine.ForceNotifyModelSubscriptions(Engine.CreateModel(registerVal9, "lobbyRoot.lobbyButtonUpdate"))
	end
	if not false and not arg0._updateDLCBitTimer then
		local function __FUNC_1F24_()
			CoD.LobbyUtility.UpdateMapInstallStatusLine(arg0)
		end

		registerVal7 = LUI.UITimer.newElementTimer(1000.000000, false, __FUNC_1F24_)
		arg0._updateDLCBitTimer = registerVal7
		arg0:addElement(arg0._updateDLCBitTimer)
		local function __FUNC_1FBB_(arg0)
			if arg0._updateDLCBitTimer then
				arg0._updateDLCBitTimer:close()
				arg0._updateDLCBitTimer = nil
			end
		end

		LUI.OverrideFunction_CallOriginalSecond(arg0, "close", __FUNC_1FBB_)
	else
		if false and arg0._updateDLCBitTimer then
			arg0._updateDLCBitTimer:close()
			arg0._updateDLCBitTimer = nil
		end
	end
end

local registerVal1 = {}
registerVal1 = {"ZM_ZOD", "ZM_FACTORY", "ZM_CASTLE", "ZM_ISLAND", "ZM_STALINGRAD", "ZM_GENESIS"}
CoD.LobbyUtility.EEMapsList = registerVal1
function CoD.LobbyUtility.IsMapEEMap(arg0)
	local registerVal1 = Engine.ToUpper(arg0)
	local registerVal2 = LuaUtils.FindItemInArray(CoD.LobbyUtility.EEMapsList, registerVal1)
	if registerVal2 == nil then
	end
	return true
end

function CoD.LobbyUtility.GetAnyEECompletedForController(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.GetModel(registerVal3, "eeGateworm")
	if not registerVal2 then
		return false
	end
	for index3=1.000000, #CoD.LobbyUtility.EEMapsList, 1.000000 do
		local registerVal7 = Engine.GetModel(registerVal2, CoD.LobbyUtility.EEMapsList[index3])
		if not registerVal7 then
			return false
		end
		local registerVal8 = CoD.SafeGetModelValue(registerVal7, arg0)
		if registerVal8 == true then
			return true
		end
	end
	return false
end

function CoD.LobbyUtility.GetEECompletedForControllerRef(arg0, arg1)
	local registerVal2 = Engine.ToUpper(arg1)
	local registerVal3 = LuaUtils.FindItemInArray(CoD.LobbyUtility.EEMapsList, registerVal2)
	if registerVal3 == nil then
		return false
	end
	if arg1 == "ZM_GENESIS" then
		return true
	else
		registerVal3 = CoD.LobbyUtility.GetAnyEECompletedForController(arg0, arg1)
		if not registerVal3 then
			return false
		end
	end
	local registerVal4 = Engine.GetGlobalModel()
	registerVal3 = CoD.SafeGetModelValue(registerVal4, ("eeGateworm." .. registerVal2 .. "." .. arg0))
	if registerVal3 ~= true then
	end
	return true
end

function CoD.LobbyUtility.UpdateEEGatewormCards(arg0)
	local registerVal1 = CoD.LobbyUtility.GetClientList()
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "eeGateworm")
	registerVal3 = Engine.CreateModel(registerVal2, "allComplete")
	arg0.cardModels = {}
	for index5=0.000000, (#CoD.LobbyUtility.EEMapsList - 2.000000), 1.000000 do
		local registerVal9 = Engine.CreateModel(registerVal2, CoD.LobbyUtility.EEMapsList[(index5 + 1.000000)])
		local registerVal10 = Engine.CreateModel(registerVal9, "cumulative")
		local registerVal12 = Dvar.tu9_ui_zmLobbyEEEnabled:get()
		registerVal12, registerVal13, registerVal14 = ipairs(registerVal1)
		for index15,value16 in registerVal12, registerVal13, registerVal14 do
			if value16.isLocal == 1.000000 then
				local registerVal17 = Engine.CreateModel(registerVal9, value16.localController)
				Engine.SetModelValue(registerVal17, value16[("dlc" .. index5 .. "EEComplete")])
			end
			if value16[("dlc" .. index5 .. "EEComplete")] == true then
			end
		end
		if true then
		end
		Engine.SetModelValue(registerVal10, true)
	end
	Engine.SetModelValue(registerVal3, true)
end

function CoD.LobbyUtility.UpdateLobbyList(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.CreateModel(registerVal2, "lobbyRoot")
	registerVal2 = Engine.CreateModel(registerVal1, "lobbyList")
	local registerVal3 = Engine.CreateModel(registerVal2, "playerCount")
	local registerVal4 = Engine.CreateModel(registerVal2, "maxPlayers")
	local registerVal5 = CoD.LobbyUtility.GetMaxClientCount()
	local registerVal6 = CoD.LobbyUtility.GetClientList()
	Engine.SetModelValue(registerVal3, #)
	Engine.SetModelValue(registerVal4, registerVal5)
	local registerVal8 = Engine.GetGlobalModel()
	local registerVal7 = Engine.CreateModel(registerVal8, "lobbyRoot.clientList")
	registerVal8 = IsGameLobby()
	if registerVal8 then
		registerVal8 = IsLobbyMode(Enum.LobbyMode.LOBBY_MODE_PUBLIC)
		registerVal8 = IsLobbyMode(Enum.LobbyMode.LOBBY_MODE_ARENA)
		if not registerVal1 or registerVal8 then
			registerVal8 = Engine.IsZombiesGame()
			registerVal8 = MapVoteInState(LuaEnums.MAP_VOTE_STATE.RESULT)
			if not registerVal8 and not registerVal8 then
				local registerVal9 = Engine.CreateModel(registerVal7, "count")
				Engine.SetModelValue(registerVal9, registerVal5)
			else
			else
			else
				registerVal9 = Engine.CreateModel(registerVal7, "count")
				Engine.SetModelValue(registerVal9, #registerVal7)
			end
		end
	end
	registerVal8, registerVal9, registerVal10 = ipairs(registerVal6)
	for index11,value12 in registerVal8, registerVal9, registerVal10 do
		if value12.rankIcon == nil then
			value12.rankIcon = "blacktransparent"
		end
		value12.displayRank = ""
		if value12.rank then
			local registerVal16 = Engine.GetPrestigeCap()
			if value12.paragonRank and value12.prestige == registerVal16 then
				local registerVal15 = Engine.GetParagonRankDisplayLevel(value12.paragonRank)
				value12.displayRank = registerVal15
			else
				registerVal15 = Engine.GetRankDisplayLevel(value12.rank)
				value12.displayRank = registerVal15
			end
			if value12.prestige then
				registerVal15 = CoD.GetRankName(value12.rank, value12.prestige)
			else
				registerVal15 = CoD.GetRankName(value12.rank, 0.000000)
			end
		end
		if not value12.team then
		end
		if value12.isMemberLeader and value12.isMemberLeader ~= 0.000000 and 1.000000 >= #value12.isMemberLeader or not 1.000000 then
		end
		if value12.isMember and value12.isMember ~= 0.000000 and 1.000000 >= #value12.isMember or not 1.000000 then
		end
		if value12.isOtherMember and value12.isOtherMember ~= 1.000000 or not 1.000000 then
		end
		local registerVal20 = Engine.GetLobbyNetworkMode()
		if registerVal20 ~= Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE then
			value12.isMember = 0.000000
			value12.isMemberTopOrMiddle = 0.000000
			value12.isOtherMember = 0.000000
			value12.isOtherMemberTopOrMiddle = 0.000000
		end
		registerVal20 = Dvar.ui_lobbyDebugVis:get()
		if 0.000000 < registerVal20 then
			if 10.000000 < value12.skillRating then
			else
				if 10.000000 < -10.000000 then
				end
			end
			local registerVal21 = math.floor((-10.000000 * 100.000000))
			value12.gamertag = ("s" .. registerVal21 .. " " .. value12.gamertag)
		end
		registerVal21 = string.len(value12.clantag)
		if 0.000000 < registerVal21 then
		end
		registerVal21 = IsArenaMode()
		if registerVal21 then
			if 0.000000 == nil or 0.000000 == 0.000000 then
				registerVal21 = IsGlobalModelValueTrue(nil, nil, "lobbyRoot.lobbyLockedIn")
				registerVal21 = MapVoteInState("3")
				if not registerVal21 and not registerVal21 then
					Engine.RestrictVoiceChatForClient(Enum.LobbyType.LOBBY_TYPE_GAME, value12.xuid)
				end
			end
		end
		registerVal21 = {}
		registerVal21.xuid = value12.xuid
		registerVal21.gamertag = value12.gamertag
		registerVal21.clanTagAndGamertag = (("[" .. value12.clantag .. "]") .. value12.gamertag)
		registerVal21.clantag = value12.clantag
		registerVal21.lobbyID = value12.lobbyID
		registerVal21.rankShown = 0.000000
		registerVal21.rank = value12.displayRank
		registerVal21.rankIcon = value12.rankIcon
		registerVal21.rankString = registerVal15
		registerVal21.arenaPoints = value12.arenaPoints
		registerVal21.arenaSkill = value12.arenaSkill
		registerVal21.arenaVariance = value12.arenaVariance
		registerVal21.score = value12.score
		registerVal21.backgroundId = value12.backgroundId
		registerVal21.isHost = value12.isHost
		registerVal21.isLeader = value12.isLeader
		registerVal21.isLocal = value12.isLocal
		registerVal21.controllerNum = value12.localController
		registerVal21.isStarterPack = value12.isStarterPack
		registerVal21.isJoinable = 0.000000
		registerVal21.isMemberLeader = 0.000000
		registerVal21.isMember = 0.000000
		registerVal21.isReady = value12.readyUp
		registerVal21.team = 0.000000
		local registerVal22 = CoD.GetTeamFactionColor(0.000000)
		registerVal21.teamColor = registerVal22
		registerVal21.teamAlpha = 0.250000
		registerVal21.teamSwitch = 0.000000
		registerVal21.voipStatus = value12.VOIPStatus
		registerVal21.activity = Enum.PresenceActivity.PRESENCE_ACTIVITY_MENU_INLOBBY
		registerVal21.bgb1.itemIndex = value12.bgb1ItemIndex
		registerVal21.bgb2.itemIndex = value12.bgb2ItemIndex
		registerVal21.bgb3.itemIndex = value12.bgb3ItemIndex
		registerVal21.bgb4.itemIndex = value12.bgb4ItemIndex
		registerVal21.bgb5.itemIndex = value12.bgb5ItemIndex
		registerVal21.bgb1.remaining = value12.bgb1Remaining
		registerVal21.bgb2.remaining = value12.bgb2Remaining
		registerVal21.bgb3.remaining = value12.bgb3Remaining
		registerVal21.bgb4.remaining = value12.bgb4Remaining
		registerVal21.bgb5.remaining = value12.bgb5Remaining
		if value12.isMember ~= 1.000000 then
		end
		registerVal21.isPartyMember = true
		if value12.isMemberTopOrMiddle ~= 1.000000 then
		end
		registerVal21.isPartyMemberTopOrMiddle = true
		if value12.isOtherMember ~= 1.000000 then
		end
		registerVal21.isOtherMember = true
		if value12.isOtherMemberTopOrMiddle ~= 1.000000 then
		end
		registerVal21.isOtherMemberTopOrMiddle = true
		registerVal21.dlcBits = value12.dlcBits
		registerVal21.validClient = true
		registerVal22 = Engine.CreateModel(registerVal7, tostring(index11))
		local registerVal23, registerVal24, registerVal25 = pairs(registerVal21)
		for index26,value27 in registerVal23, registerVal24, registerVal25 do
			local registerVal29 = Engine.CreateModel(registerVal22, index26)
			Engine.SetModelValue(registerVal29, value27)
		end
	end
	for index9=(#registerVal9 + 1.000000), registerVal5, 1.000000 do
		local registerVal14 = Engine.GetGlobalModel()
		local registerVal13 = Engine.CreateModel(registerVal14, "lobbyRoot.clientList")
		registerVal14 = {}
		registerVal15 = Engine.DefaultID64Value()
		registerVal14.xuid = registerVal15
		registerVal14.gamertag = ""
		registerVal14.clanTagAndGamertag = ""
		registerVal14.clantag = ""
		registerVal14.lobbyID = 0.000000
		registerVal14.rankShown = 0.000000
		registerVal14.rank = ""
		registerVal14.rankIcon = ""
		registerVal14.rankString = ""
		registerVal14.arenaPoints = 0.000000
		registerVal14.arenaSkill = 0.000000
		registerVal14.arenaVariance = 0.000000
		registerVal14.score = 0.000000
		registerVal14.backgroundId = 0.000000
		registerVal14.isHost = 0.000000
		registerVal14.isLeader = 0.000000
		registerVal14.isLocal = 0.000000
		registerVal14.controllerNum = 0.000000
		registerVal14.isStarterPack = 0.000000
		registerVal14.isJoinable = 0.000000
		registerVal14.isMemberLeader = 0.000000
		registerVal14.isMember = 0.000000
		registerVal14.team = 0.000000
		registerVal15 = CoD.GetTeamFactionColor(0.000000)
		registerVal14.teamColor = registerVal15
		registerVal14.teamAlpha = 0.250000
		registerVal14.teamSwitch = 0.000000
		registerVal14.voipStatus = 0.000000
		registerVal14.activity = 0.000000
		registerVal14.bgb1ItemIndex = 0.000000
		registerVal14.bgb2ItemIndex = 0.000000
		registerVal14.bgb3ItemIndex = 0.000000
		registerVal14.bgb4ItemIndex = 0.000000
		registerVal14.bgb5ItemIndex = 0.000000
		registerVal14.bgb1Remaining = 0.000000
		registerVal14.bgb2Remaining = 0.000000
		registerVal14.bgb3Remaining = 0.000000
		registerVal14.bgb4Remaining = 0.000000
		registerVal14.bgb5Remaining = 0.000000
		registerVal14.isPartyMember = false
		registerVal14.isPartyMemberTopOrMiddle = false
		registerVal14.isOtherMember = false
		registerVal14.isOtherMemberTopOrMiddle = false
		registerVal14.validClient = false
		registerVal15 = Engine.CreateModel(registerVal13, tostring(index9))
		registerVal16, registerVal17, registerVal18 = pairs(registerVal14)
		for index19,value20 in registerVal16, registerVal17, registerVal18 do
			registerVal22 = Engine.CreateModel(registerVal15, index19)
			Engine.SetModelValue(registerVal22, value20)
		end
	end
	CoD.LobbyUtility.UpdateMapInstallStatusLine(arg0)
	CoD.LobbyUtility.UpdateEEGatewormCards(arg0)
end

