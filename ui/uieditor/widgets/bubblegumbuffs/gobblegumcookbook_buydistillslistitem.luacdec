-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveStroke")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.onOffText")
require("ui.uieditor.widgets.BubbleGumBuffs.MegaChewFactoryCODPointContainerSmall")
require("ui.uieditor.widgets.BubbleGumBuffs.MegaChewFactory_SaleActive")
require("ui.uieditor.widgets.BubbleGumBuffs.GobbleGumCookbookVialContainerSmall")
require("ui.uieditor.widgets.BubbleGumBuffs.GobbleGumCookbook_VialSaleActive")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GobbleGumCookbook_BuyDistillsListItem = registerVal1
function CoD.GobbleGumCookbook_BuyDistillsListItem.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GobbleGumCookbook_BuyDistillsListItem)
	registerVal2.id = "GobbleGumCookbook_BuyDistillsListItem"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 190.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 190.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_ButtonBoxLrgInactiveStroke.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -2.000000, 2.770000)
	registerVal3:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.cacButtonBoxLrgInactiveStroke0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -73.860000, 73.860000)
	registerVal4:setTopBottom(true, false, 24.970000, 172.690000)
	registerVal2:addElement(registerVal4)
	registerVal2.Icon = registerVal4
	local registerVal5 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal5:setTopBottom(true, false, -4.000000, 4.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.FEFocusBarContainerTop = registerVal5
	local registerVal6 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal6:setTopBottom(false, true, -3.000000, 5.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.FEFocusBarContainerBottom = registerVal6
	local registerVal7 = CoD.onOffText.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 7.000000, 186.000000)
	registerVal7:setTopBottom(true, false, 86.330000, 111.330000)
	registerVal7.lbText:setTTF("fonts/default.ttf")
	registerVal7.lbText:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	local function __FUNC_1695_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, nil, false, __FUNC_1695_)
	local function __FUNC_16E6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.lbText:setText(Engine.Localize(SecondsAsHourMinutesSeconds(registerVal1)))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "timeRemaining", true, __FUNC_16E6_)
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Invisible"
	local function __FUNC_17E7_(arg0, arg2, arg3)
		local registerVal3 = ShowGobbleGumDistillTimer(registerVal2, arg1)
		return (not registerVal3)
	end

	registerVal11.condition = __FUNC_17E7_
	local registerVal12 = {}
	registerVal12.stateName = "HiddenPC"
	local function __FUNC_184B_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal12.condition = __FUNC_184B_
	registerVal10 = {registerVal11, registerVal12}
	registerVal7:mergeStateConditions(registerVal10)
	local function __FUNC_1895_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "timeRemaining"
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:linkToElementModel(registerVal7, "timeRemaining", true, __FUNC_1895_)
	registerVal2:addElement(registerVal7)
	registerVal2.timeRemainingText0 = registerVal7
	local registerVal8 = LUI.UITightText.new()
	registerVal8:setLeftRight(true, false, 7.000000, 207.000000)
	registerVal8:setTopBottom(false, true, -45.000000, 0.000000)
	registerVal8:setRGB(1.000000, 0.770000, 0.000000)
	registerVal8:setAlpha(0.850000)
	registerVal8:setTTF("fonts/FoundryGridnik-Bold.ttf")
	local function __FUNC_19B7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(LocalizeIntoString("MENU_MULTIPLIER_X", registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "text", true, __FUNC_19B7_)
	registerVal2:addElement(registerVal8)
	registerVal2.Text = registerVal8
	local registerVal9 = CoD.MegaChewFactoryCODPointContainerSmall.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 4.000000, 83.000000)
	registerVal9:setTopBottom(true, false, 4.000000, 32.000000)
	local function __FUNC_1A8B_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:linkToElementModel(registerVal2, nil, false, __FUNC_1A8B_)
	registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "HiddenForLootSale"
	local function __FUNC_1ADA_(arg0, arg2, arg3)
		return IsDistillCODPointsSaleActive(arg1)
	end

	registerVal13.condition = __FUNC_1ADA_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal13 = Engine.GetGlobalModel()
	registerVal12 = Engine.GetModel(registerVal13, "autoevents.cycled")
	local function __FUNC_1B3A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "autoevents.cycled"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_1B3A_)
	local function __FUNC_1C5F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemCODPointCost"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:linkToElementModel(registerVal9, "itemCODPointCost", true, __FUNC_1C5F_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, "CryptoKeyProgress.codPoints")
	local function __FUNC_1D82_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CryptoKeyProgress.codPoints"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_1D82_)
	registerVal2:addElement(registerVal9)
	registerVal2.MegaChewFactoryCODPointContainerSmall0 = registerVal9
	registerVal10 = CoD.MegaChewFactory_SaleActive.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 18.500000, 76.500000)
	registerVal10:setTopBottom(true, false, 5.500000, 55.500000)
	local function __FUNC_1EB1_(arg0)
		registerVal10:setModel(arg0, arg1)
	end

	registerVal10:linkToElementModel(registerVal2, nil, false, __FUNC_1EB1_)
	registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "SaleOnInsufficientFunds"
	local function __FUNC_1F02_(arg0, arg2, arg3)
		local registerVal3 = IsControllerModelValueGreaterThanOrEqualToSelfModelValue(arg2, arg1, "CryptoKeyProgress.codPoints", "itemCODPointCost")
		if not registerVal3 then
			registerVal3 = IsDistillCODPointsSaleActive(arg1)
			if registerVal3 then
				registerVal3 = IsSelfModelValueGreaterThan(arg2, arg1, "itemCODPointCost", 0.000000)
			else
			end
		end
		return true
	end

	registerVal14.condition = __FUNC_1F02_
	local registerVal15 = {}
	registerVal15.stateName = "SaleOn"
	local function __FUNC_2059_(arg0, arg2, arg3)
		local registerVal3 = IsDistillCODPointsSaleActive(arg1)
		if registerVal3 then
			registerVal3 = IsSelfModelValueGreaterThan(arg2, arg1, "itemCODPointCost", 0.000000)
		end
		return registerVal3
	end

	registerVal15.condition = __FUNC_2059_
	registerVal13 = {registerVal14, registerVal15}
	registerVal10:mergeStateConditions(registerVal13)
	registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModel(registerVal14, "CryptoKeyProgress.codPoints")
	local function __FUNC_211E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CryptoKeyProgress.codPoints"
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:subscribeToModel(registerVal13, __FUNC_211E_)
	local function __FUNC_224D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemCODPointCost"
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:linkToElementModel(registerVal10, "itemCODPointCost", true, __FUNC_224D_)
	registerVal14 = Engine.GetGlobalModel()
	registerVal13 = Engine.GetModel(registerVal14, "autoevents.cycled")
	local function __FUNC_2372_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "autoevents.cycled"
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:subscribeToModel(registerVal13, __FUNC_2372_)
	registerVal2:addElement(registerVal10)
	registerVal2.codPointsSaleActive = registerVal10
	registerVal11 = CoD.GobbleGumCookbookVialContainerSmall.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 135.250000, 189.770000)
	registerVal11:setTopBottom(true, false, 6.500000, 31.500000)
	local function __FUNC_2497_(arg0)
		registerVal11:setModel(arg0, arg1)
	end

	registerVal11:linkToElementModel(registerVal2, nil, false, __FUNC_2497_)
	registerVal2:addElement(registerVal11)
	registerVal2.GobbleGumCookbookVialContainerSmall = registerVal11
	registerVal12 = CoD.GobbleGumCookbook_VialSaleActive.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 140.570000, 198.570000)
	registerVal12:setTopBottom(true, false, 6.000000, 56.000000)
	local function __FUNC_24E6_(arg0)
		registerVal12:setModel(arg0, arg1)
	end

	registerVal12:linkToElementModel(registerVal2, nil, false, __FUNC_24E6_)
	registerVal2:addElement(registerVal12)
	registerVal2.GobbleGumCookbookVialSaleActive = registerVal12
	registerVal13 = LUI.UIText.new()
	registerVal13:setLeftRight(true, false, 4.000000, 186.000000)
	registerVal13:setTopBottom(true, false, 6.500000, 31.500000)
	registerVal13:setText(Engine.Localize("MENU_STORE_FREE_PRODUCT"))
	registerVal13:setTTF("fonts/default.ttf")
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal13)
	registerVal2.FreeTextBox = registerVal13
	local function __FUNC_2536_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.Icon:linkToElementModel(registerVal2, "image", true, __FUNC_2536_)
	local function __FUNC_25E8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.Label0:setText(Engine.Localize(SetValueIfNumberEqualTo(-1.000000, "-", GetVialCostBeforeDiscount(arg1, registerVal1))))
		end
	end

	registerVal2.codPointsSaleActive:linkToElementModel(registerVal2, "itemCODPointCost", true, __FUNC_25E8_)
	local function __FUNC_272E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.codpointText:setText(Engine.Localize(SetValueIfNumberEqualTo(-1.000000, "-", registerVal1)))
		end
	end

	registerVal2.codPointsSaleActive:linkToElementModel(registerVal2, "itemCODPointCost", true, __FUNC_272E_)
	registerVal14 = {}
	registerVal15 = {}
	local function __FUNC_2849_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal4:completeAnimation()
		registerVal2.Icon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FEFocusBarContainerTop:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FEFocusBarContainerBottom:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.Text:setAlpha(0.850000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.MegaChewFactoryCODPointContainerSmall0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.codPointsSaleActive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.GobbleGumCookbookVialContainerSmall:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.GobbleGumCookbookVialSaleActive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FreeTextBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_2849_
	local function __FUNC_2C77_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.Icon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FEFocusBarContainerTop:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FEFocusBarContainerBottom:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal15.Focus = __FUNC_2C77_
	registerVal14.DefaultState = registerVal15
	registerVal2.clipsPerState = registerVal14
	registerVal10.id = "codPointsSaleActive"
	local function __FUNC_2E3B_(arg0, arg1)
		local registerVal2 = arg0.codPointsSaleActive:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_2E3B_)
	local function __FUNC_2F47_(arg0)
		arg0.cacButtonBoxLrgInactiveStroke0:close()
		arg0.FEFocusBarContainerTop:close()
		arg0.FEFocusBarContainerBottom:close()
		arg0.timeRemainingText0:close()
		arg0.MegaChewFactoryCODPointContainerSmall0:close()
		arg0.codPointsSaleActive:close()
		arg0.GobbleGumCookbookVialContainerSmall:close()
		arg0.GobbleGumCookbookVialSaleActive:close()
		arg0.Icon:close()
		arg0.Text:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2F47_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

