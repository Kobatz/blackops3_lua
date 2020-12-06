-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.menus.Craft.EmblemEditor.EmblemIconColorPicker")
require("ui.uieditor.menus.Craft.Paintshop.PaintshopLayerOptions")
require("ui.uieditor.menus.Craft.EmblemEditor.EmblemChooseIcon")
require("ui.uieditor.menus.Craft.EmblemEditor.EmblemEditorMaterialPicker")
require("ui.uieditor.widgets.StartMenu.StartMenu_Background")
require("ui.uieditor.widgets.Craft.EmblemEditor.EmblemLayerContainer")
require("ui.uieditor.widgets.Craft.EmblemEditor.EmblemDrawWidgetNew")
require("ui.uieditor.widgets.Craft.EmblemEditor.EmblemPulseLayerWidget")
require("ui.uieditor.widgets.Craft.EmblemEditor.EmblemEditorLayerProperties")
require("ui.uieditor.widgets.Craft.EmblemEditor.EmblemIconClipboard")
require("ui.uieditor.widgets.Craft.Paintshop.PaintshopChoosePaintSide")
require("ui.uieditor.widgets.Craft.Paintshop.PaintshopControlsFull")
require("ui.uieditor.widgets.PC.Craft.CraftEmblemEditMouseInstructions")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.Craft.EmblemEditor.EmblemBrowseControlsBar")
require("ui.uieditor.widgets.Craft.EmblemEditor.layermofn")
require("ui.uieditor.widgets.PC.Craft.CraftActionHeader")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
local function __FUNC_92A_(arg0, arg1)
	local function __FUNC_A5F_(arg0, arg1)
		if 145.000000 <= arg0 and arg0 <= 225.000000 then
			return "left"
		else
			if 315.000000 <= arg0 or arg0 <= 45.000000 then
				return "right"
			end
		end
	end

	local function __FUNC_AE9_()
		if 0.800000 < arg0.length and arg0.isRightStickRepeated == false then
			arg0.isRightStickRepeated = true
			local registerVal0 = __FUNC_A5F_(arg0.degrees, arg1)
			if registerVal0 == "left" then
				PaintjobEditor_ChangeViewLeftBumper(arg0, arg0, arg1)
				PlaySoundSetSound(arg0, "switch_camera")
			else
				PaintjobEditor_ChangeViewRightBumper(arg0, arg0, arg1)
				PlaySoundSetSound(arg0, "switch_camera")
				if registerVal0 == "right" and arg0.length <= 0.800000 and arg0.isRightStickRepeated == true then
					arg0.isRightStickRepeated = false
				end
			end
		end
	end

	local function __FUNC_CF5_(arg0, arg2)
		local registerVal3 = Engine.GetModelForController(arg1)
		local registerVal2 = Engine.GetModel(registerVal3, "RightStick")
		registerVal3 = IsBrowseMode(arg1)
		local registerVal4 = IsPaintshop(arg1)
		if registerVal2 and registerVal3 and registerVal4 then
			local registerVal5 = Engine.GetModelValue(Engine.GetModel(registerVal2, "Length"))
			arg0.length = registerVal5
			registerVal5 = Engine.GetModelValue(Engine.GetModel(registerVal2, "Degrees"))
			arg0.degrees = registerVal5
			__FUNC_AE9_()
		end
	end

	arg0:addElement(LUI.UITimer.new(100.000000, "get_right_stick_values", false, arg0))
	arg0:registerEventHandler("get_right_stick_values", __FUNC_CF5_)
end

if CoD.isPC then
	require("ui.uieditor.widgets.PC.Craft.CraftActionButton")
	require("ui.uieditor.widgets.PC.Craft.CraftActionSlider")
	local function __FUNC_EC9_(arg0, arg1)
		local registerVal2 = CoD.GetEditorProperties(arg0, "editorMode")
		if registerVal2 == Enum.CustomizationEditorMode.CUSTOMIZATION_EDITOR_MODE_EDIT then
			return CoD.PCUtil.Craft_GetEmblemEditorEditModeActions(arg0)
		else
			local registerVal3 = arg1:getParent()
			if registerVal3 and registerVal3.layerCarousel then
				return CoD.PCUtil.Craft_GetEmblemEditorBrowseModeActions(arg0, registerVal3, registerVal3.layerCarousel.activeWidget)
			end
			return CoD.PCUtil.Craft_GetEmblemEditorBrowseModeActions(arg0)
		end
	end

	local registerVal6 = DataSourceHelpers.ListSetup("PC.CraftActionsPC", __FUNC_EC9_)
	DataSources.CraftActionsPC = registerVal6
	DataSources.CraftActionsPC.getWidgetTypeForItem = CoD.PCUtil.Craft_WidgetSelectorFunc
end
local function __FUNC_1137_(arg0, arg1, arg2)
	local function __FUNC_14A4_(arg0, arg1)
		return true
	end

	arg0.emblemDrawWidget:registerEventHandler("button_action", __FUNC_14A4_)
	local function __FUNC_14D8_(arg1, arg2, arg3, arg4)
		if not arg0.m_disableNavigation then
			Engine.ExecNow(arg3, "emblemScale 0.02 0.02")
		end
	end

	CoD.Menu.AddButtonCallbackFunction(arg0, arg0, arg1, Enum.LUIButton.LUI_KEY_PCKEY_MWHEELUP, "MWHEELUP", __FUNC_14D8_)
	local function __FUNC_1595_(arg1, arg2, arg3, arg4)
		if not arg0.m_disableNavigation then
			Engine.ExecNow(arg3, "emblemScale -0.02 -0.02")
		end
	end

	CoD.Menu.AddButtonCallbackFunction(arg0, arg0, arg1, Enum.LUIButton.LUI_KEY_PCKEY_MWHEELDOWN, "MWHEELDOWN", __FUNC_1595_)
	local function __FUNC_1653_(arg2, arg3)
		if arg3.direction == "left" then
			PaintjobEditor_ChangeViewLeftBumper(arg0, arg0, arg1)
			PlaySoundSetSound(arg0, "switch_camera")
		else
			if arg3.direction == "right" then
				PaintjobEditor_ChangeViewRightBumper(arg0, arg0, arg1)
				PlaySoundSetSound(arg0, "switch_camera")
			end
		end
		return true
	end

	arg0:registerEventHandler("change_paintshop_view", __FUNC_1653_)
	local registerVal6 = Engine.GetModelForController(arg1)
	local registerVal5 = Engine.GetModel(registerVal6, "Emblem.EmblemProperties.editorMode")
	local function __FUNC_17B5_(arg2)
		local registerVal1 = Engine.LastInput_Gamepad()
		registerVal1 = IsPrimaryControllerIndex(arg1)
		if not arg0.m_layerEmpty and not registerVal1 and registerVal1 then
			arg0.actionsListPC:show()
		else
			arg0.actionsListPC:hide()
		end
		arg0.actionsListPC:updateDataSource()
	end

	arg0.actionsListPC:subscribeToModel(registerVal5, __FUNC_17B5_)
	arg0.actionsListPC.m_menu = arg0
	arg0.actionsListPC.navigation = nil
end

local function __FUNC_1924_(arg0, arg1, arg2)
	EmblemEditor_SetupEditorBasedOnMode(arg0, arg0, arg0.m_ownerController)
	arg0.isRightStickRepeated = false
	__FUNC_92A_(arg0, arg0.m_ownerController)
	local registerVal4 = IsPaintshop(arg0.m_ownerController)
	registerVal4 = Dvar.ui_disablePSControlWidgets:get()
	if registerVal4 and registerVal4 == true then
		arg0.editorControlsGuide:setAlpha(0.000000)
		arg0.layerProperties:setAlpha(0.000000)
		arg0.paintshopControls:setAlpha(0.000000)
		arg0.choosePaintSide:setAlpha(0.000000)
	end
	if CoD.isPC then
		__FUNC_1137_(arg0, arg0.m_ownerController, arg2)
	end
end

local function __FUNC_1B9E_(arg0, arg1)
	arg0.disableLeaderChangePopupShutdown = true
end

local function __FUNC_1BF8_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("EmblemEditor")
	if __FUNC_1B9E_ then
		__FUNC_1B9E_(registerVal1, arg0)
	end
	registerVal1.soundSet = "CustomizationEditor"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "EmblemEditor.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -638.000000, 642.000000)
	registerVal3:setTopBottom(false, false, -360.000000, 360.000000)
	registerVal3:setScale(1.000000)
	registerVal3:setImage(RegisterImage("uie_t7_mp_menu_cac_version6_backdrop720p"))
	registerVal1:addElement(registerVal3)
	registerVal1.Background = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.750000)
	registerVal1:addElement(registerVal4)
	registerVal1.editorBackground = registerVal4
	local registerVal5 = CoD.StartMenu_Background.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 109.000000, -109.000000)
	registerVal5:setAlpha(0.370000)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "InGame"
	local function __FUNC_461A_(arg0, arg1, arg2)
		return IsInGame()
	end

	registerVal9.condition = __FUNC_461A_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal1:addElement(registerVal5)
	registerVal1.StartMenuBackground0 = registerVal5
	local registerVal6 = LUI.UIList.new(registerVal1, arg0, 2.000000, 200.000000, nil, false, true, 595.000000, 0.000000, false, false)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, false, 489.000000, 609.000000)
	registerVal6:setWidgetType(CoD.EmblemLayerContainer)
	registerVal6:setHorizontalCount(16.000000)
	registerVal6:setDataSource("EmblemLayerList")
	local function __FUNC_4662_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isGrouped"
		CoD.Menu.UpdateButtonShownState(registerVal6, registerVal1, arg0, Enum.LUIButton.LUI_KEY_RTRIG)
		CoD.Menu.UpdateButtonShownState(registerVal6, registerVal1, arg0, Enum.LUIButton.LUI_KEY_LB)
	end

	registerVal6:linkToElementModel(registerVal6, "isGrouped", true, __FUNC_4662_)
	local function __FUNC_4874_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isLinked"
		CoD.Menu.UpdateButtonShownState(registerVal6, registerVal1, arg0, Enum.LUIButton.LUI_KEY_RB)
	end

	registerVal6:linkToElementModel(registerVal6, "isLinked", true, __FUNC_4874_)
	local function __FUNC_4A28_(arg1, arg2)
		local registerVal3 = IsLayerEmpty(registerVal1, arg1, arg0)
		if not registerVal3 then
			EmblemEditor_LayerGainFocus(registerVal1, registerVal1, arg1, arg0)
			UpdateElementState(registerVal1, "layermofn", arg0)
			UpdateElementState(registerVal1, "browseControlBar", arg0)
			UpdateElementState(registerVal1, "clipboard", arg0)
			local registerVal5 = {}
			registerVal5.elementName = "emblemHiddenPulseLayer"
			registerVal5.clipName = "DefaultClip"
			PlayClipOnElement(registerVal1, registerVal5, arg0)
			UpdateElementDataSource(registerVal1, "actionsListPC")
		else
			registerVal3 = IsLayerEmpty(registerVal1, arg1, arg0)
			if registerVal3 then
				EmblemEditor_LayerGainFocus(registerVal1, registerVal1, arg1, arg0)
				UpdateElementState(registerVal1, "layermofn", arg0)
				UpdateElementState(registerVal1, "browseControlBar", arg0)
				UpdateElementState(registerVal1, "clipboard", arg0)
				registerVal5 = {}
				registerVal5.elementName = "emblemHiddenPulseLayer"
				registerVal5.clipName = "Hide"
				PlayClipOnElement(registerVal1, registerVal5, arg0)
				UpdateElementDataSource(registerVal1, "actionsListPC")
			end
		end
		return nil
	end

	registerVal6:registerEventHandler("list_item_gain_focus", __FUNC_4A28_)
	local function __FUNC_4CEC_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_RTRIG)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_LB)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_RB)
		return registerVal3
	end

	registerVal6:registerEventHandler("gain_focus", __FUNC_4CEC_)
	local function __FUNC_4F31_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_4F31_)
	local function __FUNC_5002_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsBrowseMode(arg2)
		registerVal4 = IsLayerEmpty(registerVal1, arg0, arg2)
		registerVal4 = Emblem_IsLayerGrouped(arg0, arg2)
		registerVal4 = IsRepeatButtonPress(arg3)
		registerVal4 = Paintjobs_DisableGroupsFeature()
		if registerVal4 and not registerVal4 and not registerVal4 and not registerVal4 and not registerVal4 then
			EmblemEditor_LinkUnlinkLayers(registerVal1, arg0, arg2)
			UpdateElementState(registerVal1, "browseControlBar", arg2)
			UpdateElementDataSource(registerVal1, "actionsListPC")
			return true
		end
	end

	local function __FUNC_51FD_(arg0, arg1, arg2)
		local registerVal4 = IsBrowseMode(arg2)
		registerVal4 = IsLayerEmpty(registerVal1, arg0, arg2)
		registerVal4 = Emblem_IsLayerGrouped(arg0, arg2)
		registerVal4 = IsRepeatButtonPress(nil)
		registerVal4 = Paintjobs_DisableGroupsFeature()
		if registerVal4 and not registerVal4 and not registerVal4 and not registerVal4 and not registerVal4 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RTRIG, "")
			return false
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal6, arg0, Enum.LUIButton.LUI_KEY_RTRIG, nil, __FUNC_5002_, __FUNC_51FD_, false)
	local function __FUNC_53F1_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsBrowseMode(arg2)
		registerVal4 = IsLayerEmpty(registerVal1, arg0, arg2)
		registerVal4 = Emblem_IsLayerGrouped(arg0, arg2)
		registerVal4 = Paintjobs_DisableGroupsFeature()
		if registerVal4 and not registerVal4 and registerVal4 and not registerVal4 then
			EmblemEditor_SaveSelectedGroup(registerVal1, arg0, arg2, event)
			UpdateElementState(registerVal1, "browseControlBar", arg2)
			UpdateElementDataSource(registerVal1, "actionsListPC")
			return true
		end
	end

	local function __FUNC_55D0_(arg0, arg1, arg2)
		local registerVal3 = IsBrowseMode(arg2)
		registerVal3 = IsLayerEmpty(registerVal1, arg0, arg2)
		registerVal3 = Emblem_IsLayerGrouped(arg0, arg2)
		registerVal3 = Paintjobs_DisableGroupsFeature()
		if registerVal3 and not registerVal3 and registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LB, "")
			return false
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal6, arg0, Enum.LUIButton.LUI_KEY_LB, nil, __FUNC_53F1_, __FUNC_55D0_, false)
	local function __FUNC_578D_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsBrowseMode(arg2)
		registerVal4 = IsLayerEmpty(registerVal1, arg0, arg2)
		registerVal4 = Emblems_IsLayerLinked(arg0, arg2)
		registerVal4 = IsRepeatButtonPress(arg3)
		registerVal4 = Paintjobs_DisableGroupsFeature()
		if registerVal4 and not registerVal4 and registerVal4 and not registerVal4 and not registerVal4 then
			EmblemEditor_GroupUngroupLayers(registerVal1, arg0, arg2)
			UpdateElementState(registerVal1, "browseControlBar", arg2)
			UpdateElementDataSource(registerVal1, "actionsListPC")
			return true
		end
	end

	local function __FUNC_598B_(arg0, arg1, arg2)
		local registerVal4 = IsBrowseMode(arg2)
		registerVal4 = IsLayerEmpty(registerVal1, arg0, arg2)
		registerVal4 = Emblems_IsLayerLinked(arg0, arg2)
		registerVal4 = IsRepeatButtonPress(nil)
		registerVal4 = Paintjobs_DisableGroupsFeature()
		if registerVal4 and not registerVal4 and registerVal4 and not registerVal4 and not registerVal4 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RB, "")
			return false
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal6, arg0, Enum.LUIButton.LUI_KEY_RB, nil, __FUNC_578D_, __FUNC_598B_, false)
	registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "EditMode_Selected"
	local function __FUNC_5B7A_(arg0, arg1, arg2)
		local registerVal3 = IsParentListInFocus(arg1)
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_5B7A_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal1:addElement(registerVal6)
	registerVal1.layerCarousel = registerVal6
	local registerVal7 = CoD.EmblemDrawWidgetNew.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 390.000000, 890.000000)
	registerVal7:setTopBottom(true, false, 130.000000, 441.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.emblemDrawWidget = registerVal7
	registerVal8 = CoD.EmblemPulseLayerWidget.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 400.000000, 880.000000)
	registerVal8:setTopBottom(true, false, 140.000000, 431.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.emblemHiddenPulseLayer = registerVal8
	registerVal9 = CoD.EmblemEditorLayerProperties.new(registerVal1, arg0)
	registerVal9:setLeftRight(false, true, -364.000000, -195.000000)
	registerVal9:setTopBottom(true, false, 130.000000, 321.000000)
	local function __FUNC_5BD5_(arg1)
		registerVal9:setModel(arg1, arg0)
	end

	registerVal9:subscribeToGlobalModel(arg0, "EmblemSelectedLayerProperties", nil, __FUNC_5BD5_)
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "EditModeLayerProperties"
	local function __FUNC_5C26_(arg1, arg2, arg3)
		return IsModelValueEqualToEnum(arg0, "Emblem.EmblemProperties.editorMode", Enum.CustomizationEditorMode.CUSTOMIZATION_EDITOR_MODE_EDIT)
	end

	registerVal13.condition = __FUNC_5C26_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal13 = Engine.GetModelForController(arg0)
	registerVal12 = Engine.GetModel(registerVal13, "Emblem.EmblemProperties.editorMode")
	local function __FUNC_5D24_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "Emblem.EmblemProperties.editorMode"
		registerVal1:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_5D24_)
	registerVal1:addElement(registerVal9)
	registerVal1.layerProperties = registerVal9
	registerVal10 = CoD.EmblemIconClipboard.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 916.000000, 1073.000000)
	registerVal10:setTopBottom(true, false, 231.000000, 391.000000)
	registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "Invisible"
	local function __FUNC_5E5C_(arg1, arg2, arg3)
		return Emblem_HideClipboard(arg2, arg0)
	end

	registerVal14.condition = __FUNC_5E5C_
	local registerVal15 = {}
	registerVal15.stateName = "PasteState"
	local function __FUNC_5EBA_(arg1, arg2, arg3)
		return Emblem_CanPastFromClipboard(arg2, arg0)
	end

	registerVal15.condition = __FUNC_5EBA_
	local registerVal16 = {}
	registerVal16.stateName = "AllGroupsUsed"
	local function __FUNC_5F1D_(arg1, arg2, arg3)
		local registerVal3 = IsGroupSlotAvailable(arg0)
		if not registerVal3 then
			registerVal3 = IsModelValueEqualToEnum(arg0, "Emblem.EmblemProperties.editorMode", Enum.CustomizationEditorMode.CUSTOMIZATION_EDITOR_MODE_BROWSE)
			if registerVal3 then
				registerVal3 = IsClipboardEmblemGrouped(arg0)
			else
			end
		end
		return true
	end

	registerVal16.condition = __FUNC_5F1D_
	registerVal13 = {registerVal14, registerVal15, registerVal16}
	registerVal10:mergeStateConditions(registerVal13)
	registerVal14 = Engine.GetModelForController(arg0)
	registerVal13 = Engine.GetModel(registerVal14, "Emblem.EmblemProperties.editorMode")
	local function __FUNC_6092_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "Emblem.EmblemProperties.editorMode"
		registerVal1:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:subscribeToModel(registerVal13, __FUNC_6092_)
	registerVal14 = Engine.GetModelForController(arg0)
	registerVal13 = Engine.GetModel(registerVal14, "Emblem.EmblemProperties.groupsUsed")
	local function __FUNC_61C8_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "Emblem.EmblemProperties.groupsUsed"
		registerVal1:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:subscribeToModel(registerVal13, __FUNC_61C8_)
	registerVal1:addElement(registerVal10)
	registerVal1.clipboard = registerVal10
	local registerVal11 = CoD.PaintshopChoosePaintSide.new(registerVal1, arg0)
	registerVal11:setLeftRight(false, true, -383.330000, -133.330000)
	registerVal11:setTopBottom(true, false, 114.000000, 164.000000)
	registerVal11:setAlpha(0.000000)
	local function __FUNC_6300_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.PaintshopChooseSide.text:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal11:subscribeToGlobalModel(arg0, "Customization", "view_string_ref", __FUNC_6300_)
	registerVal14 = {}
	registerVal15 = {}
	registerVal15.stateName = "BrowseModeControlsState_PC"
	local function __FUNC_63FD_(arg1, arg2, arg3)
		local registerVal3 = IsPaintshop(arg0)
		if registerVal3 then
			registerVal3 = IsModelValueEqualToEnum(arg0, "Emblem.EmblemProperties.editorMode", Enum.CustomizationEditorMode.CUSTOMIZATION_EDITOR_MODE_EDIT)
			if not registerVal3 then
				registerVal3 = IsGamepad(arg0)
			else
			end
		end
		return true
	end

	registerVal15.condition = __FUNC_63FD_
	registerVal16 = {}
	registerVal16.stateName = "BrowseModeControlsState"
	local function __FUNC_655C_(arg1, arg2, arg3)
		local registerVal3 = IsPaintshop(arg0)
		if registerVal3 then
			registerVal3 = IsModelValueEqualToEnum(arg0, "Emblem.EmblemProperties.editorMode", Enum.CustomizationEditorMode.CUSTOMIZATION_EDITOR_MODE_EDIT)
		end
		return (not registerVal3)
	end

	registerVal16.condition = __FUNC_655C_
	registerVal14 = {registerVal15, registerVal16}
	registerVal11:mergeStateConditions(registerVal14)
	registerVal15 = Engine.GetModelForController(arg0)
	registerVal14 = Engine.GetModel(registerVal15, "Emblem.EmblemProperties.editorMode")
	local function __FUNC_6689_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "Emblem.EmblemProperties.editorMode"
		registerVal1:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:subscribeToModel(registerVal14, __FUNC_6689_)
	if registerVal11.m_eventHandlers.input_source_changed then
		local function __FUNC_67C0_(arg0, arg1)
			if not arg1.menu then
			end
			arg1.menu = registerVal1
			arg0:updateState(arg1)
			return registerVal11.m_eventHandlers.input_source_changed(arg0, arg1)
		end

		registerVal11:registerEventHandler("input_source_changed", __FUNC_67C0_)
	else
		registerVal11:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal15 = Engine.GetModelForController(arg0)
	registerVal14 = Engine.GetModel(registerVal15, "LastInput")
	local function __FUNC_684B_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		registerVal1:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:subscribeToModel(registerVal14, __FUNC_684B_)
	registerVal1:addElement(registerVal11)
	registerVal1.choosePaintSide = registerVal11
	registerVal12 = CoD.PaintshopControlsFull.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 110.000000, 360.000000)
	registerVal12:setTopBottom(true, false, 130.000000, 474.000000)
	registerVal15 = {}
	registerVal16 = {}
	registerVal16.stateName = "BrowseModeControlsState"
	local function __FUNC_6967_(arg1, arg2, arg3)
		local registerVal3 = IsModelValueEqualToEnum(arg0, "Emblem.EmblemProperties.editorMode", Enum.CustomizationEditorMode.CUSTOMIZATION_EDITOR_MODE_EDIT)
		return (not registerVal3)
	end

	registerVal16.condition = __FUNC_6967_
	local registerVal17 = {}
	registerVal17.stateName = "FixedScale"
	local function __FUNC_6A68_(arg1, arg2, arg3)
		local registerVal3 = IsModelValueEqualToEnum(arg0, "Emblem.EmblemProperties.scaleMode", Enum.CustomizationScaleType.CUSTOMIZATION_SCALE_TYPE_FIXED)
		if registerVal3 then
			registerVal3 = IsModelValueEqualToEnum(arg0, "Emblem.EmblemProperties.editorMode", Enum.CustomizationEditorMode.CUSTOMIZATION_EDITOR_MODE_EDIT)
		end
		return registerVal3
	end

	registerVal17.condition = __FUNC_6A68_
	local registerVal18 = {}
	registerVal18.stateName = "FreeScale"
	local function __FUNC_6C0F_(arg1, arg2, arg3)
		local registerVal3 = IsModelValueEqualToEnum(arg0, "Emblem.EmblemProperties.scaleMode", Enum.CustomizationScaleType.CUSTOMIZATION_SCALE_TYPE_FIXED)
		if not registerVal3 then
			registerVal3 = IsModelValueEqualToEnum(arg0, "Emblem.EmblemProperties.editorMode", Enum.CustomizationEditorMode.CUSTOMIZATION_EDITOR_MODE_EDIT)
		else
		end
		return true
	end

	registerVal18.condition = __FUNC_6C0F_
	registerVal15 = {registerVal16, registerVal17, registerVal18}
	registerVal12:mergeStateConditions(registerVal15)
	registerVal16 = Engine.GetModelForController(arg0)
	registerVal15 = Engine.GetModel(registerVal16, "Emblem.EmblemProperties.editorMode")
	local function __FUNC_6DBF_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "Emblem.EmblemProperties.editorMode"
		registerVal1:updateElementState(registerVal12, registerVal4)
	end

	registerVal12:subscribeToModel(registerVal15, __FUNC_6DBF_)
	registerVal16 = Engine.GetModelForController(arg0)
	registerVal15 = Engine.GetModel(registerVal16, "Emblem.EmblemProperties.scaleMode")
	local function __FUNC_6EF4_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "Emblem.EmblemProperties.scaleMode"
		registerVal1:updateElementState(registerVal12, registerVal4)
	end

	registerVal12:subscribeToModel(registerVal15, __FUNC_6EF4_)
	registerVal1:addElement(registerVal12)
	registerVal1.PaintshopControlsFull = registerVal12
	registerVal13 = CoD.CraftEmblemEditMouseInstructions.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 916.000000, 1085.000000)
	registerVal13:setTopBottom(true, false, 331.500000, 411.500000)
	registerVal13:setAlpha(0.000000)
	registerVal16 = {}
	registerVal17 = {}
	registerVal17.stateName = "MaterialScale"
	local function __FUNC_702B_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal17.condition = __FUNC_702B_
	registerVal18 = {}
	registerVal18.stateName = "Hidden"
	local function __FUNC_7075_(arg1, arg2, arg3)
		local registerVal3 = IsModelValueEqualToEnum(arg0, "Emblem.EmblemProperties.editorMode", Enum.CustomizationEditorMode.CUSTOMIZATION_EDITOR_MODE_EDIT)
		return (not registerVal3)
	end

	registerVal18.condition = __FUNC_7075_
	registerVal16 = {registerVal17, registerVal18}
	registerVal13:mergeStateConditions(registerVal16)
	registerVal17 = Engine.GetModelForController(arg0)
	registerVal16 = Engine.GetModel(registerVal17, "Emblem.EmblemProperties.editorMode")
	local function __FUNC_7178_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "Emblem.EmblemProperties.editorMode"
		registerVal1:updateElementState(registerVal13, registerVal4)
	end

	registerVal13:subscribeToModel(registerVal16, __FUNC_7178_)
	registerVal1:addElement(registerVal13)
	registerVal1.mouseInstructions = registerVal13
	registerVal14 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal14:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal14.titleLabel:setText(Engine.Localize("MENU_EMBLEM_EDITOR_CAPS"))
	registerVal14.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_EMBLEM_EDITOR_CAPS"))
	registerVal14.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_emblem"))
	registerVal1:addElement(registerVal14)
	registerVal1.EmblemEditorFrame = registerVal14
	registerVal15 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal15:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal15:setAlpha(0.000000)
	registerVal15.titleLabel:setText(Engine.Localize("MENU_PAINTSHOP_CAPS"))
	registerVal15.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_PAINTSHOP_CAPS"))
	registerVal15.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_paintshop"))
	registerVal1:addElement(registerVal15)
	registerVal1.PaintshopFrame = registerVal15
	registerVal16 = CoD.EmblemBrowseControlsBar.new(registerVal1, arg0)
	registerVal16:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal16:setTopBottom(false, true, -36.000000, 0.000000)
	local function __FUNC_72B0_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal16:registerEventHandler("menu_loaded", __FUNC_72B0_)
	local registerVal19 = {}
	local registerVal20 = {}
	registerVal20.stateName = "BrowseModeLinkedLayer"
	local function __FUNC_7345_(arg1, arg2, arg3)
		return BrowseModeLinkedLayer(registerVal1, arg2, arg0)
	end

	registerVal20.condition = __FUNC_7345_
	local registerVal21 = {}
	registerVal21.stateName = "BrowseModeGroupedLayer"
	local function __FUNC_73A7_(arg1, arg2, arg3)
		return BrowseModeGroupedLayer(registerVal1, arg2, arg0)
	end

	registerVal21.condition = __FUNC_73A7_
	local registerVal22 = {}
	registerVal22.stateName = "BrowseModeOneLayerLinked"
	local function __FUNC_7408_(arg1, arg2, arg3)
		return BrowseModeOneLayerLinked(registerVal1, arg2, arg0)
	end

	registerVal22.condition = __FUNC_7408_
	local registerVal23 = {}
	registerVal23.stateName = "BrowseMode"
	local function __FUNC_746E_(arg1, arg2, arg3)
		return BrowseMode(registerVal1, arg2, arg0)
	end

	registerVal23.condition = __FUNC_746E_
	local registerVal24 = {}
	registerVal24.stateName = "GroupsDisabledMode"
	local function __FUNC_74C4_(arg1, arg2, arg3)
		return GroupsDisabledMode(registerVal1, arg2, arg0)
	end

	registerVal24.condition = __FUNC_74C4_
	registerVal19 = {registerVal20, registerVal21, registerVal22, registerVal23, registerVal24}
	registerVal16:mergeStateConditions(registerVal19)
	registerVal1:addElement(registerVal16)
	registerVal1.browseControlBar = registerVal16
	registerVal17 = CoD.layermofn.new(registerVal1, arg0)
	registerVal17:setLeftRight(true, false, 504.670000, 759.670000)
	registerVal17:setTopBottom(true, false, 609.000000, 664.000000)
	registerVal20 = {}
	registerVal21 = {}
	registerVal21.stateName = "EmptyLayer"
	local function __FUNC_7524_(arg1, arg2, arg3)
		return IsLayerEmpty(registerVal1, arg2, arg0)
	end

	registerVal21.condition = __FUNC_7524_
	registerVal20 = {registerVal21}
	registerVal17:mergeStateConditions(registerVal20)
	registerVal1:addElement(registerVal17)
	registerVal1.layermofn = registerVal17
	registerVal18 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal18:makeFocusable()
	registerVal18:setLeftRight(true, false, 64.000000, 314.000000)
	registerVal18:setTopBottom(true, false, 109.000000, 437.000000)
	registerVal18:setAlpha(0.000000)
	registerVal18:setWidgetType(CoD.CraftActionHeader)
	registerVal18:setVerticalCount(15.000000)
	registerVal18:setDataSource("CraftActionsPC")
	registerVal1:addElement(registerVal18)
	registerVal1.actionsListPC = registerVal18
	registerVal19 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal19:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal19:setTopBottom(true, false, 86.000000, 703.250000)
	registerVal1:addElement(registerVal19)
	registerVal1.FEMenuLeftGraphics = registerVal19
	local function __FUNC_757E_(arg1)
		registerVal8:setModel(arg1, arg0)
	end

	registerVal8:linkToElementModel(registerVal6, nil, false, __FUNC_757E_)
	local function __FUNC_75CE_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal8.emblemHiddenPulseLayer:setupHiddenEmblemLayer(GetEmblemLayerAndGroupIndex(arg0, registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal6, "layerAndGroupIndex", true, __FUNC_75CE_)
	local function __FUNC_76CC_(arg1)
		registerVal16:setModel(arg1, arg0)
	end

	registerVal16:linkToElementModel(registerVal6, nil, false, __FUNC_76CC_)
	local function __FUNC_771E_(arg1)
		registerVal17:setModel(arg1, arg0)
	end

	registerVal17:linkToElementModel(registerVal6, nil, false, __FUNC_771E_)
	local function __FUNC_776E_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal17.layerMOfN:setText(LocalizeLayerMOfN("MENU_EMBLEM_LAYER_M_OF_N", arg0, registerVal1))
		end
	end

	registerVal17:linkToElementModel(registerVal6, "layerNumberString", true, __FUNC_776E_)
	registerVal20 = {}
	registerVal20.up = registerVal7
	registerVal6.navigation = registerVal20
	registerVal20 = {}
	registerVal20.left = registerVal18
	registerVal20.down = registerVal6
	registerVal7.navigation = registerVal20
	registerVal20 = {}
	registerVal20.right = registerVal7
	registerVal20.down = registerVal6
	registerVal18.navigation = registerVal20
	registerVal20 = {}
	registerVal21 = {}
	local function __FUNC_786C_()
		registerVal1:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal1.Background:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.editorBackground:setAlpha(0.750000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.StartMenuBackground0:setAlpha(0.370000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal1.emblemDrawWidget:setLeftRight(true, false, 390.000000, 890.000000)
		registerVal1.emblemDrawWidget:setTopBottom(true, false, 130.000000, 441.000000)
		registerVal1.emblemDrawWidget:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.emblemHiddenPulseLayer:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal1.clipboard:setLeftRight(true, false, 1048.000000, 1217.500000)
		registerVal1.clipboard:setTopBottom(true, false, 231.000000, 391.000000)
		registerVal1.clipboard:setAlpha(0.890000)
		registerVal1.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal1.choosePaintSide:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.PaintshopControlsFull:setLeftRight(true, false, 64.000000, 314.000000)
		registerVal1.PaintshopControlsFull:setTopBottom(true, false, 108.500000, 424.500000)
		registerVal1.PaintshopControlsFull:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal1.mouseInstructions:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal16:completeAnimation()
		registerVal1.browseControlBar:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal16, {})
		registerVal18:completeAnimation()
		registerVal1.actionsListPC:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal18, {})
	end

	registerVal21.DefaultClip = __FUNC_786C_
	registerVal20.DefaultState = registerVal21
	registerVal21 = {}
	local function __FUNC_7E8B_()
		registerVal1:setupElementClipCounter(13.000000)
		registerVal3:completeAnimation()
		registerVal1.Background:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.editorBackground:setAlpha(0.750000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.StartMenuBackground0:setAlpha(0.370000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal1.emblemDrawWidget:setLeftRight(true, false, 390.000000, 890.000000)
		registerVal1.emblemDrawWidget:setTopBottom(true, false, 130.000000, 441.000000)
		registerVal1.emblemDrawWidget:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.emblemHiddenPulseLayer:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal1.clipboard:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal1.choosePaintSide:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.PaintshopControlsFull:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal1.mouseInstructions:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.EmblemEditorFrame:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.PaintshopFrame:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal1.browseControlBar:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal16, {})
		registerVal18:completeAnimation()
		registerVal1.actionsListPC:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal18, {})
	end

	registerVal21.DefaultClip = __FUNC_7E8B_
	registerVal20.EmblemEditor_PC = registerVal21
	registerVal21 = {}
	local function __FUNC_8495_()
		registerVal1:setupElementClipCounter(13.000000)
		registerVal3:completeAnimation()
		registerVal1.Background:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.editorBackground:setAlpha(0.750000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.StartMenuBackground0:setAlpha(0.370000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal1.emblemDrawWidget:setLeftRight(true, false, 390.000000, 890.000000)
		registerVal1.emblemDrawWidget:setTopBottom(true, false, 130.000000, 441.000000)
		registerVal1.emblemDrawWidget:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.emblemHiddenPulseLayer:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal1.clipboard:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal1.choosePaintSide:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.PaintshopControlsFull:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal1.mouseInstructions:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.EmblemEditorFrame:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.PaintshopFrame:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal1.browseControlBar:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal16, {})
		registerVal18:completeAnimation()
		registerVal1.actionsListPC:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal18, {})
	end

	registerVal21.DefaultClip = __FUNC_8495_
	registerVal20.EmblemEditor = registerVal21
	registerVal21 = {}
	local function __FUNC_8AA1_()
		registerVal1:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal1.Background:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.editorBackground:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.StartMenuBackground0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal1.emblemDrawWidget:setLeftRight(true, false, 337.170000, 1029.250000)
		registerVal1.emblemDrawWidget:setTopBottom(true, false, 123.500000, 406.500000)
		registerVal1.emblemDrawWidget:setAlpha(0.010000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.emblemHiddenPulseLayer:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.layerProperties:setLeftRight(false, true, -232.000000, -64.000000)
		registerVal1.layerProperties:setTopBottom(true, false, 140.000000, 329.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.clipboard:setLeftRight(true, false, 1048.000000, 1216.000000)
		registerVal1.clipboard:setTopBottom(true, false, 231.000000, 391.000000)
		registerVal1.clipboard:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal1.choosePaintSide:setLeftRight(false, true, -232.000000, -64.000000)
		registerVal1.choosePaintSide:setTopBottom(true, false, 111.000000, 138.000000)
		registerVal1.choosePaintSide:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.PaintshopControlsFull:setLeftRight(true, false, 64.000000, 314.000000)
		registerVal1.PaintshopControlsFull:setTopBottom(true, false, 109.000000, 452.500000)
		registerVal1.PaintshopControlsFull:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal1.mouseInstructions:setLeftRight(true, false, 1047.000000, 1216.000000)
		registerVal1.mouseInstructions:setTopBottom(true, false, 337.500000, 417.500000)
		registerVal1.mouseInstructions:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.EmblemEditorFrame:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.PaintshopFrame:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal1.browseControlBar:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal16, {})
		registerVal18:completeAnimation()
		registerVal1.actionsListPC:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal18, {})
	end

	registerVal21.DefaultClip = __FUNC_8AA1_
	registerVal20.Paintshop_PC = registerVal21
	registerVal21 = {}
	local function __FUNC_92CE_()
		registerVal1:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal1.Background:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.editorBackground:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.StartMenuBackground0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal1.emblemDrawWidget:setLeftRight(true, false, 337.170000, 1029.250000)
		registerVal1.emblemDrawWidget:setTopBottom(true, false, 123.500000, 406.500000)
		registerVal1.emblemDrawWidget:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.emblemHiddenPulseLayer:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.layerProperties:setLeftRight(false, true, -232.000000, -64.000000)
		registerVal1.layerProperties:setTopBottom(true, false, 140.000000, 329.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.clipboard:setLeftRight(true, false, 1048.000000, 1216.000000)
		registerVal1.clipboard:setTopBottom(true, false, 231.000000, 391.000000)
		registerVal1.clipboard:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal1.choosePaintSide:setLeftRight(false, true, -232.000000, -64.000000)
		registerVal1.choosePaintSide:setTopBottom(true, false, 111.000000, 138.000000)
		registerVal1.choosePaintSide:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.PaintshopControlsFull:setLeftRight(true, false, 64.000000, 314.000000)
		registerVal1.PaintshopControlsFull:setTopBottom(true, false, 109.000000, 452.500000)
		registerVal1.PaintshopControlsFull:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal1.mouseInstructions:setLeftRight(true, false, 1047.000000, 1216.000000)
		registerVal1.mouseInstructions:setTopBottom(true, false, 337.500000, 417.500000)
		registerVal1.mouseInstructions:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.EmblemEditorFrame:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.PaintshopFrame:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal1.browseControlBar:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal16, {})
		registerVal18:completeAnimation()
		registerVal1.actionsListPC:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal18, {})
	end

	registerVal21.DefaultClip = __FUNC_92CE_
	registerVal20.Paintshop = registerVal21
	registerVal1.clipsPerState = registerVal20
	registerVal22 = {}
	registerVal23 = {}
	registerVal23.stateName = "EmblemEditor_PC"
	local function __FUNC_9AF5_(arg1, arg2, arg3)
		local registerVal3 = IsEmblemEditor(arg0)
		if registerVal3 then
			registerVal3 = IsGamepad(arg0)
			if not registerVal3 then
				registerVal3 = IsPrimaryControllerIndex(arg0)
			else
			end
		end
		return true
	end

	registerVal23.condition = __FUNC_9AF5_
	registerVal24 = {}
	registerVal24.stateName = "EmblemEditor"
	local function __FUNC_9BB1_(arg1, arg2, arg3)
		return IsEmblemEditor(arg0)
	end

	registerVal24.condition = __FUNC_9BB1_
	local registerVal25 = {}
	registerVal25.stateName = "Paintshop_PC"
	local function __FUNC_9C04_(arg1, arg2, arg3)
		local registerVal3 = IsPaintshop(arg0)
		if registerVal3 then
			registerVal3 = IsGamepad(arg0)
			if not registerVal3 then
				registerVal3 = IsPrimaryControllerIndex(arg0)
			else
			end
		end
		return true
	end

	registerVal25.condition = __FUNC_9C04_
	local registerVal26 = {}
	registerVal26.stateName = "Paintshop"
	local function __FUNC_9CBE_(arg1, arg2, arg3)
		return IsPaintshop(arg0)
	end

	registerVal26.condition = __FUNC_9CBE_
	registerVal22 = {registerVal23, registerVal24, registerVal25, registerVal26}
	registerVal1:mergeStateConditions(registerVal22)
	if registerVal1.m_eventHandlers.input_source_changed then
		local function __FUNC_9D0D_(arg0, arg1)
			if not arg1.menu then
			end
			arg1.menu = registerVal1
			arg0:updateState(arg1)
			return registerVal1.m_eventHandlers.input_source_changed(arg0, arg1)
		end

		registerVal1:registerEventHandler("input_source_changed", __FUNC_9D0D_)
	else
		registerVal1:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal23 = Engine.GetModelForController(arg0)
	registerVal22 = Engine.GetModel(registerVal23, "LastInput")
	local function __FUNC_9D97_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal22, __FUNC_9D97_)
	registerVal23 = Engine.GetModelForController(arg0)
	registerVal22 = Engine.GetModel(registerVal23, "Emblem.EmblemProperties.editorMode")
	local function __FUNC_9EB3_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "Emblem.EmblemProperties.editorMode"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_START)
	end

	registerVal1:subscribeToModel(registerVal22, __FUNC_9EB3_)
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_A081_(arg1, arg2)
		local registerVal3 = IsEmblemEditor(arg0)
		if registerVal3 then
			ShowHeaderIconOnly(registerVal1)
		else
			registerVal3 = IsPaintshop(arg0)
			if registerVal3 then
				ShowHeaderKickerAndIcon(registerVal1)
				SetHeadingKickerTextToSelectedWeapon(arg0)
			end
		end
		if not nil then
			registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_A081_)
	local function __FUNC_A1D5_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsEditMode(arg2)
		if registerVal4 then
			EmblemEditor_ToggleOutline(registerVal1, arg0, arg2)
			PlaySoundSetSound(registerVal1, "toggle_outline")
			return true
		else
			registerVal4 = IsBrowseMode(arg2)
			registerVal4 = IsLayerEmpty(registerVal1, arg0, arg2)
			if registerVal4 and not registerVal4 then
				EmblemEditor_CutLayer(registerVal1, arg0, arg2)
				EmblemEditor_UpdateLayerData(registerVal1, arg2)
				PlaySoundSetSound(registerVal1, "opacity")
				return true
			end
		end
	end

	local function __FUNC_A39D_(arg0, arg1, arg2)
		local registerVal3 = IsEditMode(arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "")
			return false
		else
			registerVal3 = IsBrowseMode(arg2)
			registerVal3 = IsLayerEmpty(registerVal1, arg0, arg2)
			if registerVal3 and not registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "")
				return false
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, nil, __FUNC_A1D5_, __FUNC_A39D_, false)
	local function __FUNC_A56C_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsEditMode(arg2)
		registerVal4 = IsLayerEmpty(registerVal1, arg0, arg2)
		if registerVal4 and not registerVal4 then
			EmblemEditor_EndEdit(registerVal1, arg0, arg2)
			NavigateToMenu(registerVal1, "EmblemIconColorPicker", true, arg2)
			EmblemChooseColor_ClearSelectedLayerMaterial(registerVal1, arg0, arg2)
			return true
		else
			registerVal4 = IsBrowseMode(arg2)
			registerVal4 = IsLayerEmpty(registerVal1, arg0, arg2)
			registerVal4 = Emblem_IsLayerGroupedByLayerIndex(arg0, arg2)
			if registerVal4 and not registerVal4 and not registerVal4 then
				NavigateToMenu(registerVal1, "EmblemChooseIcon", true, arg2)
				return true
			end
		end
	end

	local function __FUNC_A78C_(arg0, arg1, arg2)
		local registerVal3 = IsEditMode(arg2)
		registerVal3 = IsLayerEmpty(registerVal1, arg0, arg2)
		if registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "")
			return false
		else
			registerVal3 = IsBrowseMode(arg2)
			registerVal3 = IsLayerEmpty(registerVal1, arg0, arg2)
			registerVal3 = Emblem_IsLayerGroupedByLayerIndex(arg0, arg2)
			if registerVal3 and not registerVal3 and not registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "")
				return false
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, nil, __FUNC_A56C_, __FUNC_A78C_, false)
	local function __FUNC_A9BD_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsEditMode(arg2)
		if registerVal4 then
			PlaySoundSetSound(registerVal1, "opacity")
			EmblemChooseColor_UpdateBothColorOpacity(registerVal1, arg0, "-0.01", arg2)
			return true
		end
	end

	local function __FUNC_AAAD_(arg0, arg1, arg2)
		local registerVal3 = IsEditMode(arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LB, "")
			return false
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_LB, nil, __FUNC_A9BD_, __FUNC_AAAD_, false)
	local function __FUNC_ABC6_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsEditMode(arg2)
		if registerVal4 then
			PlaySoundSetSound(registerVal1, "opacity")
			EmblemChooseColor_UpdateBothColorOpacity(registerVal1, arg0, "0.01", arg2)
			return true
		end
	end

	local function __FUNC_ACB4_(arg0, arg1, arg2)
		local registerVal3 = IsEditMode(arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RB, "")
			return false
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RB, nil, __FUNC_ABC6_, __FUNC_ACB4_, false)
	local function __FUNC_ADCE_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsEditMode(arg2)
		if registerVal4 then
			EmblemEditor_FlipIcon(registerVal1, arg0, arg2)
			PlaySoundSetSound(registerVal1, "flip_image")
			return true
		else
			registerVal4 = IsBrowseMode(arg2)
			registerVal4 = IsLayerEmpty(registerVal1, arg0, arg2)
			if registerVal4 and not registerVal4 then
				EmblemEditor_CopyLayerToClipboard(registerVal1, arg0, arg2)
				UpdateElementState(registerVal1, "clipboard", arg2)
				PlaySoundSetSound(registerVal1, "scale")
				return true
			end
		end
	end

	local function __FUNC_AFA3_(arg0, arg1, arg2)
		local registerVal3 = IsEditMode(arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_BACK, "")
			return false
		else
			registerVal3 = IsBrowseMode(arg2)
			registerVal3 = IsLayerEmpty(registerVal1, arg0, arg2)
			if registerVal3 and not registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_BACK, "")
				return false
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_BACK, nil, __FUNC_ADCE_, __FUNC_AFA3_, false)
	local function __FUNC_B168_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsEditMode(arg2)
		registerVal4 = IsLayerEmpty(registerVal1, arg0, arg2)
		registerVal4 = IsDemoBuildBeta()
		if registerVal4 and not registerVal4 and not registerVal4 then
			EmblemEditor_EndEdit(registerVal1, arg0, arg2)
			OpenPopup(registerVal1, "PaintshopLayerOptions", arg2, "", "")
			PlaySoundSetSound(registerVal1, "options")
			return true
		else
			registerVal4 = IsBrowseMode(arg2)
			registerVal4 = IsClipboardEmpty(arg2)
			registerVal4 = Emblem_CanPastFromClipboard(arg0, arg2)
			if registerVal4 and not registerVal4 and registerVal4 then
				EmblemEditor_InsertLayer(registerVal1, arg0, arg2)
				EmblemEditor_UpdateLayerData(registerVal1, arg2)
				PlaySoundSetSound(registerVal1, "opacity")
				return true
			end
		end
	end

	local function __FUNC_B413_(arg0, arg1, arg2)
		local registerVal3 = IsEditMode(arg2)
		registerVal3 = IsLayerEmpty(registerVal1, arg0, arg2)
		registerVal3 = IsDemoBuildBeta()
		if registerVal3 and not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_OPTIONS")
			return true
		else
			registerVal3 = IsBrowseMode(arg2)
			registerVal3 = IsClipboardEmpty(arg2)
			registerVal3 = Emblem_CanPastFromClipboard(arg0, arg2)
			if registerVal3 and not registerVal3 and registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "")
				return false
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_START, "O", __FUNC_B168_, __FUNC_B413_, false)
	local function __FUNC_B683_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsBrowseMode(arg2)
		registerVal4 = IsEmblemEditor(arg2)
		registerVal4 = IsEmblemEmpty(arg2)
		if registerVal4 and registerVal4 and not registerVal4 then
			EmblemEditor_OpenSavePopup(registerVal1, arg0, arg2, arg1)
			PlaySoundSetSound(registerVal1, "save_box")
			return true
		else
			registerVal4 = IsEditMode(arg2)
			if registerVal4 then
				EmblemEditor_HandleBackInEditMode(registerVal1, arg0, arg2)
				PlaySoundSetSound(registerVal1, "list_action")
				return true
			else
				registerVal4 = IsBrowseMode(arg2)
				registerVal4 = IsPaintshop(arg2)
				registerVal4 = IsPaintjobAllSidesEmpty(arg2)
				if registerVal4 and registerVal4 and not registerVal4 then
					PaintjobEditor_OpenSavePopup(registerVal1, arg0, arg2, arg1)
					PlaySoundSetSound(registerVal1, "save_box")
					return true
				else
					registerVal4 = IsBrowseMode(arg2)
					if registerVal4 then
						OpenSystemOverlay(registerVal1, arg1, arg2, "CraftNoChangesNotification", nil)
						return true
					end
				end
			end
		end
	end

	local function __FUNC_B98D_(arg0, arg1, arg2)
		local registerVal3 = IsBrowseMode(arg2)
		registerVal3 = IsEmblemEditor(arg2)
		registerVal3 = IsEmblemEmpty(arg2)
		if registerVal3 and registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "PLATFORM_EMBLEM_EDIT_DONE")
			return true
		else
			registerVal3 = IsEditMode(arg2)
			if registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MP_BACK")
				return true
			else
				registerVal3 = IsBrowseMode(arg2)
				registerVal3 = IsPaintshop(arg2)
				registerVal3 = IsPaintjobAllSidesEmpty(arg2)
				if registerVal3 and registerVal3 and not registerVal3 then
					CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MP_BACK")
					return true
				else
					registerVal3 = IsBrowseMode(arg2)
					if registerVal3 then
						CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MP_BACK")
						return true
					end
				end
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_B683_, __FUNC_B98D_, false)
	local function __FUNC_BCD1_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsEditMode(arg2)
		if registerVal4 then
			EmblemEditor_HandleBackInEditMode(registerVal1, arg0, arg2)
			return true
		else
			registerVal4 = IsLayerEmpty(registerVal1, arg0, arg2)
			if not registerVal4 then
				EmblemEditor_EditSelectedLayer(registerVal1, arg0, arg2)
				UpdateElementState(registerVal1, "browseControlBar", arg2)
				local registerVal6 = {}
				registerVal6.elementName = "emblemHiddenPulseLayer"
				registerVal6.clipName = "DefaultClip"
				PlayClipOnElement(registerVal1, registerVal6, arg2)
				return true
			else
				registerVal4 = IsLayerEmpty(registerVal1, arg0, arg2)
				if registerVal4 then
					NavigateToMenu(registerVal1, "EmblemChooseIcon", true, arg2)
					return true
				end
			end
		end
	end

	local function __FUNC_BF34_(arg0, arg1, arg2)
		local registerVal3 = IsEditMode(arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_EMBLEM_APPLY_CHANGES")
			return true
		else
			registerVal3 = IsLayerEmpty(registerVal1, arg0, arg2)
			if not registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_EMBLEM_APPLY_CHANGES")
				return true
			else
				registerVal3 = IsLayerEmpty(registerVal1, arg0, arg2)
				if registerVal3 then
					CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_EMBLEM_APPLY_CHANGES")
					return true
				end
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_BCD1_, __FUNC_BF34_, false)
	local function __FUNC_C15E_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsEditMode(arg2)
		if registerVal4 then
			EmblemEditor_ToggleScaleMode(registerVal1, arg0, arg2)
			return true
		end
	end

	local function __FUNC_C1F2_(arg0, arg1, arg2)
		local registerVal3 = IsEditMode(arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "")
			return false
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, nil, __FUNC_C15E_, __FUNC_C1F2_, false)
	local function __FUNC_C316_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsBrowseMode(arg2)
		registerVal4 = IsLayerEmpty(registerVal1, arg0, arg2)
		registerVal4 = IsDpadButton(arg3)
		registerVal4 = Emblem_IsAnyLayerEmpty(arg2)
		if registerVal4 and not registerVal4 and registerVal4 and registerVal4 then
			EmblemEditor_InsertDecalPressed(registerVal1, arg0, arg2)
			NavigateToMenu(registerVal1, "EmblemChooseIcon", true, arg2)
			return true
		end
	end

	local function __FUNC_C489_(arg0, arg1, arg2)
		local registerVal4 = IsBrowseMode(arg2)
		registerVal4 = IsLayerEmpty(registerVal1, arg0, arg2)
		registerVal4 = IsDpadButton(nil)
		registerVal4 = Emblem_IsAnyLayerEmpty(arg2)
		if registerVal4 and not registerVal4 and registerVal4 and registerVal4 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_DOWN, "")
			return false
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_DOWN, nil, __FUNC_C316_, __FUNC_C489_, false)
	local function __FUNC_C63A_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsEditMode(arg2)
		registerVal4 = IsLayerEmpty(registerVal1, arg0, arg2)
		registerVal4 = IsDpadButton(arg3)
		if registerVal4 and not registerVal4 and registerVal4 then
			EmblemEditor_EndEdit(registerVal1, arg0, arg2)
			NavigateToMenu(registerVal1, "EmblemEditorMaterialPicker", true, arg2)
			return true
		end
	end

	local function __FUNC_C776_(arg0, arg1, arg2)
		local registerVal4 = IsEditMode(arg2)
		registerVal4 = IsLayerEmpty(registerVal1, arg0, arg2)
		registerVal4 = IsDpadButton(nil)
		if registerVal4 and not registerVal4 and registerVal4 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_UP, "")
			return false
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_UP, nil, __FUNC_C63A_, __FUNC_C776_, false)
	local function __FUNC_C8EE_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsEditMode(arg2)
		registerVal4 = IsDpadButton(arg3)
		registerVal4 = IsRepeatButtonPress(arg3)
		if registerVal4 and registerVal4 and not registerVal4 then
			EmblemEditor_MoveLayer(registerVal1, arg0, arg2, "left")
			PlaySoundSetSound(registerVal1, "layer_switch")
			local registerVal6 = {}
			registerVal6.elementName = "emblemHiddenPulseLayer"
			registerVal6.clipName = "DefaultClip"
			PlayClipOnElement(registerVal1, registerVal6, arg2)
			return true
		end
	end

	local function __FUNC_CABD_(arg0, arg1, arg2)
		local registerVal4 = IsEditMode(arg2)
		registerVal4 = IsDpadButton(nil)
		registerVal4 = IsRepeatButtonPress(nil)
		if registerVal4 and registerVal4 and not registerVal4 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LEFT, "")
			return false
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_LEFT, nil, __FUNC_C8EE_, __FUNC_CABD_, false)
	local function __FUNC_CC37_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsEditMode(arg2)
		registerVal4 = IsDpadButton(arg3)
		registerVal4 = IsRepeatButtonPress(arg3)
		if registerVal4 and registerVal4 and not registerVal4 then
			EmblemEditor_MoveLayer(registerVal1, arg0, arg2, "right")
			PlaySoundSetSound(registerVal1, "layer_switch")
			local registerVal6 = {}
			registerVal6.elementName = "emblemHiddenPulseLayer"
			registerVal6.clipName = "DefaultClip"
			PlayClipOnElement(registerVal1, registerVal6, arg2)
			return true
		end
	end

	local function __FUNC_CE06_(arg0, arg1, arg2)
		local registerVal4 = IsEditMode(arg2)
		registerVal4 = IsDpadButton(nil)
		registerVal4 = IsRepeatButtonPress(nil)
		if registerVal4 and registerVal4 and not registerVal4 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RIGHT, "")
			return false
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RIGHT, nil, __FUNC_CC37_, __FUNC_CE06_, false)
	local function __FUNC_CF80_(arg1)
		UploadStats(registerVal1, arg0)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal1, "close", __FUNC_CF80_)
	registerVal6.id = "layerCarousel"
	registerVal7.id = "emblemDrawWidget"
	registerVal14:setModel(registerVal1.buttonModel, arg0)
	registerVal15:setModel(registerVal1.buttonModel, arg0)
	registerVal18.id = "actionsListPC"
	registerVal22 = {}
	registerVal22.name = "menu_loaded"
	registerVal22.controller = arg0
	registerVal1:processEvent(registerVal22)
	registerVal22 = {}
	registerVal22.name = "update_state"
	registerVal22.menu = registerVal1
	registerVal1:processEvent(registerVal22)
	registerVal20 = registerVal1:restoreState()
	if not registerVal20 then
		registerVal22 = {}
		registerVal22.name = "gain_focus"
		registerVal22.controller = arg0
		registerVal1.layerCarousel:processEvent(registerVal22)
	end
	local function __FUNC_CFD1_(arg1)
		arg1.StartMenuBackground0:close()
		arg1.layerCarousel:close()
		arg1.emblemDrawWidget:close()
		arg1.emblemHiddenPulseLayer:close()
		arg1.layerProperties:close()
		arg1.clipboard:close()
		arg1.choosePaintSide:close()
		arg1.PaintshopControlsFull:close()
		arg1.mouseInstructions:close()
		arg1.EmblemEditorFrame:close()
		arg1.PaintshopFrame:close()
		arg1.browseControlBar:close()
		arg1.layermofn:close()
		arg1.actionsListPC:close()
		arg1.FEMenuLeftGraphics:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "EmblemEditor.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_CFD1_)
	if __FUNC_1924_ then
		__FUNC_1924_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.EmblemEditor = __FUNC_1BF8_
