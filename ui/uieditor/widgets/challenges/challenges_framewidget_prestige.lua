-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Challenges.Challenges_Category_Title")
require("ui.uieditor.widgets.Challenges.Challenges_Category_Button")
require("ui.uieditor.menus.Challenges.Challenges_Prestige")
require("ui.uieditor.widgets.Challenges.Challenges_Category_Button_SM")
local function __FUNC_316_(arg0, arg1)
	local function __FUNC_38F_(arg0, arg2)
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
		if registerVal3 == "combathandling" then
		else
			if registerVal3 == "combatefficiency" then
			else
				if registerVal3 == "perks1" then
				else
					if registerVal3 == "perks2" then
					else
						if registerVal3 == "perks3" then
						else
							if registerVal3 == "lethals" then
							else
								if registerVal3 == "tacticals" then
								else
									if registerVal3 == "wildcards" then
									end
								end
							end
						end
					end
				end
			end
		end
		if arg0.WildcardsButton then
			local registerVal7 = {}
			registerVal7.name = "gain_focus"
			registerVal7.controller = arg1
			arg0.WildcardsButton:processEvent(registerVal7)
		end
	end

	arg0:registerEventHandler("set_selected_button", __FUNC_38F_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.Challenges_FrameWidget_Prestige = registerVal2
local function __FUNC_75C_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Challenges_FrameWidget_Prestige)
	registerVal2.id = "Challenges_FrameWidget_Prestige"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1160.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 520.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Challenges_Category_Title.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 51.000000, -88.000000)
	registerVal3:setTopBottom(true, false, 30.000000, 80.000000)
	registerVal3.titleText:setText(Engine.Localize("MENU_EMBLEM_BACKGROUND_PRESTIGETAB"))
	local function __FUNC_2AE5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.PercentCompleteWidget.percentCompleteCircle:setAlpha(HideIfNumEqualTo(0.000000, registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "prestige", __FUNC_2AE5_)
	local function __FUNC_2BFA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal3.PercentCompleteWidget.percentCompleteCircle:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "prestige", __FUNC_2BFA_)
	local function __FUNC_2DA6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.PercentCompleteWidget.percentText:setText(Engine.Localize(NumberAsPercentRounded(registerVal1)))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "prestige", __FUNC_2DA6_)
	registerVal2:addElement(registerVal3)
	registerVal2.operationsTitle = registerVal3
	local registerVal4 = CoD.Challenges_Category_Button.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 9.000000, 385.000000)
	registerVal4:setTopBottom(true, false, 117.000000, 312.000000)
	registerVal4.CategoryIcon:setImage(RegisterImage("uie_t7_icons_challenges_mp_combat_handling"))
	registerVal4.UnlockInstructions:setText(Engine.Localize("MENU_CHALLENGES_WEAPON_HINTTEXT_LOCK"))
	registerVal4.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_CHALLENGE_CATEGORY_COMBATHANDLING"))
	local function __FUNC_2ED2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.PercentCompleteWidget.percentCompleteCircle:setAlpha(HideIfNumEqualTo(0.000000, registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "combathandling", __FUNC_2ED2_)
	local function __FUNC_2FE6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal4.PercentCompleteWidget.percentCompleteCircle:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "combathandling", __FUNC_2FE6_)
	local function __FUNC_3192_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.PercentCompleteWidget.percentText:setText(Engine.Localize(NumberAsPercentRounded(registerVal1)))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "combathandling", __FUNC_3192_)
	local function __FUNC_32BE_(arg2, arg3)
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

	registerVal4:registerEventHandler("gain_focus", __FUNC_32BE_)
	local function __FUNC_344F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_344F_)
	local function __FUNC_351E_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInState(arg0, "Disabled")
		if not registerVal4 then
			SetGlobalModelValue("challengeCategory", "combathandling")
			OpenPopup(registerVal2, "Challenges_Prestige", arg2)
			return true
		end
	end

	local function __FUNC_3638_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsElementInState(arg0, "Disabled")
		if not registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_351E_, __FUNC_3638_, false)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Disabled"
	local function __FUNC_3782_(arg0, arg2, arg3)
		return Challenges_IsCategoryLocked(arg2, arg1, "combathandling")
	end

	registerVal8.condition = __FUNC_3782_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal2:addElement(registerVal4)
	registerVal2.CombatHandlingButton = registerVal4
	local registerVal5 = CoD.Challenges_Category_Button.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 9.000000, 385.000000)
	registerVal5:setTopBottom(false, true, -200.000000, -7.000000)
	registerVal5.CategoryIcon:setImage(RegisterImage("uie_t7_icons_challenges_mp_combat_efficiency"))
	registerVal5.UnlockInstructions:setText(Engine.Localize("MENU_CHALLENGES_WEAPON_HINTTEXT_LOCK"))
	registerVal5.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_CHALLENGE_CATEGORY_COMBATEFFICIENCY"))
	local function __FUNC_3801_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.PercentCompleteWidget.percentCompleteCircle:setAlpha(HideIfNumEqualTo(0.000000, registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "combatefficiency", __FUNC_3801_)
	local function __FUNC_3916_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal5.PercentCompleteWidget.percentCompleteCircle:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "combatefficiency", __FUNC_3916_)
	local function __FUNC_3AC2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.PercentCompleteWidget.percentText:setText(Engine.Localize(NumberAsPercentRounded(registerVal1)))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "combatefficiency", __FUNC_3AC2_)
	local function __FUNC_3BEE_(arg2, arg3)
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

	registerVal5:registerEventHandler("gain_focus", __FUNC_3BEE_)
	local function __FUNC_3D7F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_3D7F_)
	local function __FUNC_3E4E_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInState(arg0, "Disabled")
		if not registerVal4 then
			SetGlobalModelValue("challengeCategory", "combatefficiency")
			OpenPopup(registerVal2, "Challenges_Prestige", arg2)
			return true
		end
	end

	local function __FUNC_3F6A_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsElementInState(arg0, "Disabled")
		if not registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_3E4E_, __FUNC_3F6A_, false)
	registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Disabled"
	local function __FUNC_40B2_(arg0, arg2, arg3)
		return Challenges_IsCategoryLocked(arg2, arg1, "combatefficiency")
	end

	registerVal9.condition = __FUNC_40B2_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal2:addElement(registerVal5)
	registerVal2.CombatEfficiencyButton = registerVal5
	local registerVal6 = CoD.Challenges_Category_Button_SM.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, -188.500000, 187.500000)
	registerVal6:setTopBottom(true, false, 117.000000, 243.000000)
	registerVal6.CategoryIcon:setImage(RegisterImage("uie_t7_icons_challenges_mp_perk_1"))
	registerVal6.UnlockInstructions:setText(Engine.Localize("MENU_CHALLENGES_WEAPON_HINTTEXT_LOCK"))
	registerVal6.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_CHALLENGE_CATEGORY_PERKS1"))
	local function __FUNC_4133_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.PercentCompleteWidget.percentCompleteCircle:setAlpha(HideIfNumEqualTo(0.000000, registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "perks1", __FUNC_4133_)
	local function __FUNC_4246_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal6.PercentCompleteWidget.percentCompleteCircle:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "perks1", __FUNC_4246_)
	local function __FUNC_43F2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.PercentCompleteWidget.percentText:setText(Engine.Localize(NumberAsPercentRounded(registerVal1)))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "perks1", __FUNC_43F2_)
	local function __FUNC_451E_(arg2, arg3)
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

	registerVal6:registerEventHandler("gain_focus", __FUNC_451E_)
	local function __FUNC_46AF_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_46AF_)
	local function __FUNC_477E_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInState(arg0, "Disabled")
		if not registerVal4 then
			SetGlobalModelValue("challengeCategory", "perks1")
			OpenPopup(registerVal2, "Challenges_Prestige", arg2)
			return true
		end
	end

	local function __FUNC_4890_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsElementInState(arg0, "Disabled")
		if not registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal6, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_477E_, __FUNC_4890_, false)
	registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Disabled"
	local function __FUNC_49DA_(arg0, arg2, arg3)
		return Challenges_IsCategoryLocked(arg2, arg1, "perks1")
	end

	registerVal10.condition = __FUNC_49DA_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal2:addElement(registerVal6)
	registerVal2.Perks1Button = registerVal6
	registerVal7 = CoD.Challenges_Category_Button_SM.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -188.500000, 187.500000)
	registerVal7:setTopBottom(true, false, 251.000000, 378.000000)
	registerVal7.CategoryIcon:setImage(RegisterImage("uie_t7_icons_challenges_mp_perk_2"))
	registerVal7.UnlockInstructions:setText(Engine.Localize("MENU_CHALLENGES_WEAPON_HINTTEXT_LOCK"))
	registerVal7.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_CHALLENGE_CATEGORY_PERKS2"))
	local function __FUNC_4A51_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.PercentCompleteWidget.percentCompleteCircle:setAlpha(HideIfNumEqualTo(0.000000, registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "perks2", __FUNC_4A51_)
	local function __FUNC_4B66_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal7.PercentCompleteWidget.percentCompleteCircle:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "perks2", __FUNC_4B66_)
	local function __FUNC_4D12_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.PercentCompleteWidget.percentText:setText(Engine.Localize(NumberAsPercentRounded(registerVal1)))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "perks2", __FUNC_4D12_)
	local function __FUNC_4E3E_(arg2, arg3)
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

	registerVal7:registerEventHandler("gain_focus", __FUNC_4E3E_)
	local function __FUNC_4FCF_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_4FCF_)
	local function __FUNC_509E_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInState(arg0, "Disabled")
		if not registerVal4 then
			SetGlobalModelValue("challengeCategory", "perks2")
			OpenPopup(registerVal2, "Challenges_Prestige", arg2)
			return true
		end
	end

	local function __FUNC_51B0_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsElementInState(arg0, "Disabled")
		if not registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal7, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_509E_, __FUNC_51B0_, false)
	registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Disabled"
	local function __FUNC_52FA_(arg0, arg2, arg3)
		return Challenges_IsCategoryLocked(arg2, arg1, "perks2")
	end

	registerVal11.condition = __FUNC_52FA_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal2:addElement(registerVal7)
	registerVal2.Perks2Button = registerVal7
	registerVal8 = CoD.Challenges_Category_Button_SM.new(arg0, arg1)
	registerVal8:setLeftRight(false, false, -187.500000, 187.500000)
	registerVal8:setTopBottom(false, true, -134.000000, -7.000000)
	registerVal8.CategoryIcon:setImage(RegisterImage("uie_t7_icons_challenges_mp_perk_3"))
	registerVal8.UnlockInstructions:setText(Engine.Localize("MENU_CHALLENGES_WEAPON_HINTTEXT_LOCK"))
	registerVal8.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_CHALLENGE_CATEGORY_PERKS3"))
	local function __FUNC_5371_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.PercentCompleteWidget.percentCompleteCircle:setAlpha(HideIfNumEqualTo(0.000000, registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "perks3", __FUNC_5371_)
	local function __FUNC_5486_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal8.PercentCompleteWidget.percentCompleteCircle:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "perks3", __FUNC_5486_)
	local function __FUNC_5632_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.PercentCompleteWidget.percentText:setText(Engine.Localize(NumberAsPercentRounded(registerVal1)))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "perks3", __FUNC_5632_)
	local function __FUNC_575E_(arg2, arg3)
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

	registerVal8:registerEventHandler("gain_focus", __FUNC_575E_)
	local function __FUNC_58EF_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("lose_focus", __FUNC_58EF_)
	local function __FUNC_59BE_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInState(arg0, "Disabled")
		if not registerVal4 then
			SetGlobalModelValue("challengeCategory", "perks3")
			OpenPopup(registerVal2, "Challenges_Prestige", arg2)
			return true
		end
	end

	local function __FUNC_5AD0_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsElementInState(arg0, "Disabled")
		if not registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal8, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_59BE_, __FUNC_5AD0_, false)
	registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "Disabled"
	local function __FUNC_5C1A_(arg0, arg2, arg3)
		return Challenges_IsCategoryLocked(arg2, arg1, "perks3")
	end

	registerVal12.condition = __FUNC_5C1A_
	registerVal11 = {registerVal12}
	registerVal8:mergeStateConditions(registerVal11)
	registerVal2:addElement(registerVal8)
	registerVal2.Perks3Button = registerVal8
	registerVal9 = CoD.Challenges_Category_Button_SM.new(arg0, arg1)
	registerVal9:setLeftRight(false, true, -385.000000, -9.000000)
	registerVal9:setTopBottom(true, false, 117.000000, 243.000000)
	registerVal9.CategoryIcon:setImage(RegisterImage("uie_t7_icons_challenges_mp_equipment_lethal"))
	registerVal9.UnlockInstructions:setText(Engine.Localize("MENU_CHALLENGES_WEAPON_HINTTEXT_LOCK"))
	registerVal9.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_CHALLENGE_CATEGORY_LETHALS"))
	local function __FUNC_5C91_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.PercentCompleteWidget.percentCompleteCircle:setAlpha(HideIfNumEqualTo(0.000000, registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "lethals", __FUNC_5C91_)
	local function __FUNC_5DA6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal9.PercentCompleteWidget.percentCompleteCircle:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "lethals", __FUNC_5DA6_)
	local function __FUNC_5F52_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.PercentCompleteWidget.percentText:setText(Engine.Localize(NumberAsPercentRounded(registerVal1)))
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "lethals", __FUNC_5F52_)
	local function __FUNC_607E_(arg2, arg3)
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

	registerVal9:registerEventHandler("gain_focus", __FUNC_607E_)
	local function __FUNC_620F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("lose_focus", __FUNC_620F_)
	local function __FUNC_62DE_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInState(arg0, "Disabled")
		if not registerVal4 then
			SetGlobalModelValue("challengeCategory", "lethals")
			OpenPopup(registerVal2, "Challenges_Prestige", arg2)
			return true
		end
	end

	local function __FUNC_63F1_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsElementInState(arg0, "Disabled")
		if not registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal9, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_62DE_, __FUNC_63F1_, false)
	registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Disabled"
	local function __FUNC_653A_(arg0, arg2, arg3)
		return Challenges_IsCategoryLocked(arg2, arg1, "lethals")
	end

	registerVal13.condition = __FUNC_653A_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal2:addElement(registerVal9)
	registerVal2.LethalsButton = registerVal9
	registerVal10 = CoD.Challenges_Category_Button_SM.new(arg0, arg1)
	registerVal10:setLeftRight(false, true, -385.000000, -9.000000)
	registerVal10:setTopBottom(true, false, 251.000000, 378.000000)
	registerVal10.CategoryIcon:setImage(RegisterImage("uie_t7_icons_challenges_mp_tactical"))
	registerVal10.UnlockInstructions:setText(Engine.Localize("MENU_CHALLENGES_WEAPON_HINTTEXT_LOCK"))
	registerVal10.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_CHALLENGE_CATEGORY_TACTICALS"))
	local function __FUNC_65B2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.PercentCompleteWidget.percentCompleteCircle:setAlpha(HideIfNumEqualTo(0.000000, registerVal1))
		end
	end

	registerVal10:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "tacticals", __FUNC_65B2_)
	local function __FUNC_66C6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal10.PercentCompleteWidget.percentCompleteCircle:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal10:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "tacticals", __FUNC_66C6_)
	local function __FUNC_6872_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.PercentCompleteWidget.percentText:setText(Engine.Localize(NumberAsPercentRounded(registerVal1)))
		end
	end

	registerVal10:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "tacticals", __FUNC_6872_)
	local function __FUNC_699E_(arg2, arg3)
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

	registerVal10:registerEventHandler("gain_focus", __FUNC_699E_)
	local function __FUNC_6B2F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal10:registerEventHandler("lose_focus", __FUNC_6B2F_)
	local function __FUNC_6BFE_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInState(arg0, "Disabled")
		if not registerVal4 then
			SetGlobalModelValue("challengeCategory", "tacticals")
			OpenPopup(registerVal2, "Challenges_Prestige", arg2)
			return true
		end
	end

	local function __FUNC_6D13_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsElementInState(arg0, "Disabled")
		if not registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal10, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_6BFE_, __FUNC_6D13_, false)
	registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "Disabled"
	local function __FUNC_6E5A_(arg0, arg2, arg3)
		return Challenges_IsCategoryLocked(arg2, arg1, "tacticals")
	end

	registerVal14.condition = __FUNC_6E5A_
	registerVal13 = {registerVal14}
	registerVal10:mergeStateConditions(registerVal13)
	registerVal2:addElement(registerVal10)
	registerVal2.TacticalsButton = registerVal10
	registerVal11 = CoD.Challenges_Category_Button_SM.new(arg0, arg1)
	registerVal11:setLeftRight(false, true, -384.000000, -9.000000)
	registerVal11:setTopBottom(false, true, -134.000000, -7.000000)
	registerVal11.CategoryIcon:setImage(RegisterImage("uie_t7_icons_challenges_mp_wildcards"))
	registerVal11.UnlockInstructions:setText(Engine.Localize("MENU_CHALLENGES_WEAPON_HINTTEXT_LOCK"))
	registerVal11.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_CHALLENGE_CATEGORY_WILDCARDS"))
	local function __FUNC_6ED4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.PercentCompleteWidget.percentCompleteCircle:setAlpha(HideIfNumEqualTo(0.000000, registerVal1))
		end
	end

	registerVal11:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "wildcards", __FUNC_6ED4_)
	local function __FUNC_6FEA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal11.PercentCompleteWidget.percentCompleteCircle:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal11:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "wildcards", __FUNC_6FEA_)
	local function __FUNC_7196_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.PercentCompleteWidget.percentText:setText(Engine.Localize(NumberAsPercentRounded(registerVal1)))
		end
	end

	registerVal11:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "wildcards", __FUNC_7196_)
	local function __FUNC_72C2_(arg2, arg3)
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

	registerVal11:registerEventHandler("gain_focus", __FUNC_72C2_)
	local function __FUNC_7453_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal11:registerEventHandler("lose_focus", __FUNC_7453_)
	local function __FUNC_7522_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInState(arg0, "Disabled")
		if not registerVal4 then
			SetGlobalModelValue("challengeCategory", "wildcards")
			OpenPopup(registerVal2, "Challenges_Prestige", arg2)
			return true
		end
	end

	local function __FUNC_7637_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsElementInState(arg0, "Disabled")
		if not registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal11, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_7522_, __FUNC_7637_, false)
	registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "Disabled"
	local function __FUNC_777E_(arg0, arg2, arg3)
		return Challenges_IsCategoryLocked(arg2, arg1, "wildcards")
	end

	registerVal15.condition = __FUNC_777E_
	registerVal14 = {registerVal15}
	registerVal11:mergeStateConditions(registerVal14)
	registerVal2:addElement(registerVal11)
	registerVal2.WildcardsButton = registerVal11
	registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, -29.130000, 6.870000)
	registerVal12:setTopBottom(true, false, 116.750000, 120.750000)
	registerVal12:setYRot(-180.000000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.Pixel2001 = registerVal12
	registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, -29.130000, 6.870000)
	registerVal13:setTopBottom(true, false, 306.750000, 310.750000)
	registerVal13:setYRot(-180.000000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.Pixel20010 = registerVal13
	registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, -29.130000, 6.870000)
	registerVal14:setTopBottom(true, false, 319.750000, 323.750000)
	registerVal14:setYRot(-180.000000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.Pixel200100 = registerVal14
	registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, -29.130000, 6.870000)
	registerVal15:setTopBottom(true, false, 509.750000, 513.750000)
	registerVal15:setYRot(-180.000000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.Pixel2001000 = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, 1154.870000, 1190.870000)
	registerVal16:setTopBottom(true, false, 116.750000, 120.750000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal16)
	registerVal2.Pixel20011 = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(true, false, 1154.870000, 1190.870000)
	registerVal17:setTopBottom(true, false, 238.750000, 242.750000)
	registerVal17:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal17)
	registerVal2.Pixel200101 = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(true, false, 1154.870000, 1190.870000)
	registerVal18:setTopBottom(true, false, 251.750000, 255.750000)
	registerVal18:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal18:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal18)
	registerVal2.Pixel2001001 = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(true, false, 1154.870000, 1190.870000)
	registerVal19:setTopBottom(true, false, 509.750000, 513.750000)
	registerVal19:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal19:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal19)
	registerVal2.Pixel20010000 = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(true, false, 1154.870000, 1190.870000)
	registerVal20:setTopBottom(true, false, 373.750000, 377.750000)
	registerVal20:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal20:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal20)
	registerVal2.Pixel2001010 = registerVal20
	local registerVal21 = LUI.UIImage.new()
	registerVal21:setLeftRight(true, false, 1154.870000, 1190.870000)
	registerVal21:setTopBottom(true, false, 386.750000, 390.750000)
	registerVal21:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal21:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal21)
	registerVal2.Pixel20010010 = registerVal21
	local registerVal22 = {}
	local registerVal23 = {}
	registerVal23 = {registerVal6, registerVal7}
	registerVal22.right = registerVal23
	registerVal22.down = registerVal5
	registerVal4.navigation = registerVal22
	registerVal22 = {}
	registerVal22.up = registerVal4
	registerVal22.right = registerVal7
	registerVal5.navigation = registerVal22
	registerVal22 = {}
	registerVal22.left = registerVal4
	registerVal22.right = registerVal9
	registerVal22.down = registerVal7
	registerVal6.navigation = registerVal22
	registerVal22 = {}
	registerVal23 = {}
	registerVal23 = {registerVal4, registerVal5}
	registerVal22.left = registerVal23
	registerVal22.up = registerVal6
	registerVal22.right = registerVal10
	registerVal22.down = registerVal8
	registerVal7.navigation = registerVal22
	registerVal22 = {}
	registerVal22.left = registerVal5
	registerVal22.up = registerVal7
	registerVal22.right = registerVal11
	registerVal8.navigation = registerVal22
	registerVal22 = {}
	registerVal22.left = registerVal6
	registerVal22.down = registerVal10
	registerVal9.navigation = registerVal22
	registerVal22 = {}
	registerVal22.left = registerVal7
	registerVal22.up = registerVal9
	registerVal22.down = registerVal11
	registerVal10.navigation = registerVal22
	registerVal22 = {}
	registerVal22.left = registerVal8
	registerVal22.up = registerVal10
	registerVal11.navigation = registerVal22
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal4.id = "CombatHandlingButton"
	registerVal5.id = "CombatEfficiencyButton"
	registerVal6.id = "Perks1Button"
	registerVal7.id = "Perks2Button"
	registerVal8.id = "Perks3Button"
	registerVal9.id = "LethalsButton"
	registerVal10.id = "TacticalsButton"
	registerVal11.id = "WildcardsButton"
	local function __FUNC_77F8_(arg0, arg1)
		local registerVal2 = arg0.CombatHandlingButton:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_77F8_)
	local function __FUNC_7908_(arg0)
		arg0.operationsTitle:close()
		arg0.CombatHandlingButton:close()
		arg0.CombatEfficiencyButton:close()
		arg0.Perks1Button:close()
		arg0.Perks2Button:close()
		arg0.Perks3Button:close()
		arg0.LethalsButton:close()
		arg0.TacticalsButton:close()
		arg0.WildcardsButton:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_7908_)
	if __FUNC_316_ then
		__FUNC_316_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.Challenges_FrameWidget_Prestige.new = __FUNC_75C_
