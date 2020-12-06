-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CharacterCustomization.SmallFrameWithBG")
require("ui.uieditor.widgets.Border")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.CharacterCustomization.ChooseCharacterLoadoutCarouselItem_InfoArea")
require("ui.uieditor.widgets.CAC.cac_LockBig")
require("ui.uieditor.widgets.CAC.NewBreadcrumb")
require("ui.uieditor.widgets.Heroes.chooseCharacterVignette")
require("ui.uieditor.widgets.Heroes.ChooseCharacterLoadout_ButtonFooter")
local function __FUNC_430_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "heroSelectionTutorial")
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.ChooseCharacterLoadoutCarouselItem_Internal = registerVal2
local function __FUNC_4E4_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_430_ then
		__FUNC_430_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.ChooseCharacterLoadoutCarouselItem_Internal)
	registerVal2.id = "ChooseCharacterLoadoutCarouselItem_Internal"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 816.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 500.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -408.000000, 408.000000)
	registerVal3:setTopBottom(false, false, -250.000000, 250.000000)
	registerVal3:setRGB(0.340000, 0.400000, 0.460000)
	registerVal3:setAlpha(0.000000)
	local function __FUNC_17F8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "lockedBackgroundWithCharacter", true, __FUNC_17F8_)
	registerVal2:addElement(registerVal3)
	registerVal2.lockedCharacterWithBackground = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -46.000000, 46.000000)
	registerVal4:setTopBottom(false, false, -250.000000, 250.000000)
	registerVal4:setAlpha(0.000000)
	local function __FUNC_18AC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "lockedCharacterSliver", true, __FUNC_18AC_)
	registerVal2:addElement(registerVal4)
	registerVal2.lockedSliverRender = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -408.000000, 408.000000)
	registerVal5:setTopBottom(false, false, -250.000000, 250.000000)
	local function __FUNC_1960_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "backgroundWithCharacter", true, __FUNC_1960_)
	registerVal2:addElement(registerVal5)
	registerVal2.characterWithBackground = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -46.000000, 46.000000)
	registerVal6:setTopBottom(false, false, -250.000000, 250.000000)
	registerVal6:setAlpha(0.000000)
	local function __FUNC_1A14_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "unlockedCharacterSliver", true, __FUNC_1A14_)
	registerVal2:addElement(registerVal6)
	registerVal2.unlockSliverRender = registerVal6
	local registerVal7 = CoD.SmallFrameWithBG.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 256.750000, -498.250000)
	registerVal7:setTopBottom(false, false, 220.000000, 242.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.SmallFrameWithBG0 = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(false, false, -529.250000, 286.750000)
	registerVal8:setTopBottom(false, true, -29.500000, -9.500000)
	registerVal8:setTTF("fonts/default.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1AC8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(registerVal1)
		end
	end

	registerVal8:linkToElementModel(registerVal2, "count", true, __FUNC_1AC8_)
	registerVal2:addElement(registerVal8)
	registerVal2.heroNumber = registerVal8
	local registerVal9 = CoD.Border.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal9:setAlpha(0.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.border = registerVal9
	local registerVal10 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal10:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal10:setTopBottom(false, false, -246.000000, 246.000000)
	registerVal10:setAlpha(0.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.FETitleNumBrdr2 = registerVal10
	local registerVal11 = CoD.ChooseCharacterLoadoutCarouselItem_InfoArea.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 0.000000, 300.000000)
	registerVal11:setTopBottom(true, false, -2.000000, 498.000000)
	local function __FUNC_1B5C_(arg0)
		registerVal11:setModel(arg0, arg1)
	end

	registerVal11:linkToElementModel(registerVal2, nil, false, __FUNC_1B5C_)
	local function __FUNC_1BAE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.WeaponNameWidget0.weaponNameLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal2, "name", true, __FUNC_1BAE_)
	registerVal2:addElement(registerVal11)
	registerVal2.infoArea = registerVal11
	local registerVal12 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal12:setLeftRight(false, false, -44.000000, 44.000000)
	registerVal12:setTopBottom(false, false, -220.000000, 220.000000)
	registerVal12:setAlpha(0.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.FETitleNumBrdr0 = registerVal12
	local registerVal13 = CoD.cac_LockBig.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 485.000000, 581.000000)
	registerVal13:setTopBottom(true, false, -2.000000, 500.000000)
	local function __FUNC_1CB2_(arg0)
		registerVal13:setModel(arg0, arg1)
	end

	registerVal13:linkToElementModel(registerVal2, nil, false, __FUNC_1CB2_)
	local registerVal16 = {}
	local registerVal17 = {}
	registerVal17.stateName = "Locked"
	local function __FUNC_1D02_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal17.condition = __FUNC_1D02_
	local registerVal18 = {}
	registerVal18.stateName = "NotAvailable"
	local function __FUNC_1D4C_(arg0, arg2, arg3)
		local registerVal3 = IsInPermanentUnlockMenu(arg1)
		return (not registerVal3)
	end

	registerVal18.condition = __FUNC_1D4C_
	registerVal16 = {registerVal17, registerVal18}
	registerVal13:mergeStateConditions(registerVal16)
	registerVal2:addElement(registerVal13)
	registerVal2.lockImage = registerVal13
	local registerVal14 = CoD.NewBreadcrumb.new(arg0, arg1)
	registerVal14:setLeftRight(false, false, -42.250000, -30.250000)
	registerVal14:setTopBottom(false, false, -218.000000, -206.000000)
	registerVal17 = {}
	registerVal18 = {}
	registerVal18.stateName = "Visible"
	local function __FUNC_1DAD_(arg0, arg2, arg3)
		return IsSpecialistNew(registerVal2, arg2, arg1)
	end

	registerVal18.condition = __FUNC_1DAD_
	registerVal17 = {registerVal18}
	registerVal14:mergeStateConditions(registerVal17)
	registerVal2:addElement(registerVal14)
	registerVal2.newIcon = registerVal14
	local registerVal15 = CoD.chooseCharacterVignette.new(arg0, arg1)
	registerVal15:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal15:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal15:setRGB(0.000000, 0.000000, 0.000000)
	registerVal15.bottomRight:setRGB(0.000000, 0.000000, 0.000000)
	registerVal15.topRight:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.chooseCharacterVignette = registerVal15
	registerVal16 = CoD.ChooseCharacterLoadout_ButtonFooter.new(arg0, arg1)
	registerVal16:setLeftRight(false, true, -228.250000, -8.500000)
	registerVal16:setTopBottom(false, false, 211.100000, 244.000000)
	registerVal16.ChooseCharacterLoadoutButtonFooterBackOfCard0.backOfCardLabel:setText(Engine.Localize("MENU_BACK_OF_CARD"))
	registerVal16.ChooseCharacterLoadoutButtonFooterPersonalize0.personalizeLabel:setText(Engine.Localize("HEROES_PERSONALIZE"))
	local function __FUNC_1E09_(arg0)
		registerVal16:setModel(arg0, arg1)
	end

	registerVal16:linkToElementModel(registerVal2, nil, false, __FUNC_1E09_)
	registerVal2:addElement(registerVal16)
	registerVal2.ChooseCharacterLoadoutButtonFooter = registerVal16
	registerVal17 = {}
	registerVal18 = {}
	local function __FUNC_1E5A_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal16:completeAnimation()
		registerVal16.ChooseCharacterLoadoutButtonFooterBackOfCard0.backOfCardLabel:completeAnimation()
		registerVal16.ChooseCharacterLoadoutButtonFooterPersonalize0.personalizeLabel:completeAnimation()
		registerVal2.ChooseCharacterLoadoutButtonFooter.ChooseCharacterLoadoutButtonFooterBackOfCard0.backOfCardLabel:setText(Engine.Localize("MENU_BACK_OF_CARD"))
		registerVal2.ChooseCharacterLoadoutButtonFooter.ChooseCharacterLoadoutButtonFooterPersonalize0.personalizeLabel:setText(Engine.Localize("HEROES_PERSONALIZE"))
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_1E5A_
	registerVal17.DefaultState = registerVal18
	registerVal18 = {}
	local function __FUNC_2123_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal18.DefaultClip = __FUNC_2123_
	registerVal17.DisabledFocus = registerVal18
	registerVal2.clipsPerState = registerVal17
	local registerVal19 = {}
	local registerVal20 = {}
	registerVal20.stateName = "DisabledFocus"
	local function __FUNC_2182_(arg0, arg2, arg3)
		return IsGlobalModelValueTrue(arg2, arg1, "heroSelectionTutorial")
	end

	registerVal20.condition = __FUNC_2182_
	registerVal19 = {registerVal20}
	registerVal2:mergeStateConditions(registerVal19)
	registerVal20 = Engine.GetGlobalModel()
	registerVal19 = Engine.GetModel(registerVal20, "heroSelectionTutorial")
	local function __FUNC_2203_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "heroSelectionTutorial"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal19, __FUNC_2203_)
	registerVal11.id = "infoArea"
	local function __FUNC_232B_(arg0, arg1)
		local registerVal2 = arg0.infoArea:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_232B_)
	local function __FUNC_242C_(arg0)
		arg0.SmallFrameWithBG0:close()
		arg0.border:close()
		arg0.FETitleNumBrdr2:close()
		arg0.infoArea:close()
		arg0.FETitleNumBrdr0:close()
		arg0.lockImage:close()
		arg0.newIcon:close()
		arg0.chooseCharacterVignette:close()
		arg0.ChooseCharacterLoadoutButtonFooter:close()
		arg0.lockedCharacterWithBackground:close()
		arg0.lockedSliverRender:close()
		arg0.characterWithBackground:close()
		arg0.unlockSliverRender:close()
		arg0.heroNumber:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_242C_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ChooseCharacterLoadoutCarouselItem_Internal.new = __FUNC_4E4_
