-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.BackgroundFrames.CACBackgroundNew")
require("ui.uieditor.widgets.CAC.Customization.CustomizationListButton_NB")
require("ui.uieditor.widgets.CAC.Customization.WeaponCustomizationSelect")
require("ui.uieditor.widgets.CAC.Customization.WeaponPreviewPane")
require("ui.uieditor.widgets.CAC.cac_ElemsSideList")
require("ui.uieditor.widgets.Footer.fe_FooterContainer_NOTLobby")
require("ui.uieditor.widgets.Lobby.Common.FE_TabBar")
require("ui.uieditor.widgets.TabbedWidgets.WeaponGroupsTabWidget")
CoD.WC_Category = {}
local registerVal1 = {}
registerVal1.SELECTING_CATEGORY = 1.000000
registerVal1.SELECTING_ITEM = 2.000000
CoD.WC_Category.Modes = registerVal1
CoD.WC_Category.ModeToOpenIn = CoD.WC_Category.Modes.SELECTING_CATEGORY
CoD.WC_Category.DefaultFrameWidget = CoD.WeaponPreviewPane
CoD.WC_Category.ACV = {}
local function __FUNC_5F5_(arg0, arg1)
	CoD.perController[arg1].customizationType = Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_CAMO
	local registerVal5 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg1].classModel, (CoD.perController[arg1].weaponCategory .. ".itemIndex")))
	CoD.SetCustomization(arg1, registerVal5, "weapon_index")
	local registerVal6 = Paintjobs_IsEnabled(arg0, arg1)
	if registerVal6 then
		CoD.SetCustomization(arg1, Enum.CustomizationType.CUSTOMIZATION_TYPE_PAINTSHOP_VIEW_LEFT, "type")
		registerVal6 = CoD.CraftUtility.Paintjobs.ParseDDL(arg1, Enum.StorageFileType.STORAGE_PAINTJOBS)
	end
	arg0.disableBlur = true
	registerVal6 = Engine.GetModelForController(arg1)
	local registerVal7 = Engine.CreateModel(registerVal6, "StoreRoot")
	Engine.CreateModel(registerVal7, "InventoryItemPurchaseSuccessful")
end

local function __FUNC_ACD_(arg0, arg1, arg2)
	local registerVal7 = DataSources.WeaponOptions.getCurrentFilterItem()
	local registerVal8 = Engine.GetModel(CoD.perController[arg0].classModel, (CoD.perController[arg0].weaponCategory .. registerVal7 .. ".itemIndex"))
	if registerVal8 then
		registerVal8 = Engine.GetModelValue(registerVal8)
		local registerVal11 = {}
		registerVal11.weaponOptionTypeName = registerVal7
		registerVal11.weaponOptionSubIndex = registerVal8
		local registerVal9 = arg1:findItem(registerVal11, nil, false, nil)
	else
		registerVal8 = Engine.GetModel(CoD.perController[arg0].classModel, (CoD.perController[arg0].weaponCategory .. registerVal7 .. "slot.itemIndex"))
		registerVal9 = Engine.GetModel(CoD.perController[arg0].classModel, (CoD.perController[arg0].weaponCategory .. registerVal7 .. "index.itemIndex"))
		local registerVal10 = Engine.GetModelValue(arg2:getModel(arg0, "type"))
		if registerVal8 and registerVal9 then
			registerVal11 = Engine.GetModelValue(registerVal8)
			local registerVal12 = Engine.GetModelValue(registerVal9)
			local registerVal15 = {}
			registerVal15.weaponOptionTypeName = registerVal7
			registerVal15.paintjobSlot = registerVal11
			registerVal15.paintjobIndex = registerVal12
			local registerVal13 = arg1:findItem(registerVal15, nil, false, nil)
		else
			registerVal11 = LUI.startswith(registerVal10, "attachment")
			if registerVal11 then
				local registerVal14 = {}
				registerVal15 = CoD.GetClassItem(arg0, CoD.perController[arg0].classNum, (CoD.perController[arg0].weaponCategory .. CoD.CACUtility[(CoD.perController[arg0].weaponCategory .. "WeaponPrestigeSlot")]))
				registerVal14.weaponOptionSubIndex = registerVal15
				registerVal12 = arg1:findItem(registerVal14)
			else
				registerVal11 = DataSources.WeaponOptions.getCurrentFilterItemNoMode()
				registerVal12 = Engine.GetModel(CoD.perController[arg0].classModel, (CoD.perController[arg0].weaponCategory .. registerVal11 .. ".itemIndex"))
				if registerVal12 then
					registerVal13 = Engine.GetModelValue(registerVal12)
					local registerVal16 = {}
					registerVal16.weaponOptionTypeName = registerVal11
					registerVal16.weaponOptionSubIndex = 0.000000
					registerVal14 = arg1:findItem(registerVal16, nil, false, nil)
				end
			end
		end
	end
	if registerVal14 then
		arg1:setActiveItem(registerVal14)
	end
end

local function __FUNC_1090_(arg0, arg1)
	local registerVal4 = arg0:getOwner()
	arg0.currentMode = arg1.mode
	CoD.WC_Category.ModeToOpenIn = arg1.mode
	arg0.tabChanged = CoD.WC_Category.UpdateListFromTabChanged
	if arg1.mode == CoD.WC_Category.Modes.SELECTING_CATEGORY then
		arg0.categoryTabs.Tabs.m_disableNavigation = true
		CoD.SwapFocusableElements(registerVal4, arg0.frame, arg0.categoryList)
		arg0:setState("DefaultState")
	else
		if arg1.mode == CoD.WC_Category.Modes.SELECTING_ITEM then
			local registerVal5 = Engine.GetModelValue(arg1.element:getModel(registerVal4, "type"))
			CoD.WC_Category.ACV.selectedAttachment = registerVal5
			CoD.perController[registerVal4].WC_hasTabs = false
			local registerVal6 = LUI.startswith(registerVal5, "attachment")
			if registerVal5 ~= CoD.CACUtility.weaponOptionGroupNames[Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_PAINTJOB] and not registerVal6 then
				CoD.perController[registerVal4].WC_hasTabs = true
				arg0.categoryTabs.Tabs.m_disableNavigation = false
				for index6=Enum.WeaponOptionFilter.WEAPONOPTION_FILTER_FIRST, (Enum.WeaponOptionFilter.WEAPONOPTION_FILTER_COUNT - 1.000000), 1.000000 do
					local registerVal13 = {}
					registerVal13.filterEnum = index6
					local registerVal10 = arg0.categoryTabs.Tabs.grid:findItem(nil, registerVal13, false, nil)
					registerVal13 = Engine.GetModelValue(Engine.GetModel(CoD.perController[registerVal4].classModel, (CoD.perController[registerVal4].weaponCategory .. ".itemIndex")))
					local registerVal14 = CoD.CACUtility.GetWeaponOptionTypeForName(registerVal5)
					local registerVal15 = registerVal10:getModel(registerVal4, "breadcrumbCount")
					if registerVal10 and registerVal15 then
						if index6 < Enum.WeaponOptionFilter.WEAPONOPTION_FILTER_MODE_COUNT then
							local registerVal17 = Engine.WeaponOptionNewItemCount(registerVal4, registerVal13, registerVal14, registerVal10.filterEnum)
						else
							registerVal17 = Engine.WeaponOptionNewModeAgnosticItemCount(registerVal4, registerVal13, registerVal14, registerVal10.filterEnum)
						end
						Engine.SetModelValue(registerVal15, registerVal17)
					end
				end
				registerVal6 = Engine.CurrentSessionMode()
				if registerVal6 == Enum.eModes.MODE_INVALID then
				end
				local registerVal9 = CoD.WeaponOptionFilterToString(Enum.eModes.MODE_CAMPAIGN)
				local registerVal11 = {}
				registerVal11.filterEnum = Enum.eModes.MODE_CAMPAIGN
				local registerVal8 = arg0.categoryTabs.Tabs.grid:findItem(nil, registerVal11, false, nil)
				arg0.categoryTabs.Tabs.grid:setActiveItem(registerVal8)
				DataSources.WeaponOptions.setCurrentFilterItem((registerVal5 .. "_" .. registerVal9))
				DataSources.WeaponOptions.setCurrentFilterItemNoMode(registerVal5)
			else
				DataSources.WeaponOptions.setCurrentFilterItem(registerVal5)
			end
			arg0.frame:changeFrameWidget(arg1.element.viewWidget, true)
			arg0.frame.framedWidget.selectionList:updateDataSource()
			__FUNC_ACD_(registerVal4, arg0.frame.framedWidget.selectionList, arg1.element)
			CoD.SwapFocusableElements(registerVal4, arg0.categoryList, arg0.frame)
			local registerVal7 = LUI.startswith(registerVal5, "attachment")
			if registerVal5 ~= CoD.CACUtility.weaponOptionGroupNames[Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_PAINTJOB] and not registerVal7 then
				arg0:setState("Editing")
			else
				arg0:setState("EditingWithoutTabs")
			end
		end
	end
end

local function __FUNC_1DE1_(arg0, arg1)
	CoD.WeaponOptionsTable = nil
	local registerVal4 = CoD.GetWeaponOptionsTable(arg1)
	CoD.WeaponOptionsTable = registerVal4
	CoD.CACUtility.UpdateWeaponOptions(arg1, CoD.perController[arg1].classModel)
	arg0.updateMode = __FUNC_1090_
	local registerVal5 = {}
	registerVal5.mode = CoD.WC_Category.Modes.SELECTING_CATEGORY
	arg0:updateMode(registerVal5)
	arg0:registerEventHandler("update_selection_mode", __FUNC_1090_)
	arg0:playClip("FadeIn")
	arg0.originalOcclusionChange = arg0.m_eventHandlers.occlusion_change
	local function __FUNC_20CA_(arg0, arg2)
		local registerVal2 = CoD.GetCustomization(arg1, "weapon_index")
		CoD.WeaponOptionsTable = {}
		CoD.GetWeaponOptionsTableForCategory(arg1, CoD.WeaponOptionsTable, Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_CAMO, registerVal2, 0.000000, true)
		ForceNotifyControllerModel(arg1, "StoreRoot.InventoryItemPurchaseSuccessful")
		local registerVal6 = {}
		registerVal6.filterEnum = Enum.WeaponOptionFilter.WEAPONOPTION_FILTER_EXTRAS
		local registerVal3 = arg0.categoryTabs.Tabs.grid:findItem(nil, registerVal6, false, nil)
		if not arg2.occluded and arg2.occludedBy and arg2.occludedBy.id == "Menu.PurchaseInventoryItemComplete" and registerVal3 then
			local registerVal4 = CoD.CACUtility.GetWeaponOptionTypeForName("camo")
			local registerVal5 = registerVal3:getModel(arg1, "breadcrumbCount")
			registerVal6 = Engine.WeaponOptionNewModeAgnosticItemCount(arg1, registerVal2, registerVal4, registerVal3.filterEnum)
			Engine.SetModelValue(registerVal5, registerVal6)
		end
		arg0.originalOcclusionChange(arg0, arg2)
	end

	arg0:registerEventHandler("occlusion_change", __FUNC_20CA_)
end

function CoD.WC_Category.UpdateListFromTabChanged(arg0, arg1, arg2)
	if arg0.frame.framedWidget.selectionList and CoD.WC_Category.ACV.selectedAttachment and arg1.filterString then
		DataSources.WeaponOptions.setCurrentFilterItem((CoD.WC_Category.ACV.selectedAttachment .. "_" .. arg1.filterString))
		arg0.frame.framedWidget.selectionList:updateDataSource()
		local registerVal7 = {}
		registerVal7.weaponOptionSubIndex = 0.000000
		arg0.frame.framedWidget.selectionList:findItem(registerVal7, nil, true, nil)
	end
end

local function __FUNC_2845_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("WeaponCustomization")
	if __FUNC_5F5_ then
		__FUNC_5F5_(registerVal1, arg0)
	end
	registerVal1.soundSet = "CAC_EditLoadout"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "WeaponCustomization.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -16.000000, 1300.000000)
	registerVal3:setTopBottom(true, false, -23.000000, 739.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.790000)
	registerVal1:addElement(registerVal3)
	registerVal1.Fade = registerVal3
	local registerVal4 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 64.000000, 310.000000)
	registerVal4:setTopBottom(true, false, 85.000000, 674.000000)
	registerVal4:setRGB(0.670000, 0.670000, 0.670000)
	registerVal1:addElement(registerVal4)
	registerVal1.LeftPanel = registerVal4
	local registerVal5 = CoD.CACBackgroundNew.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5.classAllocation:setAlpha(0.000000)
	registerVal5.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize(GetWeaponCustomizationMenuHeaderName(arg0, "MPUI_PERSONALIZE_CAPS")))
	registerVal1:addElement(registerVal5)
	registerVal1.background = registerVal5
	local registerVal6 = LUI.UIList.new(registerVal1, arg0, 5.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(true, false, 74.500000, 299.500000)
	registerVal6:setTopBottom(true, false, 135.500000, 550.500000)
	registerVal6:setDataSource("WeaponCustomCategory")
	registerVal6:setWidgetType(CoD.CustomizationListButton_NB)
	registerVal6:setVerticalCount(6.000000)
	registerVal6:setSpacing(5.000000)
	local function __FUNC_3B99_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "disabled"
		CoD.Menu.UpdateButtonShownState(registerVal6, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal6:linkToElementModel(registerVal6, "disabled", true, __FUNC_3B99_)
	local function __FUNC_3D55_(arg1, arg2)
		WC_WeaponCustomizationGainFocus(registerVal1, arg1, arg0)
		return nil
	end

	registerVal6:registerEventHandler("list_item_gain_focus", __FUNC_3D55_)
	local function __FUNC_3DC5_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal6:registerEventHandler("gain_focus", __FUNC_3DC5_)
	local function __FUNC_3F57_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_3F57_)
	local function __FUNC_4026_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDisabled(arg0, arg2)
		if not registerVal4 then
			WC_SetSelectingItem(registerVal1, arg0, arg2)
			PlaySoundAlias("uin_select")
			return true
		end
	end

	local function __FUNC_40ED_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsDisabled(arg0, arg2)
		if not registerVal3 then
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal6, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_4026_, __FUNC_40ED_, false)
	registerVal1:addElement(registerVal6)
	registerVal1.categoryList = registerVal6
	local registerVal7 = LUI.UIFrame.new(registerVal1, arg0, 0.000000, 0.000000, false)
	registerVal7:setLeftRight(true, false, 65.500000, 2070.000000)
	registerVal7:setTopBottom(true, false, 125.000000, 630.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:changeFrameWidget(CoD.WeaponCustomizationSelect)
	registerVal1:addElement(registerVal7)
	registerVal1.frame = registerVal7
	local registerVal8 = CoD.WeaponPreviewPane.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 279.000000, 1135.000000)
	registerVal8:setTopBottom(true, false, 116.000000, 621.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.previewPane = registerVal8
	local registerVal9 = CoD.cac_ElemsSideList.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 4.130000, 72.000000)
	registerVal9:setTopBottom(true, false, -12.000000, 658.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.ElemsSideList = registerVal9
	local registerVal10 = CoD.fe_FooterContainer_NOTLobby.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal10:setTopBottom(false, true, -65.000000, 0.000000)
	local function __FUNC_421E_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal10:registerEventHandler("menu_loaded", __FUNC_421E_)
	registerVal1:addElement(registerVal10)
	registerVal1.feFooterContainer = registerVal10
	local registerVal11 = CoD.FE_TabBar.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 0.000000, 2497.000000)
	registerVal11:setTopBottom(true, false, 85.000000, 126.000000)
	registerVal11.Tabs.grid:setDataSource("CACCustomizationTabs")
	registerVal11.Tabs.grid:setWidgetType(CoD.WeaponGroupsTabWidget)
	registerVal11.Tabs.grid:setHorizontalCount(8.000000)
	local function __FUNC_42B1_(arg1, arg2)
		CallCustomElementFunction_Self(registerVal1, "tabChanged", arg1, arg0)
		return nil
	end

	registerVal11:registerEventHandler("list_active_changed", __FUNC_42B1_)
	registerVal1:addElement(registerVal11)
	registerVal1.categoryTabs = registerVal11
	local function __FUNC_4338_(arg1)
		registerVal7:setModel(arg1, arg0)
	end

	registerVal7:linkToElementModel(registerVal6, nil, false, __FUNC_4338_)
	local function __FUNC_438A_(arg1)
		registerVal8:setModel(arg1, arg0)
	end

	registerVal8:linkToElementModel(registerVal6, nil, false, __FUNC_438A_)
	local registerVal12 = {}
	registerVal12.right = registerVal7
	registerVal12.down = registerVal7
	registerVal6.navigation = registerVal12
	registerVal12 = {}
	registerVal12.left = registerVal6
	registerVal12.up = registerVal6
	registerVal7.navigation = registerVal12
	registerVal12 = {}
	local registerVal13 = {}
	local function __FUNC_43DA_()
		registerVal1:setupElementClipCounter(5.000000)
		local function __FUNC_46BD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 64.000000, 310.000000)
			arg0:setTopBottom(true, false, 85.000000, 674.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal1.LeftPanel:setLeftRight(true, false, 64.000000, 310.000000)
		registerVal1.LeftPanel:setTopBottom(true, false, 85.000000, 674.000000)
		registerVal1.LeftPanel:setAlpha(0.000000)
		__FUNC_46BD_(registerVal4, {})
		local function __FUNC_48E1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal1.categoryList:setAlpha(0.000000)
		__FUNC_48E1_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.frame:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		local function __FUNC_4A95_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal1.previewPane:setAlpha(0.000000)
		__FUNC_4A95_(registerVal8, {})
		registerVal11:completeAnimation()
		registerVal1.categoryTabs:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_43DA_
	local function __FUNC_4C49_()
		registerVal1:setupElementClipCounter(1.000000)
		local function __FUNC_4D25_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal1.Fade:setAlpha(1.000000)
		__FUNC_4D25_(registerVal3, {})
	end

	registerVal13.FadeIn = __FUNC_4C49_
	local function __FUNC_4ED9_()
		registerVal1:setupElementClipCounter(5.000000)
		local function __FUNC_5188_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 64.000000, 425.000000)
			arg0:setTopBottom(true, false, 85.000000, 674.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal1.LeftPanel:setLeftRight(true, false, 64.000000, 310.000000)
		registerVal1.LeftPanel:setTopBottom(true, false, 85.000000, 674.000000)
		__FUNC_5188_(registerVal4, {})
		local function __FUNC_538A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal1.categoryList:setAlpha(1.000000)
		__FUNC_538A_(registerVal6, {})
		local function __FUNC_553D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal1.frame:setAlpha(0.000000)
		__FUNC_553D_(registerVal7, {})
		local function __FUNC_56F1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal1.previewPane:setAlpha(1.000000)
		__FUNC_56F1_(registerVal8, {})
		local function __FUNC_58A5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal1.categoryTabs:setAlpha(0.000000)
		__FUNC_58A5_(registerVal11, {})
	end

	registerVal13.Editing = __FUNC_4ED9_
	local function __FUNC_5A59_()
		registerVal1:setupElementClipCounter(5.000000)
		local function __FUNC_5D22_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 64.000000, 425.000000)
			arg0:setTopBottom(true, false, 85.000000, 674.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal1.LeftPanel:setLeftRight(true, false, 64.000000, 310.000000)
		registerVal1.LeftPanel:setTopBottom(true, false, 85.000000, 674.000000)
		__FUNC_5D22_(registerVal4, {})
		local function __FUNC_5F22_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal1.categoryList:setAlpha(1.000000)
		__FUNC_5F22_(registerVal6, {})
		local function __FUNC_60D5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal1.frame:setAlpha(0.000000)
		__FUNC_60D5_(registerVal7, {})
		local function __FUNC_6289_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal1.previewPane:setAlpha(1.000000)
		__FUNC_6289_(registerVal8, {})
		registerVal11:completeAnimation()
		registerVal1.categoryTabs:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal11, {})
	end

	registerVal13.EditingWithoutTabs = __FUNC_5A59_
	registerVal12.DefaultState = registerVal13
	registerVal13 = {}
	local function __FUNC_643D_()
		registerVal1:setupElementClipCounter(0.000000)
	end

	registerVal13.DefaultClip = __FUNC_643D_
	local function __FUNC_649E_()
		registerVal1:setupElementClipCounter(1.000000)
		local function __FUNC_65E0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 64.000000, 310.000000)
			arg0:setTopBottom(true, false, 85.000000, 674.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal1.LeftPanel:setLeftRight(true, false, 64.000000, 425.000000)
		registerVal1.LeftPanel:setTopBottom(true, false, 85.000000, 674.000000)
		__FUNC_65E0_(registerVal4, {})
	end

	registerVal13.DefaultState = __FUNC_649E_
	registerVal12.Editing = registerVal13
	registerVal13 = {}
	local function __FUNC_67E2_()
		registerVal1:setupElementClipCounter(0.000000)
	end

	registerVal13.DefaultClip = __FUNC_67E2_
	local function __FUNC_6842_()
		registerVal1:setupElementClipCounter(2.000000)
		local function __FUNC_6A0B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 64.000000, 310.000000)
			arg0:setTopBottom(true, false, 85.000000, 674.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal1.LeftPanel:setLeftRight(true, false, 64.000000, 425.000000)
		registerVal1.LeftPanel:setTopBottom(true, false, 85.000000, 674.000000)
		__FUNC_6A0B_(registerVal4, {})
		registerVal11:completeAnimation()
		registerVal1.categoryTabs:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultState = __FUNC_6842_
	registerVal12.EditingWithoutTabs = registerVal13
	registerVal1.clipsPerState = registerVal12
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_6C0A_(arg0, arg1)
		PlaySoundSetSound(registerVal1, "navigate")
		ShowHeaderKickerAndIcon(registerVal1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_6C0A_)
	local function __FUNC_6CDF_(arg0, arg1, arg2, arg3)
		PlaySoundSetSound(registerVal1, "cac_enter_wpn_cust_sub")
		return true
	end

	local function __FUNC_6D5B_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_6CDF_, __FUNC_6D5B_, false)
	local function __FUNC_6E56_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsListSelectionMode(arg1, CoD.WC_Category.Modes.SELECTING_CATEGORY)
		if registerVal4 then
			GoBack(registerVal1, arg2)
			ClearSavedState(registerVal1, arg2)
			PlaySoundSetSound(registerVal1, "menu_go_back")
			SendClientScriptNotifyForAdjustedClient(arg2, "cam_customization_closed", "")
			GetCustomClassModel(arg2)
			SetPerControllerTableProperty(arg2, "customizationType", nil)
			return true
		else
			registerVal4 = IsListSelectionMode(arg1, CoD.WC_Category.Modes.SELECTING_ITEM)
			if registerVal4 then
				WC_SetChoosingCategory(registerVal1, arg0, arg2)
				WC_VariantSelectionCancel(registerVal1, arg0, arg2)
				PlaySoundSetSound(registerVal1, "menu_go_back")
				return true
			end
		end
	end

	local function __FUNC_7183_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		local registerVal3 = IsListSelectionMode(arg1, CoD.WC_Category.Modes.SELECTING_CATEGORY)
		if registerVal3 then
			return true
		else
			registerVal3 = IsListSelectionMode(arg1, CoD.WC_Category.Modes.SELECTING_ITEM)
			if registerVal3 then
				return true
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_6E56_, __FUNC_7183_, false)
	registerVal6.id = "categoryList"
	registerVal7.id = "frame"
	registerVal10:setModel(registerVal1.buttonModel, arg0)
	local registerVal14 = {}
	registerVal14.name = "menu_loaded"
	registerVal14.controller = arg0
	registerVal1:processEvent(registerVal14)
	registerVal14 = {}
	registerVal14.name = "update_state"
	registerVal14.menu = registerVal1
	registerVal1:processEvent(registerVal14)
	registerVal12 = registerVal1:restoreState()
	if not registerVal12 then
		registerVal14 = {}
		registerVal14.name = "gain_focus"
		registerVal14.controller = arg0
		registerVal1.categoryList:processEvent(registerVal14)
	end
	local function __FUNC_737E_(arg1)
		arg1.LeftPanel:close()
		arg1.background:close()
		arg1.categoryList:close()
		arg1.previewPane:close()
		arg1.ElemsSideList:close()
		arg1.feFooterContainer:close()
		arg1.categoryTabs:close()
		arg1.frame:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "WeaponCustomization.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_737E_)
	if __FUNC_1DE1_ then
		__FUNC_1DE1_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.WeaponCustomization = __FUNC_2845_
