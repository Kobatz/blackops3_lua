-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GobbleGumCookbookVialContainerSmall = registerVal1
function CoD.GobbleGumCookbookVialContainerSmall.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GobbleGumCookbookVialContainerSmall)
	registerVal2.id = "GobbleGumCookbookVialContainerSmall"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 79.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 28.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 25.000000)
	registerVal3:setTopBottom(false, false, -12.500000, 12.500000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_zm_vial_aar_256"))
	registerVal2:addElement(registerVal3)
	registerVal2.vialIcon = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 20.750000, 70.750000)
	registerVal4:setTopBottom(false, false, -11.000000, 11.000000)
	registerVal4:setTTF("fonts/default.ttf")
	local function __FUNC_94A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(SetValueIfNumberEqualTo(-1.000000, "-", registerVal1)))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "itemVialCost", true, __FUNC_94A_)
	registerVal2:addElement(registerVal4)
	registerVal2.vialText = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_A43_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.vialIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.vialText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_A43_
	registerVal5.HiddenForLootSale = registerVal6
	registerVal6 = {}
	local function __FUNC_B96_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.vialIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.vialText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_B96_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_CEA_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.vialIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.vialText:setRGB(0.930000, 0.170000, 0.170000)
		registerVal2.vialText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_CEA_
	registerVal5.ShownInsufficientFunds = registerVal6
	registerVal6 = {}
	local function __FUNC_E7C_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.vialIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.vialText:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.vialText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_E7C_
	registerVal5.Shown = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "HiddenForLootSale"
	local function __FUNC_1006_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueGreaterThan(arg2, arg1, "itemVialCost", 0.000000)
		if registerVal3 then
			registerVal3 = IsDistillLDSaleActive(arg1)
		end
		return registerVal3
	end

	registerVal8.condition = __FUNC_1006_
	local registerVal9 = {}
	registerVal9.stateName = "ShownInsufficientFunds"
	local function __FUNC_10BF_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueGreaterThan(arg2, arg1, "itemVialCost", 0.000000)
		if registerVal3 then
			registerVal3 = IsControllerModelValueGreaterThanOrEqualToSelfModelValue(arg2, arg1, "MegaChewTokens.remainingTokens", "itemVialCost")
		end
		return (not registerVal3)
	end

	registerVal9.condition = __FUNC_10BF_
	local registerVal10 = {}
	registerVal10.stateName = "Shown"
	local function __FUNC_11D2_(arg0, arg2, arg3)
		return IsSelfModelValueGreaterThan(arg2, arg1, "itemVialCost", 0.000000)
	end

	registerVal10.condition = __FUNC_11D2_
	registerVal7 = {registerVal8, registerVal9, registerVal10}
	registerVal2:mergeStateConditions(registerVal7)
	local function __FUNC_1258_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemVialCost"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "itemVialCost", true, __FUNC_1258_)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "autoevents.cycled")
	local function __FUNC_137A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "autoevents.cycled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_137A_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "MegaChewTokens.remainingTokens")
	local function __FUNC_149F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "MegaChewTokens.remainingTokens"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_149F_)
	local function __FUNC_15D0_(arg0)
		arg0.vialText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_15D0_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

