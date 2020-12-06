-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.DeadSpectate_SpectatingModeButtonPrompt = registerVal1
function CoD.DeadSpectate_SpectatingModeButtonPrompt.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.DeadSpectate_SpectatingModeButtonPrompt)
	registerVal2.id = "DeadSpectate_SpectatingModeButtonPrompt"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 25.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -12.500000, 12.500000)
	registerVal3:setTopBottom(false, false, -12.500000, 12.500000)
	local function __FUNC_8B1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "Controller", "alt2_button_image", __FUNC_8B1_)
	registerVal2:addElement(registerVal3)
	registerVal2.button = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -12.500000, 12.500000)
	registerVal4:setTopBottom(false, false, -17.500000, 12.500000)
	registerVal4:setAlpha(0.000000)
	local function __FUNC_964_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "Controller", "mouse_middle_button_image", __FUNC_964_)
	registerVal2:addElement(registerVal4)
	registerVal2.buttonMouse = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_A18_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.button:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.buttonMouse:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_A18_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_B74_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.button:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.buttonMouse:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_B74_
	registerVal5.KeyMouse = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "KeyMouse"
	local function __FUNC_CD0_(arg0, arg2, arg3)
		local registerVal3 = IsGamepad(arg1)
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_CD0_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	if registerVal2.m_eventHandlers.input_source_changed then
		local function __FUNC_D23_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal2:registerEventHandler("input_source_changed", __FUNC_D23_)
	else
		registerVal2:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "LastInput")
	local function __FUNC_DAB_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_DAB_)
	local function __FUNC_EC7_(arg0)
		arg0.button:close()
		arg0.buttonMouse:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_EC7_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

