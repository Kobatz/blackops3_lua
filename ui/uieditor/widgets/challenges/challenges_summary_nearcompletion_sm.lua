-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Challenges.Challenges_NearCompletionWidget")
require("ui.uieditor.widgets.Challenges.Challenges_Title")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Challenges_Summary_NearCompletion_SM = registerVal1
function CoD.Challenges_Summary_NearCompletion_SM.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Challenges_Summary_NearCompletion_SM)
	registerVal2.id = "Challenges_Summary_NearCompletion_SM"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 590.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 80.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Challenges_NearCompletionWidget.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 80.000000)
	registerVal3.ProgressBar:setShaderVector(0.000000, 0.200000, 0.000000, 0.000000, 0.000000)
	registerVal3.ProgressFraction:setText(Engine.Localize("100/500"))
	registerVal3.ChallengeDescription.textBox:setText(Engine.Localize("MENU_NEW"))
	registerVal2:addElement(registerVal3)
	registerVal2.NearCompletionWidget = registerVal3
	local registerVal4 = CoD.Challenges_Title.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 3.000000, 199.000000)
	registerVal4:setTopBottom(true, false, -26.250000, -1.000000)
	registerVal4.weaponNameLabel:setText(Engine.Localize("MENU_SORT_NEAREST_TO_COMPLETION"))
	registerVal2:addElement(registerVal4)
	registerVal2.ChallengesTitle = registerVal4
	local registerVal5 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, false, -1.000000, 3.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setZoom(1.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.FocusBarT = registerVal5
	local registerVal6 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(false, true, -3.000000, 1.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setZoom(1.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.FocusBarB = registerVal6
	local registerVal7 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, -1.000000, 1.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 1.000000)
	registerVal7:setAlpha(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.StartMenuframenoBG0 = registerVal7
	local function __FUNC_C61_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.ChallengeTitle.textBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.NearCompletionWidget:linkToElementModel(registerVal2, "title", true, __FUNC_C61_)
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_D5B_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal5:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_D5B_
	local function __FUNC_F11_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal5:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.Focus = __FUNC_F11_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_1068_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.NearCompletionWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal4.weaponNameLabel:completeAnimation()
		registerVal2.ChallengesTitle.weaponNameLabel:setText(Engine.Localize("100% Complete"))
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.DefaultClip = __FUNC_1068_
	registerVal8.AllChallengesComplete = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_131A_(arg0)
		arg0.NearCompletionWidget:close()
		arg0.ChallengesTitle:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.StartMenuframenoBG0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_131A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

