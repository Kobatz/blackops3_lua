-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Store.StoreProductButton")
require("ui.uieditor.widgets.Store.StoreRightPane")
require("ui.uieditor.widgets.Store.StoreSpinner")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
local function __FUNC_2D8_(arg0, arg1)
	local function __FUNC_36B_(arg0, arg1)
		if arg0.playMovieDelayTimer then
			arg0.playMovieDelayTimer:close()
			arg0.playMovieDelayTimer = nil
		end
	end

	arg0.onLoseFocus = __FUNC_36B_
	local function __FUNC_3ED_(arg0, arg1, arg2)
		local registerVal3 = arg1:getModel()
		local registerVal4 = CoD.SafeGetModelValue(registerVal3, "videoLowResRef")
		if arg0.playMovieDelayTimer then
			arg0.playMovieDelayTimer:close()
			arg0.playMovieDelayTimer = nil
		end
		if arg0.rightPane and arg0.rightPane.frameWidget and not arg0.rightPane.frameWidget.framedWidget then
			arg0.rightPane.frameWidget:changeFrameWidget("CoD.StorePreviewImageWidget")
			arg1.rightPaneFrameWidget = "StorePreviewImageWidget"
		end
		if arg0.rightPane and arg0.rightPane.frameWidget and arg0.rightPane.frameWidget.framedWidget and registerVal4 ~= nil and registerVal4 ~= "" then
			local function __FUNC_7DD_(arg0, arg2)
				arg0.rightPane.frameWidget:changeFrameWidget("CoD.StorePreviewMovieWidget")
				arg1.rightPaneFrameWidget = "StorePreviewMovieWidget"
				if arg0.rightPane.frameWidget.framedWidget.storeMovie then
					arg0.rightPane.frameWidget.framedWidget.storeMovie:setupMoviePlayback(registerVal4, false, true)
				end
			end

			arg0:registerEventHandler("play_movie_delay", __FUNC_7DD_)
			local registerVal7 = {}
			registerVal7.name = "play_movie_delay"
			registerVal7.controller = arg2
			local registerVal5 = LUI.UITimer.new(2000.000000, registerVal7, true)
			arg0.playMovieDelayTimer = registerVal5
			arg0:addElement(arg0.playMovieDelayTimer)
			local function __FUNC_99D_(arg0, arg1)
				arg0.rightPane.frameWidget.framedWidget.storeMovie:setupMoviePlayback("")
				local function __FUNC_B08_()
					arg0.rightPane.frameWidget.framedWidget.storeMovie:setupMoviePlayback(registerVal4, false, true)
				end

				arg0:addElement(LUI.UITimer.newElementTimer(1.000000, true, __FUNC_B08_))
			end

			arg0:registerEventHandler("finished_movie_playback", __FUNC_99D_)
		end
	end

	arg0.onListItemGainFocus = __FUNC_3ED_
	local function __FUNC_BEA_(arg0, arg1, arg2)
		if arg0.rightPane and arg0.rightPane.frameWidget then
			if arg0.rightPane.frameWidget.framedWidget and arg0.rightPane.frameWidget.framedWidget.storeMovie then
				arg0.rightPane.frameWidget.framedWidget.storeMovie:setupMoviePlayback("")
			end
			arg0.rightPane.frameWidget:changeFrameWidget("CoD.StorePreviewImageWidget")
			arg1.rightPaneFrameWidget = "StorePreviewImageWidget"
		end
	end

	arg0.onListItemLoseFocus = __FUNC_BEA_
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.Store_NonFeaturedFrame = registerVal2
local function __FUNC_E07_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_2D8_ then
		__FUNC_2D8_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Store_NonFeaturedFrame)
	registerVal2.id = "Store_NonFeaturedFrame"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 900.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 530.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIList.new(arg0, arg1, 10.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 2.000000, 502.000000)
	registerVal3:setTopBottom(true, false, 2.000000, 433.000000)
	registerVal3:setWidgetType(CoD.StoreProductButton)
	registerVal3:setHorizontalCount(2.000000)
	registerVal3:setVerticalCount(3.000000)
	registerVal3:setSpacing(10.000000)
	registerVal3:setDataSource("StoreProductList")
	local function __FUNC_1CD7_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "purchasestatus"
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal3:linkToElementModel(registerVal3, "purchasestatus", true, __FUNC_1CD7_)
	local function __FUNC_1E97_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "videoHighResRef"
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal3:linkToElementModel(registerVal3, "videoHighResRef", true, __FUNC_1E97_)
	local function __FUNC_205B_(arg2, arg3)
		RecordStoreOnItemGainFocus(registerVal2, arg2, arg1, arg0)
		CallCustomElementFunction_Self(registerVal2, "onListItemGainFocus", arg2, arg1)
		SetControllerModelValue(arg1, "StoreRoot.isCategoryListInFocus", 0.000000)
		return nil
	end

	registerVal3:registerEventHandler("list_item_gain_focus", __FUNC_205B_)
	local function __FUNC_2188_(arg2, arg3)
		RecordStoreOnItemLoseFocus(registerVal2, arg2, arg1, arg0)
		CallCustomElementFunction_Self(registerVal2, "onListItemLoseFocus", arg2, arg1)
		return nil
	end

	registerVal3:registerEventHandler("list_item_lose_focus", __FUNC_2188_)
	local function __FUNC_2255_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		SetControllerModelValue(arg1, "StoreRoot.isNonFeatureProductListInFocus", 1.000000)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		return registerVal3
	end

	registerVal3:registerEventHandler("gain_focus", __FUNC_2255_)
	local function __FUNC_24BB_(arg0, arg2)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg2)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg2)
			end
		end
		SetControllerModelValue(arg1, "StoreRoot.isNonFeatureProductListInFocus", 0.000000)
		CallCustomElementFunction_Self(registerVal2, "onLoseFocus", arg1)
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_24BB_)
	local function __FUNC_2647_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueEqualToEnum(arg0, arg2, "purchasestatus", Enum.StoreProductPurchaseStatus.STORE_PRODUCT_NOT_PURCHASED)
		registerVal4 = IsPerControllerTablePropertyValue(arg2, "selectedStoreCategory", "EXTRASLOTS")
		registerVal4 = IsPerControllerTablePropertyValue(arg2, "selectedStoreCategory", "ESPORTS")
		registerVal4 = IsPerControllerTablePropertyValue(arg2, "selectedStoreCategory", "EXTRAPACKS")
		registerVal4 = IsPerControllerTablePropertyValue(arg2, "selectedStoreCategory", "OUTFITS")
		if registerVal4 and not registerVal4 and not registerVal4 and not registerVal4 and not registerVal4 then
			PurchaseProduct(registerVal2, arg0, arg2)
			PlaySoundSetSound(registerVal2, "action")
			return true
		else
			registerVal4 = IsSelfModelValueEqualToEnum(arg0, arg2, "purchasestatus", Enum.StoreProductPurchaseStatus.STORE_PRODUCT_PURCHASED)
			registerVal4 = IsPerControllerTablePropertyValue(arg2, "selectedStoreCategory", "EXTRASLOTS")
			registerVal4 = IsPerControllerTablePropertyValue(arg2, "selectedStoreCategory", "ESPORTS")
			registerVal4 = IsPerControllerTablePropertyValue(arg2, "selectedStoreCategory", "EXTRAPACKS")
			registerVal4 = IsPerControllerTablePropertyValue(arg2, "selectedStoreCategory", "OUTFITS")
			if registerVal4 and not registerVal4 and not registerVal4 and not registerVal4 and not registerVal4 then
				PurchaseProduct(registerVal2, arg0, arg2)
				return true
			else
				registerVal4 = IsPerControllerTablePropertyValue(arg2, "selectedStoreCategory", "EXTRASLOTS")
				registerVal4 = DoesPlayerHaveExtraSlotsItem(arg2)
				if registerVal4 and not registerVal4 then
					OpenBuyExtraSlotsPackDialog(registerVal2, arg0, arg2)
					return true
				else
					registerVal4 = IsPerControllerTablePropertyValue(arg2, "selectedStoreCategory", "ESPORTS")
					registerVal4 = DoesPlayerHaveEsportsPackItem(arg0, arg2)
					if registerVal4 and not registerVal4 then
						OpenBuyInventoryItemDialog(registerVal2, arg0, arg2, "Store")
						return true
					else
						registerVal4 = IsPerControllerTablePropertyValue(arg2, "selectedStoreCategory", "EXTRAPACKS")
						registerVal4 = DoesPlayerHaveEsportsPackItem(arg0, arg2)
						if registerVal4 and not registerVal4 then
							OpenBuyInventoryItemDialog(registerVal2, arg0, arg2, "Store")
							return true
						else
							registerVal4 = IsPerControllerTablePropertyValue(arg2, "selectedStoreCategory", "OUTFITS")
							registerVal4 = DoesPlayerHaveOutfitItem(arg0, arg2)
							if registerVal4 and not registerVal4 then
								OpenBuyInventoryItemDialog(registerVal2, arg0, arg2, "Store")
								return true
							end
						end
					end
				end
			end
		end
	end

	local function __FUNC_2BB8_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueEqualToEnum(arg0, arg2, "purchasestatus", Enum.StoreProductPurchaseStatus.STORE_PRODUCT_NOT_PURCHASED)
		registerVal3 = IsPerControllerTablePropertyValue(arg2, "selectedStoreCategory", "EXTRASLOTS")
		registerVal3 = IsPerControllerTablePropertyValue(arg2, "selectedStoreCategory", "ESPORTS")
		registerVal3 = IsPerControllerTablePropertyValue(arg2, "selectedStoreCategory", "EXTRAPACKS")
		registerVal3 = IsPerControllerTablePropertyValue(arg2, "selectedStoreCategory", "OUTFITS")
		if registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_PURCHASE")
			return true
		else
			registerVal3 = IsSelfModelValueEqualToEnum(arg0, arg2, "purchasestatus", Enum.StoreProductPurchaseStatus.STORE_PRODUCT_PURCHASED)
			registerVal3 = IsPerControllerTablePropertyValue(arg2, "selectedStoreCategory", "EXTRASLOTS")
			registerVal3 = IsPerControllerTablePropertyValue(arg2, "selectedStoreCategory", "ESPORTS")
			registerVal3 = IsPerControllerTablePropertyValue(arg2, "selectedStoreCategory", "EXTRAPACKS")
			registerVal3 = IsPerControllerTablePropertyValue(arg2, "selectedStoreCategory", "OUTFITS")
			if registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_STORE_DOWNLOAD")
				return true
			else
				registerVal3 = IsPerControllerTablePropertyValue(arg2, "selectedStoreCategory", "EXTRASLOTS")
				registerVal3 = DoesPlayerHaveExtraSlotsItem(arg2)
				if registerVal3 and not registerVal3 then
					CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_PURCHASE")
					return true
				else
					registerVal3 = IsPerControllerTablePropertyValue(arg2, "selectedStoreCategory", "ESPORTS")
					registerVal3 = DoesPlayerHaveEsportsPackItem(arg0, arg2)
					if registerVal3 and not registerVal3 then
						CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_PURCHASE")
						return true
					else
						registerVal3 = IsPerControllerTablePropertyValue(arg2, "selectedStoreCategory", "EXTRAPACKS")
						registerVal3 = DoesPlayerHaveEsportsPackItem(arg0, arg2)
						if registerVal3 and not registerVal3 then
							CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_PURCHASE")
							return true
						else
							registerVal3 = IsPerControllerTablePropertyValue(arg2, "selectedStoreCategory", "OUTFITS")
							registerVal3 = DoesPlayerHaveOutfitItem(arg0, arg2)
							if registerVal3 and not registerVal3 then
								CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "")
								return false
							end
						end
					end
				end
			end
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_2647_, __FUNC_2BB8_, false)
	local function __FUNC_323D_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueNonEmptyString(arg0, arg2, "videoHighResRef")
		registerVal4 = IsElementPropertyValue(arg0, "rightPaneFrameWidget", "StorePreviewMovieWidget")
		if registerVal4 and registerVal4 then
			OpenStoreNonFeatureFrameVOD(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_3381_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueNonEmptyString(arg0, arg2, "videoHighResRef")
		registerVal3 = IsElementPropertyValue(arg0, "rightPaneFrameWidget", "StorePreviewMovieWidget")
		if registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "F", __FUNC_323D_, __FUNC_3381_, false)
	local function __FUNC_3556_(arg0)
		UpdateDataSource(registerVal2, registerVal3, arg1)
		SetFocusToCorrectDLCPack(registerVal2, arg1)
		SetFocusToSpecialistOutfit(registerVal2, arg1)
	end

	registerVal3:subscribeToGlobalModel(arg1, "PerController", "StoreRoot.ready", __FUNC_3556_)
	registerVal2:addElement(registerVal3)
	registerVal2.productList = registerVal3
	local registerVal4 = CoD.StoreRightPane.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 509.000000, 897.000000)
	registerVal4:setTopBottom(true, false, 2.000000, 528.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.rightPane = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 2.000000, 897.000000)
	registerVal5:setTopBottom(true, false, 227.920000, 252.920000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setText(Engine.Localize("MENU_FILESHARE_LOADING"))
	registerVal5:setTTF("fonts/escom.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.itemStatus = registerVal5
	local registerVal6 = CoD.StoreSpinner.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 418.000000, 482.000000)
	registerVal6:setTopBottom(true, false, 163.920000, 227.920000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.storeSpinner = registerVal6
	local registerVal7 = CoD.verticalCounter.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 152.000000, 352.000000)
	registerVal7:setTopBottom(true, false, 455.500000, 480.500000)
	local function __FUNC_3618_(arg0, arg1)
		SetAsListVerticalCounter(registerVal2, arg0, "productList")
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("menu_loaded", __FUNC_3618_)
	registerVal2:addElement(registerVal7)
	registerVal2.verticalCounter = registerVal7
	local function __FUNC_36D0_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal3, nil, false, __FUNC_36D0_)
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_3722_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.productList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.rightPane:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.itemStatus:setAlpha(0.000000)
		registerVal2.itemStatus:setText(Engine.Localize("MENU_FILESHARE_LOADING"))
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.storeSpinner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.DefaultClip = __FUNC_3722_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_39B4_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.productList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.rightPane:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.itemStatus:setAlpha(1.000000)
		registerVal2.itemStatus:setText(Engine.Localize("MENU_FILESHARE_LOADING"))
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.storeSpinner:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.DefaultClip = __FUNC_39B4_
	registerVal8.Loading = registerVal9
	registerVal9 = {}
	local function __FUNC_3C48_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.productList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.rightPane:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.itemStatus:setAlpha(1.000000)
		registerVal2.itemStatus:setText(Engine.Localize("MENU_STORE_NO_ITEMS"))
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.storeSpinner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.DefaultClip = __FUNC_3C48_
	registerVal8.NoItems = registerVal9
	registerVal9 = {}
	local function __FUNC_3ED9_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.productList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.rightPane:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.itemStatus:setAlpha(0.000000)
		registerVal2.itemStatus:setText(Engine.Localize("MENU_FILESHARE_LOADING"))
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.storeSpinner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.DefaultClip = __FUNC_3ED9_
	registerVal8.Ready = registerVal9
	registerVal9 = {}
	local function __FUNC_416C_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.productList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.rightPane:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.itemStatus:setAlpha(0.000000)
		registerVal2.itemStatus:setText(Engine.Localize("MENU_FILESHARE_LOADING"))
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.storeSpinner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.DefaultClip = __FUNC_416C_
	registerVal8.ShowDetails = registerVal9
	registerVal2.clipsPerState = registerVal8
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Loading"
	local function __FUNC_4400_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "StoreRoot.ready", 0.000000)
	end

	registerVal11.condition = __FUNC_4400_
	local registerVal12 = {}
	registerVal12.stateName = "NoItems"
	local function __FUNC_447F_(arg0, arg2, arg3)
		local registerVal3 = IsModelValueEqualTo(arg1, "StoreRoot.ready", 1.000000)
		if registerVal3 then
			registerVal3 = HasStoreItems(arg1)
		end
		return (not registerVal3)
	end

	registerVal12.condition = __FUNC_447F_
	local registerVal13 = {}
	registerVal13.stateName = "Ready"
	local function __FUNC_452A_(arg0, arg2, arg3)
		local registerVal3 = IsModelValueEqualTo(arg1, "StoreRoot.ready", 1.000000)
		if registerVal3 then
			registerVal3 = IsModelValueEqualTo(arg1, "StoreRoot.isCategoryListInFocus", 1.000000)
		end
		return registerVal3
	end

	registerVal13.condition = __FUNC_452A_
	local registerVal14 = {}
	registerVal14.stateName = "ShowDetails"
	local function __FUNC_45EC_(arg0, arg2, arg3)
		local registerVal3 = IsModelValueEqualTo(arg1, "StoreRoot.ready", 1.000000)
		if registerVal3 then
			registerVal3 = IsModelValueEqualTo(arg1, "StoreRoot.isCategoryListInFocus", 0.000000)
		end
		return registerVal3
	end

	registerVal14.condition = __FUNC_45EC_
	registerVal10 = {registerVal11, registerVal12, registerVal13, registerVal14}
	registerVal2:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "StoreRoot.ready")
	local function __FUNC_46B5_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "StoreRoot.ready"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_46B5_)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "StoreRoot.isCategoryListInFocus")
	local function __FUNC_47D9_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "StoreRoot.isCategoryListInFocus"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_47D9_)
	local function __FUNC_490D_(arg0)
		local registerVal2 = IsModelValueEqualTo(arg1, "StoreRoot.ready", 1.000000)
		registerVal2 = HasStoreItems(arg1)
		if registerVal2 and registerVal2 then
			MakeFocusable(registerVal2)
		else
			registerVal2 = IsModelValueEqualTo(arg1, "StoreRoot.ready", 0.000000)
			if registerVal2 then
				MakeNotFocusable(registerVal2)
			else
				registerVal2 = IsModelValueEqualTo(arg1, "StoreRoot.ready", 1.000000)
				registerVal2 = HasStoreItems(arg1)
				if registerVal2 and not registerVal2 then
					MakeNotFocusable(registerVal2)
				end
			end
		end
	end

	registerVal2:subscribeToGlobalModel(arg1, "PerController", "StoreRoot.ready", __FUNC_490D_)
	registerVal3.id = "productList"
	local function __FUNC_4A6C_(arg0, arg1)
		local registerVal2 = arg0.productList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_4A6C_)
	local function __FUNC_4B73_(arg0)
		arg0.productList:close()
		arg0.rightPane:close()
		arg0.storeSpinner:close()
		arg0.verticalCounter:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_4B73_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.Store_NonFeaturedFrame.new = __FUNC_E07_
