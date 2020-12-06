-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveStroke")
require("ui.uieditor.widgets.Craft.EmblemEditor.EmblemEditorButtonPrompt")
require("ui.uieditor.widgets.Craft.Paintshop.PaintshopButtonPrompt")
require("ui.uieditor.widgets.Craft.Paintshop.PaintshopChoosePaintSide")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.EmblemEditorColorControls = registerVal1
function CoD.EmblemEditorColorControls.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.EmblemEditorColorControls)
	registerVal2.id = "EmblemEditorColorControls"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 250.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 135.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.450000, 0.000000)
	registerVal3:setTopBottom(true, true, 31.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.500000)
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	local registerVal4 = CoD.cac_ButtonBoxLrgInactiveStroke.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal4:setTopBottom(true, true, 27.000000, 2.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.cacButtonBoxLrgInactiveStroke0 = registerVal4
	local registerVal5 = CoD.EmblemEditorButtonPrompt.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 27.000000, 51.000000)
	registerVal5:setTopBottom(true, false, 56.000000, 80.000000)
	registerVal5.label:setText(Engine.Localize(""))
	local function __FUNC_1489_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "Controller", "right_shoulder_button_image", __FUNC_1489_)
	registerVal2:addElement(registerVal5)
	registerVal2.rsOpacity = registerVal5
	local registerVal6 = CoD.EmblemEditorButtonPrompt.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 2.000000, 26.000000)
	registerVal6:setTopBottom(true, false, 56.000000, 80.000000)
	registerVal6.label:setText(Engine.Localize(""))
	local function __FUNC_1563_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "Controller", "left_shoulder_button_image", __FUNC_1563_)
	registerVal2:addElement(registerVal6)
	registerVal2.lsOpacity = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(false, true, -194.000000, -9.000000)
	registerVal7:setTopBottom(true, false, 60.000000, 76.000000)
	registerVal7:setText(Engine.Localize("MENU_EMBLEM_LAYER_OPACITY"))
	registerVal7:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.opacityText = registerVal7
	local registerVal8 = CoD.PaintshopButtonPrompt.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 14.000000, 247.000000)
	registerVal8:setTopBottom(true, false, 30.000000, 61.000000)
	registerVal8.label:setText(Engine.Localize("MENU_EMBLEM_CHANGE_COLOR"))
	local function __FUNC_163B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "Controller", "move_left_stick_button_image", __FUNC_163B_)
	registerVal2:addElement(registerVal8)
	registerVal2.ChangeColor = registerVal8
	local registerVal9 = CoD.PaintshopChoosePaintSide.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(true, false, 0.000000, 27.000000)
	registerVal9.PaintshopChooseSide.text:setText(Engine.Localize("MENU_CONTROLS"))
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "BrowseModeControlsState"
	local function __FUNC_1713_(arg0, arg2, arg3)
		local registerVal3 = IsPaintshop(arg1)
		if registerVal3 then
			registerVal3 = IsModelValueEqualToEnum(arg1, "Emblem.EmblemProperties.editorMode", Enum.CustomizationEditorMode.CUSTOMIZATION_EDITOR_MODE_EDIT)
		end
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_1713_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, "Emblem.EmblemProperties.editorMode")
	local function __FUNC_183D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "Emblem.EmblemProperties.editorMode"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_183D_)
	registerVal2:addElement(registerVal9)
	registerVal2.choosePaintSide = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(false, true, -194.000000, -9.000000)
	registerVal10:setTopBottom(true, false, 114.000000, 130.000000)
	registerVal10:setText(Engine.Localize("MENU_EMBLEM_ROTATE_GRADIENT"))
	registerVal10:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal10)
	registerVal2.rotateText = registerVal10
	local registerVal11 = CoD.EmblemEditorButtonPrompt.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 28.000000, 51.000000)
	registerVal11:setTopBottom(true, false, 108.000000, 139.000000)
	registerVal11.label:setText(Engine.Localize(""))
	local function __FUNC_1974_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal11:subscribeToGlobalModel(arg1, "Controller", "right_trigger_button_image", __FUNC_1974_)
	registerVal2:addElement(registerVal11)
	registerVal2.rightTriggerButton = registerVal11
	registerVal12 = CoD.EmblemEditorButtonPrompt.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 4.000000, 28.000000)
	registerVal12:setTopBottom(true, false, 108.000000, 139.000000)
	registerVal12.label:setText(Engine.Localize(""))
	local function __FUNC_1A4F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal12:subscribeToGlobalModel(arg1, "Controller", "left_trigger_button_image", __FUNC_1A4F_)
	registerVal2:addElement(registerVal12)
	registerVal2.leftTriggerButton = registerVal12
	registerVal13 = CoD.PaintshopButtonPrompt.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 15.000000, 248.000000)
	registerVal13:setTopBottom(true, false, 82.000000, 113.000000)
	registerVal13.label:setText(Engine.Localize("MENU_EMBLEM_TOGGLE_TO_GRADIENT"))
	local function __FUNC_1B27_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal13:subscribeToGlobalModel(arg1, "Controller", "alt1_button_image", __FUNC_1B27_)
	registerVal2:addElement(registerVal13)
	registerVal2.ToggleOutline = registerVal13
	local registerVal14 = {}
	local registerVal15 = {}
	local function __FUNC_1BFF_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal5:completeAnimation()
		registerVal2.rsOpacity:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.lsOpacity:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.opacityText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal15.DefaultClip = __FUNC_1BFF_
	registerVal14.DefaultState = registerVal15
	registerVal15 = {}
	local function __FUNC_1DAD_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal5:completeAnimation()
		registerVal2.rsOpacity:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.lsOpacity:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.opacityText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal10:completeAnimation()
		registerVal2.rotateText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.rightTriggerButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.leftTriggerButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal13.label:completeAnimation()
		registerVal2.ToggleOutline.label:setText(Engine.Localize("MENU_EMBLEM_TOGGLE_TO_GRADIENT"))
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_1DAD_
	registerVal14.Gradient = registerVal15
	registerVal15 = {}
	local function __FUNC_2176_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal5:completeAnimation()
		registerVal2.rsOpacity:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.lsOpacity:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.opacityText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal10:completeAnimation()
		registerVal2.rotateText:setAlpha(1.000000)
		registerVal2.rotateText:setText(Engine.Localize("MENU_EMBLEM_ROTATE_GRADIENT"))
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.rightTriggerButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.leftTriggerButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal13.label:completeAnimation()
		registerVal2.ToggleOutline.label:setText(Engine.Localize("MENU_EMBLEM_TOGGLE_SOLID"))
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_2176_
	registerVal14.Solid = registerVal15
	registerVal15 = {}
	local function __FUNC_2588_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal5:completeAnimation()
		registerVal2.rsOpacity:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.lsOpacity:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.opacityText:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal13:completeAnimation()
		registerVal13.label:completeAnimation()
		registerVal2.ToggleOutline.label:setText(Engine.Localize("MENU_EMBLEM_TOGGLE_SOLID"))
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_2588_
	registerVal14.NoColor = registerVal15
	registerVal2.clipsPerState = registerVal14
	local function __FUNC_2830_(arg0)
		arg0.cacButtonBoxLrgInactiveStroke0:close()
		arg0.rsOpacity:close()
		arg0.lsOpacity:close()
		arg0.ChangeColor:close()
		arg0.choosePaintSide:close()
		arg0.rightTriggerButton:close()
		arg0.leftTriggerButton:close()
		arg0.ToggleOutline:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2830_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

