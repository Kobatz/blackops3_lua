-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.StartMenu.CP.StartMenu_CampaignBG")
require("ui.uieditor.widgets.Lobby.LobbyStreamerBlackFade")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.playercard.SelfIdentityBadge")
require("ui.uieditor.widgets.Lobby.Common.FE_TabBar")
require("ui.uieditor.widgets.Groups.GroupsBetaSafeAreaContainer")
local function __FUNC_3CC_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "SocialMainMenu")
	local registerVal4 = Engine.CreateModel(registerVal2, "anyChildSelected")
	Engine.SetModelValue(registerVal4, false)
	registerVal4 = Engine.CreateModel(registerVal2, "managePartySubListFocus")
	Engine.SetModelValue(registerVal4, false)
	registerVal4 = Engine.CreateModel(registerVal2, "managePartySubListSelected")
	Engine.SetModelValue(registerVal4, false)
	registerVal4 = Engine.CreateModel(registerVal2, "managePartyButtonText")
	Engine.SetModelValue(registerVal4, "")
	arg0:setModel(registerVal2)
	arg0.disableLeaderChangePopupShutdown = true
end

local function __FUNC_636_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Social_Main")
	if __FUNC_3CC_ then
		__FUNC_3CC_(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Social_Main.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, -10.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.230000, 0.230000, 0.230000)
	registerVal1:addElement(registerVal3)
	registerVal1.LeftPanel = registerVal3
	local registerVal4 = CoD.StartMenu_CampaignBG.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal4:setAlpha(0.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.StartMenuCampaignBG = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, -10.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setImage(RegisterImage("uie_default_white_255"))
	registerVal1:addElement(registerVal5)
	registerVal1.black = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6:setImage(RegisterImage("uie_fe_cp_background"))
	registerVal1:addElement(registerVal6)
	registerVal1.BlackBG = registerVal6
	local registerVal7 = CoD.LobbyStreamerBlackFade.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 720.000000)
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Transparent"
	local function __FUNC_1D73_(arg1, arg2, arg3)
		return IsGlobalModelValueEqualTo(arg2, arg0, "hideWorldForStreamer", 0.000000)
	end

	registerVal11.condition = __FUNC_1D73_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetGlobalModel()
	registerVal10 = Engine.GetModel(registerVal11, "hideWorldForStreamer")
	local function __FUNC_1DFE_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hideWorldForStreamer"
		registerVal1:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:subscribeToModel(registerVal10, __FUNC_1DFE_)
	registerVal1:addElement(registerVal7)
	registerVal1.FadeForStreamer = registerVal7
	local registerVal8 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 18.000000, 70.000000)
	registerVal8:setTopBottom(true, false, 91.000000, 708.250000)
	registerVal1:addElement(registerVal8)
	registerVal1.FEMenuLeftGraphics = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal9:setTopBottom(false, false, -276.000000, -237.000000)
	registerVal9:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.CategoryListPanel0 = registerVal9
	registerVal10 = LUI.UIFrame.new(registerVal1, arg0, 0.000000, 0.000000, false)
	registerVal10:setLeftRight(false, false, -574.000000, 576.000000)
	registerVal10:setTopBottom(false, false, -208.000000, 312.000000)
	registerVal1:addElement(registerVal10)
	registerVal1.TabFrame = registerVal10
	registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal11:setTopBottom(false, false, -275.000000, -236.000000)
	registerVal11:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal11)
	registerVal1.CategoryListPanel = registerVal11
	local registerVal12 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal12:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal12.titleLabel:setText(Engine.Localize("MENU_SOCIAL_CAPS"))
	registerVal12.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_SOCIAL_CAPS"))
	registerVal1:addElement(registerVal12)
	registerVal1.SocialFrame = registerVal12
	local registerVal13 = CoD.SelfIdentityBadge.new(registerVal1, arg0)
	registerVal13:setLeftRight(false, true, -435.000000, -92.000000)
	registerVal13:setTopBottom(true, false, 24.000000, 84.000000)
	local function __FUNC_1F26_(arg1)
		registerVal13:setModel(arg1, arg0)
	end

	registerVal13:subscribeToGlobalModel(arg0, "PerController", "identityBadge", __FUNC_1F26_)
	local function __FUNC_1F76_(arg1)
		registerVal13.CallingCard.CallingCardsFrameWidget:setModel(arg1, arg0)
	end

	registerVal13:subscribeToGlobalModel(arg0, "PerController", nil, __FUNC_1F76_)
	registerVal1:addElement(registerVal13)
	registerVal1.SelfIdentityBadge = registerVal13
	local registerVal14 = CoD.FE_TabBar.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, 0.000000, 2496.000000)
	registerVal14:setTopBottom(true, false, 85.000000, 126.000000)
	registerVal14.Tabs.grid:setDataSource("SocialTabs")
	local function __FUNC_2014_(arg1, arg2)
		SetSocialTab(registerVal1, arg1, arg0)
		FetchOnlineFriendsData(registerVal1, arg1, arg0)
		PlaySoundSetSound(registerVal1, "tab_changed")
		return nil
	end

	registerVal14:registerEventHandler("list_active_changed", __FUNC_2014_)
	registerVal1:addElement(registerVal14)
	registerVal1.tabs = registerVal14
	local registerVal15 = CoD.GroupsBetaSafeAreaContainer.new(registerVal1, arg0)
	registerVal15:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal15:setTopBottom(false, false, -360.000000, 360.000000)
	local function __FUNC_20E6_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal15:registerEventHandler("menu_loaded", __FUNC_20E6_)
	local registerVal18 = {}
	local registerVal19 = {}
	registerVal19.stateName = "Visible"
	local function __FUNC_2179_(arg1, arg2, arg3)
		local registerVal3 = IsGroupsBeta()
		if registerVal3 then
			registerVal3 = IsSocialGroupsTabOpen(arg0)
		end
		return registerVal3
	end

	registerVal19.condition = __FUNC_2179_
	registerVal18 = {registerVal19}
	registerVal15:mergeStateConditions(registerVal18)
	registerVal19 = Engine.GetGlobalModel()
	registerVal18 = Engine.GetModel(registerVal19, "socialRoot.tab")
	local function __FUNC_21F9_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "socialRoot.tab"
		registerVal1:updateElementState(registerVal15, registerVal4)
	end

	registerVal15:subscribeToModel(registerVal18, __FUNC_21F9_)
	registerVal1:addElement(registerVal15)
	registerVal1.GroupsBetaSafeAreaContainer = registerVal15
	local function __FUNC_231C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:changeFrameWidget(registerVal1)
		end
	end

	registerVal10:linkToElementModel(registerVal14.Tabs.grid, "tabWidget", true, __FUNC_231C_)
	local registerVal16 = {}
	local registerVal17 = {}
	local function __FUNC_23BA_()
		registerVal1:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal1.LeftPanel:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.StartMenuCampaignBG:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.black:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.BlackBG:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal6, {})
	end

	registerVal17.DefaultClip = __FUNC_23BA_
	registerVal16.DefaultState = registerVal17
	registerVal17 = {}
	local function __FUNC_25C7_()
		registerVal1:setupElementClipCounter(2.000000)
		registerVal4:completeAnimation()
		registerVal1.StartMenuCampaignBG:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.black:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal5, {})
	end

	registerVal17.DefaultClip = __FUNC_25C7_
	registerVal16.InSafehouse = registerVal17
	registerVal1.clipsPerState = registerVal16
	registerVal18 = {}
	registerVal19 = {}
	registerVal19.stateName = "InSafehouse"
	local function __FUNC_2722_(arg0, arg1, arg2)
		return InSafehouse()
	end

	registerVal19.condition = __FUNC_2722_
	registerVal18 = {registerVal19}
	registerVal1:mergeStateConditions(registerVal18)
	local function __FUNC_276D_(arg1, arg2)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal1:registerEventHandler("on_session_start", __FUNC_276D_)
	local function __FUNC_2859_(arg1, arg2)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal1:registerEventHandler("on_session_end", __FUNC_2859_)
	registerVal19 = Engine.GetGlobalModel()
	registerVal18 = Engine.GetModel(registerVal19, "SocialMainMenu.managePartySubListFocus")
	local function __FUNC_2945_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "SocialMainMenu.managePartySubListFocus"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal1:subscribeToModel(registerVal18, __FUNC_2945_)
	registerVal19 = Engine.GetGlobalModel()
	registerVal18 = Engine.GetModel(registerVal19, "SocialMainMenu.managePartySubListSelected")
	local function __FUNC_2B1F_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "SocialMainMenu.managePartySubListSelected"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal1:subscribeToModel(registerVal18, __FUNC_2B1F_)
	registerVal19 = Engine.GetGlobalModel()
	registerVal18 = Engine.GetModel(registerVal19, "socialRoot.tab")
	local function __FUNC_2CFA_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "socialRoot.tab"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_BACK)
	end

	registerVal1:subscribeToModel(registerVal18, __FUNC_2CFA_)
	registerVal19 = Engine.GetGlobalModel()
	registerVal18 = Engine.GetModel(registerVal19, "socialRoot.sort")
	local function __FUNC_2F19_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "socialRoot.sort"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_BACK)
	end

	registerVal1:subscribeToModel(registerVal18, __FUNC_2F19_)
	local function __FUNC_30D5_(arg1, arg2)
		SocialEnablePresenceCacheAutoupdate(arg0, true)
		InitializeGroups(registerVal1, arg1, arg0)
		PreserveThumbnails(arg0, true)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_opened", __FUNC_30D5_)
	local function __FUNC_31D8_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsLobbyHost()
		registerVal4 = IsGlobalModelValueTrue(arg0, arg2, "SocialMainMenu.managePartySubListFocus")
		registerVal4 = IsGlobalModelValueTrue(arg0, arg2, "SocialMainMenu.managePartySubListSelected")
		registerVal4 = IsGlobalModelValueEqualTo(arg0, arg2, "socialRoot.tab", "party")
		if registerVal4 and registerVal4 and not registerVal4 and registerVal4 then
			return true
		else
			registerVal4 = IsLobbyHost()
			registerVal4 = IsGlobalModelValueTrue(arg0, arg2, "SocialMainMenu.managePartySubListSelected")
			registerVal4 = IsGlobalModelValueEqualTo(arg0, arg2, "socialRoot.tab", "party")
			if registerVal4 and registerVal4 and registerVal4 then
				return true
			end
		end
	end

	local function __FUNC_33AE_(arg0, arg1, arg2)
		local registerVal3 = IsLobbyHost()
		registerVal3 = IsGlobalModelValueTrue(arg0, arg2, "SocialMainMenu.managePartySubListFocus")
		registerVal3 = IsGlobalModelValueTrue(arg0, arg2, "SocialMainMenu.managePartySubListSelected")
		registerVal3 = IsGlobalModelValueEqualTo(arg0, arg2, "socialRoot.tab", "party")
		if registerVal3 and registerVal3 and not registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		else
			registerVal3 = IsLobbyHost()
			registerVal3 = IsGlobalModelValueTrue(arg0, arg2, "SocialMainMenu.managePartySubListSelected")
			registerVal3 = IsGlobalModelValueEqualTo(arg0, arg2, "socialRoot.tab", "party")
			if registerVal3 and registerVal3 and registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_ACCEPT")
				return true
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_31D8_, __FUNC_33AE_, true)
	local function __FUNC_36AD_(arg0, arg1, arg2, arg3)
		HandleSocialMenuBack(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_3712_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "S", __FUNC_36AD_, __FUNC_3712_, false)
	local function __FUNC_3806_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsGlobalModelValueEqualTo(arg0, arg2, "socialRoot.tab", "friends")
		registerVal4 = IsGlobalModelValueEqualTo(arg0, arg2, "socialRoot.sort", Enum.PresenceSorting.PRESENCE_SORTING_ONLINE_MOST_RECENT)
		if registerVal4 and registerVal4 then
			SocialToggleSorting(registerVal1, arg0, arg2)
			UpdateButtonPromptState(arg1, arg0, arg2, Enum.LUIButton.LUI_KEY_BACK)
			return true
		else
			registerVal4 = IsGlobalModelValueEqualTo(arg0, arg2, "socialRoot.tab", "friends")
			registerVal4 = IsGlobalModelValueEqualTo(arg0, arg2, "socialRoot.sort", Enum.PresenceSorting.PRESENCE_SORTING_ALPHABETICAL)
			if registerVal4 and registerVal4 then
				SocialToggleSorting(registerVal1, arg0, arg2)
				UpdateButtonPromptState(arg1, arg0, arg2, Enum.LUIButton.LUI_KEY_BACK)
				return true
			end
		end
	end

	local function __FUNC_3AC3_(arg0, arg1, arg2)
		local registerVal3 = IsGlobalModelValueEqualTo(arg0, arg2, "socialRoot.tab", "friends")
		registerVal3 = IsGlobalModelValueEqualTo(arg0, arg2, "socialRoot.sort", Enum.PresenceSorting.PRESENCE_SORTING_ONLINE_MOST_RECENT)
		if registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_BACK, "MENU_ONLINE_SORT_ALLPHABETICAL")
			return true
		else
			registerVal3 = IsGlobalModelValueEqualTo(arg0, arg2, "socialRoot.tab", "friends")
			registerVal3 = IsGlobalModelValueEqualTo(arg0, arg2, "socialRoot.sort", Enum.PresenceSorting.PRESENCE_SORTING_ALPHABETICAL)
			if registerVal3 and registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_BACK, "MENU_ONLINE_SORT_MOST_RECENT")
				return true
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_BACK, "R", __FUNC_3806_, __FUNC_3AC3_, false)
	local function __FUNC_3DCA_(arg0, arg1, arg2, arg3)
		HandleSocialMenuBack(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_3E2E_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_3DCA_, __FUNC_3E2E_, false)
	local function __FUNC_3F29_(arg0, arg1, arg2, arg3)
		local registerVal4 = AlwaysFalse()
		if registerVal4 then
			return true
		end
	end

	local function __FUNC_3F81_(arg0, arg1, arg2)
		local registerVal3 = AlwaysFalse()
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_OPTIONS")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_START, "O", __FUNC_3F29_, __FUNC_3F81_, false)
	local function __FUNC_40A6_(arg1)
		SocialEnablePresenceCacheAutoupdate(arg0, false)
		PreserveThumbnails(arg0, false)
		ResetThumbnailViewer(arg0)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal1, "close", __FUNC_40A6_)
	registerVal10.id = "TabFrame"
	registerVal12:setModel(registerVal1.buttonModel, arg0)
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
		registerVal1.TabFrame:processEvent(registerVal18)
	end
	local function __FUNC_4163_(arg1)
		arg1.LeftPanel:close()
		arg1.StartMenuCampaignBG:close()
		arg1.FadeForStreamer:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.SocialFrame:close()
		arg1.SelfIdentityBadge:close()
		arg1.tabs:close()
		arg1.GroupsBetaSafeAreaContainer:close()
		arg1.TabFrame:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Social_Main.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_4163_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.Social_Main = __FUNC_636_
