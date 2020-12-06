-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.Common.common_PanelBox01")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_Contracts_ContractAmount_ARR_Widget = registerVal1
function CoD.BM_Contracts_ContractAmount_ARR_Widget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_Contracts_ContractAmount_ARR_Widget)
	registerVal2.id = "BM_Contracts_ContractAmount_ARR_Widget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 205.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 80.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_ButtonBoxLrgInactive.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 2.500000, -1.200000)
	registerVal3:setTopBottom(true, true, 6.000000, -6.500000)
	registerVal3:setAlpha(0.150000)
	registerVal2:addElement(registerVal3)
	registerVal2.BoxButtonLrgInactive = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, true, -94.250000, -38.250000)
	registerVal4:setTopBottom(true, false, 8.500000, 72.500000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_contract_numberbacking"))
	registerVal2:addElement(registerVal4)
	registerVal2.Numberbacker = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 27.000000, 107.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 80.000000)
	registerVal5:setImage(RegisterImage("uie_t7_blackmarket_contracts_blackjack_green"))
	registerVal2:addElement(registerVal5)
	registerVal2.GoldContracts = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 27.000000, 107.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 80.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_blackmarket_contracts_blackjack_max"))
	registerVal2:addElement(registerVal6)
	registerVal2.SilverContracts = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(false, true, -100.250000, -34.250000)
	registerVal7:setTopBottom(true, false, 18.000000, 63.000000)
	registerVal7:setRGB(0.930000, 0.690000, 0.350000)
	registerVal7:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_DEA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(StorageLookup(arg1, "blackjack_contract_count", registerVal1)))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "StorageGlobal", "stats_mp", __FUNC_DEA_)
	registerVal2:addElement(registerVal7)
	registerVal2.ContractCounter0 = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(false, true, -103.750000, -30.750000)
	registerVal8:setTopBottom(true, false, 47.500000, 66.500000)
	registerVal8:setRGB(0.610000, 0.100000, 0.100000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setText(Engine.Localize("MPUI_MAX_CAPS"))
	registerVal8:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal8)
	registerVal2.TextBoxMax = registerVal8
	local registerVal9 = CoD.common_PanelBox01.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, 2.500000, -1.200000)
	registerVal9:setTopBottom(true, true, 5.500000, -6.500000)
	registerVal9.Backing:setAlpha(0.050000)
	registerVal9.Image:setAlpha(0.250000)
	registerVal2:addElement(registerVal9)
	registerVal2.commonPanelBox02 = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_EEB_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal11.DefaultClip = __FUNC_EEB_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_F4A_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal7:completeAnimation()
		registerVal2.ContractCounter0:setLeftRight(false, true, -100.250000, -34.250000)
		registerVal2.ContractCounter0:setTopBottom(true, false, 14.000000, 59.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TextBoxMax:setLeftRight(false, true, -103.750000, -30.750000)
		registerVal2.TextBoxMax:setTopBottom(true, false, 46.500000, 65.500000)
		registerVal2.TextBoxMax:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal11.DefaultClip = __FUNC_F4A_
	registerVal10.Max = registerVal11
	registerVal11 = {}
	local function __FUNC_1180_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal5:completeAnimation()
		registerVal2.GoldContracts:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.SilverContracts:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ContractCounter0:setRGB(0.400000, 0.400000, 0.400000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal11.DefaultClip = __FUNC_1180_
	registerVal10.None = registerVal11
	registerVal2.clipsPerState = registerVal10
	local function __FUNC_1362_(arg0)
		arg0.BoxButtonLrgInactive:close()
		arg0.commonPanelBox02:close()
		arg0.ContractCounter0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1362_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

