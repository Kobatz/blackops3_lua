-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CombatRecordStatListHeader = registerVal1
function CoD.CombatRecordStatListHeader.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CombatRecordStatListHeader)
	registerVal2.id = "CombatRecordStatListHeader"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 292.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 48.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setText(Engine.Localize("MENU_WEAPON_CAPS"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal3)
	registerVal2.WeaponLabel = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(false, true, -70.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(ColorSet.PartyFriendlyBlue.r, ColorSet.PartyFriendlyBlue.g, ColorSet.PartyFriendlyBlue.b)
	registerVal4:setText(Engine.Localize("MENU_KILLS_CAPS"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.StatComparisonLabel = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(false, true, -125.000000, -55.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setText(Engine.Localize("MENU_KILLS_CAPS"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.StatLabel = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_942_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal4:completeAnimation()
		registerVal2.StatComparisonLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.StatLabel:setLeftRight(false, true, -70.000000, 0.000000)
		registerVal2.StatLabel:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_942_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_B07_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal4:completeAnimation()
		registerVal2.StatComparisonLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.StatLabel:setLeftRight(false, true, -116.000000, -46.000000)
		registerVal2.StatLabel:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_B07_
	registerVal6.Comparison = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Comparison"
	local function __FUNC_CD5_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal9.condition = __FUNC_CD5_
	registerVal8 = {registerVal9}
	registerVal2:mergeStateConditions(registerVal8)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

