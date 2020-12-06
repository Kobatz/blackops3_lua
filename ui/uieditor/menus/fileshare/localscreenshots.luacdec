-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.playercard.SelfIdentityBadge")
require("ui.uieditor.menus.FileShare.LocalScreenshotsOptions")
require("ui.uieditor.widgets.FileShare.FileshareScreenshotSelectorItem")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.FileShare.FileshareSelectedItemInfo")
require("ui.uieditor.widgets.FileShare.FilesharePublishDetails")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.WeaponNameWidget")
require("ui.uieditor.widgets.FileShare.FileshareNoContent")
require("ui.uieditor.widgets.BorderBakedBlur")
require("ui.uieditor.widgets.BorderBakedSolid")
local function __FUNC_53C_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	Engine.CreateModel(registerVal3, "FileshareRoot.SelectedFileID")
end

local function __FUNC_5F7_(arg0, arg1)
	arg0.originalOcclusionChange = arg0.m_eventHandlers.occlusion_change
	local function __FUNC_72D_(arg0, arg2)
		if not arg2.occluded then
			CoD.FileshareUtility.SetCurrentCategory("screenshot_private")
			CoD.FileshareUtility.SetInShowcaseManager(arg1, false)
			CoD.FileshareUtility.SetDirty()
		end
		arg0.originalOcclusionChange(arg0, arg2)
	end

	arg0:registerEventHandler("occlusion_change", __FUNC_72D_)
	local function __FUNC_8B2_(arg2)
		if arg0.EmblemName then
			local registerVal1 = FileshareHasContent(nil, arg1)
			if registerVal1 == true then
				arg0.EmblemName:setAlpha(1.000000)
			else
				arg0.EmblemName:setAlpha(0.000000)
			end
		end
	end

	arg0:subscribeToGlobalModel(arg1, "FileshareRoot", "itemsCount", __FUNC_8B2_)
end

local function __FUNC_997_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("LocalScreenshots")
	if __FUNC_53C_ then
		__FUNC_53C_(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "LocalScreenshots.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_fe_cp_background"))
	registerVal1:addElement(registerVal3)
	registerVal1.BlackBG = registerVal3
	local registerVal4 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 93.000000, 661.000000)
	registerVal4:setTopBottom(true, false, 80.000000, 669.000000)
	registerVal4:setRGB(0.500000, 0.500000, 0.500000)
	registerVal4:setAlpha(0.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.LeftPanel = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 53.000000, 689.000000)
	registerVal5:setTopBottom(true, false, 80.000000, 669.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.300000)
	registerVal1:addElement(registerVal5)
	registerVal1.BlackTint = registerVal5
	local registerVal6 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal6:setTopBottom(true, false, 86.000000, 703.250000)
	registerVal1:addElement(registerVal6)
	registerVal1.FEMenuLeftGraphics = registerVal6
	local registerVal7 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal7.titleLabel:setText(Engine.Localize("MENU_FILESHARE_CATEGORY_SCREENSHOTS_CAPS"))
	registerVal7.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_FILESHARE_CATEGORY_SCREENSHOTS_CAPS"))
	local function __FUNC_22C9_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal7.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage(FileshareGetShowcaseHeaderIcon(arg0, registerVal1)))
		end
	end

	registerVal7:subscribeToGlobalModel(arg0, "FileshareRoot", "PublishMode", __FUNC_22C9_)
	registerVal1:addElement(registerVal7)
	registerVal1.MenuFrame = registerVal7
	local registerVal8 = CoD.SelfIdentityBadge.new(registerVal1, arg0)
	registerVal8:setLeftRight(false, true, -435.000000, -92.000000)
	registerVal8:setTopBottom(true, false, 23.000000, 83.000000)
	local function __FUNC_2470_(arg1)
		registerVal8:setModel(arg1, arg0)
	end

	registerVal8:subscribeToGlobalModel(arg0, "PerController", "identityBadge", __FUNC_2470_)
	local function __FUNC_24C2_(arg1)
		registerVal8.CallingCard.CallingCardsFrameWidget:setModel(arg1, arg0)
	end

	registerVal8:subscribeToGlobalModel(arg0, "PerController", nil, __FUNC_24C2_)
	registerVal1:addElement(registerVal8)
	registerVal1.SelfIdentityBadge = registerVal8
	local registerVal9 = LUI.UIList.new(registerVal1, arg0, 10.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal9:makeFocusable()
	registerVal9:setLeftRight(true, false, 103.000000, 651.000000)
	registerVal9:setTopBottom(true, false, 129.000000, 591.000000)
	registerVal9:setWidgetType(CoD.FileshareScreenshotSelectorItem)
	registerVal9:setHorizontalCount(3.000000)
	registerVal9:setVerticalCount(4.000000)
	registerVal9:setSpacing(10.000000)
	registerVal9:setDataSource("FilesharePublishedList")
	local registerVal13 = Engine.GetGlobalModel()
	local registerVal12 = Engine.GetModel(registerVal13, "FileshareRoot.SelectedFileID")
	local function __FUNC_2560_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "FileshareRoot.SelectedFileID"
		CoD.Menu.UpdateButtonShownState(registerVal9, registerVal1, arg0, Enum.LUIButton.LUI_KEY_START)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_2560_)
	local function __FUNC_272B_(arg1, arg2)
		local registerVal3 = FileshareIsCommunityMode(arg1, arg0)
		if registerVal3 then
			SetElementDataSource(registerVal1, "FileshareScreenshotList", "FilesshareCommunityList")
		else
			registerVal3 = FileshareIsCommunityMode(arg1, arg0)
			if not registerVal3 then
				SetElementDataSource(registerVal1, "FileshareScreenshotList", "FilesharePublishedList")
			end
		end
		if not nil then
			registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("menu_loaded", __FUNC_272B_)
	local function __FUNC_2893_(arg1, arg2)
		FileshareSetSelectedItem(registerVal1, arg1, arg0, "")
		FileshareSetShowFileDetails(arg0, true)
		FileshareSetShowPublishNewDetails(arg0, false)
		FileshareDownloadScreenshot(arg0, nil)
		return nil
	end

	registerVal9:registerEventHandler("list_item_gain_focus", __FUNC_2893_)
	local function __FUNC_29AD_(arg0, arg1)
		FileshareItemLoseFocus(arg0)
		return nil
	end

	registerVal9:registerEventHandler("list_item_lose_focus", __FUNC_29AD_)
	local function __FUNC_2A0C_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_START)
		return registerVal3
	end

	registerVal9:registerEventHandler("gain_focus", __FUNC_2A0C_)
	local function __FUNC_2BFE_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("lose_focus", __FUNC_2BFE_)
	local function __FUNC_2CCE_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsPerControllerTablePropertyValue(arg2, "combatRecordProfileSnapshot", false)
		if registerVal4 then
			FileshareSetSelectedItem(registerVal1, arg0, arg2, "true")
			PreserveThumbnails(arg2, true)
			FileshareOpenFullscreenView(registerVal1, arg0, arg2, arg1)
			return true
		else
			registerVal4 = IsPerControllerTablePropertyValue(arg2, "combatRecordProfileSnapshot", true)
			if registerVal4 then
				CombatRecordSetProfileSnapshot(arg2)
				SetPerControllerTableProperty(arg2, "combatRecordProfileSnapshot", false)
				GoBack(registerVal1, arg2)
				return true
			end
		end
	end

	local function __FUNC_2ED4_(arg0, arg1, arg2)
		local registerVal3 = IsPerControllerTablePropertyValue(arg2, "combatRecordProfileSnapshot", false)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		else
			registerVal3 = IsPerControllerTablePropertyValue(arg2, "combatRecordProfileSnapshot", true)
			if registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
				return true
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal9, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_2CCE_, __FUNC_2ED4_, false)
	local function __FUNC_30B2_(arg0, arg1, arg2, arg3)
		local registerVal4 = FileshareCanShowOptionsMenu(arg2)
		registerVal4 = IsPerControllerTablePropertyValue(arg2, "combatRecordProfileSnapshot", false)
		if registerVal4 and registerVal4 then
			PreserveThumbnails(arg2, true)
			OpenPopup(registerVal1, "LocalScreenshotsOptions", arg2, "", "")
			return true
		end
	end

	local function __FUNC_320F_(arg0, arg1, arg2)
		local registerVal3 = FileshareCanShowOptionsMenu(arg2)
		registerVal3 = IsPerControllerTablePropertyValue(arg2, "combatRecordProfileSnapshot", false)
		if registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_OPTIONS")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal9, arg0, Enum.LUIButton.LUI_KEY_START, "O", __FUNC_30B2_, __FUNC_320F_, false)
	local function __FUNC_33B2_(arg1)
		UpdateDataSource(registerVal1, registerVal9, arg0)
	end

	registerVal9:subscribeToGlobalModel(arg0, "FileshareRoot", "dirty", __FUNC_33B2_)
	local function __FUNC_340E_(arg1)
		UpdateDataSource(registerVal1, registerVal9, arg0)
	end

	registerVal9:subscribeToGlobalModel(arg0, "FileshareRoot", "ready", __FUNC_340E_)
	registerVal1:addElement(registerVal9)
	registerVal1.FileshareScreenshotList = registerVal9
	local registerVal10 = CoD.verticalCounter.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 271.000000, 471.000000)
	registerVal10:setTopBottom(true, false, 614.000000, 639.000000)
	local function __FUNC_346A_(arg0, arg1)
		SetAsListVerticalCounter(registerVal1, arg0, "FileshareScreenshotList")
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal10:registerEventHandler("menu_loaded", __FUNC_346A_)
	registerVal1:addElement(registerVal10)
	registerVal1.verticalCounter0 = registerVal10
	local registerVal11 = CoD.FileshareSelectedItemInfo.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 758.000000, 1185.000000)
	registerVal11:setTopBottom(true, false, 494.000000, 578.000000)
	local function __FUNC_352C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setAlpha(registerVal1)
		end
	end

	registerVal11:subscribeToGlobalModel(arg0, "FileshareRoot", "showFileDetails", __FUNC_352C_)
	registerVal1:addElement(registerVal11)
	registerVal1.FileshareSelectedItemInfo0 = registerVal11
	registerVal12 = CoD.FilesharePublishDetails.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 758.000000, 1084.000000)
	registerVal12:setTopBottom(true, false, 140.000000, 614.000000)
	local function __FUNC_35C1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setAlpha(registerVal1)
		end
	end

	registerVal12:subscribeToGlobalModel(arg0, "FileshareRoot", "showPublishNewDetails", __FUNC_35C1_)
	local registerVal15 = {}
	local registerVal16 = {}
	registerVal16.stateName = "Hidden"
	local function __FUNC_3655_(arg1, arg2, arg3)
		return FileshareShowcaseIsPublishMode(arg2, arg0)
	end

	registerVal16.condition = __FUNC_3655_
	registerVal15 = {registerVal16}
	registerVal12:mergeStateConditions(registerVal15)
	registerVal16 = Engine.GetGlobalModel()
	registerVal15 = Engine.GetModel(registerVal16, "FileshareRoot.PublishMode")
	local function __FUNC_36BC_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "FileshareRoot.PublishMode"
		registerVal1:updateElementState(registerVal12, registerVal4)
	end

	registerVal12:subscribeToModel(registerVal15, __FUNC_36BC_)
	registerVal1:addElement(registerVal12)
	registerVal1.FilesharePublishDetails = registerVal12
	registerVal13 = CoD.WeaponNameWidget.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 759.000000, 1182.000000)
	registerVal13:setTopBottom(true, false, 414.000000, 448.000000)
	local function __FUNC_37EB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13:setAlpha(registerVal1)
		end
	end

	registerVal13:subscribeToGlobalModel(arg0, "FileshareRoot", "showFileDetails", __FUNC_37EB_)
	registerVal1:addElement(registerVal13)
	registerVal1.ScreenshotName = registerVal13
	local registerVal14 = CoD.FileshareNoContent.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, 246.000000, 496.000000)
	registerVal14:setTopBottom(true, false, 331.000000, 391.000000)
	registerVal1:addElement(registerVal14)
	registerVal1.FileshareNoContent = registerVal14
	registerVal15 = CoD.BorderBakedBlur.new(registerVal1, arg0)
	registerVal15:setLeftRight(false, false, 115.000000, 547.000000)
	registerVal15:setTopBottom(true, false, 133.000000, 406.000000)
	registerVal15:setAlpha(0.400000)
	registerVal1:addElement(registerVal15)
	registerVal1.BorderBakedBlur1 = registerVal15
	registerVal16 = CoD.BorderBakedBlur.new(registerVal1, arg0)
	registerVal16:setLeftRight(false, false, 115.000000, 547.000000)
	registerVal16:setTopBottom(true, false, 133.000000, 406.000000)
	local function __FUNC_387D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16:setAlpha(registerVal1)
		end
	end

	registerVal16:subscribeToGlobalModel(arg0, "FileshareRoot", "showFileDetails", __FUNC_387D_)
	registerVal1:addElement(registerVal16)
	registerVal1.BorderBakedBlur0 = registerVal16
	local registerVal17 = CoD.BorderBakedSolid.new(registerVal1, arg0)
	registerVal17:setLeftRight(false, false, 115.000000, 547.000000)
	registerVal17:setTopBottom(true, false, 133.000000, 406.000000)
	registerVal17:setAlpha(0.500000)
	registerVal1:addElement(registerVal17)
	registerVal1.BorderBakedSolid1 = registerVal17
	local registerVal18 = CoD.BorderBakedSolid.new(registerVal1, arg0)
	registerVal18:setLeftRight(false, false, 115.000000, 547.000000)
	registerVal18:setTopBottom(true, false, 133.000000, 406.000000)
	local function __FUNC_3911_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal18:setAlpha(registerVal1)
		end
	end

	registerVal18:subscribeToGlobalModel(arg0, "FileshareRoot", "showFileDetails", __FUNC_3911_)
	registerVal1:addElement(registerVal18)
	registerVal1.BorderBakedSolid0 = registerVal18
	local registerVal19 = LUI.UIElement.new()
	registerVal19:setLeftRight(true, false, 762.000000, 1180.000000)
	registerVal19:setTopBottom(true, false, 140.000000, 398.000000)
	local function __FUNC_39A5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal19:setAlpha(registerVal1)
		end
	end

	registerVal19:subscribeToGlobalModel(arg0, "FileshareRoot", "showFileDetails", __FUNC_39A5_)
	registerVal1:addElement(registerVal19)
	registerVal1.ImageViewer0 = registerVal19
	local function __FUNC_3A39_(arg1)
		registerVal11:setModel(arg1, arg0)
	end

	registerVal11:linkToElementModel(registerVal9, nil, false, __FUNC_3A39_)
	local function __FUNC_3A8A_(arg1)
		registerVal13:setModel(arg1, arg0)
	end

	registerVal13:linkToElementModel(registerVal9, nil, false, __FUNC_3A8A_)
	local function __FUNC_3ADA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.weaponNameLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal13:linkToElementModel(registerVal9, "fileName", true, __FUNC_3ADA_)
	local function __FUNC_3BB7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal19:setupImageViewer(GetImageViewerParams("UI_SCREENSHOT_TYPE_SCREENSHOT", registerVal1))
		end
	end

	registerVal19:linkToElementModel(registerVal9, "fileId", true, __FUNC_3BB7_)
	local function __FUNC_3CA2_(arg1, arg2)
		local registerVal3 = FileshareIsCommunityMode(arg1, arg0)
		if not registerVal3 then
			ShowHeaderIconOnly(registerVal1)
			SetIsInFileshare(arg0, "true")
		else
			registerVal3 = FileshareIsCommunityMode(arg1, arg0)
			if registerVal3 then
				FileshareSetCommunityKicker(arg0)
				MediaManagerClearDisplay(registerVal1, arg1, arg0)
				SetIsInFileshare(arg0, "true")
				ShowHeaderIconOnly(registerVal1)
			end
		end
		if not nil then
			registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_3CA2_)
	local function __FUNC_3E46_(arg0, arg1, arg2, arg3)
		SetIsInFileshare(arg2, "false")
		GoBack(registerVal1, arg2)
		ClearSavedState(registerVal1, arg2)
		ResetThumbnailViewer(arg2)
		CloseLocalScreenshots(arg2)
		return true
	end

	local function __FUNC_3F4F_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MP_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_3E46_, __FUNC_3F4F_, false)
	registerVal7:setModel(registerVal1.buttonModel, arg0)
	registerVal9.id = "FileshareScreenshotList"
	local registerVal22 = {}
	registerVal22.name = "menu_loaded"
	registerVal22.controller = arg0
	registerVal1:processEvent(registerVal22)
	registerVal22 = {}
	registerVal22.name = "update_state"
	registerVal22.menu = registerVal1
	registerVal1:processEvent(registerVal22)
	local registerVal20 = registerVal1:restoreState()
	if not registerVal20 then
		registerVal22 = {}
		registerVal22.name = "gain_focus"
		registerVal22.controller = arg0
		registerVal1.FileshareScreenshotList:processEvent(registerVal22)
	end
	local function __FUNC_4047_(arg1)
		arg1.LeftPanel:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.MenuFrame:close()
		arg1.SelfIdentityBadge:close()
		arg1.FileshareScreenshotList:close()
		arg1.verticalCounter0:close()
		arg1.FileshareSelectedItemInfo0:close()
		arg1.FilesharePublishDetails:close()
		arg1.ScreenshotName:close()
		arg1.FileshareNoContent:close()
		arg1.BorderBakedBlur1:close()
		arg1.BorderBakedBlur0:close()
		arg1.BorderBakedSolid1:close()
		arg1.BorderBakedSolid0:close()
		arg1.ImageViewer0:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "LocalScreenshots.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_4047_)
	if __FUNC_5F7_ then
		__FUNC_5F7_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.LocalScreenshots = __FUNC_997_
