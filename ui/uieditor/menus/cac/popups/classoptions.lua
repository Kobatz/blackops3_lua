-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.GameSettings.GameSettings_OptionsButton")
require("ui.uieditor.widgets.Footer.fe_footerRighSlideIn")
local function __FUNC_BD8_(arg0, arg1, arg2, arg3)
	if arg3.type == Enum.KeyboardType.KEYBOARD_TYPE_CUSTOM_CLASS then
		if arg3.input ~= nil then
			local registerVal6 = CoD.CACUtility.GetLoadoutNameFromIndex(arg2, CoD.perController[arg2].classNum)
			registerVal6:set(arg3.input)
		end
		GoBack(arg0, arg2)
		CoD.CACUtility.UpdateAllClasses(arg2)
	else
		if arg3.type == Enum.KeyboardType.KEYBOARD_TYPE_CLASS_SET then
			if arg3.input ~= nil then
				registerVal6 = Engine.GetCurrentClassSetIndex(arg2)
				Engine.SetClassSetName(arg2, registerVal6, arg3.input)
			end
			registerVal6 = GoBack(arg0, arg2)
			local registerVal9 = {}
			registerVal9.name = "class_set_name_change"
			registerVal9.controller = arg2
			registerVal6:dispatchEventToChildren(registerVal9)
		end
	end
end

local function __FUNC_F45_(arg0, arg1)
	local registerVal2 = Engine.IsSplitscreen()
	if not registerVal2 then
		arg0.animateInFromOffset = 340.000000
	end
	arg0:setModel(CoD.perController[arg1].classModel)
	arg0.handleKeyboardComplete = __FUNC_BD8_
end

local registerVal4 = {}
registerVal4.menuName = "SystemOverlay_Full"
registerVal4.frameWidget = "CoD.systemOverlay_ClassOptionsFrame"
local registerVal5 = Engine.Localize("MPUI_COPY_CUSTOM_CLASS_TITLE_CAPS")
registerVal4.title = registerVal5
local function __FUNC_107B_(arg0)
	DataSources.CustomClassMenu.getModel(arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal3, "CustomClassMenu")
	if registerVal2 then
		registerVal3 = CoD.SafeGetModelValue(registerVal2, "currentClassName")
	end
	return Engine.Localize("MPUI_COPY_CUSTOM_CLASS_DESC", "")
end

registerVal4.description = __FUNC_107B_
registerVal4.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
registerVal4.listDatasource = "ChooseClassList"
registerVal4[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
local function __FUNC_1250_()
	local function __FUNC_1284_(arg0, arg1, arg2)
		ClassOptionsCopyLoadout(arg0, arg1, arg2)
	end

	return __FUNC_1284_
end

registerVal4[CoD.OverlayUtility.ProcessActionPropertyName] = __FUNC_1250_
CoD.OverlayUtility.AddSystemOverlay("CopyClass", registerVal4)
registerVal4 = {}
registerVal4.menuName = "SystemOverlay_Full"
registerVal4.frameWidget = "CoD.systemOverlay_ClassOptionsFrame"
registerVal5 = Engine.Localize("MENU_WHICH_DEFAULT_CLASS_TITLE_CAPS")
registerVal4.title = registerVal5
local function __FUNC_12E5_(arg0)
	DataSources.CustomClassMenu.getModel(arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal3, "CustomClassMenu")
	if registerVal2 then
		registerVal3 = CoD.SafeGetModelValue(registerVal2, "currentClassName")
	end
	return Engine.Localize("MENU_WHICH_DEFAULT_CLASS_DESC", "")
end

registerVal4.description = __FUNC_12E5_
registerVal4.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
registerVal4.listDatasource = "ResetDefaultClass"
registerVal4[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
local function __FUNC_14BE_()
	local function __FUNC_14F0_(arg0, arg1, arg2)
		ClassOptionsResetToDefault(arg0, arg1, arg2)
	end

	return __FUNC_14F0_
end

registerVal4[CoD.OverlayUtility.ProcessActionPropertyName] = __FUNC_14BE_
CoD.OverlayUtility.AddSystemOverlay("ResetToDefault", registerVal4)
registerVal4 = {}
registerVal4.menuName = "SystemOverlay_Full"
registerVal4.frameWidget = "CoD.systemOverlay_ClassOptionsFrame"
registerVal5 = Engine.Localize("MPUI_COPY_CUSTOM_CLASS_SET_TITLE_CAPS")
registerVal4.title = registerVal5
registerVal5 = Engine.Localize("MPUI_COPY_CUSTOM_CLASS_SET_DESC")
registerVal4.description = registerVal5
registerVal4.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
registerVal4.listDatasource = "ClassSetTabs"
registerVal4[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
local function __FUNC_1554_()
	local function __FUNC_1588_(arg0, arg1, arg2)
		ClassOptionsCopyClassSet(arg0, arg1, arg2)
	end

	return __FUNC_1588_
end

registerVal4[CoD.OverlayUtility.ProcessActionPropertyName] = __FUNC_1554_
CoD.OverlayUtility.AddSystemOverlay("CopyClassSet", registerVal4)
local function __FUNC_15EA_(arg0, arg1, arg2, arg3, arg4)
	GoBackAndOpenStoreCodPointsOverlayOnParent(arg4, "ExtraSlotsCPStore", arg2)
end

registerVal5 = {}
registerVal5.menuName = "SystemOverlay_Full"
registerVal5.frameWidget = "CoD.SystemOverlay_ExtraSlots"
local function __FUNC_1677_(arg0, arg1)
	local registerVal3 = Engine.GetCoDPoints(arg0)
	if 0.000000 < arg1.itemCODPointCost and registerVal3 < arg1.itemCODPointCost then
		return "MPUI_BM_NO_CURRENCY"
	end
	Engine.Localize("ZMUI_CONFIRM_TRADE")
	return Engine.ToUpper(Engine.Localize)
end

registerVal5.title = __FUNC_1677_
local function __FUNC_17B9_(arg0, arg1)
	local registerVal3 = Engine.GetCoDPoints(arg0)
	if 0.000000 < arg1.itemCODPointCost and registerVal3 < arg1.itemCODPointCost then
		return Engine.Localize("MPUI_BM_NO_CODPOINTS_DESCRIPTION", arg1.displayText)
	end
	return Engine.Localize("MPUI_BM_CODPOINTS_PURCHASE_CONFIRMATION_TEXT", arg1.displayText)
end

registerVal5.description = __FUNC_17B9_
local function __FUNC_1940_(arg0, arg1)
	return arg1.itemCODPointCost
end

registerVal5.codpointcost = __FUNC_1940_
local function __FUNC_1996_(arg0, arg1)
	local registerVal3 = Engine.GetCoDPoints(arg0)
	if 0.000000 < arg1.itemCODPointCost and registerVal3 < arg1.itemCODPointCost then
		return Engine.Localize("MENU_CODPOINT_COST", arg1.itemCODPointCost)
	end
	return ""
end

registerVal5.codpointcostString = __FUNC_1996_
registerVal5.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
local function __FUNC_1AAD_(arg0, arg1)
	local function __FUNC_1B77_(arg0, arg2)
		if arg2.purchasingExtraSlots then
			return {}
		end
		local function __FUNC_1EEF_(arg0, arg2, arg3, arg4)
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

		local function __FUNC_1FCD_(arg0, arg1, arg3, arg4, arg5)
			local registerVal5 = DoesPlayerHaveExtraSlotsItem(arg3)
			if not registerVal5 then
				registerVal5 = tonumber(CoD.StoreUtility.GetInventoryItemValueByItemName(CoD.StoreUtility.ExtraSlotsProductDesc, CoD.StoreUtility.InventoryItems.itemIdColumn))
				local registerVal6 = Engine.PurchaseDWSKU(arg3, registerVal5)
				if registerVal5 == 0.000000 or not registerVal6 then
					LuaUtils.UI_ShowErrorMessageDialog(arg3, "MENU_EXTRASLOTS_PURCHASE_FAILED", "")
					GoBack(arg5, arg3)
					return 
				end
				arg0:setState("Purchasing")
				arg0.PurchasingWidget:playClip("StartPurchasing")
				arg0.PurchasingWidget.nextClip = "Purchasing"
				arg2.purchasingExtraSlots = true
				arg2:updateDataSource()
				arg5[CoD.OverlayUtility.GoBackPropertyName] = nil
				arg2.disabled = true
				CoD.Menu.UpdateAllButtonPrompts(arg5, arg3)
				local function __FUNC_246E_(arg1, arg2)
					local registerVal2 = Engine.IsInventoryBusy(arg3)
					registerVal2 = Engine.GetPurchaseDWSKUResult(arg3)
					if not arg2 or registerVal2 == Enum.InventoryPurchaseResult.INVENTORY_PURCHASE_RESULT_INPROGRESS then
						LUI.UIElement.clipOver(arg1, arg2)
					else
						arg1:playClip("StopPurchasing")
						local function __FUNC_267F_(arg1, arg2)
							arg1:registerEventHandler("clip_over", LUI.UIElement.clipOver)
							arg0:setState("DefaultState")
							local registerVal2 = Engine.GetPurchaseDWSKUResult(arg3)
							if registerVal2 == Enum.InventoryPurchaseResult.INVENTORY_PURCHASE_RESULT_SUCCESS then
								registerVal2 = GoBack(arg5, arg3)
								CoD.OverlayUtility.CreateOverlay(arg3, registerVal2, "PurchaseExtraSlotsComplete", arg3)
								LUI.CoDMetrics.InventoryItemPurchased(arg3, arg4.productDesc, arg4.purchaseSource, arg4.itemCODPointCost, true)
							else
								LuaUtils.UI_ShowErrorMessageDialog(arg3, "MENU_EXTRASLOTS_PURCHASE_FAILED", "")
								GoBack(arg5, arg3)
							end
						end

						arg1:registerEventHandler("clip_over", __FUNC_267F_)
					end
				end

				arg0.PurchasingWidget:registerEventHandler("clip_over", __FUNC_246E_)
			end
		end

		local function __FUNC_2A50_(arg0, arg1, arg2, arg3, arg4)
			GoBack(arg4, arg2)
		end

		local registerVal7 = Engine.GetCoDPoints(arg0)
		if 0.000000 < arg1.itemCODPointCost and registerVal7 < arg1.itemCODPointCost then
			table.insert({}, __FUNC_1EEF_("MPUI_PURCHASE_CODPOINTS_CAPS", __FUNC_15EA_, true, false))
		else
			if 0.000000 < arg1.itemCODPointCost then
				local registerVal6 = CoD.StoreUtility.GetInventoryItemValueByItemName(CoD.StoreUtility.ExtraSlotsProductDesc, CoD.StoreUtility.InventoryItems.costColumn)
				local registerVal10 = Engine.Localize("MPUI_BM_TRADE_COD_POINTS", tonumber(registerVal6))
				table.insert({}, __FUNC_1EEF_(registerVal10, __FUNC_1FCD_, true, false))
			end
		end
		table.insert({}, __FUNC_1EEF_("MENU_CANCEL_CAPS", __FUNC_2A50_, false, false))
		return {}
	end

	local registerVal3 = DataSourceHelpers.ListSetup("PurchaseExtraSlotsMenuList", __FUNC_1B77_, true)
	DataSources.PurchaseExtraSlotsMenuList = registerVal3
	return "PurchaseExtraSlotsMenuList"
end

registerVal5.listDatasource = __FUNC_1AAD_
local function __FUNC_2A9C_(arg0, arg1)
	local function __FUNC_2AD4_(arg0, arg2, arg3, arg4)
		LUI.CoDMetrics.InventoryItemPurchased(arg3, arg1.productDesc, arg1.purchaseSource, arg1.itemCODPointCost, false)
		GoBack(arg4, arg3)
	end

	return __FUNC_2AD4_
end

registerVal5[CoD.OverlayUtility.GoBackPropertyName] = __FUNC_2A9C_
CoD.OverlayUtility.AddSystemOverlay("PurchaseExtraSlotsConfirmation", registerVal5)
registerVal5 = {}
registerVal5.menuName = "SystemOverlay_Compact"
registerVal5.frameWidget = "CoD.SystemOverlay_ExtraSlotsPurchased"
local function __FUNC_2C00_(arg0, arg1)
	return Engine.Localize("MENU_CONGRATULATIONS_CAPS")
end

registerVal5.title = __FUNC_2C00_
local function __FUNC_2C8D_(arg0, arg1)
	return Engine.Localize("MENU_EXTRASLOTS_PURCHASE_COMPLETE_DESC")
end

registerVal5.description = __FUNC_2C8D_
registerVal5.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
registerVal5.image = "uie_t7_icon_unlock_generic_square_overlays"
local function __FUNC_2D26_(arg0, arg1)
	local function __FUNC_2DF3_(arg0)
		local function __FUNC_2E90_(arg0, arg2, arg3, arg4)
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

		local function __FUNC_2F71_(arg0, arg1, arg2, arg3, arg4)
			local registerVal6 = Engine.GetModelForController(arg2)
			local registerVal5 = Engine.GetModel(registerVal6, "classSetsUpdated")
			if registerVal5 then
				Engine.ForceNotifyModelSubscriptions(registerVal5)
			end
			CoD.FileshareUtility.SetDirty()
			MediaManagerMarkDirty(arg2)
			GoBack(arg4, arg2)
		end

		table.insert({}, __FUNC_2E90_("MENU_OK", __FUNC_2F71_, true, false))
		return {}
	end

	local registerVal3 = DataSourceHelpers.ListSetup("PurchaseExtraSlotsCompleteMenuList", __FUNC_2DF3_, true)
	DataSources.PurchaseExtraSlotsCompleteMenuList = registerVal3
	return "PurchaseExtraSlotsCompleteMenuList"
end

registerVal5.listDatasource = __FUNC_2D26_
local function __FUNC_3112_()
	local function __FUNC_3144_(arg0, arg1, arg2, arg3)
		local registerVal5 = Engine.GetModelForController(arg2)
		local registerVal4 = Engine.GetModel(registerVal5, "classSetsUpdated")
		if registerVal4 then
			Engine.ForceNotifyModelSubscriptions(registerVal4)
		end
		GoBack(arg3, arg2)
	end

	return __FUNC_3144_
end

registerVal5[CoD.OverlayUtility.GoBackPropertyName] = __FUNC_3112_
CoD.OverlayUtility.AddSystemOverlay("PurchaseExtraSlotsComplete", registerVal5)
registerVal5 = {}
registerVal5.menuName = "SystemOverlay_Compact"
registerVal5.frameWidget = "CoD.SystemOverlay_ExtraSlotsPurchased"
local function __FUNC_3262_(arg0, arg1)
	return Engine.Localize("MENU_CONGRATULATIONS_CAPS")
end

registerVal5.title = __FUNC_3262_
local function __FUNC_32ED_(arg0, arg1)
	if arg1.category == "OUTFITS" then
		return Engine.Localize(arg1.displayText)
	end
	return Engine.Localize("MENU_PURCHASE_COMPLETE", arg1.itemName)
end

registerVal5.description = __FUNC_32ED_
registerVal5.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
local function __FUNC_3404_(arg0, arg1)
	return arg1.image
end

registerVal5.image = __FUNC_3404_
local function __FUNC_344F_(arg0, arg1)
	local function __FUNC_351E_(arg0)
		local function __FUNC_35BC_(arg0, arg2, arg3, arg4)
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

		local function __FUNC_369D_(arg0, arg1, arg2, arg3, arg4)
			ForceNotifyControllerModel(arg2, "StoreRoot.ready")
			GoBack(arg4, arg2)
		end

		table.insert({}, __FUNC_35BC_("MENU_OK", __FUNC_369D_, true, false))
		return {}
	end

	local registerVal3 = DataSourceHelpers.ListSetup("PurchaseInventoryItemCompleteMenuList", __FUNC_351E_, true)
	DataSources.PurchaseInventoryItemCompleteMenuList = registerVal3
	return "PurchaseInventoryItemCompleteMenuList"
end

registerVal5.listDatasource = __FUNC_344F_
local function __FUNC_3735_()
	local function __FUNC_3768_(arg0, arg1, arg2, arg3)
		ForceNotifyControllerModel(arg2, "StoreRoot.ready")
		GoBack(arg3, arg2)
	end

	return __FUNC_3768_
end

registerVal5[CoD.OverlayUtility.GoBackPropertyName] = __FUNC_3735_
CoD.OverlayUtility.AddSystemOverlay("PurchaseInventoryItemComplete", registerVal5)
local function __FUNC_3801_(arg0)
	local function __FUNC_3AF0_(arg0, arg1, arg2, arg3, arg4)
		local registerVal5 = {}
		local registerVal6 = {}
		registerVal6.displayText = arg0
		registerVal6.icon = arg1
		local registerVal7 = Engine.Localize(arg2)
		registerVal6.description = registerVal7
		registerVal5.models = registerVal6
		registerVal6 = {}
		registerVal6.action = arg3
		registerVal6.actionParam = arg4
		registerVal5.properties = registerVal6
		return registerVal5
	end

	local function __FUNC_3C03_(arg0, arg1, arg2, arg3, arg4)
		ShowKeyboard(arg0, arg1, arg2, "KEYBOARD_TYPE_CUSTOM_CLASS")
	end

	local function __FUNC_3C7E_(arg0, arg1, arg2, arg3, arg4)
		CoD.OverlayUtility.CreateOverlay(arg2, arg4, "CopyClass", arg2)
	end

	local function __FUNC_3D27_(arg0, arg1, arg2, arg3, arg4)
		CoD.OverlayUtility.CreateOverlay(arg2, arg4, "ResetToDefault", arg2)
	end

	local function __FUNC_3DD4_(arg0, arg1, arg2, arg3, arg4)
		local registerVal5 = IsCampaign()
		if not registerVal5 then
			ClassOptionsClearLoadout(arg0, arg1, arg2)
			GoBack(arg0, arg2)
			ClearSavedState(arg0, arg2)
		end
	end

	table.insert({}, __FUNC_3AF0_("MENU_RENAME_LOADOUT_CAPS", "t7_icon_menu_simple_rename", "MENU_RENAME_CLASS_LOADOUT_DESC", __FUNC_3C03_))
	table.insert({}, __FUNC_3AF0_("MENU_COPY_CAPS", "t7_icon_menu_simple_copy", "MENU_COPY_CLASS_DESC", __FUNC_3C7E_))
	table.insert({}, __FUNC_3AF0_("MENU_RESET_TO_DEFAULT_CAPS", "t7_icon_menu_simple_revertsetting", "MENU_RESET_CLASS_TO_DEFAULT_DESC", __FUNC_3D27_))
	local registerVal7 = IsCampaign()
	if not registerVal7 then
		table.insert({}, __FUNC_3AF0_("MENU_CLEAR_LOADOUT_CAPS", "t7_icon_menu_simple_delete", "MENU_CLEAR_LOADOUT_DESC", __FUNC_3DD4_))
	end
	return {}
end

local function __FUNC_3EA3_(arg0)
	local function __FUNC_4031_(arg0, arg1, arg2, arg3, arg4)
		local registerVal5 = {}
		local registerVal6 = {}
		registerVal6.displayText = arg0
		registerVal6.icon = arg1
		local registerVal7 = Engine.Localize(arg2)
		registerVal6.description = registerVal7
		registerVal5.models = registerVal6
		registerVal6 = {}
		registerVal6.action = arg3
		registerVal6.actionParam = arg4
		registerVal5.properties = registerVal6
		return registerVal5
	end

	local function __FUNC_4143_(arg0, arg1, arg2, arg3, arg4)
		ShowKeyboard(arg0, arg1, arg2, "KEYBOARD_TYPE_CLASS_SET")
	end

	local function __FUNC_41BB_(arg0, arg1, arg2, arg3, arg4)
		CoD.OverlayUtility.CreateOverlay(arg2, arg4, "CopyClassSet", arg2)
	end

	table.insert({}, __FUNC_4031_("MENU_RENAME_CLASS_SET_CAPS", "t7_icon_menu_simple_rename", "MENU_RENAME_CLASS_SET_DESC", __FUNC_4143_))
	table.insert({}, __FUNC_4031_("MENU_COPY_CLASS_SET_CAPS", "t7_icon_menu_simple_copy", "MENU_COPY_CLASS_SET_DESC", __FUNC_41BB_))
	return {}
end

local registerVal6 = DataSourceHelpers.ListSetup("CACClassOptions", __FUNC_3801_, true)
DataSources.CACClassOptions = registerVal6
registerVal6 = DataSourceHelpers.ListSetup("CACClassSetOptions", __FUNC_3EA3_, true)
DataSources.CACClassSetOptions = registerVal6
local function __FUNC_4266_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("ClassOptions")
	if __FUNC_F45_ then
		__FUNC_F45_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "ClassOptions.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -262.000000, 11.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.350000)
	registerVal1:addElement(registerVal3)
	registerVal1.Blackfade = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, true, -355.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.040000, 0.040000, 0.040000)
	registerVal4:setAlpha(0.980000)
	registerVal1:addElement(registerVal4)
	registerVal1.leftBackground = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, true, -355.000000, 3.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setAlpha(0.500000)
	registerVal5:setImage(RegisterImage("uie_t7_tile_texture"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll"))
	registerVal5:setShaderVector(0.000000, 30.000000, 55.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.tileTexture = registerVal5
	local registerVal6 = LUI.UIList.new(registerVal1, arg0, 1.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(false, true, -322.500000, -67.500000)
	registerVal6:setTopBottom(true, false, 135.000000, 282.000000)
	registerVal6:setWidgetType(CoD.GameSettings_OptionsButton)
	registerVal6:setVerticalCount(4.000000)
	registerVal6:setSpacing(1.000000)
	registerVal6:setDataSource("CACClassOptions")
	local function __FUNC_58A8_(arg1, arg2)
		ClassOptionsSetHintText(registerVal1, arg1, arg0)
		return nil
	end

	registerVal6:registerEventHandler("list_item_gain_focus", __FUNC_58A8_)
	local function __FUNC_5911_(arg1, arg2)
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

	registerVal6:registerEventHandler("gain_focus", __FUNC_5911_)
	local function __FUNC_5AA3_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_5AA3_)
	local function __FUNC_5B72_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_5BD3_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal6, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_5B72_, __FUNC_5BD3_, false)
	registerVal1:addElement(registerVal6)
	registerVal1.classOptionsList = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(false, true, -322.500000, -100.000000)
	registerVal7:setTopBottom(true, false, 96.000000, 122.000000)
	registerVal7:setRGB(1.000000, 0.470000, 0.000000)
	registerVal7:setTTF("fonts/escom.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_5CCE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(registerVal1)
		end
	end

	registerVal7:subscribeToGlobalModel(arg0, "CustomClassMenu", "customClassName", __FUNC_5CCE_)
	registerVal1:addElement(registerVal7)
	registerVal1.customClassNameTitile = registerVal7
	local registerVal8 = CoD.fe_footerRighSlideIn.new(registerVal1, arg0)
	registerVal8:setLeftRight(false, true, -464.000000, -32.000000)
	registerVal8:setTopBottom(false, true, -75.000000, -43.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.fefooterRighSlideIn = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, true, -356.000000, -355.000000)
	registerVal9:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal9:setAlpha(0.420000)
	registerVal1:addElement(registerVal9)
	registerVal1.Border0 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, true, -356.000000, -355.000000)
	registerVal10:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal10:setAlpha(0.420000)
	registerVal1:addElement(registerVal10)
	registerVal1.Border00 = registerVal10
	local registerVal11 = LUI.UIList.new(registerVal1, arg0, 1.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal11:makeFocusable()
	registerVal11:setLeftRight(false, true, -322.500000, -67.500000)
	registerVal11:setTopBottom(true, false, 451.000000, 524.000000)
	registerVal11:setWidgetType(CoD.GameSettings_OptionsButton)
	registerVal11:setVerticalCount(2.000000)
	registerVal11:setSpacing(1.000000)
	registerVal11:setDataSource("CACClassSetOptions")
	local function __FUNC_5D60_(arg1, arg2)
		ClassOptionsSetHintText(registerVal1, arg1, arg0)
		return nil
	end

	registerVal11:registerEventHandler("list_item_gain_focus", __FUNC_5D60_)
	local function __FUNC_5DC9_(arg1, arg2)
		local registerVal3 = IsClassSetsAvailableForCurrentGameMode()
		if not registerVal3 then
			MakeNotFocusable(arg1)
		else
			registerVal3 = DoesPlayerHaveExtraSlotsItem(arg0)
			if not registerVal3 then
				MakeNotFocusable(arg1)
			end
		end
		if not nil then
			registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal11:registerEventHandler("menu_loaded", __FUNC_5DC9_)
	local function __FUNC_5EE5_(arg1, arg2)
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

	registerVal11:registerEventHandler("gain_focus", __FUNC_5EE5_)
	local function __FUNC_6077_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal11:registerEventHandler("lose_focus", __FUNC_6077_)
	local function __FUNC_6146_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_61A7_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal11, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_6146_, __FUNC_61A7_, false)
	registerVal1:addElement(registerVal11)
	registerVal1.classSetOptionsList = registerVal11
	local registerVal12 = LUI.UIText.new()
	registerVal12:setLeftRight(false, true, -322.500000, -100.000000)
	registerVal12:setTopBottom(true, false, 416.000000, 442.000000)
	registerVal12:setRGB(1.000000, 0.470000, 0.000000)
	registerVal12:setTTF("fonts/escom.ttf")
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_62A2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal12:subscribeToGlobalModel(arg0, "CustomClassMenu", "customClassSetName", __FUNC_62A2_)
	registerVal1:addElement(registerVal12)
	registerVal1.TextBox0 = registerVal12
	local registerVal13 = LUI.UIText.new()
	registerVal13:setLeftRight(false, true, -307.250000, -82.500000)
	registerVal13:setTopBottom(true, false, 548.000000, 568.000000)
	registerVal13:setTTF("fonts/default.ttf")
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_635A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal13:subscribeToGlobalModel(arg0, "CustomClassMenu", "customClassOptionsHintText", __FUNC_635A_)
	registerVal1:addElement(registerVal13)
	registerVal1.description1 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(false, true, -322.500000, -313.500000)
	registerVal14:setTopBottom(true, false, 553.500000, 562.500000)
	registerVal14:setAlpha(0.600000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_gunsmith_arrow_white"))
	registerVal1:addElement(registerVal14)
	registerVal1.Arrow1 = registerVal14
	local registerVal15 = {}
	registerVal15.down = registerVal11
	registerVal6.navigation = registerVal15
	registerVal15 = {}
	registerVal15.up = registerVal6
	registerVal11.navigation = registerVal15
	registerVal15 = {}
	local registerVal16 = {}
	local function __FUNC_6412_()
		registerVal1:setupElementClipCounter(2.000000)
		registerVal11:completeAnimation()
		registerVal1.classSetOptionsList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.TextBox0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
	end

	registerVal16.DefaultClip = __FUNC_6412_
	registerVal15.DefaultState = registerVal16
	registerVal16 = {}
	local function __FUNC_6571_()
		registerVal1:setupElementClipCounter(2.000000)
		registerVal11:completeAnimation()
		registerVal1.classSetOptionsList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.TextBox0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
	end

	registerVal16.DefaultClip = __FUNC_6571_
	registerVal15.Campaign = registerVal16
	registerVal16 = {}
	local function __FUNC_66D1_()
		registerVal1:setupElementClipCounter(2.000000)
		registerVal11:completeAnimation()
		registerVal1.classSetOptionsList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.TextBox0:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal12, {})
	end

	registerVal16.DefaultClip = __FUNC_66D1_
	registerVal15.ClassSets = registerVal16
	registerVal1.clipsPerState = registerVal15
	local registerVal17 = {}
	local registerVal18 = {}
	registerVal18.stateName = "Campaign"
	local function __FUNC_6831_(arg0, arg1, arg2)
		return IsCampaign()
	end

	registerVal18.condition = __FUNC_6831_
	local registerVal19 = {}
	registerVal19.stateName = "ClassSets"
	local function __FUNC_687C_(arg1, arg2, arg3)
		local registerVal3 = IsClassSetsAvailableForCurrentGameMode()
		if registerVal3 then
			registerVal3 = DoesPlayerHaveExtraSlotsItem(arg0)
		end
		return registerVal3
	end

	registerVal19.condition = __FUNC_687C_
	registerVal17 = {registerVal18, registerVal19}
	registerVal1:mergeStateConditions(registerVal17)
	registerVal18 = Engine.GetGlobalModel()
	registerVal17 = Engine.GetModel(registerVal18, "lobbyRoot.lobbyNav")
	local function __FUNC_691E_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal17, __FUNC_691E_)
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_6A44_(arg1, arg2)
		CallCustomElementFunction_Self(registerVal1, "handleKeyboardComplete", arg1, arg0, arg2)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("ui_keyboard_input", __FUNC_6A44_)
	local function __FUNC_6B15_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		ClearSavedState(registerVal1, arg2)
		return true
	end

	local function __FUNC_6B91_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_6B15_, __FUNC_6B91_, false)
	registerVal6.id = "classOptionsList"
	registerVal8.buttons:setModel(registerVal1.buttonModel, arg0)
	registerVal11.id = "classSetOptionsList"
	registerVal17 = {}
	registerVal17.name = "menu_loaded"
	registerVal17.controller = arg0
	registerVal1:processEvent(registerVal17)
	registerVal17 = {}
	registerVal17.name = "update_state"
	registerVal17.menu = registerVal1
	registerVal1:processEvent(registerVal17)
	registerVal15 = registerVal1:restoreState()
	if not registerVal15 then
		registerVal17 = {}
		registerVal17.name = "gain_focus"
		registerVal17.controller = arg0
		registerVal1.classOptionsList:processEvent(registerVal17)
	end
	local function __FUNC_6C8D_(arg1)
		arg1.classOptionsList:close()
		arg1.fefooterRighSlideIn:close()
		arg1.classSetOptionsList:close()
		arg1.customClassNameTitile:close()
		arg1.TextBox0:close()
		arg1.description1:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "ClassOptions.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_6C8D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.ClassOptions = __FUNC_4266_
