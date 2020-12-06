-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.playercard.SelfIdentityBadge")
require("ui.uieditor.menus.FileShare.Popups.FileshareOptions")
require("ui.uieditor.widgets.FileShare.FileshareCustomGamesSelectorItem")
require("ui.uieditor.widgets.CustomGames.CustomGameItem")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.FileShare.FilesharePublishDetails")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.WeaponNameWidget")
require("ui.uieditor.widgets.FileShare.FileshareNoContent")
require("ui.uieditor.widgets.FileShare.MyShowcase_PublishedCustomGameInfo")
require("ui.uieditor.widgets.FileShare.MyShowcase_CustomGameListInfo")
local function __FUNC_512_(arg0, arg1)
	arg0.disablePopupOpenCloseAnim = true
	arg0.originalOcclusionChange = arg0.m_eventHandlers.occlusion_change
	local function __FUNC_607_(arg0, arg2)
		CoD.FileshareUtility.SetCurrentCategory("customgame")
		CoD.FileshareUtility.SetInShowcaseManager(arg1, false)
		CoD.FileshareUtility.SetDirty()
		if not arg2.occluded and arg2.occludedBy and arg2.occludedBy.id == "Menu.FilesharePublish" then
			SetFocusToElement(arg0, "CustomGamesList", arg1)
		end
		arg0.originalOcclusionChange(arg0, arg2)
	end

	arg0:registerEventHandler("occlusion_change", __FUNC_607_)
end

local function __FUNC_83D_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("MyShowcase_CustomGames")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "MyShowcase_CustomGames.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_fe_cp_background"))
	registerVal1:addElement(registerVal3)
	registerVal1.BlackBG = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 53.000000, 689.000000)
	registerVal4:setTopBottom(true, false, 80.000000, 669.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.300000)
	registerVal1:addElement(registerVal4)
	registerVal1.BlackTint = registerVal4
	local registerVal5 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal5:setTopBottom(true, false, 86.000000, 703.250000)
	registerVal1:addElement(registerVal5)
	registerVal1.FEMenuLeftGraphics = registerVal5
	local registerVal6 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6.titleLabel:setText(Engine.Localize("MENU_CUSTOMGAMES_CAPS"))
	registerVal6.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_CUSTOMGAMES_CAPS"))
	local function __FUNC_23D7_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal6.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage(FileshareGetShowcaseHeaderIcon(arg0, registerVal1)))
		end
	end

	registerVal6:subscribeToGlobalModel(arg0, "FileshareRoot", "PublishMode", __FUNC_23D7_)
	local function __FUNC_257C_(arg0, arg1)
		ShowHeaderKickerAndIcon(registerVal1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("menu_loaded", __FUNC_257C_)
	registerVal1:addElement(registerVal6)
	registerVal1.MenuFrame = registerVal6
	local registerVal7 = CoD.SelfIdentityBadge.new(registerVal1, arg0)
	registerVal7:setLeftRight(false, true, -435.000000, -92.000000)
	registerVal7:setTopBottom(true, false, 23.000000, 83.000000)
	local function __FUNC_2616_(arg1)
		registerVal7:setModel(arg1, arg0)
	end

	registerVal7:subscribeToGlobalModel(arg0, "PerController", "identityBadge", __FUNC_2616_)
	local function __FUNC_2666_(arg1)
		registerVal7.CallingCard.CallingCardsFrameWidget:setModel(arg1, arg0)
	end

	registerVal7:subscribeToGlobalModel(arg0, "PerController", nil, __FUNC_2666_)
	registerVal1:addElement(registerVal7)
	registerVal1.SelfIdentityBadge = registerVal7
	local registerVal8 = LUI.UIList.new(registerVal1, arg0, 10.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal8:makeFocusable()
	registerVal8:setLeftRight(true, false, 103.000000, 651.000000)
	registerVal8:setTopBottom(true, false, 129.000000, 591.000000)
	registerVal8:setWidgetType(CoD.FileshareCustomGamesSelectorItem)
	registerVal8:setHorizontalCount(3.000000)
	registerVal8:setVerticalCount(4.000000)
	registerVal8:setSpacing(10.000000)
	registerVal8:setDataSource("FilesharePublishedList")
	local function __FUNC_2704_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isPublishNew"
		CoD.Menu.UpdateButtonShownState(registerVal8, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(registerVal8, registerVal1, arg0, Enum.LUIButton.LUI_KEY_START)
	end

	registerVal8:linkToElementModel(registerVal8, "isPublishNew", true, __FUNC_2704_)
	local registerVal12 = Engine.GetGlobalModel()
	local registerVal11 = Engine.GetModel(registerVal12, "FileshareRoot.PublishMode")
	local function __FUNC_2924_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "FileshareRoot.PublishMode"
		CoD.Menu.UpdateButtonShownState(registerVal8, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_2924_)
	local function __FUNC_2AF2_(arg1, arg2)
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

	registerVal8:registerEventHandler("menu_loaded", __FUNC_2AF2_)
	local function __FUNC_2C56_(arg1, arg2)
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

	registerVal8:registerEventHandler("list_item_gain_focus", __FUNC_2C56_)
	local function __FUNC_2E2E_(arg0, arg1)
		FileshareItemLoseFocus(arg0)
		return nil
	end

	registerVal8:registerEventHandler("list_item_lose_focus", __FUNC_2E2E_)
	local function __FUNC_2E8C_(arg1, arg2)
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

	registerVal8:registerEventHandler("gain_focus", __FUNC_2E8C_)
	local function __FUNC_307E_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("lose_focus", __FUNC_307E_)
	local function __FUNC_314E_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isPublishNew")
		registerVal4 = FileshareShowcaseIsPublishMode(arg0, arg2)
		if registerVal4 and not registerVal4 then
			FileshareSetShowcasePublishMode(arg2, true)
			return true
		else
			registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isPublishNew")
			if not registerVal4 then
				ProcessListAction(registerVal1, arg0, arg2)
				return true
			end
		end
	end

	local function __FUNC_32A0_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isPublishNew")
		registerVal3 = FileshareShowcaseIsPublishMode(arg0, arg2)
		if registerVal3 and not registerVal3 then
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

	registerVal1:AddButtonCallbackFunction(registerVal8, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_314E_, __FUNC_32A0_, false)
	local function __FUNC_34B8_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isPublishNew")
		if not registerVal4 then
			OpenPopup(registerVal1, "FileshareOptions", arg2, "", "")
			return true
		end
	end

	local function __FUNC_358F_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_OPTIONS")
		local registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isPublishNew")
		if not registerVal3 then
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal8, arg0, Enum.LUIButton.LUI_KEY_START, "O", __FUNC_34B8_, __FUNC_358F_, true)
	local function __FUNC_36DD_(arg1)
		UpdateDataSource(registerVal1, registerVal8, arg0)
	end

	registerVal8:subscribeToGlobalModel(arg0, "FileshareRoot", "dirty", __FUNC_36DD_)
	local function __FUNC_373A_(arg1)
		local registerVal2 = FileshareIsReady(arg0)
		if registerVal2 then
			UpdateDataSource(registerVal1, registerVal8, arg0)
		end
	end

	registerVal8:subscribeToGlobalModel(arg0, "FileshareRoot", "ready", __FUNC_373A_)
	registerVal1:addElement(registerVal8)
	registerVal1.FileshareCustomGamesList = registerVal8
	local registerVal9 = LUI.UIList.new(registerVal1, arg0, 10.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal9:makeFocusable()
	registerVal9:setLeftRight(true, false, 103.000000, 651.000000)
	registerVal9:setTopBottom(true, false, 129.000000, 591.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setWidgetType(CoD.CustomGameItem)
	registerVal9:setHorizontalCount(3.000000)
	registerVal9:setVerticalCount(4.000000)
	registerVal9:setSpacing(10.000000)
	registerVal9:setDataSource("MediaManagerCustomGamesList")
	local function __FUNC_37C4_(arg1, arg2)
		FileshareShowcasePublishSetSelectedItem(registerVal1, arg1, arg0)
		FileshareSetShowFileDetails(arg0, false)
		SetElementStateByElementName(registerVal1, "EmblemName", arg0, "NoText")
		SetSelectedCustomGame(arg1, arg0)
		return nil
	end

	registerVal9:registerEventHandler("list_item_gain_focus", __FUNC_37C4_)
	local function __FUNC_3903_(arg1, arg2)
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

	registerVal9:registerEventHandler("gain_focus", __FUNC_3903_)
	local function __FUNC_3A93_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("lose_focus", __FUNC_3A93_)
	local function __FUNC_3B62_(arg0, arg1, arg2, arg3)
		local registerVal4 = FileshareCanPublish(arg2)
		registerVal4 = FileshareCanPublishItem(registerVal1, arg0, arg2)
		if registerVal4 and registerVal4 then
			FileshareShowcasePublishSelectedItem(registerVal1, arg0, arg2)
			return true
		end
	end

	local function __FUNC_3C44_(arg0, arg1, arg2)
		local registerVal3 = FileshareCanPublish(arg2)
		registerVal3 = FileshareCanPublishItem(registerVal1, arg0, arg2)
		if registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_PUBLISH")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal9, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_3B62_, __FUNC_3C44_, false)
	registerVal1:addElement(registerVal9)
	registerVal1.CustomGamesList = registerVal9
	local registerVal10 = CoD.verticalCounter.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 271.000000, 471.000000)
	registerVal10:setTopBottom(true, false, 614.000000, 639.000000)
	local function __FUNC_3DB9_(arg0, arg1)
		SetAsListVerticalCounter(registerVal1, arg0, "FileshareCustomGamesList")
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal10:registerEventHandler("menu_loaded", __FUNC_3DB9_)
	registerVal1:addElement(registerVal10)
	registerVal1.verticalCounter = registerVal10
	registerVal11 = CoD.FilesharePublishDetails.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 758.000000, 1084.000000)
	registerVal11:setTopBottom(true, false, 143.000000, 617.000000)
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "Hidden"
	local function __FUNC_3E7D_(arg1, arg2, arg3)
		return FileshareShowcaseIsPublishMode(arg2, arg0)
	end

	registerVal15.condition = __FUNC_3E7D_
	registerVal14 = {registerVal15}
	registerVal11:mergeStateConditions(registerVal14)
	registerVal15 = Engine.GetGlobalModel()
	registerVal14 = Engine.GetModel(registerVal15, "FileshareRoot.PublishMode")
	local function __FUNC_3EE4_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "FileshareRoot.PublishMode"
		registerVal1:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:subscribeToModel(registerVal14, __FUNC_3EE4_)
	registerVal1:addElement(registerVal11)
	registerVal1.FilesharePublishDetails = registerVal11
	registerVal12 = CoD.WeaponNameWidget.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 759.000000, 1182.000000)
	registerVal12:setTopBottom(true, false, 414.000000, 448.000000)
	registerVal1:addElement(registerVal12)
	registerVal1.GameName = registerVal12
	local registerVal13 = CoD.FileshareNoContent.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 246.000000, 496.000000)
	registerVal13:setTopBottom(true, false, 331.000000, 391.000000)
	registerVal1:addElement(registerVal13)
	registerVal1.NoContentLabel = registerVal13
	registerVal14 = CoD.MyShowcase_PublishedCustomGameInfo.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, 721.500000, 1221.500000)
	registerVal14:setTopBottom(true, false, 129.000000, 611.000000)
	local registerVal17 = {}
	local registerVal18 = {}
	registerVal18.stateName = "Visible"
	local function __FUNC_4013_(arg1, arg2, arg3)
		return FileshareHasContent(arg2, arg0)
	end

	registerVal18.condition = __FUNC_4013_
	registerVal17 = {registerVal18}
	registerVal14:mergeStateConditions(registerVal17)
	registerVal18 = Engine.GetGlobalModel()
	registerVal17 = Engine.GetModel(registerVal18, "fileshareRoot.itemsCount")
	local function __FUNC_406D_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "fileshareRoot.itemsCount"
		registerVal1:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:subscribeToModel(registerVal17, __FUNC_406D_)
	registerVal18 = Engine.GetGlobalModel()
	registerVal17 = Engine.GetModel(registerVal18, "FileshareRoot.PublishMode")
	local function __FUNC_419A_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "FileshareRoot.PublishMode"
		registerVal1:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:subscribeToModel(registerVal17, __FUNC_419A_)
	registerVal1:addElement(registerVal14)
	registerVal1.PublishedCustomGameInfo = registerVal14
	registerVal15 = CoD.MyShowcase_CustomGameListInfo.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, false, 721.500000, 1221.500000)
	registerVal15:setTopBottom(true, false, 129.000000, 507.500000)
	registerVal18 = {}
	local registerVal19 = {}
	registerVal19.stateName = "Visible"
	local function __FUNC_42C7_(arg1, arg2, arg3)
		return FileshareHasContent(arg2, arg0)
	end

	registerVal19.condition = __FUNC_42C7_
	registerVal18 = {registerVal19}
	registerVal15:mergeStateConditions(registerVal18)
	registerVal19 = Engine.GetGlobalModel()
	registerVal18 = Engine.GetModel(registerVal19, "fileshareRoot.itemsCount")
	local function __FUNC_4321_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "fileshareRoot.itemsCount"
		registerVal1:updateElementState(registerVal15, registerVal4)
	end

	registerVal15:subscribeToModel(registerVal18, __FUNC_4321_)
	registerVal19 = Engine.GetGlobalModel()
	registerVal18 = Engine.GetModel(registerVal19, "FileshareRoot.PublishMode")
	local function __FUNC_444E_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "FileshareRoot.PublishMode"
		registerVal1:updateElementState(registerVal15, registerVal4)
	end

	registerVal15:subscribeToModel(registerVal18, __FUNC_444E_)
	registerVal1:addElement(registerVal15)
	registerVal1.MyShowcaseCustomGameListInfo = registerVal15
	local function __FUNC_457B_(arg1)
		registerVal12:setModel(arg1, arg0)
	end

	registerVal12:linkToElementModel(registerVal9, nil, false, __FUNC_457B_)
	local function __FUNC_45CA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.weaponNameLabel:setText(registerVal1)
		end
	end

	registerVal12:linkToElementModel(registerVal9, "name", true, __FUNC_45CA_)
	local function __FUNC_4681_(arg1)
		registerVal14:setModel(arg1, arg0)
	end

	registerVal14:linkToElementModel(registerVal8, nil, false, __FUNC_4681_)
	local function __FUNC_46D2_(arg1)
		registerVal15:setModel(arg1, arg0)
	end

	registerVal15:linkToElementModel(registerVal9, nil, false, __FUNC_46D2_)
	local registerVal16 = {}
	registerVal17 = {}
	local function __FUNC_4722_()
		registerVal1:setupElementClipCounter(6.000000)
		registerVal8:completeAnimation()
		registerVal1.FileshareCustomGamesList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.CustomGamesList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal1.FilesharePublishDetails:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.GameName:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal1.PublishedCustomGameInfo:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.MyShowcaseCustomGameListInfo:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_4722_
	registerVal16.DefaultState = registerVal17
	registerVal17 = {}
	local function __FUNC_4A1C_()
		registerVal1:setupElementClipCounter(5.000000)
		registerVal8:completeAnimation()
		registerVal1.FileshareCustomGamesList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal11:completeAnimation()
		registerVal1.FilesharePublishDetails:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.GameName:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal1.PublishedCustomGameInfo:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.MyShowcaseCustomGameListInfo:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_4A1C_
	registerVal16.NoContentPublishMode = registerVal17
	registerVal17 = {}
	local function __FUNC_4CBB_()
		registerVal1:setupElementClipCounter(5.000000)
		registerVal8:completeAnimation()
		registerVal1.FileshareCustomGamesList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.CustomGamesList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal12:completeAnimation()
		registerVal1.GameName:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal1.PublishedCustomGameInfo:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.MyShowcaseCustomGameListInfo:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_4CBB_
	registerVal16.Publish = registerVal17
	registerVal17 = {}
	local function __FUNC_4F4F_()
		registerVal1:setupElementClipCounter(6.000000)
		registerVal8:completeAnimation()
		registerVal1.FileshareCustomGamesList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.CustomGamesList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal1.FilesharePublishDetails:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.GameName:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal1.PublishedCustomGameInfo:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.MyShowcaseCustomGameListInfo:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_4F4F_
	registerVal16.PublishButton = registerVal17
	registerVal1.clipsPerState = registerVal16
	registerVal18 = {}
	registerVal19 = {}
	registerVal19.stateName = "NoContentPublishMode"
	local function __FUNC_5248_(arg1, arg2, arg3)
		local registerVal3 = FileshareShowcaseIsPublishMode(arg2, arg0)
		if registerVal3 then
			registerVal3 = FileshareHasContent(arg2, arg0)
		end
		return (not registerVal3)
	end

	registerVal19.condition = __FUNC_5248_
	local registerVal20 = {}
	registerVal20.stateName = "Publish"
	local function __FUNC_52E9_(arg1, arg2, arg3)
		return FileshareShowcaseIsPublishMode(arg2, arg0)
	end

	registerVal20.condition = __FUNC_52E9_
	local registerVal21 = {}
	registerVal21.stateName = "PublishButton"
	local function __FUNC_5350_(arg1, arg2, arg3)
		return IsGlobalModelValueEqualTo(arg2, arg0, "FileshareRoot.showPublishNewDetails", 1.000000)
	end

	registerVal21.condition = __FUNC_5350_
	registerVal18 = {registerVal19, registerVal20, registerVal21}
	registerVal1:mergeStateConditions(registerVal18)
	registerVal19 = Engine.GetGlobalModel()
	registerVal18 = Engine.GetModel(registerVal19, "FileshareRoot.PublishMode")
	local function __FUNC_53ED_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "FileshareRoot.PublishMode"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal18, __FUNC_53ED_)
	registerVal19 = Engine.GetGlobalModel()
	registerVal18 = Engine.GetModel(registerVal19, "fileshareRoot.itemsCount")
	local function __FUNC_551B_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "fileshareRoot.itemsCount"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal18, __FUNC_551B_)
	registerVal19 = Engine.GetGlobalModel()
	registerVal18 = Engine.GetModel(registerVal19, "FileshareRoot.showPublishNewDetails")
	local function __FUNC_5646_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "FileshareRoot.showPublishNewDetails"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal18, __FUNC_5646_)
	registerVal19 = Engine.GetGlobalModel()
	registerVal18 = Engine.GetModel(registerVal19, "FileshareRoot.PublishMode")
	local function __FUNC_577D_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "FileshareRoot.PublishMode"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
	end

	registerVal1:subscribeToModel(registerVal18, __FUNC_577D_)
	local function __FUNC_594B_(arg1, arg2)
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
				SetIsInFileshare(arg0, "true")
			end
		end
		if not nil then
			registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_594B_)
	local function __FUNC_5AF1_(arg0, arg1, arg2, arg3)
		local registerVal4 = FileshareShowcaseIsPublishMode(arg0, arg2)
		if registerVal4 then
			FileshareSetShowcasePublishMode(arg2, false)
			return true
		else
			GoBack(registerVal1, arg2)
			ClearSavedState(registerVal1, arg2)
			SetInCustomGames(false)
			return true
		end
	end

	local function __FUNC_5C18_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_5AF1_, __FUNC_5C18_, false)
	local function __FUNC_5D15_(arg1)
		local registerVal2 = FileshareShowcaseIsPublishMode(registerVal1, arg0)
		if registerVal2 then
			SetHeadingKickerText("MENU_PUBLISH")
			SetLoseFocusToElement(registerVal1, "FileshareCustomGamesList", arg0)
			MakeElementNotFocusable(registerVal1, "FileshareCustomGamesList", arg0)
			MakeElementFocusable(registerVal1, "CustomGamesList", arg0)
			SetFocusToElement(registerVal1, "CustomGamesList", arg0)
			SetElementStateByElementName(registerVal1, "EmblemName", arg0, "NoText")
		else
			registerVal2 = FileshareShowcaseIsPublishMode(registerVal1, arg0)
			if not registerVal2 then
				SetFileshareShowcaseKickerText(arg0)
				SetLoseFocusToElement(registerVal1, "CustomGamesList", arg0)
				MakeElementNotFocusable(registerVal1, "CustomGamesList", arg0)
				MakeElementFocusable(registerVal1, "FileshareCustomGamesList", arg0)
				SetFocusToElement(registerVal1, "FileshareCustomGamesList", arg0)
				SetElementStateByElementName(registerVal1, "LocalEmblemName", arg0, "NoText")
			end
		end
	end

	registerVal1:subscribeToGlobalModel(arg0, "FileshareRoot", "PublishMode", __FUNC_5D15_)
	local function __FUNC_5FFB_(arg1)
		local registerVal2 = IsGlobalModelValueEqualTo(registerVal1, arg0, "FileshareRoot.itemsCount", 0.000000)
		registerVal2 = FileshareIsCheckingPageFetchThreshold(arg0)
		if registerVal2 and registerVal2 then
			HideElement(registerVal1, "FileshareCustomGamesList")
			HideElement(registerVal1, "verticalCounter")
			DisableNavigation(registerVal1, "FileshareCustomGamesList")
			FileshareSetShowFileDetails(arg0, false)
		else
			registerVal2 = FileshareIsCheckingPageFetchThreshold(arg0)
			if registerVal2 then
				ShowElement(registerVal1, "FileshareCustomGamesList")
				ShowElement(registerVal1, "verticalCounter")
				EnableNavigation(registerVal1, "FileshareCustomGamesList")
				FileshareSetShowFileDetails(arg0, true)
			end
		end
	end

	registerVal1:subscribeToGlobalModel(arg0, "FileshareRoot", "itemsCount", __FUNC_5FFB_)
	registerVal6:setModel(registerVal1.buttonModel, arg0)
	registerVal8.id = "FileshareCustomGamesList"
	registerVal9.id = "CustomGamesList"
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
		registerVal1.FileshareCustomGamesList:processEvent(registerVal18)
	end
	local function __FUNC_622C_(arg1)
		arg1.FEMenuLeftGraphics:close()
		arg1.MenuFrame:close()
		arg1.SelfIdentityBadge:close()
		arg1.FileshareCustomGamesList:close()
		arg1.CustomGamesList:close()
		arg1.verticalCounter:close()
		arg1.FilesharePublishDetails:close()
		arg1.GameName:close()
		arg1.NoContentLabel:close()
		arg1.PublishedCustomGameInfo:close()
		arg1.MyShowcaseCustomGameListInfo:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "MyShowcase_CustomGames.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_622C_)
	if __FUNC_512_ then
		__FUNC_512_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.MyShowcase_CustomGames = __FUNC_83D_
