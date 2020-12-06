-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.BubbleGumBuffs.MegaChewFactoryCODPointContainerSmall")
require("ui.uieditor.widgets.ZMPromotional.Zm_BGB_LiquidDivGlow")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveStroke")
require("ui.uieditor.widgets.BubbleGumBuffs.MegaChewFactory_SaleActive")
require("ui.uieditor.widgets.BlackMarket.BlackMarketCryptokeyContainerSmall")
require("ui.uieditor.widgets.ZM_ExpiresIn")
require("ui.uieditor.widgets.ZMPromotional.ZM_Promo_Ribbon")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BGB_PurchaseLiquidDiviniumWidget = registerVal1
function CoD.BGB_PurchaseLiquidDiviniumWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BGB_PurchaseLiquidDiviniumWidget)
	registerVal2.id = "BGB_PurchaseLiquidDiviniumWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 160.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 190.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 160.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 190.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.400000)
	registerVal2:addElement(registerVal3)
	registerVal2.background = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 6.140000, 153.860000)
	registerVal4:setTopBottom(true, false, 13.700000, 33.280000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.500000)
	registerVal2:addElement(registerVal4)
	registerVal2.BlackBox0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 6.140000, 153.860000)
	registerVal5:setTopBottom(true, false, 147.420000, 181.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.500000)
	registerVal2:addElement(registerVal5)
	registerVal2.BlackBox = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 6.140000, 153.860000)
	registerVal6:setTopBottom(true, false, 28.280000, 176.000000)
	local function __FUNC_19DA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "image", true, __FUNC_19DA_)
	registerVal2:addElement(registerVal6)
	registerVal2.Icon = registerVal6
	local registerVal7 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, -2.000000, 162.000000)
	registerVal7:setTopBottom(true, false, 186.000000, 194.000000)
	registerVal7:setAlpha(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.FEFocusBarContainerBottom = registerVal7
	local registerVal8 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, -2.000000, 162.000000)
	registerVal8:setTopBottom(true, false, -4.000000, 4.000000)
	registerVal8:setAlpha(0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.FEFocusBarContainerTop = registerVal8
	local registerVal9 = CoD.MegaChewFactoryCODPointContainerSmall.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 11.500000, 90.500000)
	registerVal9:setTopBottom(true, false, 9.280000, 37.280000)
	local function __FUNC_1A8C_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:linkToElementModel(registerVal2, nil, false, __FUNC_1A8C_)
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "HiddenForLootSale"
	local function __FUNC_1ADE_(arg0, arg2, arg3)
		return IsLiquidDiviniumSaleActive(arg1)
	end

	registerVal13.condition = __FUNC_1ADE_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal13 = Engine.GetGlobalModel()
	registerVal12 = Engine.GetModel(registerVal13, "autoevents.cycled")
	local function __FUNC_1B3C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "autoevents.cycled"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_1B3C_)
	local function __FUNC_1C63_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemCODPointCost"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:linkToElementModel(registerVal9, "itemCODPointCost", true, __FUNC_1C63_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, "CryptoKeyProgress.codPoints")
	local function __FUNC_1D86_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CryptoKeyProgress.codPoints"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_1D86_)
	registerVal2:addElement(registerVal9)
	registerVal2.MegaChewFactoryCODPointContainerSmall0 = registerVal9
	local registerVal10 = LUI.UITightText.new()
	registerVal10:setLeftRight(true, false, 8.500000, 208.500000)
	registerVal10:setTopBottom(true, false, 143.720000, 188.720000)
	registerVal10:setRGB(1.000000, 0.770000, 0.000000)
	registerVal10:setAlpha(0.850000)
	registerVal10:setTTF("fonts/FoundryGridnik-Bold.ttf")
	local function __FUNC_1EB5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setText(LocalizeIntoString("MENU_MULTIPLIER_X", registerVal1))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "vials", true, __FUNC_1EB5_)
	registerVal2:addElement(registerVal10)
	registerVal2.Label0 = registerVal10
	local registerVal11 = CoD.Zm_BGB_LiquidDivGlow.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 23.710000, 136.290000)
	registerVal11:setTopBottom(true, false, 69.960000, 170.000000)
	registerVal11:setAlpha(0.500000)
	registerVal2:addElement(registerVal11)
	registerVal2.ZmBGBLiquidDivGlow = registerVal11
	registerVal12 = CoD.cac_ButtonBoxLrgInactiveStroke.new(arg0, arg1)
	registerVal12:setLeftRight(true, true, -2.000000, 2.770000)
	registerVal12:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.cacButtonBoxLrgInactiveStroke0 = registerVal12
	registerVal13 = CoD.MegaChewFactory_SaleActive.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 26.180000, 84.180000)
	registerVal13:setTopBottom(true, false, 10.280000, 60.280000)
	local function __FUNC_1F8B_(arg0)
		registerVal13:setModel(arg0, arg1)
	end

	registerVal13:linkToElementModel(registerVal2, nil, false, __FUNC_1F8B_)
	registerVal2:addElement(registerVal13)
	registerVal2.MegaChewFactorySaleActive0 = registerVal13
	local registerVal14 = CoD.BlackMarketCryptokeyContainerSmall.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 105.500000, 174.500000)
	registerVal14:setTopBottom(true, false, 9.780000, 36.780000)
	registerVal14:setAlpha(0.000000)
	local function __FUNC_1FDA_(arg0)
		registerVal14:setModel(arg0, arg1)
	end

	registerVal14:linkToElementModel(registerVal2, nil, false, __FUNC_1FDA_)
	registerVal2:addElement(registerVal14)
	registerVal2.BlackMarketCryptokeyContainerSmall = registerVal14
	local registerVal15 = CoD.ZM_ExpiresIn.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 6.140000, 171.000000)
	registerVal15:setTopBottom(true, false, 146.690000, 198.690000)
	registerVal15:setAlpha(0.000000)
	local function __FUNC_202A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15.Text:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal15:subscribeToGlobalModel(arg1, "AutoeventsBribeTimer", "autoevent_timer_vialsfromkeys", __FUNC_202A_)
	registerVal2:addElement(registerVal15)
	registerVal2.ZMExpiresIn = registerVal15
	local registerVal16 = CoD.ZM_Promo_Ribbon.new(arg0, arg1)
	registerVal16:setLeftRight(false, true, -160.000000, 11.000000)
	registerVal16:setTopBottom(true, false, 115.980000, 150.980000)
	local function __FUNC_20FC_(arg0)
		registerVal16:setModel(arg0, arg1)
	end

	registerVal16:linkToElementModel(registerVal2, nil, false, __FUNC_20FC_)
	local function __FUNC_214E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16.Text:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal16:linkToElementModel(registerVal2, "ribbonText", true, __FUNC_214E_)
	local registerVal19 = {}
	local registerVal20 = {}
	registerVal20.stateName = "Visible"
	local function __FUNC_2220_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "showRibbon")
	end

	registerVal20.condition = __FUNC_2220_
	registerVal19 = {registerVal20}
	registerVal16:mergeStateConditions(registerVal19)
	local function __FUNC_2296_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "showRibbon"
		arg0:updateElementState(registerVal16, registerVal4)
	end

	registerVal16:linkToElementModel(registerVal16, "showRibbon", true, __FUNC_2296_)
	registerVal2:addElement(registerVal16)
	registerVal2.ZMPromoRibbon = registerVal16
	local function __FUNC_23B4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.Label0:setText(Engine.Localize(SetValueIfNumberEqualTo(-1.000000, "-", GetLDCostBeforeLootDiscount(arg1, registerVal1))))
		end
	end

	registerVal2.MegaChewFactorySaleActive0:linkToElementModel(registerVal2, "itemCODPointCost", true, __FUNC_23B4_)
	local function __FUNC_24FC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.codpointText:setText(Engine.Localize(SetValueIfNumberEqualTo(-1.000000, "-", registerVal1)))
		end
	end

	registerVal2.MegaChewFactorySaleActive0:linkToElementModel(registerVal2, "itemCODPointCost", true, __FUNC_24FC_)
	local registerVal17 = {}
	registerVal17.up = registerVal13
	registerVal11.navigation = registerVal17
	registerVal17 = {}
	registerVal17.down = registerVal11
	registerVal13.navigation = registerVal17
	registerVal17 = {}
	local registerVal18 = {}
	local function __FUNC_2619_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.BlackBox:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Icon:setRGB(0.710000, 0.710000, 0.710000)
		registerVal2.Icon:setScale(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEFocusBarContainerBottom:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FEFocusBarContainerTop:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.MegaChewFactoryCODPointContainerSmall0:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Label0:setLeftRight(true, false, 8.500000, 208.500000)
		registerVal2.Label0:setTopBottom(true, false, 143.720000, 188.720000)
		registerVal2.Label0:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ZmBGBLiquidDivGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.MegaChewFactorySaleActive0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.BlackMarketCryptokeyContainerSmall:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.ZMExpiresIn:setLeftRight(true, false, 6.140000, 171.000000)
		registerVal2.ZMExpiresIn:setTopBottom(true, false, 146.690000, 198.690000)
		registerVal2.ZMExpiresIn:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.DefaultClip = __FUNC_2619_
	local function __FUNC_2C3E_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_3206_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.550000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.BlackBox:setAlpha(0.100000)
		__FUNC_3206_(registerVal5, {})
		local function __FUNC_33B9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.050000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Icon:setRGB(0.710000, 0.710000, 0.710000)
		registerVal2.Icon:setAlpha(1.000000)
		registerVal2.Icon:setScale(1.000000)
		__FUNC_33B9_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEFocusBarContainerBottom:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FEFocusBarContainerTop:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_35B4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.MegaChewFactoryCODPointContainerSmall0:setAlpha(0.700000)
		__FUNC_35B4_(registerVal9, {})
		local function __FUNC_3769_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 8.500000, 208.500000)
			arg0:setTopBottom(true, false, 143.720000, 188.720000)
			arg0:setAlpha(0.850000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.Label0:setLeftRight(true, false, 8.500000, 208.500000)
		registerVal2.Label0:setTopBottom(true, false, 143.720000, 188.720000)
		registerVal2.Label0:setAlpha(0.500000)
		__FUNC_3769_(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ZmBGBLiquidDivGlow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal14:completeAnimation()
		registerVal2.BlackMarketCryptokeyContainerSmall:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.ZMExpiresIn:setLeftRight(true, false, 6.140000, 171.000000)
		registerVal2.ZMExpiresIn:setTopBottom(true, false, 146.690000, 198.690000)
		registerVal2.ZMExpiresIn:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.Focus = __FUNC_2C3E_
	registerVal17.DefaultState = registerVal18
	registerVal18 = {}
	local function __FUNC_398D_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.BlackBox:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Icon:setRGB(0.710000, 0.710000, 0.710000)
		registerVal2.Icon:setScale(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEFocusBarContainerBottom:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FEFocusBarContainerTop:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.MegaChewFactoryCODPointContainerSmall0:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Label0:setLeftRight(true, false, 8.500000, 208.500000)
		registerVal2.Label0:setTopBottom(true, false, 143.720000, 188.720000)
		registerVal2.Label0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ZmBGBLiquidDivGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.MegaChewFactorySaleActive0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.BlackMarketCryptokeyContainerSmall:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.ZMExpiresIn:setLeftRight(true, false, 6.140000, 171.000000)
		registerVal2.ZMExpiresIn:setTopBottom(true, false, 146.690000, 198.690000)
		registerVal2.ZMExpiresIn:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.DefaultClip = __FUNC_398D_
	local function __FUNC_3FAD_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_4511_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.550000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.BlackBox:setAlpha(0.100000)
		__FUNC_4511_(registerVal5, {})
		local function __FUNC_46C5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.050000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Icon:setRGB(0.710000, 0.710000, 0.710000)
		registerVal2.Icon:setAlpha(1.000000)
		registerVal2.Icon:setScale(1.000000)
		__FUNC_46C5_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEFocusBarContainerBottom:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FEFocusBarContainerTop:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_48C0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.MegaChewFactoryCODPointContainerSmall0:setAlpha(0.700000)
		__FUNC_48C0_(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Label0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ZmBGBLiquidDivGlow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal14:completeAnimation()
		registerVal2.BlackMarketCryptokeyContainerSmall:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.ZMExpiresIn:setLeftRight(true, false, 6.140000, 171.000000)
		registerVal2.ZMExpiresIn:setTopBottom(true, false, 146.690000, 198.690000)
		registerVal2.ZMExpiresIn:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.Focus = __FUNC_3FAD_
	registerVal17.NoVials = registerVal18
	registerVal18 = {}
	local function __FUNC_4A75_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.BlackBox:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Icon:setRGB(0.710000, 0.710000, 0.710000)
		registerVal2.Icon:setScale(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEFocusBarContainerBottom:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FEFocusBarContainerTop:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.MegaChewFactoryCODPointContainerSmall0:setLeftRight(true, false, 11.500000, 90.500000)
		registerVal2.MegaChewFactoryCODPointContainerSmall0:setTopBottom(true, false, 9.280000, 37.280000)
		registerVal2.MegaChewFactoryCODPointContainerSmall0:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Label0:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ZmBGBLiquidDivGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.MegaChewFactorySaleActive0:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.BlackMarketCryptokeyContainerSmall:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.ZMExpiresIn:setLeftRight(true, false, 6.140000, 171.000000)
		registerVal2.ZMExpiresIn:setTopBottom(true, false, 146.690000, 198.690000)
		registerVal2.ZMExpiresIn:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.DefaultClip = __FUNC_4A75_
	local function __FUNC_509A_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_565E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.550000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.BlackBox:setAlpha(0.100000)
		__FUNC_565E_(registerVal5, {})
		local function __FUNC_5811_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.050000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Icon:setRGB(0.710000, 0.710000, 0.710000)
		registerVal2.Icon:setAlpha(1.000000)
		registerVal2.Icon:setScale(1.000000)
		__FUNC_5811_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEFocusBarContainerBottom:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FEFocusBarContainerTop:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_5A0C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.MegaChewFactoryCODPointContainerSmall0:setAlpha(0.700000)
		__FUNC_5A0C_(registerVal9, {})
		local function __FUNC_5BC1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.850000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.Label0:setAlpha(0.500000)
		__FUNC_5BC1_(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ZmBGBLiquidDivGlow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		local function __FUNC_5D75_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.MegaChewFactorySaleActive0:setAlpha(0.700000)
		__FUNC_5D75_(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.BlackMarketCryptokeyContainerSmall:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		local function __FUNC_5F29_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 6.140000, 171.000000)
			arg0:setTopBottom(true, false, 146.690000, 198.690000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.ZMExpiresIn:setLeftRight(true, false, 6.140000, 171.000000)
		registerVal2.ZMExpiresIn:setTopBottom(true, false, 146.690000, 198.690000)
		registerVal2.ZMExpiresIn:setAlpha(0.000000)
		__FUNC_5F29_(registerVal15, {})
	end

	registerVal18.Focus = __FUNC_509A_
	registerVal17.SaleActive = registerVal18
	registerVal18 = {}
	local function __FUNC_614D_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.BlackBox:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Icon:setRGB(0.710000, 0.710000, 0.710000)
		registerVal2.Icon:setScale(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEFocusBarContainerBottom:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FEFocusBarContainerTop:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.MegaChewFactoryCODPointContainerSmall0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Label0:setLeftRight(true, false, 8.500000, 208.500000)
		registerVal2.Label0:setTopBottom(true, false, 124.720000, 169.720000)
		registerVal2.Label0:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ZmBGBLiquidDivGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.MegaChewFactorySaleActive0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.BlackMarketCryptokeyContainerSmall:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal15.Text:completeAnimation()
		registerVal2.ZMExpiresIn:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.DefaultClip = __FUNC_614D_
	local function __FUNC_672F_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_6CF5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.550000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.BlackBox:setAlpha(0.100000)
		__FUNC_6CF5_(registerVal5, {})
		local function __FUNC_6EA9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.050000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Icon:setRGB(0.710000, 0.710000, 0.710000)
		registerVal2.Icon:setAlpha(1.000000)
		registerVal2.Icon:setScale(1.000000)
		__FUNC_6EA9_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEFocusBarContainerBottom:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FEFocusBarContainerTop:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_70A4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.MegaChewFactoryCODPointContainerSmall0:setAlpha(0.000000)
		__FUNC_70A4_(registerVal9, {})
		local function __FUNC_7259_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 8.500000, 208.500000)
			arg0:setTopBottom(true, false, 124.720000, 169.720000)
			arg0:setAlpha(0.850000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.Label0:setLeftRight(true, false, 8.500000, 208.500000)
		registerVal2.Label0:setTopBottom(true, false, 124.720000, 169.720000)
		registerVal2.Label0:setAlpha(0.500000)
		__FUNC_7259_(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ZmBGBLiquidDivGlow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.MegaChewFactorySaleActive0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.BlackMarketCryptokeyContainerSmall:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.ZMExpiresIn:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.Focus = __FUNC_672F_
	registerVal17.DiviniumOffer = registerVal18
	registerVal2.clipsPerState = registerVal17
	registerVal19 = {}
	registerVal20 = {}
	registerVal20.stateName = "NoVials"
	local function __FUNC_747D_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "vials", 0.000000)
	end

	registerVal20.condition = __FUNC_747D_
	local registerVal21 = {}
	registerVal21.stateName = "SaleActive"
	local function __FUNC_74F9_(arg0, arg2, arg3)
		return IsLiquidDiviniumSaleActive(arg1)
	end

	registerVal21.condition = __FUNC_74F9_
	local registerVal22 = {}
	registerVal22.stateName = "DiviniumOffer"
	local function __FUNC_7558_(arg0, arg2, arg3)
		return IsSelfModelValueGreaterThan(arg2, arg1, "itemCost", 0.000000)
	end

	registerVal22.condition = __FUNC_7558_
	registerVal19 = {registerVal20, registerVal21, registerVal22}
	registerVal2:mergeStateConditions(registerVal19)
	local function __FUNC_75DC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "vials"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "vials", true, __FUNC_75DC_)
	registerVal20 = Engine.GetGlobalModel()
	registerVal19 = Engine.GetModel(registerVal20, "autoevents.cycled")
	local function __FUNC_76F7_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "autoevents.cycled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal19, __FUNC_76F7_)
	local function __FUNC_781B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemCost"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "itemCost", true, __FUNC_781B_)
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal11.id = "ZmBGBLiquidDivGlow"
	registerVal13.id = "MegaChewFactorySaleActive0"
	local function __FUNC_7936_(arg0, arg1)
		local registerVal2 = arg0.ZmBGBLiquidDivGlow:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_7936_)
	local function __FUNC_7A42_(arg0)
		arg0.FEFocusBarContainerBottom:close()
		arg0.FEFocusBarContainerTop:close()
		arg0.MegaChewFactoryCODPointContainerSmall0:close()
		arg0.ZmBGBLiquidDivGlow:close()
		arg0.cacButtonBoxLrgInactiveStroke0:close()
		arg0.MegaChewFactorySaleActive0:close()
		arg0.BlackMarketCryptokeyContainerSmall:close()
		arg0.ZMExpiresIn:close()
		arg0.ZMPromoRibbon:close()
		arg0.Icon:close()
		arg0.Label0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_7A42_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

