-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.StartMenu.StartMenu_ImageContainer")
require("ui.uieditor.widgets.StartMenu.StartMenu_Identity_SubTitle")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.StartMenu.StartMenu_OnlineOnly")
require("ui.uieditor.widgets.CAC.cac_lock")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StartMenu_Button_Hero = registerVal1
function CoD.StartMenu_Button_Hero.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_Button_Hero)
	registerVal2.id = "StartMenu_Button_Hero"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 731.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 328.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_ButtonBoxLrgInactiveDiags.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal3:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BoxButtonLrgInactiveDiag = registerVal3
	local registerVal4 = CoD.cac_ButtonBoxLrgInactive.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal4:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal4:setRGB(0.870000, 0.970000, 1.000000)
	registerVal4:setAlpha(0.400000)
	registerVal2:addElement(registerVal4)
	registerVal2.BoxButtonLrgInactive = registerVal4
	local registerVal5 = CoD.StartMenu_ImageContainer.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 2.000000, -2.000000)
	registerVal5:setTopBottom(true, true, 1.500000, -2.500000)
	registerVal5.ImageContainer:setImage(RegisterImage("uie_t7_menu_control_checkbox"))
	registerVal2:addElement(registerVal5)
	registerVal2.imageContainer = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 18.860000, 716.000000)
	registerVal6:setTopBottom(false, true, -52.000000, -32.000000)
	registerVal6:setText(Engine.Localize("MENU_MULTIPLAYER_CAPS"))
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal6:setLetterSpacing(0.500000)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.Title = registerVal6
	local registerVal7 = CoD.StartMenu_Identity_SubTitle.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 11.860000, 724.000000)
	registerVal7:setTopBottom(false, true, -32.000000, -6.000000)
	registerVal7.SubTitle:setText(Engine.Localize("Customize your campaign character"))
	registerVal7.SubTitle:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal7)
	registerVal2.StartMenuIdentitySubTitle0 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, 2.000000, 0.000000)
	registerVal8:setTopBottom(true, true, 3.000000, -3.000000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal8:setAlpha(0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.LOCKBlackboxBG = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, true, 2.000000, -2.000000)
	registerVal9:setTopBottom(true, true, 3.000000, -3.000000)
	registerVal9:setRGB(0.000000, 0.000000, 0.000000)
	registerVal9:setAlpha(0.050000)
	registerVal2:addElement(registerVal9)
	registerVal2.LockBackground = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, false, -22.500000, 22.500000)
	registerVal10:setTopBottom(false, false, -24.000000, 21.000000)
	registerVal10:setRGB(0.000000, 0.000000, 0.000000)
	registerVal10:setAlpha(0.300000)
	registerVal10:setScale(0.900000)
	registerVal10:setImage(RegisterImage("uie_t7_core_hud_ammowidget_panelcircle"))
	registerVal2:addElement(registerVal10)
	registerVal2.LOCKBlackCircle = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, true, 3.000000, -3.000000)
	registerVal11:setTopBottom(false, false, -22.500000, 18.000000)
	registerVal11:setRGB(0.000000, 0.000000, 0.000000)
	registerVal11:setAlpha(0.500000)
	registerVal2:addElement(registerVal11)
	registerVal2.BlackLine = registerVal11
	local registerVal12 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal12:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal12:setTopBottom(false, true, -3.000000, 1.000000)
	registerVal12:setZoom(1.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.FocusBarB = registerVal12
	local registerVal13 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal13:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal13:setTopBottom(true, false, -1.000000, 3.000000)
	registerVal13:setZoom(1.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.FocusBarT = registerVal13
	local registerVal14 = CoD.StartMenu_OnlineOnly.new(arg0, arg1)
	registerVal14:setLeftRight(false, false, -48.000000, 48.000000)
	registerVal14:setTopBottom(false, false, -16.250000, 11.750000)
	registerVal14:setScale(0.900000)
	registerVal14.TextBox0:setText(LocalizeToUpperString("MENU_ONLINE_ONLY"))
	registerVal2:addElement(registerVal14)
	registerVal2.StartMenuOnlineOnly = registerVal14
	local registerVal15 = CoD.cac_lock.new(arg0, arg1)
	registerVal15:setLeftRight(false, false, -16.000000, 16.000000)
	registerVal15:setTopBottom(false, false, -16.000000, 16.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.lockedIcon = registerVal15
	local registerVal16 = {}
	local registerVal17 = {}
	local function __FUNC_154B_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal5.ImageContainer:completeAnimation()
		registerVal2.imageContainer.ImageContainer:setAlpha(0.790000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Title:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.LOCKBlackboxBG:setLeftRight(true, true, 2.000000, 0.000000)
		registerVal2.LOCKBlackboxBG:setTopBottom(true, true, 3.000000, -3.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LockBackground:setAlpha(0.050000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.LOCKBlackCircle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.BlackLine:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.StartMenuOnlineOnly:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_154B_
	local function __FUNC_1AFB_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal5.ImageContainer:completeAnimation()
		registerVal2.imageContainer.ImageContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal9:completeAnimation()
		registerVal2.LockBackground:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.LOCKBlackCircle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.BlackLine:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.StartMenuOnlineOnly:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal17.Focus = __FUNC_1AFB_
	registerVal16.DefaultState = registerVal17
	registerVal17 = {}
	local function __FUNC_1F1D_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal5.ImageContainer:completeAnimation()
		registerVal2.imageContainer.ImageContainer:setAlpha(0.790000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Title:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.StartMenuIdentitySubTitle0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.LOCKBlackboxBG:setLeftRight(true, true, 2.000000, 0.000000)
		registerVal2.LOCKBlackboxBG:setTopBottom(true, true, 3.000000, -3.000000)
		registerVal2.LOCKBlackboxBG:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LockBackground:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.LOCKBlackCircle:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.BlackLine:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.StartMenuOnlineOnly:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.lockedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_1F1D_
	local function __FUNC_24F7_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal5.ImageContainer:completeAnimation()
		registerVal2.imageContainer:setAlpha(1.000000)
		registerVal2.imageContainer.ImageContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Title:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.StartMenuIdentitySubTitle0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.LOCKBlackboxBG:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LockBackground:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.LOCKBlackCircle:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.BlackLine:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.StartMenuOnlineOnly:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.lockedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal17.Focus = __FUNC_24F7_
	registerVal16.Disabled = registerVal17
	registerVal17 = {}
	local function __FUNC_2AC1_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal5.ImageContainer:completeAnimation()
		registerVal2.imageContainer.ImageContainer:setAlpha(0.790000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Title:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.LOCKBlackboxBG:setLeftRight(true, true, 2.000000, 0.000000)
		registerVal2.LOCKBlackboxBG:setTopBottom(true, true, 3.000000, -3.000000)
		registerVal2.LOCKBlackboxBG:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LockBackground:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.LOCKBlackCircle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.BlackLine:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.StartMenuOnlineOnly:setLeftRight(false, false, -48.000000, 48.000000)
		registerVal2.StartMenuOnlineOnly:setTopBottom(false, false, -16.250000, 11.750000)
		registerVal2.StartMenuOnlineOnly:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_2AC1_
	local function __FUNC_30F8_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal5.ImageContainer:completeAnimation()
		registerVal2.imageContainer.ImageContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal8:completeAnimation()
		registerVal2.LOCKBlackboxBG:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LockBackground:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.LOCKBlackCircle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.BlackLine:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.StartMenuOnlineOnly:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal17.Focus = __FUNC_30F8_
	registerVal16.OnlineOnly = registerVal17
	registerVal2.clipsPerState = registerVal16
	registerVal14.id = "StartMenuOnlineOnly"
	local function __FUNC_3583_(arg0, arg1)
		local registerVal2 = arg0.StartMenuOnlineOnly:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_3583_)
	local function __FUNC_368F_(arg0)
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.BoxButtonLrgInactive:close()
		arg0.imageContainer:close()
		arg0.StartMenuIdentitySubTitle0:close()
		arg0.FocusBarB:close()
		arg0.FocusBarT:close()
		arg0.StartMenuOnlineOnly:close()
		arg0.lockedIcon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_368F_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

