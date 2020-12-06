-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.StartMenu.StartMenu_Identity_SubTitle")
require("ui.uieditor.widgets.CAC.cac_lock")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LeaderboardsButton = registerVal1
function CoD.LeaderboardsButton.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.LeaderboardsButton)
	registerVal2.id = "LeaderboardsButton"
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
	registerVal2.BoxButtonLrgInactive = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 3.000000, -2.000000)
	registerVal4:setTopBottom(true, true, 3.000000, -3.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.050000)
	registerVal2:addElement(registerVal4)
	registerVal2.BlackTint = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -92.500000, 91.500000)
	registerVal5:setTopBottom(false, false, -105.000000, 79.000000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_mp_icons_gamemode_graphic_logowhite"))
	registerVal2:addElement(registerVal5)
	registerVal2.tempimage = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 3.000000, -2.000000)
	registerVal6:setTopBottom(true, true, 2.000000, -3.000000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.050000)
	registerVal2:addElement(registerVal6)
	registerVal2.ButtonTitleBG = registerVal6
	local registerVal7 = CoD.cac_ButtonBoxLrgInactiveDiags.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 0.000000, -1.000000)
	registerVal7:setTopBottom(true, true, 0.000000, -1.000000)
	registerVal7:setAlpha(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.BoxButtonLrgInactiveDiag = registerVal7
	local registerVal8 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, false, -1.000000, 3.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setZoom(1.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.FocusBarT = registerVal8
	local registerVal9 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(false, true, -3.000000, 1.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setZoom(1.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.FocusBarB = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, true, 22.000000, 6.000000)
	registerVal10:setTopBottom(false, true, -26.500000, -6.500000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setText(Engine.Localize("MENU_LEADERBOARDS"))
	registerVal10:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal10)
	registerVal2.ButtonTitle = registerVal10
	local registerVal11 = CoD.StartMenu_Identity_SubTitle.new(arg0, arg1)
	registerVal11:setLeftRight(true, true, 5.000000, -2.000000)
	registerVal11:setTopBottom(false, true, -29.000000, -3.000000)
	registerVal11.SubTitle:setText(Engine.Localize("Combat"))
	registerVal11.SubTitle:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal11)
	registerVal2.StartMenuIdentitySubTitle0 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal12:setTopBottom(true, true, 2.000000, -2.000000)
	registerVal12:setRGB(0.000000, 0.000000, 0.000000)
	registerVal12:setAlpha(0.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.LeaderboardLockCover = registerVal12
	local registerVal13 = CoD.cac_lock.new(arg0, arg1)
	registerVal13:setLeftRight(false, false, -32.000000, 32.000000)
	registerVal13:setTopBottom(false, false, -32.000000, 32.000000)
	registerVal13:setAlpha(0.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.caclock0 = registerVal13
	local registerVal14 = {}
	local registerVal15 = {}
	local function __FUNC_10F4_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BlackTint:setAlpha(0.050000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.ButtonTitleBG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal12:completeAnimation()
		registerVal2.LeaderboardLockCover:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.caclock0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_10F4_
	local function __FUNC_1422_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BlackTint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.ButtonTitleBG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal12:completeAnimation()
		registerVal2.LeaderboardLockCover:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.caclock0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.Focus = __FUNC_1422_
	registerVal14.DefaultState = registerVal15
	registerVal15 = {}
	local function __FUNC_174E_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal6:completeAnimation()
		registerVal2.ButtonTitleBG:setAlpha(0.050000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal12:completeAnimation()
		registerVal2.LeaderboardLockCover:setAlpha(0.050000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.caclock0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_174E_
	local function __FUNC_1A28_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal6:completeAnimation()
		registerVal2.ButtonTitleBG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal12:completeAnimation()
		registerVal2.LeaderboardLockCover:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.caclock0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.Focus = __FUNC_1A28_
	registerVal14.Locked = registerVal15
	registerVal2.clipsPerState = registerVal14
	local function __FUNC_1CFF_(arg0)
		arg0.BoxButtonLrgInactive:close()
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.StartMenuIdentitySubTitle0:close()
		arg0.caclock0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1CFF_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

