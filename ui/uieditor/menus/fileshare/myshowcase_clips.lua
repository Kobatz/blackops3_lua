-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.LobbyStreamerBlackFade")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.playercard.SelfIdentityBadge")
require("ui.uieditor.menus.FileShare.Popups.FileshareOptions")
require("ui.uieditor.widgets.FileShare.FileshareSelectorItemWide")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.FileShare.SelectedFilmInformation")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.FileShare.FilesharePublishDetails")
require("ui.uieditor.widgets.FileShare.FileshareNoContent")
local function __FUNC_45C_(arg0, arg1)
	arg0.disablePopupOpenCloseAnim = true
	arg0.originalOcclusionChange = arg0.m_eventHandlers.occlusion_change
	local function __FUNC_553_(arg0, arg2)
		if not arg2.occluded then
			CoD.FileshareUtility.SetCurrentCategory("clip_private")
			CoD.FileshareUtility.SetInShowcaseManager(arg1, false)
			CoD.FileshareUtility.SetDirty()
		end
		arg0.originalOcclusionChange(arg0, arg2)
	end

	arg0:registerEventHandler("occlusion_change", __FUNC_553_)
end

local function __FUNC_6D0_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("MyShowcase_Clips")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "MyShowcase_Clips.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_fe_cp_background"))
	registerVal1:addElement(registerVal3)
	registerVal1.BlackBG = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 53.000000, 693.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.300000)
	registerVal1:addElement(registerVal4)
	registerVal1.BlackTint = registerVal4
	local registerVal5 = CoD.LobbyStreamerBlackFade.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Transparent"
	local function __FUNC_1F90_(arg1, arg2, arg3)
		return IsGlobalModelValueEqualTo(arg2, arg0, "hideWorldForStreamer", 0.000000)
	end

	registerVal9.condition = __FUNC_1F90_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "hideWorldForStreamer")
	local function __FUNC_201E_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hideWorldForStreamer"
		registerVal1:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_201E_)
	registerVal1:addElement(registerVal5)
	registerVal1.FadeForStreamer = registerVal5
	local registerVal6 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6.titleLabel:setText(Engine.Localize("MENU_FILESHARE_CATEGORY_CLIP_CAPS"))
	registerVal6.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_FILESHARE_CATEGORY_CLIP_CAPS"))
	local function __FUNC_2146_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal6.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage(FileshareGetShowcaseHeaderIcon(arg0, registerVal1)))
		end
	end

	registerVal6:subscribeToGlobalModel(arg0, "FileshareRoot", "PublishMode", __FUNC_2146_)
	local function __FUNC_22EC_(arg0, arg1)
		ShowHeaderKickerAndIcon(registerVal1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("menu_loaded", __FUNC_22EC_)
	registerVal1:addElement(registerVal6)
	registerVal1.MenuFrame = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 64.000000, 181.000000)
	registerVal7:setTopBottom(true, false, 11.000000, 32.500000)
	registerVal7:setAlpha(0.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.MyShowcaseBG = registerVal7
	registerVal8 = LUI.UITightText.new()
	registerVal8:setLeftRight(true, false, 68.000000, 160.000000)
	registerVal8:setTopBottom(true, false, 9.500000, 34.500000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setText(Engine.Localize("MENU_MEDIA_MYSHOWCASE"))
	registerVal8:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal8)
	registerVal1.MyShowcase = registerVal8
	registerVal9 = CoD.SelfIdentityBadge.new(registerVal1, arg0)
	registerVal9:setLeftRight(false, true, -435.000000, -92.000000)
	registerVal9:setTopBottom(true, false, 23.000000, 83.000000)
	local function __FUNC_2386_(arg1)
		registerVal9:setModel(arg1, arg0)
	end

	registerVal9:subscribeToGlobalModel(arg0, "PerController", "identityBadge", __FUNC_2386_)
	local function __FUNC_23D6_(arg1)
		registerVal9.CallingCard.CallingCardsFrameWidget:setModel(arg1, arg0)
	end

	registerVal9:subscribeToGlobalModel(arg0, "PerController", nil, __FUNC_23D6_)
	registerVal1:addElement(registerVal9)
	registerVal1.SelfIdentityBadge = registerVal9
	local registerVal10 = LUI.UIList.new(registerVal1, arg0, 7.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal10:makeFocusable()
	registerVal10:setLeftRight(true, false, 66.000000, 680.000000)
	registerVal10:setTopBottom(true, false, 135.000000, 616.000000)
	registerVal10:setWidgetType(CoD.FileshareSelectorItemWide)
	registerVal10:setHorizontalCount(3.000000)
	registerVal10:setVerticalCount(4.000000)
	registerVal10:setSpacing(7.000000)
	registerVal10:setDataSource("FilesharePublishedList")
	local registerVal14 = Engine.GetGlobalModel()
	local registerVal13 = Engine.GetModel(registerVal14, "FileshareRoot.PublishMode")
	local function __FUNC_2474_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "FileshareRoot.PublishMode"
		CoD.Menu.UpdateButtonShownState(registerVal10, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal10:subscribeToModel(registerVal13, __FUNC_2474_)
	local function __FUNC_2642_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "fileCategory"
		CoD.Menu.UpdateButtonShownState(registerVal10, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal10:linkToElementModel(registerVal10, "fileCategory", true, __FUNC_2642_)
	local function __FUNC_2801_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isPublishNew"
		CoD.Menu.UpdateButtonShownState(registerVal10, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal10:linkToElementModel(registerVal10, "isPublishNew", true, __FUNC_2801_)
	registerVal14 = Engine.GetGlobalModel()
	registerVal13 = Engine.GetModel(registerVal14, "fileshareRoot.itemsCount")
	local function __FUNC_29C1_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "fileshareRoot.itemsCount"
		CoD.Menu.UpdateButtonShownState(registerVal10, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal10:subscribeToModel(registerVal13, __FUNC_29C1_)
	local function __FUNC_2B8D_(arg1, arg2)
		local registerVal3 = FileshareIsCommunityMode(arg1, arg0)
		if registerVal3 then
			SetElementDataSource(registerVal1, "ClipsList", "FileshareCommunityList")
		else
			registerVal3 = FileshareIsCommunityMode(arg1, arg0)
			if not registerVal3 then
				SetElementDataSource(registerVal1, "ClipsList", "FilesharePublishedList")
			end
		end
		if not nil then
			registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal10:registerEventHandler("menu_loaded", __FUNC_2B8D_)
	local function __FUNC_2CE8_(arg1, arg2)
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
			end
		end
		return nil
	end

	registerVal10:registerEventHandler("list_item_gain_focus", __FUNC_2CE8_)
	local function __FUNC_2E60_(arg0, arg1)
		FileshareItemLoseFocus(arg0)
		return nil
	end

	registerVal10:registerEventHandler("list_item_lose_focus", __FUNC_2E60_)
	local function __FUNC_2EC0_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_START)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal10:registerEventHandler("gain_focus", __FUNC_2EC0_)
	local function __FUNC_30B2_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal10:registerEventHandler("lose_focus", __FUNC_30B2_)
	local function __FUNC_3182_(arg0, arg1, arg2, arg3)
		local registerVal4 = AlwaysFalse()
		if registerVal4 then
			OpenPopup(registerVal1, "FileshareOptions", arg2, "", "")
			return true
		end
	end

	local function __FUNC_322C_(arg0, arg1, arg2)
		local registerVal3 = AlwaysFalse()
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_OPTIONS")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal10, arg0, Enum.LUIButton.LUI_KEY_START, "O", __FUNC_3182_, __FUNC_322C_, false)
	local function __FUNC_3352_(arg0, arg1, arg2, arg3)
		local registerVal4 = FileshareShowcaseIsPublishMode(arg0, arg2)
		registerVal4 = IsSelfModelValueEqualTo(arg0, arg2, "fileCategory", "clip_private")
		registerVal4 = FileshareCanPublish(arg2)
		if registerVal4 and registerVal4 and registerVal4 then
			FileshareShowcasePublishSelectedItem(registerVal1, arg0, arg2)
			return true
		else
			registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isPublishNew")
			if registerVal4 then
				FileshareSetShowcasePublishMode(arg2, true)
				FileshareSetCurrentCategory(arg2, "clip_private")
				FileshareSetShowCreateButton(arg2, false)
				FileshareSetDirty(arg2)
				return true
			else
				registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isPublishNew")
				registerVal4 = FileshareHasContent(arg0, arg2)
				registerVal4 = FileshareShowcaseIsPublishMode(arg0, arg2)
				if not registerVal4 and registerVal4 and not registerVal4 then
					ProcessListAction(registerVal1, arg0, arg2)
					return true
				end
			end
		end
	end

	local function __FUNC_366F_(arg0, arg1, arg2)
		local registerVal3 = FileshareShowcaseIsPublishMode(arg0, arg2)
		registerVal3 = IsSelfModelValueEqualTo(arg0, arg2, "fileCategory", "clip_private")
		registerVal3 = FileshareCanPublish(arg2)
		if registerVal3 and registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_PUBLISH")
			return true
		else
			registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isPublishNew")
			if registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_PUBLISH")
				return true
			else
				registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isPublishNew")
				registerVal3 = FileshareHasContent(arg0, arg2)
				registerVal3 = FileshareShowcaseIsPublishMode(arg0, arg2)
				if not registerVal3 and registerVal3 and not registerVal3 then
					CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
					return true
				end
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal10, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_3352_, __FUNC_366F_, false)
	local function __FUNC_39BF_(arg1)
		UpdateDataSource(registerVal1, registerVal10, arg0)
	end

	registerVal10:subscribeToGlobalModel(arg0, "FileshareRoot", "dirty", __FUNC_39BF_)
	local function __FUNC_3A1A_(arg1)
		local registerVal2 = FileshareIsReady(arg0)
		if registerVal2 then
			UpdateDataSource(registerVal1, registerVal10, arg0)
		end
	end

	registerVal10:subscribeToGlobalModel(arg0, "FileshareRoot", "ready", __FUNC_3A1A_)
	registerVal1:addElement(registerVal10)
	registerVal1.ClipsList = registerVal10
	local registerVal11 = CoD.verticalCounter.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 263.000000, 463.000000)
	registerVal11:setTopBottom(true, false, 622.000000, 647.000000)
	local function __FUNC_3AA4_(arg0, arg1)
		SetAsListVerticalCounter(registerVal1, arg0, "ClipsList")
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal11:registerEventHandler("menu_loaded", __FUNC_3AA4_)
	registerVal1:addElement(registerVal11)
	registerVal1.verticalCounter0 = registerVal11
	local registerVal12 = CoD.SelectedFilmInformation.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 770.000000, 1188.000000)
	registerVal12:setTopBottom(true, false, 135.000000, 672.000000)
	local function __FUNC_3B5A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setAlpha(registerVal1)
		end
	end

	registerVal12:subscribeToGlobalModel(arg0, "FileshareRoot", "showFileDetails", __FUNC_3B5A_)
	registerVal1:addElement(registerVal12)
	registerVal1.SelectedFilmInformation = registerVal12
	registerVal13 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal13:setTopBottom(true, false, 86.000000, 703.250000)
	registerVal1:addElement(registerVal13)
	registerVal1.FEMenuLeftGraphics = registerVal13
	registerVal14 = CoD.FilesharePublishDetails.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, 770.000000, 1096.000000)
	registerVal14:setTopBottom(true, false, 138.000000, 612.000000)
	local function __FUNC_3BED_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14:setAlpha(registerVal1)
		end
	end

	registerVal14:subscribeToGlobalModel(arg0, "FileshareRoot", "showPublishNewDetails", __FUNC_3BED_)
	local registerVal17 = {}
	local registerVal18 = {}
	registerVal18.stateName = "Hidden"
	local function __FUNC_3C81_(arg1, arg2, arg3)
		return FileshareShowcaseIsPublishMode(arg2, arg0)
	end

	registerVal18.condition = __FUNC_3C81_
	registerVal17 = {registerVal18}
	registerVal14:mergeStateConditions(registerVal17)
	registerVal18 = Engine.GetGlobalModel()
	registerVal17 = Engine.GetModel(registerVal18, "FileshareRoot.PublishMode")
	local function __FUNC_3CE8_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "FileshareRoot.PublishMode"
		registerVal1:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:subscribeToModel(registerVal17, __FUNC_3CE8_)
	registerVal1:addElement(registerVal14)
	registerVal1.FilesharePublishDetails = registerVal14
	local registerVal15 = CoD.FileshareNoContent.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, false, 248.000000, 498.000000)
	registerVal15:setTopBottom(true, false, 315.000000, 375.000000)
	registerVal1:addElement(registerVal15)
	registerVal1.FileshareNoContent = registerVal15
	local function __FUNC_3E17_(arg1)
		registerVal12:setModel(arg1, arg0)
	end

	registerVal12:linkToElementModel(registerVal10, nil, false, __FUNC_3E17_)
	local registerVal16 = {}
	registerVal17 = {}
	local function __FUNC_3E66_()
		registerVal1:setupElementClipCounter(1.000000)
		registerVal12:completeAnimation()
		registerVal1.clipFinished(registerVal12, {})
	end

	registerVal17.DefaultClip = __FUNC_3E66_
	registerVal16.DefaultState = registerVal17
	registerVal17 = {}
	local function __FUNC_3F1F_()
		registerVal1:setupElementClipCounter(1.000000)
		registerVal12:completeAnimation()
		registerVal1.clipFinished(registerVal12, {})
	end

	registerVal17.DefaultClip = __FUNC_3F1F_
	registerVal16.Loading = registerVal17
	registerVal1.clipsPerState = registerVal16
	registerVal18 = {}
	local registerVal19 = {}
	registerVal19.stateName = "Loading"
	local function __FUNC_3FD7_(arg1, arg2, arg3)
		local registerVal3 = IsGlobalModelValueGreaterThan(arg0, "fileshareRoot.itemsCount", 0.000000)
		return (not registerVal3)
	end

	registerVal19.condition = __FUNC_3FD7_
	registerVal18 = {registerVal19}
	registerVal1:mergeStateConditions(registerVal18)
	registerVal19 = Engine.GetGlobalModel()
	registerVal18 = Engine.GetModel(registerVal19, "fileshareRoot.itemsCount")
	local function __FUNC_406A_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "fileshareRoot.itemsCount"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal18, __FUNC_406A_)
	registerVal19 = Engine.GetGlobalModel()
	registerVal18 = Engine.GetModel(registerVal19, "FileshareRoot.PublishMode")
	local function __FUNC_4196_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "FileshareRoot.PublishMode"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
	end

	registerVal1:subscribeToModel(registerVal18, __FUNC_4196_)
	local function __FUNC_4363_(arg1, arg2)
		local registerVal3 = FileshareIsCommunityMode(arg1, arg0)
		if not registerVal3 then
			ShowHeaderKickerAndIcon(registerVal1)
			SetHeadingKickerText("MENU_MY_THEATER")
		else
			registerVal3 = FileshareIsCommunityMode(arg1, arg0)
			if registerVal3 then
				ShowHeaderKickerAndIcon(registerVal1)
				FileshareSetCommunityKicker(arg0)
				SendClientScriptMenuChangeNotify(arg0, registerVal1, true)
				MediaManagerClearDisplay(registerVal1, arg1, arg0)
			end
		end
		if not nil then
			registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_4363_)
	local function __FUNC_4544_(arg0, arg1, arg2, arg3)
		local registerVal4 = FileshareShowcaseIsPublishMode(arg0, arg2)
		if registerVal4 then
			FileshareSetShowcasePublishMode(arg2, false)
			FileshareSetCurrentCategory(arg2, "clip")
			FileshareSetShowCreateButton(arg2, true)
			FileshareSetDirty(arg2)
			return true
		else
			PreserveThumbnails(arg2, true)
			GoBack(registerVal1, arg2)
			ClearMenuSavedState(arg1)
			PreserveThumbnails(arg2, false)
			FileshareAbortSummaryDownload(registerVal1, arg0, arg2)
			return true
		end
	end

	local function __FUNC_475D_(arg0, arg1, arg2)
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

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_4544_, __FUNC_475D_, false)
	local function __FUNC_4902_(arg1)
		local registerVal2 = IsGlobalModelValueEqualTo(registerVal1, arg0, "FileshareRoot.itemsCount", 0.000000)
		registerVal2 = FileshareIsCheckingPageFetchThreshold(arg0)
		if registerVal2 and registerVal2 then
			HideElement(registerVal1, "ClipsList")
			HideElement(registerVal1, "verticalCounter0")
			DisableNavigation(registerVal1, "ClipsList")
			FileshareSetShowFileDetails(arg0, false)
		else
			registerVal2 = FileshareIsCheckingPageFetchThreshold(arg0)
			if registerVal2 then
				ShowElement(registerVal1, "ClipsList")
				ShowElement(registerVal1, "verticalCounter0")
				EnableNavigation(registerVal1, "ClipsList")
				FileshareSetShowFileDetails(arg0, true)
			end
		end
	end

	registerVal1:subscribeToGlobalModel(arg0, "FileshareRoot", "itemsCount", __FUNC_4902_)
	registerVal6:setModel(registerVal1.buttonModel, arg0)
	registerVal10.id = "ClipsList"
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
		registerVal1.ClipsList:processEvent(registerVal18)
	end
	local function __FUNC_4B26_(arg1)
		arg1.FadeForStreamer:close()
		arg1.MenuFrame:close()
		arg1.SelfIdentityBadge:close()
		arg1.ClipsList:close()
		arg1.verticalCounter0:close()
		arg1.SelectedFilmInformation:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.FilesharePublishDetails:close()
		arg1.FileshareNoContent:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "MyShowcase_Clips.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_4B26_)
	if __FUNC_45C_ then
		__FUNC_45C_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.MyShowcase_Clips = __FUNC_6D0_
