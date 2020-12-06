-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.playercard.SelfIdentityBadge")
require("ui.uieditor.menus.FileShare.Popups.FileshareOptions")
require("ui.uieditor.widgets.FileShare.FileshareEmblemSelectorItem")
require("ui.uieditor.widgets.Craft.EmblemEditor.EmblemItem")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.FileShare.FileshareSelectedItemInfo")
require("ui.uieditor.widgets.FileShare.FilesharePublishDetails")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.WeaponNameWidget")
require("ui.uieditor.widgets.FileShare.FileshareNoContent")
require("ui.uieditor.widgets.BorderBakedBlur")
require("ui.uieditor.widgets.BorderBakedSolid")
local function __FUNC_581_(arg0, arg1)
	MediaManagerFetchEmblemsData(arg1)
end

local function __FUNC_5DE_(arg0, arg1)
	arg0.disablePopupOpenCloseAnim = true
	arg0.originalOcclusionChange = arg0.m_eventHandlers.occlusion_change
	local function __FUNC_73E_(arg0, arg2)
		CoD.FileshareUtility.SetCurrentCategory("emblem")
		CoD.FileshareUtility.SetInShowcaseManager(arg1, false)
		CoD.FileshareUtility.SetDirty()
		if not arg2.occluded and arg2.occludedBy and arg2.occludedBy.id == "Menu.FilesharePublish" then
			SetFocusToElement(arg0, "emblemList", arg1)
		end
		arg0.originalOcclusionChange(arg0, arg2)
	end

	arg0:registerEventHandler("occlusion_change", __FUNC_73E_)
	local function __FUNC_96C_(arg2)
		if arg0.EmblemName then
			local registerVal1 = FileshareHasContent(nil, arg1)
			if registerVal1 == true then
				arg0.EmblemName:setAlpha(1.000000)
			else
				arg0.EmblemName:setAlpha(0.000000)
			end
		end
		registerVal1 = FileshareShowcaseIsPublishMode(arg0, arg1)
		if registerVal1 then
			arg0.EmblemName:setAlpha(0.000000)
		end
	end

	arg0:subscribeToGlobalModel(arg1, "FileshareRoot", "itemsCount", __FUNC_96C_)
end

local function __FUNC_AAF_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("MyShowcase_Emblems")
	if __FUNC_581_ then
		__FUNC_581_(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "MyShowcase_Emblems.buttonPrompts")
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
	registerVal7.titleLabel:setText(Engine.Localize("MENU_EMBLEMS_CAPS"))
	registerVal7.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_EMBLEMS_CAPS"))
	local function __FUNC_2DAC_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal7.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage(FileshareGetShowcaseHeaderIcon(arg0, registerVal1)))
		end
	end

	registerVal7:subscribeToGlobalModel(arg0, "FileshareRoot", "PublishMode", __FUNC_2DAC_)
	local function __FUNC_2F54_(arg0, arg1)
		ShowHeaderKickerAndIcon(registerVal1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("menu_loaded", __FUNC_2F54_)
	registerVal1:addElement(registerVal7)
	registerVal1.MenuFrame = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 64.000000, 181.000000)
	registerVal8:setTopBottom(true, false, 11.000000, 32.500000)
	registerVal8:setAlpha(0.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.MyShowcaseBG = registerVal8
	local registerVal9 = LUI.UITightText.new()
	registerVal9:setLeftRight(true, false, 68.000000, 160.000000)
	registerVal9:setTopBottom(true, false, 9.500000, 34.500000)
	registerVal9:setRGB(0.000000, 0.000000, 0.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setText(Engine.Localize("MENU_MEDIA_MYSHOWCASE"))
	registerVal9:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal9)
	registerVal1.MyShowcase = registerVal9
	local registerVal10 = CoD.SelfIdentityBadge.new(registerVal1, arg0)
	registerVal10:setLeftRight(false, true, -435.000000, -92.000000)
	registerVal10:setTopBottom(true, false, 23.000000, 83.000000)
	local function __FUNC_2FEE_(arg1)
		registerVal10:setModel(arg1, arg0)
	end

	registerVal10:subscribeToGlobalModel(arg0, "PerController", "identityBadge", __FUNC_2FEE_)
	local function __FUNC_303E_(arg1)
		registerVal10.CallingCard.CallingCardsFrameWidget:setModel(arg1, arg0)
	end

	registerVal10:subscribeToGlobalModel(arg0, "PerController", nil, __FUNC_303E_)
	registerVal1:addElement(registerVal10)
	registerVal1.SelfIdentityBadge = registerVal10
	local registerVal11 = LUI.UIList.new(registerVal1, arg0, 10.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal11:makeFocusable()
	registerVal11:setLeftRight(true, false, 103.000000, 651.000000)
	registerVal11:setTopBottom(true, false, 129.000000, 591.000000)
	registerVal11:setWidgetType(CoD.FileshareEmblemSelectorItem)
	registerVal11:setHorizontalCount(3.000000)
	registerVal11:setVerticalCount(4.000000)
	registerVal11:setSpacing(10.000000)
	registerVal11:setDataSource("FilesharePublishedList")
	local function __FUNC_30DC_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isPublishNew"
		CoD.Menu.UpdateButtonShownState(registerVal11, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(registerVal11, registerVal1, arg0, Enum.LUIButton.LUI_KEY_START)
	end

	registerVal11:linkToElementModel(registerVal11, "isPublishNew", true, __FUNC_30DC_)
	local function __FUNC_32FC_(arg1, arg2)
		local registerVal3 = FileshareIsCommunityMode(arg1, arg0)
		if registerVal3 then
			SetElementDataSource(registerVal1, "FileshareEmblemList", "FileshareCommunityList")
		else
			registerVal3 = FileshareIsCommunityMode(arg1, arg0)
			if not registerVal3 then
				SetElementDataSource(registerVal1, "FileshareEmblemList", "FilesharePublishedList")
			end
		end
		if not nil then
			registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal11:registerEventHandler("menu_loaded", __FUNC_32FC_)
	local function __FUNC_3462_(arg1, arg2)
		local registerVal3 = IsSelfModelValueTrue(arg1, arg0, "isPublishNew")
		if not registerVal3 then
			FileshareSetSelectedItem(registerVal1, arg1, arg0, "")
			FileshareSetShowFileDetails(arg0, true)
			FileshareSetShowPublishNewDetails(arg0, false)
		else
			registerVal3 = IsSelfModelValueTrue(arg1, arg0, "isPublishNew")
			if registerVal3 then
				FileshareSetShowFileDetails(arg0, false)
				FileshareSetShowPublishNewDetails(arg0, true)
				SetElementStateByElementName(registerVal1, "EmblemName", arg0, "NoText")
			end
		end
		return nil
	end

	registerVal11:registerEventHandler("list_item_gain_focus", __FUNC_3462_)
	local function __FUNC_363A_(arg0, arg1)
		FileshareItemLoseFocus(arg0)
		return nil
	end

	registerVal11:registerEventHandler("list_item_lose_focus", __FUNC_363A_)
	local function __FUNC_3698_(arg1, arg2)
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

	registerVal11:registerEventHandler("gain_focus", __FUNC_3698_)
	local function __FUNC_388A_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal11:registerEventHandler("lose_focus", __FUNC_388A_)
	local function __FUNC_395A_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isPublishNew")
		if registerVal4 then
			FileshareSetShowcasePublishMode(arg2, true)
			return true
		else
			registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isPublishNew")
			if not registerVal4 then
				FileshareSetSelectedItem(registerVal1, arg0, arg2, "true")
				FileshareOpenFullscreenView(registerVal1, arg0, arg2, arg1)
				return true
			end
		end
	end

	local function __FUNC_3AC2_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isPublishNew")
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_PUBLISH")
			return true
		else
			registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isPublishNew")
			if not registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
				return true
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal11, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_395A_, __FUNC_3AC2_, false)
	local function __FUNC_3C98_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isPublishNew")
		if not registerVal4 then
			OpenPopup(registerVal1, "FileshareOptions", arg2, "", "")
			return true
		end
	end

	local function __FUNC_3D6F_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_OPTIONS")
		local registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isPublishNew")
		if not registerVal3 then
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal11, arg0, Enum.LUIButton.LUI_KEY_START, "O", __FUNC_3C98_, __FUNC_3D6F_, true)
	local function __FUNC_3EBD_(arg1)
		UpdateDataSource(registerVal1, registerVal11, arg0)
	end

	registerVal11:subscribeToGlobalModel(arg0, "FileshareRoot", "dirty", __FUNC_3EBD_)
	local function __FUNC_3F1A_(arg1)
		local registerVal2 = FileshareIsReady(arg0)
		if registerVal2 then
			UpdateDataSource(registerVal1, registerVal11, arg0)
		end
	end

	registerVal11:subscribeToGlobalModel(arg0, "FileshareRoot", "ready", __FUNC_3F1A_)
	registerVal1:addElement(registerVal11)
	registerVal1.FileshareEmblemList = registerVal11
	local registerVal12 = LUI.UIList.new(registerVal1, arg0, 10.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal12:makeFocusable()
	registerVal12:setLeftRight(true, false, 103.000000, 651.000000)
	registerVal12:setTopBottom(true, false, 129.000000, 591.000000)
	registerVal12:setWidgetType(CoD.EmblemItem)
	registerVal12:setHorizontalCount(3.000000)
	registerVal12:setVerticalCount(4.000000)
	registerVal12:setSpacing(10.000000)
	registerVal12:setDataSource("ShowcaseEmblemList")
	local function __FUNC_3FA4_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isBMClassified"
		CoD.Menu.UpdateButtonShownState(registerVal12, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal12:linkToElementModel(registerVal12, "isBMClassified", true, __FUNC_3FA4_)
	local function __FUNC_416A_(arg1, arg2)
		FileshareShowcasePublishSetSelectedItem(registerVal1, arg1, arg0)
		FileshareSetShowFileDetails(arg0, false)
		SetElementStateByElementName(registerVal1, "EmblemName", arg0, "NoText")
		return nil
	end

	registerVal12:registerEventHandler("list_item_gain_focus", __FUNC_416A_)
	local function __FUNC_4278_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		return registerVal3
	end

	registerVal12:registerEventHandler("gain_focus", __FUNC_4278_)
	local function __FUNC_4473_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal12:registerEventHandler("lose_focus", __FUNC_4473_)
	local function __FUNC_4542_(arg0, arg1, arg2, arg3)
		local registerVal4 = FileshareCanPublish(arg2)
		registerVal4 = FileshareCanPublishItem(registerVal1, arg0, arg2)
		if registerVal4 and registerVal4 then
			FileshareShowcasePublishSelectedItem(registerVal1, arg0, arg2)
			return true
		end
	end

	local function __FUNC_4624_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_PUBLISH")
		local registerVal3 = FileshareCanPublish(arg2)
		registerVal3 = FileshareCanPublishItem(registerVal1, arg0, arg2)
		if registerVal3 and registerVal3 then
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal12, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_4542_, __FUNC_4624_, true)
	local function __FUNC_4799_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
		if not registerVal4 then
			EmblemSelect_SetAsEmblem(registerVal1, arg0, arg2)
			PlaySoundSetSound(registerVal1, "toggle")
			UpdateSelfState(registerVal1, arg2)
			return true
		end
	end

	local function __FUNC_48B8_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "")
			return false
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal12, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, nil, __FUNC_4799_, __FUNC_48B8_, false)
	local registerVal15 = {}
	local registerVal16 = {}
	registerVal16.stateName = "EmptySlot"
	local function __FUNC_4A08_(arg1, arg2, arg3)
		local registerVal3 = Emblem_IsOccupied(arg2, arg0)
		return (not registerVal3)
	end

	registerVal16.condition = __FUNC_4A08_
	local registerVal17 = {}
	registerVal17.stateName = "Equipped"
	local function __FUNC_4A67_(arg1, arg2, arg3)
		local registerVal3 = Emblems_IsDefaultEmblemEquipped(arg1, arg2, arg0)
		if registerVal3 then
			registerVal3 = IsLive()
		end
		return (not registerVal3)
	end

	registerVal17.condition = __FUNC_4A67_
	local registerVal18 = {}
	registerVal18.stateName = "NonClickableEmptySlot"
	local function __FUNC_4AF5_(arg1, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg0, "isNonClickableEmblem", 1.000000)
	end

	registerVal18.condition = __FUNC_4AF5_
	registerVal15 = {registerVal16, registerVal17, registerVal18}
	registerVal12:mergeStateConditions(registerVal15)
	local function __FUNC_4B80_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		registerVal1:updateElementState(registerVal12, registerVal4)
	end

	registerVal12:linkToElementModel(registerVal12, "isBMClassified", true, __FUNC_4B80_)
	local function __FUNC_4CA4_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "emblemIndex"
		registerVal1:updateElementState(registerVal12, registerVal4)
	end

	registerVal12:linkToElementModel(registerVal12, "emblemIndex", true, __FUNC_4CA4_)
	registerVal16 = Engine.GetGlobalModel()
	registerVal15 = Engine.GetModel(registerVal16, "lobbyRoot.lobbyNetworkMode")
	local function __FUNC_4DC5_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNetworkMode"
		registerVal1:updateElementState(registerVal12, registerVal4)
	end

	registerVal12:subscribeToModel(registerVal15, __FUNC_4DC5_)
	registerVal16 = Engine.GetGlobalModel()
	registerVal15 = Engine.GetModel(registerVal16, "lobbyRoot.lobbyNav")
	local function __FUNC_4EF4_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		registerVal1:updateElementState(registerVal12, registerVal4)
	end

	registerVal12:subscribeToModel(registerVal15, __FUNC_4EF4_)
	local function __FUNC_501C_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isNonClickableEmblem"
		registerVal1:updateElementState(registerVal12, registerVal4)
	end

	registerVal12:linkToElementModel(registerVal12, "isNonClickableEmblem", true, __FUNC_501C_)
	registerVal1:addElement(registerVal12)
	registerVal1.emblemList = registerVal12
	local registerVal13 = CoD.verticalCounter.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 271.000000, 471.000000)
	registerVal13:setTopBottom(true, false, 614.000000, 639.000000)
	local function __FUNC_5146_(arg0, arg1)
		SetAsListVerticalCounter(registerVal1, arg0, "FileshareEmblemList")
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal13:registerEventHandler("menu_loaded", __FUNC_5146_)
	registerVal1:addElement(registerVal13)
	registerVal1.verticalCounter0 = registerVal13
	local registerVal14 = CoD.FileshareSelectedItemInfo.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, 758.000000, 1185.000000)
	registerVal14:setTopBottom(true, false, 494.000000, 578.000000)
	local function __FUNC_5204_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14:setAlpha(registerVal1)
		end
	end

	registerVal14:subscribeToGlobalModel(arg0, "FileshareRoot", "showFileDetails", __FUNC_5204_)
	registerVal1:addElement(registerVal14)
	registerVal1.FileshareSelectedItemInfo0 = registerVal14
	registerVal15 = CoD.FilesharePublishDetails.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, false, 758.000000, 1084.000000)
	registerVal15:setTopBottom(true, false, 140.000000, 614.000000)
	local function __FUNC_5299_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15:setAlpha(registerVal1)
		end
	end

	registerVal15:subscribeToGlobalModel(arg0, "FileshareRoot", "showPublishNewDetails", __FUNC_5299_)
	registerVal18 = {}
	local registerVal19 = {}
	registerVal19.stateName = "Hidden"
	local function __FUNC_532D_(arg1, arg2, arg3)
		return FileshareShowcaseIsPublishMode(arg2, arg0)
	end

	registerVal19.condition = __FUNC_532D_
	registerVal18 = {registerVal19}
	registerVal15:mergeStateConditions(registerVal18)
	registerVal19 = Engine.GetGlobalModel()
	registerVal18 = Engine.GetModel(registerVal19, "FileshareRoot.PublishMode")
	local function __FUNC_5394_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "FileshareRoot.PublishMode"
		registerVal1:updateElementState(registerVal15, registerVal4)
	end

	registerVal15:subscribeToModel(registerVal18, __FUNC_5394_)
	registerVal1:addElement(registerVal15)
	registerVal1.FilesharePublishDetails = registerVal15
	registerVal16 = CoD.WeaponNameWidget.new(registerVal1, arg0)
	registerVal16:setLeftRight(true, false, 759.000000, 1182.000000)
	registerVal16:setTopBottom(true, false, 414.000000, 448.000000)
	registerVal1:addElement(registerVal16)
	registerVal1.LocalEmblemName = registerVal16
	registerVal17 = CoD.WeaponNameWidget.new(registerVal1, arg0)
	registerVal17:setLeftRight(true, false, 759.000000, 1182.000000)
	registerVal17:setTopBottom(true, false, 414.000000, 448.000000)
	local function __FUNC_54C3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17:setAlpha(registerVal1)
		end
	end

	registerVal17:subscribeToGlobalModel(arg0, "FileshareRoot", "showFileDetails", __FUNC_54C3_)
	registerVal1:addElement(registerVal17)
	registerVal1.EmblemName = registerVal17
	registerVal18 = CoD.FileshareNoContent.new(registerVal1, arg0)
	registerVal18:setLeftRight(true, false, 246.000000, 496.000000)
	registerVal18:setTopBottom(true, false, 331.000000, 391.000000)
	registerVal1:addElement(registerVal18)
	registerVal1.FileshareNoContent = registerVal18
	registerVal19 = CoD.BorderBakedBlur.new(registerVal1, arg0)
	registerVal19:setLeftRight(false, false, 115.000000, 547.000000)
	registerVal19:setTopBottom(true, false, 133.000000, 406.000000)
	registerVal19:setAlpha(0.400000)
	registerVal1:addElement(registerVal19)
	registerVal1.BorderBakedBlur1 = registerVal19
	local registerVal20 = CoD.BorderBakedBlur.new(registerVal1, arg0)
	registerVal20:setLeftRight(false, false, 115.000000, 547.000000)
	registerVal20:setTopBottom(true, false, 133.000000, 406.000000)
	local function __FUNC_5555_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal20:setAlpha(registerVal1)
		end
	end

	registerVal20:subscribeToGlobalModel(arg0, "FileshareRoot", "showFileDetails", __FUNC_5555_)
	registerVal1:addElement(registerVal20)
	registerVal1.BorderBakedBlur0 = registerVal20
	local registerVal21 = CoD.BorderBakedSolid.new(registerVal1, arg0)
	registerVal21:setLeftRight(false, false, 115.000000, 547.000000)
	registerVal21:setTopBottom(true, false, 133.000000, 406.000000)
	registerVal21:setAlpha(0.500000)
	registerVal1:addElement(registerVal21)
	registerVal1.BorderBakedSolid1 = registerVal21
	local registerVal22 = CoD.BorderBakedSolid.new(registerVal1, arg0)
	registerVal22:setLeftRight(false, false, 115.000000, 547.000000)
	registerVal22:setTopBottom(true, false, 133.000000, 406.000000)
	local function __FUNC_55E9_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal22:setAlpha(registerVal1)
		end
	end

	registerVal22:subscribeToGlobalModel(arg0, "FileshareRoot", "showFileDetails", __FUNC_55E9_)
	registerVal1:addElement(registerVal22)
	registerVal1.BorderBakedSolid0 = registerVal22
	local registerVal23 = LUI.UIImage.new()
	registerVal23:setLeftRight(true, false, 762.000000, 1180.000000)
	registerVal23:setTopBottom(true, false, 140.000000, 398.000000)
	local function __FUNC_567D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal23:setAlpha(registerVal1)
		end
	end

	registerVal23:subscribeToGlobalModel(arg0, "FileshareRoot", "showFileDetails", __FUNC_567D_)
	registerVal1:addElement(registerVal23)
	registerVal1.WCFileshareIconExtraCamRender = registerVal23
	local registerVal24 = LUI.UIElement.new()
	registerVal24:setLeftRight(true, false, 762.000000, 1180.000000)
	registerVal24:setTopBottom(true, false, 140.000000, 398.000000)
	registerVal24:setAlpha(0.000000)
	local function __FUNC_5711_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal24:setupEmblem(registerVal1)
		end
	end

	registerVal24:subscribeToGlobalModel(arg0, "Customization", "type", __FUNC_5711_)
	registerVal1:addElement(registerVal24)
	registerVal1.DrawEmblem = registerVal24
	local function __FUNC_57A8_(arg1)
		registerVal14:setModel(arg1, arg0)
	end

	registerVal14:linkToElementModel(registerVal11, nil, false, __FUNC_57A8_)
	local function __FUNC_57FA_(arg1)
		registerVal16:setModel(arg1, arg0)
	end

	registerVal16:linkToElementModel(registerVal12, nil, false, __FUNC_57FA_)
	local function __FUNC_584A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16.weaponNameLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal16:linkToElementModel(registerVal12, "emblemName", true, __FUNC_584A_)
	local function __FUNC_5927_(arg1)
		registerVal17:setModel(arg1, arg0)
	end

	registerVal17:linkToElementModel(registerVal11, nil, false, __FUNC_5927_)
	local function __FUNC_5976_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.weaponNameLabel:setText(registerVal1)
		end
	end

	registerVal17:linkToElementModel(registerVal11, "fileName", true, __FUNC_5976_)
	local function __FUNC_5A2D_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal23:setupWCFileshareIconExtraCamRender(GetFileshareExtraCamParameters(arg0, registerVal1))
		end
	end

	registerVal23:linkToElementModel(registerVal11, "fileId", true, __FUNC_5A2D_)
	local registerVal25 = {}
	local registerVal26 = {}
	local function __FUNC_5B0F_()
		registerVal1:setupElementClipCounter(6.000000)
		registerVal11:completeAnimation()
		registerVal1.FileshareEmblemList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.emblemList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal16:completeAnimation()
		registerVal1.LocalEmblemName:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal16, {})
		registerVal19:completeAnimation()
		registerVal1.BorderBakedBlur1:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal19, {})
		registerVal21:completeAnimation()
		registerVal1.BorderBakedSolid1:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal21, {})
		registerVal24:completeAnimation()
		registerVal1.DrawEmblem:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal24, {})
	end

	registerVal26.DefaultClip = __FUNC_5B0F_
	registerVal25.DefaultState = registerVal26
	registerVal26 = {}
	local function __FUNC_5DE6_()
		registerVal1:setupElementClipCounter(6.000000)
		registerVal11:completeAnimation()
		registerVal1.FileshareEmblemList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.emblemList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal16:completeAnimation()
		registerVal1.LocalEmblemName:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal16, {})
		registerVal19:completeAnimation()
		registerVal1.BorderBakedBlur1:setAlpha(0.400000)
		registerVal1.clipFinished(registerVal19, {})
		registerVal21:completeAnimation()
		registerVal1.BorderBakedSolid1:setAlpha(0.500000)
		registerVal1.clipFinished(registerVal21, {})
		registerVal24:completeAnimation()
		registerVal1.DrawEmblem:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal24, {})
	end

	registerVal26.DefaultClip = __FUNC_5DE6_
	registerVal25.Publish = registerVal26
	registerVal26 = {}
	local function __FUNC_60C8_()
		registerVal1:setupElementClipCounter(6.000000)
		registerVal11:completeAnimation()
		registerVal1.FileshareEmblemList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.emblemList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal16:completeAnimation()
		registerVal1.LocalEmblemName:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal16, {})
		registerVal19:completeAnimation()
		registerVal1.BorderBakedBlur1:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal19, {})
		registerVal21:completeAnimation()
		registerVal1.BorderBakedSolid1:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal21, {})
		registerVal24:completeAnimation()
		registerVal1.DrawEmblem:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal24, {})
	end

	registerVal26.DefaultClip = __FUNC_60C8_
	registerVal25.NoContentPublishMode = registerVal26
	registerVal1.clipsPerState = registerVal25
	local registerVal27 = {}
	local registerVal28 = {}
	registerVal28.stateName = "NoContentPublishMode"
	local function __FUNC_63A2_(arg1, arg2, arg3)
		local registerVal3 = FileshareShowcaseIsPublishMode(arg2, arg0)
		if registerVal3 then
			registerVal3 = FileshareHasContent(arg2, arg0)
		end
		return (not registerVal3)
	end

	registerVal28.condition = __FUNC_63A2_
	local registerVal29 = {}
	registerVal29.stateName = "Publish"
	local function __FUNC_6441_(arg1, arg2, arg3)
		return FileshareShowcaseIsPublishMode(arg2, arg0)
	end

	registerVal29.condition = __FUNC_6441_
	registerVal27 = {registerVal28, registerVal29}
	registerVal1:mergeStateConditions(registerVal27)
	registerVal28 = Engine.GetGlobalModel()
	registerVal27 = Engine.GetModel(registerVal28, "FileshareRoot.PublishMode")
	local function __FUNC_64A8_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "FileshareRoot.PublishMode"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal27, __FUNC_64A8_)
	registerVal28 = Engine.GetGlobalModel()
	registerVal27 = Engine.GetModel(registerVal28, "fileshareRoot.itemsCount")
	local function __FUNC_65D7_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "fileshareRoot.itemsCount"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal27, __FUNC_65D7_)
	registerVal28 = Engine.GetGlobalModel()
	registerVal27 = Engine.GetModel(registerVal28, "FileshareRoot.PublishMode")
	local function __FUNC_6702_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "FileshareRoot.PublishMode"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
	end

	registerVal1:subscribeToModel(registerVal27, __FUNC_6702_)
	local function __FUNC_68CF_(arg1, arg2)
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
				MediaManagerClearDisplay(registerVal1, arg1, arg0)
				SetIsInFileshare(arg0, "true")
			end
		end
		if not nil then
			registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_68CF_)
	local function __FUNC_6AAB_(arg0, arg1, arg2, arg3)
		local registerVal4 = FileshareShowcaseIsPublishMode(arg0, arg2)
		if registerVal4 then
			FileshareSetShowcasePublishMode(arg2, false)
			return true
		else
			GoBack(registerVal1, arg2)
			ClearSavedState(registerVal1, arg2)
			return true
		end
	end

	local function __FUNC_6BAA_(arg0, arg1, arg2)
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

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_6AAB_, __FUNC_6BAA_, false)
	local function __FUNC_6D4E_(arg1)
		local registerVal2 = FileshareShowcaseIsPublishMode(registerVal1, arg0)
		if registerVal2 then
			SetHeadingKickerText("MENU_PUBLISH")
			SetLoseFocusToElement(registerVal1, "FileshareEmblemList", arg0)
			MakeElementNotFocusable(registerVal1, "FileshareEmblemList", arg0)
			MakeElementFocusable(registerVal1, "emblemList", arg0)
			SetFocusToElement(registerVal1, "emblemList", arg0)
			SetElementStateByElementName(registerVal1, "EmblemName", arg0, "NoText")
		else
			registerVal2 = FileshareShowcaseIsPublishMode(registerVal1, arg0)
			if not registerVal2 then
				SetFileshareShowcaseKickerText(arg0)
				SetLoseFocusToElement(registerVal1, "emblemList", arg0)
				MakeElementNotFocusable(registerVal1, "emblemList", arg0)
				MakeElementFocusable(registerVal1, "FileshareEmblemList", arg0)
				SetFocusToElement(registerVal1, "FileshareEmblemList", arg0)
			end
		end
	end

	registerVal1:subscribeToGlobalModel(arg0, "FileshareRoot", "PublishMode", __FUNC_6D4E_)
	local function __FUNC_6FF8_(arg1)
		local registerVal2 = IsGlobalModelValueEqualTo(registerVal1, arg0, "FileshareRoot.itemsCount", 0.000000)
		registerVal2 = FileshareIsCheckingPageFetchThreshold(arg0)
		if registerVal2 and registerVal2 then
			HideElement(registerVal1, "FileshareEmblemList")
			HideElement(registerVal1, "verticalCounter0")
			DisableNavigation(registerVal1, "FileshareEmblemList")
			FileshareSetShowFileDetails(arg0, false)
		else
			registerVal2 = FileshareIsCheckingPageFetchThreshold(arg0)
			if registerVal2 then
				ShowElement(registerVal1, "FileshareEmblemList")
				ShowElement(registerVal1, "verticalCounter0")
				EnableNavigation(registerVal1, "FileshareEmblemList")
				FileshareSetShowFileDetails(arg0, true)
			end
		end
	end

	registerVal1:subscribeToGlobalModel(arg0, "FileshareRoot", "itemsCount", __FUNC_6FF8_)
	registerVal7:setModel(registerVal1.buttonModel, arg0)
	registerVal11.id = "FileshareEmblemList"
	registerVal12.id = "emblemList"
	registerVal27 = {}
	registerVal27.name = "menu_loaded"
	registerVal27.controller = arg0
	registerVal1:processEvent(registerVal27)
	registerVal27 = {}
	registerVal27.name = "update_state"
	registerVal27.menu = registerVal1
	registerVal1:processEvent(registerVal27)
	registerVal25 = registerVal1:restoreState()
	if not registerVal25 then
		registerVal27 = {}
		registerVal27.name = "gain_focus"
		registerVal27.controller = arg0
		registerVal1.emblemList:processEvent(registerVal27)
	end
	local function __FUNC_7228_(arg1)
		arg1.LeftPanel:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.MenuFrame:close()
		arg1.SelfIdentityBadge:close()
		arg1.FileshareEmblemList:close()
		arg1.emblemList:close()
		arg1.verticalCounter0:close()
		arg1.FileshareSelectedItemInfo0:close()
		arg1.FilesharePublishDetails:close()
		arg1.LocalEmblemName:close()
		arg1.EmblemName:close()
		arg1.FileshareNoContent:close()
		arg1.BorderBakedBlur1:close()
		arg1.BorderBakedBlur0:close()
		arg1.BorderBakedSolid1:close()
		arg1.BorderBakedSolid0:close()
		arg1.WCFileshareIconExtraCamRender:close()
		arg1.DrawEmblem:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "MyShowcase_Emblems.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_7228_)
	if __FUNC_5DE_ then
		__FUNC_5DE_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.MyShowcase_Emblems = __FUNC_AAF_
