-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_SaleActive = registerVal1
function CoD.BM_SaleActive.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_SaleActive)
	registerVal2.id = "BM_SaleActive"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 58.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 50.000000)
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 15.000000, 47.000000)
	registerVal3:setTopBottom(true, false, 2.000000, 24.000000)
	registerVal3:setRGB(1.000000, 0.550000, 0.550000)
	registerVal3:setTTF("fonts/default.ttf")
	local function __FUNC_8D2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(SetValueIfNumberEqualTo(-1.000000, "-", GetCostBeforeLootDiscount(arg1, registerVal1))))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "itemCODPointCost", true, __FUNC_8D2_)
	registerVal2:addElement(registerVal3)
	registerVal2.Label0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 9.500000, 80.500000)
	registerVal4:setTopBottom(true, false, -3.000000, 28.000000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_promo_crossout_hori"))
	registerVal2:addElement(registerVal4)
	registerVal2.bg = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 47.000000, 79.000000)
	registerVal5:setTopBottom(true, false, 2.000000, 24.000000)
	registerVal5:setTTF("fonts/default.ttf")
	local function __FUNC_9FA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(SetValueIfNumberEqualTo(-1.000000, "-", registerVal1)))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "itemCODPointCost", true, __FUNC_9FA_)
	registerVal2:addElement(registerVal5)
	registerVal2.codpointText = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, -14.000000, 10.000000)
	registerVal6:setTopBottom(true, false, 1.000000, 25.000000)
	registerVal6:setImage(RegisterImage("uie_t7_icon_codpoints"))
	registerVal2:addElement(registerVal6)
	registerVal2.codpointIcon = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_AF3_()
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

	registerVal8.DefaultClip = __FUNC_AF3_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_CF2_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.Label0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.bg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.codpointText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.codpointIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_CF2_
	registerVal7.SaleOn = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "SaleOn"
	local function __FUNC_EF2_(arg0, arg2, arg3)
		return IsLootSaleActive(arg1)
	end

	registerVal10.condition = __FUNC_EF2_
	registerVal9 = {registerVal10}
	registerVal2:mergeStateConditions(registerVal9)
	local function __FUNC_F46_(arg0)
		arg0.Label0:close()
		arg0.codpointText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_F46_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

