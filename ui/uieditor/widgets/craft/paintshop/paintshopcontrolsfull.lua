-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveStroke")
require("ui.uieditor.widgets.Craft.Paintshop.PaintshopButtonPrompt")
require("ui.uieditor.widgets.Craft.EmblemEditor.EmblemEditorButtonPrompt")
require("ui.uieditor.widgets.Craft.EmblemEditor.EmblemEditorHeaderRight")
require("ui.uieditor.widgets.Craft.Paintshop.PaintshopChooseSide")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PaintshopControlsFull = registerVal1
function CoD.PaintshopControlsFull.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PaintshopControlsFull)
	registerVal2.id = "PaintshopControlsFull"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 250.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 345.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.450000, 0.000000)
	registerVal3:setTopBottom(true, true, 31.000000, -16.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.500000)
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	local registerVal4 = CoD.cac_ButtonBoxLrgInactiveStroke.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal4:setTopBottom(true, true, 28.000000, -87.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.cacButtonBoxLrgInactiveStroke0 = registerVal4
	local registerVal5 = CoD.PaintshopButtonPrompt.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 14.000000, 247.000000)
	registerVal5:setTopBottom(true, false, 223.000000, 258.000000)
	registerVal5.label:setText(Engine.Localize("MENU_EMBLEM_COLOR_PICKER"))
	local function __FUNC_1C84_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "Controller", "alt2_button_image", __FUNC_1C84_)
	registerVal2:addElement(registerVal5)
	registerVal2.ColorPicker = registerVal5
	local registerVal6 = CoD.EmblemEditorButtonPrompt.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 27.000000, 51.000000)
	registerVal6:setTopBottom(true, false, 114.000000, 138.000000)
	registerVal6.label:setText(Engine.Localize(""))
	local function __FUNC_1D5F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "Controller", "right_shoulder_button_image", __FUNC_1D5F_)
	registerVal2:addElement(registerVal6)
	registerVal2.rsOpacity = registerVal6
	local registerVal7 = CoD.EmblemEditorButtonPrompt.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 2.000000, 26.000000)
	registerVal7:setTopBottom(true, false, 114.000000, 138.000000)
	registerVal7.label:setText(Engine.Localize(""))
	local function __FUNC_1E37_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "Controller", "left_shoulder_button_image", __FUNC_1E37_)
	registerVal2:addElement(registerVal7)
	registerVal2.lsOpacity = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 55.000000, 247.000000)
	registerVal8:setTopBottom(true, false, 116.000000, 135.000000)
	registerVal8:setText(Engine.Localize("MENU_EMBLEM_LAYER_OPACITY"))
	registerVal8:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal8)
	registerVal2.opacityText = registerVal8
	local registerVal9 = CoD.PaintshopButtonPrompt.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 14.000000, 247.000000)
	registerVal9:setTopBottom(true, false, 194.000000, 225.000000)
	registerVal9.label:setText(Engine.Localize("MENU_CHANGE_EMBLEM_LAYER_ORDER"))
	local function __FUNC_1F0F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "Controller", "dpad_lr_button_image", __FUNC_1F0F_)
	registerVal2:addElement(registerVal9)
	registerVal2.LayerOrder = registerVal9
	local registerVal10 = CoD.PaintshopButtonPrompt.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 14.000000, 247.000000)
	registerVal10:setTopBottom(true, false, 166.000000, 197.000000)
	registerVal10.label:setText(Engine.Localize("PLATFORM_EMBLEM_TOGGLE_OUTLINE"))
	local function __FUNC_1FE7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal10:subscribeToGlobalModel(arg1, "Controller", "alt1_button_image", __FUNC_1FE7_)
	registerVal2:addElement(registerVal10)
	registerVal2.ToggleOutline = registerVal10
	local registerVal11 = CoD.PaintshopButtonPrompt.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 13.000000, 247.000000)
	registerVal11:setTopBottom(true, false, 140.000000, 171.000000)
	registerVal11.label:setText(Engine.Localize("PLATFORM_EMBLEM_TOGGLE_FLIP"))
	local function __FUNC_20BF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal11:subscribeToGlobalModel(arg1, "Controller", "back_button_image", __FUNC_20BF_)
	registerVal2:addElement(registerVal11)
	registerVal2.Flip = registerVal11
	local registerVal12 = LUI.UIText.new()
	registerVal12:setLeftRight(true, false, 55.000000, 247.000000)
	registerVal12:setTopBottom(true, false, 91.000000, 110.000000)
	registerVal12:setText(Engine.Localize("PLATFORM_EMBLEM_ROTATE_LAYER"))
	registerVal12:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal12)
	registerVal2.rotateText = registerVal12
	local registerVal13 = CoD.EmblemEditorButtonPrompt.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 26.000000, 49.000000)
	registerVal13:setTopBottom(true, false, 87.000000, 118.000000)
	registerVal13.label:setText(Engine.Localize(""))
	local function __FUNC_2197_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal13:subscribeToGlobalModel(arg1, "Controller", "right_trigger_button_image", __FUNC_2197_)
	registerVal2:addElement(registerVal13)
	registerVal2.rightTriggerButton = registerVal13
	local registerVal14 = CoD.EmblemEditorButtonPrompt.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 2.000000, 26.000000)
	registerVal14:setTopBottom(true, false, 87.000000, 118.000000)
	registerVal14.label:setText(Engine.Localize(""))
	local function __FUNC_226F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal14:subscribeToGlobalModel(arg1, "Controller", "left_trigger_button_image", __FUNC_226F_)
	registerVal2:addElement(registerVal14)
	registerVal2.leftTriggerButton = registerVal14
	local registerVal15 = CoD.PaintshopButtonPrompt.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 14.000000, 247.000000)
	registerVal15:setTopBottom(true, false, 62.000000, 93.000000)
	registerVal15:setAlpha(0.000000)
	registerVal15.label:setText(Engine.Localize("MENU_EMBLEM_FIXED_SCALE"))
	local function __FUNC_2347_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal15:subscribeToGlobalModel(arg1, "Controller", "move_right_stick_button_image", __FUNC_2347_)
	registerVal2:addElement(registerVal15)
	registerVal2.FixedScale = registerVal15
	local registerVal16 = CoD.PaintshopButtonPrompt.new(arg0, arg1)
	registerVal16:setLeftRight(true, false, 14.000000, 247.000000)
	registerVal16:setTopBottom(true, false, 62.000000, 93.000000)
	registerVal16.label:setText(Engine.Localize("MENU_EMBLEM_FREE_SCALE"))
	local function __FUNC_241F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal16:subscribeToGlobalModel(arg1, "Controller", "move_right_stick_button_image", __FUNC_241F_)
	registerVal2:addElement(registerVal16)
	registerVal2.FreeScale = registerVal16
	local registerVal17 = CoD.PaintshopButtonPrompt.new(arg0, arg1)
	registerVal17:setLeftRight(true, false, 14.000000, 247.000000)
	registerVal17:setTopBottom(true, false, 35.000000, 66.000000)
	registerVal17.label:setText(Engine.Localize("MENU_EMBLEM_MOVE_EMBLEM"))
	local function __FUNC_24F7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal17:subscribeToGlobalModel(arg1, "Controller", "move_left_stick_button_image", __FUNC_24F7_)
	registerVal2:addElement(registerVal17)
	registerVal2.Move = registerVal17
	local registerVal18 = CoD.PaintshopButtonPrompt.new(arg0, arg1)
	registerVal18:setLeftRight(true, false, 14.000000, 247.000000)
	registerVal18:setTopBottom(true, false, 297.000000, 321.000000)
	registerVal18.label:setText(Engine.Localize("MENU_MATERIAL_PICKER"))
	local function __FUNC_25CF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal18.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal18:subscribeToGlobalModel(arg1, "Controller", "dpad_up_button_image", __FUNC_25CF_)
	registerVal2:addElement(registerVal18)
	registerVal2.materialPicker = registerVal18
	local registerVal19 = CoD.EmblemEditorHeaderRight.new(arg0, arg1)
	registerVal19:setLeftRight(true, true, 0.000000, -0.450000)
	registerVal19:setTopBottom(true, false, 260.000000, 288.000000)
	registerVal19.text:setText(Engine.Localize("MENU_EMBLEM_OVERRIDES_CAPS"))
	registerVal19.text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal2:addElement(registerVal19)
	registerVal2.overrides = registerVal19
	local registerVal20 = CoD.PaintshopChooseSide.new(arg0, arg1)
	registerVal20:setLeftRight(true, true, 0.450000, 0.000000)
	registerVal20:setTopBottom(true, false, 1.000000, 22.000000)
	registerVal20.text:setText(Engine.Localize("MENU_CONTROLS_CAPS"))
	registerVal20.text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal2:addElement(registerVal20)
	registerVal2.PaintshopChooseSide0 = registerVal20
	local registerVal21 = CoD.cac_ButtonBoxLrgInactiveStroke.new(arg0, arg1)
	registerVal21:setLeftRight(true, true, -2.220000, 1.780000)
	registerVal21:setTopBottom(true, true, 288.000000, -16.000000)
	registerVal2:addElement(registerVal21)
	registerVal2.cacButtonBoxLrgInactiveStroke00 = registerVal21
	local registerVal22 = {}
	local registerVal23 = {}
	local function __FUNC_26A7_()
		registerVal2:setupElementClipCounter(16.000000)
		registerVal3:completeAnimation()
		registerVal2.Image0:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.cacButtonBoxLrgInactiveStroke0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ColorPicker:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.rsOpacity:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.lsOpacity:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.opacityText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LayerOrder:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.ToggleOutline:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Flip:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.rotateText:setLeftRight(true, false, 62.000000, 247.000000)
		registerVal2.rotateText:setTopBottom(true, false, 93.000000, 109.000000)
		registerVal2.rotateText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.rightTriggerButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.leftTriggerButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal16:completeAnimation()
		registerVal2.FreeScale:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.Move:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal20:completeAnimation()
		registerVal2.PaintshopChooseSide0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.cacButtonBoxLrgInactiveStroke00:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal21, {})
	end

	registerVal23.DefaultClip = __FUNC_26A7_
	registerVal22.DefaultState = registerVal23
	registerVal23 = {}
	local function __FUNC_2D97_()
		registerVal2:setupElementClipCounter(19.000000)
		registerVal3:completeAnimation()
		registerVal2.Image0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.cacButtonBoxLrgInactiveStroke0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ColorPicker:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.rsOpacity:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.lsOpacity:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.opacityText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LayerOrder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.ToggleOutline:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Flip:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.rotateText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.rightTriggerButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.leftTriggerButton:setAlpha(0.000000)
		registerVal2.leftTriggerButton:setXRot(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FixedScale:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FreeScale:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.Move:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.materialPicker:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.overrides:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.PaintshopChooseSide0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.cacButtonBoxLrgInactiveStroke00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
	end

	registerVal23.DefaultClip = __FUNC_2D97_
	registerVal22.BrowseModeControlsState = registerVal23
	registerVal23 = {}
	local function __FUNC_352A_()
		registerVal2:setupElementClipCounter(19.000000)
		registerVal3:completeAnimation()
		registerVal2.Image0:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.cacButtonBoxLrgInactiveStroke0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ColorPicker:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.rsOpacity:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.lsOpacity:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.opacityText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LayerOrder:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.ToggleOutline:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Flip:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.rotateText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.rightTriggerButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.leftTriggerButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FixedScale:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FreeScale:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.Move:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.materialPicker:setLeftRight(true, false, 14.000000, 228.000000)
		registerVal2.materialPicker:setTopBottom(true, false, 299.000000, 323.000000)
		registerVal2.materialPicker:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.overrides:setLeftRight(true, true, 0.000000, -0.450000)
		registerVal2.overrides:setTopBottom(true, false, 261.000000, 289.000000)
		registerVal2.overrides:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.PaintshopChooseSide0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.cacButtonBoxLrgInactiveStroke00:setLeftRight(true, true, -2.220000, 1.780000)
		registerVal2.cacButtonBoxLrgInactiveStroke00:setTopBottom(true, true, 290.000000, -14.000000)
		registerVal2.cacButtonBoxLrgInactiveStroke00:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal21, {})
	end

	registerVal23.DefaultClip = __FUNC_352A_
	registerVal22.FixedScale = registerVal23
	registerVal23 = {}
	local function __FUNC_3DEE_()
		registerVal2:setupElementClipCounter(19.000000)
		registerVal3:completeAnimation()
		registerVal2.Image0:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.cacButtonBoxLrgInactiveStroke0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ColorPicker:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.rsOpacity:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.lsOpacity:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.opacityText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LayerOrder:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.ToggleOutline:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Flip:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.rotateText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.rightTriggerButton:setLeftRight(true, false, 26.000000, 49.000000)
		registerVal2.rightTriggerButton:setTopBottom(true, false, 87.000000, 118.000000)
		registerVal2.rightTriggerButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.leftTriggerButton:setLeftRight(true, false, 2.000000, 26.000000)
		registerVal2.leftTriggerButton:setTopBottom(true, false, 87.000000, 118.000000)
		registerVal2.leftTriggerButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FixedScale:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FreeScale:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.Move:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.materialPicker:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.overrides:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.PaintshopChooseSide0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.cacButtonBoxLrgInactiveStroke00:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal21, {})
	end

	registerVal23.DefaultClip = __FUNC_3DEE_
	registerVal22.FreeScale = registerVal23
	registerVal2.clipsPerState = registerVal22
	local function __FUNC_4644_(arg0)
		arg0.cacButtonBoxLrgInactiveStroke0:close()
		arg0.ColorPicker:close()
		arg0.rsOpacity:close()
		arg0.lsOpacity:close()
		arg0.LayerOrder:close()
		arg0.ToggleOutline:close()
		arg0.Flip:close()
		arg0.rightTriggerButton:close()
		arg0.leftTriggerButton:close()
		arg0.FixedScale:close()
		arg0.FreeScale:close()
		arg0.Move:close()
		arg0.materialPicker:close()
		arg0.overrides:close()
		arg0.PaintshopChooseSide0:close()
		arg0.cacButtonBoxLrgInactiveStroke00:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_4644_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

