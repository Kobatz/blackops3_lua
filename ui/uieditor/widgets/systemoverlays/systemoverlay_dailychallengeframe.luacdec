-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.SystemOverlays.systemOverlay_DailyChallenge")
require("ui.uieditor.widgets.CAC.Customization.CACGenericButton")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.systemOverlay_DailyChallengeFrame = registerVal1
function CoD.systemOverlay_DailyChallengeFrame.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.systemOverlay_DailyChallengeFrame)
	registerVal2.id = "systemOverlay_DailyChallengeFrame"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 320.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.systemOverlay_DailyChallenge.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 320.000000)
	local function __FUNC_99C_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_99C_)
	registerVal2:addElement(registerVal3)
	registerVal2.systemOverlayDailyChallenge = registerVal3
	local registerVal4 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(true, false, 440.000000, 990.000000)
	registerVal4:setTopBottom(true, false, 234.110000, 300.110000)
	registerVal4:setWidgetType(CoD.CACGenericButton)
	registerVal4:setVerticalCount(2.000000)
	local function __FUNC_9EE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setDataSource(registerVal1)
		end
	end

	registerVal4:linkToElementModel(registerVal2, "listDatasource", true, __FUNC_9EE_)
	local function __FUNC_A86_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "disabled"
		CoD.Menu.UpdateButtonShownState(registerVal4, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal4:linkToElementModel(registerVal4, "disabled", true, __FUNC_A86_)
	local function __FUNC_C41_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal4:registerEventHandler("gain_focus", __FUNC_C41_)
	local function __FUNC_DD3_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_DD3_)
	local function __FUNC_EA2_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDisabled(arg0, arg2)
		if not registerVal4 then
			ProcessListAction(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_F2F_(arg0, arg1, arg2)
		local registerVal3 = IsDisabled(arg0, arg2)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "N", __FUNC_EA2_, __FUNC_F2F_, false)
	registerVal2:addElement(registerVal4)
	registerVal2.ChallengeButtonlist = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_105E_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.systemOverlayDailyChallenge:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal6.DefaultClip = __FUNC_105E_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	registerVal4.id = "ChallengeButtonlist"
	local function __FUNC_116A_(arg0, arg1)
		local registerVal2 = arg0.ChallengeButtonlist:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_116A_)
	local function __FUNC_1277_(arg0)
		arg0.systemOverlayDailyChallenge:close()
		arg0.ChallengeButtonlist:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1277_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

