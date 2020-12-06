-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuSelectScreen.WeaponNameWidget")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.CharacterCustomization.ChooseCharacterLoadoutCarouselItem_InfoAreaWeapon")
require("ui.uieditor.menus.CAC.Popups.OutOfUnlockTokens")
require("ui.uieditor.widgets.CharacterCustomization.ChooseCharacter_LoadoutListItem")
local function __FUNC_3A8_(arg0, arg1)
	local function __FUNC_44D_(arg2, arg3)
		local registerVal2 = IsGamepad(arg1)
		registerVal2 = string.find(arg3.state, "Overview")
		registerVal2 = string.find(arg3.state, "ChangedCharacter")
		if not registerVal2 and not arg3 or registerVal2 then
			arg0:setState("DefaultState")
		else
			arg0:setState("KeyboardAndMouse")
		end
	end

	arg0.SelectText:registerEventHandler("help_bubble_state_changed", __FUNC_44D_)
end

local function __FUNC_5B6_(arg0, arg1)
	local registerVal2 = IsFirstTimeSetup(arg1, Enum.eModes.MODE_MULTIPLAYER)
	local registerVal4 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.CreateModel(registerVal4, "firstTimeFlowState")
	registerVal4 = Engine.GetModelValue(registerVal3)
	if registerVal4 == nil or registerVal4 == CoD.CCUtility.FirstTimeFlowState.None then
		local registerVal5 = CharacterDraftActive()
		if registerVal2 and not registerVal5 then
			FirstTimeSetup_SetOverview(arg1)
		else
			FirstTimeSetup_SetNone(arg1)
		end
	end
end

local function __FUNC_832_(arg0, arg1)
	if CoD.isPC then
		__FUNC_3A8_(arg0, arg1)
	end
	local registerVal2 = FirstTimeSetup_Overview(arg1)
	if registerVal2 then
		arg0.loadoutOptions:makeNotFocusable()
		local registerVal4 = {}
		registerVal4.name = "lose_focus"
		registerVal4.controller = arg1
		arg0.loadoutOptions:processEvent(registerVal4)
		local registerVal3 = Engine.GetModelForController(arg1)
		registerVal2 = Engine.CreateModel(registerVal3, "firstTimeFlowState")
		local function __FUNC_A48_(arg2)
			local registerVal1 = FirstTimeSetup_Overview(arg1)
			if registerVal1 == false then
				arg0.loadoutOptions:makeFocusable()
				local registerVal3 = {}
				registerVal3.name = "gain_focus"
				registerVal3.controller = arg1
				arg0.loadoutOptions:processEvent(registerVal3)
			end
		end

		arg0:subscribeToModel(registerVal2, __FUNC_A48_)
	end
end

local registerVal4 = InheritFrom(LUI.UIElement)
CoD.ChooseCharacterLoadoutCarouselItem_InfoArea = registerVal4
local function __FUNC_B66_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_5B6_ then
		__FUNC_5B6_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChooseCharacterLoadoutCarouselItem_InfoArea)
	registerVal2.id = "ChooseCharacterLoadoutCarouselItem_InfoArea"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 300.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 500.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 10.000000, 245.000000)
	registerVal3:setTopBottom(true, true, 11.000000, -6.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.600000)
	registerVal2:addElement(registerVal3)
	registerVal2.TempBackground = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 35.000000, 109.000000)
	registerVal4:setTopBottom(true, false, 36.000000, 56.000000)
	registerVal4:setText(LocalizeToUpperString("HEROES_CALLSIGN"))
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal4)
	registerVal2.callsignLabel = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 34.000000, 224.000000)
	registerVal5:setTopBottom(true, false, 320.500000, 339.500000)
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.loadoutItemDescription = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 34.000000, 230.000000)
	registerVal6:setTopBottom(true, false, 100.000000, 119.000000)
	registerVal6:setAlpha(ShowIfInPermanentUnlockMenu(0.000000))
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_217A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "unlockDescription", true, __FUNC_217A_)
	registerVal2:addElement(registerVal6)
	registerVal2.unlockDescription = registerVal6
	local registerVal8 = IsPC()
	if registerVal8 then
		registerVal8 = LUI.UIText.new()
	else
		registerVal8 = LUI.UIElement.createFake()
	end
	registerVal8:setLeftRight(true, false, 32.000000, 232.000000)
	registerVal8:setTopBottom(true, false, 149.000000, 168.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setText(Engine.Localize("MENU_SELECT"))
	registerVal8:setTTF("fonts/default.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal8 = IsPC()
	if registerVal8 then
		registerVal2:addElement(registerVal8)
	end
	registerVal2.SelectText = registerVal8
	registerVal8 = CoD.WeaponNameWidget.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 34.000000, 230.000000)
	registerVal8:setTopBottom(true, false, 60.000000, 94.000000)
	local function __FUNC_2232_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.weaponNameLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "name", true, __FUNC_2232_)
	registerVal2:addElement(registerVal8)
	registerVal2.WeaponNameWidget0 = registerVal8
	local registerVal9 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, 10.000000, -55.000000)
	registerVal9:setTopBottom(false, false, -239.000000, 244.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.FETitleNumBrdr1 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, 19.000000, -67.000000)
	registerVal10:setTopBottom(true, false, 168.000000, 172.000000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrum"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.LeftBoxLine = registerVal10
	local registerVal11 = CoD.ChooseCharacterLoadoutCarouselItem_InfoAreaWeapon.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 33.690000, 216.690000)
	registerVal11:setTopBottom(true, false, 292.000000, 317.500000)
	registerVal2:addElement(registerVal11)
	registerVal2.ChooseCharacterLoadoutCarouselItemInfoAreaWeapon = registerVal11
	local registerVal12 = LUI.UIList.new(arg0, arg1, 10.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal12:makeFocusable()
	registerVal12:setLeftRight(true, false, 29.000000, 219.000000)
	registerVal12:setTopBottom(true, false, 186.500000, 276.500000)
	registerVal12:setWidgetType(CoD.ChooseCharacter_LoadoutListItem)
	registerVal12:setHorizontalCount(2.000000)
	registerVal12:setSpacing(10.000000)
	local function __FUNC_230F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setDataSource(registerVal1)
		end
	end

	registerVal12:linkToElementModel(registerVal2, "loadoutDatasource", true, __FUNC_230F_)
	local registerVal16 = Engine.GetModelForController(arg1)
	local registerVal15 = Engine.GetModel(registerVal16, "firstTimeFlowState")
	local function __FUNC_23A6_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "firstTimeFlowState"
		CoD.Menu.UpdateButtonShownState(registerVal12, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal12:subscribeToModel(registerVal15, __FUNC_23A6_)
	local function __FUNC_256B_(arg2, arg3)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal12:registerEventHandler("input_source_changed", __FUNC_256B_)
	registerVal16 = Engine.GetModelForController(arg1)
	registerVal15 = Engine.GetModel(registerVal16, "LastInput")
	local function __FUNC_2655_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "LastInput"
		CoD.Menu.UpdateButtonShownState(registerVal12, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal12:subscribeToModel(registerVal15, __FUNC_2655_)
	local function __FUNC_2812_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "disabled"
		CoD.Menu.UpdateButtonShownState(registerVal12, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal12:linkToElementModel(registerVal12, "disabled", true, __FUNC_2812_)
	registerVal16 = Engine.GetGlobalModel()
	registerVal15 = Engine.GetModel(registerVal16, "lobbyRoot.lobbyNetworkMode")
	local function __FUNC_29CD_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "lobbyRoot.lobbyNetworkMode"
		CoD.Menu.UpdateButtonShownState(registerVal12, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal12:subscribeToModel(registerVal15, __FUNC_29CD_)
	registerVal16 = Engine.GetGlobalModel()
	registerVal15 = Engine.GetModel(registerVal16, "lobbyRoot.lobbyNav")
	local function __FUNC_2B9B_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "lobbyRoot.lobbyNav"
		CoD.Menu.UpdateButtonShownState(registerVal12, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal12:subscribeToModel(registerVal15, __FUNC_2B9B_)
	local function __FUNC_2D5F_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "itemIndex"
		CoD.Menu.UpdateButtonShownState(registerVal12, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal12:linkToElementModel(registerVal12, "itemIndex", true, __FUNC_2D5F_)
	local function __FUNC_2F1A_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = nil
		CoD.Menu.UpdateButtonShownState(registerVal12, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal12:linkToElementModel(registerVal12, nil, true, __FUNC_2F1A_)
	registerVal16 = Engine.GetGlobalModel()
	registerVal15 = Engine.GetModel(registerVal16, "lobbyRoot.Pregame.Update")
	local function __FUNC_30C4_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "lobbyRoot.Pregame.Update"
		CoD.Menu.UpdateButtonShownState(registerVal12, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal12:subscribeToModel(registerVal15, __FUNC_30C4_)
	local function __FUNC_3291_(arg2, arg3)
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

	registerVal12:registerEventHandler("gain_focus", __FUNC_3291_)
	local function __FUNC_3423_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal12:registerEventHandler("lose_focus", __FUNC_3423_)
	local function __FUNC_34F2_(arg0, arg1, arg2, arg3)
		local registerVal4 = FirstTimeSetup_Overview(arg2)
		registerVal4 = IsInPermanentUnlockMenu(arg2)
		if registerVal4 and not registerVal4 then
			return true
		else
			registerVal4 = FirstTimeSetup_ChangedCharacter(arg2)
			registerVal4 = IsGamepad(arg2)
			registerVal4 = IsInPermanentUnlockMenu(arg2)
			if registerVal4 and registerVal4 and not registerVal4 then
				return true
			else
				registerVal4 = IsGamepad(arg2)
				registerVal4 = FirstTimeSetup_ChangedCharacter(arg2)
				registerVal4 = IsDisabled(arg0, arg2)
				registerVal4 = IsLive()
				registerVal4 = IsInPermanentUnlockMenu(arg2)
				if not registerVal4 and registerVal4 and not registerVal4 and registerVal4 and not registerVal4 then
					OpenUnlockClassItemDialog(arg1, arg0, arg2)
					FirstTimeSetup_SetComplete(arg2)
					return true
				else
					registerVal4 = IsDisabled(arg0, arg2)
					registerVal4 = IsLive()
					registerVal4 = FirstTimeSetup_Complete(arg2)
					registerVal4 = IsInPermanentUnlockMenu(arg2)
					if not registerVal4 and registerVal4 and registerVal4 and not registerVal4 then
						OpenUnlockClassItemDialog(arg1, arg0, arg2)
						return true
					else
						registerVal4 = IsCACItemLocked(arg1, arg0, arg2)
						registerVal4 = IsCACItemPurchased(arg0, arg2)
						registerVal4 = IsCACHaveTokens(arg2)
						registerVal4 = IsHeroLocked(arg0, arg2)
						registerVal4 = IsInPermanentUnlockMenu(arg2)
						if not registerVal4 and not registerVal4 and not registerVal4 and not registerVal4 and not registerVal4 then
							SetUnlockConfirmationInfo(arg0, arg2)
							OpenPopup(registerVal2, "OutOfUnlockTokens", arg2, "", "")
							return true
						else
							registerVal4 = IsCACItemLocked(arg1, arg0, arg2)
							registerVal4 = IsCACItemPurchased(arg0, arg2)
							registerVal4 = IsCACHaveTokens(arg2)
							registerVal4 = IsHeroLocked(arg0, arg2)
							registerVal4 = IsInPermanentUnlockMenu(arg2)
							if not registerVal4 and not registerVal4 and registerVal4 and not registerVal4 and not registerVal4 then
								OpenUnlockClassItemDialog(arg1, arg0, arg2)
								return true
							else
								registerVal4 = IsCACItemLocked(arg1, arg0, arg2)
								registerVal4 = IsCACItemPurchased(arg0, arg2)
								registerVal4 = ItemIsBannedLobby(arg1, arg0, arg2)
								registerVal4 = CharacterLoadoutDrafted(arg1, arg0, arg2)
								registerVal4 = IsHeroLocked(arg0, arg2)
								registerVal4 = IsInPermanentUnlockMenu(arg2)
								if not registerVal4 and registerVal4 and not registerVal4 and not registerVal4 and not registerVal4 and not registerVal4 then
									SelectHero(registerVal2, arg0, arg2)
									HeroLoadoutChanged(registerVal2, arg0, arg2)
									CharacterDraftLoadoutSelected(registerVal2, arg0, arg2)
									SendClientScriptMenuChangeNotify(arg2, arg1, false)
									SetPerControllerTableProperty(arg2, "updateNewBreadcrumbs", true)
									ForceLobbyButtonUpdate(arg2)
									GoBack(registerVal2, arg2)
									return true
								else
									registerVal4 = IsInPermanentUnlockMenu(arg2)
									registerVal4 = IsPermanentlyUnlocked(arg0, arg2)
									registerVal4 = HavePermanentUnlockTokens(arg2)
									if registerVal4 and not registerVal4 and registerVal4 then
										OpenPermanentUnlockClassItemDialog(arg1, arg0, arg2)
										return true
									end
								end
							end
						end
					end
				end
			end
		end
	end

	local function __FUNC_3CC1_(arg0, arg1, arg2)
		local registerVal3 = FirstTimeSetup_Overview(arg2)
		registerVal3 = IsInPermanentUnlockMenu(arg2)
		if registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "")
			return false
		else
			registerVal3 = FirstTimeSetup_ChangedCharacter(arg2)
			registerVal3 = IsGamepad(arg2)
			registerVal3 = IsInPermanentUnlockMenu(arg2)
			if registerVal3 and registerVal3 and not registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "")
				return false
			else
				registerVal3 = IsGamepad(arg2)
				registerVal3 = FirstTimeSetup_ChangedCharacter(arg2)
				registerVal3 = IsDisabled(arg0, arg2)
				registerVal3 = IsLive()
				registerVal3 = IsInPermanentUnlockMenu(arg2)
				if not registerVal3 and registerVal3 and not registerVal3 and registerVal3 and not registerVal3 then
					CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "")
					return false
				else
					registerVal3 = IsDisabled(arg0, arg2)
					registerVal3 = IsLive()
					registerVal3 = FirstTimeSetup_Complete(arg2)
					registerVal3 = IsInPermanentUnlockMenu(arg2)
					if not registerVal3 and registerVal3 and registerVal3 and not registerVal3 then
						CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_UNLOCK")
						return true
					else
						registerVal3 = IsCACItemLocked(arg1, arg0, arg2)
						registerVal3 = IsCACItemPurchased(arg0, arg2)
						registerVal3 = IsCACHaveTokens(arg2)
						registerVal3 = IsHeroLocked(arg0, arg2)
						registerVal3 = IsInPermanentUnlockMenu(arg2)
						if not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
							CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_UNLOCK")
							return true
						else
							registerVal3 = IsCACItemLocked(arg1, arg0, arg2)
							registerVal3 = IsCACItemPurchased(arg0, arg2)
							registerVal3 = IsCACHaveTokens(arg2)
							registerVal3 = IsHeroLocked(arg0, arg2)
							registerVal3 = IsInPermanentUnlockMenu(arg2)
							if not registerVal3 and not registerVal3 and registerVal3 and not registerVal3 and not registerVal3 then
								CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_UNLOCK")
								return true
							else
								registerVal3 = IsCACItemLocked(arg1, arg0, arg2)
								registerVal3 = IsCACItemPurchased(arg0, arg2)
								registerVal3 = ItemIsBannedLobby(arg1, arg0, arg2)
								registerVal3 = CharacterLoadoutDrafted(arg1, arg0, arg2)
								registerVal3 = IsHeroLocked(arg0, arg2)
								registerVal3 = IsInPermanentUnlockMenu(arg2)
								if not registerVal3 and registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
									CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
									return true
								else
									registerVal3 = IsInPermanentUnlockMenu(arg2)
									registerVal3 = IsPermanentlyUnlocked(arg0, arg2)
									registerVal3 = HavePermanentUnlockTokens(arg2)
									if registerVal3 and not registerVal3 and registerVal3 then
										CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
										return true
									end
								end
							end
						end
					end
				end
			end
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal12, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_34F2_, __FUNC_3CC1_, false)
	registerVal2:addElement(registerVal12)
	registerVal2.loadoutOptions = registerVal12
	local function __FUNC_4492_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal12, "description", true, __FUNC_4492_)
	local function __FUNC_454A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.loadOutItemName:setText(LocalizeToUpperString(registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal12, "name", true, __FUNC_454A_)
	local registerVal13 = {}
	local registerVal14 = {}
	local function __FUNC_4628_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal5:completeAnimation()
		registerVal2.loadoutItemDescription:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.unlockDescription:setAlpha(ShowIfInPermanentUnlockMenu(0.000000))
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.SelectText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal11:completeAnimation()
		registerVal2.ChooseCharacterLoadoutCarouselItemInfoAreaWeapon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.loadoutOptions:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_4628_
	registerVal13.DefaultState = registerVal14
	registerVal14 = {}
	local function __FUNC_48F9_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal5:completeAnimation()
		registerVal2.loadoutItemDescription:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.unlockDescription:setAlpha(ShowIfInPermanentUnlockMenu(1.000000))
		registerVal2.clipFinished(registerVal6, {})
		registerVal11:completeAnimation()
		registerVal2.ChooseCharacterLoadoutCarouselItemInfoAreaWeapon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.loadoutOptions:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_48F9_
	registerVal13.Locked = registerVal14
	registerVal14 = {}
	local function __FUNC_4B71_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal6:completeAnimation()
		registerVal2.unlockDescription:setAlpha(ShowIfInPermanentUnlockMenu(0.000000))
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.SelectText:setLeftRight(true, false, 34.000000, 234.000000)
		registerVal2.SelectText:setTopBottom(true, false, 149.000000, 168.000000)
		registerVal2.SelectText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal14.DefaultClip = __FUNC_4B71_
	registerVal13.KeyboardAndMouse = registerVal14
	registerVal2.clipsPerState = registerVal13
	registerVal15 = {}
	registerVal16 = {}
	registerVal16.stateName = "Locked"
	local function __FUNC_4D93_(arg0, arg2, arg3)
		return IsDisabled(arg2, arg1)
	end

	registerVal16.condition = __FUNC_4D93_
	local registerVal17 = {}
	registerVal17.stateName = "KeyboardAndMouse"
	local function __FUNC_4DE4_(arg0, arg2, arg3)
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

	registerVal17.condition = __FUNC_4DE4_
	registerVal15 = {registerVal16, registerVal17}
	registerVal2:mergeStateConditions(registerVal15)
	local function __FUNC_4E96_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "disabled", true, __FUNC_4E96_)
	if registerVal2.m_eventHandlers.input_source_changed then
		local function __FUNC_4FB2_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal2:registerEventHandler("input_source_changed", __FUNC_4FB2_)
	else
		registerVal2:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal16 = Engine.GetModelForController(arg1)
	registerVal15 = Engine.GetModel(registerVal16, "LastInput")
	local function __FUNC_503B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal15, __FUNC_503B_)
	registerVal16 = Engine.GetModelForController(arg1)
	registerVal15 = Engine.GetModel(registerVal16, "firstTimeFlowState")
	local function __FUNC_5157_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "firstTimeFlowState"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal15, __FUNC_5157_)
	registerVal12.id = "loadoutOptions"
	local function __FUNC_527C_(arg0, arg1)
		local registerVal2 = arg0.loadoutOptions:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_527C_)
	local function __FUNC_5386_(arg0)
		arg0.WeaponNameWidget0:close()
		arg0.FETitleNumBrdr1:close()
		arg0.ChooseCharacterLoadoutCarouselItemInfoAreaWeapon:close()
		arg0.loadoutOptions:close()
		arg0.loadoutItemDescription:close()
		arg0.unlockDescription:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_5386_)
	if __FUNC_832_ then
		__FUNC_832_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ChooseCharacterLoadoutCarouselItem_InfoArea.new = __FUNC_B66_
