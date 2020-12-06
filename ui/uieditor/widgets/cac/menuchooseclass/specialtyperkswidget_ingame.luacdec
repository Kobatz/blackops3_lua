-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.PerksWidget_InGame")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SpecialtyPerksWidget_InGame = registerVal1
function CoD.SpecialtyPerksWidget_InGame.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SpecialtyPerksWidget_InGame)
	registerVal2.id = "SpecialtyPerksWidget_InGame"
	registerVal2.soundSet = "CAC"
	registerVal2:setLeftRight(true, false, 0.000000, 196.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 145.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.PerksWidget_InGame.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, -196.000000, -134.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 145.000000)
	registerVal3.header:setText(Engine.Localize("MPUI_PERK1_CAPS"))
	registerVal2:addElement(registerVal3)
	registerVal2.perk1 = registerVal3
	local registerVal4 = CoD.PerksWidget_InGame.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 67.000000, 129.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 145.000000)
	registerVal4.header:setText(Engine.Localize("MPUI_PERK2_CAPS"))
	registerVal2:addElement(registerVal4)
	registerVal2.perk2 = registerVal4
	local registerVal5 = CoD.PerksWidget_InGame.new(arg0, arg1)
	registerVal5:setLeftRight(false, true, -62.000000, 0.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 145.000000)
	registerVal5.header:setText(Engine.Localize("MPUI_PERK3_CAPS"))
	registerVal2:addElement(registerVal5)
	registerVal2.perk3 = registerVal5
	local function __FUNC_774_(arg0)
		arg0.perk1:close()
		arg0.perk2:close()
		arg0.perk3:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_774_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

