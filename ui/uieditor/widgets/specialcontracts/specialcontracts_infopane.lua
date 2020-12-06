-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.SpecialContracts.SpecialContracts_RewardImage")
require("ui.uieditor.widgets.BlackMarket.BM_Contracts_timer")
require("ui.uieditor.widgets.SpecialContracts.SpecialContracts_StateIndicator")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SpecialContracts_Infopane = registerVal1
function CoD.SpecialContracts_Infopane.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SpecialContracts_Infopane)
	registerVal2.id = "SpecialContracts_Infopane"
	registerVal2.soundSet = "Blackmarket_extra"
	registerVal2:setLeftRight(true, false, 0.000000, 350.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 500.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 3.160000, -7.160000)
	registerVal3:setTopBottom(true, true, 3.590000, -2.590000)
	registerVal3:setAlpha(0.500000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_contracts_blackjack_gradient"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal3:setShaderVector(0.000000, 0.058879, 0.469814, 0.000000, 0.000000)
	registerVal3:setupNineSliceShader(20.000000, 232.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Gradient = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 2.160000, -6.160000)
	registerVal4:setTopBottom(true, true, 4.000000, -3.000000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_contracts_bigframe"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal4:setShaderVector(0.000000, 0.163897, 0.113590, 0.000000, 0.000000)
	registerVal4:setupNineSliceShader(56.000000, 56.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Background0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 26.000000, 322.000000)
	registerVal5:setTopBottom(true, false, 254.500000, 389.000000)
	registerVal5:setAlpha(0.250000)
	registerVal5:setImage(RegisterImage("uie_t7_blackmarket_contracts_cc_frame_dark"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal5:setShaderVector(0.000000, 0.185811, 0.408922, 0.000000, 0.000000)
	registerVal5:setupNineSliceShader(55.000000, 55.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.frame = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 26.000000, 322.000000)
	registerVal6:setTopBottom(true, false, 185.760000, 193.750000)
	registerVal6:setImage(RegisterImage("uie_t7_blackmarket_contract_divider"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal6:setShaderVector(0.000000, 0.033784, 0.500375, 0.000000, 0.000000)
	registerVal6:setupNineSliceShader(10.000000, 4.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.Divider0 = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 31.000000, 317.000000)
	registerVal7:setTopBottom(true, false, 403.000000, 425.000000)
	registerVal7:setRGB(0.880000, 0.880000, 0.880000)
	registerVal7:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.Reward1 = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 31.000000, 317.000000)
	registerVal8:setTopBottom(true, false, 428.000000, 450.000000)
	registerVal8:setRGB(0.880000, 0.880000, 0.880000)
	registerVal8:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal8)
	registerVal2.Reward2 = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, false, 31.000000, 317.000000)
	registerVal9:setTopBottom(true, false, 453.000000, 475.000000)
	registerVal9:setRGB(0.880000, 0.880000, 0.880000)
	registerVal9:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal9)
	registerVal2.Reward3 = registerVal9
	local registerVal10 = CoD.SpecialContracts_RewardImage.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 42.000000, 306.000000)
	registerVal10:setTopBottom(false, true, -253.000000, -107.000000)
	registerVal10:setScale(1.090000)
	registerVal10.ItemImage:setScale(1.080000)
	registerVal10.CallingCard.CardIconFrame:setScale(0.550000)
	local function __FUNC_1B57_(arg0)
		registerVal10:setModel(arg0, arg1)
	end

	registerVal10:linkToElementModel(registerVal2, nil, false, __FUNC_1B57_)
	local function __FUNC_1BA6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.ItemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "image", true, __FUNC_1BA6_)
	registerVal2:addElement(registerVal10)
	registerVal2.RewardImage = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, true, 3.160000, -7.160000)
	registerVal11:setTopBottom(true, false, 3.290000, 44.060000)
	registerVal11:setImage(RegisterImage("uie_t7_blackmarket_contracts_blackjack"))
	registerVal2:addElement(registerVal11)
	registerVal2.header = registerVal11
	local registerVal12 = CoD.BM_Contracts_timer.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 19.000000, 329.000000)
	registerVal12:setTopBottom(true, false, 16.240000, 35.280000)
	registerVal12.Timer:setText(Engine.Localize(""))
	local function __FUNC_1C77_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.Weekly:setText(LocalizeToUpperString(registerVal1))
		end
	end

	registerVal12:linkToElementModel(registerVal2, "name", true, __FUNC_1C77_)
	local registerVal15 = {}
	local registerVal16 = {}
	registerVal16.stateName = "HideTimer"
	local function __FUNC_1D4B_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal16.condition = __FUNC_1D4B_
	registerVal15 = {registerVal16}
	registerVal12:mergeStateConditions(registerVal15)
	registerVal2:addElement(registerVal12)
	registerVal2.BMContractstimer = registerVal12
	local registerVal13 = LUI.UIText.new()
	registerVal13:setLeftRight(true, false, 28.000000, 319.000000)
	registerVal13:setTopBottom(true, false, 62.000000, 84.750000)
	registerVal13:setRGB(0.880000, 0.880000, 0.880000)
	registerVal13:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1D94_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal13:linkToElementModel(registerVal2, "description", true, __FUNC_1D94_)
	registerVal2:addElement(registerVal13)
	registerVal2.BlackjackContractsDescription = registerVal13
	local registerVal14 = LUI.UIText.new()
	registerVal14:setLeftRight(true, false, 26.000000, 311.000000)
	registerVal14:setTopBottom(true, false, 223.000000, 242.000000)
	registerVal14:setRGB(0.460000, 0.800000, 0.750000)
	registerVal14:setText(Engine.Localize("MPUI_REWARDS_CAPS"))
	registerVal14:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal14:setLetterSpacing(-0.500000)
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal14)
	registerVal2.SideBetTitle = registerVal14
	registerVal15 = CoD.SpecialContracts_StateIndicator.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 38.000000, 115.000000)
	registerVal15:setTopBottom(true, false, 151.750000, 171.750000)
	registerVal15:setScale(1.200000)
	local function __FUNC_1E4E_(arg0)
		registerVal15:setModel(arg0, arg1)
	end

	registerVal15:linkToElementModel(registerVal2, nil, false, __FUNC_1E4E_)
	local registerVal18 = {}
	local registerVal19 = {}
	registerVal19.stateName = "Cost"
	local function __FUNC_1E9E_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueNilOrZero(arg2, arg1, "cost")
		return (not registerVal3)
	end

	registerVal19.condition = __FUNC_1E9E_
	registerVal18 = {registerVal19}
	registerVal15:mergeStateConditions(registerVal18)
	local function __FUNC_1F15_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "cost"
		arg0:updateElementState(registerVal15, registerVal4)
	end

	registerVal15:linkToElementModel(registerVal15, "cost", true, __FUNC_1F15_)
	registerVal2:addElement(registerVal15)
	registerVal2.SpecialContractsStateIndicator = registerVal15
	registerVal16 = LUI.UIText.new()
	registerVal16:setLeftRight(true, false, 28.000000, 319.000000)
	registerVal16:setTopBottom(true, false, 148.750000, 173.750000)
	registerVal16:setRGB(0.940000, 0.940000, 0.940000)
	registerVal16:setTTF("fonts/escom.ttf")
	registerVal16:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal16:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_202E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16:setAlpha(HideIfEmptyString(registerVal1))
		end
	end

	registerVal16:linkToElementModel(registerVal2, "groupProgress", true, __FUNC_202E_)
	local function __FUNC_20E4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal16:linkToElementModel(registerVal2, "groupProgress", true, __FUNC_20E4_)
	registerVal2:addElement(registerVal16)
	registerVal2.ContractProgressText = registerVal16
	local function __FUNC_219E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setAlpha(HideIfEmptyString(registerVal1))
		end
	end

	registerVal2.Reward1:linkToElementModel(registerVal2, "rewardDescription1", true, __FUNC_219E_)
	local function __FUNC_2254_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.Reward1:linkToElementModel(registerVal2, "rewardDescription1", true, __FUNC_2254_)
	local function __FUNC_230E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setAlpha(HideIfEmptyString(registerVal1))
		end
	end

	registerVal2.Reward2:linkToElementModel(registerVal2, "rewardDescription2", true, __FUNC_230E_)
	local function __FUNC_23C4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.Reward2:linkToElementModel(registerVal2, "rewardDescription2", true, __FUNC_23C4_)
	local function __FUNC_247E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setAlpha(HideIfEmptyString(registerVal1))
		end
	end

	registerVal2.Reward3:linkToElementModel(registerVal2, "rewardDescription3", true, __FUNC_247E_)
	local function __FUNC_2534_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.Reward3:linkToElementModel(registerVal2, "rewardDescription3", true, __FUNC_2534_)
	local function __FUNC_25EE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15.ContractDesc0:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.SpecialContractsStateIndicator:linkToElementModel(registerVal2, "cost", true, __FUNC_25EE_)
	local registerVal17 = {}
	registerVal18 = {}
	local function __FUNC_26C9_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal15:completeAnimation()
		registerVal2.SpecialContractsStateIndicator:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.DefaultClip = __FUNC_26C9_
	registerVal17.DefaultState = registerVal18
	registerVal18 = {}
	local function __FUNC_27D9_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal15:completeAnimation()
		registerVal2.SpecialContractsStateIndicator:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.DefaultClip = __FUNC_27D9_
	registerVal17.Complete = registerVal18
	registerVal18 = {}
	local function __FUNC_28EE_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal15:completeAnimation()
		registerVal2.SpecialContractsStateIndicator:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.DefaultClip = __FUNC_28EE_
	registerVal17.Active = registerVal18
	registerVal18 = {}
	local function __FUNC_2A02_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal15:completeAnimation()
		registerVal2.SpecialContractsStateIndicator:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.DefaultClip = __FUNC_2A02_
	registerVal17.Cost = registerVal18
	registerVal2.clipsPerState = registerVal17
	registerVal19 = {}
	local registerVal20 = {}
	registerVal20.stateName = "Complete"
	local function __FUNC_2B11_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isComplete")
	end

	registerVal20.condition = __FUNC_2B11_
	local registerVal21 = {}
	registerVal21.stateName = "Active"
	local function __FUNC_2B86_(arg0, arg2, arg3)
		return IsSpecialContractActive(registerVal2, arg2, arg1)
	end

	registerVal21.condition = __FUNC_2B86_
	local registerVal22 = {}
	registerVal22.stateName = "Cost"
	local function __FUNC_2BE9_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueNilOrZero(arg2, arg1, "cost")
		return (not registerVal3)
	end

	registerVal22.condition = __FUNC_2BE9_
	registerVal19 = {registerVal20, registerVal21, registerVal22}
	registerVal2:mergeStateConditions(registerVal19)
	local function __FUNC_2C61_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isComplete"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isComplete", true, __FUNC_2C61_)
	local function __FUNC_2D80_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "cost"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "cost", true, __FUNC_2D80_)
	local function __FUNC_2E9A_(arg0)
		arg0.RewardImage:close()
		arg0.BMContractstimer:close()
		arg0.SpecialContractsStateIndicator:close()
		arg0.Reward1:close()
		arg0.Reward2:close()
		arg0.Reward3:close()
		arg0.BlackjackContractsDescription:close()
		arg0.ContractProgressText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2E9A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

