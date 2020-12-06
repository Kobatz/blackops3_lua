-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BlackMarket.BM_CryptokeyCounterIcon")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_Contracts_DoubleCryptokeys = registerVal1
function CoD.BM_Contracts_DoubleCryptokeys.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_Contracts_DoubleCryptokeys)
	registerVal2.id = "BM_Contracts_DoubleCryptokeys"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 214.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 88.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.BM_CryptokeyCounterIcon.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -20.000000, 8.000000)
	registerVal3:setTopBottom(false, true, -55.000000, -27.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.CryptokeyIcon = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -1.000000, 95.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 88.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_bm_contracts_doublecrypto"))
	registerVal2:addElement(registerVal4)
	registerVal2.DoubleCryptokeys = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 102.000000, 126.000000)
	registerVal5:setTopBottom(true, false, 36.000000, 60.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_bm_contracts_redbox"))
	registerVal2:addElement(registerVal5)
	registerVal2.redbox = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(false, false, 18.000000, 66.000000)
	registerVal6:setTopBottom(false, true, -49.760000, -29.760000)
	registerVal6:setRGB(0.460000, 0.800000, 0.750000)
	registerVal6:setText(DvarLocalizedIntoString("daily_contract_cryptokey_reward_count", "PERKS_ITEMTEXT"))
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.ContractDesc = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(false, false, 18.000000, 66.000000)
	registerVal7:setTopBottom(false, true, -50.000000, -30.000000)
	registerVal7:setRGB(1.000000, 0.190000, 0.190000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setText(Engine.Localize("PERKS_ITEMTEXT"))
	registerVal7:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.ContractDescREd = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 131.000000, 140.000000)
	registerVal8:setTopBottom(true, false, 44.000000, 53.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_bm_contracts_yellow_arrow"))
	registerVal2:addElement(registerVal8)
	registerVal2.arrow = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(false, false, 30.000000, 78.000000)
	registerVal9:setTopBottom(false, true, -50.000000, -30.000000)
	registerVal9:setRGB(1.000000, 0.850000, 0.330000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setText(DvarLocalizedIntoString("daily_contract_cryptokey_reward_count", "PERKS_ITEMTEXT"))
	registerVal9:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal9)
	registerVal2.ContractDescPromo = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_EAF_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.CryptokeyIcon:setLeftRight(false, false, -15.000000, 13.000000)
		registerVal2.CryptokeyIcon:setTopBottom(false, true, -55.000000, -27.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.DoubleCryptokeys:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.redbox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ContractDesc:setLeftRight(false, false, 18.000000, 66.000000)
		registerVal2.ContractDesc:setTopBottom(false, true, -49.760000, -29.760000)
		registerVal2.ContractDesc:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ContractDescREd:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.arrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.ContractDescPromo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_EAF_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_12A9_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.CryptokeyIcon:setLeftRight(false, false, -15.000000, 13.000000)
		registerVal2.CryptokeyIcon:setTopBottom(false, true, -55.000000, -27.000000)
		registerVal2.CryptokeyIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.DoubleCryptokeys:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.redbox:setLeftRight(true, false, 108.000000, 132.000000)
		registerVal2.redbox:setTopBottom(true, false, 36.000000, 60.000000)
		registerVal2.redbox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ContractDesc:setLeftRight(false, false, 18.000000, 66.000000)
		registerVal2.ContractDesc:setTopBottom(false, true, -49.760000, -29.760000)
		registerVal2.ContractDesc:setAlpha(0.000000)
		registerVal2.ContractDesc:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ContractDescREd:setLeftRight(false, false, -5.000000, 31.000000)
		registerVal2.ContractDescREd:setTopBottom(false, true, -50.000000, -30.000000)
		registerVal2.ContractDescREd:setAlpha(0.000000)
		registerVal2.ContractDescREd:setText(Engine.Localize("10"))
		registerVal2.ContractDescREd:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.arrow:setLeftRight(true, false, 135.000000, 144.000000)
		registerVal2.arrow:setTopBottom(true, false, 44.000000, 53.000000)
		registerVal2.arrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.ContractDescPromo:setLeftRight(false, false, 18.000000, 66.000000)
		registerVal2.ContractDescPromo:setTopBottom(false, true, -51.000000, -31.000000)
		registerVal2.ContractDescPromo:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_12A9_
	registerVal10.DoubleCryptoKeys = registerVal11
	registerVal2.clipsPerState = registerVal10
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "DoubleCryptoKeys"
	local function __FUNC_1976_(arg0, arg2, arg3)
		return IsDoubleDailyContract(arg1)
	end

	registerVal13.condition = __FUNC_1976_
	registerVal12 = {registerVal13}
	registerVal2:mergeStateConditions(registerVal12)
	registerVal13 = Engine.GetGlobalModel()
	registerVal12 = Engine.GetModel(registerVal13, "autoevents.cycled")
	local function __FUNC_19CF_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "autoevents.cycled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal12, __FUNC_19CF_)
	local function __FUNC_1AF3_(arg0)
		arg0.CryptokeyIcon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1AF3_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

