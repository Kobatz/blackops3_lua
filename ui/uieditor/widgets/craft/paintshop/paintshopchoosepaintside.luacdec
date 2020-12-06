-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Craft.Paintshop.PaintshopChooseSide")
require("ui.uieditor.widgets.Craft.EmblemEditor.EmblemEditorButtonPrompt")
require("ui.uieditor.widgets.PC.Craft.CraftSideSelectorButton")
local function __FUNC_2CE_(arg0, arg1, arg2)
	arg0:setForceMouseEventDispatch(true)
	arg0.leftButton.turnDirection = "left"
	arg0.rightButton.turnDirection = "right"
end

local function __FUNC_3A5_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_2CE_(arg0, arg1, arg2)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.PaintshopChoosePaintSide = registerVal3
local function __FUNC_417_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PaintshopChoosePaintSide)
	registerVal2.id = "PaintshopChoosePaintSide"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 162.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 27.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.PaintshopChooseSide.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3.text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	local function __FUNC_ED9_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.text:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "Customization", "view_string_ref", __FUNC_ED9_)
	registerVal2:addElement(registerVal3)
	registerVal2.PaintshopChooseSide = registerVal3
	local registerVal4 = CoD.EmblemEditorButtonPrompt.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 3.000000, 28.000000)
	registerVal4:setTopBottom(true, true, 0.000000, -4.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4.label:setText(Engine.Localize(""))
	local function __FUNC_FAC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "Controller", "move_right_stick_button_image", __FUNC_FAC_)
	registerVal2:addElement(registerVal4)
	registerVal2.rightStick = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 32.880000, 34.880000)
	registerVal5:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.Image0 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, 64.000000, 80.000000)
	registerVal6:setTopBottom(false, false, -5.000000, 3.000000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setZRot(-90.000000)
	registerVal6:setImage(RegisterImage("uie_img_t7_menu_arrow"))
	registerVal2:addElement(registerVal6)
	registerVal2.downArrow = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, 51.000000, 67.000000)
	registerVal7:setTopBottom(false, false, -5.000000, 3.000000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setZRot(90.000000)
	registerVal7:setImage(RegisterImage("uie_img_t7_menu_arrow"))
	registerVal2:addElement(registerVal7)
	registerVal2.upArrow = registerVal7
	local registerVal8 = CoD.CraftSideSelectorButton.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 0.000000, 25.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8.arrow:setZRot(90.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.leftButton = registerVal8
	local registerVal9 = CoD.CraftSideSelectorButton.new(arg0, arg1)
	registerVal9:setLeftRight(false, true, -25.000000, 0.000000)
	registerVal9:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9.arrow:setZRot(-90.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.rightButton = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_1087_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.rightStick:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Image0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.downArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.upArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal11.DefaultClip = __FUNC_1087_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_1286_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal4:completeAnimation()
		registerVal2.rightStick:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Image0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.downArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.upArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.leftButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.rightButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_1286_
	registerVal10.BrowseModeControlsState_PC = registerVal11
	registerVal11 = {}
	local function __FUNC_153C_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal4:completeAnimation()
		registerVal2.rightStick:setLeftRight(true, false, 1.000000, 26.000000)
		registerVal2.rightStick:setTopBottom(true, true, 0.000000, -4.000000)
		registerVal2.rightStick:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Image0:setLeftRight(true, false, 28.880000, 30.880000)
		registerVal2.Image0:setTopBottom(true, false, 0.000000, 25.000000)
		registerVal2.Image0:setAlpha(0.470000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.downArrow:setLeftRight(false, false, 65.000000, 81.000000)
		registerVal2.downArrow:setTopBottom(false, false, -5.000000, 3.000000)
		registerVal2.downArrow:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.downArrow:setAlpha(1.000000)
		registerVal2.downArrow:setScale(0.800000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.upArrow:setLeftRight(false, false, -51.130000, -35.130000)
		registerVal2.upArrow:setTopBottom(false, false, -5.000000, 3.000000)
		registerVal2.upArrow:setAlpha(1.000000)
		registerVal2.upArrow:setScale(0.800000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.leftButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.rightButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_153C_
	registerVal10.BrowseModeControlsState = registerVal11
	registerVal2.clipsPerState = registerVal10
	local function __FUNC_1A1F_(arg0)
		arg0.PaintshopChooseSide:close()
		arg0.rightStick:close()
		arg0.leftButton:close()
		arg0.rightButton:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1A1F_)
	if __FUNC_3A5_ then
		__FUNC_3A5_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.PaintshopChoosePaintSide.new = __FUNC_417_
