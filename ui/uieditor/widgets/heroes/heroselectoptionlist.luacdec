-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Heroes.heroCustomizationOption")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.heroSelectOptionList = registerVal1
function CoD.heroSelectOptionList.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.heroSelectOptionList)
	registerVal2.id = "heroSelectOptionList"
	registerVal2.soundSet = "CAC_EditLoadout"
	registerVal2:setLeftRight(true, false, 0.000000, 348.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 564.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIList.new(arg0, arg1, 7.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 10.000000, 348.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 453.000000)
	registerVal3:setWidgetType(CoD.heroCustomizationOption)
	registerVal3:setHorizontalCount(3.000000)
	registerVal3:setVerticalCount(4.000000)
	registerVal3:setSpacing(7.000000)
	registerVal3:setDataSource("HeroChooseOptionButtonList")
	local function __FUNC_9E3_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "optionIndex"
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal3:linkToElementModel(registerVal3, "optionIndex", true, __FUNC_9E3_)
	local function __FUNC_BA0_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isBMClassified"
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal3:linkToElementModel(registerVal3, "isBMClassified", true, __FUNC_BA0_)
	local function __FUNC_D63_(arg2, arg3)
		local registerVal3 = IsCurrentNewHeroOption(registerVal2, arg2, arg1)
		if registerVal3 then
			HeroOptionHighlighted(arg0, arg2, arg1)
			PlaySoundSetSound(registerVal2, "list_up")
			SetHeroItemOptionAsOld(arg0, arg2, arg1)
			UpdateSelfElementState(arg0, arg2, arg1)
		else
			HeroOptionHighlighted(arg0, arg2, arg1)
			PlaySoundSetSound(registerVal2, "list_up")
		end
		return nil
	end

	registerVal3:registerEventHandler("list_item_gain_focus", __FUNC_D63_)
	local function __FUNC_ECF_(arg2, arg3)
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

	registerVal3:registerEventHandler("gain_focus", __FUNC_ECF_)
	local function __FUNC_105F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_105F_)
	local function __FUNC_112E_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsCurrentLockedHeroOption(arg0, arg2)
		registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
		if not registerVal4 and not registerVal4 then
			HeroOptionSelected(arg1, arg0, arg2)
			PlaySoundSetSound(registerVal2, "equip_item")
			return true
		end
	end

	local function __FUNC_125C_(arg0, arg1, arg2)
		local registerVal3 = IsCurrentLockedHeroOption(arg0, arg2)
		registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
		if not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_112E_, __FUNC_125C_, false)
	registerVal2:addElement(registerVal3)
	registerVal2.optionsList = registerVal3
	local registerVal4 = CoD.verticalCounter.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 74.000000, 274.000000)
	registerVal4:setTopBottom(true, false, 468.260000, 493.260000)
	local function __FUNC_13EF_(arg0, arg1)
		SetAsListVerticalCounter(registerVal2, arg0, "optionsList")
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("menu_loaded", __FUNC_13EF_)
	registerVal2:addElement(registerVal4)
	registerVal2.verticalCounter0 = registerVal4
	registerVal3.id = "optionsList"
	local function __FUNC_14A4_(arg0, arg1)
		local registerVal2 = arg0.optionsList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_14A4_)
	local function __FUNC_15AB_(arg0)
		arg0.optionsList:close()
		arg0.verticalCounter0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_15AB_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

