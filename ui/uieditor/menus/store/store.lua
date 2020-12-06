-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.playercard.SelfIdentityBadge")
require("ui.uieditor.widgets.StartMenu.StartMenu_CurrencyCounts")
require("ui.uieditor.widgets.Store.StoreCategoryButton")
local function __FUNC_2A1_(arg0, arg1)
	arg0.originalOcclusionChange = arg0.m_eventHandlers.occlusion_change
	local function __FUNC_36E_(arg0, arg2)
		if not arg2.occluded and arg2.occludedBy then
			if arg2.occludedBy.id == "Menu.PurchaseExtraSlotsConfirmation" then
				CoD.perController[arg1].previouslySelectedStoreCategory = "EXTRAPACKS"
				ForceNotifyControllerModel(arg1, "StoreRoot.ready")
				Engine.HidePsStoreIcon()
			else
				if arg2.occludedBy.id == "Menu.PurchaseInventoryItemConfirmation" then
					CoD.perController[arg1].previouslySelectedStoreCategory = "EXTRAPACKS"
					ForceNotifyControllerModel(arg1, "StoreRoot.ready")
					Engine.HidePsStoreIcon()
				else
					if arg2.occludedBy.id == "Menu.PurchaseOutfitItemConfirmation" then
						CoD.perController[arg1].previouslySelectedStoreCategory = "OUTFITS"
						ForceNotifyControllerModel(arg1, "StoreRoot.ready")
						Engine.HidePsStoreIcon()
					else
						if arg2.occludedBy.id == "Menu.Store_CodPoints" then
							CoD.perController[arg1].selectedStoreCategory = CoD.perController[arg1].previouslySelectedStoreCategory
							ForceNotifyControllerModel(arg1, "StoreRoot.ready")
							Engine.HidePsStoreIcon()
						end
					end
				end
			end
		end
		arg0.originalOcclusionChange(arg0, arg2)
	end

	arg0:registerEventHandler("occlusion_change", __FUNC_36E_)
end

local function __FUNC_7A2_(arg0, arg1)
	local registerVal2 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.CreateModel(registerVal2, "StoreRoot")
	Engine.CreateModel(registerVal3, "ready")
	Engine.CreateModel(registerVal3, "storeSource")
	Engine.CreateModel(registerVal3, "storeLocation")
	local registerVal4 = Engine.CreateModel(registerVal3, "isCategoryListInFocus")
	Engine.SetModelValue(registerVal4, 1.000000)
	local registerVal6 = Engine.CreateModel(registerVal3, "isNonFeatureProductListInFocus")
	Engine.SetModelValue(registerVal6, 1.000000)
	local function __FUNC_A00_(arg0)
		local registerVal3 = {}
		registerVal3.category = CoD.perController[arg1].forceFocusCategory
		local registerVal1 = arg0.storeCategoryList:findItem(registerVal3, nil, false)
		if CoD.perController[arg1].forceFocusCategory ~= nil and registerVal1 then
			local registerVal4 = {}
			registerVal4.name = "gain_focus"
			registerVal4.controller = arg1
			registerVal4.selectIndex = registerVal1.gridInfoTable.zeroBasedIndex
			arg0.storeCategoryList:processEvent(registerVal4)
			return true
		end
		return false
	end

	arg0.restoreState = __FUNC_A00_
	arg0.disablePopupOpenCloseAnim = true
end

local function __FUNC_C18_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Store")
	if __FUNC_7A2_ then
		__FUNC_7A2_(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Store.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -638.000000, 642.000000)
	registerVal3:setTopBottom(false, false, -360.000000, 360.000000)
	registerVal3:setScale(1.000000)
	registerVal3:setImage(RegisterImage("uie_t7_mp_menu_cac_version6_backdrop720p"))
	registerVal1:addElement(registerVal3)
	registerVal1.Background = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.750000)
	registerVal1:addElement(registerVal4)
	registerVal1.editorBackground = registerVal4
	local registerVal5 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5.titleLabel:setText(Engine.Localize("MENU_STORE_CAPS"))
	registerVal5.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_STORE_CAPS"))
	registerVal1:addElement(registerVal5)
	registerVal1.frame = registerVal5
	local registerVal6 = CoD.SelfIdentityBadge.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 871.000000, 1216.000000)
	registerVal6:setTopBottom(true, false, 23.000000, 83.000000)
	local function __FUNC_1C8D_(arg1)
		registerVal6:setModel(arg1, arg0)
	end

	registerVal6:subscribeToGlobalModel(arg0, "PerController", "identityBadge", __FUNC_1C8D_)
	local function __FUNC_1CDE_(arg1)
		registerVal6.CallingCard.CallingCardsFrameWidget:setModel(arg1, arg0)
	end

	registerVal6:subscribeToGlobalModel(arg0, "PerController", nil, __FUNC_1CDE_)
	registerVal1:addElement(registerVal6)
	registerVal1.SelfIdentityBadge = registerVal6
	local registerVal7 = CoD.StartMenu_CurrencyCounts.new(registerVal1, arg0)
	registerVal7:setLeftRight(false, true, -612.000000, -408.000000)
	registerVal7:setTopBottom(true, false, 25.000000, 55.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.StartMenuCurrencyCounts = registerVal7
	local registerVal8 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal8:makeFocusable()
	registerVal8:setLeftRight(true, false, 66.000000, 296.000000)
	registerVal8:setTopBottom(true, false, 106.560000, 640.560000)
	registerVal8:setWidgetType(CoD.StoreCategoryButton)
	registerVal8:setVerticalCount(8.000000)
	registerVal8:setDataSource("StoreCategoryList")
	local function __FUNC_1D7C_(arg1, arg2)
		SetLoseFocusToElement(registerVal1, "productFrame", arg0)
		SetSelectedStoreCategory(registerVal1, arg1, arg0)
		ForceNotifyControllerModel(arg0, "StoreRoot.ready")
		return nil
	end

	registerVal8:registerEventHandler("list_item_gain_focus", __FUNC_1D7C_)
	local function __FUNC_1E7C_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		SetControllerModelValue(arg0, "StoreRoot.isCategoryListInFocus", 1.000000)
		return registerVal3
	end

	registerVal8:registerEventHandler("gain_focus", __FUNC_1E7C_)
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "NoListFocus"
	local function __FUNC_1FB1_(arg0, arg1, arg2)
		local registerVal3 = IsParentListInFocus(arg1)
		return (not registerVal3)
	end

	registerVal12.condition = __FUNC_1FB1_
	registerVal11 = {registerVal12}
	registerVal8:mergeStateConditions(registerVal11)
	registerVal1:addElement(registerVal8)
	registerVal1.storeCategoryList = registerVal8
	local registerVal9 = LUI.UIFrame.new(registerVal1, arg0, 0.000000, 0.000000, false)
	registerVal9:setLeftRight(true, false, 316.000000, 1216.000000)
	registerVal9:setTopBottom(true, false, 106.560000, 636.560000)
	registerVal1:addElement(registerVal9)
	registerVal1.productFrame = registerVal9
	local function __FUNC_200D_(arg1)
		registerVal9:setModel(arg1, arg0)
	end

	registerVal9:linkToElementModel(registerVal8, nil, false, __FUNC_200D_)
	local function __FUNC_205E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:changeFrameWidget(registerVal1)
		end
	end

	registerVal9:linkToElementModel(registerVal8, "frameWidget", true, __FUNC_205E_)
	local registerVal10 = {}
	registerVal10.right = registerVal9
	registerVal8.navigation = registerVal10
	registerVal10 = {}
	registerVal10.left = registerVal8
	registerVal9.navigation = registerVal10
	local registerVal13 = Engine.GetModelForController(arg0)
	registerVal12 = Engine.GetModel(registerVal13, "StoreRoot.isCategoryListInFocus")
	local function __FUNC_20FA_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "StoreRoot.isCategoryListInFocus"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED)
	end

	registerVal1:subscribeToModel(registerVal12, __FUNC_20FA_)
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_22CF_(arg1, arg2)
		ShowPsStoreIcon(arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_22CF_)
	local function __FUNC_235E_(arg0, arg1, arg2, arg3)
		RecordStoreLastFocusedItemViewed(registerVal1, arg0, arg2, arg1)
		GoBack(registerVal1, arg2)
		ClearMenuSavedState(arg1)
		return true
	end

	local function __FUNC_241B_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MP_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_235E_, __FUNC_241B_, false)
	local function __FUNC_2513_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsPC()
		if not registerVal4 then
			RedeemCode(registerVal1, arg0, arg2)
			return true
		end
	end

	local function __FUNC_258A_(arg0, arg1, arg2)
		local registerVal3 = IsPC()
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_STORE_REDEEM_CODE")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, nil, __FUNC_2513_, __FUNC_258A_, false)
	local function __FUNC_26B8_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsModelValueEqualTo(arg2, "StoreRoot.isCategoryListInFocus", 0.000000)
		registerVal4 = IsPerControllerTablePropertyValue(arg2, "selectedStoreCategory", "FEATURED")
		if registerVal4 and not registerVal4 then
			return true
		end
	end

	local function __FUNC_27CB_(arg0, arg1, arg2)
		local registerVal3 = IsModelValueEqualTo(arg2, "StoreRoot.isCategoryListInFocus", 0.000000)
		registerVal3 = IsPerControllerTablePropertyValue(arg2, "selectedStoreCategory", "FEATURED")
		if registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "MENU_LB_SCROLL_UP_SCROLL_DOWN")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, nil, __FUNC_26B8_, __FUNC_27CB_, false)
	local function __FUNC_29C2_(arg1)
		HidePsStoreIcon(arg0)
		SetControllerModelValue(arg0, "StoreRoot.isCategoryListInFocus", 0.000000)
		SetGlobalModelValueArg("UpdateOnStoreClose", 1.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal1, "close", __FUNC_29C2_)
	registerVal5:setModel(registerVal1.buttonModel, arg0)
	registerVal8.id = "storeCategoryList"
	registerVal9.id = "productFrame"
	registerVal12 = {}
	registerVal12.name = "menu_loaded"
	registerVal12.controller = arg0
	registerVal1:processEvent(registerVal12)
	registerVal12 = {}
	registerVal12.name = "update_state"
	registerVal12.menu = registerVal1
	registerVal1:processEvent(registerVal12)
	registerVal10 = registerVal1:restoreState()
	if not registerVal10 then
		registerVal12 = {}
		registerVal12.name = "gain_focus"
		registerVal12.controller = arg0
		registerVal1.storeCategoryList:processEvent(registerVal12)
	end
	local function __FUNC_2AC5_(arg1)
		arg1.frame:close()
		arg1.SelfIdentityBadge:close()
		arg1.StartMenuCurrencyCounts:close()
		arg1.storeCategoryList:close()
		arg1.productFrame:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Store.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_2AC5_)
	if __FUNC_2A1_ then
		__FUNC_2A1_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.Store = __FUNC_C18_
