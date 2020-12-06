-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Craft.Paintshop.PaintshopButtonPrompt")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.EmblemEditorGradientTypeButton = registerVal1
function CoD.EmblemEditorGradientTypeButton.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.EmblemEditorGradientTypeButton)
	registerVal2.id = "EmblemEditorGradientTypeButton"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 423.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 37.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.PaintshopButtonPrompt.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 6.000000, 417.000000)
	registerVal3:setTopBottom(true, false, 5.500000, 31.500000)
	registerVal3:setAlpha(0.000000)
	registerVal3.label:setText(Engine.Localize("MENU_EMBLEM_TOGGLE_RADIAL_GRADIENT"))
	local function __FUNC_853_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "Controller", "move_left_stick_button_image", __FUNC_853_)
	registerVal2:addElement(registerVal3)
	registerVal2.toggleRadial = registerVal3
	local registerVal4 = CoD.PaintshopButtonPrompt.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 6.000000, 417.000000)
	registerVal4:setTopBottom(true, false, 5.500000, 31.500000)
	registerVal4.label:setText(Engine.Localize("MENU_EMBLEM_TOGGLE_LINAR_GRADIENT"))
	local function __FUNC_92B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "Controller", "move_left_stick_button_image", __FUNC_92B_)
	registerVal2:addElement(registerVal4)
	registerVal2.toggleLinear = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_A03_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_A03_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_A62_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.toggleRadial:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.toggleLinear:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_A62_
	registerVal5.RadialState = registerVal6
	registerVal6 = {}
	local function __FUNC_BC3_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.toggleRadial:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.toggleLinear:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_BC3_
	registerVal5.LinearState = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_D23_(arg0)
		arg0.toggleRadial:close()
		arg0.toggleLinear:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_D23_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

