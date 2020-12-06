-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.Pregame.Pregame_TimerOverlay")
require("ui.uieditor.widgets.CAC.UnlockTokensWidget")
require("ui.uieditor.widgets.Prestige.Prestige_PermanentUnlockTokensWidget")
require("ui.uieditor.widgets.CharacterCustomization.ChooseCharacter_TabBar")
require("ui.uieditor.menus.CharacterCustomization.PersonalizeCharacter")
require("ui.uieditor.widgets.CharacterCustomization.ChooseCharacterLoadoutCarouselItem")
require("ui.uieditor.widgets.CharacterCustomization.ChooseCharacter_HelpBubble")
require("ui.uieditor.widgets.Lobby.Common.FE_TalkersWidget")
require("ui.uieditor.widgets.PC.ChooseCharacter.CharacterMiniSelector")
local function __FUNC_50E_(arg0, arg1)
	if arg0.characterCarousel.activeWidget and arg0.characterCarousel.activeWidget.carouselPos then
		arg0.charMiniSelector.characterGrid:setActiveIndex(1.000000, arg0.characterCarousel.activeWidget.carouselPos)
	end
	local function __FUNC_72B_(arg0, arg2)
		local registerVal2 = FirstTimeSetup_Overview(arg1)
		if registerVal2 then
			FirstTimeSetup_SetChangedCharacter(arg1)
		end
		if arg2.index then
			if not arg0.m_sync then
				arg0.m_sync = true
				arg0.characterCarousel:setActiveIndex(1.000000, arg2.index)
			else
				arg0.m_sync = nil
			end
		end
	end

	arg0:registerEventHandler("mini_item_selected", __FUNC_72B_)
	local function __FUNC_87F_(arg2, arg3)
		if arg3.list == arg0.characterCarousel and arg3.list.activeWidget and arg3.list.activeWidget.carouselPos then
			if not arg0.m_sync then
				arg0.m_sync = true
				local registerVal6 = {}
				registerVal6.name = "sync_mini_selector"
				registerVal6.index = arg3.list.activeWidget.carouselPos
				registerVal6.controller = arg1
				arg0.charMiniSelector:processEvent(registerVal6)
			else
				arg0.m_sync = nil
			end
		end
		return true
	end

	arg0:registerEventHandler("list_active_changed", __FUNC_87F_)
	local function __FUNC_A50_(arg0, arg1)
		if not arg0.characterCarousel.activeWidget then
			return 
		end
		arg0.characterCarousel.activeWidget:setHandleMouseButton(false)
		local registerVal3 = arg0.characterCarousel.activeWidget:getParent()
		local registerVal4 = registerVal3:getFirstChild()
		registerVal4:setFocus(false)
		registerVal4:setHandleMouseButton(true)
		if registerVal4 ~= arg0.characterCarousel.activeWidget and registerVal4.currentState == "Flipped" then
			registerVal4:setState("DefaultState", true)
		end
		local registerVal5 = registerVal4:getNextSibling()
	end

	arg0:registerEventHandler("list_focus_changed", __FUNC_A50_)
	local registerVal5 = {}
	registerVal5.name = "list_focus_changed"
	registerVal5.controller = arg1
	arg0:processEvent(registerVal5)
end

local function __FUNC_C0A_(arg0, arg1)
	local function __FUNC_C72_()
	end

	arg0.restoreState = __FUNC_C72_
	CheckGCCatchUp()
end

local function __FUNC_C9C_(arg0, arg1)
	arg0.characterCarousel.m_disableNavigation = true
	if CoD.isPC then
		__FUNC_50E_(arg0, arg1)
	end
	CoD.perController[arg1].weaponCategory = "specialist"
	CoD.CACUtility.CreateUnlockTokenModels(arg1)
	CoD.PrestigeUtility.CreatePermanentUnlockTokenModel(arg1)
end

local function __FUNC_E77_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("ChooseCharacterLoadout")
	if __FUNC_C0A_ then
		__FUNC_C0A_(registerVal1, arg0)
	end
	registerVal1.soundSet = "MP_SpecialistsAndScorestreaks"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "ChooseCharacterLoadout.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 1280.000000, -1280.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.450000)
	registerVal1:addElement(registerVal3)
	registerVal1.BGblack = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_fe_cp_background"))
	registerVal1:addElement(registerVal4)
	registerVal1.BlackBG = registerVal4
	local registerVal5 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal5.titleLabel:setText(Engine.Localize(AppendString("_CAPS", "HEROES_CHOOSE_HERO_CAPS")))
	registerVal5.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("HEROES_CHOOSE_HERO_CAPS"))
	registerVal5.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_character"))
	registerVal1:addElement(registerVal5)
	registerVal1.GenericMenuFrame0 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -408.000000, 408.000000)
	registerVal6:setTopBottom(true, false, 104.000000, 133.000000)
	registerVal6:setRGB(0.220000, 0.220000, 0.220000)
	registerVal6:setAlpha(0.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.bumperBacking = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 191.000000, 227.000000)
	registerVal7:setTopBottom(false, false, -269.750000, -266.250000)
	registerVal7:setZRot(180.000000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal7)
	registerVal1.Image0 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 191.000000, 227.000000)
	registerVal8:setTopBottom(false, false, -229.000000, -226.000000)
	registerVal8:setZRot(180.000000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal8)
	registerVal1.Image1 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 191.000000, 227.000000)
	registerVal9:setTopBottom(false, false, 277.500000, 280.500000)
	registerVal9:setZRot(180.000000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal9)
	registerVal1.Image4 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 1053.000000, 1089.000000)
	registerVal10:setTopBottom(false, false, 278.000000, 281.500000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal10)
	registerVal1.Image5 = registerVal10
	local registerVal11 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal11:setTopBottom(true, false, 86.000000, 703.250000)
	registerVal1:addElement(registerVal11)
	registerVal1.FEMenuLeftGraphics = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, -11.000000, 1293.000000)
	registerVal12:setTopBottom(true, false, 80.000000, 88.000000)
	registerVal12:setRGB(0.900000, 0.900000, 0.900000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal12)
	registerVal1.CategoryListLine = registerVal12
	local registerVal13 = CoD.Pregame_TimerOverlay.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal13:setTopBottom(true, true, 0.000000, 0.000000)
	local registerVal16 = {}
	local registerVal17 = {}
	registerVal17.stateName = "CharacterSelect"
	local function __FUNC_2E20_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal17.condition = __FUNC_2E20_
	registerVal16 = {registerVal17}
	registerVal13:mergeStateConditions(registerVal16)
	registerVal17 = Engine.GetGlobalModel()
	registerVal16 = Engine.GetModel(registerVal17, "lobbyRoot.Pregame.state")
	local function __FUNC_2E6C_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.state"
		registerVal1:updateElementState(registerVal13, registerVal4)
	end

	registerVal13:subscribeToModel(registerVal16, __FUNC_2E6C_)
	registerVal1:addElement(registerVal13)
	registerVal1.PregameTimerOverlay = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 1056.000000, 1092.000000)
	registerVal14:setTopBottom(false, false, -269.750000, -266.250000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal14)
	registerVal1.Image00 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, 1056.000000, 1092.000000)
	registerVal15:setTopBottom(false, false, -229.000000, -226.000000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal15)
	registerVal1.Image10 = registerVal15
	registerVal16 = CoD.UnlockTokensWidget.new(registerVal1, arg0)
	registerVal16:setLeftRight(false, true, -362.000000, -123.000000)
	registerVal16:setTopBottom(true, false, 36.000000, 80.000000)
	registerVal16:setAlpha(HideIfInPermanentUnlockMenu(1.000000))
	registerVal16.tokenLabel:setTTF("fonts/escom.ttf")
	registerVal1:addElement(registerVal16)
	registerVal1.UnlockTokensWidget = registerVal16
	registerVal17 = CoD.Prestige_PermanentUnlockTokensWidget.new(registerVal1, arg0)
	registerVal17:setLeftRight(false, true, -362.000000, -81.000000)
	registerVal17:setTopBottom(true, false, 36.000000, 80.000000)
	registerVal17:setAlpha(ShowIfInPermanentUnlockMenu(0.000000))
	registerVal17.tokenLabel:setTTF("fonts/escom.ttf")
	registerVal1:addElement(registerVal17)
	registerVal1.PermanentUnlockTokensWidget = registerVal17
	local registerVal18 = CoD.ChooseCharacter_TabBar.new(registerVal1, arg0)
	registerVal18:setLeftRight(true, false, 232.000000, 1048.000000)
	registerVal18:setTopBottom(true, false, 91.250000, 134.500000)
	registerVal1:addElement(registerVal18)
	registerVal1.ChooseCharacterTabBar = registerVal18
	local registerVal19 = LUI.UIList.new(registerVal1, arg0, 4.000000, 200.000000, nil, false, true, 232.000000, 0.000000, false, false)
	registerVal19:makeFocusable()
	registerVal19:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal19:setTopBottom(true, false, 136.750000, 636.750000)
	registerVal19:setWidgetType(CoD.ChooseCharacterLoadoutCarouselItem)
	registerVal19:setHorizontalCount(7.000000)
	registerVal19:setSpacing(4.000000)
	registerVal19:setDataSource("HeroesList")
	local function __FUNC_2F99_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "disabled"
		CoD.Menu.UpdateButtonShownState(registerVal19, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		CoD.Menu.UpdateButtonShownState(registerVal19, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal19:linkToElementModel(registerVal19, "disabled", true, __FUNC_2F99_)
	local registerVal23 = Engine.GetGlobalModel()
	local registerVal22 = Engine.GetModel(registerVal23, "lobbyRoot.Pregame.state")
	local function __FUNC_31BE_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "lobbyRoot.Pregame.state"
		CoD.Menu.UpdateButtonShownState(registerVal19, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		CoD.Menu.UpdateButtonShownState(registerVal19, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal19:subscribeToModel(registerVal22, __FUNC_31BE_)
	registerVal23 = Engine.GetModelForController(arg0)
	registerVal22 = Engine.GetModel(registerVal23, "firstTimeFlowState")
	local function __FUNC_33F1_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "firstTimeFlowState"
		CoD.Menu.UpdateButtonShownState(registerVal19, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		CoD.Menu.UpdateButtonShownState(registerVal19, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal19:subscribeToModel(registerVal22, __FUNC_33F1_)
	local function __FUNC_3620_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "heroIndex"
		CoD.Menu.UpdateButtonShownState(registerVal19, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal19:linkToElementModel(registerVal19, "heroIndex", true, __FUNC_3620_)
	local function __FUNC_37E1_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = nil
		CoD.Menu.UpdateButtonShownState(registerVal19, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal19:linkToElementModel(registerVal19, nil, true, __FUNC_37E1_)
	local function __FUNC_398F_(arg1, arg2)
		UpdateEditingHero(arg1, arg0)
		UpdateElementState(registerVal1, "leftBumper", arg0)
		UpdateElementState(registerVal1, "rightBumper", arg0)
		PlaySoundSetSound(registerVal1, "navigate")
		SetSpecialistAsOld(registerVal1, arg1, arg0)
		return nil
	end

	registerVal19:registerEventHandler("list_item_gain_focus", __FUNC_398F_)
	local function __FUNC_3AC5_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_RB)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_LB)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
		return registerVal3
	end

	registerVal19:registerEventHandler("gain_focus", __FUNC_3AC5_)
	local function __FUNC_3DDE_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal19:registerEventHandler("lose_focus", __FUNC_3DDE_)
	local function __FUNC_3EAE_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsRepeatButtonPress(arg3)
		if not registerVal4 then
			NavigateToNextHeroCard(arg1, registerVal1, arg0, arg2)
			return true
		end
	end

	local function __FUNC_3F49_(arg0, arg1, arg2)
		local registerVal4 = IsRepeatButtonPress(nil)
		if not registerVal4 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RB, "")
			return false
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal19, arg0, Enum.LUIButton.LUI_KEY_RB, nil, __FUNC_3EAE_, __FUNC_3F49_, false)
	local function __FUNC_406F_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsRepeatButtonPress(arg3)
		if not registerVal4 then
			NavigateToPreviousHeroCard(arg1, registerVal1, arg0, arg2)
			return true
		end
	end

	local function __FUNC_410D_(arg0, arg1, arg2)
		local registerVal4 = IsRepeatButtonPress(nil)
		if not registerVal4 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LB, "")
			return false
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal19, arg0, Enum.LUIButton.LUI_KEY_LB, nil, __FUNC_406F_, __FUNC_410D_, false)
	local function __FUNC_4233_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDisabled(arg0, arg2)
		registerVal4 = PregameActive()
		registerVal4 = CharacterCustomization_IsEnabled(arg2)
		registerVal4 = FirstTimeSetup_IsActive(arg2)
		registerVal4 = IsElementInState(arg0, "DefaultState")
		registerVal4 = IsInPermanentUnlockMenu(arg2)
		registerVal4 = CharacterHasAnyWeaponUnlocked(arg2, arg0)
		registerVal4 = IsCharacterBlackjack(arg2, arg0)
		if not registerVal4 and not registerVal4 and registerVal4 and not registerVal4 and registerVal4 and not registerVal4 and registerVal4 and not registerVal4 then
			NavigateToMenu(registerVal1, "PersonalizeCharacter", true, arg2)
			return true
		else
			registerVal4 = IsDisabled(arg0, arg2)
			registerVal4 = PregameActive()
			registerVal4 = FirstTimeSetup_IsActive(arg2)
			registerVal4 = IsElementInState(arg0, "DefaultState")
			registerVal4 = IsInPermanentUnlockMenu(arg2)
			registerVal4 = IsCharacterBlackjack(arg2, arg0)
			if not registerVal4 and not registerVal4 and not registerVal4 and registerVal4 and not registerVal4 and registerVal4 then
				SetElementState(registerVal1, arg0, arg2, "Challenges")
				UpdateAllMenuButtonPrompts(arg1, arg2)
				PlaySoundSetSound(registerVal1, "navigate")
				return true
			else
				registerVal4 = IsDisabled(arg0, arg2)
				registerVal4 = PregameActive()
				registerVal4 = FirstTimeSetup_IsActive(arg2)
				registerVal4 = IsElementInState(arg0, "Challenges")
				registerVal4 = IsInPermanentUnlockMenu(arg2)
				registerVal4 = IsCharacterBlackjack(arg2, arg0)
				if not registerVal4 and not registerVal4 and not registerVal4 and registerVal4 and not registerVal4 and registerVal4 then
					SetElementState(registerVal1, arg0, arg2, "DefaultState")
					UpdateAllMenuButtonPrompts(arg1, arg2)
					PlaySoundAlias("uin_paint_decal_nav")
					return true
				end
			end
		end
	end

	local function __FUNC_46A1_(arg0, arg1, arg2)
		local registerVal3 = IsDisabled(arg0, arg2)
		registerVal3 = PregameActive()
		registerVal3 = CharacterCustomization_IsEnabled(arg2)
		registerVal3 = FirstTimeSetup_IsActive(arg2)
		registerVal3 = IsElementInState(arg0, "DefaultState")
		registerVal3 = IsInPermanentUnlockMenu(arg2)
		registerVal3 = CharacterHasAnyWeaponUnlocked(arg2, arg0)
		registerVal3 = IsCharacterBlackjack(arg2, arg0)
		if not registerVal3 and not registerVal3 and registerVal3 and not registerVal3 and registerVal3 and not registerVal3 and registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "")
			return false
		else
			registerVal3 = IsDisabled(arg0, arg2)
			registerVal3 = PregameActive()
			registerVal3 = FirstTimeSetup_IsActive(arg2)
			registerVal3 = IsElementInState(arg0, "DefaultState")
			registerVal3 = IsInPermanentUnlockMenu(arg2)
			registerVal3 = IsCharacterBlackjack(arg2, arg0)
			if not registerVal3 and not registerVal3 and not registerVal3 and registerVal3 and not registerVal3 and registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "")
				return false
			else
				registerVal3 = IsDisabled(arg0, arg2)
				registerVal3 = PregameActive()
				registerVal3 = FirstTimeSetup_IsActive(arg2)
				registerVal3 = IsElementInState(arg0, "Challenges")
				registerVal3 = IsInPermanentUnlockMenu(arg2)
				registerVal3 = IsCharacterBlackjack(arg2, arg0)
				if not registerVal3 and not registerVal3 and not registerVal3 and registerVal3 and not registerVal3 and registerVal3 then
					CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "")
					return false
				end
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal19, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "P", __FUNC_4233_, __FUNC_46A1_, false)
	local function __FUNC_4B0A_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInState(arg0, "DefaultState")
		registerVal4 = IsDisabled(arg0, arg2)
		registerVal4 = IsInPermanentUnlockMenu(arg2)
		registerVal4 = FirstTimeSetup_IsActive(arg2)
		registerVal4 = CharacterDraftActive()
		if registerVal4 and not registerVal4 and not registerVal4 and not registerVal4 and not registerVal4 then
			SetElementState(registerVal1, arg0, arg2, "Flipped")
			UpdateAllMenuButtonPrompts(arg1, arg2)
			return true
		else
			registerVal4 = IsElementInState(arg0, "Flipped")
			registerVal4 = IsDisabled(arg0, arg2)
			registerVal4 = IsInPermanentUnlockMenu(arg2)
			registerVal4 = FirstTimeSetup_IsActive(arg2)
			if registerVal4 and not registerVal4 and not registerVal4 and not registerVal4 then
				SetElementState(registerVal1, arg0, arg2, "DefaultState")
				UpdateAllMenuButtonPrompts(arg1, arg2)
				PlaySoundAlias("uin_paint_decal_nav")
				return true
			end
		end
	end

	local function __FUNC_4D8B_(arg0, arg1, arg2)
		local registerVal3 = IsElementInState(arg0, "DefaultState")
		registerVal3 = IsDisabled(arg0, arg2)
		registerVal3 = IsInPermanentUnlockMenu(arg2)
		registerVal3 = FirstTimeSetup_IsActive(arg2)
		registerVal3 = CharacterDraftActive()
		if registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "")
			return false
		else
			registerVal3 = IsElementInState(arg0, "Flipped")
			registerVal3 = IsDisabled(arg0, arg2)
			registerVal3 = IsInPermanentUnlockMenu(arg2)
			registerVal3 = FirstTimeSetup_IsActive(arg2)
			if registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "")
				return false
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal19, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "C", __FUNC_4B0A_, __FUNC_4D8B_, false)
	local function __FUNC_5049_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInAnyState(arg0, "Flipped", "Challenges")
		if registerVal4 then
			SetElementState(registerVal1, arg0, arg2, "DefaultState")
			UpdateAllMenuButtonPrompts(arg1, arg2)
			PlaySoundAlias("uin_paint_decal_nav")
			return true
		end
	end

	local function __FUNC_5196_(arg0, arg1, arg2)
		local registerVal3 = IsElementInAnyState(arg0, "Flipped", "Challenges")
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal19, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_5049_, __FUNC_5196_, false)
	registerVal1:addElement(registerVal19)
	registerVal1.characterCarousel = registerVal19
	local registerVal20 = CoD.ChooseCharacter_HelpBubble.new(registerVal1, arg0)
	registerVal20:setLeftRight(true, false, 64.000000, 241.000000)
	registerVal20:setTopBottom(true, false, 93.750000, 633.500000)
	registerVal1:addElement(registerVal20)
	registerVal1.ChooseCharacterHelpBubble = registerVal20
	local registerVal21 = CoD.FE_TalkersWidget.new(registerVal1, arg0)
	registerVal21:setLeftRight(false, true, -254.000000, -64.000000)
	registerVal21:setTopBottom(true, false, 88.000000, 475.000000)
	registerVal1:addElement(registerVal21)
	registerVal1.FETalkersWidget = registerVal21
	registerVal23 = IsPC()
	if registerVal23 then
		registerVal23 = CoD.CharacterMiniSelector.new(registerVal1, arg0)
	else
		registerVal23 = LUI.UIElement.createFake()
	end
	registerVal23:setLeftRight(true, false, 491.000000, 791.000000)
	registerVal23:setTopBottom(true, false, 641.500000, 671.500000)
	registerVal23 = IsPC()
	if registerVal23 then
		registerVal1:addElement(registerVal23)
	end
	registerVal1.charMiniSelector = registerVal23
	local function __FUNC_52F7_(arg1)
		registerVal18:setModel(arg1, arg0)
	end

	registerVal18:linkToElementModel(registerVal19, nil, false, __FUNC_52F7_)
	registerVal23 = {}
	local registerVal24 = {}
	local function __FUNC_5346_()
		registerVal1:setupElementClipCounter(1.000000)
		local function __FUNC_5433_(arg0, arg1)
			local function __FUNC_5588_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 290.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_5588_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5588_)
		end

		registerVal19:completeAnimation()
		registerVal1.characterCarousel:setAlpha(0.000000)
		__FUNC_5433_(registerVal19, {})
	end

	registerVal24.DefaultClip = __FUNC_5346_
	registerVal23.DefaultState = registerVal24
	registerVal1.clipsPerState = registerVal23
	local registerVal26 = Engine.GetGlobalModel()
	local registerVal25 = Engine.GetModel(registerVal26, "lobbyRoot.Pregame.state")
	local function __FUNC_573D_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "lobbyRoot.Pregame.state"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
	end

	registerVal1:subscribeToModel(registerVal25, __FUNC_573D_)
	registerVal26 = Engine.GetModelForController(arg0)
	registerVal25 = Engine.GetModel(registerVal26, "firstTimeFlowState")
	local function __FUNC_5909_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "firstTimeFlowState"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
	end

	registerVal1:subscribeToModel(registerVal25, __FUNC_5909_)
	local function __FUNC_5AD0_(arg1, arg2)
		ValidateBlackjackPurchase(arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_opened", __FUNC_5AD0_)
	local function __FUNC_5B6C_(arg1, arg2)
		SetCharacterModeToSessionMode(registerVal1, arg1, arg0, Enum.eModes.MODE_MULTIPLAYER)
		RefreshCharacterCustomization(registerVal1, arg1, arg0)
		SendClientScriptMenuChangeNotify(arg0, registerVal1, true)
		ShowHeaderKickerAndIcon(registerVal1)
		SetElementStateByElementName(registerVal1, "GenericMenuFrame0", arg0, "Update")
		local registerVal5 = {}
		registerVal5.elementName = "cac3dTitleIntermediary0"
		registerVal5.clipName = "Intro"
		PlayClipOnElement(registerVal1, registerVal5, arg0)
		PlayClip(registerVal1, "intro", arg0)
		SetHeadingKickerTextToGameMode("")
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_5B6C_)
	local function __FUNC_5E78_(arg0, arg1, arg2, arg3)
		local registerVal4 = CharacterDraftActive()
		registerVal4 = FirstTimeSetup_IsActive(arg2)
		if not registerVal4 and not registerVal4 then
			ClearSavedHeroForEdits(arg2)
			ClearSavedState(registerVal1, arg2)
			PlaySoundSetSound(registerVal1, "menu_go_back")
			SendClientScriptMenuChangeNotify(arg2, arg1, false)
			SetPerControllerTableProperty(arg2, "updateNewBreadcrumbs", true)
			GoBack(registerVal1, arg2)
			ForceLobbyButtonUpdate(arg2)
			return true
		end
	end

	local function __FUNC_6088_(arg0, arg1, arg2)
		local registerVal3 = CharacterDraftActive()
		registerVal3 = FirstTimeSetup_IsActive(arg2)
		if not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_5E78_, __FUNC_6088_, false)
	local function __FUNC_61F0_(arg0, arg1, arg2, arg3)
		local registerVal4 = AlwaysFalse()
		if registerVal4 then
			return true
		end
	end

	local function __FUNC_6249_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = AlwaysFalse()
		if registerVal3 then
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_61F0_, __FUNC_6249_, true)
	local function __FUNC_6373_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsStarterPack(arg2)
		if registerVal4 then
			StarterParckPurchase(registerVal1, arg2, arg1)
			return true
		end
	end

	local function __FUNC_6401_(arg0, arg1, arg2)
		local registerVal3 = IsStarterPack(arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LTRIG, "PLATFORM_STARTER_PACK_UPGRADE_TITLE")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_LTRIG, "U", __FUNC_6373_, __FUNC_6401_, false)
	registerVal5:setModel(registerVal1.buttonModel, arg0)
	registerVal19.id = "characterCarousel"
	registerVal25 = {}
	registerVal25.name = "menu_loaded"
	registerVal25.controller = arg0
	registerVal1:processEvent(registerVal25)
	registerVal25 = {}
	registerVal25.name = "update_state"
	registerVal25.menu = registerVal1
	registerVal1:processEvent(registerVal25)
	registerVal23 = registerVal1:restoreState()
	if not registerVal23 then
		registerVal25 = {}
		registerVal25.name = "gain_focus"
		registerVal25.controller = arg0
		registerVal1.characterCarousel:processEvent(registerVal25)
	end
	local function __FUNC_6543_(arg1)
		arg1.GenericMenuFrame0:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.PregameTimerOverlay:close()
		arg1.UnlockTokensWidget:close()
		arg1.PermanentUnlockTokensWidget:close()
		arg1.ChooseCharacterTabBar:close()
		arg1.characterCarousel:close()
		arg1.ChooseCharacterHelpBubble:close()
		arg1.FETalkersWidget:close()
		arg1.charMiniSelector:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "ChooseCharacterLoadout.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_6543_)
	if __FUNC_C9C_ then
		__FUNC_C9C_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.ChooseCharacterLoadout = __FUNC_E77_
