-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
local function __FUNC_220_(arg0, arg1, arg2)
	arg0:setHandleMouse(true)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.BumperButtonWithKeyMouse = registerVal2
local function __FUNC_270_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BumperButtonWithKeyMouse)
	registerVal2.id = "BumperButtonWithKeyMouse"
	registerVal2.soundSet = "MultiplayerMain"
	registerVal2:setLeftRight(true, false, 0.000000, 45.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 30.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setScale(0.500000)
	registerVal3:setImage(RegisterImage("uie_bumperleft"))
	registerVal2:addElement(registerVal3)
	registerVal2.KeyMouseImage = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setScale(0.600000)
	local function __FUNC_A75_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "Controller", "left_shoulder_button_image", __FUNC_A75_)
	registerVal2:addElement(registerVal4)
	registerVal2.ControllerImage = registerVal4
	local registerVal5 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 10.350000, -10.350000)
	registerVal5:setTopBottom(true, true, 1.500000, -1.500000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setScale(0.900000)
	registerVal2:addElement(registerVal5)
	registerVal2.FETitleNumBrdr0 = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_B28_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.KeyMouseImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ControllerImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FETitleNumBrdr0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_B28_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_CEC_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.KeyMouseImage:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.KeyMouseImage:setAlpha(1.000000)
		registerVal2.KeyMouseImage:setScale(0.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ControllerImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FETitleNumBrdr0:setLeftRight(true, true, 10.350000, -10.350000)
		registerVal2.FETitleNumBrdr0:setTopBottom(true, true, 1.500000, -1.500000)
		registerVal2.FETitleNumBrdr0:setAlpha(0.000000)
		registerVal2.FETitleNumBrdr0:setScale(0.900000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_CEC_
	local function __FUNC_FC8_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.KeyMouseImage:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.KeyMouseImage:setScale(0.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ControllerImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FETitleNumBrdr0:setLeftRight(true, true, 10.350000, -10.350000)
		registerVal2.FETitleNumBrdr0:setTopBottom(true, true, 1.500000, -1.500000)
		registerVal2.FETitleNumBrdr0:setAlpha(0.000000)
		registerVal2.FETitleNumBrdr0:setScale(0.900000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.Over = __FUNC_FC8_
	registerVal6.KeyMouse = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "KeyMouse"
	local function __FUNC_128D_(arg0, arg2, arg3)
		local registerVal3 = IsGamepad(arg1)
		return (not registerVal3)
	end

	registerVal9.condition = __FUNC_128D_
	registerVal8 = {registerVal9}
	registerVal2:mergeStateConditions(registerVal8)
	if registerVal2.m_eventHandlers.input_source_changed then
		local function __FUNC_12DF_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal2:registerEventHandler("input_source_changed", __FUNC_12DF_)
	else
		registerVal2:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "LastInput")
	local function __FUNC_1367_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_1367_)
	local function __FUNC_1483_(arg0)
		arg0.FETitleNumBrdr0:close()
		arg0.ControllerImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1483_)
	if __FUNC_220_ then
		__FUNC_220_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.BumperButtonWithKeyMouse.new = __FUNC_270_
