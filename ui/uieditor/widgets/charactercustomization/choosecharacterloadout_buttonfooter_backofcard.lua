-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BlackMarket.BM_Contracts_Specialist_btn_bg")
require("ui.uieditor.widgets.CAC.NewBreadcrumbCount")
require("ui.uieditor.widgets.PC.ChooseCharacter.ChooseCharacter_CardClickButton")
local function __FUNC_2E8_(arg0, arg1, arg2)
	arg0:setForceMouseEventDispatch(true)
	arg0.clickableButton.m_button = Enum.LUIButton.LUI_KEY_XBX_PSSQUARE
	arg0.clickableButton.keyshortcut:setText(Engine.Localize("[^3C^7]"))
end

local function __FUNC_46B_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_2E8_(arg0, arg1, arg2)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.ChooseCharacterLoadout_ButtonFooter_BackOfCard = registerVal3
local function __FUNC_4DB_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChooseCharacterLoadout_ButtonFooter_BackOfCard)
	registerVal2.id = "ChooseCharacterLoadout_ButtonFooter_BackOfCard"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 71.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 37.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.BM_Contracts_Specialist_btn_bg.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -31.000000, 10.000000)
	registerVal3:setTopBottom(true, false, -7.000000, 34.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BMContractsSpecialistbtnbg = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, -31.000000, 0.000000)
	registerVal4:setTopBottom(false, false, 11.880000, 18.020000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.600000)
	registerVal2:addElement(registerVal4)
	registerVal2.BlackBoxBottomRight = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, -31.000000, 0.000000)
	registerVal5:setTopBottom(false, false, -18.500000, 8.890000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.450000)
	registerVal2:addElement(registerVal5)
	registerVal2.BlackBoxRight = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(false, false, -35.500000, 35.500000)
	registerVal6:setTopBottom(false, false, -15.000000, 5.000000)
	registerVal6:setText(Engine.Localize("MENU_BACK_OF_CARD"))
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	local function __FUNC_14B5_(arg0, arg1)
		ScaleWidgetToLabelCentered(registerVal2, arg0, 5.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal6, "setText", __FUNC_14B5_)
	registerVal2:addElement(registerVal6)
	registerVal2.backOfCardLabel = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, -27.000000, -5.000000)
	registerVal7:setTopBottom(false, false, -16.000000, 6.000000)
	local function __FUNC_151D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "Controller", "alt1_button_image", __FUNC_151D_)
	registerVal2:addElement(registerVal7)
	registerVal2.buttonImage = registerVal7
	local registerVal8 = CoD.ChooseCharacter_CardClickButton.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, -24.000000, 71.000000)
	registerVal8:setTopBottom(true, false, 1.200000, 26.200000)
	registerVal8:setAlpha(0.000000)
	registerVal8.label:setText(Engine.Localize("MENU_BACK_OF_CARD"))
	registerVal8.keyshortcut:setText(Engine.Localize(""))
	registerVal2:addElement(registerVal8)
	registerVal2.clickableButton = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, true, -10.000000, 6.000000)
	registerVal9:setTopBottom(false, false, -15.750000, 6.140000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrgstrokemr"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.rightBar = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, -31.000000, 8.300000)
	registerVal10:setTopBottom(false, false, -31.800000, 26.200000)
	registerVal10:setAlpha(0.800000)
	registerVal10:setImage(RegisterImage("uie_t7_specialist_footer_btn_frame_right"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal10:setShaderVector(0.000000, 0.453309, 0.500000, 0.000000, 0.000000)
	registerVal10:setupNineSliceShader(50.000000, 29.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.borderLines = registerVal10
	local registerVal11 = CoD.NewBreadcrumbCount.new(arg0, arg1)
	registerVal11:setLeftRight(false, true, -18.000000, 0.000000)
	registerVal11:setTopBottom(true, false, -13.300000, 4.700000)
	local function __FUNC_15D0_(arg0)
		registerVal11:setModel(arg0, arg1)
	end

	registerVal11:linkToElementModel(registerVal2, nil, false, __FUNC_15D0_)
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "Visible"
	local function __FUNC_1622_(arg0, arg2, arg3)
		return IsSelfModelValueGreaterThanOrEqualTo(arg2, arg1, "newTransmissions", 1.000000)
	end

	registerVal15.condition = __FUNC_1622_
	registerVal14 = {registerVal15}
	registerVal11:mergeStateConditions(registerVal14)
	local function __FUNC_16B5_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "newTransmissions"
		arg0:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:linkToElementModel(registerVal11, "newTransmissions", true, __FUNC_16B5_)
	registerVal2:addElement(registerVal11)
	registerVal2.breadcrumbCount = registerVal11
	local function __FUNC_17DA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.countText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.breadcrumbCount:linkToElementModel(registerVal2, "newTransmissions", true, __FUNC_17DA_)
	local registerVal12 = {}
	local registerVal13 = {}
	local function __FUNC_18B1_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal6:completeAnimation()
		registerVal2.backOfCardLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.buttonImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.clickableButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal13.DefaultClip = __FUNC_18B1_
	registerVal12.DefaultState = registerVal13
	registerVal13 = {}
	local function __FUNC_1A72_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal6:completeAnimation()
		registerVal2.backOfCardLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.buttonImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.clickableButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal13.DefaultClip = __FUNC_1A72_
	registerVal12.DefaultState_PC = registerVal13
	registerVal2.clipsPerState = registerVal12
	registerVal14 = {}
	registerVal15 = {}
	registerVal15.stateName = "DefaultState_PC"
	local function __FUNC_1C32_(arg0, arg2, arg3)
		local registerVal3 = IsGamepad(arg1)
		return (not registerVal3)
	end

	registerVal15.condition = __FUNC_1C32_
	registerVal14 = {registerVal15}
	registerVal2:mergeStateConditions(registerVal14)
	if registerVal2.m_eventHandlers.input_source_changed then
		local function __FUNC_1C83_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal2:registerEventHandler("input_source_changed", __FUNC_1C83_)
	else
		registerVal2:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal15 = Engine.GetModelForController(arg1)
	registerVal14 = Engine.GetModel(registerVal15, "LastInput")
	local function __FUNC_1D0B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal14, __FUNC_1D0B_)
	local function __FUNC_1E27_(arg0)
		arg0.BMContractsSpecialistbtnbg:close()
		arg0.breadcrumbCount:close()
		arg0.clickableButton:close()
		arg0.buttonImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1E27_)
	if __FUNC_46B_ then
		__FUNC_46B_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ChooseCharacterLoadout_ButtonFooter_BackOfCard.new = __FUNC_4DB_
