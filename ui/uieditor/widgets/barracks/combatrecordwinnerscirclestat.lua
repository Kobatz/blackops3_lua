-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CombatRecordWinnersCircleStat = registerVal1
function CoD.CombatRecordWinnersCircleStat.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CombatRecordWinnersCircleStat)
	registerVal2.id = "CombatRecordWinnersCircleStat"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 55.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 102.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -21.500000, 21.500000)
	registerVal3:setTopBottom(true, false, 6.000000, 64.000000)
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.RibbonImage = registerVal3
	local registerVal4 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(false, true, -32.000000, 0.000000)
	registerVal4:setAlpha(0.800000)
	registerVal2:addElement(registerVal4)
	registerVal2.StartMenuframenoBG0 = registerVal4
	local registerVal5 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 70.000000)
	registerVal5:setAlpha(0.800000)
	registerVal2:addElement(registerVal5)
	registerVal2.StartMenuframenoBG00 = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(false, false, -21.500000, 21.500000)
	registerVal6:setTopBottom(false, true, -26.000000, -6.000000)
	registerVal6:setRGB(1.000000, 0.800000, 0.400000)
	registerVal6:setText(Engine.Localize("888"))
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.StatValue = registerVal6
	local function __FUNC_942_(arg0)
		arg0.StartMenuframenoBG0:close()
		arg0.StartMenuframenoBG00:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_942_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

