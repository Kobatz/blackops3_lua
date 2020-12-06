-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Challenges.Challenges_Category_Title")
require("ui.uieditor.widgets.Challenges.Challenges_Category_Button")
require("ui.uieditor.menus.Challenges.Challenges_ZM_Stickerbooks")
require("ui.uieditor.widgets.Challenges.Challenges_Summary_NearCompletion_SM")
require("ui.uieditor.menus.Challenges.Challenges_NearCompletion")
require("ui.uieditor.widgets.Challenges.Challenges_DarkOps_Button")
local function __FUNC_3B4_(arg0, arg1)
	local function __FUNC_42F_(arg0, arg2)
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
		if registerVal3 == "zombiehunter" then
		else
			if registerVal3 == "survivalist" then
			else
				if registerVal3 == "gumgobbler" then
				else
					if registerVal3 == "darkops" then
					end
				end
			end
		end
		if arg0.DarkOpsButton then
			local registerVal7 = {}
			registerVal7.name = "gain_focus"
			registerVal7.controller = arg1
			arg0.DarkOpsButton:processEvent(registerVal7)
		end
	end

	arg0:registerEventHandler("set_selected_button", __FUNC_42F_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.Challenges_ZM_Summary = registerVal2
local function __FUNC_6F2_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Challenges_ZM_Summary)
	registerVal2.id = "Challenges_ZM_Summary"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1160.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 520.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Challenges_Category_Title.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 51.000000, -88.000000)
	registerVal3:setTopBottom(true, false, 30.000000, 80.000000)
	registerVal3.titleText:setText(Engine.Localize("MENU_TOTAL_COMPLETION"))
	local function __FUNC_1F67_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.PercentCompleteWidget.percentCompleteCircle:setAlpha(HideIfNumEqualTo(0.000000, registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "ChallengesZMCategoryStats", "zm", __FUNC_1F67_)
	local function __FUNC_207A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal3.PercentCompleteWidget.percentCompleteCircle:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "ChallengesZMCategoryStats", "zm", __FUNC_207A_)
	local function __FUNC_2226_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.PercentCompleteWidget.percentText:setText(Engine.Localize(NumberAsPercentRounded(registerVal1)))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "ChallengesZMCategoryStats", "zm", __FUNC_2226_)
	registerVal2:addElement(registerVal3)
	registerVal2.operationsTitle = registerVal3
	local registerVal4 = CoD.Challenges_Category_Button.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 9.000000, 385.000000)
	registerVal4:setTopBottom(true, false, 117.000000, 312.000000)
	registerVal4.CategoryIcon:setImage(RegisterImage("uie_t7_icons_challenges_zm_zombiehunter"))
	registerVal4.UnlockInstructions:setText(Engine.Localize("MENU_CHALLENGES_WEAPON_HINTTEXT_LOCK"))
	registerVal4.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_CHALLENGE_CATEGORY_ZOMBIEHUNTER"))
	local function __FUNC_2352_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.PercentCompleteWidget.percentCompleteCircle:setAlpha(HideIfNumEqualTo(0.000000, registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "ChallengesZMCategoryStats", "zombiehunter", __FUNC_2352_)
	local function __FUNC_2466_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal4.PercentCompleteWidget.percentCompleteCircle:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "ChallengesZMCategoryStats", "zombiehunter", __FUNC_2466_)
	local function __FUNC_2612_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.PercentCompleteWidget.percentText:setText(Engine.Localize(NumberAsPercentRounded(registerVal1)))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "ChallengesZMCategoryStats", "zombiehunter", __FUNC_2612_)
	local function __FUNC_273E_(arg2, arg3)
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

	registerVal4:registerEventHandler("gain_focus", __FUNC_273E_)
	local function __FUNC_28CF_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_28CF_)
	local function __FUNC_299E_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInState(arg0, "Disabled")
		if not registerVal4 then
			SetGlobalModelValue("challengeCategory", "zombiehunter")
			OpenPopup(registerVal2, "Challenges_ZM_Stickerbooks", arg2)
			return true
		end
	end

	local function __FUNC_2ABD_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsElementInState(arg0, "Disabled")
		if not registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_299E_, __FUNC_2ABD_, false)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Disabled"
	local function __FUNC_2C06_(arg0, arg2, arg3)
		return Challenges_IsCategoryLocked(arg2, arg1, "zombiehunter")
	end

	registerVal8.condition = __FUNC_2C06_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal2:addElement(registerVal4)
	registerVal2.ZombieHunterButton = registerVal4
	local registerVal5 = CoD.Challenges_Category_Button.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -188.000000, 188.000000)
	registerVal5:setTopBottom(true, false, 117.000000, 312.000000)
	registerVal5.CategoryIcon:setImage(RegisterImage("uie_t7_icons_challenges_zm_survivalist"))
	registerVal5.UnlockInstructions:setText(Engine.Localize("MENU_CHALLENGES_WEAPON_HINTTEXT_LOCK"))
	registerVal5.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_CHALLENGE_CATEGORY_SURVIVALIST"))
	local function __FUNC_2C83_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.PercentCompleteWidget.percentCompleteCircle:setAlpha(HideIfNumEqualTo(0.000000, registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "ChallengesZMCategoryStats", "survivalist", __FUNC_2C83_)
	local function __FUNC_2D96_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal5.PercentCompleteWidget.percentCompleteCircle:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "ChallengesZMCategoryStats", "survivalist", __FUNC_2D96_)
	local function __FUNC_2F42_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.PercentCompleteWidget.percentText:setText(Engine.Localize(NumberAsPercentRounded(registerVal1)))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "ChallengesZMCategoryStats", "survivalist", __FUNC_2F42_)
	local function __FUNC_306E_(arg2, arg3)
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

	registerVal5:registerEventHandler("gain_focus", __FUNC_306E_)
	local function __FUNC_31FF_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_31FF_)
	local function __FUNC_32CE_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInState(arg0, "Disabled")
		if not registerVal4 then
			SetGlobalModelValue("challengeCategory", "survivalist")
			OpenPopup(registerVal2, "Challenges_ZM_Stickerbooks", arg2)
			return true
		end
	end

	local function __FUNC_33EC_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsElementInState(arg0, "Disabled")
		if not registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_32CE_, __FUNC_33EC_, false)
	registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Disabled"
	local function __FUNC_3536_(arg0, arg2, arg3)
		return Challenges_IsCategoryLocked(arg2, arg1, "survivalist")
	end

	registerVal9.condition = __FUNC_3536_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal2:addElement(registerVal5)
	registerVal2.SurvivalistButton = registerVal5
	local registerVal6 = CoD.Challenges_Category_Button.new(arg0, arg1)
	registerVal6:setLeftRight(false, true, -384.000000, -9.000000)
	registerVal6:setTopBottom(true, false, 117.000000, 312.000000)
	registerVal6.CategoryIcon:setImage(RegisterImage("uie_t7_icons_challenges_zm_gumgobbler"))
	registerVal6.UnlockInstructions:setText(Engine.Localize("MENU_CHALLENGES_WEAPON_HINTTEXT_LOCK"))
	registerVal6.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_CHALLENGE_CATEGORY_GUMGOBBLER"))
	local function __FUNC_35B2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.PercentCompleteWidget.percentCompleteCircle:setAlpha(HideIfNumEqualTo(0.000000, registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "ChallengesZMCategoryStats", "gumgobbler", __FUNC_35B2_)
	local function __FUNC_36C6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal6.PercentCompleteWidget.percentCompleteCircle:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "ChallengesZMCategoryStats", "gumgobbler", __FUNC_36C6_)
	local function __FUNC_3872_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.PercentCompleteWidget.percentText:setText(Engine.Localize(NumberAsPercentRounded(registerVal1)))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "ChallengesZMCategoryStats", "gumgobbler", __FUNC_3872_)
	local function __FUNC_399E_(arg2, arg3)
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

	registerVal6:registerEventHandler("gain_focus", __FUNC_399E_)
	local function __FUNC_3B2F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_3B2F_)
	local function __FUNC_3BFE_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInState(arg0, "Disabled")
		if not registerVal4 then
			SetGlobalModelValue("challengeCategory", "gumgobbler")
			OpenPopup(registerVal2, "Challenges_ZM_Stickerbooks", arg2)
			return true
		end
	end

	local function __FUNC_3D1B_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsElementInState(arg0, "Disabled")
		if not registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal6, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_3BFE_, __FUNC_3D1B_, false)
	registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Disabled"
	local function __FUNC_3E62_(arg0, arg2, arg3)
		return Challenges_IsCategoryLocked(arg2, arg1, "gumgobbler")
	end

	registerVal10.condition = __FUNC_3E62_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal2:addElement(registerVal6)
	registerVal2.GumGobblerButton = registerVal6
	registerVal7 = CoD.Challenges_Summary_NearCompletion_SM.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 9.000000, 749.000000)
	registerVal7:setTopBottom(false, true, -141.500000, -61.500000)
	local function __FUNC_3EDD_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal7.NearCompletionWidget.ProgressBar:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "ChallengesZMNearCompletion", "statPercent", __FUNC_3EDD_)
	local function __FUNC_407F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.NearCompletionWidget.ProgressFraction:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "ChallengesZMNearCompletion", "statFractionText", __FUNC_407F_)
	local function __FUNC_4186_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.NearCompletionWidget.ChallengeIcon.Image:setImage(RegisterImage(GetBackgroundByID(registerVal1)))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "ChallengesZMNearCompletion", "iconId", __FUNC_4186_)
	local function __FUNC_42C3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.NearCompletionWidget.ChallengeTitle.textBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "ChallengesZMNearCompletion", "title", __FUNC_42C3_)
	local function __FUNC_43E5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.NearCompletionWidget.ChallengeDescription.textBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "ChallengesZMNearCompletion", "description", __FUNC_43E5_)
	local function __FUNC_450F_(arg2, arg3)
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

	registerVal7:registerEventHandler("gain_focus", __FUNC_450F_)
	local function __FUNC_469F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_469F_)
	local function __FUNC_476E_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInState(arg0, "AllChallengesComplete")
		if not registerVal4 then
			OpenPopup(registerVal2, "Challenges_NearCompletion", arg2)
			return true
		end
	end

	local function __FUNC_483B_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsElementInState(arg0, "AllChallengesComplete")
		if not registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal7, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_476E_, __FUNC_483B_, false)
	registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "AllChallengesComplete"
	local function __FUNC_498F_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "ChallengesZMCategoryStats.zm", 1.000000)
	end

	registerVal11.condition = __FUNC_498F_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "ChallengesZMCategoryStats.zm")
	local function __FUNC_4A18_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "ChallengesZMCategoryStats.zm"
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:subscribeToModel(registerVal10, __FUNC_4A18_)
	registerVal2:addElement(registerVal7)
	registerVal2.NearCompletionButton = registerVal7
	registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, -29.130000, 6.870000)
	registerVal8:setTopBottom(true, false, 116.750000, 120.750000)
	registerVal8:setYRot(-180.000000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.Pixel2001 = registerVal8
	registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, -29.130000, 6.870000)
	registerVal9:setTopBottom(true, false, 306.750000, 310.750000)
	registerVal9:setYRot(-180.000000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.Pixel20010 = registerVal9
	registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 1154.870000, 1190.870000)
	registerVal10:setTopBottom(true, false, 116.750000, 120.750000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.Pixel20011 = registerVal10
	registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 1154.870000, 1190.870000)
	registerVal11:setTopBottom(true, false, 306.750000, 310.750000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.Pixel200101 = registerVal11
	local registerVal12 = CoD.Challenges_DarkOps_Button.new(arg0, arg1)
	registerVal12:setLeftRight(false, true, -384.000000, -9.000000)
	registerVal12:setTopBottom(false, true, -141.500000, -14.500000)
	registerVal12.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_CHALLENGE_CATEGORY_DARKOPS"))
	local function __FUNC_4B4A_(arg2, arg3)
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

	registerVal12:registerEventHandler("gain_focus", __FUNC_4B4A_)
	local function __FUNC_4CDB_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal12:registerEventHandler("lose_focus", __FUNC_4CDB_)
	local function __FUNC_4DAA_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInState(arg0, "Disabled")
		if not registerVal4 then
			SetGlobalModelValue("challengeCategory", "darkops")
			OpenPopup(registerVal2, "Challenges_ZM_Stickerbooks", arg2)
			return true
		end
	end

	local function __FUNC_4EC4_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsElementInState(arg0, "Disabled")
		if not registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal12, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_4DAA_, __FUNC_4EC4_, false)
	local registerVal15 = {}
	local registerVal16 = {}
	registerVal16.stateName = "Disabled"
	local function __FUNC_500E_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal16.condition = __FUNC_500E_
	registerVal15 = {registerVal16}
	registerVal12:mergeStateConditions(registerVal15)
	registerVal2:addElement(registerVal12)
	registerVal2.DarkOpsButton = registerVal12
	local registerVal13 = {}
	registerVal13.right = registerVal5
	registerVal13.down = registerVal7
	registerVal4.navigation = registerVal13
	registerVal13 = {}
	registerVal13.left = registerVal4
	registerVal13.right = registerVal6
	registerVal13.down = registerVal7
	registerVal5.navigation = registerVal13
	registerVal13 = {}
	registerVal13.left = registerVal5
	registerVal13.down = registerVal12
	registerVal6.navigation = registerVal13
	registerVal13 = {}
	local registerVal14 = {}
	registerVal14 = {registerVal4, registerVal5}
	registerVal13.up = registerVal14
	registerVal13.right = registerVal12
	registerVal7.navigation = registerVal13
	registerVal13 = {}
	registerVal13.left = registerVal7
	registerVal13.up = registerVal6
	registerVal12.navigation = registerVal13
	registerVal13 = {}
	registerVal14 = {}
	local function __FUNC_5059_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal7:completeAnimation()
		registerVal2.NearCompletionButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal14.DefaultClip = __FUNC_5059_
	registerVal13.DefaultState = registerVal14
	registerVal14 = {}
	local function __FUNC_515F_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal7:completeAnimation()
		registerVal2.NearCompletionButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal14.DefaultClip = __FUNC_515F_
	registerVal13.NoNearComplete = registerVal14
	registerVal2.clipsPerState = registerVal13
	registerVal15 = {}
	registerVal16 = {}
	registerVal16.stateName = "NoNearComplete"
	local function __FUNC_5268_(arg0, arg2, arg3)
		return IsModelValueTrue(arg1, "noNearCompleteZM")
	end

	registerVal16.condition = __FUNC_5268_
	registerVal15 = {registerVal16}
	registerVal2:mergeStateConditions(registerVal15)
	registerVal16 = Engine.GetModelForController(arg1)
	registerVal15 = Engine.GetModel(registerVal16, "noNearCompleteZM")
	local function __FUNC_52DC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "noNearCompleteZM"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal15, __FUNC_52DC_)
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal4.id = "ZombieHunterButton"
	registerVal5.id = "SurvivalistButton"
	registerVal6.id = "GumGobblerButton"
	registerVal7.id = "NearCompletionButton"
	registerVal12.id = "DarkOpsButton"
	local function __FUNC_5402_(arg0, arg1)
		local registerVal2 = arg0.ZombieHunterButton:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_5402_)
	local function __FUNC_550E_(arg0)
		arg0.operationsTitle:close()
		arg0.ZombieHunterButton:close()
		arg0.SurvivalistButton:close()
		arg0.GumGobblerButton:close()
		arg0.NearCompletionButton:close()
		arg0.DarkOpsButton:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_550E_)
	if __FUNC_3B4_ then
		__FUNC_3B4_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.Challenges_ZM_Summary.new = __FUNC_6F2_
