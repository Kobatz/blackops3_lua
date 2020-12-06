-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.FaceButtonWithKeyMouse")
require("ui.uieditor.widgets.PC.ChooseCharacter.ChooseCharacter_CardClickButton")
local function __FUNC_282_(arg0, arg1, arg2)
	arg0:setForceMouseEventDispatch(true)
end

local function __FUNC_2DC_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_282_(arg0, arg1, arg2)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.FaceButtonThatHidesWithLabel = registerVal3
local function __FUNC_34F_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FaceButtonThatHidesWithLabel)
	registerVal2.id = "FaceButtonThatHidesWithLabel"
	registerVal2.soundSet = "Special_widgets"
	registerVal2:setLeftRight(true, false, 0.000000, 200.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 23.760000, 200.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal3:setText(Engine.Localize("MENU_NEW"))
	registerVal3:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal3:setLetterSpacing(0.500000)
	local function __FUNC_D47_(arg0, arg2)
		UpdateSelfState(registerVal2, arg1)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal3, "setText", __FUNC_D47_)
	registerVal2:addElement(registerVal3)
	registerVal2.ButtonLabel = registerVal3
	local registerVal4 = CoD.FaceButtonWithKeyMouse.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 20.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 20.000000)
	local function __FUNC_D99_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.ControllerImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "Controller", "alt1_button_image", __FUNC_D99_)
	registerVal2:addElement(registerVal4)
	registerVal2.ButtonImage = registerVal4
	local registerVal6 = IsPC()
	if registerVal6 then
		registerVal6 = CoD.ChooseCharacter_CardClickButton.new(arg0, arg1)
	else
		registerVal6 = LUI.UIElement.createFake()
	end
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, false, -2.500000, 22.500000)
	registerVal6:setAlpha(0.000000)
	registerVal6.label:setText(Engine.Localize("MENU_NEW"))
	registerVal6.keyshortcut:setText(Engine.Localize(""))
	registerVal6 = IsPC()
	if registerVal6 then
		registerVal2:addElement(registerVal6)
	end
	registerVal2.clickButton = registerVal6
	registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_E71_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.ButtonLabel:setLeftRight(true, false, 23.760000, 200.000000)
		registerVal2.ButtonLabel:setTopBottom(true, false, 0.000000, 20.000000)
		registerVal2.ButtonLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ButtonImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.clickButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal7.DefaultClip = __FUNC_E71_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_10B5_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.ButtonLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ButtonImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.clickButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal7.DefaultClip = __FUNC_10B5_
	registerVal6.HideButtonAndText = registerVal7
	registerVal7 = {}
	local function __FUNC_1269_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.ButtonLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ButtonImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.clickButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal7.DefaultClip = __FUNC_1269_
	registerVal6.HideButton = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "HideButtonAndText"
	local function __FUNC_1422_(arg0, arg1, arg2)
		local registerVal3 = ElementHasText(registerVal2, "ButtonLabel")
		return (not registerVal3)
	end

	registerVal9.condition = __FUNC_1422_
	local registerVal10 = {}
	registerVal10.stateName = "HideButton"
	local function __FUNC_1491_(arg0, arg2, arg3)
		local registerVal3 = IsGamepad(arg1)
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_1491_
	registerVal8 = {registerVal9, registerVal10}
	registerVal2:mergeStateConditions(registerVal8)
	if registerVal2.m_eventHandlers.input_source_changed then
		local function __FUNC_14E3_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal2:registerEventHandler("input_source_changed", __FUNC_14E3_)
	else
		registerVal2:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "LastInput")
	local function __FUNC_156B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_156B_)
	local function __FUNC_1687_(arg0)
		arg0.ButtonImage:close()
		arg0.clickButton:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1687_)
	if __FUNC_2DC_ then
		__FUNC_2DC_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.FaceButtonThatHidesWithLabel.new = __FUNC_34F_
