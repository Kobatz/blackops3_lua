-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.CallingCards.CallingCards_FrameWidget")
require("ui.uieditor.widgets.CAC.cac_lock")
require("ui.uieditor.widgets.StartMenu.StartMenu_Identity_SubTitle")
require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
local function __FUNC_391_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	Engine.CreateModel(registerVal3, "callingCardBreadcrumbChanged")
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.StartMenu_Button_CallingCards = registerVal2
local function __FUNC_44B_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_391_ then
		__FUNC_391_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_Button_CallingCards)
	registerVal2.id = "StartMenu_Button_CallingCards"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 370.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 96.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_ButtonBoxLrgInactiveDiags.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, -1.000000)
	registerVal3:setTopBottom(true, true, 0.000000, -1.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BoxButtonLrgInactiveDiag = registerVal3
	local registerVal4 = CoD.CallingCards_FrameWidget.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, 0.000000, 0.000000)
	registerVal4:setTopBottom(false, false, -0.500000, -0.500000)
	registerVal4.CardIconFrame:setScale(0.770000)
	local function __FUNC_1382_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:subscribeToGlobalModel(arg1, "PerController", nil, __FUNC_1382_)
	registerVal2:addElement(registerVal4)
	registerVal2.CallingCardsFrameWidget = registerVal4
	local registerVal5 = CoD.cac_lock.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -14.500000, 14.500000)
	registerVal5:setTopBottom(false, false, -16.000000, 16.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.lockedIcon = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -40.000000, 40.000000)
	registerVal6:setTopBottom(false, false, -40.000000, 40.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setupSpinner()
	registerVal2:addElement(registerVal6)
	registerVal2.Spinner = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 11.730000, 217.730000)
	registerVal7:setTopBottom(false, true, -51.000000, -29.000000)
	registerVal7:setText(Engine.Localize("MENU_MULTIPLAYER_CAPS"))
	registerVal7:setTTF("fonts/escom.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.Title = registerVal7
	local registerVal8 = CoD.StartMenu_Identity_SubTitle.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 2.000000, 367.000000)
	registerVal8:setTopBottom(false, true, -32.000000, -6.000000)
	registerVal8.SubTitle:setText(Engine.Localize("Customize your campaign character"))
	registerVal8.SubTitle:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "HasNew"
	local function __FUNC_13D2_(arg0, arg2, arg3)
		return CallingCards_IsAnyNew(arg1)
	end

	registerVal12.condition = __FUNC_13D2_
	registerVal11 = {registerVal12}
	registerVal8:mergeStateConditions(registerVal11)
	registerVal12 = Engine.GetGlobalModel()
	registerVal11 = Engine.GetModel(registerVal12, "callingCardBreadcrumbChanged")
	local function __FUNC_142B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "callingCardBreadcrumbChanged"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_142B_)
	registerVal2:addElement(registerVal8)
	registerVal2.StartMenuIdentitySubTitle0 = registerVal8
	local registerVal9 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, -1.000000, 1.000000)
	registerVal9:setTopBottom(true, true, 0.000000, -1.000000)
	registerVal9:setAlpha(0.250000)
	registerVal2:addElement(registerVal9)
	registerVal2.StartMenuframenoBG0 = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal10:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal10:setText(Engine.Localize(""))
	registerVal10:setTTF("fonts/default.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal10)
	registerVal2.ImageText = registerVal10
	registerVal11 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal11:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal11:setTopBottom(true, false, -1.000000, 3.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setZoom(1.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.FocusBarT = registerVal11
	registerVal12 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal12:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal12:setTopBottom(false, true, -3.000000, 1.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setZoom(1.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.FocusBarB = registerVal12
	local registerVal13 = {}
	local registerVal14 = {}
	local function __FUNC_155A_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal5:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Spinner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_155A_
	local function __FUNC_175D_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.Focus = __FUNC_175D_
	registerVal13.DefaultState = registerVal14
	registerVal14 = {}
	local function __FUNC_18B4_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal5:completeAnimation()
		registerVal2.lockedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_18B4_
	local function __FUNC_1A69_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal5:completeAnimation()
		registerVal2.lockedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.Focus = __FUNC_1A69_
	registerVal13.Disabled = registerVal14
	registerVal14 = {}
	local function __FUNC_1C18_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal5:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Spinner:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_1C18_
	local function __FUNC_1E22_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal5:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Spinner:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.Focus = __FUNC_1E22_
	registerVal13.Spinning = registerVal14
	registerVal2.clipsPerState = registerVal13
	local function __FUNC_202A_(arg0)
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.CallingCardsFrameWidget:close()
		arg0.lockedIcon:close()
		arg0.StartMenuIdentitySubTitle0:close()
		arg0.StartMenuframenoBG0:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_202A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.StartMenu_Button_CallingCards.new = __FUNC_44B_
