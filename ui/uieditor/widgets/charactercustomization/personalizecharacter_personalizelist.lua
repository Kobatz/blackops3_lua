-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.menus.CharacterCustomization.ChooseGender")
require("ui.uieditor.widgets.CharacterCustomization.PersonalizeCharacter_ListButton")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PersonalizeCharacter_PersonalizeList = registerVal1
function CoD.PersonalizeCharacter_PersonalizeList.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PersonalizeCharacter_PersonalizeList)
	registerVal2.id = "PersonalizeCharacter_PersonalizeList"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 320.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 632.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIList.new(arg0, arg1, 3.500000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 0.000000, 335.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 721.000000)
	registerVal3:setDataSource("CharacterCustomizationButtonList")
	registerVal3:setWidgetType(CoD.PersonalizeCharacter_ListButton)
	registerVal3:setVerticalCount(7.000000)
	registerVal3:setSpacing(3.500000)
	local function __FUNC_8B1_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "disabled"
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal3:linkToElementModel(registerVal3, "disabled", true, __FUNC_8B1_)
	local function __FUNC_A6D_(arg2, arg3)
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

	registerVal3:registerEventHandler("gain_focus", __FUNC_A6D_)
	local function __FUNC_BFF_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_BFF_)
	local function __FUNC_CCE_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDisabled(arg0, arg2)
		registerVal4 = IsElementPropertyValue(arg0, "headItem", true)
		if not registerVal4 and registerVal4 then
			NavigateToMenu(registerVal2, "ChooseGender", true, arg2)
			return true
		else
			registerVal4 = IsDisabled(arg0, arg2)
			if not registerVal4 then
				BeginEdittingHeroOption(arg1, arg0, arg2)
				PlaySoundAlias("uin_paint_decal_nav")
				EnableMouseOnMenuElement(arg1, "optionsList", arg2)
				return true
			end
		end
	end

	local function __FUNC_EA5_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsDisabled(arg0, arg2)
		registerVal3 = IsElementPropertyValue(arg0, "headItem", true)
		if not registerVal3 and registerVal3 then
			return true
		else
			registerVal3 = IsDisabled(arg0, arg2)
			if not registerVal3 then
				return true
			end
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_CCE_, __FUNC_EA5_, false)
	registerVal2:addElement(registerVal3)
	registerVal2.customizationList = registerVal3
	registerVal3.id = "customizationList"
	local function __FUNC_1048_(arg0, arg1)
		local registerVal2 = arg0.customizationList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_1048_)
	local function __FUNC_1155_(arg0)
		arg0.customizationList:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1155_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

