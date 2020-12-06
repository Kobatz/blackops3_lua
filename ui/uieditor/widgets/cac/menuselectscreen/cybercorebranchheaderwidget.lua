-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveStroke")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CybercoreBranchHeaderWidget = registerVal1
function CoD.CybercoreBranchHeaderWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CybercoreBranchHeaderWidget)
	registerVal2.id = "CybercoreBranchHeaderWidget"
	registerVal2.soundSet = "CAC_LethalGrenade"
	registerVal2:setLeftRight(true, false, 0.000000, 120.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.500000)
	registerVal2:addElement(registerVal3)
	registerVal2.CybercoreHeaderBG = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, 2.000000, -2.000000)
	registerVal4:setTopBottom(true, false, 2.000000, 27.000000)
	registerVal4:setScale(LanguageOverrideNumber("japanese", 0.850000, 1.000000))
	registerVal4:setText(Engine.Localize(LocalizeToUpperString("MENU_NEW")))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.headerText = registerVal4
	local registerVal5 = CoD.cac_ButtonBoxLrgInactiveStroke.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.HighlightFrame = registerVal5
	local function __FUNC_8BC_(arg0)
		arg0.HighlightFrame:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_8BC_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

