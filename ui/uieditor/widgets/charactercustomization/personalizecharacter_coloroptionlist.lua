-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CharacterCustomization.PersonalizeCharacter_ColorOption")
require("ui.uieditor.widgets.FittedText")
local function __FUNC_34E_(arg0, arg1)
	local function __FUNC_3C7_(arg1)
		local registerVal4 = {}
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.optionIndex = registerVal5
		arg0.colorList:findItem(nil, registerVal4, true, 0.000000)
	end

	arg0:linkToElementModel(arg0, "selectedColor", true, __FUNC_3C7_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.PersonalizeCharacter_ColorOptionList = registerVal2
local function __FUNC_49A_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PersonalizeCharacter_ColorOptionList)
	registerVal2.id = "PersonalizeCharacter_ColorOptionList"
	registerVal2.soundSet = "CAC_EditLoadout"
	registerVal2:setLeftRight(true, false, 0.000000, 335.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 100.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_ButtonBoxLrgInactiveDiags.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal3:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BoxButtonLrgInactiveDiag = registerVal3
	local registerVal4 = CoD.cac_ButtonBoxLrgIdle.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal4:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BoxButtonLrgIdle = registerVal4
	local registerVal5 = CoD.cac_ButtonBoxLrgInactive.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal5:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.BoxButtonLrgInactive = registerVal5
	local registerVal6 = LUI.UIList.new(arg0, arg1, 10.000000, 0.000000, nil, true, true, 139.000000, 0.000000, true, false)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(true, false, 0.000000, 669.000000)
	registerVal6:setTopBottom(true, false, 17.000000, 67.000000)
	registerVal6:setWidgetType(CoD.PersonalizeCharacter_ColorOption)
	registerVal6:setHorizontalCount(9.000000)
	registerVal6:setSpacing(10.000000)
	local function __FUNC_C78_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setDataSource(registerVal1)
		end
	end

	registerVal6:linkToElementModel(registerVal2, "colorListDatasource", true, __FUNC_C78_)
	registerVal2:addElement(registerVal6)
	registerVal2.colorList = registerVal6
	local registerVal7 = CoD.FittedText.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 5.000000, 65.000000)
	registerVal7:setTopBottom(false, true, -25.000000, -2.000000)
	local function __FUNC_D12_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.text:setText(Engine.Localize(LocalizeIntoString("HEROES_COLORS", registerVal1)))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "colorIndex", true, __FUNC_D12_)
	registerVal2:addElement(registerVal7)
	registerVal2.text = registerVal7
	registerVal6.id = "colorList"
	local function __FUNC_E23_(arg0, arg1)
		local registerVal2 = arg0.colorList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_E23_)
	local function __FUNC_F25_(arg0)
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.BoxButtonLrgIdle:close()
		arg0.BoxButtonLrgInactive:close()
		arg0.colorList:close()
		arg0.text:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_F25_)
	if __FUNC_34E_ then
		__FUNC_34E_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.PersonalizeCharacter_ColorOptionList.new = __FUNC_49A_
