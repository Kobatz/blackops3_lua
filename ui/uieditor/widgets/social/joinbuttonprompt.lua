-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Border")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.JoinButtonPrompt = registerVal1
function CoD.JoinButtonPrompt.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.JoinButtonPrompt)
	registerVal2.id = "JoinButtonPrompt"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 26.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 26.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 26.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 26.000000)
	local function __FUNC_A7C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "Controller", "alt1_button_image", __FUNC_A7C_)
	registerVal2:addElement(registerVal3)
	registerVal2.GpadButtonImage = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(false, true, -26.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 26.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setText(Engine.Localize("J"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.KMprompt = registerVal4
	local registerVal5 = CoD.Border.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setRGB(0.790000, 0.780000, 0.780000)
	registerVal2:addElement(registerVal5)
	registerVal2.Border = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_B30_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.GpadButtonImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.KMprompt:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Border:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_B30_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_CE6_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.GpadButtonImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.KMprompt:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Border:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_CE6_
	registerVal6.KBMouse = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "KBMouse"
	local function __FUNC_E9A_(arg0, arg2, arg3)
		local registerVal3 = IsGamepad(arg1)
		return (not registerVal3)
	end

	registerVal9.condition = __FUNC_E9A_
	registerVal8 = {registerVal9}
	registerVal2:mergeStateConditions(registerVal8)
	if registerVal2.m_eventHandlers.input_source_changed then
		local function __FUNC_EEB_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal2:registerEventHandler("input_source_changed", __FUNC_EEB_)
	else
		registerVal2:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "LastInput")
	local function __FUNC_F73_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_F73_)
	local function __FUNC_108F_(arg0)
		arg0.Border:close()
		arg0.GpadButtonImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_108F_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

