-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Theater.Theater_FrameWidget")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.EndGameFlow.KillcamWidgetFctnLine")
require("ui.uieditor.widgets.Demo.DemoControlsButton")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.DemoPlaybackControls = registerVal1
function CoD.DemoPlaybackControls.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.DemoPlaybackControls)
	registerVal2.id = "DemoPlaybackControls"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 494.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 90.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Theater_FrameWidget.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, -21.500000, 516.500000)
	registerVal3:setTopBottom(true, false, -7.000000, 101.630000)
	registerVal2:addElement(registerVal3)
	registerVal2.TheaterFrameWidget0 = registerVal3
	local registerVal4 = CoD.FE_ButtonPanelShaderContainer.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 2.000000, -2.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.500000, 0.500000, 0.500000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.LeftPanel = registerVal4
	local registerVal5 = CoD.KillcamWidgetFctnLine.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 113.000000, -110.000000)
	registerVal5:setTopBottom(true, false, -7.000000, 0.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.200000)
	registerVal2:addElement(registerVal5)
	registerVal2.LeftPanelLnT0 = registerVal5
	local registerVal6 = CoD.KillcamWidgetFctnLine.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 22.000000, -23.000000)
	registerVal6:setTopBottom(false, true, -2.000000, 6.000000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.200000)
	registerVal6:setXRot(180.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.LeftPanelLnT00 = registerVal6
	local registerVal7 = LUI.UIElement.new()
	registerVal7:setLeftRight(true, false, 0.000000, 494.000000)
	registerVal7:setTopBottom(true, false, -144.000000, -36.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setupDemoControls()
	registerVal2:addElement(registerVal7)
	registerVal2.DemoControls0 = registerVal7
	local registerVal8 = LUI.UIElement.new()
	registerVal8:setLeftRight(true, false, 52.000000, 443.000000)
	registerVal8:setTopBottom(true, false, 29.500000, 43.000000)
	registerVal8:setupDemoTimeline()
	registerVal2:addElement(registerVal8)
	registerVal2.Timeline = registerVal8
	local registerVal9 = LUI.UIList.new(arg0, arg1, 0.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal9:makeFocusable()
	registerVal9:setLeftRight(false, false, -220.000000, 220.000000)
	registerVal9:setTopBottom(true, false, 48.000000, 93.000000)
	registerVal9:setWidgetType(CoD.DemoControlsButton)
	registerVal9:setHorizontalCount(11.000000)
	registerVal9:setSpacing(0.000000)
	registerVal9:setDataSource("DemoControlsButtons")
	local function __FUNC_1104_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "disabled"
		CoD.Menu.UpdateButtonShownState(registerVal9, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal9:linkToElementModel(registerVal9, "disabled", true, __FUNC_1104_)
	local registerVal13 = Engine.GetGlobalModel()
	local registerVal12 = Engine.GetModel(registerVal13, "demo.drawDemoControls")
	local function __FUNC_12C1_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "demo.drawDemoControls"
		CoD.Menu.UpdateButtonShownState(registerVal9, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_12C1_)
	local function __FUNC_148A_(arg2, arg3)
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

	registerVal9:registerEventHandler("gain_focus", __FUNC_148A_)
	local function __FUNC_161B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("lose_focus", __FUNC_161B_)
	local function __FUNC_16EA_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDisabled(arg0, arg2)
		registerVal4 = IsGlobalModelValueTrue(arg0, arg2, "demo.drawDemoControls")
		if not registerVal4 and registerVal4 then
			ProcessListAction(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_17D2_(arg0, arg1, arg2)
		local registerVal3 = IsDisabled(arg0, arg2)
		registerVal3 = IsGlobalModelValueTrue(arg0, arg2, "demo.drawDemoControls")
		if not registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal9, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_16EA_, __FUNC_17D2_, false)
	registerVal2:addElement(registerVal9)
	registerVal2.ButtonList = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(false, false, -220.000000, 220.000000)
	registerVal10:setTopBottom(true, false, 0.000000, 22.000000)
	registerVal10:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal10:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setLetterSpacing(1.000000)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal10)
	registerVal2.HintText = registerVal10
	local function __FUNC_1952_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal10:linkToElementModel(registerVal9, "hintText", true, __FUNC_1952_)
	registerVal9.id = "ButtonList"
	local function __FUNC_1A0A_(arg0, arg1)
		local registerVal2 = arg0.ButtonList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_1A0A_)
	local function __FUNC_1B0E_(arg0)
		arg0.TheaterFrameWidget0:close()
		arg0.LeftPanel:close()
		arg0.LeftPanelLnT0:close()
		arg0.LeftPanelLnT00:close()
		arg0.ButtonList:close()
		arg0.HintText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1B0E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

