-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Craft.EmblemEditor.EmblemEditorRightButtonBar")
require("ui.uieditor.widgets.buttonprompt")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.EmblemBrowseControlsBar = registerVal1
function CoD.EmblemBrowseControlsBar.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.EmblemBrowseControlsBar)
	registerVal2.id = "EmblemBrowseControlsBar"
	registerVal2.soundSet = "CustomizationEditor"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 38.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.EmblemEditorRightButtonBar.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, -389.000000, -44.000000)
	registerVal3:setTopBottom(false, true, -36.000000, -3.000000)
	registerVal3.change.label:setText(Engine.Localize("MENU_EMBLEM_CHANGE_DECAL"))
	registerVal3.cut.label:setText(Engine.Localize("MENU_EMBLEM_CUT_LAYER"))
	registerVal3.copy.label:setText(Engine.Localize("MENU_EMBLEM_COPY_LAYER"))
	registerVal3.new.label:setText(Engine.Localize("MENU_EMBLEM_INSERT_LAYER"))
	registerVal2:addElement(registerVal3)
	registerVal2.rightButtonBar = registerVal3
	local registerVal4 = CoD.buttonprompt.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -70.000000, 0.000000)
	registerVal4:setTopBottom(false, true, -34.000000, -3.000000)
	registerVal4.label:setText(Engine.Localize("MENU_EMBLEM_LINK_LAYERS"))
	local function __FUNC_B7F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "Controller", "right_trigger_button_image", __FUNC_B7F_)
	registerVal2:addElement(registerVal4)
	registerVal2.link = registerVal4
	local registerVal5 = CoD.buttonprompt.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, 0.000000, 90.000000)
	registerVal5:setTopBottom(false, true, -34.000000, -3.000000)
	registerVal5.label:setText(Engine.Localize("MENU_EMBLEMS_GROUP"))
	local function __FUNC_C57_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "Controller", "right_shoulder_button_image", __FUNC_C57_)
	registerVal2:addElement(registerVal5)
	registerVal2.group = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_D2F_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal3.change:completeAnimation()
		registerVal3.change.label:completeAnimation()
		registerVal3.cut:completeAnimation()
		registerVal3.cut.label:completeAnimation()
		registerVal3.copy:completeAnimation()
		registerVal3.copy.label:completeAnimation()
		registerVal3.new:completeAnimation()
		registerVal3.new.label:completeAnimation()
		registerVal2.rightButtonBar:setAlpha(1.000000)
		registerVal2.rightButtonBar.change:setAlpha(0.000000)
		registerVal2.rightButtonBar.change.label:setText(Engine.Localize("MENU_EMBLEM_CHANGE_DECAL"))
		registerVal2.rightButtonBar.cut:setAlpha(0.000000)
		registerVal2.rightButtonBar.cut.label:setText(Engine.Localize("MENU_EMBLEM_CUT_LAYER"))
		registerVal2.rightButtonBar.copy:setAlpha(0.000000)
		registerVal2.rightButtonBar.copy.label:setText(Engine.Localize("MENU_EMBLEM_COPY_LAYER"))
		registerVal2.rightButtonBar.new:setAlpha(0.000000)
		registerVal2.rightButtonBar.new.label:setText(Engine.Localize("MENU_NEW"))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.link:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.group:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_D2F_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_1279_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal3.change:completeAnimation()
		registerVal3.change.label:completeAnimation()
		registerVal3.cut:completeAnimation()
		registerVal3.cut.label:completeAnimation()
		registerVal3.copy:completeAnimation()
		registerVal3.copy.label:completeAnimation()
		registerVal3.new:completeAnimation()
		registerVal3.new.label:completeAnimation()
		registerVal2.rightButtonBar.change:setAlpha(1.000000)
		registerVal2.rightButtonBar.change.label:setText(Engine.Localize("MENU_EMBLEM_CHANGE_DECAL"))
		registerVal2.rightButtonBar.cut:setAlpha(1.000000)
		registerVal2.rightButtonBar.cut.label:setText(Engine.Localize("MENU_EMBLEM_CUT_LAYER"))
		registerVal2.rightButtonBar.copy:setAlpha(1.000000)
		registerVal2.rightButtonBar.copy.label:setText(Engine.Localize("MENU_EMBLEM_COPY_LAYER"))
		registerVal2.rightButtonBar.new:setAlpha(1.000000)
		registerVal2.rightButtonBar.new.label:setText(Engine.Localize("MENU_NEW"))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal4.label:completeAnimation()
		registerVal2.link:setLeftRight(false, false, -70.000000, 0.000000)
		registerVal2.link:setTopBottom(false, true, -34.000000, -3.000000)
		registerVal2.link:setAlpha(1.000000)
		registerVal2.link.label:setText(Engine.Localize("MENU_EMBLEM_UNLINK_LAYERS"))
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal5.label:completeAnimation()
		registerVal2.group:setLeftRight(false, false, 0.000000, 90.000000)
		registerVal2.group:setTopBottom(false, true, -34.000000, -3.000000)
		registerVal2.group:setAlpha(1.000000)
		registerVal2.group.label:setText(Engine.Localize("MENU_EMBLEMS_GROUP"))
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1279_
	registerVal6.BrowseModeLinkedLayer = registerVal7
	registerVal7 = {}
	local function __FUNC_1970_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal3.change:completeAnimation()
		registerVal3.change.label:completeAnimation()
		registerVal3.cut:completeAnimation()
		registerVal3.cut.label:completeAnimation()
		registerVal3.copy:completeAnimation()
		registerVal3.copy.label:completeAnimation()
		registerVal3.new:completeAnimation()
		registerVal3.new.label:completeAnimation()
		registerVal2.rightButtonBar.change:setAlpha(0.270000)
		registerVal2.rightButtonBar.change.label:setText(Engine.Localize("MENU_EMBLEM_CHANGE_DECAL"))
		registerVal2.rightButtonBar.cut:setAlpha(1.000000)
		registerVal2.rightButtonBar.cut.label:setText(Engine.Localize("MENU_EMBLEM_CUT_LAYER"))
		registerVal2.rightButtonBar.copy:setAlpha(1.000000)
		registerVal2.rightButtonBar.copy.label:setText(Engine.Localize("MENU_EMBLEM_COPY_LAYER"))
		registerVal2.rightButtonBar.new:setAlpha(1.000000)
		registerVal2.rightButtonBar.new.label:setText(Engine.Localize("MENU_NEW"))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal4.label:completeAnimation()
		registerVal2.link:setLeftRight(false, false, -70.000000, 0.000000)
		registerVal2.link:setTopBottom(false, true, -34.000000, -3.000000)
		registerVal2.link:setAlpha(0.000000)
		registerVal2.link.label:setText(Engine.Localize("MENU_SAVE"))
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal5.label:completeAnimation()
		registerVal2.group:setLeftRight(false, false, -70.000000, 20.000000)
		registerVal2.group:setTopBottom(false, true, -34.000000, -3.000000)
		registerVal2.group:setAlpha(1.000000)
		registerVal2.group.label:setText(Engine.Localize("MENU_EMBLEMS_UNGROUP"))
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1970_
	registerVal6.BrowseModeGroupedLayer = registerVal7
	registerVal7 = {}
	local function __FUNC_205F_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal3.change:completeAnimation()
		registerVal3.change.label:completeAnimation()
		registerVal3.cut:completeAnimation()
		registerVal3.cut.label:completeAnimation()
		registerVal3.copy:completeAnimation()
		registerVal3.copy.label:completeAnimation()
		registerVal3.new:completeAnimation()
		registerVal3.new.label:completeAnimation()
		registerVal2.rightButtonBar.change:setAlpha(1.000000)
		registerVal2.rightButtonBar.change.label:setText(Engine.Localize("MENU_EMBLEM_CHANGE_DECAL"))
		registerVal2.rightButtonBar.cut:setAlpha(1.000000)
		registerVal2.rightButtonBar.cut.label:setText(Engine.Localize("MENU_EMBLEM_CUT_LAYER"))
		registerVal2.rightButtonBar.copy:setAlpha(1.000000)
		registerVal2.rightButtonBar.copy.label:setText(Engine.Localize("MENU_EMBLEM_COPY_LAYER"))
		registerVal2.rightButtonBar.new:setAlpha(1.000000)
		registerVal2.rightButtonBar.new.label:setText(Engine.Localize("MENU_NEW"))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal4.label:completeAnimation()
		registerVal2.link:setLeftRight(false, false, -70.000000, 0.000000)
		registerVal2.link:setTopBottom(false, true, -34.000000, -3.000000)
		registerVal2.link:setAlpha(1.000000)
		registerVal2.link.label:setText(Engine.Localize("MENU_EMBLEM_UNLINK_LAYERS"))
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal5.label:completeAnimation()
		registerVal2.group:setAlpha(0.000000)
		registerVal2.group.label:setText(Engine.Localize("MENU_EMBLEMS_GROUP"))
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_205F_
	registerVal6.BrowseModeOneLayerLinked = registerVal7
	registerVal7 = {}
	local function __FUNC_26FF_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal3.change:completeAnimation()
		registerVal3.change.label:completeAnimation()
		registerVal3.cut:completeAnimation()
		registerVal3.cut.label:completeAnimation()
		registerVal3.copy:completeAnimation()
		registerVal3.copy.label:completeAnimation()
		registerVal3.new:completeAnimation()
		registerVal3.new.label:completeAnimation()
		registerVal2.rightButtonBar.change:setAlpha(1.000000)
		registerVal2.rightButtonBar.change.label:setText(Engine.Localize("MENU_EMBLEM_CHANGE_DECAL"))
		registerVal2.rightButtonBar.cut:setAlpha(1.000000)
		registerVal2.rightButtonBar.cut.label:setText(Engine.Localize("MENU_EMBLEM_CUT_LAYER"))
		registerVal2.rightButtonBar.copy:setAlpha(1.000000)
		registerVal2.rightButtonBar.copy.label:setText(Engine.Localize("MENU_EMBLEM_COPY_LAYER"))
		registerVal2.rightButtonBar.new:setAlpha(1.000000)
		registerVal2.rightButtonBar.new.label:setText(Engine.Localize("MENU_NEW"))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal4.label:completeAnimation()
		registerVal2.link:setLeftRight(false, false, -70.000000, 0.000000)
		registerVal2.link:setTopBottom(false, true, -34.000000, -3.000000)
		registerVal2.link:setAlpha(1.000000)
		registerVal2.link.label:setText(Engine.Localize("MENU_EMBLEM_LINK_LAYERS"))
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal5.label:completeAnimation()
		registerVal2.group:setAlpha(0.000000)
		registerVal2.group.label:setText(Engine.Localize("MENU_EMBLEMS_GROUP"))
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_26FF_
	registerVal6.BrowseMode = registerVal7
	registerVal7 = {}
	local function __FUNC_2D9D_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal3.change:completeAnimation()
		registerVal3.change.label:completeAnimation()
		registerVal3.cut:completeAnimation()
		registerVal3.cut.label:completeAnimation()
		registerVal3.copy:completeAnimation()
		registerVal3.copy.label:completeAnimation()
		registerVal3.new:completeAnimation()
		registerVal3.new.label:completeAnimation()
		registerVal2.rightButtonBar.change:setAlpha(1.000000)
		registerVal2.rightButtonBar.change.label:setText(Engine.Localize("MENU_EMBLEM_CHANGE_DECAL"))
		registerVal2.rightButtonBar.cut:setAlpha(1.000000)
		registerVal2.rightButtonBar.cut.label:setText(Engine.Localize("MENU_EMBLEM_CUT_LAYER"))
		registerVal2.rightButtonBar.copy:setAlpha(1.000000)
		registerVal2.rightButtonBar.copy.label:setText(Engine.Localize("MENU_EMBLEM_COPY_LAYER"))
		registerVal2.rightButtonBar.new:setAlpha(1.000000)
		registerVal2.rightButtonBar.new.label:setText(Engine.Localize("MENU_NEW"))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal4.label:completeAnimation()
		registerVal2.link:setAlpha(0.000000)
		registerVal2.link.label:setText(Engine.Localize("MENU_EMBLEM_LINK_LAYERS"))
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal5.label:completeAnimation()
		registerVal2.group:setAlpha(0.000000)
		registerVal2.group.label:setText(Engine.Localize("MENU_EMBLEMS_GROUP"))
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_2D9D_
	registerVal6.GroupsDisabledMode = registerVal7
	registerVal2.clipsPerState = registerVal6
	local function __FUNC_33B2_(arg0)
		arg0.rightButtonBar:close()
		arg0.link:close()
		arg0.group:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_33B2_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

