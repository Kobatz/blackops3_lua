-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.Craft.Gunsmith.GunsmithVariantItemND")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.FileShare.FileshareSelector")
require("ui.uieditor.widgets.FileShare.FileshareNoContent")
require("ui.uieditor.widgets.CAC.TitleDotsWidget")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.playercard.SelfIdentityBadge")
require("ui.uieditor.widgets.Lobby.Common.FE_TabBar")
local function __FUNC_459_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "FileshareRoot", false)
	Engine.CreateModel(registerVal2, "PublishMode", false)
end

local function __FUNC_53D_(arg0, arg1)
	arg0.disablePopupOpenCloseAnim = true
	arg0.originalOcclusionChange = arg0.m_eventHandlers.occlusion_change
	local function __FUNC_633_(arg0, arg2)
		if not arg2.occluded then
			CoD.FileshareUtility.SetCurrentCategory("variant")
			CoD.FileshareUtility.SetInShowcaseManager(arg1, false)
			CoD.FileshareUtility.SetDirty()
		end
		arg0.originalOcclusionChange(arg0, arg2)
	end

	arg0:registerEventHandler("occlusion_change", __FUNC_633_)
end

local function __FUNC_7AB_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("MyShowcase_Variants")
	if __FUNC_459_ then
		__FUNC_459_(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "MyShowcase_Variants.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_fe_cp_background"))
	registerVal1:addElement(registerVal3)
	registerVal1.BlackBG = registerVal3
	local registerVal4 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 64.000000, 432.000000)
	registerVal4:setTopBottom(true, false, 92.670000, 735.670000)
	registerVal4:setRGB(0.500000, 0.500000, 0.500000)
	registerVal1:addElement(registerVal4)
	registerVal1.LeftPanel = registerVal4
	local registerVal5 = LUI.UIList.new(registerVal1, arg0, 7.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal5:makeFocusable()
	registerVal5:setLeftRight(true, false, 77.000000, 415.000000)
	registerVal5:setTopBottom(true, false, 134.500000, 587.500000)
	registerVal5:setWidgetType(CoD.GunsmithVariantItemND)
	registerVal5:setHorizontalCount(3.000000)
	registerVal5:setVerticalCount(4.000000)
	registerVal5:setSpacing(7.000000)
	registerVal5:setVerticalCounter(CoD.verticalCounter)
	registerVal5:setDataSource("ShowcaseVariantList")
	local function __FUNC_211B_(arg1, arg2)
		FileshareShowcasePublishSetSelectedItem(registerVal1, arg1, arg0)
		return nil
	end

	registerVal5:registerEventHandler("list_item_gain_focus", __FUNC_211B_)
	local function __FUNC_2191_(arg1, arg2)
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

	registerVal5:registerEventHandler("gain_focus", __FUNC_2191_)
	local function __FUNC_2323_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_2323_)
	local function __FUNC_23F2_(arg0, arg1, arg2, arg3)
		local registerVal4 = FileshareCanPublish(arg2)
		registerVal4 = FileshareCanPublishItem(registerVal1, arg0, arg2)
		if registerVal4 and registerVal4 then
			FileshareShowcasePublishSelectedItem(registerVal1, arg0, arg2)
			return true
		end
	end

	local function __FUNC_24D4_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_PUBLISH")
		local registerVal3 = FileshareCanPublish(arg2)
		registerVal3 = FileshareCanPublishItem(registerVal1, arg0, arg2)
		if registerVal3 and registerVal3 then
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal5, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_23F2_, __FUNC_24D4_, true)
	local function __FUNC_2649_(arg1)
		UpdateDataSource(registerVal1, registerVal5, arg0)
	end

	registerVal5:subscribeToGlobalModel(arg0, "FileshareRoot", "dirty", __FUNC_2649_)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "EmptySlot"
	local function __FUNC_26A6_(arg1, arg2, arg3)
		local registerVal3 = Gunsmith_IsVariantOccupied(arg2, arg0)
		return (not registerVal3)
	end

	registerVal9.condition = __FUNC_26A6_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal1:addElement(registerVal5)
	registerVal1.variantList = registerVal5
	local registerVal6 = CoD.FileshareSelector.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 64.000000, 984.000000)
	registerVal6:setTopBottom(true, false, 123.000000, 684.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.FileshareSelector0 = registerVal6
	local registerVal7 = CoD.FileshareNoContent.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 121.500000, 362.500000)
	registerVal7:setTopBottom(true, false, 347.670000, 414.170000)
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Publish"
	local function __FUNC_270C_(arg1, arg2, arg3)
		local registerVal3 = FileshareIsReady(arg0)
		registerVal3 = FileshareShowcaseIsPublishMode(arg2, arg0)
		if registerVal3 and registerVal3 then
			registerVal3 = ListElementHasElements(registerVal1, "variantList")
		end
		return (not registerVal3)
	end

	registerVal11.condition = __FUNC_270C_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetGlobalModel()
	registerVal10 = Engine.GetModel(registerVal11, "fileshareRoot.itemsCount")
	local function __FUNC_27F3_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "fileshareRoot.itemsCount"
		registerVal1:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:subscribeToModel(registerVal10, __FUNC_27F3_)
	registerVal11 = Engine.GetGlobalModel()
	registerVal10 = Engine.GetModel(registerVal11, "FileshareRoot.PublishMode")
	local function __FUNC_291E_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "FileshareRoot.PublishMode"
		registerVal1:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:subscribeToModel(registerVal10, __FUNC_291E_)
	registerVal11 = Engine.GetGlobalModel()
	registerVal10 = Engine.GetModel(registerVal11, "fileshareRoot.ready")
	local function __FUNC_2A4B_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "fileshareRoot.ready"
		registerVal1:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:subscribeToModel(registerVal10, __FUNC_2A4B_)
	registerVal1:addElement(registerVal7)
	registerVal1.FileshareNoContent = registerVal7
	registerVal8 = CoD.TitleDotsWidget.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 3.000000, 528.340000)
	registerVal8:setTopBottom(true, false, -65.330000, 92.670000)
	registerVal8:setAlpha(0.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.TitleDotsWidget0 = registerVal8
	registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal9:setTopBottom(false, false, -276.000000, -237.000000)
	registerVal9:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.CategoryListPanel = registerVal9
	registerVal10 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal10:setTopBottom(true, false, 86.000000, 703.250000)
	registerVal1:addElement(registerVal10)
	registerVal1.FEMenuLeftGraphics = registerVal10
	registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, -11.000000, 1293.000000)
	registerVal11:setTopBottom(true, false, 80.000000, 88.000000)
	registerVal11:setRGB(0.900000, 0.900000, 0.900000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal11)
	registerVal1.CategoryListLine = registerVal11
	local registerVal12 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal12:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal12.titleLabel:setText(Engine.Localize("MENU_VARIANTS_CAPS"))
	registerVal12.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_VARIANTS_CAPS"))
	local function __FUNC_2B71_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal12.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage(FileshareGetShowcaseHeaderIcon(arg0, registerVal1)))
		end
	end

	registerVal12:subscribeToGlobalModel(arg0, "FileshareRoot", "PublishMode", __FUNC_2B71_)
	local function __FUNC_2D18_(arg0, arg1)
		ShowHeaderKickerAndIcon(registerVal1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal12:registerEventHandler("menu_loaded", __FUNC_2D18_)
	registerVal1:addElement(registerVal12)
	registerVal1.MenuFrame = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 64.000000, 181.000000)
	registerVal13:setTopBottom(true, false, 11.000000, 32.500000)
	registerVal13:setAlpha(0.000000)
	registerVal1:addElement(registerVal13)
	registerVal1.MyShowcaseBG = registerVal13
	local registerVal14 = LUI.UITightText.new()
	registerVal14:setLeftRight(true, false, 68.000000, 160.000000)
	registerVal14:setTopBottom(true, false, 9.500000, 34.500000)
	registerVal14:setRGB(0.000000, 0.000000, 0.000000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setText(Engine.Localize("MENU_MEDIA_MYSHOWCASE"))
	registerVal14:setTTF("fonts/default.ttf")
	local function __FUNC_2DB2_(arg0, arg1)
		ShowHeaderKickerAndIcon(registerVal1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal14:registerEventHandler("menu_loaded", __FUNC_2DB2_)
	registerVal1:addElement(registerVal14)
	registerVal1.MyShowcase = registerVal14
	local registerVal15 = CoD.SelfIdentityBadge.new(registerVal1, arg0)
	registerVal15:setLeftRight(false, true, -435.000000, -92.000000)
	registerVal15:setTopBottom(true, false, 23.000000, 83.000000)
	local function __FUNC_2E4A_(arg1)
		registerVal15:setModel(arg1, arg0)
	end

	registerVal15:subscribeToGlobalModel(arg0, "PerController", "identityBadge", __FUNC_2E4A_)
	local function __FUNC_2E9A_(arg1)
		registerVal15.CallingCard.CallingCardsFrameWidget:setModel(arg1, arg0)
	end

	registerVal15:subscribeToGlobalModel(arg0, "PerController", nil, __FUNC_2E9A_)
	registerVal1:addElement(registerVal15)
	registerVal1.SelfIdentityBadge = registerVal15
	local registerVal16 = CoD.FE_TabBar.new(registerVal1, arg0)
	registerVal16:setLeftRight(true, false, 0.000000, 1567.000000)
	registerVal16:setTopBottom(true, false, 84.000000, 119.000000)
	registerVal16.Tabs.grid:setHorizontalCount(9.000000)
	registerVal16.Tabs.grid:setDataSource("FilesharePublishedVariantsTabs")
	local function __FUNC_2F38_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16:setAlpha(registerVal1)
		end
	end

	registerVal16:subscribeToGlobalModel(arg0, "FileshareRoot", "shouldShowTabs", __FUNC_2F38_)
	local function __FUNC_2FCD_(arg1, arg2)
		FilesharePublishedTabChanged(registerVal1, arg1, arg0)
		ClearSavedState(registerVal1, arg0)
		return nil
	end

	registerVal16:registerEventHandler("list_active_changed", __FUNC_2FCD_)
	registerVal1:addElement(registerVal16)
	registerVal1.FETabBar0 = registerVal16
	local registerVal17 = {}
	registerVal17.right = registerVal6
	registerVal17.down = registerVal6
	registerVal5.navigation = registerVal17
	registerVal17 = {}
	registerVal17.left = registerVal5
	registerVal17.up = registerVal5
	registerVal6.navigation = registerVal17
	registerVal17 = {}
	local registerVal18 = {}
	local function __FUNC_3063_()
		registerVal1:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal1.LeftPanel:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.variantList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.FileshareSelector0:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal6, {})
	end

	registerVal18.DefaultClip = __FUNC_3063_
	registerVal17.DefaultState = registerVal18
	registerVal18 = {}
	local function __FUNC_321F_()
		registerVal1:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal1.LeftPanel:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.variantList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.FileshareSelector0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal6, {})
	end

	registerVal18.DefaultClip = __FUNC_321F_
	registerVal17.Publish = registerVal18
	registerVal1.clipsPerState = registerVal17
	local registerVal19 = {}
	local registerVal20 = {}
	registerVal20.stateName = "Publish"
	local function __FUNC_33DB_(arg1, arg2, arg3)
		return FileshareShowcaseIsPublishMode(arg2, arg0)
	end

	registerVal20.condition = __FUNC_33DB_
	registerVal19 = {registerVal20}
	registerVal1:mergeStateConditions(registerVal19)
	registerVal20 = Engine.GetGlobalModel()
	registerVal19 = Engine.GetModel(registerVal20, "FileshareRoot.PublishMode")
	local function __FUNC_3440_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "FileshareRoot.PublishMode"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal19, __FUNC_3440_)
	registerVal20 = Engine.GetGlobalModel()
	registerVal19 = Engine.GetModel(registerVal20, "FileshareRoot.PublishMode")
	local function __FUNC_356F_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "FileshareRoot.PublishMode"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
	end

	registerVal1:subscribeToModel(registerVal19, __FUNC_356F_)
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_373B_(arg1, arg2)
		local registerVal3 = FileshareIsCommunityMode(arg1, arg0)
		if not registerVal3 then
			ShowHeaderKickerAndIcon(registerVal1)
			SetFileshareShowcaseKickerText(arg0)
			SetIsInFileshare(arg0, "true")
		else
			registerVal3 = FileshareIsCommunityMode(arg1, arg0)
			if registerVal3 then
				ShowHeaderKickerAndIcon(registerVal1)
				FileshareSetCommunityKicker(arg0)
				SendClientScriptMenuChangeNotify(arg0, registerVal1, true)
				SetIsInFileshare(arg0, "true")
			end
		end
		if not nil then
			registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_373B_)
	local function __FUNC_391F_(arg0, arg1, arg2, arg3)
		local registerVal4 = FileshareShowcaseIsPublishMode(arg0, arg2)
		if registerVal4 then
			FileshareSetShowcasePublishMode(arg2, false)
			FileshareSetDirty(arg2)
			return true
		else
			GoBack(registerVal1, arg2)
			ClearSavedState(registerVal1, arg2)
			SendClientScriptMenuChangeNotify(arg2, arg1, false)
			MediaManagerClearDisplay(registerVal1, arg0, arg2)
			return true
		end
	end

	local function __FUNC_3AB9_(arg0, arg1, arg2)
		local registerVal3 = FileshareShowcaseIsPublishMode(arg0, arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
			return true
		else
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MP_BACK")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_391F_, __FUNC_3AB9_, false)
	local function __FUNC_3C5E_(arg1)
		local registerVal2 = FileshareHasContent(registerVal1, arg0)
		if not registerVal2 then
			MediaManagerClearDisplay(registerVal1, registerVal1, arg0)
		end
	end

	registerVal1:subscribeToGlobalModel(arg0, "FileshareRoot", "itemsCount", __FUNC_3C5E_)
	local function __FUNC_3CF7_(arg1)
		local registerVal2 = FileshareShowcaseIsPublishMode(registerVal1, arg0)
		if registerVal2 then
			SetHeadingKickerText("MENU_PUBLISH")
			SetLoseFocusToElement(registerVal1, "FileshareSelector0", arg0)
			MakeElementNotFocusable(registerVal1, "FileshareSelector0", arg0)
			MakeElementFocusable(registerVal1, "variantList", arg0)
			SetFocusToElement(registerVal1, "variantList", arg0)
		else
			registerVal2 = FileshareShowcaseIsPublishMode(registerVal1, arg0)
			if not registerVal2 then
				SetFileshareShowcaseKickerText(arg0)
				SetLoseFocusToElement(registerVal1, "variantList", arg0)
				MakeElementNotFocusable(registerVal1, "variantList", arg0)
				MakeElementFocusable(registerVal1, "FileshareSelector0", arg0)
				SetFocusToElement(registerVal1, "FileshareSelector0", arg0)
			end
		end
	end

	registerVal1:subscribeToGlobalModel(arg0, "FileshareRoot", "PublishMode", __FUNC_3CF7_)
	registerVal5.id = "variantList"
	registerVal6.id = "FileshareSelector0"
	registerVal12:setModel(registerVal1.buttonModel, arg0)
	registerVal19 = {}
	registerVal19.name = "menu_loaded"
	registerVal19.controller = arg0
	registerVal1:processEvent(registerVal19)
	registerVal19 = {}
	registerVal19.name = "update_state"
	registerVal19.menu = registerVal1
	registerVal1:processEvent(registerVal19)
	local function __FUNC_3F3E_(arg1)
		arg1.LeftPanel:close()
		arg1.variantList:close()
		arg1.FileshareSelector0:close()
		arg1.FileshareNoContent:close()
		arg1.TitleDotsWidget0:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.MenuFrame:close()
		arg1.SelfIdentityBadge:close()
		arg1.FETabBar0:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "MyShowcase_Variants.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_3F3E_)
	if __FUNC_53D_ then
		__FUNC_53D_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.MyShowcase_Variants = __FUNC_7AB_
