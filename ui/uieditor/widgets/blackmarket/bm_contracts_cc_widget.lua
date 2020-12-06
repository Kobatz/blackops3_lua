-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BlackMarket.BM_Contracts_SideBetCallingCard")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_Contracts_CC_Widget = registerVal1
function CoD.BM_Contracts_CC_Widget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_Contracts_CC_Widget)
	registerVal2.id = "BM_Contracts_CC_Widget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 350.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 178.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 43.840000, 306.160000)
	registerVal3:setTopBottom(true, false, 4.720000, 112.730000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_contract_callingcard"))
	registerVal2:addElement(registerVal3)
	registerVal2.CalingCardBg = registerVal3
	local registerVal4 = CoD.BM_Contracts_SideBetCallingCard.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 350.000000)
	registerVal4:setTopBottom(true, false, -1.000000, 91.000000)
	registerVal4:setAlpha(0.250000)
	registerVal4:setScale(0.500000)
	local function __FUNC_E79_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:subscribeToGlobalModel(arg1, "SideBetCurrentChallenge", nil, __FUNC_E79_)
	registerVal2:addElement(registerVal4)
	registerVal2.SideBetCallingCard = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 55.000000, 295.000000)
	registerVal5:setTopBottom(true, false, 42.000000, 45.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.black = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 159.000000, 191.000000)
	registerVal6:setTopBottom(true, false, 27.720000, 59.720000)
	registerVal6:setImage(RegisterImage("uie_t7_blackmarket_contract_callingcard_lock"))
	registerVal2:addElement(registerVal6)
	registerVal2.Lock = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 57.000000, 292.000000)
	registerVal7:setTopBottom(true, false, 79.780000, 97.780000)
	registerVal7:setRGB(0.580000, 1.000000, 0.830000)
	registerVal7:setText(Engine.Localize("Set 1 /6"))
	registerVal7:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.text = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 53.250000, 300.750000)
	registerVal8:setTopBottom(true, false, 113.730000, 131.730000)
	registerVal8:setRGB(0.880000, 0.880000, 0.880000)
	registerVal8:setText(Engine.Localize("BLACKJACK_CHALLENGE_SIDE_BET_DESC"))
	registerVal8:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal8)
	registerVal2.SideBetDescription = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_ECA_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.CalingCardBg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.SideBetCallingCard:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.black:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Lock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.SideBetDescription:setAlpha(1.000000)
		registerVal2.SideBetDescription:setText(Engine.Localize("BLACKJACK_CHALLENGE_SIDE_BET_DESC"))
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_ECA_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_11C4_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.SideBetCallingCard:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.black:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Lock:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.SideBetDescription:setAlpha(1.000000)
		registerVal2.SideBetDescription:setText(Engine.Localize("BLACKJACK_CHALLENGE_SIDE_BET_DESC"))
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_11C4_
	registerVal9.Locked = registerVal10
	registerVal10 = {}
	local function __FUNC_1466_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.CalingCardBg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.SideBetCallingCard:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.black:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Lock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.SideBetDescription:setAlpha(1.000000)
		registerVal2.SideBetDescription:setText(Engine.Localize("BLACKJACK_CARD_COMPLETED"))
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_1466_
	registerVal9.CompletedCard = registerVal10
	registerVal10 = {}
	local function __FUNC_1757_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.CalingCardBg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.SideBetCallingCard:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.black:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Lock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.SideBetDescription:setAlpha(1.000000)
		registerVal2.SideBetDescription:setText(Engine.Localize("BLACKJACK_CARD_SET_COMPLETED"))
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_1757_
	registerVal9.CompletedCardSet = registerVal10
	registerVal2.clipsPerState = registerVal9
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "Locked"
	local function __FUNC_1A4B_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isLocked")
	end

	registerVal12.condition = __FUNC_1A4B_
	local registerVal13 = {}
	registerVal13.stateName = "CompletedCard"
	local function __FUNC_1ABC_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "isMastery")
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_1ABC_
	local registerVal14 = {}
	registerVal14.stateName = "CompletedCardSet"
	local function __FUNC_1B35_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isMastery")
	end

	registerVal14.condition = __FUNC_1B35_
	registerVal11 = {registerVal12, registerVal13, registerVal14}
	registerVal2:mergeStateConditions(registerVal11)
	local function __FUNC_1BA9_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isLocked"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isLocked", true, __FUNC_1BA9_)
	local function __FUNC_1CC6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isMastery"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isMastery", true, __FUNC_1CC6_)
	local function __FUNC_1DE3_(arg0)
		arg0.SideBetCallingCard:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1DE3_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

