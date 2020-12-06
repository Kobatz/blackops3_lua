-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CharacterCustomization.PersonalizedColorsListItem")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PersonalizedColorsList = registerVal1
function CoD.PersonalizedColorsList.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PersonalizedColorsList)
	registerVal2.id = "PersonalizedColorsList"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 93.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.GridLayout.new(arg0, arg1, false, 0.000000, 0.000000, -3.000000, 0.000000, nil, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal3:setLeftRight(true, false, -9.000000, 96.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal3:setWidgetType(CoD.PersonalizedColorsListItem)
	registerVal3:setHorizontalCount(3.000000)
	registerVal3:setSpacing(-3.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.colors = registerVal3
	local function __FUNC_627_(arg0)
		arg0.colors:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_627_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

