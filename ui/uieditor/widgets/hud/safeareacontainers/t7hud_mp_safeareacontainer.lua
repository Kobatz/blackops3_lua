-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.ScoreInfo.ScoreInfoContainer")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidgetMPContainer")
require("ui.uieditor.widgets.HUD.fx.EMP_ScoreInfo")
require("ui.uieditor.widgets.HUD.fx.EMP_WeaponInfo")
require("ui.uieditor.widgets.HUD.Map.CompassGroupMPContainer")
require("ui.uieditor.widgets.HUD.MP_VoipWidget.Voip_Container")
require("ui.uieditor.widgets.HUD.MP_ScoreStreakWidget.ScrStk_Container")
require("ui.uieditor.widgets.HUD.MPGametypes.MP_HardcoreInventoryWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.T7Hud_MP_SafeAreaContainer = registerVal1
function CoD.T7Hud_MP_SafeAreaContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.T7Hud_MP_SafeAreaContainer)
	registerVal2.id = "T7Hud_MP_SafeAreaContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.ScoreInfoContainer.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, -177.000000, 437.000000)
	registerVal3:setTopBottom(false, true, -242.000000, 8.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.ScoreInfo = registerVal3
	local registerVal4 = CoD.AmmoWidgetMPContainer.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, -425.000000, -27.000000)
	registerVal4:setTopBottom(false, true, -156.000000, -32.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.AmmoWidgetContainer = registerVal4
	local registerVal5 = CoD.EMP_ScoreInfo.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, -4.000000, 337.000000)
	registerVal5:setTopBottom(false, true, -173.000000, -2.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.EMPScoreInfo = registerVal5
	local registerVal6 = CoD.EMP_WeaponInfo.new(arg0, arg1)
	registerVal6:setLeftRight(false, true, -341.000000, 0.000000)
	registerVal6:setTopBottom(false, true, -171.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.EMPWeaponInfo = registerVal6
	local registerVal7 = CoD.CompassGroupMPContainer.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 6.000000, 289.000000)
	registerVal7:setTopBottom(true, false, -1.330000, 202.670000)
	registerVal2:addElement(registerVal7)
	registerVal2.CompassGroupContainer = registerVal7
	local registerVal8 = CoD.Voip_Container.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 290.000000, 563.000000)
	registerVal8:setTopBottom(true, false, 39.000000, 111.000000)
	registerVal8:setYRot(20.000000)
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "HudStart"
	local function __FUNC_27CF_(arg0, arg2, arg3)
		local registerVal3 = IsModelValueTrue(arg1, "hudItems.playerSpawned")
		if registerVal3 then
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_HUD_VISIBLE)
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
			if registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
				registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_TEAM_SPECTATOR)
			else
			end
		end
		return true
	end

	registerVal12.condition = __FUNC_27CF_
	local registerVal13 = {}
	registerVal13.stateName = "ShowForCodCaster"
	local function __FUNC_2DD9_(arg0, arg2, arg3)
		local registerVal3 = IsCodCaster(arg1)
		registerVal3 = IsCodCasterProfileValueEqualTo(arg1, "shoutcaster_voipdock", 1.000000)
		if registerVal3 and registerVal3 then
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
		end
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_2DD9_
	registerVal11 = {registerVal12, registerVal13}
	registerVal8:mergeStateConditions(registerVal11)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "hudItems.playerSpawned")
	local function __FUNC_2F40_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hudItems.playerSpawned"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_2F40_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE))
	local function __FUNC_306C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE)
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_306C_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_HARDCORE))
	local function __FUNC_31F6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_HARDCORE)
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_31F6_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED))
	local function __FUNC_337F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED)
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_337F_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM))
	local function __FUNC_3505_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_3505_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN))
	local function __FUNC_369C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN)
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_369C_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM))
	local function __FUNC_3833_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM)
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_3833_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED))
	local function __FUNC_39B9_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED)
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_39B9_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE))
	local function __FUNC_3B46_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_3B46_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_SCOPED))
	local function __FUNC_3CCC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_SCOPED)
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_3CCC_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_VEHICLE))
	local function __FUNC_3E54_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_VEHICLE)
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_3E54_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE))
	local function __FUNC_3FDD_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE)
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_3FDD_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN))
	local function __FUNC_416C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_416C_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC))
	local function __FUNC_42FA_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC)
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_42FA_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE))
	local function __FUNC_4492_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE)
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_4492_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_TEAM_SPECTATOR))
	local function __FUNC_4619_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_TEAM_SPECTATOR)
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_4619_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "factions.isCoDCaster")
	local function __FUNC_47A5_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "factions.isCoDCaster"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_47A5_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "CodCaster.profileSettingsUpdated")
	local function __FUNC_48CE_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CodCaster.profileSettingsUpdated"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_48CE_)
	registerVal2:addElement(registerVal8)
	registerVal2.VoipContainer0 = registerVal8
	local registerVal9 = CoD.ScrStk_Container.new(arg0, arg1)
	registerVal9:setLeftRight(false, true, -130.540000, -22.000000)
	registerVal9:setTopBottom(false, true, -303.410000, -128.000000)
	registerVal9:setXRot(15.000000)
	registerVal9:setYRot(-40.000000)
	registerVal12 = {}
	registerVal13 = {}
	registerVal13.stateName = "HudStart"
	local function __FUNC_4A02_(arg0, arg2, arg3)
		local registerVal3 = IsModelValueTrue(arg1, "hudItems.playerSpawned")
		if registerVal3 then
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
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_GAME_ENDED)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_TEAM_SPECTATOR)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IS_SCOPED)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_SELECTING_LOCATION)
			registerVal3 = IsGameTypeEqualToString("gun")
			registerVal3 = IsGameTypeEqualToString("infect")
			registerVal3 = IsGameTypeEqualToString("prop")
			registerVal3 = IsGameTypeEqualToString("sniperonly")
			registerVal3 = IsGameTypeEqualToString("sas")
			if registerVal3 and registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
				registerVal3 = IsSpectatingInvalidPlayer(arg1)
			else
			end
		end
		return true
	end

	registerVal13.condition = __FUNC_4A02_
	local registerVal14 = {}
	registerVal14.stateName = "ShowForCodCaster"
	local function __FUNC_5245_(arg0, arg2, arg3)
		local registerVal3 = IsCodCaster(arg1)
		registerVal3 = IsCodCasterProfileValueEqualTo(arg1, "shoutcaster_scorestreaks", 1.000000)
		registerVal3 = IsModelValueTrue(arg1, "hudItems.playerSpawned")
		if registerVal3 and registerVal3 and registerVal3 then
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
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_GAME_ENDED)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IS_SCOPED)
			registerVal3 = IsGameTypeEqualToString("gun")
			registerVal3 = IsGameTypeEqualToString("infect")
			registerVal3 = IsGameTypeEqualToString("prop")
			registerVal3 = IsGameTypeEqualToString("sniperonly")
			registerVal3 = IsGameTypeEqualToString("sas")
			if registerVal3 and registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
				registerVal3 = IsSpectatingInvalidPlayer(arg1)
			else
			end
		end
		return true
	end

	registerVal14.condition = __FUNC_5245_
	registerVal12 = {registerVal13, registerVal14}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, "hudItems.playerSpawned")
	local function __FUNC_5A69_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hudItems.playerSpawned"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_5A69_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE))
	local function __FUNC_5B94_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE)
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_5B94_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE))
	local function __FUNC_5D1E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE)
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_5D1E_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_HARDCORE))
	local function __FUNC_5EAD_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_HARDCORE)
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_5EAD_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED))
	local function __FUNC_6037_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED)
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_6037_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM))
	local function __FUNC_61BD_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_61BD_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN))
	local function __FUNC_6354_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN)
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_6354_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM))
	local function __FUNC_64EB_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM)
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_64EB_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED))
	local function __FUNC_6671_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED)
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_6671_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE))
	local function __FUNC_67FE_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_67FE_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_SCOPED))
	local function __FUNC_6984_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_SCOPED)
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_6984_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_VEHICLE))
	local function __FUNC_6B0C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_VEHICLE)
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_6B0C_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE))
	local function __FUNC_6C95_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE)
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_6C95_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN))
	local function __FUNC_6E24_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_6E24_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC))
	local function __FUNC_6FB2_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC)
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_6FB2_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE))
	local function __FUNC_714A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE)
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_714A_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_TEAM_SPECTATOR))
	local function __FUNC_72D1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_TEAM_SPECTATOR)
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_72D1_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SELECTING_LOCATION))
	local function __FUNC_745D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SELECTING_LOCATION)
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_745D_)
	local function __FUNC_75ED_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "clientNum"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:linkToElementModel(registerVal9, "clientNum", true, __FUNC_75ED_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, "deadSpectator.playerIndex")
	local function __FUNC_770B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "deadSpectator.playerIndex"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_770B_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, "factions.isCoDCaster")
	local function __FUNC_7837_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "factions.isCoDCaster"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_7837_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, "CodCaster.profileSettingsUpdated")
	local function __FUNC_795E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CodCaster.profileSettingsUpdated"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_795E_)
	registerVal2:addElement(registerVal9)
	registerVal2.ScrStkContainer = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 25.000000, 235.740000)
	registerVal10:setTopBottom(false, true, -103.000000, -41.000000)
	registerVal10:setRGB(0.750000, 0.850000, 1.000000)
	registerVal10:setZRot(8.000000)
	registerVal10:setImage(RegisterImage("uie_radial_gradient"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.ScoreInfoFlash = registerVal10
	registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, true, -239.050000, -12.000000)
	registerVal11:setTopBottom(false, true, -93.000000, -35.000000)
	registerVal11:setRGB(0.750000, 0.850000, 1.000000)
	registerVal11:setZRot(-8.000000)
	registerVal11:setImage(RegisterImage("uie_radial_gradient"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.AmmoWidgetFlash = registerVal11
	registerVal12 = CoD.MP_HardcoreInventoryWidget.new(arg0, arg1)
	registerVal12:setLeftRight(false, true, -142.000000, -64.000000)
	registerVal12:setTopBottom(false, true, -132.330000, -38.670000)
	registerVal2:addElement(registerVal12)
	registerVal2.MPHardcoreInventoryWidget = registerVal12
	registerVal13 = {}
	registerVal14 = {}
	local function __FUNC_7A92_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.ScoreInfo:setLeftRight(true, false, -177.000000, 437.000000)
		registerVal2.ScoreInfo:setTopBottom(false, true, -242.000000, 8.000000)
		registerVal2.ScoreInfo:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreInfo:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.AmmoWidgetContainer:setLeftRight(false, true, -425.000000, -27.000000)
		registerVal2.AmmoWidgetContainer:setTopBottom(false, true, -156.000000, -32.000000)
		registerVal2.AmmoWidgetContainer:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.AmmoWidgetContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.CompassGroupContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.VoipContainer0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.ScrStkContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.ScoreInfoFlash:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.AmmoWidgetFlash:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal14.DefaultClip = __FUNC_7A92_
	local function __FUNC_7F18_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_8226_(arg0, arg1)
			local function __FUNC_841F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 250.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, -188.000000, 426.000000)
				arg0:setTopBottom(false, true, -232.000000, 18.000000)
				arg0:setRGB(1.000000, 1.000000, 1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_841F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, true, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -182.500000, 431.500000)
			arg0:setTopBottom(false, true, -237.000000, 13.000000)
			arg0:setRGB(0.200000, 0.530000, 1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_841F_)
		end

		registerVal3:completeAnimation()
		registerVal2.ScoreInfo:setLeftRight(true, false, -177.000000, 437.000000)
		registerVal2.ScoreInfo:setTopBottom(false, true, -242.000000, 8.000000)
		registerVal2.ScoreInfo:setRGB(1.000000, 1.000000, 1.000000)
		__FUNC_8226_(registerVal3, {})
		local function __FUNC_8647_(arg0, arg1)
			local function __FUNC_883F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 250.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, true, -404.000000, -6.000000)
				arg0:setTopBottom(false, true, -144.000000, -20.000000)
				arg0:setRGB(1.000000, 1.000000, 1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_883F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, true, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, true, -414.500000, -16.500000)
			arg0:setTopBottom(false, true, -150.000000, -26.000000)
			arg0:setRGB(0.200000, 0.530000, 1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_883F_)
		end

		registerVal4:completeAnimation()
		registerVal2.AmmoWidgetContainer:setLeftRight(false, true, -425.000000, -27.000000)
		registerVal2.AmmoWidgetContainer:setTopBottom(false, true, -156.000000, -32.000000)
		registerVal2.AmmoWidgetContainer:setRGB(1.000000, 1.000000, 1.000000)
		__FUNC_8647_(registerVal4, {})
		local function __FUNC_8A67_(arg0, arg1)
			local function __FUNC_8BBC_(arg0, arg1)
				local function __FUNC_8D37_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_8D37_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.750000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8D37_)
			end

			if arg1.interrupted then
				__FUNC_8BBC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8BBC_)
		end

		registerVal10:completeAnimation()
		registerVal2.ScoreInfoFlash:setAlpha(0.000000)
		__FUNC_8A67_(registerVal10, {})
		local function __FUNC_8EE9_(arg0, arg1)
			local function __FUNC_9040_(arg0, arg1)
				local function __FUNC_91BB_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_91BB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.750000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_91BB_)
			end

			if arg1.interrupted then
				__FUNC_9040_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9040_)
		end

		registerVal11:completeAnimation()
		registerVal2.AmmoWidgetFlash:setAlpha(0.000000)
		__FUNC_8EE9_(registerVal11, {})
	end

	registerVal14.SpeedBoost = __FUNC_7F18_
	registerVal13.DefaultState = registerVal14
	registerVal14 = {}
	local function __FUNC_936D_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.ScoreInfo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.AmmoWidgetContainer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.EMPScoreInfo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.EMPWeaponInfo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.CompassGroupContainer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.VoipContainer0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.ScrStkContainer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.ScoreInfoFlash:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.AmmoWidgetFlash:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal14.DefaultClip = __FUNC_936D_
	registerVal13.HideAllButScoreboard = registerVal14
	registerVal14 = {}
	local function __FUNC_9758_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal14.DefaultClip = __FUNC_9758_
	local function __FUNC_97BA_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_9AC6_(arg0, arg1)
			local function __FUNC_9CBF_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 250.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, -177.000000, 437.000000)
				arg0:setTopBottom(false, true, -242.000000, 8.000000)
				arg0:setRGB(1.000000, 1.000000, 1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_9CBF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, true, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -182.500000, 431.500000)
			arg0:setTopBottom(false, true, -237.000000, 13.000000)
			arg0:setRGB(0.200000, 0.530000, 1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9CBF_)
		end

		registerVal3:completeAnimation()
		registerVal2.ScoreInfo:setLeftRight(true, false, -188.000000, 426.000000)
		registerVal2.ScoreInfo:setTopBottom(false, true, -232.000000, 18.000000)
		registerVal2.ScoreInfo:setRGB(1.000000, 1.000000, 1.000000)
		__FUNC_9AC6_(registerVal3, {})
		local function __FUNC_9EE7_(arg0, arg1)
			local function __FUNC_A0DF_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 250.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, true, -425.000000, -27.000000)
				arg0:setTopBottom(false, true, -156.000000, -32.000000)
				arg0:setRGB(1.000000, 1.000000, 1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_A0DF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, true, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, true, -414.500000, -16.500000)
			arg0:setTopBottom(false, true, -150.000000, -26.000000)
			arg0:setRGB(0.200000, 0.530000, 1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A0DF_)
		end

		registerVal4:completeAnimation()
		registerVal2.AmmoWidgetContainer:setLeftRight(false, true, -404.000000, -6.000000)
		registerVal2.AmmoWidgetContainer:setTopBottom(false, true, -144.000000, -20.000000)
		registerVal2.AmmoWidgetContainer:setRGB(1.000000, 1.000000, 1.000000)
		__FUNC_9EE7_(registerVal4, {})
		local function __FUNC_A307_(arg0, arg1)
			local function __FUNC_A45C_(arg0, arg1)
				local function __FUNC_A5D7_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_A5D7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.750000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A5D7_)
			end

			if arg1.interrupted then
				__FUNC_A45C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A45C_)
		end

		registerVal10:completeAnimation()
		registerVal2.ScoreInfoFlash:setAlpha(0.000000)
		__FUNC_A307_(registerVal10, {})
		local function __FUNC_A789_(arg0, arg1)
			local function __FUNC_A8E0_(arg0, arg1)
				local function __FUNC_AA5B_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_AA5B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.750000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AA5B_)
			end

			if arg1.interrupted then
				__FUNC_A8E0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A8E0_)
		end

		registerVal11:completeAnimation()
		registerVal2.AmmoWidgetFlash:setAlpha(0.000000)
		__FUNC_A789_(registerVal11, {})
	end

	registerVal14.DefaultState = __FUNC_97BA_
	registerVal13.SpeedBoost = registerVal14
	registerVal14 = {}
	local function __FUNC_AC0D_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.ScoreInfo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.AmmoWidgetContainer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.EMPScoreInfo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.EMPWeaponInfo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.CompassGroupContainer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.VoipContainer0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.ScrStkContainer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.ScoreInfoFlash:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.AmmoWidgetFlash:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal14.DefaultClip = __FUNC_AC0D_
	registerVal13.HideForCodCaster = registerVal14
	registerVal2.clipsPerState = registerVal13
	local registerVal15 = {}
	local registerVal16 = {}
	registerVal16.stateName = "HideAllButScoreboard"
	local function __FUNC_AFF8_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_FINAL_KILLCAM)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_ROUND_END_KILLCAM)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_GAME_ENDED)
		if not registerVal3 and not registerVal3 and not registerVal3 then
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_KILLCAM)
		end
		return registerVal3
	end

	registerVal16.condition = __FUNC_AFF8_
	local registerVal17 = {}
	registerVal17.stateName = "SpeedBoost"
	local function __FUNC_B1CD_(arg0, arg2, arg3)
		local registerVal3 = IsHeroWeaponOrGadgetInUse(arg0, arg1)
		if registerVal3 then
			registerVal3 = IsHeroWeaponSpeedBurst(arg0, arg1)
		end
		return registerVal3
	end

	registerVal17.condition = __FUNC_B1CD_
	local registerVal18 = {}
	registerVal18.stateName = "HideForCodCaster"
	local function __FUNC_B267_(arg0, arg2, arg3)
		local registerVal3 = IsCodCaster(arg1)
		if registerVal3 then
			registerVal3 = IsCodCasterProfileValueEqualTo(arg1, "shoutcaster_qs_playerhud", 1.000000)
		end
		return (not registerVal3)
	end

	registerVal18.condition = __FUNC_B267_
	registerVal15 = {registerVal16, registerVal17, registerVal18}
	registerVal2:mergeStateConditions(registerVal15)
	registerVal16 = Engine.GetModelForController(arg1)
	registerVal15 = Engine.GetModel(registerVal16, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_FINAL_KILLCAM))
	local function __FUNC_B324_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_FINAL_KILLCAM)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal15, __FUNC_B324_)
	registerVal16 = Engine.GetModelForController(arg1)
	registerVal15 = Engine.GetModel(registerVal16, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_ROUND_END_KILLCAM))
	local function __FUNC_B4B0_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_ROUND_END_KILLCAM)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal15, __FUNC_B4B0_)
	registerVal16 = Engine.GetModelForController(arg1)
	registerVal15 = Engine.GetModel(registerVal16, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED))
	local function __FUNC_B640_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal15, __FUNC_B640_)
	registerVal16 = Engine.GetModelForController(arg1)
	registerVal15 = Engine.GetModel(registerVal16, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM))
	local function __FUNC_B7C9_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal15, __FUNC_B7C9_)
	registerVal16 = Engine.GetModelForController(arg1)
	registerVal15 = Engine.GetModel(registerVal16, "currentWeapon.weapon")
	local function __FUNC_B951_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.weapon"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal15, __FUNC_B951_)
	registerVal16 = Engine.GetModelForController(arg1)
	registerVal15 = Engine.GetModel(registerVal16, "playerAbilities.playerGadget3.isInUse")
	local function __FUNC_BA7A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.isInUse"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal15, __FUNC_BA7A_)
	registerVal16 = Engine.GetModelForController(arg1)
	registerVal15 = Engine.GetModel(registerVal16, "playerAbilities.playerGadget3.name")
	local function __FUNC_BBB3_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.name"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal15, __FUNC_BBB3_)
	registerVal16 = Engine.GetModelForController(arg1)
	registerVal15 = Engine.GetModel(registerVal16, "factions.isCoDCaster")
	local function __FUNC_BCE8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "factions.isCoDCaster"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal15, __FUNC_BCE8_)
	registerVal16 = Engine.GetModelForController(arg1)
	registerVal15 = Engine.GetModel(registerVal16, "CodCaster.profileSettingsUpdated")
	local function __FUNC_BE12_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CodCaster.profileSettingsUpdated"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal15, __FUNC_BE12_)
	registerVal9.id = "ScrStkContainer"
	local function __FUNC_BF46_(arg0, arg1)
		local registerVal2 = arg0.ScrStkContainer:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_BF46_)
	local function __FUNC_C04F_(arg0)
		arg0.ScoreInfo:close()
		arg0.AmmoWidgetContainer:close()
		arg0.EMPScoreInfo:close()
		arg0.EMPWeaponInfo:close()
		arg0.CompassGroupContainer:close()
		arg0.VoipContainer0:close()
		arg0.ScrStkContainer:close()
		arg0.MPHardcoreInventoryWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_C04F_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

