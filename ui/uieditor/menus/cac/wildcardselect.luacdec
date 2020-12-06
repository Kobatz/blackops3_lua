-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BackgroundFrames.CACFullPopupBackground")
require("ui.uieditor.menus.CAC.Popups.OutOfUnlockTokens")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.WildcardItemButton")
require("ui.uieditor.widgets.Pregame.Pregame_TimerOverlay")
require("ui.uieditor.widgets.Prestige.Prestige_PermanentUnlockTokensWidget")
local function __FUNC_31D_(arg0, arg1, arg2)
	for index3=1.000000, CoD.CACUtility.maxBonusCards, 1.000000 do
		local registerVal8 = arg0:getModel(arg1, (("bonuscard" .. index3) .. ".itemIndex"))
		local registerVal9 = Engine.GetModelValue(registerVal8)
		if registerVal8 and arg2 and registerVal9 == arg2 then
			return ("bonuscard" .. index3)
		end
	end
end

local function __FUNC_469_(arg0, arg1)
	CoD.GenericCACSelectionPreLoadFunc(arg0, arg1, "bonuscard", CoD.perController[arg1].weaponCategory)
end

local function __FUNC_553_(arg0, arg1)
	for index2=1.000000, arg0.selectionList.requestedColumnCount, 1.000000 do
		local registerVal6 = arg0.selectionList:getItemAtPosition(1.000000, index2)
		registerVal6.m_inputDisabled = true
	end
	if CoD.useMouse and CoD.perController[arg1].CACSpecficModelValueFocusTable then
		local registerVal4 = arg0.selectionList:findItem(CoD.perController[arg1].CACSpecficModelValueFocusTable, nil, false, nil)
		registerVal4.m_inputDisabled = false
	end
end

local function __FUNC_71E_(arg0, arg1)
	arg0.getEquippedLoadoutSlot = __FUNC_31D_
	local registerVal2 = IsCACContextualWildcardOpen(arg1)
	if registerVal2 then
		__FUNC_553_(arg0, arg1)
		arg0.selectionList.m_disableNavigation = true
	end
end

local function __FUNC_7FF_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("WildcardSelect")
	if __FUNC_469_ then
		__FUNC_469_(registerVal1, arg0)
	end
	registerVal1.soundSet = "CAC_EditLoadout"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "WildcardSelect.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.CACFullPopupBackground.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3.StartMenuTitlePopup.StartMenuTitleContainerLOC.StartMenu3dTitle.StartMenu3dTitleLabel.Label0:setText(Engine.Localize("MENU_WILDCARDS_CAPS"))
	local function __FUNC_213A_(arg1)
		registerVal3.buttons:setModel(arg1, arg0)
	end

	registerVal3:linkToElementModel(registerVal1, nil, false, __FUNC_213A_)
	registerVal1:addElement(registerVal3)
	registerVal1.background = registerVal3
	local function __FUNC_21A7_(arg0)
		local registerVal1 = Engine.GetModelValue(Engine.GetModel(arg0, "group"))
		if registerVal1 ~= "bonuscard" then
		end
		return true
	end

	local registerVal4 = LUI.UIList.new(registerVal1, arg0, 8.000000, 0.000000, __FUNC_21A7_, true, false, 0.000000, 0.000000, false, false)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(false, false, -556.000000, 556.000000)
	registerVal4:setTopBottom(true, false, 265.250000, 407.250000)
	registerVal4:setWidgetType(CoD.WildcardItemButton)
	registerVal4:setHorizontalCount(10.000000)
	registerVal4:setSpacing(8.000000)
	registerVal4:setDataSource("Unlockables")
	local function __FUNC_226F_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "itemIndex"
		CoD.Menu.UpdateButtonShownState(registerVal4, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal4:linkToElementModel(registerVal4, "itemIndex", true, __FUNC_226F_)
	local function __FUNC_242A_(arg1, arg2)
		local registerVal3 = IsCACItemNew(arg1, arg0)
		registerVal3 = IsInPermanentUnlockMenu(arg0)
		if registerVal3 and not registerVal3 then
			SetCACItemAsOld(arg1, arg0)
			UpdateSelfElementState(registerVal1, arg1, arg0)
		end
		return nil
	end

	registerVal4:registerEventHandler("list_item_gain_focus", __FUNC_242A_)
	local function __FUNC_251C_(arg1, arg2)
		UpdateDataSource(registerVal1, arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("used_permanent_unlock_token", __FUNC_251C_)
	local function __FUNC_25B7_(arg1, arg2)
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

	registerVal4:registerEventHandler("gain_focus", __FUNC_25B7_)
	local function __FUNC_2747_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_2747_)
	local function __FUNC_2816_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsCACItemLocked(arg1, arg0, arg2)
		registerVal4 = IsCACItemPurchased(arg0, arg2)
		registerVal4 = IsCACHaveTokens(arg2)
		registerVal4 = IsInPermanentUnlockMenu(arg2)
		if not registerVal4 and not registerVal4 and not registerVal4 and not registerVal4 then
			SetUnlockConfirmationInfo(arg0, arg2)
			OpenPopup(registerVal1, "OutOfUnlockTokens", arg2)
			return true
		else
			registerVal4 = IsCACItemLocked(arg1, arg0, arg2)
			registerVal4 = IsCACItemPurchased(arg0, arg2)
			registerVal4 = IsCACHaveTokens(arg2)
			registerVal4 = IsInPermanentUnlockMenu(arg2)
			if not registerVal4 and not registerVal4 and registerVal4 and not registerVal4 then
				OpenUnlockClassItemDialog(arg1, arg0, arg2)
				return true
			else
				registerVal4 = IsCACItemLocked(arg1, arg0, arg2)
				registerVal4 = IsCACItemPurchased(arg0, arg2)
				registerVal4 = IsInPermanentUnlockMenu(arg2)
				if not registerVal4 and registerVal4 and not registerVal4 then
					SetClassWildcard(registerVal1, arg0, arg2)
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

	local function __FUNC_2B77_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsCACItemLocked(arg1, arg0, arg2)
		registerVal3 = IsCACItemPurchased(arg0, arg2)
		registerVal3 = IsCACHaveTokens(arg2)
		registerVal3 = IsInPermanentUnlockMenu(arg2)
		if not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
			return true
		else
			registerVal3 = IsCACItemLocked(arg1, arg0, arg2)
			registerVal3 = IsCACItemPurchased(arg0, arg2)
			registerVal3 = IsCACHaveTokens(arg2)
			registerVal3 = IsInPermanentUnlockMenu(arg2)
			if not registerVal3 and not registerVal3 and registerVal3 and not registerVal3 then
				return true
			else
				registerVal3 = IsCACItemLocked(arg1, arg0, arg2)
				registerVal3 = IsCACItemPurchased(arg0, arg2)
				registerVal3 = IsInPermanentUnlockMenu(arg2)
				if not registerVal3 and registerVal3 and not registerVal3 then
					return true
				else
					registerVal3 = IsInPermanentUnlockMenu(arg2)
					registerVal3 = IsPermanentlyUnlocked(arg0, arg2)
					registerVal3 = HavePermanentUnlockTokens(arg2)
					if registerVal3 and not registerVal3 and registerVal3 then
						return true
					end
				end
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal4, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2816_, __FUNC_2B77_, true)
	registerVal1:addElement(registerVal4)
	registerVal1.selectionList = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, 453.000000, 489.000000)
	registerVal5:setTopBottom(true, false, 257.000000, 260.500000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal5)
	registerVal1.listTopRight = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, 453.000000, 489.000000)
	registerVal6:setTopBottom(true, false, 392.000000, 393.750000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal6)
	registerVal1.listBottomRight = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -493.000000, -457.000000)
	registerVal7:setTopBottom(true, false, 255.250000, 258.750000)
	registerVal7:setZRot(180.000000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal7)
	registerVal1.listTopLeft = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -493.000000, -457.000000)
	registerVal8:setTopBottom(true, false, 389.500000, 393.000000)
	registerVal8:setZRot(180.000000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal8)
	registerVal1.listBottomLeft = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, -613.000000, -577.000000)
	registerVal9:setTopBottom(true, false, 496.560000, 500.060000)
	registerVal9:setZRot(180.000000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal9)
	registerVal1.popupBottomLeft = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, false, -613.000000, -577.000000)
	registerVal10:setTopBottom(true, false, 245.310000, 248.810000)
	registerVal10:setZRot(180.000000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal10)
	registerVal1.popupTopLeft = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, false, -597.500000, -592.500000)
	registerVal11:setTopBottom(true, false, 258.000000, 488.380000)
	registerVal11:setAlpha(0.800000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_frontend_lineside"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal11)
	registerVal1.popupLineLeft = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(false, false, -586.000000, -570.000000)
	registerVal12:setTopBottom(true, false, 361.060000, 413.060000)
	registerVal12:setZoom(-5.000000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_titlebackpixelc"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal12)
	registerVal1.popupMiddleLeft = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(false, false, 578.000000, 614.000000)
	registerVal13:setTopBottom(true, false, 497.380000, 501.060000)
	registerVal13:setZRot(360.000000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal13)
	registerVal1.popupBottomRight = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(false, false, 578.000000, 614.000000)
	registerVal14:setTopBottom(true, false, 246.250000, 249.750000)
	registerVal14:setZRot(360.000000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal14)
	registerVal1.popupTopRight = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(false, false, 593.500000, 598.500000)
	registerVal15:setTopBottom(true, false, 259.060000, 489.440000)
	registerVal15:setAlpha(0.800000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_frontend_lineside"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal15)
	registerVal1.popupLineRight = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(false, false, 569.000000, 585.000000)
	registerVal16:setTopBottom(true, false, 360.000000, 412.000000)
	registerVal16:setZoom(-5.000000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_frontend_titlebackpixelc"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal16)
	registerVal1.popupMiddleRight = registerVal16
	local registerVal17 = CoD.Pregame_TimerOverlay.new(registerVal1, arg0)
	registerVal17:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal17:setTopBottom(true, true, 0.000000, 0.000000)
	local registerVal20 = {}
	local registerVal21 = {}
	registerVal21.stateName = "WildcardSelect"
	local function __FUNC_2E8F_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal21.condition = __FUNC_2E8F_
	registerVal20 = {registerVal21}
	registerVal17:mergeStateConditions(registerVal20)
	registerVal21 = Engine.GetGlobalModel()
	registerVal20 = Engine.GetModel(registerVal21, "lobbyRoot.Pregame.state")
	local function __FUNC_2ED8_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.state"
		registerVal1:updateElementState(registerVal17, registerVal4)
	end

	registerVal17:subscribeToModel(registerVal20, __FUNC_2ED8_)
	registerVal1:addElement(registerVal17)
	registerVal1.PregameTimerOverlay = registerVal17
	local registerVal18 = CoD.Prestige_PermanentUnlockTokensWidget.new(registerVal1, arg0)
	registerVal18:setLeftRight(false, true, -362.000000, -81.000000)
	registerVal18:setTopBottom(true, false, 149.000000, 193.000000)
	registerVal18:setAlpha(ShowIfInPermanentUnlockMenu(0.000000))
	registerVal18.tokenLabel:setTTF("fonts/escom.ttf")
	registerVal1:addElement(registerVal18)
	registerVal1.PermanentUnlockTokensWidget = registerVal18
	local registerVal19 = {}
	registerVal20 = {}
	local function __FUNC_3005_()
		registerVal1:setupElementClipCounter(1.000000)
		registerVal18:completeAnimation()
		registerVal1.PermanentUnlockTokensWidget:setLeftRight(false, true, -362.000000, -81.000000)
		registerVal1.PermanentUnlockTokensWidget:setTopBottom(true, false, 149.000000, 193.000000)
		registerVal1.clipFinished(registerVal18, {})
	end

	registerVal20.DefaultClip = __FUNC_3005_
	registerVal19.DefaultState = registerVal20
	registerVal20 = {}
	local function __FUNC_3174_()
		registerVal1:setupElementClipCounter(1.000000)
		registerVal18:completeAnimation()
		registerVal1.PermanentUnlockTokensWidget:setLeftRight(false, true, -362.000000, -81.000000)
		registerVal1.PermanentUnlockTokensWidget:setTopBottom(true, false, 204.000000, 248.000000)
		registerVal1.clipFinished(registerVal18, {})
	end

	registerVal20.DefaultClip = __FUNC_3174_
	registerVal19.Arabic = registerVal20
	registerVal1.clipsPerState = registerVal19
	registerVal21 = {}
	local registerVal22 = {}
	registerVal22.stateName = "Arabic"
	local function __FUNC_32E4_(arg0, arg1, arg2)
		return IsCurrentLanguageArabic()
	end

	registerVal22.condition = __FUNC_32E4_
	registerVal21 = {registerVal22}
	registerVal1:mergeStateConditions(registerVal21)
	local function __FUNC_333D_(arg0, arg1, arg2, arg3)
		GoBackAndUpdateNavigation(registerVal1, arg0, arg2)
		PlaySoundSetSound(registerVal1, "menu_no_selection")
		return true
	end

	local function __FUNC_33ED_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_333D_, __FUNC_33ED_, false)
	local function __FUNC_34E9_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_351C_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_34E9_, __FUNC_351C_, false)
	registerVal3:setModel(registerVal1.buttonModel, arg0)
	registerVal4.id = "selectionList"
	registerVal21 = {}
	registerVal21.name = "menu_loaded"
	registerVal21.controller = arg0
	registerVal1:processEvent(registerVal21)
	registerVal21 = {}
	registerVal21.name = "update_state"
	registerVal21.menu = registerVal1
	registerVal1:processEvent(registerVal21)
	registerVal19 = registerVal1:restoreState()
	if not registerVal19 then
		registerVal21 = {}
		registerVal21.name = "gain_focus"
		registerVal21.controller = arg0
		registerVal1.selectionList:processEvent(registerVal21)
	end
	local function __FUNC_361A_(arg1)
		arg1.background:close()
		arg1.selectionList:close()
		arg1.PregameTimerOverlay:close()
		arg1.PermanentUnlockTokensWidget:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "WildcardSelect.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_361A_)
	if __FUNC_71E_ then
		__FUNC_71E_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.WildcardSelect = __FUNC_7FF_
