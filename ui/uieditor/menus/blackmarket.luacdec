-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.menus.ZMHD.ZMHD_Community_Theme")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.Lobby.LobbyStreamerBlackFade")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.Scrollbars.verticalCounterBlackMarket")
require("ui.uieditor.widgets.BlackMarket.CryptokeyWidget")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.BlackMarket.BlackMarketSafeAreaContainer")
require("ui.uieditor.widgets.BlackMarket.BM_TopNavBtn")
require("ui.uieditor.widgets.BlackMarket.BM_Promo")
require("ui.uieditor.widgets.BlackMarket.BM_GunMeter")
local registerVal1 = {}
local function __FUNC_D38_(arg0)
	CoD.OverlayUtility.UpdateBurnDupeProgress()
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.CreateModel(registerVal2, "BurnDupeProgress")
	return registerVal1
end

registerVal1.getModel = __FUNC_D38_
DataSources.BurnDupeProgress = registerVal1
registerVal1 = {}
local function __FUNC_E50_(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.CreateModel(registerVal2, "autoevents")
	registerVal2 = Engine.CreateModel(registerVal1, "cycled")
	local registerVal3 = Engine.GetModelValue(registerVal2)
	if not registerVal3 then
		Engine.SetModelValue(registerVal2, 1.000000)
	end
	return registerVal1
end

registerVal1.getModel = __FUNC_E50_
DataSources.AutoeventsCycled = registerVal1
registerVal1 = {}
local function __FUNC_F98_(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.CreateModel(registerVal2, "autoevents")
	registerVal2 = Engine.CreateModel(registerVal1, "autoevent_timer_bribe")
	local registerVal3 = Engine.CreateModel(registerVal1, "autoevent_timer_lootbundle_promo")
	local registerVal4 = Engine.CreateModel(registerVal1, "autoevent_timer_trifecta_promo")
	local registerVal5 = Engine.CreateModel(registerVal1, "autoevent_timer_limited_time")
	local registerVal6 = Engine.CreateModel(registerVal1, "autoevent_timer_rare100")
	local registerVal7 = Engine.CreateModel(registerVal1, "autoevent_timer_rare_nodupe_20bundle")
	local registerVal8 = Engine.CreateModel(registerVal1, "autoevent_timer_grandslam")
	local registerVal9 = Engine.CreateModel(registerVal1, "autoevent_timer_rare_bundle_10for5")
	local registerVal10 = Engine.GetModelValue(registerVal2)
	if not registerVal10 then
		Engine.SetModelValue(registerVal2, "00:00:00")
	end
	registerVal10 = Engine.GetModelValue(registerVal9)
	if not registerVal10 then
		Engine.SetModelValue(registerVal9, "00:00:00")
	end
	registerVal10 = Engine.GetModelValue(registerVal4)
	if not registerVal10 then
		Engine.SetModelValue(registerVal4, "00:00:00")
	end
	registerVal10 = Engine.GetModel(registerVal1, "autoevent_timer_bribe_red")
	if not registerVal10 then
		local registerVal11 = Engine.CreateModel(registerVal1, "autoevent_timer_bribe_red")
		Engine.SetModelValue(registerVal11, false)
	end
	registerVal10 = Engine.GetModel(registerVal1, "autoevent_timer_lootbundle_promo_red")
	if not registerVal10 then
		registerVal11 = Engine.CreateModel(registerVal1, "autoevent_timer_lootbundle_promo_red")
		Engine.SetModelValue(registerVal11, false)
	end
	registerVal10 = Engine.GetModel(registerVal1, "autoevent_timer_trifecta_promo_red")
	if not registerVal10 then
		registerVal11 = Engine.CreateModel(registerVal1, "autoevent_timer_trifecta_promo_red")
		Engine.SetModelValue(registerVal11, false)
	end
	registerVal10 = Engine.GetModel(registerVal1, "autoevent_timer_rare_nodupe_20bundle_red")
	if not registerVal10 then
		registerVal11 = Engine.CreateModel(registerVal1, "autoevent_timer_rare_nodupe_20bundle_red")
		Engine.SetModelValue(registerVal11, false)
	end
	return registerVal1
end

registerVal1.getModel = __FUNC_F98_
DataSources.AutoeventsBribeTimer = registerVal1
function CoD.OverlayUtility.UpdateBurnDupeProgress()
	local registerVal0 = Engine.GetBurnDupeProgress()
	if registerVal0 == nil then
		{}.total = 0.000000
		{}.processed = 0.000000
	end
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.CreateModel(registerVal2, "BurnDupeProgress")
	local registerVal3 = Engine.CreateModel(registerVal1, "total")
	Engine.SetModelValue(registerVal3, {}.total)
	registerVal3 = Engine.CreateModel(registerVal1, "processed")
	Engine.SetModelValue(registerVal3, {}.processed)
	if 0.000000 < {}.processed and 0.000000 < {}.total then
	end
	if 1.000000 < ({}.processed / {}.total) then
	end
	local registerVal4 = Engine.CreateModel(registerVal1, "fraction")
	Engine.SetModelValue(registerVal4, 1.000000)
	registerVal4 = Engine.CreateModel(registerVal1, "progressString")
	Engine.SetModelValue(registerVal4, ({}.processed .. " / " .. {}.total))
end

local function __FUNC_1834_(arg0, arg1, arg2, arg3, arg4)
	if 0.000000 < arg3.itemCODPointCost then
		GoBackAndOpenStoreCodPointsOverlayOnParent(arg4, arg4.menuName, arg2)
	else
		GoBackAndOpenStoreCodPointsOverlayOnParent(arg4, "BMCPStore", arg2)
	end
end

local function __FUNC_1920_(arg0, arg1, arg2, arg3, arg4)
	OpenCodPointsStore(arg0, arg1, arg2, "BMCPStore", arg4)
end

local function __FUNC_1997_(arg0)
	if arg0.supplyDropType == CoD.BlackMarketUtility.DropTypes.BUNDLE and arg0.itemCODPointCost ~= 0.000000 or arg0.itemCost ~= 0.000000 then
	end
	return true
end

local registerVal5 = {}
registerVal5.menuName = "SystemOverlay_Full"
registerVal5.frameWidget = "CoD.SystemOverlay_BlackMarket"
local function __FUNC_1AC5_(arg0, arg1)
	local registerVal2 = __FUNC_1997_(arg1)
	if registerVal2 then
		return Engine.Localize("MPUI_BM_SUPPLY_DROPS_REMAINING")
	else
		if arg1.supplyDropType == CoD.BlackMarketUtility.DropTypes.BRIBE then
			if arg1.again then
				return Engine.Localize("MPUI_BM_BRIBE_REROLL")
			end
			CoD.BlackMarketUtility.GetCurrentBribePopupTitle()
			return Engine.Localize(CoD.BlackMarketUtility.GetCurrentBribePopupTitle)
		else
			local registerVal3 = Engine.GetCoDPoints(arg0)
			if arg1.itemCODPointCost == 0.000000 or registerVal3 < arg1.itemCODPointCost then
				registerVal3 = CoD.BlackMarketUtility.GetCurrentCryptoKeyCount(arg0)
				if arg1.itemCost == 0.000000 or registerVal3 < arg1.itemCost then
					return "MPUI_BM_NO_CURRENCY"
				end
			end
		end
	end
	if arg1.again then
		return Engine.Localize("MENU_PURCHASE_CONFIRMAITON")
	end
	Engine.Localize(arg1.displayText)
	return Engine.ToUpper(Engine.Localize)
end

registerVal5.title = __FUNC_1AC5_
local function __FUNC_1E95_(arg0, arg1)
	if arg1.again then
		return arg1.displayText
	else
		local registerVal2 = __FUNC_1997_(arg1)
		if registerVal2 then
			local registerVal3 = IsBundleActive(arg0)
			if not registerVal3 then
				registerVal3 = CoD.BlackMarketUtility.GetCurrentBundleCount(arg0)
			end
			registerVal3 = IsHundredBundleActive(arg0)
			if not registerVal3 then
				registerVal3 = CoD.BlackMarketUtility.GetCurrentHundredBundleCount(arg0)
			end
			registerVal3 = IsRareBundle10for5Active(arg0)
			if not registerVal3 then
				registerVal3 = CoD.BlackMarketUtility.GetCurrentRareBundle10for5Count(arg0)
			end
			registerVal3 = IsRare20BundleActive(arg0)
			if not registerVal3 then
				registerVal3 = CoD.BlackMarketUtility.GetCurrentRare20BundleCount(arg0)
			end
			registerVal3 = IsRare20LDBundleActive(arg0)
			if not registerVal3 then
				registerVal3 = CoD.BlackMarketUtility.GetCurrentRare20LDBundleCount(arg0)
			end
			return Engine.Localize("MPUI_BM_OPEN_REMAINING_CRATES", (((((0.000000 + registerVal3) + registerVal3) + registerVal3) + registerVal3) + registerVal3))
		else
			if arg1.supplyDropType ~= CoD.BlackMarketUtility.DropTypes.BRIBE and arg1.supplyDropType ~= CoD.BlackMarketUtility.DropTypes.BUNDLE and arg1.supplyDropType ~= CoD.BlackMarketUtility.DropTypes.HUNDRED_BUNDLE and arg1.supplyDropType == CoD.BlackMarketUtility.DropTypes.RARE_BUNDLE_10FOR5 or arg1.supplyDropType == CoD.BlackMarketUtility.DropTypes.RARE_20BUNDLE then
				registerVal3 = Engine.GetCoDPoints(arg0)
				if 0.000000 < arg1.itemCODPointCost and registerVal3 < arg1.itemCODPointCost then
					if arg1.displayText == "MPUI_BM_BRIBE_3X_GESTURES_TAUNTS" then
						arg1.displayText = "MPUI_BM_BRIBE_3X_GESTURES_TAUNTS_PROMO_TITLE"
					end
					return Engine.Localize("MPUI_BM_NO_CODPOINTS_DESCRIPTION", arg1.displayText)
				else
				else
					registerVal3 = Engine.GetCoDPoints(arg0)
					if 0.000000 < arg1.itemCODPointCost and registerVal3 < arg1.itemCODPointCost then
						registerVal3 = CoD.BlackMarketUtility.GetCurrentCryptoKeyCount(arg0)
						if arg1.itemCost == 0.000000 or registerVal3 < arg1.itemCost then
							return Engine.Localize("MPUI_BM_NO_CURRENCY_DESCRIPTION", arg1.displayText)
						else
						else
							registerVal3 = CoD.BlackMarketUtility.GetCurrentCryptoKeyCount(arg0)
							if arg1.itemCODPointCost == 0.000000 and registerVal3 < arg1.itemCost then
								return Engine.Localize("MPUI_BM_NOT_ENOUGH_CRYPTOKEYS")
							end
						end
					end
				end
			end
		end
	end
	if arg1.supplyDropType == CoD.BlackMarketUtility.DropTypes.BRIBE then
		CoD.BlackMarketUtility.GetCurrentBribePopupDescription()
		return Engine.Localize(CoD.BlackMarketUtility.GetCurrentBribePopupDescription)
	end
	if arg1.itemCODPointCost == 0.000000 then
		return Engine.Localize("MPUI_BM_PURCHASE_CONFIRMATION_KEYS_TEXT", arg1.displayText)
	else
		if arg1.itemCost == 0.000000 then
			return Engine.Localize("MPUI_BM_PURCHASE_CONFIRMATION_CODPOINTS_TEXT", arg1.displayText)
		else
			return Engine.Localize("MPUI_BM_PURCHASE_CONFIRMATION_TEXT", arg1.displayText)
		end
	end
end

registerVal5.description = __FUNC_1E95_
local function __FUNC_28B7_(arg0, arg1)
	return arg1.image
end

registerVal5.image = __FUNC_28B7_
local function __FUNC_28FF_(arg0, arg1)
	return arg1.itemCost
end

registerVal5.cost = __FUNC_28FF_
local function __FUNC_294A_(arg0, arg1)
	return arg1.itemCODPointCost
end

registerVal5.codpointcost = __FUNC_294A_
local function __FUNC_299E_(arg0, arg1)
	return arg1.supplyDropType
end

registerVal5.supplyDropType = __FUNC_299E_
local function __FUNC_29F0_(arg0, arg1)
	if arg1.supplyDropType == CoD.BlackMarketUtility.DropTypes.NO_DUPES_CRATE then
		return "MPUI_BM_RARE"
	end
	return CoD.BlackMarketUtility.GetCrateTypeString(arg1.supplyDropType)
end

registerVal5.cryptoKeyType.rarity = __FUNC_29F0_
registerVal5.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
registerVal5.state = "PurchaseSupplyDrop"
local function __FUNC_2B2E_(arg0, arg1)
	local function __FUNC_2BFB_(arg0, arg2)
		if arg2.purchasingBundle then
			return {}
		end
		local function __FUNC_396C_(arg0, arg2, arg3, arg4)
			local registerVal4 = {}
			local registerVal5 = {}
			registerVal5.displayText = arg0
			registerVal5.disabled = arg4
			registerVal4.models = registerVal5
			registerVal5 = {}
			registerVal5.action = arg2
			registerVal5.actionParam = arg1
			registerVal5.selectIndex = arg3
			registerVal5.disabledAllowNav = true
			registerVal4.properties = registerVal5
			return registerVal4
		end

		if arg2.purchasedBundle then
			local function __FUNC_3A6D_(arg0, arg1, arg3, arg4, arg5, arg6)
				arg4.supplyDropType = arg2.purchasedBundleType
				local registerVal6 = GoBack(arg5, arg3)
				CoD.BlackMarketUtility.TradeForCrateAction(arg0, arg1, arg3, arg4, registerVal6, Enum.InventoryCurrency.INVENTORY_CURRENCY_MP_BUNDLE_ITEM, arg2)
			end

			local function __FUNC_3BF3_(arg0, arg1, arg2, arg3, arg4)
				GoBack(arg4, arg2)
			end

			if arg2.purchasedBundleType == CoD.BlackMarketUtility.DropTypes.GRAND_SLAM then
				table.insert({}, __FUNC_396C_("MENU_CONTINUE_CAPS", __FUNC_3BF3_, true, false))
			else
				table.insert({}, __FUNC_396C_("MPUI_BM_OPEN_BUNDLE_NOW", __FUNC_3A6D_, true, false))
			end
			return {}
		end
		local function __FUNC_3C3C_(arg0, arg1, arg3, arg4, arg5)
			CoD.BlackMarketUtility.TradeForCrateAction(arg0, arg1, arg3, arg4, arg5, Enum.InventoryCurrency.INVENTORY_CURRENCY_MP_CRYPTO_KEYS, arg2)
		end

		local function __FUNC_3D56_(arg0, arg1, arg3, arg4, arg5)
			CoD.BlackMarketUtility.TradeForCrateAction(arg0, arg1, arg3, arg4, arg5, Enum.InventoryCurrency.INVENTORY_CURRENCY_COD_POINTS, arg2)
		end

		local function __FUNC_3E6A_(arg0, arg1, arg3, arg4, arg5)
			local registerVal5 = GoBack(arg5, arg3)
			arg4.supplyDropType = CoD.BlackMarketUtility.DropTypes.RARE
			registerVal5 = IsRare20LDBundleActive(arg3)
			registerVal5 = CoD.BlackMarketUtility.GetCurrentRare20LDBundleCount(arg3)
			if not registerVal5 and 0.000000 < registerVal5 then
				arg4.supplyDropType = CoD.BlackMarketUtility.DropTypes.RARE_20LDBUNDLE
			end
			CoD.BlackMarketUtility.TradeForCrateAction(arg0, arg1, arg3, arg4, registerVal5, Enum.InventoryCurrency.INVENTORY_CURRENCY_MP_BUNDLE_ITEM, arg2)
		end

		local function __FUNC_40DC_(arg0, arg1, arg3, arg4, arg5)
			local registerVal5 = GoBack(arg5, arg3)
			arg4.supplyDropType = CoD.BlackMarketUtility.DropTypes.HUNDRED_BUNDLE
			CoD.BlackMarketUtility.TradeForCrateAction(arg0, arg1, arg3, arg4, registerVal5, Enum.InventoryCurrency.INVENTORY_CURRENCY_MP_BUNDLE_ITEM, arg2)
		end

		local function __FUNC_4289_(arg0, arg1, arg3, arg4, arg5)
			local registerVal5 = GoBack(arg5, arg3)
			arg4.supplyDropType = CoD.BlackMarketUtility.DropTypes.RARE_BUNDLE_10FOR5
			CoD.BlackMarketUtility.TradeForCrateAction(arg0, arg1, arg3, arg4, registerVal5, Enum.InventoryCurrency.INVENTORY_CURRENCY_MP_BUNDLE_ITEM, arg2)
		end

		local function __FUNC_4439_(arg0, arg1, arg3, arg4, arg5)
			local registerVal5 = GoBack(arg5, arg3)
			arg4.supplyDropType = CoD.BlackMarketUtility.DropTypes.RARE_20BUNDLE
			CoD.BlackMarketUtility.TradeForCrateAction(arg0, arg1, arg3, arg4, registerVal5, Enum.InventoryCurrency.INVENTORY_CURRENCY_MP_BUNDLE_ITEM, arg2)
		end

		local function __FUNC_45E4_(arg0, arg1, arg3, arg4, arg5)
			local registerVal5 = GoBack(arg5, arg3)
			arg4.supplyDropType = CoD.BlackMarketUtility.DropTypes.RARE_20LDBUNDLE
			CoD.BlackMarketUtility.TradeForCrateAction(arg0, arg1, arg3, arg4, registerVal5, Enum.InventoryCurrency.INVENTORY_CURRENCY_MP_BUNDLE_ITEM, arg2)
		end

		local function __FUNC_4792_(arg0, arg1, arg2, arg3, arg4)
			GoBack(arg4, arg2)
		end

		local registerVal12 = __FUNC_1997_(arg1)
		if registerVal12 then
			local registerVal13 = IsBundleActive(arg0)
			registerVal13 = IsHundredBundleActive(arg0)
			registerVal13 = CoD.BlackMarketUtility.GetCurrentHundredBundleCount(arg0)
			if registerVal13 and not registerVal13 and 0.000000 < registerVal13 then
			end
			registerVal13 = IsBundleActive(arg0)
			registerVal13 = IsRareBundle10for5Active(arg0)
			registerVal13 = CoD.BlackMarketUtility.GetCurrentRareBundle10for5Count(arg0)
			if registerVal13 and not registerVal13 and 0.000000 < registerVal13 then
			end
			registerVal13 = IsBundleActive(arg0)
			registerVal13 = IsRare20BundleActive(arg0)
			registerVal13 = CoD.BlackMarketUtility.GetCurrentRare20BundleCount(arg0)
			if registerVal13 and not registerVal13 and 0.000000 < registerVal13 then
			end
			registerVal13 = IsBundleActive(arg0)
			registerVal13 = IsRare20LDBundleActive(arg0)
			registerVal13 = CoD.BlackMarketUtility.GetCurrentRare20LDBundleCount(arg0)
			if registerVal13 and not registerVal13 and 0.000000 < registerVal13 then
			end
			table.insert({}, __FUNC_396C_("MPUI_BM_OPEN_BUNDLE_NOW", __FUNC_45E4_, true, false))
			table.insert({}, __FUNC_396C_("MPUI_BM_OPEN_BUNDLE_LATER", __FUNC_4792_, false, false))
		else
			registerVal13 = Engine.GetCoDPoints(arg0)
			if 0.000000 < arg1.itemCODPointCost and registerVal13 < arg1.itemCODPointCost then
				registerVal13 = CoD.BlackMarketUtility.GetCurrentCryptoKeyCount(arg0)
				if arg1.itemCost == 0.000000 or registerVal13 < arg1.itemCost then
					table.insert({}, __FUNC_396C_("MPUI_PURCHASE_CODPOINTS_CAPS", __FUNC_1834_, true, false))
					table.insert({}, __FUNC_396C_("MENU_CANCEL_CAPS", __FUNC_4792_, false, false))
				else
				else
					registerVal13 = CoD.BlackMarketUtility.GetCurrentCryptoKeyCount(arg0)
					if arg1.itemCODPointCost == 0.000000 and registerVal13 < arg1.itemCost then
						table.insert({}, __FUNC_396C_("MENU_CONTINUE_CAPS", __FUNC_4792_, false, false))
					else
						if 0.000000 < arg1.itemCost then
							local registerVal15 = Engine.Localize("MPUI_BM_TRADE_CRYPTOKEYS", arg1.itemCost)
							local registerVal19 = CoD.BlackMarketUtility.GetCurrentCryptoKeyCount(arg0)
							if registerVal19 >= arg1.itemCost then
							end
							table.insert({}, __FUNC_396C_(registerVal15, __FUNC_3C3C_, true, true))
						end
						if 0.000000 < arg1.itemCODPointCost then
							registerVal15 = Engine.Localize("MPUI_BM_TRADE_COD_POINTS", arg1.itemCODPointCost)
							registerVal19 = Engine.GetCoDPoints(arg0)
							if registerVal19 >= arg1.itemCODPointCost then
							end
							table.insert({}, __FUNC_396C_(registerVal15, __FUNC_3D56_, false, true))
						end
						if arg1.supplyDropType == CoD.BlackMarketUtility.DropTypes.RARE then
							registerVal12 = IsBundleActive(arg0)
							if not registerVal12 then
								registerVal12 = CoD.BlackMarketUtility.GetCurrentBundleCount(arg0)
								registerVal13 = CoD.BlackMarketUtility.GetCurrentHundredBundleCount(arg0)
								registerVal13 = CoD.BlackMarketUtility.GetCurrentRareBundle10for5Count(arg0)
								registerVal13 = CoD.BlackMarketUtility.GetCurrentRare20BundleCount(arg0)
								if 0.000000 < (((registerVal12 + registerVal13) + registerVal13) + registerVal13) then
									local registerVal16 = Engine.Localize("MPUI_BM_OPEN_REMAINING_BUNDLE", (((registerVal12 + registerVal13) + registerVal13) + registerVal13))
									table.insert({}, __FUNC_396C_(registerVal16, __FUNC_3E6A_, false, false))
								else
									registerVal12 = IsHundredBundleActive(arg0)
									if not registerVal12 then
										registerVal12 = CoD.BlackMarketUtility.GetCurrentHundredBundleCount(arg0)
										if 0.000000 < registerVal12 then
											registerVal16 = Engine.Localize("MPUI_BM_OPEN_REMAINING_BUNDLE", registerVal12)
											table.insert({}, __FUNC_396C_(registerVal16, __FUNC_40DC_, false, false))
										else
											registerVal12 = IsRareBundle10for5Active(arg0)
											if not registerVal12 then
												registerVal12 = CoD.BlackMarketUtility.GetCurrentRareBundle10for5Count(arg0)
												if 0.000000 < registerVal12 then
													registerVal16 = Engine.Localize("MPUI_BM_OPEN_REMAINING_BUNDLE", registerVal12)
													table.insert({}, __FUNC_396C_(registerVal16, __FUNC_4289_, false, false))
												else
													registerVal12 = IsRare20BundleActive(arg0)
													if not registerVal12 then
														registerVal12 = CoD.BlackMarketUtility.GetCurrentRare20BundleCount(arg0)
														registerVal16 = Engine.Localize("MPUI_BM_OPEN_REMAINING_BUNDLE", registerVal12)
														table.insert({}, __FUNC_396C_(registerVal16, __FUNC_4439_, false, false))
														registerVal12 = IsRare20LDBundleActive(arg0)
														registerVal12 = CoD.BlackMarketUtility.GetCurrentRare20LDBundleCount(arg0)
														if 0.000000 < registerVal12 and not registerVal12 and 0.000000 < registerVal12 then
															registerVal16 = Engine.Localize("MPUI_BM_OPEN_REMAINING_BUNDLE", registerVal12)
															table.insert({}, __FUNC_396C_(registerVal16, __FUNC_45E4_, false, false))
														end
													end
												end
											end
										end
									end
								end
							end
						end
						table.insert({}, __FUNC_396C_("MENU_CANCEL_CAPS", __FUNC_4792_, false, false))
					end
				end
			end
		end
		return {}
	end

	local registerVal3 = DataSourceHelpers.ListSetup("PurchaseSupplyDropMenuList", __FUNC_2BFB_, true)
	DataSources.PurchaseSupplyDropMenuList = registerVal3
	return "PurchaseSupplyDropMenuList"
end

registerVal5.listDatasource = __FUNC_2B2E_
registerVal5[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
local function __FUNC_47DC_(arg0, arg1, arg2, arg3)
	if arg3.supplyDropType == CoD.BlackMarketUtility.DropTypes.BRIBE then
		local registerVal4 = Dvar.loot_bribeCrate_dwid:get()
		local function __FUNC_4EC7_()
			local registerVal0 = Dvar.loot_bribeCrate_dwid:get()
			if registerVal4 ~= registerVal0 or registerVal4 == 0.000000 then
				DelayGoBack(arg0, arg1)
			end
		end

		arg0:subscribeToGlobalModel(arg1, "AutoeventsCycled", "cycled", __FUNC_4EC7_)
	end
	if arg3.supplyDropType == CoD.BlackMarketUtility.DropTypes.RARE then
		registerVal4 = IsLootSaleActive(arg1)
		local function __FUNC_4F83_()
			local registerVal1 = IsLootSaleActive(arg1)
			if registerVal4 ~= registerVal1 then
				DelayGoBack(arg0, arg1)
			end
		end

		arg0:subscribeToGlobalModel(arg1, "AutoeventsCycled", "cycled", __FUNC_4F83_)
	end
	if arg3.supplyDropType == CoD.BlackMarketUtility.DropTypes.BUNDLE then
		registerVal4 = IsBundleActive(arg1)
		local function __FUNC_5003_()
			local registerVal1 = IsBundleActive(arg1)
			if registerVal4 ~= registerVal1 then
				DelayGoBack(arg0, arg1)
			end
		end

		arg0:subscribeToGlobalModel(arg1, "AutoeventsCycled", "cycled", __FUNC_5003_)
	end
	if arg3.supplyDropType == CoD.BlackMarketUtility.DropTypes.HUNDRED_BUNDLE then
		registerVal4 = IsHundredBundleActive(arg1)
		local function __FUNC_5081_()
			local registerVal1 = IsHundredBundleActive(arg1)
			if registerVal4 ~= registerVal1 then
				DelayGoBack(arg0, arg1)
			end
		end

		arg0:subscribeToGlobalModel(arg1, "AutoeventsCycled", "cycled", __FUNC_5081_)
	end
	if arg3.supplyDropType == CoD.BlackMarketUtility.DropTypes.RARE_BUNDLE_10FOR5 then
		registerVal4 = IsRareBundle10for5Active(arg1)
		local function __FUNC_5108_()
			local registerVal1 = IsRareBundle10for5Active(arg1)
			if registerVal4 ~= registerVal1 then
				DelayGoBack(arg0, arg1)
			end
		end

		arg0:subscribeToGlobalModel(arg1, "AutoeventsCycled", "cycled", __FUNC_5108_)
	end
	if arg3.supplyDropType == CoD.BlackMarketUtility.DropTypes.Rare_20Bundle then
		registerVal4 = IsRare20BundleActive(arg1)
		local function __FUNC_5193_()
			local registerVal1 = IsRare20BundleActive(arg1)
			if startingRare20BundleState ~= registerVal1 then
				DelayGoBack(arg0, arg1)
			end
		end

		arg0:subscribeToGlobalModel(arg1, "AutoeventsCycled", "cycled", __FUNC_5193_)
	end
	if arg3.supplyDropType == CoD.BlackMarketUtility.DropTypes.Rare_20LDBundle then
		registerVal4 = IsRare20LDBundleActive(arg1)
		local function __FUNC_523A_()
			local registerVal1 = IsRare20LDBundleActive(arg1)
			if startingRare20LDBundleState ~= registerVal1 then
				DelayGoBack(arg0, arg1)
			end
		end

		arg0:subscribeToGlobalModel(arg1, "AutoeventsCycled", "cycled", __FUNC_523A_)
	end
	if arg3.supplyDropType == CoD.BlackMarketUtility.DropTypes.NO_DUPES_CRATE or arg3.supplyDropType == CoD.BlackMarketUtility.DropTypes.NO_DUPES_BUNDLE then
		registerVal4 = IsNoDupesPromoActive(arg1)
		local function __FUNC_52E6_()
			local registerVal1 = IsNoDupesPromoActive(arg1)
			if registerVal4 ~= registerVal1 then
				DelayGoBack(arg0, arg1)
			end
		end

		arg0:subscribeToGlobalModel(arg1, "AutoeventsCycled", "cycled", __FUNC_52E6_)
	end
	if arg3.supplyDropType == CoD.BlackMarketUtility.DropTypes.GRAND_SLAM then
		registerVal4 = IsGrandSlamActive(arg1)
		local function __FUNC_536B_()
			local registerVal1 = IsGrandSlamActive(arg1)
			if registerVal4 ~= registerVal1 then
				DelayGoBack(arg0, arg1)
			end
		end

		arg0:subscribeToGlobalModel(arg1, "AutoeventsCycled", "cycled", __FUNC_536B_)
	end
end

registerVal5.postCreateStep = __FUNC_47DC_
CoD.OverlayUtility.AddSystemOverlay("PurchaseSupplyDropConfirmation", registerVal5)
registerVal5 = {}
registerVal5.menuName = "SystemOverlay_Full"
registerVal5.frameWidget = "CoD.SystemOverlay_BlackMarket"
local function __FUNC_53EC_(arg0, arg1)
	if arg1 == nil or arg1 == -1.000000 then
		return Engine.Localize("MPUI_BM_BURN_CONFIRMATION_NODUPES")
	else
		return Engine.Localize("MPUI_BM_BURN_CONFIRMATION")
	end
end

registerVal5.title = __FUNC_53EC_
local function __FUNC_54DA_(arg0, arg1)
	if arg1 == nil or arg1 == -1.000000 then
		return Engine.Localize("MPUI_BM_BURN_DUPLICATE_DESCRIPTION_NO_DUPLICATES")
	else
		if arg1 == 0.000000 then
			return Engine.Localize("MPUI_BM_BURN_DUPLICATE_DESCRIPTION_NONE")
		else
			if arg1 == 1.000000 then
				return Engine.Localize("MPUI_BM_BURN_DUPLICATE_DESCRIPTION_ONE")
			else
				return Engine.Localize("MPUI_BM_BURN_DUPLICATE_DESCRIPTION_MULTIPLE", arg1)
			end
		end
	end
end

registerVal5.description = __FUNC_54DA_
registerVal5.image = "uie_t7_blackmarket_bribe"
registerVal5.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
registerVal5.state = "BurnDuplicates"
registerVal5.totalDuplicates = CoD.BlackMarketUtility.GetNumDupesTotal
local function __FUNC_56A6_(arg0)
	return CoD.BlackMarketUtility.GetNumDupesForType(arg0, Enum.LootRarityType.LOOT_RARITY_TYPE_COMMON)
end

registerVal5.commonDuplicates = __FUNC_56A6_
local function __FUNC_57A0_(arg0)
	return CoD.BlackMarketUtility.GetNumDupesForType(arg0, Enum.LootRarityType.LOOT_RARITY_TYPE_RARE)
end

registerVal5.rareDuplicates = __FUNC_57A0_
local function __FUNC_589A_(arg0)
	return CoD.BlackMarketUtility.GetNumDupesForType(arg0, Enum.LootRarityType.LOOT_RARITY_TYPE_LEGENDARY)
end

registerVal5.legendaryDuplicates = __FUNC_589A_
local function __FUNC_5997_(arg0)
	return CoD.BlackMarketUtility.GetNumDupesForType(arg0, Enum.LootRarityType.LOOT_RARITY_TYPE_EPIC)
end

registerVal5.epicDuplicates = __FUNC_5997_
local function __FUNC_5A8E_(arg0)
	local function __FUNC_5B4B_(arg0, arg1)
		local function __FUNC_5E36_(arg0, arg1, arg2)
			local registerVal3 = {}
			local registerVal4 = {}
			registerVal4.displayText = arg0
			registerVal3.models = registerVal4
			registerVal4 = {}
			registerVal4.action = arg1
			registerVal4.selectIndex = arg2
			registerVal3.properties = registerVal4
			return registerVal3
		end

		local registerVal5 = CoD.BlackMarketUtility.GetNumDupesTotal(arg0)
		if not arg1.finishedBurningDuplicates and registerVal5 == 0.000000 and not arg1.isBurningDuplicates then
		end
		if true then
			local function __FUNC_5EE2_(arg0, arg1, arg2, arg3, arg4)
				GoBack(arg4, arg2)
			end

			__FUNC_5E36_("MENU_OK_CAPS", __FUNC_5EE2_, true)
			{} = {}
			return {}
		end
		if arg1.isBurningDuplicates then
			return {}
		end
		local function __FUNC_5F2C_(arg0, arg2, arg3, arg4, arg5)
			if arg1.isBurningDuplicates then
				return 
			end
			local registerVal5 = Engine.GetLobbyUIScreen()
			if registerVal5 ~= LobbyData.UITargets.UI_MPLOBBYONLINE.id and registerVal5 ~= LobbyData.UITargets.UI_MPLOBBYONLINEPUBLICGAME.id and registerVal5 ~= LobbyData.UITargets.UI_MPLOBBYONLINEARENA.id and registerVal5 ~= LobbyData.UITargets.UI_MPLOBBYONLINEARENAGAME.id then
				GoBack(arg5, arg3)
				LuaUtils.UI_ShowErrorMessageDialog(arg3, "MPUI_BM_BURN_DUPLICATES_FAILED", "")
			end
			local registerVal6 = Engine.BurnLootDuplicates(arg3, Enum.eModes.MODE_MULTIPLAYER)
			if Engine.BurnLootDuplicates == nil or not registerVal6 then
				GoBack(arg5, arg3)
				LuaUtils.UI_ShowErrorMessageDialog(arg3, "MPUI_BM_BURN_DUPLICATES_FAILED", "")
				return 
			end
			arg1.isBurningDuplicates = true
			arg5[CoD.OverlayUtility.GoBackPropertyName] = nil
			arg1.disabled = true
			arg0:setState("BurningDuplicates")
			arg0.BurningDuplicatesAnimation:playClip("StartBurning")
			arg0.BurningDuplicatesAnimation.nextClip = "Burning"
			arg1:updateDataSource(true)
			CoD.Menu.UpdateAllButtonPrompts(arg5, arg3)
			registerVal6 = CoD.BlackMarketUtility.GetProgressTowardNextKey(arg3)
			local registerVal7 = CoD.BlackMarketUtility.GetNumDupesForType(arg3, Enum.LootRarityType.LOOT_RARITY_TYPE_COMMON)
			local registerVal8 = CoD.BlackMarketUtility.GetNumDupesForType(arg3, Enum.LootRarityType.LOOT_RARITY_TYPE_RARE)
			local registerVal9 = CoD.BlackMarketUtility.GetNumDupesForType(arg3, Enum.LootRarityType.LOOT_RARITY_TYPE_LEGENDARY)
			local registerVal10 = CoD.BlackMarketUtility.GetNumDupesForType(arg3, Enum.LootRarityType.LOOT_RARITY_TYPE_EPIC)
			local registerVal11 = CoD.BlackMarketUtility.GetXPEarnedForBurning(arg3, registerVal7, registerVal8, registerVal9, registerVal10)
			local registerVal12 = Dvar.ui_cryptocommondupes:exists()
			if registerVal12 then
				Dvar.ui_cryptocommondupes:set(0.000000)
				Dvar.ui_cryptoraredupes:set(0.000000)
				Dvar.ui_cryptolegendarydupes:set(0.000000)
				Dvar.ui_cryptoepicdupes:set(0.000000)
			end
			Engine.PlaySound("uin_bm_keyburn_loop")
			CoD.OverlayUtility.UpdateBurnDupeProgress()
			local function __FUNC_69D4_(arg2, arg4)
				local registerVal2 = Engine.GetBurnDupeState()
				local registerVal3 = Engine.IsInventoryBusy(arg3)
				if not registerVal3 and registerVal2 == Enum.LootBurnDupeState.LOOT_BURN_DUPE_REQUESTED or registerVal2 == Enum.LootBurnDupeState.LOOT_BURN_DUPE_BUSY then
					CoD.OverlayUtility.UpdateBurnDupeProgress()
					Engine.PlaySound("uin_bm_keyburn_loop")
					LUI.UIElement.clipOver(arg2, arg4)
				else
					CoD.OverlayUtility.UpdateBurnDupeProgress()
					Engine.PlaySound("uin_bm_keyburn_loop")
					arg2:playClip("StopBurning")
					local function __FUNC_6CF6_(arg2, arg4)
						Engine.PlaySound("uin_bm_keyburn_done")
						CoD.OverlayUtility.UpdateBurnDupeProgress()
						arg2:registerEventHandler("clip_over", LUI.UIElement.clipOver)
						arg1.finishedBurningDuplicates = true
						local registerVal4 = CoD.OverlayUtility.DefaultGoBack()
						arg5[CoD.OverlayUtility.GoBackPropertyName] = registerVal4
						arg1.disabled = false
						CoD.Menu.UpdateAllButtonPrompts(arg5, arg3)
						if registerVal2 == Enum.LootBurnDupeState.LOOT_BURN_DUPE_FAILED then
							GoBack(arg5, arg3)
							LuaUtils.UI_ShowErrorMessageDialog(arg3, "MPUI_BM_BURN_DUPLICATES_FAILED", "")
							return 
						end
						arg0:setState("BurnedDuplicates")
						local registerVal2 = math.floor((((registerVal6 * CoD.BlackMarketUtility.XPPerCryptoKey) + registerVal11) / CoD.BlackMarketUtility.XPPerCryptoKey))
						if registerVal2 ~= 1.000000 or not "MPUI_BM_BURNED_DESC_EARNED_ONE" then
						end
						arg0.textForBurning.text:setText(Engine.Localize("MPUI_BM_BURNED_DESC", registerVal2))
						arg1:updateDataSource()
					end

					arg2:registerEventHandler("clip_over", __FUNC_6CF6_)
				end
			end

			arg0.BurningDuplicatesAnimation:registerEventHandler("clip_over", __FUNC_69D4_)
			SendFrontendControllerZeroMenuResponse(arg3, "BlackMarket", "burn_duplicates")
		end

		local function __FUNC_726B_(arg0, arg2, arg3, arg4, arg5)
			if arg1.isBurningDuplicates then
				return 
			end
			GoBack(arg5, arg3)
		end

		local registerVal7 = Dvar.tu4_burnDuplicates:exists()
		if registerVal7 then
			registerVal7 = Dvar.tu4_burnDuplicates:get()
			registerVal7 = Dvar.tu4_burnDuplicates:get()
			if registerVal7 == true or registerVal7 == "1" then
				table.insert({}, __FUNC_5E36_("MPUI_BURN_DUPLICATES_CAPS", __FUNC_5F2C_, false))
			end
		end
		table.insert({}, __FUNC_5E36_("MENU_CANCEL_CAPS", __FUNC_726B_, true))
		return {}
	end

	local registerVal2 = DataSourceHelpers.ListSetup("BurnDuplicatesMenuList", __FUNC_5B4B_, true)
	DataSources.BurnDuplicatesMenuList = registerVal2
	return "BurnDuplicatesMenuList"
end

registerVal5.listDatasource = __FUNC_5A8E_
registerVal5[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
CoD.OverlayUtility.AddSystemOverlay("BurnDuplicatesConfirmation", registerVal5)
registerVal5 = {}
registerVal5.menuName = "SystemOverlay_Full"
registerVal5.frameWidget = "CoD.SystemOverlay_BlackMarket"
local function __FUNC_72ED_(arg0, arg1)
	local registerVal3 = Engine.GetCoDPoints(arg0)
	if arg1.itemCODPointCost == 0.000000 or registerVal3 < arg1.itemCODPointCost then
		registerVal3 = CoD.BlackMarketUtility.GetCurrentCryptoKeyCount(arg0)
		if arg1.itemCost == 0.000000 or registerVal3 < arg1.itemCost then
			return "MPUI_BM_NO_CURRENCY"
		end
	end
	Engine.Localize(arg1.displayText)
	return Engine.ToUpper(Engine.Localize)
end

registerVal5.title = __FUNC_72ED_
local function __FUNC_74DB_(arg0, arg1)
	local registerVal3 = Engine.GetCoDPoints(arg0)
	registerVal3 = CoD.BlackMarketUtility.GetCurrentCryptoKeyCount(arg0)
	if 0.000000 < arg1.itemCODPointCost and registerVal3 < arg1.itemCODPointCost and 0.000000 < arg1.itemCost and registerVal3 < arg1.itemCost then
		return Engine.Localize("MPUI_BM_NO_CURRENCY_DESCRIPTION", arg1.displayText)
	else
		registerVal3 = Engine.GetCoDPoints(arg0)
		if arg1.itemCost == 0.000000 and registerVal3 < arg1.itemCODPointCost then
			return Engine.Localize("MPUI_BM_TRIFECTA_NEED_CODPOINTS", arg1.displayText)
		else
			registerVal3 = CoD.BlackMarketUtility.GetCurrentCryptoKeyCount(arg0)
			if arg1.itemCODPointCost == 0.000000 and registerVal3 < arg1.itemCost then
				return Engine.Localize("MPUI_BM_TRIFECTA_NEED_CRYPTOKEYS", arg1.displayText)
			end
		end
	end
	if arg1.itemCODPointCost == 0.000000 then
		return Engine.Localize("MPUI_BM_PURCHASE_CONFIRMATION_KEYS_TEXT", arg1.displayText)
	else
		if arg1.itemCost == 0.000000 then
			return Engine.Localize("MPUI_BM_PURCHASE_CONFIRMATION_CODPOINTS_TEXT", arg1.displayText)
		end
	end
	return Engine.Localize("MPUI_BM_PURCHASE_CONFIRMATION_TEXT", arg1.displayText)
end

registerVal5.description = __FUNC_74DB_
registerVal5.image = "t7_blackmarket_promo_triple_play"
local function __FUNC_7918_(arg0, arg1)
	return arg1.itemCost
end

registerVal5.cost = __FUNC_7918_
local function __FUNC_7966_(arg0, arg1)
	return arg1.itemCODPointCost
end

registerVal5.codpointcost = __FUNC_7966_
registerVal5.supplyDropType = CoD.BlackMarketUtility.DropTypes.TRIFECTA
registerVal5.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
registerVal5.state = "PurchaseSupplyDrop"
local function __FUNC_79BA_(arg0, arg1)
	local function __FUNC_7A81_(arg0, arg2)
		if arg2.purchasingBundle then
			return {}
		end
		local function __FUNC_7FDE_(arg0, arg2, arg3, arg4)
			local registerVal4 = {}
			local registerVal5 = {}
			registerVal5.displayText = arg0
			registerVal5.disabled = arg4
			registerVal4.models = registerVal5
			registerVal5 = {}
			registerVal5.action = arg2
			registerVal5.actionParam = arg1
			registerVal5.selectIndex = arg3
			registerVal4.properties = registerVal5
			return registerVal4
		end

		local function __FUNC_80BD_(arg0, arg1, arg3, arg4, arg5)
			local registerVal5 = Dvar.trifecta_cryptokeys_sku:get()
			if registerVal5 then
				CoD.BlackMarketUtility.TradeForTrifectaAction(arg0, arg1, arg3, arg4, arg5, Enum.InventoryCurrency.INVENTORY_CURRENCY_MP_CRYPTO_KEYS, arg2, registerVal5)
			end
		end

		local function __FUNC_8239_(arg0, arg1, arg3, arg4, arg5)
			local registerVal5 = Dvar.trifecta_cod_points_sku:get()
			if registerVal5 then
				CoD.BlackMarketUtility.TradeForTrifectaAction(arg0, arg1, arg3, arg4, arg5, Enum.InventoryCurrency.INVENTORY_CURRENCY_COD_POINTS, arg2, registerVal5)
			end
		end

		local function __FUNC_83B1_(arg0, arg1, arg2, arg3, arg4)
			GoBack(arg4, arg2)
		end

		if arg2.purchasedBundle then
			table.insert({}, __FUNC_7FDE_("MENU_CONTINUE_CAPS", __FUNC_83B1_, true, false))
			return {}
		end
		local registerVal8 = Engine.GetCoDPoints(arg0)
		if 0.000000 < arg1.itemCODPointCost and registerVal8 < arg1.itemCODPointCost then
			registerVal8 = CoD.BlackMarketUtility.GetCurrentCryptoKeyCount(arg0)
			if arg1.itemCost == 0.000000 or registerVal8 < arg1.itemCost then
				table.insert({}, __FUNC_7FDE_("MPUI_PURCHASE_CODPOINTS_CAPS", __FUNC_1834_, true, false))
				table.insert({}, __FUNC_7FDE_("MENU_CANCEL_CAPS", __FUNC_83B1_, false, false))
			else
			else
				registerVal8 = CoD.BlackMarketUtility.GetCurrentCryptoKeyCount(arg0)
				if arg1.itemCODPointCost == 0.000000 and registerVal8 < arg1.itemCost then
					table.insert({}, __FUNC_7FDE_("MENU_CONTINUE_CAPS", __FUNC_83B1_, false, false))
				else
					if 0.000000 < arg1.itemCost then
						local registerVal10 = Engine.Localize("MPUI_BM_TRADE_CRYPTOKEYS", arg1.itemCost)
						local registerVal14 = CoD.BlackMarketUtility.GetCurrentCryptoKeyCount(arg0)
						if registerVal14 >= arg1.itemCost then
						end
						table.insert({}, __FUNC_7FDE_(registerVal10, __FUNC_80BD_, true, true))
					end
					if 0.000000 < arg1.itemCODPointCost then
						registerVal10 = Engine.Localize("MPUI_BM_TRADE_COD_POINTS", arg1.itemCODPointCost)
						registerVal14 = Engine.GetCoDPoints(arg0)
						if registerVal14 >= arg1.itemCODPointCost then
						end
						table.insert({}, __FUNC_7FDE_(registerVal10, __FUNC_8239_, false, true))
					end
					table.insert({}, __FUNC_7FDE_("MENU_CANCEL_CAPS", __FUNC_83B1_, false, false))
				end
			end
		end
		return {}
	end

	local registerVal3 = DataSourceHelpers.ListSetup("PurchaseTrifectaMenuList", __FUNC_7A81_, true)
	DataSources.PurchaseTrifectaMenuList = registerVal3
	return "PurchaseTrifectaMenuList"
end

registerVal5.listDatasource = __FUNC_79BA_
registerVal5[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
local function __FUNC_83FC_(arg0, arg1, arg2, arg3)
	local registerVal4 = IsTrifectaBundleActive(arg1)
	local function __FUNC_84C2_()
		local registerVal1 = IsTrifectaBundleActive(arg1)
		if registerVal4 ~= registerVal1 then
			DelayGoBack(arg0, arg1)
		end
	end

	arg0:subscribeToGlobalModel(arg1, "AutoeventsCycled", "cycled", __FUNC_84C2_)
end

registerVal5.postCreateStep = __FUNC_83FC_
CoD.OverlayUtility.AddSystemOverlay("PurchaseTrifectaConfirmation", registerVal5)
local function __FUNC_8549_(arg0, arg1)
	local function __FUNC_D4D8_()
		if Enum.LUIAlignment.LUI_ALIGNMENT_LEFT == Enum.LUIAlignment.LUI_ALIGNMENT_LEFT then
			Unhandled OpCode: HKS_OPCODE_SETUPVAL_R1 (0, 0, 0, 0x4E)
		else
			Unhandled OpCode: HKS_OPCODE_SETUPVAL_R1 (0, 0, 0, 0x4E)
		end
	end

	local function __FUNC_D5CD_(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
		local registerVal11 = Dvar.tu4_enableBonusCryptokeysHint:exists()
		registerVal11 = Dvar.tu4_enableBonusCryptokeysHint:get()
		if arg3 == "MPUI_BM_RARE_KEY_HINT_TEXT" and registerVal11 and registerVal11 == false then
		end
		if not arg8 then
		end
		if 1.000000 < 1.000000 then
		else
			__FUNC_D4D8_()
		end
		local registerVal12 = {}
		local registerVal13 = {}
		registerVal13.displayText = arg0
		registerVal13.displayTextTitle = arg0
		registerVal13.image = arg1
		registerVal13.hintText = "MPUI_BM_RARE_KEY_HINT_TEXT_NOBONUS"
		registerVal13.itemCount = arg4
		registerVal13.itemCODPointCost = arg5
		registerVal13.rewardCount = arg10
		registerVal13.hintTextAlign = Enum.LUIAlignment.LUI_ALIGNMENT_CENTER
		registerVal12.models = registerVal13
		registerVal13 = {}
		registerVal13.action = arg6
		registerVal13.supplyDropType = arg7
		local registerVal14 = {}
		registerVal14.displayText = arg0
		registerVal14.image = arg2
		registerVal14.itemCost = arg4
		registerVal14.itemCODPointCost = arg5
		registerVal14.supplyDropType = arg7
		registerVal13.actionParam = registerVal14
		registerVal13.columnSpan = 1.000000
		registerVal12.properties = registerVal13
		return registerVal12
	end

	local function __FUNC_D90B_(arg0, arg1, arg2, arg3, arg4)
		CoD.OverlayUtility.CreateOverlay(arg2, arg0, "PurchaseSupplyDropConfirmation", arg2, arg3)
	end

	local function __FUNC_D9CC_(arg0, arg1, arg2, arg3, arg4)
		local registerVal5 = tonumber(Dvar.loot_vialsFromKeysOffer:get())
		arg3.vials = registerVal5
		arg3.isCryptokeys = true
		arg3.cryptokeyCost = arg3.itemCost
		CoD.OverlayUtility.CreateOverlay(arg2, arg0, "PurchaseVialsConfirmation", arg2, arg3)
	end

	local function __FUNC_DB61_(arg0, arg1, arg2, arg3, arg4)
		CoD.BlackMarketUtility.TradeForCrateAction(arg0, arg1, arg2, arg3, arg4, Enum.InventoryCurrency.INVENTORY_CURRENCY_MP_BUNDLE_ITEM, {})
	end

	local function __FUNC_DC7A_(arg0, arg1, arg2, arg3, arg4)
		OpenOutfitStore(arg0, arg1, arg2, "BlackMarket", arg4, nil)
	end

	local function __FUNC_DCF2_(arg0, arg1, arg2, arg3, arg4)
		CoD.OverlayUtility.CreateOverlay(arg2, arg0, "PurchaseTrifectaConfirmation", arg2, arg3)
	end

	local function __FUNC_DDB2_(arg0, arg1, arg2, arg3, arg4)
		local registerVal5 = IsSixPackBundleInCooldown(arg2)
		if not registerVal5 then
			__FUNC_D90B_(arg0, arg1, arg2, arg3, arg4)
		end
	end

	local function __FUNC_DE2F_(arg0, arg1, arg2, arg3, arg4)
		local registerVal5 = IsDailyDoubleBundleInCooldown(arg2)
		if not registerVal5 then
			__FUNC_D90B_(arg0, arg1, arg2, arg3, arg4)
		end
	end

	local registerVal13 = IsTrifectaBundleActive(arg0)
	if registerVal13 then
		local registerVal15 = Dvar.trifecta_cryptokeys_drop_id:exists()
		registerVal15 = Engine.GetInventoryItemQuantity(arg0, Dvar.trifecta_cryptokeys_drop_id:get())
		if registerVal15 and registerVal15 == 0.000000 then
			registerVal15 = CoD.BlackMarketUtility.GetCrateCryptoKeyCost(CoD.BlackMarketUtility.DropTypes.TRIFECTA)
		end
		registerVal15 = Dvar.trifecta_cod_points_drop_id:exists()
		registerVal15 = Engine.GetInventoryItemQuantity(arg0, Dvar.trifecta_cod_points_drop_id:get())
		if registerVal15 and registerVal15 == 0.000000 then
			registerVal15 = CoD.BlackMarketUtility.GetCrateCODPointCost(CoD.BlackMarketUtility.DropTypes.TRIFECTA)
		end
		if 0.000000 < registerVal15 or 0.000000 < registerVal15 then
			registerVal15 = __FUNC_D5CD_("MPUI_BM_TRIFECTA", "t7_blackmarket_promo_triple_play", "t7_blackmarket_promo_triple_play", "MPUI_BM_TRIFECTA_KEY_HINT_TEXT", registerVal15, registerVal15, __FUNC_DCF2_, CoD.BlackMarketUtility.DropTypes.TRIFECTA, 2.000000, "MPUI_BM_TRIFECTA_PACKAGE_DESC")
			table.insert({}, registerVal15)
		end
	end
	registerVal13 = CoD.BlackMarketUtility.GetCurrentBribeString()
	if registerVal13 ~= nil then
		registerVal13 = CoD.BlackMarketUtility.GetCurrentBribeString()
		local registerVal14 = CoD.BlackMarketUtility.GetCurrentBribeImage()
		registerVal15 = CoD.BlackMarketUtility.GetCurrentBribeHint()
		local registerVal23 = CoD.BlackMarketUtility.GetCrateCryptoKeyCost(CoD.BlackMarketUtility.DropTypes.BRIBE)
		local registerVal24 = CoD.BlackMarketUtility.GetCrateCODPointCost(CoD.BlackMarketUtility.DropTypes.BRIBE)
		table.insert({}, __FUNC_D5CD_(registerVal13, registerVal14, (registerVal14 .. "_hover"), registerVal15, registerVal23, registerVal24, __FUNC_D90B_, CoD.BlackMarketUtility.DropTypes.BRIBE, 2.000000))
	end
	registerVal13 = IsGrandSlamActive(arg0)
	if registerVal13 then
		registerVal15 = Engine.GetInventoryItemQuantity(arg0, CoD.BlackMarketUtility.loot_grand_slam_drop_id)
		if registerVal15 == 0.000000 then
			registerVal15 = CoD.BlackMarketUtility.GetCrateCODPointCost(CoD.BlackMarketUtility.DropTypes.GRAND_SLAM)
		end
		if 0.000000 < 0.000000 or 0.000000 < 0.000000 then
			registerVal15 = __FUNC_D5CD_("MPUI_BM_GRAND_SLAM", "t7_blackmarket_crate_bribe_grandslam_large", "t7_blackmarket_crate_bribe_grandslam_large", "MPUI_BM_GRAND_SLAM_KEY_HINT_TEXT", 0.000000, 0.000000, __FUNC_D90B_, CoD.BlackMarketUtility.DropTypes.GRAND_SLAM, 2.000000, "MPUI_BM_GRAND_SLAM_PACKAGE_DESC")
			table.insert({}, registerVal15)
		end
	end
	registerVal13 = IsHundredBundleActive(arg0)
	if registerVal13 then
		registerVal13 = CoD.BlackMarketUtility.GetCurrentHundredBundleCount(arg0)
		if 0.000000 < registerVal13 then
			registerVal15 = Engine.Localize("MPUI_BM_BUNDLES_REMAINING", registerVal13)
			table.insert({}, __FUNC_D5CD_(CoD.BlackMarketUtility.HundredBundleTitle, CoD.BlackMarketUtility.HundredBundleImage, (CoD.BlackMarketUtility.HundredBundleImage .. "_glow"), registerVal15, 0.000000, 0.000000, __FUNC_DB61_, CoD.BlackMarketUtility.DropTypes.HUNDRED_BUNDLE, 2.000000))
		else
			registerVal15 = Engine.Localize(CoD.BlackMarketUtility.HundredBundleHint, Engine.DvarInt(nil, "loot_rare100_cpcost"))
			registerVal24 = CoD.BlackMarketUtility.GetCrateCODPointCost(CoD.BlackMarketUtility.DropTypes.HUNDRED_BUNDLE)
			table.insert({}, __FUNC_D5CD_(CoD.BlackMarketUtility.HundredBundleTitle, CoD.BlackMarketUtility.HundredBundleImage, (CoD.BlackMarketUtility.HundredBundleImage .. "_glow"), registerVal15, 0.000000, registerVal24, __FUNC_D90B_, CoD.BlackMarketUtility.DropTypes.HUNDRED_BUNDLE, 2.000000, "MPUI_BM_HUNDRED_BUNDLE_PROMO_DESC"))
		end
		arg1.currentHundredBundleCount = registerVal13
		if not arg1.updateHundredBundleSubscription then
			local registerVal16 = DataSources.CryptoKeyProgress.getModel(arg0)
			registerVal15 = Engine.GetModel(registerVal16, "hundredBundles")
			local function __FUNC_DEAF_()
				local registerVal0 = CoD.BlackMarketUtility.GetCurrentHundredBundleCount(arg0)
				if registerVal0 ~= arg1.currentHundredBundleCount then
					arg1:updateDataSource(false)
				end
			end

			registerVal16 = arg1:subscribeToModel(registerVal15, __FUNC_DEAF_, false)
			arg1.updateHundredBundleSubscription = registerVal16
		end
	end
	registerVal13 = IsRareBundle10for5Active(arg0)
	if registerVal13 then
		registerVal13 = CoD.BlackMarketUtility.GetCurrentRareBundle10for5Count(arg0)
		if 0.000000 < registerVal13 then
			registerVal15 = Engine.Localize("MPUI_BM_BUNDLES_REMAINING", registerVal13)
			table.insert({}, __FUNC_D5CD_(CoD.BlackMarketUtility.RareBundle10for5Title, CoD.BlackMarketUtility.RareBundle10for5Image, (CoD.BlackMarketUtility.RareBundle10for5Image .. "_glow"), registerVal15, 0.000000, 0.000000, __FUNC_DB61_, CoD.BlackMarketUtility.DropTypes.RARE_BUNDLE_10FOR5, 2.000000))
		else
			registerVal15 = Engine.Localize(CoD.BlackMarketUtility.RareBundle10for5Hint, Engine.DvarInt(nil, "rare_bundle_10for5_cpCost"))
			registerVal24 = CoD.BlackMarketUtility.GetCrateCODPointCost(CoD.BlackMarketUtility.DropTypes.RARE_BUNDLE_10FOR5)
			table.insert({}, __FUNC_D5CD_(CoD.BlackMarketUtility.RareBundle10for5Title, CoD.BlackMarketUtility.RareBundle10for5Image, (CoD.BlackMarketUtility.RareBundle10for5Image .. "_glow"), registerVal15, 0.000000, registerVal24, __FUNC_D90B_, CoD.BlackMarketUtility.DropTypes.RARE_BUNDLE_10FOR5, 2.000000, "MPUI_BM_RARE_BUNDLE_10FOR5_PROMO_DESC"))
		end
		arg1.currentRareBundle10for5Count = registerVal13
		if not arg1.updateRareBundle10for5Subscription then
			registerVal16 = DataSources.CryptoKeyProgress.getModel(arg0)
			registerVal15 = Engine.GetModel(registerVal16, "rareBundle10for5s")
			local function __FUNC_DFB0_()
				local registerVal0 = CoD.BlackMarketUtility.GetCurrentRareBundle10for5Count(arg0)
				if registerVal0 ~= arg1.currentRareBundle10for5Count then
					arg1:updateDataSource(false)
				end
			end

			registerVal16 = arg1:subscribeToModel(registerVal15, __FUNC_DFB0_, false)
			arg1.updateRareBundle10for5Subscription = registerVal16
		end
	end
	registerVal13 = IsRare20BundleActive(arg0)
	if registerVal13 then
		registerVal13 = CoD.BlackMarketUtility.GetCurrentRare20BundleCount(arg0)
		if 0.000000 < registerVal13 then
			registerVal15 = Engine.Localize("MPUI_BM_BUNDLES_REMAINING", registerVal13)
			table.insert({}, __FUNC_D5CD_(CoD.BlackMarketUtility.BundleTitle, CoD.BlackMarketUtility.BundleImage, (CoD.BlackMarketUtility.BundleImage .. "_glow"), registerVal15, 0.000000, 0.000000, __FUNC_DB61_, CoD.BlackMarketUtility.DropTypes.RARE_20BUNDLE, 2.000000))
		else
			registerVal15 = Engine.Localize(CoD.BlackMarketUtility.BundleHint, 20.000000, Engine.DvarInt(nil, "loot_bundle_cpCost"))
			registerVal16 = Engine.Localize(CoD.BlackMarketUtility.PromoBundleDesc, 20.000000)
			local registerVal25 = Engine.DvarInt(nil, "loot_bundle_cpCost")
			table.insert({}, __FUNC_D5CD_(CoD.BlackMarketUtility.BundleTitle, CoD.BlackMarketUtility.BundleImage, (CoD.BlackMarketUtility.BundleImage .. "_glow"), registerVal15, 0.000000, registerVal25, __FUNC_D90B_, CoD.BlackMarketUtility.DropTypes.RARE_20BUNDLE, 2.000000, registerVal16))
		end
		arg1.currentRare20BundleCount = registerVal13
		if not arg1.updateRare20BundleSubscription then
			registerVal16 = DataSources.CryptoKeyProgress.getModel(arg0)
			registerVal15 = Engine.GetModel(registerVal16, "rare20Bundles")
			local function __FUNC_E0BA_()
				local registerVal0 = CoD.BlackMarketUtility.GetCurrentRare20BundleCount(arg0)
				if registerVal0 ~= arg1.currentRare20BundleCount then
					arg1:updateDataSource(false)
				end
			end

			registerVal16 = arg1:subscribeToModel(registerVal15, __FUNC_E0BA_, false)
			arg1.updateRare20BundleSubscription = registerVal16
		end
	end
	registerVal13 = IsRare20LDBundleActive(arg0)
	if registerVal13 then
		registerVal13 = CoD.BlackMarketUtility.GetCurrentRare20LDBundleCount(arg0)
		if 0.000000 < registerVal13 then
			registerVal15 = Engine.Localize("MPUI_BM_BUNDLES_REMAINING", registerVal13)
			table.insert({}, __FUNC_D5CD_("MPUI_BM_BRIBE_LDBUNDLE_BRIBE_TITLE", CoD.BlackMarketUtility.BundleImage, (CoD.BlackMarketUtility.BundleImage .. "_glow"), registerVal15, 0.000000, 0.000000, __FUNC_DB61_, CoD.BlackMarketUtility.DropTypes.RARE_20LDBUNDLE, 2.000000))
		else
			registerVal15 = Engine.GetInventoryItemQuantity(arg0, CoD.BlackMarketUtility.rare20LDPackBundleSentinel)
			if registerVal15 == 0.000000 then
				registerVal23 = Engine.DvarInt(nil, "loot_bundle_cpCost")
				table.insert({}, __FUNC_D5CD_("MPUI_BM_BRIBE_LDBUNDLE_BRIBE_TITLE", CoD.BlackMarketUtility.BundleImage, (CoD.BlackMarketUtility.BundleImage .. "_glow"), "MPUI_BM_BRIBE_LDBUNDLE_BRIBE_HINT", 0.000000, registerVal23, __FUNC_D90B_, CoD.BlackMarketUtility.DropTypes.RARE_20LDBUNDLE, 2.000000, "MPUI_BM_BRIBE_LDBUNDLE_BRIBE_DESC"))
			end
		end
		arg1.currentRare20LDBundleCount = registerVal13
		if not arg1.updateRare20LDBundleSubscription then
			registerVal16 = DataSources.CryptoKeyProgress.getModel(arg0)
			registerVal15 = Engine.GetModel(registerVal16, "rare20LDBundles")
			local function __FUNC_E1BA_()
				local registerVal0 = CoD.BlackMarketUtility.GetCurrentRare20LDBundleCount(arg0)
				if registerVal0 ~= arg1.currentRare20LDBundleCount then
					arg1:updateDataSource(false)
				end
			end

			registerVal16 = arg1:subscribeToModel(registerVal15, __FUNC_E1BA_, false)
			arg1.updateRare20LDBundleSubscription = registerVal16
		end
	end
	registerVal13 = IsRare15BundleActive(arg0)
	registerVal13 = CoD.BlackMarketUtility.GetCurrentOutfit3BundleCount(arg0)
	registerVal14 = CoD.BlackMarketUtility.GetCurrentRare15BundleCount(arg0)
	if registerVal13 and registerVal14 == 0.000000 and registerVal13 == 0.000000 then
		registerVal16 = Engine.Localize(CoD.BlackMarketUtility.BundleAndBribeHint, 15.000000, 3.000000, Engine.DvarInt(nil, "loot_bundle_cpCost"))
		local registerVal17 = Engine.Localize(CoD.BlackMarketUtility.BundleAndBribeDesc, 15.000000, 3.000000)
		local registerVal26 = Engine.DvarInt(nil, "loot_bundle_cpCost")
		table.insert({}, __FUNC_D5CD_(CoD.BlackMarketUtility.BundleAndBribeTitle, CoD.BlackMarketUtility.BundleImage, (CoD.BlackMarketUtility.BundleImage .. "_glow"), registerVal16, 0.000000, registerVal26, __FUNC_D90B_, CoD.BlackMarketUtility.DropTypes.RARE_15BUNDLE, 2.000000, registerVal17))
		arg1.currentRare15BundleCount = registerVal14
		if not arg1.updateRare15BundleSubscription then
			local registerVal19 = DataSources.CryptoKeyProgress.getModel(arg0)
			local registerVal18 = Engine.GetModel(registerVal19, "rare15Bundles")
			local function __FUNC_E2BE_()
				local registerVal0 = CoD.BlackMarketUtility.GetCurrentRare15BundleCount(arg0)
				if registerVal0 ~= arg1.currentRare15BundleCount then
					arg1:updateDataSource(false)
				end
			end

			registerVal19 = arg1:subscribeToModel(registerVal18, __FUNC_E2BE_, false)
			arg1.updateRare15BundleSubscription = registerVal19
		end
		arg1.currentOutfit3BundleCount = registerVal13
		if not arg1.updateOutfit3BundleSubscription then
			registerVal19 = DataSources.CryptoKeyProgress.getModel(arg0)
			registerVal18 = Engine.GetModel(registerVal19, "outfit3Bundles")
			local function __FUNC_E3BE_()
				local registerVal0 = CoD.BlackMarketUtility.GetCurrentOutfit3BundleCount(arg0)
				if registerVal0 ~= arg1.currentOutfit3BundleCount then
					arg1:updateDataSource(false)
				end
			end

			registerVal19 = arg1:subscribeToModel(registerVal18, __FUNC_E3BE_, false)
			arg1.updateOutfit3BundleSubscription = registerVal19
		end
	end
	registerVal13 = Dvar.show_bm_outfit_widget:exists()
	registerVal13 = Dvar.show_bm_outfit_widget:get()
	if registerVal13 and registerVal13 == "1" then
		registerVal14 = Engine.Localize("MPUI_BM_OUTFIT_STORE_HINT")
		table.insert({}, __FUNC_D5CD_("MPUI_BM_OUTFIT_STORE_TITLE", "uie_t7_blackmarket_crate_bribe_chip", ("uie_t7_blackmarket_crate_bribe_chip" .. "_glow"), registerVal14, 0.000000, 0.000000, __FUNC_DC7A_, CoD.BlackMarketUtility.DropTypes.OUTFIT_STORE, 2.000000, "MPUI_BM_OUTFIT_STORE_TITLE"))
	end
	registerVal13 = IsBundleActive(arg0)
	if registerVal13 then
		registerVal13 = CoD.BlackMarketUtility.GetCurrentBundleCount(arg0)
		if 0.000000 < registerVal13 then
			registerVal15 = Engine.Localize("MPUI_BM_BUNDLES_REMAINING", registerVal13, Engine.DvarInt(nil, "loot_bundle_final_count"))
			table.insert({}, __FUNC_D5CD_(CoD.BlackMarketUtility.BundleTitle, CoD.BlackMarketUtility.BundleImage, (CoD.BlackMarketUtility.BundleImage .. "_glow"), registerVal15, 0.000000, 0.000000, __FUNC_DB61_, CoD.BlackMarketUtility.DropTypes.RARE, 2.000000))
		else
			registerVal17 = Engine.DvarInt(nil, "loot_bundle_final_count")
			registerVal15 = Engine.Localize(CoD.BlackMarketUtility.BundleHint, registerVal17, Engine.DvarInt(nil, "loot_bundle_cpCost"))
			registerVal16 = Engine.Localize(CoD.BlackMarketUtility.PromoBundleDesc, Engine.DvarInt(nil, "loot_bundle_final_count"))
			registerVal24 = CoD.BlackMarketUtility.GetCrateCryptoKeyCost(CoD.BlackMarketUtility.DropTypes.BUNDLE)
			registerVal25 = CoD.BlackMarketUtility.GetCrateCODPointCost(CoD.BlackMarketUtility.DropTypes.BUNDLE)
			table.insert({}, __FUNC_D5CD_(CoD.BlackMarketUtility.BundleTitle, CoD.BlackMarketUtility.BundleImage, (CoD.BlackMarketUtility.BundleImage .. "_glow"), registerVal15, registerVal24, registerVal25, __FUNC_D90B_, CoD.BlackMarketUtility.DropTypes.BUNDLE, 2.000000, registerVal16))
		end
		arg1.currentBundleCount = registerVal13
		if not arg1.updateBundlesSubscription then
			registerVal16 = DataSources.CryptoKeyProgress.getModel(arg0)
			registerVal15 = Engine.GetModel(registerVal16, "bundles")
			local function __FUNC_E4C0_()
				local registerVal0 = CoD.BlackMarketUtility.GetCurrentBundleCount(arg0)
				if registerVal0 ~= arg1.currentBundleCount then
					arg1:updateDataSource(false)
				end
			end

			registerVal16 = arg1:subscribeToModel(registerVal15, __FUNC_E4C0_, false)
			arg1.updateBundlesSubscription = registerVal16
		end
	end
	registerVal13 = IsKeysForVialsOfferActive(arg0)
	if registerVal13 then
		registerVal16 = Dvar.loot_vialsCost:get()
		if not registerVal16 then
		end
		registerVal15 = tonumber(60.000000)
		registerVal17 = tonumber(Dvar.loot_vialsFromKeysOffer:get())
		local registerVal21 = Engine.Localize("MPUI_BM_OFFER_DIVINIUM", registerVal17)
		registerVal24 = Engine.Localize("MPUI_BM_OFFER_DIVINIUM_HINT", registerVal15, registerVal17)
		table.insert({}, __FUNC_D5CD_(registerVal21, "t7_blackmarket_divinium_chip", "t7_blackmarket_divinium_chip", registerVal24, registerVal15, 0.000000, __FUNC_D9CC_, CoD.BlackMarketUtility.DropTypes.TRADE_KEYS_FOR_VIALS, 2.000000))
	end
	registerVal14 = IsLootSaleActive(arg0)
	if registerVal14 then
		registerVal18 = DvarLocalizedIntoStringMultiplied("loot_salePercentOff", 100.000000, "MPUI_BM_RARE_DROP_PROMO_HINT")
		registerVal19 = CoD.BlackMarketUtility.GetCrateCryptoKeyCost(CoD.BlackMarketUtility.DropTypes.RARE)
		local registerVal20 = CoD.BlackMarketUtility.GetCrateCODPointCost(CoD.BlackMarketUtility.DropTypes.RARE)
		registerVal14 = __FUNC_D5CD_("MPUI_BM_RARE_DROP", "uie_t7_blackmarket_crate_rare_focus", "uie_t7_blackmarket_crate_rare_focus", registerVal18, registerVal19, registerVal20, __FUNC_D90B_, CoD.BlackMarketUtility.DropTypes.RARE, 2.000000, "MPUI_BM_RARE_DROP_PROMO_DESC")
		table.insert({}, registerVal14)
	end
	if #table.insert >= 2.000000 then
	end
	registerVal20 = CoD.BlackMarketUtility.GetCrateCryptoKeyCost(CoD.BlackMarketUtility.DropTypes.COMMON)
	registerVal21 = CoD.BlackMarketUtility.GetCrateCODPointCost(CoD.BlackMarketUtility.DropTypes.COMMON)
	registerVal15 = __FUNC_D5CD_("MPUI_BM_COMMON_DROP", "t7_blackmarket_crate_common", "uie_t7_blackmarket_crate_common_focus", "MPUI_BM_COMMON_KEY_HINT_TEXT", registerVal20, registerVal21, __FUNC_D90B_, CoD.BlackMarketUtility.DropTypes.COMMON)
	table.insert({}, registerVal15)
	registerVal16 = IsLootSaleActive(arg0)
	if not registerVal16 then
		registerVal21 = CoD.BlackMarketUtility.GetCrateCryptoKeyCost(CoD.BlackMarketUtility.DropTypes.RARE)
		local registerVal22 = CoD.BlackMarketUtility.GetCrateCODPointCost(CoD.BlackMarketUtility.DropTypes.RARE)
		registerVal16 = __FUNC_D5CD_("MPUI_BM_RARE_DROP", "t7_blackmarket_crate_rare", "uie_t7_blackmarket_crate_rare_focus", "MPUI_BM_RARE_KEY_HINT_TEXT", registerVal21, registerVal22, __FUNC_D90B_, CoD.BlackMarketUtility.DropTypes.RARE)
		table.insert({}, registerVal16)
	end
	registerVal16 = IsSixPackBundleActive(arg0)
	if registerVal16 then
		registerVal16 = CoD.BlackMarketUtility.GetCurrentSixPackCommonBundleCount(arg0)
		if 0.000000 < registerVal16 then
			registerVal17 = Engine.Localize("MPUI_BM_SIX_PACK_BUNDLES_REMAINING", registerVal16)
			registerVal18 = __FUNC_D5CD_("MPUI_BM_SIX_PACK", "uie_t7_blackmarket_6pack_commons_closed", "uie_t7_blackmarket_6pack_commons_closed", registerVal17, 0.000000, 0.000000, __FUNC_DB61_, CoD.BlackMarketUtility.DropTypes.SIX_PACK)
			table.insert({}, registerVal18)
		else
			registerVal17 = Engine.Localize("MPUI_BM_SIX_PACK_PROMO_HINT", Engine.DvarInt(nil, "loot_sixPack_final_count"))
			registerVal23 = CoD.BlackMarketUtility.GetCrateCryptoKeyCost(CoD.BlackMarketUtility.DropTypes.SIX_PACK)
			registerVal24 = CoD.BlackMarketUtility.GetCrateCODPointCost(CoD.BlackMarketUtility.DropTypes.SIX_PACK)
			registerVal18 = __FUNC_D5CD_("MPUI_BM_SIX_PACK", "uie_t7_blackmarket_6pack_commons_closed", "uie_t7_blackmarket_6pack_commons_closed", registerVal17, registerVal23, registerVal24, __FUNC_DDB2_, CoD.BlackMarketUtility.DropTypes.SIX_PACK)
			table.insert({}, registerVal18)
		end
		arg1.currentSixPackCommonBundleCount = registerVal16
		if not arg1.updateSixPackCommonSubscription then
			registerVal18 = DataSources.CryptoKeyProgress.getModel(arg0)
			registerVal17 = Engine.GetModel(registerVal18, "sixPackCommonBundles")
			local function __FUNC_E5B6_()
				local registerVal0 = CoD.BlackMarketUtility.GetCurrentSixPackCommonBundleCount(arg0)
				if registerVal0 ~= arg1.currentSixPackCommonBundleCount then
					arg1.currentSixPackCommonBundleCount = registerVal0
					arg1:updateDataSource(false)
				end
			end

			registerVal18 = arg1:subscribeToModel(registerVal17, __FUNC_E5B6_, false)
			arg1.updateSixPackCommonSubscription = registerVal18
		end
	end
	registerVal16 = IsDailyDoubleBundleActive(arg0)
	if registerVal16 then
		registerVal16 = CoD.BlackMarketUtility.GetCurrentDailyDoubleRareBundleCount(arg0)
		if 0.000000 < registerVal16 then
			registerVal17 = Engine.Localize("MPUI_BM_BUNDLES_REMAINING", registerVal16)
			registerVal18 = __FUNC_D5CD_("MPUI_BM_DAILY_DOUBLE", "uie_t7_blackmarket_dailydouble", "uie_t7_blackmarket_dailydouble", registerVal17, 0.000000, 0.000000, __FUNC_DB61_, CoD.BlackMarketUtility.DropTypes.DAILY_DOUBLE_RARE_BUNDLE)
			table.insert({}, registerVal18)
		else
			registerVal17 = Engine.Localize("MPUI_BM_DAILY_DOUBLE_PROMO_HINT", Engine.DvarInt(nil, "loot_dailyDouble_final_count"))
			registerVal23 = CoD.BlackMarketUtility.GetCrateCryptoKeyCost(CoD.BlackMarketUtility.DropTypes.DAILY_DOUBLE)
			registerVal24 = CoD.BlackMarketUtility.GetCrateCODPointCost(CoD.BlackMarketUtility.DropTypes.DAILY_DOUBLE)
			registerVal18 = __FUNC_D5CD_("MPUI_BM_DAILY_DOUBLE", "uie_t7_blackmarket_dailydouble", "uie_t7_blackmarket_dailydouble", registerVal17, registerVal23, registerVal24, __FUNC_DE2F_, CoD.BlackMarketUtility.DropTypes.DAILY_DOUBLE)
			table.insert({}, registerVal18)
		end
		arg1.currentDailyDoubleRareBundleCount = registerVal16
		if not arg1.updateDailyDoubleRareSubscription then
			registerVal18 = DataSources.CryptoKeyProgress.getModel(arg0)
			registerVal17 = Engine.GetModel(registerVal18, "dailyDoubleRareBundles")
			local function __FUNC_E6CC_()
				local registerVal0 = CoD.BlackMarketUtility.GetCurrentDailyDoubleRareBundleCount(arg0)
				if registerVal0 ~= arg1.currentDailyDoubleRareBundleCount then
					arg1.currentDailyDoubleRareBundleCount = registerVal0
					arg1:updateDataSource(false)
				end
			end

			registerVal18 = arg1:subscribeToModel(registerVal17, __FUNC_E6CC_, false)
			arg1.updateDailyDoubleRareSubscription = registerVal18
		end
	end
	registerVal16 = CoD.BlackMarketUtility.GetCurrentRare15BundleCount(arg0)
	registerVal18 = Engine.Localize("MPUI_BM_BUNDLES_REMAINING", registerVal16)
	table.insert({}, __FUNC_D5CD_(CoD.BlackMarketUtility.BundleTitle, CoD.BlackMarketUtility.BundleImage, (CoD.BlackMarketUtility.BundleImage .. "_glow"), registerVal18, 0.000000, 0.000000, __FUNC_DB61_, CoD.BlackMarketUtility.DropTypes.RARE_15BUNDLE))
	arg1.currentRare15BundleCount = registerVal16
	if 0.000000 < registerVal16 and not arg1.updateRare15BundleSubscription then
		registerVal20 = DataSources.CryptoKeyProgress.getModel(arg0)
		registerVal19 = Engine.GetModel(registerVal20, "rare15Bundles")
		local function __FUNC_E7E8_()
			local registerVal0 = CoD.BlackMarketUtility.GetCurrentRare15BundleCount(arg0)
			if registerVal0 ~= arg1.currentRare15BundleCount then
				arg1:updateDataSource(false)
			end
		end

		registerVal20 = arg1:subscribeToModel(registerVal19, __FUNC_E7E8_, false)
		arg1.updateRare15BundleSubscription = registerVal20
	end
	registerVal17 = CoD.BlackMarketUtility.GetCurrentOutfit3BundleCount(arg0)
	registerVal19 = Engine.Localize("MPUI_BM_OUTFIT_BRIBES_REMAINING", registerVal17)
	table.insert({}, __FUNC_D5CD_("MPUI_BM_BRIBE_OUTFIT_TRIPLE", CoD.BlackMarketUtility.BundleImage, (CoD.BlackMarketUtility.BundleImage .. "_glow"), registerVal19, 0.000000, 0.000000, __FUNC_DB61_, CoD.BlackMarketUtility.DropTypes.OUTFIT_3BUNDLE))
	arg1.currentOutfit3BundleCount = registerVal17
	if 0.000000 < registerVal17 and not arg1.updateOutfit3BundleSubscription then
		registerVal21 = DataSources.CryptoKeyProgress.getModel(arg0)
		registerVal20 = Engine.GetModel(registerVal21, "outfit3Bundles")
		local function __FUNC_E8EA_()
			local registerVal0 = CoD.BlackMarketUtility.GetCurrentOutfit3BundleCount(arg0)
			if registerVal0 ~= arg1.currentOutfit3BundleCount then
				arg1:updateDataSource(false)
			end
		end

		registerVal21 = arg1:subscribeToModel(registerVal20, __FUNC_E8EA_, false)
		arg1.updateOutfit3BundleSubscription = registerVal21
	end
	registerVal18 = HasWeapon3XBundles(arg0)
	registerVal18 = CoD.BlackMarketUtility.GetCurrentWeapon3XBundleCount(arg0)
	registerVal19 = __FUNC_D5CD_("MPUI_BM_WEAPON_3X", "t7_blackmarket_bribe_gold_bribe_3_weapons", "t7_blackmarket_bribe_gold_bribe_3_weapons", "MPUI_BM_WEAPON_3X_HINT", 0.000000, 0.000000, __FUNC_DB61_, CoD.BlackMarketUtility.DropTypes.WEAPON_3X)
	table.insert({}, registerVal19)
	arg1.currentWeapon3XBundleCount = registerVal18
	if registerVal18 and not arg1.updateWeapon3XSubscription then
		registerVal21 = DataSources.CryptoKeyProgress.getModel(arg0)
		registerVal20 = Engine.GetModel(registerVal21, "weapon3XBundles")
		local function __FUNC_E9EC_()
			local registerVal0 = CoD.BlackMarketUtility.GetCurrentWeapon3XBundleCount(arg0)
			if registerVal0 ~= arg1.currentWeapon3XBundleCount then
				arg1.currentWeapon3XBundleCount = registerVal0
				arg1:updateDataSource(false)
			end
		end

		registerVal21 = arg1:subscribeToModel(registerVal20, __FUNC_E9EC_, false)
		arg1.updateWeapon3XSubscription = registerVal21
	end
	registerVal18 = HasLimitedEditionCamoBundles(arg0)
	registerVal18 = CoD.BlackMarketUtility.GetCurrentLimitedEditionCamoBundleCount(arg0)
	registerVal19 = __FUNC_D5CD_("MPUI_BM_LIMITED_CAMO_BUNDLE", "t7_blackmarket_bribe_gold_bribe_camo", "t7_blackmarket_bribe_gold_bribe_camo", "MPUI_BM_LIMITED_CAMO_BUNDLE_HINT", 0.000000, 0.000000, __FUNC_DB61_, CoD.BlackMarketUtility.DropTypes.LIMITED_EDITION_CAMO)
	table.insert({}, registerVal19)
	arg1.currentlimitedEditionCamoBundleCount = registerVal18
	if registerVal18 and not arg1.updateLimitedEditionCamoSubscription then
		registerVal21 = DataSources.CryptoKeyProgress.getModel(arg0)
		registerVal20 = Engine.GetModel(registerVal21, "limitedEditionCamoBundles")
		local function __FUNC_EAFA_()
			local registerVal0 = CoD.BlackMarketUtility.GetCurrentLimitedEditionCamoBundleCount(arg0)
			if registerVal0 ~= arg1.currentlimitedEditionCamoBundleCount then
				arg1.currentlimitedEditionCamoBundleCount = registerVal0
				arg1:updateDataSource(false)
			end
		end

		registerVal21 = arg1:subscribeToModel(registerVal20, __FUNC_EAFA_, false)
		arg1.updateLimitedEditionCamoSubscription = registerVal21
	end
	registerVal18 = IsNoDupesCrateActive(arg0)
	if registerVal18 then
		registerVal18 = CoD.BlackMarketUtility.GetCrateCryptoKeyCost(CoD.BlackMarketUtility.DropTypes.NO_DUPES_CRATE)
		if not registerVal18 then
		end
		registerVal19 = CoD.BlackMarketUtility.GetCrateCODPointCost(CoD.BlackMarketUtility.DropTypes.NO_DUPES_CRATE)
		if not registerVal19 then
		end
		registerVal20 = __FUNC_D5CD_("MPUI_BM_NO_DUPES_CRATE", "uie_t7_blackmarket_crate_rare_focus", "uie_t7_blackmarket_crate_rare_focus", "MPUI_BM_NO_DUPES_CRATE_HINT", 0.000000, 0.000000, __FUNC_D90B_, CoD.BlackMarketUtility.DropTypes.NO_DUPES_CRATE, 1.000000, "MPUI_BM_RARE_DROP")
		table.insert({}, registerVal20)
	end
	registerVal18 = IsNoDupesBundleActive(arg0)
	if registerVal18 then
		registerVal18 = CoD.BlackMarketUtility.GetCurrentNoDupesBundleRareBundleCount(arg0)
		if 0.000000 < registerVal18 then
			registerVal19 = __FUNC_D5CD_("MPUI_BM_NO_DUPES_BUNDLE_TITLE", "uie_t7_blackmarket_crate_bundle_10", "uie_t7_blackmarket_crate_bundle_10", "MPUI_BM_NO_DUPES_CRATE_HINT", 0.000000, 0.000000, __FUNC_DB61_, CoD.BlackMarketUtility.DropTypes.NO_DUPES_BUNDLE, 1.000000, "MPUI_BM_NO_DUPES_BUNDLE")
			table.insert({}, registerVal19)
		else
			registerVal19 = Engine.Localize("MPUI_BM_NO_DUPES_BUNDLE_HINT", 20.000000)
			registerVal20 = CoD.BlackMarketUtility.GetCrateCryptoKeyCost(CoD.BlackMarketUtility.DropTypes.NO_DUPES_BUNDLE)
			if not registerVal20 then
			end
			registerVal21 = CoD.BlackMarketUtility.GetCrateCODPointCost(CoD.BlackMarketUtility.DropTypes.NO_DUPES_BUNDLE)
			if not registerVal21 then
			end
			registerVal22 = __FUNC_D5CD_("MPUI_BM_NO_DUPES_BUNDLE_TITLE", "uie_t7_blackmarket_crate_bundle_10", "uie_t7_blackmarket_crate_bundle_10", registerVal19, 0.000000, 0.000000, __FUNC_D90B_, CoD.BlackMarketUtility.DropTypes.NO_DUPES_BUNDLE, 1.000000, "MPUI_BM_NO_DUPES_BUNDLE")
			table.insert({}, registerVal22)
		end
		arg1.currentNoDupesRareBundleCount = registerVal18
		if not arg1.updateNoDupesRareSubscription then
			registerVal20 = DataSources.CryptoKeyProgress.getModel(arg0)
			registerVal19 = Engine.GetModel(registerVal20, "noDupesRareBundles")
			local function __FUNC_EC1A_()
				local registerVal0 = CoD.BlackMarketUtility.GetCurrentNoDupesBundleRareBundleCount(arg0)
				if registerVal0 ~= arg1.currentNoDupesRareBundleCount then
					arg1.currentNoDupesRareBundleCount = registerVal0
					arg1:updateDataSource(false)
				end
			end

			registerVal20 = arg1:subscribeToModel(registerVal19, __FUNC_EC1A_, false)
			arg1.updateNoDupesRareSubscription = registerVal20
		end
	end
	registerVal18 = IsBundleExperimentActive(arg0)
	if registerVal18 then
		registerVal18 = CoD.BlackMarketUtility.GetCurrentBundleExperimentRareBundleCount(arg0)
		registerVal19 = Engine.Localize("MPUI_BM_BUNDLE_EXPERIMENT", Engine.Localize(Engine.DvarString(nil, "loot_3pack_final_count_string_ref")))
		if 0.000000 < registerVal18 then
			registerVal20 = Engine.Localize("MPUI_BM_BUNDLES_REMAINING", registerVal18)
			registerVal21 = __FUNC_D5CD_(registerVal19, "uie_t7_blackmarket_crate_bundle", "uie_t7_blackmarket_crate_bundle", registerVal20, 0.000000, 0.000000, __FUNC_DB61_, CoD.BlackMarketUtility.DropTypes.BUNDLE_EXPERIMENT)
			table.insert({}, registerVal21)
		else
			registerVal20 = Engine.Localize("MPUI_BM_BUNDLE_EXPERIMENT_HINT", Engine.DvarInt(nil, "loot_3pack_final_count"))
			registerVal26 = CoD.BlackMarketUtility.GetCrateCryptoKeyCost(CoD.BlackMarketUtility.DropTypes.BUNDLE_EXPERIMENT)
			local registerVal27 = CoD.BlackMarketUtility.GetCrateCODPointCost(CoD.BlackMarketUtility.DropTypes.BUNDLE_EXPERIMENT)
			registerVal21 = __FUNC_D5CD_(registerVal19, "uie_t7_blackmarket_crate_bundle", "uie_t7_blackmarket_crate_bundle", registerVal20, registerVal26, registerVal27, __FUNC_D90B_, CoD.BlackMarketUtility.DropTypes.BUNDLE_EXPERIMENT)
			table.insert({}, registerVal21)
		end
		arg1.currentBundleExperimentRareBundleCount = registerVal18
		if not arg1.updateBundleExperimentRareSubscription then
			registerVal21 = DataSources.CryptoKeyProgress.getModel(arg0)
			registerVal20 = Engine.GetModel(registerVal21, "bundleExperimentRareBundles")
			local function __FUNC_ED32_()
				local registerVal0 = CoD.BlackMarketUtility.GetCurrentBundleExperimentRareBundleCount(arg0)
				if registerVal0 ~= arg1.currentBundleExperimentRareBundleCount then
					arg1.currentBundleExperimentRareBundleCount = registerVal0
					arg1:updateDataSource(false)
				end
			end

			registerVal21 = arg1:subscribeToModel(registerVal20, __FUNC_ED32_, false)
			arg1.updateBundleExperimentRareSubscription = registerVal21
		end
	end
	registerVal18 = HasCodeBundles(arg0)
	if registerVal18 then
		registerVal18 = CoD.BlackMarketUtility.GetCurrentCodeBundleRareBundleCount(arg0)
		registerVal19 = Engine.Localize("MPUI_BM_BUNDLES_REMAINING", registerVal18)
		registerVal20 = __FUNC_D5CD_("MPUI_BM_CODE_BUNDLE", "uie_t7_blackmarket_crate_bundle", "uie_t7_blackmarket_crate_bundle", registerVal19, 0.000000, 0.000000, __FUNC_DB61_, CoD.BlackMarketUtility.DropTypes.CODE_BUNDLE)
		table.insert({}, registerVal20)
	end
	arg1.currentCodeBundleRareBundleCount = currentCodeBundleRareBundleCount
	if not arg1.updateCodeBundleRareBundles then
		registerVal19 = DataSources.CryptoKeyProgress.getModel(arg0)
		registerVal18 = Engine.GetModel(registerVal19, "codeBundleRareBundles")
		local function __FUNC_EE56_()
			local registerVal0 = CoD.BlackMarketUtility.GetCurrentCodeBundleRareBundleCount(arg0)
			if registerVal0 ~= arg1.currentCodeBundleRareBundleCount then
				arg1.currentCodeBundleRareBundleCount = registerVal0
				arg1:updateDataSource(false)
			end
		end

		registerVal19 = arg1:subscribeToModel(registerVal18, __FUNC_EE56_, false)
		arg1.updateCodeBundleRareBundles = registerVal19
	end
	registerVal18 = CoD.BlackMarketUtility.GetCurrentIncentiveRareBundleCount(arg0)
	if 0.000000 < registerVal18 then
		registerVal20 = Engine.Localize(CoD.BlackMarketUtility.IncentiveRareBundleHint, registerVal18)
		table.insert({}, __FUNC_D5CD_(CoD.BlackMarketUtility.IncentiveRareBundleTitle, "blacktransparent", "blacktransparent", registerVal20, 0.000000, 0.000000, __FUNC_DB61_, CoD.BlackMarketUtility.DropTypes.INCENTIVE_RARE_BUNDLE))
	end
	arg1.currentIncentiveRareBundleCount = registerVal18
	if not arg1.updateIncentiveRareSubscription then
		registerVal20 = DataSources.CryptoKeyProgress.getModel(arg0)
		registerVal19 = Engine.GetModel(registerVal20, "incentiveRareBundles")
		local function __FUNC_EF6E_()
			local registerVal0 = CoD.BlackMarketUtility.GetCurrentIncentiveRareBundleCount(arg0)
			if registerVal0 ~= arg1.currentIncentiveRareBundleCount then
				arg1:updateDataSource(false)
			end
		end

		registerVal20 = arg1:subscribeToModel(registerVal19, __FUNC_EF6E_, false)
		arg1.updateIncentiveRareSubscription = registerVal20
	end
	registerVal19 = CoD.BlackMarketUtility.GetCurrentIncentiveWeaponBundleCount(arg0)
	if 0.000000 < registerVal19 then
		registerVal21 = Engine.Localize(CoD.BlackMarketUtility.IncentiveWeaponBundleHint, registerVal19)
		table.insert({}, __FUNC_D5CD_(CoD.BlackMarketUtility.IncentiveWeaponBundleTitle, "blacktransparent", "blacktransparent", registerVal21, 0.000000, 0.000000, __FUNC_DB61_, CoD.BlackMarketUtility.DropTypes.INCENTIVE_WEAPON_BUNDLE))
	end
	arg1.currentIncentiveWeaponBundleCount = registerVal19
	if not arg1.updateIncentiveWeaponSubscription then
		registerVal21 = DataSources.CryptoKeyProgress.getModel(arg0)
		registerVal20 = Engine.GetModel(registerVal21, "incentiveWeaponBundles")
		local function __FUNC_F07C_()
			local registerVal0 = CoD.BlackMarketUtility.GetCurrentIncentiveWeaponBundleCount(arg0)
			if registerVal0 ~= arg1.currentIncentiveWeaponBundleCount then
				arg1:updateDataSource(false)
			end
		end

		registerVal21 = arg1:subscribeToModel(registerVal20, __FUNC_F07C_, false)
		arg1.updateIncentiveWeaponSubscription = registerVal21
	end
	registerVal20 = CoD.BlackMarketUtility.GetCurrentNoDupeRangeBundleCount(arg0)
	if 0.000000 < registerVal20 then
		table.insert({}, __FUNC_D5CD_("MPUI_BM_BRIBE_RANGE_WEAPON", "t7_blackmarket_bribe_weapon", "t7_blackmarket_bribe_weapon", "MPUI_BM_BRIBE_RANGE_WEAPON_KEY_HINT_TEXT", 0.000000, 0.000000, __FUNC_DB61_, CoD.BlackMarketUtility.DropTypes.NO_DUPES_RANGE, 1.000000, "", registerVal20))
	end
	arg1.currentRangeWeaponNoDupesBundleCount = registerVal20
	if not arg1.updateRangeWeaponNoDupesSubscription then
		registerVal22 = DataSources.CryptoKeyProgress.getModel(arg0)
		registerVal21 = Engine.GetModel(registerVal22, "rangeWeaponNoDupesBundles")
		local function __FUNC_F190_()
			local registerVal0 = CoD.BlackMarketUtility.GetCurrentNoDupeRangeBundleCount(arg0)
			if registerVal0 ~= arg1.currentRangeWeaponNoDupesBundleCount then
				arg1:updateDataSource(false)
			end
		end

		registerVal22 = arg1:subscribeToModel(registerVal21, __FUNC_F190_, false)
		arg1.updateRangeWeaponNoDupesSubscription = registerVal22
	end
	registerVal21 = CoD.BlackMarketUtility.GetCurrentNoDupeMeleeBundleCount(arg0)
	if 0.000000 < registerVal21 then
		table.insert({}, __FUNC_D5CD_("MPUI_BM_BRIBE_MELEE_WEAPON", "t7_blackmarket_bribe_melee", "t7_blackmarket_bribe_melee", "MPUI_BM_BRIBE_MELEE_WEAPON_KEY_HINT_TEXT", 0.000000, 0.000000, __FUNC_DB61_, CoD.BlackMarketUtility.DropTypes.NO_DUPES_MELEE, 1.000000, "", registerVal21))
	end
	arg1.currentMeleeWeaponNoDupesBundleCount = registerVal21
	if not arg1.updateMeleeWeaponNoDupesSubscription then
		registerVal23 = DataSources.CryptoKeyProgress.getModel(arg0)
		registerVal22 = Engine.GetModel(registerVal23, "meleeWeaponNoDupesBundles")
		local function __FUNC_F2A3_()
			local registerVal0 = CoD.BlackMarketUtility.GetCurrentNoDupeMeleeBundleCount(arg0)
			if registerVal0 ~= arg1.currentMeleeWeaponNoDupesBundleCount then
				arg1:updateDataSource(false)
			end
		end

		registerVal23 = arg1:subscribeToModel(registerVal22, __FUNC_F2A3_, false)
		arg1.updateMeleeWeaponNoDupesSubscription = registerVal23
	end
	registerVal15.models.useTallVersion = false
	registerVal16.models.useTallVersion = false
	return {}
end

registerVal5 = DataSourceHelpers.ListSetup("BlackMarketCryptokeyList", __FUNC_8549_, true)
DataSources.BlackMarketCryptokeyList = registerVal5
function DataSources.BlackMarketCryptokeyList.getWidgetTypeForItem(arg0, arg1, arg2, arg3)
	if arg0.BlackMarketCryptokeyList[arg3].properties then
		if arg0.BlackMarketCryptokeyList[arg3].properties.isBribeCoin then
			return CoD.BribeCoinWidget
		end
		return CoD.CryptokeyWidget
	end
	return nil
end

local function __FUNC_F4FA_(arg0)
	local function __FUNC_F97D_(arg0, arg1, arg2, arg3, arg4, arg5)
		local registerVal6 = {}
		local registerVal7 = {}
		registerVal7.displayText = arg0
		registerVal7.image = arg2
		registerVal7.disabled = arg3
		registerVal7.showBreadcrumb = arg5
		registerVal6.models = registerVal7
		registerVal7 = {}
		registerVal7.action = arg1
		registerVal7.selectIndex = arg4
		registerVal6.properties = registerVal7
		return registerVal6
	end

	local function __FUNC_FA6F_(arg0, arg1, arg2, arg3, arg4)
		local registerVal5 = CoD.BlackMarketUtility.GetProgressTowardNextKey(arg2)
		local registerVal6 = CoD.BlackMarketUtility.GetNumDupesForType(arg2, Enum.LootRarityType.LOOT_RARITY_TYPE_COMMON)
		local registerVal7 = CoD.BlackMarketUtility.GetNumDupesForType(arg2, Enum.LootRarityType.LOOT_RARITY_TYPE_RARE)
		local registerVal8 = CoD.BlackMarketUtility.GetNumDupesForType(arg2, Enum.LootRarityType.LOOT_RARITY_TYPE_LEGENDARY)
		local registerVal9 = CoD.BlackMarketUtility.GetNumDupesForType(arg2, Enum.LootRarityType.LOOT_RARITY_TYPE_EPIC)
		local registerVal10 = CoD.BlackMarketUtility.GetNumKeysEarnedForBurning(arg2, registerVal6, registerVal7, registerVal8, registerVal9)
		if (((registerVal6 + registerVal7) + registerVal8) + registerVal9) == 0.000000 then
		end
		CoD.OverlayUtility.CreateOverlay(arg2, arg0, "BurnDuplicatesConfirmation", arg2, -1.000000, registerVal6, registerVal7, registerVal8, registerVal9)
	end

	local function __FUNC_FDDD_(arg0, arg1, arg2, arg3, arg4)
		OpenOverlay(arg4, "BM_History", arg2)
	end

	local function __FUNC_FE45_(arg0, arg1, arg2, arg3, arg4)
		CycleContracts(arg2)
		OpenOverlay(arg4, "BM_Contracts", arg2)
		local registerVal5 = arg1:getModel(arg2, "showBreadcrumb")
		if registerVal5 then
			Engine.SetModelValue(registerVal5, false)
		end
	end

	local registerVal7 = Dvar.tu4_enableCodPoints:get()
	if registerVal7 then
		table.insert({}, __FUNC_F97D_("MPUI_BM_BUY", __FUNC_1920_, "uie_ui_codpoints_symbol_32x32", false, true))
	end
	registerVal7 = Dvar.show_contracts_button:get()
	if registerVal7 then
		registerVal7 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
		local registerVal8 = registerVal7.ui_seen_new_contracts:get()
		if registerVal8 ~= 0.000000 then
		end
		local registerVal9 = IsCommunityContractBreadCrumbActive(arg0)
		local registerVal10 = IsTrifectaContractBreadcrumbActive(arg0)
		table.insert({}, __FUNC_F97D_("MPUI_BM_CONTRACTS", __FUNC_FE45_, "uie_ui_codpoints_symbol_32x32", nil, nil, registerVal10))
	end
	registerVal7 = Engine.GetLootItemCount(arg0, Enum.eModes.MODE_MULTIPLAYER)
	if registerVal7 ~= nil and 0.000000 < registerVal7 then
		table.insert({}, __FUNC_F97D_("MPUI_BM_RECENT", __FUNC_FDDD_, "uie_ui_codpoints_symbol_32x32"))
	end
	registerVal8 = Dvar.tu4_burnDuplicates:get()
	if registerVal8 then
		table.insert({}, __FUNC_F97D_("MPUI_BM_DUPLICATES", __FUNC_FA6F_, "uie_ui_codpoints_symbol_32x32"))
	end
	return {}
end

local registerVal6 = DataSourceHelpers.ListSetup("BlackMarketList", __FUNC_F4FA_, true)
DataSources.BlackMarketList = registerVal6
local function __FUNC_FF58_(arg0, arg1)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.CreateModel(registerVal4, "GameSettingsFlyoutOpen")
	Engine.SetModelValue(registerVal3, false)
	local registerVal5 = Engine.GetGlobalModel()
	registerVal4 = Engine.CreateModel(registerVal5, "autoevents")
	registerVal3 = Engine.CreateModel(registerVal4, "targetController")
	Engine.SetModelValue(registerVal3, arg1)
	Engine.SetDvar("live_autoEventPumpTime", 0.000000)
end

local function __FUNC_10118_(arg0, arg1)
	arg0.disablePopupOpenCloseAnim = true
	local registerVal2 = CoD.BlackMarketUtility.GetCurrentCryptoKeyCount(arg1)
	local registerVal3 = CoD.BlackMarketUtility.GetCrateCryptoKeyCost(CoD.BlackMarketUtility.DropTypes.COMMON)
	if registerVal3 <= registerVal2 then
		SendFrontendControllerZeroMenuResponse(arg1, "BlackMarket", "greeting")
	else
		SendFrontendControllerZeroMenuResponse(arg1, "BlackMarket", "greeting_broke")
	end
	registerVal2 = CoD.GetPlayerStats(arg1)
	if registerVal2 then
		registerVal2.blackMarketShowBreadcrumb:set(0.000000)
		registerVal2.extraBytes[0.000000]:set(CoD.BlackMarketUtility.CurrentPromotionIndex)
	end
	local registerVal4 = Engine.GetGlobalModel()
	registerVal3 = Engine.CreateModel(registerVal4, "autoevents")
	registerVal4 = Engine.CreateModel(registerVal3, "cycled")
	local registerVal6 = Engine.GetModelForController(arg1)
	local registerVal5 = Engine.CreateModel(registerVal6, "six_pack_timer")
	local registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.CreateModel(registerVal7, "daily_double_timer")
	local function __FUNC_10A28_(arg1)
		arg0.cryptokeyList:updateDataSource(false)
	end

	arg0:subscribeToModel(registerVal4, __FUNC_10A28_, false)
	registerVal7 = IsSixPackBundleInCooldown(arg1)
	local registerVal8 = IsDailyDoubleBundleInCooldown(arg1)
	local function __FUNC_10AA1_(arg0, arg2)
		Engine.SetDvar("live_autoEventPumpTime", 0.000000)
		local registerVal2 = IsSixPackBundleInCooldown(arg1)
		local registerVal3 = IsDailyDoubleBundleInCooldown(arg1)
		if registerVal7 ~= registerVal2 or registerVal8 ~= registerVal3 then
			Engine.ForceNotifyModelSubscriptions(registerVal4)
		end
		local registerVal4 = Engine.GetServerUTCTimeStr()
		local registerVal6 = Engine.StorageGetBuffer(arg1, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
		local registerVal8 = registerVal6.playerstatslist.ARENA_MAX_RANK.statvalue:getAsString()
		local registerVal7 = Engine.StringIntegerAddition(registerVal8, Engine.DvarInt(nil, "loot_sixPack_cooloffSeconds"))
		registerVal8 = tonumber(Engine.StringIntegerSubtraction(registerVal7, registerVal4))
		if registerVal6 and 0.000000 <= registerVal8 then
			local registerVal9 = LuaUtils.SecondsToTimeRemainingString((registerVal8 + 1.000000), true)
			Engine.SetModelValue(registerVal5, registerVal9)
		end
		registerVal7 = Engine.GetInventoryItem(arg1, Engine.DvarInt(nil, "loot_sixPack_consumable_id"))
		registerVal8 = tonumber(Engine.StringIntegerSubtraction(registerVal7.expireTimeStr, registerVal4))
		if not true and registerVal7 and -CoD.BlackMarketUtility.CooldownTimerBufferSeconds <= registerVal8 then
			registerVal9 = LuaUtils.SecondsToTimeRemainingString(((registerVal8 + CoD.BlackMarketUtility.CooldownTimerBufferSeconds) + 1.000000), true)
			Engine.SetModelValue(registerVal5, registerVal9)
		end
		registerVal7 = Engine.GetInventoryItem(arg1, Engine.DvarInt(nil, "loot_dailyDouble_consumable_id"))
		registerVal8 = tonumber(Engine.StringIntegerSubtraction(registerVal7.expireTimeStr, registerVal4))
		if registerVal7 and -CoD.BlackMarketUtility.CooldownTimerBufferSeconds <= registerVal8 then
			registerVal9 = LuaUtils.SecondsToTimeRemainingString(((registerVal8 + CoD.BlackMarketUtility.CooldownTimerBufferSeconds) + 1.000000), true)
			Engine.SetModelValue(registerVal6, registerVal9)
		end
	end

	arg0:registerEventHandler("bm_autoevents_tick", __FUNC_10AA1_)
	local registerVal9 = LUI.UITimer.new(100.000000, "bm_autoevents_tick", false, arg0)
	arg0._bm_autoevent_timer = registerVal9
	arg0:addElement(arg0._bm_autoevent_timer)
	local function __FUNC_1115E_(arg0)
		arg0._bm_autoevent_timer:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(arg0, "close", __FUNC_1115E_)
	registerVal9 = Dvar.tu27_showGunMeter:get()
	if registerVal9 then
		arg0.BMGunMeter0:setAlpha(1.000000)
	end
	registerVal9 = Engine.StorageGetBuffer(arg1, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	local registerVal10 = registerVal9.contracts[LuaUtils.BMContracts.specialContractIndex].index:get()
	local registerVal11 = registerVal9.contracts[LuaUtils.BMContracts.specialContractIndex].award_given:get()
	registerVal11 = Engine.GetInventoryItemQuantity(arg1, 99104.000000)
	if registerVal10 == 3014.000000 and registerVal11 == 1.000000 and registerVal11 == 0.000000 then
		Engine.PurchaseDWSKU(arg1, 99106.000000)
	end
end

local function __FUNC_111C8_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("BlackMarket")
	if __FUNC_FF58_ then
		__FUNC_FF58_(registerVal1, arg0)
	end
	registerVal1.soundSet = "MultiplayerMain"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "BlackMarket.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 53.500000, -735.500000)
	registerVal3:setTopBottom(true, true, 0.000000, 46.000000)
	registerVal3:setRGB(0.500000, 0.500000, 0.500000)
	registerVal1:addElement(registerVal3)
	registerVal1.LeftPanel0 = registerVal3
	local registerVal4 = CoD.LobbyStreamerBlackFade.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 720.000000)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Transparent"
	local function __FUNC_126F5_(arg1, arg2, arg3)
		return IsGlobalModelValueEqualTo(arg2, arg0, "hideWorldForStreamer", 0.000000)
	end

	registerVal8.condition = __FUNC_126F5_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "hideWorldForStreamer")
	local function __FUNC_12782_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hideWorldForStreamer"
		registerVal1:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_12782_)
	registerVal1:addElement(registerVal4)
	registerVal1.FadeForStreamer = registerVal4
	local registerVal5 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5.titleLabel:setText(Engine.Localize(""))
	registerVal5.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_BLACK_MARKET"))
	registerVal5.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_character"))
	registerVal1:addElement(registerVal5)
	registerVal1.GenericMenuFrame = registerVal5
	local registerVal6 = CoD.verticalCounterBlackMarket.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 198.500000, 398.500000)
	registerVal6:setTopBottom(true, false, 639.410000, 664.410000)
	local function __FUNC_128AA_(arg0, arg1)
		SetAsListVerticalCounter(registerVal1, arg0, "cryptokeyList")
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("menu_loaded", __FUNC_128AA_)
	registerVal1:addElement(registerVal6)
	registerVal1.verticalCounterBlackMarket = registerVal6
	registerVal7 = LUI.UIList.new(registerVal1, arg0, 7.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal7:makeFocusable()
	registerVal7:setLeftRight(true, false, 66.000000, 533.000000)
	registerVal7:setTopBottom(true, false, 151.000000, 624.000000)
	registerVal7:setWidgetType(CoD.CryptokeyWidget)
	registerVal7:setHorizontalCount(2.000000)
	registerVal7:setVerticalCount(3.000000)
	registerVal7:setSpacing(7.000000)
	registerVal7:setDataSource("BlackMarketCryptokeyList")
	local function __FUNC_12962_(arg1, arg2)
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

	registerVal7:registerEventHandler("gain_focus", __FUNC_12962_)
	local function __FUNC_12AF3_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_12AF3_)
	local function __FUNC_12BC2_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInState(arg0, "OutfitShop")
		if registerVal4 then
			ProcessListAction(registerVal1, arg0, arg2)
			return true
		else
			registerVal4 = IsCryptokeyWidgetAvailable(registerVal1, arg0, arg2)
			if registerVal4 then
				ProcessListAction(registerVal1, arg0, arg2)
				return true
			end
		end
	end

	local function __FUNC_12CC9_(arg0, arg1, arg2)
		local registerVal3 = IsElementInState(arg0, "OutfitShop")
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_GO_TO_STORE")
			return true
		else
			registerVal3 = IsCryptokeyWidgetAvailable(registerVal1, arg0, arg2)
			if registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
				return true
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal7, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_12BC2_, __FUNC_12CC9_, false)
	registerVal1:addElement(registerVal7)
	registerVal1.cryptokeyList = registerVal7
	registerVal8 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal8:setTopBottom(true, false, 77.000000, 694.250000)
	registerVal1:addElement(registerVal8)
	registerVal1.FEMenuLeftGraphics = registerVal8
	local registerVal9 = CoD.BlackMarketSafeAreaContainer.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal9:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.BlackMarketSafeAreaContainer = registerVal9
	local registerVal10 = LUI.UIList.new(registerVal1, arg0, 1.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal10:makeFocusable()
	registerVal10:setLeftRight(true, false, 67.000000, 530.000000)
	registerVal10:setTopBottom(true, false, 104.000000, 145.000000)
	registerVal10:setWidgetType(CoD.BM_TopNavBtn)
	registerVal10:setHorizontalCount(4.000000)
	registerVal10:setSpacing(1.000000)
	registerVal10:setDataSource("BlackMarketList")
	local function __FUNC_12EBE_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		SetElementStateByElementName(registerVal1, "burnDuplicatesHint", arg0, "DefaultState")
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal10:registerEventHandler("gain_focus", __FUNC_12EBE_)
	local function __FUNC_130BF_(arg1, arg2)
		if arg1.loseFocus then
			local registerVal3 = arg1.loseFocus(arg1, arg2)
		else
			if arg1.super.loseFocus then
				registerVal3 = arg1.super.loseFocus(arg1, arg2)
			end
		end
		SetElementStateByElementName(registerVal1, "burnDuplicatesHint", arg0, "NotVisible")
		return registerVal3
	end

	registerVal10:registerEventHandler("lose_focus", __FUNC_130BF_)
	local function __FUNC_131FC_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_1325F_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal10, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_131FC_, __FUNC_1325F_, false)
	registerVal1:addElement(registerVal10)
	registerVal1.buttonList0 = registerVal10
	local registerVal11 = CoD.BM_Promo.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 440.500000, 1458.500000)
	registerVal11:setTopBottom(true, false, 498.910000, 651.910000)
	registerVal11:setScale(0.800000)
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "CodPoints"
	local function __FUNC_1335A_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal15.condition = __FUNC_1335A_
	local registerVal16 = {}
	registerVal16.stateName = "Bribe"
	local function __FUNC_133A5_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal16.condition = __FUNC_133A5_
	local registerVal17 = {}
	registerVal17.stateName = "Bundle"
	local function __FUNC_133F1_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal17.condition = __FUNC_133F1_
	registerVal14 = {registerVal15, registerVal16, registerVal17}
	registerVal11:mergeStateConditions(registerVal14)
	registerVal15 = Engine.GetGlobalModel()
	registerVal14 = Engine.GetModel(registerVal15, "autoevents.cycled")
	local function __FUNC_1343D_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "autoevents.cycled"
		registerVal1:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:subscribeToModel(registerVal14, __FUNC_1343D_)
	registerVal15 = Engine.GetModelForController(arg0)
	registerVal14 = Engine.GetModel(registerVal15, "CryptoKeyProgress.codeBundleRareBundles")
	local function __FUNC_13563_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CryptoKeyProgress.codeBundleRareBundles"
		registerVal1:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:subscribeToModel(registerVal14, __FUNC_13563_)
	registerVal1:addElement(registerVal11)
	registerVal1.BMPromo = registerVal11
	local registerVal12 = CoD.BM_GunMeter.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 482.000000, 832.000000)
	registerVal12:setTopBottom(true, false, 94.500000, 195.500000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setScale(0.600000)
	registerVal1:addElement(registerVal12)
	registerVal1.BMGunMeter0 = registerVal12
	local registerVal13 = {}
	registerVal13.up = registerVal10
	registerVal7.navigation = registerVal13
	registerVal13 = {}
	registerVal13.down = registerVal7
	registerVal10.navigation = registerVal13
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_1369D_(arg1, arg2)
		SendClientScriptMenuChangeNotify(arg0, registerVal1, true)
		SetElementStateByElementName(registerVal1, "GenericMenuFrame", arg0, "Update")
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_1369D_)
	local function __FUNC_137AF_(arg1, arg2)
		SetElementStateByElementName(registerVal1, "burnDuplicatesHint", arg0, "NotVisible")
		local registerVal5 = {}
		registerVal5.elementName = "FEMenuLeftGraphics"
		registerVal5.clipName = "Intro"
		PlayClipOnElement(registerVal1, registerVal5, arg0)
		OpenBlackMarketIncentivePopup(registerVal1, arg0)
		OpenBlackMarketUnspentBundlePopupIfNeeded(registerVal1, arg0)
		OpenBlackMarketWeaponContractErrorPopupIfNeeded(registerVal1, arg0)
		OpenBlackMarketExperimentPromoPopupIfNeeded(registerVal1, arg0)
		PlayMenuMusic("black_market")
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_opened", __FUNC_137AF_)
	local function __FUNC_13A51_(arg0, arg1, arg2, arg3)
		SendClientScriptMenuChangeNotify(arg2, arg1, false)
		GoBack(registerVal1, arg2)
		ClearMenuSavedState(arg1)
		HandleGoBackFromBlackMarket(registerVal1, arg0, arg2, "", arg1)
		return true
	end

	local function __FUNC_13B56_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_13A51_, __FUNC_13B56_, false)
	local function __FUNC_13C51_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsBooleanDvarSet("ui_enablePromoMenu")
		if registerVal4 then
			OpenOverlay(registerVal1, "ZMHD_Community_Theme", arg2, "", "")
			return true
		end
	end

	local function __FUNC_13D27_(arg0, arg1, arg2)
		local registerVal3 = IsBooleanDvarSet("ui_enablePromoMenu")
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_COMMUNITY_CHALLENGE")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, nil, __FUNC_13C51_, __FUNC_13D27_, false)
	local function __FUNC_13E82_(arg0, arg1, arg2, arg3)
		OpenOutfitStore(registerVal1, arg0, arg2, "BlackMarket", arg1)
		return true
	end

	local function __FUNC_13EFE_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_VIEW_STORE_OUTFITS")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "S", __FUNC_13E82_, __FUNC_13EFE_, false)
	local function __FUNC_14007_(arg1)
		SendFrontendControllerZeroMenuResponse(arg0, "BlackMarket", "closed")
		CommitProfileChanges(arg0)
		ForceLobbyButtonUpdate(arg0)
		SendClientScriptNotify(arg0, "BlackMarket", "cycle_stop")
		ValidateMPLootWeapons(arg0)
		PlayMenuMusicForCurrentLobby("")
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal1, "close", __FUNC_14007_)
	registerVal5:setModel(registerVal1.buttonModel, arg0)
	registerVal7.id = "cryptokeyList"
	registerVal10.id = "buttonList0"
	registerVal15 = {}
	registerVal15.name = "menu_loaded"
	registerVal15.controller = arg0
	registerVal1:processEvent(registerVal15)
	registerVal15 = {}
	registerVal15.name = "update_state"
	registerVal15.menu = registerVal1
	registerVal1:processEvent(registerVal15)
	registerVal13 = registerVal1:restoreState()
	if not registerVal13 then
		registerVal15 = {}
		registerVal15.name = "gain_focus"
		registerVal15.controller = arg0
		registerVal1.cryptokeyList:processEvent(registerVal15)
	end
	local function __FUNC_1419E_(arg1)
		arg1.LeftPanel0:close()
		arg1.FadeForStreamer:close()
		arg1.GenericMenuFrame:close()
		arg1.verticalCounterBlackMarket:close()
		arg1.cryptokeyList:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.BlackMarketSafeAreaContainer:close()
		arg1.buttonList0:close()
		arg1.BMPromo:close()
		arg1.BMGunMeter0:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "BlackMarket.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1419E_)
	if __FUNC_10118_ then
		__FUNC_10118_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.BlackMarket = __FUNC_111C8_
