-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CAC.cac_lock")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.Prestige.Prestige_Button_Title")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Prestige_Button = registerVal1
function CoD.Prestige_Button.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Prestige_Button)
	registerVal2.id = "Prestige_Button"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 240.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 192.000000)
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
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 3.000000, -3.000000)
	registerVal4:setTopBottom(true, true, 2.000000, -4.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.050000)
	registerVal2:addElement(registerVal4)
	registerVal2.BlackBox = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -101.000000, 102.000000)
	registerVal5:setTopBottom(false, false, -115.000000, 88.000000)
	registerVal5:setScale(0.900000)
	registerVal2:addElement(registerVal5)
	registerVal2.ButtonIcon = registerVal5
	local registerVal6 = CoD.cac_lock.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, -64.000000, 64.000000)
	registerVal6:setTopBottom(false, false, -78.000000, 50.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6.lockedIcon:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.LockIcon = registerVal6
	local registerVal7 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, false, -1.000000, 3.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setZoom(1.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.FocusBarT = registerVal7
	local registerVal8 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(false, true, -3.000000, 1.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setZoom(1.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.FocusBarB = registerVal8
	local registerVal9 = CoD.Prestige_Button_Title.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 5.000000, 234.000000)
	registerVal9:setTopBottom(false, true, -31.000000, -5.000000)
	registerVal9.ButtonTitle:setText(Engine.Localize("MENU_PRESTIGE_ENTER_LEVEL"))
	registerVal2:addElement(registerVal9)
	registerVal2.PrestigeButtonTitle = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_CE9_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BlackBox:setAlpha(0.050000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ButtonIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LockIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal11.DefaultClip = __FUNC_CE9_
	local function __FUNC_FB5_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BlackBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ButtonIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LockIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal11.Focus = __FUNC_FB5_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_127C_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BlackBox:setAlpha(0.050000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ButtonIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LockIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal11.DefaultClip = __FUNC_127C_
	local function __FUNC_1549_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BlackBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ButtonIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LockIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal11.Focus = __FUNC_1549_
	registerVal10.Locked = registerVal11
	registerVal2.clipsPerState = registerVal10
	registerVal9.id = "PrestigeButtonTitle"
	local function __FUNC_1810_(arg0, arg1)
		local registerVal2 = arg0.PrestigeButtonTitle:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_1810_)
	local function __FUNC_191F_(arg0)
		arg0.BoxButtonLrgInactive:close()
		arg0.LockIcon:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.PrestigeButtonTitle:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_191F_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

