-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BlackMarket.BM_Contracts_specialiste_single_btn_bg")
require("ui.uieditor.widgets.PC.ChooseCharacter.ChooseCharacter_CardClickButton")
local function __FUNC_2B3_(arg0, arg1, arg2)
	arg0:setForceMouseEventDispatch(true)
	arg0.clickableButton.m_button = Enum.LUIButton.LUI_KEY_XBX_PSSQUARE
	arg0.clickableButton.keyshortcut:setText(Engine.Localize("[^3C^7]"))
end

local function __FUNC_433_(arg0, arg1, arg2)
	arg0.text:setText(arg0.text:getText())
	if CoD.isPC then
		__FUNC_2B3_(arg0, arg1, arg2)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.ChooseCharacterLoadout_CardBack_FrontOfCardFooter = registerVal3
local function __FUNC_4FB_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChooseCharacterLoadout_CardBack_FrontOfCardFooter)
	registerVal2.id = "ChooseCharacterLoadout_CardBack_FrontOfCardFooter"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 74.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 34.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.BM_Contracts_specialiste_single_btn_bg.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, -62.500000, 82.500000)
	registerVal3:setTopBottom(true, false, -2.750000, 37.250000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BMContractsspecialistesinglebtnbg = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, -24.000000, 0.000000)
	registerVal4:setTopBottom(false, true, 1.380000, 7.130000)
	registerVal4:setRGB(0.520000, 0.520000, 0.520000)
	registerVal4:setAlpha(0.250000)
	registerVal2:addElement(registerVal4)
	registerVal2.BlackBox0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, -24.000000, 0.000000)
	registerVal5:setTopBottom(false, false, -13.000000, 14.000000)
	registerVal5:setRGB(0.520000, 0.520000, 0.520000)
	registerVal5:setAlpha(0.250000)
	registerVal2:addElement(registerVal5)
	registerVal2.BlackBox = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(false, false, -37.000000, 37.000000)
	registerVal6:setTopBottom(false, false, -9.500000, 10.500000)
	registerVal6:setText(Engine.Localize("MENU_FRONT_OF_CARD"))
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	local function __FUNC_1354_(arg0, arg1)
		ScaleWidgetToLabelCentered(registerVal2, arg0, 5.000000)
		ScaleWidgetToLabelCenteredWithMinimum(registerVal2, arg0, 5.000000, 70.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal6, "setText", __FUNC_1354_)
	registerVal2:addElement(registerVal6)
	registerVal2.text = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, -24.000000, -2.000000)
	registerVal7:setTopBottom(false, false, -11.000000, 11.000000)
	local function __FUNC_1409_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "Controller", "alt1_button_image", __FUNC_1409_)
	registerVal2:addElement(registerVal7)
	registerVal2.Button2 = registerVal7
	local registerVal8 = CoD.ChooseCharacter_CardClickButton.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, -19.000000, 73.000000)
	registerVal8:setTopBottom(true, false, 5.000000, 30.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8.label:setText(Engine.Localize("MENU_FRONT_OF_CARD"))
	registerVal8.keyshortcut:setText(Engine.Localize(""))
	registerVal2:addElement(registerVal8)
	registerVal2.clickableButton = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, true, -9.000000, 7.000000)
	registerVal9:setTopBottom(true, true, 6.250000, -5.250000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrgstrokemr"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.Line = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, -61.300000, 9.500000)
	registerVal10:setTopBottom(false, false, -27.830000, 33.330000)
	registerVal10:setAlpha(0.800000)
	registerVal10:setImage(RegisterImage("uie_t7_specialist_footer_btn_frame_back"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal10:setShaderVector(0.000000, 0.462707, 0.490517, 0.000000, 0.000000)
	registerVal10:setupNineSliceShader(67.000000, 30.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.frameImage = registerVal10
	local registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_14BC_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal6:completeAnimation()
		registerVal2.text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Button2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.clickableButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal12.DefaultClip = __FUNC_14BC_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_166F_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal6:completeAnimation()
		registerVal2.text:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Button2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.clickableButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal12.DefaultClip = __FUNC_166F_
	registerVal11.DefaultState_PC = registerVal12
	registerVal2.clipsPerState = registerVal11
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "DefaultState_PC"
	local function __FUNC_181F_(arg0, arg2, arg3)
		local registerVal3 = IsGamepad(arg1)
		return (not registerVal3)
	end

	registerVal14.condition = __FUNC_181F_
	registerVal13 = {registerVal14}
	registerVal2:mergeStateConditions(registerVal13)
	if registerVal2.m_eventHandlers.input_source_changed then
		local function __FUNC_186F_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal2:registerEventHandler("input_source_changed", __FUNC_186F_)
	else
		registerVal2:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModel(registerVal14, "LastInput")
	local function __FUNC_18F7_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal13, __FUNC_18F7_)
	local function __FUNC_1A13_(arg0)
		arg0.BMContractsspecialistesinglebtnbg:close()
		arg0.clickableButton:close()
		arg0.Button2:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1A13_)
	if __FUNC_433_ then
		__FUNC_433_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ChooseCharacterLoadout_CardBack_FrontOfCardFooter.new = __FUNC_4FB_
