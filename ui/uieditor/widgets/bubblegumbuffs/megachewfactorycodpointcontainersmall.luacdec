-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MegaChewFactoryCODPointContainerSmall = registerVal1
function CoD.MegaChewFactoryCODPointContainerSmall.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MegaChewFactoryCODPointContainerSmall)
	registerVal2.id = "MegaChewFactoryCODPointContainerSmall"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 79.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 28.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 1.000000, 25.000000)
	registerVal3:setTopBottom(true, false, 2.000000, 26.000000)
	registerVal3:setImage(RegisterImage("uie_t7_icon_codpoints"))
	registerVal2:addElement(registerVal3)
	registerVal2.codpointIcon = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 28.000000, 78.000000)
	registerVal4:setTopBottom(true, false, 3.000000, 25.000000)
	registerVal4:setTTF("fonts/default.ttf")
	local function __FUNC_A9C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(SetValueIfNumberEqualTo(-1.000000, "-", registerVal1)))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "itemCODPointCost", true, __FUNC_A9C_)
	registerVal2:addElement(registerVal4)
	registerVal2.codpointText = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 27.000000, 77.000000)
	registerVal5:setTopBottom(true, false, 3.000000, 25.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setTTF("fonts/default.ttf")
	local function __FUNC_B97_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(SetValueIfNumberEqualTo(-1.000000, "-", registerVal1)))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "CryptoKeyProgress", "codPoints", __FUNC_B97_)
	registerVal2:addElement(registerVal5)
	registerVal2.codpointBalance = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_C8F_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.codpointIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.codpointText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal7.DefaultClip = __FUNC_C8F_
	registerVal6.HiddenForLootSale = registerVal7
	registerVal7 = {}
	local function __FUNC_DEA_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.codpointIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.codpointText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal7.DefaultClip = __FUNC_DEA_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_F46_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.codpointIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.codpointText:setRGB(0.930000, 0.170000, 0.170000)
		registerVal2.codpointText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.codpointBalance:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_F46_
	registerVal6.ShownInsufficientFunds = registerVal7
	registerVal7 = {}
	local function __FUNC_1142_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.codpointIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.codpointText:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.codpointText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.codpointBalance:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1142_
	registerVal6.Shown = registerVal7
	registerVal7 = {}
	local function __FUNC_1334_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.codpointIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.codpointText:setRGB(0.930000, 0.170000, 0.170000)
		registerVal2.codpointText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.codpointBalance:setRGB(0.930000, 0.170000, 0.170000)
		registerVal2.codpointBalance:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1334_
	registerVal6.BalanceShownInsufficientFunds = registerVal7
	registerVal7 = {}
	local function __FUNC_1556_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.codpointIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.codpointText:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.codpointText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.codpointBalance:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1556_
	registerVal6.BalanceShown = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "HiddenForLootSale"
	local function __FUNC_1748_(arg0, arg2, arg3)
		local registerVal3 = IsLootSaleActive(arg1)
		if registerVal3 then
			registerVal3 = IsSelfModelValueGreaterThan(arg2, arg1, "itemCODPointCost", 0.000000)
		end
		return registerVal3
	end

	registerVal9.condition = __FUNC_1748_
	local registerVal10 = {}
	registerVal10.stateName = "ShownInsufficientFunds"
	local function __FUNC_1802_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueGreaterThan(arg2, arg1, "itemCODPointCost", 0.000000)
		if registerVal3 then
			registerVal3 = IsControllerModelValueGreaterThanOrEqualToSelfModelValue(arg2, arg1, "CryptoKeyProgress.codPoints", "itemCODPointCost")
		end
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_1802_
	local registerVal11 = {}
	registerVal11.stateName = "Shown"
	local function __FUNC_1917_(arg0, arg2, arg3)
		return IsSelfModelValueGreaterThan(arg2, arg1, "itemCODPointCost", 0.000000)
	end

	registerVal11.condition = __FUNC_1917_
	local registerVal12 = {}
	registerVal12.stateName = "BalanceShownInsufficientFunds"
	local function __FUNC_19A0_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueGreaterThan(arg2, arg1, "itemCODPointCost", 0.000000)
		if registerVal3 then
			registerVal3 = IsControllerModelValueGreaterThanOrEqualToSelfModelValue(arg2, arg1, "CryptoKeyProgress.codPoints", "itemCODPointCost")
		end
		return (not registerVal3)
	end

	registerVal12.condition = __FUNC_19A0_
	local registerVal13 = {}
	registerVal13.stateName = "BalanceShown"
	local function __FUNC_1AB7_(arg0, arg2, arg3)
		return IsSelfModelValueGreaterThan(arg2, arg1, "itemCODPointCost", 0.000000)
	end

	registerVal13.condition = __FUNC_1AB7_
	registerVal8 = {registerVal9, registerVal10, registerVal11, registerVal12, registerVal13}
	registerVal2:mergeStateConditions(registerVal8)
	local function __FUNC_1B40_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemCODPointCost"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "itemCODPointCost", true, __FUNC_1B40_)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "CryptoKeyProgress.codPoints")
	local function __FUNC_1C66_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CryptoKeyProgress.codPoints"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_1C66_)
	local function __FUNC_1D95_(arg0)
		arg0.codpointText:close()
		arg0.codpointBalance:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1D95_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

