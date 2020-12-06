-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.FooterButtonPromptWithPCKey")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CodCasterKeyboardShortcutButtonPrompt = registerVal1
function CoD.CodCasterKeyboardShortcutButtonPrompt.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CodCasterKeyboardShortcutButtonPrompt)
	registerVal2.id = "CodCasterKeyboardShortcutButtonPrompt"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 140.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FooterButtonPromptWithPCKey.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 140.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal3.label:setText(Engine.Localize("CODCASTER_KEYBOARD_SHORTCUTS"))
	registerVal3.keyPrompt.keybind:setText(Engine.Localize("K"))
	local function __FUNC_919_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "Controller", "primary_button_image", __FUNC_919_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Disabled"
	local function __FUNC_9F3_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal7.condition = __FUNC_9F3_
	local registerVal8 = {}
	registerVal8.stateName = "Enabled"
	local function __FUNC_A3D_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal8.condition = __FUNC_A3D_
	local registerVal9 = {}
	registerVal9.stateName = "DisabledPC"
	local function __FUNC_A89_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal9.condition = __FUNC_A89_
	local registerVal10 = {}
	registerVal10.stateName = "EnabledPC"
	local function __FUNC_AD5_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal10.condition = __FUNC_AD5_
	registerVal6 = {registerVal7, registerVal8, registerVal9, registerVal10}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal2:addElement(registerVal3)
	registerVal2.FooterButtonPromptWithPCKey0 = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_B20_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.FooterButtonPromptWithPCKey0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_B20_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_C34_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.FooterButtonPromptWithPCKey0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_C34_
	registerVal4.Visible = registerVal5
	registerVal2.clipsPerState = registerVal4
	registerVal6 = {}
	registerVal7 = {}
	registerVal7.stateName = "Visible"
	local function __FUNC_D43_(arg0, arg2, arg3)
		return IsGlobalModelValueTrue(arg2, arg1, "consoleKeyboardConnected")
	end

	registerVal7.condition = __FUNC_D43_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "consoleKeyboardConnected")
	local function __FUNC_DC6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "consoleKeyboardConnected"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_DC6_)
	local function __FUNC_EF2_(arg0)
		arg0.FooterButtonPromptWithPCKey0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_EF2_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

