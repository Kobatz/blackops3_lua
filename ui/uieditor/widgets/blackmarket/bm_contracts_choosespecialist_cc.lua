-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BlackMarket.BM_Contracts_SideBetCallingCard")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_contracts_choosespecialist_CC = registerVal1
function CoD.BM_contracts_choosespecialist_CC.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_contracts_choosespecialist_CC)
	registerVal2.id = "BM_contracts_choosespecialist_CC"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 376.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 178.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.BM_Contracts_SideBetCallingCard.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 13.160000, 363.160000)
	registerVal3:setTopBottom(true, false, 6.020000, 98.020000)
	registerVal3:setAlpha(0.400000)
	registerVal3:setScale(0.700000)
	local function __FUNC_DC6_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:subscribeToGlobalModel(arg1, "SideBetCurrentChallenge", nil, __FUNC_DC6_)
	registerVal2:addElement(registerVal3)
	registerVal2.SideBetCallingCard = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 25.000000, 351.500000)
	registerVal4:setTopBottom(true, false, 47.020000, 54.020000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.800000)
	registerVal2:addElement(registerVal4)
	registerVal2.black = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 167.660000, 211.660000)
	registerVal5:setTopBottom(true, false, 28.020000, 72.020000)
	registerVal5:setImage(RegisterImage("uie_t7_blackmarket_contract_callingcard_lock"))
	registerVal2:addElement(registerVal5)
	registerVal2.Lock = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 70.500000, 305.500000)
	registerVal6:setTopBottom(true, false, 99.020000, 117.020000)
	registerVal6:setRGB(0.580000, 1.000000, 0.830000)
	registerVal6:setText(Engine.Localize("Set 1 /6"))
	registerVal6:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.text = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 25.000000, 348.500000)
	registerVal7:setTopBottom(true, false, 124.000000, 142.000000)
	registerVal7:setRGB(0.880000, 0.880000, 0.880000)
	registerVal7:setText(Engine.Localize("BLACKJACK_CHALLENGE_SIDE_BET_DESC"))
	registerVal7:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.SideBetDescription = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_E16_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.SideBetCallingCard:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.black:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Lock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.SideBetDescription:setAlpha(1.000000)
		registerVal2.SideBetDescription:setText(Engine.Localize("BLACKJACK_CHALLENGE_SIDE_BET_DESC"))
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_E16_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_10B6_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.SideBetCallingCard:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.black:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Lock:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.SideBetDescription:setAlpha(1.000000)
		registerVal2.SideBetDescription:setText(Engine.Localize("BLACKJACK_CHALLENGE_SIDE_BET_DESC"))
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_10B6_
	registerVal8.Locked = registerVal9
	registerVal9 = {}
	local function __FUNC_1356_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.SideBetCallingCard:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.black:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Lock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.SideBetDescription:setAlpha(1.000000)
		registerVal2.SideBetDescription:setText(Engine.Localize("BLACKJACK_CARD_COMPLETED"))
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_1356_
	registerVal8.CompletedCard = registerVal9
	registerVal9 = {}
	local function __FUNC_15ED_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.SideBetCallingCard:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.black:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Lock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.SideBetDescription:setAlpha(1.000000)
		registerVal2.SideBetDescription:setText(Engine.Localize("BLACKJACK_CARD_SET_COMPLETED"))
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_15ED_
	registerVal8.CompletedCardSet = registerVal9
	registerVal2.clipsPerState = registerVal8
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Locked"
	local function __FUNC_1889_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isLocked")
	end

	registerVal11.condition = __FUNC_1889_
	local registerVal12 = {}
	registerVal12.stateName = "CompletedCard"
	local function __FUNC_18FC_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "isMastery")
		return (not registerVal3)
	end

	registerVal12.condition = __FUNC_18FC_
	local registerVal13 = {}
	registerVal13.stateName = "CompletedCardSet"
	local function __FUNC_1975_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isMastery")
	end

	registerVal13.condition = __FUNC_1975_
	registerVal10 = {registerVal11, registerVal12, registerVal13}
	registerVal2:mergeStateConditions(registerVal10)
	local function __FUNC_19E9_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isLocked"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isLocked", true, __FUNC_19E9_)
	local function __FUNC_1B06_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isMastery"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isMastery", true, __FUNC_1B06_)
	local function __FUNC_1C23_(arg0)
		arg0.SideBetCallingCard:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1C23_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

