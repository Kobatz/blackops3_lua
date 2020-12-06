-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.CallingCards_FrameWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SpecialContracts_RewardImage = registerVal1
function CoD.SpecialContracts_RewardImage.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SpecialContracts_RewardImage)
	registerVal2.id = "SpecialContracts_RewardImage"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 188.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 104.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -94.000000, 94.000000)
	registerVal3:setTopBottom(false, false, -52.000000, 52.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.ItemImage = registerVal3
	local registerVal4 = CoD.CallingCards_FrameWidget.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -1.000000, 1.000000)
	registerVal4:setTopBottom(false, false, -1.000000, 1.000000)
	registerVal4.CardIconFrame:setScale(0.370000)
	local function __FUNC_915_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_915_)
	registerVal2:addElement(registerVal4)
	registerVal2.CallingCard = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_966_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.ItemImage:setLeftRight(false, false, -94.000000, 94.000000)
		registerVal2.ItemImage:setTopBottom(false, false, -40.750000, 40.750000)
		registerVal2.ItemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.CallingCard:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_966_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_B53_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.ItemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.CallingCard:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_B53_
	registerVal5.Dimensions4by1 = registerVal6
	registerVal6 = {}
	local function __FUNC_CAF_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.ItemImage:setLeftRight(false, false, -84.000000, 84.000000)
		registerVal2.ItemImage:setTopBottom(false, false, -42.000000, 42.000000)
		registerVal2.ItemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.CallingCard:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_CAF_
	registerVal5.Dimensions2by1 = registerVal6
	registerVal6 = {}
	local function __FUNC_E9B_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.ItemImage:setLeftRight(false, false, -48.000000, 48.000000)
		registerVal2.ItemImage:setTopBottom(false, false, -48.000000, 48.000000)
		registerVal2.ItemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.CallingCard:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_E9B_
	registerVal5.Dimensions1by1 = registerVal6
	registerVal6 = {}
	local function __FUNC_107D_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.ItemImage:setLeftRight(false, false, -94.000000, 94.000000)
		registerVal2.ItemImage:setTopBottom(false, false, -39.560000, 37.560000)
		registerVal2.ItemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.CallingCard:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_107D_
	registerVal5.DropBundle = registerVal6
	registerVal6 = {}
	local function __FUNC_126B_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.ItemImage:setLeftRight(false, false, -76.500000, 76.500000)
		registerVal2.ItemImage:setTopBottom(false, false, -52.000000, 52.000000)
		registerVal2.ItemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.CallingCard:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_126B_
	registerVal5.BlackjackContract = registerVal6
	registerVal6 = {}
	local function __FUNC_1457_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.ItemImage:setLeftRight(false, false, -76.500000, 76.500000)
		registerVal2.ItemImage:setTopBottom(false, false, -52.000000, 52.000000)
		registerVal2.ItemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.CallingCard:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_1457_
	registerVal5.Camo = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Dimensions4by1"
	local function __FUNC_1643_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "category", "calling_card")
	end

	registerVal8.condition = __FUNC_1643_
	local registerVal9 = {}
	registerVal9.stateName = "Dimensions2by1"
	local function __FUNC_16D1_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "category", "trifecta")
	end

	registerVal9.condition = __FUNC_16D1_
	local registerVal10 = {}
	registerVal10.stateName = "Dimensions1by1"
	local function __FUNC_175D_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "category", "grand_slam")
	end

	registerVal10.condition = __FUNC_175D_
	local registerVal11 = {}
	registerVal11.stateName = "DropBundle"
	local function __FUNC_17EB_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "category", "default")
	end

	registerVal11.condition = __FUNC_17EB_
	local registerVal12 = {}
	registerVal12.stateName = "BlackjackContract"
	local function __FUNC_1874_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "category", "blackjack_contract")
	end

	registerVal12.condition = __FUNC_1874_
	local registerVal13 = {}
	registerVal13.stateName = "Camo"
	local function __FUNC_190B_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "category", "camo")
	end

	registerVal13.condition = __FUNC_190B_
	registerVal7 = {registerVal8, registerVal9, registerVal10, registerVal11, registerVal12, registerVal13}
	registerVal2:mergeStateConditions(registerVal7)
	local function __FUNC_1991_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "category"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "category", true, __FUNC_1991_)
	local function __FUNC_1AAE_(arg0)
		arg0.CallingCard:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1AAE_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

