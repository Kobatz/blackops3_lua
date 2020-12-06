-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveStroke")
require("ui.uieditor.widgets.Craft.Paintshop.PaintshopButtonPrompt")
require("ui.uieditor.widgets.Craft.Paintshop.PaintshopChooseSide")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PaintshopControls = registerVal1
function CoD.PaintshopControls.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PaintshopControls)
	registerVal2.id = "PaintshopControls"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 250.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 225.000000)
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
	registerVal5:setLeftRight(true, false, 16.000000, 249.000000)
	registerVal5:setTopBottom(true, false, 36.000000, 67.000000)
	registerVal5.label:setText(Engine.Localize("MENU_EMBLEM_COPY_LAYER"))
	local function __FUNC_1232_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "Controller", "back_button_image", __FUNC_1232_)
	registerVal2:addElement(registerVal5)
	registerVal2.Copy = registerVal5
	local registerVal6 = CoD.PaintshopButtonPrompt.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 16.000000, 249.000000)
	registerVal6:setTopBottom(true, false, 62.000000, 93.000000)
	registerVal6.label:setText(Engine.Localize("MENU_EMBLEM_CUT_LAYER"))
	local function __FUNC_130B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "Controller", "alt1_button_image", __FUNC_130B_)
	registerVal2:addElement(registerVal6)
	registerVal2.Cut = registerVal6
	local registerVal7 = CoD.PaintshopButtonPrompt.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 16.000000, 249.000000)
	registerVal7:setTopBottom(true, false, 88.950000, 119.950000)
	registerVal7.label:setText(Engine.Localize("MENU_EMBLEM_CHANGE_DECAL"))
	local function __FUNC_13E3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "Controller", "alt2_button_image", __FUNC_13E3_)
	registerVal2:addElement(registerVal7)
	registerVal2.Change = registerVal7
	local registerVal8 = CoD.PaintshopButtonPrompt.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 16.000000, 249.000000)
	registerVal8:setTopBottom(true, false, 115.950000, 146.950000)
	registerVal8.label:setText(Engine.Localize("MENU_EMBLEM_INSERT_DECAL"))
	local function __FUNC_14BB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "Controller", "dpad_down_button_image", __FUNC_14BB_)
	registerVal2:addElement(registerVal8)
	registerVal2.Insert = registerVal8
	local registerVal9 = CoD.PaintshopButtonPrompt.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 16.000000, 249.000000)
	registerVal9:setTopBottom(true, false, 142.950000, 173.950000)
	registerVal9.label:setText(Engine.Localize("MENU_EMBLEM_LINK_LAYERS"))
	local function __FUNC_1593_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "Controller", "right_trigger_button_image", __FUNC_1593_)
	registerVal2:addElement(registerVal9)
	registerVal2.linkLayers = registerVal9
	local registerVal10 = CoD.PaintshopButtonPrompt.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 16.000000, 249.000000)
	registerVal10:setTopBottom(true, false, 168.950000, 199.950000)
	registerVal10.label:setText(Engine.Localize("MENU_EMBLEMS_UNGROUP"))
	local function __FUNC_166B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal10:subscribeToGlobalModel(arg1, "Controller", "left_shoulder_button_image", __FUNC_166B_)
	registerVal2:addElement(registerVal10)
	registerVal2.groupLayers = registerVal10
	local registerVal11 = CoD.PaintshopButtonPrompt.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 16.000000, 249.000000)
	registerVal11:setTopBottom(true, false, 194.000000, 225.000000)
	registerVal11.label:setText(Engine.Localize("MENU_EMBLEM_SAVE_DECAL_GROUP"))
	local function __FUNC_1743_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal11:subscribeToGlobalModel(arg1, "Controller", "right_shoulder_button_image", __FUNC_1743_)
	registerVal2:addElement(registerVal11)
	registerVal2.saveDecal = registerVal11
	local registerVal12 = CoD.PaintshopChooseSide.new(arg0, arg1)
	registerVal12:setLeftRight(true, true, 0.450000, 0.000000)
	registerVal12:setTopBottom(true, false, 1.000000, 22.000000)
	registerVal12.text:setText(Engine.Localize("MENU_CONTROLS_CAPS"))
	registerVal12.text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal2:addElement(registerVal12)
	registerVal2.PaintshopChooseSide0 = registerVal12
	local registerVal13 = {}
	local registerVal14 = {}
	local function __FUNC_181B_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.Image0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.cacButtonBoxLrgInactiveStroke0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Copy:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Cut:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Change:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Insert:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.linkLayers:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.groupLayers:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.saveDecal:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.PaintshopChooseSide0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_181B_
	registerVal13.DefaultState = registerVal14
	registerVal14 = {}
	local function __FUNC_1C37_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.Image0:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.cacButtonBoxLrgInactiveStroke0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Copy:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Cut:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Change:setLeftRight(true, false, 16.000000, 249.000000)
		registerVal2.Change:setTopBottom(true, false, 88.950000, 119.950000)
		registerVal2.Change:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Insert:setLeftRight(true, false, 16.000000, 249.000000)
		registerVal2.Insert:setTopBottom(true, false, 115.950000, 146.950000)
		registerVal2.Insert:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal9.label:completeAnimation()
		registerVal2.linkLayers:setLeftRight(true, false, 16.000000, 249.000000)
		registerVal2.linkLayers:setTopBottom(true, false, 142.950000, 173.950000)
		registerVal2.linkLayers:setAlpha(1.000000)
		registerVal2.linkLayers.label:setText(Engine.Localize("MENU_EMBLEM_UNLINK_LAYERS"))
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal10.label:completeAnimation()
		registerVal2.groupLayers:setLeftRight(true, false, 16.000000, 249.000000)
		registerVal2.groupLayers:setTopBottom(true, false, 168.950000, 199.950000)
		registerVal2.groupLayers:setAlpha(1.000000)
		registerVal2.groupLayers.label:setText(Engine.Localize("MENU_EMBLEMS_GROUP"))
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.saveDecal:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.PaintshopChooseSide0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_1C37_
	registerVal13.BrowseModeLinkedLayer = registerVal14
	registerVal14 = {}
	local function __FUNC_2324_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.Image0:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.cacButtonBoxLrgInactiveStroke0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Copy:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Cut:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Change:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Insert:setLeftRight(true, false, 16.000000, 249.000000)
		registerVal2.Insert:setTopBottom(true, false, 88.950000, 119.950000)
		registerVal2.Insert:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.linkLayers:setLeftRight(true, false, 16.000000, 249.000000)
		registerVal2.linkLayers:setTopBottom(true, false, 142.950000, 173.950000)
		registerVal2.linkLayers:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal10.label:completeAnimation()
		registerVal2.groupLayers:setLeftRight(true, false, 16.000000, 249.000000)
		registerVal2.groupLayers:setTopBottom(true, false, 114.500000, 145.500000)
		registerVal2.groupLayers:setAlpha(1.000000)
		registerVal2.groupLayers.label:setText(Engine.Localize("MENU_EMBLEMS_UNGROUP"))
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.saveDecal:setLeftRight(true, false, 16.000000, 249.000000)
		registerVal2.saveDecal:setTopBottom(true, false, 168.000000, 199.000000)
		registerVal2.saveDecal:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.PaintshopChooseSide0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_2324_
	registerVal13.BrowseModeGroupedLayer = registerVal14
	registerVal14 = {}
	local function __FUNC_299F_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal5:completeAnimation()
		registerVal2.Copy:setLeftRight(true, false, 16.000000, 249.000000)
		registerVal2.Copy:setTopBottom(true, false, 36.000000, 67.000000)
		registerVal2.Copy:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Cut:setLeftRight(true, false, 16.000000, 249.000000)
		registerVal2.Cut:setTopBottom(true, false, 62.000000, 93.000000)
		registerVal2.Cut:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Change:setLeftRight(true, false, 16.000000, 249.000000)
		registerVal2.Change:setTopBottom(true, false, 88.950000, 119.950000)
		registerVal2.Change:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Insert:setLeftRight(true, false, 16.000000, 249.000000)
		registerVal2.Insert:setTopBottom(true, false, 115.950000, 146.950000)
		registerVal2.Insert:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal9.label:completeAnimation()
		registerVal2.linkLayers:setLeftRight(true, false, 16.000000, 249.000000)
		registerVal2.linkLayers:setTopBottom(true, false, 142.950000, 173.950000)
		registerVal2.linkLayers:setAlpha(1.000000)
		registerVal2.linkLayers.label:setText(Engine.Localize("MENU_EMBLEM_UNLINK_LAYERS"))
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.groupLayers:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.saveDecal:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal14.DefaultClip = __FUNC_299F_
	registerVal13.BrowseModeOneLayerLinked = registerVal14
	registerVal14 = {}
	local function __FUNC_2F4F_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.Image0:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.cacButtonBoxLrgInactiveStroke0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Copy:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Cut:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Change:setLeftRight(true, false, 16.000000, 249.000000)
		registerVal2.Change:setTopBottom(true, false, 88.950000, 119.950000)
		registerVal2.Change:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Insert:setLeftRight(true, false, 16.000000, 249.000000)
		registerVal2.Insert:setTopBottom(true, false, 115.950000, 146.950000)
		registerVal2.Insert:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal9.label:completeAnimation()
		registerVal2.linkLayers:setLeftRight(true, false, 16.000000, 249.000000)
		registerVal2.linkLayers:setTopBottom(true, false, 142.950000, 173.950000)
		registerVal2.linkLayers:setAlpha(1.000000)
		registerVal2.linkLayers.label:setText(Engine.Localize("MENU_EMBLEM_LINK_LAYERS"))
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.groupLayers:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.saveDecal:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.PaintshopChooseSide0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_2F4F_
	registerVal13.BrowseMode = registerVal14
	registerVal2.clipsPerState = registerVal13
	local function __FUNC_3570_(arg0)
		arg0.cacButtonBoxLrgInactiveStroke0:close()
		arg0.Copy:close()
		arg0.Cut:close()
		arg0.Change:close()
		arg0.Insert:close()
		arg0.linkLayers:close()
		arg0.groupLayers:close()
		arg0.saveDecal:close()
		arg0.PaintshopChooseSide0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3570_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

