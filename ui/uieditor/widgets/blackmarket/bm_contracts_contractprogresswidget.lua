-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BlackMarket.BM_Contracts_PercentCompleteWidget")
require("ui.uieditor.widgets.BlackMarket.BM_Contracts_DailyContractsTitle")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_Contracts_ContractProgressWidget = registerVal1
function CoD.BM_Contracts_ContractProgressWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_Contracts_ContractProgressWidget)
	registerVal2.id = "BM_Contracts_ContractProgressWidget"
	registerVal2.soundSet = "Blackmarket_extra"
	registerVal2:setLeftRight(true, false, 0.000000, 232.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 300.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.BM_Contracts_PercentCompleteWidget.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -72.000000, 72.000000)
	registerVal3:setTopBottom(true, false, 29.000000, 173.000000)
	registerVal3:setScale(0.850000)
	local function __FUNC_A87_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setAlpha(HideIfNumEqualTo(0.000000, registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "index", true, __FUNC_A87_)
	local function __FUNC_B44_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_B44_)
	local function __FUNC_B96_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal3.percentCompleteCircle:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "percentComplete", true, __FUNC_B96_)
	local function __FUNC_D17_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.percentText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "fractionText", true, __FUNC_D17_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Complete"
	local function __FUNC_DEF_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isComplete")
	end

	registerVal7.condition = __FUNC_DEF_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	local function __FUNC_E62_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isComplete"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:linkToElementModel(registerVal3, "isComplete", true, __FUNC_E62_)
	registerVal2:addElement(registerVal3)
	registerVal2.ContractPercentCompleteWidget = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(false, false, -104.000000, 104.000000)
	registerVal4:setTopBottom(true, false, 188.000000, 206.000000)
	registerVal4:setRGB(0.880000, 0.880000, 0.880000)
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_F80_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "description", true, __FUNC_F80_)
	registerVal2:addElement(registerVal4)
	registerVal2.ContractDesc = registerVal4
	local registerVal5 = CoD.BM_Contracts_DailyContractsTitle.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 232.000000)
	registerVal5:setTopBottom(true, false, 169.000000, 188.000000)
	local function __FUNC_103A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.ContractName:setText(LocalizeToUpperString(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "title", true, __FUNC_103A_)
	registerVal2:addElement(registerVal5)
	registerVal2.BMContractsDailyContractsTitle = registerVal5
	local function __FUNC_1115_(arg0)
		arg0.ContractPercentCompleteWidget:close()
		arg0.BMContractsDailyContractsTitle:close()
		arg0.ContractDesc:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1115_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

