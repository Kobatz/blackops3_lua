-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BlackMarket.BM_BribeOffertime")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_BundleOffertime = registerVal1
function CoD.BM_BundleOffertime.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_BundleOffertime)
	registerVal2.id = "BM_BundleOffertime"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 352.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 150.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.BM_BribeOffertime.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 352.000000)
	registerVal3:setTopBottom(false, true, -20.000000, 0.000000)
	local function __FUNC_1569_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.BribeOfferTime:setText(LocalizeIntoString("MPUI_BM_BRIBE_END_TIME", registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "AutoeventsBribeTimer", "autoevent_timer_bribe", __FUNC_1569_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Expired"
	local function __FUNC_1668_(arg0, arg2, arg3)
		local registerVal3 = IsBribeActive(arg1)
		if not registerVal3 then
			registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "supplyDropType", CoD.BlackMarketUtility.DropTypes.BRIBE)
		else
		end
		return true
	end

	registerVal7.condition = __FUNC_1668_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "autoevents.cycled")
	local function __FUNC_178F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "autoevents.cycled"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_178F_)
	local function __FUNC_18B3_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "supplyDropType"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:linkToElementModel(registerVal3, "supplyDropType", true, __FUNC_18B3_)
	registerVal2:addElement(registerVal3)
	registerVal2.BMBribeOfferTime = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(false, false, -176.000000, 176.000000)
	registerVal4:setTopBottom(true, false, -1.000000, 29.000000)
	registerVal4:setRGB(0.390000, 0.500000, 0.090000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setText(LocalizeToUpperString(GetFrameTitleForCurrentBribe(arg1, "MPUI_BM_BRIBE")))
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setLetterSpacing(0.500000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.Label00 = registerVal4
	local registerVal5 = CoD.BM_BribeOffertime.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 352.000000)
	registerVal5:setTopBottom(false, true, -20.000000, 0.000000)
	registerVal5:setAlpha(0.000000)
	local function __FUNC_19D4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.BribeOfferTime:setText(LocalizeIntoString("MPUI_BM_BRIBE_END_TIME", registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "AutoeventsBribeTimer", "autoevent_timer_bribe", __FUNC_19D4_)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Expired"
	local function __FUNC_1AD4_(arg0, arg2, arg3)
		local registerVal3 = IsBribeActive(arg1)
		if not registerVal3 then
			registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "supplyDropType", CoD.BlackMarketUtility.DropTypes.BRIBE)
		else
		end
		return true
	end

	registerVal9.condition = __FUNC_1AD4_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "autoevents.cycled")
	local function __FUNC_1BFB_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "autoevents.cycled"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_1BFB_)
	local function __FUNC_1D1F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "supplyDropType"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "supplyDropType", true, __FUNC_1D1F_)
	registerVal2:addElement(registerVal5)
	registerVal2.BMBribeOffertime0 = registerVal5
	registerVal6 = CoD.BM_BribeOffertime.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 0.000000, 352.000000)
	registerVal6:setTopBottom(false, true, -20.000000, 0.000000)
	registerVal6:setAlpha(0.000000)
	local function __FUNC_1E40_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.BribeOfferTime:setText(LocalizeIntoString("MPUI_BM_BRIBE_END_TIME", registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "AutoeventsBribeTimer", "autoevent_timer_trifecta_promo", __FUNC_1E40_)
	registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Expired"
	local function __FUNC_1F40_(arg0, arg2, arg3)
		local registerVal3 = IsTrifectaBundleActive(arg1)
		if not registerVal3 then
			registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "supplyDropType", CoD.BlackMarketUtility.DropTypes.TRIFECTA)
		else
		end
		return true
	end

	registerVal10.condition = __FUNC_1F40_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	local function __FUNC_2073_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "supplyDropType"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:linkToElementModel(registerVal6, "supplyDropType", true, __FUNC_2073_)
	registerVal2:addElement(registerVal6)
	registerVal2.BMTrifectaOffertime = registerVal6
	registerVal7 = CoD.BM_BribeOffertime.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 0.000000, 352.000000)
	registerVal7:setTopBottom(false, true, -20.000000, 0.000000)
	registerVal7:setAlpha(0.000000)
	local function __FUNC_2194_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.BribeOfferTime:setText(LocalizeIntoString("MPUI_BM_BRIBE_END_TIME", registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "AutoeventsBribeTimer", "autoevent_timer_lootdiscount_promo", __FUNC_2194_)
	registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Expired"
	local function __FUNC_2294_(arg0, arg2, arg3)
		local registerVal3 = IsBribeActive(arg1)
		if not registerVal3 then
			registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "supplyDropType", CoD.BlackMarketUtility.DropTypes.BRIBE)
		else
		end
		return true
	end

	registerVal11.condition = __FUNC_2294_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetGlobalModel()
	registerVal10 = Engine.GetModel(registerVal11, "autoevents.cycled")
	local function __FUNC_23BB_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "autoevents.cycled"
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:subscribeToModel(registerVal10, __FUNC_23BB_)
	local function __FUNC_24DF_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "supplyDropType"
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:linkToElementModel(registerVal7, "supplyDropType", true, __FUNC_24DF_)
	registerVal2:addElement(registerVal7)
	registerVal2.BMRareDiscountOfferTime = registerVal7
	registerVal8 = CoD.BM_BribeOffertime.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 0.000000, 352.000000)
	registerVal8:setTopBottom(false, true, -20.000000, 0.000000)
	registerVal8:setAlpha(0.000000)
	local function __FUNC_2600_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.BribeOfferTime:setText(LocalizeIntoString("MPUI_BM_BRIBE_END_TIME", registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "AutoeventsBribeTimer", "autoevent_timer_bribe", __FUNC_2600_)
	registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "Expired"
	local function __FUNC_2700_(arg0, arg2, arg3)
		local registerVal3 = IsHundredBundleActive(arg1)
		if not registerVal3 then
			registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "supplyDropType", CoD.BlackMarketUtility.DropTypes.HUNDRED_BUNDLE)
		else
		end
		return true
	end

	registerVal12.condition = __FUNC_2700_
	registerVal11 = {registerVal12}
	registerVal8:mergeStateConditions(registerVal11)
	local function __FUNC_2838_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "supplyDropType"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:linkToElementModel(registerVal8, "supplyDropType", true, __FUNC_2838_)
	registerVal2:addElement(registerVal8)
	registerVal2.BMHundredBundleOfferTime = registerVal8
	registerVal9 = CoD.BM_BribeOffertime.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 0.000000, 352.000000)
	registerVal9:setTopBottom(false, true, -20.000000, 0.000000)
	registerVal9:setAlpha(0.000000)
	local function __FUNC_295C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.BribeOfferTime:setText(LocalizeIntoString("MPUI_BM_BRIBE_END_TIME", registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "AutoeventsBribeTimer", "autoevent_timer_rare_nodupe_20bundle", __FUNC_295C_)
	registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Expired"
	local function __FUNC_2A5C_(arg0, arg2, arg3)
		local registerVal3 = IsNoDupesPromoActive(arg1)
		if not registerVal3 then
			registerVal3 = IsSelfModelValueEqualToEitherValue(arg2, arg1, "supplyDropType", CoD.BlackMarketUtility.DropTypes.NO_DUPES_CRATE, CoD.BlackMarketUtility.DropTypes.NO_DUPES_BUNDLE)
		else
		end
		return true
	end

	registerVal13.condition = __FUNC_2A5C_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	local function __FUNC_2BDF_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "supplyDropType"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:linkToElementModel(registerVal9, "supplyDropType", true, __FUNC_2BDF_)
	registerVal2:addElement(registerVal9)
	registerVal2.BMNoDupesBundleOfferTime = registerVal9
	registerVal10 = CoD.BM_BribeOffertime.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 0.000000, 352.000000)
	registerVal10:setTopBottom(false, true, -20.000000, 0.000000)
	registerVal10:setAlpha(0.000000)
	local function __FUNC_2D00_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.BribeOfferTime:setText(LocalizeIntoString("MPUI_BM_BRIBE_END_TIME", registerVal1))
		end
	end

	registerVal10:subscribeToGlobalModel(arg1, "AutoeventsBribeTimer", "autoevent_timer_grandslam", __FUNC_2D00_)
	registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "Expired"
	local function __FUNC_2E00_(arg0, arg2, arg3)
		local registerVal3 = IsTrifectaBundleActive(arg1)
		if not registerVal3 then
			registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "supplyDropType", CoD.BlackMarketUtility.DropTypes.TRIFECTA)
		else
		end
		return true
	end

	registerVal14.condition = __FUNC_2E00_
	registerVal13 = {registerVal14}
	registerVal10:mergeStateConditions(registerVal13)
	local function __FUNC_2F33_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "supplyDropType"
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:linkToElementModel(registerVal10, "supplyDropType", true, __FUNC_2F33_)
	registerVal2:addElement(registerVal10)
	registerVal2.BMGrandSlamOfferTime = registerVal10
	registerVal11 = CoD.BM_BribeOffertime.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 0.000000, 352.000000)
	registerVal11:setTopBottom(false, true, -20.000000, 0.000000)
	registerVal11:setAlpha(0.000000)
	local function __FUNC_3054_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.BribeOfferTime:setText(LocalizeIntoString("MPUI_BM_BRIBE_END_TIME", registerVal1))
		end
	end

	registerVal11:subscribeToGlobalModel(arg1, "AutoeventsBribeTimer", "autoevent_timer_rare_bundle_10for5", __FUNC_3054_)
	registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "Expired"
	local function __FUNC_3154_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "supplyDropType", CoD.BlackMarketUtility.DropTypes.HUNDRED_BUNDLE)
		if registerVal3 then
			registerVal3 = IsRareBundle10for5Active(arg1)
		end
		return (not registerVal3)
	end

	registerVal15.condition = __FUNC_3154_
	registerVal14 = {registerVal15}
	registerVal11:mergeStateConditions(registerVal14)
	local function __FUNC_3287_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "supplyDropType"
		arg0:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:linkToElementModel(registerVal11, "supplyDropType", true, __FUNC_3287_)
	registerVal2:addElement(registerVal11)
	registerVal2.BMRareBundle10for5OfferTime = registerVal11
	registerVal12 = {}
	registerVal13 = {}
	local function __FUNC_33A8_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.BMBribeOfferTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Label00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BMBribeOffertime0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BMTrifectaOffertime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BMRareDiscountOfferTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BMHundredBundleOfferTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BMNoDupesBundleOfferTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BMGrandSlamOfferTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal13.DefaultClip = __FUNC_33A8_
	registerVal12.DefaultState = registerVal13
	registerVal13 = {}
	local function __FUNC_3758_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.BMBribeOfferTime:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Label00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BMBribeOffertime0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BMTrifectaOffertime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BMRareDiscountOfferTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BMHundredBundleOfferTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BMNoDupesBundleOfferTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BMGrandSlamOfferTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal13.DefaultClip = __FUNC_3758_
	registerVal12.Bundle = registerVal13
	registerVal13 = {}
	local function __FUNC_3B0D_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.BMBribeOfferTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Label00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BMBribeOffertime0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BMTrifectaOffertime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BMRareDiscountOfferTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BMHundredBundleOfferTime:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BMNoDupesBundleOfferTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BMGrandSlamOfferTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal13.DefaultClip = __FUNC_3B0D_
	registerVal12.HundredBundle = registerVal13
	registerVal13 = {}
	local function __FUNC_3EC1_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.BMBribeOfferTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Label00:setLeftRight(false, false, -176.000000, 176.000000)
		registerVal2.Label00:setTopBottom(true, false, -14.000000, 16.000000)
		registerVal2.Label00:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BMBribeOffertime0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BMTrifectaOffertime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BMRareDiscountOfferTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BMHundredBundleOfferTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BMNoDupesBundleOfferTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BMGrandSlamOfferTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal13.DefaultClip = __FUNC_3EC1_
	registerVal12.Bribe = registerVal13
	registerVal13 = {}
	local function __FUNC_4305_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.BMBribeOfferTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Label00:setLeftRight(false, false, -176.000000, 176.000000)
		registerVal2.Label00:setTopBottom(true, false, -14.000000, 16.000000)
		registerVal2.Label00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BMBribeOffertime0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BMTrifectaOffertime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BMRareDiscountOfferTime:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BMHundredBundleOfferTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BMNoDupesBundleOfferTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BMGrandSlamOfferTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal13.DefaultClip = __FUNC_4305_
	registerVal12.RareDiscount = registerVal13
	registerVal13 = {}
	local function __FUNC_4749_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.BMBribeOfferTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Label00:setLeftRight(false, false, -176.000000, 176.000000)
		registerVal2.Label00:setTopBottom(true, false, -14.000000, 16.000000)
		registerVal2.Label00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BMBribeOffertime0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BMTrifectaOffertime:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BMRareDiscountOfferTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BMHundredBundleOfferTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BMNoDupesBundleOfferTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BMGrandSlamOfferTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal13.DefaultClip = __FUNC_4749_
	registerVal12.Trifecta = registerVal13
	registerVal13 = {}
	local function __FUNC_4B8D_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.BMBribeOfferTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Label00:setLeftRight(false, false, -176.000000, 176.000000)
		registerVal2.Label00:setTopBottom(true, false, -14.000000, 16.000000)
		registerVal2.Label00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BMBribeOffertime0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BMTrifectaOffertime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BMRareDiscountOfferTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BMHundredBundleOfferTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BMNoDupesBundleOfferTime:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BMGrandSlamOfferTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal13.DefaultClip = __FUNC_4B8D_
	registerVal12.NoDupesBundle = registerVal13
	registerVal13 = {}
	local function __FUNC_4FD1_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.BMBribeOfferTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Label00:setLeftRight(false, false, -176.000000, 176.000000)
		registerVal2.Label00:setTopBottom(true, false, -14.000000, 16.000000)
		registerVal2.Label00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BMBribeOffertime0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BMTrifectaOffertime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BMRareDiscountOfferTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BMHundredBundleOfferTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BMNoDupesBundleOfferTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BMGrandSlamOfferTime:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal13.DefaultClip = __FUNC_4FD1_
	registerVal12.GrandSlam = registerVal13
	registerVal13 = {}
	local function __FUNC_5415_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.BMBribeOfferTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Label00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BMBribeOffertime0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BMTrifectaOffertime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BMRareDiscountOfferTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BMHundredBundleOfferTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BMNoDupesBundleOfferTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BMGrandSlamOfferTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.BMRareBundle10for5OfferTime:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_5415_
	registerVal12.RareBundle10for5 = registerVal13
	registerVal2.clipsPerState = registerVal12
	registerVal14 = {}
	registerVal15 = {}
	registerVal15.stateName = "Bundle"
	local function __FUNC_5832_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "supplyDropType", CoD.BlackMarketUtility.DropTypes.BUNDLE)
		if registerVal3 then
			registerVal3 = IsBundleActive(arg1)
		end
		return registerVal3
	end

	registerVal15.condition = __FUNC_5832_
	local registerVal16 = {}
	registerVal16.stateName = "HundredBundle"
	local function __FUNC_594D_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "supplyDropType", CoD.BlackMarketUtility.DropTypes.HUNDRED_BUNDLE)
		if registerVal3 then
			registerVal3 = IsHundredBundleActive(arg1)
		end
		return registerVal3
	end

	registerVal16.condition = __FUNC_594D_
	local registerVal17 = {}
	registerVal17.stateName = "Bribe"
	local function __FUNC_5A78_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "supplyDropType", CoD.BlackMarketUtility.DropTypes.BRIBE)
	end

	registerVal17.condition = __FUNC_5A78_
	local registerVal18 = {}
	registerVal18.stateName = "RareDiscount"
	local function __FUNC_5B68_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "supplyDropType", CoD.BlackMarketUtility.DropTypes.RARE)
		if registerVal3 then
			registerVal3 = IsLootSaleActive(arg1)
		end
		return registerVal3
	end

	registerVal18.condition = __FUNC_5B68_
	local registerVal19 = {}
	registerVal19.stateName = "Trifecta"
	local function __FUNC_5C85_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "supplyDropType", CoD.BlackMarketUtility.DropTypes.TRIFECTA)
	end

	registerVal19.condition = __FUNC_5C85_
	local registerVal20 = {}
	registerVal20.stateName = "NoDupesBundle"
	local function __FUNC_5D77_(arg0, arg2, arg3)
		return IsSelfModelValueEqualToEitherValue(arg2, arg1, "supplyDropType", CoD.BlackMarketUtility.DropTypes.NO_DUPES_CRATE, CoD.BlackMarketUtility.DropTypes.NO_DUPES_BUNDLE)
	end

	registerVal20.condition = __FUNC_5D77_
	local registerVal21 = {}
	registerVal21.stateName = "GrandSlam"
	local function __FUNC_5EB9_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "supplyDropType", CoD.BlackMarketUtility.DropTypes.GRAND_SLAM)
	end

	registerVal21.condition = __FUNC_5EB9_
	local registerVal22 = {}
	registerVal22.stateName = "RareBundle10for5"
	local function __FUNC_5FAD_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "supplyDropType", CoD.BlackMarketUtility.DropTypes.RARE_BUNDLE_10FOR5)
		if registerVal3 then
			registerVal3 = IsRareBundle10for5Active(arg1)
		end
		return registerVal3
	end

	registerVal22.condition = __FUNC_5FAD_
	registerVal14 = {registerVal15, registerVal16, registerVal17, registerVal18, registerVal19, registerVal20, registerVal21, registerVal22}
	registerVal2:mergeStateConditions(registerVal14)
	local function __FUNC_60DF_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "supplyDropType"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "supplyDropType", true, __FUNC_60DF_)
	local function __FUNC_6200_(arg0)
		arg0.BMBribeOfferTime:close()
		arg0.BMBribeOffertime0:close()
		arg0.BMTrifectaOffertime:close()
		arg0.BMRareDiscountOfferTime:close()
		arg0.BMHundredBundleOfferTime:close()
		arg0.BMNoDupesBundleOfferTime:close()
		arg0.BMGrandSlamOfferTime:close()
		arg0.BMRareBundle10for5OfferTime:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_6200_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

