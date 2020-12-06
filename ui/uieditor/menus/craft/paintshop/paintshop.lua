-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.TitleDotsWidget")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrameNoFooter")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.Craft.Paintshop.PaintshopWeaponListButtonNew")
require("ui.uieditor.widgets.Craft.Paintshop.PaintjobSelector")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.InfoPaneItemName")
require("ui.uieditor.widgets.Footer.fe_FooterContainer_NOTLobby")
require("ui.uieditor.widgets.Craft.Paintshop.PaintshopSlotsFull")
require("ui.uieditor.widgets.Lobby.Common.FE_TabBar")
require("ui.uieditor.widgets.PC.Utility.XCamMouseControl")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.CAC.cac_LockBig")
local function __FUNC_568_(arg0)
	local registerVal2 = Engine.GetModelForController(arg0)
	local registerVal1 = Engine.CreateModel(registerVal2, "Paintshop.Mode")
	registerVal2 = Engine.GetModelValue(registerVal1)
	return registerVal2
end

local function __FUNC_653_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Paintshop.Mode")
	registerVal3 = Engine.SetModelValue(registerVal2, arg1)
	return registerVal3
end

local function __FUNC_73F_(arg0, arg1)
	if CoD.perController[arg1].paintshopWeaponListIndex ~= nil then
	end
	local registerVal3 = arg0.weaponList:getItemAtPosition(CoD.perController[arg1].paintshopWeaponListIndex, 1.000000, false)
	if registerVal3 then
		arg0.weaponList:setActiveItem(registerVal3)
	end
end

local function __FUNC_896_(arg0, arg1)
	local registerVal3 = CoD.GetCustomization(arg1, "category_index")
	if registerVal3 ~= nil then
	end
	local registerVal4 = arg0.tabList.Tabs.grid:getItemAtPosition(1.000000, registerVal3, false)
	if registerVal4 then
		arg0.tabList.Tabs.grid:setActiveItem(registerVal4)
	end
end

local function __FUNC_A05_(arg0)
	arg0.disableDarkenElement = true
	arg0.disableBlur = true
	arg0.disablePopupOpenCloseAnim = true
	CoD.Menu.SetButtonLabel(arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
	local function __FUNC_C6A_(arg0, arg1, arg2)
		__FUNC_653_(arg0.m_ownerController, arg1)
		if arg1 == Enum.PaintshopMode.PAINTSHOPMODE_WEAPONLIST then
			arg0.tabList.Tabs.m_disableNavigation = false
			__FUNC_896_(arg0, arg0.m_ownerController)
			CoD.SwapFocusableElements(arg0.m_ownerController, arg0.paintjobSelector, arg0.weaponList)
			__FUNC_73F_(arg0, arg0.m_ownerController)
			arg0:setState("DefaultState")
		else
			if arg1 == Enum.PaintshopMode.PAINTSHOPMODE_PAINTJOBS then
				arg0.tabList.Tabs.m_disableNavigation = true
				CoD.SwapFocusableElements(arg0.m_ownerController, arg0.weaponList, arg0.paintjobSelector)
				arg0:setState("ShowPaintjobs")
			end
		end
	end

	arg0.updateMode = __FUNC_C6A_
	local registerVal2 = __FUNC_568_(arg0.m_ownerController)
	arg0:updateMode(registerVal2)
	arg0.originalOcclusionChange = arg0.m_eventHandlers.occlusion_change
	local function __FUNC_F01_(arg0, arg1)
		if not arg1.occluded and arg0.occludedBy.menuName == "MediaManager" then
			UpdateDataSource(arg0, arg0.paintjobSelector.paintjobsList, arg0.m_ownerController)
		end
		arg0.originalOcclusionChange(arg0, arg1)
	end

	arg0:registerEventHandler("occlusion_change", __FUNC_F01_)
end

local function __FUNC_105A_(arg0, arg1)
	local registerVal5 = Engine.GetModelForController(arg1)
	local registerVal4 = Engine.CreateModel(registerVal5, "Paintshop.UpdateDataSource")
	local function __FUNC_114A_(arg2)
		local registerVal2 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg1].selectedpaintjobModel, "paintjobIndex"))
		local registerVal3 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg1].selectedpaintjobModel, "paintjobSlot"))
		if CoD.perController[arg1].selectedpaintjobModel and arg0.paintjobSelector ~= nil then
			arg0.paintjobSelector.paintjobsList:updateDataSource(true)
			local registerVal6 = {}
			registerVal6.paintjobIndex = registerVal2
			registerVal6.paintjobSlot = registerVal3
			arg0.paintjobSelector.paintjobsList:findItem(registerVal6, nil, true, nil)
		end
	end

	arg0:subscribeToModel(registerVal4, __FUNC_114A_)
end

local function __FUNC_138B_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Paintshop")
	if __FUNC_105A_ then
		__FUNC_105A_(registerVal1, arg0)
	end
	registerVal1.soundSet = "Paintshop"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Paintshop.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.BlackTransition = registerVal3
	local registerVal4 = CoD.TitleDotsWidget.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 3.000000, 528.340000)
	registerVal4:setTopBottom(true, false, -65.330000, 92.670000)
	registerVal4:setAlpha(0.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.TitleDotsWidget0 = registerVal4
	local registerVal5 = CoD.GenericMenuFrameNoFooter.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5.titleLabel:setText(Engine.Localize("MENU_PAINTSHOP_CAPS"))
	registerVal5.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_PAINTSHOP_CAPS"))
	registerVal5.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_paintshop"))
	registerVal1:addElement(registerVal5)
	registerVal1.MenuFrame = registerVal5
	local registerVal6 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 64.000000, 368.000000)
	registerVal6:setTopBottom(true, false, 91.000000, 718.000000)
	registerVal6:setRGB(0.500000, 0.500000, 0.500000)
	registerVal1:addElement(registerVal6)
	registerVal1.LeftPanel = registerVal6
	local registerVal7 = LUI.UIList.new(registerVal1, arg0, 5.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal7:makeFocusable()
	registerVal7:setLeftRight(true, false, 75.500000, 355.500000)
	registerVal7:setTopBottom(true, false, 137.000000, 622.000000)
	registerVal7:setWidgetType(CoD.PaintshopWeaponListButtonNew)
	registerVal7:setVerticalCount(7.000000)
	registerVal7:setSpacing(5.000000)
	registerVal7:setDataSource("CraftWeaponList")
	local function __FUNC_3105_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isBMClassified"
		CoD.Menu.UpdateButtonShownState(registerVal7, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal7:linkToElementModel(registerVal7, "isBMClassified", true, __FUNC_3105_)
	local function __FUNC_32C7_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isContractClassified"
		CoD.Menu.UpdateButtonShownState(registerVal7, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal7:linkToElementModel(registerVal7, "isContractClassified", true, __FUNC_32C7_)
	local function __FUNC_348D_(arg1, arg2)
		PaintshopWeaponList_GainFocus(registerVal1, arg1, arg0)
		return nil
	end

	registerVal7:registerEventHandler("list_item_gain_focus", __FUNC_348D_)
	local function __FUNC_34FB_(arg1, arg2)
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

	registerVal7:registerEventHandler("gain_focus", __FUNC_34FB_)
	local function __FUNC_368B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_368B_)
	local function __FUNC_375A_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
		registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isContractClassified")
		if not registerVal4 and not registerVal4 then
			PaintshopWeaponList_ChooseWeapon(registerVal1, arg0, arg2)
			PlaySoundAlias("uin_paint_decal_nav")
			return true
		end
	end

	local function __FUNC_3897_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
		registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isContractClassified")
		if not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal7, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_375A_, __FUNC_3897_, false)
	registerVal1:addElement(registerVal7)
	registerVal1.weaponList = registerVal7
	local registerVal8 = CoD.PaintjobSelector.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 75.500000, 411.500000)
	registerVal8:setTopBottom(true, false, 137.000000, 662.000000)
	registerVal8:setAlpha(0.000000)
	local function __FUNC_3A26_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		UpdateElementState(registerVal1, "slotsFull", arg0)
		return registerVal3
	end

	registerVal8:registerEventHandler("gain_focus", __FUNC_3A26_)
	registerVal1:addElement(registerVal8)
	registerVal1.paintjobSelector = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal9:setTopBottom(false, false, -275.000000, -236.000000)
	registerVal9:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.CategoryListPanel = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, -11.000000, 1293.000000)
	registerVal10:setTopBottom(true, false, 80.000000, 88.000000)
	registerVal10:setRGB(0.900000, 0.900000, 0.900000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal10)
	registerVal1.CategoryListLine = registerVal10
	local registerVal11 = CoD.InfoPaneItemName.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 388.000000, 769.500000)
	registerVal11:setTopBottom(true, false, 137.000000, 171.000000)
	local function __FUNC_3B39_(arg1)
		registerVal11:setModel(arg1, arg0)
	end

	registerVal11:linkToElementModel(registerVal1, nil, false, __FUNC_3B39_)
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "Equipped"
	local function __FUNC_3B8A_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal15.condition = __FUNC_3B8A_
	local registerVal16 = {}
	registerVal16.stateName = "Available"
	local function __FUNC_3BD4_(arg0, arg1, arg2)
		return true
	end

	registerVal16.condition = __FUNC_3BD4_
	local registerVal17 = {}
	registerVal17.stateName = "NotEquippable"
	local function __FUNC_3C08_(arg0, arg1, arg2)
		return true
	end

	registerVal17.condition = __FUNC_3C08_
	local registerVal18 = {}
	registerVal18.stateName = "NotAvailable"
	local function __FUNC_3C3C_(arg0, arg1, arg2)
		return true
	end

	registerVal18.condition = __FUNC_3C3C_
	registerVal14 = {registerVal15, registerVal16, registerVal17, registerVal18}
	registerVal11:mergeStateConditions(registerVal14)
	registerVal1:addElement(registerVal11)
	registerVal1.itemName = registerVal11
	local registerVal12 = CoD.fe_FooterContainer_NOTLobby.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, true, 1.000000, -1.000000)
	registerVal12:setTopBottom(false, true, -67.000000, 0.000000)
	local function __FUNC_3C70_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal12:registerEventHandler("menu_loaded", __FUNC_3C70_)
	registerVal1:addElement(registerVal12)
	registerVal1.feFooterContainerNOTLobby = registerVal12
	local registerVal13 = CoD.PaintshopSlotsFull.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 449.500000, 567.500000)
	registerVal13:setTopBottom(true, false, 594.250000, 648.000000)
	registerVal13:setAlpha(0.000000)
	local function __FUNC_3D05_(arg1)
		UpdateSelfElementState(registerVal1, registerVal13, arg0)
	end

	registerVal13:subscribeToGlobalModel(arg0, "PerController", "Paintshop.UpdateDataSource", __FUNC_3D05_)
	registerVal16 = {}
	registerVal17 = {}
	registerVal17.stateName = "SlotsFull"
	local function __FUNC_3D68_(arg1, arg2, arg3)
		return CraftSlotsFullByStorageType(arg0, Enum.StorageFileType.STORAGE_PAINTJOBS)
	end

	registerVal17.condition = __FUNC_3D68_
	registerVal16 = {registerVal17}
	registerVal13:mergeStateConditions(registerVal16)
	registerVal1:addElement(registerVal13)
	registerVal1.slotsFull = registerVal13
	registerVal14 = CoD.FE_TabBar.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, 0.000000, 2496.000000)
	registerVal14:setTopBottom(true, false, 85.000000, 126.000000)
	registerVal14.Tabs.grid:setHorizontalCount(8.000000)
	registerVal14.Tabs.grid:setDataSource("PaintshopWeaponTabType")
	local function __FUNC_3E27_(arg1, arg2)
		PaintshopWeaponList_TabChanged(registerVal1, arg1, arg0)
		return nil
	end

	registerVal14:registerEventHandler("list_active_changed", __FUNC_3E27_)
	registerVal1:addElement(registerVal14)
	registerVal1.tabList = registerVal14
	registerVal15 = LUI.UIText.new()
	registerVal15:setLeftRight(true, false, 388.000000, 644.500000)
	registerVal15:setTopBottom(true, false, 114.500000, 133.500000)
	registerVal15:setRGB(0.970000, 0.320000, 0.050000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setText(LocalizeToUpperString("MENU_PAINTJOB"))
	registerVal15:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal15:setLetterSpacing(1.000000)
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal15)
	registerVal1.categoryName = registerVal15
	registerVal16 = CoD.verticalCounter.new(registerVal1, arg0)
	registerVal16:setLeftRight(true, false, 115.500000, 315.500000)
	registerVal16:setTopBottom(true, false, 626.130000, 651.130000)
	local function __FUNC_3E94_(arg0, arg1)
		SetAsListVerticalCounter(registerVal1, arg0, "weaponList")
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal16:registerEventHandler("menu_loaded", __FUNC_3E94_)
	registerVal1:addElement(registerVal16)
	registerVal1.weaponVerticalCounter = registerVal16
	registerVal17 = CoD.XCamMouseControl.new(registerVal1, arg0)
	registerVal17:setLeftRight(true, false, 394.000000, 1216.000000)
	registerVal17:setTopBottom(true, false, 183.000000, 600.000000)
	registerVal1:addElement(registerVal17)
	registerVal1.xcamMouse = registerVal17
	registerVal18 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal18:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal18:setTopBottom(true, true, 86.000000, -16.750000)
	registerVal1:addElement(registerVal18)
	registerVal1.FEMenuLeftGraphics = registerVal18
	local registerVal19 = CoD.cac_LockBig.new(registerVal1, arg0)
	registerVal19:setLeftRight(false, false, 159.000000, 255.000000)
	registerVal19:setTopBottom(true, false, 14.000000, 684.000000)
	registerVal19:setAlpha(0.000000)
	local registerVal22 = {}
	local registerVal23 = {}
	registerVal23.stateName = "Locked"
	local function __FUNC_3F4B_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal23.condition = __FUNC_3F4B_
	local registerVal24 = {}
	registerVal24.stateName = "NotAvailable"
	local function __FUNC_3F95_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal24.condition = __FUNC_3F95_
	registerVal22 = {registerVal23, registerVal24}
	registerVal19:mergeStateConditions(registerVal22)
	local function __FUNC_3FE1_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		registerVal1:updateElementState(registerVal19, registerVal4)
	end

	registerVal19:linkToElementModel(registerVal19, "isBMClassified", true, __FUNC_3FE1_)
	registerVal1:addElement(registerVal19)
	registerVal1.LockIcon = registerVal19
	local function __FUNC_4104_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.weaponNameWithVariant.itemName.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal7, "name", true, __FUNC_4104_)
	local function __FUNC_4213_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.weaponNameWithVariant.variantName.itemName:setText(registerVal1)
		end
	end

	registerVal11:linkToElementModel(registerVal8.paintjobsList, "paintjobName", true, __FUNC_4213_)
	local function __FUNC_430E_(arg1)
		registerVal19:setModel(arg1, arg0)
	end

	registerVal19:linkToElementModel(registerVal7, nil, false, __FUNC_430E_)
	local registerVal20 = {}
	local registerVal21 = {}
	local function __FUNC_435E_()
		registerVal1:setupElementClipCounter(9.000000)
		registerVal6:completeAnimation()
		registerVal1.LeftPanel:setLeftRight(true, false, 64.000000, 368.000000)
		registerVal1.LeftPanel:setTopBottom(true, false, 91.000000, 680.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.weaponList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.paintjobSelector:setLeftRight(true, false, 76.000000, 415.000000)
		registerVal1.paintjobSelector:setTopBottom(true, false, 137.000000, 662.000000)
		registerVal1.paintjobSelector:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal11:completeAnimation()
		registerVal11.weaponNameWithVariant.variantName:completeAnimation()
		registerVal1.itemName:setLeftRight(true, false, 388.000000, 767.500000)
		registerVal1.itemName:setTopBottom(true, false, 138.000000, 172.000000)
		registerVal1.itemName.weaponNameWithVariant.variantName:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal1.slotsFull:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.tabList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.categoryName:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal1.weaponVerticalCounter:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal16, {})
		registerVal19:completeAnimation()
		registerVal1.LockIcon:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal19, {})
	end

	registerVal21.DefaultClip = __FUNC_435E_
	local function __FUNC_48D9_()
		registerVal1:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal1.BlackTransition:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal3, {})
		local function __FUNC_4EC4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 64.000000, 426.000000)
			arg0:setTopBottom(true, false, 86.000000, 718.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal1.LeftPanel:setLeftRight(true, false, 64.000000, 368.000000)
		registerVal1.LeftPanel:setTopBottom(true, false, 86.000000, 718.000000)
		__FUNC_4EC4_(registerVal6, {})
		local function __FUNC_50C6_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal1.weaponList:setAlpha(1.000000)
		__FUNC_50C6_(registerVal7, {})
		local function __FUNC_5279_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 76.000000, 415.000000)
			arg0:setTopBottom(true, false, 137.000000, 662.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal1.paintjobSelector:setLeftRight(true, false, -314.000000, 0.000000)
		registerVal1.paintjobSelector:setTopBottom(true, false, 137.000000, 662.000000)
		registerVal1.paintjobSelector:setAlpha(0.000000)
		__FUNC_5279_(registerVal8, {})
		local function __FUNC_549D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal1.CategoryListPanel:setAlpha(1.000000)
		__FUNC_549D_(registerVal9, {})
		local function __FUNC_5651_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 449.000000, 827.440000)
			arg0:setTopBottom(true, false, 138.000000, 172.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal1.itemName:setLeftRight(true, false, 388.000000, 769.500000)
		registerVal1.itemName:setTopBottom(true, false, 138.000000, 172.000000)
		__FUNC_5651_(registerVal11, {})
		local function __FUNC_5852_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 449.500000, 567.500000)
			arg0:setTopBottom(true, false, 594.250000, 648.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal1.slotsFull:setLeftRight(true, false, 388.000000, 506.000000)
		registerVal1.slotsFull:setTopBottom(true, false, 595.130000, 648.880000)
		registerVal1.slotsFull:setAlpha(0.000000)
		__FUNC_5852_(registerVal13, {})
		local function __FUNC_5A75_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal1.tabList:setAlpha(1.000000)
		__FUNC_5A75_(registerVal14, {})
		local function __FUNC_5C29_(arg0, arg1)
			local function __FUNC_5DB8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 449.500000, 706.000000)
				arg0:setTopBottom(true, false, 114.500000, 133.500000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_5DB8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 418.750000, 675.250000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5DB8_)
		end

		registerVal15:completeAnimation()
		registerVal1.categoryName:setLeftRight(true, false, 388.000000, 644.500000)
		registerVal1.categoryName:setTopBottom(true, false, 114.500000, 133.500000)
		registerVal1.categoryName:setAlpha(0.000000)
		__FUNC_5C29_(registerVal15, {})
		local function __FUNC_5FDD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal1.weaponVerticalCounter:setAlpha(1.000000)
		__FUNC_5FDD_(registerVal16, {})
	end

	registerVal21.ShowPaintjobs = __FUNC_48D9_
	local function __FUNC_6191_()
		registerVal1:setupElementClipCounter(2.000000)
		local function __FUNC_62E9_(arg0, arg1)
			local function __FUNC_6440_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_6440_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6440_)
		end

		registerVal3:completeAnimation()
		registerVal1.BlackTransition:setAlpha(1.000000)
		__FUNC_62E9_(registerVal3, {})
		registerVal19:completeAnimation()
		registerVal1.LockIcon:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal19, {})
	end

	registerVal21.Intro = __FUNC_6191_
	registerVal20.DefaultState = registerVal21
	registerVal21 = {}
	local function __FUNC_65F5_()
		registerVal1:setupElementClipCounter(10.000000)
		registerVal6:completeAnimation()
		registerVal1.LeftPanel:setLeftRight(true, false, 64.000000, 426.000000)
		registerVal1.LeftPanel:setTopBottom(true, false, 86.000000, 680.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.weaponList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.paintjobSelector:setLeftRight(true, false, 76.000000, 415.000000)
		registerVal1.paintjobSelector:setTopBottom(true, false, 137.000000, 662.000000)
		registerVal1.paintjobSelector:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.CategoryListPanel:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal11.weaponNameWithVariant.variantName:completeAnimation()
		registerVal1.itemName:setLeftRight(true, false, 449.000000, 837.750000)
		registerVal1.itemName:setTopBottom(true, false, 138.000000, 172.000000)
		registerVal1.itemName.weaponNameWithVariant.variantName:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal1.slotsFull:setLeftRight(true, false, 449.500000, 567.500000)
		registerVal1.slotsFull:setTopBottom(true, false, 594.250000, 648.000000)
		registerVal1.slotsFull:setAlpha(1.000000)
		registerVal1.slotsFull:setScale(1.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.tabList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.categoryName:setLeftRight(true, false, 449.500000, 706.000000)
		registerVal1.categoryName:setTopBottom(true, false, 114.500000, 133.500000)
		registerVal1.categoryName:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal1.weaponVerticalCounter:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal16, {})
		registerVal19:completeAnimation()
		registerVal1.LockIcon:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal19, {})
	end

	registerVal21.DefaultClip = __FUNC_65F5_
	local function __FUNC_6CC1_()
		registerVal1:setupElementClipCounter(9.000000)
		local function __FUNC_7243_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 64.000000, 368.000000)
			arg0:setTopBottom(true, false, 86.000000, 718.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal1.LeftPanel:setLeftRight(true, false, 64.000000, 426.000000)
		registerVal1.LeftPanel:setTopBottom(true, false, 86.000000, 718.000000)
		__FUNC_7243_(registerVal6, {})
		local function __FUNC_7442_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal1.weaponList:setAlpha(0.000000)
		__FUNC_7442_(registerVal7, {})
		local function __FUNC_75F5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -314.000000, 0.000000)
			arg0:setTopBottom(true, false, 137.000000, 662.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal1.paintjobSelector:setLeftRight(true, false, 76.000000, 415.000000)
		registerVal1.paintjobSelector:setTopBottom(true, false, 137.000000, 662.000000)
		registerVal1.paintjobSelector:setAlpha(1.000000)
		__FUNC_75F5_(registerVal8, {})
		local function __FUNC_7814_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal1.CategoryListPanel:setAlpha(0.000000)
		__FUNC_7814_(registerVal9, {})
		local function __FUNC_79C9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 388.000000, 669.750000)
			arg0:setTopBottom(true, false, 138.000000, 172.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal1.itemName:setLeftRight(true, false, 449.000000, 830.750000)
		registerVal1.itemName:setTopBottom(true, false, 138.000000, 172.000000)
		__FUNC_79C9_(registerVal11, {})
		local function __FUNC_7BCA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 388.000000, 506.000000)
			arg0:setTopBottom(true, false, 595.130000, 648.880000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal1.slotsFull:setLeftRight(true, false, 449.500000, 567.500000)
		registerVal1.slotsFull:setTopBottom(true, false, 594.250000, 648.000000)
		registerVal1.slotsFull:setAlpha(1.000000)
		__FUNC_7BCA_(registerVal13, {})
		local function __FUNC_7DED_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal1.tabList:setAlpha(0.000000)
		__FUNC_7DED_(registerVal14, {})
		local function __FUNC_7FA1_(arg0, arg1)
			local function __FUNC_8153_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 388.000000, 644.500000)
				arg0:setTopBottom(true, false, 114.500000, 133.500000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_8153_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 418.750000, 675.250000)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8153_)
		end

		registerVal15:completeAnimation()
		registerVal1.categoryName:setLeftRight(true, false, 449.500000, 706.000000)
		registerVal1.categoryName:setTopBottom(true, false, 114.500000, 133.500000)
		registerVal1.categoryName:setAlpha(1.000000)
		__FUNC_7FA1_(registerVal15, {})
		local function __FUNC_8375_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal1.weaponVerticalCounter:setAlpha(0.000000)
		__FUNC_8375_(registerVal16, {})
	end

	registerVal21.DefaultState = __FUNC_6CC1_
	registerVal20.ShowPaintjobs = registerVal21
	registerVal1.clipsPerState = registerVal20
	registerVal23 = Engine.GetModelForController(arg0)
	registerVal22 = Engine.GetModel(registerVal23, "Paintshop.Mode")
	local function __FUNC_8529_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "Paintshop.Mode"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
	end

	registerVal1:subscribeToModel(registerVal22, __FUNC_8529_)
	local function __FUNC_86EC_(arg1, arg2)
		SendClientScriptMenuChangeNotify(arg0, registerVal1, true)
		ShowHeaderIconOnly(registerVal1)
		SetElementStateByElementName(registerVal1, "MenuFrame", arg0, "Update")
		local registerVal5 = {}
		registerVal5.elementName = "MenuFrame"
		registerVal5.clipName = "Intro"
		PlayClipOnElement(registerVal1, registerVal5, arg0)
		PlayClip(registerVal1, "Intro", arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_86EC_)
	local function __FUNC_88B3_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsModelValueEqualToEnum(arg2, "Paintshop.Mode", Enum.PaintshopMode.PAINTSHOPMODE_WEAPONLIST)
		if registerVal4 then
			PaintshopWeaponList_Back(registerVal1, arg0, arg2)
			ClearSavedState(registerVal1, arg2)
			SendClientScriptMenuChangeNotify(arg2, arg1, false)
			GoBack(registerVal1, arg2)
			SendClientScriptNotifyForAdjustedClient(arg2, "CustomClass_closed", "")
			return true
		else
			registerVal4 = IsModelValueEqualToEnum(arg2, "Paintshop.Mode", Enum.PaintshopMode.PAINTSHOPMODE_PAINTJOBS)
			if registerVal4 then
				PaintshopWeaponList_PressBackOnPaintjobsSelector(registerVal1, arg0, arg2)
				PlaySoundSetSound(registerVal1, "list_back")
				return true
			end
		end
	end

	local function __FUNC_8BAD_(arg0, arg1, arg2)
		local registerVal3 = IsModelValueEqualToEnum(arg2, "Paintshop.Mode", Enum.PaintshopMode.PAINTSHOPMODE_WEAPONLIST)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
			return true
		else
			registerVal3 = IsModelValueEqualToEnum(arg2, "Paintshop.Mode", Enum.PaintshopMode.PAINTSHOPMODE_PAINTJOBS)
			if registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
				return true
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_88B3_, __FUNC_8BAD_, false)
	local function __FUNC_8DFC_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_8E30_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_8DFC_, __FUNC_8E30_, false)
	local function __FUNC_8F2E_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_8F60_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "PLATFORM_EMBLEM_ROTATE_LAYER")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, nil, __FUNC_8F2E_, __FUNC_8F60_, false)
	registerVal5:setModel(registerVal1.buttonModel, arg0)
	registerVal7.id = "weaponList"
	registerVal8.id = "paintjobSelector"
	registerVal12:setModel(registerVal1.buttonModel, arg0)
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
		registerVal1.weaponList:processEvent(registerVal22)
	end
	local function __FUNC_9072_(arg1)
		arg1.TitleDotsWidget0:close()
		arg1.MenuFrame:close()
		arg1.LeftPanel:close()
		arg1.weaponList:close()
		arg1.paintjobSelector:close()
		arg1.itemName:close()
		arg1.feFooterContainerNOTLobby:close()
		arg1.slotsFull:close()
		arg1.tabList:close()
		arg1.weaponVerticalCounter:close()
		arg1.xcamMouse:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.LockIcon:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Paintshop.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_9072_)
	if __FUNC_A05_ then
		__FUNC_A05_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.Paintshop = __FUNC_138B_
