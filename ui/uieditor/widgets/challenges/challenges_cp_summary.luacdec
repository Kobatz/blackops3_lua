-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Challenges.Challenges_Category_Title")
require("ui.uieditor.widgets.Challenges.Challenges_Category_Button")
require("ui.uieditor.menus.Challenges.Challenges_CP_Stickerbooks")
require("ui.uieditor.widgets.Challenges.Challenges_Summary_NearCompletion_SM")
require("ui.uieditor.menus.Challenges.Challenges_NearCompletion")
local function __FUNC_366_(arg0, arg1)
	local function __FUNC_3DF_(arg0, arg2)
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
		if registerVal3 == "missions" then
		else
			if registerVal3 == "tott" then
			else
				if registerVal3 == "career" then
				end
			end
		end
		if arg0.CareerButton then
			local registerVal7 = {}
			registerVal7.name = "gain_focus"
			registerVal7.controller = arg1
			arg0.CareerButton:processEvent(registerVal7)
		end
	end

	arg0:registerEventHandler("set_selected_button", __FUNC_3DF_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.Challenges_CP_Summary = registerVal2
local function __FUNC_64F_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Challenges_CP_Summary)
	registerVal2.id = "Challenges_CP_Summary"
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
	local function __FUNC_1CD5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.PercentCompleteWidget.percentCompleteCircle:setAlpha(HideIfNumEqualTo(0.000000, registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "ChallengesCPCategoryStats", "cp", __FUNC_1CD5_)
	local function __FUNC_1DEA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal3.PercentCompleteWidget.percentCompleteCircle:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "ChallengesCPCategoryStats", "cp", __FUNC_1DEA_)
	local function __FUNC_1F96_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.PercentCompleteWidget.percentText:setText(Engine.Localize(NumberAsPercentRounded(registerVal1)))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "ChallengesCPCategoryStats", "cp", __FUNC_1F96_)
	registerVal2:addElement(registerVal3)
	registerVal2.operationsTitle = registerVal3
	local registerVal4 = CoD.Challenges_Category_Button.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 9.000000, 383.000000)
	registerVal4:setTopBottom(true, false, 117.000000, 312.000000)
	registerVal4.CategoryIcon:setImage(RegisterImage("uie_barracks_ass_bootcamp"))
	registerVal4.UnlockInstructions:setText(Engine.Localize("MENU_CHALLENGES_WEAPON_HINTTEXT_LOCK"))
	registerVal4.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MPUI_CATEGORY_MISSIONS_CAPS"))
	local function __FUNC_20C2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.PercentCompleteWidget.percentCompleteCircle:setAlpha(HideIfNumEqualTo(0.000000, registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "ChallengesCPCategoryStats", "missions", __FUNC_20C2_)
	local function __FUNC_21D6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal4.PercentCompleteWidget.percentCompleteCircle:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "ChallengesCPCategoryStats", "missions", __FUNC_21D6_)
	local function __FUNC_2382_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.PercentCompleteWidget.percentText:setText(Engine.Localize(NumberAsPercentRounded(registerVal1)))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "ChallengesCPCategoryStats", "missions", __FUNC_2382_)
	local function __FUNC_24AE_(arg2, arg3)
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

	registerVal4:registerEventHandler("gain_focus", __FUNC_24AE_)
	local function __FUNC_263F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_263F_)
	local function __FUNC_270E_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInState(arg0, "Disabled")
		if not registerVal4 then
			SetGlobalModelValue("challengeCategory", "missions")
			OpenPopup(registerVal2, "Challenges_CP_Stickerbooks", arg2)
			return true
		end
	end

	local function __FUNC_2829_(arg0, arg1, arg2)
		local registerVal3 = IsElementInState(arg0, "Disabled")
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_270E_, __FUNC_2829_, false)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Disabled"
	local function __FUNC_2972_(arg0, arg2, arg3)
		return Challenges_IsCategoryLocked(arg2, arg1, "missions")
	end

	registerVal8.condition = __FUNC_2972_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal2:addElement(registerVal4)
	registerVal2.MissionsButton = registerVal4
	local registerVal5 = CoD.Challenges_Category_Button.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -188.000000, 188.000000)
	registerVal5:setTopBottom(true, false, 117.000000, 312.000000)
	registerVal5.CategoryIcon:setImage(RegisterImage("uie_barracks_ass_killer"))
	registerVal5.UnlockInstructions:setText(Engine.Localize("MENU_CHALLENGES_WEAPON_HINTTEXT_LOCK"))
	registerVal5.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_CHALLENGE_CATEGORY_TOOLSOFTHETRADE"))
	local function __FUNC_29EB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.PercentCompleteWidget.percentCompleteCircle:setAlpha(HideIfNumEqualTo(0.000000, registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "ChallengesCPCategoryStats", "tott", __FUNC_29EB_)
	local function __FUNC_2AFE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal5.PercentCompleteWidget.percentCompleteCircle:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "ChallengesCPCategoryStats", "tott", __FUNC_2AFE_)
	local function __FUNC_2CAA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.PercentCompleteWidget.percentText:setText(Engine.Localize(NumberAsPercentRounded(registerVal1)))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "ChallengesCPCategoryStats", "tott", __FUNC_2CAA_)
	local function __FUNC_2DD6_(arg2, arg3)
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

	registerVal5:registerEventHandler("gain_focus", __FUNC_2DD6_)
	local function __FUNC_2F67_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_2F67_)
	local function __FUNC_3036_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInState(arg0, "Disabled")
		if not registerVal4 then
			SetGlobalModelValue("challengeCategory", "tott")
			OpenPopup(registerVal2, "Challenges_CP_Stickerbooks", arg2)
			return true
		end
	end

	local function __FUNC_314D_(arg0, arg1, arg2)
		local registerVal3 = IsElementInState(arg0, "Disabled")
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_3036_, __FUNC_314D_, false)
	registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Disabled"
	local function __FUNC_3296_(arg0, arg2, arg3)
		return Challenges_IsCategoryLocked(arg2, arg1, "tott")
	end

	registerVal9.condition = __FUNC_3296_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal2:addElement(registerVal5)
	registerVal2.ToolsOfTheTradeButton = registerVal5
	local registerVal6 = CoD.Challenges_Category_Button.new(arg0, arg1)
	registerVal6:setLeftRight(false, true, -383.000000, -9.000000)
	registerVal6:setTopBottom(true, false, 117.000000, 312.000000)
	registerVal6.CategoryIcon:setImage(RegisterImage("uie_barracks_ass_humiliation"))
	registerVal6.UnlockInstructions:setText(Engine.Localize("MENU_CHALLENGES_WEAPON_HINTTEXT_LOCK"))
	registerVal6.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_CHALLENGE_CATEGORY_CAREER"))
	local function __FUNC_330B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.PercentCompleteWidget.percentCompleteCircle:setAlpha(HideIfNumEqualTo(0.000000, registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "ChallengesCPCategoryStats", "career", __FUNC_330B_)
	local function __FUNC_341E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal6.PercentCompleteWidget.percentCompleteCircle:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "ChallengesCPCategoryStats", "career", __FUNC_341E_)
	local function __FUNC_35CA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.PercentCompleteWidget.percentText:setText(Engine.Localize(NumberAsPercentRounded(registerVal1)))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "ChallengesCPCategoryStats", "career", __FUNC_35CA_)
	local function __FUNC_36F6_(arg2, arg3)
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

	registerVal6:registerEventHandler("gain_focus", __FUNC_36F6_)
	local function __FUNC_3887_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_3887_)
	local function __FUNC_3956_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInState(arg0, "Disabled")
		if not registerVal4 then
			SetGlobalModelValue("challengeCategory", "career")
			OpenPopup(registerVal2, "Challenges_CP_Stickerbooks", arg2)
			return true
		end
	end

	local function __FUNC_3A6F_(arg0, arg1, arg2)
		local registerVal3 = IsElementInState(arg0, "Disabled")
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal6, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_3956_, __FUNC_3A6F_, false)
	registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Disabled"
	local function __FUNC_3BB6_(arg0, arg2, arg3)
		return Challenges_IsCategoryLocked(arg2, arg1, "career")
	end

	registerVal10.condition = __FUNC_3BB6_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal2:addElement(registerVal6)
	registerVal2.CareerButton = registerVal6
	registerVal7 = CoD.Challenges_Summary_NearCompletion_SM.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 9.000000, 768.000000)
	registerVal7:setTopBottom(false, true, -141.500000, -61.500000)
	local function __FUNC_3C2D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal7.NearCompletionWidget.ProgressBar:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "ChallengesCPNearCompletion", "statPercent", __FUNC_3C2D_)
	local function __FUNC_3DCF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.NearCompletionWidget.ProgressFraction:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "ChallengesCPNearCompletion", "statFractionText", __FUNC_3DCF_)
	local function __FUNC_3ED6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.NearCompletionWidget.ChallengeIcon.Image:setImage(RegisterImage(GetBackgroundByID(registerVal1)))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "ChallengesCPNearCompletion", "iconId", __FUNC_3ED6_)
	local function __FUNC_4013_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.NearCompletionWidget.ChallengeTitle.textBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "ChallengesCPNearCompletion", "title", __FUNC_4013_)
	local function __FUNC_4135_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.NearCompletionWidget.ChallengeDescription.textBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "ChallengesCPNearCompletion", "description", __FUNC_4135_)
	local function __FUNC_425F_(arg2, arg3)
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

	registerVal7:registerEventHandler("gain_focus", __FUNC_425F_)
	local function __FUNC_43EF_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_43EF_)
	local function __FUNC_44BE_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInState(arg0, "AllChallengesComplete")
		if not registerVal4 then
			OpenPopup(registerVal2, "Challenges_NearCompletion", arg2)
			return true
		end
	end

	local function __FUNC_458B_(arg0, arg1, arg2)
		local registerVal3 = IsElementInState(arg0, "AllChallengesComplete")
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal7, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_44BE_, __FUNC_458B_, false)
	registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "AllChallengesComplete"
	local function __FUNC_46DF_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "ChallengesCPCategoryStats.cp", 1.000000)
	end

	registerVal11.condition = __FUNC_46DF_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "ChallengesCPCategoryStats.cp")
	local function __FUNC_4768_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "ChallengesCPCategoryStats.cp"
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:subscribeToModel(registerVal10, __FUNC_4768_)
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
	local registerVal12 = {}
	registerVal12.right = registerVal5
	registerVal12.down = registerVal7
	registerVal4.navigation = registerVal12
	registerVal12 = {}
	registerVal12.left = registerVal4
	registerVal12.right = registerVal6
	registerVal12.down = registerVal7
	registerVal5.navigation = registerVal12
	registerVal12 = {}
	registerVal12.left = registerVal5
	registerVal6.navigation = registerVal12
	registerVal12 = {}
	local registerVal13 = {}
	registerVal13 = {registerVal4, registerVal5}
	registerVal12.up = registerVal13
	registerVal7.navigation = registerVal12
	registerVal12 = {}
	registerVal13 = {}
	local function __FUNC_489A_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal7:completeAnimation()
		registerVal2.NearCompletionButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal13.DefaultClip = __FUNC_489A_
	registerVal12.DefaultState = registerVal13
	registerVal13 = {}
	local function __FUNC_499F_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal7:completeAnimation()
		registerVal2.NearCompletionButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal13.DefaultClip = __FUNC_499F_
	registerVal12.NoNearComplete = registerVal13
	registerVal2.clipsPerState = registerVal12
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "NoNearComplete"
	local function __FUNC_4AA8_(arg0, arg2, arg3)
		return IsModelValueTrue(arg1, "noNearCompleteCP")
	end

	registerVal15.condition = __FUNC_4AA8_
	registerVal14 = {registerVal15}
	registerVal2:mergeStateConditions(registerVal14)
	registerVal15 = Engine.GetModelForController(arg1)
	registerVal14 = Engine.GetModel(registerVal15, "noNearCompleteCP")
	local function __FUNC_4B1C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "noNearCompleteCP"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal14, __FUNC_4B1C_)
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal4.id = "MissionsButton"
	registerVal5.id = "ToolsOfTheTradeButton"
	registerVal6.id = "CareerButton"
	registerVal7.id = "NearCompletionButton"
	local function __FUNC_4C42_(arg0, arg1)
		local registerVal2 = arg0.MissionsButton:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_4C42_)
	local function __FUNC_4D4A_(arg0)
		arg0.operationsTitle:close()
		arg0.MissionsButton:close()
		arg0.ToolsOfTheTradeButton:close()
		arg0.CareerButton:close()
		arg0.NearCompletionButton:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_4D4A_)
	if __FUNC_366_ then
		__FUNC_366_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.Challenges_CP_Summary.new = __FUNC_64F_
