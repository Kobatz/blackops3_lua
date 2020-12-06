-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.StartMenu.StartMenu_ProfileSnapshot_Preview")
require("ui.uieditor.widgets.StartMenu.StartMenu_OnlineOnly")
require("ui.uieditor.widgets.CAC.cac_FocusBarContainer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Primary_Profile_Snapshot = registerVal1
function CoD.Primary_Profile_Snapshot.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Primary_Profile_Snapshot)
	registerVal2.id = "Primary_Profile_Snapshot"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 370.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 329.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_ButtonBoxLrgInactiveDiags.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, -1.000000)
	registerVal3:setTopBottom(true, true, 0.000000, -1.000000)
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
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 3.000000, -3.000000)
	registerVal7:setTopBottom(true, true, 2.000000, -4.000000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setAlpha(0.050000)
	registerVal2:addElement(registerVal7)
	registerVal2.BlackBox = registerVal7
	local registerVal8 = CoD.StartMenu_ProfileSnapshot_Preview.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, 2.000000, -1.000000)
	registerVal8:setTopBottom(true, true, 2.000000, -1.500000)
	registerVal2:addElement(registerVal8)
	registerVal2.StartMenuProfileSnapshotPreview = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal9:setTopBottom(true, true, -1.000000, 1.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrginactivediagfull"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal9:setShaderVector(0.000000, 0.064171, 0.072508, 0.000000, 0.000000)
	registerVal9:setupNineSliceShader(24.000000, 24.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.BoxButtonLrgInactiveDiag0 = registerVal9
	local registerVal10 = CoD.StartMenu_OnlineOnly.new(arg0, arg1)
	registerVal10:setLeftRight(false, false, -48.000000, 47.000000)
	registerVal10:setTopBottom(false, false, -16.470000, 11.530000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setScale(0.900000)
	registerVal10.TextBox0:setText(LocalizeToUpperString("MENU_COMING_SOON"))
	registerVal2:addElement(registerVal10)
	registerVal2.StartMenuOnlineOnly = registerVal10
	local registerVal11 = CoD.cac_FocusBarContainer.new(arg0, arg1)
	registerVal11:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal11:setTopBottom(true, false, -2.000000, 0.000000)
	registerVal11:setZoom(1.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.FocusWhiteT = registerVal11
	local registerVal12 = CoD.cac_FocusBarContainer.new(arg0, arg1)
	registerVal12:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal12:setTopBottom(false, true, 0.000000, 4.000000)
	registerVal12:setZoom(1.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.FocusWhiteB = registerVal12
	local registerVal13 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal13:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal13:setTopBottom(true, false, -1.000000, 3.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.TopFocusBar = registerVal13
	local registerVal14 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal14:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal14:setTopBottom(false, true, -3.000000, 1.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.BottomFocusBar = registerVal14
	local registerVal15 = {}
	local registerVal16 = {}
	local function __FUNC_118A_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BlackBox:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.BlackBox:setAlpha(0.050000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.FocusWhiteT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusWhiteB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.TopFocusBar:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.BottomFocusBar:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal16.DefaultClip = __FUNC_118A_
	local function __FUNC_15A4_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BlackBox:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.BlackBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.FocusWhiteT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusWhiteB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.TopFocusBar:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.BottomFocusBar:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal16.Focus = __FUNC_15A4_
	registerVal15.DefaultState = registerVal16
	registerVal2.clipsPerState = registerVal15
	registerVal10.id = "StartMenuOnlineOnly"
	local function __FUNC_1A26_(arg0, arg1)
		local registerVal2 = arg0.StartMenuOnlineOnly:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_1A26_)
	local function __FUNC_1B33_(arg0)
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.BoxButtonLrgInactive:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.StartMenuProfileSnapshotPreview:close()
		arg0.StartMenuOnlineOnly:close()
		arg0.FocusWhiteT:close()
		arg0.FocusWhiteB:close()
		arg0.TopFocusBar:close()
		arg0.BottomFocusBar:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1B33_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

