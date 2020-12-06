-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Border")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.CharacterCustomization.ChooseContractCharacterLoadoutCarouselItem_InfoArea")
require("ui.uieditor.widgets.CAC.cac_LockBig")
require("ui.uieditor.widgets.CAC.NewBreadcrumb")
require("ui.uieditor.widgets.Heroes.chooseCharacterVignette")
require("ui.uieditor.widgets.Heroes.ChooseCharacterLoadout_ButtonFooter")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChooseContractCharacterLoadoutCarouselItem_Internal = registerVal1
function CoD.ChooseContractCharacterLoadoutCarouselItem_Internal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.ChooseContractCharacterLoadoutCarouselItem_Internal)
	registerVal2.id = "ChooseContractCharacterLoadoutCarouselItem_Internal"
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
	local function __FUNC_1678_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "lockedBackgroundWithCharacter", true, __FUNC_1678_)
	registerVal2:addElement(registerVal3)
	registerVal2.lockedCharacterWithBackground = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -46.000000, 46.000000)
	registerVal4:setTopBottom(false, false, -250.000000, 250.000000)
	registerVal4:setAlpha(0.000000)
	local function __FUNC_172C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "lockedCharacterSliver", true, __FUNC_172C_)
	registerVal2:addElement(registerVal4)
	registerVal2.lockedSliverRender = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -408.000000, 408.000000)
	registerVal5:setTopBottom(false, false, -261.000000, 239.000000)
	local function __FUNC_17E0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "backgroundWithCharacter", true, __FUNC_17E0_)
	registerVal2:addElement(registerVal5)
	registerVal2.characterWithBackground = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -46.000000, 46.000000)
	registerVal6:setTopBottom(false, false, -250.000000, 250.000000)
	registerVal6:setAlpha(0.000000)
	local function __FUNC_1894_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "unlockedCharacterSliver", true, __FUNC_1894_)
	registerVal2:addElement(registerVal6)
	registerVal2.unlockSliverRender = registerVal6
	local registerVal7 = CoD.Border.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal7:setAlpha(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.border = registerVal7
	local registerVal8 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(false, false, -246.000000, 246.000000)
	registerVal8:setAlpha(0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.FETitleNumBrdr2 = registerVal8
	local registerVal9 = CoD.ChooseContractCharacterLoadoutCarouselItem_InfoArea.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, -10.000000, 290.000000)
	registerVal9:setTopBottom(true, false, -8.000000, 492.000000)
	local function __FUNC_1948_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:linkToElementModel(registerVal2, nil, false, __FUNC_1948_)
	registerVal2:addElement(registerVal9)
	registerVal2.infoArea = registerVal9
	local registerVal10 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal10:setLeftRight(false, false, -44.000000, 44.000000)
	registerVal10:setTopBottom(false, false, -220.000000, 220.000000)
	registerVal10:setAlpha(0.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.FETitleNumBrdr0 = registerVal10
	local registerVal11 = CoD.cac_LockBig.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 485.000000, 581.000000)
	registerVal11:setTopBottom(true, false, -2.000000, 500.000000)
	local function __FUNC_199A_(arg0)
		registerVal11:setModel(arg0, arg1)
	end

	registerVal11:linkToElementModel(registerVal2, nil, false, __FUNC_199A_)
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "Locked"
	local function __FUNC_19EA_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal15.condition = __FUNC_19EA_
	local registerVal16 = {}
	registerVal16.stateName = "NotAvailable"
	local function __FUNC_1A34_(arg0, arg2, arg3)
		local registerVal3 = IsInPermanentUnlockMenu(arg1)
		return (not registerVal3)
	end

	registerVal16.condition = __FUNC_1A34_
	registerVal14 = {registerVal15, registerVal16}
	registerVal11:mergeStateConditions(registerVal14)
	registerVal2:addElement(registerVal11)
	registerVal2.lockImage = registerVal11
	local registerVal12 = CoD.NewBreadcrumb.new(arg0, arg1)
	registerVal12:setLeftRight(false, false, -42.250000, -30.250000)
	registerVal12:setTopBottom(false, false, -218.000000, -206.000000)
	registerVal15 = {}
	registerVal16 = {}
	registerVal16.stateName = "Visible"
	local function __FUNC_1A95_(arg0, arg2, arg3)
		return IsSpecialistNew(registerVal2, arg2, arg1)
	end

	registerVal16.condition = __FUNC_1A95_
	registerVal15 = {registerVal16}
	registerVal12:mergeStateConditions(registerVal15)
	registerVal2:addElement(registerVal12)
	registerVal2.newIcon = registerVal12
	local registerVal13 = CoD.chooseCharacterVignette.new(arg0, arg1)
	registerVal13:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal13:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal13:setRGB(0.000000, 0.000000, 0.000000)
	registerVal13.bottomRight:setRGB(0.000000, 0.000000, 0.000000)
	registerVal13.topRight:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.chooseCharacterVignette = registerVal13
	registerVal14 = CoD.ChooseCharacterLoadout_ButtonFooter.new(arg0, arg1)
	registerVal14:setLeftRight(false, true, -237.250000, -17.500000)
	registerVal14:setTopBottom(false, false, 191.100000, 224.000000)
	registerVal14.ChooseCharacterLoadoutButtonFooterBackOfCard0.BMContractsSpecialistbtnbg:setAlpha(1.000000)
	registerVal14.ChooseCharacterLoadoutButtonFooterBackOfCard0.BlackBoxBottomRight:setAlpha(0.000000)
	registerVal14.ChooseCharacterLoadoutButtonFooterBackOfCard0.BlackBoxRight:setAlpha(0.000000)
	registerVal14.ChooseCharacterLoadoutButtonFooterBackOfCard0.backOfCardLabel:setText(Engine.Localize("MENU_BACK_OF_CARD"))
	registerVal14.ChooseCharacterLoadoutButtonFooterBackOfCard0.rightBar:setAlpha(0.000000)
	registerVal14.ChooseCharacterLoadoutButtonFooterBackOfCard0.borderLines:setAlpha(0.000000)
	registerVal14.ChooseCharacterLoadoutButtonFooterPersonalize0.BMContractsSpecialistbtnbgleft:setAlpha(1.000000)
	registerVal14.ChooseCharacterLoadoutButtonFooterPersonalize0.BlackBoxBottomLeft:setAlpha(0.000000)
	registerVal14.ChooseCharacterLoadoutButtonFooterPersonalize0.BlackBoxLeft:setAlpha(0.000000)
	registerVal14.ChooseCharacterLoadoutButtonFooterPersonalize0.personalizeLabel:setText(Engine.Localize("CONTRACT_SIDE_BET"))
	registerVal14.ChooseCharacterLoadoutButtonFooterPersonalize0.clickableButton.label:setText(Engine.Localize("CONTRACT_SIDE_BET"))
	registerVal14.ChooseCharacterLoadoutButtonFooterPersonalize0.LineRight:setAlpha(0.000000)
	registerVal14.ChooseCharacterLoadoutButtonFooterPersonalize0.borderLines:setAlpha(0.000000)
	local function __FUNC_1AF1_(arg0)
		registerVal14:setModel(arg0, arg1)
	end

	registerVal14:linkToElementModel(registerVal2, nil, false, __FUNC_1AF1_)
	registerVal2:addElement(registerVal14)
	registerVal2.ChooseCharacterLoadoutButtonFooter = registerVal14
	registerVal15 = {}
	registerVal16 = {}
	local function __FUNC_1B42_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal14:completeAnimation()
		registerVal14.ChooseCharacterLoadoutButtonFooterBackOfCard0.backOfCardLabel:completeAnimation()
		registerVal14.ChooseCharacterLoadoutButtonFooterPersonalize0.personalizeLabel:completeAnimation()
		registerVal2.ChooseCharacterLoadoutButtonFooter.ChooseCharacterLoadoutButtonFooterBackOfCard0.backOfCardLabel:setText(Engine.Localize("MENU_BACK_OF_CARD"))
		registerVal2.ChooseCharacterLoadoutButtonFooter.ChooseCharacterLoadoutButtonFooterPersonalize0.personalizeLabel:setText(Engine.Localize("CONTRACT_SIDE_BET"))
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal16.DefaultClip = __FUNC_1B42_
	registerVal15.DefaultState = registerVal16
	registerVal2.clipsPerState = registerVal15
	registerVal9.id = "infoArea"
	local function __FUNC_1E0A_(arg0, arg1)
		local registerVal2 = arg0.infoArea:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_1E0A_)
	local function __FUNC_1F0C_(arg0)
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
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1F0C_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

