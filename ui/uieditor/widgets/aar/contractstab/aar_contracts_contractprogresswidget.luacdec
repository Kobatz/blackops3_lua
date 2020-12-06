-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.AAR.ContractsTab.AAR_Contracts_PercentCompleteWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AAR_Contracts_ContractProgressWidget = registerVal1
function CoD.AAR_Contracts_ContractProgressWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AAR_Contracts_ContractProgressWidget)
	registerVal2.id = "AAR_Contracts_ContractProgressWidget"
	registerVal2.soundSet = "Blackmarket_extra"
	registerVal2:setLeftRight(true, false, 0.000000, 273.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 250.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.AAR_Contracts_PercentCompleteWidget.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -63.000000, 61.000000)
	registerVal3:setTopBottom(true, false, 16.000000, 140.000000)
	registerVal3:setScale(0.900000)
	local function __FUNC_AC4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setAlpha(HideIfNumEqualTo(0.000000, registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "index", true, __FUNC_AC4_)
	local function __FUNC_B84_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_B84_)
	local function __FUNC_BD6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal3.percentCompleteCircle:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "percentComplete", true, __FUNC_BD6_)
	local function __FUNC_D57_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.percentText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "fractionText", true, __FUNC_D57_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Complete"
	local function __FUNC_E2F_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isComplete")
	end

	registerVal7.condition = __FUNC_E2F_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	local function __FUNC_EA2_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isComplete"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:linkToElementModel(registerVal3, "isComplete", true, __FUNC_EA2_)
	registerVal2:addElement(registerVal3)
	registerVal2.ContractPercentCompleteWidget = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 145.000000, 165.000000)
	registerVal4:setRGB(0.940000, 0.890000, 0.590000)
	registerVal4:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal4:setLetterSpacing(-0.500000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_FC0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(LocalizeToUpperString(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "title", true, __FUNC_FC0_)
	registerVal2:addElement(registerVal4)
	registerVal2.ContractName = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(false, false, -125.000000, 125.000000)
	registerVal5:setTopBottom(true, false, 165.000000, 185.000000)
	registerVal5:setRGB(0.800000, 0.800000, 0.800000)
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_107B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "description", true, __FUNC_107B_)
	registerVal2:addElement(registerVal5)
	registerVal2.ContractDesc = registerVal5
	local function __FUNC_1132_(arg0)
		arg0.ContractPercentCompleteWidget:close()
		arg0.ContractName:close()
		arg0.ContractDesc:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1132_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

