-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.SystemOverlays.systemOverlay_Layout_GenericForeground_Full")
require("ui.uieditor.widgets.SystemOverlays.systemOverlay_supportWidget")
require("ui.uieditor.widgets.Prestige.Prestige_PermanentUnlockTokensWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Prestige_PermanentUnlockConfirmationOverlay = registerVal1
function CoD.Prestige_PermanentUnlockConfirmationOverlay.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Prestige_PermanentUnlockConfirmationOverlay)
	registerVal2.id = "Prestige_PermanentUnlockConfirmationOverlay"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 320.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 64.000000, 416.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_AB5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "image", true, __FUNC_AB5_)
	registerVal2:addElement(registerVal3)
	registerVal2.largeImage = registerVal3
	local registerVal4 = CoD.systemOverlay_Layout_GenericForeground_Full.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_B68_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_B68_)
	registerVal2:addElement(registerVal4)
	registerVal2.foreground = registerVal4
	local registerVal5 = CoD.systemOverlay_supportWidget.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 64.000000, 416.000000)
	registerVal5:setTopBottom(false, true, -24.000000, 0.000000)
	local function __FUNC_BBA_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_BBA_)
	registerVal2:addElement(registerVal5)
	registerVal2.supportInfo = registerVal5
	local registerVal6 = CoD.Prestige_PermanentUnlockTokensWidget.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 934.000000, 1214.000000)
	registerVal6:setTopBottom(true, false, 8.000000, 52.000000)
	registerVal6.tokenLabel:setTTF("fonts/escom.ttf")
	registerVal2:addElement(registerVal6)
	registerVal2.PermanentUnlockTokensWidget = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_C0A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.DefaultClip = __FUNC_C0A_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_C6A_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.largeImage:setLeftRight(true, false, 112.000000, 368.000000)
		registerVal2.largeImage:setTopBottom(true, true, 30.000000, -34.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal8.DefaultClip = __FUNC_C6A_
	registerVal7.DefaultStateBGB = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "DefaultStateBGB"
	local function __FUNC_DC7_(arg0, arg2, arg3)
		local registerVal3 = IsInPermanentUnlockMenu(arg1)
		if registerVal3 then
			registerVal3 = IsInBubblegumSelectMenu(arg2, arg1)
		end
		return registerVal3
	end

	registerVal10.condition = __FUNC_DC7_
	registerVal9 = {registerVal10}
	registerVal2:mergeStateConditions(registerVal9)
	registerVal4.id = "foreground"
	local function __FUNC_E5A_(arg0, arg1)
		local registerVal2 = arg0.foreground:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_E5A_)
	local function __FUNC_F5E_(arg0)
		arg0.foreground:close()
		arg0.supportInfo:close()
		arg0.PermanentUnlockTokensWidget:close()
		arg0.largeImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_F5E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

