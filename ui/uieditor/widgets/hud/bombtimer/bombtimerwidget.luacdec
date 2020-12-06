-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.BombTimer.BombTimerWidgetInternal")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BombTimerWidget = registerVal1
function CoD.BombTimerWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BombTimerWidget)
	registerVal2.id = "BombTimerWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 124.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.BombTimerWidgetInternal.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 73.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal3.BombTimer:setupBombTimer(0.000000, true)
	registerVal3.AOrBText:setText(Engine.Localize("C"))
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Attacking"
	local function __FUNC_9D3_(arg0, arg2, arg3)
		local registerVal3 = IsModelValueTrue(arg1, "SearchAndDestroy.defending")
		return (not registerVal3)
	end

	registerVal7.condition = __FUNC_9D3_
	local registerVal8 = {}
	registerVal8.stateName = "Defending"
	local function __FUNC_A52_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal8.condition = __FUNC_A52_
	registerVal6 = {registerVal7, registerVal8}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "SearchAndDestroy.defending")
	local function __FUNC_A9C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "SearchAndDestroy.defending"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_A9C_)
	registerVal2:addElement(registerVal3)
	registerVal2.BombTimerWidgetInternal = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_BCC_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.BombTimerWidgetInternal:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_BCC_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_CDB_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.BombTimerWidgetInternal:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_CDB_
	registerVal4.Visible = registerVal5
	registerVal5 = {}
	local function __FUNC_DE2_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.BombTimerWidgetInternal:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_DE2_
	registerVal4.VisibleForCodCaster = registerVal5
	registerVal2.clipsPerState = registerVal4
	registerVal6 = {}
	registerVal7 = {}
	registerVal7.stateName = "Visible"
	local function __FUNC_EEA_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_TEAM_SPECTATOR)
		return (not registerVal3)
	end

	registerVal7.condition = __FUNC_EEA_
	registerVal8 = {}
	registerVal8.stateName = "VisibleForCodCaster"
	local function __FUNC_FBF_(arg0, arg2, arg3)
		local registerVal3 = IsCodCaster(arg1)
		if registerVal3 then
			registerVal3 = IsCodCasterProfileValueEqualTo(arg1, "shoutcaster_objective_status", 1.000000)
		end
		return registerVal3
	end

	registerVal8.condition = __FUNC_FBF_
	registerVal6 = {registerVal7, registerVal8}
	registerVal2:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_TEAM_SPECTATOR))
	local function __FUNC_107C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_TEAM_SPECTATOR)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_107C_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "factions.isCoDCaster")
	local function __FUNC_1209_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "factions.isCoDCaster"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_1209_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "CodCaster.profileSettingsUpdated")
	local function __FUNC_1332_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CodCaster.profileSettingsUpdated"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_1332_)
	local function __FUNC_1466_(arg0)
		arg0.BombTimerWidgetInternal:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1466_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

