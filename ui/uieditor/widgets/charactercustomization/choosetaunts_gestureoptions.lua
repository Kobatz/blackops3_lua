-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CharacterCustomization.ChooseTaunt_TauntOptionButton")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.CharacterCustomization.ChooseTaunts_GestureOptionInfo")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChooseTaunts_GestureOptions = registerVal1
function CoD.ChooseTaunts_GestureOptions.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChooseTaunts_GestureOptions)
	registerVal2.id = "ChooseTaunts_GestureOptions"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 208.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 564.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIList.new(arg0, arg1, 0.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 0.000000, 209.000000)
	registerVal3:setTopBottom(true, false, 25.000000, 520.000000)
	registerVal3:setWidgetType(CoD.ChooseTaunt_TauntOptionButton)
	registerVal3:setVerticalCount(9.000000)
	registerVal3:setSpacing(0.000000)
	local function __FUNC_CFA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setDataSource(registerVal1)
		end
	end

	registerVal3:linkToElementModel(registerVal2, "optionsDatasource", true, __FUNC_CFA_)
	local function __FUNC_D92_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isBMClassified"
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal3:linkToElementModel(registerVal3, "isBMClassified", true, __FUNC_D92_)
	local function __FUNC_FBB_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "canPreview"
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal3:linkToElementModel(registerVal3, "canPreview", true, __FUNC_FBB_)
	local function __FUNC_117A_(arg2, arg3)
		local registerVal3 = IsCurrentGestureNew(registerVal2, arg2, arg1)
		if registerVal3 then
			SetHeroGestureAsOld(registerVal2, arg2, arg1)
			UpdateSelfElementState(arg0, arg2, arg1)
		end
		return nil
	end

	registerVal3:registerEventHandler("list_item_gain_focus", __FUNC_117A_)
	local function __FUNC_124A_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		return registerVal3
	end

	registerVal3:registerEventHandler("gain_focus", __FUNC_124A_)
	local function __FUNC_1443_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_1443_)
	local function __FUNC_1512_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
		if not registerVal4 then
			GestureItemSelected(arg1, arg0, arg2)
			PlaySoundAlias("uin_paint_decal_nav")
			return true
		end
	end

	local function __FUNC_1608_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
		if not registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1512_, __FUNC_1608_, false)
	local function __FUNC_1760_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
		registerVal4 = IsSelfModelValueTrue(arg0, arg2, "canPreview")
		if not registerVal4 and registerVal4 then
			PreviewGesture(arg2, arg0)
			PlaySoundAlias("uin_paint_decal_nav")
			return true
		end
	end

	local function __FUNC_187F_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "HEROES_PREVIEW_GESTURE")
		local registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
		registerVal3 = IsSelfModelValueTrue(arg0, arg2, "canPreview")
		if not registerVal3 and registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "P", __FUNC_1760_, __FUNC_187F_, false)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "New"
	local function __FUNC_1A12_(arg0, arg2, arg3)
		return IsCurrentGestureNew(registerVal2, arg2, arg1)
	end

	registerVal7.condition = __FUNC_1A12_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	local function __FUNC_1A71_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:linkToElementModel(registerVal3, "isBMClassified", true, __FUNC_1A71_)
	registerVal2:addElement(registerVal3)
	registerVal2.optionsList = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 0.000000, 72.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	local function __FUNC_1B94_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(LocalizeIntoString("HEROES_X_GESTURES", registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "categoryName", true, __FUNC_1B94_)
	registerVal2:addElement(registerVal4)
	registerVal2.categoryName = registerVal4
	local registerVal5 = CoD.verticalCounter.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 4.000000, 204.000000)
	registerVal5:setTopBottom(true, false, 520.000000, 545.000000)
	local function __FUNC_1C6B_(arg0, arg1)
		SetAsListVerticalCounter(registerVal2, arg0, "optionsList")
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("menu_loaded", __FUNC_1C6B_)
	registerVal2:addElement(registerVal5)
	registerVal2.verticalCounter0 = registerVal5
	registerVal6 = CoD.ChooseTaunts_GestureOptionInfo.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 236.000000, 617.000000)
	registerVal6:setTopBottom(true, false, 25.000000, 59.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.ChooseTauntsGestureOptionInfo0 = registerVal6
	local function __FUNC_1D20_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal3, nil, false, __FUNC_1D20_)
	registerVal3.id = "optionsList"
	local function __FUNC_1D72_(arg0, arg1)
		local registerVal2 = arg0.optionsList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_1D72_)
	local function __FUNC_1E77_(arg0)
		arg0.optionsList:close()
		arg0.verticalCounter0:close()
		arg0.ChooseTauntsGestureOptionInfo0:close()
		arg0.categoryName:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1E77_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

