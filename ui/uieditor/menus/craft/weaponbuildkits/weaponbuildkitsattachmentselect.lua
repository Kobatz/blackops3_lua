-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.CAC.GridItemButtonBackdropContainer3x4")
require("ui.uieditor.widgets.CAC.WeaponAttributes")
require("ui.uieditor.widgets.Craft.WeaponBuildKits.WeaponBuildKitsAttachmentItemButtonND")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.CAC.GridItemButtonBackdropSymbols")
require("ui.uieditor.widgets.CAC.cac_ElemsSideListBoxes")
require("ui.uieditor.widgets.CAC.cac_3dTitleIntermediary")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.WeaponNameWidget")
require("ui.uieditor.widgets.Craft.WeaponBuildKits.WeaponBuildKitsLockIcon")
require("ui.uieditor.widgets.Gunsmith.GunSmithSubDescription")
require("ui.uieditor.widgets.CAC.WeaponAttributes_Internal")
require("ui.uieditor.widgets.CAC.cac_LockBig")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.PC.Utility.XCamMouseControl")
local function __FUNC_5F1_(arg0, arg1)
	arg0:setModel(CoD.perController[arg1].gunsmithAttachmentModel)
	local function __FUNC_6C1_(arg0)
		local registerVal1 = arg0:getModel()
		local registerVal2 = Engine.GetModelValue(registerVal1)
		local registerVal5 = {}
		registerVal5.attachmentIndex = registerVal2
		arg0.selectionList:findItem(registerVal5, nil, true, nil)
	end

	arg0.restoreState = __FUNC_6C1_
end

local function __FUNC_7AF_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("WeaponBuildKitsAttachmentSelect")
	if __FUNC_5F1_ then
		__FUNC_5F1_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "WeaponBuildKitsAttachmentSelect.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -649.000000, 645.000000)
	registerVal3:setTopBottom(false, false, -361.000000, -275.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.TitleBacking0 = registerVal3
	local registerVal4 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 64.000000, 430.000000)
	registerVal4:setTopBottom(true, false, 84.000000, 667.000000)
	registerVal4:setRGB(0.500000, 0.500000, 0.500000)
	registerVal1:addElement(registerVal4)
	registerVal1.LeftPanel = registerVal4
	local registerVal5 = CoD.GridItemButtonBackdropContainer3x4.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, 99.000000, 443.000000)
	registerVal5:setTopBottom(true, false, 145.500000, 601.500000)
	registerVal5:setAlpha(0.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.GridItemButtonBackdropContainer3x4 = registerVal5
	local registerVal6 = CoD.WeaponAttributes.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 443.000000, 862.000000)
	registerVal6:setTopBottom(false, true, -166.000000, -62.000000)
	registerVal6:setAlpha(0.000000)
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "NotVisible"
	local function __FUNC_2336_(arg1, arg2, arg3)
		return IsCACItemLocked(arg1, arg2, arg0)
	end

	registerVal10.condition = __FUNC_2336_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	local function __FUNC_2391_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		registerVal1:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:linkToElementModel(registerVal6, "itemIndex", true, __FUNC_2391_)
	registerVal1:addElement(registerVal6)
	registerVal1.weaponAttributes = registerVal6
	local registerVal7 = LUI.UIList.new(registerVal1, arg0, 7.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal7:makeFocusable()
	registerVal7:setLeftRight(true, false, 77.000000, 415.000000)
	registerVal7:setTopBottom(true, false, 137.000000, 590.000000)
	registerVal7:setWidgetType(CoD.WeaponBuildKitsAttachmentItemButtonND)
	registerVal7:setHorizontalCount(3.000000)
	registerVal7:setVerticalCount(4.000000)
	registerVal7:setSpacing(7.000000)
	registerVal7:setVerticalCounter(CoD.verticalCounter)
	registerVal7:setDataSource("GunsmithWeaponAttachments")
	local function __FUNC_24AF_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = nil
		CoD.Menu.UpdateButtonShownState(registerVal7, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal7:linkToElementModel(registerVal7, nil, true, __FUNC_24AF_)
	local function __FUNC_2658_(arg1, arg2)
		local registerVal3 = Gunsmith_IsAttachmentNew(registerVal1, arg1, arg0)
		if registerVal3 then
			Gunsmith_SetAttachmentAsOld(arg1, arg0)
			UpdateSelfElementState(registerVal1, arg1, arg0)
			Gunsmith_FocusAttachment(registerVal1, arg1, arg0, false)
		else
			Gunsmith_FocusAttachment(registerVal1, arg1, arg0, false)
		end
		return nil
	end

	registerVal7:registerEventHandler("list_item_gain_focus", __FUNC_2658_)
	local function __FUNC_2789_(arg1, arg2)
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

	registerVal7:registerEventHandler("gain_focus", __FUNC_2789_)
	local function __FUNC_291B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_291B_)
	local function __FUNC_29EA_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsAttachmentLockedInWeaponBuildKits(arg0, arg2)
		if not registerVal4 then
			Gunsmith_SelectAttachment(registerVal1, arg0, arg2)
			GoBack(registerVal1, arg2)
			ClearMenuSavedState(arg1)
			return true
		end
	end

	local function __FUNC_2AE1_(arg0, arg1, arg2)
		local registerVal3 = IsAttachmentLockedInWeaponBuildKits(arg0, arg2)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal7, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_29EA_, __FUNC_2AE1_, false)
	registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Equipped"
	local function __FUNC_2C2B_(arg1, arg2, arg3)
		return Gunsmith_IsAttachmentEquipped(arg1, arg2, arg0)
	end

	registerVal11.condition = __FUNC_2C2B_
	local registerVal12 = {}
	registerVal12.stateName = "New"
	local function __FUNC_2C93_(arg1, arg2, arg3)
		return Gunsmith_IsAttachmentNew(arg1, arg2, arg0)
	end

	registerVal12.condition = __FUNC_2C93_
	local registerVal13 = {}
	registerVal13.stateName = "Locked"
	local function __FUNC_2CF6_(arg1, arg2, arg3)
		return IsAttachmentLockedInWeaponBuildKits(arg2, arg0)
	end

	registerVal13.condition = __FUNC_2CF6_
	local registerVal14 = {}
	registerVal14.stateName = "MutuallyExclusive"
	local function __FUNC_2D61_(arg1, arg2, arg3)
		return Gunsmith_IsItemMutuallyExclusiveWithSelection(arg2, arg0)
	end

	registerVal14.condition = __FUNC_2D61_
	registerVal10 = {registerVal11, registerVal12, registerVal13, registerVal14}
	registerVal7:mergeStateConditions(registerVal10)
	local function __FUNC_2DD7_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = nil
		registerVal1:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:linkToElementModel(registerVal7, nil, true, __FUNC_2DD7_)
	registerVal1:addElement(registerVal7)
	registerVal1.selectionList = registerVal7
	local registerVal8 = CoD.GridItemButtonBackdropSymbols.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 99.000000, 1193.670000)
	registerVal8:setTopBottom(true, false, 145.500000, 602.500000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setZoom(-7.020000)
	registerVal1:addElement(registerVal8)
	registerVal1.GridItemButtonBackdropSymbols = registerVal8
	registerVal9 = CoD.cac_ElemsSideListBoxes.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 18.870000, 71.870000)
	registerVal9:setTopBottom(true, false, -12.000000, 658.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.cacElemsSideListBoxes0 = registerVal9
	registerVal10 = CoD.cac_3dTitleIntermediary.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, -72.000000, 537.000000)
	registerVal10:setTopBottom(true, false, -4.000000, 142.000000)
	registerVal10:setAlpha(0.000000)
	local function __FUNC_2EE1_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal10.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(LocalizeWeaponNameIntoString("MENU_GUNSMITH_ATTACHMENT_SELECT_TITLE", "zm", arg0, registerVal1))
		end
	end

	registerVal10:subscribeToGlobalModel(arg0, "Customization", "weapon_index", __FUNC_2EE1_)
	registerVal1:addElement(registerVal10)
	registerVal1.cac3dTitleIntermediary0 = registerVal10
	registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, -11.000000, 1293.000000)
	registerVal11:setTopBottom(true, false, 80.000000, 88.000000)
	registerVal11:setRGB(0.900000, 0.900000, 0.900000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal11)
	registerVal1.CategoryListLine0 = registerVal11
	registerVal12 = CoD.WeaponNameWidget.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 447.000000, 828.000000)
	registerVal12:setTopBottom(true, false, 137.000000, 171.000000)
	registerVal1:addElement(registerVal12)
	registerVal1.WeaponNameWidget0 = registerVal12
	registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 77.000000, 413.000000)
	registerVal13:setTopBottom(true, false, 92.500000, 124.500000)
	registerVal13:setRGB(0.000000, 0.000000, 0.000000)
	registerVal13:setAlpha(0.440000)
	registerVal1:addElement(registerVal13)
	registerVal1.BlackHeader = registerVal13
	registerVal14 = CoD.WeaponBuildKitsLockIcon.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, 732.000000, 828.000000)
	registerVal14:setTopBottom(true, false, 14.000000, 684.000000)
	local registerVal17 = {}
	local registerVal18 = {}
	registerVal18.stateName = "Locked"
	local function __FUNC_306B_(arg1, arg2, arg3)
		return IsAttachmentLockedInWeaponBuildKits(arg2, arg0)
	end

	registerVal18.condition = __FUNC_306B_
	registerVal17 = {registerVal18}
	registerVal14:mergeStateConditions(registerVal17)
	local function __FUNC_30D5_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = nil
		registerVal1:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:linkToElementModel(registerVal14, nil, true, __FUNC_30D5_)
	registerVal1:addElement(registerVal14)
	registerVal1.LockIcon = registerVal14
	local registerVal15 = LUI.UIText.new()
	registerVal15:setLeftRight(true, false, 83.000000, 283.000000)
	registerVal15:setTopBottom(true, false, 97.000000, 122.000000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setText(Engine.Localize("MENU_VARIANTS_CAPS"))
	registerVal15:setTTF("fonts/default.ttf")
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal15)
	registerVal1.variantName = registerVal15
	local registerVal16 = CoD.GunSmithSubDescription.new(registerVal1, arg0)
	registerVal16:setLeftRight(true, false, 447.000000, 700.000000)
	registerVal16:setTopBottom(true, false, 174.500000, 211.500000)
	registerVal1:addElement(registerVal16)
	registerVal1.GunSmithSubDescription0 = registerVal16
	registerVal17 = CoD.WeaponAttributes_Internal.new(registerVal1, arg0)
	registerVal17:setLeftRight(true, false, 448.000000, 820.000000)
	registerVal17:setTopBottom(true, false, 554.000000, 638.000000)
	registerVal1:addElement(registerVal17)
	registerVal1.WeaponAttributes = registerVal17
	registerVal18 = CoD.cac_LockBig.new(registerVal1, arg0)
	registerVal18:setLeftRight(true, false, 764.000000, 860.000000)
	registerVal18:setTopBottom(true, false, -97.000000, 573.000000)
	registerVal18:setAlpha(0.000000)
	local function __FUNC_31E1_(arg1)
		registerVal18:setModel(arg1, arg0)
	end

	registerVal18:linkToElementModel(registerVal1, nil, false, __FUNC_31E1_)
	registerVal1:addElement(registerVal18)
	registerVal1.lockedIcon = registerVal18
	local registerVal19 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal19:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal19:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal19.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_gunsmith"))
	local function __FUNC_3232_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal19.titleLabel:setText(LocalizeWeaponNameIntoString("MENU_GUNSMITH_ATTACHMENT_SELECT_TITLE", "zm", arg0, registerVal1))
		end
	end

	registerVal19:subscribeToGlobalModel(arg0, "Customization", "weapon_index", __FUNC_3232_)
	local function __FUNC_3359_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal19.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(LocalizeWeaponNameIntoString("MENU_GUNSMITH_ATTACHMENT_SELECT_TITLE", "zm", arg0, registerVal1))
		end
	end

	registerVal19:subscribeToGlobalModel(arg0, "Customization", "weapon_index", __FUNC_3359_)
	registerVal1:addElement(registerVal19)
	registerVal1.MenuFrame = registerVal19
	local registerVal20 = CoD.XCamMouseControl.new(registerVal1, arg0)
	registerVal20:setLeftRight(false, true, -753.000000, -152.000000)
	registerVal20:setTopBottom(true, true, 227.500000, -190.110000)
	registerVal1:addElement(registerVal20)
	registerVal1.XCamMouseControl = registerVal20
	local function __FUNC_3510_(arg1)
		registerVal6:setModel(arg1, arg0)
	end

	registerVal6:linkToElementModel(registerVal7, "weaponAttributes", false, __FUNC_3510_)
	local function __FUNC_3562_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.weaponNameLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal12:linkToElementModel(registerVal7, "name", true, __FUNC_3562_)
	local function __FUNC_363F_(arg1)
		registerVal14:setModel(arg1, arg0)
	end

	registerVal14:linkToElementModel(registerVal7, nil, false, __FUNC_363F_)
	local function __FUNC_368E_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal16.weaponDescTextBox:setText(Engine.Localize(GetWeaponBuildKitsAttachmentDescription(arg0, registerVal1)))
		end
	end

	registerVal16:linkToElementModel(registerVal7, "attachmentIndex", true, __FUNC_368E_)
	local function __FUNC_37AA_(arg1)
		registerVal17:setModel(arg1, arg0)
	end

	registerVal17:linkToElementModel(registerVal7, "weaponAttributes", false, __FUNC_37AA_)
	local registerVal21 = {}
	local registerVal22 = {}
	local function __FUNC_37FA_()
		registerVal1:setupElementClipCounter(4.000000)
		registerVal8:completeAnimation()
		registerVal1.GridItemButtonBackdropSymbols:setLeftRight(true, false, 93.660000, 1188.340000)
		registerVal1.GridItemButtonBackdropSymbols:setTopBottom(true, false, 145.500000, 602.500000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal15:completeAnimation()
		registerVal1.variantName:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal1.GunSmithSubDescription0:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal16, {})
		registerVal18:completeAnimation()
		registerVal1.lockedIcon:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal18, {})
	end

	registerVal22.DefaultClip = __FUNC_37FA_
	registerVal21.DefaultState = registerVal22
	registerVal1.clipsPerState = registerVal21
	local function __FUNC_3A9C_(arg0, arg1)
		ShowHeaderKickerAndIcon(registerVal1)
		SetHeadingKickerTextToGameMode("MENU_ZOMBIES_CAPS")
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_3A9C_)
	local function __FUNC_3B85_(arg0, arg1)
		local registerVal3 = IsLAN()
		if not registerVal3 then
			SetHeadingKickerText("MPUI_PUBLIC_MATCH_LOBBY")
		end
		if not nil then
			registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_opened", __FUNC_3B85_)
	local function __FUNC_3C5B_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		ClearMenuSavedState(arg1)
		return true
	end

	local function __FUNC_3CD5_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_3C5B_, __FUNC_3CD5_, false)
	local function __FUNC_3DD1_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_3E04_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_3DD1_, __FUNC_3E04_, false)
	local function __FUNC_3F02_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_3F34_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "PLATFORM_EMBLEM_ROTATE_LAYER")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, nil, __FUNC_3F02_, __FUNC_3F34_, false)
	registerVal7.id = "selectionList"
	registerVal19:setModel(registerVal1.buttonModel, arg0)
	local registerVal23 = {}
	registerVal23.name = "menu_loaded"
	registerVal23.controller = arg0
	registerVal1:processEvent(registerVal23)
	registerVal23 = {}
	registerVal23.name = "update_state"
	registerVal23.menu = registerVal1
	registerVal1:processEvent(registerVal23)
	registerVal21 = registerVal1:restoreState()
	if not registerVal21 then
		registerVal23 = {}
		registerVal23.name = "gain_focus"
		registerVal23.controller = arg0
		registerVal1.selectionList:processEvent(registerVal23)
	end
	local function __FUNC_4046_(arg1)
		arg1.LeftPanel:close()
		arg1.GridItemButtonBackdropContainer3x4:close()
		arg1.weaponAttributes:close()
		arg1.selectionList:close()
		arg1.GridItemButtonBackdropSymbols:close()
		arg1.cacElemsSideListBoxes0:close()
		arg1.cac3dTitleIntermediary0:close()
		arg1.WeaponNameWidget0:close()
		arg1.LockIcon:close()
		arg1.GunSmithSubDescription0:close()
		arg1.WeaponAttributes:close()
		arg1.lockedIcon:close()
		arg1.MenuFrame:close()
		arg1.XCamMouseControl:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "WeaponBuildKitsAttachmentSelect.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_4046_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.WeaponBuildKitsAttachmentSelect = __FUNC_7AF_
