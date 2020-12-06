-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Border")
require("ui.uieditor.widgets.CharacterCustomization.ChooseCharacter_HelpBubble_Arrow")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChooseCharacter_HelpBubble_Container = registerVal1
function CoD.ChooseCharacter_HelpBubble_Container.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChooseCharacter_HelpBubble_Container)
	registerVal2.id = "ChooseCharacter_HelpBubble_Container"
	registerVal2.soundSet = "CAC_EditLoadout"
	registerVal2:setLeftRight(true, false, 0.000000, 150.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 215.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Background = registerVal3
	local registerVal4 = CoD.Border.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Border = registerVal4
	local registerVal5 = CoD.ChooseCharacter_HelpBubble_Arrow.new(arg0, arg1)
	registerVal5:setLeftRight(false, true, -62.880000, 82.130000)
	registerVal5:setTopBottom(true, false, 2.000000, 63.000000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.ChooseCharacterHelpBubbleArrow = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 149.130000, -150.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_cac_buttontabidlefull"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal6:setShaderVector(0.000000, 0.041240, 0.190000, 0.000000, 0.000000)
	registerVal6:setupNineSliceShader(8.000000, 8.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.FETabIdle0 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(false, true, -4.110000, -0.110000)
	registerVal7:setRGB(1.000000, 0.410000, 0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.Bottom = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 4.000000)
	registerVal8:setRGB(1.000000, 0.410000, 0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.Top = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, false, 4.750000, 137.250000)
	registerVal9:setTopBottom(true, false, 14.000000, 32.500000)
	registerVal9:setText(Engine.Localize("MENU_HERO_TUTORIAL_OVERVIEW"))
	registerVal9:setTTF("fonts/escom.ttf")
	registerVal9:setLetterSpacing(0.700000)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_EE6_(arg0, arg1)
		UpdateWidgetHeightToMultilineText(registerVal2, arg0, 24.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal9, "setText", __FUNC_EE6_)
	registerVal2:addElement(registerVal9)
	registerVal2.Description = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, -34.000000, 43.000000)
	registerVal10:setTopBottom(true, false, -2.210000, 12.210000)
	registerVal10:setRGB(1.000000, 0.990000, 0.000000)
	registerVal10:setAlpha(0.700000)
	registerVal10:setImage(RegisterImage("uie_t7_cp_hud_enemytarget_glow"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.Glow2 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, true, -34.000000, 43.000000)
	registerVal11:setTopBottom(false, true, -11.320000, 3.100000)
	registerVal11:setRGB(1.000000, 0.990000, 0.000000)
	registerVal11:setAlpha(0.700000)
	registerVal11:setImage(RegisterImage("uie_t7_cp_hud_enemytarget_glow"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.Glow1 = registerVal11
	local registerVal12 = {}
	local registerVal13 = {}
	local function __FUNC_F54_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal13.DefaultClip = __FUNC_F54_
	registerVal12.DefaultState = registerVal13
	registerVal2.clipsPerState = registerVal12
	local function __FUNC_FB6_(arg0)
		arg0.Border:close()
		arg0.ChooseCharacterHelpBubbleArrow:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_FB6_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

