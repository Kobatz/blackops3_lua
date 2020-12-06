-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PaintshopButtonPrompt = registerVal1
function CoD.PaintshopButtonPrompt.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.PaintshopButtonPrompt)
	registerVal2.id = "PaintshopButtonPrompt"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 214.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 24.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 24.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.buttonPromptImage = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, 41.000000, -6.000000)
	registerVal4:setTopBottom(true, false, 2.000000, 21.000000)
	registerVal4:setText(Engine.Localize("Button Prompt"))
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.label = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_903_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.buttonPromptImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.label:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_903_
	local function __FUNC_A5C_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.buttonPromptImage:setLeftRight(true, false, 0.000000, 32.000000)
		registerVal2.buttonPromptImage:setTopBottom(true, false, 0.000000, 31.000000)
		registerVal2.buttonPromptImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.label:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.Hide = __FUNC_A5C_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_C3E_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.buttonPromptImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.label:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_C3E_
	registerVal5.Hidden = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Hidden"
	local function __FUNC_D98_(arg0, arg2, arg3)
		local registerVal3 = IsGamepad(arg1)
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_D98_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	if registerVal2.m_eventHandlers.input_source_changed then
		local function __FUNC_DEB_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal2:registerEventHandler("input_source_changed", __FUNC_DEB_)
	else
		registerVal2:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "LastInput")
	local function __FUNC_E73_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_E73_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

