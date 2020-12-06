-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.CallingCards_FrameWidget")
require("ui.uieditor.widgets.BlackMarket.BM_GoldBarMed")
require("ui.uieditor.widgets.BlackMarket.BM_Contracts_timer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SpecialContracts_CallingCardContracts_Profiler = registerVal1
function CoD.SpecialContracts_CallingCardContracts_Profiler.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SpecialContracts_CallingCardContracts_Profiler)
	registerVal2.id = "SpecialContracts_CallingCardContracts_Profiler"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 350.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 482.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 3.160000, -7.160000)
	registerVal3:setTopBottom(true, true, 3.590000, -2.590000)
	registerVal3:setAlpha(0.500000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_contracts_blackjack_gradient"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal3:setShaderVector(0.000000, 0.058879, 0.487587, 0.000000, 0.000000)
	registerVal3:setupNineSliceShader(20.000000, 232.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Gradient = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 2.160000, -6.160000)
	registerVal4:setTopBottom(true, true, 4.000000, -3.000000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_contracts_bigframe"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal4:setShaderVector(0.000000, 0.163897, 0.117895, 0.000000, 0.000000)
	registerVal4:setupNineSliceShader(56.000000, 56.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Background0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 3.000000, -2.000000)
	registerVal5:setTopBottom(true, false, 3.000000, 89.000000)
	registerVal5:setRGB(0.110000, 0.110000, 0.110000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.bgImage = registerVal5
	local registerVal6 = CoD.CallingCards_FrameWidget.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, -67.000000, 413.000000)
	registerVal6:setTopBottom(true, false, 22.760000, 142.760000)
	registerVal6:setAlpha(0.200000)
	registerVal6.CardIconFrame:setScale(0.690000)
	local function __FUNC_1B6E_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_1B6E_)
	registerVal2:addElement(registerVal6)
	registerVal2.SelectedCardIcon = registerVal6
	local registerVal7 = CoD.BM_GoldBarMed.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 3.000000, 348.000000)
	registerVal7:setTopBottom(true, false, 32.500000, 62.400000)
	registerVal7:setAlpha(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.BMGoldBarMed = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -20.750000, 47.750000)
	registerVal8:setTopBottom(true, false, 48.510000, 117.010000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_icon_blackmarket_encryptedicon_large"))
	registerVal2:addElement(registerVal8)
	registerVal2.blackMarketBrandIcon = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, false, 25.000000, 310.000000)
	registerVal9:setTopBottom(true, false, 132.760000, 154.760000)
	registerVal9:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1BBE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "description", true, __FUNC_1BBE_)
	registerVal2:addElement(registerVal9)
	registerVal2.EmblemSubtitle = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, false, 29.000000, 311.000000)
	registerVal10:setTopBottom(true, false, 318.500000, 340.500000)
	registerVal10:setTTF("fonts/default.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1C76_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setAlpha(HideIfEmptyString(registerVal1))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "rewardDescription1", true, __FUNC_1C76_)
	local function __FUNC_1D2C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "rewardDescription1", true, __FUNC_1D2C_)
	registerVal2:addElement(registerVal10)
	registerVal2.Reward1 = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, true, 29.000000, -39.000000)
	registerVal11:setTopBottom(true, false, 344.500000, 366.500000)
	registerVal11:setTTF("fonts/default.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1DE6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setAlpha(HideIfEmptyString(registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal2, "rewardDescription2", true, __FUNC_1DE6_)
	local function __FUNC_1E9C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal2, "rewardDescription2", true, __FUNC_1E9C_)
	registerVal2:addElement(registerVal11)
	registerVal2.Reward2 = registerVal11
	local registerVal12 = LUI.UIText.new()
	registerVal12:setLeftRight(true, false, 29.000000, 311.000000)
	registerVal12:setTopBottom(true, false, 370.500000, 392.500000)
	registerVal12:setTTF("fonts/default.ttf")
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1F56_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setAlpha(HideIfEmptyString(registerVal1))
		end
	end

	registerVal12:linkToElementModel(registerVal2, "rewardDescription3", true, __FUNC_1F56_)
	local function __FUNC_200C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal12:linkToElementModel(registerVal2, "rewardDescription3", true, __FUNC_200C_)
	registerVal2:addElement(registerVal12)
	registerVal2.Reward3 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 21.000000, 325.000000)
	registerVal13:setTopBottom(true, false, 236.500000, 244.490000)
	registerVal13:setImage(RegisterImage("uie_t7_blackmarket_contract_divider"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal13:setShaderVector(0.000000, 0.032895, 0.500375, 0.000000, 0.000000)
	registerVal13:setupNineSliceShader(10.000000, 4.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.Divider0 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 3.000000, 342.000000)
	registerVal14:setTopBottom(true, false, 3.290000, 44.060000)
	registerVal14:setImage(RegisterImage("uie_t7_blackmarket_contracts_blackjack"))
	registerVal2:addElement(registerVal14)
	registerVal2.header = registerVal14
	local registerVal15 = CoD.BM_Contracts_timer.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 19.000000, 330.000000)
	registerVal15:setTopBottom(true, false, 15.240000, 34.280000)
	registerVal15.Timer:setText(Engine.Localize(""))
	local function __FUNC_20C6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15.Weekly:setText(LocalizeToUpperString(registerVal1))
		end
	end

	registerVal15:linkToElementModel(registerVal2, "name", true, __FUNC_20C6_)
	local registerVal18 = {}
	local registerVal19 = {}
	registerVal19.stateName = "HideTimer"
	local function __FUNC_219B_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal19.condition = __FUNC_219B_
	registerVal18 = {registerVal19}
	registerVal15:mergeStateConditions(registerVal18)
	registerVal2:addElement(registerVal15)
	registerVal2.BMContractstimer = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, 8.000000, 339.500000)
	registerVal16:setTopBottom(true, false, 79.760000, 82.760000)
	registerVal16:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal16)
	registerVal2.black = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(true, false, 162.000000, 194.000000)
	registerVal17:setTopBottom(true, false, 65.260000, 97.260000)
	registerVal17:setScale(1.200000)
	registerVal17:setImage(RegisterImage("uie_t7_blackmarket_contract_callingcard_lock"))
	registerVal2:addElement(registerVal17)
	registerVal2.Lock = registerVal17
	registerVal18 = LUI.UIText.new()
	registerVal18:setLeftRight(true, false, 26.000000, 311.000000)
	registerVal18:setTopBottom(true, false, 291.000000, 310.000000)
	registerVal18:setRGB(0.460000, 0.800000, 0.750000)
	registerVal18:setText(Engine.Localize("MPUI_REWARDS_CAPS"))
	registerVal18:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal18:setLetterSpacing(-0.500000)
	registerVal18:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal18:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal18)
	registerVal2.Reward = registerVal18
	registerVal19 = LUI.UIText.new()
	registerVal19:setLeftRight(true, false, 25.000000, 310.000000)
	registerVal19:setTopBottom(true, false, 199.750000, 224.750000)
	registerVal19:setRGB(0.940000, 0.940000, 0.940000)
	registerVal19:setTTF("fonts/escom.ttf")
	registerVal19:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal19:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_21E4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal19:setAlpha(HideIfEmptyString(registerVal1))
		end
	end

	registerVal19:linkToElementModel(registerVal2, "groupProgress", true, __FUNC_21E4_)
	local function __FUNC_229C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal19:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal19:linkToElementModel(registerVal2, "groupProgress", true, __FUNC_229C_)
	registerVal2:addElement(registerVal19)
	registerVal2.ContractProgressText = registerVal19
	local registerVal20 = {}
	local registerVal21 = {}
	local function __FUNC_2356_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal6:completeAnimation()
		registerVal2.SelectedCardIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal16:completeAnimation()
		registerVal2.black:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.Lock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal21.DefaultClip = __FUNC_2356_
	registerVal20.DefaultState = registerVal21
	registerVal21 = {}
	local function __FUNC_25C2_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal6:completeAnimation()
		registerVal2.SelectedCardIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal16:completeAnimation()
		registerVal2.black:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.Lock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal21.DefaultClip = __FUNC_25C2_
	registerVal20.Complete = registerVal21
	registerVal21 = {}
	local function __FUNC_282E_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal6:completeAnimation()
		registerVal2.SelectedCardIcon:setLeftRight(true, false, -67.000000, 413.000000)
		registerVal2.SelectedCardIcon:setTopBottom(true, false, 22.760000, 142.760000)
		registerVal2.SelectedCardIcon:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal16:completeAnimation()
		registerVal2.black:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.Lock:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal21.DefaultClip = __FUNC_282E_
	registerVal20.Active = registerVal21
	registerVal21 = {}
	local function __FUNC_2B2F_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal6:completeAnimation()
		registerVal2.SelectedCardIcon:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal16:completeAnimation()
		registerVal2.black:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.Lock:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal21.DefaultClip = __FUNC_2B2F_
	registerVal20.Locked = registerVal21
	registerVal2.clipsPerState = registerVal20
	local registerVal22 = {}
	local registerVal23 = {}
	registerVal23.stateName = "Complete"
	local function __FUNC_2D9F_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isComplete")
	end

	registerVal23.condition = __FUNC_2D9F_
	local registerVal24 = {}
	registerVal24.stateName = "Active"
	local function __FUNC_2E12_(arg0, arg2, arg3)
		return IsSpecialContractActive(registerVal2, arg2, arg1)
	end

	registerVal24.condition = __FUNC_2E12_
	local registerVal25 = {}
	registerVal25.stateName = "Locked"
	local function __FUNC_2E75_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "isComplete")
		return (not registerVal3)
	end

	registerVal25.condition = __FUNC_2E75_
	registerVal22 = {registerVal23, registerVal24, registerVal25}
	registerVal2:mergeStateConditions(registerVal22)
	local function __FUNC_2EEE_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isComplete"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isComplete", true, __FUNC_2EEE_)
	local function __FUNC_300C_(arg0)
		arg0.SelectedCardIcon:close()
		arg0.BMGoldBarMed:close()
		arg0.BMContractstimer:close()
		arg0.EmblemSubtitle:close()
		arg0.Reward1:close()
		arg0.Reward2:close()
		arg0.Reward3:close()
		arg0.ContractProgressText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_300C_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

