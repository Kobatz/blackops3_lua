-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.Barracks.CombatRecordMedal")
require("ui.uieditor.widgets.StartMenu.StartMenu_Identity_SubTitle")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MedalsButton = registerVal1
function CoD.MedalsButton.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MedalsButton)
	registerVal2.id = "MedalsButton"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 707.000000)
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
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BlackTint = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 3.000000, -3.000000)
	registerVal5:setTopBottom(true, true, 2.000000, -4.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.050000)
	registerVal2:addElement(registerVal5)
	registerVal2.BlackBox = registerVal5
	local registerVal6 = CoD.cac_ButtonBoxLrgInactiveDiags.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 0.000000, -1.000000)
	registerVal6:setTopBottom(true, true, 0.000000, -1.000000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.BoxButtonLrgInactiveDiag = registerVal6
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
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, true, 5.000000, -5.000000)
	registerVal9:setTopBottom(false, true, -28.000000, -5.000000)
	registerVal9:setRGB(0.000000, 0.000000, 0.000000)
	registerVal9:setAlpha(0.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.ButtonTitleBG = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, true, 24.000000, 8.000000)
	registerVal10:setTopBottom(false, true, -28.000000, -5.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setText(Engine.Localize("MENU_MEDALS"))
	registerVal10:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal10)
	registerVal2.ButtonTitle = registerVal10
	local registerVal11 = CoD.CombatRecordMedal.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 20.000000, 140.000000)
	registerVal11:setTopBottom(true, false, 19.000000, 172.000000)
	local function __FUNC_13BD_(arg0)
		registerVal11:setModel(arg0, arg1)
	end

	registerVal11:subscribeToGlobalModel(arg1, "CombatRecordMPMedal1", nil, __FUNC_13BD_)
	registerVal2:addElement(registerVal11)
	registerVal2.CombatRecordMedal1 = registerVal11
	local registerVal12 = CoD.CombatRecordMedal.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 159.000000, 279.000000)
	registerVal12:setTopBottom(true, false, 19.000000, 172.000000)
	local function __FUNC_140E_(arg0)
		registerVal12:setModel(arg0, arg1)
	end

	registerVal12:subscribeToGlobalModel(arg1, "CombatRecordMPMedal2", nil, __FUNC_140E_)
	registerVal2:addElement(registerVal12)
	registerVal2.CombatRecordMedal2 = registerVal12
	local registerVal13 = CoD.CombatRecordMedal.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 296.500000, 416.500000)
	registerVal13:setTopBottom(true, false, 19.000000, 172.000000)
	local function __FUNC_145E_(arg0)
		registerVal13:setModel(arg0, arg1)
	end

	registerVal13:subscribeToGlobalModel(arg1, "CombatRecordMPMedal3", nil, __FUNC_145E_)
	registerVal2:addElement(registerVal13)
	registerVal2.CombatRecordMedal3 = registerVal13
	local registerVal14 = CoD.CombatRecordMedal.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 432.000000, 552.000000)
	registerVal14:setTopBottom(true, false, 19.000000, 172.000000)
	local function __FUNC_14AE_(arg0)
		registerVal14:setModel(arg0, arg1)
	end

	registerVal14:subscribeToGlobalModel(arg1, "CombatRecordMPMedal4", nil, __FUNC_14AE_)
	registerVal2:addElement(registerVal14)
	registerVal2.CombatRecordMedal4 = registerVal14
	local registerVal15 = CoD.CombatRecordMedal.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 567.000000, 687.000000)
	registerVal15:setTopBottom(true, false, 19.000000, 172.000000)
	local function __FUNC_14FE_(arg0)
		registerVal15:setModel(arg0, arg1)
	end

	registerVal15:subscribeToGlobalModel(arg1, "CombatRecordMPMedal5", nil, __FUNC_14FE_)
	registerVal2:addElement(registerVal15)
	registerVal2.CombatRecordMedal5 = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, true, 3.000000, -2.000000)
	registerVal16:setTopBottom(true, true, 2.000000, -3.000000)
	registerVal16:setRGB(0.000000, 0.000000, 0.000000)
	registerVal16:setAlpha(0.000000)
	registerVal2:addElement(registerVal16)
	registerVal2.ButtonTitleBG0 = registerVal16
	local registerVal17 = CoD.StartMenu_Identity_SubTitle.new(arg0, arg1)
	registerVal17:setLeftRight(true, false, 5.000000, 671.000000)
	registerVal17:setTopBottom(true, false, 185.000000, 211.000000)
	registerVal17.SubTitle:setText(Engine.Localize("Combat"))
	registerVal17.SubTitle:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal17)
	registerVal2.StartMenuIdentitySubTitle0 = registerVal17
	local registerVal18 = {}
	local registerVal19 = {}
	local function __FUNC_154E_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.BlackBox:setAlpha(0.050000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal16:completeAnimation()
		registerVal2.ButtonTitleBG0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal19.DefaultClip = __FUNC_154E_
	local function __FUNC_17C2_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.BlackBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal16:completeAnimation()
		registerVal2.ButtonTitleBG0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal19.Focus = __FUNC_17C2_
	registerVal18.DefaultState = registerVal19
	registerVal2.clipsPerState = registerVal18
	local function __FUNC_1A36_(arg0)
		arg0.BoxButtonLrgInactive:close()
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.CombatRecordMedal1:close()
		arg0.CombatRecordMedal2:close()
		arg0.CombatRecordMedal3:close()
		arg0.CombatRecordMedal4:close()
		arg0.CombatRecordMedal5:close()
		arg0.StartMenuIdentitySubTitle0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1A36_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

