-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.Challenges.Challenges_NearCompletionWidget")
require("ui.uieditor.widgets.Challenges.Challenges_Title")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Challenges_Summary_NearCompletionButton = registerVal1
function CoD.Challenges_Summary_NearCompletionButton.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Challenges_Summary_NearCompletionButton)
	registerVal2.id = "Challenges_Summary_NearCompletionButton"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 590.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 262.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 3.000000, 587.000000)
	registerVal3:setTopBottom(true, false, 3.000000, 258.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BoxBlack1 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 3.000000, 587.000000)
	registerVal4:setTopBottom(true, false, 220.000000, 258.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BoxBlack10 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 403.980000, 555.980000)
	registerVal5:setTopBottom(true, false, 121.000000, 126.000000)
	registerVal5:setRGB(0.150000, 0.150000, 0.150000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.BoxBlack2 = registerVal5
	local registerVal6 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, -1.000000, 1.000000)
	registerVal6:setTopBottom(true, true, 0.000000, -171.000000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.StartMenuframenoBG0 = registerVal6
	local registerVal7 = LUI.GridLayout.new(arg0, arg1, false, 0.000000, 0.000000, 9.000000, 0.000000, nil, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal7:setLeftRight(true, false, 1.000000, 591.000000)
	registerVal7:setTopBottom(true, false, 3.000000, 261.000000)
	registerVal7:setWidgetType(CoD.Challenges_NearCompletionWidget)
	registerVal7:setVerticalCount(3.000000)
	registerVal7:setSpacing(9.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.NearCompletionGrid = registerVal7
	local registerVal8 = CoD.Challenges_Title.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 2.000000, 198.000000)
	registerVal8:setTopBottom(true, false, -34.500000, -2.250000)
	registerVal8.weaponNameLabel:setText(Engine.Localize("MENU_NEAR_COMPLETION_CAPS"))
	registerVal2:addElement(registerVal8)
	registerVal2.ChallengesTitle = registerVal8
	local registerVal9 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, -2.000000, 1.000000)
	registerVal9:setTopBottom(true, false, 0.000000, 4.000000)
	registerVal9:setZoom(1.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.FocusBarT = registerVal9
	local registerVal10 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal10:setLeftRight(true, true, -2.000000, 1.000000)
	registerVal10:setTopBottom(false, true, -1.000000, 3.000000)
	registerVal10:setZoom(1.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.FocusBarB = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, false, 123.210000, 456.210000)
	registerVal11:setTopBottom(true, false, 30.380000, 50.380000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setText(Engine.Localize("MENU_COLLECTED_ALL_MULTIPLAYER_CALLINGCARDS"))
	registerVal11:setTTF("fonts/escom.ttf")
	registerVal11:setLetterSpacing(1.000000)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal11)
	registerVal2.CompletedTextBox = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 19.250000, 96.000000)
	registerVal12:setTopBottom(true, false, 4.000000, 80.750000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_challenges_complete_icon"))
	registerVal2:addElement(registerVal12)
	registerVal2.CompletedIcon = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 403.980000, 555.980000)
	registerVal13:setTopBottom(true, false, 123.000000, 124.000000)
	registerVal13:setRGB(0.950000, 0.910000, 0.110000)
	registerVal13:setAlpha(0.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.YellowBox = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 37.980000, 189.980000)
	registerVal14:setTopBottom(true, false, 121.000000, 126.000000)
	registerVal14:setRGB(0.000000, 0.000000, 0.000000)
	registerVal14:setAlpha(0.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.BoxBlack0 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, 35.930000, 187.980000)
	registerVal15:setTopBottom(true, false, 123.000000, 124.000000)
	registerVal15:setRGB(0.950000, 0.910000, 0.110000)
	registerVal15:setAlpha(0.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.YellowBox0 = registerVal15
	local registerVal16 = {}
	local registerVal17 = {}
	local function __FUNC_12C0_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal17.DefaultClip = __FUNC_12C0_
	local function __FUNC_1418_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal17.Focus = __FUNC_1418_
	registerVal16.DefaultState = registerVal17
	registerVal17 = {}
	local function __FUNC_1570_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxBlack1:setLeftRight(true, false, 3.000000, 587.000000)
		registerVal2.BoxBlack1:setTopBottom(true, false, 3.000000, 258.000000)
		registerVal2.BoxBlack1:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxBlack10:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxBlack2:setLeftRight(true, false, 401.980000, 553.980000)
		registerVal2.BoxBlack2:setTopBottom(true, false, 121.000000, 126.000000)
		registerVal2.BoxBlack2:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.StartMenuframenoBG0:setLeftRight(true, true, -1.000000, 1.000000)
		registerVal2.StartMenuframenoBG0:setTopBottom(true, true, 0.000000, -1.000000)
		registerVal2.StartMenuframenoBG0:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.NearCompletionGrid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal8.weaponNameLabel:completeAnimation()
		registerVal2.ChallengesTitle.weaponNameLabel:setText(Engine.Localize("MPUI_COMPLETE_CAPS"))
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.CompletedTextBox:setLeftRight(true, false, 150.500000, 483.500000)
		registerVal2.CompletedTextBox:setTopBottom(true, false, 227.950000, 247.950000)
		registerVal2.CompletedTextBox:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.CompletedIcon:setLeftRight(true, false, 195.000000, 394.130000)
		registerVal2.CompletedIcon:setTopBottom(true, false, 17.630000, 216.750000)
		registerVal2.CompletedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.YellowBox:setLeftRight(true, false, 401.980000, 553.980000)
		registerVal2.YellowBox:setTopBottom(true, false, 123.000000, 124.000000)
		registerVal2.YellowBox:setRGB(0.950000, 0.910000, 0.110000)
		registerVal2.YellowBox:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.BoxBlack0:setLeftRight(true, false, 35.980000, 187.980000)
		registerVal2.BoxBlack0:setTopBottom(true, false, 121.000000, 126.000000)
		registerVal2.BoxBlack0:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.YellowBox0:setLeftRight(true, false, 35.930000, 187.980000)
		registerVal2.YellowBox0:setTopBottom(true, false, 123.000000, 124.000000)
		registerVal2.YellowBox0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_1570_
	registerVal16.AllChallengesComplete = registerVal17
	registerVal2.clipsPerState = registerVal16
	local function __FUNC_1EB7_(arg0)
		arg0.StartMenuframenoBG0:close()
		arg0.NearCompletionGrid:close()
		arg0.ChallengesTitle:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1EB7_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

