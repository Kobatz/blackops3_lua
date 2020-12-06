-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.TitleDotsWidget")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.Craft.EmblemEditor.EmblemIconNew")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.Craft.EmblemEditor.EmblemDrawWidgetNew")
require("ui.uieditor.widgets.CAC.cac_3dTitleIntermediary")
require("ui.uieditor.widgets.Lobby.Common.FE_TabBar")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.CAC.cac_PrimaryWeaponDescription")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.WeaponNameWidget")
require("ui.uieditor.widgets.PC.Utility.XCamMouseControl")
local function __FUNC_54B_(arg0, arg1)
	if CoD.perController[arg1].selectedLayerIconID ~= CoD.emblem.INVALID_ID then
		local registerVal3, registerVal4, registerVal5 = ipairs(CoD.emblem.DECALTABS)
		for index6,value7 in registerVal3, registerVal4, registerVal5 do
			local registerVal8 = Engine.GetEmblemIconIndexInCategory(arg1, value7.category, CoD.perController[arg1].selectedLayerIconID)
			if registerVal8 ~= CoD.emblem.INVALID_ID then
				return value7.category
			end
		end
	else
		return CoD.emblem.DECALTABS[1.000000].category
	end
end

local function __FUNC_75D_(arg0)
	local registerVal1, registerVal2, registerVal3 = ipairs(CoD.emblem.DECALTABS)
	for index4,value5 in registerVal1, registerVal2, registerVal3 do
		if value5.category == CoD.perController[arg0].selectedDecalCategory then
			return (index4 + 1.000000)
		end
	end
end

local function __FUNC_889_(arg0, arg1)
	local function __FUNC_8DE_(arg0)
		if CoD.perController[arg1].selectedLayerIconID ~= CoD.emblem.INVALID_ID then
			local registerVal3 = __FUNC_54B_(arg0, arg1)
			CoD.perController[arg1].selectedDecalCategory = registerVal3
			local registerVal5 = __FUNC_75D_(arg1)
			local registerVal2 = arg0.tabList.Tabs.grid:getItemAtPosition(1.000000, registerVal5, false)
			arg0.tabList.Tabs.grid:setActiveItem(registerVal2)
			registerVal3 = Engine.EmblemFilterCount(arg1, 0.000000, CoD.perController[arg1].selectedDecalCategory)
			registerVal5 = Engine.GetModelForController(arg1)
			local registerVal4 = Engine.GetModel(registerVal5, "Emblem.EmblemIconList")
			local registerVal7 = {}
			registerVal7.iconID = CoD.perController[arg1].selectedLayerIconID
			registerVal5 = arg0.emblemIconList:findItem(registerVal7, nil, false)
			if registerVal2 and registerVal5 then
				local registerVal8 = {}
				registerVal8.name = "gain_focus"
				registerVal8.controller = arg1
				registerVal8.selectIndex = registerVal5.gridInfoTable.zeroBasedIndex
				arg0.emblemIconList:processEvent(registerVal8)
			end
			return true
		end
		return false
	end

	arg0.restoreState = __FUNC_8DE_
end

if CoD.isPC then
	require("ui.uieditor.widgets.Scrollbars.verticalCounter")
end
local function __FUNC_D2A_(arg0, arg1, arg2)
	arg0.emblemIconList:setVerticalScrollbar(CoD.verticalScrollbar)
end

local function __FUNC_DD6_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_D2A_(arg0, arg1, arg2)
	end
end

local function __FUNC_E47_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("EmblemChooseIcon")
	if __FUNC_889_ then
		__FUNC_889_(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "EmblemChooseIcon.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
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
	local registerVal5 = CoD.TitleDotsWidget.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, 3.000000, 528.340000)
	registerVal5:setTopBottom(true, false, -65.330000, 92.670000)
	registerVal5:setAlpha(0.490000)
	registerVal1:addElement(registerVal5)
	registerVal1.TitleDotsWidget0 = registerVal5
	local registerVal6 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 57.000000, 567.000000)
	registerVal6:setTopBottom(true, false, 78.000000, 679.000000)
	registerVal6:setRGB(0.500000, 0.500000, 0.500000)
	registerVal1:addElement(registerVal6)
	registerVal1.LeftPanel = registerVal6
	local registerVal7 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal7.titleLabel:setText(Engine.Localize("MENU_EMBLEM_CHOOSE_DECAL_CAPS"))
	registerVal7.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_EMBLEM_CHOOSE_DECAL_CAPS"))
	registerVal7.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_emblem"))
	registerVal1:addElement(registerVal7)
	registerVal1.MenuFrame = registerVal7
	local registerVal8 = LUI.UIList.new(registerVal1, arg0, 4.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal8:makeFocusable()
	registerVal8:setLeftRight(true, false, 64.000000, 560.000000)
	registerVal8:setTopBottom(true, false, 140.000000, 636.000000)
	registerVal8:setWidgetType(CoD.EmblemIconNew)
	registerVal8:setHorizontalCount(5.000000)
	registerVal8:setVerticalCount(5.000000)
	registerVal8:setSpacing(4.000000)
	registerVal8:setVerticalCounter(CoD.verticalCounter)
	registerVal8:setDataSource("EmblemIconList")
	local function __FUNC_27B8_(arg1, arg2)
		local registerVal3 = IsElementInState(arg1, "New")
		if registerVal3 then
			EmblemChooseIcon_SelectionChanged(registerVal1, arg1, arg0)
			Emblems_SetIconOld(registerVal1, arg1, arg0)
			UpdateSelfElementState(registerVal1, arg1, arg0)
		else
			EmblemChooseIcon_SelectionChanged(registerVal1, arg1, arg0)
		end
		return nil
	end

	registerVal8:registerEventHandler("list_item_gain_focus", __FUNC_27B8_)
	registerVal1:addElement(registerVal8)
	registerVal1.emblemIconList = registerVal8
	local registerVal9 = CoD.EmblemDrawWidgetNew.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 696.670000, 1154.670000)
	registerVal9:setTopBottom(true, false, 153.000000, 433.500000)
	local function __FUNC_28E6_(arg0, arg1)
		MakeNotFocusable(arg0)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("menu_loaded", __FUNC_28E6_)
	registerVal1:addElement(registerVal9)
	registerVal1.emblemDraw = registerVal9
	local registerVal10 = CoD.cac_3dTitleIntermediary.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, -73.330000, 504.670000)
	registerVal10:setTopBottom(true, false, -6.000000, 140.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_EMBLEM_CHOOSE_DECAL_CAPS"))
	registerVal1:addElement(registerVal10)
	registerVal1.cac3dTitleIntermediary0 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal11:setTopBottom(false, false, -273.000000, -234.000000)
	registerVal11:setRGB(0.000000, 0.000000, 0.000000)
	registerVal11:setAlpha(0.000000)
	registerVal1:addElement(registerVal11)
	registerVal1.CategoryListPanel = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal12:setTopBottom(false, false, -275.000000, -236.000000)
	registerVal12:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal12)
	registerVal1.CategoryListPanel0 = registerVal12
	local registerVal13 = CoD.FE_TabBar.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 0.000000, 2497.000000)
	registerVal13:setTopBottom(true, false, 86.000000, 127.000000)
	registerVal13.Tabs.grid:setHorizontalCount(7.000000)
	registerVal13.Tabs.grid:setDataSource("EmblemDecalTabs")
	local function __FUNC_2977_(arg1, arg2)
		EmblemChooseIcon_TabChanged(registerVal1, arg1, arg0)
		PlaySoundSetSound(registerVal1, "tab_changed")
		return nil
	end

	registerVal13:registerEventHandler("list_active_changed", __FUNC_2977_)
	registerVal1:addElement(registerVal13)
	registerVal1.tabList = registerVal13
	local registerVal14 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal14:setTopBottom(true, false, 86.000000, 703.250000)
	registerVal1:addElement(registerVal14)
	registerVal1.FEMenuLeftGraphics = registerVal14
	local registerVal15 = CoD.cac_PrimaryWeaponDescription.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, false, 696.670000, 1165.670000)
	registerVal15:setTopBottom(true, false, 498.000000, 520.000000)
	registerVal15.weaponDescTextBox:setText(LocalizeIntoString("MPUI_BLACKMARKET_ITEM_CLASSIFIED_DESC", "MPUI_DECAL"))
	local registerVal18 = {}
	local registerVal19 = {}
	registerVal19.stateName = "NotVisible"
	local function __FUNC_2A21_(arg1, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg0, "isBMClassified")
		return (not registerVal3)
	end

	registerVal19.condition = __FUNC_2A21_
	registerVal18 = {registerVal19}
	registerVal15:mergeStateConditions(registerVal18)
	local function __FUNC_2A9E_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		registerVal1:updateElementState(registerVal15, registerVal4)
	end

	registerVal15:linkToElementModel(registerVal15, "isBMClassified", true, __FUNC_2A9E_)
	registerVal1:addElement(registerVal15)
	registerVal1.decalBMDescription = registerVal15
	local registerVal16 = CoD.WeaponNameWidget.new(registerVal1, arg0)
	registerVal16:setLeftRight(true, false, 696.670000, 1154.670000)
	registerVal16:setTopBottom(true, false, 446.500000, 480.500000)
	registerVal1:addElement(registerVal16)
	registerVal1.EmblemName = registerVal16
	registerVal18 = IsPC()
	if registerVal18 then
		registerVal18 = CoD.XCamMouseControl.new(registerVal1, arg0)
	else
		registerVal18 = LUI.UIElement.createFake()
	end
	registerVal18:setLeftRight(true, false, 1314.730000, 1368.730000)
	registerVal18:setTopBottom(true, false, 597.000000, 657.500000)
	registerVal18 = IsPC()
	if registerVal18 then
		registerVal1:addElement(registerVal18)
	end
	registerVal1.XCamMouseControl = registerVal18
	local function __FUNC_2BC0_(arg1)
		registerVal9:setModel(arg1, arg0)
	end

	registerVal9:linkToElementModel(registerVal8, nil, false, __FUNC_2BC0_)
	local function __FUNC_2C12_(arg1)
		registerVal15:setModel(arg1, arg0)
	end

	registerVal15:linkToElementModel(registerVal8, nil, false, __FUNC_2C12_)
	local function __FUNC_2C62_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16.weaponNameLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal16:linkToElementModel(registerVal8, "name", true, __FUNC_2C62_)
	registerVal18 = {}
	registerVal18.right = registerVal9
	registerVal8.navigation = registerVal18
	registerVal18 = {}
	registerVal18.left = registerVal8
	registerVal9.navigation = registerVal18
	registerVal18 = {}
	registerVal19 = {}
	local function __FUNC_2D3F_()
		registerVal1:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal1.Background:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.editorBackground:setAlpha(0.750000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal1.LeftPanel:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal15:completeAnimation()
		registerVal1.decalBMDescription:setLeftRight(true, false, 696.670000, 1165.670000)
		registerVal1.decalBMDescription:setTopBottom(true, false, 489.000000, 511.000000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal1.EmblemName:setLeftRight(true, false, 699.400000, 1155.670000)
		registerVal1.EmblemName:setTopBottom(true, false, 446.500000, 480.500000)
		registerVal1.clipFinished(registerVal16, {})
		registerVal18:completeAnimation()
		registerVal1.XCamMouseControl:setLeftRight(true, false, 1314.730000, 1368.730000)
		registerVal1.XCamMouseControl:setTopBottom(true, false, 597.000000, 657.500000)
		registerVal1.clipFinished(registerVal18, {})
	end

	registerVal19.DefaultClip = __FUNC_2D3F_
	registerVal18.DefaultState = registerVal19
	registerVal19 = {}
	local function __FUNC_3117_()
		registerVal1:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal1.Background:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.editorBackground:setAlpha(0.750000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal1.LeftPanel:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal15:completeAnimation()
		registerVal1.decalBMDescription:setLeftRight(true, false, 696.670000, 1165.670000)
		registerVal1.decalBMDescription:setTopBottom(true, false, 489.000000, 511.000000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal1.EmblemName:setLeftRight(true, false, 699.400000, 1155.670000)
		registerVal1.EmblemName:setTopBottom(true, false, 446.500000, 480.500000)
		registerVal1.clipFinished(registerVal16, {})
		registerVal18:completeAnimation()
		registerVal1.XCamMouseControl:setLeftRight(true, false, 1314.730000, 1368.730000)
		registerVal1.XCamMouseControl:setTopBottom(true, false, 597.000000, 657.500000)
		registerVal1.clipFinished(registerVal18, {})
	end

	registerVal19.DefaultClip = __FUNC_3117_
	registerVal18.EmblemEditor = registerVal19
	registerVal19 = {}
	local function __FUNC_34EF_()
		registerVal1:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal1.Background:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.editorBackground:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal1.LeftPanel:setLeftRight(true, false, 57.000000, 567.000000)
		registerVal1.LeftPanel:setTopBottom(true, false, 78.000000, 679.000000)
		registerVal1.LeftPanel:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal1.emblemDraw:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal15:completeAnimation()
		registerVal1.decalBMDescription:setLeftRight(true, false, 578.500000, 1047.670000)
		registerVal1.decalBMDescription:setTopBottom(true, false, 183.000000, 205.000000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal1.EmblemName:setLeftRight(true, false, 580.000000, 1038.100000)
		registerVal1.EmblemName:setTopBottom(true, false, 143.000000, 177.000000)
		registerVal1.clipFinished(registerVal16, {})
		registerVal18:completeAnimation()
		registerVal1.XCamMouseControl:setLeftRight(true, false, 586.000000, 1201.000000)
		registerVal1.XCamMouseControl:setTopBottom(true, false, 217.000000, 636.000000)
		registerVal1.clipFinished(registerVal18, {})
	end

	registerVal19.DefaultClip = __FUNC_34EF_
	registerVal18.Paintshop = registerVal19
	registerVal1.clipsPerState = registerVal18
	local registerVal20 = {}
	local registerVal21 = {}
	registerVal21.stateName = "EmblemEditor"
	local function __FUNC_397E_(arg1, arg2, arg3)
		return IsEmblemEditor(arg0)
	end

	registerVal21.condition = __FUNC_397E_
	local registerVal22 = {}
	registerVal22.stateName = "Paintshop"
	local function __FUNC_39D0_(arg1, arg2, arg3)
		return IsPaintshop(arg0)
	end

	registerVal22.condition = __FUNC_39D0_
	registerVal20 = {registerVal21, registerVal22}
	registerVal1:mergeStateConditions(registerVal20)
	local function __FUNC_3A21_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isBMClassified"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal1:linkToElementModel(registerVal1, "isBMClassified", true, __FUNC_3A21_)
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_3BE3_(arg1, arg2)
		local registerVal3 = IsEmblemEditor(arg0)
		if registerVal3 then
			ShowHeaderIconOnly(registerVal1)
		else
			registerVal3 = IsPaintshop(arg0)
			if registerVal3 then
				EmblemChooseIcon_SetPreviewDecalCamera(registerVal1, arg1, arg0)
				ShowHeaderKickerAndIcon(registerVal1)
				SetHeadingKickerTextToSelectedWeapon(arg0)
			end
		end
		if not nil then
			registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_3BE3_)
	local function __FUNC_3D79_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsEmblemEditor(arg2)
		if registerVal4 then
			EmblemChooseIcon_SelectionRejected(registerVal1, arg0, arg2)
			GoBack(registerVal1, arg2)
			ClearSavedState(registerVal1, arg2)
			return true
		else
			registerVal4 = IsPaintshop(arg2)
			if registerVal4 then
				EmblemChooseIcon_SelectionRejected(registerVal1, arg0, arg2)
				EmblemChooseIcon_RevertPreviewDecalCamera(registerVal1, arg0, arg2)
				GoBack(registerVal1, arg2)
				ClearSavedState(registerVal1, arg2)
				return true
			end
		end
	end

	local function __FUNC_3F11_(arg0, arg1, arg2)
		local registerVal3 = IsEmblemEditor(arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
			return true
		else
			registerVal3 = IsPaintshop(arg2)
			if registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
				return true
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_3D79_, __FUNC_3F11_, false)
	local function __FUNC_40BA_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsEmblemEditor(arg2)
		registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
		if registerVal4 and not registerVal4 then
			EmblemChooseIcon_SelectionAccepted(registerVal1, arg0, arg2)
			EmblemEditor_SetEditMode(arg2)
			GoBack(registerVal1, arg2)
			ClearSavedState(registerVal1, arg2)
			return true
		else
			registerVal4 = IsPaintshop(arg2)
			registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
			if registerVal4 and not registerVal4 then
				EmblemChooseIcon_SelectionAccepted(registerVal1, arg0, arg2)
				EmblemEditor_SetEditMode(arg2)
				EmblemChooseIcon_RevertPreviewDecalCamera(registerVal1, arg0, arg2)
				GoBack(registerVal1, arg2)
				ClearSavedState(registerVal1, arg2)
				return true
			end
		end
	end

	local function __FUNC_42F9_(arg0, arg1, arg2)
		local registerVal3 = IsEmblemEditor(arg2)
		registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
		if registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "Menu_Select")
			return true
		else
			registerVal3 = IsPaintshop(arg2)
			registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
			if registerVal3 and not registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "Menu_Select")
				return true
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_40BA_, __FUNC_42F9_, false)
	local function __FUNC_4511_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsPaintshop(arg2)
		if registerVal4 then
			return true
		end
	end

	local function __FUNC_456D_(arg0, arg1, arg2)
		local registerVal3 = IsPaintshop(arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "PLATFORM_EMBLEM_ROTATE_LAYER")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, nil, __FUNC_4511_, __FUNC_456D_, false)
	registerVal7:setModel(registerVal1.buttonModel, arg0)
	registerVal8.id = "emblemIconList"
	registerVal9.id = "emblemDraw"
	registerVal20 = {}
	registerVal20.name = "menu_loaded"
	registerVal20.controller = arg0
	registerVal1:processEvent(registerVal20)
	registerVal20 = {}
	registerVal20.name = "update_state"
	registerVal20.menu = registerVal1
	registerVal1:processEvent(registerVal20)
	registerVal18 = registerVal1:restoreState()
	if not registerVal18 then
		registerVal20 = {}
		registerVal20.name = "gain_focus"
		registerVal20.controller = arg0
		registerVal1.emblemIconList:processEvent(registerVal20)
	end
	local function __FUNC_46AF_(arg1)
		arg1.TitleDotsWidget0:close()
		arg1.LeftPanel:close()
		arg1.MenuFrame:close()
		arg1.emblemIconList:close()
		arg1.emblemDraw:close()
		arg1.cac3dTitleIntermediary0:close()
		arg1.tabList:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.decalBMDescription:close()
		arg1.EmblemName:close()
		arg1.XCamMouseControl:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "EmblemChooseIcon.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_46AF_)
	if __FUNC_DD6_ then
		__FUNC_DD6_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.EmblemChooseIcon = __FUNC_E47_
