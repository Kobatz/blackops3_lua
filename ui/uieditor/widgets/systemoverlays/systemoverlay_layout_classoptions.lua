-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.SystemOverlays.systemOverlay_Layout_ForegroundMultilineText")
require("ui.uieditor.widgets.CAC.List1ButtonChooseClass")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.systemOverlay_Layout_ClassOptions = registerVal1
function CoD.systemOverlay_Layout_ClassOptions.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.systemOverlay_Layout_ClassOptions)
	registerVal2.id = "systemOverlay_Layout_ClassOptions"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 320.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 384.000000, 414.000000)
	registerVal3:setTopBottom(true, false, 11.000000, 41.000000)
	local function __FUNC_C70_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(GetCategoryIconForOverlayType(registerVal1)))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "categoryType", true, __FUNC_C70_)
	registerVal2:addElement(registerVal3)
	registerVal2.categoryTypeImage = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 421.000000, 621.000000)
	registerVal4:setTopBottom(true, false, 10.000000, 40.000000)
	registerVal4:setTTF("fonts/escom.ttf")
	local function __FUNC_D53_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "title", true, __FUNC_D53_)
	registerVal2:addElement(registerVal4)
	registerVal2.title = registerVal4
	local registerVal5 = CoD.systemOverlay_Layout_ForegroundMultilineText.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 422.000000, 1217.000000)
	registerVal5:setTopBottom(true, false, 37.000000, 57.000000)
	local function __FUNC_E0A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.text:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "description", true, __FUNC_E0A_)
	registerVal2:addElement(registerVal5)
	registerVal2.text = registerVal5
	local registerVal6 = LUI.UIList.new(arg0, arg1, 3.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(true, false, 422.000000, 702.000000)
	registerVal6:setTopBottom(true, false, 90.000000, 262.000000)
	registerVal6:setWidgetType(CoD.List1ButtonChooseClass)
	registerVal6:setVerticalCount(5.000000)
	registerVal6:setSpacing(3.000000)
	registerVal6:setVerticalCounter(CoD.verticalCounter)
	local function __FUNC_EDC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setDataSource(registerVal1)
		end
	end

	registerVal6:linkToElementModel(registerVal2, "listDatasource", true, __FUNC_EDC_)
	local function __FUNC_F76_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "disabled"
		CoD.Menu.UpdateButtonShownState(registerVal6, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal6:linkToElementModel(registerVal6, "disabled", true, __FUNC_F76_)
	local function __FUNC_1131_(arg2, arg3)
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

	registerVal6:registerEventHandler("gain_focus", __FUNC_1131_)
	local function __FUNC_12C3_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_12C3_)
	local function __FUNC_1392_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDisabled(arg0, arg2)
		if not registerVal4 then
			ProcessClassOptionAction(registerVal2, arg0, arg2, arg1)
			return true
		end
	end

	local function __FUNC_142A_(arg0, arg1, arg2)
		local registerVal3 = IsDisabled(arg0, arg2)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal6, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1392_, __FUNC_142A_, false)
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Disabled"
	local function __FUNC_155A_(arg0, arg2, arg3)
		return IsClassOptionDisabled(registerVal2, arg2, arg1)
	end

	registerVal10.condition = __FUNC_155A_
	local registerVal11 = {}
	registerVal11.stateName = "DisabledClassSet"
	local function __FUNC_15BB_(arg0, arg2, arg3)
		return IsClassSetOptionDisabled(registerVal2, arg2, arg1)
	end

	registerVal11.condition = __FUNC_15BB_
	registerVal9 = {registerVal10, registerVal11}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal2:addElement(registerVal6)
	registerVal2.options = registerVal6
	registerVal6.id = "options"
	local function __FUNC_161E_(arg0, arg1)
		local registerVal2 = arg0.options:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_161E_)
	local function __FUNC_171F_(arg0)
		arg0.text:close()
		arg0.options:close()
		arg0.categoryTypeImage:close()
		arg0.title:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_171F_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

