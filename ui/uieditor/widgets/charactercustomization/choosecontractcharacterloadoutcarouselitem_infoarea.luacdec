-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CharacterCustomization.ChooseCharacterLoadoutCarouselItem_InfoAreaWeapon")
require("ui.uieditor.widgets.CharacterCustomization.ChooseCharacter_LoadoutListItem")
require("ui.uieditor.widgets.CharacterCustomization.ChooseContracterCharacterLoadoutCarouselItem_ContractInfoArea")
require("ui.uieditor.widgets.BlackMarket.BM_Contracts_ContractAmountWidget")
require("ui.uieditor.widgets.BlackMarket.BM_Contracts_Character_NotActivated_Widget")
local function __FUNC_40C_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	Engine.CreateModel(registerVal3, "firstTimeFlowState")
end

local function __FUNC_4C8_(arg0, arg1, arg2)
	arg0.BMContractsCharacterNotActivatedWidget:setHandleMouse(true)
	local function __FUNC_5A8_(arg0, arg1)
		CoD.PCUtil.SimulateButtonPress(arg1.controller, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return true
	end

	arg0.BMContractsCharacterNotActivatedWidget:registerEventHandler("mouse_left_click", __FUNC_5A8_)
end

local function __FUNC_6B0_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_4C8_(arg0, arg1, arg2)
	end
end

local registerVal4 = InheritFrom(LUI.UIElement)
CoD.ChooseContractCharacterLoadoutCarouselItem_InfoArea = registerVal4
local function __FUNC_723_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_40C_ then
		__FUNC_40C_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChooseContractCharacterLoadoutCarouselItem_InfoArea)
	registerVal2.id = "ChooseContractCharacterLoadoutCarouselItem_InfoArea"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 300.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 500.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 15.500000, 259.360000)
	registerVal3:setTopBottom(true, false, 16.000000, 486.720000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_contracts_character_innerframe"))
	registerVal2:addElement(registerVal3)
	registerVal2.background = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 41.000000, 231.000000)
	registerVal4:setTopBottom(true, false, 315.500000, 334.500000)
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.loadoutItemDescription = registerVal4
	local registerVal6 = IsPC()
	if registerVal6 then
		registerVal6 = LUI.UIText.new()
	else
		registerVal6 = LUI.UIElement.createFake()
	end
	registerVal6:setLeftRight(true, false, 30.000000, 230.000000)
	registerVal6:setTopBottom(true, false, 152.000000, 171.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setText(Engine.Localize("MENU_SELECT"))
	registerVal6:setTTF("fonts/default.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal6 = IsPC()
	if registerVal6 then
		registerVal2:addElement(registerVal6)
	end
	registerVal2.SelectText = registerVal6
	registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 28.000000, -58.000000)
	registerVal6:setTopBottom(true, false, 173.000000, 177.000000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrum"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.LeftBoxLine = registerVal6
	local registerVal7 = CoD.ChooseCharacterLoadoutCarouselItem_InfoAreaWeapon.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 37.690000, 220.690000)
	registerVal7:setTopBottom(true, false, 291.000000, 316.500000)
	registerVal2:addElement(registerVal7)
	registerVal2.ChooseCharacterLoadoutCarouselItemInfoAreaWeapon = registerVal7
	local registerVal8 = LUI.UIList.new(arg0, arg1, 16.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal8:makeFocusable()
	registerVal8:setLeftRight(true, false, 35.000000, 231.000000)
	registerVal8:setTopBottom(true, false, 191.500000, 281.500000)
	registerVal8:setWidgetType(CoD.ChooseCharacter_LoadoutListItem)
	registerVal8:setHorizontalCount(2.000000)
	registerVal8:setSpacing(16.000000)
	local function __FUNC_212D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setDataSource(registerVal1)
		end
	end

	registerVal8:linkToElementModel(registerVal2, "loadoutDatasource", true, __FUNC_212D_)
	local function __FUNC_21C6_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = nil
		CoD.Menu.UpdateButtonShownState(registerVal8, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal8:linkToElementModel(registerVal8, nil, true, __FUNC_21C6_)
	local registerVal12 = Engine.GetGlobalModel()
	local registerVal11 = Engine.GetModel(registerVal12, "lobbyRoot.Pregame.Update")
	local function __FUNC_2370_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "lobbyRoot.Pregame.Update"
		CoD.Menu.UpdateButtonShownState(registerVal8, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_2370_)
	local function __FUNC_253D_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isActivated"
		CoD.Menu.UpdateButtonShownState(registerVal8, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal8:linkToElementModel(registerVal8, "isActivated", true, __FUNC_253D_)
	local function __FUNC_26FC_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "contractsRemaining"
		CoD.Menu.UpdateButtonShownState(registerVal8, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal8:linkToElementModel(registerVal8, "contractsRemaining", true, __FUNC_26FC_)
	local function __FUNC_28C3_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal8:registerEventHandler("gain_focus", __FUNC_28C3_)
	local function __FUNC_2A53_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("lose_focus", __FUNC_2A53_)
	local function __FUNC_2B22_(arg0, arg1, arg2, arg3)
		local registerVal4 = ItemIsBanned(arg1, arg0, arg2)
		registerVal4 = CharacterLoadoutDrafted(arg1, arg0, arg2)
		registerVal4 = IsHeroLocked(arg0, arg2)
		registerVal4 = IsInPermanentUnlockMenu(arg2)
		registerVal4 = CanSelfWidgetSelectContractHeroItem(registerVal2, arg2)
		if not registerVal4 and not registerVal4 and not registerVal4 and not registerVal4 and registerVal4 then
			HeroBlackjackOptionSelected(arg0, arg2)
			SelectHero(registerVal2, arg0, arg2)
			HeroLoadoutChanged(registerVal2, arg0, arg2)
			CharacterDraftLoadoutSelected(registerVal2, arg0, arg2)
			SendClientScriptMenuChangeNotify(arg2, arg1, false)
			SetPerControllerTableProperty(arg2, "updateNewBreadcrumbs", true)
			ForceLobbyButtonUpdate(arg2)
			GoBack(registerVal2, arg2)
			return true
		else
			registerVal4 = ItemIsBanned(arg1, arg0, arg2)
			registerVal4 = CharacterLoadoutDrafted(arg1, arg0, arg2)
			registerVal4 = IsHeroLocked(arg0, arg2)
			registerVal4 = IsInPermanentUnlockMenu(arg2)
			registerVal4 = CanSelfWidgetSelectContractHeroItem(registerVal2, arg2)
			registerVal4 = CanSelfWidgetStartNewHeroContract(registerVal2, arg2)
			if not registerVal4 and not registerVal4 and not registerVal4 and not registerVal4 and not registerVal4 and registerVal4 then
				HeroBlackjackActivateContract(registerVal2, arg0, arg2)
				return true
			end
		end
	end

	local function __FUNC_2F1C_(arg0, arg1, arg2)
		local registerVal3 = ItemIsBanned(arg1, arg0, arg2)
		registerVal3 = CharacterLoadoutDrafted(arg1, arg0, arg2)
		registerVal3 = IsHeroLocked(arg0, arg2)
		registerVal3 = IsInPermanentUnlockMenu(arg2)
		registerVal3 = CanSelfWidgetSelectContractHeroItem(registerVal2, arg2)
		if not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		else
			registerVal3 = ItemIsBanned(arg1, arg0, arg2)
			registerVal3 = CharacterLoadoutDrafted(arg1, arg0, arg2)
			registerVal3 = IsHeroLocked(arg0, arg2)
			registerVal3 = IsInPermanentUnlockMenu(arg2)
			registerVal3 = CanSelfWidgetSelectContractHeroItem(registerVal2, arg2)
			registerVal3 = CanSelfWidgetStartNewHeroContract(registerVal2, arg2)
			if not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_ACTIVATE")
				return true
			end
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal8, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2B22_, __FUNC_2F1C_, false)
	registerVal11 = {}
	registerVal12 = {}
	registerVal12.stateName = "Disabled"
	local function __FUNC_325F_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal12.condition = __FUNC_325F_
	local registerVal13 = {}
	registerVal13.stateName = "NotAvailable"
	local function __FUNC_32A9_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal13.condition = __FUNC_32A9_
	local registerVal14 = {}
	registerVal14.stateName = "PermanentUnlockRefund"
	local function __FUNC_32F5_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal14.condition = __FUNC_32F5_
	registerVal11 = {registerVal12, registerVal13, registerVal14}
	registerVal8:mergeStateConditions(registerVal11)
	registerVal2:addElement(registerVal8)
	registerVal2.loadoutOptions = registerVal8
	local registerVal9 = CoD.ChooseContracterCharacterLoadoutCarouselItem_ContractInfoArea.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 42.000000, 231.000000)
	registerVal9:setTopBottom(true, false, 97.500000, 160.500000)
	local function __FUNC_3341_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:linkToElementModel(registerVal2, nil, false, __FUNC_3341_)
	registerVal2:addElement(registerVal9)
	registerVal2.contractInfo = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, false, 39.000000, 229.000000)
	registerVal10:setTopBottom(true, false, 217.000000, 236.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_3392_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setText(LocalizeIntoString("MENU_ACQUIRE_X_WITH_WEEKLY_CHALLENGES", registerVal1))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "name", true, __FUNC_3392_)
	registerVal2:addElement(registerVal10)
	registerVal2.blackMarketDesc = registerVal10
	registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, false, 50.930000, 227.430000)
	registerVal11:setTopBottom(true, false, 83.870000, 103.870000)
	registerVal11:setRGB(0.460000, 0.800000, 0.750000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setText(Engine.Localize("FEATURE_CONTRACTS"))
	registerVal11:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal11:setLetterSpacing(-0.500000)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal11)
	registerVal2.ContractLabel = registerVal11
	registerVal12 = CoD.BM_Contracts_ContractAmountWidget.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 40.430000, 231.000000)
	registerVal12:setTopBottom(true, false, 97.500000, 177.500000)
	registerVal12:setAlpha(0.000000)
	registerVal12.ContractBacking0:setAlpha(1.000000)
	local function __FUNC_347B_(arg0)
		registerVal12:setModel(arg0, arg1)
	end

	registerVal12:linkToElementModel(registerVal2, nil, false, __FUNC_347B_)
	local registerVal15 = {}
	local registerVal16 = {}
	registerVal16.stateName = "None"
	local function __FUNC_34CA_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "contractsRemaining", 0.000000)
	end

	registerVal16.condition = __FUNC_34CA_
	registerVal15 = {registerVal16}
	registerVal12:mergeStateConditions(registerVal15)
	local function __FUNC_3552_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "contractsRemaining"
		arg0:updateElementState(registerVal12, registerVal4)
	end

	registerVal12:linkToElementModel(registerVal12, "contractsRemaining", true, __FUNC_3552_)
	registerVal2:addElement(registerVal12)
	registerVal2.BMContractsContractAmountWidget = registerVal12
	registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 24.190000, 160.190000)
	registerVal13:setTopBottom(true, false, 35.750000, 75.750000)
	registerVal13:setImage(RegisterImage("uie_t7_blackmarket_contracts_blackjack_title"))
	registerVal2:addElement(registerVal13)
	registerVal2.Title = registerVal13
	registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, true, 29.000000, -57.000000)
	registerVal14:setTopBottom(true, false, 67.000000, 71.000000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrum"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.LeftBoxLine0 = registerVal14
	registerVal15 = CoD.BM_Contracts_Character_NotActivated_Widget.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 28.000000, 236.000000)
	registerVal15:setTopBottom(true, false, 193.810000, 279.810000)
	local function __FUNC_3678_(arg0)
		registerVal15:setModel(arg0, arg1)
	end

	registerVal15:linkToElementModel(registerVal2, nil, false, __FUNC_3678_)
	registerVal2:addElement(registerVal15)
	registerVal2.BMContractsCharacterNotActivatedWidget = registerVal15
	registerVal16 = CoD.BM_Contracts_ContractAmountWidget.new(arg0, arg1)
	registerVal16:setLeftRight(true, false, 37.690000, 236.000000)
	registerVal16:setTopBottom(true, false, 409.000000, 472.000000)
	registerVal2:addElement(registerVal16)
	registerVal2.BMContractsContractAmountWidget0 = registerVal16
	local function __FUNC_36CA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal8, "description", true, __FUNC_36CA_)
	local function __FUNC_3782_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.loadOutItemName:setText(LocalizeToUpperString(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal8, "name", true, __FUNC_3782_)
	local registerVal17 = {}
	local registerVal18 = {}
	local function __FUNC_3860_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal4:completeAnimation()
		registerVal2.loadoutItemDescription:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.SelectText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ChooseCharacterLoadoutCarouselItemInfoAreaWeapon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.loadoutOptions:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.blackMarketDesc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal18.DefaultClip = __FUNC_3860_
	registerVal17.DefaultState = registerVal18
	registerVal18 = {}
	local function __FUNC_3B02_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.loadoutItemDescription:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.ChooseCharacterLoadoutCarouselItemInfoAreaWeapon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.loadoutOptions:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal15:completeAnimation()
		registerVal2.BMContractsCharacterNotActivatedWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.DefaultClip = __FUNC_3B02_
	local function __FUNC_3D61_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_3FB7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 270.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
		registerVal4:setAlpha(0.000000)
		registerVal4:registerEventHandler("transition_complete_keyframe", __FUNC_3FB7_)
		local function __FUNC_4169_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 270.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
		registerVal7:setAlpha(0.000000)
		registerVal7:registerEventHandler("transition_complete_keyframe", __FUNC_4169_)
		local function __FUNC_431D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.loadoutOptions:setAlpha(0.000000)
		__FUNC_431D_(registerVal8, {})
	end

	registerVal18.DefaultState = __FUNC_3D61_
	registerVal17.Locked = registerVal18
	registerVal18 = {}
	local function __FUNC_44D1_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal4:completeAnimation()
		registerVal2.loadoutItemDescription:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.SelectText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ChooseCharacterLoadoutCarouselItemInfoAreaWeapon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.loadoutOptions:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.blackMarketDesc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal18.DefaultClip = __FUNC_44D1_
	registerVal17.KeyboardAndMouse = registerVal18
	registerVal2.clipsPerState = registerVal17
	local registerVal19 = {}
	local registerVal20 = {}
	registerVal20.stateName = "Locked"
	local function __FUNC_4772_(arg0, arg2, arg3)
		local registerVal3 = CanSelectContractHeroItem(arg2, arg1)
		return (not registerVal3)
	end

	registerVal20.condition = __FUNC_4772_
	local registerVal21 = {}
	registerVal21.stateName = "KeyboardAndMouse"
	local function __FUNC_47D7_(arg0, arg2, arg3)
		local registerVal3 = IsPC()
		if registerVal3 then
			registerVal3 = IsGamepad(arg1)
			if not registerVal3 then
				registerVal3 = FirstTimeSetup_Overview(arg1)
			else
			end
		end
		return true
	end

	registerVal21.condition = __FUNC_47D7_
	registerVal19 = {registerVal20, registerVal21}
	registerVal2:mergeStateConditions(registerVal19)
	local function __FUNC_4886_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isActivated"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isActivated", true, __FUNC_4886_)
	if registerVal2.m_eventHandlers.input_source_changed then
		local function __FUNC_49A5_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal2:registerEventHandler("input_source_changed", __FUNC_49A5_)
	else
		registerVal2:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal20 = Engine.GetModelForController(arg1)
	registerVal19 = Engine.GetModel(registerVal20, "LastInput")
	local function __FUNC_4A2F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal19, __FUNC_4A2F_)
	registerVal20 = Engine.GetModelForController(arg1)
	registerVal19 = Engine.GetModel(registerVal20, "firstTimeFlowState")
	local function __FUNC_4B4B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "firstTimeFlowState"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal19, __FUNC_4B4B_)
	registerVal8.id = "loadoutOptions"
	local function __FUNC_4C70_(arg0, arg1)
		local registerVal2 = arg0.loadoutOptions:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_4C70_)
	local function __FUNC_4D7A_(arg0)
		arg0.ChooseCharacterLoadoutCarouselItemInfoAreaWeapon:close()
		arg0.loadoutOptions:close()
		arg0.contractInfo:close()
		arg0.BMContractsContractAmountWidget:close()
		arg0.BMContractsCharacterNotActivatedWidget:close()
		arg0.BMContractsContractAmountWidget0:close()
		arg0.loadoutItemDescription:close()
		arg0.blackMarketDesc:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_4D7A_)
	if __FUNC_6B0_ then
		__FUNC_6B0_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ChooseContractCharacterLoadoutCarouselItem_InfoArea.new = __FUNC_723_
