-- Decompiled with CoDLUIDecompiler by JariK

function IsCurrentLanguageTextEqualTo(arg0)
	local registerVal1 = Engine.GetLanguage()
	if arg0 ~= registerVal1 then
		if arg0 ~= "japanese" or registerVal1 ~= "fulljapanese" then
			if arg0 ~= "arabic" or registerVal1 ~= "englisharabic" then
				if arg0 == "chinese" then
					if registerVal1 ~= "simplifiedchinese" and registerVal1 ~= "traditionalchinese" then
					end
				end
			end
		end
	end
	return true
end

function GetKillsAndOrDestroyedStat(arg0, arg1, arg2)
	local registerVal4 = Engine.GetItemGroup(arg0, CoD.GetCombatRecordMode())
	if registerVal4 == "weapon_launcher" then
	end
	return (arg1 + arg2)
end

function GetSocialCachedValue(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.GetModel(registerVal3, arg0)
	registerVal3 = Engine.GetModelValue(registerVal2)
	return registerVal3
end

function GetAttachmentMenuSelectTitle(arg0, arg1, arg2)
	local registerVal4 = Engine.Localize(arg2)
	local registerVal5 = Engine.GetModel(CoD.perController[arg0].classModel, arg1)
	if CoD.perController[arg0].classModel and registerVal5 then
		local registerVal6 = Engine.GetModelValue(registerVal5)
	end
	return (registerVal6 .. " " .. registerVal4)
end

function GetRemoveItemString(arg0, arg1, arg2)
	local registerVal4 = Engine.GetModelForController(arg0)
	local registerVal5 = Engine.GetModel(registerVal4, "CACMenu.curWeaponVariantName")
	local registerVal6 = Engine.GetModel(registerVal4, "CACMenu.numItemsToRemove")
	local registerVal7 = Engine.MarkAsLocalize(Engine.GetModelValue(registerVal5))
	local registerVal8 = Engine.GetModelValue(registerVal6)
	if 1.000000 < registerVal8 then
	end
	return Engine.Localize(arg2, registerVal8, registerVal7)
end

function GetMedalInfo(arg0)
	if arg0 then
		local registerVal1 = Engine.TableLookupGetColumnValueForRow(CoD.scoreInfoTable, arg0, CoD.AARUtility.medalrefCol)
		return Engine.GetMedalInfo(registerVal1)
	end
end

function GetPresenceActivityString(arg0)
	local registerVal1 = tonumber(arg0.activity)
	if CoD.Presence.ActivityStrings[registerVal1] ~= nil then
		local registerVal3 = CoD.GetMapValueFromMapId(arg0.mapid, "mapName", "MENU_MAP")
		if registerVal1 == Enum.PresenceActivity.PRESENCE_ACTIVITY_CP_PLAYING_COOP_ON_MAP then
			return Engine.Localize(CoD.Presence.ActivityStrings[registerVal1], registerVal3)
		else
			if registerVal1 == Enum.PresenceActivity.PRESENCE_ACTIVITY_CP_PLAYING_SOLO_ON_MAP then
				return Engine.Localize(CoD.Presence.ActivityStrings[registerVal1], registerVal3)
			else
				if registerVal1 == Enum.PresenceActivity.PRESENCE_ACTIVITY_MP_PLAYING_GMODE_ON_MAP then
					local registerVal5 = CoD.SocialUtility.GetFreerunGametypeId()
					if arg0.gametype == registerVal5 then
						Engine.Localize(registerVal3)
						return Engine.Localize("PRESENCE_RUNNING_ON_MAPNAME", Engine.Localize)
					end
					local registerVal9 = tostring(arg0.gametype)
					local registerVal6 = Engine.StructTableLookupString(CoDShared.gametypesStructTable, "id", registerVal9, "name_ref_caps")
					if registerVal1 or not registerVal6 then
					end
					registerVal9 = Engine.Localize("")
					Engine.Localize(registerVal3)
					return Engine.Localize(CoD.Presence.ActivityStrings[registerVal1], registerVal9, Engine.Localize)
				else
					if registerVal1 == Enum.PresenceActivity.PRESENCE_ACTIVITY_ZM_PLAYING_MAP_ON_ROUND then
						if arg0.difficulty == nil or arg0.difficulty == 0.000000 then
						end
						local registerVal7 = Engine.Localize(registerVal3)
						return Engine.Localize(CoD.Presence.ActivityStrings[registerVal1], registerVal7, 1.000000)
					else
						return Engine.Localize(CoD.Presence.ActivityStrings[registerVal1])
					end
				end
			end
		end
	end
	return Engine.Localize("NULL_EMPTY")
end

function GetPresenceContextString(arg0)
	local registerVal1 = tonumber(arg0.context)
	if CoD.Presence.ContextStrings[registerVal1] ~= nil then
		local registerVal4 = CoD.GetMapValue("cp_doa_bo3", "unique_id", -1.000000)
		if arg0.mapid == registerVal4 then
			if registerVal1 == Enum.PresenceCtx.PRESENCE_CTX_CP_PRIVATE_GAME then
				return Engine.Localize("PRESENCE_ZM_PRIVATE_GAME")
			else
				if registerVal1 == Enum.PresenceCtx.PRESENCE_CTX_CP_PUBLIC_MATCH then
					return Engine.Localize("PRESENCE_ZM_MATCHMADE_GAME")
				else
					if registerVal1 == Enum.PresenceCtx.PRESENCE_CTX_CP_PRIVATE_GAME then
						if not arg0.difficulty then
						end
						Engine.Localize(CoD.DIFFICULTY[1.000000])
						return Engine.Localize(CoD.Presence.ContextStrings[registerVal1], Engine.Localize)
					else
						if registerVal1 == Enum.PresenceCtx.PRESENCE_CTX_CP_PUBLIC_MATCH then
							if not arg0.difficulty then
							end
							Engine.Localize(CoD.DIFFICULTY[1.000000])
							return Engine.Localize(CoD.Presence.ContextStrings[registerVal1], Engine.Localize)
						else
							if registerVal1 == Enum.PresenceCtx.PRESENCE_CTX_MP_PUBLIC_MATCH then
								if not arg0.playlist then
								end
								registerVal4 = Engine.GetPlaylistName(0.000000, 0.000000)
								local registerVal5 = Engine.GetPlaylistCategoryName(0.000000, 0.000000)
								if 0.000000 < 0.000000 and registerVal4 ~= "" and registerVal5 ~= "" then
									return Engine.Localize(CoD.Presence.ContextStrings[registerVal1], registerVal5, registerVal4)
								end
								return Engine.Localize("PRESENCE_PUBLIC_MATCH")
							else
								registerVal4 = CoD.SocialUtility.GetFreerunGametypeId()
								if registerVal1 == Enum.PresenceCtx.PRESENCE_CTX_MP_CUSTOM_GAMES and arg0.gametype == registerVal4 then
									local registerVal8 = tostring(arg0.gametype)
									registerVal5 = Engine.StructTableLookupString(CoDShared.gametypesStructTable, "id", registerVal8, "name_ref")
									if registerVal1 or not registerVal5 then
									end
									return Engine.Localize("")
								end
								return Engine.Localize(CoD.Presence.ContextStrings[registerVal1])
							end
						end
					end
				end
			end
		end
	end
	return Engine.Localize("NULL_EMPTY")
end

function GetPresencePartyActivityString(arg0, arg1)
	if arg0 ~= nil and arg1 ~= nil then
		if arg0 == Enum.PresenceActivity.PRESENCE_ACTIVITY_OFFLINE then
			return "MENU_OFFLINE"
		else
			if Enum.PresenceActivity.PRESENCE_ACTIVITY_MENU_INLOBBY <= arg0 and arg0 <= Enum.PresenceActivity.PRESENCE_ACTIVITY_MENU_LAST then
				return Engine.Localize("PRESENCE_MAIN_MENU_IN_PARTY", arg1)
			else
				if Enum.PresenceActivity.PRESENCE_ACTIVITY_CP_FIRST <= arg0 and arg0 <= Enum.PresenceActivity.PRESENCE_ACTIVITY_CP_LAST then
					return Engine.Localize("PRESENCE_CAMPAIGN_IN_PARTY", arg1)
				else
					if Enum.PresenceActivity.PRESENCE_ACTIVITY_MP_FIRST <= arg0 and arg0 <= Enum.PresenceActivity.PRESENCE_ACTIVITY_MP_LAST then
						return Engine.Localize("PRESENCE_MULTIPLAYER_IN_PARTY", arg1)
					else
						if Enum.PresenceActivity.PRESENCE_ACTIVITY_ZM_FIRST <= arg0 and arg0 <= Enum.PresenceActivity.PRESENCE_ACTIVITY_ZM_LAST then
							return Engine.Localize("PRESENCE_ZOMBIES_IN_PARTY", arg1)
						end
					end
				end
			end
		end
	end
	return Engine.Localize("NULL_EMPTY")
end

function GetPresencePrimaryGroupString(arg0)
	if arg0.primaryGroup ~= nil and arg0.primaryGroup ~= "" then
		local registerVal2 = Engine.Localize("MENU_PRIMARY_GROUP_COLON")
		return (registerVal2 .. " " .. arg0.primaryGroup)
	end
	return Engine.Localize("NULL_EMPTY")
end

function ShouldShowObjectiveForPlayer(arg0, arg1, arg2)
	local registerVal3 = Engine.DvarString(nil, "g_gametype")
	if registerVal3 ~= nil then
		if registerVal3 == "ctf" then
			local registerVal4 = Engine.GetObjectiveEntity(arg0, arg2.id)
			if registerVal4 == arg1 then
				return true
			else
				if registerVal3 == "dom" then
					registerVal4 = Engine.GetObjectiveTeam(arg0, arg2.id)
					local registerVal5 = Engine.GetTeamID(arg0, arg1)
					if registerVal4 == registerVal5 then
						return false
					end
					return true
				else
					if registerVal3 == "dem" then
						return true
					else
						if registerVal3 == "koth" then
							return true
						else
							if registerVal3 == "sd" then
								return true
							else
								if registerVal3 == "ball" then
									registerVal4 = Engine.GetObjectiveEntity(arg0, arg2.id)
									return true
									registerVal4 = Engine.GetObjectiveTeam(arg0, arg2.id)
									registerVal5 = Engine.GetTeamID(arg0, arg1)
									if registerVal4 == arg1 and registerVal3 == "escort" and registerVal4 == registerVal5 then
										return true
									end
								end
							end
						end
					end
				end
			end
		end
	end
	return false
end

function ShouldShowColorForObjective(arg0, arg1, arg2)
	local registerVal3 = Engine.DvarString(nil, "g_gametype")
	if registerVal3 ~= nil and registerVal3 == "ball" then
		return false
	end
	return true
end

function ValidateEmblemBackground(arg0, arg1)
	local registerVal2 = IsCommunityContractCallingCardById(arg1)
	registerVal2 = Engine.IsEmblemBackgroundLocked(arg0, arg1)
	if not registerVal2 and registerVal2 then
		local registerVal3 = IsLive()
		if not registerVal3 then
			registerVal3 = CoD.StoreUtility.IsCWLBackgroundAvailableOffline(arg0, arg1)
			if registerVal3 then
				return arg1
			end
			SetEmblemBackground_Internal(arg0, 0.000000)
			Engine.CommitProfileChanges(arg0)
		else
			SetEmblemBackground_Internal(arg0, 0.000000)
			UploadPublicProfile(nil, arg0)
		end
		return 0.000000
	end
	return arg1
end

