-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_Debug_LootItemStats = registerVal1
function CoD.BM_Debug_LootItemStats.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_Debug_LootItemStats)
	registerVal2.id = "BM_Debug_LootItemStats"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 200.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 590.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 18.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setText(Engine.Localize("COMMON: $(debugLootItemStats.commonDiscreteCount) / $(debugLootItemStats.commonDupeCount)    RARE: $(debugLootItemStats.rareDiscreteCount) / $(debugLootItemStats.rareDupeCount)    LEGENDARY: $(debugLootItemStats.legendaryDiscreteCount) / $(debugLootItemStats.legendaryDupeCount)    EPIC: $(debugLootItemStats.epicDiscreteCount) / $(debugLootItemStats.epicDupeCount)    MELEE: $(debugLootItemStats.meleeDiscreteCount) / $(debugLootItemStats.meleeDupeCount)    RANGE: $(debugLootItemStats.rangeDiscreteCount) / $(debugLootItemStats.rangeDupeCount)"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.DebugLootItemStats = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_8E1_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.DebugLootItemStats:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_8E1_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_9EA_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.DebugLootItemStats:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_9EA_
	registerVal4.Visible = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Visible"
	local function __FUNC_AED_(arg0, arg1, arg2)
		return IsIntDvarNonZero("loot_showLootItemStats")
	end

	registerVal7.condition = __FUNC_AED_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

