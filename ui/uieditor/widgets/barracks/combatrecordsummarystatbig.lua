-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CombatRecordSummaryStatBig = registerVal1
function CoD.CombatRecordSummaryStatBig.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CombatRecordSummaryStatBig)
	registerVal2.id = "CombatRecordSummaryStatBig"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 191.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 61.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(false, false, -94.500000, 94.500000)
	registerVal3:setTopBottom(true, false, 5.000000, 24.000000)
	registerVal3:setText(Engine.Localize("MENU_KILLS_CAPS"))
	registerVal3:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.StatLabel = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(false, false, -94.500000, 94.500000)
	registerVal4:setTopBottom(true, false, 28.000000, 58.000000)
	registerVal4:setRGB(1.000000, 0.800000, 0.400000)
	registerVal4:setText(Engine.Localize("42,000"))
	registerVal4:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.StatValue = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

