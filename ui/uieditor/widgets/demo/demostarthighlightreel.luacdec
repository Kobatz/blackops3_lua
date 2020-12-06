-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.SystemOverlays.systemOverlay_Layout_ForegroundMultilineText")
require("ui.uieditor.widgets.CAC.Customization.CACGenericButton")
local function __FUNC_291_(arg0, arg1)
	CoD.DemoUtility.RebuildHighlightReelTimeline(arg1)
end

local function __FUNC_328_(arg0, arg1)
	UpdateNumHighlightReelMomentsElementColor(arg0.numAvailableHighlights, arg1)
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.DemoStartHighlightReel = registerVal3
local function __FUNC_3BF_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_291_ then
		__FUNC_291_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.DemoStartHighlightReel)
	registerVal2.id = "DemoStartHighlightReel"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 184.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 384.000000, 414.000000)
	registerVal3:setTopBottom(true, false, 11.000000, 41.000000)
	local function __FUNC_EA7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(GetCategoryIconForOverlayType(registerVal1)))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "categoryType", true, __FUNC_EA7_)
	registerVal2:addElement(registerVal3)
	registerVal2.categoryTypeImage = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 421.000000, 621.000000)
	registerVal4:setTopBottom(true, false, 10.000000, 40.000000)
	registerVal4:setTTF("fonts/escom.ttf")
	local function __FUNC_F87_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "title", true, __FUNC_F87_)
	registerVal2:addElement(registerVal4)
	registerVal2.title = registerVal4
	local registerVal5 = CoD.systemOverlay_Layout_ForegroundMultilineText.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 423.000000, 1218.000000)
	registerVal5:setTopBottom(true, false, 40.000000, 60.000000)
	local function __FUNC_103E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.text:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "description", true, __FUNC_103E_)
	registerVal2:addElement(registerVal5)
	registerVal2.text = registerVal5
	local registerVal6 = CoD.systemOverlay_Layout_ForegroundMultilineText.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 423.000000, 1218.000000)
	registerVal6:setTopBottom(true, false, 88.000000, 108.000000)
	registerVal6.text:setText(Engine.Localize("MENU_DEMO_HIGHLIGHT_REEL_NUM_AVAILABLE"))
	local function __FUNC_1110_(arg0)
		UpdateNumHighlightReelMomentsElementColor(registerVal6, arg1)
	end

	registerVal6:subscribeToGlobalModel(arg1, "demo", "numHighlightReelMoments", __FUNC_1110_)
	registerVal2:addElement(registerVal6)
	registerVal2.numAvailableHighlights = registerVal6
	local registerVal7 = LUI.UIList.new(arg0, arg1, 3.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal7:makeFocusable()
	registerVal7:setLeftRight(true, false, 421.000000, 751.000000)
	registerVal7:setTopBottom(true, false, 114.000000, 181.000000)
	registerVal7:setWidgetType(CoD.CACGenericButton)
	registerVal7:setVerticalCount(2.000000)
	registerVal7:setSpacing(3.000000)
	local function __FUNC_1183_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setDataSource(registerVal1)
		end
	end

	registerVal7:linkToElementModel(registerVal2, "listDatasource", true, __FUNC_1183_)
	local function __FUNC_121A_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "disabled"
		CoD.Menu.UpdateButtonShownState(registerVal7, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal7:linkToElementModel(registerVal7, "disabled", true, __FUNC_121A_)
	local function __FUNC_13D5_(arg2, arg3)
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

	registerVal7:registerEventHandler("gain_focus", __FUNC_13D5_)
	local function __FUNC_1567_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_1567_)
	local function __FUNC_1636_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDisabled(arg0, arg2)
		if not registerVal4 then
			ProcessListAction(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_16C3_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsDisabled(arg0, arg2)
		if not registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal7, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_1636_, __FUNC_16C3_, false)
	registerVal2:addElement(registerVal7)
	registerVal2.options = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 83.090000, 268.910000)
	registerVal8:setTopBottom(true, false, 0.000000, 185.830000)
	registerVal8:setScale(0.700000)
	registerVal8:setImage(RegisterImage("uie_t7_icons_theater_film"))
	registerVal2:addElement(registerVal8)
	registerVal2.Icon = registerVal8
	registerVal7.id = "options"
	local function __FUNC_17F2_(arg0, arg1)
		local registerVal2 = arg0.options:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_17F2_)
	local function __FUNC_18F3_(arg0)
		arg0.text:close()
		arg0.numAvailableHighlights:close()
		arg0.options:close()
		arg0.categoryTypeImage:close()
		arg0.title:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_18F3_)
	if __FUNC_328_ then
		__FUNC_328_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.DemoStartHighlightReel.new = __FUNC_3BF_
