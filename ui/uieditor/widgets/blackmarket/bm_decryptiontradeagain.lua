-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_DecryptionTradeAgain = registerVal1
function CoD.BM_DecryptionTradeAgain.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_DecryptionTradeAgain)
	registerVal2.id = "BM_DecryptionTradeAgain"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 109.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 17.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 109.210000)
	registerVal3:setTopBottom(true, false, 0.000000, 17.000000)
	registerVal3:setRGB(0.690000, 0.900000, 0.800000)
	registerVal3:setScale(0.900000)
	registerVal3:setText(LocalizeToUpperString("MPUI_BM_TRADE_AGAIN"))
	registerVal3:setTTF("fonts/escom.ttf")
	registerVal3:setLineSpacing(1.000000)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.tradeAgainText = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_949_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.tradeAgainText:setText(LocalizeToUpperString("MPUI_BM_BRIBE"))
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_949_
	registerVal4.Bribe = registerVal5
	registerVal5 = {}
	local function __FUNC_A86_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.tradeAgainText:setText(LocalizeToUpperString("MPUI_BM_BRIBE"))
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_A86_
	registerVal4.GenericReward = registerVal5
	registerVal5 = {}
	local function __FUNC_BC2_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.tradeAgainText:setText(LocalizeToUpperString("MPUI_BM_BRIBE"))
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_BC2_
	registerVal4.GrandSlamReward = registerVal5
	registerVal5 = {}
	local function __FUNC_CFE_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.tradeAgainText:setText(LocalizeToUpperString("MPUI_BM_BUNDLE"))
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_CFE_
	registerVal4.PurchaseBundle = registerVal5
	registerVal5 = {}
	local function __FUNC_E3B_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.tradeAgainText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_E3B_
	local function __FUNC_F39_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.tradeAgainText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.Rolling = __FUNC_F39_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_103E_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.tradeAgainText:setText(LocalizeToUpperString("MPUI_BM_BUNDLE"))
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_103E_
	registerVal4.Bundle = registerVal5
	registerVal5 = {}
	local function __FUNC_117B_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.tradeAgainText:setText(LocalizeToUpperString("MPUI_BM_TRADE_AGAIN"))
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_117B_
	registerVal4.TradeAgain = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Bribe"
	local function __FUNC_12BC_(arg0, arg2, arg3)
		return IsPerControllerTablePropertyValue(arg1, "supplyDropType", CoD.BlackMarketUtility.DropTypes.INCENTIVE_WEAPON_BUNDLE)
	end

	registerVal7.condition = __FUNC_12BC_
	local registerVal8 = {}
	registerVal8.stateName = "GenericReward"
	local function __FUNC_13C4_(arg0, arg2, arg3)
		return IsDecryptionCrateGenericReward(registerVal2, arg2, arg1)
	end

	registerVal8.condition = __FUNC_13C4_
	local registerVal9 = {}
	registerVal9.stateName = "GrandSlamReward"
	local function __FUNC_1430_(arg0, arg2, arg3)
		return IsGrandSlamReward(arg1)
	end

	registerVal9.condition = __FUNC_1430_
	local registerVal10 = {}
	registerVal10.stateName = "PurchaseBundle"
	local function __FUNC_1487_(arg0, arg2, arg3)
		local registerVal3 = IsPerControllerTablePropertyEnumValue(arg1, "currencySpent", Enum.InventoryCurrency.INVENTORY_CURRENCY_MP_BUNDLE_ITEM)
		if registerVal3 then
			registerVal3 = IsModelValueEqualTo(arg1, "CryptoKeyProgress.bundles", 0.000000)
		end
		return registerVal3
	end

	registerVal10.condition = __FUNC_1487_
	local registerVal11 = {}
	registerVal11.stateName = "Bundle"
	local function __FUNC_15DB_(arg0, arg2, arg3)
		return IsPerControllerTablePropertyEnumValue(arg1, "currencySpent", Enum.InventoryCurrency.INVENTORY_CURRENCY_MP_BUNDLE_ITEM)
	end

	registerVal11.condition = __FUNC_15DB_
	local registerVal12 = {}
	registerVal12.stateName = "TradeAgain"
	local function __FUNC_16CE_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal12.condition = __FUNC_16CE_
	registerVal6 = {registerVal7, registerVal8, registerVal9, registerVal10, registerVal11, registerVal12}
	registerVal2:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "CryptoKeyProgress.bundles")
	local function __FUNC_1718_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CryptoKeyProgress.bundles"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_1718_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

