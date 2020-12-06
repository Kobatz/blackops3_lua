-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Background")
require("ui.uieditor.widgets.Craft.EmblemEditor.EmblemDrawWidgetNew")
require("ui.uieditor.widgets.Craft.EmblemEditor.MaterialPicker.EmblemEditorMaterialSwatch")
require("ui.uieditor.widgets.Craft.EmblemEditor.MaterialPicker.EmblemEditorMaterialInfo")
require("ui.uieditor.widgets.Craft.EmblemEditor.MaterialPicker.EmblemEditorMaterialControls")
require("ui.uieditor.widgets.PC.Craft.CraftEmblemEditMouseInstructions")
require("ui.uieditor.widgets.PC.Craft.CraftActionHeader")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
if CoD.isPC then
	require("ui.uieditor.widgets.PC.Craft.CraftActionButton")
	require("ui.uieditor.widgets.PC.Craft.CraftActionSlider")
	local function __FUNC_647_(arg0)
		return CoD.PCUtil.Craft_GetEmblemEditorMaterialActions(arg0)
	end

	local registerVal1 = DataSourceHelpers.ListSetup("PC.CraftMaterialActionsPC", __FUNC_647_, true)
	DataSources.CraftMaterialActionsPC = registerVal1
	DataSources.CraftMaterialActionsPC.getWidgetTypeForItem = CoD.PCUtil.Craft_WidgetSelectorFunc
end
local function __FUNC_6E3_(arg0, arg1)
	local function __FUNC_9D8_(arg0, arg1)
		return true
	end

	arg0.emblemDrawWidget0:registerEventHandler("button_action", __FUNC_9D8_)
	local function __FUNC_A0C_(arg0, arg1)
		arg0.m_lastX = arg1.x
		arg0.m_lastY = arg1.y
	end

	arg0.emblemDrawWidget0:registerEventHandler("leftmousedown", __FUNC_A0C_)
	local function __FUNC_A90_(arg0, arg2)
		local registerVal2, registerVal3, registerVal4, registerVal5 = arg0:getRect()
		local registerVal8 = CoD.GetEditorProperties(arg1, "materialScaleMode")
		if registerVal8 == Enum.CustomizationScaleType.CUSTOMIZATION_SCALE_TYPE_FIXED then
			local registerVal10 = math.abs(((arg2.y - arg0.m_lastY) / (registerVal5 - registerVal3)))
			local registerVal11 = math.abs(((arg2.x - arg0.m_lastX) / (registerVal4 - registerVal2)))
			if registerVal11 < registerVal10 then
			end
			Engine.ExecNow(arg1, ("emblemUpdateMaterialScaleX " .. ((arg2.y - arg0.m_lastY) / (registerVal5 - registerVal3))))
			Engine.ExecNow(arg1, ("emblemUpdateMaterialScaleY " .. ((arg2.y - arg0.m_lastY) / (registerVal5 - registerVal3))))
		else
			Engine.ExecNow(arg1, ("emblemUpdateMaterialScaleX " .. ((arg2.x - arg0.m_lastX) / (registerVal4 - registerVal2))))
			Engine.ExecNow(arg1, ("emblemUpdateMaterialScaleY " .. ((arg2.y - arg0.m_lastY) / (registerVal5 - registerVal3))))
		end
		arg0.m_lastX = arg2.x
		arg0.m_lastY = arg2.y
	end

	arg0.emblemDrawWidget0:registerEventHandler("mousedrag", __FUNC_A90_)
	local function __FUNC_DAA_(arg1, arg2, arg3, arg4)
		if not arg0.m_disableNavigation then
			Engine.ExecNow(arg3, "emblemUpdateMaterialScaleX 0.02")
			Engine.ExecNow(arg3, "emblemUpdateMaterialScaleY 0.02")
		end
	end

	CoD.Menu.AddButtonCallbackFunction(arg0, arg0, arg1, Enum.LUIButton.LUI_KEY_PCKEY_MWHEELUP, "MWHEELUP", __FUNC_DAA_)
	local function __FUNC_EB4_(arg1, arg2, arg3, arg4)
		if not arg0.m_disableNavigation then
			Engine.ExecNow(arg3, "emblemUpdateMaterialScaleX -0.02")
			Engine.ExecNow(arg3, "emblemUpdateMaterialScaleY -0.02")
		end
	end

	CoD.Menu.AddButtonCallbackFunction(arg0, arg0, arg1, Enum.LUIButton.LUI_KEY_PCKEY_MWHEELDOWN, "MWHEELDOWN", __FUNC_EB4_)
	arg0.actionsListPC:setDataSource("CraftMaterialActionsPC")
	arg0.actionsListPC.navigation = nil
end

local function __FUNC_FC2_(arg0, arg1)
	local function __FUNC_10DE_()
		if arg0.xValue ~= 0.000000 and arg0.yValue ~= 0.000000 and arg0.length ~= 0.000000 then
			if 0.500000 <= arg0.length then
			else
				if 0.200000 <= ((arg0.length - 0.450000) * 2.000000) then
				else
				end
			end
			arg0.xValue = (arg0.xValue * 0.000000)
			arg0.yValue = (arg0.yValue * 0.000000)
		end
	end

	local function __FUNC_120E_()
		if arg0.xValue ~= 0.000000 and arg0.yValue ~= 0.000000 then
			local registerVal4 = CoD.GetEditorProperties(arg1, "materialScaleMode")
			if registerVal4 == Enum.CustomizationScaleType.CUSTOMIZATION_SCALE_TYPE_FIXED then
				local registerVal5 = math.abs((arg0.xValue * 0.050000))
				if 0.001000 < registerVal5 then
					Engine.ExecNow(arg1, ("emblemUpdateMaterialScaleX " .. (arg0.xValue * 0.050000)))
					Engine.ExecNow(arg1, ("emblemUpdateMaterialScaleY " .. (arg0.xValue * 0.050000)))
				else
					registerVal5 = math.abs((arg0.xValue * 0.050000))
					if 0.001000 < registerVal5 then
						Engine.ExecNow(arg1, ("emblemUpdateMaterialScaleX " .. (arg0.xValue * 0.050000)))
					end
					registerVal5 = math.abs((arg0.yValue * 0.050000))
					if 0.001000 < registerVal5 then
						Engine.ExecNow(arg1, ("emblemUpdateMaterialScaleY " .. (arg0.yValue * 0.050000)))
					end
				end
			end
		end
	end

	local function __FUNC_151C_(arg0, arg2)
		local registerVal3 = Engine.GetModelForController(arg1)
		local registerVal2 = Engine.GetModel(registerVal3, "RightStick")
		if registerVal2 then
			registerVal3 = Engine.GetModelValue(Engine.GetModel(registerVal2, "X"))
			arg0.xValue = registerVal3
			registerVal3 = Engine.GetModelValue(Engine.GetModel(registerVal2, "Y"))
			arg0.yValue = registerVal3
			registerVal3 = Engine.GetModelValue(Engine.GetModel(registerVal2, "Length"))
			arg0.length = registerVal3
			__FUNC_10DE_()
			__FUNC_120E_()
		end
	end

	arg0:addElement(LUI.UITimer.new(100.000000, "get_right_stick_values", false, arg0))
	arg0:registerEventHandler("get_right_stick_values", __FUNC_151C_)
end

local function __FUNC_16EE_(arg0, arg1)
	__FUNC_FC2_(arg0, arg1)
	arg0.materialSwatch.navigation = nil
	arg0.emblemDrawWidget0.navigation = nil
	if CoD.isPC then
		__FUNC_6E3_(arg0, arg1)
	end
end

local function __FUNC_17D3_(arg0, arg1)
	if CoD.perController[arg1].selectedLayerMaterialID ~= CoD.emblem.INVALID_ID then
		local registerVal3, registerVal4, registerVal5 = ipairs(CoD.emblem.MaterialCategory)
		for index6,value7 in registerVal3, registerVal4, registerVal5 do
			local registerVal8 = Engine.GetSelectedLayerMaterialIndex(arg1, value7.category, CoD.perController[arg1].selectedLayerMaterialID)
			if registerVal8 ~= CoD.emblem.INVALID_ID then
				return value7.category
			end
		end
	else
		return CoD.emblem.MaterialCategory[1.000000].category
	end
end

local function __FUNC_19F1_(arg0)
	local registerVal1, registerVal2, registerVal3 = ipairs(CoD.emblem.MaterialCategory)
	for index4,value5 in registerVal1, registerVal2, registerVal3 do
		if value5.category == CoD.perController[arg0].selectedMaterialCategory then
			return index4
		end
	end
end

local function __FUNC_1B1E_(arg0, arg1)
	local function __FUNC_1B6E_(arg0)
		if CoD.perController[arg1].selectedLayerMaterialID ~= CoD.emblem.INVALID_ID then
			local registerVal3 = __FUNC_17D3_(arg0, arg1)
			CoD.perController[arg1].selectedMaterialCategory = registerVal3
			if arg0.materialSwatch.tabList.Tabs.grid then
				local registerVal6 = {}
				registerVal6.filter = CoD.perController[arg1].selectedMaterialCategory
				arg0.materialSwatch.tabList.Tabs.grid:findItem(nil, registerVal6, true, nil)
			end
			local registerVal5 = {}
			registerVal5.materialID = CoD.perController[arg1].selectedLayerMaterialID
			registerVal3 = arg0.materialSwatch.materialSwatch:findItem(registerVal5, nil, true)
			if registerVal3 then
				registerVal6 = {}
				registerVal6.name = "gain_focus"
				registerVal6.controller = arg1
				registerVal6.selectIndex = registerVal3.gridInfoTable.zeroBasedIndex
				arg0.materialSwatch.materialSwatch:processEvent(registerVal6)
				return true
			end
		end
		local registerVal4 = {}
		registerVal4.name = "gain_focus"
		registerVal4.controller = arg1
		arg0.materialSwatch.lastSavedColor:processEvent(registerVal4)
		return true
	end

	arg0.restoreState = __FUNC_1B6E_
end

local function __FUNC_1F0E_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("EmblemEditorMaterialPicker")
	if __FUNC_1B1E_ then
		__FUNC_1B1E_(registerVal1, arg0)
	end
	registerVal1.soundSet = "SelectColor"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "EmblemEditorMaterialPicker.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.StartMenu_Background.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 109.000000, -109.000000)
	registerVal3:setAlpha(0.000000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "InGame"
	local function __FUNC_37B8_(arg0, arg1, arg2)
		return IsInGame()
	end

	registerVal7.condition = __FUNC_37B8_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal1:addElement(registerVal3)
	registerVal1.StartMenuBackground0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -638.000000, 642.000000)
	registerVal4:setTopBottom(false, false, -360.000000, 360.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setScale(1.000000)
	registerVal4:setImage(RegisterImage("uie_t7_mp_menu_cac_version6_backdrop720p"))
	registerVal1:addElement(registerVal4)
	registerVal1.Background = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.ScreenBkgd = registerVal5
	registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal6:setTopBottom(false, false, -360.000000, -274.000000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.TitleBacking00 = registerVal6
	registerVal7 = CoD.EmblemDrawWidgetNew.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 390.000000, 890.000000)
	registerVal7:setTopBottom(true, false, 130.000000, 441.000000)
	registerVal7:setAlpha(0.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.emblemDrawWidget0 = registerVal7
	local registerVal8 = CoD.EmblemEditorMaterialSwatch.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 335.000000, 945.000000)
	registerVal8:setTopBottom(true, false, 459.500000, 660.500000)
	registerVal1:addElement(registerVal8)
	registerVal1.materialSwatch = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal9:setTopBottom(false, false, 291.500000, 360.000000)
	registerVal9:setRGB(0.000000, 0.000000, 0.000000)
	registerVal9:setAlpha(0.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.FooterBacking = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal10:setTopBottom(true, false, 80.000000, 88.000000)
	registerVal10:setRGB(0.900000, 0.900000, 0.900000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal10)
	registerVal1.CategoryListLine = registerVal10
	local registerVal11 = CoD.EmblemEditorMaterialInfo.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 916.000000, 1084.000000)
	registerVal11:setTopBottom(true, false, 129.000000, 275.000000)
	local function __FUNC_3802_(arg1)
		registerVal11:setModel(arg1, arg0)
	end

	registerVal11:subscribeToGlobalModel(arg0, "EmblemSelectedLayerProperties", nil, __FUNC_3802_)
	registerVal1:addElement(registerVal11)
	registerVal1.materialInfo = registerVal11
	local registerVal12 = CoD.EmblemEditorMaterialControls.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 110.000000, 360.000000)
	registerVal12:setTopBottom(true, false, 130.000000, 275.000000)
	local registerVal15 = {}
	local registerVal16 = {}
	registerVal16.stateName = "FixedScale"
	local function __FUNC_3852_(arg1, arg2, arg3)
		return IsModelValueEqualToEnum(arg0, "Emblem.EmblemProperties.materialScaleMode", Enum.CustomizationScaleType.CUSTOMIZATION_SCALE_TYPE_FIXED)
	end

	registerVal16.condition = __FUNC_3852_
	local registerVal17 = {}
	registerVal17.stateName = "FreeScale"
	local function __FUNC_3956_(arg1, arg2, arg3)
		return IsModelValueEqualToEnum(arg0, "Emblem.EmblemProperties.materialScaleMode", Enum.CustomizationScaleType.CUSTOMIZATION_SCALE_TYPE_FREE)
	end

	registerVal17.condition = __FUNC_3956_
	registerVal15 = {registerVal16, registerVal17}
	registerVal12:mergeStateConditions(registerVal15)
	registerVal16 = Engine.GetModelForController(arg0)
	registerVal15 = Engine.GetModel(registerVal16, "Emblem.EmblemProperties.materialScaleMode")
	local function __FUNC_3A59_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "Emblem.EmblemProperties.materialScaleMode"
		registerVal1:updateElementState(registerVal12, registerVal4)
	end

	registerVal12:subscribeToModel(registerVal15, __FUNC_3A59_)
	registerVal1:addElement(registerVal12)
	registerVal1.materialControls = registerVal12
	local registerVal13 = CoD.CraftEmblemEditMouseInstructions.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 916.000000, 1084.000000)
	registerVal13:setTopBottom(true, false, 285.500000, 365.500000)
	registerVal13:setAlpha(0.000000)
	registerVal16 = {}
	registerVal17 = {}
	registerVal17.stateName = "MaterialScale"
	local function __FUNC_3B97_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal17.condition = __FUNC_3B97_
	local registerVal18 = {}
	registerVal18.stateName = "Hidden"
	local function __FUNC_3BE0_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal18.condition = __FUNC_3BE0_
	registerVal16 = {registerVal17, registerVal18}
	registerVal13:mergeStateConditions(registerVal16)
	registerVal1:addElement(registerVal13)
	registerVal1.mouseInstructions = registerVal13
	local registerVal14 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal14:makeFocusable()
	registerVal14:setLeftRight(true, false, 64.000000, 314.000000)
	registerVal14:setTopBottom(true, false, 111.000000, 329.000000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setWidgetType(CoD.CraftActionHeader)
	registerVal14:setVerticalCount(10.000000)
	registerVal1:addElement(registerVal14)
	registerVal1.actionsListPC = registerVal14
	registerVal15 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal15:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal15.titleLabel:setText(Engine.Localize("MENU_EDIT_LAYER_MATERIAL"))
	registerVal15.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_EDIT_LAYER_MATERIAL"))
	registerVal15.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_emblem"))
	registerVal1:addElement(registerVal15)
	registerVal1.EmblemEditorFrame = registerVal15
	registerVal16 = {}
	registerVal16.left = registerVal14
	registerVal16.down = registerVal8
	registerVal7.navigation = registerVal16
	registerVal16 = {}
	registerVal16.up = registerVal7
	registerVal8.navigation = registerVal16
	registerVal16 = {}
	registerVal16.right = registerVal7
	registerVal14.navigation = registerVal16
	registerVal16 = {}
	registerVal17 = {}
	local function __FUNC_3C2D_()
		registerVal1:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal1.StartMenuBackground0:setAlpha(0.370000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.Background:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.ScreenBkgd:setAlpha(0.750000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal11:completeAnimation()
		registerVal1.materialInfo:setLeftRight(true, false, 916.000000, 1085.000000)
		registerVal1.materialInfo:setTopBottom(true, false, 129.000000, 275.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal1.mouseInstructions:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.actionsListPC:setLeftRight(true, false, 64.000000, 314.000000)
		registerVal1.actionsListPC:setTopBottom(true, false, 129.000000, 347.000000)
		registerVal1.clipFinished(registerVal14, {})
	end

	registerVal17.DefaultClip = __FUNC_3C2D_
	registerVal16.DefaultState = registerVal17
	registerVal17 = {}
	local function __FUNC_3FC2_()
		registerVal1:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal1.StartMenuBackground0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.Background:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.ScreenBkgd:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal1.emblemDrawWidget0:setAlpha(0.010000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal11:completeAnimation()
		registerVal1.materialInfo:setLeftRight(true, false, 1048.000000, 1216.000000)
		registerVal1.materialInfo:setTopBottom(true, false, 111.000000, 257.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.materialControls:setLeftRight(true, false, 64.000000, 314.000000)
		registerVal1.materialControls:setTopBottom(true, false, 110.000000, 255.000000)
		registerVal1.materialControls:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal1.mouseInstructions:setLeftRight(true, false, 1048.000000, 1216.000000)
		registerVal1.mouseInstructions:setTopBottom(true, false, 265.500000, 345.500000)
		registerVal1.mouseInstructions:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.actionsListPC:setLeftRight(true, false, 64.000000, 314.000000)
		registerVal1.actionsListPC:setTopBottom(true, false, 129.000000, 347.000000)
		registerVal1.actionsListPC:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal14, {})
	end

	registerVal17.DefaultClip = __FUNC_3FC2_
	registerVal16.Paintshop_PC = registerVal17
	registerVal17 = {}
	local function __FUNC_44E3_()
		registerVal1:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal1.StartMenuBackground0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.Background:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.ScreenBkgd:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal1.emblemDrawWidget0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal11:completeAnimation()
		registerVal1.materialInfo:setLeftRight(true, false, 1048.000000, 1216.000000)
		registerVal1.materialInfo:setTopBottom(true, false, 129.000000, 275.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.materialControls:setLeftRight(true, false, 64.000000, 314.000000)
		registerVal1.materialControls:setTopBottom(true, false, 130.000000, 275.000000)
		registerVal1.materialControls:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal1.mouseInstructions:setLeftRight(true, false, 1048.000000, 1216.000000)
		registerVal1.mouseInstructions:setTopBottom(true, false, 265.500000, 345.500000)
		registerVal1.mouseInstructions:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.actionsListPC:setLeftRight(true, false, 64.000000, 314.000000)
		registerVal1.actionsListPC:setTopBottom(true, false, 130.000000, 348.000000)
		registerVal1.actionsListPC:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.EmblemEditorFrame:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_44E3_
	registerVal16.Paintshop = registerVal17
	registerVal17 = {}
	local function __FUNC_4A53_()
		registerVal1:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal1.StartMenuBackground0:setAlpha(0.370000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.Background:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.ScreenBkgd:setAlpha(0.750000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal1.emblemDrawWidget0:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal11:completeAnimation()
		registerVal1.materialInfo:setLeftRight(false, true, -364.000000, -195.000000)
		registerVal1.materialInfo:setTopBottom(true, false, 130.000000, 276.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.materialControls:setLeftRight(true, false, 113.000000, 363.000000)
		registerVal1.materialControls:setTopBottom(true, false, 130.000000, 275.000000)
		registerVal1.materialControls:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal1.mouseInstructions:setLeftRight(true, false, 916.000000, 1084.000000)
		registerVal1.mouseInstructions:setTopBottom(true, false, 280.000000, 360.000000)
		registerVal1.mouseInstructions:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.actionsListPC:setLeftRight(true, false, 64.000000, 314.000000)
		registerVal1.actionsListPC:setTopBottom(true, false, 130.000000, 348.000000)
		registerVal1.actionsListPC:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal14, {})
	end

	registerVal17.DefaultClip = __FUNC_4A53_
	registerVal16.EmblemEditor_PC = registerVal17
	registerVal17 = {}
	local function __FUNC_4F82_()
		registerVal1:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal1.StartMenuBackground0:setAlpha(0.370000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.Background:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.ScreenBkgd:setAlpha(0.750000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal1.emblemDrawWidget0:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal11:completeAnimation()
		registerVal1.materialInfo:setLeftRight(false, true, -364.000000, -195.000000)
		registerVal1.materialInfo:setTopBottom(true, false, 129.000000, 275.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.materialControls:setLeftRight(true, false, 110.000000, 360.000000)
		registerVal1.materialControls:setTopBottom(true, false, 130.000000, 275.000000)
		registerVal1.materialControls:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal1.mouseInstructions:setLeftRight(true, false, 1048.000000, 1216.000000)
		registerVal1.mouseInstructions:setTopBottom(true, false, 264.500000, 344.500000)
		registerVal1.mouseInstructions:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.actionsListPC:setLeftRight(true, false, 64.000000, 314.000000)
		registerVal1.actionsListPC:setTopBottom(true, false, 130.000000, 348.000000)
		registerVal1.actionsListPC:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal14, {})
	end

	registerVal17.DefaultClip = __FUNC_4F82_
	registerVal16.EmblemEditor = registerVal17
	registerVal1.clipsPerState = registerVal16
	registerVal18 = {}
	local registerVal19 = {}
	registerVal19.stateName = "Paintshop_PC"
	local function __FUNC_54B2_(arg1, arg2, arg3)
		local registerVal3 = IsPaintshop(arg0)
		if registerVal3 then
			registerVal3 = IsGamepad(arg0)
		end
		return (not registerVal3)
	end

	registerVal19.condition = __FUNC_54B2_
	local registerVal20 = {}
	registerVal20.stateName = "Paintshop"
	local function __FUNC_552C_(arg1, arg2, arg3)
		return IsPaintshop(arg0)
	end

	registerVal20.condition = __FUNC_552C_
	local registerVal21 = {}
	registerVal21.stateName = "EmblemEditor_PC"
	local function __FUNC_557D_(arg1, arg2, arg3)
		local registerVal3 = IsEmblemEditor(arg0)
		if registerVal3 then
			registerVal3 = IsGamepad(arg0)
		end
		return (not registerVal3)
	end

	registerVal21.condition = __FUNC_557D_
	local registerVal22 = {}
	registerVal22.stateName = "EmblemEditor"
	local function __FUNC_55FB_(arg1, arg2, arg3)
		return IsEmblemEditor(arg0)
	end

	registerVal22.condition = __FUNC_55FB_
	registerVal18 = {registerVal19, registerVal20, registerVal21, registerVal22}
	registerVal1:mergeStateConditions(registerVal18)
	if registerVal1.m_eventHandlers.input_source_changed then
		local function __FUNC_564C_(arg0, arg1)
			if not arg1.menu then
			end
			arg1.menu = registerVal1
			arg0:updateState(arg1)
			return registerVal1.m_eventHandlers.input_source_changed(arg0, arg1)
		end

		registerVal1:registerEventHandler("input_source_changed", __FUNC_564C_)
	else
		registerVal1:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal19 = Engine.GetModelForController(arg0)
	registerVal18 = Engine.GetModel(registerVal19, "LastInput")
	local function __FUNC_56D7_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal18, __FUNC_56D7_)
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_57F3_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_5844_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MP_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_57F3_, __FUNC_5844_, false)
	local function __FUNC_593F_(arg0, arg1, arg2, arg3)
		EmblemChooseMaterial_UpdateMaterialAngleByStep(registerVal1, arg0, "-1", arg2)
		return true
	end

	local function __FUNC_59CC_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LTRIG, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_LTRIG, nil, __FUNC_593F_, __FUNC_59CC_, false)
	local function __FUNC_5AB9_(arg0, arg1, arg2, arg3)
		EmblemChooseMaterial_UpdateMaterialAngleByStep(registerVal1, arg0, "1", arg2)
		return true
	end

	local function __FUNC_5B47_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RTRIG, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RTRIG, nil, __FUNC_5AB9_, __FUNC_5B47_, false)
	local function __FUNC_5C31_(arg0, arg1, arg2, arg3)
		EmblemChooseMaterial_ToggleScaleMode(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_5CA6_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, nil, __FUNC_5C31_, __FUNC_5CA6_, false)
	registerVal7.id = "emblemDrawWidget0"
	registerVal8.id = "materialSwatch"
	registerVal14.id = "actionsListPC"
	registerVal15:setModel(registerVal1.buttonModel, arg0)
	registerVal18 = {}
	registerVal18.name = "menu_loaded"
	registerVal18.controller = arg0
	registerVal1:processEvent(registerVal18)
	registerVal18 = {}
	registerVal18.name = "update_state"
	registerVal18.menu = registerVal1
	registerVal1:processEvent(registerVal18)
	registerVal16 = registerVal1:restoreState()
	if not registerVal16 then
		registerVal18 = {}
		registerVal18.name = "gain_focus"
		registerVal18.controller = arg0
		registerVal1.materialSwatch:processEvent(registerVal18)
	end
	local function __FUNC_5D9A_(arg1)
		arg1.StartMenuBackground0:close()
		arg1.emblemDrawWidget0:close()
		arg1.materialSwatch:close()
		arg1.materialInfo:close()
		arg1.materialControls:close()
		arg1.mouseInstructions:close()
		arg1.actionsListPC:close()
		arg1.EmblemEditorFrame:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "EmblemEditorMaterialPicker.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_5D9A_)
	if __FUNC_16EE_ then
		__FUNC_16EE_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.EmblemEditorMaterialPicker = __FUNC_1F0E_
