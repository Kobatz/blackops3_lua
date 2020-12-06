-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.LobbyStreamerBlackFade")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.playercard.SelfIdentityBadge")
require("ui.uieditor.menus.FileShare.Popups.FileshareOptions")
require("ui.uieditor.widgets.FileShare.FileshareSelectorItemWide")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.FileShare.SelectedFilmInformation")
require("ui.uieditor.widgets.FileShare.FileshareSpinner")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.FileShare.FileshareNoContent")
local function __FUNC_45B_(arg0, arg1)
	arg0.disablePopupOpenCloseAnim = true
	arg0.originalOcclusionChange = arg0.m_eventHandlers.occlusion_change
	local function __FUNC_54F_(arg0, arg2)
		if not arg2.occluded then
			CoD.FileshareUtility.SetCurrentCategory("recentgames")
			CoD.FileshareUtility.SetInShowcaseManager(arg1, false)
			CoD.FileshareUtility.SetDirty()
		end
		arg0.originalOcclusionChange(arg0, arg2)
	end

	arg0:registerEventHandler("occlusion_change", __FUNC_54F_)
end

local function __FUNC_6CB_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("MyShowcase_RecentGames")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "MyShowcase_RecentGames.buttonPrompts")
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
	local function __FUNC_1DC6_(arg1, arg2, arg3)
		return IsGlobalModelValueEqualTo(arg2, arg0, "hideWorldForStreamer", 0.000000)
	end

	registerVal9.condition = __FUNC_1DC6_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "hideWorldForStreamer")
	local function __FUNC_1E52_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hideWorldForStreamer"
		registerVal1:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_1E52_)
	registerVal1:addElement(registerVal5)
	registerVal1.FadeForStreamer = registerVal5
	local registerVal6 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6.titleLabel:setText(Engine.Localize("MENU_FILESHARE_RECENTGAMES_CAPS"))
	registerVal6.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_FILESHARE_RECENTGAMES_CAPS"))
	registerVal6.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_theater"))
	local function __FUNC_1F7A_(arg0, arg1)
		ShowHeaderKickerAndIcon(registerVal1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("menu_loaded", __FUNC_1F7A_)
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
	local function __FUNC_2012_(arg1)
		registerVal9:setModel(arg1, arg0)
	end

	registerVal9:subscribeToGlobalModel(arg0, "PerController", "identityBadge", __FUNC_2012_)
	local function __FUNC_2062_(arg1)
		registerVal9.CallingCard.CallingCardsFrameWidget:setModel(arg1, arg0)
	end

	registerVal9:subscribeToGlobalModel(arg0, "PerController", nil, __FUNC_2062_)
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
	local function __FUNC_2100_(arg0, arg1)
		SetElementDataSource(registerVal1, "RecentGamesList", "FilesharePublishedList")
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal10:registerEventHandler("menu_loaded", __FUNC_2100_)
	local function __FUNC_21D8_(arg1, arg2)
		FileshareSetSelectedItem(registerVal1, arg1, arg0, "")
		FileshareDownloadSummary(registerVal1, arg1, arg0)
		return nil
	end

	registerVal10:registerEventHandler("list_item_gain_focus", __FUNC_21D8_)
	local function __FUNC_2286_(arg1, arg2)
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

	registerVal10:registerEventHandler("gain_focus", __FUNC_2286_)
	local function __FUNC_2476_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal10:registerEventHandler("lose_focus", __FUNC_2476_)
	local function __FUNC_2546_(arg0, arg1, arg2, arg3)
		local registerVal4 = AlwaysFalse()
		if registerVal4 then
			OpenPopup(registerVal1, "FileshareOptions", arg2, "", "")
			return true
		end
	end

	local function __FUNC_25F0_(arg0, arg1, arg2)
		local registerVal3 = AlwaysFalse()
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_OPTIONS")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal10, arg0, Enum.LUIButton.LUI_KEY_START, "O", __FUNC_2546_, __FUNC_25F0_, false)
	local function __FUNC_2716_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal1, arg0, arg2)
		GoBackMultiple(registerVal1, arg2, "2")
		return true
	end

	local function __FUNC_27AE_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal10, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_2716_, __FUNC_27AE_, false)
	local function __FUNC_28AA_(arg1)
		UpdateDataSource(registerVal1, registerVal10, arg0)
	end

	registerVal10:subscribeToGlobalModel(arg0, "FileshareRoot", "dirty", __FUNC_28AA_)
	local function __FUNC_2906_(arg1)
		local registerVal2 = FileshareIsReady(arg0)
		if registerVal2 then
			UpdateDataSource(registerVal1, registerVal10, arg0)
		end
	end

	registerVal10:subscribeToGlobalModel(arg0, "FileshareRoot", "ready", __FUNC_2906_)
	registerVal1:addElement(registerVal10)
	registerVal1.RecentGamesList = registerVal10
	local registerVal11 = CoD.verticalCounter.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 263.000000, 463.000000)
	registerVal11:setTopBottom(true, false, 622.000000, 647.000000)
	local function __FUNC_2990_(arg0, arg1)
		SetAsListVerticalCounter(registerVal1, arg0, "RecentGamesList")
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal11:registerEventHandler("menu_loaded", __FUNC_2990_)
	registerVal1:addElement(registerVal11)
	registerVal1.verticalCounter0 = registerVal11
	local registerVal12 = CoD.SelectedFilmInformation.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 770.000000, 1188.000000)
	registerVal12:setTopBottom(true, false, 135.000000, 672.000000)
	registerVal1:addElement(registerVal12)
	registerVal1.SelectedFilmInformation = registerVal12
	local registerVal13 = CoD.FileshareSpinner.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 947.000000, 1011.000000)
	registerVal13:setTopBottom(true, false, 218.600000, 282.600000)
	registerVal13:setScale(0.800000)
	registerVal1:addElement(registerVal13)
	registerVal1.FileshareSpinner0 = registerVal13
	local registerVal14 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal14:setTopBottom(true, false, 86.000000, 703.250000)
	registerVal1:addElement(registerVal14)
	registerVal1.FEMenuLeftGraphics = registerVal14
	local registerVal15 = CoD.FileshareNoContent.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, false, 248.000000, 498.000000)
	registerVal15:setTopBottom(true, false, 315.000000, 375.000000)
	registerVal1:addElement(registerVal15)
	registerVal1.FileshareNoContent = registerVal15
	local function __FUNC_2A4C_(arg1)
		registerVal12:setModel(arg1, arg0)
	end

	registerVal12:linkToElementModel(registerVal10, nil, false, __FUNC_2A4C_)
	local registerVal16 = {}
	local registerVal17 = {}
	local function __FUNC_2A9E_()
		registerVal1:setupElementClipCounter(2.000000)
		registerVal12:completeAnimation()
		registerVal1.SelectedFilmInformation:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal1.FileshareSpinner0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal13, {})
	end

	registerVal17.DefaultClip = __FUNC_2A9E_
	registerVal16.DefaultState = registerVal17
	registerVal17 = {}
	local function __FUNC_2C0F_()
		registerVal1:setupElementClipCounter(2.000000)
		registerVal12:completeAnimation()
		registerVal1.SelectedFilmInformation:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal1.FileshareSpinner0:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal13, {})
	end

	registerVal17.DefaultClip = __FUNC_2C0F_
	registerVal16.Loading = registerVal17
	registerVal1.clipsPerState = registerVal16
	local registerVal18 = {}
	local registerVal19 = {}
	registerVal19.stateName = "Loading"
	local function __FUNC_2D7F_(arg1, arg2, arg3)
		local registerVal3 = IsGlobalModelValueGreaterThan(arg0, "fileshareRoot.itemsCount", 0.000000)
		return (not registerVal3)
	end

	registerVal19.condition = __FUNC_2D7F_
	registerVal18 = {registerVal19}
	registerVal1:mergeStateConditions(registerVal18)
	registerVal19 = Engine.GetGlobalModel()
	registerVal18 = Engine.GetModel(registerVal19, "fileshareRoot.itemsCount")
	local function __FUNC_2E12_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "fileshareRoot.itemsCount"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal18, __FUNC_2E12_)
	local function __FUNC_2F3E_(arg1, arg2)
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

	registerVal1:registerEventHandler("menu_loaded", __FUNC_2F3E_)
	local function __FUNC_3120_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		ClearSavedState(registerVal1, arg2)
		FileshareAbortSummaryDownload(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_31D8_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MP_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_3120_, __FUNC_31D8_, false)
	local function __FUNC_32D3_(arg1)
		local registerVal2 = IsGlobalModelValueEqualTo(registerVal1, arg0, "FileshareRoot.itemsCount", 0.000000)
		registerVal2 = FileshareIsCheckingPageFetchThreshold(arg0)
		if registerVal2 and registerVal2 then
			HideElement(registerVal1, "RecentGamesList")
			HideElement(registerVal1, "verticalCounter0")
			DisableNavigation(registerVal1, "RecentGamesList")
			FileshareSetShowFileDetails(arg0, false)
		else
			registerVal2 = FileshareIsCheckingPageFetchThreshold(arg0)
			if registerVal2 then
				ShowElement(registerVal1, "RecentGamesList")
				ShowElement(registerVal1, "verticalCounter0")
				EnableNavigation(registerVal1, "RecentGamesList")
				FileshareSetShowFileDetails(arg0, true)
			end
		end
	end

	registerVal1:subscribeToGlobalModel(arg0, "FileshareRoot", "itemsCount", __FUNC_32D3_)
	registerVal6:setModel(registerVal1.buttonModel, arg0)
	registerVal10.id = "RecentGamesList"
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
		registerVal1.RecentGamesList:processEvent(registerVal18)
	end
	local function __FUNC_34FC_(arg1)
		arg1.FadeForStreamer:close()
		arg1.MenuFrame:close()
		arg1.SelfIdentityBadge:close()
		arg1.RecentGamesList:close()
		arg1.verticalCounter0:close()
		arg1.SelectedFilmInformation:close()
		arg1.FileshareSpinner0:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.FileshareNoContent:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "MyShowcase_RecentGames.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_34FC_)
	if __FUNC_45B_ then
		__FUNC_45B_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.MyShowcase_RecentGames = __FUNC_6CB_
