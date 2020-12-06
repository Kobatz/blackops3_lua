-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Store.StoreSpinner")
require("ui.uieditor.widgets.Store.StoreVideoProductButton")
require("ui.uieditor.widgets.Store.StoreFeaturedCenterButton")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Store_FeaturedFrame = registerVal1
function CoD.Store_FeaturedFrame.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Store_FeaturedFrame)
	registerVal2.id = "Store_FeaturedFrame"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 900.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 530.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 2.000000, 897.000000)
	registerVal3:setTopBottom(true, false, 227.920000, 252.920000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setText(Engine.Localize("MENU_FILESHARE_LOADING"))
	registerVal3:setTTF("fonts/escom.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.itemStatus = registerVal3
	local registerVal4 = CoD.StoreSpinner.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 418.000000, 482.000000)
	registerVal4:setTopBottom(true, false, 163.920000, 227.920000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.storeSpinner = registerVal4
	local registerVal5 = CoD.StoreVideoProductButton.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 267.000000)
	registerVal5:setTopBottom(true, false, 380.000000, 530.000000)
	local function __FUNC_17A7_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:subscribeToGlobalModel(arg1, "StoreFeaturedProductList", "button2", __FUNC_17A7_)
	local function __FUNC_17F6_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "purchasestatus"
		CoD.Menu.UpdateButtonShownState(registerVal5, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal5:linkToElementModel(registerVal5, "purchasestatus", true, __FUNC_17F6_)
	local function __FUNC_19B7_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "videoHighResRef"
		CoD.Menu.UpdateButtonShownState(registerVal5, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal5:linkToElementModel(registerVal5, "videoHighResRef", true, __FUNC_19B7_)
	local function __FUNC_1B7B_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		RecordStoreOnItemGainFocus(registerVal2, arg2, arg1, arg0)
		StoreVideoProductFrameWidgetGainFocus(registerVal2, arg2, arg1)
		SetControllerModelValue(arg1, "StoreRoot.isCategoryListInFocus", 0.000000)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		return registerVal3
	end

	registerVal5:registerEventHandler("gain_focus", __FUNC_1B7B_)
	local function __FUNC_1E55_(arg2, arg3)
		if arg2.loseFocus then
			local registerVal3 = arg2.loseFocus(arg2, arg3)
		else
			if arg2.super.loseFocus then
				registerVal3 = arg2.super.loseFocus(arg2, arg3)
			end
		end
		RecordStoreOnItemLoseFocus(registerVal2, arg2, arg1, arg0)
		StoreVideoProductFrameWidgetLoseFocus(registerVal2, arg2, arg1)
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_1E55_)
	local function __FUNC_1FA5_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueEqualToEnum(arg0, arg2, "purchasestatus", Enum.StoreProductPurchaseStatus.STORE_PRODUCT_NOT_PURCHASED)
		if registerVal4 then
			PurchaseProduct(registerVal2, arg0, arg2)
			return true
		else
			registerVal4 = IsSelfModelValueEqualToEnum(arg0, arg2, "purchasestatus", Enum.StoreProductPurchaseStatus.STORE_PRODUCT_PURCHASED)
			if registerVal4 then
				PurchaseProduct(registerVal2, arg0, arg2)
				return true
			end
		end
	end

	local function __FUNC_214A_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueEqualToEnum(arg0, arg2, "purchasestatus", Enum.StoreProductPurchaseStatus.STORE_PRODUCT_NOT_PURCHASED)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_PURCHASE")
			return true
		else
			registerVal3 = IsSelfModelValueEqualToEnum(arg0, arg2, "purchasestatus", Enum.StoreProductPurchaseStatus.STORE_PRODUCT_PURCHASED)
			if registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_STORE_DOWNLOAD")
				return true
			end
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_1FA5_, __FUNC_214A_, false)
	local function __FUNC_23D4_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueNonEmptyString(arg0, arg2, "videoHighResRef")
		registerVal4 = IsElementPropertyValue(arg0, "frameWidgetName", "StoreVideoProductButtonMovieWidget")
		if registerVal4 and registerVal4 then
			OpenStoreFeatureFrameVOD(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_251C_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueNonEmptyString(arg0, arg2, "videoHighResRef")
		registerVal3 = IsElementPropertyValue(arg0, "frameWidgetName", "StoreVideoProductButtonMovieWidget")
		if registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "F", __FUNC_23D4_, __FUNC_251C_, false)
	registerVal2:addElement(registerVal5)
	registerVal2.button2 = registerVal5
	local registerVal6 = CoD.StoreVideoProductButton.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 573.000000, 840.000000)
	registerVal6:setTopBottom(true, false, 380.000000, 530.000000)
	local function __FUNC_26F8_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:subscribeToGlobalModel(arg1, "StoreFeaturedProductList", "button6", __FUNC_26F8_)
	local function __FUNC_274A_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "purchasestatus"
		CoD.Menu.UpdateButtonShownState(registerVal6, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal6:linkToElementModel(registerVal6, "purchasestatus", true, __FUNC_274A_)
	local function __FUNC_290B_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "videoHighResRef"
		CoD.Menu.UpdateButtonShownState(registerVal6, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal6:linkToElementModel(registerVal6, "videoHighResRef", true, __FUNC_290B_)
	local function __FUNC_2ACF_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		RecordStoreOnItemGainFocus(registerVal2, arg2, arg1, arg0)
		StoreVideoProductFrameWidgetGainFocus(registerVal2, arg2, arg1)
		SetControllerModelValue(arg1, "StoreRoot.isCategoryListInFocus", 0.000000)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		return registerVal3
	end

	registerVal6:registerEventHandler("gain_focus", __FUNC_2ACF_)
	local function __FUNC_2DA9_(arg2, arg3)
		if arg2.loseFocus then
			local registerVal3 = arg2.loseFocus(arg2, arg3)
		else
			if arg2.super.loseFocus then
				registerVal3 = arg2.super.loseFocus(arg2, arg3)
			end
		end
		RecordStoreOnItemLoseFocus(registerVal2, arg2, arg1, arg0)
		StoreVideoProductFrameWidgetLoseFocus(registerVal2, arg2, arg1)
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_2DA9_)
	local function __FUNC_2EF9_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueEqualToEnum(arg0, arg2, "purchasestatus", Enum.StoreProductPurchaseStatus.STORE_PRODUCT_NOT_PURCHASED)
		if registerVal4 then
			PurchaseProduct(registerVal2, arg0, arg2)
			return true
		else
			registerVal4 = IsSelfModelValueEqualToEnum(arg0, arg2, "purchasestatus", Enum.StoreProductPurchaseStatus.STORE_PRODUCT_PURCHASED)
			if registerVal4 then
				PurchaseProduct(registerVal2, arg0, arg2)
				return true
			end
		end
	end

	local function __FUNC_309E_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueEqualToEnum(arg0, arg2, "purchasestatus", Enum.StoreProductPurchaseStatus.STORE_PRODUCT_NOT_PURCHASED)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_PURCHASE")
			return true
		else
			registerVal3 = IsSelfModelValueEqualToEnum(arg0, arg2, "purchasestatus", Enum.StoreProductPurchaseStatus.STORE_PRODUCT_PURCHASED)
			if registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_STORE_DOWNLOAD")
				return true
			end
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal6, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_2EF9_, __FUNC_309E_, false)
	local function __FUNC_3328_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueNonEmptyString(arg0, arg2, "videoHighResRef")
		registerVal4 = IsElementPropertyValue(arg0, "frameWidgetName", "StoreVideoProductButtonMovieWidget")
		if registerVal4 and registerVal4 then
			OpenStoreFeatureFrameVOD(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_3470_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueNonEmptyString(arg0, arg2, "videoHighResRef")
		registerVal3 = IsElementPropertyValue(arg0, "frameWidgetName", "StoreVideoProductButtonMovieWidget")
		if registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal6, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "F", __FUNC_3328_, __FUNC_3470_, false)
	registerVal2:addElement(registerVal6)
	registerVal2.button6 = registerVal6
	local registerVal7 = CoD.StoreVideoProductButton.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 282.000000, 549.000000)
	registerVal7:setTopBottom(true, false, 380.000000, 530.000000)
	local function __FUNC_364C_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:subscribeToGlobalModel(arg1, "StoreFeaturedProductList", "button3", __FUNC_364C_)
	local function __FUNC_369E_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "purchasestatus"
		CoD.Menu.UpdateButtonShownState(registerVal7, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal7:linkToElementModel(registerVal7, "purchasestatus", true, __FUNC_369E_)
	local function __FUNC_385F_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "videoHighResRef"
		CoD.Menu.UpdateButtonShownState(registerVal7, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal7:linkToElementModel(registerVal7, "videoHighResRef", true, __FUNC_385F_)
	local function __FUNC_3A23_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		RecordStoreOnItemGainFocus(registerVal2, arg2, arg1, arg0)
		StoreVideoProductFrameWidgetGainFocus(registerVal2, arg2, arg1)
		SetControllerModelValue(arg1, "StoreRoot.isCategoryListInFocus", 0.000000)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		return registerVal3
	end

	registerVal7:registerEventHandler("gain_focus", __FUNC_3A23_)
	local function __FUNC_3CFD_(arg2, arg3)
		if arg2.loseFocus then
			local registerVal3 = arg2.loseFocus(arg2, arg3)
		else
			if arg2.super.loseFocus then
				registerVal3 = arg2.super.loseFocus(arg2, arg3)
			end
		end
		RecordStoreOnItemLoseFocus(registerVal2, arg2, arg1, arg0)
		StoreVideoProductFrameWidgetLoseFocus(registerVal2, arg2, arg1)
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_3CFD_)
	local function __FUNC_3E4D_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueEqualToEnum(arg0, arg2, "purchasestatus", Enum.StoreProductPurchaseStatus.STORE_PRODUCT_NOT_PURCHASED)
		if registerVal4 then
			PurchaseProduct(registerVal2, arg0, arg2)
			return true
		else
			registerVal4 = IsSelfModelValueEqualToEnum(arg0, arg2, "purchasestatus", Enum.StoreProductPurchaseStatus.STORE_PRODUCT_PURCHASED)
			if registerVal4 then
				PurchaseProduct(registerVal2, arg0, arg2)
				return true
			end
		end
	end

	local function __FUNC_3FF2_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueEqualToEnum(arg0, arg2, "purchasestatus", Enum.StoreProductPurchaseStatus.STORE_PRODUCT_NOT_PURCHASED)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_PURCHASE")
			return true
		else
			registerVal3 = IsSelfModelValueEqualToEnum(arg0, arg2, "purchasestatus", Enum.StoreProductPurchaseStatus.STORE_PRODUCT_PURCHASED)
			if registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_STORE_DOWNLOAD")
				return true
			end
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal7, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_3E4D_, __FUNC_3FF2_, false)
	local function __FUNC_427C_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueNonEmptyString(arg0, arg2, "videoHighResRef")
		registerVal4 = IsElementPropertyValue(arg0, "frameWidgetName", "StoreVideoProductButtonMovieWidget")
		if registerVal4 and registerVal4 then
			OpenStoreFeatureFrameVOD(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_43C4_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueNonEmptyString(arg0, arg2, "videoHighResRef")
		registerVal3 = IsElementPropertyValue(arg0, "frameWidgetName", "StoreVideoProductButtonMovieWidget")
		if registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal7, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "F", __FUNC_427C_, __FUNC_43C4_, false)
	registerVal2:addElement(registerVal7)
	registerVal2.button3 = registerVal7
	local registerVal8 = CoD.StoreFeaturedCenterButton.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 0.000000, 550.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 373.000000)
	local function __FUNC_45A0_(arg0)
		registerVal8:setModel(arg0, arg1)
	end

	registerVal8:subscribeToGlobalModel(arg1, "StoreFeaturedProductList", "button1", __FUNC_45A0_)
	local function __FUNC_45F2_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "purchasestatus"
		CoD.Menu.UpdateButtonShownState(registerVal8, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal8:linkToElementModel(registerVal8, "purchasestatus", true, __FUNC_45F2_)
	local function __FUNC_47B3_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "videoHighResRef"
		CoD.Menu.UpdateButtonShownState(registerVal8, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal8:linkToElementModel(registerVal8, "videoHighResRef", true, __FUNC_47B3_)
	local function __FUNC_4977_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		RecordStoreOnItemGainFocus(registerVal2, arg2, arg1, arg0)
		StoreFeatureFrameWidgetGainFocus(registerVal2, arg2, arg1)
		SetControllerModelValue(arg1, "Store.isCategoryListInFocus", 0.000000)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		return registerVal3
	end

	registerVal8:registerEventHandler("gain_focus", __FUNC_4977_)
	local function __FUNC_4C48_(arg2, arg3)
		if arg2.loseFocus then
			local registerVal3 = arg2.loseFocus(arg2, arg3)
		else
			if arg2.super.loseFocus then
				registerVal3 = arg2.super.loseFocus(arg2, arg3)
			end
		end
		RecordStoreOnItemLoseFocus(registerVal2, arg2, arg1, arg0)
		StoreFeatureFrameWidgetLoseFocus(registerVal2, arg2, arg1)
		return registerVal3
	end

	registerVal8:registerEventHandler("lose_focus", __FUNC_4C48_)
	local function __FUNC_4D94_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueEqualToEnum(arg0, arg2, "purchasestatus", Enum.StoreProductPurchaseStatus.STORE_PRODUCT_NOT_PURCHASED)
		if registerVal4 then
			PurchaseProduct(registerVal2, arg0, arg2)
			return true
		else
			registerVal4 = IsSelfModelValueEqualToEnum(arg0, arg2, "purchasestatus", Enum.StoreProductPurchaseStatus.STORE_PRODUCT_PURCHASED)
			if registerVal4 then
				PurchaseProduct(registerVal2, arg0, arg2)
				return true
			end
		end
	end

	local function __FUNC_4F3A_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueEqualToEnum(arg0, arg2, "purchasestatus", Enum.StoreProductPurchaseStatus.STORE_PRODUCT_NOT_PURCHASED)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_PURCHASE")
			return true
		else
			registerVal3 = IsSelfModelValueEqualToEnum(arg0, arg2, "purchasestatus", Enum.StoreProductPurchaseStatus.STORE_PRODUCT_PURCHASED)
			if registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_STORE_DOWNLOAD")
				return true
			end
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal8, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_4D94_, __FUNC_4F3A_, false)
	local function __FUNC_51C4_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueNonEmptyString(arg0, arg2, "videoHighResRef")
		registerVal4 = IsElementPropertyValue(arg0, "frameWidgetName", "StoreFeaturePreviewMovieWidget")
		if registerVal4 and registerVal4 then
			OpenStoreFeatureFrameVOD(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_5308_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueNonEmptyString(arg0, arg2, "videoHighResRef")
		registerVal3 = IsElementPropertyValue(arg0, "frameWidgetName", "StoreFeaturePreviewMovieWidget")
		if registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal8, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "F", __FUNC_51C4_, __FUNC_5308_, false)
	registerVal2:addElement(registerVal8)
	registerVal2.button1 = registerVal8
	local registerVal9 = CoD.StoreVideoProductButton.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 573.000000, 840.000000)
	registerVal9:setTopBottom(true, false, 188.500000, 338.500000)
	local function __FUNC_54E0_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:subscribeToGlobalModel(arg1, "StoreFeaturedProductList", "button5", __FUNC_54E0_)
	local function __FUNC_5532_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "purchasestatus"
		CoD.Menu.UpdateButtonShownState(registerVal9, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal9:linkToElementModel(registerVal9, "purchasestatus", true, __FUNC_5532_)
	local function __FUNC_56F3_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "videoHighResRef"
		CoD.Menu.UpdateButtonShownState(registerVal9, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal9:linkToElementModel(registerVal9, "videoHighResRef", true, __FUNC_56F3_)
	local function __FUNC_58B7_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		RecordStoreOnItemGainFocus(registerVal2, arg2, arg1, arg0)
		StoreVideoProductFrameWidgetGainFocus(registerVal2, arg2, arg1)
		SetControllerModelValue(arg1, "StoreRoot.isCategoryListInFocus", 0.000000)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		return registerVal3
	end

	registerVal9:registerEventHandler("gain_focus", __FUNC_58B7_)
	local function __FUNC_5B91_(arg2, arg3)
		if arg2.loseFocus then
			local registerVal3 = arg2.loseFocus(arg2, arg3)
		else
			if arg2.super.loseFocus then
				registerVal3 = arg2.super.loseFocus(arg2, arg3)
			end
		end
		RecordStoreOnItemLoseFocus(registerVal2, arg2, arg1, arg0)
		StoreVideoProductFrameWidgetLoseFocus(registerVal2, arg2, arg1)
		return registerVal3
	end

	registerVal9:registerEventHandler("lose_focus", __FUNC_5B91_)
	local function __FUNC_5CE1_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueEqualToEnum(arg0, arg2, "purchasestatus", Enum.StoreProductPurchaseStatus.STORE_PRODUCT_NOT_PURCHASED)
		if registerVal4 then
			PurchaseProduct(registerVal2, arg0, arg2)
			return true
		else
			registerVal4 = IsSelfModelValueEqualToEnum(arg0, arg2, "purchasestatus", Enum.StoreProductPurchaseStatus.STORE_PRODUCT_PURCHASED)
			if registerVal4 then
				PurchaseProduct(registerVal2, arg0, arg2)
				return true
			end
		end
	end

	local function __FUNC_5E86_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueEqualToEnum(arg0, arg2, "purchasestatus", Enum.StoreProductPurchaseStatus.STORE_PRODUCT_NOT_PURCHASED)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_PURCHASE")
			return true
		else
			registerVal3 = IsSelfModelValueEqualToEnum(arg0, arg2, "purchasestatus", Enum.StoreProductPurchaseStatus.STORE_PRODUCT_PURCHASED)
			if registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_STORE_DOWNLOAD")
				return true
			end
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal9, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_5CE1_, __FUNC_5E86_, false)
	local function __FUNC_6110_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueNonEmptyString(arg0, arg2, "videoHighResRef")
		registerVal4 = IsElementPropertyValue(arg0, "frameWidgetName", "StoreVideoProductButtonMovieWidget")
		if registerVal4 and registerVal4 then
			OpenStoreFeatureFrameVOD(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_6258_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueNonEmptyString(arg0, arg2, "videoHighResRef")
		registerVal3 = IsElementPropertyValue(arg0, "frameWidgetName", "StoreVideoProductButtonMovieWidget")
		if registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal9, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "F", __FUNC_6110_, __FUNC_6258_, false)
	registerVal2:addElement(registerVal9)
	registerVal2.button5 = registerVal9
	local registerVal10 = CoD.StoreVideoProductButton.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 573.000000, 840.000000)
	registerVal10:setTopBottom(true, false, 0.000000, 150.000000)
	local function __FUNC_6434_(arg0)
		registerVal10:setModel(arg0, arg1)
	end

	registerVal10:subscribeToGlobalModel(arg1, "StoreFeaturedProductList", "button4", __FUNC_6434_)
	local function __FUNC_6486_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "purchasestatus"
		CoD.Menu.UpdateButtonShownState(registerVal10, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal10:linkToElementModel(registerVal10, "purchasestatus", true, __FUNC_6486_)
	local function __FUNC_6647_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "videoHighResRef"
		CoD.Menu.UpdateButtonShownState(registerVal10, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal10:linkToElementModel(registerVal10, "videoHighResRef", true, __FUNC_6647_)
	local function __FUNC_680B_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		RecordStoreOnItemGainFocus(registerVal2, arg2, arg1, arg0)
		StoreVideoProductFrameWidgetGainFocus(registerVal2, arg2, arg1)
		SetControllerModelValue(arg1, "StoreRoot.isCategoryListInFocus", 0.000000)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		return registerVal3
	end

	registerVal10:registerEventHandler("gain_focus", __FUNC_680B_)
	local function __FUNC_6AE5_(arg2, arg3)
		if arg2.loseFocus then
			local registerVal3 = arg2.loseFocus(arg2, arg3)
		else
			if arg2.super.loseFocus then
				registerVal3 = arg2.super.loseFocus(arg2, arg3)
			end
		end
		RecordStoreOnItemLoseFocus(registerVal2, arg2, arg1, arg0)
		StoreVideoProductFrameWidgetLoseFocus(registerVal2, arg2, arg1)
		return registerVal3
	end

	registerVal10:registerEventHandler("lose_focus", __FUNC_6AE5_)
	local function __FUNC_6C35_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueEqualToEnum(arg0, arg2, "purchasestatus", Enum.StoreProductPurchaseStatus.STORE_PRODUCT_NOT_PURCHASED)
		if registerVal4 then
			PurchaseProduct(registerVal2, arg0, arg2)
			return true
		else
			registerVal4 = IsSelfModelValueEqualToEnum(arg0, arg2, "purchasestatus", Enum.StoreProductPurchaseStatus.STORE_PRODUCT_PURCHASED)
			if registerVal4 then
				PurchaseProduct(registerVal2, arg0, arg2)
				return true
			end
		end
	end

	local function __FUNC_6DDA_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueEqualToEnum(arg0, arg2, "purchasestatus", Enum.StoreProductPurchaseStatus.STORE_PRODUCT_NOT_PURCHASED)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_PURCHASE")
			return true
		else
			registerVal3 = IsSelfModelValueEqualToEnum(arg0, arg2, "purchasestatus", Enum.StoreProductPurchaseStatus.STORE_PRODUCT_PURCHASED)
			if registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_STORE_DOWNLOAD")
				return true
			end
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal10, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_6C35_, __FUNC_6DDA_, false)
	local function __FUNC_7064_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueNonEmptyString(arg0, arg2, "videoHighResRef")
		registerVal4 = IsElementPropertyValue(arg0, "frameWidgetName", "StoreVideoProductButtonMovieWidget")
		if registerVal4 and registerVal4 then
			OpenStoreFeatureFrameVOD(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_71AC_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueNonEmptyString(arg0, arg2, "videoHighResRef")
		registerVal3 = IsElementPropertyValue(arg0, "frameWidgetName", "StoreVideoProductButtonMovieWidget")
		if registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal10, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "F", __FUNC_7064_, __FUNC_71AC_, false)
	registerVal2:addElement(registerVal10)
	registerVal2.button4 = registerVal10
	local registerVal11 = {}
	registerVal11.up = registerVal8
	registerVal11.right = registerVal7
	registerVal5.navigation = registerVal11
	registerVal11 = {}
	registerVal11.left = registerVal7
	registerVal11.up = registerVal9
	registerVal6.navigation = registerVal11
	registerVal11 = {}
	registerVal11.left = registerVal5
	registerVal11.up = registerVal8
	registerVal11.right = registerVal6
	registerVal7.navigation = registerVal11
	registerVal11 = {}
	local registerVal12 = {}
	registerVal12 = {registerVal10, registerVal9}
	registerVal11.right = registerVal12
	registerVal12 = {}
	registerVal12 = {registerVal5, registerVal7}
	registerVal11.down = registerVal12
	registerVal8.navigation = registerVal11
	registerVal11 = {}
	registerVal11.left = registerVal8
	registerVal11.up = registerVal10
	registerVal11.down = registerVal6
	registerVal9.navigation = registerVal11
	registerVal11 = {}
	registerVal11.left = registerVal8
	registerVal11.down = registerVal9
	registerVal10.navigation = registerVal11
	registerVal11 = {}
	registerVal12 = {}
	local function __FUNC_7388_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.itemStatus:setAlpha(0.000000)
		registerVal2.itemStatus:setText(Engine.Localize("MENU_FILESHARE_LOADING"))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.storeSpinner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.button2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.button6:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.button3:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.button1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.button5:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.button4:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_7388_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_776A_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.itemStatus:setAlpha(1.000000)
		registerVal2.itemStatus:setText(Engine.Localize("MENU_FILESHARE_LOADING"))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.storeSpinner:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.button2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.button6:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.button3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.button1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.button5:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.button4:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_776A_
	registerVal11.Loading = registerVal12
	registerVal12 = {}
	local function __FUNC_7B4A_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.itemStatus:setAlpha(1.000000)
		registerVal2.itemStatus:setText(Engine.Localize("MENU_STORE_NO_ITEMS"))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.storeSpinner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.button2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.button6:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.button3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.button1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.button5:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.button4:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_7B4A_
	registerVal11.NoItems = registerVal12
	registerVal12 = {}
	local function __FUNC_7F27_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.itemStatus:setAlpha(0.000000)
		registerVal2.itemStatus:setText(Engine.Localize("MENU_FILESHARE_LOADING"))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.storeSpinner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.button2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.button6:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.button3:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.button1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.button5:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.button4:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_7F27_
	registerVal11.Ready = registerVal12
	registerVal2.clipsPerState = registerVal11
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "Loading"
	local function __FUNC_8306_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "StoreRoot.ready", 0.000000)
	end

	registerVal14.condition = __FUNC_8306_
	local registerVal15 = {}
	registerVal15.stateName = "NoItems"
	local function __FUNC_8383_(arg0, arg2, arg3)
		local registerVal3 = IsModelValueEqualTo(arg1, "StoreRoot.ready", 1.000000)
		if registerVal3 then
			registerVal3 = HasStoreItems(arg1)
		end
		return (not registerVal3)
	end

	registerVal15.condition = __FUNC_8383_
	local registerVal16 = {}
	registerVal16.stateName = "Ready"
	local function __FUNC_842E_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "StoreRoot.ready", 1.000000)
	end

	registerVal16.condition = __FUNC_842E_
	registerVal13 = {registerVal14, registerVal15, registerVal16}
	registerVal2:mergeStateConditions(registerVal13)
	registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModel(registerVal14, "StoreRoot.ready")
	local function __FUNC_84AB_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "StoreRoot.ready"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal13, __FUNC_84AB_)
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	local function __FUNC_85CD_(arg0)
		local registerVal2 = IsModelValueEqualTo(arg1, "StoreRoot.ready", 1.000000)
		if registerVal2 then
			MakeFocusable(registerVal2)
			UpdateGlobalDataSource(arg1, "StoreFeaturedProductList")
		else
			registerVal2 = IsModelValueEqualTo(arg1, "StoreRoot.ready", 0.000000)
			if registerVal2 then
				MakeNotFocusable(registerVal2)
			end
		end
	end

	registerVal2:subscribeToGlobalModel(arg1, "PerController", "StoreRoot.ready", __FUNC_85CD_)
	registerVal5.id = "button2"
	registerVal6.id = "button6"
	registerVal7.id = "button3"
	registerVal8.id = "button1"
	registerVal9.id = "button5"
	registerVal10.id = "button4"
	local function __FUNC_8713_(arg0, arg1)
		local registerVal2 = arg0.button1:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_8713_)
	local function __FUNC_8813_(arg0)
		arg0.storeSpinner:close()
		arg0.button2:close()
		arg0.button6:close()
		arg0.button3:close()
		arg0.button1:close()
		arg0.button5:close()
		arg0.button4:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_8813_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

