-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.SystemOverlays.systemOverlay_Layout_GenericForeground_Full")
require("ui.uieditor.widgets.SystemOverlays.systemOverlay_supportWidget")
require("ui.uieditor.widgets.CAC.UnlockTokensWidget")
require("ui.uieditor.widgets.Prestige.Prestige_PermanentUnlockTokensWidget")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.systemOverlay_UnlockFrame = registerVal1
function CoD.systemOverlay_UnlockFrame.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.systemOverlay_UnlockFrame)
	registerVal2.id = "systemOverlay_UnlockFrame"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 320.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 58.000000, 359.400000)
	registerVal3:setTopBottom(true, true, 18.000000, -52.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.extracamBG = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 58.000000, 359.400000)
	registerVal4:setTopBottom(true, true, 18.000000, -28.000000)
	local function __FUNC_E18_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "image", true, __FUNC_E18_)
	registerVal2:addElement(registerVal4)
	registerVal2.largeImage = registerVal4
	local registerVal5 = CoD.systemOverlay_Layout_GenericForeground_Full.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_ECC_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_ECC_)
	registerVal2:addElement(registerVal5)
	registerVal2.foreground = registerVal5
	local registerVal6 = CoD.systemOverlay_supportWidget.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 58.000000, 359.400000)
	registerVal6:setTopBottom(false, true, -52.000000, -28.000000)
	registerVal6:setAlpha(0.000000)
	local function __FUNC_F1E_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_F1E_)
	registerVal2:addElement(registerVal6)
	registerVal2.supportInfo = registerVal6
	local registerVal7 = CoD.UnlockTokensWidget.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 992.000000, 1282.000000)
	registerVal7:setTopBottom(true, false, 8.000000, 52.000000)
	registerVal7.tokenLabel:setTTF("fonts/escom.ttf")
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Visible"
	local function __FUNC_F6E_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal11.condition = __FUNC_F6E_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal2:addElement(registerVal7)
	registerVal2.UnlockTokensWidget = registerVal7
	local registerVal8 = CoD.Prestige_PermanentUnlockTokensWidget.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 938.000000, 1219.000000)
	registerVal8:setTopBottom(true, false, 8.000000, 53.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8.tokenLabel:setTTF("fonts/escom.ttf")
	registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "Visible"
	local function __FUNC_FB8_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal12.condition = __FUNC_FB8_
	registerVal11 = {registerVal12}
	registerVal8:mergeStateConditions(registerVal11)
	registerVal2:addElement(registerVal8)
	registerVal2.PermanentUnlockTokensWidget = registerVal8
	local registerVal9 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 58.000000, 359.400000)
	registerVal9:setTopBottom(true, true, 18.000000, -52.000000)
	registerVal9:setAlpha(0.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.levelBoxBg = registerVal9
	registerVal10 = {}
	registerVal11 = {}
	local function __FUNC_1004_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal11.DefaultClip = __FUNC_1004_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_1066_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal8:completeAnimation()
		registerVal2.PermanentUnlockTokensWidget:setLeftRight(true, false, 992.000000, 1280.000000)
		registerVal2.PermanentUnlockTokensWidget:setTopBottom(true, false, 49.000000, 94.000000)
		registerVal2.PermanentUnlockTokensWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal11.DefaultClip = __FUNC_1066_
	registerVal10.PermanentUnlock = registerVal11
	registerVal2.clipsPerState = registerVal10
	registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "PermanentUnlock"
	local function __FUNC_1202_(arg0, arg2, arg3)
		local registerVal3 = IsMultiplayer()
		if registerVal3 then
			registerVal3 = HavePermanentUnlockTokens(arg1)
		end
		return registerVal3
	end

	registerVal13.condition = __FUNC_1202_
	registerVal12 = {registerVal13}
	registerVal2:mergeStateConditions(registerVal12)
	registerVal13 = Engine.GetGlobalModel()
	registerVal12 = Engine.GetModel(registerVal13, "lobbyRoot.lobbyNav")
	local function __FUNC_1286_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal12, __FUNC_1286_)
	registerVal5.id = "foreground"
	local function __FUNC_13AC_(arg0, arg1)
		local registerVal2 = arg0.foreground:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_13AC_)
	local function __FUNC_14B2_(arg0)
		arg0.foreground:close()
		arg0.supportInfo:close()
		arg0.UnlockTokensWidget:close()
		arg0.PermanentUnlockTokensWidget:close()
		arg0.levelBoxBg:close()
		arg0.largeImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_14B2_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

