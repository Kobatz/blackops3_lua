-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveStroke")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BubbleGumFootnote = registerVal1
function CoD.BubbleGumFootnote.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BubbleGumFootnote)
	registerVal2.id = "BubbleGumFootnote"
	registerVal2.soundSet = "CAC_Perk"
	registerVal2:setLeftRight(true, false, 0.000000, 513.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 100.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -208.500000, 258.270000)
	registerVal3:setTopBottom(false, false, -48.500000, 47.500000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.700000)
	registerVal2:addElement(registerVal3)
	registerVal2.Black = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 71.000000, 495.000000)
	registerVal4:setTopBottom(true, false, 16.000000, 38.000000)
	registerVal4:setText(Engine.Localize("MENU_BGB_CONSUMABLE_FOOTNOTE"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.FootnoteTextBox = registerVal4
	local registerVal5 = CoD.cac_ButtonBoxLrgInactiveStroke.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 47.000000, 2.770000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.cacButtonBoxLrgInactiveStroke0 = registerVal5
	local registerVal6 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 55.890000, -6.110000)
	registerVal6:setTopBottom(true, true, 6.980000, -6.980000)
	registerVal6:setRGB(0.240000, 0.240000, 0.260000)
	registerVal6:setAlpha(0.400000)
	registerVal2:addElement(registerVal6)
	registerVal2.FEButtonPanel0 = registerVal6
	local function __FUNC_96D_(arg0)
		arg0.cacButtonBoxLrgInactiveStroke0:close()
		arg0.FEButtonPanel0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_96D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

