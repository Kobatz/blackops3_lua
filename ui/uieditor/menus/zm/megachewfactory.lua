-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.BubbleGumBuffs.MegaChewMachine")
require("ui.uieditor.widgets.HUD.CenterConsole.CenterConsole")
require("ui.uieditor.widgets.BubbleGumBuffs.MegaChewFactoryVat")
require("ui.uieditor.widgets.BubbleGumBuffs.MegaChewFactoryBottomLeftLabel")
require("ui.uieditor.widgets.BubbleGumBuffs.MegaChewFactoryBuyDivinium")
function CoD.OverlayUtility.GetVialsImage(arg0)
	if arg0 == 9.000000 then
	else
		if 9.000000 < arg0 and arg0 < 100.000000 then
		else
			if 100.000000 <= arg0 then
			end
		end
	end
	return "uie_t7_zm_icon_liquiddivinium_x100"
end

local registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Full"
registerVal2.frameWidget = "CoD.SystemOverlay_MegaChew"
local function __FUNC_B7D_(arg0, arg1)
	return Engine.Localize("MENU_NOT_ENOUGH_DIVINIUM_CAPS")
end

registerVal2.title = __FUNC_B7D_
local function __FUNC_C0D_(arg0, arg1)
	return Engine.Localize("MENU_BGB_FACTORY_ERR_INSUFFICIENT_FUNDS")
end

registerVal2.description = __FUNC_C0D_
local function __FUNC_CA7_(arg0, arg1)
	if not arg1.image then
	end
	return "t7_hud_zm_vial_256"
end

registerVal2.image = __FUNC_CA7_
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
local function __FUNC_D17_(arg0, arg1)
	local function __FUNC_DCF_(arg0)
		local function __FUNC_EF3_(arg0, arg1, arg2, arg3)
			local registerVal4 = {}
			local registerVal5 = {}
			registerVal5.displayText = arg0
			registerVal5.disabled = false
			registerVal4.models = registerVal5
			registerVal5 = {}
			registerVal5.action = arg1
			registerVal5.actionParam = {}
			registerVal5.selectIndex = arg2
			registerVal5.showStoreButton = arg3
			registerVal4.properties = registerVal5
			return registerVal4
		end

		local function __FUNC_FF0_(arg0, arg1, arg2, arg3, arg4)
			local registerVal5 = GoBack(arg4, arg2)
			arg3.NotEnoughVials = true
			CoD.OverlayUtility.CreateOverlay(arg2, registerVal5, "PurchaseVials", arg2, arg3)
		end

		local function __FUNC_10E1_(arg0, arg1, arg2, arg3, arg4)
			GoBack(arg4, arg2)
		end

		local registerVal5 = AreCodPointsEnabled(arg0)
		if registerVal5 then
			table.insert({}, __FUNC_EF3_("MENU_TRADE_FOR_DIVINIUM_CAPS", __FUNC_FF0_, false, false))
		end
		table.insert({}, __FUNC_EF3_("MENU_OK", __FUNC_10E1_, true, false))
		return {}
	end

	local registerVal3 = DataSourceHelpers.ListSetup("NotEnoughVialsList", __FUNC_DCF_, true)
	DataSources.NotEnoughVialsList = registerVal3
	return "NotEnoughVialsList"
end

registerVal2.listDatasource = __FUNC_D17_
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
CoD.OverlayUtility.AddSystemOverlay("NotEnoughVials", registerVal2)
local registerVal1 = {}
registerVal1.menuName = "SystemOverlay_Full"
registerVal1.frameWidget = "CoD.SystemOverlay_MegaChew"
local function __FUNC_112C_(arg0, arg1)
	local registerVal2 = IsUltraRareMegaGobblegumPromoActive(arg0)
	if registerVal2 then
		return "ZMUI_MEGACHEW_STORE_TITLE"
	end
	return "ZMUI_MEGACHEW_VIAL"
end

registerVal1.title = __FUNC_112C_
local function __FUNC_11E8_(arg0, arg1)
	local registerVal2 = IsUltraRareMegaGobblegumPromoActive(arg0)
	if registerVal2 then
		return "ZMUI_MEGACHEW_STORE_DESC"
	end
	registerVal2 = IsKeysForVialsOfferActive(arg0)
	if arg1 or not "MPUI_BM_SPEND_FOR_VIALS" then
	end
	return "ZMUI_TRADE_CODPOINTS_FOR_VIALS_DESC"
end

registerVal1.description = __FUNC_11E8_
local function __FUNC_1318_(arg0, arg1)
	return arg1.image
end

registerVal1.image = __FUNC_1318_
local function __FUNC_1363_(arg0, arg1)
	if arg1.isFirstTime then
		return "ZMUI_URM_FIRST_TIME_PURCHASE_DESC"
	end
	return "ZMUI_URM_PURCHASE_DESC"
end

registerVal1.supportText = __FUNC_1363_
local function __FUNC_1410_(arg0, arg1)
	return arg1.itemCost
end

registerVal1.cost = __FUNC_1410_
local function __FUNC_145E_(arg0, arg1)
	return 0.000000
end

registerVal1.vials = __FUNC_145E_
registerVal1.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
registerVal1.state = "HorizontalList"
local function __FUNC_1495_(arg0, arg1)
	local function __FUNC_154E_(arg0)
		local function __FUNC_1A6C_(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
			local registerVal10 = CoD.OverlayUtility.GetVialsImage(arg3)
			local registerVal11 = {}
			local registerVal12 = {}
			local registerVal13 = Engine.Localize(arg0, arg4, arg3)
			if arg3 and 0.000000 >= arg3 or not registerVal13 then
			end
			registerVal12.displayText = arg0
			registerVal12.vials = arg3
			registerVal12.itemCODPointCost = arg4
			registerVal12.itemCost = arg6
			registerVal12.itemCount = arg6
			registerVal12.image = registerVal10
			registerVal12.disabled = false
			registerVal12.showRibbon = arg7
			registerVal12.ribbonText = ""
			registerVal11.models = registerVal12
			registerVal12 = {}
			registerVal12.action = arg1
			registerVal13 = {}
			registerVal13.vials = arg3
			registerVal13.cost = arg4
			registerVal13.cryptokeyCost = arg6
			registerVal12.actionParam = registerVal13
			registerVal12.selectIndex = arg2
			registerVal12.showStoreButton = arg5
			registerVal11.properties = registerVal12
			return registerVal11
		end

		local function __FUNC_1D1F_(arg0, arg1, arg2, arg3, arg4)
			local registerVal5 = GoBack(arg4, arg2)
			local registerVal6 = CoD.OverlayUtility.GetVialsImage(arg3.vials)
			arg3.image = registerVal6
			local registerVal7 = Engine.GetCoDPoints(arg2)
			if registerVal7 < arg3.cost and arg3.cryptokeyCost == nil then
				if CoD.NotEnoughLD then
					arg3.NotEnoughVials = true
				end
				CoD.OverlayUtility.CreateOverlay(arg2, registerVal5, "GoToStoreConfirmation", arg2, arg3)
			else
				CoD.OverlayUtility.CreateOverlay(arg2, registerVal5, "PurchaseVialsConfirmation", arg2, arg3)
			end
		end

		local function __FUNC_1F8E_(arg0, arg1, arg2, arg3, arg4)
			local registerVal5 = GoBack(arg4, arg2)
			arg3.image = "uie_t7_zm_icon_ggtilepromo_5x"
			local registerVal6 = Engine.DvarInt(nil, "loot_ld_urm_purchase_sku")
			arg3.skuId = registerVal6
			arg3.isURM = true
			local registerVal7 = Engine.GetCoDPoints(arg2)
			if registerVal7 < arg3.cost and arg3.cryptokeyCost == nil then
				CoD.OverlayUtility.CreateOverlay(arg2, registerVal5, "GoToStoreConfirmation", arg2, arg3)
			else
				CoD.OverlayUtility.CreateOverlay(arg2, registerVal5, "UltraRareMegaPurchaseOverlay", arg2, arg3)
			end
		end

		local function __FUNC_2202_(arg0, arg1)
			local registerVal2 = Engine.DvarInt(nil, arg1)
			if registerVal2 ~= 0.000000 then
			else
			end
			return arg0
		end

		local registerVal13 = __FUNC_2202_(200.000000, "loot_ld_x3_cpCost")
		table.insert({}, __FUNC_1A6C_("ZMUI_PURCHASE_VIALS", __FUNC_1D1F_, true, 3.000000, registerVal13, true, nil, false))
		registerVal13 = __FUNC_2202_(600.000000, "loot_ld_x9_cpCost")
		table.insert({}, __FUNC_1A6C_("ZMUI_PURCHASE_VIALS", __FUNC_1D1F_, false, 9.000000, registerVal13, true, nil, false))
		registerVal13 = __FUNC_2202_(1000.000000, "loot_ld_x20_cpCost")
		local registerVal16 = IsLiquidDiviniumSaleActive(arg0)
		table.insert({}, __FUNC_1A6C_("ZMUI_PURCHASE_VIALS", __FUNC_1D1F_, false, 20.000000, registerVal13, true, nil, (not registerVal16), "MENU_25PERCENTOFF"))
		local registerVal6 = IsKeysForVialsOfferActive(arg0)
		if registerVal6 then
			local registerVal12 = tonumber(Dvar.loot_vialsFromKeysOffer:get())
			table.insert({}, __FUNC_1A6C_("ZMUI_PURCHASE_VIALS", __FUNC_1D1F_, false, registerVal12, 0.000000, true, tonumber(Dvar.loot_vialsCost:get())))
		end
		registerVal6 = IsLiquidDiviniumMegaBundleActive(arg0)
		if registerVal6 then
			registerVal13 = __FUNC_2202_(2000.000000, "loot_ld_mega_bundle_cpCost")
			table.insert({}, __FUNC_1A6C_("ZMUI_PURCHASE_VIALS", __FUNC_1D1F_, false, 100.000000, registerVal13, true, nil, true, "ZMUI_MEGA_BUNDLE"))
		end
		registerVal6 = IsUltraRareMegaGobblegumPromoActive(arg0)
		if registerVal6 then
			registerVal13 = __FUNC_2202_(2500.000000, "loot_ld_urm_gobblegum_cpCost")
			table.insert({}, __FUNC_1A6C_("ZMUI_URM_PURCHASE_DESC", __FUNC_1F8E_, false, 0.000000, registerVal13, true, nil, false, "", "uie_t7_zm_icon_ggtilepromo_5x"))
		end
		return {}
	end

	local registerVal3 = DataSourceHelpers.ListSetup("PurchaseVialsList", __FUNC_154E_, true)
	DataSources.PurchaseVialsList = registerVal3
	return "PurchaseVialsList"
end

registerVal1.listDatasource = __FUNC_1495_
registerVal1[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
local function __FUNC_2286_(arg0, arg1, arg2, arg3)
	local registerVal4 = IsLiquidDiviniumSaleActive(arg1)
	local registerVal5 = IsLiquidDiviniumMegaBundleActive(arg1)
	local registerVal6 = IsUltraRareMegaGobblegumPromoActive(arg1)
	if arg3 and arg3.NotEnoughVials then
		CoD.NotEnoughLD = true
	end
	local function __FUNC_2425_()
		local registerVal1 = IsLiquidDiviniumSaleActive(arg1)
		registerVal1 = IsLiquidDiviniumMegaBundleActive(arg1)
		registerVal1 = IsUltraRareMegaGobblegumPromoActive(arg1)
		if registerVal4 == registerVal1 and registerVal5 ~= registerVal1 or registerVal6 ~= registerVal1 then
			DelayGoBack(arg0, arg1)
		end
	end

	arg0:subscribeToGlobalModel(arg1, "AutoeventsCycled", "cycled", __FUNC_2425_)
end

registerVal1.postCreateStep = __FUNC_2286_
CoD.OverlayUtility.Overlays.PurchaseVials = registerVal1
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Full"
registerVal2.frameWidget = "CoD.SystemOverlay_MegaChew"
registerVal2.title = "MPUI_BM_NO_CURRENCY"
local function __FUNC_2538_(arg0, arg1)
	if arg1.isURM then
		return "ZMUI_URM_NOT_ENOUGH_COD_POINTS"
	end
	return "ZMUI_NOT_ENOUGH_COD_POINTS_TO_TRADE"
end

registerVal2.description = __FUNC_2538_
local function __FUNC_25EC_(arg0, arg1)
	return arg1.image
end

registerVal2.image = __FUNC_25EC_
local function __FUNC_2637_(arg0, arg1)
	if arg1.isFirstTime then
		return "ZMUI_URM_FIRST_TIME_PURCHASE_DESC"
	end
	return "ZMUI_URM_PURCHASE_DESC"
end

registerVal2.supportText = __FUNC_2637_
local function __FUNC_26E4_(arg0, arg1)
	return arg1.itemCost
end

registerVal2.cost = __FUNC_26E4_
local function __FUNC_2732_(arg0, arg1)
	return arg1.vials
end

registerVal2.vials = __FUNC_2732_
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
local function __FUNC_277B_(arg0, arg1)
	local function __FUNC_283A_(arg0)
		local function __FUNC_2945_(arg0, arg1, arg2, arg3, arg4, arg5)
			local registerVal6 = {}
			local registerVal7 = {}
			registerVal7.displayText = arg0
			registerVal7.disabled = false
			registerVal6.models = registerVal7
			registerVal7 = {}
			registerVal7.action = arg1
			registerVal7.selectIndex = arg2
			registerVal6.properties = registerVal7
			return registerVal6
		end

		local function __FUNC_2A0A_(arg0, arg1, arg2, arg3, arg4)
			local registerVal5 = GoBack(arg4, arg2)
			OpenSystemOverlay(arg0, registerVal5, arg2, "PurchaseVials", "")
			MegaChewOpenCodPointsStore(arg0, arg1, arg2, "PurchaseVials", registerVal5)
		end

		local function __FUNC_2AEC_(arg0, arg1, arg2, arg3, arg4)
			GoBack(arg4, arg2)
		end

		table.insert({}, __FUNC_2945_("MPUI_PURCHASE_CODPOINTS_CAPS", __FUNC_2A0A_, true, 3.000000, 200.000000, true))
		table.insert({}, __FUNC_2945_("MENU_CANCEL_CAPS", __FUNC_2AEC_, false))
		return {}
	end

	local registerVal3 = DataSourceHelpers.ListSetup("GoToStoreConfirmationList", __FUNC_283A_, true)
	DataSources.GoToStoreConfirmationList = registerVal3
	return "GoToStoreConfirmationList"
end

registerVal2.listDatasource = __FUNC_277B_
local function __FUNC_2B38_()
	local function __FUNC_2B6C_(arg0, arg1, arg2, arg3)
		local registerVal4 = GoBack(arg3, arg2)
		OpenSystemOverlay(arg0, registerVal4, arg2, "PurchaseVials", "")
	end

	return __FUNC_2B6C_
end

registerVal2[CoD.OverlayUtility.GoBackPropertyName] = __FUNC_2B38_
local function __FUNC_2C10_(arg0, arg1, arg2, arg3)
	local registerVal4 = IsUltraRareMegaGobblegumPromoActive(arg1)
	if arg3 and arg3.NotEnoughVials then
		CoD.NotEnoughLD = true
	end
	local function __FUNC_2D43_()
		local registerVal1 = IsUltraRareMegaGobblegumPromoActive(arg1)
		if registerVal4 ~= registerVal1 then
			DelayGoBack(arg0, arg1)
		end
	end

	arg0:subscribeToGlobalModel(arg1, "AutoeventsCycled", "cycled", __FUNC_2D43_)
end

registerVal2.postCreateStep = __FUNC_2C10_
CoD.OverlayUtility.AddSystemOverlay("GoToStoreConfirmation", registerVal2)
registerVal1 = {}
registerVal1.menuName = "SystemOverlay_Full"
registerVal1.frameWidget = "CoD.SystemOverlay_MegaChew"
local function __FUNC_2DD6_(arg0, arg1)
	local registerVal2 = IsModelValueGreaterThanOrEqualTo(arg0, "CryptoKeyProgress.keyCount", arg1.cryptokeyCost)
	if arg1.cryptokeyCost and not registerVal2 then
		return "MPUI_BM_NO_CURRENCY"
	else
		return "ZMUI_CONFIRM_TRADE_CAPS"
	end
end

registerVal1.title = __FUNC_2DD6_
local function __FUNC_2EEF_(arg0, arg1)
	if arg1.cryptokeyCost then
		local registerVal2 = IsModelValueGreaterThanOrEqualTo(arg0, "CryptoKeyProgress.keyCount", arg1.cryptokeyCost)
		if registerVal2 then
			return Engine.Localize("MPUI_BM_SPEND_KEYS_FOR_VIALS")
		else
			return Engine.Localize("MPUI_BM_NOT_ENOUGH_CRYPTOKEYS")
		else
			return Engine.Localize("ZMUI_TRADE_CONFIRMATION_DESC", arg1.vials)
		end
	end
end

registerVal1.description = __FUNC_2EEF_
local function __FUNC_30C1_(arg0, arg1)
	return arg1.image
end

registerVal1.image = __FUNC_30C1_
local function __FUNC_310B_(arg0, arg1)
	return arg1.itemCost
end

registerVal1.cost = __FUNC_310B_
local function __FUNC_3156_(arg0, arg1)
	return arg1.vials
end

registerVal1.vials = __FUNC_3156_
registerVal1.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
registerVal1.state = "PurchaseSupplyDrop"
local function __FUNC_319F_(arg0, arg1)
	local function __FUNC_3266_(arg0, arg2)
		if arg2.purchasingVials then
			return {}
		end
		local function __FUNC_34FB_(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
			local registerVal8 = {}
			local registerVal9 = {}
			local registerVal10 = Engine.Localize(arg0, arg5)
			if arg1 or not registerVal10 then
			end
			registerVal9.displayText = arg0
			registerVal9.vials = arg4
			registerVal9.disabled = arg3
			registerVal8.models = registerVal9
			registerVal9 = {}
			registerVal9.action = arg1
			registerVal10 = {}
			registerVal10.vials = arg4
			registerVal10.cost = arg5
			registerVal10.isCryptokeys = arg7
			registerVal9.actionParam = registerVal10
			registerVal9.selectIndex = arg2
			registerVal9.showStoreButton = arg6
			registerVal8.properties = registerVal9
			return registerVal8
		end

		local function __FUNC_368B_(arg0, arg1, arg3, arg4, arg5)
			if arg4.isCryptokeys then
				local registerVal6 = tonumber(Dvar.zm_vials_keys_id:get())
			else
				if arg4.vials == 3.000000 then
					registerVal6 = Dvar.zm_vials_3_id:get()
				else
					if arg4.vials == 6.000000 then
						registerVal6 = Dvar.zm_vials_6_id:get()
					else
						if arg4.vials == 9.000000 then
							registerVal6 = Dvar.zm_vials_9_id:get()
						else
							if arg4.vials == 20.000000 then
								registerVal6 = Dvar.zm_vials_20_id:get()
							else
								if arg4.vials == 100.000000 then
									registerVal6 = Engine.DvarInt(nil, "zm_vials_100_id")
								end
							end
						end
					end
				end
			end
			registerVal6 = Engine.PurchaseDWSKU(arg3, registerVal6, false)
			if registerVal6 == 0.000000 or not registerVal6 then
				LuaUtils.UI_ShowErrorMessageDialog(arg3, "MPUI_BM_VIALS_PURCHASE_FAILED", "")
				GoBack(arg5, arg3)
				return 
			end
			arg0:setState("Purchasing")
			arg0.ZMDiviniumAnimFill:playClip("Start")
			arg0.ZMDiviniumAnimFill.nextClip = "Loop"
			arg2.purchasingVials = true
			arg5[CoD.OverlayUtility.GoBackPropertyName] = nil
			arg2.disabled = true
			arg2:updateDataSource(true)
			arg0.optionsHorizontal.disabled = true
			arg0.optionsHorizontal.purchasingVials = true
			arg0.optionsHorizontal:updateDataSource(true)
			CoD.Menu.UpdateAllButtonPrompts(arg5, arg3)
			local function __FUNC_3C8C_(arg1, arg2)
				local registerVal2 = Engine.IsInventoryBusy(arg3)
				registerVal2 = Engine.GetPurchaseDWSKUResult(arg3)
				if not arg2 or registerVal2 == Enum.InventoryPurchaseResult.INVENTORY_PURCHASE_RESULT_INPROGRESS then
					LUI.UIElement.clipOver(arg1, arg2)
				else
					arg1:playClip("Stop")
					local function __FUNC_3E91_(arg1, arg2)
						arg1:registerEventHandler("clip_over", LUI.UIElement.clipOver)
						arg0:setState("DefaultState")
						local registerVal2 = Engine.GetPurchaseDWSKUResult(arg3)
						if registerVal2 == Enum.InventoryPurchaseResult.INVENTORY_PURCHASE_RESULT_SUCCESS then
							GoBack(arg5, arg3)
						else
							LuaUtils.UI_ShowErrorMessageDialog(arg3, "MPUI_BM_VIALS_PURCHASE_FAILED", "")
							GoBack(arg5, arg3)
						end
					end

					arg1:registerEventHandler("clip_over", __FUNC_3E91_)
				end
			end

			arg0.ZMDiviniumAnimFill:registerEventHandler("clip_over", __FUNC_3C8C_)
		end

		local function __FUNC_40FF_(arg0, arg1, arg2, arg3, arg4)
			GoBack(arg4, arg2)
		end

		if arg1.cryptokeyCost then
			local registerVal6 = IsModelValueGreaterThanOrEqualTo(arg0, "CryptoKeyProgress.keyCount", arg1.cryptokeyCost)
			if registerVal6 then
				table.insert({}, __FUNC_34FB_("MPUI_BM_TRADE_CRYPTOKEYS", __FUNC_368B_, true, false, arg1.vials, arg1.cryptokeyCost, false, true))
			else
				table.insert({}, __FUNC_34FB_("ZMUI_PURCHASE_VIALS", __FUNC_368B_, true, false, arg1.vials, arg1.cost, false))
			end
		end
		table.insert({}, __FUNC_34FB_("MENU_CANCEL_CAPS", __FUNC_40FF_, false, false, false))
		return {}
	end

	local registerVal3 = DataSourceHelpers.ListSetup("PurchaseVialsConfirmationList", __FUNC_3266_, true)
	DataSources.PurchaseVialsConfirmationList = registerVal3
	return "PurchaseVialsConfirmationList"
end

registerVal1.listDatasource = __FUNC_319F_
local function __FUNC_4148_()
	local function __FUNC_417C_(arg0, arg1, arg2, arg3)
		local registerVal4 = GoBack(arg3, arg2)
		local registerVal5 = Engine.IsInventoryBusy(arg2)
		registerVal5 = Engine.GetPurchaseDWSKUResult(arg2)
		if registerVal4.id ~= "Menu.BlackMarket" and not registerVal5 and registerVal5 ~= Enum.InventoryPurchaseResult.INVENTORY_PURCHASE_RESULT_INPROGRESS then
			CoD.OverlayUtility.CreateOverlay(arg2, registerVal4, "PurchaseVials", arg2, {})
		end
	end

	return __FUNC_417C_
end

registerVal1[CoD.OverlayUtility.GoBackPropertyName] = __FUNC_4148_
local function __FUNC_438B_(arg0, arg1, arg2, arg3)
	local registerVal4 = IsLiquidDiviniumSaleActive(arg1)
	local registerVal5 = IsLiquidDiviniumMegaBundleActive(arg1)
	local function __FUNC_448C_()
		local registerVal1 = IsLiquidDiviniumSaleActive(arg1)
		registerVal1 = IsLiquidDiviniumMegaBundleActive(arg1)
		if registerVal4 ~= registerVal1 or registerVal5 ~= registerVal1 then
			DelayGoBack(arg0, arg1)
		end
	end

	arg0:subscribeToGlobalModel(arg1, "AutoeventsCycled", "cycled", __FUNC_448C_)
end

registerVal1.postCreateStep = __FUNC_438B_
CoD.OverlayUtility.Overlays.PurchaseVialsConfirmation = registerVal1
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Full"
registerVal2.title = "MENU_BGB_FACTORY_WELCOME"
registerVal2.description = "MENU_BGB_FACTORY_WELCOME_DESC"
registerVal2.image = "t7_menu_zm_bubblegum_overlay"
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
local function __FUNC_455B_(arg0, arg1)
	local function __FUNC_4620_(arg0)
		local function __FUNC_46BC_(arg0, arg1, arg2)
			local registerVal3 = {}
			local registerVal4 = {}
			registerVal4.displayText = arg0
			registerVal4.disabled = false
			registerVal3.models = registerVal4
			registerVal4 = {}
			registerVal4.action = arg1
			registerVal4.selectIndex = arg2
			registerVal3.properties = registerVal4
			return registerVal3
		end

		local function __FUNC_4782_(arg0, arg1, arg2, arg3, arg4)
			SetSeenMegaChewFactoryFirstTimePopup(arg2)
			GoBack(arg4, arg2)
			SetControllerModelValue(arg2, "OpenBlackMarketIncentivesPopup", true)
		end

		table.insert({}, __FUNC_46BC_("MENU_GOT_IT", __FUNC_4782_, true))
		return {}
	end

	local registerVal3 = DataSourceHelpers.ListSetup("MegaChewFactoryWelcomePopupList", __FUNC_4620_, true)
	DataSources.MegaChewFactoryWelcomePopupList = registerVal3
	return "MegaChewFactoryWelcomePopupList"
end

registerVal2.listDatasource = __FUNC_455B_
local function __FUNC_4863_()
	local function __FUNC_4894_(arg0, arg1, arg2, arg3)
		local registerVal4 = GoBack(arg3, arg2)
	end

	return __FUNC_4894_
end

registerVal2[CoD.OverlayUtility.GoBackPropertyName] = __FUNC_4863_
CoD.OverlayUtility.AddSystemOverlay("MegaChewFactoryWelcomePopup", registerVal2)
local function __FUNC_48E0_(arg0, arg1)
	local registerVal2 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.CreateModel(registerVal2, "MegaChewFactory")
	local registerVal4 = Engine.CreateModel(registerVal3, "getResultsOrKeepWaiting")
	Engine.SetModelValue(registerVal4, 0.000000)
	local registerVal5 = Engine.CreateModel(registerVal3, "disableInput")
	Engine.SetModelValue(registerVal5, 0.000000)
	local registerVal6 = Engine.CreateModel(registerVal2, "OpenBlackMarketIncentivesPopup")
	Engine.SetDvar("live_autoEventPumpTime", 0.000000)
end

local function __FUNC_4AF1_(arg0)
	if arg0 == Enum.LootResultType.LOOT_RESULT_FAILURE_INSUFFICIENT_FUNDS then
		return Engine.Localize("MENU_BGB_FACTORY_ERR_INSUFFICIENT_FUNDS")
	else
		if arg0 == Enum.LootResultType.LOOT_RESULT_FAILURE_BAD_RESPONE then
			return Engine.Localize("MENU_BGB_FACTORY_ERR_BAD_RESPONSE")
		else
			if arg0 == Enum.LootResultType.LOOT_RESULT_FAILURE or arg0 == Enum.LootResultType.LOOT_RESULT_INVALID then
				return Engine.Localize("MENU_BGB_FACTORY_ERR_BAD_RESPONSE")
			end
		end
	end
	return Engine.Localize("MENU_BGB_FACTORY_ERR_BAD_RESPONSE")
end

local function __FUNC_4D5B_(arg0, arg1)
	if not CoD.perController[arg0].MegaChewFactory_PendingLootRewardTask then
		return 
	end
	if arg1 then
		LUI.CoDMetrics.VialsSpentSuccessEvent(arg0, CoD.perController[arg0].MegaChewFactory_PendingLootRewardTask.vialsSpent, CoD.perController[arg0].MegaChewFactory_PendingLootRewardTask.vialsBefore, Engine.GetZMVials(arg0))
	else
		LUI.CoDMetrics.VialsSpentFailureEvent(arg0, CoD.perController[arg0].MegaChewFactory_PendingLootRewardTask.vialsSpent, CoD.perController[arg0].MegaChewFactory_PendingLootRewardTask.vialsBefore, Engine.GetZMVials(arg0))
	end
	CoD.perController[arg0].MegaChewFactory_PendingLootRewardTask = nil
end

local function __FUNC_4FB6_(arg0, arg1)
	local function __FUNC_506C_()
		Engine.SetupUI3DWindow(arg1, 0.000000, 360.000000, 135.000000)
		Engine.SetupUI3DWindow(arg1, 1.000000, 360.000000, 135.000000)
		Engine.SetupUI3DWindow(arg1, 2.000000, 360.000000, 135.000000)
		Engine.SetupUI3DWindow(arg1, 3.000000, 480.000000, 90.000000)
	end

	arg0:addElement(LUI.UITimer.newElementTimer(100.000000, true, __FUNC_506C_))
end

local function __FUNC_5179_(arg0, arg1)
	local registerVal2 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.CreateModel(registerVal2, "MegaChewFactory")
	local registerVal4 = Engine.GetPlayerStats(arg1, CoD.STATS_LOCATION_NORMAL, Enum.eModes.MODE_ZOMBIES)
	registerVal4.showMegaChewFactoryBreadcrumb:set(0.000000)
	local registerVal6 = Engine.GetGlobalModel()
	local registerVal5 = Engine.CreateModel(registerVal6, "MegaChewFactoryVialDisplay")
	local function __FUNC_56A3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			Engine.SetModelValue(registerVal5, registerVal1)
			Engine.SendClientScriptNotify(arg1, "mega_chew_remaining_tokens", registerVal1)
		end
	end

	arg0.Label0:subscribeToGlobalModel(arg1, "MegaChewTokens", "remainingTokens", __FUNC_56A3_)
	local function __FUNC_57AA_()
		local registerVal0 = Engine.LootResultsReady(arg1)
		if registerVal0 then
			registerVal0 = Engine.LootFailureReason(arg1)
			if registerVal0 == Enum.LootResultType.LOOT_RESULT_SUCCESS then
				local registerVal1 = Engine.GetLootResults(arg1)
				local registerVal2 = Engine.GetModelForController(arg1)
				local registerVal3 = Engine.CreateModel(registerVal2, "MegaChewTokens")
				local registerVal5 = Engine.CreateModel(registerVal3, "remainingTokens")
				Engine.SetModelValue(registerVal5, Engine.GetZMVials(arg1))
				__FUNC_4D5B_(arg1, true)
				Engine.SendClientScriptNotify(arg1, "mega_chew_results", true, registerVal1[1.000000], registerVal1[2.000000], registerVal1[3.000000])
				for index4=4.000000, 6.000000, 1.000000 do
					local registerVal8 = tonumber(Engine.TableLookup(nil, "gamedata/stats/zm/zm_statsTable.csv", 4.000000, registerVal1[index4], 0.000000))
					if registerVal8 then
						registerVal4.itemStats[registerVal8].markedOld:set(0.000000)
					end
				end
			else
				Engine.PlaySound("uin_bm_denied")
				Engine.SendClientScriptNotify(arg1, "mega_chew_results", false, "", "", "")
				__FUNC_4D5B_(arg1, false)
				LuaUtils.UI_ShowErrorMessageDialog(arg1, __FUNC_4AF1_(registerVal0))
			else
				if (0.000000 + 1.000000) < 32.000000 then
					arg0:addElement(LUI.UITimer.newElementTimer(250.000000, true, "MegaChewTokens"))
				else
					Engine.SendClientScriptNotify(arg1, "mega_chew_results", false)
				end
			end
		end
	end

	local registerVal10 = Engine.CreateModel(registerVal3, "getResultsOrKeepWaiting")
	local function __FUNC_5D61_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 and registerVal1 ~= 0.000000 then
			arg0:addElement(LUI.UITimer.newElementTimer(3000.000000, true, __FUNC_57AA_))
		end
		Engine.SetModelValue(arg1, 0.000000)
	end

	arg0:subscribeToModel(registerVal10, __FUNC_5D61_)
	local registerVal11 = Engine.CreateModel(registerVal3, "queryLoot")
	local registerVal12 = Engine.CreateModel(registerVal3, "lootQueryResult")
	Engine.SetModelValue(registerVal11, 0.000000)
	local function __FUNC_5E9E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if arg0 or registerVal1 == 0.000000 then
			return 
		end
		CoD.perController[arg1].MegaChewFactory_PendingLootRewardTask = {}
		CoD.perController[arg1].MegaChewFactory_PendingLootRewardTask.vialsSpent = registerVal1
		local registerVal3 = Engine.GetZMVials(arg1)
		CoD.perController[arg1].MegaChewFactory_PendingLootRewardTask.vialsBefore = registerVal3
		local registerVal2 = Engine.SpendZMVials(arg1, registerVal1)
		if not registerVal2 then
			PlaySoundAlias("uin_bm_denied")
			Engine.SetModelValue(registerVal11, 0.000000)
			Engine.SetModelValue(registerVal12, 0.000000)
			Engine.SendClientScriptNotify(arg1, "loot_query_result_ready")
			__FUNC_4D5B_(arg1, false)
			LuaUtils.UI_ShowErrorMessageDialog(arg1, Engine.Localize("MENU_BGB_FACTORY_ERR_BAD_RESPONSE"))
			return 
		end
		Engine.SetModelValue(registerVal10, 1.000000)
		Engine.SetModelValue(registerVal12, 1.000000)
		Engine.SendClientScriptNotify(arg1, "loot_query_result_ready")
		Engine.SetModelValue(registerVal11, 0.000000)
	end

	arg0:subscribeToModel(registerVal11, __FUNC_5E9E_, false)
	local function __FUNC_629C_(arg0, arg1)
		Engine.SetDvar("live_autoEventPumpTime", 0.000000)
	end

	arg0:registerEventHandler("bm_autoevents_tick", __FUNC_629C_)
	arg0:addElement(LUI.UITimer.new(100.000000, "bm_autoevents_tick", false, arg0))
	if CoD.isPC then
		__FUNC_4FB6_(arg0, arg1)
	end
end

local function __FUNC_632A_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("MegaChewFactory")
	if __FUNC_48E0_ then
		__FUNC_48E0_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "MegaChewFactory.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3.titleLabel:setText(Engine.Localize("MENU_MegaChew_FACTORY_CAPS"))
	registerVal3.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_MegaChew_FACTORY_CAPS"))
	registerVal3.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_bubblebuffs"))
	registerVal1:addElement(registerVal3)
	registerVal1.GenericMenuFrame0 = registerVal3
	local registerVal4 = CoD.MegaChewMachine.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 470.000000, 566.000000)
	registerVal4:setTopBottom(true, false, 483.000000, 651.000000)
	registerVal4:setAlpha(0.010000)
	local function __FUNC_7FE1_(arg1)
		registerVal4:setModel(arg1, arg0)
	end

	registerVal4:subscribeToGlobalModel(arg0, "MegaChewMachines", "machine0", __FUNC_7FE1_)
	local registerVal8 = Engine.GetModelForController(arg0)
	local registerVal7 = Engine.GetModel(registerVal8, "MegaChewFactory.disableInput")
	local function __FUNC_8032_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "MegaChewFactory.disableInput"
		CoD.Menu.UpdateButtonShownState(registerVal4, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_8032_)
	local function __FUNC_8201_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		MegaChewFactoryFocusChanged(registerVal1, arg1, arg0)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal4:registerEventHandler("gain_focus", __FUNC_8201_)
	local function __FUNC_83CC_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_83CC_)
	local function __FUNC_849E_(arg0, arg1, arg2, arg3)
		local registerVal4 = HasBGBTokensRemaining(arg0, arg2)
		registerVal4 = IsModelValueEqualTo(arg2, "MegaChewFactory.disableInput", 0.000000)
		if registerVal4 and registerVal4 then
			MegaChewFactoryPurchase(registerVal1, arg0, arg2)
			return true
		else
			registerVal4 = IsModelValueEqualTo(arg2, "MegaChewFactory.disableInput", 0.000000)
			if registerVal4 then
				OpenSystemOverlay(registerVal1, arg1, arg2, "NotEnoughVials", "")
				return true
			end
		end
	end

	local function __FUNC_8621_(arg0, arg1, arg2)
		local registerVal3 = HasBGBTokensRemaining(arg0, arg2)
		registerVal3 = IsModelValueEqualTo(arg2, "MegaChewFactory.disableInput", 0.000000)
		if registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		else
			registerVal3 = IsModelValueEqualTo(arg2, "MegaChewFactory.disableInput", 0.000000)
			if registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
				return true
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal4, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_849E_, __FUNC_8621_, false)
	registerVal1:addElement(registerVal4)
	registerVal1.MegaChewMachine0 = registerVal4
	local registerVal5 = CoD.MegaChewMachine.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, 596.000000, 691.000000)
	registerVal5:setTopBottom(true, false, 483.000000, 651.000000)
	registerVal5:setAlpha(0.010000)
	local function __FUNC_882D_(arg1)
		registerVal5:setModel(arg1, arg0)
	end

	registerVal5:subscribeToGlobalModel(arg0, "MegaChewMachines", "machine1", __FUNC_882D_)
	local registerVal9 = Engine.GetModelForController(arg0)
	registerVal8 = Engine.GetModel(registerVal9, "MegaChewFactory.disableInput")
	local function __FUNC_887E_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "MegaChewFactory.disableInput"
		CoD.Menu.UpdateButtonShownState(registerVal5, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_887E_)
	local function __FUNC_8A4D_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		MegaChewFactoryFocusChanged(registerVal1, arg1, arg0)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal5:registerEventHandler("gain_focus", __FUNC_8A4D_)
	local function __FUNC_8C18_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_8C18_)
	local function __FUNC_8CEA_(arg0, arg1, arg2, arg3)
		local registerVal4 = HasBGBTokensRemaining(arg0, arg2)
		registerVal4 = IsModelValueEqualTo(arg2, "MegaChewFactory.disableInput", 0.000000)
		if registerVal4 and registerVal4 then
			MegaChewFactoryPurchase(registerVal1, arg0, arg2)
			return true
		else
			registerVal4 = IsModelValueEqualTo(arg2, "MegaChewFactory.disableInput", 0.000000)
			if registerVal4 then
				OpenSystemOverlay(registerVal1, arg1, arg2, "NotEnoughVials", "")
				return true
			end
		end
	end

	local function __FUNC_8E6D_(arg0, arg1, arg2)
		local registerVal3 = HasBGBTokensRemaining(arg0, arg2)
		registerVal3 = IsModelValueEqualTo(arg2, "MegaChewFactory.disableInput", 0.000000)
		if registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		else
			registerVal3 = IsModelValueEqualTo(arg2, "MegaChewFactory.disableInput", 0.000000)
			if registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
				return true
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal5, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_8CEA_, __FUNC_8E6D_, false)
	registerVal1:addElement(registerVal5)
	registerVal1.MegaChewMachine1 = registerVal5
	local registerVal6 = CoD.MegaChewMachine.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 711.000000, 808.000000)
	registerVal6:setTopBottom(true, false, 483.000000, 651.000000)
	registerVal6:setAlpha(0.010000)
	local function __FUNC_9079_(arg1)
		registerVal6:setModel(arg1, arg0)
	end

	registerVal6:subscribeToGlobalModel(arg0, "MegaChewMachines", "machine2", __FUNC_9079_)
	local registerVal10 = Engine.GetModelForController(arg0)
	registerVal9 = Engine.GetModel(registerVal10, "MegaChewFactory.disableInput")
	local function __FUNC_90CA_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "MegaChewFactory.disableInput"
		CoD.Menu.UpdateButtonShownState(registerVal6, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal6:subscribeToModel(registerVal9, __FUNC_90CA_)
	local function __FUNC_9299_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		MegaChewFactoryFocusChanged(registerVal1, arg1, arg0)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal6:registerEventHandler("gain_focus", __FUNC_9299_)
	local function __FUNC_9464_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_9464_)
	local function __FUNC_9536_(arg0, arg1, arg2, arg3)
		local registerVal4 = HasBGBTokensRemaining(arg0, arg2)
		registerVal4 = IsModelValueEqualTo(arg2, "MegaChewFactory.disableInput", 0.000000)
		if registerVal4 and registerVal4 then
			MegaChewFactoryPurchase(registerVal1, arg0, arg2)
			return true
		else
			registerVal4 = IsModelValueEqualTo(arg2, "MegaChewFactory.disableInput", 0.000000)
			if registerVal4 then
				OpenSystemOverlay(registerVal1, arg1, arg2, "NotEnoughVials", "")
				return true
			end
		end
	end

	local function __FUNC_96B9_(arg0, arg1, arg2)
		local registerVal3 = HasBGBTokensRemaining(arg0, arg2)
		registerVal3 = IsModelValueEqualTo(arg2, "MegaChewFactory.disableInput", 0.000000)
		if registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		else
			registerVal3 = IsModelValueEqualTo(arg2, "MegaChewFactory.disableInput", 0.000000)
			if registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
				return true
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal6, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_9536_, __FUNC_96B9_, false)
	registerVal1:addElement(registerVal6)
	registerVal1.MegaChewMachine2 = registerVal6
	registerVal7 = LUI.UITightText.new()
	registerVal7:setLeftRight(true, false, -307.610000, -235.610000)
	registerVal7:setTopBottom(true, false, 961.500000, 1010.500000)
	registerVal7:setTTF("fonts/default.ttf")
	local function __FUNC_98C5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg0, "MegaChewTokens", "remainingTokens", __FUNC_98C5_)
	registerVal1:addElement(registerVal7)
	registerVal1.Label0 = registerVal7
	registerVal8 = CoD.CenterConsole.new(registerVal1, arg0)
	registerVal8:setLeftRight(false, false, -370.000000, 370.000000)
	registerVal8:setTopBottom(true, false, 123.000000, 221.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.console = registerVal8
	registerVal9 = CoD.MegaChewFactoryVat.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 110.000000, 470.000000)
	registerVal9:setTopBottom(true, false, -313.150000, -178.150000)
	Engine.SetupUI3DWindow(arg0, 0.000000, 360.000000, 135.000000)
	registerVal9:setUI3DWindow(0.000000)
	registerVal9.TextBox:setText(Engine.Localize("$(MegaChewLabelLeft)"))
	registerVal1:addElement(registerVal9)
	registerVal1.MegaChewFactoryVatLeft = registerVal9
	registerVal10 = CoD.MegaChewFactoryVat.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 576.000000, 936.000000)
	registerVal10:setTopBottom(true, false, -313.150000, -178.150000)
	Engine.SetupUI3DWindow(arg0, 1.000000, 360.000000, 135.000000)
	registerVal10:setUI3DWindow(1.000000)
	registerVal10.TextBox:setText(Engine.Localize("$(MegaChewLabelMiddle)"))
	registerVal1:addElement(registerVal10)
	registerVal1.MegaChewFactoryVatMiddle = registerVal10
	local registerVal11 = CoD.MegaChewFactoryVat.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 1051.000000, 1411.000000)
	registerVal11:setTopBottom(true, false, -313.150000, -178.150000)
	Engine.SetupUI3DWindow(arg0, 2.000000, 360.000000, 135.000000)
	registerVal11:setUI3DWindow(2.000000)
	registerVal11.TextBox:setText(Engine.Localize("$(MegaChewLabelRight)"))
	registerVal1:addElement(registerVal11)
	registerVal1.MegaChewFactoryVatRight = registerVal11
	local registerVal12 = CoD.MegaChewFactoryBottomLeftLabel.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, -659.070000, -179.070000)
	registerVal12:setTopBottom(true, false, 315.000000, 405.000000)
	Engine.SetupUI3DWindow(arg0, 3.000000, 480.000000, 90.000000)
	registerVal12:setUI3DWindow(3.000000)
	registerVal12.TextBox:setText(Engine.Localize("$(MegaChewLabelInstructions)"))
	registerVal1:addElement(registerVal12)
	registerVal1.MegaChewFactoryBottomLeftLabel = registerVal12
	local registerVal13 = CoD.MegaChewFactoryBuyDivinium.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 93.000000, 246.000000)
	registerVal13:setTopBottom(false, false, 45.000000, 72.000000)
	registerVal13.Label0:setText(Engine.Localize("MENU_PURCHASE"))
	registerVal13.clickButton.label:setText(Engine.Localize("ZMUI_BUY_LIQUID_DIVINIUM"))
	registerVal13.clickButton.keyshortcut:setText(Engine.Localize("[^3B^7]"))
	local registerVal16 = {}
	local registerVal17 = {}
	registerVal17.stateName = "Invisible"
	local function __FUNC_997E_(arg1, arg2, arg3)
		return IsModelValueEqualTo(arg0, "MegaChewFactory.disableInput", 1.000000)
	end

	registerVal17.condition = __FUNC_997E_
	local registerVal18 = {}
	registerVal18.stateName = "VisiblePC"
	local function __FUNC_9A08_(arg1, arg2, arg3)
		local registerVal3 = IsModelValueEqualTo(arg0, "MegaChewFactory.disableInput", 0.000000)
		registerVal3 = AreCodPointsEnabled(arg0)
		if registerVal3 and registerVal3 then
			registerVal3 = IsGamepad(arg0)
		end
		return (not registerVal3)
	end

	registerVal18.condition = __FUNC_9A08_
	local registerVal19 = {}
	registerVal19.stateName = "Visible"
	local function __FUNC_9AF0_(arg1, arg2, arg3)
		local registerVal3 = IsModelValueEqualTo(arg0, "MegaChewFactory.disableInput", 0.000000)
		if registerVal3 then
			registerVal3 = AreCodPointsEnabled(arg0)
		end
		return registerVal3
	end

	registerVal19.condition = __FUNC_9AF0_
	registerVal16 = {registerVal17, registerVal18, registerVal19}
	registerVal13:mergeStateConditions(registerVal16)
	registerVal17 = Engine.GetModelForController(arg0)
	registerVal16 = Engine.GetModel(registerVal17, "MegaChewFactory.disableInput")
	local function __FUNC_9BAD_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "MegaChewFactory.disableInput"
		registerVal1:updateElementState(registerVal13, registerVal4)
	end

	registerVal13:subscribeToModel(registerVal16, __FUNC_9BAD_)
	registerVal17 = Engine.GetGlobalModel()
	registerVal16 = Engine.GetModel(registerVal17, "lobbyRoot.lobbyNetworkMode")
	local function __FUNC_9CDE_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNetworkMode"
		registerVal1:updateElementState(registerVal13, registerVal4)
	end

	registerVal13:subscribeToModel(registerVal16, __FUNC_9CDE_)
	if registerVal13.m_eventHandlers.input_source_changed then
		local function __FUNC_9E0C_(arg0, arg1)
			if not arg1.menu then
			end
			arg1.menu = registerVal1
			arg0:updateState(arg1)
			return registerVal13.m_eventHandlers.input_source_changed(arg0, arg1)
		end

		registerVal13:registerEventHandler("input_source_changed", __FUNC_9E0C_)
	else
		registerVal13:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal17 = Engine.GetModelForController(arg0)
	registerVal16 = Engine.GetModel(registerVal17, "LastInput")
	local function __FUNC_9E97_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		registerVal1:updateElementState(registerVal13, registerVal4)
	end

	registerVal13:subscribeToModel(registerVal16, __FUNC_9E97_)
	registerVal1:addElement(registerVal13)
	registerVal1.MegaChewFactoryBuyDivinium0 = registerVal13
	local registerVal14 = {}
	registerVal14.right = registerVal5
	registerVal4.navigation = registerVal14
	registerVal14 = {}
	registerVal14.left = registerVal4
	registerVal14.right = registerVal6
	registerVal5.navigation = registerVal14
	registerVal14 = {}
	registerVal14.left = registerVal5
	registerVal6.navigation = registerVal14
	registerVal17 = Engine.GetModelForController(arg0)
	registerVal16 = Engine.GetModel(registerVal17, "MegaChewFactory.disableInput")
	local function __FUNC_9FB3_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "MegaChewFactory.disableInput"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_LSTICK_PRESSED)
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal1:subscribeToModel(registerVal16, __FUNC_9FB3_)
	local function __FUNC_A2B8_(arg1, arg2)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_LSTICK_PRESSED)
	end

	registerVal1:registerEventHandler("input_source_changed", __FUNC_A2B8_)
	registerVal17 = Engine.GetModelForController(arg0)
	registerVal16 = Engine.GetModel(registerVal17, "LastInput")
	local function __FUNC_A3A8_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "LastInput"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_LSTICK_PRESSED)
	end

	registerVal1:subscribeToModel(registerVal16, __FUNC_A3A8_)
	registerVal17 = Engine.GetGlobalModel()
	registerVal16 = Engine.GetModel(registerVal17, "lobbyRoot.lobbyNetworkMode")
	local function __FUNC_A569_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "lobbyRoot.lobbyNetworkMode"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal1:subscribeToModel(registerVal16, __FUNC_A569_)
	registerVal17 = Engine.GetModelForController(arg0)
	registerVal16 = Engine.GetModel(registerVal17, "CryptoKeyProgress.codPoints")
	local function __FUNC_A7A0_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "CryptoKeyProgress.codPoints"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal1:subscribeToModel(registerVal16, __FUNC_A7A0_)
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_A9D9_(arg1, arg2)
		SendClientScriptMenuChangeNotify(arg0, registerVal1, true)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_A9D9_)
	local function __FUNC_AA83_(arg1, arg2)
		local registerVal3 = IsPerControllerTablePropertyValue(arg0, "cameFromFeaturedCard", true)
		registerVal3 = HasSeenMegaChewFactoryFirstTimePopup(arg0)
		if registerVal3 and not registerVal3 then
			OpenSystemOverlay(registerVal1, registerVal1, arg0, "MegaChewFactoryWelcomePopup", "")
		else
			OpenBlackMarketIncentivePopup(registerVal1, arg0)
		end
		if not nil then
			registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_opened", __FUNC_AA83_)
	local function __FUNC_AC35_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsModelValueEqualTo(arg2, "MegaChewFactory.disableInput", 0.000000)
		if registerVal4 then
			SendClientScriptMenuChangeNotify(arg2, arg1, false)
			GoBack(registerVal1, arg2)
			ClearMenuSavedState(arg1)
			UploadStats(registerVal1, arg2)
			Close(registerVal1, arg2)
			HandleGoBackFromMegaChew(registerVal1, arg0, arg2, "", arg1)
			return true
		end
	end

	local function __FUNC_ADDF_(arg0, arg1, arg2)
		local registerVal3 = IsModelValueEqualTo(arg2, "MegaChewFactory.disableInput", 0.000000)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_AC35_, __FUNC_ADDF_, false)
	local function __FUNC_AF45_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsModelValueEqualTo(arg2, "MegaChewFactory.disableInput", 0.000000)
		registerVal4 = IsGamepad(arg2)
		if registerVal4 and registerVal4 then
			return true
		end
	end

	local function __FUNC_B003_(arg0, arg1, arg2)
		local registerVal3 = IsModelValueEqualTo(arg2, "MegaChewFactory.disableInput", 0.000000)
		registerVal3 = IsGamepad(arg2)
		if registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LSTICK_PRESSED, "MENU_NAVIGATE")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_LSTICK_PRESSED, nil, __FUNC_AF45_, __FUNC_B003_, false)
	local function __FUNC_B196_(arg0, arg1, arg2, arg3)
		local registerVal4 = AreCodPointsEnabled(arg2)
		registerVal4 = IsInventoryBusy(arg2)
		registerVal4 = IsModelValueEqualTo(arg2, "MegaChewFactory.disableInput", 0.000000)
		if registerVal4 and not registerVal4 and registerVal4 then
			OpenSystemOverlay(registerVal1, arg1, arg2, "PurchaseVials", "")
			return true
		end
	end

	local function __FUNC_B2E2_(arg0, arg1, arg2)
		local registerVal3 = AreCodPointsEnabled(arg2)
		registerVal3 = IsInventoryBusy(arg2)
		registerVal3 = IsModelValueEqualTo(arg2, "MegaChewFactory.disableInput", 0.000000)
		if registerVal3 and not registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "")
			return false
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "B", __FUNC_B196_, __FUNC_B2E2_, false)
	local function __FUNC_B4A0_(arg0, arg1, arg2, arg3)
		local registerVal4 = AreCodPointsEnabled(arg2)
		registerVal4 = IsInventoryBusy(arg2)
		registerVal4 = IsModelValueEqualTo(arg2, "MegaChewFactory.disableInput", 0.000000)
		if registerVal4 and not registerVal4 and registerVal4 then
			OpenCodPointsStore(registerVal1, arg0, arg2, "MegaChewFactory", arg1)
			return true
		end
	end

	local function __FUNC_B5E7_(arg0, arg1, arg2)
		local registerVal3 = AreCodPointsEnabled(arg2)
		registerVal3 = IsInventoryBusy(arg2)
		registerVal3 = IsModelValueEqualTo(arg2, "MegaChewFactory.disableInput", 0.000000)
		if registerVal3 and not registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MPUI_PURCHASE_CODPOINTS")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "P", __FUNC_B4A0_, __FUNC_B5E7_, false)
	local function __FUNC_B7B9_(arg1)
		ForceLobbyButtonUpdate(arg0)
		SendClientScriptNotify(arg0, "resetMegaChewFactory", "")
		SetPerControllerTableProperty(arg0, "cameFromFeaturedCard", nil)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal1, "close", __FUNC_B7B9_)
	local function __FUNC_B8C5_(arg1)
		local registerVal2 = IsModelValueEqualTo(arg0, "MegaChewFactory.disableInput", 1.000000)
		if registerVal2 then
			DisableNavigation(registerVal1, "MegaChewMachine0")
			DisableNavigation(registerVal1, "MegaChewMachine1")
			DisableNavigation(registerVal1, "MegaChewMachine2")
		else
			registerVal2 = IsModelValueEqualTo(arg0, "MegaChewFactory.disableInput", 0.000000)
			if registerVal2 then
				EnableNavigation(registerVal1, "MegaChewMachine0")
				EnableNavigation(registerVal1, "MegaChewMachine1")
				EnableNavigation(registerVal1, "MegaChewMachine2")
			end
		end
	end

	registerVal1:subscribeToGlobalModel(arg0, "PerController", "MegaChewFactory.disableInput", __FUNC_B8C5_)
	local function __FUNC_BA60_(arg1)
		local registerVal2 = IsModelValueTrue(arg0, "OpenBlackMarketIncentivesPopup")
		if registerVal2 then
			OpenBlackMarketIncentivePopup(registerVal1, arg0)
		end
	end

	registerVal1:subscribeToGlobalModel(arg0, "PerController", "OpenBlackMarketIncentivesPopup", __FUNC_BA60_)
	registerVal3:setModel(registerVal1.buttonModel, arg0)
	registerVal4.id = "MegaChewMachine0"
	registerVal5.id = "MegaChewMachine1"
	registerVal6.id = "MegaChewMachine2"
	registerVal16 = {}
	registerVal16.name = "menu_loaded"
	registerVal16.controller = arg0
	registerVal1:processEvent(registerVal16)
	registerVal16 = {}
	registerVal16.name = "update_state"
	registerVal16.menu = registerVal1
	registerVal1:processEvent(registerVal16)
	registerVal14 = registerVal1:restoreState()
	if not registerVal14 then
		registerVal16 = {}
		registerVal16.name = "gain_focus"
		registerVal16.controller = arg0
		registerVal1.MegaChewMachine0:processEvent(registerVal16)
	end
	local function __FUNC_BB21_(arg1)
		arg1.GenericMenuFrame0:close()
		arg1.MegaChewMachine0:close()
		arg1.MegaChewMachine1:close()
		arg1.MegaChewMachine2:close()
		arg1.console:close()
		arg1.MegaChewFactoryVatLeft:close()
		arg1.MegaChewFactoryVatMiddle:close()
		arg1.MegaChewFactoryVatRight:close()
		arg1.MegaChewFactoryBottomLeftLabel:close()
		arg1.MegaChewFactoryBuyDivinium0:close()
		arg1.Label0:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "MegaChewFactory.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_BB21_)
	if __FUNC_5179_ then
		__FUNC_5179_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.MegaChewFactory = __FUNC_632A_
