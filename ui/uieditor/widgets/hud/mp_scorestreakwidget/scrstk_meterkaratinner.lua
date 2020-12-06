-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.MP_ScoreStreakWidget.ScrStk_CombatEfficiencyScrollFX")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ScrStk_MeterKaratInner = registerVal1
function CoD.ScrStk_MeterKaratInner.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ScrStk_MeterKaratInner)
	registerVal2.id = "ScrStk_MeterKaratInner"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 12.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 27.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.ScrStk_CombatEfficiencyScrollFX.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -6.000000, 6.000000)
	registerVal3:setTopBottom(true, true, 2.500000, -17.500000)
	registerVal3:setXRot(180.000000)
	registerVal3:setZRot(90.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.ScrStkCombatEfficiencyScrollFX000 = registerVal3
	local registerVal4 = CoD.ScrStk_CombatEfficiencyScrollFX.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -6.000000, 6.000000)
	registerVal4:setTopBottom(true, true, 15.500000, -4.500000)
	registerVal4:setZRot(90.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.ScrStkCombatEfficiencyScrollFX0000 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_85B_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_85B_
	local function __FUNC_8BA_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.CombatEfficiency = __FUNC_8BA_
	local function __FUNC_91A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultState = __FUNC_91A_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_97A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_97A_
	registerVal5.CombatEfficiency = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "CombatEfficiency"
	local function __FUNC_9DA_(arg0, arg2, arg3)
		return HasPerk(arg1, "specialty_combat_efficiency")
	end

	registerVal8.condition = __FUNC_9DA_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "playerAbilities.playerGadget3.isInUse")
	local function __FUNC_A4E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.isInUse"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_A4E_)
	local function __FUNC_B87_(arg0)
		arg0.ScrStkCombatEfficiencyScrollFX000:close()
		arg0.ScrStkCombatEfficiencyScrollFX0000:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_B87_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

