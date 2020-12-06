-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveStroke")
require("ui.uieditor.widgets.Craft.Paintshop.PaintshopButtonPrompt")
require("ui.uieditor.widgets.Craft.Paintshop.PaintshopChoosePaintSide")
require("ui.uieditor.widgets.Craft.EmblemEditor.EmblemEditorButtonPrompt")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.EmblemEditorMaterialControls = registerVal1
function CoD.EmblemEditorMaterialControls.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.EmblemEditorMaterialControls)
	registerVal2.id = "EmblemEditorMaterialControls"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 250.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 145.000000)
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
	registerVal4:setTopBottom(true, true, 28.000000, 2.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.cacButtonBoxLrgInactiveStroke0 = registerVal4
	local registerVal5 = CoD.PaintshopButtonPrompt.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 14.000000, 247.000000)
	registerVal5:setTopBottom(true, false, 30.000000, 61.000000)
	registerVal5.label:setText(Engine.Localize("MENU_EMBLEM_CHOOSE_MATERIAL"))
	local function __FUNC_126E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "Controller", "move_left_stick_button_image", __FUNC_126E_)
	registerVal2:addElement(registerVal5)
	registerVal2.ChangeColor = registerVal5
	local registerVal6 = CoD.PaintshopChoosePaintSide.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 27.000000)
	registerVal6.PaintshopChooseSide.text:setText(Engine.Localize("MENU_CONTROLS"))
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "BrowseModeControlsState"
	local function __FUNC_1347_(arg0, arg2, arg3)
		local registerVal3 = IsPaintshop(arg1)
		if registerVal3 then
			registerVal3 = IsModelValueEqualToEnum(arg1, "Emblem.EmblemProperties.editorMode", Enum.CustomizationEditorMode.CUSTOMIZATION_EDITOR_MODE_EDIT)
		end
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_1347_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "Emblem.EmblemProperties.editorMode")
	local function __FUNC_1471_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "Emblem.EmblemProperties.editorMode"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:subscribeToModel(registerVal9, __FUNC_1471_)
	registerVal2:addElement(registerVal6)
	registerVal2.choosePaintSide = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 55.000000, 240.000000)
	registerVal7:setTopBottom(true, false, 93.500000, 109.500000)
	registerVal7:setText(Engine.Localize("MENU_EMBLEM_ROTATE_MATERIAL"))
	registerVal7:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.rotateText = registerVal7
	local registerVal8 = CoD.EmblemEditorButtonPrompt.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 26.000000, 49.000000)
	registerVal8:setTopBottom(true, false, 87.500000, 118.500000)
	registerVal8.label:setText(Engine.Localize(""))
	local function __FUNC_15A8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "Controller", "right_trigger_button_image", __FUNC_15A8_)
	registerVal2:addElement(registerVal8)
	registerVal2.rightTriggerButton = registerVal8
	registerVal9 = CoD.EmblemEditorButtonPrompt.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 2.000000, 26.000000)
	registerVal9:setTopBottom(true, false, 87.500000, 118.500000)
	registerVal9.label:setText(Engine.Localize(""))
	local function __FUNC_1683_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "Controller", "left_trigger_button_image", __FUNC_1683_)
	registerVal2:addElement(registerVal9)
	registerVal2.leftTriggerButton = registerVal9
	registerVal10 = CoD.PaintshopButtonPrompt.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 14.000000, 252.000000)
	registerVal10:setTopBottom(true, false, 58.000000, 89.000000)
	registerVal10.label:setText(Engine.Localize("MENU_EMBLEM_FREE_SCALE"))
	local function __FUNC_175B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal10:subscribeToGlobalModel(arg1, "Controller", "right_stick_button_image", __FUNC_175B_)
	local function __FUNC_1833_(arg0, arg1)
		SetupAutoHorizontalAlignArabicText(arg0)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal10:registerEventHandler("menu_loaded", __FUNC_1833_)
	registerVal2:addElement(registerVal10)
	registerVal2.FreeScale = registerVal10
	local registerVal11 = CoD.PaintshopButtonPrompt.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 14.000000, 247.000000)
	registerVal11:setTopBottom(true, false, 58.000000, 89.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11.label:setText(Engine.Localize("MENU_EMBLEM_FIXED_SCALE"))
	local function __FUNC_18D5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal11:subscribeToGlobalModel(arg1, "Controller", "move_right_stick_button_image", __FUNC_18D5_)
	registerVal2:addElement(registerVal11)
	registerVal2.FixedScale = registerVal11
	local registerVal12 = {}
	local registerVal13 = {}
	local function __FUNC_19AF_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal10:completeAnimation()
		registerVal2.FreeScale:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FixedScale:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_19AF_
	registerVal12.DefaultState = registerVal13
	registerVal13 = {}
	local function __FUNC_1B0A_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal10:completeAnimation()
		registerVal2.FreeScale:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FixedScale:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_1B0A_
	registerVal12.FixedScale = registerVal13
	registerVal13 = {}
	local function __FUNC_1C66_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal10:completeAnimation()
		registerVal2.FreeScale:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FixedScale:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_1C66_
	registerVal12.FreeScale = registerVal13
	registerVal2.clipsPerState = registerVal12
	local function __FUNC_1DC2_(arg0)
		arg0.cacButtonBoxLrgInactiveStroke0:close()
		arg0.ChangeColor:close()
		arg0.choosePaintSide:close()
		arg0.rightTriggerButton:close()
		arg0.leftTriggerButton:close()
		arg0.FreeScale:close()
		arg0.FixedScale:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1DC2_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

