-- Decompiled with CoDLUIDecompiler by JariK

function GetMemberStatusFromElement(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "memberStatus")
	local registerVal3 = Engine.GetModelValue(registerVal2)
	return registerVal3
end

function GetMemberStatusFromModel(arg0)
	local registerVal1 = Engine.GetModel(arg0, "memberStatus")
	local registerVal2 = Engine.GetModelValue(registerVal1)
	return registerVal2
end

function GetUpgradableItemRef(arg0, arg1, arg2)
	local registerVal4 = arg1:getModel()
	local registerVal3 = Engine.GetModel(registerVal4, "itemIndex")
	registerVal4 = Engine.GetModelValue(registerVal3)
	if registerVal3 and registerVal4 ~= 0.000000 then
		local registerVal6 = arg1:getModel()
		registerVal4 = Engine.GetModelValue(Engine.GetModel(registerVal6, "ref"))
		local registerVal7 = arg1:getModel()
		local registerVal5 = Engine.GetModelValue(Engine.GetModel(registerVal7, "weaponSlot"))
		registerVal6 = LUI.startswith(registerVal5, "cybercom_tacrig")
		registerVal6 = LUI.startswith(registerVal5, "cybercom_ability")
		if not arg1 or registerVal6 then
			return registerVal4
		end
	end
end

function IsSeasonPassIncentiveExploitPossible(arg0)
	local registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	local registerVal2 = AreCodPointsEnabled(arg0)
	if registerVal2 and registerVal1 then
		registerVal2 = Dvar.enable_season_pass_incentive:get()
		registerVal2 = Dvar.enable_sp_exploit_check:get()
		registerVal2 = Engine.HasEntitlement(arg0, "seasonpass")
		if registerVal2 and registerVal2 and registerVal2 then
			registerVal2 = Engine.HasEntitlementByOwnership(arg0, "seasonpass")
			registerVal2 = Engine.GetInventoryItemQuantity(arg0, Dvar.season_pass_incentive_id:get())
			registerVal2 = registerVal1.spIncentiveExploitMsgSeen:get()
			if not registerVal2 and registerVal2 ~= 0.000000 or registerVal2 ~= 0.000000 then
			end
		end
		return true
	end
	return false
end

function ShouldShowSeasonPassIncentiveOverlay(arg0)
	local registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	if registerVal1 then
		local registerVal2 = Dvar.enable_season_pass_incentive:get()
		if registerVal2 then
			registerVal2 = Engine.GetInventoryItemQuantity(arg0, Dvar.season_pass_incentive_id:get())
			registerVal2 = registerVal1.spIncentiveMsgSeen:get()
			if 0.000000 >= registerVal2 or registerVal2 ~= 0.000000 then
			end
		end
		return true
	end
	return false
end

function ShouldShowDigitalIncentiveOverlay(arg0)
	local registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	local registerVal2 = AreCodPointsEnabled(arg0)
	if registerVal2 and registerVal1 then
		registerVal2 = Dvar.enable_digital_incentive:get()
		if registerVal2 then
			registerVal2 = Engine.GetInventoryItemQuantity(arg0, Dvar.digital_incentive_id:get())
			registerVal2 = registerVal1.digitalIncentiveMsgSeen:get()
			if 0.000000 >= registerVal2 or registerVal2 ~= 0.000000 then
			end
		end
		return true
	end
	return false
end

function ShouldShowRetailIncentiveOverlay(arg0)
	local registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	local registerVal2 = AreCodPointsEnabled(arg0)
	if registerVal2 and registerVal1 then
		registerVal2 = Dvar.enable_retail_incentive:get()
		if registerVal2 then
			registerVal2 = Engine.GetInventoryItemQuantity(arg0, Dvar.retail_incentive_id:get())
			registerVal2 = registerVal1.retailIncentiveMsgSeen:get()
			if 0.000000 >= registerVal2 or registerVal2 ~= 0.000000 then
			end
		end
		return true
	end
	return false
end

function ShouldShowInitialCodPointsOverlay(arg0)
	local registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	local registerVal2 = AreCodPointsEnabled(arg0)
	if registerVal2 and registerVal1 then
		registerVal2 = Engine.GetInventoryItemQuantity(arg0, Dvar.initial_cod_points_id:get())
		registerVal2 = registerVal1.codPointMsgSeen:get()
		if 0.000000 >= registerVal2 or registerVal2 ~= 0.000000 then
		end
		return true
	end
	return false
end

function IsItemAttachmentLocked(arg0, arg1, arg2, arg3, arg4)
	if 44.000000 < arg2 then
		if arg4 ~= nil then
		else
		end
		DebugPrint(("IsItemAttachmentLocked controller=" .. arg0 .. " weaponIndex=" .. arg1 .. " itemIndex=" .. arg2 .. " debugID=" .. arg3 .. " mode=" .. ""))
	end
	if arg4 == nil then
		return Engine.IsItemAttachmentLocked(arg0, arg1, arg2)
	else
		return Engine.IsItemAttachmentLocked(arg0, arg1, arg2, arg4)
	end
end

function IsCACItemLockedHelper(arg0, arg1, arg2)
	local registerVal7 = CoD.PrestigeUtility.GetPermanentUnlockMode()
	local registerVal8 = arg1:getModel(arg2, "itemIndex")
	if not arg1.itemIndex and registerVal8 then
		registerVal8 = Engine.GetModelValue(registerVal8)
	end
	if registerVal8 then
		if not CoD.perController[arg2].weaponCategory then
			registerVal8 = Engine.GetLoadoutSlotForItem(registerVal8, registerVal7)
		end
		if CoD.perController[arg2].classModel and registerVal8 then
			registerVal8 = LUI.startswith(registerVal8, "primaryattachment")
			registerVal8 = LUI.startswith(registerVal8, "secondaryattachment")
			if not arg1 or registerVal8 then
				local registerVal9 = LUI.startswith(registerVal8, "secondaryattachment")
				if registerVal9 then
				end
				registerVal9 = Engine.GetModel(CoD.perController[arg2].classModel, ("secondary" .. ".itemIndex"))
				if registerVal9 then
					local registerVal10 = Engine.GetModelValue(registerVal9)
					return IsItemAttachmentLocked(arg2, registerVal10, registerVal8, "ICACILH", registerVal7)
				end
			end
		end
		registerVal8 = Engine.GetItemRef(registerVal8)
		registerVal9 = IsThermometerUnlockIndexGreaterThanorEqualTo(CoD.ContractWeaponTiers[registerVal8])
		if registerVal8 == "secondary" and registerVal8 and CoD.ContractWeaponTiers[registerVal8] and not registerVal9 then
			return true
		end
		return Engine.IsItemLocked(arg2, registerVal8, registerVal7)
	end
	return false
end

function GetWeaponSlotModel(arg0, arg1, arg2, arg3)
	if arg1 or not arg3 then
		return nil
	end
	local registerVal4 = arg1:getModel(arg2, "weaponSlot")
	if not registerVal4 then
		return nil
	end
	local registerVal5 = Engine.GetModelValue(registerVal4)
	if not registerVal5 then
		return nil
	end
	return registerVal5
end

function IsTakeTwoGadgetAttachmentForSlot(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModel(arg1, "itemIndex")
	local registerVal4 = Engine.GetModel(arg0, arg2)
	local registerVal5 = Engine.GetModel(registerVal4, "itemIndex")
	local registerVal6 = Engine.GetModelValue(registerVal3)
	local registerVal7 = Engine.GetModelValue(registerVal5)
	if arg1 and arg0 and registerVal3 and registerVal4 and registerVal5 and CoD.CACUtility.EmptyItemIndex < registerVal7 then
		return Engine.IsTakeTwoGadgetAttachment(registerVal7, registerVal6)
	end
	return false
end

function WeaponAttributeCompare(arg0)
	local registerVal2, registerVal3, registerVal4 = string.gmatch(arg0, "[^,]+")
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		table.insert({}, tonumber(index5))
	end
	if #registerVal2 == 2.000000 and {}[1.000000] < {}[2.000000] then
		return true
	end
	return false
end

function IsWeaponLevelMax(arg0, arg1, arg2)
	local registerVal3 = Engine.GetGunCurrentRank(arg1, arg0, arg2)
	local registerVal4 = Engine.GetGunNextRank(arg1, arg0, arg2)
	local registerVal5 = Engine.GetGunCurrentRankXP(arg1, arg0, arg2)
	local registerVal6 = CoD.CACUtility.GetCurrentWeaponXP(arg1, arg0, arg2)
	if registerVal3 ~= registerVal4 or registerVal5 > registerVal6 then
	end
	return true
end

function IsACVItemNewHelper(arg0, arg1, arg2, arg3, arg4)
	return Engine.IsACVItemNew(arg0, arg1, arg2, arg3, arg4)
end

function GetNumberOfAttachmentsForSlot(arg0, arg1)
	if not arg1 then
		return 0.000000
	end
	local registerVal3 = Engine.GetModel(CoD.perController[arg1].classModel, arg0)
	local registerVal4 = Engine.GetModel(registerVal3, "itemIndex")
	local registerVal5 = Engine.GetModelValue(registerVal4)
	if CoD.perController[arg1].classModel and registerVal3 and registerVal4 and registerVal5 ~= 0.000000 then
		local registerVal6 = Engine.GetNumAttachments(registerVal5)
		return (registerVal6 - 1.000000)
	end
	return 0.000000
end

function SearchForTakeTwoGadgetMod(arg0, arg1)
	local registerVal2, registerVal3, registerVal4 = ipairs(arg1)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		local registerVal7 = Engine.GetModel(arg0, value6)
		local registerVal8 = Engine.GetModel(registerVal7, "itemIndex")
		local registerVal9 = Engine.GetModelValue(registerVal8)
		if registerVal7 and registerVal8 and registerVal9 == 1.000000 then
			return true
		end
	end
	return false
end

function IsFilmReadyForPlayback()
	local registerVal0 = Engine.LobbyGetDemoInformation()
	if registerVal0 and registerVal0.readyForPlayback then
		return true
	end
	return false
end

function GetDemoContextMode()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.GetModel(registerVal1, "demo.contextMode")
	if registerVal0 then
		return Engine.GetModelValue(registerVal0)
	end
	return Enum.demoContextMode.DEMO_CONTEXT_MODE_PLAYBACK
end

function CheckMemento(arg0, arg1)
	local registerVal4 = Engine.GetModelForController(arg0)
	local registerVal3 = Engine.GetModel(registerVal4, ("zmInventory." .. CoD.Zombie.CLIENTFIELD_CHECK_BASE .. arg1 .. CoD.Zombie.MEMENTO_SUFFIX))
	registerVal4 = Engine.GetModelValue(registerVal3)
	if registerVal4 ~= 1.000000 then
	end
	return true
end

function ShowPurchasableMapForDLCBit(arg0, arg1)
	local registerVal2 = CoD.IsHiddenDLC(arg1)
	if registerVal2 then
		return false
	end
	registerVal2 = CoD.IsKnownDLC(arg1)
	if not registerVal2 then
		return false
	end
	registerVal2 = PlayGoIsStillDownloading(arg0)
	if registerVal2 then
		return false
	end
	registerVal2 = Engine.GetLobbyNetworkMode()
	if registerVal2 ~= Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE then
	end
	return true
end

function ShowPurchasableMap(arg0, arg1)
	local registerVal2 = Engine.GetDLCBitForMapName(arg1)
	return ShowPurchasableMapForDLCBit(arg0, registerVal2)
end

function PartyMemberMissingContent(arg0, arg1)
	if arg1 == Enum.eModes.MODE_MULTIPLAYER then
		if arg0.mpChunkStatus == 3.000000 then
		end
		return true
	else
		if arg1 == Enum.eModes.MODE_CAMPAIGN then
			if arg0.cpChunkStatus == 3.000000 then
			end
			return true
		else
			if arg1 == Enum.eModes.MODE_ZOMBIES then
				if arg0.zmChunkStatus == 3.000000 then
				end
				return true
			end
		end
	end
	return false
end

function IsGameModeOwned(arg0)
	if arg0 == Enum.eModes.MODE_CAMPAIGN then
		local registerVal1 = Engine.IsCpOwned()
		if registerVal1 ~= true then
		end
		return true
	else
		if arg0 == Enum.eModes.MODE_MULTIPLAYER then
			registerVal1 = Engine.IsMpOwned()
			if registerVal1 ~= true then
			end
			return true
		else
			if arg0 == Enum.eModes.MODE_ZOMBIES then
				registerVal1 = Engine.IsZmOwned()
				if registerVal1 ~= true then
				end
				return true
			else
				return false
			end
		end
	end
end

function DoesHaveFileshareOptions(arg0)
	local registerVal1 = CoD.FileshareUtility.GetIsGroupsMode(arg0)
	if registerVal1 then
		registerVal1 = HasAdminPrivilege(arg0, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_FAVORITE_SHOWCASE_CONTENT)
		if registerVal1 then
			return true
		end
		registerVal1 = HasAdminPrivilege(arg0, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_EDIT_FEATURED_CONTENT)
		if registerVal1 then
			return true
		end
	end
	registerVal1 = FileshareIsLocalCategory(arg0)
	local registerVal2 = CoD.FileshareUtility.GetSelectedItemProperty("fileAuthorXuid")
	local registerVal3 = Engine.GetXUID64(arg0)
	if registerVal2 ~= registerVal3 then
	end
	local registerVal4 = CoD.FileshareUtility.GetCurrentCategory()
	if registerVal1 and registerVal4 == "clip_private" then
		return true
	end
	if not registerVal1 then
		registerVal4 = FilesshareCanShowVoteOptions(arg0)
		if registerVal4 then
			return true
		end
		registerVal4 = FileshareCanDownloadItem(arg0)
		if registerVal4 then
			return true
		end
		if not true then
			return true
		end
		registerVal4 = FileshareCanShowShowcaseManager(arg0)
		if registerVal4 then
			return true
		end
	end
	registerVal4 = FileshareCanDeleteItem(arg0)
	if registerVal4 then
		return true
	end
	return false
end

function IsCommunityContractCallingCardById(arg0)
	local registerVal1 = tonumber(Engine.TableLookup(nil, CoD.backgroundsTable, 1.000000, arg0, 12.000000))
	if registerVal1 ~= 1.000000 then
	end
	return true
end

