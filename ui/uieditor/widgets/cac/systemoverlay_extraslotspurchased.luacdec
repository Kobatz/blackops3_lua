-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.SystemOverlays.systemOverlay_Layout_ForegroundMultilineText")
require("ui.uieditor.widgets.CAC.Customization.CACGenericButton")
require("ui.uieditor.widgets.BlackMarket.BlackMarketCODPointContainerSmall")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SystemOverlay_ExtraSlotsPurchased = registerVal1
function CoD.SystemOverlay_ExtraSlotsPurchased.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SystemOverlay_ExtraSlotsPurchased)
	registerVal2.id = "SystemOverlay_ExtraSlotsPurchased"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 320.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 336.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_backgroundbg"))
	registerVal2:addElement(registerVal3)
	registerVal2.bg = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 1053.200000, 1280.000000)
	registerVal4:setTopBottom(true, false, -4.000000, 320.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_popup_icon"))
	registerVal2:addElement(registerVal4)
	registerVal2.BIGicon = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 75.000000, 291.000000)
	registerVal5:setTopBottom(true, false, -14.000000, 202.000000)
	local function __FUNC_14BA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "image", true, __FUNC_14BA_)
	registerVal2:addElement(registerVal5)
	registerVal2.largeImage = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 384.000000, 414.000000)
	registerVal6:setTopBottom(true, false, 11.000000, 41.000000)
	local function __FUNC_156C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setImage(RegisterImage(GetCategoryIconForOverlayType(registerVal1)))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "categoryType", true, __FUNC_156C_)
	registerVal2:addElement(registerVal6)
	registerVal2.categoryTypeImage = registerVal6
	local registerVal7 = LUI.UITightText.new()
	registerVal7:setLeftRight(true, false, 421.000000, 621.000000)
	registerVal7:setTopBottom(true, false, 11.000000, 41.000000)
	registerVal7:setTTF("fonts/escom.ttf")
	local function __FUNC_164F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "title", true, __FUNC_164F_)
	registerVal2:addElement(registerVal7)
	registerVal2.title = registerVal7
	local registerVal8 = CoD.systemOverlay_Layout_ForegroundMultilineText.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 422.000000, 1127.000000)
	registerVal8:setTopBottom(true, false, 45.000000, 65.000000)
	registerVal8:setAlpha(0.850000)
	local function __FUNC_1706_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.text:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "description", true, __FUNC_1706_)
	registerVal2:addElement(registerVal8)
	registerVal2.text = registerVal8
	local registerVal9 = LUI.UIList.new(arg0, arg1, 3.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal9:makeFocusable()
	registerVal9:setLeftRight(true, false, 422.000000, 1170.000000)
	registerVal9:setTopBottom(true, false, 154.000000, 256.000000)
	registerVal9:setWidgetType(CoD.CACGenericButton)
	registerVal9:setVerticalCount(3.000000)
	registerVal9:setSpacing(3.000000)
	local function __FUNC_17D8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setDataSource(registerVal1)
		end
	end

	registerVal9:linkToElementModel(registerVal2, "listDatasource", true, __FUNC_17D8_)
	local function __FUNC_1872_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "disabled"
		CoD.Menu.UpdateButtonShownState(registerVal9, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal9:linkToElementModel(registerVal9, "disabled", true, __FUNC_1872_)
	local function __FUNC_1A2D_(arg2, arg3)
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

	registerVal9:registerEventHandler("gain_focus", __FUNC_1A2D_)
	local function __FUNC_1BBF_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("lose_focus", __FUNC_1BBF_)
	local function __FUNC_1C8E_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDisabled(arg0, arg2)
		if not registerVal4 then
			ProcessListAction(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_1D1B_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsDisabled(arg0, arg2)
		if not registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal9, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1C8E_, __FUNC_1D1B_, true)
	registerVal2:addElement(registerVal9)
	registerVal2.options = registerVal9
	local registerVal10 = CoD.BlackMarketCODPointContainerSmall.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 1007.000000, 1067.500000)
	registerVal10:setTopBottom(true, false, 12.000000, 39.000000)
	registerVal10:setScale(1.000000)
	local function __FUNC_1E4A_(arg0)
		registerVal10:setModel(arg0, arg1)
	end

	registerVal10:linkToElementModel(registerVal2, nil, false, __FUNC_1E4A_)
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "ShownInsufficientFunds"
	local function __FUNC_1E9A_(arg0, arg2, arg3)
		local registerVal3 = IsControllerModelValueGreaterThanOrEqualToSelfModelValue(arg2, arg1, "CryptoKeyProgress.codPoints", "itemCODPointCost")
		if not registerVal3 then
			registerVal3 = AlwaysFalse()
		else
		end
		return true
	end

	registerVal14.condition = __FUNC_1E9A_
	local registerVal15 = {}
	registerVal15.stateName = "Shown"
	local function __FUNC_1F92_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal15.condition = __FUNC_1F92_
	local registerVal16 = {}
	registerVal16.stateName = "BalanceShownInsufficientFunds"
	local function __FUNC_1FDD_(arg0, arg2, arg3)
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

	registerVal16.condition = __FUNC_1FDD_
	local registerVal17 = {}
	registerVal17.stateName = "BalanceShown"
	local function __FUNC_2135_(arg0, arg2, arg3)
		return IsSelfModelValueGreaterThan(arg2, arg1, "codpointcost", 0.000000)
	end

	registerVal17.condition = __FUNC_2135_
	registerVal13 = {registerVal14, registerVal15, registerVal16, registerVal17}
	registerVal10:mergeStateConditions(registerVal13)
	local function __FUNC_21BC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemCODPointCost"
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:linkToElementModel(registerVal10, "itemCODPointCost", true, __FUNC_21BC_)
	registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModel(registerVal14, "CryptoKeyProgress.codPoints")
	local function __FUNC_22E2_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CryptoKeyProgress.codPoints"
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:subscribeToModel(registerVal13, __FUNC_22E2_)
	local function __FUNC_2411_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "codpointcost"
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:linkToElementModel(registerVal10, "codpointcost", true, __FUNC_2411_)
	registerVal2:addElement(registerVal10)
	registerVal2.BlackMarketCODPointContainerSmall = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, false, 421.000000, 920.600000)
	registerVal11:setTopBottom(true, false, 98.000000, 123.000000)
	registerVal11:setText(Engine.Localize("MENU_EXTRASLOTS_PURCHASE_COMPLETE_DETAIL"))
	registerVal11:setTTF("fonts/default.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal11)
	registerVal2.purchaseCompleteDesc = registerVal11
	local registerVal12 = {}
	registerVal13 = {}
	local function __FUNC_2532_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal5:completeAnimation()
		registerVal2.largeImage:setLeftRight(true, false, 75.000000, 291.000000)
		registerVal2.largeImage:setTopBottom(true, false, -14.000000, 202.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal11:completeAnimation()
		registerVal2.purchaseCompleteDesc:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_2532_
	registerVal12.DefaultState = registerVal13
	registerVal13 = {}
	local function __FUNC_2708_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal5:completeAnimation()
		registerVal2.largeImage:setLeftRight(true, false, 57.000000, 321.000000)
		registerVal2.largeImage:setTopBottom(true, false, 8.000000, 184.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal11:completeAnimation()
		registerVal2.purchaseCompleteDesc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_2708_
	registerVal12.InventoryItem = registerVal13
	registerVal2.clipsPerState = registerVal12
	registerVal14 = {}
	registerVal15 = {}
	registerVal15.stateName = "InventoryItem"
	local function __FUNC_28E0_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "listDatasource", "PurchaseInventoryItemCompleteMenuList")
	end

	registerVal15.condition = __FUNC_28E0_
	registerVal14 = {registerVal15}
	registerVal2:mergeStateConditions(registerVal14)
	local function __FUNC_2990_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "listDatasource"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "listDatasource", true, __FUNC_2990_)
	registerVal15 = Engine.GetGlobalModel()
	registerVal14 = Engine.GetModel(registerVal15, "lobbyRoot.lobbyNetworkMode")
	local function __FUNC_2AB4_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "lobbyRoot.lobbyNetworkMode"
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal2:subscribeToModel(registerVal14, __FUNC_2AB4_)
	local function __FUNC_2C84_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsMenuModelValueEqualTo(arg1, "title", "MPUI_BM_NO_CURRENCY")
		registerVal4 = AreCodPointsEnabled(arg2)
		registerVal4 = IsPC()
		if not registerVal4 and registerVal4 and not registerVal4 then
			GoBackAndOpenStoreCodPointsOverlayOnParent(registerVal2, "ExtraSlotsCPStore", arg2)
			return true
		end
	end

	local function __FUNC_2DD3_(arg0, arg1, arg2)
		local registerVal3 = IsMenuModelValueEqualTo(arg1, "title", "MPUI_BM_NO_CURRENCY")
		registerVal3 = AreCodPointsEnabled(arg2)
		registerVal3 = IsPC()
		if not registerVal3 and registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MPUI_PURCHASE_CODPOINTS")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, nil, __FUNC_2C84_, __FUNC_2DD3_, false)
	registerVal9.id = "options"
	local function __FUNC_2F9B_(arg0, arg1)
		local registerVal2 = arg0.options:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_2F9B_)
	local function __FUNC_309B_(arg0)
		arg0.text:close()
		arg0.options:close()
		arg0.BlackMarketCODPointContainerSmall:close()
		arg0.largeImage:close()
		arg0.categoryTypeImage:close()
		arg0.title:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_309B_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

