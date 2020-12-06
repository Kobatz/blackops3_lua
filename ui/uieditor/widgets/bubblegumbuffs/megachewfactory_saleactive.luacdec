-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MegaChewFactory_SaleActive = registerVal1
function CoD.MegaChewFactory_SaleActive.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MegaChewFactory_SaleActive)
	registerVal2.id = "MegaChewFactory_SaleActive"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 58.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 50.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 15.000000, 47.000000)
	registerVal3:setTopBottom(true, false, 2.000000, 24.000000)
	registerVal3:setRGB(1.000000, 0.550000, 0.550000)
	registerVal3:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal3)
	registerVal2.Label0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 9.500000, 48.500000)
	registerVal4:setTopBottom(true, false, 3.000000, 42.000000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_promo_crossout"))
	registerVal2:addElement(registerVal4)
	registerVal2.bg = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 15.000000, 47.000000)
	registerVal5:setTopBottom(true, false, 21.000000, 43.000000)
	registerVal5:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal5)
	registerVal2.codpointText = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, -14.000000, 10.000000)
	registerVal6:setTopBottom(true, false, 1.000000, 25.000000)
	registerVal6:setImage(RegisterImage("uie_t7_icon_codpoints"))
	registerVal2:addElement(registerVal6)
	registerVal2.codpointIcon = registerVal6
	local function __FUNC_B11_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(SetValueIfNumberEqualTo(-1.000000, "-", GetLDCostBeforeLootDiscount(arg1, registerVal1))))
		end
	end

	registerVal2.Label0:linkToElementModel(registerVal2, "itemCODPointCost", true, __FUNC_B11_)
	local function __FUNC_C3C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(SetValueIfNumberEqualTo(-1.000000, "-", registerVal1)))
		end
	end

	registerVal2.codpointText:linkToElementModel(registerVal2, "itemCODPointCost", true, __FUNC_C3C_)
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_D37_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.Label0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.bg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.codpointText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.codpointIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_D37_
	local function __FUNC_F36_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.Focus = __FUNC_F36_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_F96_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.Label0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.bg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.codpointText:setRGB(0.930000, 0.170000, 0.170000)
		registerVal2.codpointText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.codpointIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_F96_
	registerVal7.SaleOnInsufficientFunds = registerVal8
	registerVal8 = {}
	local function __FUNC_11D4_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.Label0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.bg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.codpointText:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.codpointText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.codpointIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_11D4_
	registerVal7.SaleOn = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "SaleOnInsufficientFunds"
	local function __FUNC_140A_(arg0, arg2, arg3)
		local registerVal3 = IsLiquidDiviniumSaleActive(arg1)
		if registerVal3 then
			registerVal3 = IsControllerModelValueGreaterThanOrEqualToSelfModelValue(arg2, arg1, "CryptoKeyProgress.codPoints", "itemCODPointCost")
		end
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_140A_
	local registerVal11 = {}
	registerVal11.stateName = "SaleOn"
	local function __FUNC_150D_(arg0, arg2, arg3)
		return IsLiquidDiviniumSaleActive(arg1)
	end

	registerVal11.condition = __FUNC_150D_
	registerVal9 = {registerVal10, registerVal11}
	registerVal2:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetGlobalModel()
	registerVal9 = Engine.GetModel(registerVal10, "autoevents.cycled")
	local function __FUNC_156C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "autoevents.cycled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_156C_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "CryptoKeyProgress.codPoints")
	local function __FUNC_1693_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CryptoKeyProgress.codPoints"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_1693_)
	local function __FUNC_17C1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemCODPointCost"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "itemCODPointCost", true, __FUNC_17C1_)
	local function __FUNC_18E6_(arg0)
		arg0.Label0:close()
		arg0.codpointText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_18E6_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

