-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Challenges.Challenges_MP_Summary_ProgressWidget")
require("ui.uieditor.widgets.Challenges.Challenges_Summary_NearCompletionButton")
require("ui.uieditor.menus.Challenges.Challenges_NearCompletion")
require("ui.uieditor.widgets.Challenges.Challenges_Title")
require("ui.uieditor.widgets.Challenges.Challenges_OneHundredPercentWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Challenges_MP_Summary = registerVal1
function CoD.Challenges_MP_Summary.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Challenges_MP_Summary)
	registerVal2.id = "Challenges_MP_Summary"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1160.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 520.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 694.000000, 1123.610000)
	registerVal3:setTopBottom(true, false, 383.250000, 482.250000)
	registerVal3:setAlpha(0.050000)
	registerVal2:addElement(registerVal3)
	registerVal2.Image0000 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 694.000000, 1123.610000)
	registerVal4:setTopBottom(true, false, 275.250000, 374.250000)
	registerVal4:setAlpha(0.050000)
	registerVal2:addElement(registerVal4)
	registerVal2.Image000 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 694.000000, 1123.610000)
	registerVal5:setTopBottom(true, false, 166.250000, 265.250000)
	registerVal5:setAlpha(0.050000)
	registerVal2:addElement(registerVal5)
	registerVal2.Image00 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 694.000000, 1123.610000)
	registerVal6:setTopBottom(true, false, 56.250000, 155.250000)
	registerVal6:setAlpha(0.050000)
	registerVal2:addElement(registerVal6)
	registerVal2.Image0 = registerVal6
	local registerVal7 = CoD.Challenges_MP_Summary_ProgressWidget.new(arg0, arg1)
	registerVal7:setLeftRight(false, true, -467.000000, -35.000000)
	registerVal7:setTopBottom(false, false, -205.500000, 226.500000)
	registerVal2:addElement(registerVal7)
	registerVal2.ProgressWidget = registerVal7
	local registerVal8 = CoD.Challenges_Summary_NearCompletionButton.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 11.000000, 602.000000)
	registerVal8:setTopBottom(true, false, 54.500000, 316.500000)
	registerVal8.NearCompletionGrid:setDataSource("ChallengesNearCompletionList")
	local function __FUNC_11BD_(arg2, arg3)
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

	registerVal8:registerEventHandler("gain_focus", __FUNC_11BD_)
	local function __FUNC_134F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("lose_focus", __FUNC_134F_)
	local function __FUNC_141E_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInState(arg0, "AllChallengesComplete")
		if not registerVal4 then
			OpenPopup(registerVal2, "Challenges_NearCompletion", arg2, "", "")
			return true
		end
	end

	local function __FUNC_14FD_(arg0, arg1, arg2)
		local registerVal3 = IsElementInState(arg0, "AllChallengesComplete")
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal8, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_141E_, __FUNC_14FD_, false)
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "AllChallengesComplete"
	local function __FUNC_1653_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "ChallengesMPCategoryStats.mp", 1.000000)
	end

	registerVal12.condition = __FUNC_1653_
	registerVal11 = {registerVal12}
	registerVal8:mergeStateConditions(registerVal11)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "ChallengesMPCategoryStats.mp")
	local function __FUNC_16DC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "ChallengesMPCategoryStats.mp"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_16DC_)
	registerVal2:addElement(registerVal8)
	registerVal2.NearCompletionButton = registerVal8
	local registerVal9 = CoD.Challenges_Title.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 695.000000, 891.000000)
	registerVal9:setTopBottom(true, false, 20.000000, 52.250000)
	registerVal9.weaponNameLabel:setText(Engine.Localize("MPUI_PROGRESS_CAPS"))
	registerVal2:addElement(registerVal9)
	registerVal2.ChallengesTitle0 = registerVal9
	local registerVal10 = CoD.Challenges_OneHundredPercentWidget.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 11.000000, 602.000000)
	registerVal10:setTopBottom(true, false, 383.250000, 481.250000)
	registerVal10.EmblemSubtitle:setText(Engine.Localize("CHALLENGE_DARK_OPS_COMPLETED_ALL_CHALLENGES_DESC"))
	registerVal10.weaponNameLabel:setText(Engine.Localize("CHALLENGE_DARK_OPS_COMPLETED_ALL_CHALLENGES"))
	registerVal10.ChallengesTitle.weaponNameLabel:setText(Engine.Localize("MENU_CHALLENGES_MASTER"))
	local function __FUNC_180E_(arg0)
		registerVal10:setModel(arg0, arg1)
	end

	registerVal10:subscribeToGlobalModel(arg1, "OneHundredPercentCallingCard", nil, __FUNC_180E_)
	local function __FUNC_185E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.PercentCompleteWidget.percentCompleteCircle:setAlpha(HideIfNumEqualTo(0.000000, registerVal1))
		end
	end

	registerVal10:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "mp", __FUNC_185E_)
	local function __FUNC_1972_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal10.PercentCompleteWidget.percentCompleteCircle:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal10:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "mp", __FUNC_1972_)
	local function __FUNC_1B1E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.PercentCompleteWidget.percentText:setText(NumberAsPercentRounded(registerVal1))
		end
	end

	registerVal10:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "mp", __FUNC_1B1E_)
	local function __FUNC_1C24_(arg0)
		registerVal10.MasterCallingCardIcon:setModel(arg0, arg1)
	end

	registerVal10:subscribeToGlobalModel(arg1, "OneHundredPercentCallingCard", nil, __FUNC_1C24_)
	registerVal2:addElement(registerVal10)
	registerVal2.OneHundredPercentWidget = registerVal10
	registerVal11 = {}
	registerVal12 = {}
	local function __FUNC_1CA1_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal10:completeAnimation()
		registerVal2.OneHundredPercentWidget:setLeftRight(true, false, 11.000000, 602.000000)
		registerVal2.OneHundredPercentWidget:setTopBottom(true, false, 383.250000, 481.250000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_1CA1_
	registerVal11.DefaultState = registerVal12
	registerVal2.clipsPerState = registerVal11
	registerVal8.id = "NearCompletionButton"
	local function __FUNC_1E0C_(arg0, arg1)
		local registerVal2 = arg0.NearCompletionButton:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_1E0C_)
	local function __FUNC_1F1C_(arg0)
		arg0.ProgressWidget:close()
		arg0.NearCompletionButton:close()
		arg0.ChallengesTitle0:close()
		arg0.OneHundredPercentWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1F1C_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

