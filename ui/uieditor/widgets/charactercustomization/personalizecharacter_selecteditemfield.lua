-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CharacterCustomization.PersonalizedColorsList")
require("ui.uieditor.widgets.CharacterCustomization.PersonalizedColorsListItem_Small")
require("ui.uieditor.widgets.CharacterCustomization.PersonalizeCharacterCarouselItem_InfoAreaLabel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PersonalizeCharacter_SelectedItemField = registerVal1
function CoD.PersonalizeCharacter_SelectedItemField.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PersonalizeCharacter_SelectedItemField)
	registerVal2.id = "PersonalizeCharacter_SelectedItemField"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 85.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, true, 3.000000, 3.000000)
	registerVal3:setTopBottom(true, false, 19.000000, 35.000000)
	registerVal3:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_A04_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "currentSelectionName", true, __FUNC_A04_)
	registerVal2:addElement(registerVal3)
	registerVal2.selectionName = registerVal3
	local registerVal4 = CoD.PersonalizedColorsList.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 13.000000, 106.000000)
	registerVal4:setTopBottom(true, false, 40.000000, 70.000000)
	registerVal4.colors:setWidgetType(CoD.PersonalizedColorsListItem_Small)
	registerVal4.colors:setSpacing(1.000000)
	local function __FUNC_ABE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.colors:setDataSource(registerVal1)
		end
	end

	registerVal4:linkToElementModel(registerVal2, "colorListDatasource", true, __FUNC_ABE_)
	registerVal2:addElement(registerVal4)
	registerVal2.colorList = registerVal4
	local registerVal5 = CoD.PersonalizeCharacterCarouselItem_InfoAreaLabel.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 2.000000, 93.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 22.000000)
	local function __FUNC_B72_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_B72_)
	registerVal2:addElement(registerVal5)
	registerVal2.header = registerVal5
	local function __FUNC_BC2_(arg0)
		arg0.colorList:close()
		arg0.header:close()
		arg0.selectionName:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_BC2_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

