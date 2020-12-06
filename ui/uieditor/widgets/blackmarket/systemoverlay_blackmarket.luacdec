-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.SystemOverlays.systemOverlay_Layout_ForegroundMultilineText")
require("ui.uieditor.widgets.CAC.Customization.CACGenericButton")
require("ui.uieditor.widgets.SystemOverlays.systemOverlay_supportWidget")
require("ui.uieditor.widgets.BlackMarket.CryptokeyTypeName")
require("ui.uieditor.widgets.BlackMarket.NextKeyProgress")
require("ui.uieditor.widgets.BlackMarket.BribeDuplicatesPopupInfo")
require("ui.uieditor.widgets.BlackMarket.BlackMarketCODPointContainerSmall")
require("ui.uieditor.widgets.BlackMarket.BlackMarketCryptokeyContainerSmall")
require("ui.uieditor.widgets.BlackMarket.BM_BurningDuplicatesAnimation")
require("ui.uieditor.widgets.BubbleGumBuffs.BGB_PurchasingVials")
require("ui.uieditor.widgets.BlackMarket.BM_BundleOffertime")
require("ui.uieditor.widgets.BlackMarket.BM_Bundle_Count")
require("ui.uieditor.widgets.BlackMarket.BM_BurnProgressIndicator")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SystemOverlay_BlackMarket = registerVal1
function CoD.SystemOverlay_BlackMarket.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SystemOverlay_BlackMarket)
	registerVal2.id = "SystemOverlay_BlackMarket"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 320.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, -5.000000, 331.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_backgroundbg"))
	registerVal2:addElement(registerVal3)
	registerVal2.bg = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 1053.200000, 1280.000000)
	registerVal4:setTopBottom(true, false, -4.000000, 320.000000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_popup_icon"))
	registerVal2:addElement(registerVal4)
	registerVal2.BIGicon = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 44.000000, 308.000000)
	registerVal5:setTopBottom(true, false, -9.000000, 255.000000)
	local function __FUNC_2CBB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "image", true, __FUNC_2CBB_)
	registerVal2:addElement(registerVal5)
	registerVal2.largeImage = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 384.000000, 414.000000)
	registerVal6:setTopBottom(true, false, 11.000000, 41.000000)
	local function __FUNC_2D6C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setImage(RegisterImage(GetCategoryIconForOverlayType(registerVal1)))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "categoryType", true, __FUNC_2D6C_)
	registerVal2:addElement(registerVal6)
	registerVal2.categoryTypeImage = registerVal6
	local registerVal7 = LUI.UITightText.new()
	registerVal7:setLeftRight(true, false, 421.000000, 509.000000)
	registerVal7:setTopBottom(true, false, 11.000000, 41.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setText(Engine.Localize("MPUI_BM_BURNING_TITLE"))
	registerVal7:setTTF("fonts/escom.ttf")
	registerVal2:addElement(registerVal7)
	registerVal2.titleForBurning = registerVal7
	local registerVal8 = LUI.UITightText.new()
	registerVal8:setLeftRight(true, false, 421.000000, 621.000000)
	registerVal8:setTopBottom(true, false, 11.000000, 41.000000)
	registerVal8:setTTF("fonts/escom.ttf")
	local function __FUNC_2E4F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "title", true, __FUNC_2E4F_)
	registerVal2:addElement(registerVal8)
	registerVal2.title = registerVal8
	local registerVal9 = CoD.systemOverlay_Layout_ForegroundMultilineText.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 422.000000, 1217.000000)
	registerVal9:setTopBottom(true, false, 37.000000, 57.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9.text:setText(Engine.Localize("MPUI_BM_BURNING_DESCRIPTION"))
	registerVal2:addElement(registerVal9)
	registerVal2.textForBurning = registerVal9
	local registerVal10 = CoD.systemOverlay_Layout_ForegroundMultilineText.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 422.000000, 1127.000000)
	registerVal10:setTopBottom(true, false, 45.000000, 65.000000)
	registerVal10:setAlpha(0.850000)
	local function __FUNC_2F06_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.text:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "description", true, __FUNC_2F06_)
	registerVal2:addElement(registerVal10)
	registerVal2.text = registerVal10
	local registerVal11 = LUI.UIList.new(arg0, arg1, 3.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal11:makeFocusable()
	registerVal11:setLeftRight(true, false, 422.000000, 1170.000000)
	registerVal11:setTopBottom(true, false, 154.000000, 291.000000)
	registerVal11:setWidgetType(CoD.CACGenericButton)
	registerVal11:setVerticalCount(4.000000)
	registerVal11:setSpacing(3.000000)
	local function __FUNC_2FD8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setDataSource(registerVal1)
		end
	end

	registerVal11:linkToElementModel(registerVal2, "listDatasource", true, __FUNC_2FD8_)
	local function __FUNC_3072_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "disabled"
		CoD.Menu.UpdateButtonShownState(registerVal11, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal11:linkToElementModel(registerVal11, "disabled", true, __FUNC_3072_)
	local function __FUNC_322D_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal11:registerEventHandler("gain_focus", __FUNC_322D_)
	local function __FUNC_33BF_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal11:registerEventHandler("lose_focus", __FUNC_33BF_)
	local function __FUNC_348E_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDisabled(arg0, arg2)
		if not registerVal4 then
			ProcessListAction(registerVal2, arg0, arg2)
			PlaySoundSetSound(registerVal2, "action")
			return true
		end
	end

	local function __FUNC_3556_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsDisabled(arg0, arg2)
		if not registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal11, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_348E_, __FUNC_3556_, true)
	registerVal2:addElement(registerVal11)
	registerVal2.options = registerVal11
	local registerVal12 = CoD.systemOverlay_supportWidget.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 0.000000, 352.000000)
	registerVal12:setTopBottom(false, true, -24.000000, 0.000000)
	local function __FUNC_3686_(arg0)
		registerVal12:setModel(arg0, arg1)
	end

	registerVal12:linkToElementModel(registerVal2, nil, false, __FUNC_3686_)
	registerVal2:addElement(registerVal12)
	registerVal2.supportInfo = registerVal12
	local registerVal13 = CoD.CryptokeyTypeName.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 134.000000, 230.000000)
	registerVal13:setTopBottom(true, false, 244.000000, 266.000000)
	local function __FUNC_36D6_(arg0)
		registerVal13:setModel(arg0, arg1)
	end

	registerVal13:linkToElementModel(registerVal2, "cryptoKeyType", false, __FUNC_36D6_)
	registerVal2:addElement(registerVal13)
	registerVal2.CryptokeyTypeName = registerVal13
	local registerVal14 = CoD.NextKeyProgress.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 410.000000, 870.000000)
	registerVal14:setTopBottom(true, false, 116.000000, 142.000000)
	registerVal14:setAlpha(0.000000)
	local registerVal17 = {}
	local registerVal18 = {}
	registerVal18.stateName = "HidePixels"
	local function __FUNC_3726_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal18.condition = __FUNC_3726_
	registerVal17 = {registerVal18}
	registerVal14:mergeStateConditions(registerVal17)
	registerVal18 = Engine.GetModelForController(arg1)
	registerVal17 = Engine.GetModel(registerVal18, "CryptoKeyProgress.keyCount")
	local function __FUNC_3770_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CryptoKeyProgress.keyCount"
		arg0:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:subscribeToModel(registerVal17, __FUNC_3770_)
	registerVal2:addElement(registerVal14)
	registerVal2.NextKeyProgress = registerVal14
	local registerVal15 = LUI.UIText.new()
	registerVal15:setLeftRight(true, false, 0.000000, 352.000000)
	registerVal15:setTopBottom(true, false, 267.000000, 289.000000)
	registerVal15:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_38A0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15:setText(GetSupplyDropOrBundleString(arg1, registerVal1))
		end
	end

	registerVal15:linkToElementModel(registerVal2, "supplyDropType", true, __FUNC_38A0_)
	registerVal2:addElement(registerVal15)
	registerVal2.SupplyDropText = registerVal15
	local registerVal16 = CoD.BribeDuplicatesPopupInfo.new(arg0, arg1)
	registerVal16:setLeftRight(true, false, 48.500000, 301.500000)
	registerVal16:setTopBottom(true, false, 30.000000, 279.000000)
	local function __FUNC_3965_(arg0)
		registerVal16:setModel(arg0, arg1)
	end

	registerVal16:linkToElementModel(registerVal2, nil, false, __FUNC_3965_)
	registerVal2:addElement(registerVal16)
	registerVal2.BribeDuplicatesPopupInfo = registerVal16
	registerVal17 = CoD.BlackMarketCODPointContainerSmall.new(arg0, arg1)
	registerVal17:setLeftRight(true, false, 970.000000, 1063.850000)
	registerVal17:setTopBottom(true, false, 12.000000, 40.000000)
	registerVal17:setScale(1.000000)
	local function __FUNC_39B6_(arg0)
		registerVal17:setModel(arg0, arg1)
	end

	registerVal17:linkToElementModel(registerVal2, nil, false, __FUNC_39B6_)
	local registerVal20 = {}
	local registerVal21 = {}
	registerVal21.stateName = "ShownInsufficientFunds"
	local function __FUNC_3A06_(arg0, arg2, arg3)
		local registerVal3 = IsControllerModelValueGreaterThanOrEqualToSelfModelValue(arg2, arg1, "CryptoKeyProgress.codPoints", "itemCODPointCost")
		if not registerVal3 then
			registerVal3 = AlwaysFalse()
		else
		end
		return true
	end

	registerVal21.condition = __FUNC_3A06_
	local registerVal22 = {}
	registerVal22.stateName = "Shown"
	local function __FUNC_3AFE_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal22.condition = __FUNC_3AFE_
	local registerVal23 = {}
	registerVal23.stateName = "BalanceShownInsufficientFunds"
	local function __FUNC_3B49_(arg0, arg2, arg3)
		local registerVal3 = IsControllerModelValueGreaterThanOrEqualToSelfModelValue(arg2, arg1, "CryptoKeyProgress.codPoints", "itemCODPointCost")
		if not registerVal3 then
			registerVal3 = IsSelfModelValueGreaterThan(arg2, arg1, "codpointcost", 0.000000)
			if registerVal3 then
				registerVal3 = IsControllerModelValueGreaterThanOrEqualToSelfModelValue(arg2, arg1, "CryptoKeyProgress.codPoints", "codpointcost")
			else
			end
		end
		return true
	end

	registerVal23.condition = __FUNC_3B49_
	local registerVal24 = {}
	registerVal24.stateName = "BalanceShown"
	local function __FUNC_3CA1_(arg0, arg2, arg3)
		return IsSelfModelValueGreaterThan(arg2, arg1, "codpointcost", 0.000000)
	end

	registerVal24.condition = __FUNC_3CA1_
	registerVal20 = {registerVal21, registerVal22, registerVal23, registerVal24}
	registerVal17:mergeStateConditions(registerVal20)
	local function __FUNC_3D28_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemCODPointCost"
		arg0:updateElementState(registerVal17, registerVal4)
	end

	registerVal17:linkToElementModel(registerVal17, "itemCODPointCost", true, __FUNC_3D28_)
	registerVal21 = Engine.GetModelForController(arg1)
	registerVal20 = Engine.GetModel(registerVal21, "CryptoKeyProgress.codPoints")
	local function __FUNC_3E4E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CryptoKeyProgress.codPoints"
		arg0:updateElementState(registerVal17, registerVal4)
	end

	registerVal17:subscribeToModel(registerVal20, __FUNC_3E4E_)
	local function __FUNC_3F7D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "codpointcost"
		arg0:updateElementState(registerVal17, registerVal4)
	end

	registerVal17:linkToElementModel(registerVal17, "codpointcost", true, __FUNC_3F7D_)
	registerVal2:addElement(registerVal17)
	registerVal2.BlackMarketCODPointContainerSmall = registerVal17
	registerVal18 = CoD.BlackMarketCryptokeyContainerSmall.new(arg0, arg1)
	registerVal18:setLeftRight(true, false, 1069.850000, 1150.600000)
	registerVal18:setTopBottom(true, false, 12.000000, 40.000000)
	registerVal18:setScale(1.000000)
	local function __FUNC_409E_(arg0)
		registerVal18:setModel(arg0, arg1)
	end

	registerVal18:linkToElementModel(registerVal2, nil, false, __FUNC_409E_)
	registerVal21 = {}
	registerVal22 = {}
	registerVal22.stateName = "InsufficientFunds"
	local function __FUNC_40EE_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal22.condition = __FUNC_40EE_
	registerVal23 = {}
	registerVal23.stateName = "ShowBalanceInsufficientFunds"
	local function __FUNC_4139_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueGreaterThan(arg2, arg1, "cost", 0.000000)
		if registerVal3 then
			registerVal3 = IsControllerModelValueGreaterThanOrEqualToSelfModelValue(arg2, arg1, "CryptoKeyProgress.keyCount", "cost")
		end
		return (not registerVal3)
	end

	registerVal23.condition = __FUNC_4139_
	registerVal24 = {}
	registerVal24.stateName = "ShowBalance"
	local function __FUNC_4242_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal24.condition = __FUNC_4242_
	registerVal21 = {registerVal22, registerVal23, registerVal24}
	registerVal18:mergeStateConditions(registerVal21)
	local function __FUNC_428C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "cost"
		arg0:updateElementState(registerVal18, registerVal4)
	end

	registerVal18:linkToElementModel(registerVal18, "cost", true, __FUNC_428C_)
	registerVal22 = Engine.GetModelForController(arg1)
	registerVal21 = Engine.GetModel(registerVal22, "CryptoKeyProgress.keyCount")
	local function __FUNC_43A6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CryptoKeyProgress.keyCount"
		arg0:updateElementState(registerVal18, registerVal4)
	end

	registerVal18:subscribeToModel(registerVal21, __FUNC_43A6_)
	local function __FUNC_44D4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemCount"
		arg0:updateElementState(registerVal18, registerVal4)
	end

	registerVal18:linkToElementModel(registerVal18, "itemCount", true, __FUNC_44D4_)
	registerVal2:addElement(registerVal18)
	registerVal2.BlackMarketCryptokeyContainerSmall = registerVal18
	local registerVal19 = CoD.BM_BurningDuplicatesAnimation.new(arg0, arg1)
	registerVal19:setLeftRight(true, false, 227.000000, 727.000000)
	registerVal19:setTopBottom(true, false, 142.000000, 242.000000)
	registerVal19:setAlpha(0.000000)
	registerVal19:setScale(0.600000)
	registerVal2:addElement(registerVal19)
	registerVal2.BurningDuplicatesAnimation = registerVal19
	registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(true, false, 76.500000, 308.000000)
	registerVal20:setTopBottom(true, false, 47.000000, 278.500000)
	registerVal20:setAlpha(0.000000)
	registerVal20:setImage(RegisterImage("uie_t7_menu_blackmarket_cryptokey_stack"))
	registerVal2:addElement(registerVal20)
	registerVal2.ComfirmationCryptokeyLarge = registerVal20
	registerVal21 = CoD.BGB_PurchasingVials.new(arg0, arg1)
	registerVal21:setLeftRight(true, false, 448.000000, 948.000000)
	registerVal21:setTopBottom(true, false, 110.500000, 210.500000)
	registerVal21:setAlpha(0.000000)
	registerVal21.BurningDuplicatesText:setText(Engine.Localize("ZMUI_TRADING_COD_POINTS_FOR_VIALS"))
	registerVal2:addElement(registerVal21)
	registerVal2.PurchasingBundle = registerVal21
	registerVal22 = LUI.UIText.new()
	registerVal22:setLeftRight(true, false, 421.000000, 868.000000)
	registerVal22:setTopBottom(true, false, 89.500000, 111.500000)
	registerVal22:setAlpha(0.000000)
	registerVal22:setTTF("fonts/default.ttf")
	registerVal22:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal22:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_45F3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal22:setText(GetPurchaseCompleteStringForSupplyDropType(arg1, registerVal1))
		end
	end

	registerVal22:linkToElementModel(registerVal2, "supplyDropType", true, __FUNC_45F3_)
	registerVal2:addElement(registerVal22)
	registerVal2.PurchasedBundleText = registerVal22
	registerVal23 = LUI.UIText.new()
	registerVal23:setLeftRight(true, false, 421.000000, 868.000000)
	registerVal23:setTopBottom(true, false, 89.500000, 111.500000)
	registerVal23:setAlpha(0.000000)
	registerVal23:setText(DvarLocalizedIntoString("loot_sixPack_final_count", "MPUI_BM_SIX_PACK_SUCCESS"))
	registerVal23:setTTF("fonts/default.ttf")
	registerVal23:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal23:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal23)
	registerVal2.PurchasedSixPackText = registerVal23
	registerVal24 = LUI.UIImage.new()
	registerVal24:setLeftRight(true, false, 28.500000, 328.500000)
	registerVal24:setTopBottom(true, false, -14.000000, 290.000000)
	registerVal24:setAlpha(0.000000)
	registerVal24:setImage(RegisterImage("uie_t7_blackmarket_crate_bundle_open"))
	registerVal2:addElement(registerVal24)
	registerVal2.BundleOpen = registerVal24
	local registerVal25 = LUI.UIImage.new()
	registerVal25:setLeftRight(true, false, 28.500000, 328.500000)
	registerVal25:setTopBottom(true, false, -14.000000, 290.000000)
	registerVal25:setAlpha(0.000000)
	registerVal25:setImage(RegisterImage("uie_t7_blackmarket_6pack_commons_open"))
	registerVal2:addElement(registerVal25)
	registerVal2.SixPackBundleOpen = registerVal25
	local registerVal26 = CoD.BM_BundleOffertime.new(arg0, arg1)
	registerVal26:setLeftRight(true, false, 0.000000, 352.000000)
	registerVal26:setTopBottom(true, false, 210.500000, 318.000000)
	local function __FUNC_46C4_(arg0)
		registerVal26:setModel(arg0, arg1)
	end

	registerVal26:linkToElementModel(registerVal2, nil, false, __FUNC_46C4_)
	registerVal2:addElement(registerVal26)
	registerVal2.BMBundleOffertime = registerVal26
	local registerVal27 = CoD.BM_Bundle_Count.new(arg0, arg1)
	registerVal27:setLeftRight(true, false, 76.000000, 276.000000)
	registerVal27:setTopBottom(true, false, 87.500000, 137.500000)
	registerVal2:addElement(registerVal27)
	registerVal2.BMBundleCount = registerVal27
	local registerVal28 = CoD.BM_BurnProgressIndicator.new(arg0, arg1)
	registerVal28:setLeftRight(true, false, 422.000000, 898.000000)
	registerVal28:setTopBottom(true, false, 70.000000, 95.000000)
	registerVal2:addElement(registerVal28)
	registerVal2.BMBurnProgressIndicator0 = registerVal28
	local registerVal29 = {}
	local registerVal30 = {}
	local function __FUNC_4716_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal7:completeAnimation()
		registerVal2.titleForBurning:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.textForBurning:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal20:completeAnimation()
		registerVal2.ComfirmationCryptokeyLarge:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.PurchasingBundle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.PurchasedBundleText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.PurchasedSixPackText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal25:completeAnimation()
		registerVal2.SixPackBundleOpen:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
	end

	registerVal30.DefaultClip = __FUNC_4716_
	registerVal29.DefaultState = registerVal30
	registerVal30 = {}
	local function __FUNC_4A5F_()
		registerVal2:setupElementClipCounter(17.000000)
		registerVal5:completeAnimation()
		registerVal2.largeImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.titleForBurning:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.textForBurning:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.options:setLeftRight(true, false, 422.000000, 753.000000)
		registerVal2.options:setTopBottom(true, false, 204.500000, 296.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.CryptokeyTypeName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.NextKeyProgress:setLeftRight(true, false, 421.000000, 821.000000)
		registerVal2.NextKeyProgress:setTopBottom(true, false, 120.500000, 170.500000)
		registerVal2.NextKeyProgress:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal16:completeAnimation()
		registerVal2.BribeDuplicatesPopupInfo:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.BlackMarketCODPointContainerSmall:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.BlackMarketCryptokeyContainerSmall:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.BurningDuplicatesAnimation:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.ComfirmationCryptokeyLarge:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.PurchasingBundle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.PurchasedBundleText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.PurchasedSixPackText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal25:completeAnimation()
		registerVal2.SixPackBundleOpen:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.BMBundleOffertime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal28:completeAnimation()
		registerVal2.BMBurnProgressIndicator0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
	end

	registerVal30.DefaultClip = __FUNC_4A5F_
	registerVal29.BurnDuplicates = registerVal30
	registerVal30 = {}
	local function __FUNC_525F_()
		registerVal2:setupElementClipCounter(18.000000)
		registerVal5:completeAnimation()
		registerVal2.largeImage:setLeftRight(true, false, 53.500000, 301.500000)
		registerVal2.largeImage:setTopBottom(true, false, 10.000000, 258.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.titleForBurning:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.textForBurning:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.text:setAlpha(0.850000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.options:setLeftRight(true, false, 422.000000, 690.500000)
		registerVal2.options:setTopBottom(true, false, 140.000000, 207.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.supportInfo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal15:completeAnimation()
		registerVal2.SupplyDropText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.BribeDuplicatesPopupInfo:setLeftRight(true, false, 68.000000, 289.000000)
		registerVal2.BribeDuplicatesPopupInfo:setTopBottom(true, false, 31.000000, 280.000000)
		registerVal2.BribeDuplicatesPopupInfo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.BlackMarketCODPointContainerSmall:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.BlackMarketCryptokeyContainerSmall:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.BurningDuplicatesAnimation:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.ComfirmationCryptokeyLarge:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.PurchasingBundle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.PurchasedBundleText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.PurchasedSixPackText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal25:completeAnimation()
		registerVal2.SixPackBundleOpen:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.BMBundleOffertime:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal28:completeAnimation()
		registerVal2.BMBurnProgressIndicator0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
	end

	registerVal30.DefaultClip = __FUNC_525F_
	registerVal29.PurchaseSupplyDrop = registerVal30
	registerVal30 = {}
	local function __FUNC_5AF7_()
		registerVal2:setupElementClipCounter(16.000000)
		registerVal7:completeAnimation()
		registerVal2.titleForBurning:setAlpha(1.000000)
		registerVal2.titleForBurning:setText(Engine.Localize("MPUI_BM_BURNING_TITLE"))
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.title:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal9.text:completeAnimation()
		registerVal2.textForBurning:setAlpha(1.000000)
		registerVal2.textForBurning.text:setText(Engine.Localize("MPUI_BM_BURNING_DESCRIPTION"))
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.text:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal14:completeAnimation()
		registerVal2.NextKeyProgress:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal16:completeAnimation()
		registerVal2.BribeDuplicatesPopupInfo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.BlackMarketCODPointContainerSmall:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.BlackMarketCryptokeyContainerSmall:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.BurningDuplicatesAnimation:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		local function __FUNC_62AF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal20:completeAnimation()
		registerVal2.ComfirmationCryptokeyLarge:setAlpha(0.000000)
		__FUNC_62AF_(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.PurchasingBundle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.PurchasedBundleText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.PurchasedSixPackText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal25:completeAnimation()
		registerVal2.SixPackBundleOpen:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.BMBundleOffertime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal28:completeAnimation()
		registerVal2.BMBurnProgressIndicator0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal28, {})
	end

	registerVal30.DefaultClip = __FUNC_5AF7_
	registerVal29.BurningDuplicates = registerVal30
	registerVal30 = {}
	local function __FUNC_6461_()
		registerVal2:setupElementClipCounter(15.000000)
		registerVal7:completeAnimation()
		registerVal2.titleForBurning:setAlpha(1.000000)
		registerVal2.titleForBurning:setText(Engine.Localize("MPUI_BM_BURNED_TITLE"))
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.title:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.textForBurning:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.text:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.options:setLeftRight(true, false, 422.000000, 752.000000)
		registerVal2.options:setTopBottom(true, false, 253.000000, 355.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal17:completeAnimation()
		registerVal2.BlackMarketCODPointContainerSmall:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.BlackMarketCryptokeyContainerSmall:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.BurningDuplicatesAnimation:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.ComfirmationCryptokeyLarge:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.PurchasingBundle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.PurchasedBundleText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.PurchasedSixPackText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal25:completeAnimation()
		registerVal2.SixPackBundleOpen:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.BMBundleOffertime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal28:completeAnimation()
		registerVal2.BMBurnProgressIndicator0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal28, {})
	end

	registerVal30.DefaultClip = __FUNC_6461_
	registerVal29.BurnedDuplicates = registerVal30
	registerVal30 = {}
	local function __FUNC_6BAB_()
		registerVal2:setupElementClipCounter(17.000000)
		registerVal5:completeAnimation()
		registerVal2.largeImage:setLeftRight(true, false, 53.500000, 301.500000)
		registerVal2.largeImage:setTopBottom(true, false, 10.000000, 258.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.titleForBurning:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.textForBurning:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.text:setAlpha(0.850000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.options:setLeftRight(true, false, 422.000000, 690.500000)
		registerVal2.options:setTopBottom(true, false, 140.000000, 207.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.supportInfo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal15:completeAnimation()
		registerVal2.SupplyDropText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.BribeDuplicatesPopupInfo:setLeftRight(true, false, 68.000000, 289.000000)
		registerVal2.BribeDuplicatesPopupInfo:setTopBottom(true, false, 31.000000, 280.000000)
		registerVal2.BribeDuplicatesPopupInfo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.BlackMarketCODPointContainerSmall:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.BlackMarketCryptokeyContainerSmall:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.BurningDuplicatesAnimation:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.ComfirmationCryptokeyLarge:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.PurchasingBundle:setLeftRight(true, false, 466.500000, 966.500000)
		registerVal2.PurchasingBundle:setTopBottom(true, false, 112.000000, 212.000000)
		registerVal2.PurchasingBundle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.PurchasedBundleText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.PurchasedSixPackText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal25:completeAnimation()
		registerVal2.SixPackBundleOpen:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal28:completeAnimation()
		registerVal2.BMBurnProgressIndicator0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
	end

	registerVal30.DefaultClip = __FUNC_6BAB_
	registerVal29.PurchasingBundle = registerVal30
	registerVal30 = {}
	local function __FUNC_7448_()
		registerVal2:setupElementClipCounter(20.000000)
		registerVal5:completeAnimation()
		registerVal2.largeImage:setLeftRight(true, false, 74.500000, 282.500000)
		registerVal2.largeImage:setTopBottom(true, false, 236.250000, 258.000000)
		registerVal2.largeImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.titleForBurning:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.textForBurning:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.text:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.options:setLeftRight(true, false, 422.000000, 690.500000)
		registerVal2.options:setTopBottom(true, false, 140.000000, 207.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.supportInfo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal15:completeAnimation()
		registerVal2.SupplyDropText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.BribeDuplicatesPopupInfo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.BlackMarketCODPointContainerSmall:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.BlackMarketCryptokeyContainerSmall:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.BurningDuplicatesAnimation:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.ComfirmationCryptokeyLarge:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.PurchasingBundle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.PurchasedBundleText:setLeftRight(true, false, 422.000000, 869.000000)
		registerVal2.PurchasedBundleText:setTopBottom(true, false, 45.000000, 65.000000)
		registerVal2.PurchasedBundleText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.PurchasedSixPackText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.BundleOpen:setLeftRight(true, false, 38.340000, 313.660000)
		registerVal2.BundleOpen:setTopBottom(true, false, -5.000000, 274.000000)
		registerVal2.BundleOpen:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.SixPackBundleOpen:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.BMBundleOffertime:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.BMBundleCount:setLeftRight(true, false, 74.000000, 274.000000)
		registerVal2.BMBundleCount:setTopBottom(true, false, 87.500000, 137.500000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.BMBurnProgressIndicator0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
	end

	registerVal30.DefaultClip = __FUNC_7448_
	registerVal29.PurchasedBundle = registerVal30
	registerVal30 = {}
	local function __FUNC_7E4F_()
		registerVal2:setupElementClipCounter(18.000000)
		registerVal5:completeAnimation()
		registerVal2.largeImage:setLeftRight(true, false, 53.500000, 301.500000)
		registerVal2.largeImage:setTopBottom(true, false, 10.000000, 258.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.titleForBurning:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.textForBurning:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.text:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.options:setLeftRight(true, false, 422.000000, 690.500000)
		registerVal2.options:setTopBottom(true, false, 140.000000, 207.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.supportInfo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal15:completeAnimation()
		registerVal2.SupplyDropText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.BribeDuplicatesPopupInfo:setLeftRight(true, false, 68.000000, 289.000000)
		registerVal2.BribeDuplicatesPopupInfo:setTopBottom(true, false, 31.000000, 280.000000)
		registerVal2.BribeDuplicatesPopupInfo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.BlackMarketCODPointContainerSmall:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.BlackMarketCryptokeyContainerSmall:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.BurningDuplicatesAnimation:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.ComfirmationCryptokeyLarge:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.PurchasingBundle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.PurchasedBundleText:setLeftRight(true, false, 422.000000, 869.000000)
		registerVal2.PurchasedBundleText:setTopBottom(true, false, 45.000000, 65.000000)
		registerVal2.PurchasedBundleText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.PurchasedSixPackText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal25:completeAnimation()
		registerVal2.SixPackBundleOpen:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.BMBundleOffertime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal28:completeAnimation()
		registerVal2.BMBurnProgressIndicator0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
	end

	registerVal30.DefaultClip = __FUNC_7E4F_
	registerVal29.PurchaseComplete = registerVal30
	registerVal30 = {}
	local function __FUNC_8741_()
		registerVal2:setupElementClipCounter(20.000000)
		registerVal5:completeAnimation()
		registerVal2.largeImage:setLeftRight(true, false, 74.500000, 282.500000)
		registerVal2.largeImage:setTopBottom(true, false, 236.250000, 258.000000)
		registerVal2.largeImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.titleForBurning:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.textForBurning:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.text:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.options:setLeftRight(true, false, 422.000000, 690.500000)
		registerVal2.options:setTopBottom(true, false, 140.000000, 207.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.supportInfo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal15:completeAnimation()
		registerVal2.SupplyDropText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.BribeDuplicatesPopupInfo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.BlackMarketCODPointContainerSmall:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.BlackMarketCryptokeyContainerSmall:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.BurningDuplicatesAnimation:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.ComfirmationCryptokeyLarge:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.PurchasingBundle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.PurchasedBundleText:setLeftRight(true, false, 421.000000, 868.000000)
		registerVal2.PurchasedBundleText:setTopBottom(true, false, 89.500000, 111.500000)
		registerVal2.PurchasedBundleText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.PurchasedSixPackText:setLeftRight(true, false, 422.000000, 869.000000)
		registerVal2.PurchasedSixPackText:setTopBottom(true, false, 45.000000, 65.000000)
		registerVal2.PurchasedSixPackText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.BundleOpen:setLeftRight(true, false, 38.340000, 313.660000)
		registerVal2.BundleOpen:setTopBottom(true, false, -5.000000, 274.000000)
		registerVal2.BundleOpen:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.SixPackBundleOpen:setLeftRight(true, false, 38.340000, 313.660000)
		registerVal2.SixPackBundleOpen:setTopBottom(true, false, -5.000000, 274.000000)
		registerVal2.SixPackBundleOpen:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.BMBundleOffertime:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.BMBundleCount:setLeftRight(true, false, 74.000000, 274.000000)
		registerVal2.BMBundleCount:setTopBottom(true, false, 87.500000, 137.500000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.BMBurnProgressIndicator0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
	end

	registerVal30.DefaultClip = __FUNC_8741_
	registerVal29.PurchasedSixPack = registerVal30
	registerVal2.clipsPerState = registerVal29
	local registerVal31 = {}
	local registerVal32 = {}
	registerVal32.stateName = "BurnDuplicates"
	local function __FUNC_91FB_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "state", "BurnDuplicates")
	end

	registerVal32.condition = __FUNC_91FB_
	local registerVal33 = {}
	registerVal33.stateName = "PurchaseSupplyDrop"
	local function __FUNC_9288_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "state", "PurchaseSupplyDrop")
	end

	registerVal33.condition = __FUNC_9288_
	local registerVal34 = {}
	registerVal34.stateName = "BurningDuplicates"
	local function __FUNC_931C_(arg0, arg1, arg2)
		return true
	end

	registerVal34.condition = __FUNC_931C_
	local registerVal35 = {}
	registerVal35.stateName = "BurnedDuplicates"
	local function __FUNC_9350_(arg0, arg1, arg2)
		return true
	end

	registerVal35.condition = __FUNC_9350_
	local registerVal36 = {}
	registerVal36.stateName = "PurchasingBundle"
	local function __FUNC_9384_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "state", "PurchaseSupplyDrop")
	end

	registerVal36.condition = __FUNC_9384_
	local registerVal37 = {}
	registerVal37.stateName = "PurchasedBundle"
	local function __FUNC_9418_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "state", "PurchaseSupplyDrop")
	end

	registerVal37.condition = __FUNC_9418_
	local registerVal38 = {}
	registerVal38.stateName = "PurchaseComplete"
	local function __FUNC_94AC_(arg0, arg1, arg2)
		return true
	end

	registerVal38.condition = __FUNC_94AC_
	local registerVal39 = {}
	registerVal39.stateName = "PurchasedSixPack"
	local function __FUNC_94E0_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "state", "PurchaseSupplyDrop")
	end

	registerVal39.condition = __FUNC_94E0_
	registerVal31 = {registerVal32, registerVal33, registerVal34, registerVal35, registerVal36, registerVal37, registerVal38, registerVal39}
	registerVal2:mergeStateConditions(registerVal31)
	local function __FUNC_9574_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "state"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "state", true, __FUNC_9574_)
	registerVal32 = Engine.GetGlobalModel()
	registerVal31 = Engine.GetModel(registerVal32, "lobbyRoot.lobbyNetworkMode")
	local function __FUNC_968F_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "lobbyRoot.lobbyNetworkMode"
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal2:subscribeToModel(registerVal31, __FUNC_968F_)
	local function __FUNC_985C_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsMenuModelValueEqualTo(arg1, "title", "MPUI_BM_NO_CURRENCY")
		registerVal4 = AreCodPointsEnabled(arg2)
		registerVal4 = IsElementPropertyValue(arg0, "isBurningDuplicates", true)
		registerVal4 = IsSelfInState(registerVal2, "PurchasingBundle")
		registerVal4 = PurchaseExperimentCanShowStoreButton(arg2, registerVal2)
		if not registerVal4 and registerVal4 and not registerVal4 and not registerVal4 and registerVal4 then
			OpenCodPointsStore(registerVal2, arg0, arg2, "menuName", arg1)
			return true
		end
	end

	local function __FUNC_9A5C_(arg0, arg1, arg2)
		local registerVal3 = IsMenuModelValueEqualTo(arg1, "title", "MPUI_BM_NO_CURRENCY")
		registerVal3 = AreCodPointsEnabled(arg2)
		registerVal3 = IsElementPropertyValue(arg0, "isBurningDuplicates", true)
		registerVal3 = IsSelfInState(registerVal2, "PurchasingBundle")
		registerVal3 = PurchaseExperimentCanShowStoreButton(arg2, registerVal2)
		if not registerVal3 and registerVal3 and not registerVal3 and not registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MPUI_PURCHASE_CODPOINTS")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "P", __FUNC_985C_, __FUNC_9A5C_, false)
	local function __FUNC_9CF1_(arg0, arg2)
		local registerVal2 = IsSelfInState(registerVal2, "BurnedDuplicates")
		if registerVal2 then
			local registerVal4 = {}
			registerVal4.elementName = "BlackMarketCryptokeyContainerSmall"
			registerVal4.clipName = "Bonus"
			PlayClipOnElement(registerVal2, registerVal4, arg1)
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setState", __FUNC_9CF1_)
	registerVal11.id = "options"
	local function __FUNC_9DFE_(arg0, arg1)
		local registerVal2 = arg0.options:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_9DFE_)
	local function __FUNC_9EFF_(arg0)
		arg0.textForBurning:close()
		arg0.text:close()
		arg0.options:close()
		arg0.supportInfo:close()
		arg0.CryptokeyTypeName:close()
		arg0.NextKeyProgress:close()
		arg0.BribeDuplicatesPopupInfo:close()
		arg0.BlackMarketCODPointContainerSmall:close()
		arg0.BlackMarketCryptokeyContainerSmall:close()
		arg0.BurningDuplicatesAnimation:close()
		arg0.PurchasingBundle:close()
		arg0.BMBundleOffertime:close()
		arg0.BMBundleCount:close()
		arg0.BMBurnProgressIndicator0:close()
		arg0.largeImage:close()
		arg0.categoryTypeImage:close()
		arg0.title:close()
		arg0.SupplyDropText:close()
		arg0.PurchasedBundleText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_9EFF_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

