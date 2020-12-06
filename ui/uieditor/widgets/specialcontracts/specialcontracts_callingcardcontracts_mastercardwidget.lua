-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.CallingCards_FrameWidget")
require("ui.uieditor.widgets.BlackMarket.BM_Contracts_PercentCompleteWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SpecialContracts_CallingCardContracts_MasterCardWidget = registerVal1
function CoD.SpecialContracts_CallingCardContracts_MasterCardWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SpecialContracts_CallingCardContracts_MasterCardWidget)
	registerVal2.id = "SpecialContracts_CallingCardContracts_MasterCardWidget"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 754.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 98.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 1.910000, -1.910000)
	registerVal3:setTopBottom(true, true, 2.580000, -3.580000)
	registerVal3:setAlpha(0.500000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_contracts_special_gradient"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal3:setShaderVector(0.000000, 0.023994, 0.500916, 0.000000, 0.000000)
	registerVal3:setupNineSliceShader(18.000000, 46.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Gradient = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 1.910000, -1.910000)
	registerVal4:setTopBottom(true, true, 0.970000, -2.580000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_contracts_bigframe"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal4:setShaderVector(0.000000, 0.061319, 0.487067, 0.000000, 0.000000)
	registerVal4:setupNineSliceShader(46.000000, 46.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Background = registerVal4
	local registerVal5 = CoD.CallingCards_FrameWidget.new(arg0, arg1)
	registerVal5:setLeftRight(false, true, -172.000000, -172.000000)
	registerVal5:setTopBottom(true, false, 48.500000, 48.500000)
	registerVal5:setScale(0.980000)
	registerVal5.CardIconFrame:setScale(0.680000)
	local function __FUNC_135D_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_135D_)
	registerVal2:addElement(registerVal5)
	registerVal2.MasterCallingCardIcon = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, true, -330.580000, -13.250000)
	registerVal6:setTopBottom(true, false, 46.250000, 49.250000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.black = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, true, -182.580000, -150.580000)
	registerVal7:setTopBottom(true, false, 31.970000, 63.970000)
	registerVal7:setImage(RegisterImage("uie_t7_blackmarket_contract_callingcard_lock"))
	registerVal2:addElement(registerVal7)
	registerVal2.Lock = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, 1.910000, -1.910000)
	registerVal8:setTopBottom(true, true, 0.970000, -2.580000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_blackmarket_contracts_bigframe_completed"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal8:setShaderVector(0.000000, 0.074649, 0.592951, 0.000000, 0.000000)
	registerVal8:setupNineSliceShader(56.000000, 56.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.BackgroundCompleted = registerVal8
	local registerVal9 = CoD.BM_Contracts_PercentCompleteWidget.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 20.500000, 110.500000)
	registerVal9:setTopBottom(true, false, 2.970000, 92.970000)
	local function __FUNC_13AE_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:linkToElementModel(registerVal2, nil, false, __FUNC_13AE_)
	local function __FUNC_13FE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.percentCompleteCircle:setAlpha(HideIfNumEqualTo(0.000000, registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "percentComplete", true, __FUNC_13FE_)
	local function __FUNC_14E7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal9.percentCompleteCircle:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "percentComplete", true, __FUNC_14E7_)
	local function __FUNC_1667_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.percentText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "fractionText", true, __FUNC_1667_)
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Complete"
	local function __FUNC_173F_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "isLocked")
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_173F_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	local function __FUNC_17B4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isLocked"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:linkToElementModel(registerVal9, "isLocked", true, __FUNC_17B4_)
	registerVal2:addElement(registerVal9)
	registerVal2.SpecialContractPercentCompleteWidget = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, false, 115.510000, 407.010000)
	registerVal10:setTopBottom(true, false, 25.000000, 43.500000)
	registerVal10:setRGB(0.460000, 0.800000, 0.750000)
	registerVal10:setText(Engine.Localize("CONTRACT_MASTERY_CARD_TITLE"))
	registerVal10:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal10:setLetterSpacing(-0.500000)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal10)
	registerVal2.SpecialContractName = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, false, 115.510000, 407.010000)
	registerVal11:setTopBottom(true, false, 44.000000, 62.000000)
	registerVal11:setRGB(0.880000, 0.880000, 0.880000)
	registerVal11:setText(Engine.Localize("CONTRACT_MASTERY_CARD_DESC"))
	registerVal11:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal11)
	registerVal2.SpecialContractDesc = registerVal11
	registerVal12 = {}
	registerVal13 = {}
	local function __FUNC_18D2_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal5:completeAnimation()
		registerVal2.MasterCallingCardIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.black:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Lock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal11:completeAnimation()
		registerVal2.SpecialContractDesc:setText(Engine.Localize("CONTRACT_MASTERY_CARD_COMPLETE"))
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_18D2_
	registerVal12.DefaultState = registerVal13
	registerVal13 = {}
	local function __FUNC_1B57_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal5:completeAnimation()
		registerVal2.MasterCallingCardIcon:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.black:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Lock:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal11:completeAnimation()
		registerVal2.SpecialContractDesc:setText(Engine.Localize("CONTRACT_MASTERY_CARD_DESC"))
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_1B57_
	registerVal12.Locked = registerVal13
	registerVal2.clipsPerState = registerVal12
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "Locked"
	local function __FUNC_1DD7_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isLocked")
	end

	registerVal15.condition = __FUNC_1DD7_
	registerVal14 = {registerVal15}
	registerVal2:mergeStateConditions(registerVal14)
	local function __FUNC_1E48_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isLocked"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isLocked", true, __FUNC_1E48_)
	local function __FUNC_1F66_(arg0)
		arg0.MasterCallingCardIcon:close()
		arg0.SpecialContractPercentCompleteWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1F66_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

