-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_Contracts_DailyContractsTitle = registerVal1
function CoD.BM_Contracts_DailyContractsTitle.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_Contracts_DailyContractsTitle)
	registerVal2.id = "BM_Contracts_DailyContractsTitle"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 232.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 19.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, true, 0.000000, LanguageOverrideNumber("arabic", -12.000000, 0.000000))
	registerVal3:setTopBottom(true, false, 0.000000, 19.000000)
	registerVal3:setRGB(0.460000, 0.800000, 0.750000)
	registerVal3:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal3:setLetterSpacing(-0.500000)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_6B2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(LocalizeToUpperString(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "title", true, __FUNC_6B2_)
	registerVal2:addElement(registerVal3)
	registerVal2.ContractName = registerVal3
	local function __FUNC_76B_(arg0)
		arg0.ContractName:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_76B_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

