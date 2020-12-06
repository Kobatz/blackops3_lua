-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_Contracts_ContractAmountWidget = registerVal1
function CoD.BM_Contracts_ContractAmountWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_Contracts_ContractAmountWidget)
	registerVal2.id = "BM_Contracts_ContractAmountWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 196.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 80.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 3.000000, 0.000000)
	registerVal3:setRGB(0.460000, 0.800000, 0.750000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_contract_blackjack_bg"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal3:setShaderVector(0.000000, 0.151282, 0.499992, 0.000000, 0.000000)
	registerVal3:setupNineSliceShader(30.000000, 30.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.ContractBacking0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 3.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_contract_blackjack_bg"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal4:setShaderVector(0.000000, 0.151282, 0.499992, 0.000000, 0.000000)
	registerVal4:setupNineSliceShader(30.000000, 30.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.ContractBacking = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, true, -94.250000, -38.250000)
	registerVal5:setTopBottom(false, false, -30.500000, 33.500000)
	registerVal5:setAlpha(0.500000)
	registerVal5:setImage(RegisterImage("uie_t7_blackmarket_contract_numberbacking"))
	registerVal2:addElement(registerVal5)
	registerVal2.Numberbacker = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 33.000000, 113.000000)
	registerVal6:setTopBottom(false, false, -39.000000, 41.000000)
	registerVal6:setImage(RegisterImage("uie_t7_blackmarket_contracts_blackjack_green"))
	registerVal2:addElement(registerVal6)
	registerVal2.GoldContracts = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 33.000000, 113.000000)
	registerVal7:setTopBottom(false, false, -39.000000, 41.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_blackmarket_contracts_blackjack_max"))
	registerVal2:addElement(registerVal7)
	registerVal2.SilverContracts = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(false, true, -100.750000, -34.750000)
	registerVal8:setTopBottom(false, false, -20.000000, 25.000000)
	registerVal8:setRGB(0.930000, 0.690000, 0.350000)
	registerVal8:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_ECF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(Engine.Localize(StorageLookup(arg1, "blackjack_contract_count", registerVal1)))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "StorageGlobal", "stats_mp", __FUNC_ECF_)
	registerVal2:addElement(registerVal8)
	registerVal2.ContractCounter = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(false, true, -103.750000, -30.750000)
	registerVal9:setTopBottom(false, false, 8.500000, 27.500000)
	registerVal9:setRGB(0.610000, 0.100000, 0.100000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setText(Engine.Localize("MENU_MAX"))
	registerVal9:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal9)
	registerVal2.TextBoxMax = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_FCF_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal5:completeAnimation()
		registerVal2.Numberbacker:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.GoldContracts:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.SilverContracts:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.ContractCounter:setLeftRight(false, true, -100.750000, -34.750000)
		registerVal2.ContractCounter:setTopBottom(false, false, -20.000000, 25.000000)
		registerVal2.ContractCounter:setRGB(0.930000, 0.690000, 0.350000)
		registerVal2.ContractCounter:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.TextBoxMax:setLeftRight(false, true, -103.750000, -30.750000)
		registerVal2.TextBoxMax:setTopBottom(false, false, 8.500000, 27.500000)
		registerVal2.TextBoxMax:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_FCF_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_1379_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal5:completeAnimation()
		registerVal2.Numberbacker:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.GoldContracts:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.SilverContracts:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.ContractCounter:setLeftRight(false, true, -99.750000, -33.750000)
		registerVal2.ContractCounter:setTopBottom(false, false, -27.000000, 18.000000)
		registerVal2.ContractCounter:setRGB(0.930000, 0.690000, 0.350000)
		registerVal2.ContractCounter:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.TextBoxMax:setLeftRight(false, true, -102.750000, -29.750000)
		registerVal2.TextBoxMax:setTopBottom(false, false, 7.500000, 26.500000)
		registerVal2.TextBoxMax:setAlpha(1.000000)
		registerVal2.TextBoxMax:setText(Engine.Localize("MPUI_MAX_CAPS"))
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_1379_
	registerVal10.Max = registerVal11
	registerVal11 = {}
	local function __FUNC_179F_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal5:completeAnimation()
		registerVal2.Numberbacker:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.GoldContracts:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.SilverContracts:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.ContractCounter:setLeftRight(false, true, -100.750000, -34.750000)
		registerVal2.ContractCounter:setTopBottom(false, false, -20.000000, 25.000000)
		registerVal2.ContractCounter:setRGB(0.400000, 0.400000, 0.400000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.TextBoxMax:setLeftRight(false, true, -103.750000, -30.750000)
		registerVal2.TextBoxMax:setTopBottom(false, false, 8.500000, 27.500000)
		registerVal2.TextBoxMax:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_179F_
	registerVal10.None = registerVal11
	registerVal2.clipsPerState = registerVal10
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Max"
	local function __FUNC_1B23_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal13.condition = __FUNC_1B23_
	local registerVal14 = {}
	registerVal14.stateName = "None"
	local function __FUNC_1B6D_(arg0, arg2, arg3)
		return IsStorageValueEqualTo(arg1, "stats_mp", "blackjack_contract_count", 0.000000)
	end

	registerVal14.condition = __FUNC_1B6D_
	registerVal12 = {registerVal13, registerVal14}
	registerVal2:mergeStateConditions(registerVal12)
	local function __FUNC_1C0C_(arg0)
		arg0.ContractCounter:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1C0C_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

