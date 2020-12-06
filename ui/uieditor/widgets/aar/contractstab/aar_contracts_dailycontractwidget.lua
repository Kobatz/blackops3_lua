-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
require("ui.uieditor.widgets.AAR.ContractsTab.AAR_Contracts_timer")
require("ui.uieditor.widgets.AAR.ContractsTab.AAR_Contracts_ContractProgressWidget")
require("ui.uieditor.widgets.AAR.ContractsTab.AAR_Contracts_DoubleCryptokeys")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AAR_Contracts_DailyContractWidget = registerVal1
function CoD.AAR_Contracts_DailyContractWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AAR_Contracts_DailyContractWidget)
	registerVal2.id = "AAR_Contracts_DailyContractWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 275.000000)
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
	registerVal4:setLeftRight(true, false, 9.000000, 176.500000)
	registerVal4:setTopBottom(true, false, 7.000000, 26.000000)
	registerVal4.Weekly:setText(Engine.Localize("MPUI_BM_CONTRACT_DAILY"))
	registerVal4.Timer:setText(Engine.Localize("$(contractDailyRemaining)"))
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "HideTimer"
	local function __FUNC_F99_(arg0, arg2, arg3)
		local registerVal3 = IsDailyContractValid(arg1)
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_F99_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "contractDailyIndex")
	local function __FUNC_FF6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "contractDailyIndex"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_FF6_)
	registerVal2:addElement(registerVal4)
	registerVal2.BMContractsAARtitle = registerVal4
	local registerVal5 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal5:makeFocusable()
	registerVal5:setLeftRight(false, false, -137.500000, 135.500000)
	registerVal5:setTopBottom(true, false, 25.000000, 275.000000)
	registerVal5:setWidgetType(CoD.AAR_Contracts_ContractProgressWidget)
	registerVal5:setDataSource("BlackMarketDailyContracts")
	registerVal2:addElement(registerVal5)
	registerVal2.ContractProgress = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -53.500000, 53.500000)
	registerVal6:setTopBottom(false, true, -53.000000, -49.000000)
	registerVal6:setAlpha(0.150000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.CategoryListLine000 = registerVal6
	registerVal7 = CoD.AAR_Contracts_DoubleCryptokeys.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, -6.840000, 207.160000)
	registerVal7:setTopBottom(false, true, -70.760000, 17.240000)
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "DoubleCryptoKeys"
	local function __FUNC_111C_(arg0, arg2, arg3)
		return IsDoubleDailyContract_NoValidation(arg1)
	end

	registerVal11.condition = __FUNC_111C_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal2:addElement(registerVal7)
	registerVal2.AARContractsDoubleCryptokeys = registerVal7
	registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, true, -43.000000, 6.000000)
	registerVal8:setTopBottom(true, false, 1.000000, 33.000000)
	registerVal8:setImage(RegisterImage("uie_t7_bm_contracts_completed_ribbon"))
	registerVal2:addElement(registerVal8)
	registerVal2.CompletedIcon = registerVal8
	local registerVal9 = {}
	registerVal10 = {}
	local function __FUNC_1184_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal6:completeAnimation()
		registerVal2.CategoryListLine000:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.AARContractsDoubleCryptokeys:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.CompletedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_1184_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_135E_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal6:completeAnimation()
		registerVal2.CategoryListLine000:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.AARContractsDoubleCryptokeys:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal10.DefaultClip = __FUNC_135E_
	registerVal9.InvalidContract = registerVal10
	registerVal10 = {}
	local function __FUNC_14D1_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal6:completeAnimation()
		registerVal2.CategoryListLine000:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.AARContractsDoubleCryptokeys:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.CompletedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_14D1_
	registerVal9.Completed = registerVal10
	registerVal2.clipsPerState = registerVal9
	registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "InvalidContract"
	local function __FUNC_16A5_(arg0, arg2, arg3)
		local registerVal3 = IsDailyContractValid(arg1)
		return (not registerVal3)
	end

	registerVal12.condition = __FUNC_16A5_
	local registerVal13 = {}
	registerVal13.stateName = "Completed"
	local function __FUNC_1702_(arg0, arg2, arg3)
		return IsDailyContractComplete(arg1)
	end

	registerVal13.condition = __FUNC_1702_
	registerVal11 = {registerVal12, registerVal13}
	registerVal2:mergeStateConditions(registerVal11)
	registerVal12 = Engine.GetGlobalModel()
	registerVal11 = Engine.GetModel(registerVal12, "contractDailyIndex")
	local function __FUNC_175D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "contractDailyIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_175D_)
	registerVal5.id = "ContractProgress"
	local function __FUNC_1884_(arg0)
		arg0.FEButtonPanel0:close()
		arg0.BMContractsAARtitle:close()
		arg0.ContractProgress:close()
		arg0.AARContractsDoubleCryptokeys:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1884_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

