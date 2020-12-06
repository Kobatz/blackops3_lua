-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Challenges.Challenges_background2")
require("ui.uieditor.widgets.Challenges.Challenges_PercentCompleteWidget_MD")
require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Challenges_MP_Summary_ProgressWidget = registerVal1
function CoD.Challenges_MP_Summary_ProgressWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Challenges_MP_Summary_ProgressWidget)
	registerVal2.id = "Challenges_MP_Summary_ProgressWidget"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 432.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 432.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Challenges_background2.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(false, true, -103.000000, -2.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Challengesbackground200 = registerVal3
	local registerVal4 = CoD.Challenges_background2.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(false, false, 4.000000, 105.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Challengesbackground21 = registerVal4
	local registerVal5 = CoD.Challenges_background2.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(false, false, -106.000000, -5.000000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.Challengesbackground20 = registerVal5
	local registerVal6 = CoD.Challenges_background2.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, false, 1.000000, 102.000000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.Challengesbackground2 = registerVal6
	local registerVal7 = CoD.Challenges_background2.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(false, true, -103.000000, -2.000000)
	registerVal7:setAlpha(0.050000)
	registerVal2:addElement(registerVal7)
	registerVal2.whitebox4 = registerVal7
	local registerVal8 = CoD.Challenges_background2.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(false, false, 4.000000, 105.000000)
	registerVal8:setAlpha(0.050000)
	registerVal2:addElement(registerVal8)
	registerVal2.whitebox3 = registerVal8
	local registerVal9 = CoD.Challenges_background2.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(false, false, -106.000000, -5.000000)
	registerVal9:setAlpha(0.050000)
	registerVal2:addElement(registerVal9)
	registerVal2.whitebox2 = registerVal9
	local registerVal10 = CoD.Challenges_background2.new(arg0, arg1)
	registerVal10:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal10:setTopBottom(true, false, 1.000000, 102.000000)
	registerVal10:setAlpha(0.050000)
	registerVal2:addElement(registerVal10)
	registerVal2.whitebox1 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 12.000000, 106.000000)
	registerVal11:setTopBottom(true, false, 5.000000, 99.000000)
	registerVal11:setImage(RegisterImage("uie_t7_icons_classification_operations"))
	registerVal2:addElement(registerVal11)
	registerVal2.OperationsIcon = registerVal11
	local registerVal12 = LUI.UIText.new()
	registerVal12:setLeftRight(true, false, 132.000000, 332.000000)
	registerVal12:setTopBottom(true, false, 40.000000, 64.000000)
	registerVal12:setText(Engine.Localize("MENU_OPERATIONS_CAPS"))
	registerVal12:setTTF("fonts/default.ttf")
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal12)
	registerVal2.OperationsText = registerVal12
	local registerVal13 = CoD.Challenges_PercentCompleteWidget_MD.new(arg0, arg1)
	registerVal13:setLeftRight(false, true, -90.000000, -20.000000)
	registerVal13:setTopBottom(true, false, 16.500000, 86.500000)
	local function __FUNC_19D6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.percentCompleteCircle:setAlpha(HideIfNumEqualTo(0.000000, registerVal1))
		end
	end

	registerVal13:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "operations", __FUNC_19D6_)
	local function __FUNC_1ABF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal13.percentCompleteCircle:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal13:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "operations", __FUNC_1ABF_)
	local function __FUNC_1C3F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.percentText:setText(Engine.Localize(NumberAsPercentRounded(registerVal1)))
		end
	end

	registerVal13:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "operations", __FUNC_1C3F_)
	registerVal2:addElement(registerVal13)
	registerVal2.OperationsPercentComplete = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 12.000000, 106.000000)
	registerVal14:setTopBottom(false, false, -102.000000, -8.000000)
	registerVal14:setImage(RegisterImage("uie_t7_icons_classification_specialists"))
	registerVal2:addElement(registerVal14)
	registerVal2.SpecialistsIcon = registerVal14
	local registerVal15 = LUI.UIText.new()
	registerVal15:setLeftRight(true, false, 132.000000, 332.000000)
	registerVal15:setTopBottom(false, false, -67.000000, -43.000000)
	registerVal15:setText(Engine.Localize("HEROES_SPECIALISTS_CAPS"))
	registerVal15:setTTF("fonts/default.ttf")
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal15)
	registerVal2.SpecialistsText = registerVal15
	local registerVal16 = CoD.Challenges_PercentCompleteWidget_MD.new(arg0, arg1)
	registerVal16:setLeftRight(false, true, -90.000000, -20.000000)
	registerVal16:setTopBottom(false, false, -90.000000, -20.000000)
	local function __FUNC_1D3F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16.percentCompleteCircle:setAlpha(HideIfNumEqualTo(0.000000, registerVal1))
		end
	end

	registerVal16:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "specialist", __FUNC_1D3F_)
	local function __FUNC_1E27_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal16.percentCompleteCircle:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal16:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "specialist", __FUNC_1E27_)
	local function __FUNC_1FA7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16.percentText:setText(Engine.Localize(NumberAsPercentRounded(registerVal1)))
		end
	end

	registerVal16:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "specialist", __FUNC_1FA7_)
	registerVal2:addElement(registerVal16)
	registerVal2.SpecialistsPercentComplete = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(true, false, 12.000000, 106.000000)
	registerVal17:setTopBottom(false, false, 7.000000, 101.000000)
	registerVal17:setImage(RegisterImage("uie_t7_icons_classification_scorestreaks"))
	registerVal2:addElement(registerVal17)
	registerVal2.ScorestreaksIcon = registerVal17
	local registerVal18 = LUI.UIText.new()
	registerVal18:setLeftRight(true, false, 132.000000, 332.000000)
	registerVal18:setTopBottom(false, false, 42.000000, 66.000000)
	registerVal18:setText(Engine.Localize("MENU_SCORESTREAKS_CAPS"))
	registerVal18:setTTF("fonts/default.ttf")
	registerVal18:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal18:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal18)
	registerVal2.ScorestreaksText = registerVal18
	local registerVal19 = CoD.Challenges_PercentCompleteWidget_MD.new(arg0, arg1)
	registerVal19:setLeftRight(false, true, -90.000000, -20.000000)
	registerVal19:setTopBottom(false, false, 19.000000, 89.000000)
	local function __FUNC_20A7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal19.percentCompleteCircle:setAlpha(HideIfNumEqualTo(0.000000, registerVal1))
		end
	end

	registerVal19:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "scorestreaks", __FUNC_20A7_)
	local function __FUNC_218F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal19.percentCompleteCircle:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal19:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "scorestreaks", __FUNC_218F_)
	local function __FUNC_230F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal19.percentText:setText(Engine.Localize(NumberAsPercentRounded(registerVal1)))
		end
	end

	registerVal19:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "scorestreaks", __FUNC_230F_)
	registerVal2:addElement(registerVal19)
	registerVal2.ScorestreaksPercentComplete = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(true, false, 12.000000, 106.000000)
	registerVal20:setTopBottom(false, true, -99.000000, -5.000000)
	registerVal20:setImage(RegisterImage("uie_t7_icons_classification_prestige"))
	registerVal2:addElement(registerVal20)
	registerVal2.PrestigeIcon = registerVal20
	local registerVal21 = LUI.UIText.new()
	registerVal21:setLeftRight(true, false, 132.000000, 332.000000)
	registerVal21:setTopBottom(false, true, -64.500000, -40.500000)
	registerVal21:setText(Engine.Localize("MENU_EMBLEM_BACKGROUND_PRESTIGETAB"))
	registerVal21:setTTF("fonts/default.ttf")
	registerVal21:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal21:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal21)
	registerVal2.PrestigeText = registerVal21
	local registerVal22 = CoD.Challenges_PercentCompleteWidget_MD.new(arg0, arg1)
	registerVal22:setLeftRight(false, true, -90.000000, -20.000000)
	registerVal22:setTopBottom(false, true, -87.000000, -17.000000)
	local function __FUNC_240F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal22.percentCompleteCircle:setAlpha(HideIfNumEqualTo(0.000000, registerVal1))
		end
	end

	registerVal22:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "prestige", __FUNC_240F_)
	local function __FUNC_24F7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal22.percentCompleteCircle:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal22:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "prestige", __FUNC_24F7_)
	local function __FUNC_2677_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal22.percentText:setText(Engine.Localize(NumberAsPercentRounded(registerVal1)))
		end
	end

	registerVal22:subscribeToGlobalModel(arg1, "ChallengesMPCategoryStats", "prestige", __FUNC_2677_)
	registerVal2:addElement(registerVal22)
	registerVal2.PrestigePercentComplete = registerVal22
	local registerVal23 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal23:setLeftRight(false, false, -217.000000, 217.000000)
	registerVal23:setTopBottom(false, false, -216.000000, -113.000000)
	registerVal23:setAlpha(0.200000)
	registerVal2:addElement(registerVal23)
	registerVal2.StartMenuframenoBG0 = registerVal23
	local registerVal24 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal24:setLeftRight(false, false, -217.000000, 217.000000)
	registerVal24:setTopBottom(false, false, -106.500000, -3.500000)
	registerVal24:setAlpha(0.200000)
	registerVal2:addElement(registerVal24)
	registerVal2.StartMenuframenoBG1 = registerVal24
	local registerVal25 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal25:setLeftRight(false, false, -217.000000, 217.000000)
	registerVal25:setTopBottom(false, false, 3.000000, 106.000000)
	registerVal25:setAlpha(0.200000)
	registerVal2:addElement(registerVal25)
	registerVal2.StartMenuframenoBG2 = registerVal25
	local registerVal26 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal26:setLeftRight(false, false, -217.000000, 217.000000)
	registerVal26:setTopBottom(false, false, 111.000000, 214.000000)
	registerVal26:setAlpha(0.200000)
	registerVal2:addElement(registerVal26)
	registerVal2.StartMenuframenoBG3 = registerVal26
	local function __FUNC_2777_(arg0)
		arg0.Challengesbackground200:close()
		arg0.Challengesbackground21:close()
		arg0.Challengesbackground20:close()
		arg0.Challengesbackground2:close()
		arg0.whitebox4:close()
		arg0.whitebox3:close()
		arg0.whitebox2:close()
		arg0.whitebox1:close()
		arg0.OperationsPercentComplete:close()
		arg0.SpecialistsPercentComplete:close()
		arg0.ScorestreaksPercentComplete:close()
		arg0.PrestigePercentComplete:close()
		arg0.StartMenuframenoBG0:close()
		arg0.StartMenuframenoBG1:close()
		arg0.StartMenuframenoBG2:close()
		arg0.StartMenuframenoBG3:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2777_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

