-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.SystemOverlays.systemOverlay_Layout_ForegroundMultilineText")
require("ui.uieditor.widgets.CAC.Customization.CACGenericButton")
require("ui.uieditor.widgets.BlackMarket.BlackMarketCODPointContainerSmall")
require("ui.uieditor.widgets.CAC.cac_PurchasingExtraSlots")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SystemOverlay_ExtraSlots = registerVal1
function CoD.SystemOverlay_ExtraSlots.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SystemOverlay_ExtraSlots)
	registerVal2.id = "SystemOverlay_ExtraSlots"
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
	registerVal5:setLeftRight(true, false, 64.000000, 384.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_icon_unlock_generic_square_overlays"))
	registerVal2:addElement(registerVal5)
	registerVal2.largeImage = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 384.000000, 414.000000)
	registerVal6:setTopBottom(true, false, 11.000000, 41.000000)
	local function __FUNC_1673_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setImage(RegisterImage(GetCategoryIconForOverlayType(registerVal1)))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "categoryType", true, __FUNC_1673_)
	registerVal2:addElement(registerVal6)
	registerVal2.categoryTypeImage = registerVal6
	local registerVal7 = LUI.UITightText.new()
	registerVal7:setLeftRight(true, false, 421.000000, 621.000000)
	registerVal7:setTopBottom(true, false, 11.000000, 41.000000)
	registerVal7:setTTF("fonts/escom.ttf")
	local function __FUNC_1753_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "title", true, __FUNC_1753_)
	registerVal2:addElement(registerVal7)
	registerVal2.title = registerVal7
	local registerVal8 = CoD.systemOverlay_Layout_ForegroundMultilineText.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 422.000000, 1127.000000)
	registerVal8:setTopBottom(true, false, 45.000000, 65.000000)
	registerVal8:setAlpha(0.850000)
	local function __FUNC_180A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.text:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "description", true, __FUNC_180A_)
	registerVal2:addElement(registerVal8)
	registerVal2.text = registerVal8
	local registerVal9 = LUI.UIList.new(arg0, arg1, 3.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal9:makeFocusable()
	registerVal9:setLeftRight(true, false, 422.000000, 1170.000000)
	registerVal9:setTopBottom(true, false, 154.000000, 256.000000)
	registerVal9:setWidgetType(CoD.CACGenericButton)
	registerVal9:setVerticalCount(3.000000)
	registerVal9:setSpacing(3.000000)
	local function __FUNC_18DC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setDataSource(registerVal1)
		end
	end

	registerVal9:linkToElementModel(registerVal2, "listDatasource", true, __FUNC_18DC_)
	local function __FUNC_1976_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "disabled"
		CoD.Menu.UpdateButtonShownState(registerVal9, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal9:linkToElementModel(registerVal9, "disabled", true, __FUNC_1976_)
	local function __FUNC_1B31_(arg2, arg3)
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

	registerVal9:registerEventHandler("gain_focus", __FUNC_1B31_)
	local function __FUNC_1CC3_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("lose_focus", __FUNC_1CC3_)
	local function __FUNC_1D92_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDisabled(arg0, arg2)
		if not registerVal4 then
			ProcessListAction(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_1E1F_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsDisabled(arg0, arg2)
		if not registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal9, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1D92_, __FUNC_1E1F_, true)
	registerVal2:addElement(registerVal9)
	registerVal2.options = registerVal9
	local registerVal10 = CoD.BlackMarketCODPointContainerSmall.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 1007.000000, 1067.500000)
	registerVal10:setTopBottom(true, false, 12.000000, 39.000000)
	registerVal10:setScale(1.000000)
	local function __FUNC_1F4E_(arg0)
		registerVal10:setModel(arg0, arg1)
	end

	registerVal10:linkToElementModel(registerVal2, nil, false, __FUNC_1F4E_)
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "ShownInsufficientFunds"
	local function __FUNC_1F9E_(arg0, arg2, arg3)
		local registerVal3 = IsControllerModelValueGreaterThanOrEqualToSelfModelValue(arg2, arg1, "CryptoKeyProgress.codPoints", "itemCODPointCost")
		if not registerVal3 then
			registerVal3 = AlwaysFalse()
		else
		end
		return true
	end

	registerVal14.condition = __FUNC_1F9E_
	local registerVal15 = {}
	registerVal15.stateName = "Shown"
	local function __FUNC_2096_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal15.condition = __FUNC_2096_
	local registerVal16 = {}
	registerVal16.stateName = "BalanceShownInsufficientFunds"
	local function __FUNC_20E1_(arg0, arg2, arg3)
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

	registerVal16.condition = __FUNC_20E1_
	local registerVal17 = {}
	registerVal17.stateName = "BalanceShown"
	local function __FUNC_2239_(arg0, arg2, arg3)
		return IsSelfModelValueGreaterThan(arg2, arg1, "codpointcost", 0.000000)
	end

	registerVal17.condition = __FUNC_2239_
	registerVal13 = {registerVal14, registerVal15, registerVal16, registerVal17}
	registerVal10:mergeStateConditions(registerVal13)
	local function __FUNC_22C0_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemCODPointCost"
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:linkToElementModel(registerVal10, "itemCODPointCost", true, __FUNC_22C0_)
	registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModel(registerVal14, "CryptoKeyProgress.codPoints")
	local function __FUNC_23E6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CryptoKeyProgress.codPoints"
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:subscribeToModel(registerVal13, __FUNC_23E6_)
	local function __FUNC_2515_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "codpointcost"
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:linkToElementModel(registerVal10, "codpointcost", true, __FUNC_2515_)
	registerVal2:addElement(registerVal10)
	registerVal2.BlackMarketCODPointContainerSmall = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, false, 422.000000, 1166.600000)
	registerVal11:setTopBottom(true, false, 223.780000, 248.780000)
	registerVal11:setText(Engine.Localize("MENU_EXTRASLOTS_DISCLAIMER"))
	registerVal11:setTTF("fonts/default.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal11)
	registerVal2.disclaimerText = registerVal11
	local registerVal12 = LUI.UIText.new()
	registerVal12:setLeftRight(true, false, 421.000000, 621.000000)
	registerVal12:setTopBottom(true, false, 110.500000, 135.500000)
	registerVal12:setTTF("fonts/default.ttf")
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_2636_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal12:linkToElementModel(registerVal2, "codpointcostString", true, __FUNC_2636_)
	registerVal2:addElement(registerVal12)
	registerVal2.codpointCostString = registerVal12
	registerVal13 = CoD.cac_PurchasingExtraSlots.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 399.000000, 705.000000)
	registerVal13:setTopBottom(true, false, 115.000000, 211.000000)
	registerVal13:setAlpha(0.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.PurchasingWidget = registerVal13
	registerVal14 = {}
	registerVal15 = {}
	local function __FUNC_26EE_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal11:completeAnimation()
		registerVal2.disclaimerText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.codpointCostString:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.PurchasingWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_26EE_
	registerVal14.DefaultState = registerVal15
	registerVal15 = {}
	local function __FUNC_28B5_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal11:completeAnimation()
		registerVal2.disclaimerText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.codpointCostString:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.PurchasingWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_28B5_
	registerVal14.Purchasing = registerVal15
	registerVal2.clipsPerState = registerVal14
	registerVal17 = Engine.GetGlobalModel()
	registerVal16 = Engine.GetModel(registerVal17, "lobbyRoot.lobbyNetworkMode")
	local function __FUNC_2A7D_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "lobbyRoot.lobbyNetworkMode"
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal2:subscribeToModel(registerVal16, __FUNC_2A7D_)
	local function __FUNC_2C4C_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsMenuModelValueEqualTo(arg1, "title", "MPUI_BM_NO_CURRENCY")
		registerVal4 = AreCodPointsEnabled(arg2)
		registerVal4 = IsPC()
		registerVal4 = IsSelfInState(registerVal2, "Purchasing")
		if not registerVal4 and registerVal4 and not registerVal4 and not registerVal4 then
			GoBackAndOpenStoreCodPointsOverlayOnParent(registerVal2, "ExtraSlotsCPStore", arg2)
			return true
		end
	end

	local function __FUNC_2DDE_(arg0, arg1, arg2)
		local registerVal3 = IsMenuModelValueEqualTo(arg1, "title", "MPUI_BM_NO_CURRENCY")
		registerVal3 = AreCodPointsEnabled(arg2)
		registerVal3 = IsPC()
		registerVal3 = IsSelfInState(registerVal2, "Purchasing")
		if not registerVal3 and registerVal3 and not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MPUI_PURCHASE_CODPOINTS")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, nil, __FUNC_2C4C_, __FUNC_2DDE_, false)
	registerVal9.id = "options"
	local function __FUNC_2FEA_(arg0, arg1)
		local registerVal2 = arg0.options:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_2FEA_)
	local function __FUNC_30EB_(arg0)
		arg0.text:close()
		arg0.options:close()
		arg0.BlackMarketCODPointContainerSmall:close()
		arg0.PurchasingWidget:close()
		arg0.categoryTypeImage:close()
		arg0.title:close()
		arg0.codpointCostString:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_30EB_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

