-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GobbleGumCookbook_VialSaleActive = registerVal1
function CoD.GobbleGumCookbook_VialSaleActive.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GobbleGumCookbook_VialSaleActive)
	registerVal2.id = "GobbleGumCookbook_VialSaleActive"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 58.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 50.000000)
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 15.000000, 47.000000)
	registerVal3:setTopBottom(true, false, 2.000000, 24.000000)
	registerVal3:setRGB(1.000000, 0.550000, 0.550000)
	registerVal3:setTTF("fonts/default.ttf")
	local function __FUNC_AA3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(SetValueIfNumberEqualTo(-1.000000, "-", GetVialCostBeforeDiscount(arg1, registerVal1))))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "itemVialCost", true, __FUNC_AA3_)
	registerVal2:addElement(registerVal3)
	registerVal2.cost = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 9.500000, 48.500000)
	registerVal4:setTopBottom(true, false, 3.000000, 42.000000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_promo_crossout"))
	registerVal2:addElement(registerVal4)
	registerVal2.bg = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 15.000000, 47.000000)
	registerVal5:setTopBottom(true, false, 20.000000, 42.000000)
	registerVal5:setTTF("fonts/default.ttf")
	local function __FUNC_BCA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(SetValueIfNumberEqualTo(-1.000000, "-", registerVal1)))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "itemVialCost", true, __FUNC_BCA_)
	registerVal2:addElement(registerVal5)
	registerVal2.vialText = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, -5.750000, 19.750000)
	registerVal6:setTopBottom(true, false, 0.500000, 25.500000)
	registerVal6:setImage(RegisterImage("uie_t7_hud_zm_vial_aar_256"))
	registerVal2:addElement(registerVal6)
	registerVal2.vialIcon = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_CC3_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.cost:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.bg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.vialText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.vialIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_CC3_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_EB8_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.cost:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.bg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.vialText:setRGB(0.930000, 0.170000, 0.170000)
		registerVal2.vialText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.vialIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_EB8_
	registerVal7.SaleOnInsufficientFunds = registerVal8
	registerVal8 = {}
	local function __FUNC_10EE_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.cost:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.bg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.vialText:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.vialText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.vialIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_10EE_
	registerVal7.SaleOn = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "SaleOnInsufficientFunds"
	local function __FUNC_1318_(arg0, arg2, arg3)
		local registerVal3 = IsDistillLDSaleActive(arg1)
		if registerVal3 then
			registerVal3 = IsControllerModelValueGreaterThanOrEqualToSelfModelValue(arg2, arg1, "MegaChewTokens.remainingTokens", "itemVialCost")
			if not registerVal3 then
				registerVal3 = IsSelfModelValueGreaterThan(arg2, arg1, "itemVialCost", 0.000000)
			else
			end
		end
		return true
	end

	registerVal10.condition = __FUNC_1318_
	local registerVal11 = {}
	registerVal11.stateName = "SaleOn"
	local function __FUNC_1469_(arg0, arg2, arg3)
		local registerVal3 = IsDistillLDSaleActive(arg1)
		if registerVal3 then
			registerVal3 = IsSelfModelValueGreaterThan(arg2, arg1, "itemVialCost", 0.000000)
		end
		return registerVal3
	end

	registerVal11.condition = __FUNC_1469_
	registerVal9 = {registerVal10, registerVal11}
	registerVal2:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetGlobalModel()
	registerVal9 = Engine.GetModel(registerVal10, "autoevents.cycled")
	local function __FUNC_1523_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "autoevents.cycled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_1523_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "MegaChewTokens.remainingTokens")
	local function __FUNC_1647_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "MegaChewTokens.remainingTokens"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_1647_)
	local function __FUNC_1778_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemVialCost"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "itemVialCost", true, __FUNC_1778_)
	local function __FUNC_189A_(arg0)
		arg0.cost:close()
		arg0.vialText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_189A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

