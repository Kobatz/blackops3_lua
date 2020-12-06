-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.SystemOverlays.systemOverlay_Layout_ForegroundMultilineText")
require("ui.uieditor.widgets.CAC.Customization.CACGenericButton")
require("ui.uieditor.widgets.BlackMarket.BlackMarketCryptokeyContainerSmall")
require("ui.uieditor.widgets.CAC.cac_PurchasingExtraSlots")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SystemOverlay_TradeForBlackjackContract = registerVal1
function CoD.SystemOverlay_TradeForBlackjackContract.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SystemOverlay_TradeForBlackjackContract)
	registerVal2.id = "SystemOverlay_TradeForBlackjackContract"
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
	registerVal4:setLeftRight(true, false, 64.000000, 364.000000)
	registerVal4:setTopBottom(true, false, 58.000000, 262.000000)
	registerVal4:setImage(RegisterImage("uie_t7_bm_contracts_mercenary_icon"))
	registerVal2:addElement(registerVal4)
	registerVal2.largeImage = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 384.000000, 414.000000)
	registerVal5:setTopBottom(true, false, 11.000000, 41.000000)
	local function __FUNC_11F2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setImage(RegisterImage(GetCategoryIconForOverlayType(registerVal1)))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "categoryType", true, __FUNC_11F2_)
	registerVal2:addElement(registerVal5)
	registerVal2.categoryTypeImage = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 421.000000, 621.000000)
	registerVal6:setTopBottom(true, false, 11.000000, 41.000000)
	registerVal6:setTTF("fonts/escom.ttf")
	local function __FUNC_12D3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "title", true, __FUNC_12D3_)
	registerVal2:addElement(registerVal6)
	registerVal2.title = registerVal6
	local registerVal7 = CoD.systemOverlay_Layout_ForegroundMultilineText.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 422.000000, 1127.000000)
	registerVal7:setTopBottom(true, false, 45.000000, 65.000000)
	registerVal7:setAlpha(0.850000)
	local function __FUNC_138A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.text:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "description", true, __FUNC_138A_)
	registerVal2:addElement(registerVal7)
	registerVal2.text = registerVal7
	local registerVal8 = LUI.UIList.new(arg0, arg1, 3.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal8:makeFocusable()
	registerVal8:setLeftRight(true, false, 422.000000, 1170.000000)
	registerVal8:setTopBottom(true, false, 154.000000, 256.000000)
	registerVal8:setWidgetType(CoD.CACGenericButton)
	registerVal8:setVerticalCount(3.000000)
	registerVal8:setSpacing(3.000000)
	local function __FUNC_145C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setDataSource(registerVal1)
		end
	end

	registerVal8:linkToElementModel(registerVal2, "listDatasource", true, __FUNC_145C_)
	local function __FUNC_14F6_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "disabled"
		CoD.Menu.UpdateButtonShownState(registerVal8, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal8:linkToElementModel(registerVal8, "disabled", true, __FUNC_14F6_)
	local function __FUNC_16B1_(arg2, arg3)
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

	registerVal8:registerEventHandler("gain_focus", __FUNC_16B1_)
	local function __FUNC_1843_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("lose_focus", __FUNC_1843_)
	local function __FUNC_1912_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDisabled(arg0, arg2)
		if not registerVal4 then
			ProcessListAction(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_199F_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsDisabled(arg0, arg2)
		if not registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal8, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1912_, __FUNC_199F_, true)
	registerVal2:addElement(registerVal8)
	registerVal2.options = registerVal8
	local registerVal9 = CoD.BlackMarketCryptokeyContainerSmall.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 1069.850000, 1150.600000)
	registerVal9:setTopBottom(true, false, 12.000000, 40.000000)
	registerVal9:setScale(1.000000)
	local function __FUNC_1ACE_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:linkToElementModel(registerVal2, nil, false, __FUNC_1ACE_)
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "InsufficientFunds"
	local function __FUNC_1B1E_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal13.condition = __FUNC_1B1E_
	local registerVal14 = {}
	registerVal14.stateName = "ShowBalanceInsufficientFunds"
	local function __FUNC_1B69_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueGreaterThan(arg2, arg1, "cost", 0.000000)
		if registerVal3 then
			registerVal3 = IsControllerModelValueGreaterThanOrEqualToSelfModelValue(arg2, arg1, "CryptoKeyProgress.keyCount", "cost")
		end
		return (not registerVal3)
	end

	registerVal14.condition = __FUNC_1B69_
	local registerVal15 = {}
	registerVal15.stateName = "ShowBalance"
	local function __FUNC_1C72_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal15.condition = __FUNC_1C72_
	registerVal12 = {registerVal13, registerVal14, registerVal15}
	registerVal9:mergeStateConditions(registerVal12)
	local function __FUNC_1CBC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "cost"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:linkToElementModel(registerVal9, "cost", true, __FUNC_1CBC_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, "CryptoKeyProgress.keyCount")
	local function __FUNC_1DD6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CryptoKeyProgress.keyCount"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_1DD6_)
	local function __FUNC_1F04_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemCount"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:linkToElementModel(registerVal9, "itemCount", true, __FUNC_1F04_)
	registerVal2:addElement(registerVal9)
	registerVal2.BlackMarketCryptokeyContainerSmall = registerVal9
	local registerVal10 = CoD.cac_PurchasingExtraSlots.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 399.000000, 705.000000)
	registerVal10:setTopBottom(true, false, 115.000000, 211.000000)
	registerVal10:setAlpha(0.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.PurchasingWidget = registerVal10
	local registerVal11 = {}
	registerVal12 = {}
	local function __FUNC_2023_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal10:completeAnimation()
		registerVal2.PurchasingWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_2023_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_2128_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal10:completeAnimation()
		registerVal2.PurchasingWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_2128_
	registerVal11.Purchasing = registerVal12
	registerVal2.clipsPerState = registerVal11
	registerVal13 = {}
	registerVal14 = {}
	registerVal14.stateName = "Purchasing"
	local function __FUNC_222B_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal14.condition = __FUNC_222B_
	registerVal13 = {registerVal14}
	registerVal2:mergeStateConditions(registerVal13)
	registerVal8.id = "options"
	local function __FUNC_2275_(arg0, arg1)
		local registerVal2 = arg0.options:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_2275_)
	local function __FUNC_2377_(arg0)
		arg0.text:close()
		arg0.options:close()
		arg0.BlackMarketCryptokeyContainerSmall:close()
		arg0.PurchasingWidget:close()
		arg0.categoryTypeImage:close()
		arg0.title:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2377_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

