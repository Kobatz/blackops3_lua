-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CharacterCustomization.ChooseCharacter_HelpBubble_Container")
require("ui.uieditor.widgets.CharacterCustomization.ChooseCharacter_HelpBubble_ButtonContainer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChooseCharacter_HelpBubbleWidget = registerVal1
function CoD.ChooseCharacter_HelpBubbleWidget.new(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 0.000000
	local registerVal2 = LUI.UIVerticalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Top)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChooseCharacter_HelpBubbleWidget)
	registerVal2.id = "ChooseCharacter_HelpBubbleWidget"
	registerVal2.soundSet = "CAC_EditLoadout"
	registerVal2:setLeftRight(true, false, 0.000000, 150.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 135.000000)
	registerVal2.anyChildUsesUpdateState = true
	registerVal3 = CoD.ChooseCharacter_HelpBubble_Container.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 1.190000, 150.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 135.450000)
	registerVal3.Description:setText(Engine.Localize("MENU_HERO_TUTORIAL_OVERVIEW"))
	registerVal2:addElement(registerVal3)
	registerVal2.ChooseCharacterHelpBubbleContainer = registerVal3
	local registerVal4 = CoD.ChooseCharacter_HelpBubble_ButtonContainer.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, -1.000000)
	registerVal4:setTopBottom(true, false, 135.450000, 217.450000)
	registerVal2:addElement(registerVal4)
	registerVal2.ChooseCharacterHelpBubbleButtonContainer = registerVal4
	local function __FUNC_8B2_(arg0)
		arg0.ChooseCharacterHelpBubbleContainer:close()
		arg0.ChooseCharacterHelpBubbleButtonContainer:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_8B2_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

