-- Decompiled with CoDLUIDecompiler by JariK

CoD.StoreUtility = {}
CoD.StoreUtility.ExtraSlotsProductDesc = "extra_slots"
local registerVal1 = {}
registerVal1.table = "gamedata/tables/common/inventory_items.csv"
registerVal1.productDescColumn = 1.000000
registerVal1.itemIdColumn = 2.000000
registerVal1.costColumn = 3.000000
registerVal1.titleColumn = 4.000000
registerVal1.descColumn = 5.000000
registerVal1.previewImageColumn = 6.000000
registerVal1.productImageColumn = 7.000000
registerVal1.categoryColumn = 8.000000
registerVal1.metadataColumn = 9.000000
registerVal1.ps4VisibilityColumn = 10.000000
registerVal1.xb1VisibilityColumn = 11.000000
registerVal1.pcVisibilityColumn = 12.000000
registerVal1.nameContextualColumn = 13.000000
registerVal1.descContextualColumn = 14.000000
registerVal1.imageCallingCardColumn = 15.000000
registerVal1.imageCamoColumn = 16.000000
registerVal1.buttonLabelContextualColumn = 17.000000
registerVal1.purchaseConfirmationColumn = 18.000000
registerVal1.highResRef = 19.000000
registerVal1.lowResRef = 20.000000
CoD.StoreUtility.InventoryItems = registerVal1
CoD.StoreUtility.HighlightOutfit = ""
registerVal1 = {}
registerVal1 = {"na_team_mtx", "eu_team_mtx", "anz_team_mtx", "cwl_mtx", "cwl_mtx_v2"}
CoD.StoreUtility.CWLPackages = registerVal1
registerVal1 = {}
local registerVal2 = {}
registerVal2.currencyId = Enum.InventoryCurrency.INVENTORY_CURRENCY_200CP_COMPENSATION
registerVal2.skuId = 90026.000000
registerVal2.ref = "MENU_REDEEM_ERROR_200_CODPOINTS"
local registerVal3 = {}
registerVal3.currencyId = Enum.InventoryCurrency.INVENTORY_CURRENCY_1100CP_COMPENSATION
registerVal3.skuId = 90027.000000
registerVal3.ref = "MENU_REDEEM_ERROR_1100_CODPOINTS"
local registerVal4 = {}
registerVal4.currencyId = Enum.InventoryCurrency.INVENTORY_CURRENCY_2400CP_COMPENSATION
registerVal4.skuId = 90028.000000
registerVal4.ref = "MENU_REDEEM_ERROR_2400_CODPOINTS"
local registerVal5 = {}
registerVal5.currencyId = Enum.InventoryCurrency.INVENTORY_CURRENCY_5000CP_COMPENSATION
registerVal5.skuId = 90029.000000
registerVal5.ref = "MENU_REDEEM_ERROR_5000_CODPOINTS"
local registerVal6 = {}
registerVal6.currencyId = Enum.InventoryCurrency.INVENTORY_CURRENCY_13000CP_COMPENSATION
registerVal6.skuId = 90030.000000
registerVal6.ref = "MENU_REDEEM_ERROR_13000_CODPOINTS"
registerVal1 = {registerVal2, registerVal3, registerVal4, registerVal5, registerVal6}
CoD.StoreUtility.MissingCoDPointsCurrencyList = registerVal1
registerVal1 = {}
registerVal2 = {}
registerVal2.currencyId = Enum.InventoryCurrency.INVENTORY_CURRENCY_CP_COMPENSATION
registerVal2.skuId = 90032.000000
registerVal2.ref = "MENU_STORE_COD_POINTS"
registerVal1 = {registerVal2}
CoD.StoreUtility.MissingCurrencyList = registerVal1
function CoD.StoreUtility.GetSkuName(arg0)
	for index1=1.000000, #CoD.StoreUtility.MissingCoDPointsCurrencyList, 1.000000 do
		if CoD.StoreUtility.MissingCoDPointsCurrencyList[index1].skuId == arg0 then
			return CoD.StoreUtility.MissingCoDPointsCurrencyList[index1].ref
		end
	end
	return ""
end

function CoD.StoreUtility.GetMissingCurrencySkuName(arg0)
	for index1=1.000000, #CoD.StoreUtility.MissingCurrencyList, 1.000000 do
		if CoD.StoreUtility.MissingCurrencyList[index1].skuId == arg0 then
			return CoD.StoreUtility.MissingCurrencyList[index1].ref
		end
	end
	return ""
end

function CoD.StoreUtility.GetMissingCPSkuList(arg0)
	for index2=1.000000, #CoD.StoreUtility.MissingCoDPointsCurrencyList, 1.000000 do
		local registerVal6 = Engine.GetPlayerBalanceByCurrencyId(arg0, CoD.StoreUtility.MissingCoDPointsCurrencyList[index2].currencyId)
		if 0.000000 < registerVal6 then
			local registerVal9 = {}
			registerVal9.skuId = CoD.StoreUtility.MissingCoDPointsCurrencyList[index2].skuId
			registerVal9.quantity = registerVal6
			table.insert({}, registerVal9)
		end
	end
	return {}
end

function CoD.StoreUtility.GetMissingCurrencySkuList(arg0)
	for index2=1.000000, #CoD.StoreUtility.MissingCurrencyList, 1.000000 do
		local registerVal6 = Engine.GetPlayerBalanceByCurrencyId(arg0, CoD.StoreUtility.MissingCurrencyList[index2].currencyId)
		if 0.000000 < registerVal6 then
			local registerVal9 = {}
			registerVal9.skuId = CoD.StoreUtility.MissingCurrencyList[index2].skuId
			registerVal9.quantity = registerVal6
			table.insert({}, registerVal9)
		end
	end
	return {}
end

function CoD.StoreUtility.HideProductPriceAndPurchaseStatus(arg0)
	local registerVal1 = IsDurango()
	if registerVal1 then
		if arg0 == "mappacks" or arg0 == "zombies" then
			return true
		end
	end
	return false
end

function CoD.StoreUtility.IsCodPointSalePackage(arg0)
	local registerVal1 = IsJapaneseSku()
	if not registerVal1 and arg0 == "cod_points_sale" then
		return true
	end
	return false
end

function CoD.StoreUtility.IsCWLV2Package(arg0)
	if arg0 == "cwl_mtx_v2" then
		return true
	end
	return false
end

function CoD.StoreUtility.IsCWLPackageEntitlement(arg0)
	local registerVal1, registerVal2, registerVal3 = ipairs(CoD.StoreUtility.CWLPackages)
	if  == arg0 then
		return true
	end
	return false
end

function CoD.StoreUtility.IsCWLBackgroundAvailableOffline(arg0, arg1)
	local registerVal2 = IsLive()
	registerVal2 = Engine.TableLookup(nil, CoD.backgroundsTable, 1.000000, arg1, 10.000000)
	local registerVal3 = CoD.StoreUtility.IsCWLPackageEntitlement(registerVal2)
	registerVal3 = Engine.GetProfileVarInt(arg0, registerVal2)
	if not registerVal2 and registerVal2 ~= "" and registerVal3 and registerVal3 == 1.000000 then
		return true
	end
	return false
end

function CoD.StoreUtility.GetDWItemsByCategory(arg0, arg1, arg2)
	local registerVal3 = Engine.TableFindRows(CoD.StoreUtility.InventoryItems.table, CoD.StoreUtility.InventoryItems.categoryColumn, arg1)
	local registerVal4 = AreCodPointsEnabled(0.000000)
	if registerVal3 ~= nil and #CoD.StoreUtility.InventoryItems.table == 0.000000 or not registerVal4 then
		return 
	end
	for index4=1.000000, #0.000000, 1.000000 do
		local registerVal8 = Engine.TableLookupGetColumnValueForRow(CoD.StoreUtility.InventoryItems.table, registerVal3[index4], CoD.StoreUtility.InventoryItems.productDescColumn)
		local registerVal9 = CoD.StoreUtility.IsInventoryItemVisible(arg0, registerVal8)
		if registerVal9 then
			local registerVal11 = Engine.GetInventoryItemQuantity(arg0, Engine.TableLookupGetColumnValueForRow(CoD.StoreUtility.InventoryItems.table, registerVal3[index4], CoD.StoreUtility.InventoryItems.itemIdColumn))
			if 0.000000 < registerVal11 then
			end
			local registerVal14, registerVal15, registerVal16 = ipairs(CoD.BlackMarketUtility.UniqueSpecialistOutfits)
			for index17,value18 in registerVal14, registerVal15, registerVal16 do
				local registerVal19 = string.find(registerVal8, value18.specialist)
				if registerVal19 then
					registerVal19 = Engine.GetInventoryItemQuantity(arg0, value18.bodyId)
					registerVal19 = Engine.GetInventoryItemQuantity(arg0, value18.contractId)
					if 0.000000 < registerVal19 or 0.000000 < registerVal19 then
					else
					end
					registerVal19 = Engine.TableLookupGetColumnValueForRow(CoD.StoreUtility.InventoryItems.table, registerVal3[index4], CoD.StoreUtility.InventoryItems.highResRef)
					registerVal19 = Engine.TableLookupGetColumnValueForRow(CoD.StoreUtility.InventoryItems.table, registerVal3[index4], CoD.StoreUtility.InventoryItems.lowResRef)
				else
				end
			end
			registerVal14 = Engine.TableLookupGetColumnValueForRow(CoD.StoreUtility.InventoryItems.table, registerVal3[index4], CoD.StoreUtility.InventoryItems.previewImageColumn)
			if registerVal14 == "t7_store_preview_cwl" and CoD.isPS4 then
			end
			registerVal15 = Engine.TableLookupGetColumnValueForRow(CoD.StoreUtility.InventoryItems.table, registerVal3[index4], CoD.StoreUtility.InventoryItems.productImageColumn)
			if registerVal15 == "t7_store_product_cwl" and CoD.isPS4 then
			end
			registerVal16 = Engine.TableLookupGetColumnValueForRow(CoD.StoreUtility.InventoryItems.table, registerVal3[index4], CoD.StoreUtility.InventoryItems.descColumn)
			local registerVal17 = Engine.LocalizeRefExists((registerVal16 .. "_PS4"))
			if CoD.isPS4 and registerVal17 then
			end
			if false then
				registerVal19 = {}
				local registerVal20 = {}
				local registerVal21 = Engine.TableLookupGetColumnValueForRow(CoD.StoreUtility.InventoryItems.table, registerVal3[index4], CoD.StoreUtility.InventoryItems.titleColumn)
				registerVal20.name = registerVal21
				local registerVal22 = Engine.TableLookupGetColumnValueForRow(CoD.StoreUtility.InventoryItems.table, registerVal3[index4], CoD.StoreUtility.InventoryItems.costColumn)
				registerVal20.price = ("^BBUTTON_COD_POINT_ICON^ " .. registerVal22)
				registerVal20.desc = (registerVal16 .. "_PS4")
				registerVal21 = Engine.TableLookupGetColumnValueForRow(CoD.StoreUtility.InventoryItems.table, registerVal3[index4], CoD.StoreUtility.InventoryItems.itemIdColumn)
				registerVal20.productID = registerVal21
				registerVal21 = Engine.TableLookupGetColumnValueForRow(CoD.StoreUtility.InventoryItems.table, registerVal3[index4], CoD.StoreUtility.InventoryItems.itemIdColumn)
				registerVal20.skuID = registerVal21
				registerVal20.previewImage = "t7_store_preview_cwl_ps4"
				registerVal20.productImage = "t7_store_product_cwl_ps4"
				registerVal20.videoHighResRef = registerVal19
				registerVal20.videoLowResRef = registerVal19
				registerVal20.purchasestatus = 1.000000
				registerVal20.serviceLabel = 0.000000
				registerVal21 = Engine.TableLookupGetColumnValueForRow(CoD.StoreUtility.InventoryItems.table, registerVal3[index4], CoD.StoreUtility.InventoryItems.metadataColumn)
				registerVal20.metadata = registerVal21
				registerVal19.models = registerVal20
				table.insert(arg2, registerVal19)
			else
				registerVal20 = {}
				registerVal21 = {}
				registerVal22 = Engine.TableLookupGetColumnValueForRow(CoD.StoreUtility.InventoryItems.table, registerVal3[index4], CoD.StoreUtility.InventoryItems.titleColumn)
				registerVal21.name = registerVal22
				local registerVal23 = Engine.TableLookupGetColumnValueForRow(CoD.StoreUtility.InventoryItems.table, registerVal3[index4], CoD.StoreUtility.InventoryItems.costColumn)
				registerVal21.price = ("^BBUTTON_COD_POINT_ICON^ " .. registerVal23)
				registerVal21.desc = (registerVal16 .. "_PS4")
				registerVal22 = Engine.TableLookupGetColumnValueForRow(CoD.StoreUtility.InventoryItems.table, registerVal3[index4], CoD.StoreUtility.InventoryItems.itemIdColumn)
				registerVal21.productID = registerVal22
				registerVal22 = Engine.TableLookupGetColumnValueForRow(CoD.StoreUtility.InventoryItems.table, registerVal3[index4], CoD.StoreUtility.InventoryItems.itemIdColumn)
				registerVal21.skuID = registerVal22
				registerVal21.previewImage = "t7_store_preview_cwl_ps4"
				registerVal21.productImage = "t7_store_product_cwl_ps4"
				registerVal21.videoHighResRef = registerVal19
				registerVal21.videoLowResRef = registerVal19
				registerVal21.purchasestatus = 1.000000
				registerVal21.serviceLabel = 0.000000
				registerVal22 = Engine.TableLookupGetColumnValueForRow(CoD.StoreUtility.InventoryItems.table, registerVal3[index4], CoD.StoreUtility.InventoryItems.metadataColumn)
				registerVal21.metadata = registerVal22
				registerVal20.models = registerVal21
				table.insert(arg2, 1.000000, registerVal20)
			end
		end
	end
end

function CoD.StoreUtility.DoesInventoryItemExistsByName(arg0)
	local registerVal1 = Engine.TableFindRows(CoD.StoreUtility.InventoryItems.table, CoD.StoreUtility.InventoryItems.productDescColumn, arg0)
	local registerVal2 = AreCodPointsEnabled(0.000000)
	if registerVal1 ~= nil and #CoD.StoreUtility.InventoryItems.table == 0.000000 or not registerVal2 then
		return false
	end
	return true
end

function CoD.StoreUtility.SetupFocusCategory(arg0, arg1)
	local registerVal2 = LUI.startswith(arg1, "store")
	registerVal2 = LUI.splitString(arg1, "_")
	if arg1 ~= nil and registerVal2 and #arg1 == 2.000000 then
		local registerVal3 = Engine.ToUpper(registerVal2[2.000000])
		CoD.perController[arg0].forceFocusCategory = registerVal3
		return 
	end
	CoD.perController[arg0].forceFocusCategory = nil
end

function CoD.StoreUtility.InitSingleCategoryStoreMenu(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModelForController(arg1)
	local registerVal4 = Engine.CreateModel(registerVal3, "StoreRoot")
	Engine.CreateModel(registerVal4, "ready")
	Engine.CreateModel(registerVal4, "storeSource")
	Engine.CreateModel(registerVal4, "storeLocation")
	local registerVal5 = Engine.CreateModel(registerVal4, "isCategoryListInFocus")
	Engine.SetModelValue(registerVal5, 0.000000)
	CoD.perController[arg1].selectedStoreCategory = arg2
	Engine.SetStoreCategoryFetchParamaeters(arg1, arg2, false)
	arg0.disablePopupOpenCloseAnim = true
end

function CoD.StoreUtility.AddUpsellToDescriptionIfNeeded(arg0, arg1, arg2)
	local registerVal3 = Engine.IsMapValid(arg1)
	registerVal3 = ShowPurchasableMap(arg0, arg1)
	registerVal3 = Engine.GetDLCBitForMapName(arg1)
	if not registerVal3 and registerVal3 and CoD.DLCPackFromBit[registerVal3] then
		local registerVal5 = IsDvarValueEqualTo("ui_freeDLC1", "1")
		if registerVal5 then
			return arg2
		else
			return Engine.Localize("MENU_DESCRIPTION_AND_UPSELL", arg2, ("MENU_" .. CoD.DLCPackFromBit[registerVal3] .. "_REQUIRED_HINT"))
		end
	end
	return arg2
end

function CoD.StoreUtility.PrependPurchaseIconIfNeeded(arg0, arg1, arg2)
	local registerVal3 = Engine.IsMapValid(arg1)
	registerVal3 = ShowPurchasableMap(arg0, arg1)
	registerVal3 = Engine.GetDLCBitForMapName(arg1)
	if not registerVal3 and registerVal3 and CoD.DLCPackFromBit[registerVal3] then
		return Engine.Localize("MENU_PURCHASE_ICON_AND_TEXT", arg2)
	end
	return arg2
end

function CoD.StoreUtility.AddListDLCListener(arg0)
	local registerVal1 = Engine.GetDLCBits()
	arg0._previousDLCBits = registerVal1
	if not arg0._updateTimer then
		local function __FUNC_35D0_()
			local registerVal1 = Engine.GetDLCBits()
			if arg0._previousDLCBits ~= registerVal1 then
				registerVal1 = Engine.GetDLCBits()
				arg0._previousDLCBits = registerVal1
				arg0:updateDataSource()
			end
		end

		registerVal1 = LUI.UITimer.newElementTimer(1000.000000, false, __FUNC_35D0_)
		arg0._updateTimer = registerVal1
		arg0:addElement(arg0._updateTimer)
	end
	local function __FUNC_36A8_(arg0)
		if arg0._updateTimer then
			arg0._updateTimer:close()
			arg0._updateTimer = nil
		end
	end

	LUI.OverrideFunction_CallOriginalSecond(arg0, "close", __FUNC_36A8_)
end

function CoD.StoreUtility.GetInventoryItemValueByItemName(arg0, arg1)
	return Engine.TableLookup(nil, CoD.StoreUtility.InventoryItems.table, CoD.StoreUtility.InventoryItems.productDescColumn, arg0, arg1)
end

function CoD.StoreUtility.GetInventoryItemValueBySkuId(arg0, arg1)
	return Engine.TableLookup(nil, CoD.StoreUtility.InventoryItems.table, CoD.StoreUtility.InventoryItems.itemIdColumn, arg0, arg1)
end

function CoD.StoreUtility.IsCWLPackageV2Visible(arg0, arg1)
	local registerVal4 = CoD.StoreUtility.IsCWLV2Package(arg1)
	registerVal4 = CoD.StoreUtility.IsInventoryItemPurchased(arg0, "cwl_mtx")
	if registerVal4 and not registerVal4 then
	end
	return true
end

function CoD.StoreUtility.IsInventoryItemVisible(arg0, arg1)
	local registerVal3 = IsDurango()
	if registerVal3 then
	else
		registerVal3 = IsPC()
		if registerVal3 then
		end
	end
	registerVal3 = tonumber(CoD.StoreUtility.GetInventoryItemValueByItemName(arg1, CoD.StoreUtility.InventoryItems.pcVisibilityColumn))
	if registerVal3 ~= 1.000000 then
	end
	local registerVal5 = CoD.StoreUtility.IsCWLV2Package(arg1)
	if true and registerVal5 then
		return CoD.StoreUtility.IsCWLPackageV2Visible(arg0, arg1)
	end
	registerVal5 = Dvar.store_hideOutfitContracts:exists()
	registerVal5 = Dvar.store_hideOutfitContracts:get()
	registerVal5 = string.find(arg1, "outfit_contract")
	if registerVal5 and registerVal5 == "1" and registerVal5 then
		return false
	end
	registerVal5 = Dvar.store_hideOutfitPurchase:exists()
	registerVal5 = Dvar.store_hideOutfitPurchase:get()
	registerVal5 = string.find(arg1, "outfit")
	registerVal5 = string.find(arg1, "outfit_contract")
	if registerVal5 and registerVal5 == "1" and registerVal5 and not registerVal5 then
		return false
	end
	return true
end

function CoD.StoreUtility.IsInventoryItemPurchased(arg0, arg1)
	local registerVal2 = CoD.StoreUtility.GetInventoryItemValueByItemName(arg1, CoD.StoreUtility.InventoryItems.itemIdColumn)
	local registerVal3 = Engine.GetInventoryItemQuantity(arg0, tonumber(registerVal2))
	if 0.000000 >= registerVal3 then
	end
	return true
end

function CoD.StoreUtility.GetCWLPackageCallingCardModel(arg0, arg1)
	local registerVal2 = CoD.StoreUtility.GetInventoryItemValueByItemName(arg1, CoD.StoreUtility.InventoryItems.itemIdColumn)
	local registerVal3 = CoD.StoreUtility.GetInventoryItemValueByItemName(arg1, CoD.StoreUtility.InventoryItems.nameContextualColumn)
	local registerVal4 = CoD.StoreUtility.GetInventoryItemValueByItemName(arg1, CoD.StoreUtility.InventoryItems.descContextualColumn)
	local registerVal5 = Engine.LocalizeRefExists((registerVal4 .. "_PS4"))
	if CoD.isPS4 and registerVal5 then
	end
	registerVal5 = CoD.StoreUtility.GetInventoryItemValueByItemName(arg1, CoD.StoreUtility.InventoryItems.imageCallingCardColumn)
	local registerVal6 = CoD.StoreUtility.GetInventoryItemValueByItemName(arg1, CoD.StoreUtility.InventoryItems.buttonLabelContextualColumn)
	local registerVal8 = Engine.GetBackgroundsForCategoryName(arg0, "default")
	local registerVal9, registerVal10, registerVal11 = ipairs(registerVal8)
	for index12,value13 in registerVal9, registerVal10, registerVal11 do
		if value13.entitlement == arg1 then
			table.insert({}, value13.id)
		end
	end
	local function __FUNC_4648_(arg0, arg1, arg2, arg3, arg4)
		OpenBuyInventoryItemDialog(arg0, arg1, arg2, arg1.source)
	end

	registerVal10 = {}
	registerVal11 = {}
	local registerVal12 = Engine.Localize(registerVal3)
	registerVal11.title = registerVal12
	registerVal12 = Engine.Localize((registerVal4 .. "_PS4"))
	registerVal11.description = registerVal12
	registerVal11.iconId = 0.000000
	registerVal11.isLocked = false
	registerVal11.isPackage = true
	registerVal11.packageImage = registerVal5
	registerVal12 = Engine.Localize(registerVal6)
	registerVal11.packageLabel = registerVal12
	registerVal12 = tonumber(registerVal2)
	registerVal11.skuId = registerVal12
	registerVal10.models = registerVal11
	registerVal11 = {}
	registerVal11.action = __FUNC_4648_
	registerVal11.includedItems = {}
	registerVal11.source = "CallingCard"
	registerVal10.properties = registerVal11
	return registerVal10
end

registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Full"
registerVal2.frameWidget = "CoD.SystemOverlay_MapPackFrame"
local function __FUNC_46C8_(arg0, arg1)
	local registerVal2 = IsDvarValueEqualTo("ui_freeDLC1", "1")
	if registerVal2 then
		if arg1.dlcPack == "DLC5_ORBIS" then
			arg1.dlcPack = "DLC5"
		end
		return Engine.Localize(("MENU_" .. arg1.dlcPack .. "_PURCHASE_DURING_PROMO"))
	else
		return Engine.Localize(("MENU_" .. arg1.dlcPack .. "_REQUIRED_HINT"))
	end
end

registerVal2.title = __FUNC_46C8_
local function __FUNC_4860_(arg0, arg1)
	return Engine.Localize(("MENU_" .. arg1.dlcPack .. "_DESC"))
end

registerVal2.description = __FUNC_4860_
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
local function __FUNC_490D_(arg0, arg1)
	local function __FUNC_49D0_(arg0, arg2)
		local function __FUNC_4BB5_(arg0, arg2, arg3, arg4)
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

		if arg1.dlcPack == "DLC6" then
			local registerVal7 = Engine.ToUpper(Engine.Localize("MENU_GO_TO_STORE"))
			local function __FUNC_4C95_(arg0, arg2, arg3, arg4, arg5)
				GoBackAndOpenStoreBO4OverlayOnParent(arg5, arg1.actionSource, arg3)
			end

			table.insert({}, __FUNC_4BB5_(registerVal7, __FUNC_4C95_, true, false))
		else
			registerVal7 = Engine.ToUpper(Engine.Localize("MENU_GO_TO_STORE"))
			local function __FUNC_4D24_(arg0, arg2, arg3, arg4, arg5)
				if CoD.isPC then
					local registerVal5 = GoBack(arg0, arg3)
					OpenSteamStore(arg0, arg2, arg3, arg4, arg5)
				else
					GoBackAndOpenStoreDLCOverlayOnParent(arg5, arg1.actionSource, arg3)
				end
			end

			table.insert({}, __FUNC_4BB5_(registerVal7, __FUNC_4D24_, true, false))
		end
		local function __FUNC_4E3F_(arg0, arg1, arg2, arg3, arg4)
			GoBack(arg4, arg2)
		end

		table.insert({}, __FUNC_4BB5_("MENU_CANCEL_CAPS", __FUNC_4E3F_, false, false))
		return {}
	end

	local registerVal3 = DataSourceHelpers.ListSetup("PurchaseMapPackMenuList", __FUNC_49D0_, true)
	DataSources.PurchaseMapPackMenuList = registerVal3
	return "PurchaseMapPackMenuList"
end

registerVal2.listDatasource = __FUNC_490D_
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
CoD.OverlayUtility.AddSystemOverlay("PurchaseMapPackConfirmation", registerVal2)
