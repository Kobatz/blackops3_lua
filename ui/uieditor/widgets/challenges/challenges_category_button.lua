-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.Challenges.Challenges_PercentCompleteWidget_MD")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.StartMenu.StartMenu_Identity_SubTitle")
require("ui.uieditor.widgets.CAC.cac_lock")
local function __FUNC_3D7_(arg0, arg1)
	local function __FUNC_44F_(arg0, arg1)
		if arg1.unlockRank == nil or arg1.unlockPLevel == nil then
			local registerVal3 = Engine.Localize("MENU_CHALLENGE_CATEGORY_NOT_FOUND")
		else
			if arg1.plevel < arg1.unlockPLevel then
				registerVal3 = Engine.Localize("MENU_CHALLENGE_PRESTIGE_HINTTEXT_LOCK", arg1.unlockPLevel)
			else
				if arg1.rank < arg1.unlockRank then
					registerVal3 = CoD.GetRankName(arg1.unlockRank, arg1.plevel, arg1.mode)
					local registerVal4 = Engine.Localize("MENU_UNLOCKED_AT", registerVal3, (arg1.unlockRank + 1.000000))
				end
			end
		end
		arg0.UnlockInstructions:setText(registerVal4)
	end

	arg0:registerEventHandler("set_unlock_instructions", __FUNC_44F_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.Challenges_Category_Button = registerVal2
local function __FUNC_6FB_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Challenges_Category_Button)
	registerVal2.id = "Challenges_Category_Button"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 350.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 200.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_ButtonBoxLrgInactive.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal3:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal3:setRGB(0.870000, 0.970000, 1.000000)
	registerVal3:setAlpha(0.700000)
	registerVal2:addElement(registerVal3)
	registerVal2.BoxButtonLrgInactive = registerVal3
	local registerVal4 = CoD.cac_ButtonBoxLrgIdle.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BoxButtonLrgIdle = registerVal4
	local registerVal5 = CoD.cac_ButtonBoxLrgInactiveDiags.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setAlpha(0.200000)
	registerVal2:addElement(registerVal5)
	registerVal2.BoxButtonLrgInactiveDiag = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -80.500000, 80.500000)
	registerVal6:setTopBottom(false, false, -81.000000, 80.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.CategoryIcon = registerVal6
	local registerVal7 = CoD.Challenges_PercentCompleteWidget_MD.new(arg0, arg1)
	registerVal7:setLeftRight(false, true, -76.000000, -12.000000)
	registerVal7:setTopBottom(false, true, -76.000000, -12.000000)
	registerVal7.percentCompleteCircle:setAlpha(1.000000)
	registerVal7.percentCompleteCircle:setShaderVector(0.000000, 0.500001, 0.000000, 0.000000, 0.000000)
	registerVal7.percentText:setText(Engine.Localize("50%"))
	registerVal2:addElement(registerVal7)
	registerVal2.PercentCompleteWidget = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, true, 6.000000, -6.000000)
	registerVal8:setTopBottom(false, true, -81.000000, -64.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setText(Engine.Localize("MENU_CHALLENGES_WEAPON_HINTTEXT_LOCK"))
	registerVal8:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal8)
	registerVal2.UnlockInstructions = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, true, 2.000000, -2.000000)
	registerVal9:setTopBottom(true, true, 2.000000, -3.000000)
	registerVal9:setRGB(0.000000, 0.000000, 0.000000)
	registerVal9:setAlpha(0.050000)
	registerVal2:addElement(registerVal9)
	registerVal2.BlackTint = registerVal9
	local registerVal10 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal10:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal10:setTopBottom(true, false, -1.000000, 3.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setZoom(1.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.FocusBarT = registerVal10
	local registerVal11 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal11:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal11:setTopBottom(false, true, -3.000000, 1.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setZoom(1.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.FocusBarB = registerVal11
	local registerVal12 = CoD.StartMenu_Identity_SubTitle.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 5.000000, 93.000000)
	registerVal12:setTopBottom(false, true, -32.000000, -5.000000)
	registerVal12.SubTitle:setText(Engine.Localize("MENU_CHALLENGE_CATEGORY_DARKOPS"))
	registerVal12.SubTitle:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal12)
	registerVal2.StartMenuIdentitySubTitle0 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, true, 3.000000, -3.000000)
	registerVal13:setTopBottom(false, false, -25.500000, 15.000000)
	registerVal13:setRGB(0.000000, 0.000000, 0.000000)
	registerVal13:setAlpha(0.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.BlackLine = registerVal13
	local registerVal14 = CoD.cac_lock.new(arg0, arg1)
	registerVal14:setLeftRight(false, false, -12.500000, 18.500000)
	registerVal14:setTopBottom(false, false, -21.000000, 11.000000)
	registerVal14:setAlpha(0.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.lockedIcon = registerVal14
	local registerVal15 = {}
	local registerVal16 = {}
	local function __FUNC_1753_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CategoryIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.PercentCompleteWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.UnlockInstructions:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BlackTint:setAlpha(0.050000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.BlackLine:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal16.DefaultClip = __FUNC_1753_
	local function __FUNC_1BA2_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.PercentCompleteWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.UnlockInstructions:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BlackTint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.BlackLine:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal16.Focus = __FUNC_1BA2_
	registerVal15.DefaultState = registerVal16
	registerVal16 = {}
	local function __FUNC_1F93_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CategoryIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.PercentCompleteWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.UnlockInstructions:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.BlackLine:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.lockedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal16.DefaultClip = __FUNC_1F93_
	local function __FUNC_2390_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CategoryIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.PercentCompleteWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.UnlockInstructions:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.BlackLine:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.lockedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal16.Focus = __FUNC_2390_
	registerVal15.Disabled = registerVal16
	registerVal16 = {}
	local function __FUNC_2790_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CategoryIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.PercentCompleteWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.UnlockInstructions:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BlackTint:setAlpha(0.050000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.BlackLine:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal16.DefaultClip = __FUNC_2790_
	local function __FUNC_2BE2_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.PercentCompleteWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.UnlockInstructions:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BlackTint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.BlackLine:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal16.Focus = __FUNC_2BE2_
	registerVal15.HideCompletionWidget = registerVal16
	registerVal2.clipsPerState = registerVal15
	local registerVal17 = {}
	local registerVal18 = {}
	registerVal18.stateName = "Disabled"
	local function __FUNC_2FD3_(arg0, arg1, arg2)
		return true
	end

	registerVal18.condition = __FUNC_2FD3_
	local registerVal19 = {}
	registerVal19.stateName = "HideCompletionWidget"
	local function __FUNC_3004_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal19.condition = __FUNC_3004_
	registerVal17 = {registerVal18, registerVal19}
	registerVal2:mergeStateConditions(registerVal17)
	local function __FUNC_3051_(arg0)
		arg0.BoxButtonLrgInactive:close()
		arg0.BoxButtonLrgIdle:close()
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.PercentCompleteWidget:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.StartMenuIdentitySubTitle0:close()
		arg0.lockedIcon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3051_)
	if __FUNC_3D7_ then
		__FUNC_3D7_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.Challenges_Category_Button.new = __FUNC_6FB_
