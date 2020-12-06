-- Decompiled with CoDLUIDecompiler by JariK

CoD.SocialUtility = {}
function CoD.SocialUtility.GetRankIcons(arg0, arg1, arg2, arg3)
	if not arg1 then
		return ("t7_icon_rank_" .. arg0 .. "_ghost_level_01")
	else
		if arg0 == "mp" then
			return Engine.TableLookup(0.000000, CoD.rankIconTable_mp, 0.000000, arg2, (arg3 + 1.000000))
		else
			if arg0 == "zm" then
				return Engine.TableLookup(0.000000, CoD.rankIconTable_zm, 0.000000, arg2, (arg3 + 1.000000))
			else
				if arg0 == "cp" then
					return Engine.TableLookup(0.000000, CoD.rankIconTable_cp, 0.000000, arg2, (arg3 + 1.000000))
				else
					return Engine.TableLookup(0.000000, CoD.rankIconTable_mp, 0.000000, arg2, (arg3 + 1.000000))
				end
			end
		end
	end
end

CoD.SocialUtility.freerunGametypeId = nil
function CoD.SocialUtility.GetFreerunGametypeId()
	if CoD.SocialUtility.freerunGametypeId == nil then
		local registerVal1 = Engine.StructTableLookupNumber(CoDShared.gametypesStructTable, "groupname", "freerun", "id")
		CoD.SocialUtility.freerunGametypeId = registerVal1
	end
	return CoD.SocialUtility.freerunGametypeId
end

function CoD.SocialUtility.GetEmptyPlayerInfo()
	local registerVal0 = {}
	registerVal0.xuid = 0.000000
	registerVal0.gamertag = ""
	registerVal0.clantag = ""
	registerVal0.emblemBacking = 0.000000
	registerVal0.fullname = ""
	registerVal0.activity = 0.000000
	registerVal0.context = 0.000000
	registerVal0.difficulty = 0.000000
	registerVal0.playlist = 1.000000
	registerVal0.joinable = 0.000000
	registerVal0.gametype = 0.000000
	registerVal0.mapid = 0.000000
	registerVal0.friend = 0.000000
	registerVal0.primaryPresence = Enum.PresencePrimary.PRESENCE_PRIMARY_OFFLINE
	registerVal0.titlePresence = ""
	registerVal0.platformPresence = ""
	registerVal0.cpPlayed = false
	registerVal0.cpRank = 0.000000
	registerVal0.cpRankIcon = ""
	registerVal0.cpPrestige = 0.000000
	registerVal0.mpPlayed = false
	registerVal0.mpRank = 0.000000
	registerVal0.mpRankIcon = ""
	registerVal0.mpPrestige = 0.000000
	registerVal0.zmPlayed = false
	registerVal0.zmRank = 0.000000
	registerVal0.zmRankIcon = ""
	registerVal0.zmPrestige = 0.000000
	registerVal0.mpParagonRank = 0.000000
	registerVal0.mpParagonIconId = 0.000000
	registerVal0.zmParagonRank = 0.000000
	registerVal0.zmParagonIconId = 0.000000
	registerVal0.partySize = 1.000000
	registerVal0.partyMax = 9.000000
	registerVal0.primaryGroup = ""
	return registerVal0
end

function CoD.SocialUtility.SetDefaultPlayerProperties(arg0)
	local registerVal1 = {}
	registerVal1.xuid = 0.000000
	registerVal1.showyourfriend = false
	registerVal1.showlastmet = false
	registerVal1.gametype = 0.000000
	registerVal1.mapid = 0.000000
	registerVal1.difficulty = 0.000000
	registerVal1.playlist = 1.000000
	local registerVal2 = {}
	registerVal2.members = {}
	registerVal2.total = 1.000000
	registerVal2.available = 1.000000
	registerVal2.leader = ""
	registerVal1.party = registerVal2
	registerVal1.isFriendItem = false
	registerVal1.isGroupsItem = false
	arg0.properties = registerVal1
end

function CoD.SocialUtility.UpdateModelsHelper(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
	if arg6 == nil then
		return 
	end
	if arg5.filter == nil or not arg5.filter then
	end
	local registerVal10 = arg6(arg0, arg2, arg3, Enum.PresenceFilter.PRESENCE_FILTER_ALL)
	for index10=1.000000, #arg0, 1.000000 do
		registerVal10[index10].clantag = ""
		local registerVal16 = string.format("%s%s", registerVal10[index10].clantag, registerVal10[index10].gamertag)
		registerVal10[index10].fullname = registerVal16
		if arg1.showlastmet == 0.000000 then
			registerVal10[index10].titlePresence = ""
		end
		registerVal16 = LuaUtils.IsBetaBuild()
		if registerVal16 then
			registerVal10[index10].cpPlayed = false
			registerVal10[index10].cpRank = 0.000000
			registerVal10[index10].cpPrestige = 0.000000
			registerVal10[index10].zmPlayed = false
			registerVal10[index10].zmRank = 0.000000
			registerVal10[index10].zmPrestige = 0.000000
		end
		registerVal16 = CoD.SocialUtility.GetRankIcons("cp", registerVal10[index10].cpPlayed, registerVal10[index10].cpRank, registerVal10[index10].cpPrestige)
		registerVal10[index10].cpRankIcon = registerVal16
		registerVal16 = CoD.SocialUtility.GetRankIcons("mp", registerVal10[index10].mpPlayed, registerVal10[index10].mpRank, registerVal10[index10].mpPrestige)
		registerVal10[index10].mpRankIcon = registerVal16
		registerVal16 = CoD.SocialUtility.GetRankIcons("zm", registerVal10[index10].zmPlayed, registerVal10[index10].zmRank, registerVal10[index10].zmPrestige)
		registerVal10[index10].zmRankIcon = registerVal16
		local registerVal17 = Engine.GetPrestigeCap(Enum.eModes.MODE_MULTIPLAYER)
		if registerVal10[index10].mpPrestige == registerVal17 then
			registerVal16 = Engine.GetParagonRankDisplayLevel(registerVal10[index10].mpParagonRank, Enum.eModes.MODE_MULTIPLAYER)
			registerVal10[index10].mpRank = registerVal16
			if registerVal10[index10].mpParagonIconId ~= CoD.PrestigeUtility.INVALID_PARAGON_ICON_ID then
				registerVal16 = Engine.GetParagonIconById(registerVal10[index10].mpParagonIconId, Enum.eModes.MODE_MULTIPLAYER)
				registerVal10[index10].mpRankIcon = registerVal16
			else
				registerVal16 = Engine.GetRankDisplayLevel(registerVal10[index10].mpRank, Enum.eModes.MODE_MULTIPLAYER)
				registerVal10[index10].mpRank = registerVal16
			end
		end
		registerVal17 = Engine.GetPrestigeCap(Enum.eModes.MODE_ZOMBIES)
		if registerVal10[index10].zmPrestige == registerVal17 then
			registerVal16 = Engine.GetParagonRankDisplayLevel(registerVal10[index10].zmParagonRank, Enum.eModes.MODE_ZOMBIES)
			registerVal10[index10].zmRank = registerVal16
			if registerVal10[index10].zmParagonIconId ~= CoD.PrestigeUtility.INVALID_PARAGON_ICON_ID then
				registerVal16 = Engine.GetParagonIconById(registerVal10[index10].zmParagonIconId, Enum.eModes.MODE_ZOMBIES)
				registerVal10[index10].zmRankIcon = registerVal16
			else
				registerVal16 = Engine.GetRankDisplayLevel(registerVal10[index10].zmRank, Enum.eModes.MODE_ZOMBIES)
				registerVal10[index10].zmRank = registerVal16
			end
		end
		registerVal16, registerVal17, registerVal18 = pairs(registerVal10[index10])
		for index19,value20 in registerVal16, registerVal17, registerVal18 do
			local registerVal21 = Engine.GetModel(arg1.players[((((arg2 + index10) - 1.000000) % arg4) + 1.000000)].model, index19)
			if registerVal21 ~= nil then
				Engine.SetModelValue(registerVal21, value20)
			end
			if arg1.players[((((arg2 + index10) - 1.000000) % arg4) + 1.000000)].properties[index19] ~= nil then
				arg1.players[((((arg2 + index10) - 1.000000) % arg4) + 1.000000)].properties[index19] = value20
			end
		end
		arg1.players[((((arg2 + index10) - 1.000000) % arg4) + 1.000000)].properties.showlastmet = arg1.showlastmet
		arg1.players[((((arg2 + index10) - 1.000000) % arg4) + 1.000000)].properties.showyourfriend = arg1.showyourfriend
		if arg5.isFriendItem ~= nil then
			arg1.players[((((arg2 + index10) - 1.000000) % arg4) + 1.000000)].properties.isFriendItem = arg5.isFriendItem
		else
			arg1.players[((((arg2 + index10) - 1.000000) % arg4) + 1.000000)].properties.isFriendItem = registerVal10[index10].friend
		end
		if arg5.isGroupsItem ~= nil then
			arg1.players[((((arg2 + index10) - 1.000000) % arg4) + 1.000000)].properties.isGroupsItem = arg5.isGroupsItem
		else
			if registerVal10[index10].groupMember == nil or not registerVal10[index10].groupMember then
			end
			arg1.players[((((arg2 + index10) - 1.000000) % arg4) + 1.000000)].properties.isGroupsItem = false
		end
		registerVal16 = arg7(arg0, ((arg2 + index10) - 1.000000))
		if arg7 ~= nil and registerVal16 ~= nil then
			arg1.players[((((arg2 + index10) - 1.000000) % arg4) + 1.000000)].properties.party = {}
			if registerVal16.total == nil then
				registerVal16.total = registerVal16.totalCount
				registerVal16.available = registerVal16.availableCount
			end
			arg1.players[((((arg2 + index10) - 1.000000) % arg4) + 1.000000)].properties.party.total = registerVal16.total
			arg1.players[((((arg2 + index10) - 1.000000) % arg4) + 1.000000)].properties.party.available = registerVal16.available
			arg1.players[((((arg2 + index10) - 1.000000) % arg4) + 1.000000)].properties.party.leader = registerVal16.leader
			if #registerVal16.members then
				arg1.players[((((arg2 + index10) - 1.000000) % arg4) + 1.000000)].properties.party.members = {}
				for index18=1.000000, #registerVal16.members, 1.000000 do
					arg1.players[((((arg2 + index10) - 1.000000) % arg4) + 1.000000)].properties.party.members[index18] = {}
					arg1.players[((((arg2 + index10) - 1.000000) % arg4) + 1.000000)].properties.party.members[index18].gamertag = registerVal16.members[index18].gamertag
					arg1.players[((((arg2 + index10) - 1.000000) % arg4) + 1.000000)].properties.party.members[index18].leader = registerVal16.members[index18].leader
				end
			end
		end
	end
	return #1.000000
end

