-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.Flag.AllyFlag")
require("ui.uieditor.widgets.HUD.Flag.AxisFlag")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_SDBomb")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_Ball")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_CleanCarryCount")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidgetMP_HeldItem = registerVal1
function CoD.AmmoWidgetMP_HeldItem.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidgetMP_HeldItem)
	registerVal2.id = "AmmoWidgetMP_HeldItem"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 92.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 123.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -5.880000, 94.940000)
	registerVal3:setTopBottom(true, false, -45.000000, 123.000000)
	registerVal3:setRGB(0.070000, 0.270000, 0.310000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_lui_score_feed_glow"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.Glow00 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -8.500000, 100.500000)
	registerVal4:setTopBottom(true, false, -16.250000, 96.750000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_lui_score_feed_glow"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Glow = registerVal4
	local registerVal5 = CoD.AllyFlag.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 23.000000, 69.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 80.000000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.AllyFlag = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, -5.880000, 94.940000)
	registerVal6:setTopBottom(true, false, -45.000000, 123.000000)
	registerVal6:setRGB(0.070000, 0.270000, 0.310000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_lui_score_feed_glow"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.Glow0 = registerVal6
	local registerVal7 = CoD.AxisFlag.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 23.000000, 69.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 80.000000)
	registerVal7:setAlpha(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.AxisFlag = registerVal7
	local registerVal8 = CoD.AmmoWidget_SDBomb.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 10.000000, 80.000000)
	registerVal8:setTopBottom(true, false, 25.000000, 95.000000)
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "Hide"
	local function __FUNC_228D_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_EMP_ACTIVE)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_GAME_ENDED)
		if not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_HUD_VISIBLE)
			if registerVal3 then
				registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE)
				registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_KILLCAM)
				registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC)
				registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_VEHICLE)
				registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED)
				registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IS_SCOPED)
				registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
				registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
				if not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
					registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE)
				end
			end
		end
		return true
	end

	registerVal12.condition = __FUNC_228D_
	registerVal11 = {registerVal12}
	registerVal8:mergeStateConditions(registerVal11)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN))
	local function __FUNC_27F5_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN)
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_27F5_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM))
	local function __FUNC_298B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_298B_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE))
	local function __FUNC_2B20_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE)
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_2B20_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED))
	local function __FUNC_2CA9_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED)
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_2CA9_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE))
	local function __FUNC_2E31_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE)
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_2E31_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE))
	local function __FUNC_2FBA_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE)
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_2FBA_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM))
	local function __FUNC_3148_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM)
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_3148_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC))
	local function __FUNC_32D1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC)
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_32D1_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_VEHICLE))
	local function __FUNC_346A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_VEHICLE)
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_346A_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED))
	local function __FUNC_35F1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED)
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_35F1_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_SCOPED))
	local function __FUNC_377E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_SCOPED)
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_377E_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN))
	local function __FUNC_3904_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_3904_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE))
	local function __FUNC_3A92_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_3A92_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE))
	local function __FUNC_3C18_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE)
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_3C18_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "hudItems.SDBombClient")
	local function __FUNC_3DA9_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hudItems.SDBombClient"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_3DA9_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "deadSpectator.playerIndex")
	local function __FUNC_3ED3_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "deadSpectator.playerIndex"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_3ED3_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "Demolition.defending")
	local function __FUNC_3FFF_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "Demolition.defending"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_3FFF_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "SearchAndDestroy.defending")
	local function __FUNC_4126_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "SearchAndDestroy.defending"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_4126_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_BOMB_TIMER_A))
	local function __FUNC_4254_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_BOMB_TIMER_A)
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_4254_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_BOMB_TIMER_B))
	local function __FUNC_43DF_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_BOMB_TIMER_B)
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_43DF_)
	registerVal2:addElement(registerVal8)
	registerVal2.AmmoWidgetSDBomb = registerVal8
	local registerVal9 = CoD.AmmoWidget_Ball.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 10.000000, 80.000000)
	registerVal9:setTopBottom(true, false, 25.000000, 95.000000)
	registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Hide"
	local function __FUNC_4567_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_EMP_ACTIVE)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_GAME_ENDED)
		if not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_HUD_VISIBLE)
			if registerVal3 then
				registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE)
				registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_KILLCAM)
				registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC)
				registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_VEHICLE)
				registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED)
				registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IS_SCOPED)
				registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
				registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
				if not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
					registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE)
				end
			end
		end
		return true
	end

	registerVal13.condition = __FUNC_4567_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN))
	local function __FUNC_4ACD_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN)
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_4ACD_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM))
	local function __FUNC_4C63_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_4C63_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE))
	local function __FUNC_4DF8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE)
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_4DF8_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED))
	local function __FUNC_4F81_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED)
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_4F81_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE))
	local function __FUNC_5109_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE)
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_5109_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE))
	local function __FUNC_5292_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE)
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_5292_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM))
	local function __FUNC_5420_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM)
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_5420_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC))
	local function __FUNC_55A9_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC)
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_55A9_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_VEHICLE))
	local function __FUNC_5742_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_VEHICLE)
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_5742_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED))
	local function __FUNC_58C9_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED)
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_58C9_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_SCOPED))
	local function __FUNC_5A56_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_SCOPED)
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_5A56_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN))
	local function __FUNC_5BDC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_5BDC_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE))
	local function __FUNC_5D6A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_5D6A_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE))
	local function __FUNC_5EF0_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE)
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_5EF0_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, "currentWeapon.viewmodelWeaponName")
	local function __FUNC_6081_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.viewmodelWeaponName"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_6081_)
	registerVal2:addElement(registerVal9)
	registerVal2.AmmoWidgetBall = registerVal9
	local registerVal10 = CoD.AmmoWidget_CleanCarryCount.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, -5.000000, 71.000000)
	registerVal10:setTopBottom(true, false, 11.630000, 108.380000)
	registerVal2:addElement(registerVal10)
	registerVal2.CleanCarryCount = registerVal10
	registerVal11 = {}
	registerVal12 = {}
	local function __FUNC_61B7_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.Glow00:setLeftRight(true, false, -5.880000, 94.940000)
		registerVal2.Glow00:setTopBottom(true, false, -45.000000, 123.000000)
		registerVal2.Glow00:setRGB(0.070000, 0.270000, 0.310000)
		registerVal2.Glow00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Glow:setLeftRight(true, false, -8.500000, 100.500000)
		registerVal2.Glow:setTopBottom(true, false, -16.250000, 96.750000)
		registerVal2.Glow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.Glow:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.AllyFlag:setLeftRight(true, false, 23.000000, 69.000000)
		registerVal2.AllyFlag:setTopBottom(true, false, 0.000000, 80.000000)
		registerVal2.AllyFlag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Glow0:setLeftRight(true, false, -5.880000, 94.940000)
		registerVal2.Glow0:setTopBottom(true, false, -45.000000, 123.000000)
		registerVal2.Glow0:setRGB(0.070000, 0.270000, 0.310000)
		registerVal2.Glow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.AxisFlag:setLeftRight(true, false, 23.000000, 69.000000)
		registerVal2.AxisFlag:setTopBottom(true, false, 0.000000, 80.000000)
		registerVal2.AxisFlag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.AmmoWidgetSDBomb:setLeftRight(true, false, 10.000000, 80.000000)
		registerVal2.AmmoWidgetSDBomb:setTopBottom(true, false, 25.000000, 95.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.AmmoWidgetBall:setLeftRight(true, false, 10.000000, 80.000000)
		registerVal2.AmmoWidgetBall:setTopBottom(true, false, 25.000000, 95.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.CleanCarryCount:setLeftRight(true, false, -5.000000, 71.000000)
		registerVal2.CleanCarryCount:setTopBottom(true, false, 11.630000, 108.380000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_61B7_
	local function __FUNC_68F6_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_6B3B_(arg0, arg1)
			local function __FUNC_6D29_(arg0, arg1)
				local function __FUNC_6F23_(arg0, arg1)
					local function __FUNC_711B_(arg0, arg1)
						local function __FUNC_7313_(arg0, arg1)
							local function __FUNC_750B_(arg0, arg1)
								local function __FUNC_7683_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setLeftRight(true, false, -4.500000, 96.500000)
									arg0:setTopBottom(true, false, -41.000000, 123.000000)
									arg0:setRGB(0.180000, 0.330000, 0.360000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_7683_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 409.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7683_)
							end

							if arg1.interrupted then
								__FUNC_750B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, -4.500000, 96.500000)
							arg0:setTopBottom(true, false, -41.000000, 123.000000)
							arg0:setRGB(0.180000, 0.330000, 0.360000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_750B_)
						end

						if arg1.interrupted then
							__FUNC_7313_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, -15.000000, 101.000000)
						arg0:setTopBottom(true, false, -51.500000, 127.500000)
						arg0:setRGB(0.070000, 0.270000, 0.310000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7313_)
					end

					if arg1.interrupted then
						__FUNC_711B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, -12.250000, 99.630000)
					arg0:setTopBottom(true, false, -44.110000, 123.200000)
					arg0:setRGB(0.120000, 0.290000, 0.340000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_711B_)
				end

				if arg1.interrupted then
					__FUNC_6F23_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, -8.630000, 97.810000)
				arg0:setTopBottom(true, false, -34.370000, 117.540000)
				arg0:setRGB(0.180000, 0.330000, 0.370000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6F23_)
			end

			if arg1.interrupted then
				__FUNC_6D29_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -7.000000, 97.000000)
			arg0:setTopBottom(true, false, -30.000000, 115.000000)
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6D29_)
		end

		registerVal4:completeAnimation()
		registerVal2.Glow:setLeftRight(true, false, -4.000000, 96.000000)
		registerVal2.Glow:setTopBottom(true, false, 46.000000, 46.000000)
		registerVal2.Glow:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.Glow:setAlpha(1.000000)
		__FUNC_6B3B_(registerVal4, {})
		local function __FUNC_78D8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.AllyFlag:setAlpha(0.000000)
		__FUNC_78D8_(registerVal5, {})
		local function __FUNC_7A8D_(arg0, arg1)
			local function __FUNC_7C07_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_7C07_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7C07_)
		end

		registerVal6:completeAnimation()
		registerVal2.Glow0:setAlpha(0.000000)
		__FUNC_7A8D_(registerVal6, {})
	end

	registerVal12.ShowAllyFlag = __FUNC_68F6_
	local function __FUNC_7DB9_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_802D_(arg0, arg1)
			local function __FUNC_821D_(arg0, arg1)
				local function __FUNC_8417_(arg0, arg1)
					local function __FUNC_85DC_(arg0, arg1)
						local function __FUNC_87A4_(arg0, arg1)
							local function __FUNC_896C_(arg0, arg1)
								local function __FUNC_8AE7_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setLeftRight(true, false, -4.500000, 96.500000)
									arg0:setTopBottom(true, false, -41.000000, 123.000000)
									arg0:setRGB(0.060000, 0.000000, 0.130000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_8AE7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 409.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8AE7_)
							end

							if arg1.interrupted then
								__FUNC_896C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, -4.500000, 96.500000)
							arg0:setTopBottom(true, false, -41.000000, 123.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_896C_)
						end

						if arg1.interrupted then
							__FUNC_87A4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 389.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, -15.000000, 101.000000)
						arg0:setTopBottom(true, false, -51.500000, 127.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_87A4_)
					end

					if arg1.interrupted then
						__FUNC_85DC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, -10.130000, 98.560000)
					arg0:setTopBottom(true, false, -32.000000, 110.440000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_85DC_)
				end

				if arg1.interrupted then
					__FUNC_8417_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, -8.630000, 97.810000)
				arg0:setTopBottom(true, false, -31.040000, 112.630000)
				arg0:setRGB(0.060000, 0.000000, 0.130000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8417_)
			end

			if arg1.interrupted then
				__FUNC_821D_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -7.000000, 97.000000)
			arg0:setTopBottom(true, false, -30.000000, 115.000000)
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_821D_)
		end

		registerVal4:completeAnimation()
		registerVal2.Glow:setLeftRight(true, false, -4.000000, 96.000000)
		registerVal2.Glow:setTopBottom(true, false, 46.000000, 46.000000)
		registerVal2.Glow:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.Glow:setAlpha(1.000000)
		__FUNC_802D_(registerVal4, {})
		local function __FUNC_8D37_(arg0, arg1)
			local function __FUNC_8EAF_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(0.060000, 0.000000, 0.130000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_8EAF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8EAF_)
		end

		registerVal6:completeAnimation()
		registerVal2.Glow0:setRGB(0.060000, 0.000000, 0.130000)
		registerVal2.Glow0:setAlpha(0.000000)
		__FUNC_8D37_(registerVal6, {})
		local function __FUNC_908F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AxisFlag:setAlpha(0.000000)
		__FUNC_908F_(registerVal7, {})
	end

	registerVal12.ShowAxisFlag = __FUNC_7DB9_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_9241_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_99AA_(arg0, arg1)
			local function __FUNC_9B23_(arg0, arg1)
				local function __FUNC_9C9B_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 420.000000, true, true, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, -100.820000, 0.000000)
					arg0:setTopBottom(true, false, -45.000000, 123.000000)
					arg0:setRGB(0.070000, 0.270000, 0.310000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_9C9B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 289.000000, true, true, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9C9B_)
			end

			if arg1.interrupted then
				__FUNC_9B23_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.010000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9B23_)
		end

		registerVal3:completeAnimation()
		registerVal2.Glow00:setLeftRight(true, false, -100.820000, 0.000000)
		registerVal2.Glow00:setTopBottom(true, false, -45.000000, 123.000000)
		registerVal2.Glow00:setRGB(0.070000, 0.270000, 0.310000)
		registerVal2.Glow00:setAlpha(0.000000)
		__FUNC_99AA_(registerVal3, {})
		local function __FUNC_9EEB_(arg0, arg1)
			local function __FUNC_A063_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 689.000000, true, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, -79.440000, -14.440000)
				arg0:setTopBottom(true, false, -16.250000, 96.750000)
				arg0:setRGB(1.000000, 1.000000, 1.000000)
				arg0:setAlpha(0.000000)
				arg0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_A063_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 310.000000, true, true, CoD.TweenType.Linear)
			arg0:setAlpha(0.630000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A063_)
		end

		registerVal4:completeAnimation()
		registerVal2.Glow:setLeftRight(true, false, -79.440000, -14.440000)
		registerVal2.Glow:setTopBottom(true, false, -16.250000, 96.750000)
		registerVal2.Glow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.Glow:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		__FUNC_9EEB_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.AllyFlag:setLeftRight(true, false, -71.940000, -25.940000)
		registerVal2.AllyFlag:setTopBottom(true, false, 0.000000, 80.000000)
		registerVal2.AllyFlag:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_A338_(arg0, arg1)
			local function __FUNC_A4B3_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 689.000000, true, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, -100.820000, 0.000000)
				arg0:setTopBottom(true, false, -45.000000, 123.000000)
				arg0:setRGB(0.070000, 0.270000, 0.310000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_A4B3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 310.000000, true, true, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A4B3_)
		end

		registerVal6:completeAnimation()
		registerVal2.Glow0:setLeftRight(true, false, -100.820000, 0.000000)
		registerVal2.Glow0:setTopBottom(true, false, -45.000000, 123.000000)
		registerVal2.Glow0:setRGB(0.070000, 0.270000, 0.310000)
		registerVal2.Glow0:setAlpha(0.000000)
		__FUNC_A338_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.AxisFlag:setLeftRight(true, false, 23.000000, 69.000000)
		registerVal2.AxisFlag:setTopBottom(true, false, 0.000000, 80.000000)
		registerVal2.AxisFlag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.AmmoWidgetSDBomb:setLeftRight(true, false, 10.000000, 80.000000)
		registerVal2.AmmoWidgetSDBomb:setTopBottom(true, false, 25.000000, 95.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.AmmoWidgetBall:setLeftRight(true, false, 10.000000, 80.000000)
		registerVal2.AmmoWidgetBall:setTopBottom(true, false, 25.000000, 95.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.CleanCarryCount:setLeftRight(true, false, -5.000000, 71.000000)
		registerVal2.CleanCarryCount:setTopBottom(true, false, 11.630000, 108.380000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal12.DefaultClip = __FUNC_9241_
	local function __FUNC_A703_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.Glow00:setLeftRight(true, false, -100.820000, 0.000000)
		registerVal2.Glow00:setTopBottom(true, false, -45.000000, 123.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_AB25_(arg0, arg1)
			local function __FUNC_AC9F_(arg0, arg1)
				local function __FUNC_AE27_(arg0, arg1)
					local function __FUNC_AFAF_(arg0, arg1)
						local function __FUNC_B12D_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(true, false, -99.440000, 1.560000)
							arg0:setTopBottom(true, false, 39.000000, 58.000000)
							arg0:setRGB(0.000000, 0.000000, 0.000000)
							arg0:setAlpha(1.000000)
							arg0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_B12D_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setRGB(1.000000, 1.000000, 1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B12D_)
					end

					if arg1.interrupted then
						__FUNC_AFAF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 450.000000, false, false, CoD.TweenType.Linear)
					arg0:setRGB(0.180000, 0.330000, 0.370000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AFAF_)
				end

				if arg1.interrupted then
					__FUNC_AE27_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
				arg0:setRGB(0.070000, 0.270000, 0.310000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AE27_)
			end

			if arg1.interrupted then
				__FUNC_AC9F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AC9F_)
		end

		registerVal4:completeAnimation()
		registerVal2.Glow:setLeftRight(true, false, -99.440000, 1.560000)
		registerVal2.Glow:setTopBottom(true, false, -41.000000, 123.000000)
		registerVal2.Glow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.Glow:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		__FUNC_AB25_(registerVal4, {})
		local function __FUNC_B404_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -71.940000, -25.940000)
			arg0:setTopBottom(true, false, 0.000000, 80.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.AllyFlag:setLeftRight(true, false, -71.940000, -25.940000)
		registerVal2.AllyFlag:setTopBottom(true, false, 0.000000, 80.000000)
		registerVal2.AllyFlag:setAlpha(1.000000)
		__FUNC_B404_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Glow0:setLeftRight(true, false, -100.820000, 0.000000)
		registerVal2.Glow0:setTopBottom(true, false, -45.000000, 123.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal12.Hide = __FUNC_A703_
	registerVal11.ShowAllyFlagDual = registerVal12
	registerVal12 = {}
	local function __FUNC_B624_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_BDA2_(arg0, arg1)
			local function __FUNC_BF4E_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 430.000000, true, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, -100.820000, 0.000000)
				arg0:setTopBottom(true, false, -48.000000, 120.000000)
				arg0:setRGB(0.540000, 0.120000, 0.160000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_BF4E_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Linear)
			arg0:setRGB(0.540000, 0.120000, 0.160000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BF4E_)
		end

		registerVal3:completeAnimation()
		registerVal2.Glow00:setLeftRight(true, false, -100.820000, 0.000000)
		registerVal2.Glow00:setTopBottom(true, false, -48.000000, 120.000000)
		registerVal2.Glow00:setRGB(0.060000, 0.000000, 0.130000)
		registerVal2.Glow00:setAlpha(0.000000)
		__FUNC_BDA2_(registerVal3, {})
		local function __FUNC_C19F_(arg0, arg1)
			local function __FUNC_C317_(arg0, arg1)
				local function __FUNC_C48F_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 180.000000, true, true, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, -80.440000, -15.440000)
					arg0:setTopBottom(true, false, -19.250000, 93.750000)
					arg0:setRGB(1.000000, 1.000000, 1.000000)
					arg0:setAlpha(0.000000)
					arg0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_C48F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 519.000000, true, true, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C48F_)
			end

			if arg1.interrupted then
				__FUNC_C317_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C317_)
		end

		registerVal4:completeAnimation()
		registerVal2.Glow:setLeftRight(true, false, -80.440000, -15.440000)
		registerVal2.Glow:setTopBottom(true, false, -19.250000, 93.750000)
		registerVal2.Glow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.Glow:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		__FUNC_C19F_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.AllyFlag:setLeftRight(true, false, 23.000000, 69.000000)
		registerVal2.AllyFlag:setTopBottom(true, false, 0.000000, 80.000000)
		registerVal2.AllyFlag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_C764_(arg0, arg1)
			local function __FUNC_C8DF_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 519.000000, true, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, -100.820000, 0.000000)
				arg0:setTopBottom(true, false, -55.000000, 113.000000)
				arg0:setRGB(0.540000, 0.120000, 0.160000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_C8DF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Linear)
			arg0:setAlpha(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C8DF_)
		end

		registerVal6:completeAnimation()
		registerVal2.Glow0:setLeftRight(true, false, -100.820000, 0.000000)
		registerVal2.Glow0:setTopBottom(true, false, -55.000000, 113.000000)
		registerVal2.Glow0:setRGB(0.540000, 0.120000, 0.160000)
		registerVal2.Glow0:setAlpha(0.000000)
		__FUNC_C764_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.AxisFlag:setLeftRight(true, false, -71.940000, -25.940000)
		registerVal2.AxisFlag:setTopBottom(true, false, 0.000000, 80.000000)
		registerVal2.AxisFlag:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.AmmoWidgetSDBomb:setLeftRight(true, false, 10.000000, 80.000000)
		registerVal2.AmmoWidgetSDBomb:setTopBottom(true, false, 25.000000, 95.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.AmmoWidgetBall:setLeftRight(true, false, 10.000000, 80.000000)
		registerVal2.AmmoWidgetBall:setTopBottom(true, false, 25.000000, 95.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.CleanCarryCount:setLeftRight(true, false, -5.000000, 71.000000)
		registerVal2.CleanCarryCount:setTopBottom(true, false, 11.630000, 108.380000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal12.DefaultClip = __FUNC_B624_
	local function __FUNC_CB2F_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.Glow00:setLeftRight(true, false, -100.820000, 0.000000)
		registerVal2.Glow00:setTopBottom(true, false, -45.000000, 123.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_CEB7_(arg0, arg1)
			local function __FUNC_D02F_(arg0, arg1)
				local function __FUNC_D1B7_(arg0, arg1)
					local function __FUNC_D30C_(arg0, arg1)
						local function __FUNC_D48D_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(true, false, -99.440000, 1.560000)
							arg0:setTopBottom(true, false, 39.000000, 61.500000)
							arg0:setRGB(0.000000, 0.000000, 0.000000)
							arg0:setAlpha(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_D48D_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setRGB(1.000000, 1.000000, 1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D48D_)
					end

					if arg1.interrupted then
						__FUNC_D30C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 450.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D30C_)
				end

				if arg1.interrupted then
					__FUNC_D1B7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
				arg0:setRGB(0.060000, 0.000000, 0.130000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D1B7_)
			end

			if arg1.interrupted then
				__FUNC_D02F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D02F_)
		end

		registerVal4:completeAnimation()
		registerVal2.Glow:setLeftRight(true, false, -99.440000, 1.560000)
		registerVal2.Glow:setTopBottom(true, false, -41.000000, 123.000000)
		registerVal2.Glow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_CEB7_(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.Glow0:setLeftRight(true, false, -100.820000, 0.000000)
		registerVal2.Glow0:setTopBottom(true, false, -45.000000, 123.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_D6DA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 839.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -73.940000, -21.940000)
			arg0:setTopBottom(true, false, 0.000000, 80.500000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AxisFlag:setLeftRight(true, false, -73.940000, -21.940000)
		registerVal2.AxisFlag:setTopBottom(true, false, 0.000000, 80.500000)
		registerVal2.AxisFlag:setAlpha(1.000000)
		__FUNC_D6DA_(registerVal7, {})
	end

	registerVal12.Hide = __FUNC_CB2F_
	registerVal11.ShowAxisFlagDual = registerVal12
	registerVal12 = {}
	local function __FUNC_D8F8_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_E059_(arg0, arg1)
			local function __FUNC_E1D3_(arg0, arg1)
				local function __FUNC_E34B_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 420.000000, true, true, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, -5.880000, 94.940000)
					arg0:setTopBottom(true, false, -45.000000, 123.000000)
					arg0:setRGB(0.070000, 0.270000, 0.310000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_E34B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 289.000000, true, true, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E34B_)
			end

			if arg1.interrupted then
				__FUNC_E1D3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.010000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E1D3_)
		end

		registerVal3:completeAnimation()
		registerVal2.Glow00:setLeftRight(true, false, -5.880000, 94.940000)
		registerVal2.Glow00:setTopBottom(true, false, -45.000000, 123.000000)
		registerVal2.Glow00:setRGB(0.070000, 0.270000, 0.310000)
		registerVal2.Glow00:setAlpha(0.000000)
		__FUNC_E059_(registerVal3, {})
		local function __FUNC_E5A0_(arg0, arg1)
			local function __FUNC_E71B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 689.000000, true, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 15.500000, 80.500000)
				arg0:setTopBottom(true, false, -16.250000, 96.750000)
				arg0:setRGB(1.000000, 1.000000, 1.000000)
				arg0:setAlpha(0.000000)
				arg0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_E71B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 310.000000, true, true, CoD.TweenType.Linear)
			arg0:setAlpha(0.630000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E71B_)
		end

		registerVal4:completeAnimation()
		registerVal2.Glow:setLeftRight(true, false, 15.500000, 80.500000)
		registerVal2.Glow:setTopBottom(true, false, -16.250000, 96.750000)
		registerVal2.Glow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.Glow:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		__FUNC_E5A0_(registerVal4, {})
		local function __FUNC_E9F0_(arg0, arg1)
			local function __FUNC_EBB8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 420.000000, true, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 23.000000, 69.000000)
				arg0:setTopBottom(true, false, 0.000000, 80.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_EBB8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 310.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 21.000000, 72.000000)
			arg0:setTopBottom(true, false, 0.000000, 87.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EBB8_)
		end

		registerVal5:completeAnimation()
		registerVal2.AllyFlag:setLeftRight(true, false, 23.000000, 69.000000)
		registerVal2.AllyFlag:setTopBottom(true, false, 0.000000, 80.000000)
		registerVal2.AllyFlag:setAlpha(1.000000)
		__FUNC_E9F0_(registerVal5, {})
		local function __FUNC_EDDD_(arg0, arg1)
			local function __FUNC_EF57_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 689.000000, true, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, -5.880000, 94.940000)
				arg0:setTopBottom(true, false, -45.000000, 123.000000)
				arg0:setRGB(0.070000, 0.270000, 0.310000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_EF57_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 310.000000, true, true, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EF57_)
		end

		registerVal6:completeAnimation()
		registerVal2.Glow0:setLeftRight(true, false, -5.880000, 94.940000)
		registerVal2.Glow0:setTopBottom(true, false, -45.000000, 123.000000)
		registerVal2.Glow0:setRGB(0.070000, 0.270000, 0.310000)
		registerVal2.Glow0:setAlpha(0.000000)
		__FUNC_EDDD_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.AxisFlag:setLeftRight(true, false, 23.000000, 69.000000)
		registerVal2.AxisFlag:setTopBottom(true, false, 0.000000, 80.000000)
		registerVal2.AxisFlag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.AmmoWidgetSDBomb:setLeftRight(true, false, 10.000000, 80.000000)
		registerVal2.AmmoWidgetSDBomb:setTopBottom(true, false, 25.000000, 95.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.AmmoWidgetBall:setLeftRight(true, false, 10.000000, 80.000000)
		registerVal2.AmmoWidgetBall:setTopBottom(true, false, 25.000000, 95.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.CleanCarryCount:setLeftRight(true, false, -5.000000, 71.000000)
		registerVal2.CleanCarryCount:setTopBottom(true, false, 11.630000, 108.380000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal12.DefaultClip = __FUNC_D8F8_
	local function __FUNC_F1AC_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_F443_(arg0, arg1)
			local function __FUNC_F5BB_(arg0, arg1)
				local function __FUNC_F7B3_(arg0, arg1)
					local function __FUNC_F9AB_(arg0, arg1)
						local function __FUNC_FB99_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(true, false, -4.000000, 96.000000)
							arg0:setTopBottom(true, false, 46.500000, 46.500000)
							arg0:setRGB(0.000000, 0.000000, 0.000000)
							arg0:setAlpha(1.000000)
							arg0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_FB99_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, -7.000000, 97.000000)
						arg0:setTopBottom(true, false, -19.500000, 99.500000)
						arg0:setRGB(1.000000, 1.000000, 1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FB99_)
					end

					if arg1.interrupted then
						__FUNC_F9AB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 450.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, -7.170000, 97.090000)
					arg0:setTopBottom(true, false, -20.200000, 100.110000)
					arg0:setRGB(0.180000, 0.330000, 0.370000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F9AB_)
				end

				if arg1.interrupted then
					__FUNC_F7B3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, -15.000000, 101.000000)
				arg0:setTopBottom(true, false, -51.500000, 127.500000)
				arg0:setRGB(0.070000, 0.270000, 0.310000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F7B3_)
			end

			if arg1.interrupted then
				__FUNC_F5BB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F5BB_)
		end

		registerVal4:completeAnimation()
		registerVal2.Glow:setLeftRight(true, false, -4.500000, 96.500000)
		registerVal2.Glow:setTopBottom(true, false, -41.000000, 123.000000)
		registerVal2.Glow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.Glow:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		__FUNC_F443_(registerVal4, {})
		local function __FUNC_FE6B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.AllyFlag:setAlpha(1.000000)
		__FUNC_FE6B_(registerVal5, {})
	end

	registerVal12.Hide = __FUNC_F1AC_
	registerVal11.ShowAllyFlag = registerVal12
	registerVal12 = {}
	local function __FUNC_1001D_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_10791_(arg0, arg1)
			local function __FUNC_10976_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 430.000000, true, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, -5.880000, 94.940000)
				arg0:setTopBottom(true, false, -53.000000, 115.000000)
				arg0:setRGB(0.540000, 0.120000, 0.160000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_10976_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, -53.000000, 115.000000)
			arg0:setRGB(0.540000, 0.120000, 0.160000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10976_)
		end

		registerVal3:completeAnimation()
		registerVal2.Glow00:setLeftRight(true, false, -5.880000, 94.940000)
		registerVal2.Glow00:setTopBottom(true, false, -48.000000, 120.000000)
		registerVal2.Glow00:setRGB(0.060000, 0.000000, 0.130000)
		registerVal2.Glow00:setAlpha(0.000000)
		__FUNC_10791_(registerVal3, {})
		local function __FUNC_10BCC_(arg0, arg1)
			local function __FUNC_10DB7_(arg0, arg1)
				local function __FUNC_10F2F_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 180.000000, true, true, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 12.500000, 77.500000)
					arg0:setTopBottom(true, false, -18.250000, 94.750000)
					arg0:setRGB(1.000000, 1.000000, 1.000000)
					arg0:setAlpha(0.000000)
					arg0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_10F2F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 519.000000, true, true, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10F2F_)
			end

			if arg1.interrupted then
				__FUNC_10DB7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 12.500000, 77.500000)
			arg0:setTopBottom(true, false, -18.250000, 94.750000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10DB7_)
		end

		registerVal4:completeAnimation()
		registerVal2.Glow:setLeftRight(true, false, 14.500000, 79.500000)
		registerVal2.Glow:setTopBottom(true, false, -19.250000, 93.750000)
		registerVal2.Glow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.Glow:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		__FUNC_10BCC_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.AllyFlag:setLeftRight(true, false, 23.000000, 69.000000)
		registerVal2.AllyFlag:setTopBottom(true, false, 0.000000, 80.000000)
		registerVal2.AllyFlag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_11204_(arg0, arg1)
			local function __FUNC_113EF_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 519.000000, true, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, -14.880000, 104.940000)
				arg0:setTopBottom(true, false, -73.000000, 137.000000)
				arg0:setRGB(0.540000, 0.120000, 0.160000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_113EF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -14.880000, 104.940000)
			arg0:setTopBottom(true, false, -73.000000, 137.000000)
			arg0:setAlpha(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_113EF_)
		end

		registerVal6:completeAnimation()
		registerVal2.Glow0:setLeftRight(true, false, -5.880000, 94.940000)
		registerVal2.Glow0:setTopBottom(true, false, -55.000000, 113.000000)
		registerVal2.Glow0:setRGB(0.540000, 0.120000, 0.160000)
		registerVal2.Glow0:setAlpha(0.000000)
		__FUNC_11204_(registerVal6, {})
		local function __FUNC_11644_(arg0, arg1)
			local function __FUNC_1180C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 430.000000, true, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 23.000000, 69.000000)
				arg0:setTopBottom(true, false, 0.000000, 80.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1180C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 21.000000, 72.000000)
			arg0:setTopBottom(true, false, 0.000000, 87.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1180C_)
		end

		registerVal7:completeAnimation()
		registerVal2.AxisFlag:setLeftRight(true, false, 23.000000, 69.000000)
		registerVal2.AxisFlag:setTopBottom(true, false, 0.000000, 80.000000)
		registerVal2.AxisFlag:setAlpha(1.000000)
		__FUNC_11644_(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.AmmoWidgetSDBomb:setLeftRight(true, false, 10.000000, 80.000000)
		registerVal2.AmmoWidgetSDBomb:setTopBottom(true, false, 25.000000, 95.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.AmmoWidgetBall:setLeftRight(true, false, 10.000000, 80.000000)
		registerVal2.AmmoWidgetBall:setTopBottom(true, false, 25.000000, 95.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.CleanCarryCount:setLeftRight(true, false, -5.000000, 71.000000)
		registerVal2.CleanCarryCount:setTopBottom(true, false, 11.630000, 108.380000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal12.DefaultClip = __FUNC_1001D_
	local function __FUNC_11A31_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_11C8C_(arg0, arg1)
			local function __FUNC_11E07_(arg0, arg1)
				local function __FUNC_11FFF_(arg0, arg1)
					local function __FUNC_121C4_(arg0, arg1)
						local function __FUNC_123B5_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(true, false, -4.000000, 96.000000)
							arg0:setTopBottom(true, false, 46.500000, 46.500000)
							arg0:setRGB(0.000000, 0.000000, 0.000000)
							arg0:setAlpha(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_123B5_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, -7.000000, 97.000000)
						arg0:setTopBottom(true, false, -19.500000, 99.500000)
						arg0:setRGB(1.000000, 1.000000, 1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_123B5_)
					end

					if arg1.interrupted then
						__FUNC_121C4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 450.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, -7.170000, 97.090000)
					arg0:setTopBottom(true, false, -20.200000, 100.110000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_121C4_)
				end

				if arg1.interrupted then
					__FUNC_11FFF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, -15.000000, 101.000000)
				arg0:setTopBottom(true, false, -51.500000, 127.500000)
				arg0:setRGB(0.060000, 0.000000, 0.130000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11FFF_)
			end

			if arg1.interrupted then
				__FUNC_11E07_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11E07_)
		end

		registerVal4:completeAnimation()
		registerVal2.Glow:setLeftRight(true, false, -4.500000, 96.500000)
		registerVal2.Glow:setTopBottom(true, false, -41.000000, 123.000000)
		registerVal2.Glow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_11C8C_(registerVal4, {})
		local function __FUNC_125FD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 839.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 21.000000, 73.000000)
			arg0:setTopBottom(true, false, 0.000000, 80.500000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AxisFlag:setLeftRight(true, false, 21.000000, 73.000000)
		registerVal2.AxisFlag:setTopBottom(true, false, 0.000000, 80.500000)
		registerVal2.AxisFlag:setAlpha(1.000000)
		__FUNC_125FD_(registerVal7, {})
	end

	registerVal12.Hide = __FUNC_11A31_
	registerVal11.ShowAxisFlag = registerVal12
	registerVal12 = {}
	local function __FUNC_1281C_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.Glow00:setLeftRight(true, false, -5.880000, 94.940000)
		registerVal2.Glow00:setTopBottom(true, false, -45.000000, 123.000000)
		registerVal2.Glow00:setRGB(0.070000, 0.270000, 0.310000)
		registerVal2.Glow00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Glow:setLeftRight(true, false, -8.500000, 100.500000)
		registerVal2.Glow:setTopBottom(true, false, -16.250000, 96.750000)
		registerVal2.Glow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.Glow:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.AllyFlag:setLeftRight(true, false, 23.000000, 69.000000)
		registerVal2.AllyFlag:setTopBottom(true, false, 0.000000, 80.000000)
		registerVal2.AllyFlag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Glow0:setLeftRight(true, false, -5.880000, 94.940000)
		registerVal2.Glow0:setTopBottom(true, false, -45.000000, 123.000000)
		registerVal2.Glow0:setRGB(0.070000, 0.270000, 0.310000)
		registerVal2.Glow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.AxisFlag:setLeftRight(true, false, 23.000000, 69.000000)
		registerVal2.AxisFlag:setTopBottom(true, false, 0.000000, 80.000000)
		registerVal2.AxisFlag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.AmmoWidgetSDBomb:setLeftRight(true, false, -71.000000, -1.000000)
		registerVal2.AmmoWidgetSDBomb:setTopBottom(true, false, 26.500000, 96.500000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.AmmoWidgetBall:setLeftRight(true, false, -71.000000, -1.000000)
		registerVal2.AmmoWidgetBall:setTopBottom(true, false, 26.500000, 96.500000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.CleanCarryCount:setLeftRight(true, false, -72.000000, 4.000000)
		registerVal2.CleanCarryCount:setTopBottom(true, false, 13.130000, 109.880000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_1281C_
	registerVal11.WeaponDual = registerVal12
	registerVal12 = {}
	local function __FUNC_12F63_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.Glow00:setLeftRight(true, false, -5.880000, 94.940000)
		registerVal2.Glow00:setTopBottom(true, false, -45.000000, 123.000000)
		registerVal2.Glow00:setRGB(0.070000, 0.270000, 0.310000)
		registerVal2.Glow00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Glow:setLeftRight(true, false, -8.500000, 100.500000)
		registerVal2.Glow:setTopBottom(true, false, -16.250000, 96.750000)
		registerVal2.Glow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.Glow:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.AllyFlag:setLeftRight(true, false, 23.000000, 69.000000)
		registerVal2.AllyFlag:setTopBottom(true, false, 0.000000, 80.000000)
		registerVal2.AllyFlag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Glow0:setLeftRight(true, false, -5.880000, 94.940000)
		registerVal2.Glow0:setTopBottom(true, false, -45.000000, 123.000000)
		registerVal2.Glow0:setRGB(0.070000, 0.270000, 0.310000)
		registerVal2.Glow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.AxisFlag:setLeftRight(true, false, 23.000000, 69.000000)
		registerVal2.AxisFlag:setTopBottom(true, false, 0.000000, 80.000000)
		registerVal2.AxisFlag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.AmmoWidgetSDBomb:setLeftRight(true, false, 10.000000, 80.000000)
		registerVal2.AmmoWidgetSDBomb:setTopBottom(true, false, 25.000000, 95.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.AmmoWidgetBall:setLeftRight(true, false, 10.000000, 80.000000)
		registerVal2.AmmoWidgetBall:setTopBottom(true, false, 25.000000, 95.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.CleanCarryCount:setLeftRight(true, false, -5.000000, 71.000000)
		registerVal2.CleanCarryCount:setTopBottom(true, false, 11.630000, 108.380000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_12F63_
	local function __FUNC_136A2_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_13952_(arg0, arg1)
			local function __FUNC_13ACB_(arg0, arg1)
				local function __FUNC_13CE6_(arg0, arg1)
					local function __FUNC_13F02_(arg0, arg1)
						local function __FUNC_1411E_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(true, false, 44.530000, 44.530000)
							arg0:setTopBottom(true, false, -10.900000, 117.550000)
							arg0:setRGB(0.180000, 0.330000, 0.360000)
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_1411E_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 25.400000, 66.600000)
						arg0:setTopBottom(true, false, -10.900000, 117.550000)
						arg0:setRGB(0.180000, 0.330000, 0.360000)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1411E_)
					end

					if arg1.interrupted then
						__FUNC_13F02_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 450.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 22.100000, 69.410000)
					arg0:setTopBottom(true, false, -14.210000, 118.360000)
					arg0:setRGB(0.180000, 0.330000, 0.370000)
					arg0:setAlpha(0.050000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13F02_)
				end

				if arg1.interrupted then
					__FUNC_13CE6_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, -15.000000, 101.000000)
				arg0:setTopBottom(true, false, -51.500000, 127.500000)
				arg0:setRGB(0.070000, 0.270000, 0.310000)
				arg0:setAlpha(0.590000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13CE6_)
			end

			if arg1.interrupted then
				__FUNC_13ACB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13ACB_)
		end

		registerVal4:completeAnimation()
		registerVal2.Glow:setLeftRight(true, false, -4.500000, 96.500000)
		registerVal2.Glow:setTopBottom(true, false, -41.000000, 123.000000)
		registerVal2.Glow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_13952_(registerVal4, {})
		local function __FUNC_1436F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 470.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:beginAnimation("keyframe", 449.000000, false, false, CoD.TweenType.Linear)
		registerVal5:setAlpha(1.000000)
		registerVal5:registerEventHandler("transition_complete_keyframe", __FUNC_1436F_)
	end

	registerVal12.ShowAllyFlag = __FUNC_136A2_
	local function __FUNC_14521_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_147D2_(arg0, arg1)
			local function __FUNC_1494B_(arg0, arg1)
				local function __FUNC_14B43_(arg0, arg1)
					local function __FUNC_14D08_(arg0, arg1)
						local function __FUNC_14EF3_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(true, false, 44.530000, 44.530000)
							arg0:setTopBottom(true, false, -10.900000, 117.550000)
							arg0:setRGB(0.060000, 0.000000, 0.130000)
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_14EF3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 25.400000, 66.600000)
						arg0:setTopBottom(true, false, -10.900000, 117.550000)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14EF3_)
					end

					if arg1.interrupted then
						__FUNC_14D08_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 450.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 23.680000, 68.060000)
					arg0:setTopBottom(true, false, -12.630000, 117.970000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14D08_)
				end

				if arg1.interrupted then
					__FUNC_14B43_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, -15.000000, 101.000000)
				arg0:setTopBottom(true, false, -51.500000, 127.500000)
				arg0:setRGB(0.060000, 0.000000, 0.130000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14B43_)
			end

			if arg1.interrupted then
				__FUNC_1494B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1494B_)
		end

		registerVal4:completeAnimation()
		registerVal2.Glow:setLeftRight(true, false, -4.500000, 96.500000)
		registerVal2.Glow:setTopBottom(true, false, -41.000000, 123.000000)
		registerVal2.Glow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_147D2_(registerVal4, {})
		local function __FUNC_1513E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 450.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:beginAnimation("keyframe", 469.000000, false, false, CoD.TweenType.Linear)
		registerVal7:setAlpha(1.000000)
		registerVal7:registerEventHandler("transition_complete_keyframe", __FUNC_1513E_)
	end

	registerVal12.ShowAxisFlag = __FUNC_14521_
	registerVal11.Hide = registerVal12
	registerVal2.clipsPerState = registerVal11
	registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "ShowAllyFlagDual"
	local function __FUNC_152F1_(arg0, arg2, arg3)
		local registerVal3 = AmICarryingEnemyFlag(arg1)
		registerVal3 = IsModelValueEqualTo(arg1, "factions.playerFactionName", "axis")
		if registerVal3 and registerVal3 then
			registerVal3 = IsModelValueGreaterThanOrEqualTo(arg1, "currentWeapon.ammoInDWClip", 0.000000)
		end
		return registerVal3
	end

	registerVal14.condition = __FUNC_152F1_
	local registerVal15 = {}
	registerVal15.stateName = "ShowAxisFlagDual"
	local function __FUNC_15424_(arg0, arg2, arg3)
		local registerVal3 = AmICarryingEnemyFlag(arg1)
		registerVal3 = IsModelValueEqualTo(arg1, "factions.playerFactionName", "allies")
		if registerVal3 and registerVal3 then
			registerVal3 = IsModelValueGreaterThanOrEqualTo(arg1, "currentWeapon.ammoInDWClip", 0.000000)
		end
		return registerVal3
	end

	registerVal15.condition = __FUNC_15424_
	local registerVal16 = {}
	registerVal16.stateName = "ShowAllyFlag"
	local function __FUNC_1555A_(arg0, arg2, arg3)
		local registerVal3 = AmICarryingEnemyFlag(arg1)
		if registerVal3 then
			registerVal3 = IsModelValueEqualTo(arg1, "factions.playerFactionName", "axis")
		end
		return registerVal3
	end

	registerVal16.condition = __FUNC_1555A_
	local registerVal17 = {}
	registerVal17.stateName = "ShowAxisFlag"
	local function __FUNC_1561D_(arg0, arg2, arg3)
		local registerVal3 = AmICarryingEnemyFlag(arg1)
		if registerVal3 then
			registerVal3 = IsModelValueEqualTo(arg1, "factions.playerFactionName", "allies")
		end
		return registerVal3
	end

	registerVal17.condition = __FUNC_1561D_
	local registerVal18 = {}
	registerVal18.stateName = "WeaponDual"
	local function __FUNC_156E3_(arg0, arg2, arg3)
		local registerVal3 = WeaponUsesAmmo(arg1)
		if registerVal3 then
			registerVal3 = IsModelValueGreaterThanOrEqualTo(arg1, "currentWeapon.ammoInDWClip", 0.000000)
		end
		return registerVal3
	end

	registerVal18.condition = __FUNC_156E3_
	local registerVal19 = {}
	registerVal19.stateName = "Hide"
	local function __FUNC_157A3_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal19.condition = __FUNC_157A3_
	registerVal13 = {registerVal14, registerVal15, registerVal16, registerVal17, registerVal18, registerVal19}
	registerVal2:mergeStateConditions(registerVal13)
	registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModel(registerVal14, "CTF.enemyFlagCarrier")
	local function __FUNC_157EC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CTF.enemyFlagCarrier"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal13, __FUNC_157EC_)
	registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModel(registerVal14, "CTF.friendlyFlagCarrier")
	local function __FUNC_15916_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CTF.friendlyFlagCarrier"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal13, __FUNC_15916_)
	registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModel(registerVal14, "deadSpectator.playerIndex")
	local function __FUNC_15A41_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "deadSpectator.playerIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal13, __FUNC_15A41_)
	registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModel(registerVal14, "currentWeapon.ammoInDWClip")
	local function __FUNC_15B6F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.ammoInDWClip"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal13, __FUNC_15B6F_)
	registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModel(registerVal14, "factions.playerFactionName")
	local function __FUNC_15C9C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "factions.playerFactionName"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal13, __FUNC_15C9C_)
	registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModel(registerVal14, "currentWeapon.weapon")
	local function __FUNC_15DCC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.weapon"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal13, __FUNC_15DCC_)
	local function __FUNC_15EF6_(arg0)
		arg0.AllyFlag:close()
		arg0.AxisFlag:close()
		arg0.AmmoWidgetSDBomb:close()
		arg0.AmmoWidgetBall:close()
		arg0.CleanCarryCount:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_15EF6_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

