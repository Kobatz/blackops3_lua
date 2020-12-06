-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BlackMarket.BM_Contracts_Specialist_btn_bg_left")
require("ui.uieditor.widgets.PC.ChooseCharacter.ChooseCharacter_CardClickButton")
require("ui.uieditor.widgets.CAC.NewBreadcrumbCount")
local function __FUNC_2EE_(arg0, arg1, arg2)
	arg0:setForceMouseEventDispatch(true)
	arg0.clickableButton.m_button = Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE
	arg0.clickableButton.keyshortcut:setText(Engine.Localize("[^3P^7]"))
	local function __FUNC_4F1_(arg1, arg2)
		ScaleWidgetToLabel(arg0.clickableButton, arg1, 5.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0.clickableButton.label, "setText", __FUNC_4F1_)
end

local function __FUNC_576_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_2EE_(arg0, arg1, arg2)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.ChooseCharacterLoadout_ButtonFooter_Personalize = registerVal3
local function __FUNC_5E7_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChooseCharacterLoadout_ButtonFooter_Personalize)
	registerVal2.id = "ChooseCharacterLoadout_ButtonFooter_Personalize"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 66.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 37.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.BM_Contracts_Specialist_btn_bg_left.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -62.000000, 0.000000)
	registerVal3:setTopBottom(true, false, -7.000000, 34.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BMContractsSpecialistbtnbgleft = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, -30.000000, 0.000000)
	registerVal4:setTopBottom(false, false, 11.880000, 18.020000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.600000)
	registerVal2:addElement(registerVal4)
	registerVal2.BlackBoxBottomLeft = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, -30.000000, 0.000000)
	registerVal5:setTopBottom(false, false, -18.500000, 8.890000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.450000)
	registerVal2:addElement(registerVal5)
	registerVal2.BlackBoxLeft = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(false, false, -33.500000, 32.500000)
	registerVal6:setTopBottom(false, false, -15.250000, 4.750000)
	registerVal6:setText(Engine.Localize("HEROES_PERSONALIZE"))
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	local function __FUNC_1663_(arg0, arg1)
		ScaleWidgetToLabelCentered(registerVal2, arg0, 5.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal6, "setText", __FUNC_1663_)
	registerVal2:addElement(registerVal6)
	registerVal2.personalizeLabel = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, -27.500000, -5.500000)
	registerVal7:setTopBottom(false, false, -16.000000, 6.390000)
	local function __FUNC_16C9_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "Controller", "alt2_button_image", __FUNC_16C9_)
	registerVal2:addElement(registerVal7)
	registerVal2.Button1 = registerVal7
	local registerVal8 = CoD.ChooseCharacter_CardClickButton.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, -23.250000, 65.500000)
	registerVal8:setTopBottom(true, false, 1.200000, 26.200000)
	registerVal8:setAlpha(0.000000)
	registerVal8.label:setText(Engine.Localize("HEROES_PERSONALIZE"))
	registerVal8.keyshortcut:setText(Engine.Localize(""))
	registerVal2:addElement(registerVal8)
	registerVal2.clickableButton = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, true, -12.150000, 3.850000)
	registerVal9:setTopBottom(false, false, -16.000000, 5.500000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrgstrokemr"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.LineRight = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, -62.300000, 0.000000)
	registerVal10:setTopBottom(false, false, -31.800000, 26.200000)
	registerVal10:setAlpha(0.800000)
	registerVal10:setImage(RegisterImage("uie_t7_specialist_footer_btn_frame_left"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal10:setShaderVector(0.000000, 0.545596, 0.500000, 0.000000, 0.000000)
	registerVal10:setupNineSliceShader(70.000000, 29.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.borderLines = registerVal10
	local registerVal11 = CoD.NewBreadcrumbCount.new(arg0, arg1)
	registerVal11:setLeftRight(false, true, -20.500000, -2.500000)
	registerVal11:setTopBottom(true, false, -12.300000, 5.700000)
	local function __FUNC_177C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.countText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal2, "breadcrumbCount", true, __FUNC_177C_)
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "Visible"
	local function __FUNC_1855_(arg0, arg2, arg3)
		return ShouldDisplayWeaponGroupBreadcrumbCount(registerVal2, arg1)
	end

	registerVal15.condition = __FUNC_1855_
	registerVal14 = {registerVal15}
	registerVal11:mergeStateConditions(registerVal14)
	local function __FUNC_18C5_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "breadcrumbCount"
		arg0:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:linkToElementModel(registerVal11, "breadcrumbCount", true, __FUNC_18C5_)
	registerVal2:addElement(registerVal11)
	registerVal2.breadcrumbCount = registerVal11
	local registerVal12 = {}
	local registerVal13 = {}
	local function __FUNC_19E9_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal6:completeAnimation()
		registerVal2.personalizeLabel:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.personalizeLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Button1:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Button1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.clickableButton:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clickableButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal13.DefaultClip = __FUNC_19E9_
	registerVal12.DefaultState = registerVal13
	registerVal13 = {}
	local function __FUNC_1C23_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal6:completeAnimation()
		registerVal2.personalizeLabel:setRGB(0.490000, 0.490000, 0.490000)
		registerVal2.personalizeLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Button1:setRGB(0.490000, 0.490000, 0.490000)
		registerVal2.Button1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.clickableButton:setRGB(0.490000, 0.490000, 0.490000)
		registerVal2.clickableButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal13.DefaultClip = __FUNC_1C23_
	registerVal12.NoPersonalization_PC = registerVal13
	registerVal13 = {}
	local function __FUNC_1E60_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal6:completeAnimation()
		registerVal2.personalizeLabel:setRGB(0.280000, 0.280000, 0.280000)
		registerVal2.personalizeLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Button1:setRGB(0.490000, 0.490000, 0.490000)
		registerVal2.Button1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.clickableButton:setRGB(0.490000, 0.490000, 0.490000)
		registerVal2.clickableButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal13.DefaultClip = __FUNC_1E60_
	registerVal12.NoPersonalization = registerVal13
	registerVal13 = {}
	local function __FUNC_20A5_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal6:completeAnimation()
		registerVal2.personalizeLabel:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.personalizeLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Button1:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Button1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.clickableButton:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clickableButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal13.DefaultClip = __FUNC_20A5_
	registerVal12.DefaultState_PC = registerVal13
	registerVal2.clipsPerState = registerVal12
	registerVal14 = {}
	registerVal15 = {}
	registerVal15.stateName = "NoPersonalization_PC"
	local function __FUNC_22DF_(arg0, arg2, arg3)
		local registerVal3 = CharacterHasAnyWeaponUnlocked(arg1, arg2)
		if not registerVal3 then
			registerVal3 = IsGamepad(arg1)
		else
		end
		return true
	end

	registerVal15.condition = __FUNC_22DF_
	local registerVal16 = {}
	registerVal16.stateName = "NoPersonalization"
	local function __FUNC_237A_(arg0, arg2, arg3)
		local registerVal3 = CharacterHasAnyWeaponUnlocked(arg1, arg2)
		return (not registerVal3)
	end

	registerVal16.condition = __FUNC_237A_
	local registerVal17 = {}
	registerVal17.stateName = "DefaultState_PC"
	local function __FUNC_23E3_(arg0, arg2, arg3)
		local registerVal3 = IsGamepad(arg1)
		return (not registerVal3)
	end

	registerVal17.condition = __FUNC_23E3_
	registerVal14 = {registerVal15, registerVal16, registerVal17}
	registerVal2:mergeStateConditions(registerVal14)
	local function __FUNC_2433_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "heroIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "heroIndex", true, __FUNC_2433_)
	if registerVal2.m_eventHandlers.input_source_changed then
		local function __FUNC_254F_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal2:registerEventHandler("input_source_changed", __FUNC_254F_)
	else
		registerVal2:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal15 = Engine.GetModelForController(arg1)
	registerVal14 = Engine.GetModel(registerVal15, "LastInput")
	local function __FUNC_25D7_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal14, __FUNC_25D7_)
	local function __FUNC_26F3_(arg0)
		arg0.BMContractsSpecialistbtnbgleft:close()
		arg0.clickableButton:close()
		arg0.breadcrumbCount:close()
		arg0.Button1:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_26F3_)
	if __FUNC_576_ then
		__FUNC_576_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ChooseCharacterLoadout_ButtonFooter_Personalize.new = __FUNC_5E7_
