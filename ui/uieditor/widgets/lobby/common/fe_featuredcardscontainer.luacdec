-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_MemberBlurPanelContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_FeaturedCard")
require("ui.uieditor.widgets.Lobby.Common.FE_FeaturedCardsContainerController")
require("ui.uieditor.widgets.Lobby.Common.FE_FeaturedCardsTitleBox")
require("ui.uieditor.widgets.Lobby.Common.FE_FeaturedFrame")
require("ui.uieditor.widgets.FaceButtonThatHidesWithLabel")
require("ui.uieditor.widgets.FeaturedOfflineText")
require("ui.uieditor.widgets.Lobby.PlayGo.PlayGoDownloadProgressBar")
require("ui.uieditor.widgets.Lobby.PlayGo.PlayGoDownloadStatus")
local function __FUNC_491_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "FeaturedCardsRoot", true)
	Engine.CreateModel(registerVal2, "Enabled", true)
	Engine.CreateModel(registerVal2, "Update", true)
	Engine.CreateModel(registerVal2, "hasAction", true)
	local registerVal4 = Engine.CreateModel(registerVal2, "CardSequence", false)
	Engine.SetModelValue(registerVal4, 0.000000)
end

local function __FUNC_642_(arg0, arg1, arg2)
	if not CoD.isPC then
		return 
	end
	arg0:setForceMouseEventDispatch(true)
	local function __FUNC_9B1_(arg0, arg3)
		local registerVal2 = FeaturedCards_IsEnabled(arg0, arg1)
		if registerVal2 then
			if arg0.bumper then
				if arg0.bumper == "left" then
					FeaturedCardsGetPreviousCard(arg2, arg0, arg1, "", arg2)
				else
					FeaturedCardsGetNextCard(arg2, arg0, arg1, "", arg2)
				end
			end
			FeaturedCardsResetTimer(arg2, arg0, arg1, "", arg2)
		end
		return true
	end

	if arg0.FEFeaturedCardsContainerController.RightBumperImage then
		arg0.FEFeaturedCardsContainerController.RightBumperImage.bumper = "right"
		arg0.FEFeaturedCardsContainerController.RightBumperImage:registerEventHandler("leftmouseup", __FUNC_9B1_)
	end
	if arg0.FEFeaturedCardsContainerController.LeftBumperImage then
		arg0.FEFeaturedCardsContainerController.LeftBumperImage.bumper = "left"
		arg0.FEFeaturedCardsContainerController.LeftBumperImage:registerEventHandler("leftmouseup", __FUNC_9B1_)
	end
	arg0.Action.clickButton.m_button = Enum.LUIButton.LUI_KEY_XBX_PSSQUARE
	arg0.Action.clickButton.keyshortcut:setText(Engine.Localize("[^3N^7]"))
end

local function __FUNC_B2E_(arg0, arg1, arg2)
	__FUNC_642_(arg0, arg1, arg2)
	local function __FUNC_D31_(arg3)
		if arg0.CardsList.activeWidget ~= nil then
			local registerVal1 = arg0.CardsList:getDataSource()
			local registerVal2 = registerVal1.getCount(arg0.CardsList)
			local registerVal3 = Engine.GetModelValue(arg3)
			if registerVal2 <= registerVal3 then
			else
				if 0.000000 < 0.000000 then
				end
			end
			Engine.SetModelValue(arg3, (registerVal2 - 1.000000))
			local registerVal5 = Engine.GetModelForController(arg1)
			local registerVal4 = Engine.GetModel(registerVal5, "FeaturedCards")
			registerVal5 = Engine.GetModel(registerVal4, ((registerVal2 - 1.000000) + 1.000000))
			local registerVal6 = CoD.SafeGetModelValue(registerVal5, "index")
			local registerVal7 = Engine.CreateModel(registerVal5, "wasDisplayed")
			local registerVal8 = CoD.SafeGetModelValue(registerVal5, "wasDisplayed")
			local registerVal9 = Engine.GetFeaturedCard(registerVal6)
			if registerVal5 and registerVal6 and registerVal9 ~= nil and registerVal9.type == Enum.FeaturedCardType.FEATURED_CARD_TYPE_CRM then
				Engine.FeaturedCardMarkRead(arg1, registerVal9.messageID)
				if not registerVal8 then
					LUI.CoDMetrics.CRMMessageImpression(arg0, arg1, "crm_featured")
				end
				Engine.SetModelValue(registerVal7, 1.000000)
			end
			arg0.CardsList:setActiveIndex(1.000000, ((registerVal2 - 1.000000) + 1.000000), false)
			registerVal6 = IsMenuInState(arg2, "Left")
			if registerVal6 then
				arg0:playSound("feature_update")
			end
		end
	end

	arg0.CardsList:subscribeToGlobalModel(arg1, "FeaturedCardsRoot", "CardSequence", __FUNC_D31_)
	local registerVal3 = Engine.GetFeaturedCardsData()
	if arg1 or not registerVal3.timer then
	end
	if 5000.000000 <= 0.000000 then
	end
	local function __FUNC_126A_()
		local registerVal0 = FeaturedWidgetControllerVisible(arg1)
		if registerVal0 and arg0.CardsList.activeWidget ~= nil then
			FeaturedCardsGetNextCard()
		end
	end

	local registerVal5 = LUI.UITimer.newElementTimer(5000.000000, false, __FUNC_126A_, arg0)
	arg0.CarouselTimer = registerVal5
	arg0:addElement(registerVal5)
end

local registerVal4 = InheritFrom(LUI.UIElement)
CoD.FE_FeaturedCardsContainer = registerVal4
local function __FUNC_1352_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_491_ then
		__FUNC_491_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FE_FeaturedCardsContainer)
	registerVal2.id = "FE_FeaturedCardsContainer"
	registerVal2.soundSet = "Special_widgets"
	registerVal2:setLeftRight(true, false, 0.000000, 335.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 166.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FE_MemberBlurPanelContainer.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 26.000000, 332.000000)
	registerVal3:setTopBottom(true, false, 36.000000, 152.000000)
	registerVal3:setRGB(0.500000, 0.500000, 0.500000)
	registerVal3.FEMemberBlurPanel0:setShaderVector(0.000000, 0.000000, 3.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.FEMemberBlurPanelContainer0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 26.000000, 332.000000)
	registerVal4:setTopBottom(true, false, 36.000000, 152.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.200000)
	registerVal2:addElement(registerVal4)
	registerVal2.BlackBack = registerVal4
	local registerVal5 = LUI.GridLayout.new(arg0, arg1, false, 0.000000, 0.000000, 1.000000, 200.000000, nil, nil, true, true, 0.000000, 0.000000, false, true)
	registerVal5:setLeftRight(true, false, 26.000000, 332.000000)
	registerVal5:setTopBottom(true, false, 37.500000, 124.500000)
	registerVal5:setWidgetType(CoD.FE_FeaturedCard)
	registerVal5:setSpacing(1.000000)
	registerVal5:setDataSource("FeaturedCards")
	local function __FUNC_32AC_(arg0)
		UpdateDataSource(registerVal2, registerVal5, arg1)
	end

	registerVal5:subscribeToGlobalModel(arg1, "FeaturedCardsRoot", "Update", __FUNC_32AC_)
	local function __FUNC_330A_(arg0)
		UpdateDataSource(registerVal2, registerVal5, arg1)
	end

	registerVal5:subscribeToGlobalModel(arg1, "MarketingRoot", "Updated", __FUNC_330A_)
	local function __FUNC_3366_(arg0)
		UpdateDataSource(registerVal2, registerVal5, arg1)
	end

	registerVal5:subscribeToGlobalModel(arg1, "AutoeventsCycled", "cycled", __FUNC_3366_)
	registerVal2:addElement(registerVal5)
	registerVal2.CardsList = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 33.000000, 96.000000)
	registerVal6:setTopBottom(true, false, 4.000000, 29.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setText(Engine.Localize("MENU_FEATURED_CAPS"))
	registerVal6:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal6)
	registerVal2.FeaturedLabel = registerVal6
	local registerVal7 = CoD.FE_FeaturedCardsContainerController.new(arg0, arg1)
	registerVal7:setLeftRight(false, true, -155.000000, -19.000000)
	registerVal7:setTopBottom(false, false, 42.000000, 69.000000)
	local function __FUNC_33C2_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, nil, false, __FUNC_33C2_)
	registerVal2:addElement(registerVal7)
	registerVal2.FEFeaturedCardsContainerController = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 0.000000, 28.000000)
	registerVal8:setTopBottom(false, false, 41.000000, 45.000000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_pixelframe"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.pixelLL = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 0.000000, 28.000000)
	registerVal9:setTopBottom(false, false, -47.000000, -43.000000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_frontend_pixelframe"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.Image1 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, false, 145.000000, 181.000000)
	registerVal10:setTopBottom(false, false, -46.500000, -43.000000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.pixelUR = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, false, 145.000000, 181.000000)
	registerVal11:setTopBottom(false, false, 42.000000, 45.500000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.Image2 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(false, false, 158.000000, 162.000000)
	registerVal12:setTopBottom(false, false, -46.000000, 45.000000)
	registerVal12:setAlpha(0.250000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.emblemline0 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, -4.000000, 28.000000)
	registerVal13:setTopBottom(false, false, -28.000000, 24.000000)
	registerVal13:setZoom(10.000000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_frontend_titlebackpixelb"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.pixelMiddle = registerVal13
	local registerVal14 = CoD.FE_FeaturedCardsTitleBox.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 26.000000, 332.000000)
	registerVal14:setTopBottom(true, false, 14.000000, 33.000000)
	registerVal14.ScorestreaksLabel:setText(Engine.Localize("GROUPS_FEATURED_CAPS"))
	registerVal2:addElement(registerVal14)
	registerVal2.FEFeaturedCardsTitleBox0 = registerVal14
	local registerVal15 = CoD.FE_FeaturedFrame.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 26.000000, 332.000000)
	registerVal15:setTopBottom(true, false, 36.000000, 126.000000)
	registerVal15:setAlpha(0.500000)
	registerVal2:addElement(registerVal15)
	registerVal2.FEFeaturedFrame0 = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, 180.000000, 184.000000)
	registerVal16:setTopBottom(true, false, -56.000000, 261.000000)
	registerVal16:setZRot(-90.000000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_frontend_featuredlline"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal16)
	registerVal2.featlineleft = registerVal16
	local registerVal17 = CoD.FaceButtonThatHidesWithLabel.new(arg0, arg1)
	registerVal17:setLeftRight(true, false, 41.000000, 176.250000)
	registerVal17:setTopBottom(true, false, 128.000000, 148.000000)
	local function __FUNC_3412_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.ButtonImage.ControllerImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal17:subscribeToGlobalModel(arg1, "Controller", "alt1_button_image", __FUNC_3412_)
	registerVal2:addElement(registerVal17)
	registerVal2.Action = registerVal17
	local registerVal18 = CoD.FeaturedOfflineText.new(arg0, arg1)
	registerVal18:setLeftRight(true, false, 33.000000, 325.500000)
	registerVal18:setTopBottom(true, false, 40.000000, 65.000000)
	registerVal2:addElement(registerVal18)
	registerVal2.FeaturedOfflineText0 = registerVal18
	local registerVal19 = CoD.FaceButtonThatHidesWithLabel.new(arg0, arg1)
	registerVal19:setLeftRight(true, false, 41.000000, 267.760000)
	registerVal19:setTopBottom(true, false, 128.000000, 148.000000)
	registerVal19.ButtonLabel:setText(Engine.Localize("MENU_NETWORK"))
	registerVal19.clickButton.label:setText(Engine.Localize("MENU_NETWORK"))
	local function __FUNC_350A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal19.ButtonImage.ControllerImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal19:subscribeToGlobalModel(arg1, "Controller", "alt1_button_image", __FUNC_350A_)
	local registerVal22 = {}
	local registerVal23 = {}
	registerVal23.stateName = "HideButtonAndText"
	local function __FUNC_3602_(arg0, arg2, arg3)
		return ShouldHideOfflineNetworkPrompt(arg1)
	end

	registerVal23.condition = __FUNC_3602_
	registerVal22 = {registerVal23}
	registerVal19:mergeStateConditions(registerVal22)
	registerVal23 = Engine.GetGlobalModel()
	registerVal22 = Engine.GetModel(registerVal23, "lobbyRoot.lobbyNetworkMode")
	local function __FUNC_3664_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNetworkMode"
		arg0:updateElementState(registerVal19, registerVal4)
	end

	registerVal19:subscribeToModel(registerVal22, __FUNC_3664_)
	registerVal23 = Engine.GetGlobalModel()
	registerVal22 = Engine.GetModel(registerVal23, "lobbyRoot.lobbyNav")
	local function __FUNC_3794_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal19, registerVal4)
	end

	registerVal19:subscribeToModel(registerVal22, __FUNC_3794_)
	if registerVal19.m_eventHandlers.input_source_changed then
		local function __FUNC_38BC_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal19.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal19:registerEventHandler("input_source_changed", __FUNC_38BC_)
	else
		registerVal19:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal23 = Engine.GetModelForController(arg1)
	registerVal22 = Engine.GetModel(registerVal23, "LastInput")
	local function __FUNC_3947_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal19, registerVal4)
	end

	registerVal19:subscribeToModel(registerVal22, __FUNC_3947_)
	registerVal2:addElement(registerVal19)
	registerVal2.OfflineAction = registerVal19
	local registerVal20 = CoD.PlayGoDownloadProgressBar.new(arg0, arg1)
	registerVal20:setLeftRight(true, false, 29.500000, 329.500000)
	registerVal20:setTopBottom(true, false, 134.000000, 154.000000)
	registerVal20:setAlpha(0.000000)
	registerVal2:addElement(registerVal20)
	registerVal2.PlayGoDownloadProgressBar0 = registerVal20
	local registerVal21 = CoD.PlayGoDownloadStatus.new(arg0, arg1)
	registerVal21:setLeftRight(true, false, 28.000000, 228.000000)
	registerVal21:setTopBottom(true, false, 102.500000, 122.500000)
	registerVal21:setAlpha(0.000000)
	registerVal2:addElement(registerVal21)
	registerVal2.PlayGoDownloadStatus0 = registerVal21
	local function __FUNC_3A63_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.ButtonLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal17:linkToElementModel(registerVal5, "actionTitle", true, __FUNC_3A63_)
	local function __FUNC_3B3B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.clickButton.label:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal17:linkToElementModel(registerVal5, "actionTitle", true, __FUNC_3B3B_)
	registerVal22 = {}
	registerVal23 = {}
	local function __FUNC_3C2E_()
		registerVal2:setupElementClipCounter(19.000000)
		registerVal3:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BlackBack:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.BlackBack:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.CardsList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FeaturedLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEFeaturedCardsContainerController:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.pixelLL:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Image1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.pixelUR:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Image2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.emblemline0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.pixelMiddle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FEFeaturedCardsTitleBox0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FEFeaturedFrame0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.featlineleft:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.Action:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FeaturedOfflineText0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.OfflineAction:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.PlayGoDownloadProgressBar0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.PlayGoDownloadStatus0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
	end

	registerVal23.DefaultClip = __FUNC_3C2E_
	local function __FUNC_43EA_()
		registerVal2:setupElementClipCounter(17.000000)
		local function __FUNC_4A9B_(arg0, arg1)
			local function __FUNC_4BF0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 219.000000, true, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4BF0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4BF0_)
		end

		registerVal3:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(0.000000)
		__FUNC_4A9B_(registerVal3, {})
		local function __FUNC_4DA5_(arg0, arg1)
			local function __FUNC_4EFC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 219.000000, true, false, CoD.TweenType.Bounce)
				end
				arg0:setRGB(0.000000, 0.000000, 0.000000)
				arg0:setAlpha(0.200000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4EFC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4EFC_)
		end

		registerVal4:completeAnimation()
		registerVal2.BlackBack:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.BlackBack:setAlpha(0.000000)
		__FUNC_4DA5_(registerVal4, {})
		local function __FUNC_50DA_(arg0, arg1)
			local function __FUNC_5230_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 219.000000, true, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_5230_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5230_)
		end

		registerVal5:completeAnimation()
		registerVal2.CardsList:setAlpha(0.000000)
		__FUNC_50DA_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FeaturedLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_53E5_(arg0, arg1)
			local function __FUNC_553C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 190.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_553C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_553C_)
		end

		registerVal7:completeAnimation()
		registerVal2.FEFeaturedCardsContainerController:setAlpha(0.000000)
		__FUNC_53E5_(registerVal7, {})
		local function __FUNC_56F1_(arg0, arg1)
			local function __FUNC_5848_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 290.000000, true, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_5848_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 899.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5848_)
		end

		registerVal8:completeAnimation()
		registerVal2.pixelLL:setAlpha(0.000000)
		__FUNC_56F1_(registerVal8, {})
		local function __FUNC_59FD_(arg0, arg1)
			local function __FUNC_5B54_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 290.000000, true, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_5B54_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 899.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B54_)
		end

		registerVal9:completeAnimation()
		registerVal2.Image1:setAlpha(0.000000)
		__FUNC_59FD_(registerVal9, {})
		local function __FUNC_5D09_(arg0, arg1)
			local function __FUNC_5E60_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 290.000000, true, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_5E60_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 899.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E60_)
		end

		registerVal10:completeAnimation()
		registerVal2.pixelUR:setAlpha(0.000000)
		__FUNC_5D09_(registerVal10, {})
		local function __FUNC_6015_(arg0, arg1)
			local function __FUNC_616C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 290.000000, true, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_616C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 899.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_616C_)
		end

		registerVal11:completeAnimation()
		registerVal2.Image2:setAlpha(0.000000)
		__FUNC_6015_(registerVal11, {})
		local function __FUNC_6321_(arg0, arg1)
			local function __FUNC_6478_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 290.000000, true, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.200000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_6478_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 899.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6478_)
		end

		registerVal12:completeAnimation()
		registerVal2.emblemline0:setAlpha(0.000000)
		__FUNC_6321_(registerVal12, {})
		local function __FUNC_662D_(arg0, arg1)
			local function __FUNC_6784_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 290.000000, true, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_6784_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 899.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6784_)
		end

		registerVal13:completeAnimation()
		registerVal2.pixelMiddle:setAlpha(0.000000)
		__FUNC_662D_(registerVal13, {})
		local function __FUNC_6939_(arg0, arg1)
			local function __FUNC_6A90_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_6A90_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 779.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6A90_)
		end

		registerVal14:completeAnimation()
		registerVal2.FEFeaturedCardsTitleBox0:setAlpha(0.000000)
		__FUNC_6939_(registerVal14, {})
		local function __FUNC_6C45_(arg0, arg1)
			local function __FUNC_6D9C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.500000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_6D9C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6D9C_)
		end

		registerVal15:completeAnimation()
		registerVal2.FEFeaturedFrame0:setAlpha(0.000000)
		__FUNC_6C45_(registerVal15, {})
		local function __FUNC_6F51_(arg0, arg1)
			local function __FUNC_70A8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 219.000000, true, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_70A8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_70A8_)
		end

		registerVal16:completeAnimation()
		registerVal2.featlineleft:setAlpha(0.000000)
		__FUNC_6F51_(registerVal16, {})
		local function __FUNC_725D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.Action:setAlpha(0.000000)
		__FUNC_725D_(registerVal17, {})
		local function __FUNC_7411_(arg0, arg1)
			local function __FUNC_7568_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_7568_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7568_)
		end

		registerVal18:completeAnimation()
		registerVal2.FeaturedOfflineText0:setAlpha(0.000000)
		__FUNC_7411_(registerVal18, {})
		local function __FUNC_771D_(arg0, arg1)
			local function __FUNC_7874_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 229.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_7874_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7874_)
		end

		registerVal19:completeAnimation()
		registerVal2.OfflineAction:setAlpha(0.000000)
		__FUNC_771D_(registerVal19, {})
	end

	registerVal23.FeaturedCardsVisible = __FUNC_43EA_
	registerVal22.DefaultState = registerVal23
	registerVal23 = {}
	local function __FUNC_7A29_()
		registerVal2:setupElementClipCounter(16.000000)
		registerVal3:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BlackBack:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.CardsList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.FEFeaturedCardsContainerController:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.pixelLL:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Image1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.pixelUR:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Image2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.emblemline0:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.pixelMiddle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FEFeaturedCardsTitleBox0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FEFeaturedFrame0:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.featlineleft:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.Action:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FeaturedOfflineText0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.OfflineAction:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal23.DefaultClip = __FUNC_7A29_
	local function __FUNC_8096_()
		registerVal2:setupElementClipCounter(17.000000)
		local function __FUNC_8756_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(1.000000)
		__FUNC_8756_(registerVal3, {})
		local function __FUNC_8909_(arg0, arg1)
			local function __FUNC_8A83_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(0.000000, 0.000000, 0.000000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_8A83_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8A83_)
		end

		registerVal4:completeAnimation()
		registerVal2.BlackBack:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.BlackBack:setAlpha(0.200000)
		__FUNC_8909_(registerVal4, {})
		local function __FUNC_8C59_(arg0, arg1)
			local function __FUNC_8DD3_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_8DD3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8DD3_)
		end

		registerVal5:completeAnimation()
		registerVal2.CardsList:setAlpha(1.000000)
		__FUNC_8C59_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FeaturedLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_8F85_(arg0, arg1)
			local function __FUNC_90FF_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_90FF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_90FF_)
		end

		registerVal7:completeAnimation()
		registerVal2.FEFeaturedCardsContainerController:setAlpha(1.000000)
		__FUNC_8F85_(registerVal7, {})
		local function __FUNC_92B1_(arg0, arg1)
			local function __FUNC_942B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_942B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_942B_)
		end

		registerVal8:completeAnimation()
		registerVal2.pixelLL:setAlpha(1.000000)
		__FUNC_92B1_(registerVal8, {})
		local function __FUNC_95DD_(arg0, arg1)
			local function __FUNC_9757_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_9757_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9757_)
		end

		registerVal9:completeAnimation()
		registerVal2.Image1:setAlpha(1.000000)
		__FUNC_95DD_(registerVal9, {})
		local function __FUNC_9909_(arg0, arg1)
			local function __FUNC_9A83_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_9A83_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9A83_)
		end

		registerVal10:completeAnimation()
		registerVal2.pixelUR:setAlpha(1.000000)
		__FUNC_9909_(registerVal10, {})
		local function __FUNC_9C35_(arg0, arg1)
			local function __FUNC_9DAF_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_9DAF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9DAF_)
		end

		registerVal11:completeAnimation()
		registerVal2.Image2:setAlpha(1.000000)
		__FUNC_9C35_(registerVal11, {})
		local function __FUNC_9F61_(arg0, arg1)
			local function __FUNC_A0DB_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_A0DB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A0DB_)
		end

		registerVal12:completeAnimation()
		registerVal2.emblemline0:setAlpha(0.200000)
		__FUNC_9F61_(registerVal12, {})
		local function __FUNC_A28D_(arg0, arg1)
			local function __FUNC_A407_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_A407_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A407_)
		end

		registerVal13:completeAnimation()
		registerVal2.pixelMiddle:setAlpha(1.000000)
		__FUNC_A28D_(registerVal13, {})
		local function __FUNC_A5B9_(arg0, arg1)
			local function __FUNC_A733_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_A733_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A733_)
		end

		registerVal14:completeAnimation()
		registerVal2.FEFeaturedCardsTitleBox0:setAlpha(1.000000)
		__FUNC_A5B9_(registerVal14, {})
		local function __FUNC_A8E5_(arg0, arg1)
			local function __FUNC_AA3C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_AA3C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AA3C_)
		end

		registerVal15:completeAnimation()
		registerVal2.FEFeaturedFrame0:setAlpha(0.700000)
		__FUNC_A8E5_(registerVal15, {})
		local function __FUNC_ABF1_(arg0, arg1)
			local function __FUNC_AD48_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_AD48_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AD48_)
		end

		registerVal16:completeAnimation()
		registerVal2.featlineleft:setAlpha(1.000000)
		__FUNC_ABF1_(registerVal16, {})
		local function __FUNC_AEFD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.Action:setAlpha(1.000000)
		__FUNC_AEFD_(registerVal17, {})
		local function __FUNC_B0B1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.FeaturedOfflineText0:setAlpha(1.000000)
		__FUNC_B0B1_(registerVal18, {})
		local function __FUNC_B265_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal2.OfflineAction:setAlpha(1.000000)
		__FUNC_B265_(registerVal19, {})
	end

	registerVal23.DefaultState = __FUNC_8096_
	local function __FUNC_B419_()
		registerVal2:setupElementClipCounter(17.000000)
		local function __FUNC_BACB_(arg0, arg1)
			local function __FUNC_BC20_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 219.000000, true, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_BC20_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BC20_)
		end

		registerVal3:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(0.000000)
		__FUNC_BACB_(registerVal3, {})
		local function __FUNC_BDD5_(arg0, arg1)
			local function __FUNC_BF2C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(0.000000, 0.000000, 0.000000)
				arg0:setAlpha(0.200000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_BF2C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BF2C_)
		end

		registerVal4:completeAnimation()
		registerVal2.BlackBack:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.BlackBack:setAlpha(0.000000)
		__FUNC_BDD5_(registerVal4, {})
		local function __FUNC_C10A_(arg0, arg1)
			local function __FUNC_C260_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_C260_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C260_)
		end

		registerVal5:completeAnimation()
		registerVal2.CardsList:setAlpha(0.000000)
		__FUNC_C10A_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FeaturedLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_C415_(arg0, arg1)
			local function __FUNC_C56C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 190.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_C56C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C56C_)
		end

		registerVal7:completeAnimation()
		registerVal2.FEFeaturedCardsContainerController:setAlpha(0.000000)
		__FUNC_C415_(registerVal7, {})
		local function __FUNC_C721_(arg0, arg1)
			local function __FUNC_C878_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 290.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_C878_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 899.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C878_)
		end

		registerVal8:completeAnimation()
		registerVal2.pixelLL:setAlpha(0.000000)
		__FUNC_C721_(registerVal8, {})
		local function __FUNC_CA2D_(arg0, arg1)
			local function __FUNC_CB84_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 290.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_CB84_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 899.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CB84_)
		end

		registerVal9:completeAnimation()
		registerVal2.Image1:setAlpha(0.000000)
		__FUNC_CA2D_(registerVal9, {})
		local function __FUNC_CD39_(arg0, arg1)
			local function __FUNC_CE90_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 290.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_CE90_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 899.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CE90_)
		end

		registerVal10:completeAnimation()
		registerVal2.pixelUR:setAlpha(0.000000)
		__FUNC_CD39_(registerVal10, {})
		local function __FUNC_D045_(arg0, arg1)
			local function __FUNC_D19C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 290.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_D19C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 899.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D19C_)
		end

		registerVal11:completeAnimation()
		registerVal2.Image2:setAlpha(0.000000)
		__FUNC_D045_(registerVal11, {})
		local function __FUNC_D351_(arg0, arg1)
			local function __FUNC_D4A8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 290.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.200000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_D4A8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 899.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D4A8_)
		end

		registerVal12:completeAnimation()
		registerVal2.emblemline0:setAlpha(0.000000)
		__FUNC_D351_(registerVal12, {})
		local function __FUNC_D65D_(arg0, arg1)
			local function __FUNC_D7B4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 290.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_D7B4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 899.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D7B4_)
		end

		registerVal13:completeAnimation()
		registerVal2.pixelMiddle:setAlpha(0.000000)
		__FUNC_D65D_(registerVal13, {})
		local function __FUNC_D969_(arg0, arg1)
			local function __FUNC_DAC0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_DAC0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 779.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DAC0_)
		end

		registerVal14:completeAnimation()
		registerVal2.FEFeaturedCardsTitleBox0:setAlpha(0.000000)
		__FUNC_D969_(registerVal14, {})
		local function __FUNC_DC75_(arg0, arg1)
			local function __FUNC_DDCC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.700000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_DDCC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DDCC_)
		end

		registerVal15:completeAnimation()
		registerVal2.FEFeaturedFrame0:setAlpha(0.000000)
		__FUNC_DC75_(registerVal15, {})
		local function __FUNC_DF81_(arg0, arg1)
			local function __FUNC_E0D8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_E0D8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E0D8_)
		end

		registerVal16:completeAnimation()
		registerVal2.featlineleft:setAlpha(0.000000)
		__FUNC_DF81_(registerVal16, {})
		local function __FUNC_E28D_(arg0, arg1)
			local function __FUNC_E3E4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 190.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_E3E4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E3E4_)
		end

		registerVal17:completeAnimation()
		registerVal2.Action:setAlpha(0.000000)
		__FUNC_E28D_(registerVal17, {})
		local function __FUNC_E599_(arg0, arg1)
			local function __FUNC_E6F0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_E6F0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E6F0_)
		end

		registerVal18:completeAnimation()
		registerVal2.FeaturedOfflineText0:setAlpha(0.000000)
		__FUNC_E599_(registerVal18, {})
		local function __FUNC_E8A5_(arg0, arg1)
			local function __FUNC_E9FC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 190.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_E9FC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E9FC_)
		end

		registerVal19:completeAnimation()
		registerVal2.OfflineAction:setAlpha(0.000000)
		__FUNC_E8A5_(registerVal19, {})
	end

	registerVal23.Intro = __FUNC_B419_
	registerVal22.FeaturedCardsVisible = registerVal23
	registerVal23 = {}
	local function __FUNC_EBB1_()
		registerVal2:setupElementClipCounter(19.000000)
		registerVal3:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setLeftRight(true, false, 26.000000, 332.000000)
		registerVal2.FEMemberBlurPanelContainer0:setTopBottom(true, false, 36.000000, 126.000000)
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BlackBack:setLeftRight(true, false, 26.000000, 332.000000)
		registerVal2.BlackBack:setTopBottom(true, false, 36.000000, 126.000000)
		registerVal2.BlackBack:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.CardsList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FeaturedLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEFeaturedCardsContainerController:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.pixelLL:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Image1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.pixelUR:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Image2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.emblemline0:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.pixelMiddle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FEFeaturedCardsTitleBox0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FEFeaturedFrame0:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.featlineleft:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.Action:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FeaturedOfflineText0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.OfflineAction:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.PlayGoDownloadProgressBar0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.PlayGoDownloadStatus0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal21, {})
	end

	registerVal23.DefaultClip = __FUNC_EBB1_
	registerVal22.OfflineState = registerVal23
	registerVal23 = {}
	local function __FUNC_F42E_()
		registerVal2:setupElementClipCounter(19.000000)
		registerVal3:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setLeftRight(true, false, 26.000000, 332.000000)
		registerVal2.FEMemberBlurPanelContainer0:setTopBottom(true, false, 36.000000, 126.000000)
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BlackBack:setLeftRight(true, false, 26.000000, 332.000000)
		registerVal2.BlackBack:setTopBottom(true, false, 36.000000, 126.000000)
		registerVal2.BlackBack:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.CardsList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FeaturedLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEFeaturedCardsContainerController:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.pixelLL:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Image1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.pixelUR:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Image2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.emblemline0:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.pixelMiddle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FEFeaturedCardsTitleBox0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FEFeaturedFrame0:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.featlineleft:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.Action:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FeaturedOfflineText0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.OfflineAction:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.PlayGoDownloadProgressBar0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.PlayGoDownloadStatus0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal21, {})
	end

	registerVal23.DefaultClip = __FUNC_F42E_
	registerVal22.DownloadingState = registerVal23
	registerVal2.clipsPerState = registerVal22
	local registerVal24 = {}
	local registerVal25 = {}
	registerVal25.stateName = "FeaturedCardsVisible"
	local function __FUNC_FCAA_(arg0, arg2, arg3)
		local registerVal3 = FeaturedCards_IsEnabled(arg2, arg1)
		registerVal3 = IsLive()
		if registerVal3 and registerVal3 then
			registerVal3 = PlayGoIsStillDownloading(arg1)
			if not registerVal3 then
				registerVal3 = IsGameLobbyExcept("ZMLobbyOnline")
			else
			end
		end
		return true
	end

	registerVal25.condition = __FUNC_FCAA_
	local registerVal26 = {}
	registerVal26.stateName = "OfflineState"
	local function __FUNC_FDB5_(arg0, arg2, arg3)
		local registerVal3 = IsLive()
		registerVal3 = PlayGoIsStillDownloading(arg1)
		if not registerVal3 and not registerVal3 then
			registerVal3 = IsGameLobbyExcept("ZMLobbyOnline")
		else
		end
		return true
	end

	registerVal26.condition = __FUNC_FDB5_
	local registerVal27 = {}
	registerVal27.stateName = "DownloadingState"
	local function __FUNC_FE88_(arg0, arg2, arg3)
		local registerVal3 = PlayGoIsStillDownloading(arg1)
		if registerVal3 then
			registerVal3 = IsGameLobbyExcept("ZMLobbyOnline")
		end
		return (not registerVal3)
	end

	registerVal27.condition = __FUNC_FE88_
	registerVal24 = {registerVal25, registerVal26, registerVal27}
	registerVal2:mergeStateConditions(registerVal24)
	registerVal25 = Engine.GetGlobalModel()
	registerVal24 = Engine.GetModel(registerVal25, "FeaturedCardsRoot.Enabled")
	local function __FUNC_FF30_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "FeaturedCardsRoot.Enabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal24, __FUNC_FF30_)
	registerVal25 = Engine.GetGlobalModel()
	registerVal24 = Engine.GetModel(registerVal25, "liveEventViewer.stream")
	local function __FUNC_1005F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "liveEventViewer.stream"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal24, __FUNC_1005F_)
	registerVal25 = Engine.GetGlobalModel()
	registerVal24 = Engine.GetModel(registerVal25, "autoevents.cycled")
	local function __FUNC_10188_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "autoevents.cycled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal24, __FUNC_10188_)
	registerVal25 = Engine.GetGlobalModel()
	registerVal24 = Engine.GetModel(registerVal25, "lobbyRoot.lobbyNetworkMode")
	local function __FUNC_102AF_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNetworkMode"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal24, __FUNC_102AF_)
	registerVal25 = Engine.GetGlobalModel()
	registerVal24 = Engine.GetModel(registerVal25, "lobbyRoot.lobbyNav")
	local function __FUNC_103DC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal24, __FUNC_103DC_)
	registerVal25 = Engine.GetGlobalModel()
	registerVal24 = Engine.GetModel(registerVal25, "PlayGoDownloadProgress.progress")
	local function __FUNC_10504_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "PlayGoDownloadProgress.progress"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal24, __FUNC_10504_)
	local function __FUNC_10639_(arg2)
		FeaturedCardsUpdateCRMMessage(registerVal2, registerVal2, arg1, "", arg0)
	end

	registerVal2:subscribeToGlobalModel(arg1, "MarketingRoot", "Updated", __FUNC_10639_)
	local function __FUNC_106B5_(arg0)
		arg0.FEMemberBlurPanelContainer0:close()
		arg0.CardsList:close()
		arg0.FEFeaturedCardsContainerController:close()
		arg0.FEFeaturedCardsTitleBox0:close()
		arg0.FEFeaturedFrame0:close()
		arg0.Action:close()
		arg0.FeaturedOfflineText0:close()
		arg0.OfflineAction:close()
		arg0.PlayGoDownloadProgressBar0:close()
		arg0.PlayGoDownloadStatus0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_106B5_)
	if __FUNC_B2E_ then
		__FUNC_B2E_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.FE_FeaturedCardsContainer.new = __FUNC_1352_
