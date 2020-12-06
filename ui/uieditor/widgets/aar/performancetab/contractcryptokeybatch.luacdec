-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ContractCryptokeyBatch = registerVal1
function CoD.ContractCryptokeyBatch.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ContractCryptokeyBatch)
	registerVal2.id = "ContractCryptokeyBatch"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 274.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 48.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 274.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 48.260000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_contracts_character_contactsnotactive_hover"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal3:setShaderVector(0.000000, 0.145985, 0.414390, 0.000000, 0.000000)
	registerVal3:setupNineSliceShader(40.000000, 20.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.ContractRewardFrame = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 44.140000, 104.830000)
	registerVal4:setTopBottom(false, false, -14.130000, 13.870000)
	registerVal4:setText(GetDvarValue("daily_contract_cryptokey_reward_count", "0"))
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal4:setShaderVector(0.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setLetterSpacing(2.000000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	registerVal2:addElement(registerVal4)
	registerVal2.DailyContractBatchKeys = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 44.140000, 104.830000)
	registerVal5:setTopBottom(false, false, -14.130000, 13.870000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setText(GetDvarValue("weekly_contract_cryptokey_reward_count", "0"))
	registerVal5:setTTF("fonts/escom.ttf")
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal5:setShaderVector(0.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setLetterSpacing(2.000000)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	registerVal2:addElement(registerVal5)
	registerVal2.WeeklyContractBatchKeys = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 10.940000, 40.240000)
	registerVal6:setTopBottom(false, false, -13.000000, 14.870000)
	registerVal6:setImage(RegisterImage("uie_t7_icon_blackmarket_cryptokey"))
	registerVal2:addElement(registerVal6)
	registerVal2.ContractCyptokeyIcon = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 75.500000, 265.500000)
	registerVal7:setTopBottom(false, false, -8.130000, 9.870000)
	registerVal7:setRGB(0.980000, 0.780000, 0.230000)
	registerVal7:setText(Engine.Localize("CONTRACT_REWARD"))
	registerVal7:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal7:setLetterSpacing(3.500000)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	registerVal2:addElement(registerVal7)
	registerVal2.ContractRewardText = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_E75_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.DailyContractBatchKeys:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.WeeklyContractBatchKeys:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.ContractRewardText:setText(Engine.Localize("CONTRACT_REWARD"))
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_E75_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_10AC_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.DailyContractBatchKeys:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.WeeklyContractBatchKeys:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.ContractRewardText:setText(Engine.Localize("CONTRACT_DAILY_REWARD_CAPS"))
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_10AC_
	registerVal8.DailyContract = registerVal9
	registerVal9 = {}
	local function __FUNC_12EF_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.DailyContractBatchKeys:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.WeeklyContractBatchKeys:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.ContractRewardText:setText(Engine.Localize("CONTRACT_WEEKLY_REWARD_CAPS"))
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_12EF_
	registerVal8.WeeklyContract = registerVal9
	registerVal2.clipsPerState = registerVal8
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "DailyContract"
	local function __FUNC_1530_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal11.condition = __FUNC_1530_
	local registerVal12 = {}
	registerVal12.stateName = "WeeklyContract"
	local function __FUNC_157D_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal12.condition = __FUNC_157D_
	registerVal10 = {registerVal11, registerVal12}
	registerVal2:mergeStateConditions(registerVal10)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

