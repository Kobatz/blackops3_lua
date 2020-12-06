-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Challenges.Challenges_Category_Title")
require("ui.uieditor.widgets.Challenges.Challenges_Category_Button")
require("ui.uieditor.menus.Challenges.Challenges_Specialists")
require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
local function __FUNC_312_(arg0, arg1)
	local function __FUNC_38B_(arg0, arg2)
		local registerVal3 = Engine.GetGlobalModel()
		local registerVal2 = Engine.GetModel(registerVal3, "challengeCategory")
		if registerVal2 == nil then
			return 
		end
		registerVal3 = Engine.GetModelValue(registerVal2)
		if registerVal3 == nil then
			return 
		end
		local registerVal6 = {}
		registerVal6.name = "lose_focus"
		registerVal6.controller = arg1
		arg0:dispatchEventToChildren(registerVal6)
		if registerVal3 == "weapons" then
		else
			if registerVal3 == "abilities" then
			else
				if registerVal3 == "killjoys" then
				end
			end
		end
		if arg0.KilljoysButton then
			local registerVal7 = {}
			registerVal7.name = "gain_focus"
			registerVal7.controller = arg1
			arg0.KilljoysButton:processEvent(registerVal7)
		end
	end

	arg0:registerEventHandler("set_selected_button", __FUNC_38B_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.Challenges_FrameWidget_Specialists = registerVal2
local function __FUNC_5FC_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Challenges_FrameWidget_Specialists)
	registerVal2.id = "Challenges_FrameWidget_Specialists"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1160.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 520.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Challenges_Category_Title.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 51.000000, -88.000000)
	registerVal3:setTopBottom(true, false, 30.000000, 80.000000)
	registerVal3.titleText:setText(Engine.Localize("HEROES_SPECIALISTS_CAPS"))
	local function __FUNC_1D7D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.PercentCompleteWidget.percentCompleteCircle:setAlpha(HideIfNumEqualTo(0.000000, registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "specialist", __FUNC_1D7D_)
	local function __FUNC_1E92_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal3.PercentCompleteWidget.percentCompleteCircle:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "specialist", __FUNC_1E92_)
	local function __FUNC_203E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.PercentCompleteWidget.percentText:setText(Engine.Localize(NumberAsPercentRounded(registerVal1)))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "specialist", __FUNC_203E_)
	registerVal2:addElement(registerVal3)
	registerVal2.operationsTitle = registerVal3
	local registerVal4 = CoD.Challenges_Category_Button.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 9.000000, 385.000000)
	registerVal4:setTopBottom(true, false, 117.000000, 312.000000)
	registerVal4.CategoryIcon:setImage(RegisterImage("uie_t7_icons_challenges_mp_specialist_weapons"))
	registerVal4.UnlockInstructions:setText(Engine.Localize("MENU_CHALLENGES_WEAPON_HINTTEXT_LOCK"))
	registerVal4.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_CHALLENGE_CATEGORY_SPECIALISTWEAPONS"))
	local function __FUNC_216A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.PercentCompleteWidget.percentCompleteCircle:setAlpha(HideIfNumEqualTo(0.000000, registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "weapons", __FUNC_216A_)
	local function __FUNC_227E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal4.PercentCompleteWidget.percentCompleteCircle:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "weapons", __FUNC_227E_)
	local function __FUNC_242A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.PercentCompleteWidget.percentText:setText(Engine.Localize(NumberAsPercentRounded(registerVal1)))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "weapons", __FUNC_242A_)
	local function __FUNC_2556_(arg2, arg3)
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

	registerVal4:registerEventHandler("gain_focus", __FUNC_2556_)
	local function __FUNC_26E7_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_26E7_)
	local function __FUNC_27B6_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInState(arg0, "Disabled")
		if not registerVal4 then
			SetGlobalModelValue("challengeCategory", "weapons")
			OpenPopup(registerVal2, "Challenges_Specialists", arg2)
			return true
		end
	end

	local function __FUNC_28CC_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsElementInState(arg0, "Disabled")
		if not registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_27B6_, __FUNC_28CC_, false)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Disabled"
	local function __FUNC_2A16_(arg0, arg2, arg3)
		return Challenges_IsCategoryLocked(arg2, arg1, "weapons")
	end

	registerVal8.condition = __FUNC_2A16_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal2:addElement(registerVal4)
	registerVal2.WeaponsButton = registerVal4
	local registerVal5 = CoD.Challenges_Category_Button.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -188.000000, 188.000000)
	registerVal5:setTopBottom(true, false, 117.000000, 312.000000)
	registerVal5.CategoryIcon:setImage(RegisterImage("uie_t7_icons_challenges_mp_specialist_abilities"))
	registerVal5.UnlockInstructions:setText(Engine.Localize("MENU_CHALLENGES_WEAPON_HINTTEXT_LOCK"))
	registerVal5.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_CHALLENGE_CATEGORY_SPECIALISTABILITIES"))
	local function __FUNC_2A8E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.PercentCompleteWidget.percentCompleteCircle:setAlpha(HideIfNumEqualTo(0.000000, registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "abilities", __FUNC_2A8E_)
	local function __FUNC_2BA2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal5.PercentCompleteWidget.percentCompleteCircle:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "abilities", __FUNC_2BA2_)
	local function __FUNC_2D4E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.PercentCompleteWidget.percentText:setText(Engine.Localize(NumberAsPercentRounded(registerVal1)))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "abilities", __FUNC_2D4E_)
	local function __FUNC_2E7A_(arg2, arg3)
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

	registerVal5:registerEventHandler("gain_focus", __FUNC_2E7A_)
	local function __FUNC_300B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_300B_)
	local function __FUNC_30DA_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInState(arg0, "Disabled")
		if not registerVal4 then
			SetGlobalModelValue("challengeCategory", "abilities")
			OpenPopup(registerVal2, "Challenges_Specialists", arg2)
			return true
		end
	end

	local function __FUNC_31F2_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsElementInState(arg0, "Disabled")
		if not registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_30DA_, __FUNC_31F2_, false)
	registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Disabled"
	local function __FUNC_333A_(arg0, arg2, arg3)
		return Challenges_IsCategoryLocked(arg2, arg1, "abilities")
	end

	registerVal9.condition = __FUNC_333A_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal2:addElement(registerVal5)
	registerVal2.AbilitiesButton = registerVal5
	local registerVal6 = CoD.Challenges_Category_Button.new(arg0, arg1)
	registerVal6:setLeftRight(false, true, -384.000000, -9.000000)
	registerVal6:setTopBottom(true, false, 117.000000, 312.000000)
	registerVal6.CategoryIcon:setImage(RegisterImage("uie_t7_icons_challenges_mp_specialist_killjoy"))
	registerVal6.UnlockInstructions:setText(Engine.Localize("MENU_CHALLENGES_WEAPON_HINTTEXT_LOCK"))
	registerVal6.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_CHALLENGE_CATEGORY_SPECIALISTKILLJOYS"))
	local function __FUNC_33B4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.PercentCompleteWidget.percentCompleteCircle:setAlpha(HideIfNumEqualTo(0.000000, registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "killjoys", __FUNC_33B4_)
	local function __FUNC_34CA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal6.PercentCompleteWidget.percentCompleteCircle:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "killjoys", __FUNC_34CA_)
	local function __FUNC_3676_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.PercentCompleteWidget.percentText:setText(Engine.Localize(NumberAsPercentRounded(registerVal1)))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "killjoys", __FUNC_3676_)
	local function __FUNC_37A2_(arg2, arg3)
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

	registerVal6:registerEventHandler("gain_focus", __FUNC_37A2_)
	local function __FUNC_3933_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_3933_)
	local function __FUNC_3A02_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInState(arg0, "Disabled")
		if not registerVal4 then
			SetGlobalModelValue("challengeCategory", "killjoys")
			OpenPopup(registerVal2, "Challenges_Specialists", arg2)
			return true
		end
	end

	local function __FUNC_3B19_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsElementInState(arg0, "Disabled")
		if not registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal6, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_3A02_, __FUNC_3B19_, false)
	registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Disabled"
	local function __FUNC_3C62_(arg0, arg2, arg3)
		return Challenges_IsCategoryLocked(arg2, arg1, "killjoys")
	end

	registerVal10.condition = __FUNC_3C62_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal2:addElement(registerVal6)
	registerVal2.KilljoysButton = registerVal6
	registerVal7 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 392.000000, -392.000000)
	registerVal7:setTopBottom(true, true, 320.000000, -6.000000)
	registerVal7:setAlpha(0.250000)
	registerVal2:addElement(registerVal7)
	registerVal2.StartMenuframenoBG0 = registerVal7
	registerVal8 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, 776.000000, -8.000000)
	registerVal8:setTopBottom(true, true, 320.000000, -6.000000)
	registerVal8:setAlpha(0.250000)
	registerVal2:addElement(registerVal8)
	registerVal2.StartMenuframenoBG00 = registerVal8
	registerVal9 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, 9.000000, -775.000000)
	registerVal9:setTopBottom(true, true, 320.000000, -6.000000)
	registerVal9:setAlpha(0.250000)
	registerVal2:addElement(registerVal9)
	registerVal2.StartMenuframenoBG01 = registerVal9
	registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, -29.130000, 6.870000)
	registerVal10:setTopBottom(true, false, 116.750000, 120.750000)
	registerVal10:setYRot(-180.000000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.Pixel2001 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, -29.130000, 6.870000)
	registerVal11:setTopBottom(true, false, 306.750000, 310.750000)
	registerVal11:setYRot(-180.000000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.Pixel20010 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, -29.130000, 6.870000)
	registerVal12:setTopBottom(true, false, 319.750000, 323.750000)
	registerVal12:setYRot(-180.000000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.Pixel200100 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, -29.130000, 6.870000)
	registerVal13:setTopBottom(true, false, 509.750000, 513.750000)
	registerVal13:setYRot(-180.000000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.Pixel2001000 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 1154.870000, 1190.870000)
	registerVal14:setTopBottom(true, false, 116.750000, 120.750000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.Pixel20011 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, 1154.870000, 1190.870000)
	registerVal15:setTopBottom(true, false, 306.750000, 310.750000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.Pixel200101 = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, 1154.870000, 1190.870000)
	registerVal16:setTopBottom(true, false, 319.750000, 323.750000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal16)
	registerVal2.Pixel2001001 = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(true, false, 1154.870000, 1190.870000)
	registerVal17:setTopBottom(true, false, 509.750000, 513.750000)
	registerVal17:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal17)
	registerVal2.Pixel20010000 = registerVal17
	local registerVal18 = {}
	registerVal18.right = registerVal5
	registerVal4.navigation = registerVal18
	registerVal18 = {}
	registerVal18.left = registerVal4
	registerVal18.right = registerVal6
	registerVal5.navigation = registerVal18
	registerVal18 = {}
	registerVal18.left = registerVal5
	registerVal6.navigation = registerVal18
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal4.id = "WeaponsButton"
	registerVal5.id = "AbilitiesButton"
	registerVal6.id = "KilljoysButton"
	local function __FUNC_3CDB_(arg0, arg1)
		local registerVal2 = arg0.WeaponsButton:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_3CDB_)
	local function __FUNC_3DE1_(arg0)
		arg0.operationsTitle:close()
		arg0.WeaponsButton:close()
		arg0.AbilitiesButton:close()
		arg0.KilljoysButton:close()
		arg0.StartMenuframenoBG0:close()
		arg0.StartMenuframenoBG00:close()
		arg0.StartMenuframenoBG01:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3DE1_)
	if __FUNC_312_ then
		__FUNC_312_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.Challenges_FrameWidget_Specialists.new = __FUNC_5FC_
