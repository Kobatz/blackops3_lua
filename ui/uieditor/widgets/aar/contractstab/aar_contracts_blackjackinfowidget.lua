-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
require("ui.uieditor.widgets.BlackMarket.BM_Contracts_CC_AAR_Widget")
require("ui.uieditor.widgets.BlackMarket.BM_Contracts_ContractAmount_ARR_Widget")
require("ui.uieditor.widgets.BlackMarket.BM_Contracts_BJ_ActivatedWidget")
require("ui.uieditor.widgets.BlackMarket.BM_Contracts_AAR_title")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AAR_Contracts_BlackjackInfoWidget = registerVal1
function CoD.AAR_Contracts_BlackjackInfoWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.AAR_Contracts_BlackjackInfoWidget)
	registerVal2.id = "AAR_Contracts_BlackjackInfoWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 414.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 518.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, -2.000000)
	registerVal3:setTopBottom(true, true, 2.000000, -485.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.400000)
	registerVal2:addElement(registerVal3)
	registerVal2.FEButtonPanel0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, true, -426.000000, 0.840000)
	registerVal4:setTopBottom(false, true, -494.760000, 7.410000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_contracts_blackjack_off"))
	registerVal2:addElement(registerVal4)
	registerVal2.BlackjackIconOff = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, true, -409.000000, 17.840000)
	registerVal5:setTopBottom(false, true, -494.760000, 7.410000)
	registerVal5:setAlpha(0.800000)
	registerVal5:setImage(RegisterImage("uie_t7_blackmarket_contracts_blackjack_completed"))
	registerVal2:addElement(registerVal5)
	registerVal2.BlackjackIconOn = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 13.000000, 273.750000)
	registerVal6:setTopBottom(true, false, 169.500000, 187.500000)
	registerVal6:setRGB(0.750000, 0.750000, 0.750000)
	registerVal6:setText(Engine.Localize("MPUI_BM_CONTRACT_BLACKJACK_CONTRACTS_DESC"))
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.BlackjackContractsDescription = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 12.000000, 289.250000)
	registerVal7:setTopBottom(true, false, 295.500000, 315.500000)
	registerVal7:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal7:setLetterSpacing(-0.500000)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_167B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "SideBetCurrentChallenge", "title", __FUNC_167B_)
	registerVal2:addElement(registerVal7)
	registerVal2.SideBetTitle = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 36.000000, 250.000000)
	registerVal8:setTopBottom(true, false, 273.000000, 277.000000)
	registerVal8:setAlpha(0.150000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.CategoryListLine000 = registerVal8
	local registerVal9 = CoD.BM_Contracts_CC_AAR_Widget.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, -16.380000, 333.630000)
	registerVal9:setTopBottom(true, false, 305.500000, 481.500000)
	local function __FUNC_1732_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:subscribeToGlobalModel(arg1, "SideBetCurrentChallenge", nil, __FUNC_1732_)
	registerVal2:addElement(registerVal9)
	registerVal2.BMContractsCCAARWidget = registerVal9
	local registerVal10 = CoD.BM_Contracts_ContractAmount_ARR_Widget.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 9.000000, 214.000000)
	registerVal10:setTopBottom(true, false, 85.500000, 165.500000)
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "None"
	local function __FUNC_1782_(arg0, arg2, arg3)
		return IsStorageValueEqualTo(arg1, "stats_mp", "blackjack_contract_count", 0.000000)
	end

	registerVal14.condition = __FUNC_1782_
	registerVal13 = {registerVal14}
	registerVal10:mergeStateConditions(registerVal13)
	registerVal2:addElement(registerVal10)
	registerVal2.BMContractsContractAmountARRWidget = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, false, 13.000000, 273.750000)
	registerVal11:setTopBottom(true, false, 241.000000, 258.000000)
	registerVal11:setRGB(0.750000, 0.750000, 0.750000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setText(Engine.Localize("MPUI_BM_CONTRACT_BLACKJACK_CONTRACTS_DESC_2"))
	registerVal11:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal11)
	registerVal2.BlackjackContractsDescription0 = registerVal11
	local registerVal12 = CoD.BM_Contracts_BJ_ActivatedWidget.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 8.250000, 272.250000)
	registerVal12:setTopBottom(true, false, 235.500000, 259.500000)
	registerVal12.BMContractsBJTextWidget.Activated:setText(Engine.Localize("MENU_ACTIVATED_CAPS"))
	local function __FUNC_1820_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.BMContractsBJTextWidget.TimeRemaining0:setText(LocalizeIntoString("MPUI_BM_CONTRACTS_TIME_REMAINING", SecondsAsTime(registerVal1)))
		end
	end

	registerVal12:subscribeToGlobalModel(arg1, "SideBetCurrentChallenge", "timeSeconds", __FUNC_1820_)
	registerVal2:addElement(registerVal12)
	registerVal2.BMContractsBJActivatedWidget = registerVal12
	registerVal13 = CoD.BM_Contracts_AAR_title.new(arg0, arg1)
	registerVal13:setLeftRight(true, true, 1.000000, -1.000000)
	registerVal13:setTopBottom(true, false, 0.000000, 33.000000)
	registerVal13.SubTitle:setText(Engine.Localize("MPUI_BM_CONTRACT_BLACKJACK"))
	registerVal13.SubTitle:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal13)
	registerVal2.BMContractsAARtitle = registerVal13
	registerVal14 = LUI.UIText.new()
	registerVal14:setLeftRight(true, false, 12.000000, 294.500000)
	registerVal14:setTopBottom(true, false, 69.690000, 89.690000)
	registerVal14:setRGB(0.940000, 0.890000, 0.590000)
	registerVal14:setText(Engine.Localize("FEATURE_CONTRACTS_CAPS"))
	registerVal14:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal14:setLetterSpacing(-0.500000)
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal14)
	registerVal2.ContractLabel = registerVal14
	local registerVal15 = {}
	local registerVal16 = {}
	local function __FUNC_1976_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal2.BlackjackIconOff:setLeftRight(false, true, -426.000000, 0.840000)
		registerVal2.BlackjackIconOff:setTopBottom(false, true, -494.760000, 7.410000)
		registerVal2.BlackjackIconOff:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BlackjackIconOn:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BlackjackContractsDescription:setLeftRight(true, false, 13.000000, 273.750000)
		registerVal2.BlackjackContractsDescription:setTopBottom(true, false, 184.500000, 202.500000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.SideBetTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.CategoryListLine000:setLeftRight(true, false, 12.000000, 226.000000)
		registerVal2.CategoryListLine000:setTopBottom(true, false, 234.000000, 238.000000)
		registerVal2.CategoryListLine000:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BMContractsCCAARWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.BlackjackContractsDescription0:setLeftRight(true, false, 13.000000, 273.750000)
		registerVal2.BlackjackContractsDescription0:setTopBottom(true, false, 256.000000, 274.000000)
		registerVal2.BlackjackContractsDescription0:setAlpha(1.000000)
		registerVal2.BlackjackContractsDescription0:setText(Engine.Localize("MPUI_BM_CONTRACT_BLACKJACK_CONTRACTS_DESC_2"))
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.BMContractsBJActivatedWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal16.DefaultClip = __FUNC_1976_
	registerVal15.DefaultState = registerVal16
	registerVal16 = {}
	local function __FUNC_1F76_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal4:completeAnimation()
		registerVal2.BlackjackIconOff:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BlackjackIconOn:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.SideBetTitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.CategoryListLine000:setLeftRight(true, false, 21.000000, 235.000000)
		registerVal2.CategoryListLine000:setTopBottom(true, false, 273.000000, 277.000000)
		registerVal2.CategoryListLine000:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BMContractsCCAARWidget:setScale(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.BlackjackContractsDescription0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal16.DefaultClip = __FUNC_1F76_
	registerVal15.Activated = registerVal16
	registerVal2.clipsPerState = registerVal15
	local registerVal17 = {}
	local registerVal18 = {}
	registerVal18.stateName = "Activated"
	local function __FUNC_2315_(arg0, arg2, arg3)
		return IsBlackjackContractActive(arg1)
	end

	registerVal18.condition = __FUNC_2315_
	registerVal17 = {registerVal18}
	registerVal2:mergeStateConditions(registerVal17)
	local function __FUNC_2373_(arg0)
		arg0.FEButtonPanel0:close()
		arg0.BMContractsCCAARWidget:close()
		arg0.BMContractsContractAmountARRWidget:close()
		arg0.BMContractsBJActivatedWidget:close()
		arg0.BMContractsAARtitle:close()
		arg0.SideBetTitle:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2373_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

