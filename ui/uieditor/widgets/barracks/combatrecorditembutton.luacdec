-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CombatRecordItemButton = registerVal1
function CoD.CombatRecordItemButton.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CombatRecordItemButton)
	registerVal2.id = "CombatRecordItemButton"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 370.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 164.000000)
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
	registerVal4:setLeftRight(true, true, 3.000000, -3.000000)
	registerVal4:setTopBottom(true, true, 2.000000, -4.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.050000)
	registerVal2:addElement(registerVal4)
	registerVal2.BlackBox = registerVal4
	local registerVal5 = CoD.cac_ButtonBoxLrgInactiveDiags.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, -1.000000)
	registerVal5:setTopBottom(true, true, 0.000000, -1.000000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.BoxButtonLrgInactiveDiag = registerVal5
	local registerVal6 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, false, -1.000000, 3.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setZoom(1.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.FocusBarT = registerVal6
	local registerVal7 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(false, true, -3.000000, 1.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setZoom(1.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.FocusBarB = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -141.610000, 141.980000)
	registerVal8:setTopBottom(true, false, 18.000000, 141.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.WeaponImage = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, -61.500000, 61.870000)
	registerVal9:setTopBottom(true, false, 18.000000, 141.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.ItemImage = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, 68.860000, -74.490000)
	registerVal10:setTopBottom(true, true, 49.000000, -46.770000)
	registerVal2:addElement(registerVal10)
	registerVal2.GameModeImage2 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, true, 5.000000, -5.000000)
	registerVal11:setTopBottom(true, false, 4.000000, 27.500000)
	registerVal11:setRGB(0.000000, 0.000000, 0.000000)
	registerVal11:setAlpha(0.400000)
	registerVal2:addElement(registerVal11)
	registerVal2.ButtonTitleBG = registerVal11
	local registerVal12 = LUI.UIText.new()
	registerVal12:setLeftRight(true, true, 11.000000, -5.000000)
	registerVal12:setTopBottom(true, false, 5.500000, 25.500000)
	registerVal12:setText(Engine.Localize("MENU_WEAPONS"))
	registerVal12:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal12)
	registerVal2.ButtonTitle = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, true, 367.000000, -367.000000)
	registerVal13:setTopBottom(false, true, -27.000000, -19.000000)
	registerVal13:setAlpha(0.250000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.Image0 = registerVal13
	local registerVal14 = LUI.UIText.new()
	registerVal14:setLeftRight(true, true, 8.000000, -8.000000)
	registerVal14:setTopBottom(false, true, -23.000000, -3.000000)
	registerVal14:setRGB(0.930000, 0.740000, 0.290000)
	registerVal14:setText(LocalizeToUpperString("MENU_DEADLIEST_WEAPON"))
	registerVal14:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal14:setLetterSpacing(2.000000)
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal14)
	registerVal2.ButtonTitle0 = registerVal14
	local registerVal15 = {}
	local registerVal16 = {}
	local function __FUNC_1133_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BlackBox:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.BlackBox:setAlpha(0.050000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal16.DefaultClip = __FUNC_1133_
	local function __FUNC_137E_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BlackBox:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.BlackBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal11:completeAnimation()
		registerVal2.ButtonTitleBG:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.ButtonTitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal16.Focus = __FUNC_137E_
	registerVal15.DefaultState = registerVal16
	registerVal2.clipsPerState = registerVal15
	local function __FUNC_16E9_(arg0)
		arg0.BoxButtonLrgInactive:close()
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_16E9_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

