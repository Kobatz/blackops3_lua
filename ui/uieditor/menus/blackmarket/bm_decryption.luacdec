-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.playercard.SelfIdentityBadge")
require("ui.uieditor.widgets.BlackMarket.BM_Logo")
require("ui.uieditor.widgets.Footer.fe_FooterContainer_NOTLobby")
require("ui.uieditor.widgets.BlackMarket.LootDecryptionWidget")
require("ui.uieditor.widgets.BlackMarket.BM_TradeAgainFocus")
require("ui.uieditor.widgets.StartMenu.StartMenu_CurrencyCounts")
require("ui.uieditor.widgets.BlackMarket.BlackMarketTradeAgainListItem")
require("ui.uieditor.widgets.BlackMarket.BM_DecryptionBonusKeys")
require("ui.uieditor.widgets.BlackMarket.BM_DecryptionCrate")
require("ui.uieditor.widgets.BlackMarket.BM_DecryptionTradeAgain")
require("ui.uieditor.widgets.BlackMarket.BM_DecryptionNoBundleUses")
require("ui.uieditor.widgets.BlackMarket.BM_Debug_LootItemStats")
require("ui.uieditor.widgets.BlackMarket.BM_GunMeter")
local function __FUNC_69B_()
	local registerVal0 = Dvar.loot_testIndex:get()
	local registerVal1 = Engine.TableLookupGetColumnValueForRow(CoD.BlackMarketUtility.lootTableName, (registerVal0 + 1.000000), 1.000000)
	if registerVal1 == nil or registerVal1 == "" then
	else
	end
	Dvar.loot_testIndex:set((0.000000 + 1.000000))
end

local function __FUNC_81A_(arg0, arg1, arg2)
	arg0[arg2] = arg0[arg1]
	arg0[arg1] = arg0[arg2]
end

local function __FUNC_864_(arg0)
	local registerVal2 = math.random(#)
	__FUNC_81A_(arg0, registerVal2, #)
end

local function __FUNC_8F3_(arg0, arg1)
	local function __FUNC_2236_()
		local registerVal0 = {}
		local registerVal1 = CoD.BlackMarketUtility.GetFakeItem(arg0)
		local registerVal2 = CoD.BlackMarketUtility.GetFakeItem(arg0)
		local registerVal3 = CoD.BlackMarketUtility.GetFakeItem(arg0)
		local registerVal4 = CoD.BlackMarketUtility.GetFakeItem(arg0)
		CoD.BlackMarketUtility.GetFakeItem(arg0)
		registerVal0 = {}
		for index1=2.000000, #registerVal2, 1.000000 do
			for index6=1.000000, #, 1.000000 do
				if index1 ~= index6 and registerVal0[index1][1.000000] == registerVal0[index6][1.000000] then
				else
				end
			end
			local registerVal6 = CoD.BlackMarketUtility.GetFakeItem(arg0)
			registerVal0[index1] = registerVal6
		end
		registerVal1 = {}
		registerVal1.displayText = ""
		registerVal1.hintText = ""
		registerVal1.image = "blacktransparent"
		registerVal1.emblem = blacktransparent
		registerVal1.category = "decal"
		registerVal2 = CoD.BlackMarketUtility.GetItemTypeStringForLootItem("", "decal")
		registerVal1.categoryName = registerVal2
		registerVal1.lockItemText = ""
		registerVal1.lockAvailabilityText = ""
		registerVal1.raritySet = ""
		registerVal3 = CoD.BlackMarketUtility.GetRarityIDForString(CoD.BlackMarketUtility.DropTypes.COMMON)
		registerVal1.rarityName = CoD.BlackMarketUtility.CrateTypeStrings[registerVal3]
		registerVal1.rarity = CoD.BlackMarketUtility.DropTypes.COMMON
		registerVal1.reveal = false
		registerVal1.drop = 1.000000
		for index2=1.000000, 5.000000, 1.000000 do
			local registerVal7 = {}
			registerVal7.emblem = registerVal0[index2][1.000000]
			local registerVal8 = CoD.BlackMarketUtility.GetImageForLootItem(registerVal0[index2][1.000000], registerVal0[index2][2.000000])
			registerVal7.image = registerVal8
			registerVal7.category = registerVal0[index2][2.000000]
			registerVal7.rarity = registerVal0[index2][3.000000]
			registerVal1[("fakeloot" .. index2)] = registerVal7
		end
		registerVal2 = {}
		registerVal2.models = registerVal1
		registerVal2.properties = {}
		return registerVal2
	end

	local registerVal5 = Engine.GetLootResults(arg0)
	local registerVal6 = {}
	registerVal6 = {"2104202505", "2132914613", "2033507461"}
	local registerVal7 = {}
	registerVal7 = {"2122828615", "2054341474", "2106186559"}
	local registerVal8 = Dvar.loot_fakeRarity:exists()
	if registerVal8 then
		registerVal8 = Dvar.loot_fakeRarity:get()
		if registerVal8 == "common" then
			registerVal8 = {}
			registerVal8 = {"2088754833", "2081841575", "2093777929"}
		else
			registerVal8 = Dvar.loot_fakeRarity:get()
			if registerVal8 == "mixed" then
				registerVal8 = {}
				registerVal8 = {"2058086710", "2112484188", "2114010313"}
			else
				registerVal8 = Engine.DvarBool(nil, "loot_fakeRare")
				if registerVal8 then
				else
					registerVal8 = Engine.DvarBool(nil, "loot_fakeCommon")
					if registerVal8 then
					else
						if registerVal7 == nil then
							if CoD.perController[arg0].cryptokeysToSpend <= 10.000000 then
							else
							end
						end
					end
				end
			end
		end
	end
	registerVal8 = Dvar.loot_fakeItem:exists()
	registerVal8 = Dvar.loot_fakeItem:get()
	if LUI.DEV and registerVal8 and registerVal8 ~= "" then
		registerVal8 = Dvar.loot_fakeItem:get()
		registerVal6[1.000000] = registerVal8
	end
	registerVal8 = Dvar.loot_testAll:exists()
	registerVal8 = Dvar.loot_testAll:get()
	if LUI.DEV and registerVal8 and registerVal8 == true then
		for index8=1.000000, 3.000000, 1.000000 do
			local registerVal12 = Dvar.loot_testIndex:get()
			local registerVal13 = Engine.TableLookupGetColumnValueForRow(CoD.BlackMarketUtility.lootTableName, registerVal12, 1.000000)
			registerVal6[index8] = registerVal13
			__FUNC_69B_()
		end
	else
		table.remove(registerVal6, 4.000000)
		__FUNC_864_(registerVal6)
	end
	registerVal8 = Dvar.loot_showLootItemStats:exists()
	registerVal8 = tonumber(Dvar.loot_showLootItemStats:get())
	if registerVal8 and registerVal8 == 1.000000 and registerVal6[1.000000] ~= nil and registerVal6[1.000000] ~= "" then
		local registerVal20 = Engine.GetLootItems(arg0, Enum.eModes.MODE_MULTIPLAYER, 0.000000, 3500.000000)
		local registerVal21, registerVal22, registerVal23 = ipairs(registerVal20)
		for index24,value25 in registerVal21, registerVal22, registerVal23 do
			local registerVal26 = Engine.TableLookup(nil, CoD.BlackMarketUtility.lootTableName, 1.000000, value25.id, 3.000000)
			if registerVal26 == "common" then
			else
				if registerVal26 == "rare" then
				else
					if registerVal26 == "legendary" then
						local registerVal27 = Engine.TableLookup(nil, CoD.BlackMarketUtility.lootTableName, 1.000000, value25.id, 2.000000)
						if registerVal27 == "melee_weapon" then
						else
						else
							if registerVal26 == "epic" then
								registerVal27 = Engine.TableLookup(nil, CoD.BlackMarketUtility.lootTableName, 1.000000, value25.id, 2.000000)
								if registerVal27 == "weapon" then
								else
								end
							end
						end
					end
				end
			end
		end
		registerVal22 = Engine.GetModelForController(arg0)
		registerVal21 = Engine.CreateModel(registerVal22, "debugLootItemStats")
		registerVal23 = Engine.CreateModel(registerVal21, "commonDiscreteCount")
		Engine.SetModelValue(registerVal23, (0.000000 + 1.000000))
		registerVal23 = Engine.CreateModel(registerVal21, "commonDupeCount")
		Engine.SetModelValue(registerVal23, ((0.000000 + value25.count) - 1.000000))
		registerVal23 = Engine.CreateModel(registerVal21, "rareDiscreteCount")
		Engine.SetModelValue(registerVal23, (0.000000 + 1.000000))
		registerVal23 = Engine.CreateModel(registerVal21, "rareDupeCount")
		Engine.SetModelValue(registerVal23, ((0.000000 + value25.count) - 1.000000))
		registerVal23 = Engine.CreateModel(registerVal21, "legendaryDiscreteCount")
		Engine.SetModelValue(registerVal23, (0.000000 + 1.000000))
		registerVal23 = Engine.CreateModel(registerVal21, "legendaryDupeCount")
		Engine.SetModelValue(registerVal23, ((0.000000 + value25.count) - 1.000000))
		registerVal23 = Engine.CreateModel(registerVal21, "epicDiscreteCount")
		Engine.SetModelValue(registerVal23, (0.000000 + 1.000000))
		registerVal23 = Engine.CreateModel(registerVal21, "epicDupeCount")
		Engine.SetModelValue(registerVal23, ((0.000000 + value25.count) - 1.000000))
		registerVal23 = Engine.CreateModel(registerVal21, "meleeDiscreteCount")
		Engine.SetModelValue(registerVal23, (0.000000 + 1.000000))
		registerVal23 = Engine.CreateModel(registerVal21, "meleeDupeCount")
		Engine.SetModelValue(registerVal23, ((0.000000 + value25.count) - 1.000000))
		registerVal23 = Engine.CreateModel(registerVal21, "rangeDiscreteCount")
		Engine.SetModelValue(registerVal23, (0.000000 + 1.000000))
		registerVal23 = Engine.CreateModel(registerVal21, "rangeDupeCount")
		Engine.SetModelValue(registerVal23, ((0.000000 + value25.count) - 1.000000))
	end
	if 3.000000 < #(0.000000 + 1.000000) then
	end
	for index15=1.000000, 3.000000, 1.000000 do
		table.insert({}, __FUNC_2236_())
	end
	local registerVal15 = Engine.LootResultsReady(arg0)
	if registerVal15 then
		for index15=3.000000, 1.000000, -1.000000 do
			local registerVal19 = Engine.TableFindRows(CoD.BlackMarketUtility.lootTableName, 1.000000, registerVal6[index15])
			if registerVal19 == nil then
				table.remove({}, index15)
			else
				registerVal20 = Engine.TableLookupGetColumnValueForRow(CoD.BlackMarketUtility.lootTableName, registerVal19[1.000000], 2.000000)
				registerVal21 = Engine.TableLookupGetColumnValueForRow(CoD.BlackMarketUtility.lootTableName, registerVal19[1.000000], 3.000000)
				registerVal22 = Engine.TableLookupGetColumnValueForRow(CoD.BlackMarketUtility.lootTableName, registerVal19[1.000000], 0.000000)
				registerVal23 = CoD.BlackMarketUtility.GetStringRefForLootItem(arg0, registerVal22, registerVal20)
				local registerVal24 = CoD.BlackMarketUtility.GetImageForLootItem(registerVal22, registerVal20)
				local registerVal25 = CoD.BlackMarketUtility.GetSetPieceStringForLootItem(arg0, registerVal22, registerVal20)
				registerVal26 = Engine.TableLookupGetColumnValueForRow(CoD.BlackMarketUtility.lootTableName, registerVal19[1.000000], 6.000000)
				registerVal27 = CoD.BlackMarketUtility.IsLimitedBlackMarketItem(registerVal22)
				if registerVal27 then
				end
				local registerVal28 = CoD.BlackMarketUtility.GetRarityIDForString("limited")
				registerVal28, registerVal29 = CoD.BlackMarketUtility.GetItemLockedTextAndAvailability(arg0, registerVal22, registerVal20)
				if registerVal20 == "emblem" or registerVal20 == "calling_card" then
					local registerVal31 = Engine.Localize("MPUI_EQUIP_PROMPT")
				end
				{}[index15].models.displayText = registerVal23
				{}[index15].models.hintText = registerVal31
				local registerVal32 = CoD.BlackMarketUtility.GetImageForLootItem(registerVal22, registerVal20)
				{}[index15].models.image = registerVal32
				{}[index15].models.emblem = registerVal22
				{}[index15].models.category = registerVal20
				registerVal32 = CoD.BlackMarketUtility.GetItemTypeStringForLootItem(registerVal22, registerVal20)
				{}[index15].models.categoryName = registerVal32
				{}[index15].models.lockItemText = registerVal28
				{}[index15].models.lockAvailabilityText = registerVal29
				{}[index15].models.raritySet = registerVal25
				{}[index15].models.rarityName = CoD.BlackMarketUtility.CrateTypeStrings[registerVal28]
				{}[index15].models.rarity = "limited"
				{}[index15].models.reveal = false
				{}[index15].models.drop = registerVal26
				registerVal31 = Dvar.tu27_gunMeterOn:get()
				registerVal31, registerVal32 = Engine.GetItemRarityOccurrences(arg0, "rare", 51.000000)
				local registerVal33 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
				if registerVal31 and CoD.perController[arg0].supplyDropType ~= nil and not CoD.BlackMarketUtility.NoGunMeter[CoD.perController[arg0].supplyDropType] and {}[index15].models.category == "weapon" and registerVal31 == true and registerVal33 ~= nil then
					registerVal33.periodicLadderRarities[CoD.BlackMarketUtility.periodicLadderRaritiesIndex.RARE]:set(registerVal32)
					Engine.StorageWrite(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
				end
				registerVal32 = {}
				registerVal32.emblem = registerVal22
				registerVal33 = CoD.BlackMarketUtility.GetImageForLootItem(registerVal22, registerVal20)
				registerVal32.image = registerVal33
				registerVal32.category = registerVal20
				registerVal32.rarity = "limited"
				{}[index15].models.fakeloot3 = registerVal32
			end
		end
		arg1.ready = true
	end
	return {}
end

local registerVal5 = DataSourceHelpers.ListSetup("BlackMarketDecryptionList", __FUNC_8F3_, true)
DataSources.BlackMarketDecryptionList = registerVal5
local function __FUNC_2802_(arg0, arg1)
	local function __FUNC_35DC_(arg0, arg1, arg2, arg3, arg4)
		CoD.perController[arg2].codPointsSpent = arg3.itemCODPointCost
		CoD.OverlayUtility.CreateOverlay(arg2, arg0, "PurchaseSupplyDropConfirmation", arg2, arg3)
	end

	local function __FUNC_3715_(arg0, arg2, arg3, arg4, arg5)
		CoD.BlackMarketUtility.TradeForCrateAction(arg0, arg2, arg3, arg4, arg5, Enum.InventoryCurrency.INVENTORY_CURRENCY_MP_BUNDLE_ITEM, arg1)
	end

	local function __FUNC_382E_(arg1, arg2, arg3, arg4, arg5)
		local registerVal5 = GetIconForCurrentSupplyDrop(arg0)
		if arg5 == CoD.BlackMarketUtility.DropTypes.BRIBE then
		else
			if arg5 == CoD.BlackMarketUtility.DropTypes.BUNDLE then
			end
		end
		if 0.000000 < arg1 then
		else
		end
		local registerVal6 = Engine.Localize(arg4, arg2)
		if 0.000000 >= arg1 or not "MPUI_BM_CRYPTOKEYS" then
		end
		local registerVal7 = Engine.Localize("CGAME_SB_CP")
		local registerVal8 = Engine.Localize("MPUI_BM_TRADE_AGAIN_TEXT", registerVal7, CoD.BlackMarketUtility.GetCrateTypeString(arg5))
		if 0.000000 < arg2 then
			local registerVal9 = Engine.Localize("MPUI_BM_SPEND_AGAIN_TEXT", registerVal7, CoD.BlackMarketUtility.GetCrateTypeString(arg5))
		end
		if 0.000000 < arg3 then
		end
		local registerVal10 = {}
		local registerVal11 = {}
		registerVal11.displayText = registerVal6
		registerVal11.itemCost = arg1
		registerVal11.itemCODPointCost = arg2
		registerVal11.itemBundleCost = arg3
		registerVal10.models = registerVal11
		registerVal11 = {}
		registerVal11.action = __FUNC_3715_
		local registerVal12 = {}
		registerVal12.displayText = registerVal9
		registerVal12.image = "uie_t7_blackmarket_crate_bundle"
		registerVal12.itemCost = arg1
		registerVal12.itemCODPointCost = arg2
		registerVal12.supplyDropType = arg5
		registerVal12.again = true
		registerVal11.actionParam = registerVal12
		if arg2 ~= CoD.perController[arg0].codPointsSpent then
		end
		registerVal11.selectIndex = true
		registerVal10.properties = registerVal11
		return registerVal10
	end

	if not arg1.updateSubscription then
		local registerVal6 = DataSources.CryptoKeyProgress.getModel(arg0)
		local registerVal7 = Engine.GetModel(registerVal6, "bundles")
		local function __FUNC_3CE7_(arg2)
			local registerVal1 = CoD.BlackMarketUtility.GetBundleCountForCurrentDropType(arg0)
			if registerVal1 ~= 0.000000 then
			end
			if arg1.currentBundleCount ~= 0.000000 then
			end
			if true ~= true then
				arg1:updateDataSource(false)
			end
			local registerVal2 = IsDecryptionCrateGenericReward(arg1, arg1.activeWidget, arg0)
			registerVal2 = Engine.GetModel(registerVal6, "genericRewardBundles")
			if registerVal2 and registerVal2 then
				Engine.ForceNotifyModelSubscriptions(registerVal2)
			end
		end

		local registerVal9 = arg1:subscribeToModel(registerVal7, __FUNC_3CE7_, false)
		arg1.updateSubscription = registerVal9
		local registerVal11 = Engine.GetModel(registerVal6, "incentiveWeaponBundles")
		arg1:subscribeToModel(registerVal11, __FUNC_3CE7_, false)
		registerVal11 = Engine.GetModel(registerVal6, "incentiveRareBundles")
		arg1:subscribeToModel(registerVal11, __FUNC_3CE7_, false)
		registerVal11 = Engine.GetModel(registerVal6, "rangeWeaponNoDupesBundles")
		arg1:subscribeToModel(registerVal11, __FUNC_3CE7_, false)
		registerVal11 = Engine.GetModel(registerVal6, "meleeWeaponNoDupesBundles")
		arg1:subscribeToModel(registerVal11, __FUNC_3CE7_, false)
		registerVal11 = Engine.GetModel(registerVal6, "sixPackCommonBundles")
		arg1:subscribeToModel(registerVal11, __FUNC_3CE7_, false)
		registerVal11 = Engine.GetModel(registerVal6, "dailyDoubleRareBundles")
		arg1:subscribeToModel(registerVal11, __FUNC_3CE7_, false)
		registerVal11 = Engine.GetModel(registerVal6, "hundredBundles")
		arg1:subscribeToModel(registerVal11, __FUNC_3CE7_, false)
		registerVal11 = Engine.GetModel(registerVal6, "rareBundle10for5s")
		arg1:subscribeToModel(registerVal11, __FUNC_3CE7_, false)
		registerVal11 = Engine.GetModel(registerVal6, "bundleExperimentRareBundles")
		arg1:subscribeToModel(registerVal11, __FUNC_3CE7_, false)
		registerVal11 = Engine.GetModel(registerVal6, "noDupesRareBundles")
		arg1:subscribeToModel(registerVal11, __FUNC_3CE7_, false)
		registerVal11 = Engine.GetModel(registerVal6, "codeBundleRareBundles")
		arg1:subscribeToModel(registerVal11, __FUNC_3CE7_, false)
		registerVal11 = Engine.GetModel(registerVal6, "weapon3XBundles")
		arg1:subscribeToModel(registerVal11, __FUNC_3CE7_, false)
		registerVal11 = Engine.GetModel(registerVal6, "limitedEditionCamoBundles")
		arg1:subscribeToModel(registerVal11, __FUNC_3CE7_, false)
		registerVal11 = Engine.GetModel(registerVal6, "rare20Bundles")
		arg1:subscribeToModel(registerVal11, __FUNC_3CE7_, false)
		registerVal11 = Engine.GetModel(registerVal6, "rare15Bundles")
		arg1:subscribeToModel(registerVal11, __FUNC_3CE7_, false)
		registerVal11 = Engine.GetModel(registerVal6, "outfit3Bundles")
		arg1:subscribeToModel(registerVal11, __FUNC_3CE7_, false)
		registerVal11 = Engine.GetModel(registerVal6, "rare20LDBundles")
		arg1:subscribeToModel(registerVal11, __FUNC_3CE7_, false)
	end
	registerVal6 = CoD.BlackMarketUtility.GetBundleCountForCurrentDropType(arg0)
	arg1.currentBundleCount = registerVal6
	if CoD.perController[arg0].currencySpent == Enum.InventoryCurrency.INVENTORY_CURRENCY_MP_BUNDLE_ITEM then
		if 0.000000 < registerVal6 then
			table.insert({}, __FUNC_382E_(0.000000, 0.000000, 1.000000, "MPUI_BM_BUNDLE_OPEN", CoD.perController[arg0].supplyDropType))
		else
			registerVal7 = IsBundleActive(arg0)
			if CoD.perController[arg0].supplyDropType == CoD.BlackMarketUtility.DropTypes.BUNDLE and registerVal7 then
				registerVal7 = CoD.BlackMarketUtility.GetCrateCODPointCost(CoD.BlackMarketUtility.DropTypes.BUNDLE)
				if 0.000000 < registerVal7 then
					table.insert({}, __FUNC_382E_(0.000000, registerVal7, 0.000000, "MPUI_BM_TRADE_COD_POINTS_SHORT", CoD.BlackMarketUtility.DropTypes.BUNDLE))
				end
				local registerVal8 = CoD.BlackMarketUtility.GetCrateCryptoKeyCost(CoD.BlackMarketUtility.DropTypes.BUNDLE)
				if 0.000000 < registerVal8 then
					table.insert({}, __FUNC_382E_(registerVal8, 0.000000, 0.000000, "MPUI_BM_TRADE_CRYPTOKEYS_SHORT", CoD.BlackMarketUtility.DropTypes.BUNDLE))
				else
					registerVal7 = Dvar.loot_bribeCrate_dwid:get()
					if CoD.perController[arg0].supplyDropType == CoD.BlackMarketUtility.DropTypes.BRIBE and registerVal7 == 0.000000 then
					else
						registerVal7 = IsNoDupesCrateActive(arg0)
						if CoD.perController[arg0].supplyDropType == CoD.BlackMarketUtility.DropTypes.NO_DUPES_CRATE and not registerVal7 then
						else
							registerVal7 = CoD.BlackMarketUtility.GetCrateCryptoKeyCost(CoD.perController[arg0].supplyDropType)
							if not registerVal7 then
							end
							if 0.000000 < 0.000000 then
								table.insert({}, __FUNC_382E_(0.000000, 0.000000, 0.000000, "MPUI_BM_TRADE_CRYPTOKEYS_SHORT", CoD.perController[arg0].supplyDropType))
							end
							registerVal8 = CoD.BlackMarketUtility.GetCrateCODPointCost(CoD.perController[arg0].supplyDropType)
							if not registerVal8 then
							end
							if 0.000000 < 0.000000 then
								table.insert({}, __FUNC_382E_(0.000000, 0.000000, 0.000000, "MPUI_BM_TRADE_COD_POINTS_SHORT", CoD.perController[arg0].supplyDropType))
							end
						end
					end
				end
			end
		end
	end
	return {}
end

local registerVal6 = DataSourceHelpers.ListSetup("BlackMarketTradeAgainList", __FUNC_2802_, true)
DataSources.BlackMarketTradeAgainList = registerVal6
local function __FUNC_3F13_(arg0, arg1)
	CoD.perController[arg1].selectedEmblemTabStorageType = Enum.StorageFileType.STORAGE_DEFAULT_EMBLEMS
	local function __FUNC_4129_()
		if CoD.perController[arg1].supplyDropQuickAnim then
			local registerVal2 = {}
			registerVal2.name = "gain_focus"
			registerVal2.controller = arg1
			arg0.TradeAgainList:processEvent(registerVal2)
		end
		return true
	end

	arg0.restoreState = __FUNC_4129_
	local registerVal3 = Engine.GetModelForController(arg1)
	local registerVal2 = Engine.CreateModel(registerVal3, "CryptoKeyProgress")
	local registerVal4 = Engine.CreateModel(registerVal2, "bonusKeysAwarded")
	Engine.SetModelValue(registerVal4, 0.000000)
end

local function __FUNC_425D_(arg0)
	if arg0 == Enum.LootResultType.LOOT_RESULT_FAILURE_INSUFFICIENT_FUNDS then
		return Engine.Localize("MENU_BM_ERR_INSUFFICIENT_FUNDS")
	else
		if arg0 == Enum.LootResultType.LOOT_RESULT_FAILURE_BAD_RESPONE then
			return Engine.Localize("MENU_BM_ERR_BAD_RESPONSE")
		else
			if arg0 == Enum.LootResultType.LOOT_RESULT_FAILURE or arg0 == Enum.LootResultType.LOOT_RESULT_INVALID then
				return Engine.Localize("MENU_BM_ERR_NO_RESULT")
			end
		end
	end
	return Engine.Localize("MENU_BM_ERR_NO_RESULT")
end

local function __FUNC_44D4_(arg0, arg1)
	if CoD.perController[arg1].supplyDropQuickAnim then
		arg0.disablePopupOpenCloseAnim = true
	end
	arg0:setState("DefaultState")
	arg0.decryptionList.m_disableNavigation = true
	local function __FUNC_4809_()
		local registerVal0 = Engine.IsCommonFastFileLoaded()
		registerVal0 = Engine.LootResultsReady(arg1)
		if registerVal0 and registerVal0 then
			registerVal0 = Engine.LootFailureReason(arg1)
			if registerVal0 == Enum.LootResultType.LOOT_RESULT_SUCCESS then
				arg0.decryptionList:updateDataSource()
				arg0.decryptionList:setMouseDisabled(true)
				local registerVal1 = Dvar.loot_testAll:exists()
				registerVal1 = Dvar.loot_testAll:get()
				if registerVal1 and registerVal1 == true then
					local function __FUNC_5241_()
						arg0.decryptionList:updateDataSource()
						for index0=1.000000, 3.000000, 1.000000 do
							local registerVal4 = arg0.decryptionList:getItemAtPosition(1.000000, index0)
							if registerVal4 then
								local registerVal5 = registerVal4:getModel()
								local registerVal7 = Engine.GetModel(registerVal5, "reveal")
								Engine.SetModelValue(registerVal7, true)
								local registerVal8 = CoD.SafeGetModelValue(registerVal5, "emblem")
								local registerVal9 = CoD.SafeGetModelValue(registerVal5, "category")
								CoD.BlackMarketUtility.ShowToastIfApplicable(arg1, registerVal8, registerVal9, index0)
							end
						end
					end

					arg0:addElement(LUI.UITimer.newElementTimer(1000.000000, false, __FUNC_5241_))
				end
				CoD.BlackMarketUtility.SpendKeysForCrate(arg1, CoD.perController[arg1].cryptokeysToSpend)
				CoD.perController[arg1].cryptokeysToSpend = 0.000000
				registerVal1 = arg0.decryptionList:getItemAtPosition(1.000000, 1.000000)
				if registerVal1 then
					registerVal1:playClip("StartFuzz")
				end
				Engine.SendClientScriptNotify(arg1, "BlackMarket", "cycle_start")
				local function __FUNC_5493_()
					local registerVal0 = arg0.decryptionList:getItemAtPosition(1.000000, 2.000000)
					if registerVal0 then
						registerVal0:playClip("StartFuzz")
					end
				end

				arg0:addElement(LUI.UITimer.newElementTimer(200.000000, true, __FUNC_5493_))
				local function __FUNC_5552_()
					local registerVal0 = arg0.decryptionList:getItemAtPosition(1.000000, 3.000000)
					if registerVal0 then
						registerVal0:playClip("StartFuzz")
					end
				end

				arg0:addElement(LUI.UITimer.newElementTimer((2.000000 * 200.000000), true, __FUNC_5552_))
				local registerVal3 = Dvar.loot_testAll:exists()
				registerVal3 = Dvar.loot_testAll:get()
				if registerVal3 and registerVal3 == true then
				end
				for index4=1.000000, 3.000000, 1.000000 do
					local registerVal8 = arg0.decryptionList:getItemAtPosition(1.000000, index4)
					if registerVal8 then
						local registerVal9 = registerVal8:getModel()
						local registerVal10 = CoD.BlackMarketUtility.GetRarityIDForString(CoD.SafeGetModelValue(registerVal9, "rarity"))
						if 0.000000 < registerVal10 then
						end
						local function __FUNC_5612_()
							local registerVal1 = Engine.GetModel(registerVal9, "reveal")
							Engine.SetModelValue(registerVal1, true)
							Engine.PlaySound("uin_bm_cycle_item_hit")
							if CoD.BlackMarketUtility.CrateTypeRevealAlias[registerVal10] ~= nil then
								Engine.PlaySound(CoD.BlackMarketUtility.CrateTypeRevealAlias[registerVal10])
							end
							if index4 == 3.000000 then
								Engine.SendClientScriptNotify(arg1, "BlackMarket", "cycle_stop")
								arg0.decryptionList.m_disableNavigation = false
								arg0.decryptionList.m_focusable = true
							end
							local registerVal3 = CoD.SafeGetModelValue(registerVal9, "emblem")
							local registerVal4 = CoD.SafeGetModelValue(registerVal9, "category")
							CoD.BlackMarketUtility.ShowToastIfApplicable(arg1, registerVal3, registerVal4, index4)
						end

						arg0:addElement(LUI.UITimer.newElementTimer((0.000000 + ((index4 - 1.000000) * 0.000000)), true, __FUNC_5612_))
					end
				end
				if CoD.perController[arg1].supplyDropType ~= CoD.BlackMarketUtility.DropTypes.COMMON then
					local registerVal7 = Engine.GetLootResults(arg1)
					if registerVal7[4.000000] ~= nil then
					else
					end
				end
				CoD.perController[arg1].keysToNotShowYet = 0.000000
				DataSources.CryptoKeyProgress.getModel(arg1)
				local function __FUNC_5943_()
					local registerVal1 = Engine.GetModelForController(arg1)
					local registerVal0 = Engine.CreateModel(registerVal1, "CryptoKeyProgress")
					local registerVal2 = Engine.CreateModel(registerVal0, "bonusKeysAwarded")
					Engine.SetModelValue(registerVal2, 0.000000)
					if 0.000000 < 0.000000 then
						Engine.PlaySound("uin_bm_keydrop_anim")
						local function __FUNC_60D1_()
							arg0.StartMenuCurrencyCounts:playClip("Bonus")
							arg0.StartMenuCurrencyCounts.BMCryptokeyCounterIcon:playClip("Keybonus")
							arg0.BMDecryptionBonusKeys.BMWires1:playClip("circuitanim")
							arg0.BMDecryptionBonusKeys.BMWires2:playClip("circuitanim")
							arg0.BMDecryptionBonusKeys.BMWiresGlow:playClip("circuitanim")
						end

						arg0:addElement(LUI.UITimer.newElementTimer(850.000000, true, __FUNC_60D1_))
						local function __FUNC_6299_()
							CoD.perController[arg1].keysToNotShowYet = 0.000000
							DataSources.CryptoKeyProgress.getModel(arg1)
						end

						arg0:addElement(LUI.UITimer.newElementTimer(1225.000000, true, __FUNC_6299_))
						local function __FUNC_6391_()
							Engine.SendMenuResponse(arg1, "BlackMarket", ("complete_" .. CoD.BlackMarketUtility.CrateTypeIds[registerVal10]))
						end

						arg0:addElement(LUI.UITimer.newElementTimer(1725.000000, true, __FUNC_6391_))
					else
						Engine.SendMenuResponse(arg1, "BlackMarket", ("complete_" .. CoD.BlackMarketUtility.CrateTypeIds[registerVal10]))
					end
					arg0:setState("Results")
					CoD.Menu.UpdateButtonShownState(arg0, arg0, arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
					if not CoD.perController[arg1].supplyDropQuickAnim then
						local registerVal3 = {}
						registerVal3.name = "gain_focus"
						registerVal3.controller = arg1
						arg0.decryptionList:processEvent(registerVal3)
					end
					if not arg0.autoEventTimer then
						if CoD.perController[arg1].supplyDropType == CoD.BlackMarketUtility.DropTypes.BRIBE then
							registerVal1 = Dvar.loot_bribeCrate_dwid:get()
							local function __FUNC_6436_()
								local registerVal0 = Dvar.loot_bribeCrate_dwid:get()
								if registerVal1 ~= registerVal0 or registerVal1 == 0.000000 then
									if arg0.TradeAgainList.hasListFocus then
										CoD.SwapFocusableElements(arg1, arg0.TradeAgainList, arg0.decryptionList)
										arg0.TradeAgainList.m_disableNavigation = true
									end
									arg0.TradeAgainList:updateDataSource(true, false)
									if not arg0.cancelTimer then
										local function __FUNC_66DE_()
											GoBack(arg0, arg1)
										end

										local registerVal2 = LUI.UITimer.newElementTimer(180000.000000, true, __FUNC_66DE_)
										arg0.cancelTimer = registerVal2
										arg0:addElement(arg0.cancelTimer)
									end
								end
							end

							registerVal3 = arg0:subscribeToGlobalModel(arg1, "AutoeventsCycled", "cycled", __FUNC_6436_)
							arg0.autoEventTimer = registerVal3
						else
							if CoD.perController[arg1].supplyDropType == CoD.BlackMarketUtility.DropTypes.RARE then
								registerVal1 = IsLootSaleActive(arg1)
								local function __FUNC_6728_()
									local registerVal1 = IsLootSaleActive(arg1)
									if registerVal1 ~= registerVal1 then
										arg0.TradeAgainList:updateDataSource(true, false)
									end
								end

								registerVal3 = arg0:subscribeToGlobalModel(arg1, "AutoeventsCycled", "cycled", __FUNC_6728_)
								arg0.autoEventTimer = registerVal3
							end
						end
					end
					arg0.decryptionList:setMouseDisabled(false)
				end

				arg0:addElement(LUI.UITimer.newElementTimer((((0.000000 + 0.000000) + 0.000000) + 0.000000), true, __FUNC_5943_))
			else
				GoBack(arg0, arg1)
				ClearMenuSavedState(arg0)
				LuaUtils.UI_ShowErrorMessageDialog(arg1, __FUNC_425D_(registerVal0))
			else
				arg0:addElement(LUI.UITimer.newElementTimer(250.000000, true, arg0.decryptionList))
				registerVal0 = math.max(0.000000, (800.000000 - 250.000000))
			end
		end
	end

	local function __FUNC_67D8_()
		arg0:setState("Rolling")
		arg0.decryptionList:updateDataSource()
		__FUNC_4809_()
		local function __FUNC_69A5_()
			local registerVal0 = arg0.decryptionList:getItemAtPosition(1.000000, 1.000000)
			if registerVal0 then
				registerVal0:playClip("StartFuzz")
			end
			Engine.SendClientScriptNotify(arg1, "BlackMarket", "cycle_start")
		end

		arg0:addElement(LUI.UITimer.newElementTimer(100.000000, true, __FUNC_69A5_))
		local function __FUNC_6ADB_()
			local registerVal0 = arg0.decryptionList:getItemAtPosition(1.000000, 2.000000)
			if registerVal0 then
				registerVal0:playClip("StartFuzz")
			end
		end

		arg0:addElement(LUI.UITimer.newElementTimer((100.000000 + 200.000000), true, __FUNC_6ADB_))
		local function __FUNC_6B9A_()
			local registerVal0 = arg0.decryptionList:getItemAtPosition(1.000000, 3.000000)
			if registerVal0 then
				registerVal0:playClip("StartFuzz")
			end
		end

		arg0:addElement(LUI.UITimer.newElementTimer((100.000000 + (2.000000 * 200.000000)), true, __FUNC_6B9A_))
	end

	arg0:addElement(LUI.UITimer.newElementTimer(0.000000, true, __FUNC_67D8_))
	local function __FUNC_6C5A_(arg0)
		CoD.perController[arg1].keysToNotShowYet = 0.000000
		DataSources.CryptoKeyProgress.getModel(arg1)
	end

	LUI.OverrideFunction_CallOriginalSecond(arg0, "close", __FUNC_6C5A_)
	local function __FUNC_6D51_(arg0, arg1)
		Engine.SetDvar("live_autoEventPumpTime", 0.000000)
	end

	arg0:registerEventHandler("bm_autoevents_tick", __FUNC_6D51_)
	arg0:addElement(LUI.UITimer.new(100.000000, "bm_autoevents_tick", false, arg0))
end

local function __FUNC_6DDE_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("BM_Decryption")
	if __FUNC_3F13_ then
		__FUNC_3F13_(registerVal1, arg0)
	end
	registerVal1.soundSet = "MultiplayerMain"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "BM_Decryption.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, -45.000000, 35.000000)
	registerVal3:setTopBottom(true, true, -43.000000, 102.000000)
	registerVal3:setRGB(0.480000, 0.480000, 0.480000)
	registerVal3:setAlpha(0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.LeftPanel = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_screen_bg"))
	registerVal4:setupUIStreamedImage(0.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.Screen = registerVal4
	local registerVal5 = CoD.SelfIdentityBadge.new(registerVal1, arg0)
	registerVal5:setLeftRight(false, true, -453.000000, -110.000000)
	registerVal5:setTopBottom(true, false, 15.000000, 75.000000)
	local function __FUNC_8AED_(arg1)
		registerVal5:setModel(arg1, arg0)
	end

	registerVal5:subscribeToGlobalModel(arg0, "PerController", "identityBadge", __FUNC_8AED_)
	local function __FUNC_8B3E_(arg1)
		registerVal5.CallingCard.CallingCardsFrameWidget:setModel(arg1, arg0)
	end

	registerVal5:subscribeToGlobalModel(arg0, "PerController", nil, __FUNC_8B3E_)
	registerVal1:addElement(registerVal5)
	registerVal1.SelfIdentityBadge = registerVal5
	local registerVal6 = CoD.BM_Logo.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 77.580000, 376.040000)
	registerVal6:setTopBottom(true, false, 76.170000, 197.170000)
	registerVal6.text:setText(Engine.Localize("MPUI_CONTRABAND_CAPS"))
	registerVal1:addElement(registerVal6)
	registerVal1.BMLogo = registerVal6
	local registerVal7 = CoD.fe_FooterContainer_NOTLobby.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, true, 1.000000, -1.000000)
	registerVal7:setTopBottom(false, true, -67.000000, 0.000000)
	registerVal7:setAlpha(0.000000)
	local function __FUNC_8BDC_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("menu_opened", __FUNC_8BDC_)
	registerVal1:addElement(registerVal7)
	registerVal1.feFooterContainerNOTLobby = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_blackmarket_tradeagainframe"))
	registerVal1:addElement(registerVal8)
	registerVal1.TradeAgainBacking = registerVal8
	local registerVal9 = LUI.UIList.new(registerVal1, arg0, 50.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal9:makeFocusable()
	registerVal9:setLeftRight(false, false, -417.500000, 417.500000)
	registerVal9:setTopBottom(true, false, 190.000000, 530.000000)
	registerVal9:setWidgetType(CoD.LootDecryptionWidget)
	registerVal9:setHorizontalCount(3.000000)
	registerVal9:setSpacing(50.000000)
	registerVal9:setDataSource("BlackMarketDecryptionList")
	local function __FUNC_8C71_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "category"
		CoD.Menu.UpdateButtonShownState(registerVal9, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal9:linkToElementModel(registerVal9, "category", true, __FUNC_8C71_)
	local function __FUNC_8E2E_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		return registerVal3
	end

	registerVal9:registerEventHandler("gain_focus", __FUNC_8E2E_)
	local function __FUNC_8FC0_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("lose_focus", __FUNC_8FC0_)
	local function __FUNC_9092_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueEqualTo(arg0, arg2, "category", "emblem")
		if registerVal4 then
			BlackMarketSetAsEmblem(registerVal1, arg0, arg2)
			local registerVal6 = {}
			registerVal6.elementName = "SelfIdentityBadge"
			registerVal6.clipName = "ShowBadge"
			PlayClipOnElement(registerVal1, registerVal6, arg2)
			return true
		else
			registerVal4 = IsSelfModelValueEqualTo(arg0, arg2, "category", "calling_card")
			if registerVal4 then
				BlackMarketSetCallingCard(registerVal1, arg0, arg2)
				registerVal6 = {}
				registerVal6.elementName = "SelfIdentityBadge"
				registerVal6.clipName = "ShowBadge"
				PlayClipOnElement(registerVal1, registerVal6, arg2)
				return true
			else
				registerVal4 = IsSelfModelValueEqualTo(arg0, arg2, "category", "taunt")
				registerVal4 = BlackMarketListItemCanEquip(arg0, arg2)
				if registerVal4 and registerVal4 then
					BlackMarketSetTaunt(registerVal1, arg0, arg2)
					return true
				else
					registerVal4 = IsSelfModelValueEqualTo(arg0, arg2, "category", "gesture")
					registerVal4 = BlackMarketListItemCanEquip(arg0, arg2)
					if registerVal4 and registerVal4 then
						BlackMarketSetGesture(registerVal1, arg0, arg2)
						return true
					else
						registerVal4 = IsSelfModelValueEqualTo(arg0, arg2, "category", "specialist_outfit")
						registerVal4 = BlackMarketListItemCanEquip(arg0, arg2)
						if registerVal4 and registerVal4 then
							BlackMarketSetSpecialistTheme(registerVal1, arg0, arg2)
							return true
						end
					end
				end
			end
		end
	end

	local function __FUNC_9447_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueEqualTo(arg0, arg2, "category", "emblem")
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MPUI_EQUIP")
			return true
		else
			registerVal3 = IsSelfModelValueEqualTo(arg0, arg2, "category", "calling_card")
			if registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MPUI_EQUIP")
				return true
			else
				registerVal3 = IsSelfModelValueEqualTo(arg0, arg2, "category", "taunt")
				registerVal3 = BlackMarketListItemCanEquip(arg0, arg2)
				if registerVal3 and registerVal3 then
					CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MPUI_EQUIP")
					return true
				else
					registerVal3 = IsSelfModelValueEqualTo(arg0, arg2, "category", "gesture")
					registerVal3 = BlackMarketListItemCanEquip(arg0, arg2)
					if registerVal3 and registerVal3 then
						CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MPUI_EQUIP")
						return true
					else
						registerVal3 = IsSelfModelValueEqualTo(arg0, arg2, "category", "specialist_outfit")
						registerVal3 = BlackMarketListItemCanEquip(arg0, arg2)
						if registerVal3 and registerVal3 then
							CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MPUI_EQUIP")
							return true
						end
					end
				end
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal9, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "E", __FUNC_9092_, __FUNC_9447_, false)
	registerVal1:addElement(registerVal9)
	registerVal1.decryptionList = registerVal9
	local registerVal10 = CoD.BM_TradeAgainFocus.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 61.430000, 205.430000)
	registerVal10:setTopBottom(true, false, 183.000000, 567.000000)
	registerVal1:addElement(registerVal10)
	registerVal1.BMTradeAgainFocus = registerVal10
	local registerVal11 = CoD.StartMenu_CurrencyCounts.new(registerVal1, arg0)
	registerVal11:setLeftRight(false, true, -299.000000, -95.000000)
	registerVal11:setTopBottom(true, false, 122.000000, 152.000000)
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "ShowKeysAndVials"
	local function __FUNC_982B_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal15.condition = __FUNC_982B_
	local registerVal16 = {}
	registerVal16.stateName = "Shown"
	local function __FUNC_9875_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal16.condition = __FUNC_9875_
	local registerVal17 = {}
	registerVal17.stateName = "ShownOnlyCODPoints"
	local function __FUNC_98C1_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal17.condition = __FUNC_98C1_
	registerVal14 = {registerVal15, registerVal16, registerVal17}
	registerVal11:mergeStateConditions(registerVal14)
	registerVal15 = Engine.GetModelForController(arg0)
	registerVal14 = Engine.GetModel(registerVal15, "CryptoKeyProgress.keyCount")
	local function __FUNC_990D_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CryptoKeyProgress.keyCount"
		registerVal1:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:subscribeToModel(registerVal14, __FUNC_990D_)
	registerVal15 = Engine.GetGlobalModel()
	registerVal14 = Engine.GetModel(registerVal15, "lobbyRoot.lobbyNetworkMode")
	local function __FUNC_9A3C_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNetworkMode"
		registerVal1:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:subscribeToModel(registerVal14, __FUNC_9A3C_)
	registerVal1:addElement(registerVal11)
	registerVal1.StartMenuCurrencyCounts = registerVal11
	local registerVal12 = LUI.UIList.new(registerVal1, arg0, 15.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal12:makeFocusable()
	registerVal12:setLeftRight(true, false, 97.930000, 174.930000)
	registerVal12:setTopBottom(true, false, 396.000000, 467.000000)
	registerVal12:setWidgetType(CoD.BlackMarketTradeAgainListItem)
	registerVal12:setVerticalCount(2.000000)
	registerVal12:setSpacing(15.000000)
	registerVal12:setDataSource("BlackMarketTradeAgainList")
	registerVal16 = Engine.GetModelForController(arg0)
	registerVal15 = Engine.GetModel(registerVal16, "CryptoKeyProgress.codPoints")
	local function __FUNC_9B6C_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "CryptoKeyProgress.codPoints"
		CoD.Menu.UpdateButtonShownState(registerVal12, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal12:subscribeToModel(registerVal15, __FUNC_9B6C_)
	registerVal16 = Engine.GetModelForController(arg0)
	registerVal15 = Engine.GetModel(registerVal16, "CryptoKeyProgress.keyCount")
	local function __FUNC_9D3C_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "CryptoKeyProgress.keyCount"
		CoD.Menu.UpdateButtonShownState(registerVal12, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal12:subscribeToModel(registerVal15, __FUNC_9D3C_)
	local function __FUNC_9F0B_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "itemCODPointCost"
		CoD.Menu.UpdateButtonShownState(registerVal12, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal12:linkToElementModel(registerVal12, "itemCODPointCost", true, __FUNC_9F0B_)
	local function __FUNC_A0CD_(arg1, arg2)
		SetElementStateByElementName(registerVal1, "BMTradeAgainFocus", arg0, "Highlighted")
		local registerVal5 = {}
		registerVal5.elementName = "BMDecryptionCrate"
		registerVal5.clipName = "Focus"
		PlayClipOnElement(registerVal1, registerVal5, arg0)
		return nil
	end

	registerVal12:registerEventHandler("gain_list_focus", __FUNC_A0CD_)
	local function __FUNC_A1F6_(arg1, arg2)
		SetElementStateByElementName(registerVal1, "BMTradeAgainFocus", arg0, "Off")
		local registerVal5 = {}
		registerVal5.elementName = "BMDecryptionCrate"
		registerVal5.clipName = "DefaultClip"
		PlayClipOnElement(registerVal1, registerVal5, arg0)
		return nil
	end

	registerVal12:registerEventHandler("lose_list_focus", __FUNC_A1F6_)
	local function __FUNC_A31C_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal12:registerEventHandler("gain_focus", __FUNC_A31C_)
	local function __FUNC_A4AF_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal12:registerEventHandler("lose_focus", __FUNC_A4AF_)
	local function __FUNC_A57E_(arg0, arg1, arg2, arg3)
		local registerVal4 = CanAffordTradeAgain(arg0, arg2)
		registerVal4 = IsMenuInState(arg1, "Results")
		if registerVal4 and registerVal4 then
			ProcessListAction(registerVal1, arg0, arg2)
			return true
		else
			registerVal4 = IsSelfModelValueGreaterThan(arg0, arg2, "itemCODPointCost", 0.000000)
			registerVal4 = IsMenuInState(arg1, "Results")
			if registerVal4 and registerVal4 then
				OpenCodPointsStore(registerVal1, arg0, arg2, "BMTradeAgainCPStore", arg1)
				return true
			else
				return true
			end
		end
	end

	local function __FUNC_A73D_(arg0, arg1, arg2)
		local registerVal3 = CanAffordTradeAgain(arg0, arg2)
		registerVal3 = IsMenuInState(arg1, "Results")
		if registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		else
			registerVal3 = IsSelfModelValueGreaterThan(arg0, arg2, "itemCODPointCost", 0.000000)
			registerVal3 = IsMenuInState(arg1, "Results")
			if registerVal3 and registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MPUI_PURCHASE_CODPOINTS")
				return true
			else
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "")
				return false
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal12, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_A57E_, __FUNC_A73D_, true)
	local function __FUNC_A9FE_(arg1)
		UpdateDataSource(registerVal1, registerVal12, arg0)
	end

	registerVal12:subscribeToGlobalModel(arg0, "AutoeventsCycled", "cycled", __FUNC_A9FE_)
	registerVal1:addElement(registerVal12)
	registerVal1.TradeAgainList = registerVal12
	local registerVal13 = CoD.BM_DecryptionBonusKeys.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 1095.000000, 1176.000000)
	registerVal13:setTopBottom(true, false, 313.000000, 390.000000)
	local function __FUNC_AA5A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.cryptokeyCount:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal13:subscribeToGlobalModel(arg0, "CryptoKeyProgress", "bonusKeysAwarded", __FUNC_AA5A_)
	registerVal1:addElement(registerVal13)
	registerVal1.BMDecryptionBonusKeys = registerVal13
	registerVal14 = CoD.BM_DecryptionCrate.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, 98.430000, 177.430000)
	registerVal14:setTopBottom(true, false, 266.430000, 345.430000)
	registerVal14:setScale(0.600000)
	registerVal1:addElement(registerVal14)
	registerVal1.BMDecryptionCrate = registerVal14
	registerVal15 = CoD.BM_DecryptionTradeAgain.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, false, 83.820000, 200.040000)
	registerVal15:setTopBottom(true, false, 351.500000, 368.500000)
	registerVal1:addElement(registerVal15)
	registerVal1.BMDecryptionTradeAgain = registerVal15
	registerVal16 = CoD.BM_DecryptionNoBundleUses.new(registerVal1, arg0)
	registerVal16:setLeftRight(true, false, 89.320000, 194.540000)
	registerVal16:setTopBottom(true, false, 390.000000, 407.000000)
	registerVal1:addElement(registerVal16)
	registerVal1.BMDecryptionNoBundleUses = registerVal16
	registerVal17 = CoD.BM_Debug_LootItemStats.new(registerVal1, arg0)
	registerVal17:setLeftRight(true, false, 382.930000, 582.930000)
	registerVal17:setTopBottom(true, false, 127.000000, 152.000000)
	registerVal1:addElement(registerVal17)
	registerVal1.DebugLootItemStats = registerVal17
	local registerVal18 = CoD.BM_GunMeter.new(registerVal1, arg0)
	registerVal18:setLeftRight(true, false, 465.000000, 815.000000)
	registerVal18:setTopBottom(true, false, 71.500000, 172.500000)
	registerVal18:setScale(0.600000)
	registerVal1:addElement(registerVal18)
	registerVal1.BMGunMeter0 = registerVal18
	local registerVal19 = {}
	registerVal19.left = registerVal12
	registerVal9.navigation = registerVal19
	registerVal19 = {}
	registerVal19.right = registerVal9
	registerVal12.navigation = registerVal19
	registerVal19 = {}
	local registerVal20 = {}
	local function __FUNC_AB36_()
		registerVal1:setupElementClipCounter(13.000000)
		registerVal3:completeAnimation()
		registerVal1.LeftPanel:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.Screen:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal1.BMLogo:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.feFooterContainerNOTLobby:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.TradeAgainBacking:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.decryptionList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.BMTradeAgainFocus:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal1.StartMenuCurrencyCounts:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.TradeAgainList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal1.BMDecryptionCrate:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.BMDecryptionTradeAgain:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal1.BMDecryptionNoBundleUses:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal16, {})
		registerVal18:completeAnimation()
		registerVal1.BMGunMeter0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal18, {})
	end

	registerVal20.DefaultClip = __FUNC_AB36_
	local function __FUNC_B0A1_()
		registerVal1:setupElementClipCounter(10.000000)
		local function __FUNC_B4D7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal1.LeftPanel:setAlpha(0.000000)
		__FUNC_B4D7_(registerVal3, {})
		local function __FUNC_B689_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal1.Screen:setAlpha(0.000000)
		__FUNC_B689_(registerVal4, {})
		local function __FUNC_B83D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal1.BMLogo:setAlpha(0.000000)
		__FUNC_B83D_(registerVal6, {})
		local function __FUNC_B9F1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal1.feFooterContainerNOTLobby:setAlpha(0.000000)
		__FUNC_B9F1_(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.TradeAgainBacking:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal8, {})
		local function __FUNC_BBA5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 419.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal1.decryptionList:setAlpha(0.000000)
		__FUNC_BBA5_(registerVal9, {})
		local function __FUNC_BD59_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal1.StartMenuCurrencyCounts:setAlpha(0.000000)
		__FUNC_BD59_(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.TradeAgainList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal1.BMDecryptionCrate:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.BMDecryptionTradeAgain:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal15, {})
	end

	registerVal20.Rolling = __FUNC_B0A1_
	registerVal19.DefaultState = registerVal20
	registerVal20 = {}
	local function __FUNC_BF0D_()
		registerVal1:setupElementClipCounter(13.000000)
		registerVal3:completeAnimation()
		registerVal1.LeftPanel:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.Screen:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal4, {})
		local function __FUNC_C4A5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.950000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal1.BMLogo:setAlpha(1.000000)
		__FUNC_C4A5_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.feFooterContainerNOTLobby:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.TradeAgainBacking:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal8, {})
		local function __FUNC_C659_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.950000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal1.decryptionList:setAlpha(1.000000)
		__FUNC_C659_(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.BMTradeAgainFocus:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal1.StartMenuCurrencyCounts:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.TradeAgainList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal1.BMDecryptionCrate:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.BMDecryptionTradeAgain:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal1.BMDecryptionNoBundleUses:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal16, {})
		registerVal18:completeAnimation()
		registerVal1.BMGunMeter0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal18, {})
		registerVal1.nextClip = "DefaultClip"
	end

	registerVal20.DefaultClip = __FUNC_BF0D_
	local function __FUNC_C80D_()
		registerVal1:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal1.LeftPanel:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.Screen:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal4, {})
		local function __FUNC_CC40_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.950000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal1.BMLogo:setAlpha(1.000000)
		__FUNC_CC40_(registerVal6, {})
		local function __FUNC_CDF5_(arg0, arg1)
			local function __FUNC_CF6F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_CF6F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CF6F_)
		end

		registerVal7:completeAnimation()
		registerVal1.feFooterContainerNOTLobby:setAlpha(0.000000)
		__FUNC_CDF5_(registerVal7, {})
		local function __FUNC_D121_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal1.TradeAgainBacking:setAlpha(0.000000)
		__FUNC_D121_(registerVal8, {})
		local function __FUNC_D2D5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.950000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal1.decryptionList:setAlpha(1.000000)
		__FUNC_D2D5_(registerVal9, {})
		local function __FUNC_D489_(arg0, arg1)
			local function __FUNC_D603_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_D603_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D603_)
		end

		registerVal11:completeAnimation()
		registerVal1.StartMenuCurrencyCounts:setAlpha(0.000000)
		__FUNC_D489_(registerVal11, {})
		local function __FUNC_D7B5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal1.TradeAgainList:setAlpha(0.000000)
		__FUNC_D7B5_(registerVal12, {})
		local function __FUNC_D969_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal1.BMDecryptionCrate:setAlpha(0.000000)
		__FUNC_D969_(registerVal14, {})
		local function __FUNC_DB1D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal1.BMDecryptionTradeAgain:setAlpha(0.000000)
		__FUNC_DB1D_(registerVal15, {})
	end

	registerVal20.Results = __FUNC_C80D_
	registerVal19.Rolling = registerVal20
	registerVal20 = {}
	local function __FUNC_DCD1_()
		registerVal1:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal1.LeftPanel:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.Screen:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal4, {})
		local function __FUNC_E1C8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.950000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal1.BMLogo:setAlpha(1.000000)
		__FUNC_E1C8_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.feFooterContainerNOTLobby:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal7, {})
		local function __FUNC_E37D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.950000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal1.TradeAgainBacking:setAlpha(1.000000)
		__FUNC_E37D_(registerVal8, {})
		local function __FUNC_E531_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.950000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal1.decryptionList:setAlpha(1.000000)
		__FUNC_E531_(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.BMTradeAgainFocus:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal10, {})
		local function __FUNC_E6E5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.950000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal1.StartMenuCurrencyCounts:setAlpha(1.000000)
		__FUNC_E6E5_(registerVal11, {})
		local function __FUNC_E899_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.950000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal1.TradeAgainList:setAlpha(1.000000)
		__FUNC_E899_(registerVal12, {})
		local function __FUNC_EA4D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.950000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal1.BMDecryptionCrate:setAlpha(1.000000)
		__FUNC_EA4D_(registerVal14, {})
		local function __FUNC_EC01_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal1.BMDecryptionTradeAgain:setAlpha(1.000000)
		__FUNC_EC01_(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal1.BMDecryptionNoBundleUses:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal16, {})
	end

	registerVal20.DefaultClip = __FUNC_DCD1_
	local function __FUNC_EDB5_()
		registerVal1:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal1.LeftPanel:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.Screen:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal1.BMLogo:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal6, {})
		local function __FUNC_F1EF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal1.feFooterContainerNOTLobby:setAlpha(1.000000)
		__FUNC_F1EF_(registerVal7, {})
		local function __FUNC_F3A1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal1.TradeAgainBacking:setAlpha(1.000000)
		__FUNC_F3A1_(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.decryptionList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal1.StartMenuCurrencyCounts:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal11, {})
		local function __FUNC_F555_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal1.TradeAgainList:setAlpha(1.000000)
		__FUNC_F555_(registerVal12, {})
		local function __FUNC_F709_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal1.BMDecryptionCrate:setAlpha(1.000000)
		__FUNC_F709_(registerVal14, {})
		local function __FUNC_F8BD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal1.BMDecryptionTradeAgain:setAlpha(1.000000)
		__FUNC_F8BD_(registerVal15, {})
	end

	registerVal20.Reroll = __FUNC_EDB5_
	registerVal19.Results = registerVal20
	registerVal20 = {}
	local function __FUNC_FA71_()
		registerVal1:setupElementClipCounter(13.000000)
		registerVal3:completeAnimation()
		registerVal1.LeftPanel:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.Screen:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal1.BMLogo:setAlpha(0.950000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.feFooterContainerNOTLobby:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.TradeAgainBacking:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.decryptionList:setAlpha(0.950000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.BMTradeAgainFocus:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal1.StartMenuCurrencyCounts:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.TradeAgainList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal1.BMDecryptionCrate:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.BMDecryptionTradeAgain:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal1.BMDecryptionNoBundleUses:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal16, {})
		registerVal18:completeAnimation()
		registerVal1.BMGunMeter0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal18, {})
	end

	registerVal20.DefaultClip = __FUNC_FA71_
	local function __FUNC_FFE7_()
		registerVal1:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal1.LeftPanel:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal3, {})
		local function __FUNC_10437_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal1.BMLogo:setAlpha(1.000000)
		__FUNC_10437_(registerVal6, {})
		local function __FUNC_105E9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal1.feFooterContainerNOTLobby:setAlpha(0.000000)
		__FUNC_105E9_(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.TradeAgainBacking:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal8, {})
		local function __FUNC_1079D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal1.decryptionList:setAlpha(0.000000)
		__FUNC_1079D_(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.BMTradeAgainFocus:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal1.StartMenuCurrencyCounts:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.TradeAgainList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal1.BMDecryptionCrate:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.BMDecryptionTradeAgain:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal15, {})
	end

	registerVal20.Rolling = __FUNC_FFE7_
	registerVal19.Reroll = registerVal20
	registerVal1.clipsPerState = registerVal19
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_10951_(arg1, arg2)
		local registerVal3 = IsPerControllerTablePropertyValue(arg0, "supplyDropQuickAnim", true)
		if not registerVal3 then
			SetMenuState(registerVal1, "DefaultState")
			local registerVal5 = {}
			registerVal5.elementName = "SelfIdentityBadge"
			registerVal5.clipName = "Hide"
			PlayClipOnElement(registerVal1, registerVal5, arg0)
		else
			SetMenuState(registerVal1, "Reroll")
			SetElementPropertyByElementName(registerVal1, "decryptionList", "m_focusable", false)
			registerVal5 = {}
			registerVal5.elementName = "SelfIdentityBadge"
			registerVal5.clipName = "Hide"
			PlayClipOnElement(registerVal1, registerVal5, arg0)
			UpdateAllMenuButtonPrompts(registerVal1, arg0)
		end
		if not nil then
			registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_opened", __FUNC_10951_)
	local function __FUNC_10BC6_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsMenuInState(arg1, "Results")
		if registerVal4 then
			GoBack(registerVal1, arg2)
			ClearMenuSavedState(arg1)
			return true
		end
	end

	local function __FUNC_10C81_(arg0, arg1, arg2)
		local registerVal3 = IsMenuInState(arg1, "Results")
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_10BC6_, __FUNC_10C81_, false)
	local function __FUNC_10DC5_(arg1)
		SendClientScriptNotify(arg0, "BlackMarket", "normal_camera")
		BlackMarketResultsOnClose(registerVal1, arg1, arg0)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal1, "close", __FUNC_10DC5_)
	local function __FUNC_10E87_(arg1, arg2)
		local registerVal2 = IsSelfInState(registerVal1, "Results")
		if registerVal2 then
			CheckAndShowBonusCryptoKeys(registerVal1, arg0)
			CheckAndShowGunMeter(registerVal1, arg0, registerVal1)
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal1, "setState", __FUNC_10E87_)
	registerVal7:setModel(registerVal1.buttonModel, arg0)
	registerVal9.id = "decryptionList"
	registerVal12.id = "TradeAgainList"
	local registerVal21 = {}
	registerVal21.name = "menu_loaded"
	registerVal21.controller = arg0
	registerVal1:processEvent(registerVal21)
	registerVal21 = {}
	registerVal21.name = "update_state"
	registerVal21.menu = registerVal1
	registerVal1:processEvent(registerVal21)
	registerVal19 = registerVal1:restoreState()
	if not registerVal19 then
		registerVal21 = {}
		registerVal21.name = "gain_focus"
		registerVal21.controller = arg0
		registerVal1.decryptionList:processEvent(registerVal21)
	end
	local function __FUNC_10F57_(arg1)
		arg1.LeftPanel:close()
		arg1.SelfIdentityBadge:close()
		arg1.BMLogo:close()
		arg1.feFooterContainerNOTLobby:close()
		arg1.decryptionList:close()
		arg1.BMTradeAgainFocus:close()
		arg1.StartMenuCurrencyCounts:close()
		arg1.TradeAgainList:close()
		arg1.BMDecryptionBonusKeys:close()
		arg1.BMDecryptionCrate:close()
		arg1.BMDecryptionTradeAgain:close()
		arg1.BMDecryptionNoBundleUses:close()
		arg1.DebugLootItemStats:close()
		arg1.BMGunMeter0:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "BM_Decryption.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_10F57_)
	if __FUNC_44D4_ then
		__FUNC_44D4_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.BM_Decryption = __FUNC_6DDE_
