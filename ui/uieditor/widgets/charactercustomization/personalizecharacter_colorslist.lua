-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.CharacterCustomization.PersonalizeCharacter_ColorOptionList")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PersonalizeCharacter_ColorsList = registerVal1
function CoD.PersonalizeCharacter_ColorsList.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PersonalizeCharacter_ColorsList)
	registerVal2.id = "PersonalizeCharacter_ColorsList"
	registerVal2.soundSet = "CAC_EditLoadout"
	registerVal2:setLeftRight(true, false, 0.000000, 348.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 471.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 194.000000)
	registerVal3:setTopBottom(true, false, 8.000000, 38.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BlackBox = registerVal3
	local registerVal4 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(false, false, -235.500000, 235.500000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.FETitleNumBrdr1 = registerVal4
	local registerVal5 = LUI.UIList.new(arg0, arg1, 7.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal5:makeFocusable()
	registerVal5:setLeftRight(true, false, 3.000000, 338.000000)
	registerVal5:setTopBottom(true, false, 46.000000, 360.000000)
	registerVal5:setDataSource("CharacterCustomizationColorSetList")
	registerVal5:setWidgetType(CoD.PersonalizeCharacter_ColorOptionList)
	registerVal5:setVerticalCount(3.000000)
	registerVal5:setSpacing(7.000000)
	local function __FUNC_C16_(arg2, arg3)
		HeroColorSectionHighlighted(arg0, arg2, arg1)
		return nil
	end

	registerVal5:registerEventHandler("list_item_gain_focus", __FUNC_C16_)
	local function __FUNC_C81_(arg2, arg3)
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

	registerVal5:registerEventHandler("gain_focus", __FUNC_C81_)
	local function __FUNC_E13_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_E13_)
	local function __FUNC_EE2_(arg0, arg1, arg2, arg3)
		HeroColorsSelected(arg1, arg0, arg2)
		return true
	end

	local function __FUNC_F44_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_EE2_, __FUNC_F44_, false)
	registerVal2:addElement(registerVal5)
	registerVal2.colorsList = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 5.000000, 333.000000)
	registerVal6:setTopBottom(true, false, 20.000000, 40.000000)
	registerVal6:setText(Engine.Localize("MENU_NEW"))
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal6)
	registerVal2.categoryName = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -174.000000, 0.000000)
	registerVal7:setTopBottom(true, false, 10.000000, 42.000000)
	registerVal7:setRGB(0.820000, 0.820000, 0.820000)
	registerVal7:setAlpha(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.GrayBoxBackground = registerVal7
	registerVal5.id = "colorsList"
	local function __FUNC_1042_(arg0, arg1)
		local registerVal2 = arg0.colorsList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_1042_)
	local function __FUNC_1146_(arg0)
		arg0.FETitleNumBrdr1:close()
		arg0.colorsList:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1146_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

