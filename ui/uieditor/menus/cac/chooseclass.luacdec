-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.menus.CAC.Popups.ClassOptions")
require("ui.uieditor.widgets.CAC.cac_BlackFadeIn")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.CAC.MenuChooseClass.chooseClassWidget")
require("ui.uieditor.widgets.CAC.MenuChooseClass.chooseClassButtonList")
require("ui.uieditor.widgets.CAC.List1ButtonChooseClass")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ChooseClass_ClassSetTabWidget")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ChooseClass_ClassSetTabPip")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.InfopanePreviewWidget")
require("ui.uieditor.widgets.Footer.fe_FooterContainer_NOTLobby")
require("ui.uieditor.widgets.BackgroundFrames.CACBackgroundNew")
require("ui.uieditor.widgets.Pregame.Pregame_TimerOverlay")
require("ui.uieditor.widgets.PC.Utility.XCamMouseControl")
local function __FUNC_641_(arg0)
	local registerVal2 = IsClassSetsAvailableForCurrentGameMode()
	if not registerVal2 then
		return {}
	end
	registerVal2 = Engine.GetNumberOfClassSetsOwned(arg0)
	local registerVal3 = Dvar.purchasedClassSetCount:get()
	local registerVal4 = Engine.GetCurrentClassSetIndex(arg0)
	if registerVal2 <= registerVal4 then
		Engine.SetCurrentClassSetIndex(arg0, 0.000000)
	end
	local registerVal7 = Engine.GetModelForController(arg0)
	local registerVal6 = Engine.CreateModel(registerVal7, "currentClassSetIndex")
	Engine.SetModelValue(registerVal6, 0.000000)
	for index5=1.000000, registerVal3, 1.000000 do
		local registerVal10 = Engine.Localize(Engine.GetClassSetName(arg0, (index5 - 1.000000)))
		if (index5 - 1.000000) ~= registerVal2 then
		end
		local registerVal14 = {}
		local registerVal15 = {}
		registerVal15.tabName = registerVal10
		registerVal15.customClassName = registerVal10
		registerVal15.classSetId = (index5 - 1.000000)
		if not {} or registerVal2 > (index5 - 1.000000) then
		end
		registerVal15.isDisabled = true
		registerVal15.isExtraSlotsPrompt = true
		registerVal14.models = registerVal15
		registerVal15 = {}
		if (index5 - 1.000000) ~= 0.000000 then
		end
		registerVal15.selectIndex = true
		registerVal14.properties = registerVal15
		table.insert({}, registerVal14)
	end
	return {}
end

local function __FUNC_A48_(arg0, arg1, arg2)
	local registerVal4 = Engine.GetModelForController(arg0)
	local registerVal3 = Engine.CreateModel(registerVal4, "classSetsUpdated")
	if arg1.updateSubscription then
		arg1:removeSubscription(arg1.updateSubscription)
	end
	local function __FUNC_B98_()
		arg1:updateDataSource()
	end

	registerVal4 = arg1:subscribeToModel(registerVal3, __FUNC_B98_, false)
	arg1.updateSubscription = registerVal4
end

local registerVal1 = DataSourceHelpers.ListSetup("ClassSetTabs", __FUNC_641_, nil, nil, __FUNC_A48_)
DataSources.ClassSetTabs = registerVal1
local function __FUNC_BEA_(arg0, arg1)
	arg0.disableBlur = true
	local function __FUNC_F07_(arg0, arg1)
		local registerVal4 = {}
		registerVal4.name = "update_state"
		registerVal4.menu = arg0
		arg0:processEvent(registerVal4)
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "setModel", __FUNC_F07_)
	local registerVal4 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.CreateModel(registerVal4, "currentClassSetIndex")
	Engine.SetModelValue(registerVal3, 0.000000)
	CoD.CACUtility.SetDefaultCACRoot(arg1)
	local registerVal2 = Gunsmith_IsEnabled(arg0, arg1)
	if CoD.isCampaign and registerVal2 then
		CoD.CraftUtility.Gunsmith.ParseDDL(arg1, Enum.StorageFileType.STORAGE_GUNSMITH)
	end
	CheckGCCatchUp()
end

local function __FUNC_F8C_(arg0, arg1)
	if CoD.CACUtility.FromCustomClass then
		arg0:playSound("cac_reenter")
		CoD.CACUtility.FromCustomClass = false
	else
		arg0:playSound("cac_enter")
	end
	local registerVal3 = {}
	registerVal3.right = nil
	arg0.buttonList.navigation = registerVal3
	arg0.chooseClassWidget.m_inputDisabled = true
	if not CoD.UnlockablesTable then
		registerVal3 = CoD.GetUnlockablesTable(arg1)
		CoD.UnlockablesTable = registerVal3
	end
	CoD.CACUtility.CreateUnlockTokenModels(arg1)
	CoD.PrestigeUtility.CreatePermanentUnlockTokenModel(arg1)
	CoD.CACUtility.SetCACMenuHeroInfoModels(arg1)
	local registerVal2 = Engine.GetEquippedHero(arg1, Enum.eModes.MODE_MULTIPLAYER)
	Engine.SendClientScriptNotify(arg1, "choose_class_preview", "opened", registerVal2)
	CoD.CACUtility.ForceStreamAttachmentImages(arg1)
end

local function __FUNC_13C9_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("chooseClass")
	if __FUNC_BEA_ then
		__FUNC_BEA_(registerVal1, arg0)
	end
	registerVal1.soundSet = "CAC"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "chooseClass.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_default_black_0"))
	registerVal1:addElement(registerVal3)
	registerVal1.Fullscreen = registerVal3
	local registerVal4 = CoD.cac_BlackFadeIn.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.cacBlackFadeIn = registerVal4
	local registerVal5 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal5:setLeftRight(false, false, -576.000000, -262.000000)
	registerVal5:setTopBottom(true, true, 78.000000, -582.020000)
	registerVal5:setRGB(0.500000, 0.500000, 0.500000)
	registerVal5:setAlpha(0.090000)
	registerVal1:addElement(registerVal5)
	registerVal1.LeftPanel = registerVal5
	local registerVal6 = CoD.chooseClassWidget.new(registerVal1, arg0)
	registerVal6:setLeftRight(false, false, -247.500000, 93.500000)
	registerVal6:setTopBottom(true, false, 85.000000, 684.000000)
	registerVal6:setAlpha(0.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.chooseClassWidget = registerVal6
	local registerVal7 = CoD.chooseClassButtonList.new(registerVal1, arg0)
	registerVal7:setLeftRight(false, false, -563.000000, -283.000000)
	registerVal7:setTopBottom(true, false, 136.000000, 474.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.buttonList = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 71.000000, 351.000000)
	registerVal8:setTopBottom(true, false, 186.580000, 211.580000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setText(Engine.Localize("MENU_EXTRASLOTS_PACK_DESC"))
	registerVal8:setTTF("fonts/default.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal8)
	registerVal1.ExtraSlotDescription = registerVal8
	local registerVal9 = CoD.List1ButtonChooseClass.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 71.000000, 351.000000)
	registerVal9:setTopBottom(true, false, 154.580000, 186.580000)
	registerVal9:setAlpha(0.000000)
	registerVal9.btnDisplayText:setText(Engine.Localize("MENU_EXTRASLOTS_BUY_CAPS"))
	registerVal9.btnDisplayTextStroke:setText(Engine.Localize("MENU_EXTRASLOTS_BUY_CAPS"))
	local function __FUNC_3003_(arg1, arg2)
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

	registerVal9:registerEventHandler("gain_focus", __FUNC_3003_)
	local function __FUNC_3193_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("lose_focus", __FUNC_3193_)
	local function __FUNC_3262_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsMenuInState(arg1, "ExtraSlots")
		if registerVal4 then
			OpenPurchaseExtraSlotsOverlay(registerVal1, arg2, arg1)
			return true
		end
	end

	local function __FUNC_3312_(arg0, arg1, arg2)
		local registerVal3 = IsMenuInState(arg1, "ExtraSlots")
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal9, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_3262_, __FUNC_3312_, false)
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Disabled"
	local function __FUNC_3459_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal13.condition = __FUNC_3459_
	local registerVal14 = {}
	registerVal14.stateName = "ExtraSlots"
	local function __FUNC_34A5_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal14.condition = __FUNC_34A5_
	registerVal12 = {registerVal13, registerVal14}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal1:addElement(registerVal9)
	registerVal1.BuyExtraSlotsBtn = registerVal9
	local registerVal10 = CoD.ChooseClass_ClassSetTabWidget.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 71.000000, 360.000000)
	registerVal10:setTopBottom(true, false, 86.000000, 126.000000)
	registerVal10.Internal.Tabs:setDataSource("ClassSetTabs")
	registerVal10.Internal.IndicatorsGrid:setWidgetType(CoD.ChooseClass_ClassSetTabPip)
	registerVal10.Internal.IndicatorsGrid:setDataSource("ClassSetTabs")
	registerVal13 = {}
	registerVal14 = {}
	registerVal14.stateName = "Visible"
	local function __FUNC_34F0_(arg0, arg1, arg2)
		return IsClassSetsAvailableForCurrentGameMode()
	end

	registerVal14.condition = __FUNC_34F0_
	registerVal13 = {registerVal14}
	registerVal10:mergeStateConditions(registerVal13)
	registerVal1:addElement(registerVal10)
	registerVal1.ClassSetTabWidget = registerVal10
	local registerVal11 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal11:setTopBottom(true, true, 86.000000, -16.750000)
	registerVal1:addElement(registerVal11)
	registerVal1.FEMenuLeftGraphics = registerVal11
	registerVal12 = CoD.InfopanePreviewWidget.new(registerVal1, arg0)
	registerVal12:setLeftRight(false, false, 71.000000, 921.000000)
	registerVal12:setTopBottom(false, false, -236.000000, 360.000000)
	registerVal12:setAlpha(0.430000)
	local function __FUNC_3558_(arg1)
		registerVal12:setModel(arg1, arg0)
	end

	registerVal12:linkToElementModel(registerVal1, nil, false, __FUNC_3558_)
	registerVal1:addElement(registerVal12)
	registerVal1.CustomClasspreviewWidget = registerVal12
	registerVal13 = CoD.fe_FooterContainer_NOTLobby.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal13:setTopBottom(false, true, -65.000000, 0.000000)
	local function __FUNC_35AA_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal13:registerEventHandler("menu_loaded", __FUNC_35AA_)
	local registerVal16 = {}
	local registerVal17 = {}
	registerVal17.stateName = "WithHeroesHead"
	local function __FUNC_363D_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal17.condition = __FUNC_363D_
	registerVal16 = {registerVal17}
	registerVal13:mergeStateConditions(registerVal16)
	registerVal1:addElement(registerVal13)
	registerVal1.feFooterContainer = registerVal13
	registerVal14 = CoD.CACBackgroundNew.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal14:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal14.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(LocalizeToUpperString(GetStringforGameMode("MENU_CHOOSE_LOADOUT", "MPUI_CHOOSE_CLASS", "MPUI_CHOOSE_CLASS", "MPUI_CHOOSE_CLASS_CAPS")))
	registerVal1:addElement(registerVal14)
	registerVal1.background = registerVal14
	local registerVal15 = CoD.Pregame_TimerOverlay.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal15:setTopBottom(true, true, 0.000000, 0.000000)
	local registerVal18 = {}
	local registerVal19 = {}
	registerVal19.stateName = "ChooseClass"
	local function __FUNC_3688_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal19.condition = __FUNC_3688_
	registerVal18 = {registerVal19}
	registerVal15:mergeStateConditions(registerVal18)
	registerVal19 = Engine.GetGlobalModel()
	registerVal18 = Engine.GetModel(registerVal19, "lobbyRoot.Pregame.state")
	local function __FUNC_36D4_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.state"
		registerVal1:updateElementState(registerVal15, registerVal4)
	end

	registerVal15:subscribeToModel(registerVal18, __FUNC_36D4_)
	registerVal1:addElement(registerVal15)
	registerVal1.PregameTimerOverlay = registerVal15
	registerVal16 = CoD.XCamMouseControl.new(registerVal1, arg0)
	registerVal16:setLeftRight(false, false, 161.500000, 921.500000)
	registerVal16:setTopBottom(true, true, 124.000000, -86.000000)
	registerVal1:addElement(registerVal16)
	registerVal1.XCamMouseControl = registerVal16
	local function __FUNC_3801_(arg1)
		registerVal6:setModel(arg1, arg0)
	end

	registerVal6:linkToElementModel(registerVal7.buttonList, nil, false, __FUNC_3801_)
	local function __FUNC_3852_(arg1)
		registerVal14:setModel(arg1, arg0)
	end

	registerVal14:linkToElementModel(registerVal7.buttonList, nil, false, __FUNC_3852_)
	registerVal17 = {}
	registerVal17.left = registerVal7
	registerVal6.navigation = registerVal17
	registerVal17 = {}
	registerVal17.left = registerVal9
	registerVal17.up = registerVal9
	registerVal17.right = registerVal6
	registerVal7.navigation = registerVal17
	registerVal17 = {}
	registerVal17.right = registerVal7
	registerVal17.down = registerVal7
	registerVal9.navigation = registerVal17
	registerVal17 = {}
	registerVal18 = {}
	local function __FUNC_38A2_()
		registerVal1:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal1.Fullscreen:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.cacBlackFadeIn:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.LeftPanel:setLeftRight(false, false, -576.000000, 117.500000)
		registerVal1.LeftPanel:setTopBottom(true, true, 78.000000, 36.000000)
		registerVal1.LeftPanel:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.chooseClassWidget:setAlpha(1.000000)
		registerVal1.chooseClassWidget:setZoom(0.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.buttonList:setLeftRight(false, false, -563.000000, -283.000000)
		registerVal1.buttonList:setTopBottom(true, false, 136.000000, 304.000000)
		registerVal1.buttonList:setAlpha(1.000000)
		registerVal1.buttonList:setZoom(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.ExtraSlotDescription:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.BuyExtraSlotsBtn:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal12:completeAnimation()
		registerVal1.CustomClasspreviewWidget:setLeftRight(false, false, 71.000000, 921.000000)
		registerVal1.CustomClasspreviewWidget:setTopBottom(false, false, -236.000000, 360.000000)
		registerVal1.CustomClasspreviewWidget:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal14.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:completeAnimation()
		registerVal1.background:setAlpha(1.000000)
		registerVal1.background.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(LocalizeToUpperString(GetStringforGameMode("MENU_CHOOSE_LOADOUT", "MPUI_CHOOSE_CLASS", "MPUI_CHOOSE_CLASS", "MPUI_CHOOSE_CLASS_CAPS")))
		registerVal1.clipFinished(registerVal14, {})
	end

	registerVal18.DefaultClip = __FUNC_38A2_
	local function __FUNC_4005_()
		registerVal1:setupElementClipCounter(4.000000)
		local function __FUNC_439B_(arg0, arg1)
			local function __FUNC_4528_(arg0, arg1)
				local function __FUNC_46DB_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 410.000000, false, true, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -576.000000, 117.500000)
					arg0:setTopBottom(true, true, 756.000000, -636.000000)
					arg0:setAlpha(0.900000)
					if arg1.interrupted then
						registerVal1.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_46DB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, true, 573.000000, -636.000000)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_46DB_)
			end

			if arg1.interrupted then
				__FUNC_4528_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, -576.000000, 117.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4528_)
		end

		registerVal5:completeAnimation()
		registerVal1.LeftPanel:setLeftRight(false, false, -576.000000, -262.000000)
		registerVal1.LeftPanel:setTopBottom(true, true, 78.000000, -636.000000)
		registerVal1.LeftPanel:setAlpha(0.000000)
		__FUNC_439B_(registerVal5, {})
		local function __FUNC_48FD_(arg0, arg1)
			local function __FUNC_4A54_(arg0, arg1)
				local function __FUNC_4BCF_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Bounce)
					end
					arg0:setAlpha(1.000000)
					arg0:setZoom(0.000000)
					if arg1.interrupted then
						registerVal1.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_4BCF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4BCF_)
			end

			if arg1.interrupted then
				__FUNC_4A54_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A54_)
		end

		registerVal6:completeAnimation()
		registerVal1.chooseClassWidget:setAlpha(0.000000)
		registerVal1.chooseClassWidget:setZoom(0.000000)
		__FUNC_48FD_(registerVal6, {})
		local function __FUNC_4DA3_(arg0, arg1)
			local function __FUNC_4EF8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 560.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setLeftRight(false, false, -563.000000, -283.000000)
				arg0:setTopBottom(true, false, 136.000000, 304.000000)
				arg0:setAlpha(1.000000)
				arg0:setZoom(0.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4EF8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4EF8_)
		end

		registerVal7:completeAnimation()
		registerVal1.buttonList:setLeftRight(false, false, -563.000000, -283.000000)
		registerVal1.buttonList:setTopBottom(true, false, 136.000000, 304.000000)
		registerVal1.buttonList:setAlpha(0.000000)
		registerVal1.buttonList:setZoom(0.000000)
		__FUNC_4DA3_(registerVal7, {})
		registerVal12:completeAnimation()
		registerVal1.CustomClasspreviewWidget:setLeftRight(false, false, 71.000000, 921.000000)
		registerVal1.CustomClasspreviewWidget:setTopBottom(false, false, -236.000000, 360.000000)
		registerVal1.clipFinished(registerVal12, {})
	end

	registerVal18.Intro = __FUNC_4005_
	local function __FUNC_513F_()
		registerVal1:setupElementClipCounter(4.000000)
		local function __FUNC_54F5_(arg0, arg1)
			local function __FUNC_5684_(arg0, arg1)
				local function __FUNC_5837_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 410.000000, false, true, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -576.000000, 117.500000)
					arg0:setTopBottom(true, true, 756.000000, -636.000000)
					arg0:setAlpha(0.900000)
					if arg1.interrupted then
						registerVal1.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_5837_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, true, 573.000000, -636.000000)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5837_)
			end

			if arg1.interrupted then
				__FUNC_5684_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, -576.000000, 117.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5684_)
		end

		registerVal5:completeAnimation()
		registerVal1.LeftPanel:setLeftRight(false, false, -576.000000, -262.000000)
		registerVal1.LeftPanel:setTopBottom(true, true, 78.000000, -636.000000)
		registerVal1.LeftPanel:setAlpha(0.000000)
		__FUNC_54F5_(registerVal5, {})
		local function __FUNC_5A59_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 1000.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -244.500000, 96.500000)
			arg0:setTopBottom(true, false, 80.000000, 679.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal1.chooseClassWidget:setLeftRight(false, false, -643.000000, -143.000000)
		registerVal1.chooseClassWidget:setTopBottom(true, false, 80.000000, 679.000000)
		registerVal1.chooseClassWidget:setAlpha(1.000000)
		__FUNC_5A59_(registerVal6, {})
		local function __FUNC_5C7D_(arg0, arg1)
			local function __FUNC_5DD4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 519.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -563.000000, -283.000000)
				arg0:setTopBottom(true, false, 136.000000, 304.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_5DD4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 479.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5DD4_)
		end

		registerVal7:completeAnimation()
		registerVal1.buttonList:setLeftRight(false, false, -1086.000000, -806.000000)
		registerVal1.buttonList:setTopBottom(true, false, 136.000000, 304.000000)
		registerVal1.buttonList:setAlpha(1.000000)
		__FUNC_5C7D_(registerVal7, {})
		local function __FUNC_5FF9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 370.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 73.000000, 923.000000)
			arg0:setTopBottom(false, false, -236.000000, 360.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal1.CustomClasspreviewWidget:setLeftRight(false, false, -210.000000, 640.000000)
		registerVal1.CustomClasspreviewWidget:setTopBottom(false, false, -236.000000, 360.000000)
		registerVal1.CustomClasspreviewWidget:setAlpha(1.000000)
		__FUNC_5FF9_(registerVal12, {})
	end

	registerVal18.Back = __FUNC_513F_
	local function __FUNC_621D_()
		registerVal1:setupElementClipCounter(8.000000)
		local function __FUNC_65A7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal1.Fullscreen:setAlpha(1.000000)
		__FUNC_65A7_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.cacBlackFadeIn:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.LeftPanel:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.chooseClassWidget:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.buttonList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal11:completeAnimation()
		registerVal1.FEMenuLeftGraphics:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.CustomClasspreviewWidget:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal1.background:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal14, {})
	end

	registerVal18.Close = __FUNC_621D_
	registerVal17.DefaultState = registerVal18
	registerVal18 = {}
	local function __FUNC_6759_()
		registerVal1:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal1.Fullscreen:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.cacBlackFadeIn:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.LeftPanel:setLeftRight(false, false, -576.000000, -262.000000)
		registerVal1.LeftPanel:setTopBottom(true, true, 78.000000, -53.000000)
		registerVal1.LeftPanel:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.chooseClassWidget:setAlpha(0.000000)
		registerVal1.chooseClassWidget:setZoom(0.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.buttonList:setLeftRight(false, false, -563.000000, -283.000000)
		registerVal1.buttonList:setTopBottom(true, false, 136.000000, 304.000000)
		registerVal1.buttonList:setAlpha(0.000000)
		registerVal1.buttonList:setZoom(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.ExtraSlotDescription:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.BuyExtraSlotsBtn:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal12:completeAnimation()
		registerVal1.CustomClasspreviewWidget:setLeftRight(false, false, 71.000000, 921.000000)
		registerVal1.CustomClasspreviewWidget:setTopBottom(false, false, -236.000000, 360.000000)
		registerVal1.CustomClasspreviewWidget:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal14.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:completeAnimation()
		registerVal1.background:setAlpha(1.000000)
		registerVal1.background.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(LocalizeToUpperString(GetStringforGameMode("MENU_CHOOSE_LOADOUT", "MPUI_CHOOSE_CLASS", "MPUI_CHOOSE_CLASS", "MPUI_CHOOSE_CLASS_CAPS")))
		registerVal1.clipFinished(registerVal14, {})
	end

	registerVal18.DefaultClip = __FUNC_6759_
	local function __FUNC_6EBD_()
		registerVal1:setupElementClipCounter(4.000000)
		local function __FUNC_7253_(arg0, arg1)
			local function __FUNC_73E0_(arg0, arg1)
				local function __FUNC_7593_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 410.000000, false, true, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -576.000000, 117.500000)
					arg0:setTopBottom(true, true, 756.000000, -636.000000)
					arg0:setAlpha(0.900000)
					if arg1.interrupted then
						registerVal1.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_7593_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, true, 573.000000, -636.000000)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7593_)
			end

			if arg1.interrupted then
				__FUNC_73E0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, -576.000000, 117.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_73E0_)
		end

		registerVal5:completeAnimation()
		registerVal1.LeftPanel:setLeftRight(false, false, -576.000000, -262.000000)
		registerVal1.LeftPanel:setTopBottom(true, true, 78.000000, -636.000000)
		registerVal1.LeftPanel:setAlpha(0.000000)
		__FUNC_7253_(registerVal5, {})
		local function __FUNC_77B5_(arg0, arg1)
			local function __FUNC_790C_(arg0, arg1)
				local function __FUNC_7A87_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Bounce)
					end
					arg0:setAlpha(1.000000)
					arg0:setZoom(0.000000)
					if arg1.interrupted then
						registerVal1.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_7A87_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7A87_)
			end

			if arg1.interrupted then
				__FUNC_790C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_790C_)
		end

		registerVal6:completeAnimation()
		registerVal1.chooseClassWidget:setAlpha(0.000000)
		registerVal1.chooseClassWidget:setZoom(0.000000)
		__FUNC_77B5_(registerVal6, {})
		local function __FUNC_7C5B_(arg0, arg1)
			local function __FUNC_7DB0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 560.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setLeftRight(false, false, -563.000000, -283.000000)
				arg0:setTopBottom(true, false, 136.000000, 304.000000)
				arg0:setAlpha(1.000000)
				arg0:setZoom(0.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_7DB0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7DB0_)
		end

		registerVal7:completeAnimation()
		registerVal1.buttonList:setLeftRight(false, false, -563.000000, -283.000000)
		registerVal1.buttonList:setTopBottom(true, false, 136.000000, 304.000000)
		registerVal1.buttonList:setAlpha(0.000000)
		registerVal1.buttonList:setZoom(0.000000)
		__FUNC_7C5B_(registerVal7, {})
		registerVal12:completeAnimation()
		registerVal1.CustomClasspreviewWidget:setLeftRight(false, false, 71.000000, 921.000000)
		registerVal1.CustomClasspreviewWidget:setTopBottom(false, false, -236.000000, 360.000000)
		registerVal1.clipFinished(registerVal12, {})
	end

	registerVal18.Intro = __FUNC_6EBD_
	local function __FUNC_7FF7_()
		registerVal1:setupElementClipCounter(4.000000)
		local function __FUNC_83AD_(arg0, arg1)
			local function __FUNC_853C_(arg0, arg1)
				local function __FUNC_86EF_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 410.000000, false, true, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -576.000000, 117.500000)
					arg0:setTopBottom(true, true, 756.000000, -636.000000)
					arg0:setAlpha(0.900000)
					if arg1.interrupted then
						registerVal1.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_86EF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, true, 573.000000, -636.000000)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_86EF_)
			end

			if arg1.interrupted then
				__FUNC_853C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, -576.000000, 117.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_853C_)
		end

		registerVal5:completeAnimation()
		registerVal1.LeftPanel:setLeftRight(false, false, -576.000000, -262.000000)
		registerVal1.LeftPanel:setTopBottom(true, true, 78.000000, -636.000000)
		registerVal1.LeftPanel:setAlpha(0.000000)
		__FUNC_83AD_(registerVal5, {})
		local function __FUNC_8911_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 1000.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -244.500000, 96.500000)
			arg0:setTopBottom(true, false, 80.000000, 679.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal1.chooseClassWidget:setLeftRight(false, false, -643.000000, -143.000000)
		registerVal1.chooseClassWidget:setTopBottom(true, false, 80.000000, 679.000000)
		registerVal1.chooseClassWidget:setAlpha(1.000000)
		__FUNC_8911_(registerVal6, {})
		local function __FUNC_8B35_(arg0, arg1)
			local function __FUNC_8C8C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 519.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -563.000000, -283.000000)
				arg0:setTopBottom(true, false, 136.000000, 304.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_8C8C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 479.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8C8C_)
		end

		registerVal7:completeAnimation()
		registerVal1.buttonList:setLeftRight(false, false, -1086.000000, -806.000000)
		registerVal1.buttonList:setTopBottom(true, false, 136.000000, 304.000000)
		registerVal1.buttonList:setAlpha(1.000000)
		__FUNC_8B35_(registerVal7, {})
		local function __FUNC_8EB1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 370.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 73.000000, 923.000000)
			arg0:setTopBottom(false, false, -236.000000, 360.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal1.CustomClasspreviewWidget:setLeftRight(false, false, -210.000000, 640.000000)
		registerVal1.CustomClasspreviewWidget:setTopBottom(false, false, -236.000000, 360.000000)
		registerVal1.CustomClasspreviewWidget:setAlpha(1.000000)
		__FUNC_8EB1_(registerVal12, {})
	end

	registerVal18.Back = __FUNC_7FF7_
	local function __FUNC_90D5_()
		registerVal1:setupElementClipCounter(8.000000)
		local function __FUNC_945F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal1.Fullscreen:setAlpha(1.000000)
		__FUNC_945F_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.cacBlackFadeIn:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.LeftPanel:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.chooseClassWidget:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.buttonList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal11:completeAnimation()
		registerVal1.FEMenuLeftGraphics:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.CustomClasspreviewWidget:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal1.background:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal14, {})
	end

	registerVal18.Close = __FUNC_90D5_
	registerVal17.ExtraSlots = registerVal18
	registerVal1.clipsPerState = registerVal17
	registerVal19 = {}
	local registerVal20 = {}
	registerVal20.stateName = "ExtraSlots"
	local function __FUNC_9611_(arg1, arg2, arg3)
		local registerVal3 = IsClassSetsAvailableForCurrentGameMode()
		if registerVal3 then
			registerVal3 = DoesPlayerHaveExtraSlotsItem(arg0)
			if not registerVal3 then
				registerVal3 = IsModelValueGreaterThan(arg0, "currentClassSetIndex", 0.000000)
			else
			end
		end
		return true
	end

	registerVal20.condition = __FUNC_9611_
	registerVal19 = {registerVal20}
	registerVal1:mergeStateConditions(registerVal19)
	registerVal20 = Engine.GetModelForController(arg0)
	registerVal19 = Engine.GetModel(registerVal20, "currentClassSetIndex")
	local function __FUNC_971E_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentClassSetIndex"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal19, __FUNC_971E_)
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_9846_(arg0, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("update_class", __FUNC_9846_)
	local function __FUNC_98B1_(arg1, arg2)
		local registerVal3 = IsCampaign()
		registerVal3 = TestAndSetFirstTimeMenu(arg0, "com_firsttime_armory")
		if registerVal3 and registerVal3 then
			OpenGenericLargePopup(registerVal1, arg0, "MENU_FIRSTTIME_ARMORY", "MENU_FIRSTTIME_ARMORY2", "com_firsttime_armory_image", "MENU_FIRSTTIME_ARMORY_BUTTONTEXT", "", "")
		else
			SetElementStateByElementName(registerVal1, "background", arg0, "Intro")
			local registerVal5 = {}
			registerVal5.elementName = "cacElemsSideListCustomClass0"
			registerVal5.clipName = "Intro"
			PlayClipOnElement(registerVal1, registerVal5, arg0)
			PlayClip(registerVal1, "Intro", arg0)
		end
		if not nil then
			registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_opened", __FUNC_98B1_)
	local function __FUNC_9B85_(arg1, arg2)
		local registerVal3 = IsInGame()
		if registerVal3 then
			SetElementStateByElementName(registerVal1, "background", arg0, "Update")
			PlayClip(registerVal1, "Back", arg0)
			LockInput(registerVal1, arg0, true)
			SetCharacterModeToCurrentSessionMode(registerVal1, arg1, arg0)
			RefreshCharacterCustomization(registerVal1, arg1, arg0)
			SendClientScriptMenuChangeNotify(arg0, registerVal1, true)
			local registerVal5 = {}
			registerVal5.elementName = "cacBlackFadeIn"
			registerVal5.clipName = "Intro"
			PlayClipOnElement(registerVal1, registerVal5, arg0)
			ShowHeaderKickerAndIcon(registerVal1)
			PrepareOpenMenuInSafehouse(arg0)
			SetHeadingKickerText("MENU_CAMPAIGN")
		else
			SetElementStateByElementName(registerVal1, "background", arg0, "Update")
			PlayClip(registerVal1, "Back", arg0)
			SetCharacterModeToCurrentSessionMode(registerVal1, arg1, arg0)
			RefreshCharacterCustomization(registerVal1, arg1, arg0)
			SendClientScriptMenuChangeNotify(arg0, registerVal1, true)
			ShowHeaderKickerAndIcon(registerVal1)
			SetHeadingKickerTextToGameMode("MPUI_PUBLIC_MATCH_LOBBY")
			registerVal5 = {}
			registerVal5.elementName = "chooseClassWidget"
			registerVal5.clipName = "WildcardDefault"
			PlayClipOnElement(registerVal1, registerVal5, arg0)
		end
		if not nil then
			registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_9B85_)
	local function __FUNC_9FCB_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsInGame()
		if registerVal4 then
			SendOwnMenuResponse(arg1, arg2, "closed")
			Close(registerVal1, arg2)
			ClearSavedState(registerVal1, arg2)
			SaveLoadout(registerVal1, arg2)
			ResetCustomClassStartingFocus(registerVal1, arg0, arg2, true)
			LockInput(registerVal1, arg2, false)
			SendClientScriptMenuChangeNotify(arg2, arg1, false)
			PrepareCloseMenuInSafehouse(arg2)
			UploadStats(registerVal1, arg2)
			MarkCACPaintshopDataDirty(registerVal1, arg2)
			return true
		else
			registerVal4 = IsMenuInState(arg1, "ExtraSlots")
			if registerVal4 then
				PartyHostSetState(registerVal1, arg2, CoD.PARTYHOST_STATE_NONE)
				ClearSavedState(registerVal1, arg2)
				SaveLoadout(registerVal1, arg2)
				UploadStats(registerVal1, arg2)
				ResetCustomClassStartingFocus(registerVal1, arg0, arg2, true)
				MarkCACPaintshopDataDirty(registerVal1, arg2)
				SendClientScriptMenuChangeNotify(arg2, arg1, false)
				ForceNotifyPregameUpdate(registerVal1, arg0, arg2)
				SetPerControllerTableProperty(arg2, "updateNewBreadcrumbs", true)
				GoBack(registerVal1, arg2)
				ForceLobbyButtonUpdate(arg2)
				CopyLoadoutToClassSet(arg2)
				ClearMenuSavedState(arg1)
				return true
			else
				PartyHostSetState(registerVal1, arg2, CoD.PARTYHOST_STATE_NONE)
				ClearSavedState(registerVal1, arg2)
				SaveLoadout(registerVal1, arg2)
				UploadStats(registerVal1, arg2)
				ResetCustomClassStartingFocus(registerVal1, arg0, arg2, true)
				MarkCACPaintshopDataDirty(registerVal1, arg2)
				SendClientScriptMenuChangeNotify(arg2, arg1, false)
				ForceNotifyPregameUpdate(registerVal1, arg0, arg2)
				SetPerControllerTableProperty(arg2, "updateNewBreadcrumbs", true)
				GoBack(registerVal1, arg2)
				ForceLobbyButtonUpdate(arg2)
				CopyLoadoutToClassSet(arg2)
				return true
			end
		end
	end

	local function __FUNC_A531_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_9FCB_, __FUNC_A531_, false)
	local function __FUNC_A62D_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsPerControllerTablePropertyValue(arg2, "enableClassOptions", false)
		if not registerVal4 then
			OpenPopup(registerVal1, "ClassOptions", arg2)
			PlaySoundSetSound(registerVal1, "menu_sub")
			return true
		end
	end

	local function __FUNC_A73D_(arg0, arg1, arg2)
		local registerVal3 = IsPerControllerTablePropertyValue(arg2, "enableClassOptions", false)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_CLASS_OPTIONS")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_START, "O", __FUNC_A62D_, __FUNC_A73D_, false)
	local function __FUNC_A8A6_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_A8D8_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "PLATFORM_EMBLEM_ROTATE_LAYER")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, nil, __FUNC_A8A6_, __FUNC_A8D8_, false)
	local function __FUNC_A9EA_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsClassSetsAvailableForCurrentGameMode()
		registerVal4 = DoesPlayerHaveExtraSlotsItem(arg2)
		if registerVal4 and not registerVal4 then
			SetChooseClassMenuFromExtraSlotPromptState(registerVal1, arg2, arg1, "buttonList", "buttonList")
			return true
		else
			registerVal4 = IsClassSetsAvailableForCurrentGameMode()
			if registerVal4 then
				DecrementClassSetAndUpdateElementDataSource(registerVal1, arg2, arg1, "buttonList", "buttonList")
				return true
			end
		end
	end

	local function __FUNC_AB67_(arg0, arg1, arg2)
		local registerVal3 = IsClassSetsAvailableForCurrentGameMode()
		registerVal3 = DoesPlayerHaveExtraSlotsItem(arg2)
		if registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LB, "")
			return false
		else
			registerVal3 = IsClassSetsAvailableForCurrentGameMode()
			if registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LB, "")
				return false
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_LB, nil, __FUNC_A9EA_, __FUNC_AB67_, false)
	local function __FUNC_AD30_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsClassSetsAvailableForCurrentGameMode()
		registerVal4 = DoesPlayerHaveExtraSlotsItem(arg2)
		registerVal4 = ShowCACExtraClassBreadcrumb(arg2)
		if registerVal4 and not registerVal4 and registerVal4 then
			SetSeenExtraClassSets(arg2)
			UpdateElementState(registerVal1, "ClassSetTabWidget", arg2)
			SetChooseClassMenuToExtraSlotPromptState(registerVal1, arg2, arg1, "buttonList", "buttonList")
			return true
		else
			registerVal4 = IsClassSetsAvailableForCurrentGameMode()
			registerVal4 = DoesPlayerHaveExtraSlotsItem(arg2)
			if registerVal4 and not registerVal4 then
				SetChooseClassMenuToExtraSlotPromptState(registerVal1, arg2, arg1, "buttonList", "buttonList")
				return true
			else
				registerVal4 = IsClassSetsAvailableForCurrentGameMode()
				if registerVal4 then
					IncrementClassSetAndUpdateElementDataSource(registerVal1, arg2, arg1, "buttonList", "buttonList")
					return true
				end
			end
		end
	end

	local function __FUNC_AFA8_(arg0, arg1, arg2)
		local registerVal3 = IsClassSetsAvailableForCurrentGameMode()
		registerVal3 = DoesPlayerHaveExtraSlotsItem(arg2)
		registerVal3 = ShowCACExtraClassBreadcrumb(arg2)
		if registerVal3 and not registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RB, "")
			return false
		else
			registerVal3 = IsClassSetsAvailableForCurrentGameMode()
			registerVal3 = DoesPlayerHaveExtraSlotsItem(arg2)
			if registerVal3 and not registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RB, "")
				return false
			else
				registerVal3 = IsClassSetsAvailableForCurrentGameMode()
				if registerVal3 then
					CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RB, "")
					return false
				end
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RB, nil, __FUNC_AD30_, __FUNC_AFA8_, false)
	local function __FUNC_B221_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsStarterPack(arg2)
		if registerVal4 then
			StarterParckPurchase(registerVal1, arg2, arg1)
			return true
		end
	end

	local function __FUNC_B2B1_(arg0, arg1, arg2)
		local registerVal3 = IsStarterPack(arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LTRIG, "PLATFORM_STARTER_PACK_UPGRADE_TITLE")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_LTRIG, "U", __FUNC_B221_, __FUNC_B2B1_, false)
	local function __FUNC_B3F3_(arg1, arg2)
		local registerVal2 = IsMenuInState(registerVal1, "DefaultState")
		if registerVal2 then
			MakeElementFocusable(registerVal1, "buttonList", arg0)
			MakeElementNotFocusable(registerVal1, "BuyExtraSlotsBtn", arg0)
			SetFocusToElement(registerVal1, "buttonList", arg0)
			SetChooseClassMenuFromExtraSlotPromptState(registerVal1, arg0, registerVal1, "buttonList", "buttonList")
		else
			registerVal2 = IsMenuInState(registerVal1, "ExtraSlots")
			if registerVal2 then
				MakeElementFocusable(registerVal1, "BuyExtraSlotsBtn", arg0)
				MakeElementNotFocusable(registerVal1, "buttonList", arg0)
				SetFocusToElement(registerVal1, "BuyExtraSlotsBtn", arg0)
				SetChooseClassMenuToExtraSlotPromptState(registerVal1, arg0, registerVal1, "buttonList", "buttonList")
			end
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal1, "setState", __FUNC_B3F3_)
	registerVal6.id = "chooseClassWidget"
	registerVal7.id = "buttonList"
	registerVal9.id = "BuyExtraSlotsBtn"
	registerVal13:setModel(registerVal1.buttonModel, arg0)
	registerVal19 = {}
	registerVal19.name = "menu_loaded"
	registerVal19.controller = arg0
	registerVal1:processEvent(registerVal19)
	registerVal19 = {}
	registerVal19.name = "update_state"
	registerVal19.menu = registerVal1
	registerVal1:processEvent(registerVal19)
	registerVal17 = registerVal1:restoreState()
	if not registerVal17 then
		registerVal19 = {}
		registerVal19.name = "gain_focus"
		registerVal19.controller = arg0
		registerVal1.buttonList:processEvent(registerVal19)
	end
	local function __FUNC_B62F_(arg1)
		arg1.cacBlackFadeIn:close()
		arg1.LeftPanel:close()
		arg1.chooseClassWidget:close()
		arg1.buttonList:close()
		arg1.BuyExtraSlotsBtn:close()
		arg1.ClassSetTabWidget:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.CustomClasspreviewWidget:close()
		arg1.feFooterContainer:close()
		arg1.background:close()
		arg1.PregameTimerOverlay:close()
		arg1.XCamMouseControl:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "chooseClass.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_B62F_)
	if __FUNC_F8C_ then
		__FUNC_F8C_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.chooseClass = __FUNC_13C9_
