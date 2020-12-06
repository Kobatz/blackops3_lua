-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.SystemOverlays.systemOverlay_DailyChallengeWarning")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.systemOverlay_DailyChallengeWarningFrame = registerVal1
function CoD.systemOverlay_DailyChallengeWarningFrame.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.systemOverlay_DailyChallengeWarningFrame)
	registerVal2.id = "systemOverlay_DailyChallengeWarningFrame"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 320.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.systemOverlay_DailyChallengeWarning.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 320.000000)
	local function __FUNC_674_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_674_)
	registerVal2:addElement(registerVal3)
	registerVal2.systemOverlayDailyChallengeWarning = registerVal3
	registerVal3.id = "systemOverlayDailyChallengeWarning"
	local function __FUNC_6C6_(arg0, arg1)
		local registerVal2 = arg0.systemOverlayDailyChallengeWarning:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_6C6_)
	local function __FUNC_7E2_(arg0)
		arg0.systemOverlayDailyChallengeWarning:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_7E2_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

