-- Decompiled with CoDLUIDecompiler by JariK

require("lua.Shared.LuaUtils")
CoD.CraftUtility = {}
CoD.CraftUtility.Fileshare = {}
CoD.CraftUtility.Gunsmith = {}
CoD.CraftUtility.Gunsmith.CachedVariants = {}
CoD.CraftUtility.Gunsmith.MAX_ATTACHMENTS = 8.000000
CoD.CraftUtility.Gunsmith.EMPTY_ITEM_INDEX = 0.000000
CoD.CraftUtility.Gunsmith.CAMO_NONE = 0.000000
CoD.CraftUtility.Gunsmith.RETICLE_NONE = 0.000000
CoD.CraftUtility.PAINTSHOP_GRIDSIZE = 16.000000
CoD.CraftUtility.EMBLEM_GRIDSIZE = 24.000000
CoD.CraftUtility.DEFAULT_READ_ONLY_FLAG = 0.000000
function CoD.CraftUtility.GetMaterialCategoryTypeByID(arg0)
	for index1=1.000000, #CoD.emblem.MaterialCategory, 1.000000 do
		if arg0 and CoD.emblem.MaterialCategory[index1].category == arg0 then
			return CoD.emblem.MaterialCategory[index1].type
		end
	end
	return nil
end

function CoD.CraftUtility.GetDecalCategoryTypeByID(arg0)
	for index1=1.000000, #CoD.emblem.DECALTABS, 1.000000 do
		if CoD.emblem.DECALTABS[index1].category == arg0 then
			return CoD.emblem.DECALTABS[index1].type
		end
	end
	return nil
end

function CoD.CraftUtility.InvalidateWCItemRender(arg0, arg1)
	Engine.InvalidateWCItemRender(arg0, arg1)
end

function CoD.CraftUtility.GetUsedSlotsByFileType(arg0, arg1)
	if arg1 == Enum.StorageFileType.STORAGE_PAINTJOBS then
		local registerVal3 = CoD.CraftUtility.Paintjobs.GetTotalUsedPaintjobs()
	else
		if arg1 == Enum.StorageFileType.STORAGE_GUNSMITH then
			registerVal3 = CoD.CraftUtility.Gunsmith.GetTotalUsedVariants()
		else
			if arg1 == Enum.StorageFileType.STORAGE_EMBLEMS then
				registerVal3 = CoD.CraftUtility.Emblems.GetTotalUsedEmblems(arg0, arg1)
			end
		end
	end
	return registerVal3
end

function CoD.CraftUtility.GetTotalAllowedSlotsByFileType(arg0, arg1)
	if arg1 == Enum.StorageFileType.STORAGE_PAINTJOBS then
		local registerVal3 = CoD.CraftUtility.Paintjobs.GetTotalAllowedPaintjobs(arg0)
	else
		if arg1 == Enum.StorageFileType.STORAGE_GUNSMITH then
			registerVal3 = CoD.CraftUtility.Gunsmith.GetTotalAllowedVaraints()
		else
			if arg1 == Enum.StorageFileType.STORAGE_EMBLEMS then
				registerVal3 = CoD.CraftUtility.Emblems.GetTotalAllowedEmblems(arg0, arg1)
			end
		end
	end
	return registerVal3
end

function CoD.CraftUtility.GetGridTypeName(arg0)
	local registerVal2 = IsPaintshop(arg0)
	if not registerVal2 then
	end
	return "emblem_grid_size"
end

function CoD.CraftUtility.GetGridSize(arg0)
	local registerVal2 = IsPaintshop(arg0)
	if not registerVal2 then
	end
	return CoD.CraftUtility.EMBLEM_GRIDSIZE
end

function CoD.CraftUtility.GetDDLRoot(arg0, arg1, arg2)
	if arg1 == "cacRoot" then
		return Engine.GetCACRoot(arg0)
	else
		if arg2 ~= nil then
			return Engine.StorageGetBuffer(arg0, arg1, arg2)
		else
			return Engine.StorageGetBuffer(arg0, arg1)
		end
	end
end

function CoD.CraftUtility.GetEmblemState(arg0, arg1, arg2)
	local registerVal3 = math.floor((arg2 / 32.000000))
	local registerVal5 = CoD.CraftUtility.GetDDLRoot(arg0, arg1, registerVal3)
	return registerVal5.emblemList[(arg2 % 32.000000)]
end

function CoD.CraftUtility.UploadBuffer(arg0, arg1, arg2)
	if arg1 == Enum.StorageFileType.STORAGE_GUNSMITH then
		local registerVal3 = CoD.CraftUtility.Gunsmith.GetFileType()
	end
	if registerVal3 == "cacRoot" then
		Engine.Exec(arg0, "saveLoadout")
	else
		if arg2 ~= nil then
			Engine.StorageWrite(arg0, registerVal3, arg2)
		else
			Engine.StorageWrite(arg0, registerVal3)
		end
	end
end

function CoD.CraftUtility.UploadAndParseBuffer(arg0, arg1, arg2)
	CoD.CraftUtility.UploadBuffer(arg0, arg1, arg2)
	if arg1 == Enum.StorageFileType.STORAGE_GUNSMITH then
		CoD.CraftUtility.Gunsmith.ParseDDL(arg0, CoD.CraftUtility.Gunsmith.GetFileType())
	else
		if arg1 == Enum.StorageFileType.STORAGE_EMBLEMS then
			CoD.CraftUtility.Emblems.ParseDDL(arg0, arg1)
		else
			if arg1 == Enum.StorageFileType.STORAGE_PAINTJOBS then
				CoD.CraftUtility.Paintjobs.ParseDDL(arg0, arg1)
			end
		end
	end
	MediaManagerMarkDirty(arg0)
end

function CoD.CraftUtility.GetModeAbbreviation()
	if CoD.isSafehouse then
		return "_cp"
	else
		return "_mp"
	end
end

function CoD.CraftUtility.GetCraftMode()
	if CoD.isSafehouse then
		return Enum.eModes.MODE_CAMPAIGN
	else
		return Enum.eModes.MODE_MULTIPLAYER
	end
end

function CoD.CraftUtility.GetLoadoutSlot(arg0)
	local registerVal1 = CoD.GetCustomization(arg0, "category_index")
	if registerVal1 ~= nil then
		local registerVal2 = CoD.GetCustomization(arg0, "category_index")
	else
	end
	return CoD.Craft.WeaponGroupNames[1.000000].loadout_slot
end

function CoD.CraftUtility.DisplayWeaponInPaintshop(arg0, arg1)
	local registerVal3 = CoD.GetCustomization(arg0, "weapon_index")
	local registerVal2 = Engine.GetItemRef(registerVal3, Enum.eModes.MODE_MULTIPLAYER)
	local registerVal4 = CoD.CraftUtility.GetModeAbbreviation()
	registerVal4 = CoD.CraftUtility.GetLoadoutSlot(arg0)
	local registerVal9 = CoD.GetLocalClientAdjustedNum(arg0)
	Engine.SendClientScriptNotify(arg0, ("CustomClass_update" .. registerVal9), registerVal4, (registerVal2 .. registerVal4), arg1, "0,0,1")
end

function CoD.CraftUtility.PaintjobClear(arg0, arg1, arg2, arg3, arg4)
	CoD.OverlayUtility.CreateOverlay(arg2, arg4, "PaintjobClearConfirmationOverlay")
end

function CoD.CraftUtility.PaintjobRename(arg0, arg1, arg2, arg3, arg4)
	ShowKeyboard(arg4, arg1, arg2, "KEYBOARD_TYPE_PAINTJOB")
end

function CoD.CraftUtility.OpenPublishPromptPaintjob(arg0, arg1, arg2, arg3, arg4)
	local registerVal6 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg2].selectedpaintjobModel, "paintjobSlot"))
	local registerVal7 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg2].selectedpaintjobModel, "paintjobIndex"))
	local registerVal9 = CoD.CraftUtility.GetDDLRoot(arg2, Enum.StorageFileType.STORAGE_PAINTJOBS, registerVal6)
	local registerVal12 = registerVal9.weaponPaintjob[registerVal7].paintjobName:get()
	if registerVal9 ~= nil and registerVal12 ~= nil then
	end
	CoD.FileshareUtility.OpenPublishPrompt(arg4, arg2, "paintjob", registerVal12, "", CoD.CraftUtility.Paintjobs.PublishPaintjob)
end

function CoD.CraftUtility.GunsmithClear(arg0, arg1, arg2, arg3, arg4)
	CoD.OverlayUtility.CreateOverlay(arg2, arg4, "GunsmithClearConfirmationOverlay")
end

function CoD.CraftUtility.GunsmithRename(arg0, arg1, arg2, arg3, arg4)
	ShowKeyboard(arg4, arg1, arg2, "KEYBOARD_TYPE_GUNSMITH")
end

function CoD.CraftUtility.OpenPublishPromptGunsmith(arg0, arg1, arg2, arg3, arg4)
	local registerVal6 = Engine.GetModel(CoD.perController[arg2].gunsmithVariantModel, "variantName")
	local registerVal7 = Engine.GetModelValue(registerVal6)
	CoD.FileshareUtility.OpenPublishPrompt(arg4, arg2, "variant", registerVal7, "", CoD.CraftUtility.Gunsmith.PublishVariant)
end

function CoD.CraftUtility.EmblemClear(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = CoD.OverlayUtility.CreateOverlay(arg2, arg4, "EmblemClearConfirmationOverlay")
end

function CoD.CraftUtility.EmblemRename(arg0, arg1, arg2, arg3, arg4)
	ShowKeyboard(arg4, arg1, arg2, "KEYBOARD_TYPE_EMBLEMS")
end

function CoD.CraftUtility.OpenPublishPromptEmblem(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = CheckIfFeatureIsBanned((arg2 + 1.000000), LuaEnums.FEATURE_BAN.USER_GENERATED_CONTENT)
	if registerVal5 then
		LuaUtils.UI_ShowErrorMessageDialog(arg2, GetFeatureBanInfo((arg2 + 1.000000), LuaEnums.FEATURE_BAN.USER_GENERATED_CONTENT))
		return 
	end
	local registerVal6 = Engine.GetModel(CoD.perController[arg2].selectedEmblemModel, "emblemName")
	local registerVal7 = Engine.GetModelValue(registerVal6)
	CoD.FileshareUtility.OpenPublishPrompt(arg4, arg2, "emblem", registerVal7, "", CoD.CraftUtility.Emblems.PublishEmblem)
end

function CoD.CraftUtility.GetWeaponGroupName(arg0)
	local registerVal1 = CoD.GetCustomization(arg0, "weapon_index")
	if registerVal1 then
		local registerVal3 = Engine.GetItemGroup(registerVal1, Enum.eModes.MODE_MULTIPLAYER)
	end
	return registerVal3
end

function CoD.CraftUtility.Gunsmith.IsCurrentVariantChanged(arg0, arg1)
	local registerVal2 = Engine.GetModel(arg1, "variantIndex")
	if arg1 and registerVal2 then
		local registerVal3 = Engine.GetModelValue(registerVal2)
		local registerVal4 = CoD.CraftUtility.Gunsmith.GetVariantByIndex(arg0, registerVal3)
		for index5=1.000000, CoD.CraftUtility.Gunsmith.MAX_ATTACHMENTS, 1.000000 do
			local registerVal9 = Engine.GetModel(arg1, ("attachment" .. index5))
			local registerVal10 = Engine.GetModelValue(registerVal9)
			if registerVal4.attachment[index5] ~= registerVal10 then
				return true
			end
		end
	end
	return false
end

function CoD.CraftUtility.Gunsmith.ClearVariantStatType(arg0, arg1)
	if arg0.stats[arg1] then
		arg0.stats[arg1]:set(0.000000)
	end
end

function CoD.CraftUtility.Gunsmith.ClearVariantStats(arg0, arg1, arg2)
	local registerVal4 = CoD.CraftUtility.Gunsmith.GetStatsStorageType(arg2)
	local registerVal5 = CoD.CraftUtility.GetDDLRoot(arg0, registerVal4)
	if registerVal5 and registerVal5.VariantStats[(arg1 + 1.000000)] then
		CoD.CraftUtility.Gunsmith.ClearVariantStatType(registerVal5.VariantStats[(arg1 + 1.000000)], "kills")
		CoD.CraftUtility.Gunsmith.ClearVariantStatType(registerVal5.VariantStats[(arg1 + 1.000000)], "deaths")
		CoD.CraftUtility.Gunsmith.ClearVariantStatType(registerVal5.VariantStats[(arg1 + 1.000000)], "deathsDuringUse")
		CoD.CraftUtility.Gunsmith.ClearVariantStatType(registerVal5.VariantStats[(arg1 + 1.000000)], "shots")
		CoD.CraftUtility.Gunsmith.ClearVariantStatType(registerVal5.VariantStats[(arg1 + 1.000000)], "hits")
		CoD.CraftUtility.Gunsmith.ClearVariantStatType(registerVal5.VariantStats[(arg1 + 1.000000)], "headshots")
		CoD.CraftUtility.Gunsmith.ClearVariantStatType(registerVal5.VariantStats[(arg1 + 1.000000)], "destroyed")
		CoD.CraftUtility.Gunsmith.ClearVariantStatType(registerVal5.VariantStats[(arg1 + 1.000000)], "backstabber_kill")
		Engine.StorageWrite(arg0, registerVal4)
	end
end

function CoD.CraftUtility.Gunsmith.GetStatsStorageType(arg0)
	if arg0 == Enum.eModes.MODE_CAMPAIGN then
		return Enum.StorageFileType.STORAGE_CP_STATS_ONLINE
	else
		return Enum.StorageFileType.STORAGE_MP_STATS_ONLINE
	end
end

function CoD.CraftUtility.Gunsmith.GetSnapshotSessionMode()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.GetModel(registerVal1, "GunsmithSnapshot.SessionMode")
	if registerVal0 then
		local registerVal2 = Engine.GetModelValue(registerVal0)
	end
	return registerVal2
end

function CoD.CraftUtility.Gunsmith.GetRatio(arg0, arg1)
	if arg1 ~= 0.000000 then
	end
	return (arg0 / arg1)
end

function CoD.CraftUtility.Gunsmith.GetVariantStatValue(arg0, arg1)
	if arg0.stats[arg1] then
		local registerVal4 = arg0.stats[arg1]:get()
	end
	return registerVal4
end

function CoD.CraftUtility.Gunsmith.GetWeaponStatValue(arg0, arg1)
	if arg0.stats[arg1] and arg0.stats[arg1].statValue then
		local registerVal5 = arg0.stats[arg1].statValue:get()
	end
	return registerVal5
end

function CoD.CraftUtility.Gunsmith.GetVariantStats(arg0, arg1, arg2, arg3)
	local registerVal4 = CoD.CraftUtility.GetDDLRoot(arg0, CoD.CraftUtility.Gunsmith.GetStatsStorageType(arg3))
	if registerVal4 and registerVal4.VariantStats[arg2] then
		if arg1 == "accuracy" then
			local registerVal6 = CoD.CraftUtility.Gunsmith.GetVariantStatValue(registerVal4.VariantStats[arg2], "shots")
			local registerVal7 = CoD.CraftUtility.Gunsmith.GetVariantStatValue(registerVal4.VariantStats[arg2], "hits")
			local registerVal8 = CoD.CraftUtility.Gunsmith.GetRatio(registerVal7, registerVal6)
			return GunsmithAccuracyPercentage(registerVal8)
		else
			if arg1 == "kd" then
				registerVal6 = CoD.CraftUtility.Gunsmith.GetVariantStatValue(registerVal4.VariantStats[arg2], "kills")
				registerVal7 = CoD.CraftUtility.Gunsmith.GetVariantStatValue(registerVal4.VariantStats[arg2], "deathsDuringUse")
				registerVal8 = CoD.CraftUtility.Gunsmith.GetRatio(registerVal6, registerVal7)
				return registerVal8
			else
				return CoD.CraftUtility.Gunsmith.GetVariantStatValue(registerVal4.VariantStats[arg2], arg1)
			else
				return 0.000000
			end
		end
	end
end

function CoD.CraftUtility.Gunsmith.GetWeaponStats(arg0, arg1, arg2, arg3)
	local registerVal4 = CoD.CraftUtility.GetDDLRoot(arg0, CoD.CraftUtility.Gunsmith.GetStatsStorageType(arg3))
	if registerVal4 and registerVal4.ItemStats[arg2] then
		if arg1 == "accuracy" then
			local registerVal6 = CoD.CraftUtility.Gunsmith.GetWeaponStatValue(registerVal4.ItemStats[arg2], "shots")
			local registerVal7 = CoD.CraftUtility.Gunsmith.GetWeaponStatValue(registerVal4.ItemStats[arg2], "hits")
			local registerVal8 = CoD.CraftUtility.Gunsmith.GetRatio(registerVal7, registerVal6)
			return GunsmithAccuracyPercentage(registerVal8)
		else
			if arg1 == "kd" then
				registerVal6 = CoD.CraftUtility.Gunsmith.GetWeaponStatValue(registerVal4.ItemStats[arg2], "kills")
				registerVal7 = CoD.CraftUtility.Gunsmith.GetWeaponStatValue(registerVal4.ItemStats[arg2], "deathsDuringUse")
				registerVal8 = CoD.CraftUtility.Gunsmith.GetRatio(registerVal6, registerVal7)
				return registerVal8
			else
				if arg1 == "backstabber_kill" then
					return 0.000000
				else
					return CoD.CraftUtility.Gunsmith.GetWeaponStatValue(registerVal4.ItemStats[arg2], arg1)
				end
			end
		end
	end
end

function CoD.CraftUtility.Gunsmith.GetWeaponStatList(arg0, arg1, arg2)
	local registerVal4 = CoD.CraftUtility.GetWeaponGroupName(arg0)
	local registerVal5 = Engine.GetItemRef(arg1, arg2)
	if registerVal5 == "launcher_lockonly" then
		local registerVal6 = {}
		registerVal6 = {"destroyed"}
	else
		if registerVal4 == "weapon_launcher" then
			registerVal6 = {}
			registerVal6 = {"kills", "destroyed"}
		else
			if registerVal5 == "special_discgun" then
				registerVal6 = {}
				registerVal6 = {"kills", "accuracy"}
				if arg2 == Enum.eModes.MODE_MULTIPLAYER then
					table.insert(registerVal6, "kd")
				else
					if registerVal4 == "weapon_knife" then
						registerVal6 = {}
						registerVal6 = {"kills", "backstabber_kill", "kd"}
					else
						registerVal6 = {}
						registerVal6 = {"kills", "headshots", "accuracy"}
						if arg2 == Enum.eModes.MODE_MULTIPLAYER then
							table.insert(registerVal6, "kd")
						end
					end
				end
			end
		end
	end
	return registerVal6
end

function CoD.CraftUtility.Gunsmith.GetWeaponStatHeader(arg0)
	if arg0 == "kills" then
		return "MENU_GUNSMITH_KILLS_CAPS"
	else
		if arg0 == "headshots" then
			return "MENU_GUNSMITH_HEADSHOTS_CAPS"
		else
			if arg0 == "accuracy" then
				return "MENU_GUNSMITH_ACCURACY_CAPS"
			else
				if arg0 == "kd" then
					return "MENU_GUNSMITH_KD_CAPS"
				else
					if arg0 == "destroyed" then
						return "MENU_GUNSMITH_VEHICLES_DESTROYED_CAPS"
					else
						if arg0 == "backstabber_kill" then
							return "MENU_GUNSMITH_BACKSTABS_CAPS"
						else
							return "MENU_GUNSMITH_UNKNOWN_CAPS"
						end
					end
				end
			end
		end
	end
end

function CoD.CraftUtility.Gunsmith.WeaponHasNewOptics(arg0, arg1)
	local registerVal2 = IsProgressionEnabled(arg0)
	if not registerVal2 then
		return false
	end
	return Engine.AreAnyOpticsNew(arg0, arg1)
end

function CoD.CraftUtility.Gunsmith.WeaponHasNewNonOpticAttachments(arg0, arg1)
	local registerVal2 = IsProgressionEnabled(arg0)
	if not registerVal2 then
		return false
	end
	return Engine.AreAnyNonOpticAttachmentsNew(arg0, arg1)
end

function CoD.CraftUtility.Gunsmith.WeaponHasNewCamos(arg0, arg1)
	local registerVal2 = IsProgressionEnabled(arg0)
	if not registerVal2 then
		return false
	end
	local registerVal3 = Engine.GetWeaponOptionsCount()
	for index2=0.000000, registerVal3, 1.000000 do
		local registerVal6 = Engine.GetWeaponOptionGroupName(index2)
		registerVal6 = Engine.IsWeaponOptionNew(arg0, arg1, index2)
		if registerVal6 == Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_CAMO and registerVal6 then
			return true
		end
	end
end

function CoD.CraftUtility.Gunsmith.WeaponHasAnyNewItems(arg0, arg1)
	local registerVal2 = IsProgressionEnabled(arg0)
	if not registerVal2 then
		return false
	end
	registerVal2 = CoD.CraftUtility.Gunsmith.WeaponHasNewOptics(arg0, arg1)
	registerVal2 = CoD.CraftUtility.Gunsmith.WeaponHasNewNonOpticAttachments(arg0, arg1)
	if not registerVal2 and not registerVal2 then
		registerVal2 = CoD.CraftUtility.Gunsmith.WeaponHasNewCamos(arg0, arg1)
	end
	return registerVal2
end

function CoD.CraftUtility.Gunsmith.GetBreadcrumbCountForWeaponGroup(arg0, arg1)
	local registerVal2 = IsProgressionEnabled(arg0)
	if not registerVal2 then
		return 0.000000
	end
	local registerVal3 = CoD.GetUnlockablesTable(arg0)
	local registerVal4, registerVal5, registerVal6 = ipairs(registerVal3[arg1])
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		local registerVal9 = Engine.GetModelValue(Engine.GetModel(value8, "itemIndex"))
		local registerVal10 = CoD.PrestigeUtility.GetPermanentUnlockMode()
		local registerVal11 = Engine.IsItemNew(arg0, registerVal9, registerVal10)
		if CoD.CACUtility.EmptyItemIndex < registerVal9 and registerVal11 then
		else
			registerVal11 = Engine.IsItemLocked(arg0, registerVal9, registerVal10)
			registerVal11 = CoD.CraftUtility.Gunsmith.WeaponHasAnyNewItems(arg0, registerVal9)
			if not registerVal11 and registerVal11 then
			end
		end
	end
	return ((0.000000 + 1.000000) + 1.000000)
end

function CoD.CraftUtility.Gunsmith.AnyNewWeaponsOrAttachmentsForGroup(arg0, arg1)
	local registerVal2 = IsProgressionEnabled(arg0)
	if not registerVal2 then
		return false
	end
	registerVal2 = CoD.GetUnlockablesTable(arg0)
	local registerVal3, registerVal4, registerVal5 = ipairs(registerVal2[arg1])
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		local registerVal8 = Engine.GetModelValue(Engine.GetModel(value7, "itemIndex"))
		local registerVal9 = CoD.PrestigeUtility.GetPermanentUnlockMode()
		local registerVal10 = Engine.IsItemNew(arg0, registerVal8, registerVal9)
		if CoD.CACUtility.EmptyItemIndex < registerVal8 and registerVal10 then
			return true
		end
		registerVal10 = Engine.IsItemLocked(arg0, registerVal8, registerVal9)
		registerVal10 = CoD.CraftUtility.Gunsmith.WeaponHasAnyNewItems(arg0, registerVal8)
		if not registerVal10 and registerVal10 then
			return true
		end
	end
	return false
end

function CoD.CraftUtility.Gunsmith.GetSortedAttachmentList(arg0, arg1)
	{}.baseAttachmentList = {}
	{}.attachmentVariantList = {}
	for index5=1.000000, CoD.CraftUtility.Gunsmith.MAX_ATTACHMENTS, 1.000000 do
		local registerVal9 = Engine.GetModel(arg1, ("attachment" .. index5))
		if registerVal9 then
			local registerVal10 = Engine.GetModelValue(registerVal9)
			if 1.000000 == index5 or registerVal10 ~= CoD.CraftUtility.Gunsmith.EMPTY_ITEM_INDEX then
				table.insert({}.baseAttachmentList, registerVal10)
				local registerVal11 = Engine.GetModel(arg1, ("attachmentVariant" .. index5))
				if registerVal11 then
					local registerVal12 = Engine.GetModelValue(registerVal11)
					table.insert({}.attachmentVariantList, registerVal12)
				end
			end
		end
	end
	for index5=((0.000000 + 1.000000) + 1.000000), CoD.CraftUtility.Gunsmith.MAX_ATTACHMENTS, 1.000000 do
		table.insert({}.baseAttachmentList, CoD.CraftUtility.Gunsmith.EMPTY_ITEM_INDEX)
		table.insert({}.attachmentVariantList, CoD.CraftUtility.Gunsmith.EMPTY_ITEM_INDEX)
	end
	return {}
end

function CoD.CraftUtility.Gunsmith.GetAttachmentIconList(arg0, arg1, arg2, arg3)
	local function __FUNC_6E52_(arg0)
		local registerVal3, registerVal4, registerVal5 = ipairs(arg3)
		for index6,value7 in registerVal3, registerVal4, registerVal5 do
			local registerVal8 = Engine.GetAttachmentIndexByAttachmentTableIndex(arg2, value7, Enum.eModes.MODE_MULTIPLAYER)
			if CoD.CACUtility.EmptyItemIndex < value7 and CoD.CACUtility.EmptyItemIndex < registerVal8 then
				local registerVal11 = {}
				local registerVal12 = {}
				local registerVal13 = Engine.GetAttachmentImage(arg2, registerVal8, Enum.eModes.MODE_MULTIPLAYER)
				registerVal12.image = (registerVal13 .. "_wv_icon")
				registerVal11.models = registerVal12
				table.insert({}, registerVal11)
			end
		end
		registerVal4 = CoD.CraftUtility.GetLoadoutSlot(arg0)
		if registerVal4 ~= "primary" then
		end
		if true then
			for index7=0.000000, 2.000000, 1.000000 do
				if CoD.CACUtility.EmptyItemIndex < arg3[(4.000000 + index7)] then
				end
			end
		else
			if CoD.CACUtility.EmptyItemIndex < arg3[3.000000] then
			end
		end
		registerVal8 = {}
		local registerVal9 = {}
		registerVal9.image = "cac_mods_secondary_gunfighter_wv_icon"
		registerVal8.models = registerVal9
		table.insert({}, registerVal8)
		return {}
	end

	return DataSourceHelpers.ListSetup(arg1, __FUNC_6E52_, true)
end

function CoD.CraftUtility.Gunsmith.GetFileType()
	if not CoD.CraftUtility.Gunsmith.FileType then
	end
	return Enum.StorageFileType.STORAGE_GUNSMITH
end

function CoD.CraftUtility.Gunsmith.GetTotalAllowedVaraints()
	return CoD.CraftUtility.Gunsmith.TotalVariants
end

function CoD.CraftUtility.Gunsmith.GetMaxVariantCount(arg0, arg1)
	local registerVal2 = CoD.CraftUtility.GetDDLRoot(arg0, arg1)
	if registerVal2 ~= nil then
		if CoD.CraftUtility.Gunsmith.FileType == Enum.StorageFileType.STORAGE_GUNSMITH then
			local registerVal5 = Dvar.gunsmith_totalvariants:exists()
			if registerVal5 then
				registerVal5 = MediaManagerGetQuotaForCategory(arg0, "variant")
				if #registerVal2.variant < registerVal5.categoryQuota then
					error(("Gunsmith DDL: DDL does not support " .. registerVal5.categoryQuota .. " variants."))
					return 0.000000
				end
				local registerVal7 = math.min(#registerVal2.variant, registerVal5.categoryQuota)
			else
			end
		end
	end
	return #registerVal2.variant
end

function CoD.CraftUtility.Gunsmith.GetTotalUsedWeaponVariantsByWeaponGroup(arg0)
	for index3=1.000000, #, 1.000000 do
		local registerVal7 = Engine.GetWeaponGroup(CoD.CraftUtility.Gunsmith.CachedVariants[index3].weaponIndex, Enum.eModes.MODE_MULTIPLAYER)
		local registerVal8 = tonumber(arg0)
		if CoD.CraftUtility.Gunsmith.CachedVariants[index3].weaponIndex and registerVal7 == registerVal8 then
		end
	end
	return (0.000000 + 1.000000)
end

function CoD.CraftUtility.Gunsmith.GetTotalUsedWeaponVariants(arg0)
	for index3=1.000000, #, 1.000000 do
		if CoD.CraftUtility.Gunsmith.CachedVariants[index3].weaponIndex == arg0 then
		end
	end
	return (0.000000 + 1.000000)
end

function CoD.CraftUtility.Gunsmith.GetTotalUsedVariants()
	for index2=1.000000, #, 1.000000 do
		if CoD.CraftUtility.Gunsmith.CachedVariants[index2].weaponIndex ~= CoD.CraftUtility.Gunsmith.EMPTY_ITEM_INDEX then
		end
	end
	return (0.000000 + 1.000000)
end

function CoD.CraftUtility.Gunsmith.ParseDDL(arg0, arg1)
	local registerVal2 = CoD.CraftUtility.GetDDLRoot(arg0, arg1)
	CoD.CraftUtility.Gunsmith.FileType = arg1
	if registerVal2 == nil then
		CoD.CraftUtility.Gunsmith.CachedVariants = {}
		return false
	end
	local registerVal3 = CoD.CraftUtility.Gunsmith.GetMaxVariantCount(arg0, arg1)
	CoD.CraftUtility.Gunsmith.TotalVariants = registerVal3
	for index4=0.000000, (registerVal3 - 1.000000), 1.000000 do
		local registerVal10 = registerVal2.variant[index4].weaponIndex:get()
		{}.weaponIndex = registerVal10
		registerVal10 = registerVal2.variant[index4].variantIndex:get()
		{}.variantIndex = registerVal10
		registerVal10 = registerVal2.variant[index4].sortIndex:get()
		{}.sortIndex = registerVal10
		registerVal10 = registerVal2.variant[index4].readOnly:get()
		{}.readOnly = registerVal10
		if registerVal2.variant[index4].createTime ~= nil then
			registerVal10 = Engine.GetLocalizedTimeStr(registerVal2.variant[index4].createTime:get())
			{}.createTime = registerVal10
		end
		CoD.CraftUtility.Gunsmith.CachedVariants[(index4 + 1.000000)] = {}
	end
	return true
end

function CoD.CraftUtility.Gunsmith.PublishVariant(arg0)
	local registerVal2 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg0].gunsmithVariantModel, "variantIndex"))
	local registerVal3 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg0].gunsmithVariantModel, "paintjobSlot"))
	local registerVal4 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg0].gunsmithVariantModel, "paintjobIndex"))
	local registerVal5 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg0].gunsmithVariantModel, "weaponIndex"))
	local registerVal6 = CoD.FileshareUtility.GetPublishName()
	local registerVal7 = CoD.FileshareUtility.GetPublishAllowDownload()
	Engine.PublishVariant(arg0, "variant", registerVal2, registerVal3, registerVal4, registerVal5, registerVal6, registerVal7)
end

function CoD.CraftUtility.Gunsmith.GetHighestSortIndexForWeapon(arg0)
	for index3=1.000000, #, 1.000000 do
		if CoD.CraftUtility.Gunsmith.CachedVariants[index3].weaponIndex == arg0 and CoD.CraftUtility.Gunsmith.EMPTY_ITEM_INDEX < CoD.CraftUtility.Gunsmith.CachedVariants[index3].sortIndex then
		end
	end
	return CoD.CraftUtility.Gunsmith.CachedVariants[index3].sortIndex
end

function CoD.CraftUtility.Gunsmith.GetSortedWeaponVariantList(arg0, arg1)
	for index6=1.000000, #, 1.000000 do
		if arg1 then
			if arg1 ~= "" or CoD.CraftUtility.Gunsmith.CachedVariants[index6].weaponIndex == 0.000000 then
				local registerVal11 = Engine.GetWeaponGroup(CoD.CraftUtility.Gunsmith.CachedVariants[index6].weaponIndex, Enum.eModes.MODE_MULTIPLAYER)
				local registerVal12 = tonumber(arg1)
				if registerVal11 == registerVal12 then
					table.insert({}, CoD.CraftUtility.Gunsmith.CachedVariants[index6])
				else
					if arg0 == nil and CoD.CraftUtility.Gunsmith.CachedVariants[index6].weaponIndex ~= 0.000000 then
						table.insert({}, CoD.CraftUtility.Gunsmith.CachedVariants[index6])
					else
						if CoD.CraftUtility.Gunsmith.CachedVariants[index6].weaponIndex == CoD.CraftUtility.Gunsmith.EMPTY_ITEM_INDEX and not false then
							registerVal11 = CoD.CraftUtility.Gunsmith.GetHighestSortIndexForWeapon(arg0)
							CoD.CraftUtility.Gunsmith.CachedVariants[index6].sortIndex = (registerVal11 + 1.000000)
							table.insert({}, CoD.CraftUtility.Gunsmith.CachedVariants[index6])
						else
							if CoD.CraftUtility.Gunsmith.CachedVariants[index6].weaponIndex == arg0 then
								table.insert({}, CoD.CraftUtility.Gunsmith.CachedVariants[index6])
							end
						end
					end
				end
			end
		end
	end
	local function __FUNC_8681_(arg0, arg1)
		if arg1.sortIndex >= arg0.sortIndex then
		end
		return true
	end

	table.sort({}, __FUNC_8681_)
	return {}
end

function CoD.CraftUtility.Gunsmith.AreMaxVariantSlotsUsed()
	for index2=1.000000, #, 1.000000 do
		if CoD.CraftUtility.Gunsmith.CachedVariants[index2].weaponIndex == CoD.CraftUtility.Gunsmith.EMPTY_ITEM_INDEX then
		else
		end
	end
	return false
end

function CoD.CraftUtility.Gunsmith.GetEmptyTable(arg0)
	for index2=1.000000, arg0, 1.000000 do
		table.insert({}, CoD.CraftUtility.Gunsmith.EMPTY_ITEM_INDEX)
	end
	return {}
end

function CoD.CraftUtility.Gunsmith.GetVariantByIndex(arg0, arg1)
	local registerVal2 = CoD.CraftUtility.GetDDLRoot(arg0, CoD.CraftUtility.Gunsmith.GetFileType())
	local registerVal3 = {}
	local registerVal4 = CoD.CraftUtility.Gunsmith.GetEmptyTable(CoD.CraftUtility.Gunsmith.MAX_ATTACHMENTS)
	registerVal3.attachment = registerVal4
	registerVal4 = CoD.CraftUtility.Gunsmith.GetEmptyTable(CoD.CraftUtility.Gunsmith.MAX_ATTACHMENTS)
	registerVal3.attachmentVariant = registerVal4
	registerVal3.variantName = ""
	registerVal3.camoIndex = CoD.CraftUtility.Gunsmith.CAMO_NONE
	registerVal3.reticleIndex = CoD.CraftUtility.Gunsmith.RETICLE_NONE
	registerVal3.paintjobSlot = Enum.CustomizationPaintjobInvalidID.CUSTOMIZATION_INVALID_PAINTJOB_SLOT
	registerVal3.paintjobIndex = Enum.CustomizationPaintjobInvalidID.CUSTOMIZATION_INVALID_PAINTJOB_INDEX
	registerVal4 = CoD.GetCustomization(arg0, "weapon_index")
	if not registerVal4 then
	end
	registerVal3.weaponIndex = CoD.CraftUtility.Gunsmith.EMPTY_ITEM_INDEX
	registerVal3.variantIndex = arg1
	registerVal3.sortIndex = CoD.CraftUtility.Gunsmith.EMPTY_ITEM_INDEX
	if registerVal2 ~= nil and registerVal2.variant ~= nil then
		registerVal3.attachment = {}
		registerVal3.attachmentVariant = {}
		local registerVal5 = registerVal2.variant[arg1].variantName:get()
		registerVal3.variantName = registerVal5
		registerVal5 = registerVal2.variant[arg1].camoIndex:get()
		registerVal3.camoIndex = registerVal5
		registerVal5 = registerVal2.variant[arg1].reticleIndex:get()
		registerVal3.reticleIndex = registerVal5
		registerVal5 = registerVal2.variant[arg1].paintjobSlot:get()
		registerVal3.paintjobSlot = registerVal5
		registerVal5 = registerVal2.variant[arg1].paintjobIndex:get()
		registerVal3.paintjobIndex = registerVal5
		registerVal5 = registerVal2.variant[arg1].weaponIndex:get()
		registerVal3.weaponIndex = registerVal5
		registerVal5 = registerVal2.variant[arg1].variantIndex:get()
		registerVal3.variantIndex = registerVal5
		registerVal5 = registerVal2.variant[arg1].sortIndex:get()
		registerVal3.sortIndex = registerVal5
		registerVal5 = registerVal2.variant[arg1].readOnly:get()
		registerVal3.readOnly = registerVal5
		registerVal5 = registerVal2.variant[arg1].variantIndex:get()
		registerVal3.cacVariantIndex = (registerVal5 + 1.000000)
		if registerVal2.variant[arg1].createTime ~= nil then
			registerVal5 = Engine.GetLocalizedTimeStr(registerVal2.variant[arg1].createTime:get())
			registerVal3.createTime = registerVal5
		end
		for index5=1.000000, CoD.CraftUtility.Gunsmith.MAX_ATTACHMENTS, 1.000000 do
			table.insert(registerVal3.attachment, registerVal2.variant[arg1].attachment[(index5 - 1.000000)]:get())
		end
		for index5=1.000000, CoD.CraftUtility.Gunsmith.MAX_ATTACHMENTS, 1.000000 do
			table.insert(registerVal3.attachmentVariant, registerVal2.variant[arg1].attachmentVariant[(index5 - 1.000000)]:get())
		end
	end
	return registerVal3
end

function CoD.CraftUtility.Gunsmith.GetVariantIndexFromCACVaraintIndex(arg0, arg1)
	return CoD.CraftUtility.Gunsmith.GetVariantByIndex(arg0, (arg1 - 1.000000))
end

function CoD.CraftUtility.Gunsmith.IsVariantIndexOccupied(arg0)
	if CoD.CraftUtility.Gunsmith.CachedVariants[(arg0 + 1.000000)].weaponIndex ~= CoD.CraftUtility.Gunsmith.EMPTY_ITEM_INDEX then
		return true
	end
	return false
end

function CoD.CraftUtility.Gunsmith.WriteVariantAttachmentDataToDDL(arg0, arg1)
	local registerVal2 = CoD.CraftUtility.GetDDLRoot(arg0, CoD.CraftUtility.Gunsmith.GetFileType())
	local registerVal3 = Engine.GetModelValue(Engine.GetModel(arg1, "variantIndex"))
	if registerVal2 and arg1 and registerVal2.variant[registerVal3] then
		local registerVal5 = CoD.CraftUtility.Gunsmith.GetSortedAttachmentList(arg0, arg1)
		for index6=1.000000, CoD.CraftUtility.Gunsmith.MAX_ATTACHMENTS, 1.000000 do
			if registerVal5.baseAttachmentList[index6] and registerVal5.attachmentVariantList[index6] then
				registerVal2.variant[registerVal3].attachment[(index6 - 1.000000)]:set(registerVal5.baseAttachmentList[index6])
				registerVal2.variant[registerVal3].attachmentVariant[(index6 - 1.000000)]:set(registerVal5.attachmentVariantList[index6])
			end
		end
	end
end

function CoD.CraftUtility.Gunsmith.WriteVaraintDataToDDL(arg0, arg1)
	local registerVal2 = CoD.CraftUtility.GetDDLRoot(arg0, CoD.CraftUtility.Gunsmith.GetFileType())
	if registerVal2 ~= nil and registerVal2.variant ~= nil then
		local registerVal3 = Engine.GetModelValue(Engine.GetModel(arg1, "variantIndex"))
		registerVal2.variant[registerVal3].variantName:set(Engine.GetModelValue(Engine.GetModel(arg1, "variantName")))
		registerVal2.variant[registerVal3].camoIndex:set(Engine.GetModelValue(Engine.GetModel(arg1, "camoIndex")))
		registerVal2.variant[registerVal3].reticleIndex:set(Engine.GetModelValue(Engine.GetModel(arg1, "reticleIndex")))
		registerVal2.variant[registerVal3].paintjobSlot:set(Engine.GetModelValue(Engine.GetModel(arg1, "paintjobSlot")))
		registerVal2.variant[registerVal3].paintjobIndex:set(Engine.GetModelValue(Engine.GetModel(arg1, "paintjobIndex")))
		registerVal2.variant[registerVal3].sortIndex:set(Engine.GetModelValue(Engine.GetModel(arg1, "sortIndex")))
		registerVal2.variant[registerVal3].createTime:set(Engine.GetCurrentUTCTimeStr())
		local registerVal5 = Engine.GetModelValue(Engine.GetModel(arg1, "weaponIndex"))
		registerVal2.variant[registerVal3].weaponIndex:set(registerVal5)
		CoD.CraftUtility.Gunsmith.WriteVariantAttachmentDataToDDL(arg0, arg1)
		CoD.CraftUtility.UploadAndParseBuffer(arg0, Enum.StorageFileType.STORAGE_GUNSMITH)
	end
end

function CoD.CraftUtility.Gunsmith.RenameVariant(arg0, arg1, arg2)
	local registerVal3 = CoD.CraftUtility.GetDDLRoot(arg0, CoD.CraftUtility.Gunsmith.GetFileType())
	if registerVal3 ~= nil then
		registerVal3.variant[arg1].variantName:set(arg2)
		CoD.CraftUtility.UploadAndParseBuffer(arg0, Enum.StorageFileType.STORAGE_GUNSMITH)
	end
end

function CoD.CraftUtility.Gunsmith.ClearVariant(arg0, arg1)
	local registerVal2 = CoD.CraftUtility.GetDDLRoot(arg0, CoD.CraftUtility.Gunsmith.GetFileType())
	if registerVal2 ~= nil and registerVal2.variant[arg1] then
		registerVal2.variant[arg1].variantName:set("")
		registerVal2.variant[arg1].variantIndex:set(arg1)
		registerVal2.variant[arg1].camoIndex:set(CoD.CraftUtility.Gunsmith.CAMO_NONE)
		registerVal2.variant[arg1].reticleIndex:set(CoD.CraftUtility.Gunsmith.RETICLE_NONE)
		registerVal2.variant[arg1].paintjobSlot:set(Enum.CustomizationPaintjobInvalidID.CUSTOMIZATION_INVALID_PAINTJOB_SLOT)
		registerVal2.variant[arg1].paintjobIndex:set(Enum.CustomizationPaintjobInvalidID.CUSTOMIZATION_INVALID_PAINTJOB_INDEX)
		registerVal2.variant[arg1].weaponIndex:set(CoD.CraftUtility.Gunsmith.EMPTY_ITEM_INDEX)
		registerVal2.variant[arg1].sortIndex:set(CoD.CraftUtility.Gunsmith.EMPTY_ITEM_INDEX)
		registerVal2.variant[arg1].readOnly:set(CoD.CraftUtility.DEFAULT_READ_ONLY_FLAG)
		for index4=1.000000, CoD.CraftUtility.Gunsmith.MAX_ATTACHMENTS, 1.000000 do
			registerVal2.variant[arg1].attachment[(index4 - 1.000000)]:set(CoD.CraftUtility.Gunsmith.EMPTY_ITEM_INDEX)
		end
		for index4=1.000000, CoD.CraftUtility.Gunsmith.MAX_ATTACHMENTS, 1.000000 do
			registerVal2.variant[arg1].attachmentVariant[(index4 - 1.000000)]:set(CoD.CraftUtility.Gunsmith.EMPTY_ITEM_INDEX)
		end
		CoD.CraftUtility.UploadAndParseBuffer(arg0, Enum.StorageFileType.STORAGE_GUNSMITH)
	end
end

function CoD.CraftUtility.Gunsmith.GetEmptyVariantIndex()
	for index1=1.000000, #, 1.000000 do
		if CoD.CraftUtility.Gunsmith.CachedVariants[index1].weaponIndex == CoD.CraftUtility.Gunsmith.EMPTY_ITEM_INDEX then
			return CoD.CraftUtility.Gunsmith.CachedVariants[index1].variantIndex
		end
	end
end

function CoD.CraftUtility.Gunsmith.Copy(arg0, arg1)
	local registerVal2 = CoD.CraftUtility.GetDDLRoot(arg0, CoD.CraftUtility.Gunsmith.GetFileType())
	local registerVal3 = CoD.CraftUtility.Gunsmith.GetEmptyVariantIndex()
	if registerVal2 ~= nil and 0.000000 <= registerVal3 then
		registerVal2.variant[registerVal3].variantName:set(registerVal2.variant[arg1].variantName:get())
		registerVal2.variant[registerVal3].camoIndex:set(registerVal2.variant[arg1].camoIndex:get())
		registerVal2.variant[registerVal3].reticleIndex:set(registerVal2.variant[arg1].reticleIndex:get())
		registerVal2.variant[registerVal3].paintjobSlot:set(registerVal2.variant[arg1].paintjobSlot:get())
		registerVal2.variant[registerVal3].paintjobIndex:set(registerVal2.variant[arg1].paintjobIndex:get())
		registerVal2.variant[registerVal3].weaponIndex:set(registerVal2.variant[arg1].weaponIndex:get())
		for index6=1.000000, CoD.CraftUtility.Gunsmith.MAX_ATTACHMENTS, 1.000000 do
			registerVal2.variant[registerVal3].attachment[(index6 - 1.000000)]:set(registerVal2.variant[arg1].attachment[(index6 - 1.000000)]:get())
		end
		for index6=1.000000, CoD.CraftUtility.Gunsmith.MAX_ATTACHMENTS, 1.000000 do
			registerVal2.variant[registerVal3].attachmentVariant[(index6 - 1.000000)]:set(registerVal2.variant[arg1].attachmentVariant[(index6 - 1.000000)]:get())
		end
		local registerVal6 = CoD.CraftUtility.Gunsmith.GetHighestSortIndexForWeapon(registerVal2.variant[arg1].weaponIndex:get())
		registerVal2.variant[registerVal3].sortIndex:set((registerVal6 + 1.000000))
		CoD.CraftUtility.UploadAndParseBuffer(arg0, Enum.StorageFileType.STORAGE_GUNSMITH)
		return registerVal3
	end
end

function CoD.CraftUtility.Gunsmith.AddAttachmentToWeapon(arg0, arg1)
	if arg1 ~= CoD.CraftUtility.Gunsmith.EMPTY_ITEM_INDEX then
		local registerVal2 = Engine.GetAttachmentRefByIndex(arg1)
	end
	return (arg0 .. "+" .. registerVal2)
end

function CoD.CraftUtility.Gunsmith.AddAttachmentVariant(arg0, arg1, arg2)
	if arg0 or not arg2 then
		return arg0
	end
	local registerVal3 = Engine.GetAttachmentRefByIndex(arg1)
	if not registerVal3 then
		return arg0
	end
	return ((arg0 .. registerVal3 .. ",") .. arg2 .. ",")
end

function CoD.CraftUtility.Gunsmith.GetWeaponByVariantIndex(arg0, arg1)
	local registerVal2 = CoD.CraftUtility.Gunsmith.GetVariantByIndex(arg0, arg1)
	local registerVal3 = Engine.GetItemRef(registerVal2.weaponIndex, Enum.eModes.MODE_MULTIPLAYER)
	if registerVal2.weaponIndex == 0.000000 then
		local registerVal5 = CoD.GetCustomization(arg0, "weapon_index")
		local registerVal4 = Engine.GetItemRef(registerVal5, Enum.eModes.MODE_MULTIPLAYER)
	end
	registerVal5 = CoD.CraftUtility.GetModeAbbreviation()
	if registerVal2.weaponIndex ~= CoD.CraftUtility.Gunsmith.EMPTY_ITEM_INDEX then
		for index5=1.000000, CoD.CraftUtility.Gunsmith.MAX_ATTACHMENTS, 1.000000 do
			local registerVal10 = CoD.CraftUtility.Gunsmith.AddAttachmentToWeapon((registerVal4 .. registerVal5), registerVal2.attachment[index5])
		end
	end
	return registerVal10
end

function CoD.CraftUtility.Gunsmith.GetAttachmentVariantByVariantIndex(arg0, arg1)
	local registerVal2 = CoD.CraftUtility.Gunsmith.GetVariantByIndex(arg0, arg1)
	local registerVal3 = Engine.GetItemRef(registerVal2.weaponIndex, Enum.eModes.MODE_MULTIPLAYER)
	if registerVal2.weaponIndex == 0.000000 then
		local registerVal5 = CoD.GetCustomization(arg0, "weapon_index")
		local registerVal4 = Engine.GetItemRef(registerVal5, Enum.eModes.MODE_MULTIPLAYER)
	end
	if registerVal2.weaponIndex ~= CoD.CraftUtility.Gunsmith.EMPTY_ITEM_INDEX then
		for index5=1.000000, CoD.CraftUtility.Gunsmith.MAX_ATTACHMENTS, 1.000000 do
			if registerVal2.attachment[index5] ~= CoD.CraftUtility.Gunsmith.EMPTY_ITEM_INDEX then
				local registerVal11 = CoD.CraftUtility.Gunsmith.AddAttachmentVariant("", registerVal2.attachment[index5], registerVal2.attachmentVariant[index5])
			end
		end
	end
	return registerVal11
end

function CoD.CraftUtility.Gunsmith.GetWeaponPlusAttachmentsForVariant(arg0, arg1)
	local registerVal3 = CoD.GetCustomization(arg0, "weapon_index")
	local registerVal2 = Engine.GetItemRef(registerVal3, Enum.eModes.MODE_MULTIPLAYER)
	local registerVal4 = CoD.CraftUtility.GetModeAbbreviation()
	if arg1 then
		for index4=1.000000, CoD.CraftUtility.Gunsmith.MAX_ATTACHMENTS, 1.000000 do
			local registerVal8 = Engine.GetModel(arg1, ("attachment" .. index4))
			local registerVal9 = Engine.GetModelValue(registerVal8)
			local registerVal10 = CoD.CraftUtility.Gunsmith.AddAttachmentToWeapon((registerVal2 .. registerVal4), registerVal9)
		end
	end
	return registerVal10
end

function CoD.CraftUtility.Gunsmith.GetWeaponAttachmentList(arg0, arg1)
	local registerVal2 = CoD.GetCustomization(arg0, "weapon_index")
	local registerVal3 = Engine.GetItemRef(registerVal2, Enum.eModes.MODE_MULTIPLAYER)
	if arg1 then
		for index5=1.000000, CoD.CraftUtility.Gunsmith.MAX_ATTACHMENTS, 1.000000 do
			local registerVal9 = Engine.GetModel(arg1, ("attachment" .. index5))
			local registerVal10 = Engine.GetModelValue(registerVal9)
			if registerVal10 ~= CoD.CraftUtility.Gunsmith.EMPTY_ITEM_INDEX then
				local registerVal11 = Engine.GetAttachmentRefByIndex(registerVal10)
				local registerVal12 = Engine.GetAttachmentIndexByAttachmentTableIndex(registerVal2, registerVal10, Enum.eModes.MODE_MULTIPLAYER)
				local registerVal15 = {}
				registerVal15.index = registerVal12
				registerVal15.ref = registerVal11
				table.insert({}, registerVal15)
			end
		end
	end
	return {}
end

function CoD.CraftUtility.Gunsmith.GetWeaponAttachmentVariantString(arg0, arg1)
	local registerVal3 = CoD.GetCustomization(arg0, "weapon_index")
	local registerVal2 = Engine.GetItemRef(registerVal3, Enum.eModes.MODE_MULTIPLAYER)
	if arg1 then
		for index4=1.000000, CoD.CraftUtility.Gunsmith.MAX_ATTACHMENTS, 1.000000 do
			local registerVal8 = Engine.GetModel(arg1, ("attachment" .. index4))
			local registerVal9 = Engine.GetModelValue(registerVal8)
			if registerVal9 ~= CoD.CraftUtility.Gunsmith.EMPTY_ITEM_INDEX then
				local registerVal10 = Engine.GetModel(arg1, ("attachmentVariant" .. index4))
				local registerVal11 = Engine.GetModelValue(registerVal10)
				local registerVal12 = CoD.CraftUtility.Gunsmith.AddAttachmentVariant("", registerVal9, registerVal11)
			end
		end
	end
	return registerVal12
end

function CoD.CraftUtility.Gunsmith.GetWeaponAttachmentStringWithoutVariants(arg0, arg1)
	local registerVal3 = CoD.GetCustomization(arg0, "weapon_index")
	local registerVal2 = Engine.GetItemRef(registerVal3, Enum.eModes.MODE_MULTIPLAYER)
	if arg1 then
		for index4=1.000000, CoD.CraftUtility.Gunsmith.MAX_ATTACHMENTS, 1.000000 do
			local registerVal8 = Engine.GetModel(arg1, ("attachment" .. index4))
			local registerVal9 = Engine.GetModelValue(registerVal8)
			if registerVal9 ~= CoD.CraftUtility.Gunsmith.EMPTY_ITEM_INDEX then
				local registerVal10 = CoD.CraftUtility.Gunsmith.AddAttachmentVariant("", registerVal9, 0.000000)
			end
		end
	end
	return registerVal10
end

function CoD.CraftUtility.Gunsmith.GetAttachmentVariantStringWithSelectedVariant(arg0, arg1, arg2, arg3)
	local registerVal5 = CoD.GetCustomization(arg0, "weapon_index")
	local registerVal4 = Engine.GetItemRef(registerVal5, Enum.eModes.MODE_MULTIPLAYER)
	if arg1 then
		for index6=1.000000, CoD.CraftUtility.Gunsmith.MAX_ATTACHMENTS, 1.000000 do
			local registerVal10 = Engine.GetModel(arg1, ("attachment" .. index6))
			local registerVal11 = Engine.GetModelValue(registerVal10)
			if registerVal11 ~= CoD.CraftUtility.Gunsmith.EMPTY_ITEM_INDEX then
				local registerVal12 = Engine.GetModel(arg1, ("attachmentVariant" .. index6))
				local registerVal13 = Engine.GetModelValue(registerVal12)
				if arg2 == registerVal11 then
					local registerVal14 = CoD.CraftUtility.Gunsmith.AddAttachmentVariant("", registerVal11, arg3)
				else
					registerVal14 = CoD.CraftUtility.Gunsmith.AddAttachmentVariant(registerVal14, registerVal11, registerVal13)
				end
			end
		end
	end
	return registerVal14
end

function CoD.CraftUtility.Gunsmith.DisplayBaseWeapon(arg0, arg1, arg2)
	local registerVal3 = CoD.GetCustomization(arg2, "weapon_index")
	if true and CoD.perController[arg2].editingWeaponBuildKits then
		local registerVal6 = IsCACItemLocked(arg0, arg1, arg2)
	end
	registerVal6 = Engine.GetItemRef(registerVal3, Enum.eModes.MODE_MULTIPLAYER)
	local registerVal8 = CoD.CraftUtility.GetModeAbbreviation()
	registerVal8 = CoD.CraftUtility.GetLoadoutSlot(arg2)
	local registerVal9 = CoD.CACUtility.GetCameraNameForAttachments((registerVal6 .. registerVal8))
	local registerVal14 = CoD.GetLocalClientAdjustedNum(arg2)
	Engine.SendClientScriptNotify(arg2, ("CustomClass_update" .. registerVal14), registerVal8, (registerVal6 .. registerVal8), registerVal9, "0,0,0", nil, (not true))
end

function CoD.CraftUtility.Gunsmith.DisplayWeaponWithPaintjob(arg0, arg1, arg2)
	local registerVal4 = CoD.GetCustomization(arg0, "weapon_index")
	local registerVal3 = Engine.GetItemRef(registerVal4, Enum.eModes.MODE_MULTIPLAYER)
	local registerVal5 = CoD.CraftUtility.GetModeAbbreviation()
	registerVal5 = CoD.CraftUtility.GetLoadoutSlot(arg0)
	local registerVal6 = CoD.CACUtility.GetCameraNameForAttachments((registerVal3 .. registerVal5))
	Engine.SetupPaintjobData(arg0, arg2, arg1)
	local registerVal11 = CoD.GetLocalClientAdjustedNum(arg0)
	Engine.SendClientScriptNotify(arg0, ("CustomClass_update" .. registerVal11), registerVal5, (registerVal3 .. registerVal5), registerVal6, "0,0,1")
end

function CoD.CraftUtility.Gunsmith.DisplayWeaponWithVariant(arg0, arg1, arg2, arg3, arg4, arg5)
	if arg1 then
		local registerVal6 = CoD.CraftUtility.GetLoadoutSlot(arg0)
		local registerVal7 = CoD.CraftUtility.Gunsmith.GetWeaponPlusAttachmentsForVariant(arg0, arg1)
		local registerVal8 = CoD.CACUtility.GetCameraNameForAttachments(registerVal7, arg2)
		if arg5 == nil then
			local registerVal9 = Engine.GetModelValue(Engine.GetModel(arg1, "camoIndex"))
		end
		if arg3 == nil then
			registerVal9 = Engine.GetModelValue(Engine.GetModel(arg1, "paintjobSlot"))
		end
		if arg4 == nil then
			registerVal9 = Engine.GetModelValue(Engine.GetModel(arg1, "paintjobIndex"))
		end
		Engine.SetupPaintjobData(arg0, registerVal9, registerVal9)
		local registerVal10 = CoD.CraftUtility.Gunsmith.GetWeaponAttachmentVariantString(arg0, arg1)
		local registerVal14 = CoD.GetLocalClientAdjustedNum(arg0)
		Engine.SendClientScriptNotify(arg0, ("CustomClass_update" .. registerVal14), registerVal6, registerVal7, registerVal8, (registerVal9 .. ",0,1"), registerVal10)
	end
end

function CoD.CraftUtility.Gunsmith.GetVariantAttachmentList(arg0, arg1)
	if arg1 then
		for index3=1.000000, CoD.CraftUtility.Gunsmith.MAX_ATTACHMENTS, 1.000000 do
			local registerVal7 = Engine.GetModel(arg1, ("attachment" .. index3))
			local registerVal8 = Engine.GetModelValue(registerVal7)
			table.insert({}, registerVal8)
		end
	end
	return {}
end

function CoD.CraftUtility.Gunsmith.ClearVariantSlotByAttachmentIndex(arg0, arg1, arg2)
	if arg1 then
		for index3=1.000000, CoD.CraftUtility.Gunsmith.MAX_ATTACHMENTS, 1.000000 do
			local registerVal7 = Engine.GetModel(arg1, ("attachment" .. index3))
			local registerVal8 = Engine.GetModelValue(registerVal7)
			local registerVal9 = Engine.GetModel(arg1, ("attachmentVariant" .. index3))
			Engine.SetModelValue(registerVal9, CoD.CraftUtility.Gunsmith.EMPTY_ITEM_INDEX)
			Engine.SetModelValue(registerVal7, CoD.CraftUtility.Gunsmith.EMPTY_ITEM_INDEX)
			if arg2 == registerVal8 and index3 == 1.000000 then
				local registerVal10 = Engine.GetModel(arg1, "reticleIndex")
				Engine.SetModelValue(registerVal10, CoD.CraftUtility.Gunsmith.RETICLE_NONE)
			end
		end
	end
end

function CoD.CraftUtility.Gunsmith.IsFocusAttachmentEquipped(arg0, arg1, arg2)
	if arg1 then
		for index3=1.000000, CoD.CraftUtility.Gunsmith.MAX_ATTACHMENTS, 1.000000 do
			local registerVal7 = Engine.GetModel(arg1, ("attachment" .. index3))
			local registerVal8 = Engine.GetModelValue(registerVal7)
			if arg2 == registerVal8 then
				return true
			end
		end
	end
end

function CoD.CraftUtility.Gunsmith.SetFocusAttachmentVariant(arg0, arg1, arg2, arg3)
	if arg1 then
		for index4=1.000000, CoD.CraftUtility.Gunsmith.MAX_ATTACHMENTS, 1.000000 do
			local registerVal8 = Engine.GetModel(arg1, ("attachment" .. index4))
			local registerVal9 = Engine.GetModelValue(registerVal8)
			local registerVal10 = Engine.GetModel(arg1, ("attachmentVariant" .. index4))
			if arg2 == registerVal9 then
				Engine.SetModelValue(registerVal10, arg3)
			end
		end
	end
end

function CoD.CraftUtility.Gunsmith.InvalidateRender(arg0, arg1)
	local registerVal2 = Engine.GetModelValue(Engine.GetModel(arg1, "paintjobSlot"))
	local registerVal3 = Engine.GetModelValue(Engine.GetModel(arg1, "paintjobIndex"))
	CoD.CraftUtility.InvalidateWCItemRender(registerVal2, registerVal3)
end

CoD.CraftUtility.Paintjobs = {}
CoD.CraftUtility.Paintjobs.CachedPaintjobs = {}
CoD.CraftUtility.Paintjobs.EMPTY_PAINTJOB_SLOT_WEAPON_INDEX = 0.000000
function CoD.CraftUtility.Paintjobs.GetPrevViewIndex(arg0)
	local registerVal1 = CoD.CraftUtility.GetWeaponGroupName(arg0)
	if (CoD.perController[arg0].viewIndex - 1.000000) == 0.000000 then
	end
	local registerVal5 = CoD.GetCustomization(arg0, "weapon_index")
	local registerVal4 = Engine.GetItemRef(registerVal5, Enum.eModes.MODE_MULTIPLAYER)
	if registerVal1 ~= "weapon_knife" and registerVal4 ~= "special_crossbow" and registerVal4 ~= "ar_m16" and registerVal4 ~= "ar_galil" and registerVal4 ~= "lmg_rpk" and registerVal4 == "smg_sten2" or registerVal4 == "knife_ballistic" then
		if #CoD.Paintshop.View == 2.000000 then
		end
	end
	return (#CoD.Paintshop.View - 1.000000)
end

function CoD.CraftUtility.Paintjobs.GetNextViewIndex(arg0)
	local registerVal1 = CoD.CraftUtility.GetWeaponGroupName(arg0)
	local registerVal5 = CoD.GetCustomization(arg0, "weapon_index")
	local registerVal4 = Engine.GetItemRef(registerVal5, Enum.eModes.MODE_MULTIPLAYER)
	if registerVal1 ~= "weapon_knife" and registerVal4 ~= "special_crossbow" and registerVal4 ~= "ar_m16" and registerVal4 ~= "ar_galil" and registerVal4 ~= "lmg_rpk" and registerVal4 == "smg_sten2" or registerVal4 == "knife_ballistic" then
		if ((CoD.perController[arg0].viewIndex % #CoD.Paintshop.View) + 1.000000) == 2.000000 then
		end
	end
	return (((CoD.perController[arg0].viewIndex % #CoD.Paintshop.View) + 1.000000) + 1.000000)
end

function CoD.CraftUtility.Paintjobs.GetTotalWeaponPaintjobs(arg0)
	local registerVal3 = Engine.GetPaintjobSlotInfo()
	for index6=0.000000, (registerVal3.slot_count - 1.000000), 1.000000 do
		if CoD.CraftUtility.Paintjobs.CachedPaintjobs[index6] then
			for index11=0.000000, (registerVal3.paintjobs_per_slot - 1.000000), 1.000000 do
				if CoD.CraftUtility.Paintjobs.CachedPaintjobs[index6][index11] and CoD.CraftUtility.Paintjobs.CachedPaintjobs[index6][index11].weaponIndex == arg0 and arg0 ~= CoD.CraftUtility.Paintjobs.EMPTY_PAINTJOB_SLOT_WEAPON_INDEX then
				end
			end
		end
	end
	return (0.000000 + 1.000000)
end

function CoD.CraftUtility.Paintjobs.GetTotalWeaponPaintjobsByWeaponGroup(arg0)
	local registerVal3 = Engine.GetPaintjobSlotInfo()
	for index6=0.000000, (registerVal3.slot_count - 1.000000), 1.000000 do
		if CoD.CraftUtility.Paintjobs.CachedPaintjobs[index6] then
			for index11=0.000000, (registerVal3.paintjobs_per_slot - 1.000000), 1.000000 do
				local registerVal16 = Engine.GetWeaponGroup(CoD.CraftUtility.Paintjobs.CachedPaintjobs[index6][index11].weaponIndex, Enum.eModes.MODE_MULTIPLAYER)
				local registerVal17 = tonumber(arg0)
				if CoD.CraftUtility.Paintjobs.CachedPaintjobs[index6][index11] and registerVal16 == registerVal17 then
				end
			end
		end
	end
	return (0.000000 + 1.000000)
end

function CoD.CraftUtility.Paintjobs.GetTotalUsedPaintjobs()
	local registerVal2 = Engine.GetPaintjobSlotInfo()
	for index5=0.000000, (registerVal2.slot_count - 1.000000), 1.000000 do
		if CoD.CraftUtility.Paintjobs.CachedPaintjobs[index5] then
			for index10=0.000000, (registerVal2.paintjobs_per_slot - 1.000000), 1.000000 do
				if CoD.CraftUtility.Paintjobs.CachedPaintjobs[index5][index10] and CoD.CraftUtility.Paintjobs.CachedPaintjobs[index5][index10].weaponIndex ~= CoD.CraftUtility.Paintjobs.EMPTY_PAINTJOB_SLOT_WEAPON_INDEX then
				end
			end
		end
	end
	return (0.000000 + 1.000000)
end

function CoD.CraftUtility.Paintjobs.GetHighestSortIndexForWeapon(arg0)
	local registerVal3 = Engine.GetPaintjobSlotInfo()
	for index6=0.000000, (registerVal3.slot_count - 1.000000), 1.000000 do
		if CoD.CraftUtility.Paintjobs.CachedPaintjobs[index6] then
			for index11=0.000000, (registerVal3.paintjobs_per_slot - 1.000000), 1.000000 do
				if CoD.CraftUtility.Paintjobs.CachedPaintjobs[index6][index11] and CoD.CraftUtility.Paintjobs.CachedPaintjobs[index6][index11].weaponIndex == arg0 and CoD.CraftUtility.Gunsmith.EMPTY_ITEM_INDEX < CoD.CraftUtility.Paintjobs.CachedPaintjobs[index6][index11].sortIndex then
				end
			end
		end
	end
	return CoD.CraftUtility.Paintjobs.CachedPaintjobs[index6][index11].sortIndex
end

function CoD.CraftUtility.Paintjobs.GetCACPaintjobList(arg0)
	local registerVal3 = Engine.GetPaintjobSlotInfo()
	for index6=0.000000, (registerVal3.slot_count - 1.000000), 1.000000 do
		if CoD.CraftUtility.Paintjobs.CachedPaintjobs[index6] then
			for index11=0.000000, (registerVal3.paintjobs_per_slot - 1.000000), 1.000000 do
				if CoD.CraftUtility.Paintjobs.CachedPaintjobs[index6][index11] and CoD.CraftUtility.Paintjobs.CachedPaintjobs[index6][index11].weaponIndex == arg0 then
					table.insert({}, CoD.CraftUtility.Paintjobs.CachedPaintjobs[index6][index11])
				end
			end
		end
	end
	local function __FUNC_E6E4_(arg0, arg1)
		if arg1.sortIndex >= arg0.sortIndex then
		end
		return true
	end

	table.sort({}, __FUNC_E6E4_)
	return {}
end

function CoD.CraftUtility.Paintjobs.GetSortedWeaponPaintjobList(arg0, arg1)
	local registerVal5 = Engine.GetPaintjobSlotInfo()
	for index8=0.000000, (registerVal5.slot_count - 1.000000), 1.000000 do
		if CoD.CraftUtility.Paintjobs.CachedPaintjobs[index8] then
			for index13=0.000000, (registerVal5.paintjobs_per_slot - 1.000000), 1.000000 do
				if CoD.CraftUtility.Paintjobs.CachedPaintjobs[index8][index13] then
					if arg1 then
						if arg1 ~= "" or CoD.CraftUtility.Paintjobs.CachedPaintjobs[index8][index13].weaponIndex == CoD.CraftUtility.Gunsmith.EMPTY_ITEM_INDEX then
							local registerVal18 = Engine.GetWeaponGroup(CoD.CraftUtility.Paintjobs.CachedPaintjobs[index8][index13].weaponIndex, Enum.eModes.MODE_MULTIPLAYER)
							local registerVal19 = tonumber(arg1)
							if registerVal18 == registerVal19 then
								table.insert({}, CoD.CraftUtility.Paintjobs.CachedPaintjobs[index8][index13])
							else
								if arg0 == nil and CoD.CraftUtility.Paintjobs.CachedPaintjobs[index8][index13].weaponIndex ~= 0.000000 then
									table.insert({}, CoD.CraftUtility.Paintjobs.CachedPaintjobs[index8][index13])
								else
									if CoD.CraftUtility.Paintjobs.CachedPaintjobs[index8][index13].weaponIndex == CoD.CraftUtility.Paintjobs.EMPTY_PAINTJOB_SLOT_WEAPON_INDEX and not false then
										registerVal18 = CoD.CraftUtility.Paintjobs.GetHighestSortIndexForWeapon(arg0)
										CoD.CraftUtility.Paintjobs.CachedPaintjobs[index8][index13].sortIndex = (registerVal18 + 1.000000)
										table.insert({}, CoD.CraftUtility.Paintjobs.CachedPaintjobs[index8][index13])
									else
										if CoD.CraftUtility.Paintjobs.CachedPaintjobs[index8][index13].weaponIndex == arg0 then
											table.insert({}, CoD.CraftUtility.Paintjobs.CachedPaintjobs[index8][index13])
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
	local function __FUNC_EC00_(arg0, arg1)
		if arg1.sortIndex >= arg0.sortIndex then
		end
		return true
	end

	table.sort({}, __FUNC_EC00_)
	return {}
end

function CoD.CraftUtility.Paintjobs.GetTotalAllowedPaintjobs(arg0)
	local registerVal1 = MediaManagerGetQuotaForCategory(arg0, "paintjob")
	return registerVal1.categoryQuota
end

function CoD.CraftUtility.Paintjobs.IsPaintjobIndexOccupied(arg0, arg1)
	if CoD.CraftUtility.Paintjobs.CachedPaintjobs[arg0][arg1].weaponIndex ~= CoD.CraftUtility.Paintjobs.EMPTY_PAINTJOB_SLOT_WEAPON_INDEX then
		return true
	end
	return false
end

function CoD.CraftUtility.Paintjobs.ParseDDL(arg0, arg1)
	local registerVal2 = Engine.GetPaintjobSlotInfo()
	local registerVal5 = CoD.CraftUtility.Paintjobs.GetTotalAllowedPaintjobs(arg0)
	if (registerVal2.slot_count * registerVal2.paintjobs_per_slot) < registerVal5 then
		error(("Paintjob DDL: DDL does not support " .. registerVal5 .. " paintjobs."))
		return false
	end
	for index6=0.000000, (registerVal2.slot_count - 1.000000), 1.000000 do
		local registerVal10 = CoD.CraftUtility.GetDDLRoot(arg0, arg1, index6)
		CoD.CraftUtility.Paintjobs.CachedPaintjobs[index6] = {}
		if registerVal10 == nil then
			CoD.CraftUtility.Paintjobs.CachedPaintjobs = {}
			return false
		end
		for index11=0.000000, (registerVal2.paintjobs_per_slot - 1.000000), 1.000000 do
			if registerVal5 <= ((index6 * registerVal2.paintjobs_per_slot) + index11) then
				return true
			end
			local registerVal18 = registerVal10.weaponPaintjob[index11].weaponIndex:get()
			{}.weaponIndex = registerVal18
			registerVal18 = registerVal10.weaponPaintjob[index11].sortIndex:get()
			{}.sortIndex = registerVal18
			registerVal18 = registerVal10.weaponPaintjob[index11].paintjobName:get()
			{}.paintjobName = registerVal18
			{}.paintjobSlot = index6
			{}.paintjobIndex = index11
			registerVal18 = registerVal10.weaponPaintjob[index11].readOnly:get()
			{}.readOnly = registerVal18
			if registerVal10.weaponPaintjob[index11].createTime ~= nil then
				registerVal18 = Engine.GetLocalizedTimeStr(registerVal10.weaponPaintjob[index11].createTime:get())
				{}.createTime = registerVal18
			end
			CoD.CraftUtility.Paintjobs.CachedPaintjobs[index6][index11] = {}
		end
	end
	return true
end

function CoD.CraftUtility.Paintjobs.InvalidateRender(arg0, arg1)
	local registerVal2 = Engine.GetModelValue(Engine.GetModel(arg1, "paintjobSlot"))
	local registerVal3 = Engine.GetModelValue(Engine.GetModel(arg1, "paintjobIndex"))
	CoD.CraftUtility.InvalidateWCItemRender(registerVal2, registerVal3)
end

function CoD.CraftUtility.Paintjobs.UploadPaintjob(arg0, arg1)
	local registerVal2 = Engine.GetModelValue(Engine.GetModel(arg1, "paintjobSlot"))
	local registerVal3 = Engine.GetModelValue(Engine.GetModel(arg1, "paintjobIndex"))
	local registerVal4 = Engine.GetModelValue(Engine.GetModel(arg1, "weaponIndex"))
	local registerVal5 = Engine.GetModelValue(Engine.GetModel(arg1, "sortIndex"))
	local registerVal6 = Engine.GetModelValue(Engine.GetModel(arg1, "paintjobName"))
	local registerVal7 = CoD.CraftUtility.GetDDLRoot(arg0, Enum.StorageFileType.STORAGE_PAINTJOBS, registerVal2)
	if registerVal7 ~= nil then
		registerVal7.weaponPaintjob[registerVal3].weaponIndex:set(registerVal4)
		registerVal7.weaponPaintjob[registerVal3].sortIndex:set(registerVal5)
		registerVal7.weaponPaintjob[registerVal3].paintjobName:set(registerVal6)
		registerVal7.weaponPaintjob[registerVal3].createTime:set(Engine.GetCurrentUTCTimeStr())
		Engine.UploadPaintjobData(arg0, registerVal2, registerVal3)
	end
end

function CoD.CraftUtility.Paintjobs.GetEmptyPaintjob(arg0)
	local registerVal2 = Engine.GetPaintjobSlotInfo()
	for index5=0.000000, (registerVal2.slot_count - 1.000000), 1.000000 do
		if CoD.CraftUtility.Paintjobs.CachedPaintjobs[index5] then
			for index10=0.000000, (registerVal2.paintjobs_per_slot - 1.000000), 1.000000 do
				if CoD.CraftUtility.Paintjobs.CachedPaintjobs[index5][index10].weaponIndex == CoD.CraftUtility.Paintjobs.EMPTY_PAINTJOB_SLOT_WEAPON_INDEX then
					local registerVal15 = CoD.CraftUtility.Paintjobs.GetHighestSortIndexForWeapon(arg0)
					CoD.CraftUtility.Paintjobs.CachedPaintjobs[index5][index10].sortIndex = (registerVal15 + 1.000000)
					return CoD.CraftUtility.Paintjobs.CachedPaintjobs[index5][index10]
				end
			end
		end
	end
end

function CoD.CraftUtility.Paintjobs.Copy(arg0, arg1)
	local registerVal2 = Engine.GetModelValue(Engine.GetModel(arg1, "paintjobSlot"))
	local registerVal3 = Engine.GetModelValue(Engine.GetModel(arg1, "weaponIndex"))
	local registerVal4 = Engine.GetModelValue(Engine.GetModel(arg1, "paintjobName"))
	local registerVal5 = CoD.CraftUtility.GetDDLRoot(arg0, Enum.StorageFileType.STORAGE_PAINTJOBS, registerVal2)
	local registerVal6 = CoD.CraftUtility.Paintjobs.GetEmptyPaintjob(registerVal3)
	local registerVal7 = CoD.CraftUtility.GetDDLRoot(arg0, Enum.StorageFileType.STORAGE_PAINTJOBS, registerVal6.paintjobSlot)
	if registerVal5 ~= nil and registerVal6 ~= nil and registerVal7 ~= nil then
		registerVal7.weaponPaintjob[registerVal6.paintjobIndex].weaponIndex:set(registerVal3)
		registerVal7.weaponPaintjob[registerVal6.paintjobIndex].sortIndex:set(registerVal6.sortIndex)
		registerVal7.weaponPaintjob[registerVal6.paintjobIndex].paintjobName:set(registerVal4)
		Engine.UploadPaintjobData(arg0, registerVal6.paintjobSlot, registerVal6.paintjobIndex)
		return registerVal6.paintjobSlot, CoDLUIDecompiler.LuaRegister
	end
end

function CoD.CraftUtility.Paintjobs.RemovePaintJobFromLoadout(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = Engine.StorageGetBuffer(arg0, arg3)
	local registerVal6 = Engine.GetCustomClassCount(arg0, arg4)
	for index7=0.000000, (registerVal6 - 1.000000), 1.000000 do
		local registerVal11 = registerVal5.cacloadouts.customclass[index7].primarypaintjobslot:get()
		local registerVal12 = registerVal5.cacloadouts.customclass[index7].primarypaintjobindex:get()
		local registerVal13 = registerVal5.cacloadouts.customclass[index7].secondarypaintjobindex:get()
		local registerVal14 = registerVal5.cacloadouts.customclass[index7].secondarypaintjobslot:get()
		if registerVal11 == arg1 and registerVal12 == arg2 then
			registerVal5.cacloadouts.customclass[index7].primarypaintjobslot:set(Enum.CustomizationPaintjobInvalidID.CUSTOMIZATION_INVALID_PAINTJOB_SLOT)
			registerVal5.cacloadouts.customclass[index7].primarypaintjobindex:set(Enum.CustomizationPaintjobInvalidID.CUSTOMIZATION_INVALID_PAINTJOB_INDEX)
		end
		if registerVal14 == arg1 and registerVal13 == arg2 then
			registerVal5.cacloadouts.customclass[index7].secondarypaintjobslot:set(Enum.CustomizationPaintjobInvalidID.CUSTOMIZATION_INVALID_PAINTJOB_SLOT)
			registerVal5.cacloadouts.customclass[index7].secondarypaintjobindex:set(Enum.CustomizationPaintjobInvalidID.CUSTOMIZATION_INVALID_PAINTJOB_INDEX)
		end
	end
end

function CoD.CraftUtility.Paintjobs.RemovePaintJobFromVariantList(arg0, arg1, arg2, arg3)
	for index4=0.000000, (arg1 - 1.000000), 1.000000 do
		local registerVal8 = arg0.variant[index4].paintjobSlot:get()
		local registerVal9 = arg0.variant[index4].paintjobIndex:get()
		if registerVal8 == arg2 and registerVal9 == arg3 then
			arg0.variant[index4].paintjobSlot:set(Enum.CustomizationPaintjobInvalidID.CUSTOMIZATION_INVALID_PAINTJOB_SLOT)
			arg0.variant[index4].paintjobIndex:set(Enum.CustomizationPaintjobInvalidID.CUSTOMIZATION_INVALID_PAINTJOB_INDEX)
		end
	end
end

function CoD.CraftUtility.Paintjobs.RemovePaintJobFromZM(arg0, arg1, arg2)
	local registerVal3 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_ZM_LOADOUTS)
	CoD.CraftUtility.Paintjobs.RemovePaintJobFromVariantList(registerVal3.cacloadouts, #registerVal3.cacloadouts.variant, arg1, arg2)
end

function CoD.CraftUtility.Paintjobs.RemovePaintJobFromAllLoadouts(arg0, arg1, arg2)
	CoD.CraftUtility.Paintjobs.RemovePaintJobFromLoadout(arg0, arg1, arg2, Enum.StorageFileType.STORAGE_CP_LOADOUTS, Enum.eModes.MODE_CAMPAIGN)
	CoD.CraftUtility.Paintjobs.RemovePaintJobFromLoadout(arg0, arg1, arg2, Enum.StorageFileType.STORAGE_MP_LOADOUTS, Enum.eModes.MODE_MULTIPLAYER)
	CoD.CraftUtility.Paintjobs.RemovePaintJobFromZM(arg0, arg1, arg2)
end

function CoD.CraftUtility.Paintjobs.RemovePaintJobFromGunsmith(arg0, arg1, arg2)
	local registerVal3 = CoD.CraftUtility.GetDDLRoot(arg0, Enum.StorageFileType.STORAGE_GUNSMITH)
	local registerVal4 = CoD.CraftUtility.Gunsmith.GetMaxVariantCount(arg0, Enum.StorageFileType.STORAGE_GUNSMITH)
	CoD.CraftUtility.Paintjobs.RemovePaintJobFromVariantList(registerVal3, registerVal4, arg1, arg2)
end

function CoD.CraftUtility.Paintjobs.ClearPaintjob(arg0, arg1, arg2)
	local registerVal3 = CoD.CraftUtility.GetDDLRoot(arg0, Enum.StorageFileType.STORAGE_PAINTJOBS, arg1)
	if registerVal3 ~= nil then
		registerVal3.weaponPaintjob[arg2].paintjobName:set("")
		registerVal3.weaponPaintjob[arg2].sortIndex:set(CoD.CraftUtility.Paintjobs.EMPTY_PAINTJOB_SLOT_WEAPON_INDEX)
		registerVal3.weaponPaintjob[arg2].weaponIndex:set(CoD.CraftUtility.Paintjobs.EMPTY_PAINTJOB_SLOT_WEAPON_INDEX)
		registerVal3.weaponPaintjob[arg2].readOnly:set(CoD.CraftUtility.DEFAULT_READ_ONLY_FLAG)
		Engine.ClearPaintjobLayerData()
		Engine.UploadPaintjobData(arg0, arg1, arg2)
		CoD.CraftUtility.Paintjobs.RemovePaintJobFromAllLoadouts(arg0, arg1, arg2)
		CoD.CraftUtility.Paintjobs.RemovePaintJobFromGunsmith(arg0, arg1, arg2)
	end
end

function CoD.CraftUtility.Paintjobs.GetPaintjobName(arg0, arg1, arg2)
	local registerVal3 = CoD.CraftUtility.GetDDLRoot(arg0, Enum.StorageFileType.STORAGE_PAINTJOBS, arg1)
	if registerVal3 ~= nil then
		return registerVal3.weaponPaintjob[arg2].paintjobName:get()
	end
	return ""
end

function CoD.CraftUtility.Paintjobs.RenamePaintjob(arg0, arg1, arg2, arg3)
	local registerVal5 = CoD.CraftUtility.GetDDLRoot(arg0, Enum.StorageFileType.STORAGE_PAINTJOBS, arg1)
	if registerVal5 ~= nil then
		registerVal5.weaponPaintjob[arg2].paintjobName:set(arg3)
		CoD.CraftUtility.UploadAndParseBuffer(arg0, Enum.StorageFileType.STORAGE_PAINTJOBS, arg1)
	end
end

function CoD.CraftUtility.Paintjobs.PublishPaintjob(arg0)
	local registerVal2 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg0].selectedpaintjobModel, "paintjobSlot"))
	local registerVal3 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg0].selectedpaintjobModel, "paintjobIndex"))
	local registerVal5 = CoD.CraftUtility.GetDDLRoot(arg0, Enum.StorageFileType.STORAGE_PAINTJOBS, registerVal2)
	if registerVal5 ~= nil then
		local registerVal7 = registerVal5.weaponPaintjob[registerVal3].weaponIndex:get()
		local registerVal8 = CoD.FileshareUtility.GetPublishName()
		local registerVal9 = CoD.FileshareUtility.GetPublishAllowDownload()
		Engine.PublishPaintjob(arg0, "paintjob", registerVal2, registerVal3, registerVal7, registerVal8, registerVal9)
	end
end

function CoD.CraftUtility.Paintjobs.GetPaintjobWeaponIndex(arg0, arg1, arg2)
	local registerVal4 = tonumber(arg1)
	local registerVal5 = tonumber(arg2)
	if CoD.CraftUtility.Paintjobs.CachedPaintjobs[registerVal4] and CoD.CraftUtility.Paintjobs.CachedPaintjobs[registerVal4][registerVal5] then
		return CoD.CraftUtility.Paintjobs.CachedPaintjobs[registerVal4][registerVal5].weaponIndex
	end
	return CoD.GetCustomization(arg0, "weapon_index")
end

CoD.CraftUtility.Emblems = {}
CoD.CraftUtility.Emblems.CachedEmblems = {}
CoD.CraftUtility.Emblems.CachedEmblemIndexMapping = {}
CoD.CraftUtility.Emblems.INVALID_DEFAULT_EMBLEMINDEX = -1.000000
CoD.CraftUtility.Emblems.INVALID_EMBLEMINDEX = -1.000000
function CoD.CraftUtility.Emblems.GetHighestSortIndex()
	for index2=1.000000, #, 1.000000 do
		if CoD.CraftUtility.Gunsmith.EMPTY_ITEM_INDEX < CoD.CraftUtility.Emblems.CachedEmblems[index2].sortIndex then
		end
	end
	return CoD.CraftUtility.Emblems.CachedEmblems[index2].sortIndex
end

function CoD.CraftUtility.Emblems.GetSortedEmblemsList(arg0, arg1)
	for index5=1.000000, #, 1.000000 do
		local registerVal10 = SelectingGroupEmblem(arg0)
		if CoD.CraftUtility.Emblems.CachedEmblems[index5].isUsed == 0.000000 and not false and arg1 == Enum.StorageFileType.STORAGE_EMBLEMS and not registerVal10 then
			registerVal10 = CoD.CraftUtility.Emblems.GetHighestSortIndex()
			CoD.CraftUtility.Emblems.CachedEmblems[index5].sortIndex = (registerVal10 + 1.000000)
			table.insert({}, CoD.CraftUtility.Emblems.CachedEmblems[index5])
		else
			if CoD.CraftUtility.Emblems.CachedEmblems[index5].isUsed == 1.000000 then
				local registerVal11 = CoD.BlackMarketUtility.IsUnreleasedBlackMarketItem(CoD.BlackMarketUtility.GetLootEmblemIDName(CoD.CraftUtility.Emblems.CachedEmblems[index5].emblemIndex))
				if arg1 ~= Enum.StorageFileType.STORAGE_EMBLEMS_LOOT or not registerVal11 then
					table.insert({}, CoD.CraftUtility.Emblems.CachedEmblems[index5])
				end
			end
		end
	end
	local function __FUNC_11AE9_(arg0, arg1)
		if arg1.sortIndex >= arg0.sortIndex then
		end
		return true
	end

	table.sort({}, __FUNC_11AE9_)
	return {}
end

function CoD.CraftUtility.Emblems.GetTotalUsedEmblems(arg0, arg1)
	local registerVal2 = CoD.CraftUtility.Emblems.GetTotalAllowedEmblems(arg0, arg1)
	for index4=0.000000, (registerVal2 - 1.000000), 1.000000 do
		local registerVal8 = CoD.CraftUtility.GetEmblemState(arg0, arg1, index4)
		local registerVal9 = registerVal8.isUsed:get()
		if registerVal9 == 1.000000 then
		end
	end
	return (0.000000 + 1.000000)
end

function CoD.CraftUtility.Emblems.GetTotalAllowedEmblems(arg0, arg1)
	if arg1 == Enum.StorageFileType.STORAGE_DEFAULT_EMBLEMS then
		return Dvar.default_emblems_max_count:get()
	else
		if arg1 == Enum.StorageFileType.STORAGE_EMBLEMS_LOOT then
			return Dvar.loot_emblems_max_count:get()
		end
	end
	local registerVal2 = MediaManagerGetQuotaForCategory(arg0, "emblem")
	return registerVal2.categoryQuota
end

function CoD.CraftUtility.Emblems.GetEmblemName(arg0, arg1, arg2)
	if arg2 ~= Enum.StorageFileType.STORAGE_EMBLEMS then
		return Engine.Localize(("EM_" .. arg1))
	end
	return arg1
end

function CoD.CraftUtility.Emblems.ParseDDL(arg0, arg1)
	local registerVal2 = CoD.CraftUtility.Emblems.GetTotalAllowedEmblems(arg0, arg1)
	local registerVal3 = CoD.CraftUtility.GetDDLRoot(arg0, arg1)
	if registerVal3 == nil then
		CoD.CraftUtility.Emblems.CachedEmblems = {}
		CoD.CraftUtility.Emblems.CachedEmblemIndexMapping = {}
		return false
	end
	for index5=0.000000, (registerVal2 - 1.000000), 1.000000 do
		local registerVal10 = CoD.CraftUtility.GetEmblemState(arg0, arg1, index5)
		if registerVal10 == nil then
			error(("Emblems DDL: DDL of type " .. arg1 .. " does not support " .. registerVal2 .. " emblems. Failed on index " .. index5))
			return false
		end
		{}.emblemIndex = index5
		local registerVal11 = registerVal10.isUsed:get()
		{}.isUsed = registerVal11
		registerVal11 = registerVal10.sortIndex:get()
		{}.sortIndex = registerVal11
		registerVal11 = registerVal10.readOnly:get()
		{}.readOnly = registerVal11
		local registerVal13 = registerVal10.emblemName:get()
		registerVal11 = CoD.CraftUtility.Emblems.GetEmblemName(arg0, registerVal13, arg1)
		{}.emblemName = registerVal11
		if registerVal10.createTime ~= nil then
			registerVal11 = Engine.GetLocalizedTimeStr(registerVal10.createTime:get())
			{}.createTime = registerVal11
		end
		if arg1 ~= Enum.StorageFileType.STORAGE_EMBLEMS_LOOT or {}.isUsed == 1.000000 then
			CoD.CraftUtility.Emblems.CachedEmblems[1.000000] = {}
			CoD.CraftUtility.Emblems.CachedEmblemIndexMapping[(index5 + 1.000000)] = 1.000000
		end
	end
	return true
end

function CoD.CraftUtility.Emblems.IsEmblemIndexOccupied(arg0)
	for index2=1.000000, #, 1.000000 do
		if CoD.CraftUtility.Emblems.CachedEmblems[index2].emblemIndex == arg0 then
			if CoD.CraftUtility.Emblems.CachedEmblems[index2].isUsed ~= 1.000000 then
			end
			return true
		end
	end
	return false
end

function CoD.CraftUtility.Emblems.UploadEmblem(arg0, arg1)
	local registerVal2 = Engine.GetModelValue(Engine.GetModel(arg1, "emblemIndex"))
	local registerVal3 = Engine.GetModelValue(Engine.GetModel(arg1, "sortIndex"))
	local registerVal4 = Engine.GetModelValue(Engine.GetModel(arg1, "emblemName"))
	local registerVal5 = CoD.CraftUtility.GetDDLRoot(arg0, CoD.perController[arg0].selectedEmblemTabStorageType)
	if registerVal5 ~= nil and 0.000000 <= registerVal2 then
		registerVal5.emblemList[registerVal2].isUsed:set(1.000000)
		registerVal5.emblemList[registerVal2].sortIndex:set(registerVal3)
		registerVal5.emblemList[registerVal2].emblemName:set(registerVal4)
		registerVal5.emblemList[registerVal2].createTime:set(Engine.GetCurrentUTCTimeStr())
		Engine.UploadEmblemData(arg0, registerVal2)
	end
end

function CoD.CraftUtility.Emblems.RenameEmblem(arg0, arg1, arg2)
	local registerVal4 = CoD.CraftUtility.GetDDLRoot(arg0, CoD.perController[arg0].selectedEmblemTabStorageType)
	if registerVal4 ~= nil and 0.000000 <= arg1 then
		registerVal4.emblemList[arg1].emblemName:set(arg2)
		CoD.CraftUtility.UploadAndParseBuffer(arg0, CoD.perController[arg0].selectedEmblemTabStorageType)
	end
	ForceNotifyModel(arg0, "Emblem.UpdateDataSource")
end

function CoD.CraftUtility.Emblems.ClearEmblem(arg0, arg1)
	local registerVal3 = CoD.CraftUtility.GetDDLRoot(arg0, CoD.perController[arg0].selectedEmblemTabStorageType)
	if registerVal3 ~= nil and 0.000000 <= arg1 then
		registerVal3.emblemList[arg1].emblemName:set("")
		registerVal3.emblemList[arg1].isUsed:set(0.000000)
		registerVal3.emblemList[arg1].sortIndex:set(CoD.CraftUtility.Gunsmith.EMPTY_ITEM_INDEX)
		registerVal3.emblemList[arg1].readOnly:set(CoD.CraftUtility.DEFAULT_READ_ONLY_FLAG)
		Engine.ExecNow(arg0, ("emblemClearAll " .. Enum.CustomizationType.CUSTOMIZATION_TYPE_EMBLEM))
	end
end

function CoD.CraftUtility.Emblems.GetEmptyEmblem()
	for index1=1.000000, #, 1.000000 do
		if CoD.CraftUtility.Emblems.CachedEmblems[index1].isUsed == 0.000000 then
			local registerVal6 = CoD.CraftUtility.Emblems.GetHighestSortIndex()
			CoD.CraftUtility.Emblems.CachedEmblems[index1].sortIndex = (registerVal6 + 1.000000)
			return CoD.CraftUtility.Emblems.CachedEmblems[index1]
		end
	end
end

function CoD.CraftUtility.Emblems.Copy(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModelValue(Engine.GetModel(arg1, "emblemIndex"))
	local registerVal4 = Engine.GetModelValue(Engine.GetModel(arg1, "sortIndex"))
	local registerVal5 = Engine.GetModelValue(Engine.GetModel(arg1, "emblemName"))
	local registerVal6 = CoD.CraftUtility.GetDDLRoot(arg0, arg2)
	local registerVal7 = CoD.CraftUtility.Emblems.GetEmptyEmblem()
	if registerVal6 ~= nil and 0.000000 <= registerVal3 and registerVal7 and 0.000000 <= registerVal7.emblemIndex then
		registerVal6.emblemList[registerVal7.emblemIndex].isUsed:set(1.000000)
		registerVal6.emblemList[registerVal7.emblemIndex].sortIndex:set(registerVal7.sortIndex)
		registerVal6.emblemList[registerVal7.emblemIndex].emblemName:set(registerVal5)
		Engine.UploadEmblemData(arg0, registerVal7.emblemIndex)
		return registerVal7.emblemIndex
	end
end

function CoD.CraftUtility.Emblems.PublishEmblem(arg0)
	local registerVal2 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg0].selectedEmblemModel, "emblemIndex"))
	local registerVal3 = CoD.FileshareUtility.GetPublishName()
	local registerVal4 = CoD.FileshareUtility.GetPublishAllowDownload()
	if 0.000000 <= registerVal2 then
		Engine.PublishEmblem(arg0, "emblem", (registerVal2 - 1.000000), registerVal3, registerVal4)
	end
end

local registerVal1 = {}
registerVal1[Enum.StorageFileType.STORAGE_EMBLEMS_LOOT] = "blackMarket"
CoD.CraftUtility.Emblems.FileshareBreadcrumbPaths = registerVal1
function CoD.CraftUtility.Emblems.GetEmblemBreadcrumbRoot(arg0, arg1, arg2)
	local registerVal4 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	if CoD.CraftUtility.Emblems.FileshareBreadcrumbPaths[arg2] and registerVal4 then
		return registerVal4.emblemBreadcrumbs[CoD.CraftUtility.Emblems.FileshareBreadcrumbPaths[arg2]].markedOld[arg1]
	end
	return nil
end

function CoD.CraftUtility.Emblems.IsEmblemNew(arg0, arg1, arg2)
	local registerVal3 = CoD.CraftUtility.Emblems.GetEmblemBreadcrumbRoot(arg0, arg1, arg2)
	if registerVal3 then
		local registerVal4 = registerVal3:get()
		if registerVal4 ~= 0.000000 then
		end
		return true
	end
	return false
end

function CoD.CraftUtility.Emblems.IsAnyEmblemNew(arg0)
	local registerVal1 = IsLive()
	registerVal1, registerVal2, registerVal3 = pairs(CoD.CraftUtility.Emblems.FileshareBreadcrumbPaths)
	for index4,value5 in registerVal1, registerVal2, registerVal3 do
		local registerVal6 = CoD.CraftUtility.Emblems.GetTotalUsedEmblems(arg0, index4)
		for index7=0.000000, (registerVal6 - 1.000000), 1.000000 do
			if index4 == Enum.StorageFileType.STORAGE_EMBLEMS_LOOT then
				local registerVal12 = CoD.BlackMarketUtility.GetLootEmblemIDNameFromIndex(index7)
				local registerVal13 = CoD.BlackMarketUtility.IsItemLocked(arg0, registerVal12)
			end
			registerVal12 = CoD.CraftUtility.Emblems.IsEmblemNew(arg0, index7, index4)
			if not registerVal13 and registerVal12 then
				return true
			end
		end
	end
	return false
end

function CoD.CraftUtility.Emblems.GetEmblemMaterialBreadcrumbRoot(arg0, arg1)
	local registerVal2 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	if registerVal2 then
		return registerVal2.emblemStats.materials[arg1].markedOld
	end
end

function CoD.CraftUtility.Emblems.IsMaterialNew(arg0, arg1)
	local registerVal2 = CoD.CraftUtility.Emblems.GetEmblemMaterialBreadcrumbRoot(arg0, arg1)
	if registerVal2 then
		local registerVal3 = registerVal2:get()
		if registerVal3 ~= 0.000000 then
		end
		return true
	end
	return false
end

function CoD.CraftUtility.Fileshare.DisplayWeaponWithPaintjob(arg0, arg1, arg2, arg3)
	if arg1 == 0.000000 then
		CoD.CraftUtility.Fileshare.ClearDisplay(arg0)
		return 
	end
	Engine.SetupFilesharePaintjobData(arg0, arg2)
	local registerVal4 = Engine.GetItemRef(arg1)
	local registerVal6 = CoD.CraftUtility.GetModeAbbreviation()
	registerVal6 = CoD.CraftUtility.GetLoadoutSlot(arg0)
	if arg3 ~= true then
	end
	local registerVal7 = CoD.CACUtility.GetCameraNameForAttachments("", true)
	local registerVal12 = CoD.GetLocalClientAdjustedNum(arg0)
	Engine.SendClientScriptNotify(arg0, ("CustomClass_update" .. registerVal12), registerVal6, (registerVal4 .. registerVal6), registerVal7, "0,0,1")
end

function CoD.CraftUtility.Fileshare.DisplayWeaponVariants(arg0, arg1, arg2, arg3)
	if arg1 == 0.000000 then
		CoD.CraftUtility.Fileshare.ClearDisplay(arg0)
		return 
	end
	Engine.SetupFilesharePaintjobData(arg0, arg2)
	local registerVal4 = Engine.GetFileshareWeaponVariantData(arg0, arg2)
	local registerVal5 = Engine.GetItemRef(arg1)
	local registerVal7 = CoD.CraftUtility.GetModeAbbreviation()
	local registerVal8 = CoD.CraftUtility.GetLoadoutSlot(arg0)
	local registerVal10 = CoD.CraftUtility.GetModeAbbreviation()
	local registerVal11 = CoD.CraftUtility.Fileshare.GetWeaponsAttachmentsString(registerVal4)
	registerVal10 = CoD.CraftUtility.Fileshare.GetWeaponAttachmentVariantString(registerVal4)
	if arg3 ~= true then
	end
	registerVal11 = CoD.CACUtility.GetCameraNameForAttachments((registerVal5 .. registerVal10 .. registerVal11), true)
	local registerVal16 = CoD.GetLocalClientAdjustedNum(arg0)
	Engine.SendClientScriptNotify(arg0, ("CustomClass_update" .. registerVal16), registerVal8, (registerVal5 .. registerVal10 .. registerVal11), registerVal11, (registerVal4.camoIndex .. ",0,1"), registerVal10)
end

function CoD.CraftUtility.Fileshare.GetWeaponsAttachmentsString(arg0)
	for index2=1.000000, CoD.CraftUtility.Gunsmith.MAX_ATTACHMENTS, 1.000000 do
		if arg0.attachments[(index2 - 1.000000)] ~= nil then
			local registerVal7 = CoD.CraftUtility.Gunsmith.AddAttachmentToWeapon("", arg0.attachments[(index2 - 1.000000)])
		end
	end
	return registerVal7
end

function CoD.CraftUtility.Fileshare.GetWeaponAttachmentVariantString(arg0)
	for index2=1.000000, CoD.CraftUtility.Gunsmith.MAX_ATTACHMENTS, 1.000000 do
		if arg0.attachments[(index2 - 1.000000)] ~= nil and arg0.attachments[(index2 - 1.000000)] ~= CoD.CraftUtility.Gunsmith.EMPTY_ITEM_INDEX then
			local registerVal8 = CoD.CraftUtility.Gunsmith.AddAttachmentVariant("", arg0.attachments[(index2 - 1.000000)], arg0.attachmentVariants[(index2 - 1.000000)])
		end
	end
	return registerVal8
end

function CoD.CraftUtility.Fileshare.ClearDisplay(arg0)
	local registerVal4 = CoD.GetLocalClientAdjustedNum(arg0)
	Engine.SendClientScriptNotify(arg0, ("CustomClass_remove" .. registerVal4))
end

function CoD.CraftUtility.Fileshare.DisplayWeaponWithPaintjobUsingModel(arg0, arg1)
	local registerVal3 = Engine.GetModelValue(Engine.GetModel(arg1, "paintjobSlot"))
	local registerVal4 = Engine.GetModelValue(Engine.GetModel(arg1, "paintjobIndex"))
	local registerVal5 = Engine.GetModelValue(Engine.GetModel(arg1, "weaponIndex"))
	local registerVal6 = Engine.GetItemRef(registerVal5)
	local registerVal8 = CoD.CraftUtility.GetModeAbbreviation()
	registerVal8 = CoD.CraftUtility.GetLoadoutSlot(arg0)
	local registerVal9 = CoD.CACUtility.GetCameraNameForAttachments((registerVal6 .. registerVal8))
	Engine.SetupPaintjobData(arg0, registerVal3, registerVal4)
	local registerVal14 = CoD.GetLocalClientAdjustedNum(arg0)
	Engine.SendClientScriptNotify(arg0, ("CustomClass_update" .. registerVal14), registerVal8, (registerVal6 .. registerVal8), registerVal9, "0,0,1")
end

function CoD.CraftUtility.Fileshare.DisplayWeaponWithVariant(arg0, arg1, arg2, arg3, arg4, arg5)
	if arg1 then
		local registerVal6 = CoD.CraftUtility.GetLoadoutSlot(arg0)
		local registerVal7 = Engine.GetModelValue(Engine.GetModel(arg1, "weaponIndex"))
		local registerVal8 = Engine.GetItemRef(registerVal7)
		local registerVal10 = CoD.CraftUtility.GetModeAbbreviation()
		for index10=1.000000, CoD.CraftUtility.Gunsmith.MAX_ATTACHMENTS, 1.000000 do
			local registerVal14 = Engine.GetModel(arg1, ("attachment" .. index10))
			local registerVal15 = Engine.GetModelValue(registerVal14)
			local registerVal16 = CoD.CraftUtility.Gunsmith.AddAttachmentToWeapon((registerVal8 .. registerVal10), registerVal15)
		end
		registerVal10 = CoD.CACUtility.GetCameraNameForAttachments(registerVal16, arg2)
		if arg5 == nil then
			local registerVal11 = Engine.GetModelValue(Engine.GetModel(arg1, "camoIndex"))
		end
		if arg3 == nil then
			registerVal11 = Engine.GetModelValue(Engine.GetModel(arg1, "paintjobSlot"))
		end
		if arg4 == nil then
			registerVal11 = Engine.GetModelValue(Engine.GetModel(arg1, "paintjobIndex"))
		end
		Engine.SetupPaintjobData(arg0, registerVal11, registerVal11)
		local registerVal12 = CoD.CraftUtility.Gunsmith.GetWeaponAttachmentVariantString(arg0, arg1)
		registerVal16 = CoD.GetLocalClientAdjustedNum(arg0)
		Engine.SendClientScriptNotify(arg0, ("CustomClass_update" .. registerVal16), registerVal6, registerVal16, registerVal10, (registerVal11 .. ",0,1"), registerVal12)
	end
end

