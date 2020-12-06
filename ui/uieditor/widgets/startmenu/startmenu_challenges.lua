-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Challenges_Button")
require("ui.uieditor.menus.Challenges.Challenges_CP")
require("ui.uieditor.menus.Challenges.Challenges")
require("ui.uieditor.menus.Challenges.Challenges_ZM")
local function __FUNC_2E2_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	local registerVal2 = Engine.GetModel(registerVal3, "noNearCompleteCP")
	registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal2 ~= nil and registerVal3 == true then
		arg0.CP:setState("NoNearComplete")
	end
	local registerVal4 = Engine.GetModelForController(arg1)
	registerVal3 = Engine.GetModel(registerVal4, "noNearCompleteMP")
	registerVal4 = Engine.GetModelValue(registerVal3)
	if registerVal3 ~= nil and registerVal4 == true then
		arg0.MP:setState("NoNearComplete")
	end
	local registerVal5 = Engine.GetModelForController(arg1)
	registerVal4 = Engine.GetModel(registerVal5, "noNearCompleteZM")
	registerVal5 = Engine.GetModelValue(registerVal4)
	if registerVal4 ~= nil and registerVal5 == true then
		arg0.ZM:setState("NoNearComplete")
	end
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.StartMenu_Challenges = registerVal2
local function __FUNC_581_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_Challenges)
	registerVal2.id = "StartMenu_Challenges"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1150.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 520.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.StartMenu_Challenges_Button.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 9.000000, 375.000000)
	registerVal3:setTopBottom(true, true, 13.000000, -179.000000)
	registerVal3.SessionName:setText(Engine.Localize("MENU_CAMPAIGN_CAPS"))
	registerVal3.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_COMPLETE_CAMPAIGN_CHALLENGES"))
	local function __FUNC_14A5_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:subscribeToGlobalModel(arg1, "ChallengesCPNearCompletion", nil, __FUNC_14A5_)
	local function __FUNC_14F6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.PercentComplete.percentCompleteCircle:setAlpha(HideIfNumEqualTo(0.000000, registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "ChallengesCPCategoryStats", "cp", __FUNC_14F6_)
	local function __FUNC_1604_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal3.PercentComplete.percentCompleteCircle:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "ChallengesCPCategoryStats", "cp", __FUNC_1604_)
	local function __FUNC_17AC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.PercentComplete.percentText:setText(Engine.Localize(NumberAsPercentRounded(registerVal1)))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "ChallengesCPCategoryStats", "cp", __FUNC_17AC_)
	local function __FUNC_18D4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal3.NearCompletionWidget.ProgressBar:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "ChallengesCPNearCompletion", "statPercent", __FUNC_18D4_)
	local function __FUNC_1A77_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.NearCompletionWidget.ProgressFraction:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "ChallengesCPNearCompletion", "statFractionText", __FUNC_1A77_)
	local function __FUNC_1B7E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.NearCompletionWidget.ChallengeIcon.Image:setImage(RegisterImage(GetBackgroundByID(registerVal1)))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "ChallengesCPNearCompletion", "iconId", __FUNC_1B7E_)
	local function __FUNC_1CBB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.NearCompletionWidget.ChallengeTitle.textBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "ChallengesCPNearCompletion", "title", __FUNC_1CBB_)
	local function __FUNC_1DDD_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.NearCompletionWidget.ChallengeDescription.textBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "ChallengesCPNearCompletion", "description", __FUNC_1DDD_)
	local function __FUNC_1F07_(arg2, arg3)
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

	registerVal3:registerEventHandler("gain_focus", __FUNC_1F07_)
	local function __FUNC_2097_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_2097_)
	local function __FUNC_2166_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInState(arg0, "Disabled")
		if not registerVal4 then
			SetGlobalModelValue("challengeGameMode", "cp")
			OpenOverlay(registerVal2, "Challenges_CP", arg2, "", "")
			return true
		end
	end

	local function __FUNC_2282_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsElementInState(arg0, "Disabled")
		if not registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2166_, __FUNC_2282_, false)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Disable"
	local function __FUNC_23CA_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal7.condition = __FUNC_23CA_
	local registerVal8 = {}
	registerVal8.stateName = "NoNearComplete"
	local function __FUNC_2415_(arg0, arg1, arg2)
		return IsElementInState(arg1, "NoNearComplete")
	end

	registerVal8.condition = __FUNC_2415_
	registerVal6 = {registerVal7, registerVal8}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal2:addElement(registerVal3)
	registerVal2.CP = registerVal3
	local registerVal4 = CoD.StartMenu_Challenges_Button.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 384.000000, 750.000000)
	registerVal4:setTopBottom(true, true, 13.000000, -179.000000)
	registerVal4.SessionName:setText(Engine.Localize("MENU_MULTIPLAYER_CAPS"))
	registerVal4.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_COMPLETE_MULTIPLAYER_CHALLENGES"))
	local function __FUNC_2486_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:subscribeToGlobalModel(arg1, "ChallengesMPNearCompletion", nil, __FUNC_2486_)
	local function __FUNC_24D6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.PercentComplete.percentCompleteCircle:setAlpha(HideIfNumEqualTo(0.000000, registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "mp", __FUNC_24D6_)
	local function __FUNC_25E4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal4.PercentComplete.percentCompleteCircle:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "mp", __FUNC_25E4_)
	local function __FUNC_278C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.PercentComplete.percentText:setText(Engine.Localize(NumberAsPercentRounded(registerVal1)))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "mp", __FUNC_278C_)
	local function __FUNC_28B4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal4.NearCompletionWidget.ProgressBar:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "ChallengesMPNearCompletion", "statPercent", __FUNC_28B4_)
	local function __FUNC_2A57_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.NearCompletionWidget.ProgressFraction:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "ChallengesMPNearCompletion", "statFractionText", __FUNC_2A57_)
	local function __FUNC_2B5E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.NearCompletionWidget.ChallengeIcon.Image:setImage(RegisterImage(GetBackgroundByID(registerVal1)))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "ChallengesMPNearCompletion", "iconId", __FUNC_2B5E_)
	local function __FUNC_2C9B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.NearCompletionWidget.ChallengeTitle.textBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "ChallengesMPNearCompletion", "title", __FUNC_2C9B_)
	local function __FUNC_2DBD_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.NearCompletionWidget.ChallengeDescription.textBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "ChallengesMPNearCompletion", "description", __FUNC_2DBD_)
	local function __FUNC_2EE7_(arg2, arg3)
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

	registerVal4:registerEventHandler("gain_focus", __FUNC_2EE7_)
	local function __FUNC_3077_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_3077_)
	local function __FUNC_3146_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInState(arg0, "Disabled")
		if not registerVal4 then
			SetGlobalModelValue("challengeGameMode", "mp")
			OpenOverlay(registerVal2, "Challenges", arg2, "", "")
			return true
		end
	end

	local function __FUNC_325F_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsElementInState(arg0, "Disabled")
		if not registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_3146_, __FUNC_325F_, false)
	registerVal7 = {}
	registerVal8 = {}
	registerVal8.stateName = "Disable"
	local function __FUNC_33A6_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal8.condition = __FUNC_33A6_
	local registerVal9 = {}
	registerVal9.stateName = "NoNearComplete"
	local function __FUNC_33F1_(arg0, arg1, arg2)
		return IsElementInState(arg1, "NoNearComplete")
	end

	registerVal9.condition = __FUNC_33F1_
	registerVal7 = {registerVal8, registerVal9}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal2:addElement(registerVal4)
	registerVal2.MP = registerVal4
	local registerVal5 = CoD.StartMenu_Challenges_Button.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 759.000000, -25.000000)
	registerVal5:setTopBottom(true, true, 13.000000, -179.000000)
	registerVal5.SessionName:setText(Engine.Localize("MENU_ZOMBIES_CAPS"))
	registerVal5.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_COMPLETE_ZOMBIES_CHALLENGES"))
	local function __FUNC_3462_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:subscribeToGlobalModel(arg1, "ChallengesZMNearCompletion", nil, __FUNC_3462_)
	local function __FUNC_34B2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.PercentComplete.percentCompleteCircle:setAlpha(HideIfNumEqualTo(0.000000, registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "ChallengesZMCategoryStats", "zm", __FUNC_34B2_)
	local function __FUNC_35C0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal5.PercentComplete.percentCompleteCircle:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "ChallengesZMCategoryStats", "zm", __FUNC_35C0_)
	local function __FUNC_3768_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.PercentComplete.percentText:setText(Engine.Localize(NumberAsPercentRounded(registerVal1)))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "ChallengesZMCategoryStats", "zm", __FUNC_3768_)
	local function __FUNC_3890_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal5.NearCompletionWidget.ProgressBar:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "ChallengesZMNearCompletion", "statPercent", __FUNC_3890_)
	local function __FUNC_3A33_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.NearCompletionWidget.ProgressFraction:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "ChallengesZMNearCompletion", "statFractionText", __FUNC_3A33_)
	local function __FUNC_3B3A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.NearCompletionWidget.ChallengeIcon.Image:setImage(RegisterImage(GetBackgroundByID(registerVal1)))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "ChallengesZMNearCompletion", "iconId", __FUNC_3B3A_)
	local function __FUNC_3C77_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.NearCompletionWidget.ChallengeTitle.textBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "ChallengesZMNearCompletion", "title", __FUNC_3C77_)
	local function __FUNC_3D99_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.NearCompletionWidget.ChallengeDescription.textBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "ChallengesZMNearCompletion", "description", __FUNC_3D99_)
	local function __FUNC_3EC3_(arg2, arg3)
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

	registerVal5:registerEventHandler("gain_focus", __FUNC_3EC3_)
	local function __FUNC_4053_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_4053_)
	local function __FUNC_4122_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInState(arg0, "Disabled")
		if not registerVal4 then
			SetGlobalModelValue("challengeGameMode", "zm")
			OpenOverlay(registerVal2, "Challenges_ZM", arg2, "", "")
			return true
		end
	end

	local function __FUNC_423E_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsElementInState(arg0, "Disabled")
		if not registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_4122_, __FUNC_423E_, false)
	registerVal8 = {}
	registerVal9 = {}
	registerVal9.stateName = "Disable"
	local function __FUNC_4386_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal9.condition = __FUNC_4386_
	local registerVal10 = {}
	registerVal10.stateName = "NoNearComplete"
	local function __FUNC_43D1_(arg0, arg1, arg2)
		return IsElementInState(arg1, "NoNearComplete")
	end

	registerVal10.condition = __FUNC_43D1_
	registerVal8 = {registerVal9, registerVal10}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal2:addElement(registerVal5)
	registerVal2.ZM = registerVal5
	registerVal6 = {}
	registerVal6.right = registerVal4
	registerVal3.navigation = registerVal6
	registerVal6 = {}
	registerVal6.left = registerVal3
	registerVal6.right = registerVal5
	registerVal4.navigation = registerVal6
	registerVal6 = {}
	registerVal6.left = registerVal4
	registerVal5.navigation = registerVal6
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal3.id = "CP"
	registerVal4.id = "MP"
	registerVal5.id = "ZM"
	local function __FUNC_4442_(arg0, arg1)
		local registerVal2 = arg0.MP:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_4442_)
	local function __FUNC_453E_(arg0)
		arg0.CP:close()
		arg0.MP:close()
		arg0.ZM:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_453E_)
	if __FUNC_2E2_ then
		__FUNC_2E2_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.StartMenu_Challenges.new = __FUNC_581_
