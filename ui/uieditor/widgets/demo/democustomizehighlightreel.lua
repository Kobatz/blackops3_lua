-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.SystemOverlays.systemOverlay_Layout_ForegroundMultilineText")
require("ui.uieditor.widgets.Demo.demo_options_slider")
require("ui.uieditor.widgets.CAC.Customization.CACGenericButton")
local function __FUNC_2CF_(arg0, arg1)
	CoD.DemoUtility.RebuildHighlightReelTimeline(arg1)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.DemoCustomizeHighlightReel = registerVal2
local function __FUNC_364_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_2CF_ then
		__FUNC_2CF_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.DemoCustomizeHighlightReel)
	registerVal2.id = "DemoCustomizeHighlightReel"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 420.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 381.000000, 411.000000)
	registerVal3:setTopBottom(true, false, 27.090000, 57.090000)
	local function __FUNC_F5F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(GetCategoryIconForOverlayType(registerVal1)))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "categoryType", true, __FUNC_F5F_)
	registerVal2:addElement(registerVal3)
	registerVal2.categoryTypeImage = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 415.000000, 615.000000)
	registerVal4:setTopBottom(true, false, 26.090000, 56.090000)
	registerVal4:setTTF("fonts/escom.ttf")
	local function __FUNC_103F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "title", true, __FUNC_103F_)
	registerVal2:addElement(registerVal4)
	registerVal2.title = registerVal4
	local registerVal5 = CoD.systemOverlay_Layout_ForegroundMultilineText.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 417.000000, 1212.000000)
	registerVal5:setTopBottom(true, false, 56.090000, 76.090000)
	local function __FUNC_10F6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.text:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "description", true, __FUNC_10F6_)
	registerVal2:addElement(registerVal5)
	registerVal2.text = registerVal5
	local registerVal6 = CoD.systemOverlay_Layout_ForegroundMultilineText.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 417.000000, 1212.000000)
	registerVal6:setTopBottom(true, false, 103.090000, 123.090000)
	registerVal6.text:setText(Engine.Localize("MENU_DEMO_HIGHLIGHT_REEL_NUM_AVAILABLE"))
	local function __FUNC_11C8_(arg0)
		UpdateNumHighlightReelMomentsElementColor(registerVal6, arg1)
	end

	registerVal6:subscribeToGlobalModel(arg1, "Demo", "numHighlightReelMoments", __FUNC_11C8_)
	registerVal2:addElement(registerVal6)
	registerVal2.numAvailableHighlights = registerVal6
	local registerVal7 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal7:makeFocusable()
	registerVal7:setLeftRight(true, false, 400.000000, 940.000000)
	registerVal7:setTopBottom(false, true, -287.090000, -73.090000)
	registerVal7:setDataSource("DemoHighlightReelSettingsButtonList")
	registerVal7:setWidgetType(CoD.demo_options_slider)
	registerVal7:setVerticalCount(6.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.ButtonList = registerVal7
	local registerVal8 = LUI.UIList.new(arg0, arg1, 3.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal8:makeFocusable()
	registerVal8:setLeftRight(true, false, 415.000000, 745.000000)
	registerVal8:setTopBottom(false, true, -62.810000, -30.810000)
	registerVal8:setWidgetType(CoD.CACGenericButton)
	registerVal8:setSpacing(3.000000)
	local function __FUNC_123B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setDataSource(registerVal1)
		end
	end

	registerVal8:linkToElementModel(registerVal2, "listDatasource", true, __FUNC_123B_)
	local function __FUNC_12D2_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "disabled"
		CoD.Menu.UpdateButtonShownState(registerVal8, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal8:linkToElementModel(registerVal8, "disabled", true, __FUNC_12D2_)
	local function __FUNC_148D_(arg2, arg3)
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

	registerVal8:registerEventHandler("gain_focus", __FUNC_148D_)
	local function __FUNC_161F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("lose_focus", __FUNC_161F_)
	local function __FUNC_16EE_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDisabled(arg0, arg2)
		if not registerVal4 then
			ProcessListAction(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_177B_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsDisabled(arg0, arg2)
		if not registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal8, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_16EE_, __FUNC_177B_, false)
	registerVal2:addElement(registerVal8)
	registerVal2.btnStartHighlightReel = registerVal8
	local registerVal9 = {}
	registerVal9.down = registerVal8
	registerVal7.navigation = registerVal9
	registerVal9 = {}
	registerVal9.up = registerVal7
	registerVal8.navigation = registerVal9
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal7.id = "ButtonList"
	registerVal8.id = "btnStartHighlightReel"
	local function __FUNC_18AA_(arg0, arg1)
		local registerVal2 = arg0.ButtonList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_18AA_)
	local function __FUNC_19AE_(arg0)
		arg0.text:close()
		arg0.numAvailableHighlights:close()
		arg0.ButtonList:close()
		arg0.btnStartHighlightReel:close()
		arg0.categoryTypeImage:close()
		arg0.title:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_19AE_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.DemoCustomizeHighlightReel.new = __FUNC_364_
