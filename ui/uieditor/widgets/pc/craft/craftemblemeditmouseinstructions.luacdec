-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveStroke")
require("ui.uieditor.widgets.Craft.Paintshop.PaintshopChooseSide")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CraftEmblemEditMouseInstructions = registerVal1
function CoD.CraftEmblemEditMouseInstructions.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CraftEmblemEditMouseInstructions)
	registerVal2.id = "CraftEmblemEditMouseInstructions"
	registerVal2.soundSet = "CustomizationEditor"
	registerVal2:setLeftRight(true, false, 0.000000, 250.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 80.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.500000)
	registerVal2:addElement(registerVal3)
	registerVal2.fullBackground = registerVal3
	local registerVal4 = CoD.cac_ButtonBoxLrgInactiveStroke.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal4:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.borderOutline = registerVal4
	local registerVal5 = CoD.PaintshopChooseSide.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.450000, 0.000000)
	registerVal5:setTopBottom(true, false, 1.000000, 22.000000)
	registerVal5.text:setText(Engine.Localize(LocalizeToUpperString("PLATFORM_MOUSE")))
	registerVal5.text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal2:addElement(registerVal5)
	registerVal2.header = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, true, 5.000000, -5.000000)
	registerVal6:setTopBottom(true, false, 30.000000, 50.000000)
	registerVal6:setText(Engine.Localize("PLATFORM_EMBLEM_MOVE_LAYER_KBM"))
	registerVal6:setTTF("fonts/default.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.translateInstruction = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, true, 5.000000, -5.000000)
	registerVal7:setTopBottom(true, false, 54.000000, 74.000000)
	registerVal7:setText(Engine.Localize("PLATFORM_EMBLEM_SCALE_LAYER_KBM"))
	registerVal7:setTTF("fonts/default.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.scaleInstruction = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, true, 5.000000, -5.000000)
	registerVal8:setTopBottom(true, false, 30.000000, 50.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setText(Engine.Localize("PLATFORM_EMBLEM_MATERIAL_SCALE_KBM"))
	registerVal8:setTTF("fonts/default.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal8)
	registerVal2.materialScaleInstruction = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_D5A_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.fullBackground:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.borderOutline:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.header:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.translateInstruction:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.scaleInstruction:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.materialScaleInstruction:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_D5A_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_103D_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.fullBackground:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.borderOutline:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.header:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.translateInstruction:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.scaleInstruction:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.materialScaleInstruction:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_103D_
	registerVal9.MaterialScale = registerVal10
	registerVal10 = {}
	local function __FUNC_1321_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.fullBackground:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.borderOutline:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.header:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.translateInstruction:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.scaleInstruction:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.materialScaleInstruction:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_1321_
	registerVal9.Hidden = registerVal10
	registerVal2.clipsPerState = registerVal9
	local function __FUNC_15FB_(arg0)
		arg0.borderOutline:close()
		arg0.header:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_15FB_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

