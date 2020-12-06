-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Heroes.ChooseCharacterLoadout_CardBack_FrontOfCardFooter")
require("ui.uieditor.widgets.BlackMarket.BM_contracts_choosespecialist_CC")
local function __FUNC_2AC_(arg0, arg1, arg2)
	arg0:setForceMouseEventDispatch(true)
	arg0.ChooseCharacterLoadoutCardBackFrontOfCardFooter.clickableButton.m_button = Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE
	arg0.ChooseCharacterLoadoutCardBackFrontOfCardFooter.clickableButton.keyshortcut:setText(Engine.Localize("[^3P^7]"))
end

local function __FUNC_46A_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_2AC_(arg0, arg1, arg2)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.ChooseCharacterLoadoutCarouselItem_SideBet = registerVal3
local function __FUNC_4DB_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.ChooseCharacterLoadoutCarouselItem_SideBet)
	registerVal2.id = "ChooseCharacterLoadoutCarouselItem_SideBet"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 816.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 500.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.background = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -4.000000, 821.000000)
	registerVal4:setTopBottom(true, false, -49.000000, 505.000000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_contracts_character_backimg"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 422.290000, -30.000000)
	registerVal5:setTopBottom(true, true, 215.130000, -74.250000)
	registerVal5:setImage(RegisterImage("uie_t7_blackmarket_contract_blackjack_bg"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal5:setShaderVector(0.000000, 0.082483, 0.142439, 0.000000, 0.000000)
	registerVal5:setupNineSliceShader(30.000000, 30.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.ContractBacking = registerVal5
	local registerVal6 = CoD.ChooseCharacterLoadout_CardBack_FrontOfCardFooter.new(arg0, arg1)
	registerVal6:setLeftRight(false, true, -97.000000, -23.000000)
	registerVal6:setTopBottom(false, true, -59.000000, -25.500000)
	registerVal6.BMContractsspecialistesinglebtnbg:setAlpha(1.000000)
	registerVal6.BlackBox0:setAlpha(0.000000)
	registerVal6.BlackBox:setAlpha(0.000000)
	registerVal6.Line:setAlpha(0.000000)
	registerVal6.frameImage:setAlpha(0.000000)
	local function __FUNC_1565_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.Button2:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "Controller", "alt2_button_image", __FUNC_1565_)
	registerVal2:addElement(registerVal6)
	registerVal2.ChooseCharacterLoadoutCardBackFrontOfCardFooter = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 425.000000, -30.000000)
	registerVal7:setTopBottom(true, false, 97.250000, 98.000000)
	registerVal7:setRGB(0.870000, 0.990000, 1.000000)
	registerVal7:setAlpha(0.500000)
	registerVal2:addElement(registerVal7)
	registerVal2.keyline1 = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 428.930000, 793.000000)
	registerVal8:setTopBottom(true, false, 72.250000, 96.250000)
	registerVal8:setRGB(0.460000, 0.800000, 0.750000)
	registerVal8:setText(LocalizeToUpperString("CONTRACT_SIDE_BET"))
	registerVal8:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal8:setLetterSpacing(-0.500000)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal8)
	registerVal2.ContractLabel = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, false, 429.930000, 794.000000)
	registerVal9:setTopBottom(true, false, 195.000000, 215.000000)
	registerVal9:setRGB(0.460000, 0.800000, 0.750000)
	registerVal9:setText(Engine.Localize("MENU_REWARD_CAPS"))
	registerVal9:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal9)
	registerVal2.ContractLabel0 = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, false, 440.000000, 786.000000)
	registerVal10:setTopBottom(true, false, 106.880000, 124.880000)
	registerVal10:setRGB(0.880000, 0.880000, 0.880000)
	registerVal10:setText(Engine.Localize("MENU_CONTRACT_DESCRIPTIONS"))
	registerVal10:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal10)
	registerVal2.loadoutItemDescription0 = registerVal10
	local registerVal11 = CoD.BM_contracts_choosespecialist_CC.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 416.430000, 785.000000)
	registerVal11:setTopBottom(true, false, 229.000000, 426.750000)
	local function __FUNC_1635_(arg0)
		registerVal11:setModel(arg0, arg1)
	end

	registerVal11:subscribeToGlobalModel(arg1, "SideBetCurrentChallenge", nil, __FUNC_1635_)
	local function __FUNC_1686_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.text:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal11:subscribeToGlobalModel(arg1, "SideBetCurrentChallenge", "setCount", __FUNC_1686_)
	registerVal2:addElement(registerVal11)
	registerVal2.BMcontractschoosespecialistCC = registerVal11
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "DisabledFocus"
	local function __FUNC_1758_(arg0, arg2, arg3)
		return IsGlobalModelValueTrue(arg2, arg1, "heroSelectionTutorial")
	end

	registerVal15.condition = __FUNC_1758_
	registerVal14 = {registerVal15}
	registerVal2:mergeStateConditions(registerVal14)
	registerVal15 = Engine.GetGlobalModel()
	registerVal14 = Engine.GetModel(registerVal15, "heroSelectionTutorial")
	local function __FUNC_17DB_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "heroSelectionTutorial"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal14, __FUNC_17DB_)
	local function __FUNC_1903_(arg0)
		arg0.ChooseCharacterLoadoutCardBackFrontOfCardFooter:close()
		arg0.BMcontractschoosespecialistCC:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1903_)
	if __FUNC_46A_ then
		__FUNC_46A_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ChooseCharacterLoadoutCarouselItem_SideBet.new = __FUNC_4DB_
