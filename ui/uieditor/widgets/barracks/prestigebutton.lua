-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.CAC.cac_lock")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.StartMenu.StartMenu_Identity_SubTitle")
local function __FUNC_331_(arg0, arg1)
	DataSources.PrestigeStats.getModel(arg1)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.PrestigeButton = registerVal2
local function __FUNC_3BE_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_331_ then
		__FUNC_331_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PrestigeButton)
	registerVal2.id = "PrestigeButton"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 350.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 216.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_ButtonBoxLrgInactive.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal3:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal3:setRGB(0.870000, 0.970000, 1.000000)
	registerVal3:setAlpha(0.400000)
	registerVal2:addElement(registerVal3)
	registerVal2.BoxButtonLrgInactive0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 3.000000, -2.000000)
	registerVal4:setTopBottom(true, true, 3.000000, -3.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.050000)
	registerVal2:addElement(registerVal4)
	registerVal2.BlackTint = registerVal4
	local registerVal5 = CoD.cac_ButtonBoxLrgInactiveDiags.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, -1.000000)
	registerVal5:setTopBottom(true, true, 0.000000, -1.000000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.BoxButtonLrgInactiveDiag = registerVal5
	local registerVal6 = CoD.cac_lock.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, -64.000000, 64.000000)
	registerVal6:setTopBottom(false, false, -78.000000, 50.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6.lockedIcon:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.LockIcon = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(false, false, -175.000000, 175.000000)
	registerVal7:setTopBottom(false, false, 35.000000, 52.000000)
	registerVal7:setRGB(0.670000, 0.670000, 0.670000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setText(Engine.Localize("MENU_PRESTIGE_MODE_LOCKED_HINT"))
	registerVal7:setTTF("fonts/escom.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.LockedHint = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -160.000000, 160.000000)
	registerVal8:setTopBottom(false, false, -54.000000, 26.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_callingcard_prestige_skull"))
	registerVal2:addElement(registerVal8)
	registerVal2.PrestigeMasterCard = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, 17.000000, 145.000000)
	registerVal9:setTopBottom(false, false, -78.000000, 50.000000)
	local function __FUNC_19D3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setImage(RegisterImage(SetToDisabledIfNotAtXPCap(arg1, GetRankIconLarge(registerVal1))))
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "PrestigeStats", "icon", __FUNC_19D3_)
	registerVal2:addElement(registerVal9)
	registerVal2.PrestigeIcon = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, false, 11.000000, 192.000000)
	registerVal10:setTopBottom(false, true, -93.000000, -71.000000)
	registerVal10:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1AD5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setAlpha(HideIfPrestigeMaster(arg1, HideIfNumEqualTo(0.000000, registerVal1)))
		end
	end

	registerVal10:subscribeToGlobalModel(arg1, "PerController", "permanentUnlockTokensCount", __FUNC_1AD5_)
	local function __FUNC_1BBE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setText(Engine.Localize(GetPermanentUnlockTokenText(arg1, registerVal1)))
		end
	end

	registerVal10:subscribeToGlobalModel(arg1, "PerController", "permanentUnlockTokensCount", __FUNC_1BBE_)
	registerVal2:addElement(registerVal10)
	registerVal2.PermanentUnlockTokens = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, false, 11.000000, 192.000000)
	registerVal11:setTopBottom(true, false, 145.000000, 167.000000)
	registerVal11:setText(Engine.Localize("MENU_AWARDS_AVAILABLE"))
	registerVal11:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal11)
	registerVal2.AwardsAvailable = registerVal11
	local registerVal12 = LUI.UIText.new()
	registerVal12:setLeftRight(true, true, 22.000000, 6.000000)
	registerVal12:setTopBottom(false, true, -28.000000, -5.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setText(Engine.Localize("MPUI_PRESTIGE_MODE"))
	registerVal12:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal12)
	registerVal2.ButtonTitle = registerVal12
	local registerVal13 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal13:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal13:setTopBottom(true, false, -1.000000, 3.000000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setZoom(1.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.FocusBarT = registerVal13
	local registerVal14 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal14:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal14:setTopBottom(false, true, -3.000000, 1.000000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setZoom(1.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.FocusBarB = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, true, 3.000000, -3.000000)
	registerVal15:setTopBottom(false, false, -25.500000, 15.000000)
	registerVal15:setRGB(0.000000, 0.000000, 0.000000)
	registerVal15:setAlpha(0.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.BlackLine = registerVal15
	local registerVal16 = CoD.cac_lock.new(arg0, arg1)
	registerVal16:setLeftRight(false, false, -12.500000, 18.500000)
	registerVal16:setTopBottom(false, false, -21.000000, 11.000000)
	registerVal16:setAlpha(0.000000)
	registerVal2:addElement(registerVal16)
	registerVal2.lockedIcon = registerVal16
	local registerVal17 = CoD.StartMenu_Identity_SubTitle.new(arg0, arg1)
	registerVal17:setLeftRight(true, false, 5.000000, 347.000000)
	registerVal17:setTopBottom(true, false, 186.500000, 212.500000)
	registerVal17.SubTitle:setText(Engine.Localize("Combat"))
	registerVal17.SubTitle:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal17)
	registerVal2.StartMenuIdentitySubTitle0 = registerVal17
	local registerVal18 = {}
	local registerVal19 = {}
	local function __FUNC_1CA7_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive0:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BlackTint:setAlpha(0.050000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LockIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.LockedHint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.PrestigeMasterCard:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.PrestigeIcon:setLeftRight(false, false, 17.000000, 145.000000)
		registerVal2.PrestigeIcon:setTopBottom(false, false, -78.000000, 50.000000)
		registerVal2.PrestigeIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.AwardsAvailable:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.BlackLine:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal19.DefaultClip = __FUNC_1CA7_
	local function __FUNC_222F_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive0:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BlackTint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.050000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LockIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.LockedHint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.PrestigeMasterCard:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.PrestigeIcon:setLeftRight(false, false, 17.000000, 145.000000)
		registerVal2.PrestigeIcon:setTopBottom(false, false, -78.000000, 50.000000)
		registerVal2.PrestigeIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.AwardsAvailable:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.BlackLine:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal19.Focus = __FUNC_222F_
	registerVal18.DefaultState = registerVal19
	registerVal19 = {}
	local function __FUNC_27B7_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive0:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BlackTint:setAlpha(0.050000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LockIcon:setLeftRight(false, false, -64.000000, 64.000000)
		registerVal2.LockIcon:setTopBottom(false, false, -82.000000, 46.000000)
		registerVal2.LockIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.LockedHint:setLeftRight(false, false, -175.000000, 175.000000)
		registerVal2.LockedHint:setTopBottom(false, false, 31.000000, 48.000000)
		registerVal2.LockedHint:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.PrestigeMasterCard:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.PrestigeIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.AwardsAvailable:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.BlackLine:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.lockedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal19.DefaultClip = __FUNC_27B7_
	local function __FUNC_2DAD_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive0:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BlackTint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LockIcon:setLeftRight(false, false, -64.000000, 64.000000)
		registerVal2.LockIcon:setTopBottom(false, false, -82.000000, 46.000000)
		registerVal2.LockIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.LockedHint:setLeftRight(false, false, -175.000000, 175.000000)
		registerVal2.LockedHint:setTopBottom(false, false, 31.000000, 48.000000)
		registerVal2.LockedHint:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.PrestigeMasterCard:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.PrestigeIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.AwardsAvailable:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.BlackLine:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.lockedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal19.Focus = __FUNC_2DAD_
	registerVal18.Locked = registerVal19
	registerVal19 = {}
	local function __FUNC_33A0_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive0:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BlackTint:setAlpha(0.050000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LockIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.LockedHint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.PrestigeMasterCard:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.PrestigeIcon:setLeftRight(false, false, -64.000000, 64.000000)
		registerVal2.PrestigeIcon:setTopBottom(false, false, -78.000000, 50.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.AwardsAvailable:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.BlackLine:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal19.DefaultClip = __FUNC_33A0_
	local function __FUNC_390A_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive0:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BlackTint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LockIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.LockedHint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.PrestigeMasterCard:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.PrestigeIcon:setLeftRight(false, false, -64.000000, 64.000000)
		registerVal2.PrestigeIcon:setTopBottom(false, false, -78.000000, 50.000000)
		registerVal2.PrestigeIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.AwardsAvailable:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.BlackLine:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal19.Focus = __FUNC_390A_
	registerVal18.FirstAvailable = registerVal19
	registerVal19 = {}
	local function __FUNC_3E8E_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive0:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BlackTint:setAlpha(0.050000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LockIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.LockedHint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.PrestigeMasterCard:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.PrestigeIcon:setLeftRight(false, false, 17.000000, 145.000000)
		registerVal2.PrestigeIcon:setTopBottom(false, false, -78.000000, 50.000000)
		registerVal2.PrestigeIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.AwardsAvailable:setAlpha(1.000000)
		registerVal2.AwardsAvailable:setText(Engine.Localize("MENU_FRESH_START_AVAILABLE"))
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.BlackLine:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal19.DefaultClip = __FUNC_3E8E_
	local function __FUNC_449E_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive0:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BlackTint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.LockIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.LockedHint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.PrestigeMasterCard:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.PrestigeIcon:setLeftRight(false, false, 17.000000, 145.000000)
		registerVal2.PrestigeIcon:setTopBottom(false, false, -78.000000, 50.000000)
		registerVal2.PrestigeIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.AwardsAvailable:setAlpha(1.000000)
		registerVal2.AwardsAvailable:setText(Engine.Localize("MENU_FRESH_START_AVAILABLE"))
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.BlackLine:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal19.Focus = __FUNC_449E_
	registerVal18.PrestigeMasterZM = registerVal19
	registerVal19 = {}
	local function __FUNC_4A43_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive0:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BlackTint:setAlpha(0.050000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LockIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.LockedHint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.PrestigeMasterCard:setLeftRight(false, false, -160.000000, 160.000000)
		registerVal2.PrestigeMasterCard:setTopBottom(false, false, -54.000000, 26.000000)
		registerVal2.PrestigeMasterCard:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.PrestigeIcon:setLeftRight(false, false, 17.000000, 145.000000)
		registerVal2.PrestigeIcon:setTopBottom(false, false, -78.000000, 50.000000)
		registerVal2.PrestigeIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.AwardsAvailable:setAlpha(1.000000)
		registerVal2.AwardsAvailable:setText(Engine.Localize("MENU_FRESH_START_AVAILABLE"))
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.BlackLine:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal19.DefaultClip = __FUNC_4A43_
	local function __FUNC_50B6_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive0:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BlackTint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.LockIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.LockedHint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.PrestigeMasterCard:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.PrestigeIcon:setLeftRight(false, false, 17.000000, 145.000000)
		registerVal2.PrestigeIcon:setTopBottom(false, false, -78.000000, 50.000000)
		registerVal2.PrestigeIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.AwardsAvailable:setAlpha(1.000000)
		registerVal2.AwardsAvailable:setText(Engine.Localize("MENU_FRESH_START_AVAILABLE"))
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.BlackLine:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal19.Focus = __FUNC_50B6_
	registerVal18.PrestigeMaster = registerVal19
	registerVal2.clipsPerState = registerVal18
	local registerVal20 = {}
	local registerVal21 = {}
	registerVal21.stateName = "Locked"
	local function __FUNC_565B_(arg0, arg2, arg3)
		local registerVal3 = IsPrestigeLevelAtZero(arg1)
		if registerVal3 then
			registerVal3 = IsAtXPCap(arg1)
		end
		return (not registerVal3)
	end

	registerVal21.condition = __FUNC_565B_
	local registerVal22 = {}
	registerVal22.stateName = "FirstAvailable"
	local function __FUNC_56DE_(arg0, arg2, arg3)
		local registerVal3 = IsPrestigeLevelAtZero(arg1)
		if registerVal3 then
			registerVal3 = IsAtXPCap(arg1)
		end
		return registerVal3
	end

	registerVal22.condition = __FUNC_56DE_
	local registerVal23 = {}
	registerVal23.stateName = "PrestigeMasterZM"
	local function __FUNC_575E_(arg0, arg2, arg3)
		local registerVal3 = IsMaxPrestigeLevel(arg1)
		if registerVal3 then
			registerVal3 = IsGlobalModelValueEqualToEnum(arg2, arg1, "prestigeGameMode", Enum.eModes.MODE_ZOMBIES)
		end
		return registerVal3
	end

	registerVal23.condition = __FUNC_575E_
	local registerVal24 = {}
	registerVal24.stateName = "PrestigeMaster"
	local function __FUNC_5861_(arg0, arg2, arg3)
		return IsMaxPrestigeLevel(arg1)
	end

	registerVal24.condition = __FUNC_5861_
	registerVal20 = {registerVal21, registerVal22, registerVal23, registerVal24}
	registerVal2:mergeStateConditions(registerVal20)
	registerVal21 = Engine.GetGlobalModel()
	registerVal20 = Engine.GetModel(registerVal21, "prestigeGameMode")
	local function __FUNC_58B8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "prestigeGameMode"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal20, __FUNC_58B8_)
	local function __FUNC_59DE_(arg0)
		arg0.BoxButtonLrgInactive0:close()
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.LockIcon:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.lockedIcon:close()
		arg0.StartMenuIdentitySubTitle0:close()
		arg0.PrestigeIcon:close()
		arg0.PermanentUnlockTokens:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_59DE_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.PrestigeButton.new = __FUNC_3BE_