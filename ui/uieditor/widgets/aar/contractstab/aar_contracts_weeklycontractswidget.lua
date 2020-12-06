-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
require("ui.uieditor.widgets.AAR.ContractsTab.AAR_Contracts_timer")
require("ui.uieditor.widgets.AAR.ContractsTab.AAR_Contracts_ContractProgressWidget")
require("ui.uieditor.widgets.BlackMarket.BM_CryptokeyCounterIcon")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AAR_Contracts_WeeklyContractsWidget = registerVal1
function CoD.AAR_Contracts_WeeklyContractsWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AAR_Contracts_WeeklyContractsWidget)
	registerVal2.id = "AAR_Contracts_WeeklyContractsWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 495.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 296.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, -2.000000)
	registerVal3:setTopBottom(true, false, 2.000000, 32.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.400000)
	registerVal2:addElement(registerVal3)
	registerVal2.FEButtonPanel0 = registerVal3
	local registerVal4 = CoD.AAR_Contracts_timer.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 9.000000, 346.000000)
	registerVal4:setTopBottom(true, false, 7.000000, 26.000000)
	registerVal4.Weekly:setText(Engine.Localize("MPUI_BM_CONTRACT_WEEKLY"))
	registerVal4.Timer:setText(Engine.Localize("$(contractWeeklyRemaining)"))
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "HideTimer"
	local function __FUNC_17B5_(arg0, arg2, arg3)
		local registerVal3 = AreWeeklyContractsValid(arg1)
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_17B5_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "contractWeeklyAIndex")
	local function __FUNC_1815_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "contractWeeklyAIndex"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_1815_)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "contractWeeklyBIndex")
	local function __FUNC_193E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "contractWeeklyBIndex"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_193E_)
	registerVal2:addElement(registerVal4)
	registerVal2.BMContractsAARtitle0 = registerVal4
	local registerVal5 = LUI.UIList.new(arg0, arg1, 0.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal5:makeFocusable()
	registerVal5:setLeftRight(false, false, -273.000000, 273.000000)
	registerVal5:setTopBottom(true, false, 25.000000, 275.000000)
	registerVal5:setWidgetType(CoD.AAR_Contracts_ContractProgressWidget)
	registerVal5:setHorizontalCount(2.000000)
	registerVal5:setSpacing(0.000000)
	registerVal5:setDataSource("BlackMarketWeeklyContracts")
	registerVal2:addElement(registerVal5)
	registerVal2.ContractProgress = registerVal5
	local registerVal6 = CoD.BM_CryptokeyCounterIcon.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, -95.750000, -67.750000)
	registerVal6:setTopBottom(false, true, -50.760000, -22.760000)
	registerVal2:addElement(registerVal6)
	registerVal2.CryptokeyIcon = registerVal6
	registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(false, false, -62.750000, -34.750000)
	registerVal7:setTopBottom(false, true, -45.760000, -25.760000)
	registerVal7:setRGB(0.750000, 0.750000, 0.750000)
	registerVal7:setText(DvarLocalizedIntoString("weekly_contract_cryptokey_reward_count", "PERKS_ITEMTEXT"))
	registerVal7:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.Kryptokeys = registerVal7
	registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -158.000000, 153.000000)
	registerVal8:setTopBottom(false, true, -59.000000, -55.000000)
	registerVal8:setAlpha(0.250000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.CategoryListLine000 = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(false, false, 62.250000, 109.250000)
	registerVal9:setTopBottom(false, true, -45.760000, -25.760000)
	registerVal9:setRGB(0.750000, 0.750000, 0.750000)
	registerVal9:setText(DvarLocalizedIntoString("weekly_contract_blackjack_contract_reward_count", "PERKS_ITEMTEXT"))
	registerVal9:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal9)
	registerVal2.Contracts = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, false, 28.750000, 62.250000)
	registerVal10:setTopBottom(false, true, -52.510000, -19.010000)
	registerVal10:setImage(RegisterImage("uie_t7_blackmarket_contract_smallicon"))
	registerVal2:addElement(registerVal10)
	registerVal2.cryptokey = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, true, 24.000000, -26.000000)
	registerVal11:setTopBottom(true, false, 195.000000, 215.000000)
	registerVal11:setRGB(0.940000, 0.890000, 0.590000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setText(LocalizeToUpperString("CONTRACT_NULL"))
	registerVal11:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal11:setLetterSpacing(-0.500000)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal11)
	registerVal2.InvalidContractName = registerVal11
	local registerVal12 = LUI.UIText.new()
	registerVal12:setLeftRight(false, false, -200.000000, 200.000000)
	registerVal12:setTopBottom(true, false, 215.000000, 235.000000)
	registerVal12:setRGB(0.800000, 0.800000, 0.800000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setText(Engine.Localize("CONTRACT_NULL_DESC"))
	registerVal12:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal12)
	registerVal2.InvalidContractDesc = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(false, true, -43.000000, 6.000000)
	registerVal13:setTopBottom(true, false, 1.000000, 33.000000)
	registerVal13:setImage(RegisterImage("uie_t7_bm_contracts_completed_ribbon"))
	registerVal2:addElement(registerVal13)
	registerVal2.CompletedIcon = registerVal13
	local registerVal14 = {}
	local registerVal15 = {}
	local function __FUNC_1A66_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal5:completeAnimation()
		registerVal2.ContractProgress:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CryptokeyIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Kryptokeys:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.CategoryListLine000:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal11:completeAnimation()
		registerVal2.InvalidContractName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.InvalidContractDesc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.CompletedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_1A66_
	registerVal14.DefaultState = registerVal15
	registerVal15 = {}
	local function __FUNC_1DA7_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal5:completeAnimation()
		registerVal2.ContractProgress:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CryptokeyIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Kryptokeys:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.CategoryListLine000:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Contracts:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.cryptokey:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.InvalidContractName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.InvalidContractDesc:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.CompletedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_1DA7_
	registerVal14.InvalidContract = registerVal15
	registerVal15 = {}
	local function __FUNC_2190_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal5:completeAnimation()
		registerVal2.ContractProgress:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CryptokeyIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Kryptokeys:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.CategoryListLine000:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Contracts:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.cryptokey:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.InvalidContractName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.InvalidContractDesc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.CompletedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_2190_
	registerVal14.Completed = registerVal15
	registerVal2.clipsPerState = registerVal14
	local registerVal16 = {}
	local registerVal17 = {}
	registerVal17.stateName = "InvalidContract"
	local function __FUNC_257C_(arg0, arg2, arg3)
		local registerVal3 = AreWeeklyContractsValid(arg1)
		return (not registerVal3)
	end

	registerVal17.condition = __FUNC_257C_
	local registerVal18 = {}
	registerVal18.stateName = "Completed"
	local function __FUNC_25DD_(arg0, arg2, arg3)
		return AreWeeklyContractsComplete(arg1)
	end

	registerVal18.condition = __FUNC_25DD_
	registerVal16 = {registerVal17, registerVal18}
	registerVal2:mergeStateConditions(registerVal16)
	registerVal17 = Engine.GetGlobalModel()
	registerVal16 = Engine.GetModel(registerVal17, "contractWeeklyAIndex")
	local function __FUNC_263C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "contractWeeklyAIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal16, __FUNC_263C_)
	registerVal17 = Engine.GetGlobalModel()
	registerVal16 = Engine.GetModel(registerVal17, "contractWeeklyBIndex")
	local function __FUNC_2766_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "contractWeeklyBIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal16, __FUNC_2766_)
	registerVal5.id = "ContractProgress"
	local function __FUNC_288E_(arg0)
		arg0.FEButtonPanel0:close()
		arg0.BMContractsAARtitle0:close()
		arg0.ContractProgress:close()
		arg0.CryptokeyIcon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_288E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

