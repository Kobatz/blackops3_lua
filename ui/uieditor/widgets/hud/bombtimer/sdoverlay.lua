-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.BombTimer.BombTimerWidget")
require("ui.uieditor.widgets.HUD.BombTimer.SDAliveCount")
local function __FUNC_256_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	local registerVal2 = Engine.CreateModel(registerVal3, "gameScore")
	local registerVal4 = Engine.CreateModel(registerVal2, "alliesAlive")
	Engine.SetModelValue(registerVal4, 0.000000)
	registerVal4 = Engine.CreateModel(registerVal2, "enemiesAlive")
	Engine.SetModelValue(registerVal4, 0.000000)
	registerVal4 = Engine.GetModelForController(arg1)
	registerVal3 = Engine.CreateModel(registerVal4, "SearchAndDestroy")
	Engine.CreateModel(registerVal3, "defending")
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.SDOverlay = registerVal2
local function __FUNC_42F_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_256_ then
		__FUNC_256_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SDOverlay)
	registerVal2.id = "SDOverlay"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.BombTimerWidget.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 160.000000, 232.000000)
	registerVal3:setTopBottom(true, false, 199.000000, 223.000000)
	registerVal3:setYRot(21.000000)
	registerVal3.BombTimerWidgetInternal.BombTimer:setupBombTimer(0.000000, true)
	registerVal3.BombTimerWidgetInternal.AOrBText:setText(Engine.Localize("A"))
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Visible"
	local function __FUNC_2050_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_TEAM_SPECTATOR)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_HUD_VISIBLE)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_HUD_HARDCORE)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_GAME_ENDED)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_KILLCAM)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IS_SCOPED)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_VEHICLE)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_EMP_ACTIVE)
		if not registerVal3 and registerVal3 and registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_BOMB_TIMER_A)
		else
		end
		return true
	end

	registerVal7.condition = __FUNC_2050_
	local registerVal8 = {}
	registerVal8.stateName = "VisibleForCodCaster"
	local function __FUNC_26B9_(arg0, arg2, arg3)
		local registerVal3 = IsCodCaster(arg1)
		registerVal3 = IsCodCasterProfileValueEqualTo(arg1, "shoutcaster_objective_status", 1.000000)
		if registerVal3 and registerVal3 then
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_HUD_VISIBLE)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_HUD_HARDCORE)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_GAME_ENDED)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_KILLCAM)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IS_SCOPED)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_VEHICLE)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_EMP_ACTIVE)
			if registerVal3 and registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
				registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_BOMB_TIMER_A)
			else
			end
		end
		return true
	end

	registerVal8.condition = __FUNC_26B9_
	registerVal6 = {registerVal7, registerVal8}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_TEAM_SPECTATOR))
	local function __FUNC_2D61_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_TEAM_SPECTATOR)
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_2D61_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE))
	local function __FUNC_2EED_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE)
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_2EED_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE))
	local function __FUNC_3076_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE)
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_3076_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_HARDCORE))
	local function __FUNC_3205_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_HARDCORE)
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_3205_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED))
	local function __FUNC_338F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED)
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_338F_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM))
	local function __FUNC_3515_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_3515_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN))
	local function __FUNC_36AC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN)
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_36AC_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM))
	local function __FUNC_3843_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM)
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_3843_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED))
	local function __FUNC_39C9_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED)
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_39C9_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE))
	local function __FUNC_3B56_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_3B56_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_SCOPED))
	local function __FUNC_3CDC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_SCOPED)
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_3CDC_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_VEHICLE))
	local function __FUNC_3E64_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_VEHICLE)
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_3E64_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE))
	local function __FUNC_3FED_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE)
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_3FED_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN))
	local function __FUNC_417C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_417C_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC))
	local function __FUNC_430A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC)
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_430A_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE))
	local function __FUNC_44A2_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE)
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_44A2_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_BOMB_TIMER_A))
	local function __FUNC_4629_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_BOMB_TIMER_A)
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_4629_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "factions.isCoDCaster")
	local function __FUNC_47B3_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "factions.isCoDCaster"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_47B3_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "CodCaster.profileSettingsUpdated")
	local function __FUNC_48DA_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CodCaster.profileSettingsUpdated"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_48DA_)
	registerVal2:addElement(registerVal3)
	registerVal2.BombTimerWidgetA = registerVal3
	local registerVal4 = CoD.BombTimerWidget.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 160.000000, 232.000000)
	registerVal4:setTopBottom(true, false, 199.000000, 223.000000)
	registerVal4:setYRot(21.000000)
	registerVal4.BombTimerWidgetInternal.BombTimer:setupBombTimer(1.000000, true)
	registerVal4.BombTimerWidgetInternal.AOrBText:setText(Engine.Localize("B"))
	registerVal7 = {}
	registerVal8 = {}
	registerVal8.stateName = "Visible"
	local function __FUNC_4A0E_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_TEAM_SPECTATOR)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_EMP_ACTIVE)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_GAME_ENDED)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_HUD_VISIBLE)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_KILLCAM)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_VEHICLE)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IS_SCOPED)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE)
		if not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not (not registerVal3) then
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_BOMB_TIMER_B)
		else
		end
		return true
	end

	registerVal8.condition = __FUNC_4A0E_
	local registerVal9 = {}
	registerVal9.stateName = "VisibleForCodCaster"
	local function __FUNC_5023_(arg0, arg2, arg3)
		local registerVal3 = IsCodCaster(arg1)
		registerVal3 = IsCodCasterProfileValueEqualTo(arg1, "shoutcaster_objective_status", 1.000000)
		if registerVal3 and registerVal3 then
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_EMP_ACTIVE)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_GAME_ENDED)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_HUD_VISIBLE)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_KILLCAM)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_VEHICLE)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IS_SCOPED)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE)
			if not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not (not registerVal3) then
				registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_BOMB_TIMER_B)
			else
			end
		end
		return true
	end

	registerVal9.condition = __FUNC_5023_
	registerVal7 = {registerVal8, registerVal9}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_TEAM_SPECTATOR))
	local function __FUNC_5677_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_TEAM_SPECTATOR)
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_5677_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN))
	local function __FUNC_5801_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN)
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_5801_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM))
	local function __FUNC_5997_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_5997_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE))
	local function __FUNC_5B2C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE)
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_5B2C_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED))
	local function __FUNC_5CB5_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED)
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_5CB5_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE))
	local function __FUNC_5E3D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE)
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_5E3D_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE))
	local function __FUNC_5FC6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE)
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_5FC6_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM))
	local function __FUNC_6154_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM)
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_6154_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC))
	local function __FUNC_62DD_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC)
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_62DD_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_VEHICLE))
	local function __FUNC_6476_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_VEHICLE)
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_6476_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED))
	local function __FUNC_65FD_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED)
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_65FD_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_SCOPED))
	local function __FUNC_678A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_SCOPED)
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_678A_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN))
	local function __FUNC_6910_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_6910_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE))
	local function __FUNC_6A9E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_6A9E_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE))
	local function __FUNC_6C24_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE)
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_6C24_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_BOMB_TIMER_B))
	local function __FUNC_6DB5_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_BOMB_TIMER_B)
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_6DB5_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "factions.isCoDCaster")
	local function __FUNC_6F3F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "factions.isCoDCaster"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_6F3F_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "CodCaster.profileSettingsUpdated")
	local function __FUNC_7066_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CodCaster.profileSettingsUpdated"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_7066_)
	registerVal2:addElement(registerVal4)
	registerVal2.BombTimerWidgetB = registerVal4
	local registerVal5 = CoD.SDAliveCount.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 19.500000, 143.500000)
	registerVal5:setTopBottom(true, false, 195.670000, 219.670000)
	registerVal5:setYRot(21.000000)
	local function __FUNC_719A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.PlayerImage:setRGB(registerVal1)
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "HUDItems", "colorBlindSensitiveFriendlyColor", __FUNC_719A_)
	local function __FUNC_724C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.AliveCount:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "GameScore", "alliesAlive", __FUNC_724C_)
	registerVal2:addElement(registerVal5)
	registerVal2.SDAliveCountFriendly = registerVal5
	registerVal6 = CoD.SDAliveCount.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 19.500000, 143.500000)
	registerVal6:setTopBottom(true, false, 221.670000, 245.670000)
	registerVal6:setYRot(21.000000)
	local function __FUNC_7326_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.PlayerImage:setRGB(registerVal1)
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "HUDItems", "colorBlindSensitiveEnemyColor", __FUNC_7326_)
	local function __FUNC_73D8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.AliveCount:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "GameScore", "enemiesAlive", __FUNC_73D8_)
	registerVal2:addElement(registerVal6)
	registerVal2.SDAliveCountEnemy = registerVal6
	registerVal7 = {}
	registerVal8 = {}
	local function __FUNC_74B2_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.BombTimerWidgetA:setLeftRight(true, false, 160.000000, 232.000000)
		registerVal2.BombTimerWidgetA:setTopBottom(true, false, 200.000000, 224.000000)
		registerVal2.BombTimerWidgetA:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BombTimerWidgetB:setLeftRight(true, false, 160.000000, 232.000000)
		registerVal2.BombTimerWidgetB:setTopBottom(true, false, 200.000000, 224.000000)
		registerVal2.BombTimerWidgetB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.SDAliveCountFriendly:setLeftRight(true, false, 19.500000, 143.500000)
		registerVal2.SDAliveCountFriendly:setTopBottom(true, false, 195.670000, 219.670000)
		registerVal2.SDAliveCountFriendly:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.SDAliveCountEnemy:setLeftRight(true, false, 19.500000, 143.500000)
		registerVal2.SDAliveCountEnemy:setTopBottom(true, false, 221.670000, 245.670000)
		registerVal2.SDAliveCountEnemy:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_74B2_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_7875_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.BombTimerWidgetA:setLeftRight(true, false, 163.500000, 235.500000)
		registerVal2.BombTimerWidgetA:setTopBottom(true, false, 201.670000, 225.670000)
		registerVal2.BombTimerWidgetA:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BombTimerWidgetB:setLeftRight(true, false, 160.500000, 232.500000)
		registerVal2.BombTimerWidgetB:setTopBottom(true, false, 201.670000, 225.670000)
		registerVal2.BombTimerWidgetB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.SDAliveCountFriendly:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.SDAliveCountEnemy:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_7875_
	registerVal7.HideForCodCaster = registerVal8
	registerVal8 = {}
	local function __FUNC_7B85_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.BombTimerWidgetA:setLeftRight(true, false, 64.000000, 136.000000)
		registerVal2.BombTimerWidgetA:setTopBottom(true, false, 197.670000, 221.670000)
		registerVal2.BombTimerWidgetA:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BombTimerWidgetB:setLeftRight(true, false, 61.000000, 133.000000)
		registerVal2.BombTimerWidgetB:setTopBottom(true, false, 197.670000, 221.670000)
		registerVal2.BombTimerWidgetB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.SDAliveCountFriendly:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.SDAliveCountEnemy:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_7B85_
	registerVal7.DefaultStateHardcore = registerVal8
	registerVal8 = {}
	local function __FUNC_7E95_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.BombTimerWidgetA:setLeftRight(true, false, 160.000000, 232.000000)
		registerVal2.BombTimerWidgetA:setTopBottom(true, false, 248.000000, 272.000000)
		registerVal2.BombTimerWidgetA:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BombTimerWidgetB:setLeftRight(true, false, 160.000000, 232.000000)
		registerVal2.BombTimerWidgetB:setTopBottom(true, false, 248.000000, 272.000000)
		registerVal2.BombTimerWidgetB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.SDAliveCountFriendly:setLeftRight(true, false, 19.500000, 143.500000)
		registerVal2.SDAliveCountFriendly:setTopBottom(true, false, 244.670000, 268.670000)
		registerVal2.SDAliveCountFriendly:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.SDAliveCountEnemy:setLeftRight(true, false, 19.500000, 143.500000)
		registerVal2.SDAliveCountEnemy:setTopBottom(true, false, 270.670000, 294.670000)
		registerVal2.SDAliveCountEnemy:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_7E95_
	registerVal7.CodCasterLargeMinimap = registerVal8
	registerVal8 = {}
	local function __FUNC_8259_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.BombTimerWidgetA:setLeftRight(true, false, 160.000000, 232.000000)
		registerVal2.BombTimerWidgetA:setTopBottom(true, false, 200.000000, 224.000000)
		registerVal2.BombTimerWidgetA:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BombTimerWidgetB:setLeftRight(true, false, 160.000000, 232.000000)
		registerVal2.BombTimerWidgetB:setTopBottom(true, false, 200.000000, 224.000000)
		registerVal2.BombTimerWidgetB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.SDAliveCountFriendly:setLeftRight(true, false, 19.500000, 143.500000)
		registerVal2.SDAliveCountFriendly:setTopBottom(true, false, 195.670000, 219.670000)
		registerVal2.SDAliveCountFriendly:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.SDAliveCountEnemy:setLeftRight(true, false, 19.500000, 143.500000)
		registerVal2.SDAliveCountEnemy:setTopBottom(true, false, 221.670000, 245.670000)
		registerVal2.SDAliveCountEnemy:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_8259_
	registerVal7.CodCaster = registerVal8
	registerVal2.clipsPerState = registerVal7
	registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "HideForCodCaster"
	local function __FUNC_861D_(arg0, arg2, arg3)
		local registerVal3 = IsCodCaster(arg1)
		if registerVal3 then
			registerVal3 = IsCodCasterProfileValueEqualTo(arg1, "shoutcaster_qs_playerhud", 1.000000)
		end
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_861D_
	local registerVal11 = {}
	registerVal11.stateName = "DefaultStateHardcore"
	local function __FUNC_86DC_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_HUD_HARDCORE)
		return registerVal3
	end

	registerVal11.condition = __FUNC_86DC_
	local registerVal12 = {}
	registerVal12.stateName = "CodCasterLargeMinimap"
	local function __FUNC_87AD_(arg0, arg2, arg3)
		local registerVal3 = IsCodCaster(arg1)
		if registerVal3 then
			registerVal3 = IsCodCasterProfileValueEqualTo(arg1, "shoutcaster_minimap", Enum.ShoutcasterSettingMinimapMode.SHOUTCASTER_SETTING_MINIMAP_MODE_FULL)
		end
		return registerVal3
	end

	registerVal12.condition = __FUNC_87AD_
	local registerVal13 = {}
	registerVal13.stateName = "CodCaster"
	local function __FUNC_88DA_(arg0, arg2, arg3)
		return IsCodCaster(arg1)
	end

	registerVal13.condition = __FUNC_88DA_
	registerVal9 = {registerVal10, registerVal11, registerVal12, registerVal13}
	registerVal2:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "factions.isCoDCaster")
	local function __FUNC_8929_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "factions.isCoDCaster"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_8929_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "CodCaster.profileSettingsUpdated")
	local function __FUNC_8A52_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CodCaster.profileSettingsUpdated"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_8A52_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_HARDCORE))
	local function __FUNC_8B86_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_HARDCORE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_8B86_)
	local function __FUNC_8D0F_(arg0)
		arg0.BombTimerWidgetA:close()
		arg0.BombTimerWidgetB:close()
		arg0.SDAliveCountFriendly:close()
		arg0.SDAliveCountEnemy:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_8D0F_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.SDOverlay.new = __FUNC_42F_
